#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.c"
































 

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

 






 

#line 36 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.c"
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



 
#line 37 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.c"
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






 






#line 38 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.h"
































 

 
extern U32 os_time;

 
extern U32  rt_time_get (void);
extern void rt_dly_wait (U16 delay_time);
extern void rt_itv_set  (U16 interval_time);
extern void rt_itv_wait (void);



 

#line 39 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Time.c"



 

 
U32 os_time;




 


 

U32 rt_time_get (void) {
   
  return (os_time);
}


 

void rt_dly_wait (U16 delay_time) {
   
  rt_block (delay_time, 3);
}


 

void rt_itv_set (U16 interval_time) {
   
  os_tsk.run->interval_time = interval_time;
  os_tsk.run->delta_time = interval_time + (U16)os_time;
}


 

void rt_itv_wait (void) {
   
  U16 delta;

  delta = os_tsk.run->delta_time - (U16)os_time;
  os_tsk.run->delta_time += os_tsk.run->interval_time;
  if ((delta & 0x8000) == 0) {
    rt_block (delta, 4);
  }
}



 

