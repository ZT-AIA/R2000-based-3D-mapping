#ifndef DM9000_H
#define DM9000_H

//��ͷ�ļ���������dm9000�йص���������Ҫ����dm9000�ײ������
#include "system.h"
#include "lwip/pbuf.h"
#include "sys_arch.h"
#include "lwip/sys.h"

#define sys_rtx_os

//DM9000��ַ
#define NET_BASE_ADDR		0x68400000
#define NET_REG_ADDR		(*((volatile uint16_t *) NET_BASE_ADDR))
#define NET_REG_DATA		(*((volatile uint16_t *) (NET_BASE_ADDR|0x00080000)))

#define DM9000_ID			0X90000A46	//DM9000 ID
#define DM9000_PKT_MAX		1536		//DM9000�����հ�����

#define DM9000_INT		PAin(15)			//DM9000�ж�����

#define DM9000_PHY			0X40		//DM9000 PHY�Ĵ������ʱ�־
//DM9000�Ĵ���
#define DM9000_NCR			0X00
#define DM9000_NSR			0X01
#define DM9000_TCR			0X02
#define DM9000_TSRI			0X03
#define DM9000_TSRII		0X04
#define DM9000_RCR			0X05
#define DM9000_RSR			0X06
#define DM9000_ROCR			0X07	
#define DM9000_BPTR			0X08
#define DM9000_FCTR			0X09
#define DM9000_FCR			0X0A
#define DM9000_EPCR			0X0B
#define DM9000_EPAR			0X0C
#define DM9000_EPDRL		0X0D	
#define DM9000_EPDRH		0X0E
#define DM9000_WCR			0X0F
#define DM9000_PAR			0X10		//������ַ0X10~0X15
#define DM9000_MAR			0X16		//�ಥ��ַ0X16~0X1D
#define DM9000_GPCR			0X1E
#define DM9000_GPR			0X1F
#define DM9000_TRPAL		0X22
#define DM9000_TRPAH		0X23
#define DM9000_RWPAL		0X24
#define DM9000_RWPAH		0X25

#define DM9000_VIDL			0X28
#define DM9000_VIDH			0X29
#define DM9000_PIDL			0X2A
#define DM9000_PIDH			0X2B

#define DM9000_CHIPR		0X2C
#define DM9000_TCR2			0X2D
#define DM9000_OCR			0X2E
#define DM9000_SMCR			0X2F
#define DM9000_ETXCSR		0X30
#define DM9000_TCSCR		0X31
#define DM9000_RCSCSR		0X32
#define DM9000_MRCMDX		0XF0
#define DM9000_MRCMDX1		0XF1
#define DM9000_MRCMD		0XF2
#define DM9000_MRRL			0XF4
#define DM9000_MRRH			0XF5
#define DM9000_MWCMDX		0XF6
#define DM9000_MWCMD		0XF8
#define DM9000_MWRL			0XFA
#define DM9000_MWRH			0XFB
#define DM9000_TXPLL		0XFC
#define DM9000_TXPLH		0XFD
#define DM9000_ISR			0XFE
#define DM9000_IMR			0XFF

#define NCR_RST             0X01
#define NSR_SPEED           0X80
#define NSR_LINKST         	0X40
#define NSR_WAKEST          0X20
#define NSR_TX2END          0X08
#define NSR_TX1END          0X04
#define NSR_RXOV            0X02

#define RCR_DIS_LONG        0X20
#define RCR_DIS_CRC         0X10
#define RCR_ALL             0X08
#define RCR_RXEN            0X01

#define IMR_PAR             0X80	
#define IMR_ROOI            0X08	
#define IMR_POI             0X04		//ʹ�ܽ�������ж�
#define IMR_PTI             0X02		//ʹ�ܷ����ж�
#define IMR_PRI             0X01		//ʹ�ܽ����ж�

#define ISR_LNKCHGS         (1<<5)
#define ISR_ROOS            (1<<3)
#define ISR_ROS             (1<<2)
#define ISR_PTS             (1<<1)
#define ISR_PRS             (1<<0)
#define ISR_CLR_STATUS      (ISR_ROOS | ISR_ROS | ISR_PTS | ISR_PRS)

