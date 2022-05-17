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

struct dm9000_config dm9000cfg;				//DM9000���ýṹ��

//��ȡDM9000ָ���Ĵ������ֵ
//reg���Ĵ����ĵ�ַ
//����ֵ��DM9000ָ���Ĵ�����ֵ
u16 DM9000_ReadReg(u16 reg)
{
	NET_REG_ADDR = reg;
	return NET_REG_DATA;
}

//��DM9000ָ���Ĵ�����д��ָ��ֵ
//reg:Ҫд��ļĴ���
//data:Ҫд���ֵ
void DM9000_WriteReg(u16 reg,u16 data)
{
	NET_REG_ADDR = reg;
	NET_REG_DATA = data;
}

//��ȡDM9000��PHY��ָ���Ĵ���
//reg:Ҫ����PHY�Ĵ���
//����ֵ:��ȡ����PHY�Ĵ���ֵ
u16 DM9000_PHY_ReadReg(u16 reg)
{
	u16 temp;
	DM9000_WriteReg(DM9000_EPAR,DM9000_PHY|reg);
	DM9000_WriteReg(DM9000_EPCR,0X0C);				//ѡ��PHY�����Ͷ�����
	sys_msleep(10);//10ms��ʱ
	DM9000_WriteReg(DM9000_EPCR,0X00);				//���������
	temp=(DM9000_ReadReg(DM9000_EPDRH)<<8)|(DM9000_ReadReg(DM9000_EPDRL));
	return temp;
}

//��DM9000��PHY�Ĵ���д��ָ��ֵ
//reg:PHY�Ĵ���
//data:Ҫд���ֵ
void DM9000_PHY_WriteReg(u16 reg,u16 data)
{
	DM9000_WriteReg(DM9000_EPAR,DM9000_PHY|reg);
	DM9000_WriteReg(DM9000_EPDRL,(data&0xff));		//д����ֽ�
	DM9000_WriteReg(DM9000_EPDRH,((data>>8)&0xff));	//д����ֽ�
	DM9000_WriteReg(DM9000_EPCR,0X0A);				//ѡ��PHY,����д����
	sys_msleep(20);
	DM9000_WriteReg(DM9000_EPCR,0X00);				//���д����	
}

//��ȡDM9000��оƬID
//����ֵ��DM9000��оƬIDֵ
u32 DM9000_Get_DeiviceID(void)
{
	u32 value;
	value =DM9000_ReadReg(DM9000_VIDL);
	value|=DM9000_ReadReg(DM9000_VIDH) << 8;
	value|=DM9000_ReadReg(DM9000_PIDL) << 16;
	value|=DM9000_ReadReg(DM9000_PIDH) << 24;
	return value;
}

//��ȡDM9000�������ٶȺ�˫��ģʽ
//����ֵ:0,100M��˫��
//			1,100Mȫ˫��
//			2,10M��˫��
//			3,10Mȫ˫��
//			0XFF,����ʧ�ܣ�
u8 DM9000_Get_SpeedAndDuplex(void)
{
	u8 temp;
	u8 i=0;	
	if(dm9000cfg.mode==DM9000_AUTO)					//����������Զ�Э��ģʽһ��Ҫ�ȴ�Э�����
	{
		while(!(DM9000_PHY_ReadReg(0X01)&0X0020))	//�ȴ��Զ�Э�����
		{
			sys_msleep(100);					
			i++;
			if(i>100)return 0XFF;					//�Զ�Э��ʧ��
		}	
	}else											//�Զ���ģʽ,һ��Ҫ�ȴ����ӳɹ�
	{
		while(!(DM9000_ReadReg(DM9000_NSR)&0X40))	//�ȴ����ӳɹ�
		{
			sys_msleep(100);					
			i++;
			if(i>100)return 0XFF;					//����ʧ��			
		}
	}
	temp =((DM9000_ReadReg(DM9000_NSR)>>6)&0X02);	//��ȡDM9000�������ٶ�
	temp|=((DM9000_ReadReg(DM9000_NCR)>>3)&0X01);	//��ȡDM9000��˫��״̬
	return temp;
}

