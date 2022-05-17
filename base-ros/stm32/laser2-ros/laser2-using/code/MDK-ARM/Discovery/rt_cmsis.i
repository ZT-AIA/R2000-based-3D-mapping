#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
































 



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



#line 1375 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

#line 39 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 46 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_TypeDef.h"
































 

 
typedef char               S8;
typedef unsigned char      U8;
typedef short              S16;
typedef unsigned short     U16;
typedef int                S32;
typedef unsigned int       U32;
typedef long long          S64;
typedef unsigned long long U64;
typedef unsigned char      BIT;
typedef unsigned int       BOOL;
typedef void               (*FUNCP)(void);

typedef U32     OS_TID;
typedef void    *OS_ID;
typedef U32     OS_RESULT;

typedef struct OS_TCB {
   
  U8     cb_type;                  
  U8     state;                    
  U8     prio;                     
  U8     task_id;                  
  struct OS_TCB *p_lnk;            
  struct OS_TCB *p_rlnk;           
  struct OS_TCB *p_dlnk;           
  struct OS_TCB *p_blnk;           
  U16    delta_time;               
  U16    interval_time;            
  U16    events;                   
  U16    waits;                    
  void   **msg;                    
  struct OS_MUCB *p_mlnk;          
  U8     prio_base;                

   
  U8     stack_frame;              
  U16    priv_stack;               
  U32    tsk_stack;                
  U32    *stack;                   

   
  FUNCP  ptask;                    
} *P_TCB;



typedef struct OS_PSFE {           
  void  *id;                       
  U32    arg;                      
} *P_PSFE;

typedef struct OS_PSQ {            
  U8     first;                    
  U8     last;                     
  U8     count;                    
  U8     size;                     
  struct OS_PSFE q[1];             
} *P_PSQ;

typedef struct OS_TSK {
  P_TCB  run;                      
  P_TCB  new;                      
} *P_TSK;

typedef struct OS_ROBIN {          
  P_TCB  task;                     
  U16    time;                     
  U16    tout;                     
} *P_ROBIN;

typedef struct OS_XCB {
  U8     cb_type;                  
  struct OS_TCB *p_lnk;            
  struct OS_TCB *p_rlnk;           
  struct OS_TCB *p_dlnk;           
  struct OS_TCB *p_blnk;           
  U16    delta_time;               
} *P_XCB;

typedef struct OS_MCB {
  U8     cb_type;                  
  U8     state;                    
  U8     isr_st;                   
  struct OS_TCB *p_lnk;            
  U16    first;                    
  U16    last;                     
  U16    count;                    
  U16    size;                     
  void   *msg[1];                  
} *P_MCB;

typedef struct OS_SCB {
  U8     cb_type;                  
  U8     mask;                     
  U16    tokens;                   
  struct OS_TCB *p_lnk;            
} *P_SCB;

typedef struct OS_MUCB {
  U8     cb_type;                  
  U16    level;                    
  struct OS_TCB *p_lnk;            
  struct OS_TCB *owner;            
  struct OS_MUCB *p_mlnk;          
} *P_MUCB;

typedef struct OS_XTMR {
  struct OS_TMR  *next;
  U16    tcnt;
} *P_XTMR;

typedef struct OS_TMR {
  struct OS_TMR  *next;            
  U16    tcnt;                     
  U16    info;                     
} *P_TMR;

typedef struct OS_BM {
  void *free;                      
  void *end;                       
  U32  blk_size;                   
} *P_BM;

 






 

#line 48 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\RTX_Config.h"
































 


 




 





 
extern U32 mp_tcb[];
extern U64 mp_stk[];
extern U32 os_fifo[];
extern void *os_active_TCB[];

 
extern U16 const os_maxtaskrun;
extern U32 const os_trv;
extern U8  const os_flags;
extern U32 const os_stackinfo;
extern U32 const os_rrobin;
extern U32 const os_clockrate;
extern U32 const os_timernum;
extern U16 const mp_tcb_size;
extern U32 const mp_stk_size;
extern U32 const *m_tmr;
extern U16 const mp_tmr_size;
extern U8  const os_fifo_size;

 
extern void os_idle_demon   (void);
extern int  os_tick_init    (void);
extern U32  os_tick_val     (void);
extern U32  os_tick_ovf     (void);
extern void os_tick_irqack  (void);
extern void os_tmr_call     (U16  info);
extern void os_error        (U32 err_code);



 
#line 49 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_System.h"
































 

 
typedef unsigned int       U32;

extern int os_tick_irqn;

 
extern U32  rt_suspend    (void);
extern void rt_resume     (U32 sleep_time);
extern void rt_tsk_lock   (void);
extern void rt_tsk_unlock (void);
extern void rt_psh_req    (void);
extern void rt_pop_req    (void);
extern void rt_systick    (void);
extern void rt_stk_check  (void);



 

#line 50 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.h"
































 

 

 
#line 48 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.h"

 









 
extern struct OS_TSK os_tsk;
extern struct OS_TCB os_idle_TCB;

 
extern void      rt_switch_req (P_TCB p_new);
extern void      rt_dispatch   (P_TCB next_TCB);
extern void      rt_block      (U16 timeout, U8 block_state);
extern void      rt_tsk_pass   (void);
extern OS_TID    rt_tsk_self   (void);
extern OS_RESULT rt_tsk_prio   (OS_TID task_id, U8 new_prio);
extern OS_TID    rt_tsk_create (FUNCP task, U32 prio_stksz, void *stk, void *argv);
extern OS_RESULT rt_tsk_delete (OS_TID task_id);

extern void      rt_sys_init   (void);
extern void      rt_sys_start  (void);






 






#line 51 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Event.h"
































 

 
extern OS_RESULT rt_evt_wait (U16 wait_flags,  U16 timeout, BOOL and_wait);
extern void      rt_evt_set  (U16 event_flags, OS_TID task_id);
extern void      rt_evt_clr  (U16 clear_flags, OS_TID task_id);
extern void      isr_evt_set (U16 event_flags, OS_TID task_id);
extern U16       rt_evt_get  (void);
extern void      rt_evt_psh  (P_TCB p_CB, U16 set_flags);



 

#line 52 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_List.h"
































 

 

 






 
extern struct OS_XCB os_rdy;
extern struct OS_XCB os_dly;

 
extern void  rt_put_prio      (P_XCB p_CB, P_TCB p_task);
extern P_TCB rt_get_first     (P_XCB p_CB);
extern void  rt_put_rdy_first (P_TCB p_task);
extern P_TCB rt_get_same_rdy_prio (void);
extern void  rt_resort_prio   (P_TCB p_task);
extern void  rt_put_dly       (P_TCB p_task, U16 delay);
extern void  rt_dec_dly       (void);
extern void  rt_rmv_list      (P_TCB p_task);
extern void  rt_rmv_dly       (P_TCB p_task);
extern void  rt_psq_enq       (OS_ID entry, U32 arg);

 





 

#line 53 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.h"
































 

 
extern U32 os_time;

 
extern U32  rt_time_get (void);
extern void rt_dly_wait (U16 delay_time);
extern void rt_itv_set  (U16 interval_time);
extern void rt_itv_wait (void);



 

#line 54 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mutex.h"
































 

 
extern void      rt_mut_init    (OS_ID mutex);
extern OS_RESULT rt_mut_delete  (OS_ID mutex);
extern OS_RESULT rt_mut_release (OS_ID mutex);
extern OS_RESULT rt_mut_wait    (OS_ID mutex, U16 timeout);



 

#line 55 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Semaphore.h"
































 

 
extern void      rt_sem_init  (OS_ID semaphore, U16 token_count);
extern OS_RESULT rt_sem_delete(OS_ID semaphore);
extern OS_RESULT rt_sem_send  (OS_ID semaphore);
extern OS_RESULT rt_sem_wait  (OS_ID semaphore, U16 timeout);
extern void      isr_sem_send (OS_ID semaphore);
extern void      rt_sem_psh (P_SCB p_CB);



 

