#line 1 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.c"





















  




















 
 
#line 1 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"










































 



 



 
    






  


 
  


 







 





#line 88 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







            








 










 
#line 124 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
                                             


 



 



 









 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      
  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,        
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,          
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  DMA1_Stream7_IRQn           = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  ETH_IRQn                    = 61,      
  ETH_WKUP_IRQn               = 62,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,       
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  CRYP_IRQn                   = 79,      
  HASH_RNG_IRQn               = 80,       
  FPU_IRQn                    = 81       
} IRQn_Type;



 

#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
 




















 
























 













 




 






 

 











#line 100 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

 
#line 113 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

#line 142 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 144 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cmInstr.h"
 




















 





 



 


 









 







 







 






 








 







 







 









 









 
static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 
static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 









 









 









 











 











 











 







 










 










 









 






#line 582 "..\\..\\libraries\\CMSIS\\Include\\core_cmInstr.h"

   

#line 145 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cmFunc.h"
 




















 





 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}
 







 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}
 






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 605 "..\\..\\libraries\\CMSIS\\Include\\core_cmFunc.h"

 


#line 146 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cm4_simd.h"
 




















 











 


 



 


 

 
#line 106 "..\\..\\libraries\\CMSIS\\Include\\core_cm4_simd.h"








 



#line 693 "..\\..\\libraries\\CMSIS\\Include\\core_cm4_simd.h"

 




#line 147 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"








 
#line 182 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

 
#line 191 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

 





 









 





 


 
typedef union
{
  struct
  {



    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                

    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       



    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                

    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
} ITM_Type;

 



 



























   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 












 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 




 

 
#line 986 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

#line 993 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"











 





 






 



 



 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}








 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}








 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}








 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}








 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}












 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}













 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}















 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}















 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 



 











 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFUL << 0))  return (1);             

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (ticks & (0xFFFFFFUL << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 



 



 

extern volatile int32_t ITM_RxBuffer;                     











 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((CoreDebug_Type *) (0xE000EDF0UL))->DEMCR & (1UL << 24))  &&       
      (((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}










 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}









 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 





#line 247 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
#line 1 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\system_stm32f4xx.h"



















 




















  


 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           




 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 248 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
#line 249 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



   
 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;



 



    



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;           
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];          
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
} FLASH_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];        
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];     
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
} FSMC_Bank2_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR3;       
} FSMC_Bank3_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint16_t BSRRL;     
  volatile uint16_t BSRRH;     
  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
  uint32_t      RESERVED[2];    
  volatile uint32_t CMPCR;         
} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t OAR1;        
  uint16_t      RESERVED2;   
  volatile uint16_t OAR2;        
  uint16_t      RESERVED3;   
  volatile uint16_t DR;          
  uint16_t      RESERVED4;   
  volatile uint16_t SR1;         
  uint16_t      RESERVED5;   
  volatile uint16_t SR2;         
  uint16_t      RESERVED6;   
  volatile uint16_t CCR;         
  uint16_t      RESERVED7;   
  volatile uint16_t TRISE;       
  uint16_t      RESERVED8;   
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     
} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;           
  volatile uint32_t CLKCR;           
  volatile uint32_t ARG;             
  volatile uint32_t CMD;             
  volatile const uint32_t  RESPCMD;         
  volatile const uint32_t  RESP1;           
  volatile const uint32_t  RESP2;           
  volatile const uint32_t  RESP3;           
  volatile const uint32_t  RESP4;           
  volatile uint32_t DTIMER;          
  volatile uint32_t DLEN;            
  volatile uint32_t DCTRL;           
  volatile const uint32_t  DCOUNT;          
  volatile const uint32_t  STA;             
  volatile uint32_t ICR;             
  volatile uint32_t MASK;            
  uint32_t      RESERVED0[2];    
  volatile const uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];   
  volatile uint32_t FIFO;            
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t SR;          
  uint16_t      RESERVED2;   
  volatile uint16_t DR;          
  uint16_t      RESERVED3;   
  volatile uint16_t CRCPR;       
  uint16_t      RESERVED4;   
  volatile uint16_t RXCRCR;      
  uint16_t      RESERVED5;   
  volatile uint16_t TXCRCR;      
  uint16_t      RESERVED6;   
  volatile uint16_t I2SCFGR;     
  uint16_t      RESERVED7;   
  volatile uint16_t I2SPR;       
  uint16_t      RESERVED8;   
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;          
  uint16_t      RESERVED0;    
  volatile uint16_t CR2;          
  uint16_t      RESERVED1;    
  volatile uint16_t SMCR;         
  uint16_t      RESERVED2;    
  volatile uint16_t DIER;         
  uint16_t      RESERVED3;    
  volatile uint16_t SR;           
  uint16_t      RESERVED4;    
  volatile uint16_t EGR;          
  uint16_t      RESERVED5;    
  volatile uint16_t CCMR1;        
  uint16_t      RESERVED6;    
  volatile uint16_t CCMR2;        
  uint16_t      RESERVED7;    
  volatile uint16_t CCER;         
  uint16_t      RESERVED8;    
  volatile uint32_t CNT;          
  volatile uint16_t PSC;          
  uint16_t      RESERVED9;    
  volatile uint32_t ARR;          
  volatile uint16_t RCR;          
  uint16_t      RESERVED10;   
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint16_t BDTR;         
  uint16_t      RESERVED11;   
  volatile uint16_t DCR;          
  uint16_t      RESERVED12;   
  volatile uint16_t DMAR;         
  uint16_t      RESERVED13;   
  volatile uint16_t OR;           
  uint16_t      RESERVED14;   
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;          
  uint16_t      RESERVED0;   
  volatile uint16_t DR;          
  uint16_t      RESERVED1;   
  volatile uint16_t BRR;         
  uint16_t      RESERVED2;   
  volatile uint16_t CR1;         
  uint16_t      RESERVED3;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED4;   
  volatile uint16_t CR3;         
  uint16_t      RESERVED5;   
  volatile uint16_t GTPR;        
  uint16_t      RESERVED6;   
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t SR;      
  volatile uint32_t DR;      
  volatile uint32_t DOUT;    
  volatile uint32_t DMACR;   
  volatile uint32_t IMSCR;   
  volatile uint32_t RISR;    
  volatile uint32_t MISR;    
  volatile uint32_t K0LR;    
  volatile uint32_t K0RR;    
  volatile uint32_t K1LR;    
  volatile uint32_t K1RR;    
  volatile uint32_t K2LR;    
  volatile uint32_t K2RR;    
  volatile uint32_t K3LR;    
  volatile uint32_t K3RR;    
  volatile uint32_t IV0LR;   
  volatile uint32_t IV0RR;   
  volatile uint32_t IV1LR;   
  volatile uint32_t IV1RR;   
} CRYP_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;         
  volatile uint32_t DIN;        
  volatile uint32_t STR;        
  volatile uint32_t HR[5];      
  volatile uint32_t IMR;        
  volatile uint32_t SR;         
  uint32_t  RESERVED[52];   
  volatile uint32_t CSR[51];      
} HASH_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;



 
  


 
#line 1016 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 




 





 
#line 1062 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1079 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1116 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 






 




 
  


   
#line 1223 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 
 
#line 1252 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1278 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  
 
#line 1304 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1342 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1384 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 
#line 1433 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1471 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1509 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1538 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 



 
#line 1574 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1596 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 
 
 
 
 
 
 
#line 1617 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1628 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1646 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 





 





 
#line 1684 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 












 
#line 1705 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 1845 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1862 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1879 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1896 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1930 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1964 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1998 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2032 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2066 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2100 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2134 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2168 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2202 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2236 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2270 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2304 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2338 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2372 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2406 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2440 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2474 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2508 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2542 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2576 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2610 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2644 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2678 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2712 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2746 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2780 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2814 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2848 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 



 



 


 
 
 
 
 
 


#line 2885 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 2894 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 





 


 


 


 



 
 
 
 
 
 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 

 
 
 
 
 
 
#line 3030 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 






 






 






 






 
 
 
 
 
  
#line 3105 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3124 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3135 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3157 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3179 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3201 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3223 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
#line 3250 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3272 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3294 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3316 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3338 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3360 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
#line 3376 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3384 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3393 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3407 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3437 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 











#line 3465 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











#line 3488 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











#line 3511 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











#line 3534 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 3931 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3940 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3949 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3960 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3970 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3980 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3990 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4001 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4011 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4021 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4031 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4042 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4052 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4062 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4072 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4083 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4093 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4103 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4113 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4124 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4134 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4144 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4154 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4165 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4175 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4185 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4195 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4206 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4216 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4226 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4236 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
 
 
 
 
 
































































 
#line 4330 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
































































 
































































 
#line 4478 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
#line 4495 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4513 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
#line 4530 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4564 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
#line 4585 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4594 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 





 
 
 
 
 
 
#line 4625 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4634 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 



#line 4655 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 



 


 
#line 4680 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4690 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 


 
 
 
 
 
 


 





 


 



 
 
 
 
 
 












 
#line 4747 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 


 
#line 4762 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 
 
 
 
 
 



#line 4780 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4790 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4799 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4808 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4819 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"















 
 








 








 






#line 4869 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











 











 
#line 4901 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




















 
#line 4944 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4960 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



  




 


 
#line 4997 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5010 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 
#line 5034 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 


 
#line 5069 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5084 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5108 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 


 
#line 5143 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5158 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











 
#line 5182 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 



 
 
 
 
 
 



 






 
 
 
 
 
 
#line 5242 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5272 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5300 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5317 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 


 



 
#line 5370 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5412 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 



 
#line 5451 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5471 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 5489 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5509 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5517 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5525 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
 
 
 
 
 




 












 


 






#line 5626 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5696 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5711 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5737 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
 
 
 
 
 









#line 5769 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5777 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5787 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 





















 




 
 
 
 
 
   




 

 


 






  
#line 5859 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5871 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5883 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5895 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






  
#line 5913 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5925 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5937 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5949 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




           


  
#line 5968 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5980 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5992 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6004 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






  
#line 6021 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6032 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6043 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6054 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

   



 
 
 
 
 
 
















 









#line 6099 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 

























 
#line 6142 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6156 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6166 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




























 





















 




























 





















 
#line 6285 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
#line 6320 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"





#line 6331 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6339 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 6346 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 6357 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 
 
 
 
 
 
#line 6375 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 



 
#line 6399 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6408 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 
#line 6428 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6439 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 
 
 
 
 
 
#line 6456 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 
#line 6468 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 



 
 
 
 
 
 



 









 
#line 6516 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 






 
 
 
 
 
 
#line 6560 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6576 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
#line 6594 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  
 


 
#line 6610 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



  


 








 

  
#line 6637 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 



 


 


 
#line 6666 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 6681 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 6696 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
 
 

 
#line 6711 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 




 




 




 


 


 


 


 


 


 
 
 

 
#line 6764 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 6771 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 



 


 



 


 


 


 



 
 
 

 
#line 6846 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 




   
#line 6897 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6923 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6940 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 


 


 


 




 

 

  

#line 1 "..\\inc\\stm32f4xx_conf.h"



















  




















 
 




 




 
 
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


























 

 







 
#line 1 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"










































 



 



 
    
#line 6998 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 

  

 

 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"



 



  

 



  
typedef struct
{
  uint32_t ADC_Resolution;                
                                    
  FunctionalState ADC_ScanConvMode;       


  
  FunctionalState ADC_ContinuousConvMode; 

 
  uint32_t ADC_ExternalTrigConvEdge;      


 
  uint32_t ADC_ExternalTrigConv;          


 
  uint32_t ADC_DataAlign;                 

 
  uint8_t  ADC_NbrOfConversion;           


 
}ADC_InitTypeDef;
  


  
typedef struct 
{
  uint32_t ADC_Mode;                      

                                               
  uint32_t ADC_Prescaler;                 

 
  uint32_t ADC_DMAAccessMode;             


 
  uint32_t ADC_TwoSamplingDelay;          

 
  
}ADC_CommonInitTypeDef;


 



  






  
#line 141 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 157 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 173 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                     


  




  
#line 214 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                     


  




  
#line 231 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                      


  




  
#line 248 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 288 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  






  




  
#line 327 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"





#line 351 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 375 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 391 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                            


  




  
#line 432 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 448 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 470 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 484 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 498 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
  
#line 506 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  



  




  



  




  



  




  



  




  



  




  



  




  



  




  

 
   

   
void ADC_DeInit(void);

 
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_CommonInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct);
void ADC_CommonStructInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);

 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold,uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);

 
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
void ADC_VBATCmd(FunctionalState NewState);

 
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_SoftwareStartConv(ADC_TypeDef* ADCx);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_EOCOnEachRegularChannelCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ContinuousModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetMultiModeConversionValue(void);

 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMARequestAfterLastTransferCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_MultiModeDMARequestAfterLastTransferCmd(FunctionalState NewState);

 
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvEdgeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConvEdge);
void ADC_SoftwareStartInjectedConv(ADC_TypeDef* ADCx);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);

 
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









  



  

 
#line 55 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"



 



 

 






 
typedef struct
{
  uint16_t CAN_Prescaler;   
 
  
  uint8_t CAN_Mode;         
 

  uint8_t CAN_SJW;          


 

  uint8_t CAN_BS1;          

 

  uint8_t CAN_BS2;          
 
  
  FunctionalState CAN_TTCM; 
 
  
  FunctionalState CAN_ABOM;  
 

  FunctionalState CAN_AWUM;  
 

  FunctionalState CAN_NART;  
 

  FunctionalState CAN_RFLM;  
 

  FunctionalState CAN_TXFP;  
 
} CAN_InitTypeDef;



 
typedef struct
{
  uint16_t CAN_FilterIdHigh;         

 

  uint16_t CAN_FilterIdLow;          

 

  uint16_t CAN_FilterMaskIdHigh;     


 

  uint16_t CAN_FilterMaskIdLow;      


 

  uint16_t CAN_FilterFIFOAssignment; 
 
  
  uint8_t CAN_FilterNumber;           

  uint8_t CAN_FilterMode;            
 

  uint8_t CAN_FilterScale;           
 

  FunctionalState CAN_FilterActivation; 
 
} CAN_FilterInitTypeDef;



 
typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     

 

  uint8_t Data[8]; 
 
} CanTxMsg;



 
typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     
 

  uint8_t Data[8]; 
 

  uint8_t FMI;     

 
} CanRxMsg;

 



 



 





 




 



 












 


 


   










 
  



   





 



 









 



 
#line 289 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"




 



 
#line 306 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"




 



 



 



 



 



 







 



 







 



 





 




 



 



 



 






 



 





 




 



 




 




 



 





 	






 



 






 



 



 	




 



 



 




 




                                                          
#line 481 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


 



 

 

 

 




 
#line 505 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

 



 

 





#line 526 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"








 

  


  


 
#line 549 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

 



 






 





#line 574 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

#line 581 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


 



 

 
   

  
void CAN_DeInit(CAN_TypeDef* CANx);

  
uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct);
void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct);
void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct);
void CAN_SlaveStartBank(uint8_t CAN_BankNumber); 
void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState);
void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState);

 
uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage);
uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox);
void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox);

 
void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage);
void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber);
uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber);

 
uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode);
uint8_t CAN_Sleep(CAN_TypeDef* CANx);
uint8_t CAN_WakeUp(CAN_TypeDef* CANx);

 
uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx);
uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx);
uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx);

 
void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState);
FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT);
void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT);









 



 

 
#line 56 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_crc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_crc.h"



 



 

 
 



 



 

 
   

void CRC_ResetDR(void);
uint32_t CRC_CalcCRC(uint32_t Data);
uint32_t CRC_CalcBlockCRC(uint32_t pBuffer[], uint32_t BufferLength);
uint32_t CRC_GetCRC(void);
void CRC_SetIDRegister(uint8_t IDValue);
uint8_t CRC_GetIDRegister(void);









 



 

 
#line 57 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"



 



  

 



  
typedef struct
{
  uint16_t CRYP_AlgoDir;   
 
  uint16_t CRYP_AlgoMode;  

 
  uint16_t CRYP_DataType;  
  
  uint16_t CRYP_KeySize;   

 
}CRYP_InitTypeDef;



  
typedef struct
{
  uint32_t CRYP_Key0Left;   
  uint32_t CRYP_Key0Right;  
  uint32_t CRYP_Key1Left;   
  uint32_t CRYP_Key1Right;  
  uint32_t CRYP_Key2Left;   
  uint32_t CRYP_Key2Right;  
  uint32_t CRYP_Key3Left;   
  uint32_t CRYP_Key3Right;  
}CRYP_KeyInitTypeDef;


  
typedef struct
{
  uint32_t CRYP_IV0Left;   
  uint32_t CRYP_IV0Right;  
  uint32_t CRYP_IV1Left;   
  uint32_t CRYP_IV1Right;  
}CRYP_IVInitTypeDef;



  
typedef struct
{
   
  uint32_t CR_bits9to2;
   
  uint32_t CRYP_IV0LR;
  uint32_t CRYP_IV0RR;
  uint32_t CRYP_IV1LR;
  uint32_t CRYP_IV1RR;
   
  uint32_t CRYP_K0LR;
  uint32_t CRYP_K0RR;
  uint32_t CRYP_K1LR;
  uint32_t CRYP_K1RR;
  uint32_t CRYP_K2LR;
  uint32_t CRYP_K2RR;
  uint32_t CRYP_K3LR;
  uint32_t CRYP_K3RR;
}CRYP_Context;


 



 



 







  
 


 

 



 



 