//����DM900��PHY����ģʽ
//mode:PHYģʽ
void DM9000_Set_PHYMode(u8 mode)
{
	u16 BMCR_Value,ANAR_Value;
	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_OFF);/*�ر� PHY,���� PHY ����*/
	switch(mode)
	{
		case DM9000_10MHD:		//10M��˫��
			BMCR_Value=0x0000;
			ANAR_Value=0x21;
			break;
		case DM9000_10MFD:		//10Mȫ˫��
			BMCR_Value=0x0100;
			ANAR_Value=0x41;
			break;
		case DM9000_100MHD:		//100M��˫��
			BMCR_Value=0x2000;
			ANAR_Value=0x81;
			break;
		case DM9000_100MFD:		//100Mȫ˫��
			BMCR_Value=0x2100;
			ANAR_Value=0x101;
			break;
		case DM9000_AUTO:		//�Զ�Э��ģʽ
			BMCR_Value=0x1000;
			ANAR_Value=0x01E1;
			break;		
	}
	DM9000_PHY_WriteReg(DM9000_PHY_BMCR,BMCR_Value);
	DM9000_PHY_WriteReg(DM9000_PHY_ANAR,ANAR_Value);
 	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_ON);	//ʹ��PHY
}

//����DM9000��MAC��ַ
//macaddr:ָ��MAC��ַ
void DM9000_Set_MACAddress(u8 *macaddr)
{
	u8 i;
	for(i=0;i<6;i++)
	{
		DM9000_WriteReg(DM9000_PAR+i,macaddr[i]);
	}
}

//����DM9000���鲥��ַ
//multicastaddr:ָ��ಥ��ַ
void DM9000_Set_Multicast(u8 *multicastaddr)
{
	u8 i;
	for(i=0;i<8;i++)
	{
		DM9000_WriteReg(DM9000_MAR+i,multicastaddr[i]);
	}
} 

//��λDM9000
void DM9000_Reset(void)
{
 	DM9000_WriteReg(DM9000_GPCR,0x01);//��һ��:����GPCR�Ĵ���(0X1E)��bit0Ϊ1 
	DM9000_WriteReg(DM9000_GPR,0);	//�ڶ���:����GPR�Ĵ���(0X1F)��bit1Ϊ0��DM9000�ڲ���PHY�ϵ�
 	DM9000_WriteReg(DM9000_NCR,(0x02|NCR_RST));	//������:�����λDM9000 
	do 
	{
		sys_msleep(25); 	
	}while(DM9000_ReadReg(DM9000_NCR)&1);	//�ȴ�DM9000��λ���
	DM9000_WriteReg(DM9000_NCR,0);
	DM9000_WriteReg(DM9000_NCR,(0x02|NCR_RST));	//DM9000�ڶ�����λ
	do 
	{
		sys_msleep(25);	
	}while (DM9000_ReadReg(DM9000_NCR)&1);
	//DM9000_WriteReg(DM9000_NCR,0);
	
	DM9000_WriteReg(DM9000_NCR,0X00);
	DM9000_WriteReg(DM9000_TCR,0X00);//���Ϳ��ƼĴ�������
	
	//�����Ĵ���������
	DM9000_WriteReg(DM9000_ISR,0X0F);//����ж�״̬
	DM9000_WriteReg(DM9000_TCR2,0X80);//�л�LED��mode1,����LED��ʾģʽ1:ȫ˫����,��˫����
	
	//�������״̬��Ҳ���������Ѷ
	DM9000_WriteReg(DM9000_NSR,NSR_WAKEST|NSR_TX2END|NSR_TX1END);
	
	//�����������
	DM9000_WriteReg(DM9000_BPTR,0X3F);	
	DM9000_WriteReg(DM9000_FCTR,0X38);
	DM9000_WriteReg(DM9000_FCR,0X00);
	DM9000_WriteReg(DM9000_SMCR,0X00);//����ģʽ
	
	//���ý��յļĴ������������չ���
	DM9000_WriteReg(DM9000_RCR,RCR_DIS_LONG|RCR_DIS_CRC|RCR_RXEN);
	
	//�����жϽ��գ������ж�
	DM9000_WriteReg(DM9000_IMR,dm9000cfg.imr_all);
}

