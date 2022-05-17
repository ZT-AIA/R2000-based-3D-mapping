#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"









 































 

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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"



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








#line 49 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
#line 50 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
#line 51 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
#line 52 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
#line 53 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
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







#line 54 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
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










#line 55 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
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





#line 56 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
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







#line 57 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/perf.h"






























 






#line 58 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"



 
static struct tcp_seg inseg;
static struct tcp_hdr *tcphdr;
static struct ip_hdr *iphdr;
static u32_t seqno, ackno;
static u8_t flags;
static u16_t tcplen;

static u8_t recv_flags;
static struct pbuf *recv_data;

struct tcp_pcb *tcp_input_pcb;

 
static err_t tcp_process(struct tcp_pcb *pcb);
static void tcp_receive(struct tcp_pcb *pcb);
static void tcp_parseopt(struct tcp_pcb *pcb);

static err_t tcp_listen_input(struct tcp_pcb_listen *pcb);
static err_t tcp_timewait_input(struct tcp_pcb *pcb);









 
void
tcp_input(struct pbuf *p, struct netif *inp)
{
  struct tcp_pcb *pcb, *prev;
  struct tcp_pcb_listen *lpcb;




  u8_t hdrlen;
  err_t err;

  ;

  ;
  ;

  iphdr = (struct ip_hdr *)p->payload;
  tcphdr = (struct tcp_hdr *)((u8_t *)p->payload + ((iphdr)->_v_hl & 0x0f) * 4);





   
  if (pbuf_header(p, -((s16_t)(((iphdr)->_v_hl & 0x0f) * 4))) || (p->tot_len < sizeof(struct tcp_hdr))) {
     
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_input: short packet (%" "hu" " bytes) discarded\n", p->tot_len);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    goto dropped;
  }

   
  if (ip4_addr_isbroadcast((&current_iphdr_dest)->addr, (inp)) ||
      (((&current_iphdr_dest)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    ;
    goto dropped;
  }

#line 144 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"

  
 
  hdrlen = (lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12);
  if(pbuf_header(p, -(hdrlen * 4))){
     
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_input: short packet\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    goto dropped;
  }

   
  tcphdr->src = lwip_ntohs(tcphdr->src);
  tcphdr->dest = lwip_ntohs(tcphdr->dest);
  seqno = tcphdr->seqno = lwip_ntohl(tcphdr->seqno);
  ackno = tcphdr->ackno = lwip_ntohl(tcphdr->ackno);
  tcphdr->wnd = lwip_ntohs(tcphdr->wnd);

  flags = (lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU);
  tcplen = p->tot_len + ((flags & (0x01U | 0x02U)) ? 1 : 0);

  
 
  prev = 0;

  
  for(pcb = tcp_active_pcbs; pcb != 0; pcb = pcb->next) {
    do { if(!(pcb->state != CLOSED)) ; } while(0);
    do { if(!(pcb->state != TIME_WAIT)) ; } while(0);
    do { if(!(pcb->state != LISTEN)) ; } while(0);
    if (pcb->remote_port == tcphdr->src &&
       pcb->local_port == tcphdr->dest &&
       ((&(pcb->remote_ip))->addr == (&current_iphdr_src)->addr) &&
       ((&(pcb->local_ip))->addr == (&current_iphdr_dest)->addr)) {

      

 
      do { if(!(pcb->next != pcb)) ; } while(0);
      if (prev != 0) {
        prev->next = pcb->next;
        pcb->next = tcp_active_pcbs;
        tcp_active_pcbs = pcb;
      }
      do { if(!(pcb->next != pcb)) ; } while(0);
      break;
    }
    prev = pcb;
  }

  if (pcb == 0) {
    
 
    for(pcb = tcp_tw_pcbs; pcb != 0; pcb = pcb->next) {
      do { if(!(pcb->state == TIME_WAIT)) ; } while(0);
      if (pcb->remote_port == tcphdr->src &&
         pcb->local_port == tcphdr->dest &&
         ((&(pcb->remote_ip))->addr == (&current_iphdr_src)->addr) &&
         ((&(pcb->local_ip))->addr == (&current_iphdr_dest)->addr)) {
        

 
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_input: packed for TIME_WAITing connection.\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        tcp_timewait_input(pcb);
        pbuf_free(p);
        return;
      }
    }

    
 
    prev = 0;
    for(lpcb = tcp_listen_pcbs.listen_pcbs; lpcb != 0; lpcb = lpcb->next) {
      if (lpcb->local_port == tcphdr->dest) {
#line 228 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
        if (((&(lpcb->local_ip))->addr == (&current_iphdr_dest)->addr) ||
            ((&(lpcb->local_ip)) == 0 || (&(lpcb->local_ip))->addr == ((u32_t)0x00000000UL))) {
           
          break;
        }

      }
      prev = (struct tcp_pcb *)lpcb;
    }
#line 245 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
    if (lpcb != 0) {
      

 
      if (prev != 0) {
        ((struct tcp_pcb_listen *)prev)->next = lpcb->next;
               
        lpcb->next = tcp_listen_pcbs.listen_pcbs;
               
        tcp_listen_pcbs.listen_pcbs = lpcb;
      }
    
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_input: packed for LISTENing connection.\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_listen_input(lpcb);
      pbuf_free(p);
      return;
    }
  }








  if (pcb != 0) {
     






     
    inseg.next = 0;
    inseg.len = p->tot_len;
    inseg.p = p;
    inseg.tcphdr = tcphdr;

    recv_data = 0;
    recv_flags = 0;

    if (flags & 0x08U) {
      p->flags |= 0x01U;
    }

     
    if (pcb->refused_data != 0) {
      if ((tcp_process_refused_data(pcb) == -10) ||
        ((pcb->refused_data != 0) && (tcplen > 0))) {
        
 
        ;
        ;
        goto aborted;
      }
    }
    tcp_input_pcb = pcb;
    err = tcp_process(pcb);
    
 
    if (err != -10) {
      if (recv_flags & (u8_t)0x08U) {
        


 
        do { if((pcb->errf) != 0) (pcb->errf)((pcb->callback_arg),(-11)); } while (0);
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else if (recv_flags & (u8_t)0x10U) {
        
 
        if (!(pcb->flags & ((u8_t)0x10U))) {
          

 
          do { if((pcb->errf) != 0) (pcb->errf)((pcb->callback_arg),(-12)); } while (0);
        }
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else {
        err = 0;
        

 
        if (pcb->acked > 0) {
          do { if((pcb)->sent != 0) (err) = (pcb)->sent((pcb)->callback_arg,(pcb),(pcb->acked)); else (err) = 0; } while (0);
          if (err == -10) {
            goto aborted;
          }
        }

        if (recv_data != 0) {
          do { if(!(pcb->refused_data == 0)) ; } while(0);
          if (pcb->flags & ((u8_t)0x10U)) {
            
 
            pbuf_free(recv_data);
            tcp_abort(pcb);
            goto aborted;
          }

           
          do { if((pcb)->recv != 0) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),(recv_data),(0)); } else { (err) = tcp_recv_null(0, (pcb), (recv_data), (0)); } } while (0);
          if (err == -10) {
            goto aborted;
          }

           
          if (err != 0) {
            pcb->refused_data = recv_data;
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_input: keep incoming packet, because pcb is \"full\"\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
          }
        }

        
 
        if (recv_flags & (u8_t)0x20U) {
          if (pcb->refused_data != 0) {
             
            pcb->refused_data->flags |= 0x20U;
          } else {
            
 
            if (pcb->rcv_wnd != (4 * (1500 - 40))) {
              pcb->rcv_wnd++;
            }
            do { if(((pcb)->recv != 0)) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),0,0); } else { (err) = 0; } } while (0);
            if (err == -10) {
              goto aborted;
            }
          }
        }

        tcp_input_pcb = 0;
         
        tcp_output(pcb);





      }
    }
    
 
