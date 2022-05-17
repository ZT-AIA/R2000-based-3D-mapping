#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Memory.c"
































 

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

 






 

#line 36 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Memory.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Memory.h"
































 

 
typedef struct mem {               
  struct mem *next;                
  U32         len;                 
} MEMP;

 
extern int   rt_init_mem  (void *pool, U32  size);
extern void *rt_alloc_mem (void *pool, U32  size);
extern int   rt_free_mem  (void *pool, void *mem);
#line 37 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_Memory.c"


 







int rt_init_mem (void *pool, U32 size) {
  MEMP *ptr;

  if ((pool == ((void *) 0)) || (size < sizeof(MEMP))) return (1);

  ptr = (MEMP *)pool;
  ptr->next = (MEMP *)((U32)pool + size - sizeof(MEMP *));
  ptr->next->next = ((void *) 0);
  ptr->len = 0; 

  return (0);
}







void *rt_alloc_mem (void *pool, U32 size) {
  MEMP *p, *p_search, *p_new;
  U32   hole_size;

  if ((pool == ((void *) 0)) || (size == 0)) return ((void *) 0);

   
  size += sizeof(MEMP);
   
  size = (size + 3) & ~3;

  p_search = (MEMP *)pool;
  while (1) {
    hole_size  = (U32)p_search->next - (U32)p_search;
    hole_size -= p_search->len;
     
    if (hole_size >= size) break;
    p_search = p_search->next;
    if (p_search->next == ((void *) 0)) {
       
      return ((void *) 0);
    }
  }

  if (p_search->len == 0) {
     
    p_search->len = size;
    p = (MEMP *)(((U32)p_search) + sizeof(MEMP));
  } else {
     
    p_new       = (MEMP *)((U32)p_search + p_search->len);
    p_new->next = p_search->next;
    p_new->len  = size;
    p_search->next = p_new;
    p = (MEMP *)(((U32)p_new) + sizeof(MEMP));
  }

  return (p);
}







int rt_free_mem (void *pool, void *mem) {
  MEMP *p_search, *p_prev, *p_return;

  if ((pool == ((void *) 0)) || (mem == ((void *) 0))) return (1);

  p_return = (MEMP *)((U32)mem - sizeof(MEMP));
  
   
  p_prev = ((void *) 0);
  p_search = (MEMP *)pool;
  while (p_search != p_return) {
    p_prev   = p_search;
    p_search = p_search->next;
    if (p_search == ((void *) 0)) {
       
      return (1);
    }
  }

  if (p_prev == ((void *) 0)) {
     
    p_search->len = 0;
  } else {
     
    p_prev->next = p_search->next;
  }

  return (0);
}
