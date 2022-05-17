#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"
































 

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

 






 

#line 36 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"
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



 
#line 37 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"
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



 

#line 38 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"
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



 

#line 39 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"
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






 






#line 40 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"
#line 1 "..\\..\\libraries\\rtx-v4.73\\SRC\\rt_MemBox.h"
































 

 


extern int     _init_box   (void *box_mem, U32 box_size, U32 blk_size);
extern void *rt_alloc_box  (void *box_mem);
extern void *  _calloc_box (void *box_mem);
extern int   rt_free_box   (void *box_mem, void *box);



 

#line 41 "..\\..\\libraries\\rtx-v4.73\\SRC\\ARM\\HAL_CM4.c"




 


 

__asm void rt_set_PSP (U32 stack) {
        MSR     PSP,R0
        BX      LR
}


 

__asm U32 rt_get_PSP (void) {
        MRS     R0,PSP
        BX      LR
}


 

__asm void os_set_env (void) {
    
        MOV     R0,SP                   ; PSP = MSP
        MSR     PSP,R0
        LDR     R0,=__cpp(&os_flags)
        LDRB    R0,[R0]
        LSLS    R0,#31
        MOVNE   R0,#0x02                ; Privileged Thread mode, use PSP
        MOVEQ   R0,#0x03                ; Unprivileged Thread mode, use PSP
        MSR     CONTROL,R0
        BX      LR

        ALIGN
}


 

__asm void *_alloc_box (void *box_mem) {
    
        LDR     R12,=__cpp(rt_alloc_box)
        MRS     R3,IPSR
        LSLS    R3,#24
        BXNE    R12
        MRS     R3,CONTROL
        LSLS    R3,#31
        BXEQ    R12
        SVC     0
        BX      LR

        ALIGN
}


 

__asm int _free_box (void *box_mem, void *box) {
    
        LDR     R12,=__cpp(rt_free_box)
        MRS     R3,IPSR
        LSLS    R3,#24
        BXNE    R12
        MRS     R3,CONTROL
        LSLS    R3,#31
        BXEQ    R12
        SVC     0
        BX      LR

        ALIGN
}


 

__asm void SVC_Handler (void) {
        PRESERVE8

        IMPORT  SVC_Count
        IMPORT  SVC_Table
        IMPORT  rt_stk_check






        MRS     R0,PSP                  ; Read PSP
        LDR     R1,[R0,#24]             ; Read Saved PC from Stack
        LDRB    R1,[R1,#-2]             ; Load SVC Number
        CBNZ    R1,SVC_User

        LDM     R0,{R0-R3,R12}          ; Read R0-R3,R12 from stack
        PUSH    {R4,LR}                 ; Save EXC_RETURN
        BLX     R12                     ; Call SVC Function 
        POP     {R4,LR}                 ; Restore EXC_RETURN

        MRS     R12,PSP                 ; Read PSP
        STM     R12,{R0-R2}             ; Store return values

        LDR     R3,=__cpp(&os_tsk)
        LDM     R3,{R1,R2}              ; os_tsk.run, os_tsk.new
        CMP     R1,R2




        BXEQ    LR                      ; RETI, no task switch


        CBZ     R1,SVC_Next             ; Runtask deleted?
        TST     LR,#0x10                ; is it extended frame?
        VSTMDBEQ R12!,{S16-S31}         ; yes, stack also VFP hi-regs
        MOVEQ   R0,#0x01                ; os_tsk->stack_frame val
        MOVNE   R0,#0x00
        STRB    R0,[R1,#37]     ; os_tsk.run->stack_frame = val
        STMDB   R12!,{R4-R11}           ; Save Old context
        STR     R12,[R1,#40]    ; Update os_tsk.run->tsk_stack

        PUSH    {R2,R3}
        BL      rt_stk_check            ; Check for Stack overflow
        POP     {R2,R3}

SVC_Next
        STR     R2,[R3]                 ; os_tsk.run = os_tsk.new

        LDR     R12,[R2,#40]    ; os_tsk.new->tsk_stack
        LDMIA   R12!,{R4-R11}           ; Restore New Context
        LDRB    R0,[R2,#37]     ; Stack Frame
        CMP     R0,#0                   ; Basic/Extended Stack Frame
        VLDMIANE R12!,{S16-S31}         ; restore VFP hi-registers
        MVNNE   LR,#:NOT:0xFFFFFFED     ; set EXC_RETURN value
        MVNEQ   LR,#:NOT:0xFFFFFFFD
        MSR     PSP,R12                 ; Write PSP

SVC_Exit




        BX      LR


         

SVC_User
        PUSH    {R4,LR}                 ; Save Registers
        LDR     R2,=SVC_Count
        LDR     R2,[R2]
        CMP     R1,R2
        BHI     SVC_Done                ; Overflow

        LDR     R4,=SVC_Table-4
        LDR     R4,[R4,R1,LSL #2]       ; Load SVC Function Address

        LDM     R0,{R0-R3,R12}          ; Read R0-R3,R12 from stack
        BLX     R4                      ; Call SVC Function

        MRS     R12,PSP
        STM     R12,{R0-R3}             ; Function return values
SVC_Done
        POP     {R4,PC}                 ; RETI

        ALIGN
}


 

__asm void PendSV_Handler (void) {
        PRESERVE8






        PUSH    {R4,LR}                 ; Save EXC_RETURN
        BL      __cpp(rt_pop_req)

Sys_Switch
        POP     {R4,LR}                 ; Restore EXC_RETURN

        LDR     R3,=__cpp(&os_tsk)
        LDM     R3,{R1,R2}              ; os_tsk.run, os_tsk.new
        CMP     R1,R2




        BXEQ    LR                      ; RETI, no task switch


        MRS     R12,PSP                 ; Read PSP
        TST     LR,#0x10                ; is it extended frame?
        VSTMDBEQ R12!,{S16-S31}         ; yes, stack also VFP hi-regs
        MOVEQ   R0,#0x01                ; os_tsk->stack_frame val
        MOVNE   R0,#0x00
        STRB    R0,[R1,#37]     ; os_tsk.run->stack_frame = val
        STMDB   R12!,{R4-R11}           ; Save Old context
        STR     R12,[R1,#40]    ; Update os_tsk.run->tsk_stack

        PUSH    {R2,R3}
        BL      rt_stk_check            ; Check for Stack overflow
        POP     {R2,R3}

        STR     R2,[R3]                 ; os_tsk.run = os_tsk.new

        LDR     R12,[R2,#40]    ; os_tsk.new->tsk_stack
        LDMIA   R12!,{R4-R11}           ; Restore New Context
        LDRB    R0,[R2,#37]     ; Stack Frame
        CMP     R0,#0                   ; Basic/Extended Stack Frame
        VLDMIANE R12!,{S16-S31}         ; restore VFP hi-regs
        MVNNE   LR,#:NOT:0xFFFFFFED     ; set EXC_RETURN value
        MVNEQ   LR,#:NOT:0xFFFFFFFD
        MSR     PSP,R12                 ; Write PSP

Sys_Exit




        BX      LR                      ; Return to Thread Mode


        ALIGN
}


 

__asm void SysTick_Handler (void) {
        PRESERVE8






        PUSH    {R4,LR}                 ; Save EXC_RETURN
        BL      __cpp(rt_systick)
        B       Sys_Switch

        ALIGN
}


 

__asm void OS_Tick_Handler (void) {
        PRESERVE8

        PUSH    {R4,LR}                 ; Save EXC_RETURN
        BL      __cpp(os_tick_irqack)
        BL      __cpp(rt_systick)
        B       Sys_Switch

        ALIGN
}




 