/*******************************************************************
��λPHYӲ��
********************************************************************/
void DM9000_PHY_Reset(void)
{
	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_OFF);/*�ر� PHY,���� PHY ����*/
	
	DM9000_PHY_WriteReg(DM9000_PHY_BMCR,0x8000);/*���� PHY �ļĴ���*/
	DM9000_PHY_WriteReg(DM9000_PHY_ANAR,0x01e1);/*��������Ӧģʽ���ݱ�*/
	
	DM9000_PHY_WriteReg(DM9000_PHY_ANAR,0x1000);/* ���û�������ģʽ */
	/* ����ģʽ����
	  0x0000 : �̶�10M��˫��
	  0x0100 : �̶�10Mȫ˫��
	  0x2000 : �̶�100M��˫��
	  0x2100 : �̶�100Mȫ˫��
	  0x1000 : ����Ӧģʽ
	*/
	DM9000_WriteReg(DM9000_GPR,DM9000_PHY_ON);/*�ر� PHY,���� PHY ����*/
}

/********************************************************************
*��ʼ��DM9000
*����˵��: ����DM9000AE���ƿ��ߣ�FSMC�ܽ�����Ϊ���ù��� (For SMT32F4)
*����ֵ:
*0,��ʼ���ɹ�
*1��DM9000A ID��ȡ����
*********************************************************************/
u8 DM9000_Init(void)
{
	unsigned int temp;
	GPIO_InitTypeDef GPIO_InitStructure;
	
	NVIC_InitTypeDef   NVIC_InitStructure;
	EXTI_InitTypeDef   EXTI_InitStructure;
	
	FSMC_NORSRAMInitTypeDef FSMC_NORSRAMInitStructure;
	FSMC_NORSRAMTimingInitTypeDef ReadWriteTiming; //DM9000�Ķ�дʱ��

	/* ʹ��FSMCʱ�� */
	RCC_AHB3PeriphClockCmd(RCC_AHB3Periph_FSMC, ENABLE);

	/* ʹ�� GPIOʱ�� */
	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOD | RCC_AHB1Periph_GPIOE | RCC_AHB1Periph_GPIOG, ENABLE);

	/************************************************************************
	���� PD.00(D2), PD.01(D3), PD.04(NOE), PD.05(NWE), PD.08(D13), PD.09(D14),
	PD.10(D15), PD.14(D0), PD.15(D1) Ϊ����������� 
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
	���� PE.07(D4), PE.08(D5), PE.09(D6), PE.10(D7), PE.11(D8), PE.12(D9), PE.13(D10),
	PE.14(D11), PE.15(D12) Ϊ����������� 
	*********************************************************************************/

	GPIO_PinAFConfig(GPIOE,GPIO_PinSource4,GPIO_AF_FSMC);//���ڵ�ַ����
	GPIO_PinAFConfig(GPIOE,GPIO_PinSource5,GPIO_AF_FSMC);//���ڵ�ַ����
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

	/*����PD.13(A18(CMD))Ϊ�����������,����DM9000��cmd*/
	GPIO_PinAFConfig(GPIOD,GPIO_PinSource13,GPIO_AF_FSMC);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
	GPIO_Init(GPIOD, &GPIO_InitStructure);

	/* ����PG10(CS))Ϊ��������������ڵ�ַ�����ƬѡSN74LV139APWR*/
	GPIO_PinAFConfig(GPIOG, GPIO_PinSource10, GPIO_AF_FSMC);
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_Init(GPIOG, &GPIO_InitStructure);

	/***************************************************************
	PA15��DM9000_INT�ж�����ڣ�
	****************************************************************/
	//#ifdef sys_rtx_os
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
	GPIO_Init(GPIOA,&GPIO_InitStructure);
	
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);//����ϵͳ�ж����ȼ�����4
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SYSCFG, ENABLE);//ʹ��SYSCFGʱ��
	SYSCFG_EXTILineConfig(EXTI_PortSourceGPIOA, EXTI_PinSource15);//PA15���ӵ��ж���15_10
	
	/* ����EXTI_Line15_10 */
  EXTI_InitStructure.EXTI_Line = EXTI_Line15;//LINE15
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;//�ж��¼�
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling; //�½��ش��� 
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;//ʹ��LINE15
  EXTI_Init(&EXTI_InitStructure);//����
	
	NVIC_InitStructure.NVIC_IRQChannel = EXTI15_10_IRQn;//�ⲿ�ж�3
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x04;//��ռ���ȼ�4
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x00;//�����ȼ�0
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;//ʹ���ⲿ�ж�ͨ��
  NVIC_Init(&NVIC_InitStructure);//����
	//#endif
	
	/*-- FSMC Configuration ------------------------------------------------------*/
	/*----------------------- SRAM Bank 3 ----------------------------------------*/
	/*-- FSMC Configuration ------------------------------------------------------*/
	ReadWriteTiming.FSMC_AddressSetupTime = 6;		/* ����Ϊ2�����; 3���� */
	ReadWriteTiming.FSMC_AddressHoldTime = 2;
	ReadWriteTiming.FSMC_DataSetupTime = 4;			/* ����Ϊ1����2���� */
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
	
	temp=*(vu32*)(0x1FFF7A10);//��ȡSTM32��ΨһID��ǰ24λ��ΪMAC��ַ�����ֽ�
	printf("stm32 id :%#x\n",temp);
	dm9000cfg.mode=DM9000_AUTO;	
 	dm9000cfg.queue_packet_len=0;
	//DM9000��SRAM�ķ��ͺͽ���ָ���Զ����ص���ʼ��ַ�����ҿ��������ж�
	dm9000cfg.imr_all = IMR_PAR|IMR_PRI; 
	//��ʼ��MAC��ַ
	dm9000cfg.mac_addr[0]=2;
	dm9000cfg.mac_addr[1]=0;
	dm9000cfg.mac_addr[2]=0;
	dm9000cfg.mac_addr[3]=(temp>>16)&0XFF;	//�����ֽ���STM32��ΨһID
	dm9000cfg.mac_addr[4]=(temp>>8)&0XFFF;
	dm9000cfg.mac_addr[5]=temp&0XFF;
	//��ʼ���鲥��ַ
	dm9000cfg.multicase_addr[0]=0X00;
	dm9000cfg.multicase_addr[1]=0X00;
	dm9000cfg.multicase_addr[2]=0X00;
	dm9000cfg.multicase_addr[3]=0X00;
	dm9000cfg.multicase_addr[4]=0X00;
	dm9000cfg.multicase_addr[5]=0X00;
	dm9000cfg.multicase_addr[6]=0X00;
	dm9000cfg.multicase_addr[7]=0X80; 
	
	
	DM9000_WriteReg(DM9000_NCR,(0x02|NCR_RST));//�����λDM9000
	sys_msleep(10);
	
	temp=DM9000_Get_DeiviceID();//��ȡDM9000ID
	printf("DM9000 ID:%#x\r\n",temp);
	if(temp!=DM9000_ID) return 1; //��ȡID����
	
	DM9000_Reset();//��λDM9000
	
	//DM9000_PHY_Reset();
	DM9000_Set_PHYMode(dm9000cfg.mode);//����PHY����ģʽ
	
	//����MAC��ַ���鲥��ַ
	DM9000_Set_MACAddress(dm9000cfg.mac_addr);		//����MAC��ַ
	DM9000_Set_Multicast(dm9000cfg.multicase_addr);	//�����鲥��ַ
	
	//DM9000_WriteReg(DM9000_NCR,0X00);
	//DM9000_WriteReg(DM9000_TCR,0X00);//���Ϳ��ƼĴ�������
	//DM9000_WriteReg(DM9000_BPTR,0X3F);	
	//DM9000_WriteReg(DM9000_FCTR,0X38);
	//DM9000_WriteReg(DM9000_FCR,0X00);
	//DM9000_WriteReg(DM9000_SMCR,0X00);//����ģʽ
	//DM9000_WriteReg(DM9000_NSR,NSR_WAKEST|NSR_TX2END|NSR_TX1END);//�������״̬��Ҳ���������Ѷ
	//DM9000_WriteReg(DM9000_ISR,0X0F);//����ж�״̬
	//DM9000_WriteReg(DM9000_TCR2,0X80);//�л�LED��mode1,����LED��ʾģʽ1:ȫ˫����,��˫���� 	
	
	DM9000_WriteReg(DM9000_RCR,RCR_DIS_LONG|RCR_DIS_CRC|RCR_RXEN);
	DM9000_WriteReg(DM9000_IMR,IMR_PAR); 
	temp=DM9000_Get_SpeedAndDuplex();		//��ȡDM9000�������ٶȺ�˫��״̬
	if(temp!=0XFF)							//���ӳɹ���ͨ��������ʾ�����ٶȺ�˫��״̬
	{
		printf("DM9000 Speed:%dMbps,Duplex:%s duplex mode\r\n",(temp&0x02)?10:100,(temp&0x01)?"Full":"Half");
	}else printf("DM9000 Establish Link Failed!\r\n");
	//��ȡ16bit��ģʽ
	temp = DM9000_ReadReg(DM9000_ISR)>>6;
	printf("ģʽָʾ��%#x\n",temp);
	if(temp==0x00)
	{
		printf("16bit ģʽ!!!\n");
	}
	DM9000_WriteReg(DM9000_IMR,dm9000cfg.imr_all);//�����ж�
	
	return 0;
}

