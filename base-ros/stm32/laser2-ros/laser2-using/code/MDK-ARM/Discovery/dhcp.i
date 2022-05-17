#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"




 





























































 

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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 70 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"



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





#line 74 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 75 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"



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





#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip_addr.h"
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











#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"

#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
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



 



 

 

 


 

 

 















#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"







 



__packed
struct udp_hdr {
  u16_t src;
  u16_t dest;   
  u16_t len;
  u16_t chksum;
} ;










struct udp_pcb;














 
typedef void (*udp_recv_fn)(void *arg, struct udp_pcb *pcb, struct pbuf *p,
    ip_addr_t *addr, u16_t port);


struct udp_pcb {
 
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

 

  struct udp_pcb *next;

  u8_t flags;
   
  u16_t local_port, remote_port;


   
  ip_addr_t multicast_ip;







   
  udp_recv_fn recv;
   
  void *recv_arg;  
};
 
extern struct udp_pcb *udp_pcbs;


 
struct udp_pcb * udp_new        (void);
void             udp_remove     (struct udp_pcb *pcb);
err_t            udp_bind       (struct udp_pcb *pcb, ip_addr_t *ipaddr,
                                 u16_t port);
err_t            udp_connect    (struct udp_pcb *pcb, ip_addr_t *ipaddr,
                                 u16_t port);
void             udp_disconnect (struct udp_pcb *pcb);
void             udp_recv       (struct udp_pcb *pcb, udp_recv_fn recv,
                                 void *recv_arg);
err_t            udp_sendto_if  (struct udp_pcb *pcb, struct pbuf *p,
                                 ip_addr_t *dst_ip, u16_t dst_port,
                                 struct netif *netif);
err_t            udp_sendto     (struct udp_pcb *pcb, struct pbuf *p,
                                 ip_addr_t *dst_ip, u16_t dst_port);
err_t            udp_send       (struct udp_pcb *pcb, struct pbuf *p);

#line 150 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"




 
void             udp_input      (struct pbuf *p, struct netif *inp);

void             udp_init       (void);













#line 76 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 77 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 78 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 79 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"

 




#line 8 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"



#line 12 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"
#line 13 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"





 

 

 






struct dhcp
{
    
  u32_t xid;
    
  struct udp_pcb *pcb;
   
  struct dhcp_msg *msg_in;
   
  u8_t state;
   
  u8_t tries;



  u8_t subnet_mask_given;

  struct pbuf *p_out;  
  struct dhcp_msg *msg_out;  
  u16_t options_out_len;  
  u16_t request_timeout;  
  u16_t t1_timeout;   
  u16_t t2_timeout;   
  ip_addr_t server_ip_addr;  
  ip_addr_t offered_ip_addr;
  ip_addr_t offered_sn_mask;
  ip_addr_t offered_gw_addr;
 
  u32_t offered_t0_lease;  
  u32_t offered_t1_renew;  
  u32_t offered_t2_rebind;  
  
 




};

 



__packed
 
struct dhcp_msg
{
  u8_t op;
  u8_t htype;
  u8_t hlen;
  u8_t hops;
  u32_t xid;
  u16_t secs;
  u16_t flags;
  ip_addr_p_t ciaddr;
  ip_addr_p_t yiaddr;
  ip_addr_p_t siaddr;
  ip_addr_p_t giaddr;
  u8_t chaddr[16U];
  u8_t sname[64U];
  u8_t file[128U];
  u32_t cookie;

 



 

 


  u8_t options[68U];
} ;





void dhcp_set_struct(struct netif *netif, struct dhcp *dhcp);
 

void dhcp_cleanup(struct netif *netif);
 
err_t dhcp_start(struct netif *netif);
 
err_t dhcp_renew(struct netif *netif);
 
err_t dhcp_release(struct netif *netif);
 
void dhcp_stop(struct netif *netif);
 
void dhcp_inform(struct netif *netif);
 
void dhcp_network_changed(struct netif *netif);

 

void dhcp_arp_reply(struct netif *netif, ip_addr_t *addr);


 
void dhcp_coarse_tmr(void);
 
void dhcp_fine_tmr(void);
 
 
#line 151 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"







 
#line 170 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"
 


 


 



 
#line 189 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"

 




 

 
#line 208 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"

 













#line 229 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"

 











#line 80 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/autoip.h"




 




































 
 



#line 48 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/autoip.h"

#line 117 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/autoip.h"

#line 81 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dns.h"































 




#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dns.h"

#line 123 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dns.h"

#line 82 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"
































 




#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"



#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"
#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"
#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"
#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"












__packed
struct eth_addr {
  u8_t addr[6];
} ;








__packed
 
struct eth_hdr {



  struct eth_addr dest;
  struct eth_addr src;
  u16_t type;
} ;







#line 109 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"




__packed
 
struct etharp_hdr {
  u16_t hwtype;
  u16_t proto;
  u8_t hwlen;
  u8_t protolen;
  u16_t opcode;
  struct eth_addr shwaddr;
  struct ip_addr2 sipaddr;
  struct eth_addr dhwaddr;
  struct ip_addr2 dipaddr;
} ;








 









 





 






 








 




#line 180 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"


void etharp_tmr(void);
s8_t etharp_find_addr(struct netif *netif, ip_addr_t *ipaddr,
         struct eth_addr **eth_ret, ip_addr_t **ip_ret);
err_t etharp_output(struct netif *netif, struct pbuf *q, ip_addr_t *ipaddr);
err_t etharp_query(struct netif *netif, ip_addr_t *ipaddr, struct pbuf *q);
err_t etharp_request(struct netif *netif, ip_addr_t *ipaddr);



 

void etharp_cleanup_netif(struct netif *netif);






#line 207 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\netif/etharp.h"



err_t ethernet_input(struct pbuf *p, struct netif *netif);



extern const struct eth_addr ethbroadcast, ethzero;







