#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"




 































 

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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"



#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"

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





#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






 



typedef s8_t err_t;


 

#line 62 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"














extern const char *lwip_strerr(err_t err);








#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
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






#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
































 




#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"

#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"






























 




#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/pbuf.h"
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











#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"








 





 














 
struct igmp_group {
   
  struct igmp_group *next;
   
  struct netif      *netif;
   
  ip_addr_t          group_address;
   
  u8_t               last_reporter_flag;
   
  u8_t               group_state;
   
  u16_t              timer;
   
  u8_t               use;
};

 
void   igmp_init(void);
err_t  igmp_start(struct netif *netif);
err_t  igmp_stop(struct netif *netif);
void   igmp_report_groups(struct netif *netif);
struct igmp_group *igmp_lookfor_group(struct netif *ifp, ip_addr_t *addr);
void   igmp_input(struct pbuf *p, struct netif *inp, ip_addr_t *dest);
err_t  igmp_joingroup(ip_addr_t *ifaddr, ip_addr_t *groupaddr);
err_t  igmp_leavegroup(ip_addr_t *ifaddr, ip_addr_t *groupaddr);
void   igmp_tmr(void);







#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"
#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"





 

 


struct netbuf {
  struct pbuf *p, *ptr;
  ip_addr_t addr;
  u16_t port;
#line 61 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"
};

 
struct netbuf *   netbuf_new      (void);
void              netbuf_delete   (struct netbuf *buf);
void *            netbuf_alloc    (struct netbuf *buf, u16_t size);
void              netbuf_free     (struct netbuf *buf);
err_t             netbuf_ref      (struct netbuf *buf,
                                   const void *dataptr, u16_t size);
void              netbuf_chain    (struct netbuf *head,
           struct netbuf *tail);

err_t             netbuf_data     (struct netbuf *buf,
                                   void **dataptr, u16_t *len);
s8_t              netbuf_next     (struct netbuf *buf);
void              netbuf_first    (struct netbuf *buf);


#line 96 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"





#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"
#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"
#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"
#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"







 

 






 


 

 

 


 


 



 



 
enum netconn_type {
  NETCONN_INVALID    = 0,
   
  NETCONN_TCP        = 0x10,
   
  NETCONN_UDP        = 0x20,
  NETCONN_UDPLITE    = 0x21,
  NETCONN_UDPNOCHKSUM= 0x22,
   
  NETCONN_RAW        = 0x40
};


 
enum netconn_state {
  NETCONN_NONE,
  NETCONN_WRITE,
  NETCONN_LISTEN,
  NETCONN_CONNECT,
  NETCONN_CLOSE
};

 
enum netconn_evt {
  NETCONN_EVT_RCVPLUS,
  NETCONN_EVT_RCVMINUS,
  NETCONN_EVT_SENDPLUS,
  NETCONN_EVT_SENDMINUS,
  NETCONN_EVT_ERROR
};


 
enum netconn_igmp {
  NETCONN_JOIN,
  NETCONN_LEAVE
};


 
struct ip_pcb;
struct tcp_pcb;
struct udp_pcb;
struct raw_pcb;
struct netconn;
struct api_msg_msg;

 
typedef void (* netconn_callback)(struct netconn *, enum netconn_evt, u16_t len);

 
struct netconn {
   
  enum netconn_type type;
   
  enum netconn_state state;
   
  union {
    struct ip_pcb  *ip;
    struct tcp_pcb *tcp;
    struct udp_pcb *udp;
    struct raw_pcb *raw;
  } pcb;
   
  err_t last_err;
   
  sys_sem_t op_completed;
  
 
  sys_mbox_t recvmbox;

  
 
  sys_mbox_t acceptmbox;

   

  int socket;
#line 181 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"
   
  u8_t flags;

  
 
  size_t write_offset;
  

 
  struct api_msg_msg *current_msg;

   
  netconn_callback callback;
};

 




 
#line 210 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"

 


struct
netconn *netconn_new_with_proto_and_callback(enum netconn_type t, u8_t proto,
                                             netconn_callback callback);
err_t   netconn_delete(struct netconn *conn);
 


err_t   netconn_getaddr(struct netconn *conn, ip_addr_t *addr,
                        u16_t *port, u8_t local);



err_t   netconn_bind(struct netconn *conn, ip_addr_t *addr, u16_t port);
err_t   netconn_connect(struct netconn *conn, ip_addr_t *addr, u16_t port);
err_t   netconn_disconnect (struct netconn *conn);
err_t   netconn_listen_with_backlog(struct netconn *conn, u8_t backlog);

err_t   netconn_accept(struct netconn *conn, struct netconn **new_conn);
err_t   netconn_recv(struct netconn *conn, struct netbuf **new_buf);
err_t   netconn_recv_tcp_pbuf(struct netconn *conn, struct pbuf **new_buf);
void    netconn_recved(struct netconn *conn, u32_t length);
err_t   netconn_sendto(struct netconn *conn, struct netbuf *buf,
                       ip_addr_t *addr, u16_t port);
err_t   netconn_send(struct netconn *conn, struct netbuf *buf);
err_t   netconn_write_partly(struct netconn *conn, const void *dataptr, size_t size,
                             u8_t apiflags, size_t *bytes_written);


err_t   netconn_close(struct netconn *conn);
err_t   netconn_shutdown(struct netconn *conn, u8_t shut_rx, u8_t shut_tx);


err_t   netconn_join_leave_group(struct netconn *conn, ip_addr_t *multiaddr,
                                 ip_addr_t *netif_addr, enum netconn_igmp join_or_leave);








 




 


 




 


#line 290 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"







#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"





 






 


 
struct api_msg_msg {
  
 
  struct netconn *conn;
   