#line 56 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.h"
































 

 
extern void      rt_mbx_init  (OS_ID mailbox, U16 mbx_size);
extern OS_RESULT rt_mbx_send  (OS_ID mailbox, void *p_msg,    U16 timeout);
extern OS_RESULT rt_mbx_wait  (OS_ID mailbox, void **message, U16 timeout);
extern OS_RESULT rt_mbx_check (OS_ID mailbox);
extern void      isr_mbx_send (OS_ID mailbox, void *p_msg);
extern OS_RESULT isr_mbx_receive (OS_ID mailbox, void **message);
extern void      rt_mbx_psh   (P_MCB p_CB,    void *p_msg);




 

#line 57 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.h"
































 

 


extern int     _init_box   (void *box_mem, U32 box_size, U32 blk_size);
extern void *rt_alloc_box  (void *box_mem);
extern void *  _calloc_box (void *box_mem);
extern int   rt_free_box   (void *box_mem, void *box);



 

#line 58 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Memory.h"
































 

 
typedef struct mem {               
  struct mem *next;                
  U32         len;                 
} MEMP;

 
extern int   rt_init_mem  (void *pool, U32  size);
extern void *rt_alloc_mem (void *pool, U32  size);
extern int   rt_free_mem  (void *pool, void *mem);
#line 59 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"
































 

 













#line 139 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"

 
#line 155 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"

#line 162 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"

#line 175 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"

 


 
#line 186 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"

 
extern BIT dbg_msg;

 
#line 198 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"

__inline static U32 rt_inc_qi (U32 size, U8 *count, U8 *first) {
  U32 cnt,c2;

  do {
    if ((cnt = __ldrex(count)) == size) {
      __clrex();
      return (cnt); }
  } while (__strex(cnt+1, count));
  do {
    c2 = (cnt = __ldrex(first)) + 1;
    if (c2 == size) c2 = 0;
  } while (__strex(c2, first));
#line 221 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"
  return (cnt);
}

__inline static void rt_systick_init (void) {
  (*((volatile U32 *)0xE000E014))  = os_trv;
  (*((volatile U32 *)0xE000E018)) = 0;
  (*((volatile U32 *)0xE000E010))    = 0x0007;
  (*((volatile U32 *)0xE000ED20))  |= 0xFF000000;
}

__inline static U32 rt_systick_val (void) {
  return (os_trv - (*((volatile U32 *)0xE000E018)));
}

__inline static U32 rt_systick_ovf (void) {
  return (((*((volatile U32 *)0xE000ED04)) >> 26) & 1);
}

__inline static void rt_svc_init (void) {

  int sh,prigroup;

  (*((volatile U32 *)0xE000ED20)) |= 0x00FF0000;



  sh       = 8 - __clz (~(((*((volatile U32 *)0xE000ED20)) << 8) & 0xFF000000));
  prigroup = (((*((volatile U32 *)0xE000ED0C)) >> 8) & 0x07);
  if (prigroup >= sh) {
    sh = prigroup + 1;
  }
  (*((volatile U32 *)0xE000ED1C)) = ((0xFEFFFFFF << sh) & 0xFF000000) | ((*((volatile U32 *)0xE000ED1C)) & 0x00FFFFFF);

}

extern void rt_set_PSP (U32 stack);
extern U32  rt_get_PSP (void);
extern void os_set_env (void);
extern void *_alloc_box (void *box_mem);
extern int  _free_box (void *box_mem, void *box);

extern void rt_init_stack (P_TCB p_TCB, FUNCP task_body);
extern void rt_ret_val  (P_TCB p_TCB, U32 v0);
extern void rt_ret_val2 (P_TCB p_TCB, U32 v0, U32 v1);

extern void dbg_init (void);
extern void dbg_task_notify (P_TCB p_tcb, BOOL create);
extern void dbg_task_switch (U32 task_id);

#line 280 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_HAL_CM.h"



 

#line 60 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"



#line 1 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"


















































 












































































 















#line 152 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"







#line 160 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 161 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"











typedef enum  {
  osPriorityIdle          = -3,          
  osPriorityLow           = -2,          
  osPriorityBelowNormal   = -1,          
  osPriorityNormal        =  0,          
  osPriorityAboveNormal   = +1,          
  osPriorityHigh          = +2,          
  osPriorityRealtime      = +3,          
  osPriorityError         =  0x84        
} osPriority;







typedef enum  {
  osOK                    =     0,       
  osEventSignal           =  0x08,       
  osEventMessage          =  0x10,       
  osEventMail             =  0x20,       
  osEventTimeout          =  0x40,       
  osErrorParameter        =  0x80,       
  osErrorResource         =  0x81,       
  osErrorTimeoutResource  =  0xC1,       
  osErrorISR              =  0x82,       
  osErrorISRRecursive     =  0x83,       
  osErrorPriority         =  0x84,       
  osErrorNoMemory         =  0x85,       
  osErrorValue            =  0x86,       
  osErrorOS               =  0xFF,       
  os_status_reserved      =  0x7FFFFFFF  
} osStatus;




typedef enum  {
  osTimerOnce             =     0,       
  osTimerPeriodic         =     1        
} os_timer_type;



typedef void (*os_pthread) (void const *argument);



typedef void (*os_ptimer) (void const *argument);





typedef struct OS_TCB *osThreadId;



typedef struct os_timer_cb *osTimerId;



typedef struct os_mutex_cb *osMutexId;



typedef struct os_semaphore_cb *osSemaphoreId;



typedef struct os_pool_cb *osPoolId;



typedef struct os_messageQ_cb *osMessageQId;



typedef struct os_mailQ_cb *osMailQId;




typedef struct os_thread_def  {
  os_pthread               pthread;    
  osPriority             tpriority;    
  uint32_t               instances;    
  uint32_t               stacksize;    
} osThreadDef_t;



typedef struct os_timer_def  {
  os_ptimer                 ptimer;    
  void                      *timer;    
} osTimerDef_t;



typedef struct os_mutex_def  {
  void                      *mutex;    
} osMutexDef_t;



typedef struct os_semaphore_def  {
  void                  *semaphore;    
} osSemaphoreDef_t;



typedef struct os_pool_def  {
  uint32_t                 pool_sz;    
  uint32_t                 item_sz;    
  void                       *pool;    
} osPoolDef_t;



typedef struct os_messageQ_def  {
  uint32_t                queue_sz;    
  void                       *pool;    
} osMessageQDef_t;



typedef struct os_mailQ_def  {
  uint32_t                queue_sz;    
  uint32_t                 item_sz;    
  void                       *pool;    
} osMailQDef_t;




typedef struct  {
  osStatus                 status;     
  union  {
    uint32_t                    v;     
    void                       *p;     
    int32_t               signals;     
  } value;                             
  union  {
    osMailQId             mail_id;     
    osMessageQId       message_id;     
  } def;                               
} osEvent;







osStatus osKernelInitialize (void);




osStatus osKernelStart (void);




int32_t osKernelRunning(void);



extern uint32_t const os_tickfreq;
extern uint16_t const os_tickus_i;
extern uint16_t const os_tickus_f;




uint32_t osKernelSysTick (void);










 













#line 381 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"













osThreadId osThreadCreate (const osThreadDef_t *thread_def, void *argument);




osThreadId osThreadGetId (void);





osStatus osThreadTerminate (osThreadId thread_id);




osStatus osThreadYield (void);






osStatus osThreadSetPriority (osThreadId thread_id, osPriority priority);





osPriority osThreadGetPriority (osThreadId thread_id);







osStatus osDelay (uint32_t millisec);

#line 442 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"








#line 459 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"














osTimerId osTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument);






osStatus osTimerStart (osTimerId timer_id, uint32_t millisec);





osStatus osTimerStop (osTimerId timer_id);





osStatus osTimerDelete (osTimerId timer_id);









int32_t osSignalSet (osThreadId thread_id, int32_t signals);






int32_t osSignalClear (osThreadId thread_id, int32_t signals);






__value_in_regs osEvent osSignalWait (int32_t signals, uint32_t millisec);








#line 533 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"












osMutexId osMutexCreate (const osMutexDef_t *mutex_def);






osStatus osMutexWait (osMutexId mutex_id, uint32_t millisec);





osStatus osMutexRelease (osMutexId mutex_id);





