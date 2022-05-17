#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"






 































 

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"




 































 






 
#line 1 "..\\inc\\lwipopts.h"



#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 5 "..\\inc\\lwipopts.h"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 6 "..\\inc\\lwipopts.h"

 


 




 









 


 


 



 



 


 



 



 



 



 



 



 



 





 




 



 



 




 



 



 


 


 

 




 




 


 

 


 


 


 


 

 


 



 



 


 



 


 


 


 


 



 


 

 


 


 

 



 



 



   

   

   

   

   

   

	   
#line 228 "..\\inc\\lwipopts.h"

 

 



 


 

 


 

 




 




 




 


 




 




 




 




 




 




 


 





 



 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 




#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/debug.h"






























 



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/arch.h"






























 











#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/cc.h"






























 



#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/cpu.h"






























 





#line 36 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/cc.h"

typedef unsigned   char    u8_t;
typedef signed     char    s8_t;
typedef unsigned   short   u16_t;
typedef signed     short   s16_t;
typedef unsigned   long    u32_t;
typedef signed     long    s32_t;
typedef u32_t mem_ptr_t;
typedef int sys_prot_t;


#line 54 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/cc.h"





 
#line 69 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/cc.h"






#line 90 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/cc.h"



#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/arch.h"

 




 




























#line 136 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/arch.h"



#line 203 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/arch.h"





extern int errno;








#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/debug.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"




 































 
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/debug.h"






 
#line 50 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/debug.h"

 

 


 

 

 

 


#line 71 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/debug.h"

 








 
#line 93 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/debug.h"







#line 47 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"





 





 







 







 







 







 








 




 








 








 







 








 












 







 









 







 









 





















 








 




 







 








 







 







 







 







 










 









 









 









 







 







 








 








 






 







 








 








 







 







 







 






 








 


 






 










 













 











 






 








 






 









 




 








 








 








 








 









 










 







 






 








 







 










 








 








 



 






 






 






 








 


 






 








 


 






 








 


 







 










 








 



 








 







 








 








 







 








 







 








 


 








 



 




 




 




 




 




 













 





 








 


 






 






 






 








 


 






 







 






 






 







 










 











 








 







 








 








 







 







 






 








 

















 






 







 










 










 




 








 








 



 






 







 







 







 










 







 







 
















 












 








 


 








 


 








 


 








 








 








 






 








 








 






 








 








 






 








 








 








 








 








 








 








 



 







 






 






 








 


 







 








 








 







 







 






 






 






 








 








 


 




#line 1603 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"

#line 1615 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"







 


 






 






 




#line 1781 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/mem.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/mem.h"





#line 68 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/mem.h"



 




typedef u16_t mem_size_t;



#line 87 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/mem.h"
 
void  mem_init(void);
void *mem_trim(void *mem, mem_size_t size);

void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void  mem_free(void *mem);





 







 






 








#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"






























 




#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






 



typedef s8_t err_t;


 

#line 62 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"














extern const char *lwip_strerr(err_t err);








#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"






 





typedef enum {
  PBUF_TRANSPORT,
  PBUF_IP,
  PBUF_LINK,
  PBUF_RAW
} pbuf_layer;

typedef enum {
  PBUF_RAM,  
  PBUF_ROM,  
  PBUF_REF,  
  PBUF_POOL  
} pbuf_type;


 


 

 

 

 

 


struct pbuf {
   
  struct pbuf *next;

   
  void *payload;

  





 
  u16_t tot_len;

   
  u16_t len;

   
  u8_t   type;

   
  u8_t flags;

  



 
  u16_t ref;


  

 
  s32_t time_sec;
  s32_t time_nsec;

};

#line 132 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"

#line 150 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"

 


struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);





void pbuf_realloc(struct pbuf *p, u16_t size); 
u8_t pbuf_header(struct pbuf *p, s16_t header_size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u8_t pbuf_clen(struct pbuf *p);  
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, struct pbuf *p_from);
u16_t pbuf_copy_partial(struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);





u8_t pbuf_get_at(struct pbuf* p, u16_t offset);
u16_t pbuf_memcmp(struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(struct pbuf* p, const char* substr);





#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/def.h"






























 



 
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/def.h"
#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/def.h"












 











 

#line 76 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/def.h"







#line 99 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/def.h"
u16_t lwip_htons(u16_t x);
u16_t lwip_ntohs(u16_t x);
u32_t lwip_htonl(u32_t x);
u32_t lwip_ntohl(u32_t x);




 
#line 115 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/def.h"









#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"






 
struct ip_addr {
  u32_t addr;
};


 



__packed
struct ip_addr_packed {
  u32_t addr;
} ;






 
typedef struct ip_addr ip_addr_t;
typedef struct ip_addr_packed ip_addr_p_t;




 



__packed
struct ip_addr2 {
  u16_t addrw[2];
} ;





 
struct netif;

extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;



 



 

 

 

 





 





























#line 145 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"

 
#line 153 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"



 




 

 



 

 

 


 



 

 


 









 









u8_t ip4_addr_isbroadcast(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);





#line 218 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"

 





 





 


u32_t ipaddr_addr(const char *cp);
int ipaddr_aton(const char *cp, ip_addr_t *addr);
 
char *ipaddr_ntoa(const ip_addr_t *addr);
char *ipaddr_ntoa_r(const ip_addr_t *addr, char *buf, int buflen);





#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"
#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

struct dhcp;










 


 







 


 


 


 





 



 



 


 






 
typedef err_t (*netif_init_fn)(struct netif *netif);





 
typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);







 
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       ip_addr_t *ipaddr);





 
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);
 
typedef void (*netif_status_callback_fn)(struct netif *netif);
 
typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       ip_addr_t *group, u8_t action);



 
struct netif {
   
  struct netif *next;

   
  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;

  
 
  netif_input_fn input;
  

 
  netif_output_fn output;
  

 
  netif_linkoutput_fn linkoutput;
#line 170 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"
  
 
  void *state;

   
  struct dhcp *dhcp;
#line 185 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"
   
  u16_t mtu;
   
  u8_t hwaddr_len;
   
  u8_t hwaddr[6U];
   
  u8_t flags;
   
  char name[2];
   
  u8_t num;
#line 215 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"
  
 
  netif_igmp_mac_filter_fn igmp_mac_filter;
#line 230 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"
};

