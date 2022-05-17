#include "dm9000.h"
#include "ethernetif.h"
#include "lwip/opt.h"
#include "lwip/pbuf.h"
#include "lwipopts.h"
#include "cmsis_os.h"
#include "misc.h"
#include "sys_arch.h"
#include "lwip/sys.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_exti.h"
#include "stm32f4xx_fsmc.h"
#include "core_cm4.h"

struct dm9000_config dm9000cfg;				//DM9000配置结构体

//读取DM9000指定寄存器额的值
//reg：寄存器的地址
//返回值：DM9000指定寄存器的值
u16 DM9000_ReadReg(u16 reg)
{
	NET_REG_ADDR = reg;
	return NET_REG_DATA;
}

//向DM9000指定寄存器中写入指定值
//reg:要写入的寄存器
//data:要写入的值
void DM9000_WriteReg(u16 reg,u16 data)
{
	NET_REG_ADDR = reg;
	NET_REG_DATA = data;
}

//读取DM9000的PHY的指定寄存器
//reg:要读的PHY寄存器
//返回值:读取到的PHY寄存器值
u16 DM9000_PHY_ReadReg(u16 reg)
{
	u16 temp;
	DM9000_WriteReg(DM9000_EPAR,DM9000_PHY|reg);
	DM9000_WriteReg(DM9000_EPCR,0X0C);				//选中PHY，发送读命令
	sys_msleep(10);//10ms延时
	DM9000_WriteReg(DM9000_EPCR,0X00);				//清除读命令
	temp=(DM9000_ReadReg(DM9000_EPDRH)<<8)|(DM9000_ReadReg(DM9000_EPDRL));
	return temp;
}

//向DM9000的PHY寄存器写入指定值
//reg:PHY寄存器
//data:要写入的值
void DM9000_PHY_WriteReg(u16 reg,u16 data)
{
	DM9000_WriteReg(DM9000_EPAR,DM9000_PHY|reg);
	DM9000_WriteReg(DM9000_EPDRL,(data&0xff));		//写入低字节
	DM9000_WriteReg(DM9000_EPDRH,((data>>8)&0xff));	//写入高字节
	DM9000_WriteReg(DM9000_EPCR,0X0A);				//选中PHY,发送写命令
	sys_msleep(20);
	DM9000_WriteReg(DM9000_EPCR,0X00);				//清除写命令	
}

//获取DM9000的芯片ID
//返回值：DM9000的芯片ID值
u32 DM9000_Get_DeiviceID(void)
{
	u32 value;
	value =DM9000_ReadReg(DM9000_VIDL);
	value|=DM9000_ReadReg(DM9000_VIDH) << 8;
	value|=DM9000_ReadReg(DM9000_PIDL) << 16;
	value|=DM9000_ReadReg(DM9000_PIDH) << 24;
	return value;
}

//获取DM9000的连接速度和双工模式
//返回值:0,100M半双工
//			1,100M全双工
//			2,10M半双工
//			3,10M全双工
//			0XFF,连接失败！
u8 DM9000_Get_SpeedAndDuplex(void)
{
	u8 temp;
	u8 i=0;	
	if(dm9000cfg.mode==DM9000_AUTO)					//如果开启了自动协商模式一定要等待协商完成
	{
		while(!(DM9000_PHY_ReadReg(0X01)&0X0020))	//等待自动协商完成
		{
			sys_msleep(100);					
			i++;
			if(i>100)return 0XFF;					//自动协商失败
		}	
	}else											//自定义模式,一定要等待连接成功
	{
		while(!(DM9000_ReadReg(DM9000_NSR)&0X40))	//等待连接成功
		{
			sys_msleep(100);					
			i++;
			if(i>100)return 0XFF;					//连接失败			
		}
	}
	temp =((DM9000_ReadReg(DM9000_NSR)>>6)&0X02);	//获取DM9000的连接速度
	temp|=((DM9000_ReadReg(DM9000_NCR)>>3)&0X01);	//获取DM9000的双工状态
	return temp;
}