osStatus osMutexDelete (osMutexId mutex_id);










#line 583 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"













osSemaphoreId osSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count);






int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec);





osStatus osSemaphoreRelease (osSemaphoreId semaphore_id);





osStatus osSemaphoreDelete (osSemaphoreId semaphore_id);














#line 639 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"












osPoolId osPoolCreate (const osPoolDef_t *pool_def);





void *osPoolAlloc (osPoolId pool_id);





void *osPoolCAlloc (osPoolId pool_id);






osStatus osPoolFree (osPoolId pool_id, void *block);














#line 694 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"













osMessageQId osMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id);







osStatus osMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec);






__value_in_regs osEvent osMessageGet (osMessageQId queue_id, uint32_t millisec);














#line 748 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"













osMailQId osMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id);






void *osMailAlloc (osMailQId queue_id, uint32_t millisec);






void *osMailCAlloc (osMailQId queue_id, uint32_t millisec);






osStatus osMailPut (osMailQId queue_id, void *mail);






__value_in_regs osEvent osMailGet (osMailQId queue_id, uint32_t millisec);






osStatus osMailFree (osMailQId queue_id, void *mail);







uint32_t os_suspend (void);


void os_resume (uint32_t sleep_time);






#line 64 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 74 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"



















#line 100 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 108 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 116 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 124 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 132 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

#line 140 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"





#line 398 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"



typedef struct {
  void *fp;             
  void *arg;            
} osCallback;









extern       uint64_t  os_stack_mem[];
extern const uint32_t  os_stack_sz;


extern const osThreadDef_t   os_thread_def_osTimerThread;
extern       osThreadId      osThreadId_osTimerThread;
extern const osMessageQDef_t os_messageQ_def_osTimerMessageQ;
extern       osMessageQId    osMessageQId_osTimerMessageQ;





static uint32_t rt_ms2tick (uint32_t millisec) {
  uint32_t tick;

  if (millisec == 0xFFFFFFFF) return 0xFFFF; 
  if (millisec > 4000000) return 0xFFFE;        

  tick = ((1000 * millisec) + os_clockrate - 1)  / os_clockrate;
  if (tick > 0xFFFE) return 0xFFFE;
  
  return tick;
}


static P_TCB rt_tid2ptcb (osThreadId thread_id) {
  P_TCB ptcb;

  if (thread_id == 0) return 0;

  if ((uint32_t)thread_id & 3) return 0;

#line 453 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

  ptcb = thread_id;

  if (ptcb->cb_type != 0) return 0;

  return ptcb;
}


static void *rt_id2obj (void *id) {

  if ((uint32_t)id & 3) return 0;

#line 472 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"

  return id;
}




uint8_t os_initialized;                         
uint8_t os_running;                             


__svc_indirect(0) osStatus _svcKernelInitialize (osStatus(*)()); osStatus svcKernelInitialize (void); __attribute__((always_inline)) static __inline osStatus __svcKernelInitialize (void) { return _svcKernelInitialize(svcKernelInitialize); }
__svc_indirect(0) osStatus _svcKernelStart (osStatus(*)()); osStatus svcKernelStart (void); __attribute__((always_inline)) static __inline osStatus __svcKernelStart (void) { return _svcKernelStart(svcKernelStart); }
__svc_indirect(0) int32_t _svcKernelRunning (int32_t(*)()); int32_t svcKernelRunning (void); __attribute__((always_inline)) static __inline int32_t __svcKernelRunning (void) { return _svcKernelRunning(svcKernelRunning); }
__svc_indirect(0) uint32_t _svcKernelSysTick (uint32_t(*)()); uint32_t svcKernelSysTick (void); __attribute__((always_inline)) static __inline uint32_t __svcKernelSysTick (void) { return _svcKernelSysTick(svcKernelSysTick); }

static void  sysThreadError   (osStatus status);
osThreadId   svcThreadCreate  (const osThreadDef_t *thread_def, void *argument);
osMessageQId svcMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id);




osStatus svcKernelInitialize (void) {
  int ret;

  if (!os_initialized) {

    
    if ((uint32_t)os_stack_mem & 7) return osErrorNoMemory;
    ret = rt_init_mem(os_stack_mem, os_stack_sz);
    if (ret != 0) return osErrorNoMemory;

    rt_sys_init();                              
  }

  os_tsk.run->prio = 255;                       

  if (!os_initialized) {
    
    osMessageQId_osTimerMessageQ = svcMessageCreate (&os_messageQ_def_osTimerMessageQ, 0);
    osThreadId_osTimerThread = svcThreadCreate(&os_thread_def_osTimerThread, 0);
  }

  sysThreadError(osOK);

  os_initialized = 1;
  os_running = 0;

  return osOK;
}


osStatus svcKernelStart (void) {

  if (os_running) return osOK;

  rt_tsk_prio(0, os_tsk.run->prio_base);        
  if (os_tsk.run->task_id == 0xFF) {            
    __set_PSP(os_tsk.run->tsk_stack + 8*4);     
  }
  if (os_tsk.new == 0) {                     
    os_tsk.new = os_tsk.run;
    os_tsk.run = 0;
  }

  rt_sys_start();

  os_running = 1;

  return osOK;
}


int32_t svcKernelRunning (void) {
  return os_running;
}


uint32_t svcKernelSysTick (void) {
  uint32_t tick, tick0;

  tick = os_tick_val();
  if (os_tick_ovf()) {
    tick0 = os_tick_val();
    if (tick0 < tick) tick = tick0;
    tick += (os_trv + 1) * (os_time + 1);
  } else {
    tick += (os_trv + 1) *  os_time;
  }

  return tick;
}




osStatus osKernelInitialize (void) {
  if (__get_IPSR() != 0) return osErrorISR;     
  if ((__get_CONTROL() & 1) == 0) {             
    return   svcKernelInitialize();
  } else {
    return __svcKernelInitialize();
  }
}


osStatus osKernelStart (void) {
  uint32_t stack[8];

  if (__get_IPSR() != 0) return osErrorISR;     
  switch (__get_CONTROL() & 0x03) {
    case 0x00:                                  
      __set_PSP((uint32_t)(stack + 8));         
      if (os_flags & 1) {                       
        __set_CONTROL(0x02);                    
      } else {
        __set_CONTROL(0x03);                    
      }
      __dsb(0xF);
      __isb(0xF);
      break;
    case 0x01:                                  
      return osErrorOS;
    case 0x02:                                  
      if ((os_flags & 1) == 0) {                
        __set_CONTROL(0x03);                    
        __dsb(0xF);
        __isb(0xF);
      }
      break;
    case 0x03:                                  
      if  (os_flags & 1) return osErrorOS;      
      break;
  }
  return __svcKernelStart();
}


int32_t osKernelRunning (void) {
  if ((__get_IPSR() != 0) || ((__get_CONTROL() & 1) == 0)) {
    
    return os_running;
  } else {
    return __svcKernelRunning();
  }
}


uint32_t osKernelSysTick (void) {
  if (__get_IPSR() != 0) return 0;              
  return __svcKernelSysTick();
}





static void sysThreadError (osStatus status) {
  
}

__declspec(noreturn) void osThreadExit (void);


