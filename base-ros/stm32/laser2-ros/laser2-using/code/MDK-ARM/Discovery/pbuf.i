#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"





























 































 

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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 65 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

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





 







 






 








#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"
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





#line 67 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
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









#line 68 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
#line 69 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
#line 70 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
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





#line 71 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"





#line 76 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

 




 


#line 86 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/sys_arch.h"
















 



#line 22 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/sys_arch.h"
#line 1 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"


















































 












































































 















#line 152 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"







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





typedef struct os_thread_cb *osThreadId;



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






#line 23 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/sys_arch.h"
 

typedef struct
{
	osSemaphoreId    id;
	osSemaphoreDef_t def;

	uint32_t         data[2];

} sys_sem_t;
 




typedef struct
{
	osTimerId    id;
	osTimerDef_t def;

	int32_t      data[5];

} sys_timer_t;


typedef struct
{
	osMutexId    id;
	osMutexDef_t def;

	int32_t      data[4];

} sys_mutex_t;
 


 
typedef struct
{
	osMessageQId    id;
	osMessageQDef_t def;

	uint32_t        queue[4+16];

} sys_mbox_t;
 



 
#line 80 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/sys_arch.h"
 

typedef struct
{
	osThreadId    id;
	osThreadDef_t def;
} sys_thread_data_t;
typedef sys_thread_data_t* sys_thread_t;
 


 

typedef int sys_prot_t;
 


#line 87 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

 
typedef void (*lwip_thread_fn)(void *arg);


 

 


 
#line 109 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"






 
err_t sys_timer_new(sys_timer_t *timer, os_ptimer ptimer, os_timer_type type, void *argument);


 
void sys_timer_start(sys_timer_t *timer, uint32_t millisec);

 
void sys_timer_stop(sys_timer_t *timer);

 
void sys_timer_free(sys_timer_t *timer); 



 
err_t sys_mutex_new(sys_mutex_t *mutex);

 
void sys_mutex_lock(sys_mutex_t *mutex);

 
void sys_mutex_unlock(sys_mutex_t *mutex);

 
void sys_mutex_free(sys_mutex_t *mutex); 

 
int sys_mutex_valid(sys_mutex_t *mutex);


 
void sys_mutex_set_invalid(sys_mutex_t *mutex);



 




 
err_t sys_sem_new(sys_sem_t *sem, u8_t count);

 
void sys_sem_signal(sys_sem_t *sem);




 
u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout);

 
void sys_sem_free(sys_sem_t *sem);
 
#line 180 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

 




 




 
err_t sys_mbox_new(sys_mbox_t *mbox, int size);



 
void sys_mbox_post(sys_mbox_t *mbox, void *msg);


 
err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg);






 
u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout);
 






 
u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg);

 


 
void sys_mbox_free(sys_mbox_t *mbox);
#line 234 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"







 
sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio);



 
void sys_init(void);


 
u32_t sys_jiffies(void);



 
u32_t sys_now(void);

 



 





 






 









 








 

sys_prot_t sys_arch_protect(void);
void sys_arch_unprotect(sys_prot_t pval);

#line 306 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"






 

#line 322 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

#line 331 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

#line 340 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

#line 349 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"






#line 72 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/perf.h"






























 






#line 73 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
#line 79 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"

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



 

#line 81 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"



 