#line 250 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"


 
extern struct netif *netif_list;
 
extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
      ip_addr_t *gw, void *state, netif_init_fn init, netif_input_fn input);

void
netif_set_addr(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
      ip_addr_t *gw);
void netif_remove(struct netif * netif);




 
struct netif *netif_find(char *name);

void netif_set_default(struct netif *netif);

void netif_set_ipaddr(struct netif *netif, ip_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, ip_addr_t *netmask);
void netif_set_gw(struct netif *netif, ip_addr_t *gw);

void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);
 


#line 290 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
  
















#line 317 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"











#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"





 












 














 
#line 88 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"

struct ip_pcb {
 
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};



 
 



 

 

 
 

 






__packed
struct ip_hdr {
   
  u8_t _v_hl;
   
  u8_t _tos;
   
  u16_t _len;
   
  u16_t _id;
   
  u16_t _offset;




   
  u8_t _ttl;
   
  u8_t _proto;
   
  u16_t _chksum;
   
  ip_addr_p_t src;
  ip_addr_p_t dest; 
} ;





#line 155 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"

#line 164 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"

 
extern struct netif *current_netif;
 
extern const struct ip_hdr *current_header;
 
extern ip_addr_t current_iphdr_src;
 
extern ip_addr_t current_iphdr_dest;


struct netif *ip_route(ip_addr_t *dest);
err_t ip_input(struct pbuf *p, struct netif *inp);
err_t ip_output(struct pbuf *p, ip_addr_t *src, ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip_output_if(struct pbuf *p, ip_addr_t *src, ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto,
       struct netif *netif);





err_t ip_output_if_opt(struct pbuf *p, ip_addr_t *src, ip_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);



 



 

 

 


 

 

 















#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/icmp.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/icmp.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/icmp.h"
#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/icmp.h"
#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/icmp.h"





#line 55 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/icmp.h"

enum icmp_dur_type {
  ICMP_DUR_NET   = 0,   
  ICMP_DUR_HOST  = 1,   
  ICMP_DUR_PROTO = 2,   
  ICMP_DUR_PORT  = 3,   
  ICMP_DUR_FRAG  = 4,   
  ICMP_DUR_SR    = 5    
};

enum icmp_te_type {
  ICMP_TE_TTL  = 0,     
  ICMP_TE_FRAG = 1      
};








 
__packed
struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} ;








 






void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);







#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"
#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"





struct tcp_pcb;









 
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);










 
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);











 
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);









 
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);










 
typedef void  (*tcp_err_fn)(void *arg, err_t err);












 
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);

enum tcp_state {
  CLOSED      = 0,
  LISTEN      = 1,
  SYN_SENT    = 2,
  SYN_RCVD    = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1  = 5,
  FIN_WAIT_2  = 6,
  CLOSE_WAIT  = 7,
  CLOSING     = 8,
  LAST_ACK    = 9,
  TIME_WAIT   = 10
};


  





 







 
#line 165 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"


 
struct tcp_pcb {
 
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
 
  struct tcp_pcb *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;

   
  u16_t remote_port;
  
  u8_t flags;
#line 186 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"

  
 

   
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;

   
  u32_t rcv_nxt;    
  u16_t rcv_wnd;    
  u16_t rcv_ann_wnd;  
  u32_t rcv_ann_right_edge;  

   
  s16_t rtime;

  u16_t mss;    

   
  u32_t rttest;  
  u32_t rtseq;   
  s16_t sa, sv;  

  s16_t rto;     
  u8_t nrtx;     

   
  u8_t dupacks;
  u32_t lastack;  

   
  u16_t cwnd;
  u16_t ssthresh;

   
  u32_t snd_nxt;    
  u32_t snd_wl1, snd_wl2; 
 
  u32_t snd_lbb;        
  u16_t snd_wnd;    
  u16_t snd_wnd_max;  

  u16_t acked;

  u16_t snd_buf;    

  u16_t snd_queuelen;  


   
  u16_t unsent_oversize;


   
  struct tcp_seg *unsent;    
  struct tcp_seg *unacked;   




  struct pbuf *refused_data;  


   
  tcp_sent_fn sent;
   
  tcp_recv_fn recv;
   
  tcp_connected_fn connected;
   
  tcp_poll_fn poll;
   
  tcp_err_fn errf;







   
  u32_t keep_idle;




  
   
  u8_t persist_cnt;
   
  u8_t persist_backoff;

   
  u8_t keep_cnt_sent;
};

struct tcp_pcb_listen {  
 
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
 
  struct tcp_pcb_listen *next; void *callback_arg; tcp_accept_fn accept; enum tcp_state state; u8_t prio; u16_t local_port;


  u8_t backlog;
  u8_t accepts_pending;

};

#line 314 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"

 
struct tcp_pcb * tcp_new     (void);

void             tcp_arg     (struct tcp_pcb *pcb, void *arg);
void             tcp_accept  (struct tcp_pcb *pcb, tcp_accept_fn accept);
void             tcp_recv    (struct tcp_pcb *pcb, tcp_recv_fn recv);
void             tcp_sent    (struct tcp_pcb *pcb, tcp_sent_fn sent);
void             tcp_poll    (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);
void             tcp_err     (struct tcp_pcb *pcb, tcp_err_fn err);

#line 331 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"

#line 340 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"

void             tcp_recved  (struct tcp_pcb *pcb, u16_t len);
err_t            tcp_bind    (struct tcp_pcb *pcb, ip_addr_t *ipaddr,
                              u16_t port);
err_t            tcp_connect (struct tcp_pcb *pcb, ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);


void             tcp_abort (struct tcp_pcb *pcb);
err_t            tcp_close   (struct tcp_pcb *pcb);
err_t            tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);

 