__svc_indirect(0) osThreadId _svcThreadCreate (osThreadId(*)(const osThreadDef_t *,void *),const osThreadDef_t *,void *); osThreadId svcThreadCreate (const osThreadDef_t * a1, void * a2); __attribute__((always_inline)) static __inline osThreadId __svcThreadCreate (const osThreadDef_t * a1, void * a2) { return _svcThreadCreate(svcThreadCreate,a1,a2); }
__svc_indirect(0) osThreadId _svcThreadGetId (osThreadId(*)()); osThreadId svcThreadGetId (void); __attribute__((always_inline)) static __inline osThreadId __svcThreadGetId (void) { return _svcThreadGetId(svcThreadGetId); }
__svc_indirect(0) osStatus _svcThreadTerminate (osStatus(*)(osThreadId),osThreadId); osStatus svcThreadTerminate (osThreadId a1); __attribute__((always_inline)) static __inline osStatus __svcThreadTerminate (osThreadId a1) { return _svcThreadTerminate(svcThreadTerminate,a1); }
__svc_indirect(0) osStatus _svcThreadYield (osStatus(*)()); osStatus svcThreadYield (void); __attribute__((always_inline)) static __inline osStatus __svcThreadYield (void) { return _svcThreadYield(svcThreadYield); }
__svc_indirect(0) osStatus _svcThreadSetPriority (osStatus(*)(osThreadId,osPriority),osThreadId,osPriority); osStatus svcThreadSetPriority (osThreadId a1, osPriority a2); __attribute__((always_inline)) static __inline osStatus __svcThreadSetPriority (osThreadId a1, osPriority a2) { return _svcThreadSetPriority(svcThreadSetPriority,a1,a2); }
__svc_indirect(0) osPriority _svcThreadGetPriority (osPriority(*)(osThreadId),osThreadId); osPriority svcThreadGetPriority (osThreadId a1); __attribute__((always_inline)) static __inline osPriority __svcThreadGetPriority (osThreadId a1) { return _svcThreadGetPriority(svcThreadGetPriority,a1); }




osThreadId svcThreadCreate (const osThreadDef_t *thread_def, void *argument) {
  P_TCB  ptcb;
  OS_TID tsk;
  void  *stk;

  if ((thread_def == 0) ||
      (thread_def->pthread == 0) ||
      (thread_def->tpriority < osPriorityIdle) ||
      (thread_def->tpriority > osPriorityRealtime)) {
    sysThreadError(osErrorParameter); 
    return 0; 
  }

  if (thread_def->stacksize != 0) {             
    stk = rt_alloc_mem(                         
      os_stack_mem,
      thread_def->stacksize
    );
    if (stk == 0) { 
      sysThreadError(osErrorNoMemory);          
      return 0;
    }
  } else {                                      
    stk = 0;
  }

  tsk = rt_tsk_create(                          
    (FUNCP)thread_def->pthread,                 
    (thread_def->tpriority-osPriorityIdle+1) |  
    (thread_def->stacksize << 8),               
    stk,                                        
    argument                                    
  );

  if (tsk == 0) {                               
    if (stk != 0) {
      rt_free_mem(os_stack_mem, stk);           
    }
    sysThreadError(osErrorNoMemory);            
    return 0;
  }

  ptcb = (P_TCB)os_active_TCB[tsk - 1];         

  *((uint32_t *)ptcb->tsk_stack + 13) = (uint32_t)osThreadExit;

  return ptcb;
}


osThreadId svcThreadGetId (void) {
  OS_TID tsk;

  tsk = rt_tsk_self();
  if (tsk == 0) return 0;
  return (P_TCB)os_active_TCB[tsk - 1];
}


osStatus svcThreadTerminate (osThreadId thread_id) {
  OS_RESULT res;
  P_TCB     ptcb;
  void     *stk;

  ptcb = rt_tid2ptcb(thread_id);                
  if (ptcb == 0) return osErrorParameter;

  stk = ptcb->priv_stack ? ptcb->stack : 0;  

  res = rt_tsk_delete(ptcb->task_id);           

  if (res == 0xff) return osErrorResource;  

  if (stk != 0) {                            
    rt_free_mem(os_stack_mem, stk);             
  }

  return osOK;
}


osStatus svcThreadYield (void) {
  rt_tsk_pass();                                
  return osOK;
}


osStatus svcThreadSetPriority (osThreadId thread_id, osPriority priority) {
  OS_RESULT res;
  P_TCB     ptcb;

  ptcb = rt_tid2ptcb(thread_id);                
  if (ptcb == 0) return osErrorParameter;

  if ((priority < osPriorityIdle) || (priority > osPriorityRealtime)) {
    return osErrorValue;
  }

  res = rt_tsk_prio(                            
    ptcb->task_id,                              
    priority - osPriorityIdle + 1               
  );

  if (res == 0xff) return osErrorResource;  

  return osOK;
}


osPriority svcThreadGetPriority (osThreadId thread_id) {
  P_TCB ptcb;

  ptcb = rt_tid2ptcb(thread_id);                
  if (ptcb == 0) return osPriorityError;

  return (osPriority)(ptcb->prio - 1 + osPriorityIdle); 
}





osThreadId osThreadCreate (const osThreadDef_t *thread_def, void *argument) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return   svcThreadCreate(thread_def, argument);
  } else {
    return __svcThreadCreate(thread_def, argument);
  }
}


osThreadId osThreadGetId (void) {
  if (__get_IPSR() != 0) return 0;           
  return __svcThreadGetId();
}


osStatus osThreadTerminate (osThreadId thread_id) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcThreadTerminate(thread_id);
}


osStatus osThreadYield (void) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcThreadYield();
}


osStatus osThreadSetPriority (osThreadId thread_id, osPriority priority) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcThreadSetPriority(thread_id, priority);
}


osPriority osThreadGetPriority (osThreadId thread_id) {
  if (__get_IPSR() != 0) return osPriorityError;
  return __svcThreadGetPriority(thread_id);
}



__declspec(noreturn) void osThreadExit (void) { 
  __svcThreadTerminate(__svcThreadGetId()); 
  for (;;);                                     
}





__svc_indirect(0) osStatus _svcDelay (osStatus(*)(uint32_t),uint32_t); osStatus svcDelay (uint32_t a1); __attribute__((always_inline)) static __inline osStatus __svcDelay (uint32_t a1) { return _svcDelay(svcDelay,a1); }







osStatus svcDelay (uint32_t millisec) {
  if (millisec == 0) return osOK;
  rt_dly_wait(rt_ms2tick(millisec));
  return osEventTimeout;
}


#line 851 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"





osStatus osDelay (uint32_t millisec) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcDelay(millisec);
}


__value_in_regs osEvent osWait (uint32_t millisec) {
  osEvent ret;


  ret.status = osErrorOS;
  return ret;
#line 875 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_CMSIS.c"
}











typedef struct os_timer_cb_ {                   
  struct os_timer_cb_ *next;                    
  uint8_t             state;                    
  uint8_t              type;                    
  uint16_t         reserved;                    
  uint16_t             tcnt;                    
  uint16_t             icnt;                    
  void                 *arg;                    
  const osTimerDef_t *timer;                    
} os_timer_cb;


os_timer_cb *os_timer_head;                     





static void rt_timer_insert (os_timer_cb *pt, uint32_t tcnt) {
  os_timer_cb *p, *prev;

  prev = 0;
  p = os_timer_head;
  while (p != 0) {
    if (tcnt < p->tcnt) break;
    tcnt -= p->tcnt;
    prev = p;
    p = p->next;
  }
  pt->next = p;
  pt->tcnt = (uint16_t)tcnt;
  if (p != 0) {
    p->tcnt -= pt->tcnt;
  }
  if (prev != 0) {
    prev->next = pt;
  } else {
    os_timer_head = pt;
  }
}


static int rt_timer_remove (os_timer_cb *pt) {
  os_timer_cb *p, *prev;

  prev = 0;
  p = os_timer_head;
  while (p != 0) {
    if (p == pt) break;
    prev = p;
    p = p->next;
  }
  if (p == 0) return -1;
  if (prev != 0) {
    prev->next = pt->next;
  } else {
    os_timer_head = pt->next;
  }
  if (pt->next != 0) {
    pt->next->tcnt += pt->tcnt;
  }

  return 0;
}