//设置DM900的PHY工作模式
//mode:PHY模式
void DM9000_Set_PHYMode(u8 mode)
{
	u16 BMCR_Value,ANAR_Value;
	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_OFF);/*关闭 PHY,进行 PHY 设置*/
	switch(mode)
	{
		case DM9000_10MHD:		//10M半双工
			BMCR_Value=0x0000;
			ANAR_Value=0x21;
			break;
		case DM9000_10MFD:		//10M全双工
			BMCR_Value=0x0100;
			ANAR_Value=0x41;
			break;
		case DM9000_100MHD:		//100M半双工
			BMCR_Value=0x2000;
			ANAR_Value=0x81;
			break;
		case DM9000_100MFD:		//100M全双工
			BMCR_Value=0x2100;
			ANAR_Value=0x101;
			break;
		case DM9000_AUTO:		//自动协商模式
			BMCR_Value=0x1000;
			ANAR_Value=0x01E1;
			break;		
	}
	DM9000_PHY_WriteReg(DM9000_PHY_BMCR,BMCR_Value);
	DM9000_PHY_WriteReg(DM9000_PHY_ANAR,ANAR_Value);
 	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_ON);	//使能PHY
}

//设置DM9000的MAC地址
//macaddr:指向MAC地址
void DM9000_Set_MACAddress(u8 *macaddr)
{
	u8 i;
	for(i=0;i<6;i++)
	{
		DM9000_WriteReg(DM9000_PAR+i,macaddr[i]);
	}
}

//设置DM9000的组播地址
//multicastaddr:指向多播地址
void DM9000_Set_Multicast(u8 *multicastaddr)
{
	u8 i;
	for(i=0;i<8;i++)
	{
		DM9000_WriteReg(DM9000_MAR+i,multicastaddr[i]);
	}
} 

//复位DM9000
void DM9000_Reset(void)
{
 	DM9000_WriteReg(DM9000_GPCR,0x01);//第一步:设置GPCR寄存器(0X1E)的bit0为1 
	DM9000_WriteReg(DM9000_GPR,0);	//第二步:设置GPR寄存器(0X1F)的bit1为0，DM9000内部的PHY上电
 	DM9000_WriteReg(DM9000_NCR,(0x02|NCR_RST));	//第三步:软件复位DM9000 
	do 
	{
		sys_msleep(25); 	
	}while(DM9000_ReadReg(DM9000_NCR)&1);	//等待DM9000软复位完成
	DM9000_WriteReg(DM9000_NCR,0);
	DM9000_WriteReg(DM9000_NCR,(0x02|NCR_RST));	//DM9000第二次软复位
	do 
	{
		sys_msleep(25);	
	}while (DM9000_ReadReg(DM9000_NCR)&1);
	//DM9000_WriteReg(DM9000_NCR,0);
	
	DM9000_WriteReg(DM9000_NCR,0X00);
	DM9000_WriteReg(DM9000_TCR,0X00);//发送控制寄存器清零
	
	//基本寄存器的配置
	DM9000_WriteReg(DM9000_ISR,0X0F);//清除中断状态
	DM9000_WriteReg(DM9000_TCR2,0X80);//切换LED到mode1,设置LED显示模式1:全双工亮,半双工灭
	
	//清除发送状态，也即多余的资讯
	DM9000_WriteReg(DM9000_NSR,NSR_WAKEST|NSR_TX2END|NSR_TX1END);
	
	//与流控制相关
	DM9000_WriteReg(DM9000_BPTR,0X3F);	
	DM9000_WriteReg(DM9000_FCTR,0X38);
	DM9000_WriteReg(DM9000_FCR,0X00);
	DM9000_WriteReg(DM9000_SMCR,0X00);//特殊模式
	
	//设置接收的寄存器，开启接收功能
	DM9000_WriteReg(DM9000_RCR,RCR_DIS_LONG|RCR_DIS_CRC|RCR_RXEN);
	
	//开启中断接收，设置中断
	DM9000_WriteReg(DM9000_IMR,dm9000cfg.imr_all);
}