#line 160 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


  
 


 
#line 175 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 
                                     


 
#line 188 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 



 
#line 207 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"

#line 215 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 



 







 



 





 



 





  



  

 
 

 
void CRYP_DeInit(void);

 
void CRYP_Init(CRYP_InitTypeDef* CRYP_InitStruct);
void CRYP_StructInit(CRYP_InitTypeDef* CRYP_InitStruct);
void CRYP_KeyInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_KeyStructInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_IVInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct);
void CRYP_IVStructInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct);
void CRYP_Cmd(FunctionalState NewState);

 
void CRYP_DataIn(uint32_t Data);
uint32_t CRYP_DataOut(void);
void CRYP_FIFOFlush(void);

 
ErrorStatus CRYP_SaveContext(CRYP_Context* CRYP_ContextSave,
                             CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_RestoreContext(CRYP_Context* CRYP_ContextRestore);

 
void CRYP_DMACmd(uint8_t CRYP_DMAReq, FunctionalState NewState);

 
void CRYP_ITConfig(uint8_t CRYP_IT, FunctionalState NewState);
ITStatus CRYP_GetITStatus(uint8_t CRYP_IT);
FlagStatus CRYP_GetFlagStatus(uint8_t CRYP_FLAG);

 
ErrorStatus CRYP_AES_ECB(uint8_t Mode,
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_CBC(uint8_t Mode,
                         uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_CTR(uint8_t Mode,
                         uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

 
ErrorStatus CRYP_TDES_ECB(uint8_t Mode,
                           uint8_t Key[24], 
                           uint8_t *Input, uint32_t Ilength,
                           uint8_t *Output);

ErrorStatus CRYP_TDES_CBC(uint8_t Mode,
                          uint8_t Key[24],
                          uint8_t InitVectors[8],
                          uint8_t *Input, uint32_t Ilength,
                          uint8_t *Output);

 
ErrorStatus CRYP_DES_ECB(uint8_t Mode,
                         uint8_t Key[8],
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_DES_CBC(uint8_t Mode,
                         uint8_t Key[8],
                         uint8_t InitVectors[8],
                         uint8_t *Input,uint32_t Ilength,
                         uint8_t *Output);









 



  

 
#line 58 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"



 



 

 



 

typedef struct
{
  uint32_t DAC_Trigger;                      
 

  uint32_t DAC_WaveGeneration;               

 

  uint32_t DAC_LFSRUnmask_TriangleAmplitude; 

 

  uint32_t DAC_OutputBuffer;                 
 
}DAC_InitTypeDef;

 



 



 

#line 89 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"




#line 102 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"



 



 

#line 117 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 

#line 149 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"

#line 174 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 







 



 







 



 

#line 212 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 







 



 




 
  


    





  



  
  





 



 

 
   

   
void DAC_DeInit(void);

 
void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef* DAC_InitStruct);
void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct);
void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_SoftwareTriggerCmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_DualSoftwareTriggerCmd(FunctionalState NewState);
void DAC_WaveGenerationCmd(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState);
void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetChannel2Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetDualChannelData(uint32_t DAC_Align, uint16_t Data2, uint16_t Data1);
uint16_t DAC_GetDataOutputValue(uint32_t DAC_Channel);

 
void DAC_DMACmd(uint32_t DAC_Channel, FunctionalState NewState);

 
void DAC_ITConfig(uint32_t DAC_Channel, uint32_t DAC_IT, FunctionalState NewState);
FlagStatus DAC_GetFlagStatus(uint32_t DAC_Channel, uint32_t DAC_FLAG);
void DAC_ClearFlag(uint32_t DAC_Channel, uint32_t DAC_FLAG);
ITStatus DAC_GetITStatus(uint32_t DAC_Channel, uint32_t DAC_IT);
void DAC_ClearITPendingBit(uint32_t DAC_Channel, uint32_t DAC_IT);









 



 

 
#line 59 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"

























 

 







 
#line 38 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"



 



  

 
 



  





#line 76 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"

#line 83 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"


  

 
  
uint32_t DBGMCU_GetREVID(void);
uint32_t DBGMCU_GetDEVID(void);
void DBGMCU_Config(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB1PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB2PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);









  



  

 
#line 60 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"

























 

 







 
#line 38 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"



 



  

 


  
typedef struct
{
  uint16_t DCMI_CaptureMode;      
 

  uint16_t DCMI_SynchroMode;      
 

  uint16_t DCMI_PCKPolarity;      
 

  uint16_t DCMI_VSPolarity;       
 

  uint16_t DCMI_HSPolarity;       
 

  uint16_t DCMI_CaptureRate;      
 

  uint16_t DCMI_ExtendedDataMode; 
 
} DCMI_InitTypeDef;



  
typedef struct
{
  uint16_t DCMI_VerticalStartLine;      
 

  uint16_t DCMI_HorizontalOffsetCount;  
 

  uint16_t DCMI_VerticalLineCount;      
 

  uint16_t DCMI_CaptureCount;           

 
} DCMI_CROPInitTypeDef;



  
typedef struct
{
  uint8_t DCMI_FrameStartCode;  
  uint8_t DCMI_LineStartCode;   
  uint8_t DCMI_LineEndCode;     
  uint8_t DCMI_FrameEndCode;    
} DCMI_CodesInitTypeDef;

 



 



  
#line 120 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
#line 134 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  






  




  






  




  






  




  
#line 184 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
#line 200 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
#line 219 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  


  





  







  
#line 262 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"
                                



  



  

 
  

  
void DCMI_DeInit(void);

 
void DCMI_Init(DCMI_InitTypeDef* DCMI_InitStruct);
void DCMI_StructInit(DCMI_InitTypeDef* DCMI_InitStruct);
void DCMI_CROPConfig(DCMI_CROPInitTypeDef* DCMI_CROPInitStruct);
void DCMI_CROPCmd(FunctionalState NewState);
void DCMI_SetEmbeddedSynchroCodes(DCMI_CodesInitTypeDef* DCMI_CodesInitStruct);
void DCMI_JPEGCmd(FunctionalState NewState);

 
void DCMI_Cmd(FunctionalState NewState);
void DCMI_CaptureCmd(FunctionalState NewState);
uint32_t DCMI_ReadData(void);

 
void DCMI_ITConfig(uint16_t DCMI_IT, FunctionalState NewState);
FlagStatus DCMI_GetFlagStatus(uint16_t DCMI_FLAG);
void DCMI_ClearFlag(uint16_t DCMI_FLAG);
ITStatus DCMI_GetITStatus(uint16_t DCMI_IT);
void DCMI_ClearITPendingBit(uint16_t DCMI_IT);









  



  

 
#line 61 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"



 



 

 



 

typedef struct
{
  uint32_t DMA_Channel;            
 
 
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_Memory0BaseAddr;    

 

  uint32_t DMA_DIR;                

 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_FIFOMode;          


 

  uint32_t DMA_FIFOThreshold;      
 

  uint32_t DMA_MemoryBurst;        


 

  uint32_t DMA_PeripheralBurst;    


   
}DMA_InitTypeDef;

 



 

#line 134 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"






  
#line 149 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"

#line 158 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  









  




  



  




  







  




  







  




  









  




  









  




  







  




  











  




  







  




  











  




  











  




  











  




 
#line 346 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"

#line 353 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  



 
#line 400 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"




#line 424 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  









  




  
#line 487 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"





#line 512 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  







  




  







  




  






  



  

 
  

  
void DMA_DeInit(DMA_Stream_TypeDef* DMAy_Streamx);

 
void DMA_Init(DMA_Stream_TypeDef* DMAy_Streamx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState);

 
void DMA_PeriphIncOffsetSizeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_Pincos);
void DMA_FlowControllerConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FlowCtrl);

 
void DMA_SetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx, uint16_t Counter);
uint16_t DMA_GetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx);

 
void DMA_DoubleBufferModeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t Memory1BaseAddr,
                                uint32_t DMA_CurrentMemory);
void DMA_DoubleBufferModeCmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState);
void DMA_MemoryTargetConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t MemoryBaseAddr,
                            uint32_t DMA_MemoryTarget);
uint32_t DMA_GetCurrentMemoryTarget(DMA_Stream_TypeDef* DMAy_Streamx);

 
FunctionalState DMA_GetCmdStatus(DMA_Stream_TypeDef* DMAy_Streamx);
uint32_t DMA_GetFIFOStatus(DMA_Stream_TypeDef* DMAy_Streamx);
FlagStatus DMA_GetFlagStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG);
void DMA_ClearFlag(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG);
void DMA_ITConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT, FunctionalState NewState);
ITStatus DMA_GetITStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT);
void DMA_ClearITPendingBit(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT);









 



 


 
#line 62 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"



 



 

 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;





 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;






 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;

 



 



 

#line 128 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"
                                          


#line 143 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"
                    


 



 

 
 

 
void EXTI_DeInit(void);

 
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);

 
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);









 



 

 
#line 63 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"



 



  

 


  
typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PGS,
  FLASH_ERROR_PGP,
  FLASH_ERROR_PGA,
  FLASH_ERROR_WRP,
  FLASH_ERROR_PROGRAM,
  FLASH_ERROR_OPERATION,
  FLASH_COMPLETE
}FLASH_Status;

 



   



  
#line 81 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"

#line 90 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


  



  











  



  
#line 133 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


  



  
#line 153 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"




 



 


  
 





  



  





  



  





  




  





 
  


   
#line 213 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


 



  





  



  
#line 242 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


 



 







  



  







  



  



  






  

 
  
 
 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_PrefetchBufferCmd(FunctionalState NewState);
void FLASH_InstructionCacheCmd(FunctionalState NewState);
void FLASH_DataCacheCmd(FunctionalState NewState);
void FLASH_InstructionCacheReset(void);
void FLASH_DataCacheReset(void);

    
void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_EraseSector(uint32_t FLASH_Sector, uint8_t VoltageRange);
FLASH_Status FLASH_EraseAllSectors(uint8_t VoltageRange);
FLASH_Status FLASH_ProgramDoubleWord(uint32_t Address, uint64_t Data);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramByte(uint32_t Address, uint8_t Data);

  
void FLASH_OB_Unlock(void);
void FLASH_OB_Lock(void);
void FLASH_OB_WRPConfig(uint32_t OB_WRP, FunctionalState NewState);
void FLASH_OB_RDPConfig(uint8_t OB_RDP);
void FLASH_OB_UserConfig(uint8_t OB_IWDG, uint8_t OB_STOP, uint8_t OB_STDBY);
void FLASH_OB_BORConfig(uint8_t OB_BOR);
FLASH_Status FLASH_OB_Launch(void);
uint8_t FLASH_OB_GetUser(void);
uint16_t FLASH_OB_GetWRP(void);
FlagStatus FLASH_OB_GetRDP(void);
uint8_t FLASH_OB_GetBOR(void);

 
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(void);









  



  

 
#line 64 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"



 



 

 



 
typedef struct
{
  uint32_t FSMC_AddressSetupTime;       


 

  uint32_t FSMC_AddressHoldTime;        


 

  uint32_t FSMC_DataSetupTime;          


 

  uint32_t FSMC_BusTurnAroundDuration;  


 

  uint32_t FSMC_CLKDivision;            

 

  uint32_t FSMC_DataLatency;            





 

  uint32_t FSMC_AccessMode;             
 
}FSMC_NORSRAMTimingInitTypeDef;



 
typedef struct
{
  uint32_t FSMC_Bank;                
 

  uint32_t FSMC_DataAddressMux;      

 

  uint32_t FSMC_MemoryType;          

 

  uint32_t FSMC_MemoryDataWidth;     
 

  uint32_t FSMC_BurstAccessMode;     

 

  uint32_t FSMC_AsynchronousWait;     

                                           

  uint32_t FSMC_WaitSignalPolarity;  

 

  uint32_t FSMC_WrapMode;            

 

  uint32_t FSMC_WaitSignalActive;    


 

  uint32_t FSMC_WriteOperation;      
 

  uint32_t FSMC_WaitSignal;          

 

  uint32_t FSMC_ExtendedMode;        
 

  uint32_t FSMC_WriteBurst;          
  

  FSMC_NORSRAMTimingInitTypeDef* FSMC_ReadWriteTimingStruct;    

  FSMC_NORSRAMTimingInitTypeDef* FSMC_WriteTimingStruct;            
}FSMC_NORSRAMInitTypeDef;



 
typedef struct
{
  uint32_t FSMC_SetupTime;      



 

  uint32_t FSMC_WaitSetupTime;  



 

  uint32_t FSMC_HoldSetupTime;  




 

  uint32_t FSMC_HiZSetupTime;   



 
}FSMC_NAND_PCCARDTimingInitTypeDef;



 
typedef struct
{
  uint32_t FSMC_Bank;              
 

  uint32_t FSMC_Waitfeature;      
 

  uint32_t FSMC_MemoryDataWidth;  
 

  uint32_t FSMC_ECC;              
 

  uint32_t FSMC_ECCPageSize;      
 

  uint32_t FSMC_TCLRSetupTime;    

 

  uint32_t FSMC_TARSetupTime;     

  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;     

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;  
}FSMC_NANDInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Waitfeature;    
 

  uint32_t FSMC_TCLRSetupTime;  

 

  uint32_t FSMC_TARSetupTime;   

  

  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;    
  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_IOSpaceTimingStruct;    
}FSMC_PCCARDInitTypeDef;

 



 



 






 



   




 



     



 



















 



 







 



 

