#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
































 

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

 






 

#line 36 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
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



 
#line 37 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
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



 

#line 38 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.h"
































 

 


extern int     _init_box   (void *box_mem, U32 box_size, U32 blk_size);
extern void *rt_alloc_box  (void *box_mem);
extern void *  _calloc_box (void *box_mem);
extern int   rt_free_box   (void *box_mem, void *box);



 

#line 39 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
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



 

#line 40 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"



 


 

int _init_box  (void *box_mem, U32 box_size, U32 blk_size) {
   
  void *end;
  void *blk;
  void *next;
  U32  sizeof_bm;

   
  if (blk_size & 0x80000000) {
      
    blk_size = ((blk_size & ~0x80000000) + 7) & ~7;
    sizeof_bm = (sizeof (struct OS_BM) + 7) & ~7;
  }
  else {
     
    blk_size = (blk_size + 3) & ~3;
    sizeof_bm = sizeof (struct OS_BM);
  }
  if (blk_size == 0) {
    return (1);
  }
  if ((blk_size + sizeof_bm) > box_size) {
    return (1);
  }
   
  blk = ((U8 *) box_mem) + sizeof_bm;
  ((P_BM) box_mem)->free = blk;
  end = ((U8 *) box_mem) + box_size;
  ((P_BM) box_mem)->end      = end;
  ((P_BM) box_mem)->blk_size = blk_size;

   
  end = ((U8 *) end) - blk_size;
  while (1)  {
    next = ((U8 *) blk) + blk_size;
    if (next > end)  break;
    *((void **)blk) = next;
    blk = next;
  }
   
  *((void **)blk) = 0;
  return (0);
}

 

void *rt_alloc_box (void *box_mem) {
   
  void **free;
#line 107 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
  do {
    if ((free = (void **)__ldrex(&((P_BM) box_mem)->free)) == 0) {
      __clrex();
      break;
    }
  } while (__strex((U32)*free, &((P_BM) box_mem)->free));

  return (free);
}


 

void *_calloc_box (void *box_mem)  {
   
  void *free;
  U32 *p;
  U32 i;

  free = _alloc_box (box_mem);
  if (free)  {
    p = free;
    for (i = ((P_BM) box_mem)->blk_size; i; i -= 4)  {
      *p = 0;
      p++;
    }
  }
  return (free);
}


 

int rt_free_box (void *box_mem, void *box) {
   




  if (box < box_mem || box >= ((P_BM) box_mem)->end) {
    return (1);
  }

#line 156 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.c"
  do {
    *((void **)box) = (void *)__ldrex(&((P_BM) box_mem)->free);
  } while (__strex ((U32)box, &((P_BM) box_mem)->free));

  return (0);
}



 