/*******************************************************************
复位PHY硬件
********************************************************************/
void DM9000_PHY_Reset(void)
{
	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_OFF);/*关闭 PHY,进行 PHY 设置*/
	
	DM9000_PHY_WriteReg(DM9000_PHY_BMCR,0x8000);/*重置 PHY 的寄存器*/
	DM9000_PHY_WriteReg(DM9000_PHY_ANAR,0x01e1);/*设置自适应模式相容表*/
	
	DM9000_PHY_WriteReg(DM9000_PHY_ANAR,0x1000);/* 设置基本连接模式 */
	/* 连接模式设置
	  0x0000 : 固定10M半双工
	  0x0100 : 固定10M全双工
	  0x2000 : 固定100M半双工
	  0x2100 : 固定100M全双工
	  0x1000 : 自适应模式
	*/
	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_ON);/*关闭 PHY,进行 PHY 设置*/
}

/********************************************************************
*初始化DM9000
*功能说明: 配置DM9000AE控制口线，FSMC管脚设置为复用功能 (For SMT32F4)
*返回值:
*0,初始化成功
*1，DM9000A ID读取错误
*********************************************************************/
u8 DM9000_Init(void)
{
	unsigned int temp;
	GPIO_InitTypeDef GPIO_InitStructure;
	
	NVIC_InitTypeDef   NVIC_InitStructure;
	EXTI_InitTypeDef   EXTI_InitStructure;
	
	FSMC_NORSRAMInitTypeDef FSMC_NORSRAMInitStructure;
	FSMC_NORSRAMTimingInitTypeDef ReadWriteTiming; //DM9000的读写时序

	/* 使能FSMC时钟 */
	RCC_AHB3PeriphClockCmd(RCC_AHB3Periph_FSMC, ENABLE);

	/* 使能 GPIO时钟 */
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD | RCC_AHB1Periph_GPIOE | RCC_AHB1Periph_GPIOG, ENABLE);

	/************************************************************************
	设置 PD.00(D2), PD.01(D3), PD.04(NOE), PD.05(NWE), PD.08(D13), PD.09(D14),
	PD.10(D15), PD.14(D0), PD.15(D1) 为复用推挽输出 
	************************************************************************/

	GPIO_PinAFConfig(GPIOD, GPIO_PinSource0, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource1, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource4, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource5, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource8, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource9, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource10, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource14, GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOD, GPIO_PinSource15, GPIO_AF_FSMC);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_4 | GPIO_Pin_5 |
	                            GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10 | GPIO_Pin_14 |
	                            GPIO_Pin_15;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
	GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	/******************************************************************************** 
	设置 PE.07(D4), PE.08(D5), PE.09(D6), PE.10(D7), PE.11(D8), PE.12(D9), PE.13(D10),
	PE.14(D11), PE.15(D12) 为复用推挽输出 
	*********************************************************************************/

	GPIO_PinAFConfig(GPIOE,GPIO_PinSource4,GPIO_AF_FSMC);//用于地址译码
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource5,GPIO_AF_FSMC);//用于地址译码
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource7,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource8,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource9,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource10,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource11,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource12,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource13,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource14,GPIO_AF_FSMC);
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource15,GPIO_AF_FSMC);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10 |
	                            GPIO_Pin_11 | GPIO_Pin_12 | GPIO_Pin_13 | GPIO_Pin_14 |
	                            GPIO_Pin_15;
	GPIO_Init(GPIOE, &GPIO_InitStructure);

	/*设置PD.13(A18(CMD))为复用推挽输出,连接DM9000的cmd*/
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_FSMC);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	/* 设置PG10(CS))为复用推挽输出用于地址译码的片选SN74LV139APWR*/
	GPIO_PinAFConfig(GPIOG, GPIO_PinSource10, GPIO_AF_FSMC);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_Init(GPIOG, &GPIO_InitStructure);

	/***************************************************************
	PA15是DM9000_INT中断输入口，
	****************************************************************/
	//#ifdef sys_rtx_os
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
	GPIO_Init(GPIOA,&GPIO_InitStructure);
	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);//设置系统中断优先级分组4
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);//使能SYSCFG时钟
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource15);//PA15连接到中断线15_10
	
	/* 配置EXTI_Line15_10 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line15;//LINE15
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;//中断事件
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling; //下降沿触发 
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;//使能LINE15
  EXTI_Init(&EXTI_InitStructure);//配置
	
	NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;//外部中断3
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x04;//抢占优先级4
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x00;//子优先级0
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;//使能外部中断通道
  NVIC_Init(&NVIC_InitStructure);//配置
	//#endif
	
	/*-- FSMC Configuration ------------------------------------------------------*/
	/*----------------------- SRAM Bank 3 ----------------------------------------*/
	/*-- FSMC Configuration ------------------------------------------------------*/
	ReadWriteTiming.FSMC_AddressSetupTime = 6;		/* 设置为2会出错; 3正常 */
	ReadWriteTiming.FSMC_AddressHoldTime = 2;
	ReadWriteTiming.FSMC_DataSetupTime = 4;			/* 设置为1出错，2正常 */
	ReadWriteTiming.FSMC_BusTurnAroundDuration = 1;
	ReadWriteTiming.FSMC_CLKDivision = 0;
	ReadWriteTiming.FSMC_DataLatency = 0;
	ReadWriteTiming.FSMC_AccessMode = FSMC_AccessMode_A;
	
	FSMC_NORSRAMInitStructure.FSMC_Bank = FSMC_Bank1_NORSRAM3;
	FSMC_NORSRAMInitStructure.FSMC_DataAddressMux = FSMC_DataAddressMux_Disable;
	FSMC_NORSRAMInitStructure.FSMC_MemoryType = FSMC_MemoryType_SRAM;	// FSMC_MemoryType_PSRAM;
	FSMC_NORSRAMInitStructure.FSMC_MemoryDataWidth = FSMC_MemoryDataWidth_16b;
	FSMC_NORSRAMInitStructure.FSMC_BurstAccessMode = FSMC_BurstAccessMode_Disable;
	FSMC_NORSRAMInitStructure.FSMC_AsynchronousWait = FSMC_AsynchronousWait_Disable;
	FSMC_NORSRAMInitStructure.FSMC_WaitSignalPolarity = FSMC_WaitSignalPolarity_Low;
	FSMC_NORSRAMInitStructure.FSMC_WrapMode = FSMC_WrapMode_Disable;
	FSMC_NORSRAMInitStructure.FSMC_WaitSignalActive = FSMC_WaitSignalActive_BeforeWaitState;
	FSMC_NORSRAMInitStructure.FSMC_WriteOperation = FSMC_WriteOperation_Enable;
	FSMC_NORSRAMInitStructure.FSMC_WaitSignal = FSMC_WaitSignal_Disable;
	FSMC_NORSRAMInitStructure.FSMC_ExtendedMode = FSMC_ExtendedMode_Disable;
	FSMC_NORSRAMInitStructure.FSMC_WriteBurst = FSMC_WriteBurst_Disable;
	FSMC_NORSRAMInitStructure.FSMC_ReadWriteTimingStruct = &ReadWriteTiming;
	FSMC_NORSRAMInitStructure.FSMC_WriteTimingStruct = &ReadWriteTiming;

	FSMC_NORSRAMInit(&FSMC_NORSRAMInitStructure);
	/*!< Enable FSMC Bank1_SRAM3 Bank */
	FSMC_NORSRAMCmd(FSMC_Bank1_NORSRAM3, ENABLE);
	
	temp=*(vu32*)(0x1FFF7A10);//获取STM32的唯一ID的前24位作为MAC地址后三字节
	printf("stm32 id :%#x\n",temp);
	dm9000cfg.mode=DM9000_AUTO;	
 	dm9000cfg.queue_packet_len=0;
	//DM9000的SRAM的发送和接收指针自动返回到开始地址，并且开启接收中断
	dm9000cfg.imr_all = IMR_PAR|IMR_PRI; 
	//初始化MAC地址
	dm9000cfg.mac_addr[0]=2;
	dm9000cfg.mac_addr[1]=0;
	dm9000cfg.mac_addr[2]=0;
	dm9000cfg.mac_addr[3]=(temp>>16)&0XFF;	//低三字节用STM32的唯一ID
	dm9000cfg.mac_addr[4]=(temp>>8)&0XFFF;
	dm9000cfg.mac_addr[5]=temp&0XFF;
	//初始化组播地址
	dm9000cfg.multicase_addr[0]=0X00;
	dm9000cfg.multicase_addr[1]=0X00;
	dm9000cfg.multicase_addr[2]=0X00;
	dm9000cfg.multicase_addr[3]=0X00;
	dm9000cfg.multicase_addr[4]=0X00;
	dm9000cfg.multicase_addr[5]=0X00;
	dm9000cfg.multicase_addr[6]=0X00;
	dm9000cfg.multicase_addr[7]=0X80; 
	
	
	DM9000_WriteReg(DM9000_NCR,(0x02|NCR_RST));//软件复位DM9000
	sys_msleep(10);
	
	temp=DM9000_Get_DeiviceID();//获取DM9000ID
	printf("DM9000 ID:%#x\r\n",temp);
	if(temp!=DM9000_ID) return 1; //读取ID错误
	
	DM9000_Reset();//复位DM9000
	
	//DM9000_PHY_Reset();
	DM9000_Set_PHYMode(dm9000cfg.mode);//设置PHY工作模式
	
	//设置MAC地址和组播地址
	DM9000_Set_MACAddress(dm9000cfg.mac_addr);		//设置MAC地址
	DM9000_Set_Multicast(dm9000cfg.multicase_addr);	//设置组播地址
	
	//DM9000_WriteReg(DM9000_NCR,0X00);
	//DM9000_WriteReg(DM9000_TCR,0X00);//发送控制寄存器清零
	//DM9000_WriteReg(DM9000_BPTR,0X3F);	
	//DM9000_WriteReg(DM9000_FCTR,0X38);
	//DM9000_WriteReg(DM9000_FCR,0X00);
	//DM9000_WriteReg(DM9000_SMCR,0X00);//特殊模式
	//DM9000_WriteReg(DM9000_NSR,NSR_WAKEST|NSR_TX2END|NSR_TX1END);//清除发送状态，也即多余的资讯
	//DM9000_WriteReg(DM9000_ISR,0X0F);//清除中断状态
	//DM9000_WriteReg(DM9000_TCR2,0X80);//切换LED到mode1,设置LED显示模式1:全双工亮,半双工灭 	
	
	DM9000_WriteReg(DM9000_RCR,RCR_DIS_LONG|RCR_DIS_CRC|RCR_RXEN);
	DM9000_WriteReg(DM9000_IMR,IMR_PAR); 
	temp=DM9000_Get_SpeedAndDuplex();		//获取DM9000的连接速度和双工状态
	if(temp!=0XFF)							//连接成功，通过串口显示连接速度和双工状态
	{
		printf("DM9000 Speed:%dMbps,Duplex:%s duplex mode\r\n",(temp&0x02)?10:100,(temp&0x01)?"Full":"Half");
	}else printf("DM9000 Establish Link Failed!\r\n");
	//获取16bit的模式
	temp = DM9000_ReadReg(DM9000_ISR)>>6;
	printf("模式指示：%#x\n",temp);
	if(temp==0x00)
	{
		printf("16bit 模式!!!\n");
	}
	DM9000_WriteReg(DM9000_IMR,dm9000cfg.imr_all);//设置中断
	
	return 0;
}