#line 174 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"































 
struct pbuf *
pbuf_alloc(pbuf_layer layer, u16_t length, pbuf_type type)
{
  struct pbuf *p, *q, *r;
  u16_t offset;
  s32_t rem_len;  
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_alloc(length=%" "hu" ")\n", length);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

   
  switch (layer) {
  case PBUF_TRANSPORT:
     
    offset = 14 + 20 + 20;
    break;
  case PBUF_IP:
     
    offset = 14 + 20;
    break;
  case PBUF_LINK:
     
    offset = 14;
    break;
  case PBUF_RAW:
    offset = 0;
    break;
  default:
    do { if(!(0)) ; } while(0);
    return 0;
  }

  switch (type) {
  case PBUF_POOL:
     
    p = (struct pbuf *)memp_malloc(MEMP_PBUF_POOL);
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_alloc: allocated pbuf %p\n", (void *)p);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    if (p == 0) {
      ;
      return 0;
    }
    p->type = type;
    p->next = 0;

     
    p->payload = ((void *)(((mem_ptr_t)((void *)((u8_t *)p + ((((sizeof(struct pbuf)) + 4 - 1) & ~(4-1)) + offset))) + 4 - 1) & ~(mem_ptr_t)(4-1)));
    do { if(!(((mem_ptr_t)p->payload % 4) == 0)) ; } while(0);

     
    p->tot_len = length;
     
    p->len = (((length) < ((((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1)) - (((offset) + 4 - 1) & ~(4-1)))) ? (length) : ((((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1)) - (((offset) + 4 - 1) & ~(4-1))));
    do { if(!(((u8_t*)p->payload + p->len <= (u8_t*)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4-1)) + (((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1))))) ; } while(0);


    do { if(!(((((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1)) - (((offset) + 4 - 1) & ~(4-1))) > 0)) ; } while(0);

     
    p->ref = 1;

     

     
    r = p;
     
    rem_len = length - p->len;
     
    while (rem_len > 0) {
      q = (struct pbuf *)memp_malloc(MEMP_PBUF_POOL);
      if (q == 0) {
        ;
         
        pbuf_free(p);
         
        return 0;
      }
      q->type = type;
      q->flags = 0;
      q->next = 0;
       
      r->next = q;
       
      do { if(!(rem_len < 0xffff)) ; } while(0);
      q->tot_len = (u16_t)rem_len;
       
      q->len = ((((u16_t)rem_len) < ((((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1)))) ? ((u16_t)rem_len) : ((((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1))));
      q->payload = (void *)((u8_t *)q + (((sizeof(struct pbuf)) + 4 - 1) & ~(4-1)));
      do { if(!(((mem_ptr_t)q->payload % 4) == 0)) ; } while(0);

      do { if(!(((u8_t*)p->payload + p->len <= (u8_t*)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4-1)) + (((((((1500 - 40)+40+14) + 4 - 1) & ~(4-1))) + 4 - 1) & ~(4-1))))) ; } while(0);


      q->ref = 1;
       
      rem_len -= q->len;
       
      r = q;
    }
     
     

    break;
  case PBUF_RAM:
     
    p = (struct pbuf*)mem_malloc(((((((sizeof(struct pbuf)) + 4 - 1) & ~(4-1)) + offset) + 4 - 1) & ~(4-1)) + (((length) + 4 - 1) & ~(4-1)));
    if (p == 0) {
      return 0;
    }
     
    p->payload = ((void *)(((mem_ptr_t)((void *)((u8_t *)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4-1)) + offset)) + 4 - 1) & ~(mem_ptr_t)(4-1)));
    p->len = p->tot_len = length;
    p->next = 0;
    p->type = type;

    do { if(!(((mem_ptr_t)p->payload % 4) == 0)) ; } while(0);

    break;
   
  case PBUF_ROM:
   
  case PBUF_REF:
     
    p = (struct pbuf *)memp_malloc(MEMP_PBUF);
    if (p == 0) {
      do { if ( ((0x00U | 0x02) & 0x80U) && ((0x00U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x02) & 0x03) >= 0x00)) { printf ("pbuf_alloc: Could not allocate MEMP_PBUF for PBUF_%s.\n", (type == PBUF_ROM) ? "ROM" : "REF");; if ((0x00U | 0x02) & 0x08U) { while(1); } } } while(0);


      return 0;
    }
     
    p->payload = 0;
    p->len = p->tot_len = length;
    p->next = 0;
    p->type = type;
    break;
  default:
    do { if(!(0)) ; } while(0);
    return 0;
  }
   
  p->ref = 1;
   
  p->flags = 0;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_alloc(length=%" "hu" ") == %p\n", length, (void *)p);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return p;
}