#line 83 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"

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



 

#line 85 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"



 








 





 


 








 
#line 126 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"


 
u32_t dhcp_rx_options_val[(8 + 2)];


 
u8_t  dhcp_rx_options_given[(8 + 2)];






#line 146 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"


 
static err_t dhcp_discover(struct netif *netif);
static err_t dhcp_select(struct netif *netif);
static void dhcp_bind(struct netif *netif);

static err_t dhcp_decline(struct netif *netif);

static err_t dhcp_rebind(struct netif *netif);
static err_t dhcp_reboot(struct netif *netif);
static void dhcp_set_state(struct dhcp *dhcp, u8_t new_state);

 
static void dhcp_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p, ip_addr_t *addr, u16_t port);

 
static void dhcp_timeout(struct netif *netif);
static void dhcp_t1_timeout(struct netif *netif);
static void dhcp_t2_timeout(struct netif *netif);

 
 
static err_t dhcp_create_msg(struct netif *netif, struct dhcp *dhcp, u8_t message_type);
 
static void dhcp_delete_msg(struct dhcp *dhcp);
 
static void dhcp_option(struct dhcp *dhcp, u8_t option_type, u8_t option_len);
 
static void dhcp_option_byte(struct dhcp *dhcp, u8_t value);
static void dhcp_option_short(struct dhcp *dhcp, u16_t value);
static void dhcp_option_long(struct dhcp *dhcp, u32_t value);



 
static void dhcp_option_trailer(struct dhcp *dhcp);












 
static void
dhcp_handle_nak(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_handle_nak(netif=%p) %c%c%" "hu" "\n", (void*)netif, netif->name[0], netif->name[1], (u16_t)netif->num);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

   
  netif_set_down(netif);
   
  netif_set_ipaddr(netif, ((ip_addr_t *)&ip_addr_any));
  netif_set_gw(netif, ((ip_addr_t *)&ip_addr_any));
  netif_set_netmask(netif, ((ip_addr_t *)&ip_addr_any)); 
   
  dhcp_set_state(dhcp, 12);
   
  dhcp_discover(netif);
}










 
static void
dhcp_check(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_check(netif=%p) %c%c\n", (void *)netif, (s16_t)netif->name[0], (s16_t)netif->name[1]);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

  dhcp_set_state(dhcp, 8);
  
 
  result = etharp_query(netif, &dhcp->offered_ip_addr, 0);
  if (result != 0) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("dhcp_check: could not perform ARP query\n");; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
  msecs = 500;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_check(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
}






 
static void
dhcp_handle_offer(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_handle_offer(netif=%p) %c%c%" "hu" "\n", (void*)netif, netif->name[0], netif->name[1], (u16_t)netif->num);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

   
  if ((dhcp_rx_options_given[2] != 0)) {
    ((&dhcp->server_ip_addr)->addr = (lwip_htonl((dhcp_rx_options_val[2]))));
    do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_handle_offer(): server 0x%08" "x" "\n", ((&dhcp->server_ip_addr)->addr));; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);

     
    ((dhcp->offered_ip_addr). addr = (dhcp->msg_in->yiaddr). addr);
    do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_handle_offer(): offer for 0x%08" "x" "\n", ((&dhcp->offered_ip_addr)->addr));; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);


    dhcp_select(netif);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_handle_offer(netif=%p) did not get server ID!\n", (void*)netif);; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);

  }
}








 
static err_t
dhcp_select(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result;
  u16_t msecs;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_select(netif=%p) %c%c%" "hu" "\n", (void*)netif, netif->name[0], netif->name[1], (u16_t)netif->num);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  dhcp_set_state(dhcp, 1);

   
  result = dhcp_create_msg(netif, dhcp, 3);
  if (result == 0) {
    dhcp_option(dhcp, 57, 2);
    dhcp_option_short(dhcp, (netif->mtu));

     
    dhcp_option(dhcp, 50, 4);
    dhcp_option_long(dhcp, lwip_ntohl(((&dhcp->offered_ip_addr)->addr)));

    dhcp_option(dhcp, 54, 4);
    dhcp_option_long(dhcp, lwip_ntohl(((&dhcp->server_ip_addr)->addr)));

    dhcp_option(dhcp, 55, 4 );
    dhcp_option_byte(dhcp, 1);
    dhcp_option_byte(dhcp, 3);
    dhcp_option_byte(dhcp, 28);
    dhcp_option_byte(dhcp, 6);





    dhcp_option_trailer(dhcp);
     
    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

     
    udp_sendto_if(dhcp->pcb, dhcp->p_out, ((ip_addr_t *)&ip_addr_broadcast), 67, netif);
    dhcp_delete_msg(dhcp);
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_select: REQUESTING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("dhcp_select: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
  msecs = (dhcp->tries < 6 ? 1 << dhcp->tries : 60) * 1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_select(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return result;
}



 
void
dhcp_coarse_tmr()
{
  struct netif *netif = netif_list;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_coarse_tmr()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  while (netif != 0) {
     
    if (netif->dhcp != 0) {
       
      if (netif->dhcp->t2_timeout-- == 1) {
        do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_coarse_tmr(): t2 timeout\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
         
        dhcp_t2_timeout(netif);
       
      } else if (netif->dhcp->t1_timeout-- == 1) {
        do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_coarse_tmr(): t1 timeout\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
         
        dhcp_t1_timeout(netif);
      }
    }
     
    netif = netif->next;
  }
}






 
void
dhcp_fine_tmr()
{
  struct netif *netif = netif_list;
   
  while (netif != 0) {
     
    if (netif->dhcp != 0) {
             
      if (netif->dhcp->request_timeout > 1) {
        netif->dhcp->request_timeout--;
      }
      else if (netif->dhcp->request_timeout == 1) {
        netif->dhcp->request_timeout--;
         
        do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_fine_tmr(): request timeout\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
         
        dhcp_timeout(netif);
      }
    }
     
    netif = netif->next;
  }
}








 
static void
dhcp_timeout(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_timeout()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  if ((dhcp->state == 12) || (dhcp->state == 6)) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): restarting discovery\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    dhcp_discover(netif);
   
  } else if (dhcp->state == 1) {
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): REQUESTING, DHCP request timed out\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
    if (dhcp->tries <= 5) {
      dhcp_select(netif);
    } else {
      do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): REQUESTING, releasing, restarting\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
      dhcp_release(netif);
      dhcp_discover(netif);
    }

   
  } else if (dhcp->state == 8) {
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): CHECKING, ARP request timed out\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
    if (dhcp->tries <= 1) {
      dhcp_check(netif);
    
 
    } else {
       
      dhcp_bind(netif);
    }

  }
   
  else if (dhcp->state == 5) {
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): RENEWING, DHCP request timed out\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
     
     
    dhcp_renew(netif);
   
  } else if (dhcp->state == 4) {
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): REBINDING, DHCP request timed out\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
    if (dhcp->tries <= 8) {
      dhcp_rebind(netif);
    } else {
      do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_timeout(): RELEASING, DISCOVERING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
      dhcp_release(netif);
      dhcp_discover(netif);
    }
  } else if (dhcp->state == 3) {
    if (dhcp->tries < 2) {
      dhcp_reboot(netif);
    } else {
      dhcp_discover(netif);
    }
  }
}





 
static void
dhcp_t1_timeout(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_t1_timeout()\n");; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);
  if ((dhcp->state == 1) || (dhcp->state == 10) ||
      (dhcp->state == 5)) {
    
 
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_t1_timeout(): must renew\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);

    
 
    dhcp_renew(netif);
  }
}





 
static void
dhcp_t2_timeout(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_t2_timeout()\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  if ((dhcp->state == 1) || (dhcp->state == 10) ||
      (dhcp->state == 5)) {
     
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_t2_timeout(): must rebind\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);

    
 
    dhcp_rebind(netif);
  }
}





 
static void
dhcp_handle_ack(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;




   
  ((&dhcp->offered_sn_mask)->addr = 0);
  ((&dhcp->offered_gw_addr)->addr = 0);




   
  if ((dhcp_rx_options_given[3] != 0)) {
     
    dhcp->offered_t0_lease = (dhcp_rx_options_val[3]);
  }
   
  if ((dhcp_rx_options_given[4] != 0)) {
     
    dhcp->offered_t1_renew = (dhcp_rx_options_val[4]);
  } else {
     
    dhcp->offered_t1_renew = dhcp->offered_t0_lease / 2;
  }

   
  if ((dhcp_rx_options_given[5] != 0)) {
     
    dhcp->offered_t2_rebind = (dhcp_rx_options_val[5]);
  } else {
     
    dhcp->offered_t2_rebind = dhcp->offered_t0_lease;
  }

   
  ((dhcp->offered_ip_addr). addr = (dhcp->msg_in->yiaddr). addr);







   
  if ((dhcp_rx_options_given[6] != 0)) {
     
    ((&dhcp->offered_sn_mask)->addr = (lwip_htonl((dhcp_rx_options_val[6]))));
    dhcp->subnet_mask_given = 1;
  } else {
    dhcp->subnet_mask_given = 0;
  }

   
  if ((dhcp_rx_options_given[7] != 0)) {
    ((&dhcp->offered_gw_addr)->addr = (lwip_htonl((dhcp_rx_options_val[7]))));
  }
  
#line 578 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
}






 
void
dhcp_set_struct(struct netif *netif, struct dhcp *dhcp)
{
  do { if(!(netif != 0)) ; } while(0);
  do { if(!(dhcp != 0)) ; } while(0);
  do { if(!(netif->dhcp == 0)) ; } while(0);

   
  memset(dhcp, 0, sizeof(struct dhcp));
   
  netif->dhcp = dhcp;
}







 
void dhcp_cleanup(struct netif *netif)
{
  do { if(!(netif != 0)) ; } while(0);

  if (netif->dhcp != 0) {
    mem_free(netif->dhcp);
    netif->dhcp = 0;
  }
}












 
err_t
dhcp_start(struct netif *netif)
{
  struct dhcp *dhcp;
  err_t result = 0;

  do { if (!((netif != 0))) { ; return -14;;}} while(0);
  dhcp = netif->dhcp;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_start(netif=%p) %c%c%" "hu" "\n", (void*)netif, netif->name[0], netif->name[1], (u16_t)netif->num);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  
 
  netif->flags &= ~0x08U;

   
  if ((netif->flags & 0x20U) == 0) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): No ETHARP netif\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -14;
  }

   
  if (netif->mtu < 576) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): Cannot use this netif with DHCP: MTU is too small\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -1;
  }

   
  if (dhcp == 0) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): starting new DHCP client\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    dhcp = (struct dhcp *)mem_malloc(sizeof(struct dhcp));
    if (dhcp == 0) {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): could not allocate dhcp\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      return -1;
    }
     
    netif->dhcp = dhcp;
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): allocated dhcp");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  } else {
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_start(): restarting DHCP configuration\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
    if (dhcp->pcb != 0) {
      udp_remove(dhcp->pcb);
    }
    do { if(!(dhcp->p_out == 0)) ; } while(0);
    do { if(!(dhcp->msg_in == 0)) ; } while(0);
  }
    
   
  memset(dhcp, 0, sizeof(struct dhcp));
   
   
  dhcp->pcb = udp_new();
  if (dhcp->pcb == 0) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): could not obtain pcb\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -1;
  }
  ((dhcp->pcb)->so_options |= (0x20U));
   
  udp_bind(dhcp->pcb, ((ip_addr_t *)&ip_addr_any), 68);
  udp_connect(dhcp->pcb, ((ip_addr_t *)&ip_addr_any), 67);
   
  udp_recv(dhcp->pcb, dhcp_recv, netif);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_start(): starting DHCP configuration\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  result = dhcp_discover(netif);
  if (result != 0) {
     
    dhcp_stop(netif);
    return -1;
  }
   
  netif->flags |= 0x08U;
  return result;
}









 
void
dhcp_inform(struct netif *netif)
{
  struct dhcp dhcp;
  err_t result = 0;
  struct udp_pcb *pcb;

  do { if (!((netif != 0))) { ; return;;}} while(0);

  memset(&dhcp, 0, sizeof(struct dhcp));
  dhcp_set_state(&dhcp, 8);

  if ((netif->dhcp != 0) && (netif->dhcp->pcb != 0)) {
     
    pcb = netif->dhcp->pcb;
  } else {
    pcb = udp_new();
    if (pcb == 0) {
      do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_inform(): could not obtain pcb");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
      return;
    }
    dhcp.pcb = pcb;
    ((dhcp . pcb)->so_options |= (0x20U));
    udp_bind(dhcp.pcb, ((ip_addr_t *)&ip_addr_any), 68);
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_inform(): created new udp pcb\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  }
   
  result = dhcp_create_msg(netif, &dhcp, 8);
  if (result == 0) {
    dhcp_option(&dhcp, 57, 2);
    dhcp_option_short(&dhcp, (netif->mtu));

    dhcp_option_trailer(&dhcp);

    pbuf_realloc(dhcp.p_out, sizeof(struct dhcp_msg) - 68U + dhcp.options_out_len);

    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_inform: INFORMING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
    udp_sendto_if(pcb, dhcp.p_out, ((ip_addr_t *)&ip_addr_broadcast), 67, netif);
    dhcp_delete_msg(&dhcp);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_inform: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
  }

  if (dhcp.pcb != 0) {
     
    udp_remove(dhcp.pcb);
  }
}





 
void
dhcp_network_changed(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  if (!dhcp)
    return;
  switch (dhcp->state) {
  case 4:
  case 5:
  case 10:
  case 3:
    netif_set_down(netif);
    dhcp->tries = 0;
    dhcp_reboot(netif);
    break;
  case 0:
     
    break;
  default:
    dhcp->tries = 0;
#line 791 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
    dhcp_discover(netif);
    break;
  }
}







 
void dhcp_arp_reply(struct netif *netif, ip_addr_t *addr)
{
  do { if (!((netif != 0))) { ; return;;}} while(0);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_arp_reply()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  if ((netif->dhcp != 0) && (netif->dhcp->state == 8)) {
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_arp_reply(): CHECKING, arp reply for 0x%08" "x" "\n", ((addr)->addr));; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);

    
 
    if (((addr)->addr == (&netif->dhcp->offered_ip_addr)->addr)) {
       
      do { if ( ((0x00U | 0x40U | 0x20U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x20U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U | 0x01) & 0x03) >= 0x00)) { printf ("dhcp_arp_reply(): arp reply matched with offered address, declining\n");; if ((0x00U | 0x40U | 0x20U | 0x01) & 0x08U) { while(1); } } } while(0);

      dhcp_decline(netif);
    }
  }
}









 
static err_t
dhcp_decline(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result = 0;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_decline()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  dhcp_set_state(dhcp, 12);
   
  result = dhcp_create_msg(netif, dhcp, 4);
  if (result == 0) {
    dhcp_option(dhcp, 50, 4);
    dhcp_option_long(dhcp, lwip_ntohl(((&dhcp->offered_ip_addr)->addr)));

    dhcp_option_trailer(dhcp);
     
    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

     
    udp_sendto_if(dhcp->pcb, dhcp->p_out, ((ip_addr_t *)&ip_addr_broadcast), 67, netif);
    dhcp_delete_msg(dhcp);
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_decline: BACKING OFF\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_decline: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);

  }
  dhcp->tries++;
  msecs = 10*1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_decline(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return result;
}







 
static err_t
dhcp_discover(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result = 0;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_discover()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  ((&dhcp->offered_ip_addr)->addr = ((u32_t)0x00000000UL));
  dhcp_set_state(dhcp, 6);
   
  result = dhcp_create_msg(netif, dhcp, 1);
  if (result == 0) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_discover: making request\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    dhcp_option(dhcp, 57, 2);
    dhcp_option_short(dhcp, (netif->mtu));

    dhcp_option(dhcp, 55, 4 );
    dhcp_option_byte(dhcp, 1);
    dhcp_option_byte(dhcp, 3);
    dhcp_option_byte(dhcp, 28);
    dhcp_option_byte(dhcp, 6);

    dhcp_option_trailer(dhcp);

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_discover: realloc()ing\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_discover: sendto(DISCOVER, IP_ADDR_BROADCAST, DHCP_SERVER_PORT)\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    udp_sendto_if(dhcp->pcb, dhcp->p_out, ((ip_addr_t *)&ip_addr_broadcast), 67, netif);
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_discover: deleting()ing\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    dhcp_delete_msg(dhcp);
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_discover: SELECTING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_discover: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
#line 914 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
  msecs = (dhcp->tries < 6 ? 1 << dhcp->tries : 60) * 1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_discover(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return result;
}






 
static void
dhcp_bind(struct netif *netif)
{
  u32_t timeout;
  struct dhcp *dhcp;
  ip_addr_t sn_mask, gw_addr;
  do { if (!((netif != 0))) { ; return;;}} while(0);
  dhcp = netif->dhcp;
  do { if (!((dhcp != 0))) { ; return;;}} while(0);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_bind(netif=%p) %c%c%" "hu" "\n", (void*)netif, netif->name[0], netif->name[1], (u16_t)netif->num);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

   
  if (dhcp->offered_t1_renew != 0xffffffffUL) {
     
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): t1 renewal timer %" "u" " secs\n", dhcp->offered_t1_renew);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    timeout = (dhcp->offered_t1_renew + 60 / 2) / 60;
    if(timeout > 0xffff) {
      timeout = 0xffff;
    }
    dhcp->t1_timeout = (u16_t)timeout;
    if (dhcp->t1_timeout == 0) {
      dhcp->t1_timeout = 1;
    }
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): set request timeout %" "u" " msecs\n", dhcp->offered_t1_renew*1000);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  }
   
  if (dhcp->offered_t2_rebind != 0xffffffffUL) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): t2 rebind timer %" "u" " secs\n", dhcp->offered_t2_rebind);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    timeout = (dhcp->offered_t2_rebind + 60 / 2) / 60;
    if(timeout > 0xffff) {
      timeout = 0xffff;
    }
    dhcp->t2_timeout = (u16_t)timeout;
    if (dhcp->t2_timeout == 0) {
      dhcp->t2_timeout = 1;
    }
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): set request timeout %" "u" " msecs\n", dhcp->offered_t2_rebind*1000);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  }

   
  if ((dhcp->t1_timeout >= dhcp->t2_timeout) && (dhcp->t2_timeout > 0)) {
    dhcp->t1_timeout = 0;
  }

  if (dhcp->subnet_mask_given) {
     
    ((sn_mask). addr = (dhcp->offered_sn_mask). addr);
  } else {
     
    u8_t first_octet = (((u8_t*)(&dhcp->offered_ip_addr))[0]);
    if (first_octet <= 127) {
      ((&sn_mask)->addr = (((((0xff000000UL) & 0xff) << 24) | (((0xff000000UL) & 0xff00) << 8) | (((0xff000000UL) & 0xff0000UL) >> 8) | (((0xff000000UL) & 0xff000000UL) >> 24))));
    } else if (first_octet >= 192) {
      ((&sn_mask)->addr = (((((0xffffff00UL) & 0xff) << 24) | (((0xffffff00UL) & 0xff00) << 8) | (((0xffffff00UL) & 0xff0000UL) >> 8) | (((0xffffff00UL) & 0xff000000UL) >> 24))));
    } else {
      ((&sn_mask)->addr = (((((0xffff0000UL) & 0xff) << 24) | (((0xffff0000UL) & 0xff00) << 8) | (((0xffff0000UL) & 0xff0000UL) >> 8) | (((0xffff0000UL) & 0xff000000UL) >> 24))));
    }
  }

  ((gw_addr). addr = (dhcp->offered_gw_addr). addr);
   
  if (((&gw_addr) == 0 || (&gw_addr)->addr == ((u32_t)0x00000000UL))) {
     
    ((&gw_addr)->addr = ((&dhcp->offered_ip_addr)->addr) & ((&sn_mask)->addr));
     
    ((&gw_addr)->addr = (((&gw_addr)->addr) | ((((0x00000001UL) & 0xff) << 24) | (((0x00000001UL) & 0xff00) << 8) | (((0x00000001UL) & 0xff0000UL) >> 8) | (((0x00000001UL) & 0xff000000UL) >> 24))));
  }