#line 314 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 







 



 







 
    


 






 



 






 



 






 



 






 



 






 



 






 



 







 



 







 



 



 



 



 



 



 



 



 



 



 



 



 



 
#line 491 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 
  


 



 






 




 






 



 
#line 541 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 



 



 



 



 



 



 



 



 



 



 



 



 
#line 603 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 
#line 618 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"




 



 



 

 
  

 
void FSMC_NORSRAMDeInit(uint32_t FSMC_Bank);
void FSMC_NORSRAMInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NORSRAMStructInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NORSRAMCmd(uint32_t FSMC_Bank, FunctionalState NewState);

 
void FSMC_NANDDeInit(uint32_t FSMC_Bank);
void FSMC_NANDInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_NANDStructInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_NANDCmd(uint32_t FSMC_Bank, FunctionalState NewState);
void FSMC_NANDECCCmd(uint32_t FSMC_Bank, FunctionalState NewState);
uint32_t FSMC_GetECC(uint32_t FSMC_Bank);

 
void FSMC_PCCARDDeInit(void);
void FSMC_PCCARDInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_PCCARDStructInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_PCCARDCmd(FunctionalState NewState);

 
void FSMC_ITConfig(uint32_t FSMC_Bank, uint32_t FSMC_IT, FunctionalState NewState);
FlagStatus FSMC_GetFlagStatus(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
void FSMC_ClearFlag(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
ITStatus FSMC_GetITStatus(uint32_t FSMC_Bank, uint32_t FSMC_IT);
void FSMC_ClearITPendingBit(uint32_t FSMC_Bank, uint32_t FSMC_IT);








 



  

 
#line 65 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_hash.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_hash.h"



 



  

 



  
typedef struct
{
  uint32_t HASH_AlgoSelection; 
 
  uint32_t HASH_AlgoMode;      
 
  uint32_t HASH_DataType;      

 
  uint32_t HASH_HMACKeyType;   
 
}HASH_InitTypeDef;



  
typedef struct
{
  uint32_t Data[5];      
 
} HASH_MsgDigest; 



  
typedef struct
{
  uint32_t HASH_IMR; 
  uint32_t HASH_STR;      
  uint32_t HASH_CR;     
  uint32_t HASH_CSR[51];       
}HASH_Context;

 



  



  







 



  







 



   











 



  







 



   




 



   





				   


 



   

















  



  

 
  
  
 
void HASH_DeInit(void);

 
void HASH_Init(HASH_InitTypeDef* HASH_InitStruct);
void HASH_StructInit(HASH_InitTypeDef* HASH_InitStruct);
void HASH_Reset(void);

 
void HASH_DataIn(uint32_t Data);
uint8_t HASH_GetInFIFOWordsNbr(void);
void HASH_SetLastWordValidBitsNbr(uint16_t ValidNumber);
void HASH_StartDigest(void);
void HASH_GetDigest(HASH_MsgDigest* HASH_MessageDigest);

 
void HASH_SaveContext(HASH_Context* HASH_ContextSave);
void HASH_RestoreContext(HASH_Context* HASH_ContextRestore);

 
void HASH_DMACmd(FunctionalState NewState);

 
void HASH_ITConfig(uint8_t HASH_IT, FunctionalState NewState);
FlagStatus HASH_GetFlagStatus(uint16_t HASH_FLAG);
void HASH_ClearFlag(uint16_t HASH_FLAG);
ITStatus HASH_GetITStatus(uint8_t HASH_IT);
void HASH_ClearITPendingBit(uint8_t HASH_IT);

 
ErrorStatus HASH_SHA1(uint8_t *Input, uint32_t Ilen, uint8_t Output[20]);
ErrorStatus HMAC_SHA1(uint8_t *Key, uint32_t Keylen,
                      uint8_t *Input, uint32_t Ilen,
                      uint8_t Output[20]);

 
ErrorStatus HASH_MD5(uint8_t *Input, uint32_t Ilen, uint8_t Output[16]);
ErrorStatus HMAC_MD5(uint8_t *Key, uint32_t Keylen,
                     uint8_t *Input, uint32_t Ilen,
                     uint8_t Output[16]);









  



  

 
#line 66 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



 



  

 

#line 59 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"
                                                                


    
typedef enum
{ 
  GPIO_Mode_IN   = 0x00,  
  GPIO_Mode_OUT  = 0x01,  
  GPIO_Mode_AF   = 0x02,  
  GPIO_Mode_AN   = 0x03   
}GPIOMode_TypeDef;





   
typedef enum
{ 
  GPIO_OType_PP = 0x00,
  GPIO_OType_OD = 0x01
}GPIOOType_TypeDef;





   
typedef enum
{ 
  GPIO_Speed_2MHz   = 0x00,  
  GPIO_Speed_25MHz  = 0x01,  
  GPIO_Speed_50MHz  = 0x02,  
  GPIO_Speed_100MHz = 0x03   
}GPIOSpeed_TypeDef;





  
typedef enum
{ 
  GPIO_PuPd_NOPULL = 0x00,
  GPIO_PuPd_UP     = 0x01,
  GPIO_PuPd_DOWN   = 0x02
}GPIOPuPd_TypeDef;





  
typedef enum
{ 
  Bit_RESET = 0,
  Bit_SET
}BitAction;





  
typedef struct
{
  uint32_t GPIO_Pin;              
 

  GPIOMode_TypeDef GPIO_Mode;     
 

  GPIOSpeed_TypeDef GPIO_Speed;   
 

  GPIOOType_TypeDef GPIO_OType;   
 

  GPIOPuPd_TypeDef GPIO_PuPd;     
 
}GPIO_InitTypeDef;

 



  



  
#line 167 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

#line 185 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  




  
#line 209 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

#line 226 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  



  


  








  





  






  







  






  





  




  







  






  








  





  




  






  




  


#line 351 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  



 
    








 



 

 
  

 
void GPIO_DeInit(GPIO_TypeDef* GPIOx);

 
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
void GPIO_PinAFConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_PinSource, uint8_t GPIO_AF);









  



  

 
#line 67 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



 



 

 



 

typedef struct
{
  uint32_t I2C_ClockSpeed;          
 

  uint16_t I2C_Mode;                
 

  uint16_t I2C_DutyCycle;           
 

  uint16_t I2C_OwnAddress1;         
 

  uint16_t I2C_Ack;                 
 

  uint16_t I2C_AcknowledgedAddress; 
 
}I2C_InitTypeDef;

 




 






 

#line 95 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 







  



 







 



 







 



 







  



 

#line 169 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 







  



 







 



 







  



 







  



 

#line 239 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



#line 249 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 



 

#line 268 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



 

#line 287 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



#line 301 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 





 








 
 

























 

 


 





























 

  
 


 
 

 







 

























 

    
 



 



 



























 

  
 

 


 
 


 






 

#line 507 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 




 



 




 



 

 
  

 
void I2C_DeInit(I2C_TypeDef* I2Cx);

 
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address);
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle);
void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition);
void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert);
void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

  
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);
uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx);

  
void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_PECPosition);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx);

 
void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

 
uint16_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);
void I2C_ITConfig(I2C_TypeDef* I2Cx, uint16_t I2C_IT, FunctionalState NewState);




















































































 





 
ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT);




 
uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx);




 
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);


void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT);









  



  

 
#line 68 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"



 



 

 
 



 
  


 






 



 
#line 83 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"


 



 






 



 

 
 

 
void IWDG_WriteAccessCmd(uint16_t IWDG_WriteAccess);
void IWDG_SetPrescaler(uint8_t IWDG_Prescaler);
void IWDG_SetReload(uint16_t Reload);
void IWDG_ReloadCounter(void);

 
void IWDG_Enable(void);

 
FlagStatus IWDG_GetFlagStatus(uint16_t IWDG_FLAG);









 



 

 
#line 69 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"



 



  

 
 



  



  

#line 67 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"







 

  


 







 



 







 




 


 



 









 



 








 



 

 
  

  
void PWR_DeInit(void);

  
void PWR_BackupAccessCmd(FunctionalState NewState);

  
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_PVDCmd(FunctionalState NewState);

  
void PWR_WakeUpPinCmd(FunctionalState NewState);

  
void PWR_BackupRegulatorCmd(FunctionalState NewState);
void PWR_MainRegulatorModeConfig(uint32_t PWR_Regulator_Voltage);

  
void PWR_FlashPowerDownCmd(FunctionalState NewState);

  
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);

  
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);









 



 

 
#line 70 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

























 

 







 
#line 38 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



 



  

 
typedef struct
{
  uint32_t SYSCLK_Frequency;  
  uint32_t HCLK_Frequency;    
  uint32_t PCLK1_Frequency;   
  uint32_t PCLK2_Frequency;   
}RCC_ClocksTypeDef;

 



 
  


 







  
  


 
#line 85 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
 




  
  


 
#line 101 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 122 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 137 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 157 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 







  
  


 
#line 240 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 






  
  


  
#line 284 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


   
#line 297 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


  




  
  


  
#line 337 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


  
#line 360 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 378 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
                                   





  
  


 
#line 400 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
                                   





  
  


 
#line 432 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  



  

 
  

 
void RCC_DeInit(void);

 
void RCC_HSEConfig(uint8_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);

void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t PLLM, uint32_t PLLN, uint32_t PLLP, uint32_t PLLQ);
void RCC_PLLCmd(FunctionalState NewState);
void RCC_PLLI2SConfig(uint32_t PLLI2SN, uint32_t PLLI2SR);
void RCC_PLLI2SCmd(FunctionalState NewState);

void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCO1Config(uint32_t RCC_MCO1Source, uint32_t RCC_MCO1Div);
void RCC_MCO2Config(uint32_t RCC_MCO2Source, uint32_t RCC_MCO2Div);

 
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);

 
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_I2SCLKConfig(uint32_t RCC_I2SCLKSource); 

void RCC_AHB1PeriphClockCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void RCC_AHB2PeriphClockCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void RCC_AHB3PeriphClockCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void RCC_AHB1PeriphResetCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void RCC_AHB2PeriphResetCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void RCC_AHB3PeriphResetCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void RCC_AHB1PeriphClockLPModeCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void RCC_AHB2PeriphClockLPModeCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void RCC_AHB3PeriphClockLPModeCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void RCC_APB1PeriphClockLPModeCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphClockLPModeCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

 
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);









  



  

 
#line 71 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"



 



  

 
  



 
  


  











  



   







  



  

 
  

  
void RNG_DeInit(void);

 
void RNG_Cmd(FunctionalState NewState);

 
uint32_t RNG_GetRandomNumber(void);

 
void RNG_ITConfig(FunctionalState NewState);
FlagStatus RNG_GetFlagStatus(uint8_t RNG_FLAG);
void RNG_ClearFlag(uint8_t RNG_FLAG);
ITStatus RNG_GetITStatus(uint8_t RNG_IT);
void RNG_ClearITPendingBit(uint8_t RNG_IT);









  



  

 
#line 72 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



 



  

 



  
typedef struct
{
  uint32_t RTC_HourFormat;   
 
  
  uint32_t RTC_AsynchPrediv; 
 
  
  uint32_t RTC_SynchPrediv;  
 
}RTC_InitTypeDef;



 
typedef struct
{
  uint8_t RTC_Hours;    


 

  uint8_t RTC_Minutes;  
 
  
  uint8_t RTC_Seconds;  
 

  uint8_t RTC_H12;      
 
}RTC_TimeTypeDef; 



 
typedef struct
{
  uint8_t RTC_WeekDay; 
 
  
  uint8_t RTC_Month;   
 

  uint8_t RTC_Date;     
 
  
  uint8_t RTC_Year;     
 
}RTC_DateTypeDef;



 
typedef struct
{
  RTC_TimeTypeDef RTC_AlarmTime;      

  uint32_t RTC_AlarmMask;            
 

  uint32_t RTC_AlarmDateWeekDaySel;  
 
  
  uint8_t RTC_AlarmDateWeekDay;      



 
}RTC_AlarmTypeDef;

 



  




  






  



  

 


  




  




  



  







  



  






  



  




  



  

 
#line 211 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  
  
#line 234 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  




  
#line 250 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  




  








  




  
#line 280 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  







  

  

  
#line 349 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  





  



  
#line 379 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  






  



  




 







  



  






  




  








  

 

  






  



  
#line 459 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"
                                          


  



  
#line 474 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  




 



  











  



  
#line 515 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  


#line 535 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  
#line 566 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



 

  

  
#line 582 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"







 



  





 



  






  



  






  



  







  



  






  



  




 



 

#line 699 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  






  



  
#line 739 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  
#line 752 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"









  



  





  



  

 
  

 
ErrorStatus RTC_DeInit(void);

 
ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct);
void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct);
void RTC_WriteProtectionCmd(FunctionalState NewState);
ErrorStatus RTC_EnterInitMode(void);
void RTC_ExitInitMode(void);
ErrorStatus RTC_WaitForSynchro(void);
ErrorStatus RTC_RefClockCmd(FunctionalState NewState);
void RTC_BypassShadowCmd(FunctionalState NewState);

 
ErrorStatus RTC_SetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct);
void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct);
void RTC_GetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct);
uint32_t RTC_GetSubSecond(void);
ErrorStatus RTC_SetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct);
void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct);
void RTC_GetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct);

 
void RTC_SetAlarm(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct);
void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct);
void RTC_GetAlarm(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct);
ErrorStatus RTC_AlarmCmd(uint32_t RTC_Alarm, FunctionalState NewState);
void RTC_AlarmSubSecondConfig(uint32_t RTC_Alarm, uint32_t RTC_AlarmSubSecondValue, uint32_t RTC_AlarmSubSecondMask);
uint32_t RTC_GetAlarmSubSecond(uint32_t RTC_Alarm);

 
void RTC_WakeUpClockConfig(uint32_t RTC_WakeUpClock);
void RTC_SetWakeUpCounter(uint32_t RTC_WakeUpCounter);
uint32_t RTC_GetWakeUpCounter(void);
ErrorStatus RTC_WakeUpCmd(FunctionalState NewState);

 
void RTC_DayLightSavingConfig(uint32_t RTC_DayLightSaving, uint32_t RTC_StoreOperation);
uint32_t RTC_GetStoreOperation(void);

 
void RTC_OutputConfig(uint32_t RTC_Output, uint32_t RTC_OutputPolarity);

 
ErrorStatus RTC_CoarseCalibConfig(uint32_t RTC_CalibSign, uint32_t Value);
ErrorStatus RTC_CoarseCalibCmd(FunctionalState NewState);
void RTC_CalibOutputCmd(FunctionalState NewState);
void RTC_CalibOutputConfig(uint32_t RTC_CalibOutput);
ErrorStatus RTC_SmoothCalibConfig(uint32_t RTC_SmoothCalibPeriod, 
                                  uint32_t RTC_SmoothCalibPlusPulses,
                                  uint32_t RTC_SmouthCalibMinusPulsesValue);

 
void RTC_TimeStampCmd(uint32_t RTC_TimeStampEdge, FunctionalState NewState);
void RTC_GetTimeStamp(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_StampTimeStruct,
                                      RTC_DateTypeDef* RTC_StampDateStruct);
uint32_t RTC_GetTimeStampSubSecond(void);

 
void RTC_TamperTriggerConfig(uint32_t RTC_Tamper, uint32_t RTC_TamperTrigger);
void RTC_TamperCmd(uint32_t RTC_Tamper, FunctionalState NewState);
void RTC_TamperFilterConfig(uint32_t RTC_TamperFilter);
void RTC_TamperSamplingFreqConfig(uint32_t RTC_TamperSamplingFreq);
void RTC_TamperPinsPrechargeDuration(uint32_t RTC_TamperPrechargeDuration);
void RTC_TimeStampOnTamperDetectionCmd(FunctionalState NewState);
void RTC_TamperPullUpCmd(FunctionalState NewState);

 
void RTC_WriteBackupRegister(uint32_t RTC_BKP_DR, uint32_t Data);
uint32_t RTC_ReadBackupRegister(uint32_t RTC_BKP_DR);


 
void RTC_TamperPinSelection(uint32_t RTC_TamperPin);
void RTC_TimeStampPinSelection(uint32_t RTC_TimeStampPin);
void RTC_OutputTypeConfig(uint32_t RTC_OutputType);

 
ErrorStatus RTC_SynchroShiftConfig(uint32_t RTC_ShiftAdd1S, uint32_t RTC_ShiftSubFS);

 
void RTC_ITConfig(uint32_t RTC_IT, FunctionalState NewState);
FlagStatus RTC_GetFlagStatus(uint32_t RTC_FLAG);
void RTC_ClearFlag(uint32_t RTC_FLAG);
ITStatus RTC_GetITStatus(uint32_t RTC_IT);
void RTC_ClearITPendingBit(uint32_t RTC_IT);









  



  

 
#line 73 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"



 



 

 

typedef struct
{
  uint32_t SDIO_ClockEdge;            
 

  uint32_t SDIO_ClockBypass;          

 

  uint32_t SDIO_ClockPowerSave;       

 

  uint32_t SDIO_BusWide;              
 

  uint32_t SDIO_HardwareFlowControl;  
 

  uint8_t SDIO_ClockDiv;              
 
                                           
} SDIO_InitTypeDef;

typedef struct
{
  uint32_t SDIO_Argument;  


 

  uint32_t SDIO_CmdIndex;   

  uint32_t SDIO_Response;  
 

  uint32_t SDIO_Wait;      
 

  uint32_t SDIO_CPSM;      

 
} SDIO_CmdInitTypeDef;

typedef struct
{
  uint32_t SDIO_DataTimeOut;     

  uint32_t SDIO_DataLength;      
 
  uint32_t SDIO_DataBlockSize;  
 
 
  uint32_t SDIO_TransferDir;    

 
 
  uint32_t SDIO_TransferMode;   
 
 
  uint32_t SDIO_DPSM;           

 
} SDIO_DataInitTypeDef;


 



 



 







 



 







  



 







 



 









 



 







 



 






  




 

#line 225 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


  



 




 



 

#line 248 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 








 



 






  



 

#line 286 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 




 



 

#line 333 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 







 



 







 



 






 



 

#line 424 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"