//ͨ��DM9000�������ݰ�
//p:pbuf�ṹ��ָ��
void DM9000_SendPacket(struct pbuf *p)
{
	struct pbuf *q;
	u16 pbuf_index = 0;
	u8 word[2],word_index = 0;
	//u8 err;	
 	printf("send len:%d\r\n",p->tot_len);
	#ifdef sys_rtx_os
	sys_mutex_lock(&dm9000lock); 				//���󻥳��ź���,����DM9000
	#endif
	DM9000_WriteReg(DM9000_IMR,IMR_PAR);//�ر������ж� 
	NET_REG_ADDR = DM9000_MWCMD;//���ʹ������Ϳ��Խ�Ҫ���͵����ݰᵽDM9000 TX SRAM��
	q=p;
	//��DM9000��TX SRAM��д�����ݣ�һ��д�������ֽ�����
	//��Ҫ���͵����ݳ���Ϊ������ʱ��������Ҫ�����һ���ֽڵ���д��DM9000��TX SRAM��
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
	//����һ���ֽ�δд��TX SRAM
	if(word_index==1)NET_REG_DATA=word[0];
	//��DM9000д�뷢�ͳ���
	DM9000_WriteReg(DM9000_TXPLL,p->tot_len&0XFF);
	DM9000_WriteReg(DM9000_TXPLH,(p->tot_len>>8)&0XFF);		//����Ҫ�������ݵ����ݳ���
	DM9000_WriteReg(DM9000_TCR,0X01);											//�������� 
	while((DM9000_ReadReg(DM9000_ISR)&0X02)==0);					//�ȴ��������
	//while((DM9000_ReadReg(DM9000_NSR)&(0x08|0x04))==0);
	DM9000_WriteReg(DM9000_ISR,0X02);											//�����������ж� 
 	DM9000_WriteReg(DM9000_IMR,dm9000cfg.imr_all);				//DM9000���������ж�ʹ��
	#ifdef sys_rtx_os
	sys_mutex_unlock(&dm9000lock);												//���ͻ����ź���,����DM9000
	#endif
}