#line 1000 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"

  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): IP: 0x%08" "x" "\n", ((&dhcp->offered_ip_addr)->addr));; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);

  netif_set_ipaddr(netif, &dhcp->offered_ip_addr);
  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): SN: 0x%08" "x" "\n", ((&sn_mask)->addr));; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);

  netif_set_netmask(netif, &sn_mask);
  do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_bind(): GW: 0x%08" "x" "\n", ((&gw_addr)->addr));; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);

  netif_set_gw(netif, &gw_addr);
   
  netif_set_up(netif);
   
  dhcp_set_state(dhcp, 10);
}





 
err_t
dhcp_renew(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_renew()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  dhcp_set_state(dhcp, 5);

   
  result = dhcp_create_msg(netif, dhcp, 3);
  if (result == 0) {
    dhcp_option(dhcp, 57, 2);
    dhcp_option_short(dhcp, (netif->mtu));















     
    dhcp_option_trailer(dhcp);

    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

    udp_sendto_if(dhcp->pcb, dhcp->p_out, &dhcp->server_ip_addr, 67, netif);
    dhcp_delete_msg(dhcp);

    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_renew: RENEWING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_renew: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
   
  msecs = dhcp->tries < 10 ? dhcp->tries * 2000 : 20 * 1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_renew(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return result;
}





 
static err_t
dhcp_rebind(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_rebind()\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  dhcp_set_state(dhcp, 4);

   
  result = dhcp_create_msg(netif, dhcp, 3);
  if (result == 0) {
    dhcp_option(dhcp, 57, 2);
    dhcp_option_short(dhcp, (netif->mtu));





#line 1101 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"

    dhcp_option_trailer(dhcp);

    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

     
    udp_sendto_if(dhcp->pcb, dhcp->p_out, ((ip_addr_t *)&ip_addr_broadcast), 67, netif);
    dhcp_delete_msg(dhcp);
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_rebind: REBINDING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_rebind: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
  msecs = dhcp->tries < 10 ? dhcp->tries * 1000 : 10 * 1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_rebind(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return result;
}





 
static err_t
dhcp_reboot(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_reboot()\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  dhcp_set_state(dhcp, 3);

   
  result = dhcp_create_msg(netif, dhcp, 3);
  if (result == 0) {
    dhcp_option(dhcp, 57, 2);
    dhcp_option_short(dhcp, 576);

    dhcp_option(dhcp, 50, 4);
    dhcp_option_long(dhcp, lwip_ntohl(((&dhcp->offered_ip_addr)->addr)));

    dhcp_option_trailer(dhcp);

    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

     
    udp_sendto_if(dhcp->pcb, dhcp->p_out, ((ip_addr_t *)&ip_addr_broadcast), 67, netif);
    dhcp_delete_msg(dhcp);
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_reboot: REBOOTING\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_reboot: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
  msecs = dhcp->tries < 10 ? dhcp->tries * 1000 : 10 * 1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_reboot(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  return result;
}






 
err_t
dhcp_release(struct netif *netif)
{
  struct dhcp *dhcp = netif->dhcp;
  err_t result;
  u16_t msecs;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_release()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

   
  dhcp_set_state(dhcp, 0);
   
  ((&dhcp->server_ip_addr)->addr = 0);
  ((&dhcp->offered_ip_addr)->addr = 0);
  ((&dhcp->offered_sn_mask)->addr = 0);
  ((&dhcp->offered_gw_addr)->addr = 0);



  dhcp->offered_t0_lease = dhcp->offered_t1_renew = dhcp->offered_t2_rebind = 0;
  
   
  result = dhcp_create_msg(netif, dhcp, 7);
  if (result == 0) {
    dhcp_option_trailer(dhcp);

    pbuf_realloc(dhcp->p_out, sizeof(struct dhcp_msg) - 68U + dhcp->options_out_len);

    udp_sendto_if(dhcp->pcb, dhcp->p_out, &dhcp->server_ip_addr, 67, netif);
    dhcp_delete_msg(dhcp);
    do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_release: RELEASED, DHCP_OFF\n");; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
  } else {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_release: could not allocate DHCP request\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);
  }
  dhcp->tries++;
  msecs = dhcp->tries < 10 ? dhcp->tries * 1000 : 10 * 1000;
  dhcp->request_timeout = (msecs + 500 - 1) / 500;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("dhcp_release(): set request timeout %" "hu" " msecs\n", msecs);; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);
   
  netif_set_down(netif);
   
  netif_set_ipaddr(netif, ((ip_addr_t *)&ip_addr_any));
  netif_set_gw(netif, ((ip_addr_t *)&ip_addr_any));
  netif_set_netmask(netif, ((ip_addr_t *)&ip_addr_any));
  
  return result;
}





 
void
dhcp_stop(struct netif *netif)
{
  struct dhcp *dhcp;
  do { if (!((netif != 0))) { ; return;;}} while(0);
  dhcp = netif->dhcp;
   
  netif->flags &= ~0x08U;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_stop()\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  if (dhcp != 0) {
#line 1237 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"

    if (dhcp->pcb != 0) {
      udp_remove(dhcp->pcb);
      dhcp->pcb = 0;
    }
    do { if(!(dhcp->msg_in == 0)) ; } while(0);
    dhcp_set_state(dhcp, 0);
  }
}





 
static void
dhcp_set_state(struct dhcp *dhcp, u8_t new_state)
{
  if (new_state != dhcp->state) {
    dhcp->state = new_state;
    dhcp->tries = 0;
    dhcp->request_timeout = 0;
  }
}





 
static void
dhcp_option(struct dhcp *dhcp, u8_t option_type, u8_t option_len)
{
  do { if(!(dhcp->options_out_len + 2U + option_len <= 68U)) ; } while(0);
  dhcp->msg_out->options[dhcp->options_out_len++] = option_type;
  dhcp->msg_out->options[dhcp->options_out_len++] = option_len;
}



 
static void
dhcp_option_byte(struct dhcp *dhcp, u8_t value)
{
  do { if(!(dhcp->options_out_len < 68U)) ; } while(0);
  dhcp->msg_out->options[dhcp->options_out_len++] = value;
}

static void
dhcp_option_short(struct dhcp *dhcp, u16_t value)
{
  do { if(!(dhcp->options_out_len + 2U <= 68U)) ; } while(0);
  dhcp->msg_out->options[dhcp->options_out_len++] = (u8_t)((value & 0xff00U) >> 8);
  dhcp->msg_out->options[dhcp->options_out_len++] = (u8_t) (value & 0x00ffU);
}

static void
dhcp_option_long(struct dhcp *dhcp, u32_t value)
{
  do { if(!(dhcp->options_out_len + 4U <= 68U)) ; } while(0);
  dhcp->msg_out->options[dhcp->options_out_len++] = (u8_t)((value & 0xff000000UL) >> 24);
  dhcp->msg_out->options[dhcp->options_out_len++] = (u8_t)((value & 0x00ff0000UL) >> 16);
  dhcp->msg_out->options[dhcp->options_out_len++] = (u8_t)((value & 0x0000ff00UL) >> 8);
  dhcp->msg_out->options[dhcp->options_out_len++] = (u8_t)((value & 0x000000ffUL));
}

#line 1325 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"










 
static err_t
dhcp_parse_reply(struct dhcp *dhcp, struct pbuf *p)
{
  u8_t *options;
  u16_t offset;
  u16_t offset_max;
  u16_t options_idx;
  u16_t options_idx_max;
  struct pbuf *q;
  int parse_file_as_options = 0;
  int parse_sname_as_options = 0;

   
  (memset(dhcp_rx_options_given, 0, sizeof(dhcp_rx_options_given)));
   
  if (p->len < 44) {
    return -2;
  }
  dhcp->msg_in = (struct dhcp_msg *)p->payload;





   

   
  options_idx = (236 + 4);
   
  options_idx_max = p->tot_len;
again:
  q = p;
  while((q != 0) && (options_idx >= q->len)) {
    options_idx -= q->len;
    options_idx_max -= q->len;
    q = q->next;
  }
  if (q == 0) {
    return -2;
  }
  offset = options_idx;
  offset_max = options_idx_max;
  options = (u8_t*)q->payload;
   
  while((q != 0) && (options[offset] != 255) && (offset < offset_max)) {
    u8_t op = options[offset];
    u8_t len;
    u8_t decode_len = 0;
    int decode_idx = -1;
    u16_t val_offset = offset + 2;
     
    if (offset + 1 < q->len) {
      len = options[offset + 1];
    } else {
      len = (q->next != 0 ? ((u8_t*)q->next->payload)[0] : 0);
    }
     
    decode_len = len;
    switch(op) {
       
      case(0):
         
        decode_len = len = 0;
         
        offset--;
        break;
      case(1):
        do { if (!(len == 4)) { ; return -6;;}} while(0);
        decode_idx = 6;
        break;
      case(3):
        decode_len = 4;  
        do { if (!(len >= decode_len)) { ; return -6;;}} while(0);
        decode_idx = 7;
        break;
      case(6):
         
        do { if (!(len % 4 == 0)) { ; return -6;;}} while(0);
         
        decode_len = (((len) < (4 * 2)) ? (len) : (4 * 2));
        do { if (!(len >= decode_len)) { ; return -6;;}} while(0);
        decode_idx = 8;
        break;
      case(51):
        do { if (!(len == 4)) { ; return -6;;}} while(0);
        decode_idx = 3;
        break;
      case(52):
        do { if (!(len == 1)) { ; return -6;;}} while(0);
        decode_idx = 0;
        break;
      case(53):
        do { if (!(len == 1)) { ; return -6;;}} while(0);
        decode_idx = 1;
        break;
      case(54):
        do { if (!(len == 4)) { ; return -6;;}} while(0);
        decode_idx = 2;
        break;
      case(58):
        do { if (!(len == 4)) { ; return -6;;}} while(0);
        decode_idx = 4;
        break;
      case(59):
        do { if (!(len == 4)) { ; return -6;;}} while(0);
        decode_idx = 5;
        break;
      default:
        decode_len = 0;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("skipping option %" "hu" " in options\n", op);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        break;
    }
    offset += len + 2;
    if (decode_len > 0) {
      u32_t value = 0;
      u16_t copy_len;
decode_next:
      do { if(!(decode_idx >= 0 && decode_idx < (8 + 2))) ; } while(0);
      if (!(dhcp_rx_options_given[decode_idx] != 0)) {
        copy_len = (((decode_len) < (4)) ? (decode_len) : (4));
        pbuf_copy_partial(q, &value, copy_len, val_offset);
        if (decode_len > 4) {
           
          do { if (!(decode_len % 4 == 0)) { ; return -6;;}} while(0);
          (dhcp_rx_options_given[decode_idx] = 1);
          (dhcp_rx_options_val[decode_idx] = (lwip_htonl(value)));
          decode_len -= 4;
          val_offset += 4;
          decode_idx++;
          goto decode_next;
        } else if (decode_len == 4) {
          value = lwip_ntohl(value);
        } else {
          do { if (!(decode_len == 1)) { ; return -6;;}} while(0);
          value = ((u8_t*)&value)[0];
        }
        (dhcp_rx_options_given[decode_idx] = 1);
        (dhcp_rx_options_val[decode_idx] = (value));
      }
    }
    if (offset >= q->len) {
      offset -= q->len;
      offset_max -= q->len;
      if ((offset < offset_max) && offset_max) {
        q = q->next;
        do { if(!(q)) ; } while(0);
        options = (u8_t*)q->payload;
      } else {
        
        break;
      }
    }
  }
   
  if ((dhcp_rx_options_given[0] != 0)) {
    u32_t overload = (dhcp_rx_options_val[0]);
    (dhcp_rx_options_given[0] = 0);
    if (overload == 1) {
      parse_file_as_options = 1;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("overloaded file field\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    } else if (overload == 2) {
      parse_sname_as_options = 1;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("overloaded sname field\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    } else if (overload == 3) {
      parse_sname_as_options = 1;
      parse_file_as_options = 1;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("overloaded sname and file field\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    } else {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("invalid overload option: %d\n", (int)overload);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    }
#line 1517 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
  }
  if (parse_file_as_options) {
     
    parse_file_as_options = 0;
    options_idx = 108;
    options_idx_max = 108 + 128U;
    goto again;
  } else if (parse_sname_as_options) {
    parse_sname_as_options = 0;
    options_idx = 44;
    options_idx_max = 44 + 64U;
    goto again;
  }
  return 0;
}



 
static void
dhcp_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p, ip_addr_t *addr, u16_t port)
{
  struct netif *netif = (struct netif *)arg;
  struct dhcp *dhcp = netif->dhcp;
  struct dhcp_msg *reply_msg = (struct dhcp_msg *)p->payload;
  u8_t msg_type;
  u8_t i;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("dhcp_recv(pbuf = %p) from DHCP server %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" " port %" "hu" "\n", (void*)p, ((u16_t)(((u8_t*)(addr))[0])), ((u16_t)(((u8_t*)(addr))[1])), ((u16_t)(((u8_t*)(addr))[2])), ((u16_t)(((u8_t*)(addr))[3])), port);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf->len = %" "hu" "\n", p->len);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("pbuf->tot_len = %" "hu" "\n", p->tot_len);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  (void)pcb;
  (void)addr;
  (void)port;

  do { if(!(dhcp->msg_in == 0)) ; } while(0);

  if (p->len < 44) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("DHCP reply message or pbuf too short\n");; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);
    goto free_pbuf_and_return;
  }

  if (reply_msg->op != 2) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("not a DHCP reply message, but type %" "hu" "\n", (u16_t)reply_msg->op);; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);
    goto free_pbuf_and_return;
  }
   
  for (i = 0; i < netif->hwaddr_len; i++) {
    if (netif->hwaddr[i] != reply_msg->chaddr[i]) {
      do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("netif->hwaddr[%" "hu" "]==%02" "hx" " != reply_msg->chaddr[%" "hu" "]==%02" "hx" "\n", (u16_t)i, (u16_t)netif->hwaddr[i], (u16_t)i, (u16_t)reply_msg->chaddr[i]);; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);


      goto free_pbuf_and_return;
    }
  }
   
  if (lwip_ntohl(reply_msg->xid) != dhcp->xid) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("transaction id mismatch reply_msg->xid(%" "x" ")!=dhcp->xid(%" "x" ")\n",lwip_ntohl(reply_msg->xid),dhcp->xid);; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);

    goto free_pbuf_and_return;
  }
   
  if (dhcp_parse_reply(dhcp, p) != 0) {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("problem unfolding DHCP message - too short on memory?\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);

    goto free_pbuf_and_return;
  }

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("searching DHCP_OPTION_MESSAGE_TYPE\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  if (!(dhcp_rx_options_given[1] != 0)) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("DHCP_OPTION_MESSAGE_TYPE option not found\n");; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);
    goto free_pbuf_and_return;
  }

   
  msg_type = (u8_t)(dhcp_rx_options_val[1]);
   
  if (msg_type == 5) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("DHCP_ACK received\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
     
    if (dhcp->state == 1) {
      dhcp_handle_ack(netif);

       
      dhcp_check(netif);




    }
     
    else if ((dhcp->state == 3) || (dhcp->state == 4) || (dhcp->state == 5)) {
      dhcp_bind(netif);
    }
  }
   
  else if ((msg_type == 6) &&
    ((dhcp->state == 3) || (dhcp->state == 1) ||
     (dhcp->state == 4) || (dhcp->state == 5  ))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("DHCP_NAK received\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    dhcp_handle_nak(netif);
  }
   
  else if ((msg_type == 2) && (dhcp->state == 6)) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("DHCP_OFFER received in DHCP_SELECTING state\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    dhcp->request_timeout = 0;
     
    dhcp_handle_offer(netif);
  }
free_pbuf_and_return:
  dhcp->msg_in = 0;
  pbuf_free(p);
}







 
static err_t
dhcp_create_msg(struct netif *netif, struct dhcp *dhcp, u8_t message_type)
{
  u16_t i;

  


 

  static u32_t xid;
#line 1660 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\dhcp.c"
  do { if (!((netif != 0))) { ; return -14;;}} while(0);
  do { if (!((dhcp != 0))) { ; return -6;;}} while(0);
  do { if(!(dhcp->p_out == 0)) ; } while(0);
  do { if(!(dhcp->msg_out == 0)) ; } while(0);
  dhcp->p_out = pbuf_alloc(PBUF_TRANSPORT, sizeof(struct dhcp_msg), PBUF_RAM);
  if (dhcp->p_out == 0) {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("dhcp_create_msg(): could not allocate pbuf\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);

    return -1;
  }
  do { if(!((dhcp->p_out->len >= sizeof(struct dhcp_msg)))) ; } while(0);


   
  if (dhcp->tries == 0) {

    xid = rand();



  }
  dhcp->xid = xid;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("transaction id xid(%" "x" ")\n", xid);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);


  dhcp->msg_out = (struct dhcp_msg *)dhcp->p_out->payload;

  dhcp->msg_out->op = 1;
   
  dhcp->msg_out->htype = 1;
  dhcp->msg_out->hlen = netif->hwaddr_len;
  dhcp->msg_out->hops = 0;
  dhcp->msg_out->xid = lwip_htonl(dhcp->xid);
  dhcp->msg_out->secs = 0;
  
 
  dhcp->msg_out->flags = 0;
  ((&dhcp->msg_out->ciaddr)->addr = 0);
   
  if ((message_type == 8) || (message_type == 4) ||
      ((message_type == 3) &&  
       ((dhcp->state==5) || dhcp->state==4))) {
    ((dhcp->msg_out->ciaddr). addr = (netif->ip_addr). addr);
  }
  ((&dhcp->msg_out->yiaddr)->addr = 0);
  ((&dhcp->msg_out->siaddr)->addr = 0);
  ((&dhcp->msg_out->giaddr)->addr = 0);
  for (i = 0; i < 16U; i++) {
     
    dhcp->msg_out->chaddr[i] = (i < netif->hwaddr_len) ? netif->hwaddr[i] : 0 ;
  }
  for (i = 0; i < 64U; i++) {
    dhcp->msg_out->sname[i] = 0;
  }
  for (i = 0; i < 128U; i++) {
    dhcp->msg_out->file[i] = 0;
  }
  dhcp->msg_out->cookie = ((((0x63825363UL) & 0xff) << 24) | (((0x63825363UL) & 0xff00) << 8) | (((0x63825363UL) & 0xff0000UL) >> 8) | (((0x63825363UL) & 0xff000000UL) >> 24));
  dhcp->options_out_len = 0;
   
  for (i = 0; i < 68U; i++) {
    dhcp->msg_out->options[i] = (u8_t)i;  
  }
   
  dhcp_option(dhcp, 53, 1);
  dhcp_option_byte(dhcp, message_type);
  return 0;
}





 
static void
dhcp_delete_msg(struct dhcp *dhcp)
{
  do { if (!((dhcp != 0))) { ; return;;}} while(0);
  do { if(!(dhcp->p_out != 0)) ; } while(0);
  do { if(!(dhcp->msg_out != 0)) ; } while(0);
  if (dhcp->p_out != 0) {
    pbuf_free(dhcp->p_out);
  }
  dhcp->p_out = 0;
  dhcp->msg_out = 0;
}








 
static void
dhcp_option_trailer(struct dhcp *dhcp)
{
  do { if (!((dhcp != 0))) { ; return;;}} while(0);
  do { if(!(dhcp->msg_out != 0)) ; } while(0);
  do { if(!(dhcp->options_out_len < 68U)) ; } while(0);
  dhcp->msg_out->options[dhcp->options_out_len++] = 255;
   
  while (((dhcp->options_out_len < 68U) || (dhcp->options_out_len & 3)) &&
         (dhcp->options_out_len < 68U)) {
     
    dhcp->msg_out->options[dhcp->options_out_len++] = 0;
  }
}