#line 451 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"





 



 







 



 

 
 
 
void SDIO_DeInit(void);

 
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_ClockCmd(FunctionalState NewState);
void SDIO_SetPowerState(uint32_t SDIO_PowerState);
uint32_t SDIO_GetPowerState(void);

 
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct);
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct);
uint8_t SDIO_GetCommandResponse(void);
uint32_t SDIO_GetResponse(uint32_t SDIO_RESP);

 
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
uint32_t SDIO_GetDataCounter(void);
uint32_t SDIO_ReadData(void);
void SDIO_WriteData(uint32_t Data);
uint32_t SDIO_GetFIFOCount(void);

 
void SDIO_StartSDIOReadWait(FunctionalState NewState);
void SDIO_StopSDIOReadWait(FunctionalState NewState);
void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode);
void SDIO_SetSDIOOperation(FunctionalState NewState);
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState);

 
void SDIO_CommandCompletionCmd(FunctionalState NewState);
void SDIO_CEATAITCmd(FunctionalState NewState);
void SDIO_SendCEATACmd(FunctionalState NewState);

 
void SDIO_DMACmd(FunctionalState NewState);

 
void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState);
FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG);
void SDIO_ClearFlag(uint32_t SDIO_FLAG);
ITStatus SDIO_GetITStatus(uint32_t SDIO_IT);
void SDIO_ClearITPendingBit(uint32_t SDIO_IT);









 



 

 
#line 74 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"



 



  

 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;

 



 

























 
  
#line 153 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

#line 237 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


  



 







 



 

#line 265 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  



 

#line 284 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  


 

#line 300 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 







 



 

#line 330 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"






 
            


 







 



 






 



 







 



 






 



 







 



 























 



 

#line 437 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"

#line 444 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 




 



 

#line 480 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  


 

 
  

  
void SPI_I2S_DeInit(SPI_TypeDef* SPIx);

 
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_TIModeCmd(SPI_TypeDef* SPIx, FunctionalState NewState);

void I2S_FullDuplexConfig(SPI_TypeDef* I2Sxext, I2S_InitTypeDef* I2S_InitStruct);

  
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);

 
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);

 
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);

 
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);









 



 

 
#line 75 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"



 



  

 
 
  


  



  
#line 67 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"
                                      
#line 77 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


  




  
#line 117 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


  




  




   






  




  







  



  

 
  
 
void SYSCFG_DeInit(void);
void SYSCFG_MemoryRemapConfig(uint8_t SYSCFG_MemoryRemap);
void SYSCFG_EXTILineConfig(uint8_t EXTI_PortSourceGPIOx, uint8_t EXTI_PinSourcex);
void SYSCFG_ETH_MediaInterfaceConfig(uint32_t SYSCFG_ETH_MediaInterface); 
void SYSCFG_CompensationCellCmd(FunctionalState NewState); 
FlagStatus SYSCFG_GetCompensationCellStatus(void);









  



  

 
#line 76 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



 



  

 




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint32_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef; 



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint32_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;

 



 

#line 189 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                          
#line 202 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                     
 
#line 212 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
 
#line 219 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
 


 
#line 231 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                






 

#line 260 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 







  



 





                                 




                                 







  



 

#line 309 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 

#line 327 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

#line 451 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







 



 







  



 







  



 







  



 

#line 513 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 529 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 545 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 562 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"

#line 571 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 619 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 663 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 679 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  



 

#line 696 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 724 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  



  






 



 







  



 







  



 

#line 785 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  




 

#line 803 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
  


  



 

#line 818 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  



 





                                     


  



 







  



 

#line 879 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 895 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  


 














#line 937 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  


 

#line 969 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  



 




  



 




  



 

#line 1014 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 

 
  

 
void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint32_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint32_t Autoreload);
uint32_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint32_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint32_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint32_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint32_t Compare4);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);

 
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
uint32_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture4(TIM_TypeDef* TIMx);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);

 
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);

 
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);

    
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_RemapConfig(TIM_TypeDef* TIMx, uint16_t TIM_Remap);









  



 

 
#line 77 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"



 



  

  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            



 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;

 



  
  
#line 116 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"








  
  


                                    




  



  
  
#line 147 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  
  
#line 161 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  
  





  



  
#line 188 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 255 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"



 



 

#line 276 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 348 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"
                              








  



  

 
   

  
void USART_DeInit(USART_TypeDef* USARTx);

 
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);

  
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);

 
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendBreak(USART_TypeDef* USARTx);

 
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);

 
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);

 
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);









  



  

 
#line 78 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"



 



  

 
 



  
  


 
  
#line 69 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"



  



  

 
 
  
   
void WWDG_DeInit(void);

 
void WWDG_SetPrescaler(uint32_t WWDG_Prescaler);
void WWDG_SetWindowValue(uint8_t WindowValue);
void WWDG_EnableIT(void);
void WWDG_SetCounter(uint8_t Counter);

 
void WWDG_Enable(uint8_t Counter);

 
FlagStatus WWDG_GetFlagStatus(void);
void WWDG_ClearFlag(void);









  



  

 
#line 79 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"



 



 

 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  


 

  uint8_t NVIC_IRQChannelSubPriority;         


 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 
 



 



 







 



 

#line 104 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"


 



 

#line 122 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"















 



 







 



 

 
 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 

 
#line 80 "..\\inc\\stm32f4xx_conf.h"

 
 



 
   



 
 

 
#line 111 "..\\inc\\stm32f4xx_conf.h"



 
#line 6969 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 

















 









 

  

 

 
#line 46 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.c"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"




















  





















     
 






                                              
 
#line 54 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"
   


 
  


 
      


  



 
typedef enum 
{
  LED4 = 0,
  LED3 = 1,
  LED5 = 2,
  LED6 = 3
} Led_TypeDef;

typedef enum 
{  
  BUTTON_USER = 0,
} Button_TypeDef;

typedef enum 
{  
  BUTTON_MODE_GPIO = 0,
  BUTTON_MODE_EXTI = 1
} ButtonMode_TypeDef; 

typedef enum 
{
  COM1 = 0,
  COM2 = 1,
  COM3 = 2,
  COM4 = 3,
  COM5 = 4,
  COM6 = 5,
} COM_TypeDef; 
    


  



  



 





  



  



  





  
  


   




 
#line 146 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"


  



 



  
#line 170 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



 
#line 187 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



 
#line 204 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



  	  




  


 



   



 



 




 



#line 257 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



   


  




 
void STM_EVAL_LEDInit(Led_TypeDef Led);
void STM_EVAL_LEDOn(Led_TypeDef Led);
void STM_EVAL_LEDOff(Led_TypeDef Led);
void STM_EVAL_LEDToggle(Led_TypeDef Led);

void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode);
uint32_t STM_EVAL_PBGetState(Button_TypeDef Button);

void STM_EVAL_COMInit(COM_TypeDef COM, USART_InitTypeDef* USART_InitStruct);

void SD_LowLevel_DeInit(void);
void SD_LowLevel_Init(void); 
void SD_LowLevel_DMA_TxConfig(uint32_t *BufferSRC, uint32_t BufferSize);
void SD_LowLevel_DMA_RxConfig(uint32_t *BufferDST, uint32_t BufferSize);


 
  







  



  



 

 

 
#line 47 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.c"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"




















  





















 

 







 
#line 55 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\fonts.h"



















  

 







 
#line 32 "..\\..\\libraries\\STM32F4-Discovery\\fonts.h"



 
  


  



 



  



  
typedef struct _tFont
{    
  const uint16_t *table;
  uint16_t Width;
  uint16_t Height;
  
} sFONT;

extern sFONT Font16x24;
extern sFONT Font12x12;
extern sFONT Font8x12;
extern sFONT Font8x8;



  



  




  



  


  



  


 




  

 


 



  



 



 



       

 
#line 56 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



 



  



 
    


  




 
typedef struct 
{
  int16_t X;
  int16_t Y;
} Point, * pPoint;   


  




 
#line 126 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"







 






 


#line 167 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



  





 
 

#line 186 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



  
#line 200 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"

#line 207 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



 
#line 241 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"