  err_t err;
   
  union {
     
    struct netbuf *b;
     
    struct {
      u8_t proto;
    } n;
     
    struct {
      ip_addr_t *ipaddr;
      u16_t port;
    } bc;
     
    struct {
      ip_addr_t *ipaddr;
      u16_t *port;
      u8_t local;
    } ad;
     
    struct {
      const void *dataptr;
      size_t len;
      u8_t apiflags;



    } w;
     
    struct {
      u32_t len;
    } r;
     
    struct {
      u8_t shut;
    } sd;

     
    struct {
      ip_addr_t *multiaddr;
      ip_addr_t *netif_addr;
      enum netconn_igmp join_or_leave;
    } jl;


    struct {
      u8_t backlog;
    } lb;

  } msg;
};



 
struct api_msg {
   
  void (* function)(struct api_msg_msg *msg);
   
  struct api_msg_msg msg;
};

#line 147 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"

void do_newconn         ( struct api_msg_msg *msg);
void do_delconn         ( struct api_msg_msg *msg);
void do_bind            ( struct api_msg_msg *msg);
void do_connect         ( struct api_msg_msg *msg);
void do_disconnect      ( struct api_msg_msg *msg);
void do_listen          ( struct api_msg_msg *msg);
void do_send            ( struct api_msg_msg *msg);
void do_recv            ( struct api_msg_msg *msg);
void do_write           ( struct api_msg_msg *msg);
void do_getaddr         ( struct api_msg_msg *msg);
void do_close           ( struct api_msg_msg *msg);
void do_shutdown        ( struct api_msg_msg *msg);

void do_join_leave_group( struct api_msg_msg *msg);






struct netconn* netconn_alloc(enum netconn_type t, netconn_callback callback);
void netconn_free(struct netconn *conn);







#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"

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



 



 

 

 


 

 

 















#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
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













#line 47 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
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
#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcp.h"
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








#line 48 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/raw.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/raw.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/raw.h"
#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/raw.h"
#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/raw.h"
#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/raw.h"





struct raw_pcb;










 
typedef u8_t (*raw_recv_fn)(void *arg, struct raw_pcb *pcb, struct pbuf *p,
    ip_addr_t *addr);

struct raw_pcb {
   
  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct raw_pcb *next;

  u8_t protocol;

   
  raw_recv_fn recv;
   
  void *recv_arg;
};


 
struct raw_pcb * raw_new        (u8_t proto);
void             raw_remove     (struct raw_pcb *pcb);
err_t            raw_bind       (struct raw_pcb *pcb, ip_addr_t *ipaddr);
err_t            raw_connect    (struct raw_pcb *pcb, ip_addr_t *ipaddr);

void             raw_recv       (struct raw_pcb *pcb, raw_recv_fn recv, void *recv_arg);
err_t            raw_sendto     (struct raw_pcb *pcb, struct pbuf *p, ip_addr_t *ipaddr);
err_t            raw_send       (struct raw_pcb *pcb, struct pbuf *p);

 
u8_t             raw_input      (struct pbuf *p, struct netif *inp);








#line 49 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"

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







#line 51 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netifapi.h"

























 
 



#line 32 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netifapi.h"

#line 107 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netifapi.h"

#line 41 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"
#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"
#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"
#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/timers.h"































 



#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/timers.h"

 




#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/timers.h"
#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/timers.h"






#line 59 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/timers.h"





 
typedef void (* sys_timeout_handler)(void *arg);

struct sys_timeo {
  struct sys_timeo *next;
  u32_t time;
  sys_timeout_handler h;
  void *arg;



};

void sys_timeouts_init(void);





void sys_timeout(u32_t msecs, sys_timeout_handler handler, void *arg);


void sys_untimeout(sys_timeout_handler handler, void *arg);




void sys_timeouts_mbox_fetch(sys_mbox_t *mbox, void **msg);







#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"
#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"






 




#line 74 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"

 
typedef void (*tcpip_init_done_fn)(void *arg);
 
typedef void (*tcpip_callback_fn)(void *ctx);

 
struct tcpip_callback_msg;

void tcpip_init(tcpip_init_done_fn tcpip_init_done, void *arg);


err_t tcpip_apimsg(struct api_msg *apimsg);





err_t tcpip_input(struct pbuf *p, struct netif *inp);

#line 100 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"

err_t tcpip_callback_with_block(tcpip_callback_fn function, void *ctx, u8_t block);


struct tcpip_callback_msg* tcpip_callbackmsg_new(tcpip_callback_fn function, void *ctx);
void   tcpip_callbackmsg_delete(struct tcpip_callback_msg* msg);
err_t  tcpip_trycallback(struct tcpip_callback_msg* msg);

 
err_t pbuf_free_callback(struct pbuf *p);
err_t mem_free_callback(void *m);


err_t tcpip_timeout(u32_t msecs, sys_timeout_handler h, void *arg);
err_t tcpip_untimeout(sys_timeout_handler h, void *arg);


enum tcpip_msg_type {

  TCPIP_MSG_API,

  TCPIP_MSG_INPKT,




  TCPIP_MSG_TIMEOUT,
  TCPIP_MSG_UNTIMEOUT,

  TCPIP_MSG_CALLBACK,
  TCPIP_MSG_CALLBACK_STATIC
};

struct tcpip_msg {
  enum tcpip_msg_type type;
  sys_sem_t *sem;
  union {

    struct api_msg *apimsg;




    struct {
      struct pbuf *p;
      struct netif *netif;
    } inp;
    struct {
      tcpip_callback_fn function;
      void *ctx;
    } cb;

    struct {
      u32_t msecs;
      sys_timeout_handler h;
      void *arg;
    } tmo;

  } msg;
};