//DM9000�������ݰ�
//���յ������ݰ������DM9000��RX FIFO�У���ַΪ0X0C00~0X3FFF
//���յ������ݰ���ǰ�ĸ��ֽڲ�������ʵ�����ݣ��������ض������
//byte1:�����Ƿ���յ����ݣ�Ϊ0x00����0X01��������������ǵĻ�һ��Ҫ�����λDM9000
//		0x01�����յ�����
//		0x00��δ���յ�����
//byte2:�ڶ����ֽڱ�ʾһЩ״̬��Ϣ����DM9000��RSR(0X06)�Ĵ���һ�µ�
//byte3:��֡���ݳ��ȵĵ��ֽ�
//byte4:��֡���ݳ��ȵĸ��ֽ�
//����ֵ��pbuf��ʽ�Ľ��յ������ݰ�
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
	sys_mutex_lock(&dm9000lock); 				//���󻥳��ź���,����DM9000
	#endif
__error_retry:	
	DM9000_ReadReg(DM9000_MRCMDX);			//�ٶ�
	rxbyte=(u8)DM9000_ReadReg(DM9000_MRCMDX);//���еڶ��ζ�ȡ 
	printf("rxbyte:%#x\n",rxbyte);
	if(rxbyte)													//���յ�����
	{
		if(rxbyte>1)											//rxbyte����1�����յ������ݴ���,����,��ʱ��Ҫ��������λ		
		{
      printf("dm9000 rx: rx error, stop device\r\n");
			DM9000_WriteReg(DM9000_IMR,0x80);
			DM9000_WriteReg(DM9000_ISR,0x0F);
			DM9000_WriteReg(DM9000_RCR,0x00);
			DM9000_Reset();//��λDM9000
			//DM9000_PHY_Reset();
			DM9000_Set_PHYMode(dm9000cfg.mode);//����PHY����ģʽ
			return (struct pbuf*)p;
		}
		NET_REG_ADDR = DM9000_MRCMD;
		rx_status=NET_REG_DATA;
    rx_length=NET_REG_DATA;
		printf("rx_status:%#x,rx_length:%d\n",rx_status,rx_length);
		//if(rx_length>46)printf("rxlen:%d\r\n",rx_length);
    p=pbuf_alloc(PBUF_RAW,rx_length,PBUF_POOL);//pbufs�ڴ�ط���pbuf
		if(p!=NULL)																 //�ڴ�����ɹ�
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
		else										//�ڴ�����ʧ��
		{
			printf("pbuf�ڴ�����ʧ��:%d\r\n",rx_length);
      data=&dummy;
			len=rx_length;
			while(len)
			{
				*data=NET_REG_DATA;
				len-=2;
			}
		}	
		//����rx_status�жϽ��������Ƿ�������´���FIFO�����CRC����
		//���������������������κ�һ�����ֵĻ�����������֡��
		//��rx_lengthС��64���ߴ���������ݳ��ȵ�ʱ��Ҳ����������֡
		if((rx_status&0XBF00) || (rx_length < 0X40) || (rx_length > DM9000_PKT_MAX))
		{
			printf("rx_status:%#x\r\n",rx_status);
			if(rx_status & 0x100)printf("rx fifo error\r\n");
			if(rx_status & 0x200)printf("rx crc error\r\n");
      if(rx_status & 0x8000)printf("rx length error\r\n");
      if (rx_length>DM9000_PKT_MAX)
			{
				printf("rx length too big\r\n");
				DM9000_WriteReg(DM9000_NCR, NCR_RST); 	//��λDM9000
				sys_msleep(5);
			}
			if(p!=NULL)pbuf_free((struct pbuf*)p);		//�ͷ��ڴ�
			p=NULL;
			goto __error_retry;
		}
	}
	else
	{
		DM9000_WriteReg(DM9000_ISR,ISR_PTS);			//��������жϱ�־λ
    dm9000cfg.imr_all=IMR_PAR|IMR_PRI;				//���½����ж� 
    DM9000_WriteReg(DM9000_IMR, dm9000cfg.imr_all);
  }
	#ifdef sys_rtx_os
	sys_mutex_unlock(&dm9000lock);							//���ͻ����ź���,����DM9000
	#endif
	return (struct pbuf*)p; 
}

void DM9000_ISRHandler(void)
{
	u16 int_status;
	u16 last_io; 
	last_io = NET_REG_ADDR;
	int_status=DM9000_ReadReg(DM9000_ISR); 
	DM9000_WriteReg(DM9000_ISR,int_status);//����жϱ�־λ��DM9000��ISR�Ĵ�����bit0~bit5д1����
	if(int_status & ISR_ROS)printf("overflow \r\n");
  if(int_status & ISR_ROOS)printf("overflow counter overflow \r\n");	
	if(int_status & ISR_PRS)		//�����ж�
	{
 		sys_sem_signal(&dm9000input);//������յ�����֡
		//sys_sem_signal(&dm9000printfsignal);
		//printf("receive data from dm9000!\n");
	} 
	if(int_status&ISR_PTS)//�����ж�
	{ 
									//�����жϴ���,����û�õ�
	}
	NET_REG_ADDR = last_io;
}