#line 252 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



  




  





  





  



 



  



  


 
void LCD_DeInit(void);   
void STM32f4_Discovery_LCD_Init(void);
void LCD_RGB_Test(void);
void LCD_SetColors(volatile uint16_t _TextColor, volatile uint16_t _BackColor); 
void LCD_GetColors(volatile uint16_t *_TextColor, volatile uint16_t *_BackColor);
void LCD_SetTextColor(volatile uint16_t Color);
void LCD_SetBackColor(volatile uint16_t Color);
void LCD_ClearLine(uint16_t Line);
void LCD_Clear(uint16_t Color);
void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos);
void LCD_DrawChar(uint16_t Xpos, uint16_t Ypos, const uint16_t *c);
void LCD_DisplayChar(uint16_t Line, uint16_t Column, uint8_t Ascii);
void LCD_SetFont(sFONT *fonts);
sFONT *LCD_GetFont(void);
void LCD_DisplayStringLine(uint16_t Line, uint8_t *ptr);
void LCD_SetDisplayWindow(uint16_t Xpos, uint16_t Ypos, uint16_t Height, uint16_t Width);
void LCD_WindowModeDisable(void);
void LCD_DrawLine(uint16_t Xpos, uint16_t Ypos, uint16_t Length, uint8_t Direction);
void LCD_DrawRect(uint16_t Xpos, uint16_t Ypos, uint8_t Height, uint16_t Width);
void LCD_DrawCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius);
void LCD_DrawMonoPict(const uint32_t *Pict);
void LCD_WriteBMP(uint32_t BmpAddress);
void LCD_DrawUniLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void LCD_DrawFullRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height);
void LCD_DrawFullCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius);
void LCD_PolyLine(pPoint Points, uint16_t PointCount);
void LCD_PolyLineRelative(pPoint Points, uint16_t PointCount);
void LCD_ClosedPolyLine(pPoint Points, uint16_t PointCount);
void LCD_ClosedPolyLineRelative(pPoint Points, uint16_t PointCount);
void LCD_FillPolyLine(pPoint Points, uint16_t PointCount);


  



  
void LCD_WriteReg(uint8_t LCD_Reg, uint16_t LCD_RegValue);
uint16_t LCD_ReadReg(uint8_t LCD_Reg);
void LCD_WriteRAM_Prepare(void);
void LCD_WriteRAM(uint16_t RGB_Code);
uint16_t LCD_ReadRAM(void);
void LCD_PowerOn(void);
void LCD_DisplayOn(void);
void LCD_DisplayOff(void);


  



  
void LCD_CtrlLinesConfig(void);
void LCD_FSMCConfig(void);


 


     







  



  



  



  

 
#line 48 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.c"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\fonts.c"



















  
  
 
#line 24 "..\\..\\libraries\\STM32F4-Discovery\\fonts.c"



 
  


  



 




   



  


  




 


  




 


  
  



 
const uint16_t ASCII16x24_Table [] = {


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0000, 0x0000,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x00CC, 0x00CC, 0x00CC, 0x00CC, 0x00CC, 0x00CC,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0C60, 0x0C60,
         0x0C60, 0x0630, 0x0630, 0x1FFE, 0x1FFE, 0x0630, 0x0738, 0x0318,
         0x1FFE, 0x1FFE, 0x0318, 0x0318, 0x018C, 0x018C, 0x018C, 0x0000,


  
         0x0000, 0x0080, 0x03E0, 0x0FF8, 0x0E9C, 0x1C8C, 0x188C, 0x008C,
         0x0098, 0x01F8, 0x07E0, 0x0E80, 0x1C80, 0x188C, 0x188C, 0x189C,
         0x0CB8, 0x0FF0, 0x03E0, 0x0080, 0x0080, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x180E, 0x0C1B, 0x0C11, 0x0611, 0x0611,
         0x0311, 0x0311, 0x019B, 0x018E, 0x38C0, 0x6CC0, 0x4460, 0x4460,
         0x4430, 0x4430, 0x4418, 0x6C18, 0x380C, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x01E0, 0x03F0, 0x0738, 0x0618, 0x0618, 0x0330, 0x01F0,
         0x00F0, 0x00F8, 0x319C, 0x330E, 0x1E06, 0x1C06, 0x1C06, 0x3F06,
         0x73FC, 0x21F0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0200, 0x0300, 0x0180, 0x00C0, 0x00C0, 0x0060, 0x0060,
         0x0030, 0x0030, 0x0030, 0x0030, 0x0030, 0x0030, 0x0030, 0x0030,
         0x0060, 0x0060, 0x00C0, 0x00C0, 0x0180, 0x0300, 0x0200, 0x0000,


  
         0x0000, 0x0020, 0x0060, 0x00C0, 0x0180, 0x0180, 0x0300, 0x0300,
         0x0600, 0x0600, 0x0600, 0x0600, 0x0600, 0x0600, 0x0600, 0x0600,
         0x0300, 0x0300, 0x0180, 0x0180, 0x00C0, 0x0060, 0x0020, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x00C0, 0x00C0,
         0x06D8, 0x07F8, 0x01E0, 0x0330, 0x0738, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x3FFC, 0x3FFC, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0180, 0x0180, 0x0100, 0x0100, 0x0080, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x07E0, 0x07E0, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0C00, 0x0C00, 0x0600, 0x0600, 0x0600, 0x0300, 0x0300,
         0x0300, 0x0380, 0x0180, 0x0180, 0x0180, 0x00C0, 0x00C0, 0x00C0,
         0x0060, 0x0060, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x07F0, 0x0E38, 0x0C18, 0x180C, 0x180C, 0x180C,
         0x180C, 0x180C, 0x180C, 0x180C, 0x180C, 0x180C, 0x0C18, 0x0E38,
         0x07F0, 0x03E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0100, 0x0180, 0x01C0, 0x01F0, 0x0198, 0x0188, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x0FF8, 0x0C18, 0x180C, 0x180C, 0x1800, 0x1800,
         0x0C00, 0x0600, 0x0300, 0x0180, 0x00C0, 0x0060, 0x0030, 0x0018,
         0x1FFC, 0x1FFC, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x01E0, 0x07F8, 0x0E18, 0x0C0C, 0x0C0C, 0x0C00, 0x0600,
         0x03C0, 0x07C0, 0x0C00, 0x1800, 0x1800, 0x180C, 0x180C, 0x0C18,
         0x07F8, 0x03E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0C00, 0x0E00, 0x0F00, 0x0F00, 0x0D80, 0x0CC0, 0x0C60,
         0x0C60, 0x0C30, 0x0C18, 0x0C0C, 0x3FFC, 0x3FFC, 0x0C00, 0x0C00,
         0x0C00, 0x0C00, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0FF8, 0x0FF8, 0x0018, 0x0018, 0x000C, 0x03EC, 0x07FC,
         0x0E1C, 0x1C00, 0x1800, 0x1800, 0x1800, 0x180C, 0x0C1C, 0x0E18,
         0x07F8, 0x03E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x07C0, 0x0FF0, 0x1C38, 0x1818, 0x0018, 0x000C, 0x03CC,
         0x0FEC, 0x0E3C, 0x1C1C, 0x180C, 0x180C, 0x180C, 0x1C18, 0x0E38,
         0x07F0, 0x03E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x1FFC, 0x1FFC, 0x0C00, 0x0600, 0x0600, 0x0300, 0x0380,
         0x0180, 0x01C0, 0x00C0, 0x00E0, 0x0060, 0x0060, 0x0070, 0x0030,
         0x0030, 0x0030, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x07F0, 0x0E38, 0x0C18, 0x0C18, 0x0C18, 0x0638,
         0x07F0, 0x07F0, 0x0C18, 0x180C, 0x180C, 0x180C, 0x180C, 0x0C38,
         0x0FF8, 0x03E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x07F0, 0x0E38, 0x0C1C, 0x180C, 0x180C, 0x180C,
         0x1C1C, 0x1E38, 0x1BF8, 0x19E0, 0x1800, 0x0C00, 0x0C00, 0x0E1C,
         0x07F8, 0x01F0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0180, 0x0180,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0180, 0x0180,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0180, 0x0180, 0x0100, 0x0100, 0x0080, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x1000, 0x1C00, 0x0F80, 0x03E0, 0x00F8, 0x0018, 0x00F8, 0x03E0,
         0x0F80, 0x1C00, 0x1000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x1FF8, 0x0000, 0x0000, 0x0000, 0x1FF8, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0008, 0x0038, 0x01F0, 0x07C0, 0x1F00, 0x1800, 0x1F00, 0x07C0,
         0x01F0, 0x0038, 0x0008, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x0FF8, 0x0C18, 0x180C, 0x180C, 0x1800, 0x0C00,
         0x0600, 0x0300, 0x0180, 0x00C0, 0x00C0, 0x00C0, 0x0000, 0x0000,
         0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x07E0, 0x1818, 0x2004, 0x29C2, 0x4A22, 0x4411,
         0x4409, 0x4409, 0x4409, 0x2209, 0x1311, 0x0CE2, 0x4002, 0x2004,
         0x1818, 0x07E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0380, 0x0380, 0x06C0, 0x06C0, 0x06C0, 0x0C60, 0x0C60,
         0x1830, 0x1830, 0x1830, 0x3FF8, 0x3FF8, 0x701C, 0x600C, 0x600C,
         0xC006, 0xC006, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03FC, 0x0FFC, 0x0C0C, 0x180C, 0x180C, 0x180C, 0x0C0C,
         0x07FC, 0x0FFC, 0x180C, 0x300C, 0x300C, 0x300C, 0x300C, 0x180C,
         0x1FFC, 0x07FC, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x07C0, 0x1FF0, 0x3838, 0x301C, 0x700C, 0x6006, 0x0006,
         0x0006, 0x0006, 0x0006, 0x0006, 0x0006, 0x6006, 0x700C, 0x301C,
         0x1FF0, 0x07E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03FE, 0x0FFE, 0x0E06, 0x1806, 0x1806, 0x3006, 0x3006,
         0x3006, 0x3006, 0x3006, 0x3006, 0x3006, 0x1806, 0x1806, 0x0E06,
         0x0FFE, 0x03FE, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x3FFC, 0x3FFC, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C,
         0x1FFC, 0x1FFC, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C,
         0x3FFC, 0x3FFC, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x3FF8, 0x3FF8, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
         0x1FF8, 0x1FF8, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
         0x0018, 0x0018, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0FE0, 0x3FF8, 0x783C, 0x600E, 0xE006, 0xC007, 0x0003,
         0x0003, 0xFE03, 0xFE03, 0xC003, 0xC007, 0xC006, 0xC00E, 0xF03C,
         0x3FF8, 0x0FE0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C,
         0x3FFC, 0x3FFC, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C,
         0x300C, 0x300C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0600, 0x0600, 0x0600, 0x0600, 0x0600, 0x0600, 0x0600,
         0x0600, 0x0600, 0x0600, 0x0600, 0x0600, 0x0618, 0x0618, 0x0738,
         0x03F0, 0x01E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x3006, 0x1806, 0x0C06, 0x0606, 0x0306, 0x0186, 0x00C6,
         0x0066, 0x0076, 0x00DE, 0x018E, 0x0306, 0x0606, 0x0C06, 0x1806,
         0x3006, 0x6006, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
         0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
         0x1FF8, 0x1FF8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0xE00E, 0xF01E, 0xF01E, 0xF01E, 0xD836, 0xD836, 0xD836,
         0xD836, 0xCC66, 0xCC66, 0xCC66, 0xC6C6, 0xC6C6, 0xC6C6, 0xC6C6,
         0xC386, 0xC386, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x300C, 0x301C, 0x303C, 0x303C, 0x306C, 0x306C, 0x30CC,
         0x30CC, 0x318C, 0x330C, 0x330C, 0x360C, 0x360C, 0x3C0C, 0x3C0C,
         0x380C, 0x300C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x07E0, 0x1FF8, 0x381C, 0x700E, 0x6006, 0xC003, 0xC003,
         0xC003, 0xC003, 0xC003, 0xC003, 0xC003, 0x6006, 0x700E, 0x381C,
         0x1FF8, 0x07E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0FFC, 0x1FFC, 0x380C, 0x300C, 0x300C, 0x300C, 0x300C,
         0x180C, 0x1FFC, 0x07FC, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C,
         0x000C, 0x000C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x07E0, 0x1FF8, 0x381C, 0x700E, 0x6006, 0xE003, 0xC003,
         0xC003, 0xC003, 0xC003, 0xC003, 0xE007, 0x6306, 0x3F0E, 0x3C1C,
         0x3FF8, 0xF7E0, 0xC000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0FFE, 0x1FFE, 0x3806, 0x3006, 0x3006, 0x3006, 0x3806,
         0x1FFE, 0x07FE, 0x0306, 0x0606, 0x0C06, 0x1806, 0x1806, 0x3006,
         0x3006, 0x6006, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x0FF8, 0x0C1C, 0x180C, 0x180C, 0x000C, 0x001C,
         0x03F8, 0x0FE0, 0x1E00, 0x3800, 0x3006, 0x3006, 0x300E, 0x1C1C,
         0x0FF8, 0x07E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x7FFE, 0x7FFE, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C,
         0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x300C, 0x1818,
         0x1FF8, 0x07E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x6003, 0x3006, 0x3006, 0x3006, 0x180C, 0x180C, 0x180C,
         0x0C18, 0x0C18, 0x0E38, 0x0630, 0x0630, 0x0770, 0x0360, 0x0360,
         0x01C0, 0x01C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x6003, 0x61C3, 0x61C3, 0x61C3, 0x3366, 0x3366, 0x3366,
         0x3366, 0x3366, 0x3366, 0x1B6C, 0x1B6C, 0x1B6C, 0x1A2C, 0x1E3C,
         0x0E38, 0x0E38, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0xE00F, 0x700C, 0x3018, 0x1830, 0x0C70, 0x0E60, 0x07C0,
         0x0380, 0x0380, 0x03C0, 0x06E0, 0x0C70, 0x1C30, 0x1818, 0x300C,
         0x600E, 0xE007, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0xC003, 0x6006, 0x300C, 0x381C, 0x1838, 0x0C30, 0x0660,
         0x07E0, 0x03C0, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x7FFC, 0x7FFC, 0x6000, 0x3000, 0x1800, 0x0C00, 0x0600,
         0x0300, 0x0180, 0x00C0, 0x0060, 0x0030, 0x0018, 0x000C, 0x0006,
         0x7FFE, 0x7FFE, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x03E0, 0x0060, 0x0060, 0x0060, 0x0060, 0x0060,
         0x0060, 0x0060, 0x0060, 0x0060, 0x0060, 0x0060, 0x0060, 0x0060,
         0x0060, 0x0060, 0x0060, 0x0060, 0x0060, 0x03E0, 0x03E0, 0x0000,


  
         0x0000, 0x0030, 0x0030, 0x0060, 0x0060, 0x0060, 0x00C0, 0x00C0,
         0x00C0, 0x01C0, 0x0180, 0x0180, 0x0180, 0x0300, 0x0300, 0x0300,
         0x0600, 0x0600, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x03E0, 0x03E0, 0x0300, 0x0300, 0x0300, 0x0300, 0x0300,
         0x0300, 0x0300, 0x0300, 0x0300, 0x0300, 0x0300, 0x0300, 0x0300,
         0x0300, 0x0300, 0x0300, 0x0300, 0x0300, 0x03E0, 0x03E0, 0x0000,


  
         0x0000, 0x0000, 0x01C0, 0x01C0, 0x0360, 0x0360, 0x0360, 0x0630,
         0x0630, 0x0C18, 0x0C18, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0xFFFF, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03F0, 0x07F8,
         0x0C1C, 0x0C0C, 0x0F00, 0x0FF0, 0x0CF8, 0x0C0C, 0x0C0C, 0x0F1C,
         0x0FF8, 0x18F0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x03D8, 0x0FF8,
         0x0C38, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x0C38,
         0x0FF8, 0x03D8, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03C0, 0x07F0,
         0x0E30, 0x0C18, 0x0018, 0x0018, 0x0018, 0x0018, 0x0C18, 0x0E30,
         0x07F0, 0x03C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x1800, 0x1800, 0x1800, 0x1800, 0x1800, 0x1BC0, 0x1FF0,
         0x1C30, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1C30,
         0x1FF0, 0x1BC0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03C0, 0x0FF0,
         0x0C30, 0x1818, 0x1FF8, 0x1FF8, 0x0018, 0x0018, 0x1838, 0x1C30,
         0x0FF0, 0x07C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0F80, 0x0FC0, 0x00C0, 0x00C0, 0x00C0, 0x07F0, 0x07F0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0DE0, 0x0FF8,
         0x0E18, 0x0C0C, 0x0C0C, 0x0C0C, 0x0C0C, 0x0C0C, 0x0C0C, 0x0E18,
         0x0FF8, 0x0DE0, 0x0C00, 0x0C0C, 0x061C, 0x07F8, 0x01F0, 0x0000,


  
         0x0000, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x07D8, 0x0FF8,
         0x1C38, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818,
         0x1818, 0x1818, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00F8, 0x0078, 0x0000,


  
         0x0000, 0x000C, 0x000C, 0x000C, 0x000C, 0x000C, 0x0C0C, 0x060C,
         0x030C, 0x018C, 0x00CC, 0x006C, 0x00FC, 0x019C, 0x038C, 0x030C,
         0x060C, 0x0C0C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x3C7C, 0x7EFF,
         0xE3C7, 0xC183, 0xC183, 0xC183, 0xC183, 0xC183, 0xC183, 0xC183,
         0xC183, 0xC183, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0798, 0x0FF8,
         0x1C38, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818,
         0x1818, 0x1818, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03C0, 0x0FF0,
         0x0C30, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x0C30,
         0x0FF0, 0x03C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03D8, 0x0FF8,
         0x0C38, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x0C38,
         0x0FF8, 0x03D8, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x1BC0, 0x1FF0,
         0x1C30, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1C30,
         0x1FF0, 0x1BC0, 0x1800, 0x1800, 0x1800, 0x1800, 0x1800, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x07B0, 0x03F0,
         0x0070, 0x0030, 0x0030, 0x0030, 0x0030, 0x0030, 0x0030, 0x0030,
         0x0030, 0x0030, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x03E0, 0x03F0,
         0x0E38, 0x0C18, 0x0038, 0x03F0, 0x07C0, 0x0C00, 0x0C18, 0x0E38,
         0x07F0, 0x03E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0080, 0x00C0, 0x00C0, 0x00C0, 0x07F0, 0x07F0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x07C0, 0x0780, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x1818, 0x1818,
         0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1818, 0x1C38,
         0x1FF0, 0x19E0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x180C, 0x0C18,
         0x0C18, 0x0C18, 0x0630, 0x0630, 0x0630, 0x0360, 0x0360, 0x0360,
         0x01C0, 0x01C0, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x41C1, 0x41C1,
         0x61C3, 0x6363, 0x6363, 0x6363, 0x3636, 0x3636, 0x3636, 0x1C1C,
         0x1C1C, 0x1C1C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x381C, 0x1C38,
         0x0C30, 0x0660, 0x0360, 0x0360, 0x0360, 0x0360, 0x0660, 0x0C30,
         0x1C38, 0x381C, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x3018, 0x1830,
         0x1830, 0x1870, 0x0C60, 0x0C60, 0x0CE0, 0x06C0, 0x06C0, 0x0380,
         0x0380, 0x0380, 0x0180, 0x0180, 0x01C0, 0x00F0, 0x0070, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x1FFC, 0x1FFC,
         0x0C00, 0x0600, 0x0300, 0x0180, 0x00C0, 0x0060, 0x0030, 0x0018,
         0x1FFC, 0x1FFC, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,


  
         0x0000, 0x0300, 0x0180, 0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x00C0,
         0x00C0, 0x0060, 0x0060, 0x0030, 0x0060, 0x0040, 0x00C0, 0x00C0,
         0x00C0, 0x00C0, 0x00C0, 0x00C0, 0x0180, 0x0300, 0x0000, 0x0000,


  
         0x0000, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0180, 0x0000,


  
         0x0000, 0x0060, 0x00C0, 0x01C0, 0x0180, 0x0180, 0x0180, 0x0180,
         0x0180, 0x0300, 0x0300, 0x0600, 0x0300, 0x0100, 0x0180, 0x0180,
         0x0180, 0x0180, 0x0180, 0x0180, 0x00C0, 0x0060, 0x0000, 0x0000,


  
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x10F0, 0x1FF8, 0x0F08, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
         0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000};