//通过DM9000发送数据包
//p:pbuf结构体指针
void DM9000_SendPacket(struct pbuf *p)
{
	struct pbuf *q;
	u16 pbuf_index = 0;
	u8 word[2],word_index = 0;
	//u8 err;	
 	printf("send len:%d\r\n",p->tot_len);
	#ifdef sys_rtx_os
	sys_mutex_lock(&dm9000lock); 				//请求互斥信号量,锁定DM9000
	#endif
	DM9000_WriteReg(DM9000_IMR,IMR_PAR);//关闭网卡中断 
	NET_REG_ADDR = DM9000_MWCMD;//发送此命令后就可以将要发送的数据搬到DM9000 TX SRAM中
	q=p;
	//向DM9000的TX SRAM中写入数据，一次写入两个字节数据
	//当要发送的数据长度为奇数的时候，我们需要将最后一个字节单独写入DM9000的TX SRAM中
 	while(q)
	{
		if (pbuf_index < q->len)
		{
			word[word_index++] = ((u8_t*)q->payload)[pbuf_index++];
			if (word_index == 2)
			{
				NET_REG_DATA=((u16)word[1]<<8)|word[0];
				word_index = 0;
			}
		}else
		{
			q=q->next;
			pbuf_index = 0;
		}
	}
	//还有一个字节未写入TX SRAM
	if(word_index==1)NET_REG_DATA=word[0];
	//向DM9000写入发送长度
	DM9000_WriteReg(DM9000_TXPLL,p->tot_len&0XFF);
	DM9000_WriteReg(DM9000_TXPLH,(p->tot_len>>8)&0XFF);		//设置要发送数据的数据长度
	DM9000_WriteReg(DM9000_TCR,0X01);											//启动发送 
	while((DM9000_ReadReg(DM9000_ISR)&0X02)==0);					//等待发送完成
	//while((DM9000_ReadReg(DM9000_NSR)&(0x08|0x04))==0);
	DM9000_WriteReg(DM9000_ISR,0X02);											//清除发送完成中断 
 	DM9000_WriteReg(DM9000_IMR,dm9000cfg.imr_all);				//DM9000网卡接收中断使能
	#ifdef sys_rtx_os
	sys_mutex_unlock(&dm9000lock);												//发送互斥信号量,解锁DM9000
	#endif
}

