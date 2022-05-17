#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
































 

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

 






 

#line 36 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
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



 
#line 37 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
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



 

#line 38 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
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

 





 

#line 39 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.h"
































 

 
extern void      rt_mbx_init  (OS_ID mailbox, U16 mbx_size);
extern OS_RESULT rt_mbx_send  (OS_ID mailbox, void *p_msg,    U16 timeout);
extern OS_RESULT rt_mbx_wait  (OS_ID mailbox, void **message, U16 timeout);
extern OS_RESULT rt_mbx_check (OS_ID mailbox);
extern void      isr_mbx_send (OS_ID mailbox, void *p_msg);
extern OS_RESULT isr_mbx_receive (OS_ID mailbox, void **message);
extern void      rt_mbx_psh   (P_MCB p_CB,    void *p_msg);




 

#line 40 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.h"
































 

 


extern int     _init_box   (void *box_mem, U32 box_size, U32 blk_size);
extern void *rt_alloc_box  (void *box_mem);
extern void *  _calloc_box (void *box_mem);
extern int   rt_free_box   (void *box_mem, void *box);



 

#line 41 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
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






 






#line 42 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"
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



 

#line 43 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Mailbox.c"




 


 

void rt_mbx_init (OS_ID mailbox, U16 mbx_size) {
   
  P_MCB p_MCB = mailbox;

  p_MCB->cb_type = 1;
  p_MCB->state   = 0;
  p_MCB->isr_st  = 0;
  p_MCB->p_lnk   = ((void *) 0);
  p_MCB->first   = 0;
  p_MCB->last    = 0;
  p_MCB->count   = 0;
  p_MCB->size    = (mbx_size + sizeof(void *) - sizeof(struct OS_MCB)) /
                                                     (U32)sizeof (void *);
}


 

OS_RESULT rt_mbx_send (OS_ID mailbox, void *p_msg, U16 timeout) {
   
  P_MCB p_MCB = mailbox;
  P_TCB p_TCB;

  if ((p_MCB->p_lnk != ((void *) 0)) && (p_MCB->state == 1)) {
     
    p_TCB = rt_get_first ((P_XCB)p_MCB);

    rt_ret_val2(p_TCB, 0x10 , (U32)p_msg);




    rt_rmv_dly (p_TCB);
    rt_dispatch (p_TCB);
  }
  else {
     
    if (p_MCB->count == p_MCB->size) {
       
       
       
      if (timeout == 0) {
        return (0x01);
      }
      if (p_MCB->p_lnk != ((void *) 0)) {
        rt_put_prio ((P_XCB)p_MCB, os_tsk.run);
      }
      else {
        p_MCB->p_lnk = os_tsk.run;
        os_tsk.run->p_lnk  = ((void *) 0);
        os_tsk.run->p_rlnk = (P_TCB)p_MCB;
               
        p_MCB->state = 2;
      }
      os_tsk.run->msg = p_msg;
      rt_block (timeout, 8);
      return (0x01);
    }
     
    p_MCB->msg[p_MCB->first] = p_msg;
    while(__strex((__ldrex(&p_MCB->count)+1),&p_MCB->count));
    if (++p_MCB->first == p_MCB->size) {
      p_MCB->first = 0;
    }
  }
  return (0x00);
}


 

OS_RESULT rt_mbx_wait (OS_ID mailbox, void **message, U16 timeout) {
   
  P_MCB p_MCB = mailbox;
  P_TCB p_TCB;

   
   
  if (p_MCB->count) {
    *message = p_MCB->msg[p_MCB->last];
    if (++p_MCB->last == p_MCB->size) {
      p_MCB->last = 0;
    }
    if ((p_MCB->p_lnk != ((void *) 0)) && (p_MCB->state == 2)) {
       
      p_TCB = rt_get_first ((P_XCB)p_MCB);

      rt_ret_val(p_TCB, 0 );



      p_MCB->msg[p_MCB->first] = p_TCB->msg;
      if (++p_MCB->first == p_MCB->size) {
        p_MCB->first = 0;
      }
      rt_rmv_dly (p_TCB);
      rt_dispatch (p_TCB);
    }
    else {
      while(__strex((__ldrex(&p_MCB->count)-1),&p_MCB->count));
    }
    return (0x00);
  }
   
  if (timeout == 0) {
    return (0x01);
  }
  if (p_MCB->p_lnk != ((void *) 0)) {
    rt_put_prio ((P_XCB)p_MCB, os_tsk.run);
  }
  else {
    p_MCB->p_lnk = os_tsk.run;
    os_tsk.run->p_lnk = ((void *) 0);
    os_tsk.run->p_rlnk = (P_TCB)p_MCB;
           
    p_MCB->state = 1;
  }
  rt_block(timeout, 8);



  return (0x01);
}


 

OS_RESULT rt_mbx_check (OS_ID mailbox) {
   
   
  P_MCB p_MCB = mailbox;

  return (p_MCB->size - p_MCB->count);
}


 

void isr_mbx_send (OS_ID mailbox, void *p_msg) {
   
  P_MCB p_MCB = mailbox;

  rt_psq_enq (p_MCB, (U32)p_msg);
  rt_psh_req ();
}


 

OS_RESULT isr_mbx_receive (OS_ID mailbox, void **message) {
   
   
  P_MCB p_MCB = mailbox;

  if (p_MCB->count) {
     
    *message = p_MCB->msg[p_MCB->last];
    if (p_MCB->state == 2) {
       
      rt_psq_enq (p_MCB, 0);
      rt_psh_req ();
    }
    while(__strex((__ldrex(&p_MCB->count)-1),&p_MCB->count));
    if (++p_MCB->last == p_MCB->size) {
      p_MCB->last = 0;
    }
    return (0x04);
  }
  return (0x00);
}


 

void rt_mbx_psh (P_MCB p_CB, void *p_msg) {
   
  P_TCB p_TCB;
  void *mem;

  if (p_CB->p_lnk != ((void *) 0)) switch (p_CB->state) {

    case 3:
       
      mem = rt_alloc_box(p_msg);
      if (mem == ((void *) 0)) break;
      p_TCB = rt_get_first ((P_XCB)p_CB);
      rt_ret_val(p_TCB, (U32)mem);
      p_TCB->state = 1;
      rt_rmv_dly (p_TCB);
      rt_put_prio (&os_rdy, p_TCB);
      break;

    case 2:
       
      p_TCB = rt_get_first ((P_XCB)p_CB);

      rt_ret_val(p_TCB, 0 );



      p_CB->msg[p_CB->first] = p_TCB->msg;
      while(__strex((__ldrex(&p_CB->count)+1),&p_CB->count));
      if (++p_CB->first == p_CB->size) {
        p_CB->first = 0;
      }
      p_TCB->state = 1;
      rt_rmv_dly (p_TCB);
      rt_put_prio (&os_rdy, p_TCB);
      break;
    case 1:
       
      p_TCB = rt_get_first ((P_XCB)p_CB);

      rt_ret_val2(p_TCB, 0x10 , (U32)p_msg);




      p_TCB->state = 1;
      rt_rmv_dly (p_TCB);
      rt_put_prio (&os_rdy, p_TCB);
      break;
  } else {
     
    if (p_CB->count < p_CB->size) {
      p_CB->msg[p_CB->first] = p_msg;
      while(__strex((__ldrex(&p_CB->count)+1),&p_CB->count));
      if (++p_CB->first == p_CB->size) {
        p_CB->first = 0;
      }
    }
    else {
      os_error (3);
    }
  }
}



 