const uint16_t ASCII12x12_Table [] = {
    0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x0000,0x2000,0x0000,0x0000,
    0x0000,0x5000,0x5000,0x5000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0900,0x0900,0x1200,0x7f00,0x1200,0x7f00,0x1200,0x2400,0x2400,0x0000,0x0000,
    0x1000,0x3800,0x5400,0x5000,0x5000,0x3800,0x1400,0x5400,0x5400,0x3800,0x1000,0x0000,
    0x0000,0x3080,0x4900,0x4900,0x4a00,0x32c0,0x0520,0x0920,0x0920,0x10c0,0x0000,0x0000,
    0x0000,0x0c00,0x1200,0x1200,0x1400,0x1800,0x2500,0x2300,0x2300,0x1d80,0x0000,0x0000,
    0x0000,0x4000,0x4000,0x4000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0800,0x1000,0x1000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x1000,0x1000,
    0x0000,0x4000,0x2000,0x2000,0x1000,0x1000,0x1000,0x1000,0x1000,0x1000,0x2000,0x2000,
    0x0000,0x2000,0x7000,0x2000,0x5000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x0800,0x0800,0x7f00,0x0800,0x0800,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x2000,0x4000,
    0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x7000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x0000,0x0000,
    0x0000,0x1000,0x1000,0x1000,0x2000,0x2000,0x2000,0x2000,0x4000,0x4000,0x0000,0x0000,
    0x0000,0x1000,0x2800,0x4400,0x4400,0x4400,0x4400,0x4400,0x2800,0x1000,0x0000,0x0000,
    0x0000,0x1000,0x3000,0x5000,0x1000,0x1000,0x1000,0x1000,0x1000,0x1000,0x0000,0x0000,
    0x0000,0x3000,0x4800,0x4400,0x0400,0x0800,0x1000,0x2000,0x4000,0x7c00,0x0000,0x0000,
    0x0000,0x3000,0x4800,0x0400,0x0800,0x1000,0x0800,0x4400,0x4800,0x3000,0x0000,0x0000,
    0x0000,0x0800,0x1800,0x1800,0x2800,0x2800,0x4800,0x7c00,0x0800,0x0800,0x0000,0x0000,
    0x0000,0x3c00,0x2000,0x4000,0x7000,0x4800,0x0400,0x4400,0x4800,0x3000,0x0000,0x0000,
    0x0000,0x1800,0x2400,0x4000,0x5000,0x6800,0x4400,0x4400,0x2800,0x1000,0x0000,0x0000,
    0x0000,0x7c00,0x0400,0x0800,0x1000,0x1000,0x1000,0x2000,0x2000,0x2000,0x0000,0x0000,
    0x0000,0x1000,0x2800,0x4400,0x2800,0x1000,0x2800,0x4400,0x2800,0x1000,0x0000,0x0000,
    0x0000,0x1000,0x2800,0x4400,0x4400,0x2c00,0x1400,0x0400,0x4800,0x3000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x2000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x2000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x2000,0x4000,
    0x0000,0x0000,0x0400,0x0800,0x3000,0x4000,0x3000,0x0800,0x0400,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x7c00,0x0000,0x0000,0x7c00,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x4000,0x2000,0x1800,0x0400,0x1800,0x2000,0x4000,0x0000,0x0000,0x0000,
    0x0000,0x3800,0x6400,0x4400,0x0400,0x0800,0x1000,0x1000,0x0000,0x1000,0x0000,0x0000,
    0x0000,0x0f80,0x1040,0x2ea0,0x51a0,0x5120,0x5120,0x5120,0x5320,0x4dc0,0x2020,0x1040,
    0x0000,0x0800,0x1400,0x1400,0x1400,0x2200,0x3e00,0x2200,0x4100,0x4100,0x0000,0x0000,
    0x0000,0x3c00,0x2200,0x2200,0x2200,0x3c00,0x2200,0x2200,0x2200,0x3c00,0x0000,0x0000,
    0x0000,0x0e00,0x1100,0x2100,0x2000,0x2000,0x2000,0x2100,0x1100,0x0e00,0x0000,0x0000,
    0x0000,0x3c00,0x2200,0x2100,0x2100,0x2100,0x2100,0x2100,0x2200,0x3c00,0x0000,0x0000,
    0x0000,0x3e00,0x2000,0x2000,0x2000,0x3e00,0x2000,0x2000,0x2000,0x3e00,0x0000,0x0000,
    0x0000,0x3e00,0x2000,0x2000,0x2000,0x3c00,0x2000,0x2000,0x2000,0x2000,0x0000,0x0000,
    0x0000,0x0e00,0x1100,0x2100,0x2000,0x2700,0x2100,0x2100,0x1100,0x0e00,0x0000,0x0000,
    0x0000,0x2100,0x2100,0x2100,0x2100,0x3f00,0x2100,0x2100,0x2100,0x2100,0x0000,0x0000,
    0x0000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x0000,0x0000,
    0x0000,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,0x4800,0x4800,0x3000,0x0000,0x0000,
    0x0000,0x2200,0x2400,0x2800,0x2800,0x3800,0x2800,0x2400,0x2400,0x2200,0x0000,0x0000,
    0x0000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x3e00,0x0000,0x0000,
    0x0000,0x2080,0x3180,0x3180,0x3180,0x2a80,0x2a80,0x2a80,0x2a80,0x2480,0x0000,0x0000,
    0x0000,0x2100,0x3100,0x3100,0x2900,0x2900,0x2500,0x2300,0x2300,0x2100,0x0000,0x0000,
    0x0000,0x0c00,0x1200,0x2100,0x2100,0x2100,0x2100,0x2100,0x1200,0x0c00,0x0000,0x0000,
    0x0000,0x3c00,0x2200,0x2200,0x2200,0x3c00,0x2000,0x2000,0x2000,0x2000,0x0000,0x0000,
    0x0000,0x0c00,0x1200,0x2100,0x2100,0x2100,0x2100,0x2100,0x1600,0x0d00,0x0100,0x0000,
    0x0000,0x3e00,0x2100,0x2100,0x2100,0x3e00,0x2400,0x2200,0x2100,0x2080,0x0000,0x0000,
    0x0000,0x1c00,0x2200,0x2200,0x2000,0x1c00,0x0200,0x2200,0x2200,0x1c00,0x0000,0x0000,
    0x0000,0x3e00,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,0x0800,0x0000,0x0000,
    0x0000,0x2100,0x2100,0x2100,0x2100,0x2100,0x2100,0x2100,0x1200,0x0c00,0x0000,0x0000,
    0x0000,0x4100,0x4100,0x2200,0x2200,0x2200,0x1400,0x1400,0x1400,0x0800,0x0000,0x0000,
    0x0000,0x4440,0x4a40,0x2a40,0x2a80,0x2a80,0x2a80,0x2a80,0x2a80,0x1100,0x0000,0x0000,
    0x0000,0x4100,0x2200,0x1400,0x1400,0x0800,0x1400,0x1400,0x2200,0x4100,0x0000,0x0000,
    0x0000,0x4100,0x2200,0x2200,0x1400,0x0800,0x0800,0x0800,0x0800,0x0800,0x0000,0x0000,
    0x0000,0x7e00,0x0200,0x0400,0x0800,0x1000,0x1000,0x2000,0x4000,0x7e00,0x0000,0x0000,
    0x0000,0x3000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,
    0x0000,0x4000,0x4000,0x2000,0x2000,0x2000,0x2000,0x2000,0x1000,0x1000,0x0000,0x0000,
    0x0000,0x6000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,
    0x0000,0x1000,0x2800,0x2800,0x2800,0x4400,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x7e00,
    0x4000,0x2000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x3800,0x4400,0x0400,0x3c00,0x4400,0x4400,0x3c00,0x0000,0x0000,
    0x0000,0x4000,0x4000,0x5800,0x6400,0x4400,0x4400,0x4400,0x6400,0x5800,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x3000,0x4800,0x4000,0x4000,0x4000,0x4800,0x3000,0x0000,0x0000,
    0x0000,0x0400,0x0400,0x3400,0x4c00,0x4400,0x4400,0x4400,0x4c00,0x3400,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x3800,0x4400,0x4400,0x7c00,0x4000,0x4400,0x3800,0x0000,0x0000,
    0x0000,0x6000,0x4000,0xe000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x3400,0x4c00,0x4400,0x4400,0x4400,0x4c00,0x3400,0x0400,0x4400,
    0x0000,0x4000,0x4000,0x5800,0x6400,0x4400,0x4400,0x4400,0x4400,0x4400,0x0000,0x0000,
    0x0000,0x4000,0x0000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x0000,0x0000,
    0x0000,0x4000,0x0000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,
    0x0000,0x4000,0x4000,0x4800,0x5000,0x6000,0x5000,0x5000,0x4800,0x4800,0x0000,0x0000,
    0x0000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x5200,0x6d00,0x4900,0x4900,0x4900,0x4900,0x4900,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x5800,0x6400,0x4400,0x4400,0x4400,0x4400,0x4400,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x3800,0x4400,0x4400,0x4400,0x4400,0x4400,0x3800,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x5800,0x6400,0x4400,0x4400,0x4400,0x6400,0x5800,0x4000,0x4000,
    0x0000,0x0000,0x0000,0x3400,0x4c00,0x4400,0x4400,0x4400,0x4c00,0x3400,0x0400,0x0400,
    0x0000,0x0000,0x0000,0x5000,0x6000,0x4000,0x4000,0x4000,0x4000,0x4000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x3000,0x4800,0x4000,0x3000,0x0800,0x4800,0x3000,0x0000,0x0000,
    0x0000,0x4000,0x4000,0xe000,0x4000,0x4000,0x4000,0x4000,0x4000,0x6000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x4400,0x4400,0x4400,0x4400,0x4400,0x4c00,0x3400,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x4400,0x4400,0x2800,0x2800,0x2800,0x2800,0x1000,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x4900,0x4900,0x5500,0x5500,0x5500,0x5500,0x2200,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x4400,0x2800,0x2800,0x1000,0x2800,0x2800,0x4400,0x0000,0x0000,
    0x0000,0x0000,0x0000,0x4400,0x4400,0x2800,0x2800,0x2800,0x1000,0x1000,0x1000,0x1000,
    0x0000,0x0000,0x0000,0x7800,0x0800,0x1000,0x2000,0x2000,0x4000,0x7800,0x0000,0x0000,
    0x0000,0x1000,0x2000,0x2000,0x2000,0x2000,0x4000,0x2000,0x2000,0x2000,0x2000,0x2000,
    0x0000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,0x2000,
    0x0000,0x4000,0x2000,0x2000,0x2000,0x2000,0x1000,0x2000,0x2000,0x2000,0x2000,0x2000,
    0x0000,0x0000,0x0000,0x0000,0x7400,0x5800,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
    0x0000,0x0000,0x7000,0x5000,0x5000,0x5000,0x5000,0x5000,0x5000,0x7000,0x0000,0x0000};

const uint16_t ASCII8x12_Table [] = {
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x10,0x00,
    0x00,0x00,0x00,0x28,0x28,0x28,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x14,0x14,0x3e,0x14,0x28,0x7c,0x28,0x28,0x00,
    0x00,0x00,0x10,0x38,0x54,0x50,0x38,0x14,0x14,0x54,0x38,0x10,
    0x00,0x00,0x00,0x44,0xa8,0xa8,0x50,0x14,0x1a,0x2a,0x24,0x00,
    0x00,0x00,0x00,0x20,0x50,0x50,0x20,0xe8,0x98,0x98,0x60,0x00,
    0x00,0x00,0x00,0x80,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x40,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
    0x00,0x00,0x00,0x80,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
    0x00,0x00,0x00,0x40,0xe0,0x40,0xa0,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x20,0x20,0xf8,0x20,0x20,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x40,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xc0,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,
    0x00,0x00,0x00,0x20,0x20,0x20,0x40,0x40,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x60,0x90,0x90,0x90,0x90,0x90,0x90,0x60,0x00,
    0x00,0x00,0x00,0x20,0x60,0xa0,0x20,0x20,0x20,0x20,0x20,0x00,
    0x00,0x00,0x00,0x60,0x90,0x10,0x10,0x20,0x40,0x80,0xf0,0x00,
    0x00,0x00,0x00,0x60,0x90,0x10,0x60,0x10,0x10,0x90,0x60,0x00,
    0x00,0x00,0x00,0x10,0x30,0x50,0x50,0x90,0xf8,0x10,0x10,0x00,
    0x00,0x00,0x00,0x70,0x40,0x80,0xe0,0x10,0x10,0x90,0x60,0x00,
    0x00,0x00,0x00,0x60,0x90,0x80,0xa0,0xd0,0x90,0x90,0x60,0x00,
    0x00,0x00,0x00,0xf0,0x10,0x20,0x20,0x20,0x40,0x40,0x40,0x00,
    0x00,0x00,0x00,0x60,0x90,0x90,0x60,0x90,0x90,0x90,0x60,0x00,
    0x00,0x00,0x00,0x60,0x90,0x90,0xb0,0x50,0x10,0x90,0x60,0x00,
    0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x00,0x40,0x00,
    0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x00,0x40,0x40,
    0x00,0x00,0x00,0x00,0x00,0x10,0x60,0x80,0x60,0x10,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x00,0xf0,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x80,0x60,0x10,0x60,0x80,0x00,0x00,
    0x00,0x00,0x00,0x60,0x90,0x10,0x20,0x40,0x40,0x00,0x40,0x00,
    0x00,0x00,0x00,0x1c,0x22,0x5b,0xa5,0xa5,0xa5,0xa5,0x9e,0x41,
    0x00,0x00,0x00,0x20,0x50,0x50,0x50,0x50,0x70,0x88,0x88,0x00,
    0x00,0x00,0x00,0xf0,0x88,0x88,0xf0,0x88,0x88,0x88,0xf0,0x00,
    0x00,0x00,0x00,0x38,0x44,0x84,0x80,0x80,0x84,0x44,0x38,0x00,
    0x00,0x00,0x00,0xe0,0x90,0x88,0x88,0x88,0x88,0x90,0xe0,0x00,
    0x00,0x00,0x00,0xf8,0x80,0x80,0xf8,0x80,0x80,0x80,0xf8,0x00,
    0x00,0x00,0x00,0x78,0x40,0x40,0x70,0x40,0x40,0x40,0x40,0x00,
    0x00,0x00,0x00,0x38,0x44,0x84,0x80,0x9c,0x84,0x44,0x38,0x00,
    0x00,0x00,0x00,0x88,0x88,0x88,0xf8,0x88,0x88,0x88,0x88,0x00,
    0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x10,0x10,0x10,0x10,0x10,0x90,0x90,0x60,0x00,
    0x00,0x00,0x00,0x88,0x90,0xa0,0xe0,0xa0,0x90,0x90,0x88,0x00,
    0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0xf0,0x00,
    0x00,0x00,0x00,0x82,0xc6,0xc6,0xaa,0xaa,0xaa,0xaa,0x92,0x00,
    0x00,0x00,0x00,0x84,0xc4,0xa4,0xa4,0x94,0x94,0x8c,0x84,0x00,
    0x00,0x00,0x00,0x30,0x48,0x84,0x84,0x84,0x84,0x48,0x30,0x00,
    0x00,0x00,0x00,0xf0,0x88,0x88,0x88,0xf0,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x30,0x48,0x84,0x84,0x84,0x84,0x58,0x34,0x04,
    0x00,0x00,0x00,0x78,0x44,0x44,0x78,0x50,0x48,0x44,0x42,0x00,
    0x00,0x00,0x00,0x70,0x88,0x80,0x70,0x08,0x88,0x88,0x70,0x00,
    0x00,0x00,0x00,0xf8,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x00,
    0x00,0x00,0x00,0x84,0x84,0x84,0x84,0x84,0x84,0x48,0x30,0x00,
    0x00,0x00,0x00,0x88,0x88,0x50,0x50,0x50,0x50,0x50,0x20,0x00,
    0x00,0x00,0x00,0x92,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0x44,0x00,
    0x00,0x00,0x00,0x84,0x48,0x48,0x30,0x30,0x48,0x48,0x84,0x00,
    0x00,0x00,0x00,0x88,0x50,0x50,0x20,0x20,0x20,0x20,0x20,0x00,
    0x00,0x00,0x00,0xf8,0x08,0x10,0x20,0x20,0x40,0x80,0xf8,0x00,
    0x00,0x00,0x00,0xc0,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
    0x00,0x00,0x00,0x80,0x80,0x40,0x40,0x40,0x40,0x20,0x20,0x00,
    0x00,0x00,0x00,0xc0,0x40,0x40,0x40,0x40,0x40,0x40,0x40,0x40,
    0x00,0x00,0x00,0x40,0xa0,0xa0,0xa0,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xf8,
    0x00,0x00,0x00,0x80,0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0xe0,0x10,0x70,0x90,0x90,0x70,0x00,
    0x00,0x00,0x00,0x80,0x80,0xa0,0xd0,0x90,0x90,0xd0,0xa0,0x00,
    0x00,0x00,0x00,0x00,0x00,0x60,0x90,0x80,0x80,0x90,0x60,0x00,
    0x00,0x00,0x00,0x10,0x10,0x50,0xb0,0x90,0x90,0xb0,0x50,0x00,
    0x00,0x00,0x00,0x00,0x00,0x60,0x90,0xf0,0x80,0x90,0x60,0x00,
    0x00,0x00,0x00,0xc0,0x80,0xc0,0x80,0x80,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x00,0x00,0x50,0xb0,0x90,0x90,0xb0,0x50,0x10,
    0x00,0x00,0x00,0x80,0x80,0xa0,0xd0,0x90,0x90,0x90,0x90,0x00,
    0x00,0x00,0x00,0x80,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x80,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
    0x00,0x00,0x00,0x80,0x80,0x90,0xa0,0xc0,0xa0,0x90,0x90,0x00,
    0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x00,0x00,0xa6,0xda,0x92,0x92,0x92,0x92,0x00,
    0x00,0x00,0x00,0x00,0x00,0xa0,0xd0,0x90,0x90,0x90,0x90,0x00,
    0x00,0x00,0x00,0x00,0x00,0x60,0x90,0x90,0x90,0x90,0x60,0x00,
    0x00,0x00,0x00,0x00,0x00,0xa0,0xd0,0x90,0x90,0xd0,0xa0,0x80,
    0x00,0x00,0x00,0x00,0x00,0x50,0xb0,0x90,0x90,0xb0,0x50,0x10,
    0x00,0x00,0x00,0x00,0x00,0xa0,0xc0,0x80,0x80,0x80,0x80,0x00,
    0x00,0x00,0x00,0x00,0x00,0xe0,0x90,0x40,0x20,0x90,0x60,0x00,
    0x00,0x00,0x00,0x80,0x80,0xc0,0x80,0x80,0x80,0x80,0xc0,0x00,
    0x00,0x00,0x00,0x00,0x00,0x90,0x90,0x90,0x90,0xb0,0x50,0x00,
    0x00,0x00,0x00,0x00,0x00,0x88,0x88,0x50,0x50,0x50,0x20,0x00,
    0x00,0x00,0x00,0x00,0x00,0x92,0xaa,0xaa,0xaa,0xaa,0x44,0x00,
    0x00,0x00,0x00,0x00,0x00,0x88,0x50,0x20,0x20,0x50,0x88,0x00,
    0x00,0x00,0x00,0x00,0x00,0x88,0x50,0x50,0x50,0x20,0x20,0x20,
    0x00,0x00,0x00,0x00,0x00,0xf0,0x10,0x20,0x40,0x80,0xf0,0x00,
    0x00,0x00,0x00,0xc0,0x80,0x80,0x80,0x00,0x80,0x80,0x80,0x80,
    0x00,0x00,0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
    0x00,0x00,0x00,0xc0,0x40,0x40,0x40,0x20,0x40,0x40,0x40,0x40,
    0x00,0x00,0x00,0x00,0x00,0x00,0xe8,0xb0,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0xe0,0xa0,0xa0,0xa0,0xa0,0xa0,0xe0,0x00};