err_t            tcp_write   (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void             tcp_setprio (struct tcp_pcb *pcb, u8_t prio);





err_t            tcp_output  (struct tcp_pcb *pcb);


const char* tcp_debug_state_str(enum tcp_state s);








#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"
#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"
#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"
#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"
#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"
#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"





 

 
void             tcp_init    (void);   
void             tcp_tmr     (void);  

 

 
void             tcp_slowtmr (void);
void             tcp_fasttmr (void);


 
void             tcp_input   (struct pbuf *p, struct netif *inp);
 
struct tcp_pcb * tcp_alloc   (u8_t prio);
void             tcp_abandon (struct tcp_pcb *pcb, int reset);
err_t            tcp_send_empty_ack(struct tcp_pcb *pcb);
void             tcp_rexmit  (struct tcp_pcb *pcb);
void             tcp_rexmit_rto  (struct tcp_pcb *pcb);
void             tcp_rexmit_fast (struct tcp_pcb *pcb);
u32_t            tcp_update_rcv_ann_wnd(struct tcp_pcb *pcb);
err_t            tcp_process_refused_data(struct tcp_pcb *pcb);









 
#line 91 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"






 
#line 110 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"



 























 
















 



__packed
struct tcp_hdr {
  u16_t src;
  u16_t dest;
  u32_t seqno;
  u32_t ackno;
  u16_t _hdrlen_rsvd_flags;
  u16_t wnd;
  u16_t chksum;
  u16_t urgp;
} ;


















 





#line 211 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 218 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 225 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 234 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 243 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 250 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 257 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"









 






 


 
struct tcp_seg {
  struct tcp_seg *next;     
  struct pbuf *p;           
  u16_t len;                

  u16_t oversize_left;     

 





  u8_t  flags;




  struct tcp_hdr *tcphdr;   
};





 


 
extern struct tcp_pcb *tcp_input_pcb;
extern u32_t tcp_ticks;
extern u8_t tcp_active_pcbs_changed;

 
union tcp_listen_pcbs_t {  
  struct tcp_pcb_listen *listen_pcbs; 
  struct tcp_pcb *pcbs;
};
extern struct tcp_pcb *tcp_bound_pcbs;
extern union tcp_listen_pcbs_t tcp_listen_pcbs;
extern struct tcp_pcb *tcp_active_pcbs;  

 
extern struct tcp_pcb *tcp_tw_pcbs;       

extern struct tcp_pcb *tcp_tmp_pcb;       






 

 
#line 367 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 374 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"

#line 392 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"






















 
struct tcp_pcb *tcp_pcb_copy(struct tcp_pcb *pcb);
void tcp_pcb_purge(struct tcp_pcb *pcb);
void tcp_pcb_remove(struct tcp_pcb **pcblist, struct tcp_pcb *pcb);

void tcp_segs_free(struct tcp_seg *seg);
void tcp_seg_free(struct tcp_seg *seg);
struct tcp_seg *tcp_seg_copy(struct tcp_seg *seg);

#line 433 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"






err_t tcp_send_fin(struct tcp_pcb *pcb);
err_t tcp_enqueue_flags(struct tcp_pcb *pcb, u8_t flags);

void tcp_rexmit_seg(struct tcp_pcb *pcb, struct tcp_seg *seg);

void tcp_rst(u32_t seqno, u32_t ackno,
       ip_addr_t *local_ip, ip_addr_t *remote_ip,
       u16_t local_port, u16_t remote_port);

u32_t tcp_next_iss(void);

void tcp_keepalive(struct tcp_pcb *pcb);
void tcp_zero_window_probe(struct tcp_pcb *pcb);


u16_t tcp_eff_send_mss(u16_t sendmss, ip_addr_t *addr);



err_t tcp_recv_null(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err);


#line 474 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp_impl.h"


 
void tcp_timer_needed(void);








#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 47 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 48 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp.h"






























 




#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp.h"





 
typedef enum {
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp_std.h"










 


 







 









 

MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,


#line 53 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp_std.h"


MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,

MEMP_TCPIP_MSG_INPKT,








MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,


#line 93 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp_std.h"








 
MEMP_PBUF,
MEMP_PBUF_POOL,





 







 
#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp.h"
  MEMP_MAX
} memp_t;

#line 77 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp.h"





#line 91 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp.h"

#line 99 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/memp.h"

void  memp_init(void);





void *memp_malloc(memp_t type);

void  memp_free(memp_t type, void *mem);







#line 49 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 50 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 51 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet_chksum.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet_chksum.h"

#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet_chksum.h"
#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet_chksum.h"

 





 




 




#line 68 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet_chksum.h"





u16_t inet_chksum(void *dataptr, u16_t len);
u16_t inet_chksum_pbuf(struct pbuf *p);
u16_t inet_chksum_pseudo(struct pbuf *p,
       ip_addr_t *src, ip_addr_t *dest,
       u8_t proto, u16_t proto_len);
u16_t inet_chksum_pseudo_partial(struct pbuf *p,
       ip_addr_t *src, ip_addr_t *dest,
       u8_t proto, u16_t proto_len, u16_t chksum_len);










#line 52 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"
#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"





#line 166 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 174 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 182 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 190 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 198 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 206 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 214 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 222 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 230 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 244 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 258 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

#line 270 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

 
#line 287 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"





#line 53 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"































 



#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"





#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

struct udp_pcb;
struct netif;



 
enum snmp_ifType {
  snmp_ifType_other=1,                 
  snmp_ifType_regular1822,
  snmp_ifType_hdh1822,
  snmp_ifType_ddn_x25,
  snmp_ifType_rfc877_x25,
  snmp_ifType_ethernet_csmacd,
  snmp_ifType_iso88023_csmacd,
  snmp_ifType_iso88024_tokenBus,
  snmp_ifType_iso88025_tokenRing,
  snmp_ifType_iso88026_man,
  snmp_ifType_starLan,
  snmp_ifType_proteon_10Mbit,
  snmp_ifType_proteon_80Mbit,
  snmp_ifType_hyperchannel,
  snmp_ifType_fddi,
  snmp_ifType_lapb,
  snmp_ifType_sdlc,
  snmp_ifType_ds1,                     
  snmp_ifType_e1,                      
  snmp_ifType_basicISDN,
  snmp_ifType_primaryISDN,             
  snmp_ifType_propPointToPointSerial,
  snmp_ifType_ppp,
  snmp_ifType_softwareLoopback,
  snmp_ifType_eon,                     
  snmp_ifType_ethernet_3Mbit,
  snmp_ifType_nsip,                    
  snmp_ifType_slip,                    
  snmp_ifType_ultra,                   
  snmp_ifType_ds3,                     
  snmp_ifType_sip,                     
  snmp_ifType_frame_relay
};

#line 232 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

 
#line 243 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

 
#line 255 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

 



 
#line 282 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

 
#line 310 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"
 
#line 320 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

 
#line 328 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"

 
#line 360 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/snmp.h"







#line 54 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"




#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 59 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"


 
#line 73 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"


 




 
static void tcp_output_segment(struct tcp_seg *seg, struct tcp_pcb *pcb);










 
static struct pbuf *
tcp_output_alloc_header(struct tcp_pcb *pcb, u16_t optlen, u16_t datalen,
                      u32_t seqno_be  )
{
  struct tcp_hdr *tcphdr;
  struct pbuf *p = pbuf_alloc(PBUF_IP, 20 + optlen + datalen, PBUF_RAM);
  if (p != 0) {
    do { if(!((p->len >= 20 + optlen))) ; } while(0);

    tcphdr = (struct tcp_hdr *)p->payload;
    tcphdr->src = lwip_htons(pcb->local_port);
    tcphdr->dest = lwip_htons(pcb->remote_port);
    tcphdr->seqno = seqno_be;
    tcphdr->ackno = lwip_htonl(pcb->rcv_nxt);
    (tcphdr)->_hdrlen_rsvd_flags = lwip_htons((((5 + optlen / 4)) << 12) | (0x10U));
    tcphdr->wnd = lwip_htons(pcb->rcv_ann_wnd);
    tcphdr->chksum = 0;
    tcphdr->urgp = 0;

     
    pcb->rcv_ann_right_edge = pcb->rcv_nxt + pcb->rcv_ann_wnd;
  }
  return p;
}






 
err_t
tcp_send_fin(struct tcp_pcb *pcb)
{
   
  if (pcb->unsent != 0) {
    struct tcp_seg *last_unsent;
    for (last_unsent = pcb->unsent; last_unsent->next != 0;
         last_unsent = last_unsent->next);

    if (((lwip_ntohs((last_unsent->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x02U | 0x01U | 0x04U)) == 0) {
       
      (last_unsent->tcphdr)->_hdrlen_rsvd_flags = ((last_unsent->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x01U));
      pcb->flags |= ((u8_t)0x20U);
      return 0;
    }
  }
   
  return tcp_enqueue_flags(pcb, 0x01U);
}














 
static struct tcp_seg *
tcp_create_segment(struct tcp_pcb *pcb, struct pbuf *p, u8_t flags, u32_t seqno, u8_t optflags)
{
  struct tcp_seg *seg;
  u8_t optlen = (optflags & (u8_t)0x01U ? 4 : 0) + (optflags & (u8_t)0x02U ? 12 : 0);

  if ((seg = (struct tcp_seg *)memp_malloc(MEMP_TCP_SEG)) == 0) {
    do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_create_segment: no memory.\n");; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
    pbuf_free(p);
    return 0;
  }
  seg->flags = optflags;
  seg->next = 0;
  seg->p = p;
  seg->len = p->tot_len - optlen;

  seg->oversize_left = 0;
#line 183 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"

   
  if (pbuf_header(p, 20)) {
    do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_create_segment: no room for TCP header in pbuf.\n");; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
    ;
    tcp_seg_free(seg);
    return 0;
  }
  seg->tcphdr = (struct tcp_hdr *)seg->p->payload;
  seg->tcphdr->src = lwip_htons(pcb->local_port);
  seg->tcphdr->dest = lwip_htons(pcb->remote_port);
  seg->tcphdr->seqno = lwip_htonl(seqno);
   
  (seg->tcphdr)->_hdrlen_rsvd_flags = lwip_htons((((5 + optlen / 4)) << 12) | (flags));
   
  seg->tcphdr->urgp = 0;
  return seg;
} 















 

static struct pbuf *
tcp_pbuf_prealloc(pbuf_layer layer, u16_t length, u16_t max_length,
                  u16_t *oversize, struct tcp_pcb *pcb, u8_t apiflags,
                  u8_t first_seg)
{
  struct pbuf *p;
  u16_t alloc = length;

#line 234 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
  if (length < max_length) {
    









 
    if ((apiflags & 0x02) ||
        (!(pcb->flags & ((u8_t)0x40U)) &&
         (!first_seg ||
          pcb->unsent != 0 ||
          pcb->unacked != 0))) {
      alloc = (((max_length) < ((((length + (1500 - 40)) + 4 - 1) & ~(4-1)))) ? (max_length) : ((((length + (1500 - 40)) + 4 - 1) & ~(4-1))));
    }
  }

  p = pbuf_alloc(layer, alloc, PBUF_RAM);
  if (p == 0) {
    return 0;
  }
  do { if(!(p->next == 0)) ; } while(0);
  *oversize = p->len - length;
   
  p->len = p->tot_len = length;
  return p;
}




#line 286 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"






 
static err_t
tcp_write_checks(struct tcp_pcb *pcb, u16_t len)
{
   
  if ((pcb->state != ESTABLISHED) &&
      (pcb->state != CLOSE_WAIT) &&
      (pcb->state != SYN_SENT) &&
      (pcb->state != SYN_RCVD)) {
    do { if ( ((0x00U | 0x20U | 0x03) & 0x80U) && ((0x00U | 0x20U | 0x03) & 0x00U) && ((s16_t)((0x00U | 0x20U | 0x03) & 0x03) >= 0x00)) { printf ("tcp_write() called in invalid state\n");; if ((0x00U | 0x20U | 0x03) & 0x08U) { while(1); } } } while(0);
    return -13;
  } else if (len == 0) {
    return 0;
  }

   
  if (len > pcb->snd_buf) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x00U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { printf ("tcp_write: too much data (len=%" "hu" " > snd_buf=%" "hu" ")\n", len, pcb->snd_buf);; if ((0x00U | 3) & 0x08U) { while(1); } } } while(0);

    pcb->flags |= ((u8_t)0x80U);
    return -1;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_write: queuelen: %" "hu" "\n", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  
 
   
  if ((pcb->snd_queuelen >= ((2 * (4 * (1500 - 40))) / (1500 - 40))) || (pcb->snd_queuelen > (0xffffU-3))) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x00U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { printf ("tcp_write: too long queue %" "hu" " (max %" "hu" ")\n", pcb->snd_queuelen, ((2 * (4 * (1500 - 40))) / (1500 - 40)));; if ((0x00U | 3) & 0x08U) { while(1); } } } while(0);

    ;
    pcb->flags |= ((u8_t)0x80U);
    return -1;
  }
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) ; } while(0);

  } else {
    do { if(!(pcb->unacked == 0 && pcb->unsent == 0)) ; } while(0);

  }
  return 0;
}
















 
err_t
tcp_write(struct tcp_pcb *pcb, const void *arg, u16_t len, u8_t apiflags)
{
  struct pbuf *concat_p = 0;
  struct tcp_seg *last_unsent = 0, *seg = 0, *prev_seg = 0, *queue = 0;
  u16_t pos = 0;  
  u16_t queuelen;
  u8_t optlen = 0;
  u8_t optflags = 0;

  u16_t oversize = 0;
  u16_t oversize_used = 0;
#line 371 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
  err_t err;
   
  u16_t mss_local = (((pcb->mss) < (pcb->snd_wnd_max/2)) ? (pcb->mss) : (pcb->snd_wnd_max/2));






  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_write(pcb=%p, data=%p, len=%" "hu" ", apiflags=%" "hu" ")\n", (void *)pcb, arg, len, (u16_t)apiflags);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  do { if (!(arg != 0)) { ; return -14;;}} while(0);


  err = tcp_write_checks(pcb, len);
  if (err != 0) {
    return err;
  }
  queuelen = pcb->snd_queuelen;

#line 397 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"


  



















 

   
  if (pcb->unsent != 0) {
    u16_t space;
    u16_t unsent_optlen;

     
    for (last_unsent = pcb->unsent; last_unsent->next != 0;
         last_unsent = last_unsent->next);

     
    unsent_optlen = (last_unsent->flags & (u8_t)0x01U ? 4 : 0) + (last_unsent->flags & (u8_t)0x02U ? 12 : 0);
    space = mss_local - (last_unsent->len + unsent_optlen);

    





 


     
    do { if(!(pcb->unsent_oversize == last_unsent->oversize_left)) ; } while(0);


    oversize = pcb->unsent_oversize;
    if (oversize > 0) {
      do { if(!(oversize_used <= space)) ; } while(0);
      seg = last_unsent;
      oversize_used = oversize < len ? oversize : len;
      pos += oversize_used;
      oversize -= oversize_used;
      space -= oversize_used;
    }
     
    do { if(!((oversize == 0) || (pos == len))) ; } while(0);


    





 
    if ((pos < len) && (space > 0) && (last_unsent->len > 0)) {
      u16_t seglen = space < len - pos ? space : len - pos;
      seg = last_unsent;

      

 
      if (apiflags & 0x01) {
         
        if ((concat_p = tcp_pbuf_prealloc(PBUF_RAW, seglen, space, &oversize, pcb, apiflags, 1)) == 0) {
          do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_write : could not allocate memory for pbuf copy size %" "hu" "\n", seglen);; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);


          goto memerr;
        }

        last_unsent->oversize_left += oversize;

        memcpy(concat_p->payload,(u8_t*)arg + pos,seglen);



      } else {
         
        if ((concat_p = pbuf_alloc(PBUF_RAW, seglen, PBUF_ROM)) == 0) {
          do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_write: could not allocate memory for zero-copy pbuf\n");; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);

          goto memerr;
        }
#line 502 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
         
        concat_p->payload = (u8_t*)arg + pos;
      }

      pos += seglen;
      queuelen += pbuf_clen(concat_p);
    }
  } else {

    do { if(!(pcb->unsent_oversize == 0)) ; } while(0);


  }

  




 
  while (pos < len) {
    struct pbuf *p;
    u16_t left = len - pos;
    u16_t max_len = mss_local - optlen;
    u16_t seglen = left > max_len ? max_len : left;





    if (apiflags & 0x01) {
      
 
      if ((p = tcp_pbuf_prealloc(PBUF_TRANSPORT, seglen + optlen, mss_local, &oversize, pcb, apiflags, queue == 0)) == 0) {
        do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_write : could not allocate memory for pbuf copy size %" "hu" "\n", seglen);; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
        goto memerr;
      }
      do { if(!((p->len >= seglen))) ; } while(0);

      memcpy((char *)p->payload + optlen,(u8_t*)arg + pos,seglen);
    } else {
      



 
      struct pbuf *p2;

      do { if(!(oversize == 0)) ; } while(0);

      if ((p2 = pbuf_alloc(PBUF_TRANSPORT, seglen, PBUF_ROM)) == 0) {
        do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_write: could not allocate memory for zero-copy pbuf\n");; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
        goto memerr;
      }




       
      p2->payload = (u8_t*)arg + pos;

       
      if ((p = pbuf_alloc(PBUF_TRANSPORT, optlen, PBUF_RAM)) == 0) {
        
 
        pbuf_free(p2);
        do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_write: could not allocate memory for header pbuf\n");; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
        goto memerr;
      }
       
      pbuf_cat(p , p2 );
    }

    queuelen += pbuf_clen(p);

    

 
    if ((queuelen > ((2 * (4 * (1500 - 40))) / (1500 - 40))) || (queuelen > (0xffffU-3))) {
      do { if ( ((0x00U | 2) & 0x80U) && ((0x00U | 2) & 0x00U) && ((s16_t)((0x00U | 2) & 0x03) >= 0x00)) { printf ("tcp_write: queue too long %" "hu" " (%" "hu" ")\n", queuelen, ((2 * (4 * (1500 - 40))) / (1500 - 40)));; if ((0x00U | 2) & 0x08U) { while(1); } } } while(0);
      pbuf_free(p);
      goto memerr;
    }

    if ((seg = tcp_create_segment(pcb, p, 0, pcb->snd_lbb + pos, optflags)) == 0) {
      goto memerr;
    }

    seg->oversize_left = oversize;
#line 597 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"

     
    if (queue == 0) {
      queue = seg;
    } else {
       
      do { if(!(prev_seg != 0)) ; } while(0);
      prev_seg->next = seg;
    }
     
    prev_seg = seg;

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("tcp_write: queueing %" "u" ":%" "u" "\n", lwip_ntohl(seg->tcphdr->seqno), lwip_ntohl(seg->tcphdr->seqno) + ((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)));; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);



    pos += seglen;
  }

  


 

  


 

  if (oversize_used > 0) {
    struct pbuf *p;
     
    for (p = last_unsent->p; p; p = p->next) {
      p->tot_len += oversize_used;
      if (p->next == 0) {
        memcpy((char *)p->payload + p->len,arg,oversize_used);
        p->len += oversize_used;
      }
    }
    last_unsent->len += oversize_used;

    do { if(!(last_unsent->oversize_left >= oversize_used)) ; } while(0);

    last_unsent->oversize_left -= oversize_used;

  }
  pcb->unsent_oversize = oversize;


  

 
  if (concat_p != 0) {
    do { if(!((last_unsent != 0))) ; } while(0);

    pbuf_cat(last_unsent->p, concat_p);
    last_unsent->len += concat_p->tot_len;
#line 661 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
  }

  


 
  if (last_unsent == 0) {
    pcb->unsent = queue;
  } else {
    last_unsent->next = queue;
  }

  

 
  pcb->snd_lbb += len;
  pcb->snd_buf -= len;
  pcb->snd_queuelen = queuelen;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_write: %" "d" " (after enqueued)\n", pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) ; } while(0);

  }

   
  if (seg != 0 && seg->tcphdr != 0 && ((apiflags & 0x02)==0)) {
    (seg->tcphdr)->_hdrlen_rsvd_flags = ((seg->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x08U));
  }

  return 0;