#line 413 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"















 
void
pbuf_realloc(struct pbuf *p, u16_t new_len)
{
  struct pbuf *q;
  u16_t rem_len;  
  s32_t grow;

  do { if(!(p != 0)) ; } while(0);
  do { if(!(p->type == PBUF_POOL || p->type == PBUF_ROM || p->type == PBUF_RAM || p->type == PBUF_REF)) ; } while(0);




   
  if (new_len >= p->tot_len) {
     
    return;
  }

  
 
  grow = new_len - p->tot_len;

   
  rem_len = new_len;
  q = p;
   
  while (rem_len > q->len) {
     
    rem_len -= q->len;
     
    do { if(!(grow < 0xffff)) ; } while(0);
    q->tot_len += (u16_t)grow;
     
    q = q->next;
    do { if(!(q != 0)) ; } while(0);
  }
   
   

   
   
  if ((q->type == PBUF_RAM) && (rem_len != q->len)) {
     
    q = (struct pbuf *)mem_trim(q, (u16_t)((u8_t *)q->payload - (u8_t *)q) + rem_len);
    do { if(!(q != 0)) ; } while(0);
  }
   
  q->len = rem_len;
  q->tot_len = q->len;

   
  if (q->next != 0) {
     
    pbuf_free(q->next);
  }
   
  q->next = 0;

}




















 
u8_t
pbuf_header(struct pbuf *p, s16_t header_size_increment)
{
  u16_t type;
  void *payload;
  u16_t increment_magnitude;

  do { if(!(p != 0)) ; } while(0);
  if ((header_size_increment == 0) || (p == 0)) {
    return 0;
  }
 
  if (header_size_increment < 0){
    increment_magnitude = -header_size_increment;
     
    do { if (!((increment_magnitude <= p->len))) { ; return 1;;}} while(0);
  } else {
    increment_magnitude = header_size_increment;
#line 538 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
  }

  type = p->type;
   
  payload = p->payload;

   
  if (type == PBUF_RAM || type == PBUF_POOL) {
     
    p->payload = (u8_t *)p->payload - header_size_increment;
     
    if ((u8_t *)p->payload < (u8_t *)p + (((sizeof(struct pbuf)) + 4 - 1) & ~(4-1))) {
      do { if ( ((0x00U | 0x02) & 0x80U) && ((0x00U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x02) & 0x03) >= 0x00)) { printf ("pbuf_header: failed as %p < %p (not enough space for new header size)\n", (void *)p->payload, (void *)(p + 1));; if ((0x00U | 0x02) & 0x08U) { while(1); } } } while(0);


       
      p->payload = payload;
       
      return 1;
    }
   
  } else if (type == PBUF_REF || type == PBUF_ROM) {
     
    if ((header_size_increment < 0) && (increment_magnitude <= p->len)) {
       
      p->payload = (u8_t *)p->payload - header_size_increment;
    } else {
      
 
      return 1;
    }
  } else {
     
    do { if(!(0)) ; } while(0);
    return 1;
  }
   
  p->len += header_size_increment;
  p->tot_len += header_size_increment;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_header: old %p new %p (%" "d" ")\n", (void *)payload, (void *)p->payload, header_size_increment);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);


  return 0;
}

































 
u8_t
pbuf_free(struct pbuf *p)
{
  u16_t type;
  struct pbuf *q;
  u8_t count;

  if (p == 0) {
    do { if(!(p != 0)) ; } while(0);
     
    do { if ( ((0x00U | 0x02) & 0x80U) && ((0x00U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x02) & 0x03) >= 0x00)) { printf ("pbuf_free(p == NULL) was called.\n");; if ((0x00U | 0x02) & 0x08U) { while(1); } } } while(0);

    return 0;
  }
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_free(%p)\n", (void *)p);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

  ;

  do { if(!(p->type == PBUF_RAM || p->type == PBUF_ROM || p->type == PBUF_REF || p->type == PBUF_POOL)) ; } while(0);



  count = 0;
  
 
  while (p != 0) {
    u16_t ref;
    sys_prot_t old_level;
    

 
    old_level = sys_arch_protect();
     
    do { if(!(p->ref > 0)) ; } while(0);
     
    ref = --(p->ref);
    sys_arch_unprotect(old_level);
     
    if (ref == 0) {
       
      q = p->next;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_free: deallocating %p\n", (void *)p);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      type = p->type;
#line 668 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"
      {
         
        if (type == PBUF_POOL) {
          memp_free(MEMP_PBUF_POOL, p);
         
        } else if (type == PBUF_ROM || type == PBUF_REF) {
          memp_free(MEMP_PBUF, p);
         
        } else {
          mem_free(p);
        }
      }
      count++;
       
      p = q;
     
     
    } else {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_free: %p has ref %" "hu" ", ending here.\n", (void *)p, ref);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
       
      p = 0;
    }
  }
  ;
   
  return count;
}






 