__svc_indirect(0) osTimerId _svcTimerCreate (osTimerId(*)(const osTimerDef_t *,os_timer_type,void *),const osTimerDef_t *,os_timer_type,void *); osTimerId svcTimerCreate (const osTimerDef_t * a1, os_timer_type a2, void * a3); __attribute__((always_inline)) static __inline osTimerId __svcTimerCreate (const osTimerDef_t * a1, os_timer_type a2, void * a3) { return _svcTimerCreate(svcTimerCreate,a1,a2,a3); }
__svc_indirect(0) osStatus _svcTimerStart (osStatus(*)(osTimerId,uint32_t),osTimerId,uint32_t); osStatus svcTimerStart (osTimerId a1, uint32_t a2); __attribute__((always_inline)) static __inline osStatus __svcTimerStart (osTimerId a1, uint32_t a2) { return _svcTimerStart(svcTimerStart,a1,a2); }
__svc_indirect(0) osStatus _svcTimerStop (osStatus(*)(osTimerId),osTimerId); osStatus svcTimerStop (osTimerId a1); __attribute__((always_inline)) static __inline osStatus __svcTimerStop (osTimerId a1) { return _svcTimerStop(svcTimerStop,a1); }
__svc_indirect(0) osStatus _svcTimerDelete (osStatus(*)(osTimerId),osTimerId); osStatus svcTimerDelete (osTimerId a1); __attribute__((always_inline)) static __inline osStatus __svcTimerDelete (osTimerId a1) { return _svcTimerDelete(svcTimerDelete,a1); }
__svc_indirect(0) __value_in_regs osCallback _svcTimerCall (__value_in_regs osCallback(*)(osTimerId),osTimerId); __value_in_regs osCallback svcTimerCall (osTimerId a1); __attribute__((always_inline)) static __inline __value_in_regs osCallback __svcTimerCall (osTimerId a1) { return _svcTimerCall(svcTimerCall,a1); }




osTimerId svcTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument) {
  os_timer_cb *pt;

  if ((timer_def == 0) || (timer_def->ptimer == 0)) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  pt = timer_def->timer;
  if (pt == 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  if ((type != osTimerOnce) && (type != osTimerPeriodic)) {
    sysThreadError(osErrorValue);
    return 0;
  }

  if (osThreadId_osTimerThread == 0) {
    sysThreadError(osErrorResource);
    return 0;
  }

  if (pt->state != 0){
    sysThreadError(osErrorResource);
    return 0;
  }

  pt->next  = 0;
  pt->state = 1;
  pt->type  =  (uint8_t)type;
  pt->arg   = argument;
  pt->timer = timer_def;

  return (osTimerId)pt;
}


osStatus svcTimerStart (osTimerId timer_id, uint32_t millisec) {
  os_timer_cb *pt;
  uint32_t     tcnt;

  pt = rt_id2obj(timer_id);
  if (pt == 0) return osErrorParameter;

  tcnt = rt_ms2tick(millisec);
  if (tcnt == 0) return osErrorValue;

  switch (pt->state) {
    case 2:
      if (rt_timer_remove(pt) != 0) {
        return osErrorResource;
      }
      break;
    case 1:
      pt->state = 2;
      pt->icnt  = (uint16_t)tcnt;
      break;
    default:
      return osErrorResource;
  }
  
  rt_timer_insert(pt, tcnt);

  return osOK;
}


osStatus svcTimerStop (osTimerId timer_id) {
  os_timer_cb *pt;

  pt = rt_id2obj(timer_id);
  if (pt == 0) return osErrorParameter;

  if (pt->state != 2) return osErrorResource;

  pt->state = 1;

  if (rt_timer_remove(pt) != 0) {
    return osErrorResource;
  }

  return osOK;
}


osStatus svcTimerDelete (osTimerId timer_id) {
  os_timer_cb *pt;

  pt = rt_id2obj(timer_id);
  if (pt == 0) return osErrorParameter;

  switch (pt->state) {
    case 2:
      rt_timer_remove(pt);
      break;
    case 1:
      break;
    default:
      return osErrorResource;
  }

  pt->state = 0;

  return osOK;
}


__value_in_regs osCallback svcTimerCall (osTimerId timer_id) {
  os_timer_cb *pt;
  osCallback   ret;

  pt = rt_id2obj(timer_id);
  if (pt == 0) {
    ret.fp  = 0;
    ret.arg = 0;
    return ret;
  }

  ret.fp  = (void *)pt->timer->ptimer;
  ret.arg = pt->arg;

  return ret;
}

static __inline osStatus isrMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec);


void sysTimerTick (void) {
  os_timer_cb *pt, *p;

  p = os_timer_head;
  if (p == 0) return;

  p->tcnt--;
  while ((p != 0) && (p->tcnt == 0)) {
    pt = p;
    p = p->next;
    os_timer_head = p;
    isrMessagePut(osMessageQId_osTimerMessageQ, (uint32_t)pt, 0);
    if (pt->type == osTimerPeriodic) {
      rt_timer_insert(pt, pt->icnt);
    } else {
      pt->state = 1;
    }
  }
}


uint32_t sysUserTimerWakeupTime (void) {

  if (os_timer_head) {
    return os_timer_head->tcnt;
  }
  return 0xFFFF;
}


void sysUserTimerUpdate (uint32_t sleep_time) {

  while (os_timer_head && sleep_time) {
    if (sleep_time >= os_timer_head->tcnt) {
      sleep_time -= os_timer_head->tcnt;
      os_timer_head->tcnt = 1;
      sysTimerTick();
    } else {
      os_timer_head->tcnt -= sleep_time;
      break;
    }
  }
}





osTimerId osTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return   svcTimerCreate(timer_def, type, argument);
  } else {
    return __svcTimerCreate(timer_def, type, argument);
  }
}


osStatus osTimerStart (osTimerId timer_id, uint32_t millisec) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcTimerStart(timer_id, millisec);
}


osStatus osTimerStop (osTimerId timer_id) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcTimerStop(timer_id);
}


osStatus osTimerDelete (osTimerId timer_id) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcTimerDelete(timer_id);
}



__value_in_regs osCallback osTimerCall (osTimerId timer_id) { 
  return __svcTimerCall(timer_id); 
}



__declspec(noreturn) void osTimerThread (void const *argument) {
  osCallback cb;
  osEvent    evt;

  for (;;) {
    evt = osMessageGet(osMessageQId_osTimerMessageQ, 0xFFFFFFFF);
    if (evt.status == osEventMessage) {
      cb = osTimerCall(evt.value.p);
      if (cb.fp != 0) {
        (*(os_ptimer)cb.fp)(cb.arg);
      }
    }
  }
}





__svc_indirect(0) int32_t _svcSignalSet (int32_t(*)(osThreadId,int32_t),osThreadId,int32_t); int32_t svcSignalSet (osThreadId a1, int32_t a2); __attribute__((always_inline)) static __inline int32_t __svcSignalSet (osThreadId a1, int32_t a2) { return _svcSignalSet(svcSignalSet,a1,a2); }
__svc_indirect(0) int32_t _svcSignalClear (int32_t(*)(osThreadId,int32_t),osThreadId,int32_t); int32_t svcSignalClear (osThreadId a1, int32_t a2); __attribute__((always_inline)) static __inline int32_t __svcSignalClear (osThreadId a1, int32_t a2) { return _svcSignalClear(svcSignalClear,a1,a2); }
__svc_indirect(0) __value_in_regs osEvent _svcSignalWait (__value_in_regs osEvent(*)(int32_t,uint32_t),int32_t,uint32_t); __value_in_regs osEvent svcSignalWait (int32_t a1, uint32_t a2); __attribute__((always_inline)) static __inline __value_in_regs osEvent __svcSignalWait (int32_t a1, uint32_t a2) { return _svcSignalWait(svcSignalWait,a1,a2); }




int32_t svcSignalSet (osThreadId thread_id, int32_t signals) {
  P_TCB   ptcb;
  int32_t sig;

  ptcb = rt_tid2ptcb(thread_id);                
  if (ptcb == 0) return 0x80000000;

  if (signals & (0xFFFFFFFF << 16)) return 0x80000000;

  sig = ptcb->events;                           

  rt_evt_set(signals, ptcb->task_id);           

  return sig;
}


int32_t svcSignalClear (osThreadId thread_id, int32_t signals) {
  P_TCB   ptcb;
  int32_t sig;

  ptcb = rt_tid2ptcb(thread_id);                
  if (ptcb == 0) return 0x80000000;

  if (signals & (0xFFFFFFFF << 16)) return 0x80000000;

  sig = ptcb->events;                           

  rt_evt_clr(signals, ptcb->task_id);           

  return sig;
}


