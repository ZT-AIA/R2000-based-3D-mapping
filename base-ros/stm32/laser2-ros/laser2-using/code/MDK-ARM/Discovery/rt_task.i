#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
































 

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

 






 

#line 36 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
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



 
#line 37 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
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



 

#line 38 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
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






 






#line 39 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
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

 





 

#line 40 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.h"
































 

 


extern int     _init_box   (void *box_mem, U32 box_size, U32 blk_size);
extern void *rt_alloc_box  (void *box_mem);
extern void *  _calloc_box (void *box_mem);
extern int   rt_free_box   (void *box_mem, void *box);



 

#line 41 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Robin.h"
































 

 
extern struct OS_ROBIN os_robin;

 
extern void rt_init_robin (void);
extern void rt_chk_robin  (void);



 

#line 42 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
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



 

#line 43 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"



 

 
struct OS_TSK os_tsk;

 
struct OS_TCB os_idle_TCB;




 

static OS_TID rt_get_TID (void) {
  U32 tid;

  for (tid = 1; tid <= os_maxtaskrun; tid++) {
    if (os_active_TCB[tid-1] == ((void *) 0)) {
      return ((OS_TID)tid);
    }
  }
  return (0);
}


 

static void rt_init_context (P_TCB p_TCB, U8 priority, FUNCP task_body) {
   
  p_TCB->cb_type   = 0;
  p_TCB->state     = 1;
  p_TCB->prio      = priority;
  p_TCB->prio_base = priority;
  p_TCB->p_lnk     = ((void *) 0);
  p_TCB->p_rlnk    = ((void *) 0);
  p_TCB->p_dlnk    = ((void *) 0);
  p_TCB->p_blnk    = ((void *) 0);
  p_TCB->p_mlnk    = ((void *) 0);
  p_TCB->delta_time    = 0;
  p_TCB->interval_time = 0;
  p_TCB->events  = 0;
  p_TCB->waits   = 0;
  p_TCB->stack_frame = 0;

  if (p_TCB->priv_stack == 0) {
     
    p_TCB->stack = rt_alloc_box (mp_stk);
  }
  rt_init_stack (p_TCB, task_body);
}


 

void rt_switch_req (P_TCB p_new) {
   
  os_tsk.new   = p_new;
  p_new->state = 2;
  ;
}


 

void rt_dispatch (P_TCB next_TCB) {
   
   
  if (next_TCB == ((void *) 0)) {
     
    next_TCB = rt_get_first (&os_rdy);
    rt_switch_req (next_TCB);
  }
  else {
     
    if (next_TCB->prio > os_tsk.run->prio) {
       
      rt_put_rdy_first (os_tsk.run);
      os_tsk.run->state = 1;
      rt_switch_req (next_TCB);
    }
    else {
       
      next_TCB->state = 1;
      rt_put_prio (&os_rdy, next_TCB);
    }
  }
}


 

void rt_block (U16 timeout, U8 block_state) {
   
   
   
  P_TCB next_TCB;

  if (timeout) {
    if (timeout < 0xffff) {
      rt_put_dly (os_tsk.run, timeout);
    }
    os_tsk.run->state = block_state;
    next_TCB = rt_get_first (&os_rdy);
    rt_switch_req (next_TCB);
  }
}


 

void rt_tsk_pass (void) {
   
  P_TCB p_new;

  p_new = rt_get_same_rdy_prio();
  if (p_new != ((void *) 0)) {
    rt_put_prio ((P_XCB)&os_rdy, os_tsk.run);
    os_tsk.run->state = 1;
    rt_switch_req (p_new);
  }
}


 

OS_TID rt_tsk_self (void) {
   
  if (os_tsk.run == ((void *) 0)) {
    return (0);
  }
  return (os_tsk.run->task_id);
}


 

OS_RESULT rt_tsk_prio (OS_TID task_id, U8 new_prio) {
   
  P_TCB p_task;

  if (task_id == 0) {
     
    os_tsk.run->prio      = new_prio;
    os_tsk.run->prio_base = new_prio;
run:if ((os_rdy . p_lnk->prio) > new_prio) {
      rt_put_prio (&os_rdy, os_tsk.run);
      os_tsk.run->state   = 1;
      rt_dispatch (((void *) 0));
    }
    return (0x00);
  }

   
  if (task_id > os_maxtaskrun || os_active_TCB[task_id-1] == ((void *) 0)) {
     
    return (0xff);
  }
  p_task = os_active_TCB[task_id-1];
  p_task->prio      = new_prio;
  p_task->prio_base = new_prio;
  if (p_task == os_tsk.run) {
    goto run;
  }
  rt_resort_prio (p_task);
  if (p_task->state == 1) {
     
    p_task = rt_get_first (&os_rdy);
    rt_dispatch (p_task);
  }
  return (0x00);
}


 

OS_TID rt_tsk_create (FUNCP task, U32 prio_stksz, void *stk, void *argv) {
   
  P_TCB task_context;
  U32 i;

   
  if ((prio_stksz & 0xFF) == 0) {
    prio_stksz += 1;
  }
  task_context = rt_alloc_box (mp_tcb);
  if (task_context == ((void *) 0)) {
    return (0);
  }
   
  task_context->stack      = stk;
  task_context->priv_stack = prio_stksz >> 8;
   
  task_context->msg = argv;
   
  rt_init_context (task_context, prio_stksz & 0xFF, task);

   
  i = rt_get_TID ();
  os_active_TCB[i-1] = task_context;
  task_context->task_id = i;
  ;
  rt_dispatch (task_context);
  return ((OS_TID)i);
}


 