u8_t
pbuf_clen(struct pbuf *p)
{
  u8_t len;

  len = 0;
  while (p != 0) {
    ++len;
    p = p->next;
  }
  return len;
}






 
void
pbuf_ref(struct pbuf *p)
{
  sys_prot_t old_level;
   
  if (p != 0) {
    old_level = sys_arch_protect();
    ++(p->ref);
    sys_arch_unprotect(old_level);
  }
}









 

void
pbuf_cat(struct pbuf *h, struct pbuf *t)
{
  struct pbuf *p;

  do { if (!(((h != 0) && (t != 0)))) { ; return;;}} while(0);


   
  for (p = h; p->next != 0; p = p->next) {
     
    p->tot_len += t->tot_len;
  }
   
  do { if(!(p->tot_len == p->len)) ; } while(0);
  do { if(!(p->next == 0)) ; } while(0);
   
  p->tot_len += t->tot_len;
   
  p->next = t;
  

 
}
















 
void
pbuf_chain(struct pbuf *h, struct pbuf *t)
{
  pbuf_cat(h, t);
   
  pbuf_ref(t);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_chain: %p references %p\n", (void *)h, (void *)t);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
}








 
struct pbuf *
pbuf_dechain(struct pbuf *p)
{
  struct pbuf *q;
  u8_t tail_gone = 1;
   
  q = p->next;
   
  if (q != 0) {
     
    do { if(!(q->tot_len == p->tot_len - p->len)) ; } while(0);
     
    q->tot_len = p->tot_len - p->len;
     
    p->next = 0;
     
    p->tot_len = p->len;
     
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_dechain: unreferencing %p\n", (void *)q);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    tail_gone = pbuf_free(q);
    if (tail_gone > 0) {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_dechain: deallocated %p (as it is no longer referenced)\n", (void *)q);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    }
     
  }
   
  do { if(!(p->tot_len == p->len)) ; } while(0);
  return ((tail_gone > 0) ? 0 : q);
}


















 
err_t
pbuf_copy(struct pbuf *p_to, struct pbuf *p_from)
{
  u16_t offset_to=0, offset_from=0, len;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_copy(%p, %p)\n", (void*)p_to, (void*)p_from);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);


   
  do { if (!(((p_to != 0) && (p_from != 0) && (p_to->tot_len >= p_from->tot_len)))) { ; return -14;;}} while(0);


   
  do
  {
     
    if ((p_to->len - offset_to) >= (p_from->len - offset_from)) {
       
      len = p_from->len - offset_from;
    } else {
       
      len = p_to->len - offset_to;
    }
    memcpy((u8_t*)p_to->payload + offset_to,(u8_t*)p_from->payload + offset_from,len);
    offset_to += len;
    offset_from += len;
    do { if(!(offset_to <= p_to->len)) ; } while(0);
    do { if(!(offset_from <= p_from->len)) ; } while(0);
    if (offset_from >= p_from->len) {
       
      offset_from = 0;
      p_from = p_from->next;
    }
    if (offset_to == p_to->len) {
       
      offset_to = 0;
      p_to = p_to->next;
      do { if (!((p_to != 0) || (p_from == 0))) { ; return -14;;}} while(0);
    }

    if((p_from != 0) && (p_from->len == p_from->tot_len)) {
       
      do { if (!((p_from->next == 0))) { ; return -6;;}} while(0);

    }
    if((p_to != 0) && (p_to->len == p_to->tot_len)) {
       
      do { if (!((p_to->next == 0))) { ; return -6;;}} while(0);

    }
  } while (p_from);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf_copy: end of chain reached.\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return 0;
}











 
u16_t
pbuf_copy_partial(struct pbuf *buf, void *dataptr, u16_t len, u16_t offset)
{
  struct pbuf *p;
  u16_t left;
  u16_t buf_copy_len;
  u16_t copied_total = 0;

  do { if (!((buf != 0))) { ; return 0;;}} while(0);
  do { if (!((dataptr != 0))) { ; return 0;;}} while(0);

  left = 0;

  if((buf == 0) || (dataptr == 0)) {
    return 0;
  }

   
  for(p = buf; len != 0 && p != 0; p = p->next) {
    if ((offset != 0) && (offset >= p->len)) {
       
      offset -= p->len;
    } else {
       
      buf_copy_len = p->len - offset;
      if (buf_copy_len > len)
          buf_copy_len = len;
       
      memcpy(&((char*)dataptr)[left],&((char*)p->payload)[offset],buf_copy_len);
      copied_total += buf_copy_len;
      left += buf_copy_len;
      len -= buf_copy_len;
      offset = 0;
    }
  }
  return copied_total;
}










 
err_t
pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len)
{
  struct pbuf *p;
  u16_t buf_copy_len;
  u16_t total_copy_len = len;
  u16_t copied_total = 0;

  do { if (!((buf != 0))) { ; return 0;;}} while(0);
  do { if (!((dataptr != 0))) { ; return 0;;}} while(0);

  if ((buf == 0) || (dataptr == 0) || (buf->tot_len < len)) {
    return -14;
  }

   
  for(p = buf; total_copy_len != 0; p = p->next) {
    do { if(!(p != 0)) ; } while(0);
    buf_copy_len = total_copy_len;
    if (buf_copy_len > p->len) {
       
      buf_copy_len = p->len;
    }
     
    memcpy(p->payload,&((char*)dataptr)[copied_total],buf_copy_len);
    total_copy_len -= buf_copy_len;
    copied_total += buf_copy_len;
  }
  do { if(!(total_copy_len == 0 && copied_total == len)) ; } while(0);
  return 0;
}












 
struct pbuf*
pbuf_coalesce(struct pbuf *p, pbuf_layer layer)
{
  struct pbuf *q;
  err_t err;
  if (p->next == 0) {
    return p;
  }
  q = pbuf_alloc(layer, p->tot_len, PBUF_RAM);
  if (q == 0) {
     
    return p;
  }
  err = pbuf_copy(q, p);
  do { if(!(err == 0)) ; } while(0);
  pbuf_free(p);
  return q;
}