memerr:
  pcb->flags |= ((u8_t)0x80U);
  ;

  if (concat_p != 0) {
    pbuf_free(concat_p);
  }
  if (queue != 0) {
    tcp_segs_free(queue);
  }
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) ; } while(0);

  }
  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("tcp_write: %" "d" " (with mem err)\n", pcb->snd_queuelen);; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return -1;
}










 
err_t
tcp_enqueue_flags(struct tcp_pcb *pcb, u8_t flags)
{
  struct pbuf *p;
  struct tcp_seg *seg;
  u8_t optflags = 0;
  u8_t optlen = 0;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_enqueue_flags: queuelen: %" "hu" "\n", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  do { if(!((flags & (0x02U | 0x01U)) != 0)) ; } while(0);


   
  if ((pcb->snd_queuelen >= ((2 * (4 * (1500 - 40))) / (1500 - 40))) || (pcb->snd_queuelen > (0xffffU-3))) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x00U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { printf ("tcp_enqueue_flags: too long queue %" "hu" " (max %" "hu" ")\n", pcb->snd_queuelen, ((2 * (4 * (1500 - 40))) / (1500 - 40)));; if ((0x00U | 3) & 0x08U) { while(1); } } } while(0);

    ;
    pcb->flags |= ((u8_t)0x80U);
    return -1;
  }

  if (flags & 0x02U) {
    optflags = (u8_t)0x01U;
  }





  optlen = (optflags & (u8_t)0x01U ? 4 : 0) + (optflags & (u8_t)0x02U ? 12 : 0);

  


 
  if (pcb->snd_buf == 0) {
    do { if ( ((0x00U | 3) & 0x80U) && ((0x00U | 3) & 0x00U) && ((s16_t)((0x00U | 3) & 0x03) >= 0x00)) { printf ("tcp_enqueue_flags: no send buffer available\n");; if ((0x00U | 3) & 0x08U) { while(1); } } } while(0);
    ;
    return -1;
  }

   
  if ((p = pbuf_alloc(PBUF_TRANSPORT, optlen, PBUF_RAM)) == 0) {
    pcb->flags |= ((u8_t)0x80U);
    ;
    return -1;
  }
  do { if(!((p->len >= optlen))) ; } while(0);


   
  if ((seg = tcp_create_segment(pcb, p, flags, pcb->snd_lbb, optflags)) == 0) {
    pcb->flags |= ((u8_t)0x80U);
    ;
    return -1;
  }
  do { if(!(((mem_ptr_t)seg->tcphdr % 4) == 0)) ; } while(0);
  do { if(!(seg->len == 0)) ; } while(0);

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("tcp_enqueue_flags: queueing %" "u" ":%" "u" " (0x%" "hx" ")\n", lwip_ntohl(seg->tcphdr->seqno), lwip_ntohl(seg->tcphdr->seqno) + ((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)), (u16_t)flags);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);





   
  if (pcb->unsent == 0) {
    pcb->unsent = seg;
  } else {
    struct tcp_seg *useg;
    for (useg = pcb->unsent; useg->next != 0; useg = useg->next);
    useg->next = seg;
  }

   
  pcb->unsent_oversize = 0;


   
  if ((flags & 0x02U) || (flags & 0x01U)) {
    pcb->snd_lbb++;
     
    pcb->snd_buf--;
  }
  if (flags & 0x01U) {
    pcb->flags |= ((u8_t)0x20U);
  }

   
  pcb->snd_queuelen += pbuf_clen(seg->p);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_enqueue_flags: %" "d" " (after enqueued)\n", pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  if (pcb->snd_queuelen != 0) {
    do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) ; } while(0);

  }

  return 0;
}