__value_in_regs osEvent svcSignalWait (int32_t signals, uint32_t millisec) {
  OS_RESULT res;
  osEvent   ret;

  if (signals & (0xFFFFFFFF << 16)) {
    ret.status = osErrorValue;
    return ret;
  }

  if (signals != 0) {                           
    res = rt_evt_wait(signals, rt_ms2tick(millisec), 1);
  } else {                                      
    res = rt_evt_wait(0xFFFF,  rt_ms2tick(millisec), 0);
  }

  if (res == 0x02) {
    ret.status = osEventSignal;
    ret.value.signals = signals ? signals : os_tsk.run->waits;
  } else {
    ret.status = millisec ? osEventTimeout : osOK;
    ret.value.signals = 0;
  }

  return ret;
}





static __inline int32_t isrSignalSet (osThreadId thread_id, int32_t signals) {
  P_TCB   ptcb;
  int32_t sig;

  ptcb = rt_tid2ptcb(thread_id);                
  if (ptcb == 0) return 0x80000000;

  if (signals & (0xFFFFFFFF << 16)) return 0x80000000;

  sig = ptcb->events;                           

  isr_evt_set(signals, ptcb->task_id);          

  return sig;
}





int32_t osSignalSet (osThreadId thread_id, int32_t signals) {
  if (__get_IPSR() != 0) {                      
    return   isrSignalSet(thread_id, signals); 
  } else {                                      
    return __svcSignalSet(thread_id, signals);
  }
}


int32_t osSignalClear (osThreadId thread_id, int32_t signals) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcSignalClear(thread_id, signals);
}


__value_in_regs osEvent osSignalWait (int32_t signals, uint32_t millisec) {
  osEvent ret;

  if (__get_IPSR() != 0) {                      
    ret.status = osErrorISR;
    return ret;
  }
  return __svcSignalWait(signals, millisec);
}





__svc_indirect(0) osMutexId _svcMutexCreate (osMutexId(*)(const osMutexDef_t *),const osMutexDef_t *); osMutexId svcMutexCreate (const osMutexDef_t * a1); __attribute__((always_inline)) static __inline osMutexId __svcMutexCreate (const osMutexDef_t * a1) { return _svcMutexCreate(svcMutexCreate,a1); }
__svc_indirect(0) osStatus _svcMutexWait (osStatus(*)(osMutexId,uint32_t),osMutexId,uint32_t); osStatus svcMutexWait (osMutexId a1, uint32_t a2); __attribute__((always_inline)) static __inline osStatus __svcMutexWait (osMutexId a1, uint32_t a2) { return _svcMutexWait(svcMutexWait,a1,a2); }
__svc_indirect(0) osStatus _svcMutexRelease (osStatus(*)(osMutexId),osMutexId); osStatus svcMutexRelease (osMutexId a1); __attribute__((always_inline)) static __inline osStatus __svcMutexRelease (osMutexId a1) { return _svcMutexRelease(svcMutexRelease,a1); }
__svc_indirect(0) osStatus _svcMutexDelete (osStatus(*)(osMutexId),osMutexId); osStatus svcMutexDelete (osMutexId a1); __attribute__((always_inline)) static __inline osStatus __svcMutexDelete (osMutexId a1) { return _svcMutexDelete(svcMutexDelete,a1); }




osMutexId svcMutexCreate (const osMutexDef_t *mutex_def) {
  OS_ID mut;

  if (mutex_def == 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  mut = mutex_def->mutex;
  if (mut == 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  if (((P_MUCB)mut)->cb_type != 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  rt_mut_init(mut);                             

  return mut;
}


osStatus svcMutexWait (osMutexId mutex_id, uint32_t millisec) {
  OS_ID     mut;
  OS_RESULT res;

  mut = rt_id2obj(mutex_id);
  if (mut == 0) return osErrorParameter;

  if (((P_MUCB)mut)->cb_type != 3) return osErrorParameter;

  res = rt_mut_wait(mut, rt_ms2tick(millisec)); 

  if (res == 0x01) {
    return (millisec ? osErrorTimeoutResource : osErrorResource);
  }

  return osOK;
}


osStatus svcMutexRelease (osMutexId mutex_id) {
  OS_ID     mut;
  OS_RESULT res;

  mut = rt_id2obj(mutex_id);
  if (mut == 0) return osErrorParameter;

  if (((P_MUCB)mut)->cb_type != 3) return osErrorParameter;

  res = rt_mut_release(mut);                    

  if (res == 0xff) return osErrorResource;  

  return osOK;
}


osStatus svcMutexDelete (osMutexId mutex_id) {
  OS_ID mut;

  mut = rt_id2obj(mutex_id);
  if (mut == 0) return osErrorParameter;

  if (((P_MUCB)mut)->cb_type != 3) return osErrorParameter;

  rt_mut_delete(mut);                           

  return osOK;
}





osMutexId osMutexCreate (const osMutexDef_t *mutex_def) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return    svcMutexCreate(mutex_def);
  } else {
    return __svcMutexCreate(mutex_def);
  }
}


osStatus osMutexWait (osMutexId mutex_id, uint32_t millisec) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcMutexWait(mutex_id, millisec);
}


osStatus osMutexRelease (osMutexId mutex_id) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcMutexRelease(mutex_id);
}


osStatus osMutexDelete (osMutexId mutex_id) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcMutexDelete(mutex_id);
}





__svc_indirect(0) osSemaphoreId _svcSemaphoreCreate (osSemaphoreId(*)(const osSemaphoreDef_t *,int32_t),const osSemaphoreDef_t *,int32_t); osSemaphoreId svcSemaphoreCreate (const osSemaphoreDef_t * a1, int32_t a2); __attribute__((always_inline)) static __inline osSemaphoreId __svcSemaphoreCreate (const osSemaphoreDef_t * a1, int32_t a2) { return _svcSemaphoreCreate(svcSemaphoreCreate,a1,a2); }
__svc_indirect(0) int32_t _svcSemaphoreWait (int32_t(*)(osSemaphoreId,uint32_t),osSemaphoreId,uint32_t); int32_t svcSemaphoreWait (osSemaphoreId a1, uint32_t a2); __attribute__((always_inline)) static __inline int32_t __svcSemaphoreWait (osSemaphoreId a1, uint32_t a2) { return _svcSemaphoreWait(svcSemaphoreWait,a1,a2); }
__svc_indirect(0) osStatus _svcSemaphoreRelease (osStatus(*)(osSemaphoreId),osSemaphoreId); osStatus svcSemaphoreRelease (osSemaphoreId a1); __attribute__((always_inline)) static __inline osStatus __svcSemaphoreRelease (osSemaphoreId a1) { return _svcSemaphoreRelease(svcSemaphoreRelease,a1); }
__svc_indirect(0) osStatus _svcSemaphoreDelete (osStatus(*)(osSemaphoreId),osSemaphoreId); osStatus svcSemaphoreDelete (osSemaphoreId a1); __attribute__((always_inline)) static __inline osStatus __svcSemaphoreDelete (osSemaphoreId a1) { return _svcSemaphoreDelete(svcSemaphoreDelete,a1); }




osSemaphoreId svcSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count) {
  OS_ID sem;

  if (semaphore_def == 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  sem = semaphore_def->semaphore;
  if (sem == 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  if (((P_SCB)sem)->cb_type != 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  if (count > 65535) {
    sysThreadError(osErrorValue);
    return 0;
  }

  rt_sem_init(sem, count);                      
  
  return sem;
}


int32_t svcSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec) {
  OS_ID     sem;
  OS_RESULT res;

  sem = rt_id2obj(semaphore_id);
  if (sem == 0) return -1;

  if (((P_SCB)sem)->cb_type != 2) return -1;

  res = rt_sem_wait(sem, rt_ms2tick(millisec)); 

  if (res == 0x01) return 0;                

  return (((P_SCB)sem)->tokens + 1);
}


osStatus svcSemaphoreRelease (osSemaphoreId semaphore_id) {
  OS_ID sem;

  sem = rt_id2obj(semaphore_id);
  if (sem == 0) return osErrorParameter;

  if (((P_SCB)sem)->cb_type != 2) return osErrorParameter;

  if (((P_SCB)sem)->tokens == 65535) return osErrorResource;
  
  rt_sem_send(sem);                             

  return osOK;
}


osStatus svcSemaphoreDelete (osSemaphoreId semaphore_id) {
  OS_ID sem;

  sem = rt_id2obj(semaphore_id);
  if (sem == 0) return osErrorParameter;

  if (((P_SCB)sem)->cb_type != 2) return osErrorParameter;

  rt_sem_delete(sem);                           

  return osOK;
}





static __inline osStatus isrSemaphoreRelease (osSemaphoreId semaphore_id) {
  OS_ID sem;

  sem = rt_id2obj(semaphore_id);
  if (sem == 0) return osErrorParameter;

  if (((P_SCB)sem)->cb_type != 2) return osErrorParameter;

  if (((P_SCB)sem)->tokens == 65535) return osErrorResource;

  isr_sem_send(sem);                            

  return osOK;
}





osSemaphoreId osSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return   svcSemaphoreCreate(semaphore_def, count);
  } else {
    return __svcSemaphoreCreate(semaphore_def, count);
  }
}