#line 1068 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\pbuf.c"

 





 
u8_t
pbuf_get_at(struct pbuf* p, u16_t offset)
{
  u16_t copy_from = offset;
  struct pbuf* q = p;

   
  while ((q != 0) && (q->len <= copy_from)) {
    copy_from -= q->len;
    q = q->next;
  }
   
  if ((q != 0) && (q->len > copy_from)) {
    return ((u8_t*)q->payload)[copy_from];
  }
  return 0;
}









 
u16_t
pbuf_memcmp(struct pbuf* p, u16_t offset, const void* s2, u16_t n)
{
  u16_t start = offset;
  struct pbuf* q = p;

   
  while ((q != 0) && (q->len <= start)) {
    start -= q->len;
    q = q->next;
  }
   
  if ((q != 0) && (q->len > start)) {
    u16_t i;
    for(i = 0; i < n; i++) {
      u8_t a = pbuf_get_at(q, start + i);
      u8_t b = ((u8_t*)s2)[i];
      if (a != b) {
        return i+1;
      }
    }
    return 0;
  }
  return 0xffff;
}










 
u16_t
pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset)
{
  u16_t i;
  u16_t max = p->tot_len - mem_len;
  if (p->tot_len >= mem_len + start_offset) {
    for(i = start_offset; i <= max; ) {
      u16_t plus = pbuf_memcmp(p, i, mem, mem_len);
      if (plus == 0) {
        return i;
      } else {
        i += plus;
      }
    }
  }
  return 0xFFFF;
}










 
u16_t
pbuf_strstr(struct pbuf* p, const char* substr)
{
  size_t substr_len;
  if ((substr == 0) || (substr[0] == 0) || (p->tot_len == 0xFFFF)) {
    return 0xFFFF;
  }
  substr_len = strlen(substr);
  if (substr_len >= 0xFFFF) {
    return 0xFFFF;
  }
  return pbuf_memfind(p, substr, (u16_t)substr_len, 0);
}