#line 52 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
#line 53 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dns.h"































 




#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dns.h"

#line 123 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dns.h"

#line 54 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"

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



 

#line 56 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"







 

static err_t do_writemore(struct netconn *conn);
static void do_close_internal(struct netconn *conn);









 
static u8_t
recv_raw(void *arg, struct raw_pcb *pcb, struct pbuf *p,
    ip_addr_t *addr)
{
  struct pbuf *q;
  struct netbuf *buf;
  struct netconn *conn;

  (void)addr;
  conn = (struct netconn *)arg;

  if ((conn != 0) && (((* &conn->recvmbox). id == 0) ? 0 : 1 )) {
#line 96 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
     
    q = pbuf_alloc(PBUF_RAW, p->tot_len, PBUF_RAM);
    if(q != 0) {
      if (pbuf_copy(q, p) != 0) {
        pbuf_free(q);
        q = 0;
      }
    }

    if (q != 0) {
      u16_t len;
      buf = (struct netbuf *)memp_malloc(MEMP_NETBUF);
      if (buf == 0) {
        pbuf_free(q);
        return 0;
      }

      buf->p = q;
      buf->ptr = q;
      ((buf->addr). addr = (*(&current_iphdr_src)). addr);
      buf->port = pcb->protocol;

      len = q->tot_len;
      if (sys_mbox_trypost(&conn->recvmbox, buf) != 0) {
        netbuf_delete(buf);
        return 0;
      } else {



         
        if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_RCVPLUS, len); };
      }
    }
  }

  return 0;  
}








 
static void
recv_udp(void *arg, struct udp_pcb *pcb, struct pbuf *p,
   ip_addr_t *addr, u16_t port)
{
  struct netbuf *buf;
  struct netconn *conn;
  u16_t len;




  (void)pcb;  
  do { if(!(pcb != 0)) ; } while(0);
  do { if(!(arg != 0)) ; } while(0);
  conn = (struct netconn *)arg;
  do { if(!(conn->pcb . udp == pcb)) ; } while(0);






  if ((conn == 0) || !(((* &conn->recvmbox). id == 0) ? 0 : 1 )) {

    pbuf_free(p);
    return;
  }

  buf = (struct netbuf *)memp_malloc(MEMP_NETBUF);
  if (buf == 0) {
    pbuf_free(p);
    return;
  } else {
    buf->p = p;
    buf->ptr = p;
    ((&buf->addr)->addr = ((addr) == 0 ? 0 : (addr)->addr));
    buf->port = port;
#line 192 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
  }

  len = p->tot_len;
  if (sys_mbox_trypost(&conn->recvmbox, buf) != 0) {
    netbuf_delete(buf);
    return;
  } else {



     
    if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_RCVPLUS, len); };
  }
}








 
static err_t
recv_tcp(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err)
{
  struct netconn *conn;
  u16_t len;

  (void)pcb;
  do { if(!(pcb != 0)) ; } while(0);
  do { if(!(arg != 0)) ; } while(0);
  conn = (struct netconn *)arg;
  do { if(!(conn->pcb . tcp == pcb)) ; } while(0);

  if (conn == 0) {
    return -6;
  }
  if (!(((* &conn->recvmbox). id == 0) ? 0 : 1 )) {
     
    if (p != 0) {
      tcp_recved(pcb, p->tot_len);
      pbuf_free(p);
    }
    return 0;
  }
  

 

   
  do { sys_prot_t lev; lev = sys_arch_protect(); if (!(((conn)->last_err) < -9)) { (conn)->last_err = err; } sys_arch_unprotect(lev); } while(0);;

  if (p != 0) {
    len = p->tot_len;
  } else {
    len = 0;
  }

  if (sys_mbox_trypost(&conn->recvmbox, p) != 0) {
     
    return -1;
  } else {



     
    if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_RCVPLUS, len); };
  }

  return 0;
}











 
static err_t
poll_tcp(void *arg, struct tcp_pcb *pcb)
{
  struct netconn *conn = (struct netconn *)arg;

  (void)pcb;
  do { if(!((conn != 0))) ; } while(0);

  if (conn->state == NETCONN_WRITE) {
    do_writemore(conn);
  } else if (conn->state == NETCONN_CLOSE) {
    do_close_internal(conn);
  }
   

   
  if (conn->flags & 0x10) {
    
 
    if ((conn->pcb.tcp != 0) && (((conn->pcb . tcp)->snd_buf) > (((((((((4 * (1500 - 40)))/2)) > ((2 * (1500 - 40)) + 1)) ? ((((4 * (1500 - 40)))/2)) : ((2 * (1500 - 40)) + 1))) < (((4 * (1500 - 40))) - 1)) ? (((((((4 * (1500 - 40)))/2)) > ((2 * (1500 - 40)) + 1)) ? ((((4 * (1500 - 40)))/2)) : ((2 * (1500 - 40)) + 1))) : (((4 * (1500 - 40))) - 1))) &&
      (((conn->pcb . tcp)->snd_queuelen) < (((((((2 * (4 * (1500 - 40))) / (1500 - 40)))/2)) > (5)) ? (((((2 * (4 * (1500 - 40))) / (1500 - 40)))/2)) : (5)))) {
      conn->flags &= ~0x10;
      if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDPLUS, 0); };
    }
  }

  return 0;
}







 
static err_t
sent_tcp(void *arg, struct tcp_pcb *pcb, u16_t len)
{
  struct netconn *conn = (struct netconn *)arg;

  (void)pcb;
  do { if(!((conn != 0))) ; } while(0);

  if (conn->state == NETCONN_WRITE) {
    do_writemore(conn);
  } else if (conn->state == NETCONN_CLOSE) {
    do_close_internal(conn);
  }

  if (conn) {
    
 
    if ((conn->pcb.tcp != 0) && (((conn->pcb . tcp)->snd_buf) > (((((((((4 * (1500 - 40)))/2)) > ((2 * (1500 - 40)) + 1)) ? ((((4 * (1500 - 40)))/2)) : ((2 * (1500 - 40)) + 1))) < (((4 * (1500 - 40))) - 1)) ? (((((((4 * (1500 - 40)))/2)) > ((2 * (1500 - 40)) + 1)) ? ((((4 * (1500 - 40)))/2)) : ((2 * (1500 - 40)) + 1))) : (((4 * (1500 - 40))) - 1))) &&
      (((conn->pcb . tcp)->snd_queuelen) < (((((((2 * (4 * (1500 - 40))) / (1500 - 40)))/2)) > (5)) ? (((((2 * (4 * (1500 - 40))) / (1500 - 40)))/2)) : (5)))) {
      conn->flags &= ~0x10;
      if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDPLUS, len); };
    }
  }
  
  return 0;
}







 
static void
err_tcp(void *arg, err_t err)
{
  struct netconn *conn;
  enum netconn_state old_state;
  sys_prot_t lev;

  conn = (struct netconn *)arg;
  do { if(!((conn != 0))) ; } while(0);

  conn->pcb.tcp = 0;

   
  lev = sys_arch_protect();
  conn->last_err = err;
  sys_arch_unprotect(lev);

   
  old_state = conn->state;
  conn->state = NETCONN_NONE;

  
 
  if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_ERROR, 0); };
  
 
  if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_RCVPLUS, 0); };
  if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDPLUS, 0); };

   
  if ((((* &conn->recvmbox). id == 0) ? 0 : 1 )) {
     
    sys_mbox_trypost(&conn->recvmbox, 0);
  }
   
  if ((((* &conn->acceptmbox). id == 0) ? 0 : 1 )) {
     
    sys_mbox_trypost(&conn->acceptmbox, 0);
  }

  if ((old_state == NETCONN_WRITE) || (old_state == NETCONN_CLOSE) ||
      (old_state == NETCONN_CONNECT)) {
    
 
    int was_nonblocking_connect = (((conn)->flags & 0x04) != 0);
    do { if(0) { (conn)->flags |= 0x04; } else { (conn)->flags &= ~ 0x04; }} while(0);

    if (!was_nonblocking_connect) {
       
      do { if(!(conn->current_msg != 0)) ; } while(0);
      conn->current_msg->err = err;
      conn->current_msg = 0;
       
      sys_sem_signal(&conn->op_completed);
    }
  } else {
    do { if(!(conn->current_msg == 0)) ; } while(0);
  }
}






 
static void
setup_tcp(struct netconn *conn)
{
  struct tcp_pcb *pcb;

  pcb = conn->pcb.tcp;
  tcp_arg(pcb, conn);
  tcp_recv(pcb, recv_tcp);
  tcp_sent(pcb, sent_tcp);
  tcp_poll(pcb, poll_tcp, 4);
  tcp_err(pcb, err_tcp);
}






 
static err_t
accept_function(void *arg, struct tcp_pcb *newpcb, err_t err)
{
  struct netconn *newconn;
  struct netconn *conn = (struct netconn *)arg;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("accept_function: newpcb->tate: %s\n", tcp_debug_state_str(newpcb->state));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  if (!(((* &conn->acceptmbox). id == 0) ? 0 : 1 )) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("accept_function: acceptmbox already deleted\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    return -6;
  }

  
 
  newconn = netconn_alloc(conn->type, conn->callback);
  if (newconn == 0) {
    return -1;
  }
  newconn->pcb.tcp = newpcb;
  setup_tcp(newconn);
  
 
  newconn->last_err = err;

  if (sys_mbox_trypost(&conn->acceptmbox, newconn) != 0) {
    
 
     
    struct tcp_pcb* pcb = newconn->pcb.tcp;
    tcp_arg(pcb, 0);
    tcp_recv(pcb, 0);
    tcp_sent(pcb, 0);
    tcp_poll(pcb, 0, 4);
    tcp_err(pcb, 0);
     
    newconn->pcb.tcp = 0;
     
    sys_mbox_free(&newconn->recvmbox);
    ( (* &newconn->recvmbox). id = 0 );
    netconn_free(newconn);
    return -1;
  } else {
     
    if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_RCVPLUS, 0); };
  }

  return 0;
}








 
static void
pcb_new(struct api_msg_msg *msg)
{
  do { if(!(msg->conn->pcb . tcp == 0)) ; } while(0);

   
  switch((msg->conn->type&0xF0)) {

  case NETCONN_RAW:
    msg->conn->pcb.raw = raw_new(msg->msg.n.proto);
    if(msg->conn->pcb.raw == 0) {
      msg->err = -1;
      break;
    }
    raw_recv(msg->conn->pcb.raw, recv_raw, msg->conn);
    break;


  case NETCONN_UDP:
    msg->conn->pcb.udp = udp_new();
    if(msg->conn->pcb.udp == 0) {
      msg->err = -1;
      break;
    }





    if (msg->conn->type==NETCONN_UDPNOCHKSUM) {
      ((msg->conn->pcb . udp)->flags = (0x01U));
    }
    udp_recv(msg->conn->pcb.udp, recv_udp, msg->conn);
    break;


  case NETCONN_TCP:
    msg->conn->pcb.tcp = tcp_new();
    if(msg->conn->pcb.tcp == 0) {
      msg->err = -1;
      break;
    }
    setup_tcp(msg->conn);
    break;

  default:
     
    msg->err = -6;
    break;
  }
}






 
void
do_newconn(struct api_msg_msg *msg)
{
  msg->err = 0;
  if(msg->conn->pcb.tcp == 0) {
    pcb_new(msg);
  }
   
   
   

  sys_sem_signal(&msg->conn->op_completed);
}










 
struct netconn*
netconn_alloc(enum netconn_type t, netconn_callback callback)
{
  struct netconn *conn;
  int size;

  conn = (struct netconn *)memp_malloc(MEMP_NETCONN);
  if (conn == 0) {
    return 0;
  }

  conn->last_err = 0;
  conn->type = t;
  conn->pcb.tcp = 0;



  size = 16;
#line 611 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"

  if (sys_sem_new(&conn->op_completed, 0) != 0) {
    goto free_and_return;
  }
  if (sys_mbox_new(&conn->recvmbox, size) != 0) {
    sys_sem_free(&conn->op_completed);
    goto free_and_return;
  }


  ( (* &conn->acceptmbox). id = 0 );

  conn->state        = NETCONN_NONE;

   
  conn->socket       = -1;

  conn->callback     = callback;

  conn->current_msg  = 0;
  conn->write_offset = 0;
#line 643 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
  conn->flags = 0;
  return conn;
free_and_return:
  memp_free(MEMP_NETCONN, conn);
  return 0;
}






 
void
netconn_free(struct netconn *conn)
{
  do { if(!(conn->pcb . tcp == 0)) ; } while(0);
  do { if(!(!(((* &conn->recvmbox). id == 0) ? 0 : 1 ))) ; } while(0);


  do { if(!(!(((* &conn->acceptmbox). id == 0) ? 0 : 1 ))) ; } while(0);



  sys_sem_free(&conn->op_completed);
  ( (* &conn->op_completed). id = 0);

  memp_free(MEMP_NETCONN, conn);
}








 
static void
netconn_drain(struct netconn *conn)
{
  void *mem;

  struct pbuf *p;


   

   
  if ((((* &conn->recvmbox). id == 0) ? 0 : 1 )) {
    while (sys_arch_mbox_tryfetch(&conn->recvmbox, &mem) != 0xffffffffUL) {

      if (conn->type == NETCONN_TCP) {
        if(mem != 0) {
          p = (struct pbuf*)mem;
           
          if (conn->pcb.tcp != 0) {
            tcp_recved(conn->pcb.tcp, p->tot_len);
          }
          pbuf_free(p);
        }
      } else

      {
        netbuf_delete((struct netbuf *)mem);
      }
    }
    sys_mbox_free(&conn->recvmbox);
    ( (* &conn->recvmbox). id = 0 );
  }

   

  if ((((* &conn->acceptmbox). id == 0) ? 0 : 1 )) {
    while (sys_arch_mbox_tryfetch(&conn->acceptmbox, &mem) != 0xffffffffUL) {
      struct netconn *newconn = (struct netconn *)mem;
       
       
      if (conn->pcb.tcp != 0) {
        do { do { if(!(conn->pcb . tcp->state == LISTEN)) ; } while(0); (((struct tcp_pcb_listen *)(conn->pcb . tcp))->accepts_pending--); } while(0);
      }
       
      netconn_drain(newconn);
      if (newconn->pcb.tcp != 0) {
        tcp_abort(newconn->pcb.tcp);
        newconn->pcb.tcp = 0;
      }
      netconn_free(newconn);
    }
    sys_mbox_free(&conn->acceptmbox);
    ( (* &conn->acceptmbox). id = 0 );
  }

}








 
static void
do_close_internal(struct netconn *conn)
{
  err_t err;
  u8_t shut, shut_rx, shut_tx, close;

  do { if(!((conn != 0))) ; } while(0);
  do { if(!((conn->type == NETCONN_TCP))) ; } while(0);
  do { if(!((conn->state == NETCONN_CLOSE))) ; } while(0);
  do { if(!((conn->pcb . tcp != 0))) ; } while(0);
  do { if(!(conn->current_msg != 0)) ; } while(0);

  shut = conn->current_msg->msg.sd.shut;
  shut_rx = shut & 1;
  shut_tx = shut & 2;
   
  close = shut == (1 | 2);

   
  if (close) {
    tcp_arg(conn->pcb.tcp, 0);
  }
  if (conn->pcb.tcp->state == LISTEN) {
    tcp_accept(conn->pcb.tcp, 0);
  } else {
     
    if (shut_rx) {
      tcp_recv(conn->pcb.tcp, 0);
      tcp_accept(conn->pcb.tcp, 0);
    }
    if (shut_tx) {
      tcp_sent(conn->pcb.tcp, 0);
    }
    if (close) {
      tcp_poll(conn->pcb.tcp, 0, 4);
      tcp_err(conn->pcb.tcp, 0);
    }
  }
   
  if (close) {
    err = tcp_close(conn->pcb.tcp);
  } else {
    err = tcp_shutdown(conn->pcb.tcp, shut_rx, shut_tx);
  }
  if (err == 0) {
     
    conn->current_msg->err = 0;
    conn->current_msg = 0;
    conn->state = NETCONN_NONE;
    if (close) {
       
      conn->pcb.tcp = 0;
      
 
      if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_ERROR, 0); };
    }
    if (shut_rx) {
      if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_RCVPLUS, 0); };
    }
    if (shut_tx) {
      if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDPLUS, 0); };
    }
     
    sys_sem_signal(&conn->op_completed);
  } else {
     
     
    do { if(!((conn->pcb . tcp->state != LISTEN))) ; } while(0);
    tcp_sent(conn->pcb.tcp, sent_tcp);
    tcp_poll(conn->pcb.tcp, poll_tcp, 4);
    tcp_err(conn->pcb.tcp, err_tcp);
    tcp_arg(conn->pcb.tcp, conn);
     
  }
  
 
}







 
void
do_delconn(struct api_msg_msg *msg)
{
   
 if ((msg->conn->state != NETCONN_NONE) &&
     (msg->conn->state != NETCONN_LISTEN) &&
     (msg->conn->state != NETCONN_CONNECT)) {
     
    do { if(!(msg->conn->type == NETCONN_TCP)) ; } while(0);
    msg->err = -5;
  } else {
    do { if(!((msg->conn->state != NETCONN_CONNECT) || (((msg->conn)->flags & 0x04) != 0))) ; } while(0);

     
    netconn_drain(msg->conn);

    if (msg->conn->pcb.tcp != 0) {

      switch ((msg->conn->type&0xF0)) {

      case NETCONN_RAW:
        raw_remove(msg->conn->pcb.raw);
        break;


      case NETCONN_UDP:
        msg->conn->pcb.udp->recv_arg = 0;
        udp_remove(msg->conn->pcb.udp);
        break;


      case NETCONN_TCP:
        do { if(!(msg->conn->current_msg == 0 && msg->conn->write_offset == 0)) ; } while(0);

        msg->conn->state = NETCONN_CLOSE;
        msg->msg.sd.shut = (1 | 2);
        msg->conn->current_msg = msg;
        do_close_internal(msg->conn);
        
 
        return;

      default:
        break;
      }
      msg->conn->pcb.tcp = 0;
    }
     

    
 
    if (msg->conn->callback) { (*msg->conn->callback)(msg->conn, NETCONN_EVT_RCVPLUS, 0); };
    if (msg->conn->callback) { (*msg->conn->callback)(msg->conn, NETCONN_EVT_SENDPLUS, 0); };
  }
  if ((((* &msg->conn->op_completed). id == 0) ? 0 : 1)) {
    sys_sem_signal(&msg->conn->op_completed);
  }
}







 
void
do_bind(struct api_msg_msg *msg)
{
  if (((msg->conn->last_err) < -9)) {
    msg->err = msg->conn->last_err;
  } else {
    msg->err = -6;
    if (msg->conn->pcb.tcp != 0) {
      switch ((msg->conn->type&0xF0)) {

      case NETCONN_RAW:
        msg->err = raw_bind(msg->conn->pcb.raw, msg->msg.bc.ipaddr);
        break;


      case NETCONN_UDP:
        msg->err = udp_bind(msg->conn->pcb.udp, msg->msg.bc.ipaddr, msg->msg.bc.port);
        break;


      case NETCONN_TCP:
        msg->err = tcp_bind(msg->conn->pcb.tcp, msg->msg.bc.ipaddr, msg->msg.bc.port);
        break;

      default:
        break;
      }
    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}







 
static err_t
do_connected(void *arg, struct tcp_pcb *pcb, err_t err)
{
  struct netconn *conn;
  int was_blocking;

  (void)pcb;

  conn = (struct netconn *)arg;

  if (conn == 0) {
    return -6;
  }

  do { if(!(conn->state == NETCONN_CONNECT)) ; } while(0);
  do { if(!((conn->current_msg != 0) || (((conn)->flags & 0x04) != 0))) ; } while(0);


  if (conn->current_msg != 0) {
    conn->current_msg->err = err;
  }
  if ((conn->type == NETCONN_TCP) && (err == 0)) {
    setup_tcp(conn);
  }
  was_blocking = !(((conn)->flags & 0x04) != 0);
  do { if(0) { (conn)->flags |= 0x04; } else { (conn)->flags &= ~ 0x04; }} while(0);
  conn->current_msg = 0;
  conn->state = NETCONN_NONE;
  if (!was_blocking) {
    do { sys_prot_t lev; lev = sys_arch_protect(); if (!(((conn)->last_err) < -9)) { (conn)->last_err = 0; } sys_arch_unprotect(lev); } while(0);;
  }
  if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDPLUS, 0); };

  if (was_blocking) {
    sys_sem_signal(&conn->op_completed);
  }
  return 0;
}








 
void
do_connect(struct api_msg_msg *msg)
{
  if (msg->conn->pcb.tcp == 0) {
     
    msg->err = -12;
  } else {
    switch ((msg->conn->type&0xF0)) {

  case NETCONN_RAW:
    msg->err = raw_connect(msg->conn->pcb.raw, msg->msg.bc.ipaddr);
    break;


  case NETCONN_UDP:
    msg->err = udp_connect(msg->conn->pcb.udp, msg->msg.bc.ipaddr, msg->msg.bc.port);
    break;


  case NETCONN_TCP:
     
    if (msg->conn->state != NETCONN_NONE) {
      msg->err = -9;
    } else {
      setup_tcp(msg->conn);
      msg->err = tcp_connect(msg->conn->pcb.tcp, msg->msg.bc.ipaddr,
        msg->msg.bc.port, do_connected);
      if (msg->err == 0) {
        u8_t non_blocking = (((msg->conn)->flags & 0x02) != 0);
        msg->conn->state = NETCONN_CONNECT;
        do { if(non_blocking) { (msg->conn)->flags |= 0x04; } else { (msg->conn)->flags &= ~ 0x04; }} while(0);
        if (non_blocking) {
          msg->err = -5;
        } else {
          msg->conn->current_msg = msg;
          
 
          return;
        }
      }
    }
    break;

  default:
    do { if (!(0)) { ; do{ msg->err = -6; }while(0);}} while(0);
    break;
    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}







 
void
do_disconnect(struct api_msg_msg *msg)
{

  if ((msg->conn->type&0xF0) == NETCONN_UDP) {
    udp_disconnect(msg->conn->pcb.udp);
    msg->err = 0;
  } else

  {
    msg->err = -6;
  }
  sys_sem_signal(&msg->conn->op_completed);
}







 
void
do_listen(struct api_msg_msg *msg)
{
  if (((msg->conn->last_err) < -9)) {
    msg->err = msg->conn->last_err;
  } else {
    msg->err = -13;
    if (msg->conn->pcb.tcp != 0) {
      if (msg->conn->type == NETCONN_TCP) {
        if (msg->conn->state == NETCONN_NONE) {

          struct tcp_pcb* lpcb = tcp_listen_with_backlog(msg->conn->pcb.tcp, msg->msg.lb.backlog);



          if (lpcb == 0) {
             
            msg->err = -1;
          } else {
             
            if ((((* &msg->conn->recvmbox). id == 0) ? 0 : 1 )) {
               
              sys_mbox_free(&msg->conn->recvmbox);
              ( (* &msg->conn->recvmbox). id = 0 );
            }
            msg->err = 0;
            if (!(((* &msg->conn->acceptmbox). id == 0) ? 0 : 1 )) {
              msg->err = sys_mbox_new(&msg->conn->acceptmbox, 16);
            }
            if (msg->err == 0) {
              msg->conn->state = NETCONN_LISTEN;
              msg->conn->pcb.tcp = lpcb;
              tcp_arg(msg->conn->pcb.tcp, msg->conn);
              tcp_accept(msg->conn->pcb.tcp, accept_function);
            } else {
               
              tcp_close(lpcb);
              msg->conn->pcb.tcp = 0;
            }
          }
        }
      } else {
        msg->err = -14;
      }
    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}







 
void
do_send(struct api_msg_msg *msg)
{
  if (((msg->conn->last_err) < -9)) {
    msg->err = msg->conn->last_err;
  } else {
    msg->err = -13;
    if (msg->conn->pcb.tcp != 0) {
      switch ((msg->conn->type&0xF0)) {

      case NETCONN_RAW:
        if (((&msg->msg . b->addr) == 0 || (&msg->msg . b->addr)->addr == ((u32_t)0x00000000UL))) {
          msg->err = raw_send(msg->conn->pcb.raw, msg->msg.b->p);
        } else {
          msg->err = raw_sendto(msg->conn->pcb.raw, msg->msg.b->p, &msg->msg.b->addr);
        }
        break;


      case NETCONN_UDP:
#line 1149 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
        if (((&msg->msg . b->addr) == 0 || (&msg->msg . b->addr)->addr == ((u32_t)0x00000000UL))) {
          msg->err = udp_send(msg->conn->pcb.udp, msg->msg.b->p);
        } else {
          msg->err = udp_sendto(msg->conn->pcb.udp, msg->msg.b->p, &msg->msg.b->addr, msg->msg.b->port);
        }

        break;

      default:
        break;
      }
    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}







 
void
do_recv(struct api_msg_msg *msg)
{
  msg->err = 0;
  if (msg->conn->pcb.tcp != 0) {
    if (msg->conn->type == NETCONN_TCP) {

      if (msg->conn->pcb.tcp->state == LISTEN) {
        do { do { if(!(msg->conn->pcb . tcp->state == LISTEN)) ; } while(0); (((struct tcp_pcb_listen *)(msg->conn->pcb . tcp))->accepts_pending--); } while(0);
      } else

      {
        u32_t remaining = msg->msg.r.len;
        do {
          u16_t recved = (remaining > 0xffff) ? 0xffff : (u16_t)remaining;
          tcp_recved(msg->conn->pcb.tcp, recved);
          remaining -= recved;
        }while(remaining != 0);
      }
    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}











 
static err_t
do_writemore(struct netconn *conn)
{
  err_t err;
  void *dataptr;
  u16_t len, available;
  u8_t write_finished = 0;
  size_t diff;
  u8_t dontblock = (((conn)->flags & 0x02) != 0) ||
       (conn->current_msg->msg.w.apiflags & 0x04);
  u8_t apiflags = conn->current_msg->msg.w.apiflags;

  do { if(!(conn != 0)) ; } while(0);
  do { if(!((conn->state == NETCONN_WRITE))) ; } while(0);
  do { if(!(conn->current_msg != 0)) ; } while(0);
  do { if(!(conn->pcb . tcp != 0)) ; } while(0);
  do { if(!(conn->write_offset < conn->current_msg->msg . w . len)) ; } while(0);


#line 1241 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
  {
    dataptr = (u8_t*)conn->current_msg->msg.w.dataptr + conn->write_offset;
    diff = conn->current_msg->msg.w.len - conn->write_offset;
    if (diff > 0xffffUL) {  
      len = 0xffff;



      apiflags |= 0x02;
    } else {
      len = (u16_t)diff;
    }
    available = ((conn->pcb . tcp)->snd_buf);
    if (available < len) {
       
      len = available;
      if (dontblock){ 
        if (!len) {
          err = -7;
          goto err_mem;
        }
      } else {



        apiflags |= 0x02;
      }
    }
    do { if(!(((conn->write_offset + len) <= conn->current_msg->msg . w . len))) ; } while(0);
    err = tcp_write(conn->pcb.tcp, dataptr, len, apiflags);
     
    if ((err == 0) || (err == -1)) {
err_mem:
      if (dontblock && (len < conn->current_msg->msg.w.len)) {
        
 
        if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDMINUS, len); };
        conn->flags |= 0x10;
      } else if ((((conn->pcb . tcp)->snd_buf) <= (((((((((4 * (1500 - 40)))/2)) > ((2 * (1500 - 40)) + 1)) ? ((((4 * (1500 - 40)))/2)) : ((2 * (1500 - 40)) + 1))) < (((4 * (1500 - 40))) - 1)) ? (((((((4 * (1500 - 40)))/2)) > ((2 * (1500 - 40)) + 1)) ? ((((4 * (1500 - 40)))/2)) : ((2 * (1500 - 40)) + 1))) : (((4 * (1500 - 40))) - 1))) ||
                 (((conn->pcb . tcp)->snd_queuelen) >= (((((((2 * (4 * (1500 - 40))) / (1500 - 40)))/2)) > (5)) ? (((((2 * (4 * (1500 - 40))) / (1500 - 40)))/2)) : (5)))) {
        
 
        if (conn->callback) { (*conn->callback)(conn, NETCONN_EVT_SENDMINUS, len); };
      }
    }

    if (err == 0) {
      conn->write_offset += len;
      if ((conn->write_offset == conn->current_msg->msg.w.len) || dontblock) {
         
        conn->current_msg->msg.w.len = conn->write_offset;
         
        write_finished = 1;
        conn->write_offset = 0;
      }
      tcp_output(conn->pcb.tcp);
    } else if ((err == -1) && !dontblock) {
      

 

       
      tcp_output(conn->pcb.tcp);




    } else {
      
 
      write_finished = 1;
      conn->current_msg->msg.w.len = 0;
    }
  }
  if (write_finished) {
    
 
    conn->current_msg->err = err;
    conn->current_msg = 0;
    conn->state = NETCONN_NONE;



    {
      sys_sem_signal(&conn->op_completed);
    }
  }




  return 0;
}







 
void
do_write(struct api_msg_msg *msg)
{
  if (((msg->conn->last_err) < -9)) {
    msg->err = msg->conn->last_err;
  } else {
    if (msg->conn->type == NETCONN_TCP) {

      if (msg->conn->state != NETCONN_NONE) {
         
        msg->err = -5;
      } else if (msg->conn->pcb.tcp != 0) {
        msg->conn->state = NETCONN_WRITE;
         
        do { if(!(msg->conn->current_msg == 0 && msg->conn->write_offset == 0)) ; } while(0);

        do { if(!(msg->msg . w . len != 0)) ; } while(0);
        msg->conn->current_msg = msg;
        msg->conn->write_offset = 0;
#line 1371 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"
        do_writemore(msg->conn);

        
 
        return;
      } else {
        msg->err = -13;
      }




    } else {
      msg->err = -6;

    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}






 
void
do_getaddr(struct api_msg_msg *msg)
{
  if (msg->conn->pcb.ip != 0) {
    *(msg->msg.ad.ipaddr) = (msg->msg.ad.local ? msg->conn->pcb.ip->local_ip :
                             msg->conn->pcb.ip->remote_ip);

    msg->err = 0;
    switch ((msg->conn->type&0xF0)) {

    case NETCONN_RAW:
      if (msg->msg.ad.local) {
        *(msg->msg.ad.port) = msg->conn->pcb.raw->protocol;
      } else {
         
        msg->err = -13;
      }
      break;


    case NETCONN_UDP:
      if (msg->msg.ad.local) {
        *(msg->msg.ad.port) = msg->conn->pcb.udp->local_port;
      } else {
        if ((msg->conn->pcb.udp->flags & 0x04U) == 0) {
          msg->err = -13;
        } else {
          *(msg->msg.ad.port) = msg->conn->pcb.udp->remote_port;
        }
      }
      break;


    case NETCONN_TCP:
      *(msg->msg.ad.port) = (msg->msg.ad.local?msg->conn->pcb.tcp->local_port:msg->conn->pcb.tcp->remote_port);
      break;

    default:
      do { if(!(0)) ; } while(0);
      break;
    }
  } else {
    msg->err = -13;
  }
  sys_sem_signal(&msg->conn->op_completed);
}






 
void
do_close(struct api_msg_msg *msg)
{

   
  if ((msg->conn->state != NETCONN_NONE) && (msg->conn->state != NETCONN_LISTEN)) {
     
    do { if(!(msg->conn->type == NETCONN_TCP)) ; } while(0);
    msg->err = -5;
  } else if ((msg->conn->pcb.tcp != 0) && (msg->conn->type == NETCONN_TCP)) {
    if ((msg->msg.sd.shut != (1 | 2)) && (msg->conn->state == NETCONN_LISTEN)) {
       
      msg->err = -13;
    } else {
      if (msg->msg.sd.shut & 1) {
         
        netconn_drain(msg->conn);
      }
      do { if(!(msg->conn->current_msg == 0 && msg->conn->write_offset == 0)) ; } while(0);

      msg->conn->state = NETCONN_CLOSE;
      msg->conn->current_msg = msg;
      do_close_internal(msg->conn);
       
      return;
    }
  } else

  {
    msg->err = -6;
  }
  sys_sem_signal(&msg->conn->op_completed);
}







 
void
do_join_leave_group(struct api_msg_msg *msg)
{ 
  if (((msg->conn->last_err) < -9)) {
    msg->err = msg->conn->last_err;
  } else {
    if (msg->conn->pcb.tcp != 0) {
      if ((msg->conn->type&0xF0) == NETCONN_UDP) {

        if (msg->msg.jl.join_or_leave == NETCONN_JOIN) {
          msg->err = igmp_joingroup(msg->msg.jl.netif_addr, msg->msg.jl.multiaddr);
        } else {
          msg->err = igmp_leavegroup(msg->msg.jl.netif_addr, msg->msg.jl.multiaddr);
        }


      } else {
        msg->err = -6;

      }
    } else {
      msg->err = -13;
    }
  }
  sys_sem_signal(&msg->conn->op_completed);
}


#line 1564 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\api_msg.c"