int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec) {
  if (__get_IPSR() != 0) return -1;             
  return __svcSemaphoreWait(semaphore_id, millisec);
}


osStatus osSemaphoreRelease (osSemaphoreId semaphore_id) {
  if (__get_IPSR() != 0) {                      
    return   isrSemaphoreRelease(semaphore_id);
  } else {                                      
    return __svcSemaphoreRelease(semaphore_id);
  }
}


osStatus osSemaphoreDelete (osSemaphoreId semaphore_id) {
  if (__get_IPSR() != 0) return osErrorISR;     
  return __svcSemaphoreDelete(semaphore_id);
}







static void rt_clr_box (void *box_mem, void *box) {
  uint32_t *p, n;

  if (box) {
    p = box;
    for (n = ((P_BM)box_mem)->blk_size; n; n -= 4) {
      *p++ = 0;
    }
  }
}


__svc_indirect(0) osPoolId _svcPoolCreate (osPoolId(*)(const osPoolDef_t *),const osPoolDef_t *); osPoolId svcPoolCreate (const osPoolDef_t * a1); __attribute__((always_inline)) static __inline osPoolId __svcPoolCreate (const osPoolDef_t * a1) { return _svcPoolCreate(svcPoolCreate,a1); }
__svc_indirect(0) void * _sysPoolAlloc (void *(*)(osPoolId,uint32_t),osPoolId,uint32_t); void * sysPoolAlloc (osPoolId a1, uint32_t a2); __attribute__((always_inline)) static __inline void * __sysPoolAlloc (osPoolId a1, uint32_t a2) { return _sysPoolAlloc(sysPoolAlloc,a1,a2); }
__svc_indirect(0) osStatus _sysPoolFree (osStatus(*)(osPoolId,void *),osPoolId,void *); osStatus sysPoolFree (osPoolId a1, void * a2); __attribute__((always_inline)) static __inline osStatus __sysPoolFree (osPoolId a1, void * a2) { return _sysPoolFree(sysPoolFree,a1,a2); }




osPoolId svcPoolCreate (const osPoolDef_t *pool_def) {
  uint32_t blk_sz;

  if ((pool_def == 0) ||
      (pool_def->pool_sz == 0) ||
      (pool_def->item_sz == 0) ||
      (pool_def->pool == 0)) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  blk_sz = (pool_def->item_sz + 3) & ~3;

  _init_box(pool_def->pool, sizeof(struct OS_BM) + pool_def->pool_sz * blk_sz, blk_sz);

  return pool_def->pool;
}


void *sysPoolAlloc (osPoolId pool_id, uint32_t clr) {
  void *ptr;

  if (pool_id == 0) return 0;

  ptr = rt_alloc_box(pool_id);
  if (clr) {
    rt_clr_box(pool_id, ptr);
  }

  return ptr;
}


osStatus sysPoolFree (osPoolId pool_id, void *block) {
  int32_t res;
    
  if (pool_id == 0) return osErrorParameter;

  res = rt_free_box(pool_id, block);
  if (res != 0) return osErrorValue;

  return osOK;
}





osPoolId osPoolCreate (const osPoolDef_t *pool_def) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return   svcPoolCreate(pool_def);
  } else {
    return __svcPoolCreate(pool_def);
  }
}


void *osPoolAlloc (osPoolId pool_id) {
  if ((__get_IPSR() != 0) || ((__get_CONTROL() & 1) == 0)) {    
    return   sysPoolAlloc(pool_id, 0);
  } else {                                      
    return __sysPoolAlloc(pool_id, 0);
  }
}


void *osPoolCAlloc (osPoolId pool_id) {
  if ((__get_IPSR() != 0) || ((__get_CONTROL() & 1) == 0)) {    
    return   sysPoolAlloc(pool_id, 1);
  } else {                                      
    return __sysPoolAlloc(pool_id, 1);
  }
}


osStatus osPoolFree (osPoolId pool_id, void *block) {
  if ((__get_IPSR() != 0) || ((__get_CONTROL() & 1) == 0)) {    
    return   sysPoolFree(pool_id, block);
  } else {                                      
    return __sysPoolFree(pool_id, block);
  }
}





__svc_indirect(0) osMessageQId _svcMessageCreate (osMessageQId(*)(const osMessageQDef_t *,osThreadId),const osMessageQDef_t *,osThreadId); osMessageQId svcMessageCreate (const osMessageQDef_t * a1, osThreadId a2); __attribute__((always_inline)) static __inline osMessageQId __svcMessageCreate (const osMessageQDef_t * a1, osThreadId a2) { return _svcMessageCreate(svcMessageCreate,a1,a2); }
__svc_indirect(0) osStatus _svcMessagePut (osStatus(*)(osMessageQId,uint32_t,uint32_t),osMessageQId,uint32_t,uint32_t); osStatus svcMessagePut (osMessageQId a1, uint32_t a2, uint32_t a3); __attribute__((always_inline)) static __inline osStatus __svcMessagePut (osMessageQId a1, uint32_t a2, uint32_t a3) { return _svcMessagePut(svcMessagePut,a1,a2,a3); }
__svc_indirect(0) __value_in_regs osEvent _svcMessageGet (__value_in_regs osEvent(*)(osMessageQId,uint32_t),osMessageQId,uint32_t); __value_in_regs osEvent svcMessageGet (osMessageQId a1, uint32_t a2); __attribute__((always_inline)) static __inline __value_in_regs osEvent __svcMessageGet (osMessageQId a1, uint32_t a2) { return _svcMessageGet(svcMessageGet,a1,a2); }




osMessageQId svcMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id) {

  if ((queue_def == 0) ||
      (queue_def->queue_sz == 0) ||
      (queue_def->pool == 0)) {
    sysThreadError(osErrorParameter);
    return 0;
  }
  
  if (((P_MCB)queue_def->pool)->cb_type != 0) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  rt_mbx_init(queue_def->pool, 4*(queue_def->queue_sz + 4));

  return queue_def->pool;
}


osStatus svcMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec) {
  OS_RESULT res;

  if (queue_id == 0) return osErrorParameter;

  if (((P_MCB)queue_id)->cb_type != 1) return osErrorParameter;

  res = rt_mbx_send(queue_id, (void *)info, rt_ms2tick(millisec));

  if (res == 0x01) {
    return (millisec ? osErrorTimeoutResource : osErrorResource);
  }

  return osOK;
}


__value_in_regs osEvent svcMessageGet (osMessageQId queue_id, uint32_t millisec) {
  OS_RESULT res;
  osEvent   ret;

  if (queue_id == 0) {
    ret.status = osErrorParameter;
    return ret;
  }

  if (((P_MCB)queue_id)->cb_type != 1) {
    ret.status = osErrorParameter;
    return ret;
  }

  res = rt_mbx_wait(queue_id, &ret.value.p, rt_ms2tick(millisec));
  
  if (res == 0x01) {
    ret.status = millisec ? osEventTimeout : osOK;
    return ret;
  }

  ret.status = osEventMessage;

  return ret;
}





static __inline osStatus isrMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec) {

  if ((queue_id == 0) || (millisec != 0)) {
    return osErrorParameter;
  }

  if (((P_MCB)queue_id)->cb_type != 1) return osErrorParameter;

  if (rt_mbx_check(queue_id) == 0) {            
    return osErrorResource;
  }

  isr_mbx_send(queue_id, (void *)info);

  return osOK;
}