#line 836 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"




 
err_t
tcp_send_empty_ack(struct tcp_pcb *pcb)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
  u8_t optlen = 0;
	(void)tcphdr;







  p = tcp_output_alloc_header(pcb, optlen, 0, lwip_htonl(pcb->snd_nxt));
  if (p == 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_output: (ACK) could not allocate pbuf\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    return -2;
  }
  tcphdr = (struct tcp_hdr *)p->payload;
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_output: sending ACK for %" "u" "\n", pcb->rcv_nxt);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

   
  pcb->flags &= ~(((u8_t)0x01U) | ((u8_t)0x02U));

   
#line 874 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"

#line 883 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
  ip_output(p, &(pcb->local_ip), &(pcb->remote_ip), pcb->ttl, pcb->tos,
      6);

  pbuf_free(p);

  return 0;
}







 
err_t
tcp_output(struct tcp_pcb *pcb)
{
  struct tcp_seg *seg, *useg;
  u32_t wnd, snd_nxt;




   
  do { if(!(pcb->state != LISTEN)) ; } while(0);


  


 
  if (tcp_input_pcb == pcb) {
    return 0;
  }

  wnd = (((pcb->snd_wnd) < (pcb->cwnd)) ? (pcb->snd_wnd) : (pcb->cwnd));

  seg = pcb->unsent;

  




 
  if (pcb->flags & ((u8_t)0x02U) &&
     (seg == 0 ||
      lwip_ntohl(seg->tcphdr->seqno) - pcb->lastack + seg->len > wnd)) {
     return tcp_send_empty_ack(pcb);
  }

   
  useg = pcb->unacked;
  if (useg != 0) {
    for (; useg->next != 0; useg = useg->next);
  }

#line 962 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
   
  while (seg != 0 &&
         lwip_ntohl(seg->tcphdr->seqno) - pcb->lastack + seg->len <= wnd) {
    do { if(!(((lwip_ntohs((seg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x04U) == 0)) ; } while(0);

    





 
    if((((((pcb)->unacked == 0) || ((pcb)->flags & (((u8_t)0x40U) | ((u8_t)0x04U))) || (((pcb)->unsent != 0) && (((pcb)->unsent->next != 0) || ((pcb)->unsent->len >= (pcb)->mss))) || ((((pcb)->snd_buf) == 0) || (((pcb)->snd_queuelen) >= ((2 * (4 * (1500 - 40))) / (1500 - 40)))) ) ? 1 : 0) == 0) &&
      ((pcb->flags & (((u8_t)0x80U) | ((u8_t)0x20U))) == 0)){
      break;
    }
#line 986 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"

    pcb->unsent = seg->next;

    if (pcb->state != SYN_SENT) {
      (seg->tcphdr)->_hdrlen_rsvd_flags = ((seg->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x10U));
      pcb->flags &= ~(((u8_t)0x01U) | ((u8_t)0x02U));
    }

    tcp_output_segment(seg, pcb);
    snd_nxt = lwip_ntohl(seg->tcphdr->seqno) + ((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
    if (((s32_t)((u32_t)(pcb->snd_nxt) - (u32_t)(snd_nxt)) < 0)) {
      pcb->snd_nxt = snd_nxt;
    }
     
    if (((seg)->len + (((lwip_ntohs(((seg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)) > 0) {
      seg->next = 0;
       
      if (pcb->unacked == 0) {
        pcb->unacked = seg;
        useg = seg;
       
      } else {
        

 
        if (((s32_t)((u32_t)(lwip_ntohl(seg->tcphdr->seqno)) - (u32_t)(lwip_ntohl(useg->tcphdr->seqno))) < 0)) {
           
          struct tcp_seg **cur_seg = &(pcb->unacked);
          while (*cur_seg &&
            ((s32_t)((u32_t)(lwip_ntohl((*cur_seg)->tcphdr->seqno)) - (u32_t)(lwip_ntohl(seg->tcphdr->seqno))) < 0)) {
              cur_seg = &((*cur_seg)->next );
          }
          seg->next = (*cur_seg);
          (*cur_seg) = seg;
        } else {
           
          useg->next = seg;
          useg = useg->next;
        }
      }
     
    } else {
      tcp_seg_free(seg);
    }
    seg = pcb->unsent;
  }

  if (pcb->unsent == 0) {
     
    pcb->unsent_oversize = 0;
  }


  pcb->flags &= ~((u8_t)0x80U);
  return 0;
}






 
static void
tcp_output_segment(struct tcp_seg *seg, struct tcp_pcb *pcb)
{
  u16_t len;
  struct netif *netif;
  u32_t *opts;

   
  ;

  
 
  seg->tcphdr->ackno = lwip_htonl(pcb->rcv_nxt);

   
  seg->tcphdr->wnd = lwip_htons(pcb->rcv_ann_wnd);

  pcb->rcv_ann_right_edge = pcb->rcv_nxt + pcb->rcv_ann_wnd;

  
 
  opts = (u32_t *)(void *)(seg->tcphdr + 1);
  if (seg->flags & (u8_t)0x01U) {
    u16_t mss;

    mss = tcp_eff_send_mss((1500 - 40), &pcb->remote_ip);



    *opts = lwip_htonl(0x02040000 | ((mss) & 0xFFFF));
    opts += 1;
  }
#line 1089 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"

  
 
  if (pcb->rtime == -1) {
    pcb->rtime = 0;
  }

  
 
  if (((&(pcb->local_ip)) == 0 || (&(pcb->local_ip))->addr == ((u32_t)0x00000000UL))) {
    netif = ip_route(&(pcb->remote_ip));
    if (netif == 0) {
      return;
    }
    ((pcb->local_ip). addr = (netif->ip_addr). addr);
  }

  if (pcb->rttest == 0) {
    pcb->rttest = tcp_ticks;
    pcb->rtseq = lwip_ntohl(seg->tcphdr->seqno);

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_output_segment: rtseq %" "u" "\n", pcb->rtseq);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  }
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_output_segment: %" "u" ":%" "u" "\n", lwip_htonl(seg->tcphdr->seqno), lwip_htonl(seg->tcphdr->seqno) + seg->len);; if ((0x00U) & 0x08U) { while(1); } } } while(0);



  len = (u16_t)((u8_t *)seg->tcphdr - (u8_t *)seg->p->payload);

  seg->p->len -= len;
  seg->p->tot_len -= len;

  seg->p->payload = seg->tcphdr;

  seg->tcphdr->chksum = 0;
#line 1164 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_out.c"
  ;





  ip_output(seg->p, &(pcb->local_ip), &(pcb->remote_ip), pcb->ttl, pcb->tos,
      6);

}




















 
void
tcp_rst(u32_t seqno, u32_t ackno,
  ip_addr_t *local_ip, ip_addr_t *remote_ip,
  u16_t local_port, u16_t remote_port)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
  p = pbuf_alloc(PBUF_IP, 20, PBUF_RAM);
  if (p == 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_rst: could not allocate memory for pbuf\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return;
  }
  do { if(!((p->len >= sizeof(struct tcp_hdr)))) ; } while(0);


  tcphdr = (struct tcp_hdr *)p->payload;
  tcphdr->src = lwip_htons(local_port);
  tcphdr->dest = lwip_htons(remote_port);
  tcphdr->seqno = lwip_htonl(seqno);
  tcphdr->ackno = lwip_htonl(ackno);
  (tcphdr)->_hdrlen_rsvd_flags = lwip_htons(((20/4) << 12) | (0x04U | 0x10U));
  tcphdr->wnd = (((((4 * (1500 - 40))) & 0xff) << 8) | ((((4 * (1500 - 40))) & 0xff00) >> 8));
  tcphdr->chksum = 0;
  tcphdr->urgp = 0;





  ;
  ;
    
  ip_output(p, local_ip, remote_ip, (255), 0, 6);
  pbuf_free(p);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_rst: seqno %" "u" " ackno %" "u" ".\n", seqno, ackno);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
}







 
void
tcp_rexmit_rto(struct tcp_pcb *pcb)
{
  struct tcp_seg *seg;

  if (pcb->unacked == 0) {
    return;
  }

   
  for (seg = pcb->unacked; seg->next != 0; seg = seg->next);
   
  seg->next = pcb->unsent;
   
  pcb->unsent = pcb->unacked;
   
  pcb->unacked = 0;
   

   
  ++pcb->nrtx;

   
  pcb->rttest = 0;

   
  tcp_output(pcb);
}







 
void
tcp_rexmit(struct tcp_pcb *pcb)
{
  struct tcp_seg *seg;
  struct tcp_seg **cur_seg;

  if (pcb->unacked == 0) {
    return;
  }

   
   
  seg = pcb->unacked;
  pcb->unacked = seg->next;

  cur_seg = &(pcb->unsent);
  while (*cur_seg &&
    ((s32_t)((u32_t)(lwip_ntohl((*cur_seg)->tcphdr->seqno)) - (u32_t)(lwip_ntohl(seg->tcphdr->seqno))) < 0)) {
      cur_seg = &((*cur_seg)->next );
  }
  seg->next = *cur_seg;
  *cur_seg = seg;

  if (seg->next == 0) {
     
    pcb->unsent_oversize = 0;
  }


  ++pcb->nrtx;

   
  pcb->rttest = 0;

   
  ;
  
 
}






 
void 
tcp_rexmit_fast(struct tcp_pcb *pcb)
{
  if (pcb->unacked != 0 && !(pcb->flags & ((u8_t)0x04U))) {
     
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: dupacks %" "hu" " (%" "u" "), fast retransmit %" "u" "\n", (u16_t)pcb->dupacks, pcb->lastack, lwip_ntohl(pcb->unacked->tcphdr->seqno));; if ((0x00U) & 0x08U) { while(1); } } } while(0);




    tcp_rexmit(pcb);

    
 
    if (pcb->cwnd > pcb->snd_wnd) {
      pcb->ssthresh = pcb->snd_wnd / 2;
    } else {
      pcb->ssthresh = pcb->cwnd / 2;
    }
    
     
    if (pcb->ssthresh < 2*pcb->mss) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: The minimum value for ssthresh %" "hu" " should be min 2 mss %" "hu" "...\n", pcb->ssthresh, 2*pcb->mss);; if ((0x00U) & 0x08U) { while(1); } } } while(0);



      pcb->ssthresh = 2*pcb->mss;
    }
    
    pcb->cwnd = pcb->ssthresh + 3 * pcb->mss;
    pcb->flags |= ((u8_t)0x04U);
  } 
}









 
void
tcp_keepalive(struct tcp_pcb *pcb)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
	(void)tcphdr;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_keepalive: sending KEEPALIVE probe to %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" "\n", ((u16_t)(((u8_t*)(&pcb->remote_ip))[0])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[1])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[2])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[3])));; if ((0x00U) & 0x08U) { while(1); } } } while(0);



  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_keepalive: tcp_ticks %" "u" "   pcb->tmr %" "u" " pcb->keep_cnt_sent %" "hu" "\n", tcp_ticks, pcb->tmr, pcb->keep_cnt_sent);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

   
  p = tcp_output_alloc_header(pcb, 0, 0, lwip_htonl(pcb->snd_nxt - 1));
  if(p == 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_keepalive: could not allocate memory for pbuf\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    return;
  }
  tcphdr = (struct tcp_hdr *)p->payload;





  ;

   




  ip_output(p, &pcb->local_ip, &pcb->remote_ip, pcb->ttl, 0, 6);


  pbuf_free(p);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_keepalive: seqno %" "u" " ackno %" "u" ".\n", pcb->snd_nxt - 1, pcb->rcv_nxt);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

}









 
void
tcp_zero_window_probe(struct tcp_pcb *pcb)
{
  struct pbuf *p;
  struct tcp_hdr *tcphdr;
  struct tcp_seg *seg;
  u16_t len;
  u8_t is_fin;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_zero_window_probe: sending ZERO WINDOW probe to %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" "\n", ((u16_t)(((u8_t*)(&pcb->remote_ip))[0])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[1])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[2])), ((u16_t)(((u8_t*)(&pcb->remote_ip))[3])));; if ((0x00U) & 0x08U) { while(1); } } } while(0);





  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_zero_window_probe: tcp_ticks %" "u" "   pcb->tmr %" "u" " pcb->keep_cnt_sent %" "hu" "\n", tcp_ticks, pcb->tmr, pcb->keep_cnt_sent);; if ((0x00U) & 0x08U) { while(1); } } } while(0);




  seg = pcb->unacked;

  if(seg == 0) {
    seg = pcb->unsent;
  }
  if(seg == 0) {
    return;
  }

  is_fin = (((lwip_ntohs((seg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0) && (seg->len == 0);
   
  len = is_fin ? 0 : 1;

  p = tcp_output_alloc_header(pcb, 0, len, seg->tcphdr->seqno);
  if(p == 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_zero_window_probe: no memory for pbuf\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    return;
  }
  tcphdr = (struct tcp_hdr *)p->payload;

  if (is_fin) {
     
    (tcphdr)->_hdrlen_rsvd_flags = (((tcphdr)->_hdrlen_rsvd_flags & (((((u16_t)(~(u16_t)(0x3fU))) & 0xff) << 8) | ((((u16_t)(~(u16_t)(0x3fU))) & 0xff00) >> 8))) | lwip_htons(0x10U | 0x01U));
  } else {
     
    char *d = ((char *)p->payload + 20);
    

 
    pbuf_copy_partial(seg->p, d, 1, seg->p->tot_len - seg->len);
  }





  ;

   




  ip_output(p, &pcb->local_ip, &pcb->remote_ip, pcb->ttl, 0, 6);


  pbuf_free(p);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_zero_window_probe: seqno %" "u" " ackno %" "u" ".\n", pcb->snd_nxt - 1, pcb->rcv_nxt);; if ((0x00U) & 0x08U) { while(1); } } } while(0);


}