//DM9000接收数据包
//接收到的数据包存放在DM9000的RX FIFO中，地址为0X0C00~0X3FFF
//接收到的数据包的前四个字节并不是真实的数据，而是有特定含义的
//byte1:表明是否接收到数据，为0x00或者0X01，如果两个都不是的话一定要软件复位DM9000
//		0x01，接收到数据
//		0x00，未接收到数据
//byte2:第二个字节表示一些状态信息，和DM9000的RSR(0X06)寄存器一致的
//byte3:本帧数据长度的低字节
//byte4:本帧数据长度的高字节
//返回值：pbuf格式的接收到的数据包
struct pbuf *DM9000_Receive_Packet(void)
{
	struct pbuf* p;
	struct pbuf* q;
  u32 rxbyte;
	vu16 rx_status, rx_length;
  u16* data;
	u16 dummy; 
	int len;
	//u8 err;

	p=NULL;
	#ifdef sys_rtx_os
	sys_mutex_lock(&dm9000lock); 				//请求互斥信号量,锁定DM9000
	#endif
__error_retry:	
	DM9000_ReadReg(DM9000_MRCMDX);			//假读
	rxbyte=(u8)DM9000_ReadReg(DM9000_MRCMDX);//进行第二次读取 
	printf("rxbyte:%#x\n",rxbyte);
	if(rxbyte)													//接收到数据
	{
		if(rxbyte>1)											//rxbyte大于1，接收到的数据错误,挂了,此时需要对网卡复位		
		{
      printf("dm9000 rx: rx error, stop device\r\n");
			DM9000_WriteReg(DM9000_IMR,0x80);
			DM9000_WriteReg(DM9000_ISR,0x0F);
			DM9000_WriteReg(DM9000_RCR,0x00);
			DM9000_Reset();//复位DM9000
			//DM9000_PHY_Reset();
			DM9000_Set_PHYMode(dm9000cfg.mode);//设置PHY工作模式
			return (struct pbuf*)p;
		}
		NET_REG_ADDR = DM9000_MRCMD;
		rx_status=NET_REG_DATA;
    rx_length=NET_REG_DATA;
		printf("rx_status:%#x,rx_length:%d\n",rx_status,rx_length);
		//if(rx_length>46)printf("rxlen:%d\r\n",rx_length);
    p=pbuf_alloc(PBUF_RAW,rx_length,PBUF_POOL);//pbufs内存池分配pbuf
		if(p!=NULL)																 //内存申请成功
		{
			for(q=p;q!=NULL;q=q->next)
			{
				data=(u16*)q->payload;
				len=q->len;
				while(len>0)
				{
					*data=NET_REG_DATA;
					data++;
					len-= 2;
				}
			}
		}
		else										//内存申请失败
		{
			printf("pbuf内存申请失败:%d\r\n",rx_length);
      data=&dummy;
			len=rx_length;
			while(len)
			{
				*data=NET_REG_DATA;
				len-=2;
			}
		}	
		//根据rx_status判断接收数据是否出现如下错误：FIFO溢出、CRC错误
		//对齐错误、物理层错误，如果有任何一个出现的话丢弃该数据帧，
		//当rx_length小于64或者大于最大数据长度的时候也丢弃该数据帧
		if((rx_status&0XBF00) || (rx_length < 0X40) || (rx_length > DM9000_PKT_MAX))
		{
			printf("rx_status:%#x\r\n",rx_status);
			if(rx_status & 0x100)printf("rx fifo error\r\n");
			if(rx_status & 0x200)printf("rx crc error\r\n");
      if(rx_status & 0x8000)printf("rx length error\r\n");
      if (rx_length>DM9000_PKT_MAX)
			{
				printf("rx length too big\r\n");
				DM9000_WriteReg(DM9000_NCR, NCR_RST); 	//复位DM9000
				sys_msleep(5);
			}
			if(p!=NULL)pbuf_free((struct pbuf*)p);		//释放内存
			p=NULL;
			goto __error_retry;
		}
	}
	else
	{
		DM9000_WriteReg(DM9000_ISR,ISR_PTS);			//清除所有中断标志位
    dm9000cfg.imr_all=IMR_PAR|IMR_PRI;				//重新接收中断 
    DM9000_WriteReg(DM9000_IMR, dm9000cfg.imr_all);
  }
	#ifdef sys_rtx_os
	sys_mutex_unlock(&dm9000lock);							//发送互斥信号量,解锁DM9000
	#endif
	return (struct pbuf*)p; 
}

void DM9000_ISRHandler(void)
{
	u16 int_status;
	u16 last_io; 
	last_io = NET_REG_ADDR;
	int_status=DM9000_ReadReg(DM9000_ISR); 
	DM9000_WriteReg(DM9000_ISR,int_status);//清除中断标志位，DM9000的ISR寄存器的bit0~bit5写1清零
	if(int_status & ISR_ROS)printf("overflow \r\n");
  if(int_status & ISR_ROOS)printf("overflow counter overflow \r\n");	
	if(int_status & ISR_PRS)		//接收中断
	{
 		sys_sem_signal(&dm9000input);//处理接收到数据帧
		//sys_sem_signal(&dm9000printfsignal);
		//printf("receive data from dm9000!\n");
	} 
	if(int_status&ISR_PTS)//发送中断
	{ 
									//接收中断处理,这里没用到
	}
	NET_REG_ADDR = last_io;
}