static __inline __value_in_regs osEvent isrMessageGet (osMessageQId queue_id, uint32_t millisec) {
  OS_RESULT res;
  osEvent   ret;

  if ((queue_id == 0) || (millisec != 0)) {
    ret.status = osErrorParameter;
    return ret;
  }

  if (((P_MCB)queue_id)->cb_type != 1) {
    ret.status = osErrorParameter;
    return ret;
  }

  res = isr_mbx_receive(queue_id, &ret.value.p);
  
  if (res != 0x04) {
    ret.status = osOK;
    return ret;
  }

  ret.status = osEventMessage; 

  return ret;
}





osMessageQId osMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return   svcMessageCreate(queue_def, thread_id);
  } else {
    return __svcMessageCreate(queue_def, thread_id);
  }
}


osStatus osMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec) {
  if (__get_IPSR() != 0) {                      
    return   isrMessagePut(queue_id, info, millisec);
  } else {                                      
    return __svcMessagePut(queue_id, info, millisec);
  }
}


__value_in_regs osEvent osMessageGet (osMessageQId queue_id, uint32_t millisec) {
  if (__get_IPSR() != 0) {                      
    return   isrMessageGet(queue_id, millisec);
  } else {                                      
    return __svcMessageGet(queue_id, millisec);
  }
}





__svc_indirect(0) osMailQId _svcMailCreate (osMailQId(*)(const osMailQDef_t *,osThreadId),const osMailQDef_t *,osThreadId); osMailQId svcMailCreate (const osMailQDef_t * a1, osThreadId a2); __attribute__((always_inline)) static __inline osMailQId __svcMailCreate (const osMailQDef_t * a1, osThreadId a2) { return _svcMailCreate(svcMailCreate,a1,a2); }
__svc_indirect(0) void * _sysMailAlloc (void *(*)(osMailQId,uint32_t,uint32_t,uint32_t),osMailQId,uint32_t,uint32_t,uint32_t); void * sysMailAlloc (osMailQId a1, uint32_t a2, uint32_t a3, uint32_t a4); __attribute__((always_inline)) static __inline void * __sysMailAlloc (osMailQId a1, uint32_t a2, uint32_t a3, uint32_t a4) { return _sysMailAlloc(sysMailAlloc,a1,a2,a3,a4); }
__svc_indirect(0) osStatus _sysMailFree (osStatus(*)(osMailQId,void *,uint32_t),osMailQId,void *,uint32_t); osStatus sysMailFree (osMailQId a1, void * a2, uint32_t a3); __attribute__((always_inline)) static __inline osStatus __sysMailFree (osMailQId a1, void * a2, uint32_t a3) { return _sysMailFree(sysMailFree,a1,a2,a3); }




osMailQId svcMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id) {
  uint32_t blk_sz;
  P_MCB    pmcb;
  void    *pool;

  if ((queue_def == 0) ||
      (queue_def->queue_sz == 0) ||
      (queue_def->item_sz  == 0) ||
      (queue_def->pool == 0)) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  pmcb = *(((void **)queue_def->pool) + 0);
  pool = *(((void **)queue_def->pool) + 1);

  if ((pool == 0) || (pmcb == 0) || (pmcb->cb_type != 0)) {
    sysThreadError(osErrorParameter);
    return 0;
  }

  blk_sz = (queue_def->item_sz + 3) & ~3;

  _init_box(pool, sizeof(struct OS_BM) + queue_def->queue_sz * blk_sz, blk_sz);

  rt_mbx_init(pmcb, 4*(queue_def->queue_sz + 4));

  return queue_def->pool;
}


void *sysMailAlloc (osMailQId queue_id, uint32_t millisec, uint32_t isr, uint32_t clr) {
  P_MCB pmcb;
  void *pool;
  void *mem;

  if (queue_id == 0) return 0;

  pmcb = *(((void **)queue_id) + 0);
  pool = *(((void **)queue_id) + 1);

  if ((pool == 0) || (pmcb == 0)) return 0;

  if (isr && (millisec != 0)) return 0;

  mem = rt_alloc_box(pool);
  if (clr) {
    rt_clr_box(pool, mem);
  }

  if ((mem == 0) && (millisec != 0)) {
    
    if (pmcb->p_lnk != 0) {
      rt_put_prio((P_XCB)pmcb, os_tsk.run);
    } else {
      pmcb->p_lnk = os_tsk.run;
      os_tsk.run->p_lnk = 0;
      os_tsk.run->p_rlnk = (P_TCB)pmcb;
      
      pmcb->state = 3;
    }
    rt_block(rt_ms2tick(millisec), 8);
  }

  return mem;  
}


osStatus sysMailFree (osMailQId queue_id, void *mail, uint32_t isr) {
  P_MCB   pmcb;
  P_TCB   ptcb;
  void   *pool;
  void   *mem;
  int32_t res;

  if (queue_id == 0) return osErrorParameter;

  pmcb = *(((void **)queue_id) + 0);
  pool = *(((void **)queue_id) + 1);

  if ((pmcb == 0) || (pool == 0)) return osErrorParameter;

  res = rt_free_box(pool, mail);

  if (res != 0) return osErrorValue;

  if ((pmcb->p_lnk != 0) && (pmcb->state == 3)) {
    
    if (isr) {
      rt_psq_enq (pmcb, (U32)pool);
      rt_psh_req ();
    } else {
      mem = rt_alloc_box(pool);
      if (mem != 0) {
        ptcb = rt_get_first((P_XCB)pmcb);
        rt_ret_val(ptcb, (U32)mem);
        rt_rmv_dly(ptcb);
        rt_dispatch(ptcb);
      }
    }
  }

  return osOK;
}





osMailQId osMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id) {
  if (__get_IPSR() != 0) return 0;           
  if (((__get_CONTROL() & 1) == 0) && (os_running == 0)) {
    
    return   svcMailCreate(queue_def, thread_id);
  } else {
    return __svcMailCreate(queue_def, thread_id);
  }
}


void *osMailAlloc (osMailQId queue_id, uint32_t millisec) {
  if (__get_IPSR() != 0) {                      
    return   sysMailAlloc(queue_id, millisec, 1, 0);
  } else {                                      
    return __sysMailAlloc(queue_id, millisec, 0, 0);
  }
}


void *osMailCAlloc (osMailQId queue_id, uint32_t millisec) {
  if (__get_IPSR() != 0) {                      
    return   sysMailAlloc(queue_id, millisec, 1, 1);
  } else {                                      
    return __sysMailAlloc(queue_id, millisec, 0, 1);
  }
}


osStatus osMailFree (osMailQId queue_id, void *mail) {
  if (__get_IPSR() != 0) {                      
    return   sysMailFree(queue_id, mail, 1);
  } else {                                      
    return __sysMailFree(queue_id, mail, 0);
  }
}


osStatus osMailPut (osMailQId queue_id, void *mail) {
  if (queue_id == 0) return osErrorParameter;
  if (mail == 0)     return osErrorValue;
  return osMessagePut(*((void **)queue_id), (uint32_t)mail, 0);
}


__value_in_regs osEvent osMailGet (osMailQId queue_id, uint32_t millisec) {
  osEvent ret;

  if (queue_id == 0) {
    ret.status = osErrorParameter;
    return ret;
  }

  ret = osMessageGet(*((void **)queue_id), millisec);
  if (ret.status == osEventMessage) ret.status = osEventMail;

  return ret;
}





__svc_indirect(0) uint32_t _rt_suspend (uint32_t(*)()); uint32_t rt_suspend (void); __attribute__((always_inline)) static __inline uint32_t __rt_suspend (void) { return _rt_suspend(rt_suspend); }
__svc_indirect(0) void _rt_resume (void(*)(uint32_t),uint32_t); void rt_resume (uint32_t a1); __attribute__((always_inline)) static __inline void __rt_resume (uint32_t a1) { _rt_resume(rt_resume,a1); }





uint32_t os_suspend (void) {
  return __rt_suspend();
}


void os_resume (uint32_t sleep_time) {
  __rt_resume(sleep_time);
}