OS_RESULT rt_tsk_delete (OS_TID task_id) {
   
  P_TCB  task_context;
  P_TCB  p_TCB;
  P_MUCB p_MCB, p_MCB0;

  if (task_id == 0 || task_id == os_tsk.run->task_id) {
     
    os_tsk.run->state     = 0;
    os_tsk.run->tsk_stack = rt_get_PSP ();
    rt_stk_check ();
    p_MCB = os_tsk.run->p_mlnk;
    while (p_MCB) {
       
      if (p_MCB->p_lnk) {
         
        p_TCB = rt_get_first ((P_XCB)p_MCB);

        rt_ret_val(p_TCB, 0 );



        rt_rmv_dly (p_TCB);
        p_TCB->state = 1;
        rt_put_prio (&os_rdy, p_TCB);
         
        p_MCB0 = p_MCB;
        p_MCB->level  = 1;
        p_MCB->owner  = p_TCB;
        p_MCB->p_mlnk = p_TCB->p_mlnk;
        p_TCB->p_mlnk = p_MCB; 
        p_MCB = p_MCB0->p_mlnk;
      }
      else {
        p_MCB = p_MCB->p_mlnk;
      }
    }
    os_active_TCB[os_tsk.run->task_id-1] = ((void *) 0);
    rt_free_box (mp_stk, os_tsk.run->stack);
    os_tsk.run->stack = ((void *) 0);
    ;
    rt_free_box (mp_tcb, os_tsk.run);
    os_tsk.run = ((void *) 0);
    rt_dispatch (((void *) 0));
     
  }
  else {
     
    if (task_id > os_maxtaskrun || os_active_TCB[task_id-1] == ((void *) 0)) {
       
      return (0xff);
    }
    task_context = os_active_TCB[task_id-1];
    rt_rmv_list (task_context);
    rt_rmv_dly (task_context);
    p_MCB = task_context->p_mlnk;
    while (p_MCB) {
       
      if (p_MCB->p_lnk) {
         
        p_TCB = rt_get_first ((P_XCB)p_MCB);

        rt_ret_val(p_TCB, 0 );



        rt_rmv_dly (p_TCB);
        p_TCB->state = 1;
        rt_put_prio (&os_rdy, p_TCB);
         
        p_MCB0 = p_MCB;
        p_MCB->level  = 1;
        p_MCB->owner  = p_TCB;
        p_MCB->p_mlnk = p_TCB->p_mlnk;
        p_TCB->p_mlnk = p_MCB; 
        p_MCB = p_MCB0->p_mlnk;
      }
      else {
        p_MCB = p_MCB->p_mlnk;
      }
    }
    os_active_TCB[task_id-1] = ((void *) 0);
    rt_free_box (mp_stk, task_context->stack);
    task_context->stack = ((void *) 0);
    ;
    rt_free_box (mp_tcb, task_context);
    if ((os_rdy . p_lnk->prio) > os_tsk.run->prio) {
       
      os_tsk.run->state = 1;
      rt_put_prio (&os_rdy, os_tsk.run);
      rt_dispatch (((void *) 0));
    }
  }
  return (0x00);
}


 


void rt_sys_init (void) {



   
  U32 i;

  ;

   
  for (i = 0; i < os_maxtaskrun; i++) {
    os_active_TCB[i] = ((void *) 0);
  }
  _init_box (&mp_tcb, mp_tcb_size, sizeof(struct OS_TCB));
  _init_box (&mp_stk, mp_stk_size, 0x80000000 | (U16)(os_stackinfo));
  _init_box ((U32 *)m_tmr, mp_tmr_size, sizeof(struct OS_TMR));

   
  os_idle_TCB.task_id    = 255;
  os_idle_TCB.priv_stack = 0;
  rt_init_context (&os_idle_TCB, 0, os_idle_demon);

   
  os_rdy.cb_type = 4;
  os_rdy.p_lnk   = ((void *) 0);
   
  os_dly.cb_type = 4;
  os_dly.p_dlnk  = ((void *) 0);
  os_dly.p_blnk  = ((void *) 0);
  os_dly.delta_time = 0;

   
   



  os_tsk.run = &os_idle_TCB;
  os_tsk.run->state = 2;

   
  ((P_PSQ)&os_fifo)->first = 0;
  ((P_PSQ)&os_fifo)->last  = 0;
  ((P_PSQ)&os_fifo)->size  = os_fifo_size;

  rt_init_robin ();

   
  rt_svc_init ();

#line 413 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Task.c"
}


 


void rt_sys_start (void) {
   

   
  os_tick_irqn = os_tick_init ();
  if (os_tick_irqn >= 0) {
    ((volatile U8 *)0xE000E400)[os_tick_irqn] = 0xFF; ((volatile U32 *)0xE000E100)[os_tick_irqn>>5] = 1 << (os_tick_irqn & 0x1F);
  }
}




 