aborted:
    tcp_input_pcb = 0;
    recv_data = 0;

     
    if (inseg.p != 0)
    {
      pbuf_free(inseg.p);
      inseg.p = 0;
    }
  } else {

    
 
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_input: no PCB match found, resetting.\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if (!((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x04U)) {
      ;
      ;
      tcp_rst(ackno, seqno + tcplen,
        (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
    }
    pbuf_free(p);
  }

  do { if(!(1)) ; } while(0);
  ;
  return;
dropped:
  ;
  ;
  pbuf_free(p);
}












 
static err_t
tcp_listen_input(struct tcp_pcb_listen *pcb)
{
  struct tcp_pcb *npcb;
  err_t rc;

  if (flags & 0x04U) {
     
    return 0;
  }

  
 
  if (flags & 0x10U) {
    
 
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_listen_input: ACK in LISTEN, sending reset\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest),
      (&current_iphdr_src), tcphdr->dest, tcphdr->src);
  } else if (flags & 0x02U) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("TCP connection request %" "hu" " -> %" "hu" ".\n", tcphdr->src, tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    if (pcb->accepts_pending >= pcb->backlog) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_listen_input: listen backlog exceeded for port %" "hu" "\n", tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return -10;
    }

    npcb = tcp_alloc(pcb->prio);
    

 
    if (npcb == 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_listen_input: could not allocate PCB\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      ;
      return -1;
    }

    pcb->accepts_pending++;

     
    ((npcb->local_ip). addr = (current_iphdr_dest). addr);
    npcb->local_port = pcb->local_port;
    ((npcb->remote_ip). addr = (current_iphdr_src). addr);
    npcb->remote_port = tcphdr->src;
    npcb->state = SYN_RCVD;
    npcb->rcv_nxt = seqno + 1;
    npcb->rcv_ann_right_edge = npcb->rcv_nxt;
    npcb->snd_wnd = tcphdr->wnd;
    npcb->snd_wnd_max = tcphdr->wnd;
    npcb->ssthresh = npcb->snd_wnd;
    npcb->snd_wl1 = seqno - 1; 
    npcb->callback_arg = pcb->callback_arg;

    npcb->accept = pcb->accept;

     
    npcb->so_options = pcb->so_options & (0x04U|0x08U|0x80U );
    
 
    do { do { (npcb)->next = * &tcp_active_pcbs; *(&tcp_active_pcbs) = (npcb); tcp_timer_needed(); } while (0); tcp_active_pcbs_changed = 1; } while (0);

     
    tcp_parseopt(npcb);

    npcb->mss = tcp_eff_send_mss(npcb->mss, &(npcb->remote_ip));


    ;

     
    rc = tcp_enqueue_flags(npcb, 0x02U | 0x10U);
    if (rc != 0) {
      tcp_abandon(npcb, 0);
      return rc;
    }
    return tcp_output(npcb);
  }
  return 0;
}









 
static err_t
tcp_timewait_input(struct tcp_pcb *pcb)
{
   
  


 
  if (flags & 0x04U)  {
    return 0;
  }
   
  if (flags & 0x02U) {
    
 
    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt+pcb->rcv_wnd)) <= 0))) {
       
      tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
      return 0;
    }
  } else if (flags & 0x01U) {
    
 
    pcb->tmr = tcp_ticks;
  }

  if ((tcplen > 0))  {
     
    pcb->flags |= ((u8_t)0x02U);
    return tcp_output(pcb);
  }
  return 0;
}











 
static err_t
tcp_process(struct tcp_pcb *pcb)
{
  struct tcp_seg *rseg;
  u8_t acceptable = 0;
  err_t err;

  err = 0;

   
  if (flags & 0x04U) {
     
    if (pcb->state == SYN_SENT) {
      if (ackno == pcb->snd_nxt) {
        acceptable = 1;
      }
    } else {
      if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt+pcb->rcv_wnd)) <= 0))) {

        acceptable = 1;
      }
    }

    if (acceptable) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_process: Connection RESET\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { if(!(pcb->state != CLOSED)) ; } while(0);
      recv_flags |= (u8_t)0x08U;
      pcb->flags &= ~((u8_t)0x01U);
      return -11;
    } else {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_process: unacceptable reset seqno %" "u" " rcv_nxt %" "u" "\n", seqno, pcb->rcv_nxt);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_process: unacceptable reset seqno %" "u" " rcv_nxt %" "u" "\n", seqno, pcb->rcv_nxt);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      return 0;
    }
  }

  if ((flags & 0x02U) && (pcb->state != SYN_SENT && pcb->state != SYN_RCVD)) { 
     
    do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    return 0;
  }
  
  if ((pcb->flags & ((u8_t)0x10U)) == 0) {
     
    pcb->tmr = tcp_ticks;
  }
  pcb->keep_cnt_sent = 0;

  tcp_parseopt(pcb);

   
  switch (pcb->state) {
  case SYN_SENT:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("SYN-SENT: ackno %" "u" " pcb->snd_nxt %" "u" " unacked %" "u" "\n", ackno, pcb->snd_nxt, lwip_ntohl(pcb->unacked->tcphdr->seqno));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

     
    if ((flags & 0x10U) && (flags & 0x02U)
        && ackno == lwip_ntohl(pcb->unacked->tcphdr->seqno) + 1) {
      pcb->snd_buf++;
      pcb->rcv_nxt = seqno + 1;
      pcb->rcv_ann_right_edge = pcb->rcv_nxt;
      pcb->lastack = ackno;
      pcb->snd_wnd = tcphdr->wnd;
      pcb->snd_wnd_max = tcphdr->wnd;
      pcb->snd_wl1 = seqno - 1;  
      pcb->state = ESTABLISHED;


      pcb->mss = tcp_eff_send_mss(pcb->mss, &(pcb->remote_ip));


      
 
      pcb->ssthresh = pcb->mss * 10;

      pcb->cwnd = ((pcb->cwnd == 1) ? (pcb->mss * 2) : pcb->mss);
      do { if(!((pcb->snd_queuelen > 0))) ; } while(0);
      --pcb->snd_queuelen;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_process: SYN-SENT --queuelen %" "hu" "\n", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      rseg = pcb->unacked;
      pcb->unacked = rseg->next;
      tcp_seg_free(rseg);

      
 
      if(pcb->unacked == 0)
        pcb->rtime = -1;
      else {
        pcb->rtime = 0;
        pcb->nrtx = 0;
      }

      
 
      do { if((pcb)->connected != 0) (err) = (pcb)->connected((pcb)->callback_arg,(pcb),(0)); else (err) = 0; } while (0);
      if (err == -10) {
        return -10;
      }
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    }
     
    else if (flags & 0x10U) {
       
      tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
        tcphdr->dest, tcphdr->src);
    }
    break;
  case SYN_RCVD:
    if (flags & 0x10U) {
       
      if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {
        u16_t old_cwnd;
        pcb->state = ESTABLISHED;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("TCP connection established %" "hu" " -> %" "hu" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

        do { if(!(pcb->accept != 0)) ; } while(0);

         
        do { if((pcb)->accept != 0) (err) = (pcb)->accept((pcb)->callback_arg,(pcb),(0)); else (err) = -14; } while (0);
        if (err != 0) {
          
 
           
          if (err != -10) {
            tcp_abort(pcb);
          }
          return -10;
        }
        old_cwnd = pcb->cwnd;
        
 
        tcp_receive(pcb);

         
        if (pcb->acked != 0) {
          pcb->acked--;
        }

        pcb->cwnd = ((old_cwnd == 1) ? (pcb->mss * 2) : pcb->mss);

        if (recv_flags & (u8_t)0x20U) {
          do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
          pcb->state = CLOSE_WAIT;
        }
      } else {
         
        tcp_rst(ackno, seqno + tcplen, (&current_iphdr_dest), (&current_iphdr_src),
                tcphdr->dest, tcphdr->src);
      }
    } else if ((flags & 0x02U) && (seqno == pcb->rcv_nxt - 1)) {
       
      tcp_rexmit(pcb);
    }
    break;
  case CLOSE_WAIT:
     
  case ESTABLISHED:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {  
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      pcb->state = CLOSE_WAIT;
    }
    break;
  case FIN_WAIT_1:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      if ((flags & 0x10U) && (ackno == pcb->snd_nxt)) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("TCP connection closed: FIN_WAIT_1 %" "hu" " -> %" "hu" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        tcp_pcb_purge(pcb);
        do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (* &tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = * &tcp_active_pcbs; tcp_tmp_pcb != 0; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 0; } while(0); tcp_active_pcbs_changed = 1; } while (0);
        pcb->state = TIME_WAIT;
        do { (pcb)->next = * &tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
      } else {
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
        pcb->state = CLOSING;
      }
    } else if ((flags & 0x10U) && (ackno == pcb->snd_nxt)) {
      pcb->state = FIN_WAIT_2;
    }
    break;
  case FIN_WAIT_2:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("TCP connection closed: FIN_WAIT_2 %" "hu" " -> %" "hu" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (* &tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = * &tcp_active_pcbs; tcp_tmp_pcb != 0; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 0; } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = * &tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case CLOSING:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("TCP connection closed: CLOSING %" "hu" " -> %" "hu" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (* &tcp_active_pcbs)->next; } else { for(tcp_tmp_pcb = * &tcp_active_pcbs; tcp_tmp_pcb != 0; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 0; } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = * &tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case LAST_ACK:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("TCP connection closed: LAST_ACK %" "hu" " -> %" "hu" ".\n", inseg . tcphdr->src, inseg . tcphdr->dest);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
       
      recv_flags |= (u8_t)0x10U;
    }
    break;
  default:
    break;
  }
  return 0;
}