//DM9000�ڲ�PHY�Ĵ���
#define DM9000_PHY_BMCR		0X00
#define DM9000_PHY_BMSR		0X01
#define DM9000_PHY_PHYID1	0X02
#define DM9000_PHY_PHYID2	0X03
#define DM9000_PHY_ANAR		0X04
#define DM9000_PHY_ANLPAR	0X05
#define DM9000_PHY_ANER		0X06
#define DM9000_PHY_DSCR		0X10
#define DM9000_PHY_DSCSR	0X11
#define DM9000_PHY_10BTCSR	0X12
#define DM9000_PHY_PWDOR	0X13
#define DM9000_PHY_SCR		0X14

/* ��غ����� */
//#define DM9000A_ID_OK       0x0A469000
#define DM9000_BYTE_MODE      0x01
#define DM9000_WORD_MODE      0x00
#define DM9000_PKT_RDY        0x01
#define DM9000_PKT_NORDY      0x00
#define DM9000_REG_RESET      0x03

#define DM9000_RX_INTR        0x01                /* �����ж��ж� bit */
#define DM9000_TX_INTR        0x02                /* �����ж��ж� bit */
#define DM9000_OVERFLOW_INTR  0x04                /* �ڴ�����ж��ж� bit */
#define DM9000_LINK_CHANG     0x20                /* ���ӱ䶯�ж��ж� bit */

#define DM9000_PHY_ON         0x00                /* �趨 PHY ���� */
#define DM9000_PHY_OFF        0x01                /* �趨 PHY �ر� */
#define DM9000_RCR_SET        0x31                /* �趨 ���չ��� (���� CRC �� ������) */
#define DM9000_TCR_SET        0x01                /* �趨 ���͹��� */
#define DM9000_RCR_OFF        0x00                /* �趨 ���չ��ܹعر����� */
#define DM9000_BPTR_SET       0x37                /* �趨 Back Pressure �������� */
#define DM9000_FCTR_SET       0x38                /* �趨 Flow Control �������� */
#define DM9000_TCR2_SET       0x80                /* ���� LED ��ʾģʽ */
#define DM9000_OTCR_SET       0x80                /* ���� DM9000 ����Ƶ�� 0x80 = 100Mhz */
#define DM9000_ETXCSR_SET     0x83                /* ���� Early Tramsmit �������� */
#define DM9000_FCR_SET        0x28                /* ���� �������ع������� */
#define DM9000_TCSCR_SET      0x07                /* �趨 CHECKSUM �������� ���� */
#define DM9000_RCSCSR_SET     0x03                /* �趨 CHECKSUM ���ռ�� ���� */
#define DM9000_IMR_SET        0x81                /* �趨 �����ж�ʹ�� �������� */
#define DM9000_IMR_OFF        0x80                /* �趨 �ر��ж�ʹ�� �������� */

//DM9000����ģʽ����
enum DM9000_PHY_mode
{
	DM9000_10MHD 	= 	0, 					//10M��˫��
	DM9000_100MHD 	= 	1,					//100M��˫��	
	DM9000_10MFD 	= 	4, 					//10Mȫ˫��
	DM9000_100MFD 	= 	5,					//100Mȫ˫��
	DM9000_AUTO  	= 	8, 					//�Զ�Э��
};

//DM9000���ýṹ��
struct dm9000_config
{
	enum DM9000_PHY_mode mode;//����ģʽ
	u8  imr_all;							//�ж����� 
	u16 queue_packet_len;			//ÿ�����ݰ���С
	u8  mac_addr[6];					//MAC��ַ
	u8  multicase_addr[8];		//�鲥��ַ
};

extern sys_sem_t dm9000input;//�������ݵ��ź���
extern sys_mutex_t dm9000lock;//dm9000���ͺͽ��յ���������ʹ����ֻ�ܴ���һ�����ݰ�
extern sys_sem_t dm9000printfsignal;

extern struct dm9000_config dm9000cfg;				//DM9000���ýṹ��

u8   DM9000_Init(void);
u16  DM9000_ReadReg(u16 reg);
void DM9000_WriteReg(u16 reg,u16 data);
u16  DM9000_PHY_ReadReg(u16 reg);
void DM9000_PHY_WriteReg(u16 reg,u16 data);
u32  DM9000_Get_DeiviceID(void);
u8   DM9000_Get_SpeedAndDuplex(void);	
void DM9000_Set_PHYMode(u8 mode);
void DM9000_Set_MACAddress(u8 *macaddr);
void DM9000_Set_Multicast(u8 *multicastaddr);
void DM9000_Reset(void);
void DM9000_SendPacket(struct pbuf *p);
struct pbuf *DM9000_Receive_Packet(void);
void DM9000_ISRHandler(void);



#endif