const uint16_t ASCII8x8_Table [] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x40,
    0xa0, 0xa0, 0xa0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x24, 0x24, 0xfe, 0x48, 0xfc, 0x48, 0x48,
    0x38, 0x54, 0x50, 0x38, 0x14, 0x14, 0x54, 0x38,
    0x44, 0xa8, 0xa8, 0x50, 0x14, 0x1a, 0x2a, 0x24,
    0x10, 0x28, 0x28, 0x10, 0x74, 0x4c, 0x4c, 0x30,
    0x10, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x08, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x08,
    0x10, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x10,
    0x00, 0x00, 0x24, 0x18, 0x3c, 0x18, 0x24, 0x00,
    0x00, 0x00, 0x10, 0x10, 0x7c, 0x10, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x3c, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18,
    0x08, 0x08, 0x08, 0x10, 0x10, 0x20, 0x20, 0x20,
    0x18, 0x24, 0x24, 0x24, 0x24, 0x24, 0x24, 0x18,
    0x08, 0x18, 0x28, 0x08, 0x08, 0x08, 0x08, 0x08,
    0x38, 0x44, 0x00, 0x04, 0x08, 0x10, 0x20, 0x7c,
    0x18, 0x24, 0x04, 0x18, 0x04, 0x04, 0x24, 0x18,
    0x04, 0x0c, 0x14, 0x24, 0x44, 0x7e, 0x04, 0x04,
    0x3c, 0x20, 0x20, 0x38, 0x04, 0x04, 0x24, 0x18,
    0x18, 0x24, 0x20, 0x38, 0x24, 0x24, 0x24, 0x18,
    0x3c, 0x04, 0x08, 0x08, 0x08, 0x10, 0x10, 0x10,
    0x18, 0x24, 0x24, 0x18, 0x24, 0x24, 0x24, 0x18,
    0x18, 0x24, 0x24, 0x24, 0x1c, 0x04, 0x24, 0x18,
    0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x08, 0x00, 0x00, 0x08, 0x10, 0x00,
    0x00, 0x00, 0x04, 0x18, 0x20, 0x18, 0x04, 0x00,
    0x00, 0x00, 0x00, 0x3c, 0x00, 0x3c, 0x00, 0x00,
    0x00, 0x00, 0x20, 0x18, 0x04, 0x18, 0x20, 0x00,
    0x18, 0x24, 0x04, 0x08, 0x10, 0x10, 0x00, 0x10,
    0x3c, 0x42, 0x99, 0xa5, 0xa5, 0x9d, 0x42, 0x38,
    0x38, 0x44, 0x44, 0x44, 0x7c, 0x44, 0x44, 0x44,
    0x78, 0x44, 0x44, 0x78, 0x44, 0x44, 0x44, 0x78,
    0x1c, 0x22, 0x42, 0x40, 0x40, 0x42, 0x22, 0x1c,
    0x70, 0x48, 0x44, 0x44, 0x44, 0x44, 0x48, 0x70,
    0x7c, 0x40, 0x40, 0x7c, 0x40, 0x40, 0x40, 0x7c,
    0x3c, 0x20, 0x20, 0x38, 0x20, 0x20, 0x20, 0x20,
    0x1c, 0x22, 0x42, 0x40, 0x4e, 0x42, 0x22, 0x1c,
    0x44, 0x44, 0x44, 0x7c, 0x44, 0x44, 0x44, 0x44,
    0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x04, 0x04, 0x04, 0x04, 0x04, 0x24, 0x24, 0x18,
    0x44, 0x48, 0x50, 0x70, 0x50, 0x48, 0x48, 0x44,
    0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3c,
    0x82, 0xc6, 0xc6, 0xaa, 0xaa, 0xaa, 0xaa, 0x92,
    0x42, 0x62, 0x52, 0x52, 0x4a, 0x4a, 0x46, 0x42,
    0x18, 0x24, 0x42, 0x42, 0x42, 0x42, 0x24, 0x18,
    0x78, 0x44, 0x44, 0x44, 0x78, 0x40, 0x40, 0x40,
    0x18, 0x24, 0x42, 0x42, 0x42, 0x42, 0x2c, 0x1a,
    0x78, 0x44, 0x44, 0x78, 0x50, 0x48, 0x44, 0x42,
    0x38, 0x44, 0x40, 0x38, 0x04, 0x44, 0x44, 0x38,
    0x7c, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x42, 0x42, 0x42, 0x42, 0x42, 0x42, 0x24, 0x18,
    0x44, 0x44, 0x28, 0x28, 0x28, 0x28, 0x28, 0x10,
    0x92, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0x44,
    0x42, 0x24, 0x24, 0x18, 0x18, 0x24, 0x24, 0x42,
    0x44, 0x28, 0x28, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x7c, 0x04, 0x08, 0x10, 0x10, 0x20, 0x40, 0x7c,
    0x1c, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x1c,
    0x10, 0x10, 0x08, 0x08, 0x08, 0x08, 0x04, 0x04,
    0x1c, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x1c,
    0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x20, 0x10, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x18, 0x04, 0x1c, 0x24, 0x24, 0x1c,
    0x20, 0x20, 0x28, 0x34, 0x24, 0x24, 0x34, 0x28,
    0x00, 0x00, 0x18, 0x24, 0x20, 0x20, 0x24, 0x18,
    0x04, 0x04, 0x14, 0x2c, 0x24, 0x24, 0x2c, 0x14,
    0x00, 0x00, 0x18, 0x24, 0x3c, 0x20, 0x24, 0x18,
    0x00, 0x18, 0x10, 0x10, 0x18, 0x10, 0x10, 0x10,
    0x00, 0x18, 0x24, 0x24, 0x18, 0x04, 0x24, 0x18,
    0x20, 0x20, 0x28, 0x34, 0x24, 0x24, 0x24, 0x24,
    0x10, 0x00, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x08, 0x00, 0x08, 0x08, 0x08, 0x08, 0x28, 0x10,
    0x20, 0x20, 0x24, 0x28, 0x30, 0x28, 0x24, 0x24,
    0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x00, 0xa6, 0xda, 0x92, 0x92, 0x92, 0x92,
    0x00, 0x00, 0x28, 0x34, 0x24, 0x24, 0x24, 0x24,
    0x00, 0x00, 0x18, 0x24, 0x24, 0x24, 0x24, 0x18,
    0x00, 0x28, 0x34, 0x24, 0x38, 0x20, 0x20, 0x20,
    0x00, 0x14, 0x2c, 0x24, 0x1c, 0x04, 0x04, 0x04,
    0x00, 0x00, 0x2c, 0x30, 0x20, 0x20, 0x20, 0x20,
    0x00, 0x00, 0x18, 0x24, 0x10, 0x08, 0x24, 0x18,
    0x00, 0x10, 0x38, 0x10, 0x10, 0x10, 0x10, 0x18,
    0x00, 0x00, 0x24, 0x24, 0x24, 0x24, 0x2c, 0x14,
    0x00, 0x00, 0x44, 0x44, 0x28, 0x28, 0x28, 0x10,
    0x00, 0x00, 0x92, 0xaa, 0xaa, 0xaa, 0xaa, 0x44,
    0x00, 0x00, 0x44, 0x28, 0x10, 0x10, 0x28, 0x44,
    0x00, 0x28, 0x28, 0x28, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x00, 0x3c, 0x04, 0x08, 0x10, 0x20, 0x3c,
    0x00, 0x08, 0x10, 0x10, 0x20, 0x10, 0x10, 0x08,
    0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10,
    0x00, 0x10, 0x08, 0x08, 0x04, 0x08, 0x08, 0x10,
    0x00, 0x00, 0x00, 0x60, 0x92, 0x0c, 0x00, 0x00,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};


sFONT Font16x24 = {
  ASCII16x24_Table,
  16,  
  24,  
};

sFONT Font12x12 = {
  ASCII12x12_Table,
  12,  
  12,  
};

sFONT Font8x12 = {
  ASCII8x12_Table,
  8,  
  12,  
};


sFONT Font8x8 = {
  ASCII8x8_Table,
  8,  
  8,  
};
   


  




  


  




 
    


 
  


  



 



 



   
 
#line 49 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.c"



  



 
    



  



 



 






 










  



 



  
    


  
static sFONT *LCD_Currentfonts;

   
static volatile uint16_t TextColor = 0x0000, BackColor = 0xFFFF;
  


  



  

static void delay(volatile uint32_t nCount);