#line 833 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"












 
static void
tcp_receive(struct tcp_pcb *pcb)
{
  struct tcp_seg *next;



  struct pbuf *p;
  s32_t off;
  s16_t m;
  u32_t right_wnd_edge;
  u16_t new_tot_len;
  int found_dupack = 0;





  do { if(!(pcb->state >= ESTABLISHED)) ; } while(0);

  if (flags & 0x10U) {
    right_wnd_edge = pcb->snd_wnd + pcb->snd_wl2;

     
    if (((s32_t)((u32_t)(pcb->snd_wl1) - (u32_t)(seqno)) < 0) ||
       (pcb->snd_wl1 == seqno && ((s32_t)((u32_t)(pcb->snd_wl2) - (u32_t)(ackno)) < 0)) ||
       (pcb->snd_wl2 == ackno && tcphdr->wnd > pcb->snd_wnd)) {
      pcb->snd_wnd = tcphdr->wnd;
      
 
      if (pcb->snd_wnd_max < tcphdr->wnd) {
        pcb->snd_wnd_max = tcphdr->wnd;
      }
      pcb->snd_wl1 = seqno;
      pcb->snd_wl2 = ackno;
      if (pcb->snd_wnd == 0) {
        if (pcb->persist_backoff == 0) {
           
          pcb->persist_cnt = 0;
          pcb->persist_backoff = 1;
        }
      } else if (pcb->persist_backoff > 0) {
         
          pcb->persist_backoff = 0;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: window update %" "hu" "\n", pcb->snd_wnd);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
#line 901 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
    }

    

















 

     
    if (((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack)) <= 0)) {
      pcb->acked = 0;
       
      if (tcplen == 0) {
         
        if (pcb->snd_wl2 + pcb->snd_wnd == right_wnd_edge){
           
          if (pcb->rtime >= 0) {
             
            if (pcb->lastack == ackno) {
              found_dupack = 1;
              if ((u8_t)(pcb->dupacks + 1) > pcb->dupacks) {
                ++pcb->dupacks;
              }
              if (pcb->dupacks > 3) {
                
 
                if ((u16_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
                  pcb->cwnd += pcb->mss;
                }
              } else if (pcb->dupacks == 3) {
                 
                tcp_rexmit_fast(pcb);
              }
            }
          }
        }
      }
      
 
      if (!found_dupack) {
        pcb->dupacks = 0;
      }
    } else if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))){
       

      

 
      if (pcb->flags & ((u8_t)0x04U)) {
        pcb->flags &= ~((u8_t)0x04U);
        pcb->cwnd = pcb->ssthresh;
      }

       
      pcb->nrtx = 0;

       
      pcb->rto = (pcb->sa >> 3) + pcb->sv;

       
      pcb->acked = (u16_t)(ackno - pcb->lastack);

      pcb->snd_buf += pcb->acked;

       
      pcb->dupacks = 0;
      pcb->lastack = ackno;

      
 
      if (pcb->state >= ESTABLISHED) {
        if (pcb->cwnd < pcb->ssthresh) {
          if ((u16_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
            pcb->cwnd += pcb->mss;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: slow start cwnd %" "hu" "\n", pcb->cwnd);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        } else {
          u16_t new_cwnd = (pcb->cwnd + pcb->mss * pcb->mss / pcb->cwnd);
          if (new_cwnd > pcb->cwnd) {
            pcb->cwnd = new_cwnd;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: congestion avoidance cwnd %" "hu" "\n", pcb->cwnd);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        }
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: ACK for %" "u" ", unacked->seqno %" "u" ":%" "u" "\n", ackno, pcb->unacked != 0? lwip_ntohl(pcb->unacked->tcphdr->seqno): 0, pcb->unacked != 0? lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)): 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);






      
 
      while (pcb->unacked != 0 &&
             ((s32_t)((u32_t)(lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0))) - (u32_t)(ackno)) <= 0)) {

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: removing %" "u" ":%" "u" " from pcb->unacked\n", lwip_ntohl(pcb->unacked->tcphdr->seqno), lwip_ntohl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((lwip_ntohs(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)));; if ((0x00U) & 0x08U) { while(1); } } } while(0);




        next = pcb->unacked;
        pcb->unacked = pcb->unacked->next;

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: queuelen %" "hu" " ... ", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { if(!((pcb->snd_queuelen >= pbuf_clen(next->p)))) ; } while(0);
         
        if ((pcb->acked != 0) && (((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0)) {
          pcb->acked--;
        }

        pcb->snd_queuelen -= pbuf_clen(next->p);
        tcp_seg_free(next);

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" " (after freeing unacked)\n", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (pcb->snd_queuelen != 0) {
          do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) ; } while(0);

        }
      }

      
 
      if(pcb->unacked == 0)
        pcb->rtime = -1;
      else
        pcb->rtime = 0;

      pcb->polltmr = 0;
    } else {
       
      pcb->acked = 0;
    }

    




 
    while (pcb->unsent != 0 &&
           (((s32_t)((u32_t)(ackno) - (u32_t)(lwip_ntohl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((lwip_ntohs(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)))) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: removing %" "u" ":%" "u" " from pcb->unsent\n", lwip_ntohl(pcb->unsent->tcphdr->seqno), lwip_ntohl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((lwip_ntohs(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0)));; if ((0x00U) & 0x08U) { while(1); } } } while(0);



      next = pcb->unsent;
      pcb->unsent = pcb->unsent->next;

      if (pcb->unsent == 0) {
        pcb->unsent_oversize = 0;
      }

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: queuelen %" "hu" " ... ", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { if(!((pcb->snd_queuelen >= pbuf_clen(next->p)))) ; } while(0);
       
      if ((pcb->acked != 0) && (((lwip_ntohs((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) != 0)) {
        pcb->acked--;
      }
      pcb->snd_queuelen -= pbuf_clen(next->p);
      tcp_seg_free(next);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" " (after freeing unsent)\n", (u16_t)pcb->snd_queuelen);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      if (pcb->snd_queuelen != 0) {
        do { if(!(pcb->unacked != 0 || pcb->unsent != 0)) ; } while(0);

      }
    }
     

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: pcb->rttest %" "u" " rtseq %" "u" " ackno %" "u" "\n", pcb->rttest, pcb->rtseq, ackno);; if ((0x00U) & 0x08U) { while(1); } } } while(0);


    

 
    if (pcb->rttest && ((s32_t)((u32_t)(pcb->rtseq) - (u32_t)(ackno)) < 0)) {
      
 
      m = (s16_t)(tcp_ticks - pcb->rttest);

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: experienced rtt %" "hu" " ticks (%" "hu" " msec).\n", m, m * (2*250));; if ((0x00U) & 0x08U) { while(1); } } } while(0);


       
      m = m - (pcb->sa >> 3);
      pcb->sa += m;
      if (m < 0) {
        m = -m;
      }
      m = m - (pcb->sv >> 2);
      pcb->sv += m;
      pcb->rto = (pcb->sa >> 3) + pcb->sv;

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: RTO %" "hu" " (%" "hu" " milliseconds)\n", pcb->rto, pcb->rto * (2*250));; if ((0x00U) & 0x08U) { while(1); } } } while(0);


      pcb->rttest = 0;
    }
  }

  


 
  if ((tcplen > 0) && (pcb->state < CLOSE_WAIT)) {
    





















 

    


 
    
 
    if ((((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + 1)) >= 0) && ((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + tcplen - 1)) <= 0))){
      

















 

      off = pcb->rcv_nxt - seqno;
      p = inseg.p;
      do { if(!(inseg . p)) ; } while(0);
      do { if(!((off < 0x7fff))) ; } while(0);
      if (inseg.p->len < off) {
        do { if(!((((s32_t)inseg . p->tot_len) >= off))) ; } while(0);
        new_tot_len = (u16_t)(inseg.p->tot_len - off);
        while (p->len < off) {
          off -= p->len;
          

 
          p->tot_len = new_tot_len;
          p->len = 0;
          p = p->next;
        }
        if(pbuf_header(p, (s16_t)-off)) {
           
          do { if(!(0)) ; } while(0);
        }
      } else {
        if(pbuf_header(inseg.p, (s16_t)-off)) {
           
          do { if(!(0)) ; } while(0);
        }
      }
      inseg.len -= (u16_t)(pcb->rcv_nxt - seqno);
      inseg.tcphdr->seqno = seqno = pcb->rcv_nxt;
    }
    else {
      if (((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) < 0)){
         
         

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: duplicate seqno %" "u" "\n", seqno);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
      }
    }

    

 
    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd - 1)) <= 0))){

      if (pcb->rcv_nxt == seqno) {
        

 
        tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));

        if (tcplen > pcb->rcv_wnd) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: other end overran receive window" "seqno %" "u" " len %" "hu" " right edge %" "u" "\n", seqno, tcplen, pcb->rcv_nxt + pcb->rcv_wnd);; if ((0x00U) & 0x08U) { while(1); } } } while(0);



          if ((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
            
 
            (inseg . tcphdr)->_hdrlen_rsvd_flags = (((inseg . tcphdr)->_hdrlen_rsvd_flags & (((((u16_t)(~(u16_t)(0x3fU))) & 0xff) << 8) | ((((u16_t)(~(u16_t)(0x3fU))) & 0xff00) >> 8))) | lwip_htons((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) &~ 0x01U));
          }
           
          inseg.len = pcb->rcv_wnd;
          if ((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x02U) {
            inseg.len -= 1;
          }
          pbuf_realloc(inseg.p, inseg.len);
          tcplen = ((&inseg)->len + (((lwip_ntohs(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & (0x01U | 0x02U)) != 0));
          do { if(!((seqno + tcplen) == (pcb->rcv_nxt + pcb->rcv_wnd))) ; } while(0);

        }
#line 1294 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"

        pcb->rcv_nxt = seqno + tcplen;

         
        do { if(!(pcb->rcv_wnd >= tcplen)) ; } while(0);
        pcb->rcv_wnd -= tcplen;

        tcp_update_rcv_ann_wnd(pcb);

        







 
        if (inseg.p->tot_len > 0) {
          recv_data = inseg.p;
          

 
          inseg.p = 0;
        }
        if ((lwip_ntohs((inseg . tcphdr)->_hdrlen_rsvd_flags) & 0x3fU) & 0x01U) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_receive: received FIN.\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
          recv_flags |= (u8_t)0x20U;
        }

#line 1362 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"


         
        do { if((pcb)->flags & ((u8_t)0x01U)) { (pcb)->flags &= ~((u8_t)0x01U); (pcb)->flags |= ((u8_t)0x02U); } else { (pcb)->flags |= ((u8_t)0x01U); } } while (0);

      } else {
         
        tcp_send_empty_ack(pcb);
#line 1517 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
      }
    } else {
       
      tcp_send_empty_ack(pcb);
    }
  } else {
    
 
    
 
    if(!(((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd-1)) <= 0))){
      do { (pcb)->flags |= ((u8_t)0x02U); } while (0);
    }
  }
}








 
static void
tcp_parseopt(struct tcp_pcb *pcb)
{
  u16_t c, max_c;
  u16_t mss;
  u8_t *opts, opt;




  opts = (u8_t *)tcphdr + 20;

   
  if((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12) > 0x5) {
    max_c = ((lwip_ntohs((tcphdr)->_hdrlen_rsvd_flags) >> 12) - 5) << 2;
    for (c = 0; c < max_c; ) {
      opt = opts[c];
      switch (opt) {
      case 0x00:
         
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_parseopt: EOL\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        return;
      case 0x01:
         
        ++c;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_parseopt: NOP\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        break;
      case 0x02:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_parseopt: MSS\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (opts[c + 1] != 0x04 || c + 0x04 > max_c) {
           
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_parseopt: bad length\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
          return;
        }
         
        mss = (opts[c + 2] << 8) | opts[c + 3];
         
        pcb->mss = ((mss > (1500 - 40)) || (mss == 0)) ? (1500 - 40) : mss;
         
        c += 0x04;
        break;
#line 1603 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\tcp_in.c"
      default:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_parseopt: other\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (opts[c + 1] == 0) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("tcp_parseopt: bad length\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
          
 
          return;
        }
        
 
        c += opts[c + 1];
      }
    }
  }
}