static void PutPixel(int16_t x, int16_t y);
static void LCD_PolyLineRelativeClosed(pPoint Points, uint16_t PointCount, uint16_t Closed);


  





 
void LCD_DeInit(void)
{ 
  GPIO_InitTypeDef GPIO_InitStructure;

   
  LCD_DisplayOff();

   
  FSMC_NORSRAMCmd(((uint32_t)0x00000004), ENABLE);
  
   
  FSMC_NORSRAMDeInit(((uint32_t)0x00000004));
   
 
   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001) | ((uint16_t)0x0002) | ((uint16_t)0x0100) | ((uint16_t)0x0200) |
                                ((uint16_t)0x0400) | ((uint16_t)0x4000) | ((uint16_t)0x8000);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), &GPIO_InitStructure);
 
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x00), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x01), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x08), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x09), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0A), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0E), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0F), ((uint8_t)0x00));


  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0080) | ((uint16_t)0x0100) | ((uint16_t)0x0200) | ((uint16_t)0x0400) |
                                ((uint16_t)0x0800) | ((uint16_t)0x1000) | ((uint16_t)0x2000) | ((uint16_t)0x4000) | 
                                ((uint16_t)0x8000);

  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), &GPIO_InitStructure);

  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x07) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x08) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x09) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0A) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0B) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0C) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0D) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0E) , ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0F) , ((uint8_t)0x00));

   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001) | ((uint16_t)0x0002) | ((uint16_t)0x0004) | ((uint16_t)0x0008) | 
                                ((uint16_t)0x0010) | ((uint16_t)0x0020) | ((uint16_t)0x1000) | ((uint16_t)0x2000) | 
                                ((uint16_t)0x4000) | ((uint16_t)0x8000);
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)), &GPIO_InitStructure);
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x00), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x01), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x02), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x03), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x04), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x05), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x0C), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x0D), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x0E), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1400)),((uint8_t)0x0F), ((uint8_t)0x00));


  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001) | ((uint16_t)0x0002) | ((uint16_t)0x0004) | ((uint16_t)0x0008) | 
                                ((uint16_t)0x0010) | ((uint16_t)0x0020);

  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)), &GPIO_InitStructure);

  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)),((uint8_t)0x00), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)),((uint8_t)0x01), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)),((uint8_t)0x02), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)),((uint8_t)0x03), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)),((uint8_t)0x04), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)),((uint8_t)0x05), ((uint8_t)0x00));

  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0800) | ((uint16_t)0x1000) | ((uint16_t)0x2000); 

  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), &GPIO_InitStructure);

  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)),((uint8_t)0x0B), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)),((uint8_t)0x0C), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)),((uint8_t)0x0D), ((uint8_t)0x00));

     
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0010) |((uint16_t)0x0020);

  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), &GPIO_InitStructure);
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)),((uint8_t)0x04), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)),((uint8_t)0x05), ((uint8_t)0x00));

   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0400); 

  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)), &GPIO_InitStructure);
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1800)), ((uint8_t)0x0C), ((uint8_t)0x00));

   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001) | ((uint16_t)0x0002); 
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), &GPIO_InitStructure); 

  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)),((uint8_t)0x00), ((uint8_t)0x00));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)),((uint8_t)0x01), ((uint8_t)0x00));
}





 
void LCD_CtrlLinesConfig(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;

   
  RCC_AHB1PeriphClockCmd(((uint32_t)0x00000002) | ((uint32_t)0x00000008) | ((uint32_t)0x00000010) |
                         ((uint32_t)0x00000020), ENABLE);

 
   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0001) | ((uint16_t)0x0002) | ((uint16_t)0x0100) | ((uint16_t)0x0200) |
                                ((uint16_t)0x0400) | ((uint16_t)0x4000) | ((uint16_t)0x8000) |
                                ((uint16_t)0x0010) |((uint16_t)0x0020);;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), &GPIO_InitStructure);

  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x00), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x01), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x04), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x05), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x08), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x09), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0A), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0E), ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0F), ((uint8_t)0xC));

  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0080) | ((uint16_t)0x0100) | ((uint16_t)0x0200) | ((uint16_t)0x0400) |
                                ((uint16_t)0x0800) | ((uint16_t)0x1000) | ((uint16_t)0x2000) | ((uint16_t)0x4000) | 
                                ((uint16_t)0x8000);
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), &GPIO_InitStructure);

  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x07) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x08) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x09) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0A) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0B) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0C) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0D) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0E) , ((uint8_t)0xC));
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x0F) , ((uint8_t)0xC));

   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0008);
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), &GPIO_InitStructure);  
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x1000)), ((uint8_t)0x03), ((uint8_t)0xC));	   

   
  GPIO_InitStructure.GPIO_Pin = ((uint16_t)0x0080); 
  GPIO_Init(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), &GPIO_InitStructure);
  GPIO_PinAFConfig(((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00)), ((uint8_t)0x0A), ((uint8_t)0xC));

   
  GPIO_InitStructure.GPIO_Pin = (((uint16_t)0x0008)); 
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;

  GPIO_Init((((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))), &GPIO_InitStructure);

    
  GPIO_InitStructure.GPIO_Pin = (((uint16_t)0x2000)); 
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_25MHz;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd  = GPIO_PuPd_NOPULL;

  GPIO_Init((((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))), &GPIO_InitStructure);
  GPIO_SetBits((((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))), (((uint16_t)0x2000)));
}





 
void LCD_FSMCConfig(void)
{
  FSMC_NORSRAMInitTypeDef  FSMC_NORSRAMInitStructure;
  FSMC_NORSRAMTimingInitTypeDef  p;
   
   
  RCC_AHB3PeriphClockCmd(((uint32_t)0x00000001), ENABLE);
  
 
 
   
  p.FSMC_AddressSetupTime = 1;
  p.FSMC_AddressHoldTime = 0;
  p.FSMC_DataSetupTime = 9;
  p.FSMC_BusTurnAroundDuration = 0;
  p.FSMC_CLKDivision = 0;
  p.FSMC_DataLatency = 0;
  p.FSMC_AccessMode = ((uint32_t)0x00000000);
  






 

  FSMC_NORSRAMInitStructure.FSMC_Bank = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_DataAddressMux = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_MemoryType = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_MemoryDataWidth = ((uint32_t)0x00000010);
  FSMC_NORSRAMInitStructure.FSMC_BurstAccessMode = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_AsynchronousWait = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_WaitSignalPolarity = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_WrapMode = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_WaitSignalActive = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_WriteOperation = ((uint32_t)0x00001000);
  FSMC_NORSRAMInitStructure.FSMC_WaitSignal = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_ExtendedMode = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_WriteBurst = ((uint32_t)0x00000000);
  FSMC_NORSRAMInitStructure.FSMC_ReadWriteTimingStruct = &p;
  FSMC_NORSRAMInitStructure.FSMC_WriteTimingStruct = &p;

  FSMC_NORSRAMInit(&FSMC_NORSRAMInitStructure);   

   
  FSMC_NORSRAMCmd(((uint32_t)0x00000000), ENABLE);
}




 
void STM32f4_Discovery_LCD_Init(void)
{ 

  unsigned long ulCount;
	
   
  LCD_CtrlLinesConfig();
	
   
  LCD_FSMCConfig();
	
  delay(5); 
	
   
  GPIO_ResetBits((((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))), (((uint16_t)0x0008)));	
  delay(10);	
  GPIO_SetBits((((GPIO_TypeDef *) ((((uint32_t)0x40000000) + 0x00020000) + 0x0C00))), (((uint16_t)0x0008)));

  

 
   
  LCD_WriteReg(0x10, 0x0001);

   
  LCD_WriteReg(0x1E, 0x00B2);
  LCD_WriteReg(0x28, 0x0006);
  
   
  LCD_WriteReg(0x00, 0x0001);

   
  LCD_WriteReg(0x01, 0x30EF);
  LCD_WriteReg(0x02, 0x0600);

   
  LCD_WriteReg(0x10, 0x0000);
  delay(5);
	  
   
  LCD_WriteReg(0x11, 0x6830);

   
  LCD_WriteReg(0x12, 0x0999);
  LCD_WriteReg(0x26, 0x3800);

   
  LCD_WriteReg(0x07, 0x0033);

   
  LCD_WriteReg(0x0C, 0x0005);

   
  LCD_WriteReg(0x30, 0x0000);
  LCD_WriteReg(0x31, 0x0303);
  LCD_WriteReg(0x32, 0x0407);
  LCD_WriteReg(0x33, 0x0301);
  LCD_WriteReg(0x34, 0x0301);
  LCD_WriteReg(0x35, 0x0403);
  LCD_WriteReg(0x36, 0x0707);
  LCD_WriteReg(0x37, 0x0400);
  LCD_WriteReg(0x3A, 0x0a00);
  LCD_WriteReg(0x3B, 0x1000);

   
  LCD_WriteReg(0x0D, 0x000A);
  LCD_WriteReg(0x0E, 0x2E00);

  
 
  LCD_WriteReg(0x44, (240-1) << 8);
  LCD_WriteReg(0x45, 0x0000);
  LCD_WriteReg(0x46, 320-1);

  LCD_WriteReg(0x4E, 0x00);
  LCD_WriteReg(0x4F, 0x00);
  
   
  LCD_WriteReg(0x22, 0x0000);
  for(ulCount = 0; ulCount < (320 * 240); ulCount++)
  {
    LCD_WriteRAM(0x0000);
  }
  LCD_SetFont(&Font16x24);
}







 
void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos)
{
   
  LCD_WriteReg(0x4E, Xpos);
	
   
  LCD_WriteReg(0x4F, Ypos);
}






 
void LCD_WriteReg(uint8_t LCD_Reg, uint16_t LCD_RegValue)
{
   
  (*(vu16 *)((u32)(0x60000000|0x00000000))) = LCD_Reg;
   
  (*(vu16 *)((u32)(0x60000000|0x00100000))) = LCD_RegValue;
}





 
uint16_t LCD_ReadReg(uint8_t LCD_Reg)
{
   
  (*(vu16 *)((u32)(0x60000000|0x00000000))) = LCD_Reg;
   
  return ((*(vu16 *)((u32)(0x60000000|0x00100000))));
}





 
void LCD_WriteRAM_Prepare(void)
{
	(*(vu16 *)((u32)(0x60000000|0x00000000))) = 0x22;
}





 
void LCD_WriteRAM(uint16_t RGB_Code)
{
   
  (*(vu16 *)((u32)(0x60000000|0x00100000))) = RGB_Code;
}





 
uint16_t LCD_ReadRAM(void)
{
   

   
  return (*(vu16 *)((u32)(0x60000000|0x00100000)));
}




 
void LCD_RGB_Test(void)
{
  uint32_t index;

  LCD_SetCursor(0x00, 0x00); 
  LCD_WriteRAM_Prepare();  

	 
  for(index = 0; index < (240*320)/3; index++)
  {
    (*(vu16 *)((u32)(0x60000000|0x00100000))) = 0xF800;
  }
	  
   
  for(;index < 2*(240*320)/3; index++)
  {
    (*(vu16 *)((u32)(0x60000000|0x00100000))) = 0x07E0;
  }
	  
	 
  for(; index < 240*320; index++)
  {
    (*(vu16 *)((u32)(0x60000000|0x00100000))) = 0x001F;
  }
}








 
void LCD_SetColors(volatile uint16_t _TextColor, volatile uint16_t _BackColor)
{
  TextColor = _TextColor; 
  BackColor = _BackColor;
}








 
void LCD_GetColors(volatile uint16_t *_TextColor, volatile uint16_t *_BackColor)
{
  *_TextColor = TextColor; *_BackColor = BackColor;
}





 
void LCD_SetTextColor(volatile uint16_t Color)
{
  TextColor = Color;
}






 
void LCD_SetBackColor(volatile uint16_t Color)
{
  BackColor = Color;
}



 
void LCD_DisplayOff(void)
{

}



 
void LCD_DisplayOn(void)
{

}





 
void LCD_SetFont(sFONT *fonts)
{
  LCD_Currentfonts = fonts;
}





 
sFONT *LCD_GetFont(void)
{
  return LCD_Currentfonts;
}







 
void LCD_ClearLine(uint16_t Line)
{
  uint16_t refcolumn = 0;

  do {
        
    LCD_DisplayChar(Line, refcolumn, ' ');
     
    refcolumn += LCD_Currentfonts->Width;
  } while (refcolumn < 320);	
}





 
void LCD_Clear(uint16_t Color)
{
  uint32_t index = 0;
  
  LCD_SetCursor(0x00, 0x00); 
  LCD_WriteRAM_Prepare();  
  for(index = 0; index < 240*320; index++)
  {
    (*(vu16 *)((u32)(0x60000000|0x00100000))) = Color;
  }  
}






 
static void PutPixel(int16_t x, int16_t y)
{ 
  if(x < 0 || x > 320-1 || y < 0 || y > 240-1)
  {
    return;  
  }
  LCD_DrawLine(x, y, 1, 0x0000);
}







 
void LCD_DrawChar(uint16_t Xpos, uint16_t Ypos, const uint16_t *c)
{
  uint32_t index = 0, i = 0;
  uint16_t  Xaddress = 0;
  Xaddress = Xpos;
  
  LCD_SetCursor(Ypos, Xaddress);
  
  for(index = 0; index < LCD_Currentfonts->Height; index++)
  {
    LCD_WriteRAM_Prepare();  
    for(i = 0; i < LCD_Currentfonts->Width; i++)
    {
  
      if((((c[index] & ((0x80 << ((LCD_Currentfonts->Width / 12 ) * 8 ) ) >> i)) == 0x00) &&(LCD_Currentfonts->Width <= 12))||
        (((c[index] & (0x1 << i)) == 0x00)&&(LCD_Currentfonts->Width > 12 )))

      {
        LCD_WriteRAM(BackColor);
      }
      else
      {
        LCD_WriteRAM(TextColor);
      } 
    }
    Xaddress++;
    LCD_SetCursor(Ypos, Xaddress);
  }
}









 
void LCD_DisplayChar(uint16_t Line, uint16_t Column, uint8_t Ascii)
{
  Ascii -= 32;
  LCD_DrawChar(Line, Column, &LCD_Currentfonts->table[Ascii * LCD_Currentfonts->Height]);
}








 
void LCD_DisplayStringLine(uint16_t Line, uint8_t *ptr)
{
  uint16_t refcolumn = 0;

   
  while (*ptr != 0)
  {
     
    LCD_DisplayChar(Line, refcolumn, *ptr);
     
    refcolumn += LCD_Currentfonts->Width;
	if (refcolumn >= 320) {
		break;
	}
     
    ptr++;
  }
}








 
void LCD_SetDisplayWindow(uint16_t Xpos, uint16_t Ypos, uint16_t width, uint16_t Height)
{
  uint32_t value = 0;	

  LCD_WriteReg(0x45, Xpos);
	
  if ((Xpos+width) >= 320) {
    LCD_WriteReg(0x46, 320-1);	
  } else {
    LCD_WriteReg(0x46, Xpos+width);		
  }
  
  if ((Ypos+Height) >= 240) {
    value = (240-1) << 8;	
  } else {
    value = (Ypos+Height) << 8;	
  }
  value |= Xpos;
  LCD_WriteReg(0x44, value);
  LCD_SetCursor(Xpos, Ypos);
}





 
void LCD_WindowModeDisable(void)
{




}









 
void LCD_DrawLine(uint16_t Xpos, uint16_t Ypos, uint16_t Length, uint8_t Direction)
{
  uint32_t i = 0;
  
  LCD_SetCursor(Xpos, Ypos);
  if(Direction == 0x0000)
  {
    LCD_WriteRAM_Prepare();  
    for(i = 0; i < Length; i++)
    {
      LCD_WriteRAM(TextColor);
    }
  }
  else
  {
    for(i = 0; i < Length; i++)
    {
      LCD_WriteRAM_Prepare();  
      LCD_WriteRAM(TextColor);
      Ypos++;
      LCD_SetCursor(Xpos, Ypos);
    }
  }
}








 
void LCD_DrawRect(uint16_t Xpos, uint16_t Ypos, uint8_t Height, uint16_t Width)
{
  LCD_DrawLine(Xpos, Ypos, Width, 0x0001);
  LCD_DrawLine((Xpos + Height-1), Ypos, Width, 0x0001);
  
  LCD_DrawLine(Xpos, Ypos, Height, 0x0000);
  LCD_DrawLine(Xpos, (Ypos + Width), Height, 0x0000);
}







 
void LCD_DrawCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius)
{
  int32_t  D;  
  uint32_t  CurX; 
  uint32_t  CurY;  
  
  D = 3 - (Radius << 1);
  CurX = 0;
  CurY = Radius;
  
  while (CurX <= CurY)
  {
    LCD_SetCursor(Xpos + CurX, Ypos + CurY);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos + CurX, Ypos - CurY);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos - CurX, Ypos + CurY);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos - CurX, Ypos - CurY);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos + CurY, Ypos + CurX);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos + CurY, Ypos - CurX);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos - CurY, Ypos + CurX);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    LCD_SetCursor(Xpos - CurY, Ypos - CurX);
    LCD_WriteRAM_Prepare();  
    LCD_WriteRAM(TextColor);
    if (D < 0)
    { 
      D += (CurX << 2) + 6;
    }
    else
    {
      D += ((CurX - CurY) << 2) + 10;
      CurY--;
    }
    CurX++;
  }
}





 
void LCD_DrawMonoPict(const uint32_t *Pict)
{
  uint32_t index = 0, i = 0;
  LCD_SetCursor(0, (320 - 1)); 
  LCD_WriteRAM_Prepare();  
  for(index = 0; index < 2400; index++)
  {
    for(i = 0; i < 32; i++)
    {
      if((Pict[index] & (1 << i)) == 0x00)
      {
        LCD_WriteRAM(BackColor);
      }
      else
      {
        LCD_WriteRAM(TextColor);
      }
    }
  }
}





 
void LCD_WriteBMP(uint32_t BmpAddress)
{
#line 985 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.c"
}








 
void LCD_DrawFullRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height)
{
  LCD_SetTextColor(TextColor);

  LCD_DrawLine(Xpos, Ypos, Width, 0x0000);
  LCD_DrawLine(Xpos, (Ypos+Height), Width, 0x0000);
  
  LCD_DrawLine(Xpos, Ypos, Height, 0x0001);
  LCD_DrawLine((Xpos+Width-1), Ypos, Height, 0x0001);

  Height--;
  Ypos++;

  LCD_SetTextColor(BackColor);

  while(Height--)
  {
    LCD_DrawLine(Xpos, Ypos++, Width, 0x0000);    
  }

  LCD_SetTextColor(TextColor);
}







 
void LCD_DrawFullCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius)
{
  int32_t  D;      
  uint32_t  CurX; 
  uint32_t  CurY;  
  
  D = 3 - (Radius << 1);

  CurX = 0;
  CurY = Radius;
  
  LCD_SetTextColor(BackColor);

  while (CurX <= CurY)
  {
    if(CurY > 0) 
    {
      LCD_DrawLine(Xpos - CurX, Ypos + CurY, 2*CurY, 0x0000);
      LCD_DrawLine(Xpos + CurX, Ypos + CurY, 2*CurY, 0x0000);
    }

    if(CurX > 0) 
    {
      LCD_DrawLine(Xpos - CurY, Ypos + CurX, 2*CurX, 0x0000);
      LCD_DrawLine(Xpos + CurY, Ypos + CurX, 2*CurX, 0x0000);
    }
    if (D < 0)
    { 
      D += (CurX << 2) + 6;
    }
    else
    {
      D += ((CurX - CurY) << 2) + 10;
      CurY--;
    }
    CurX++;
  }

  LCD_SetTextColor(TextColor);
  LCD_DrawCircle(Xpos, Ypos, Radius);
}








 
void LCD_DrawUniLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)
{
  int16_t deltax = 0, deltay = 0, x = 0, y = 0, xinc1 = 0, xinc2 = 0, 
  yinc1 = 0, yinc2 = 0, den = 0, num = 0, numadd = 0, numpixels = 0, 
  curpixel = 0;
  
  deltax = ((x2 - x1) > 0 ? (x2 - x1) : -(x2 - x1));         
  deltay = ((y2 - y1) > 0 ? (y2 - y1) : -(y2 - y1));         
  x = x1;                        
  y = y1;                        
  
  if (x2 >= x1)                  
  {
    xinc1 = 1;
    xinc2 = 1;
  }
  else                           
  {
    xinc1 = -1;
    xinc2 = -1;
  }
  
  if (y2 >= y1)                  
  {
    yinc1 = 1;
    yinc2 = 1;
  }
  else                           
  {
    yinc1 = -1;
    yinc2 = -1;
  }
  
  if (deltax >= deltay)          
  {
    xinc1 = 0;                   
    yinc2 = 0;                   
    den = deltax;
    num = deltax / 2;
    numadd = deltay;
    numpixels = deltax;          
  }
  else                           
  {
    xinc2 = 0;                   
    yinc1 = 0;                   
    den = deltay;
    num = deltay / 2;
    numadd = deltax;
    numpixels = deltay;          
  }
  
  for (curpixel = 0; curpixel <= numpixels; curpixel++)
  {
    PutPixel(x, y);              
    num += numadd;               
    if (num >= den)              
    {
      num -= den;                
      x += xinc1;                
      y += yinc1;                
    }
    x += xinc2;                  
    y += yinc2;                  
  }
}






 
void LCD_PolyLine(pPoint Points, uint16_t PointCount)
{
  int16_t X = 0, Y = 0;

  if(PointCount < 2)
  {
    return;
  }

  while(--PointCount)
  {
    X = Points->X;
    Y = Points->Y;
    Points++;
    LCD_DrawUniLine(X, Y, Points->X, Points->Y);
  }
}








 
static void LCD_PolyLineRelativeClosed(pPoint Points, uint16_t PointCount, uint16_t Closed)
{
  int16_t X = 0, Y = 0;
  pPoint First = Points;

  if(PointCount < 2)
  {
    return;
  }  
  X = Points->X;
  Y = Points->Y;
  while(--PointCount)
  {
    Points++;
    LCD_DrawUniLine(X, Y, X + Points->X, Y + Points->Y);
    X = X + Points->X;
    Y = Y + Points->Y;
  }
  if(Closed)
  {
    LCD_DrawUniLine(First->X, First->Y, X, Y);
  }  
}






 
void LCD_ClosedPolyLine(pPoint Points, uint16_t PointCount)
{
  LCD_PolyLine(Points, PointCount);
  LCD_DrawUniLine(Points->X, Points->Y, (Points+PointCount-1)->X, (Points+PointCount-1)->Y);
}






 
void LCD_PolyLineRelative(pPoint Points, uint16_t PointCount)
{
  LCD_PolyLineRelativeClosed(Points, PointCount, 0);
}






 
void LCD_ClosedPolyLineRelative(pPoint Points, uint16_t PointCount)
{
  LCD_PolyLineRelativeClosed(Points, PointCount, 1);
}







 
void LCD_FillPolyLine(pPoint Points, uint16_t PointCount)
{
   
  uint16_t  nodes = 0, nodeX[200], pixelX = 0, pixelY = 0, i = 0,
  j = 0, swap = 0;
  uint16_t  IMAGE_LEFT = 0, IMAGE_RIGHT = 0, IMAGE_TOP = 0, IMAGE_BOTTOM = 0;

  IMAGE_LEFT = IMAGE_RIGHT = Points->X;
  IMAGE_TOP= IMAGE_BOTTOM = Points->Y;

  for(i = 1; i < PointCount; i++)
  {
    pixelX = ((int32_t)((Points + i)->Y));
    if(pixelX < IMAGE_LEFT)
    {
      IMAGE_LEFT = pixelX;
    }
    if(pixelX > IMAGE_RIGHT)
    {
      IMAGE_RIGHT = pixelX;
    }
    
    pixelY = ((int32_t)((Points + i)->X));
    if(pixelY < IMAGE_TOP)
    { 
      IMAGE_TOP = pixelY;
    }
    if(pixelY > IMAGE_BOTTOM)
    {
      IMAGE_BOTTOM = pixelY;
    }
  }
  
  LCD_SetTextColor(BackColor);  

   
  for (pixelY = IMAGE_TOP; pixelY < IMAGE_BOTTOM; pixelY++) 
  {  
     
    nodes = 0; j = PointCount-1;

    for (i = 0; i < PointCount; i++) 
    {
      if (((((int32_t)((Points + i)->X))<(double) pixelY) && (((int32_t)((Points + j)->X))>=(double) pixelY)) ||           ((((int32_t)((Points + j)->X))<(double) pixelY) && (((int32_t)((Points + i)->X))>=(double) pixelY)))

      {
        nodeX[nodes++]=(int) (((int32_t)((Points + i)->Y))+((pixelY-((int32_t)((Points + i)->X)))*(((int32_t)((Points + j)->Y))-((int32_t)((Points + i)->Y))))/(((int32_t)((Points + j)->X))-((int32_t)((Points + i)->X)))); 
      }
      j = i; 
    }
  
     
    i = 0;
    while (i < nodes-1) 
    {
      if (nodeX[i]>nodeX[i+1]) 
      {
        swap = nodeX[i]; 
        nodeX[i] = nodeX[i+1]; 
        nodeX[i+1] = swap; 
        if(i)
        {
          i--; 
        }
      }
      else 
      {
        i++;
      }
    }
  
     
    for (i = 0; i < nodes; i+=2) 
    {
      if(nodeX[i] >= IMAGE_RIGHT) 
      {
        break;
      }
      if(nodeX[i+1] > IMAGE_LEFT) 
      {
        if (nodeX[i] < IMAGE_LEFT)
        {
          nodeX[i]=IMAGE_LEFT;
        }
        if(nodeX[i+1] > IMAGE_RIGHT)
        {
          nodeX[i+1] = IMAGE_RIGHT;
        }
        LCD_SetTextColor(BackColor);
        LCD_DrawLine(pixelY, nodeX[i+1], nodeX[i+1] - nodeX[i], 0x0000);
        LCD_SetTextColor(TextColor);
        PutPixel(pixelY, nodeX[i+1]);
        PutPixel(pixelY, nodeX[i]);
         
      }
    }
  } 
   
  LCD_SetTextColor(TextColor);
}







 
static void delay(volatile uint32_t nCount)
{
  volatile uint32_t index = 0; 
  for(index = (10000 * nCount); index != 0; index--)
  {
  }
}



  



  
  


  



  
  


   

 
