#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"




 

































 

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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"






























 





#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"



#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"

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





#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"
#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"





 
struct in_addr {
  u32_t s_addr;
};

 

 

 

 





 

































 


 









#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"





 
struct sockaddr_in {
  u8_t sin_len;
  u8_t sin_family;
  u16_t sin_port;
  struct in_addr sin_addr;
  char sin_zero[8];
};

struct sockaddr {
  u8_t sa_len;
  u8_t sa_family;
  char sa_data[14];
};


 

typedef u32_t socklen_t;


 






 
#line 89 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"





 
#line 105 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"




 
struct linger {
       int l_onoff;                 
       int l_linger;                
};



 













 









 






 
#line 155 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"

#line 163 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"





 






typedef struct ip_mreq {
    struct in_addr imr_multiaddr;  
    struct in_addr imr_interface;  
} ip_mreq;

















 
#line 204 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"









 
#line 224 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"











 
#line 242 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"
                                        
 







#line 257 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"

 
#line 266 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"

 
#line 274 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"


 
#line 283 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"







 


   






  typedef struct fd_set {
          unsigned char fd_bits [(20+7)/8];
        } fd_set;




  





struct timeval {
  long    tv_sec;          
  long    tv_usec;         
};


void lwip_socket_init(void);

int lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown(int s, int how);
int lwip_getpeername (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt (int s, int level, int optname, const void *optval, socklen_t optlen);
int lwip_close(int s);
int lwip_connect(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen(int s, int backlog);
int lwip_recv(int s, void *mem, size_t len, int flags);
int lwip_read(int s, void *mem, size_t len);
int lwip_recvfrom(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
int lwip_send(int s, const void *dataptr, size_t size, int flags);
int lwip_sendto(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
int lwip_write(int s, const void *dataptr, size_t size);
int lwip_select(int maxfdp1, fd_set *readset, fd_set *writeset, fd_set *exceptset,
                struct timeval *timeout);
int lwip_ioctl(int s, long cmd, void *argp);
int lwip_fcntl(int s, int cmd, int val);

#line 363 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"

#line 370 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sockets.h"









#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api.h"

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netbuf.h"
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







#line 47 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
#line 48 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
































 




#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
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







#line 49 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
#line 50 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
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








#line 51 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
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








#line 52 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
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













#line 53 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/tcpip.h"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"

#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/api_msg.h"
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







#line 54 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
#line 55 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"




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



 

#line 60 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"



 
struct lwip_sock {
   
  struct netconn *conn;
   
  void *lastdata;
   
  u16_t lastoffset;
  
 
  s16_t rcvevent;
  
 
  u16_t sendevent;
   
  u16_t errevent; 
   
  int err;
   
  int select_waiting;
};

 
struct lwip_select_cb {
   
  struct lwip_select_cb *next;
   
  struct lwip_select_cb *prev;
   
  fd_set *readset;
   
  fd_set *writeset;
   
  fd_set *exceptset;
   
  int sem_signalled;
   
  sys_sem_t sem;
};


 
struct lwip_setgetsockopt_data {
   
  struct lwip_sock *sock;

   
  int s;

   
  int level;
   
  int optname;
  
 
  void *optval;
   
  socklen_t *optlen;
   
  err_t err;
};

 
static struct lwip_sock sockets[20];
 
static struct lwip_select_cb *select_cb_list;

 
static volatile int select_cb_ctr;


 
static const int err_to_errno_table[] = {
  0,              
  12,         
  105,        
  11,    
  113,   
  115,    
  22,         
  11,    
  98,     
  114,       
  103,   
  104,     
  107,       
  107,       
  5,            
  -1,             
};








#line 168 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"






 
static void event_callback(struct netconn *conn, enum netconn_evt evt, u16_t len);
static void lwip_getsockopt_internal(void *arg);
static void lwip_setsockopt_internal(void *arg);




 
void
lwip_socket_init(void)
{
}






 
static struct lwip_sock *
get_socket(int s)
{
  struct lwip_sock *sock;

  if ((s < 0) || (s >= 20)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("get_socket(%d): invalid\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    return 0;
  }

  sock = &sockets[s];

  if (!sock->conn) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("get_socket(%d): not active\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    return 0;
  }

  return sock;
}






 
static struct lwip_sock *
tryget_socket(int s)
{
  if ((s < 0) || (s >= 20)) {
    return 0;
  }
  if (!sockets[s].conn) {
    return 0;
  }
  return &sockets[s];
}








 
static int
alloc_socket(struct netconn *newconn, int accepted)
{
  int i;
  sys_prot_t lev;

   
  for (i = 0; i < 20; ++i) {
     
    lev = sys_arch_protect();
    if (!sockets[i].conn) {
      sockets[i].conn       = newconn;
      
 
      sys_arch_unprotect(lev);
      sockets[i].lastdata   = 0;
      sockets[i].lastoffset = 0;
      sockets[i].rcvevent   = 0;
      
 
      sockets[i].sendevent  = (newconn->type == NETCONN_TCP ? (accepted != 0) : 1);
      sockets[i].errevent   = 0;
      sockets[i].err        = 0;
      sockets[i].select_waiting = 0;
      return i;
    }
    sys_arch_unprotect(lev);
  }
  return -1;
}






 
static void
free_socket(struct lwip_sock *sock, int is_tcp)
{
  void *lastdata;
  sys_prot_t lev;

  lastdata         = sock->lastdata;
  sock->lastdata   = 0;
  sock->lastoffset = 0;
  sock->err        = 0;

   
  lev = sys_arch_protect();
  sock->conn       = 0;
  sys_arch_unprotect(lev);
   

  if (lastdata != 0) {
    if (is_tcp) {
      pbuf_free((struct pbuf *)lastdata);
    } else {
      netbuf_delete((struct netbuf *)lastdata);
    }
  }
}





 

int
lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen)
{
  struct lwip_sock *sock, *nsock;
  struct netconn *newconn;
  ip_addr_t naddr;
  u16_t port;
  int newsock;
  struct sockaddr_in sin;
  err_t err;
  sys_prot_t lev;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_accept(%d)...\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if ((((sock->conn)->flags & 0x02) != 0) && (sock->rcvevent <= 0)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_accept(%d): returning EWOULDBLOCK\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { sock->err = (11); ; } while (0);
    return -1;
  }

   
  err = netconn_accept(sock->conn, &newconn);
  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_accept(%d): netconn_acept failed, err=%d\n", s, err);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if ((sock->conn->type) != NETCONN_TCP) {
      do { sock->err = (95); ; } while (0);
      return 95;
    }
    do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
    return -1;
  }
  do { if(!(newconn != 0)) ; } while(0);
   
  do { if(1) { (newconn)->flags |= 0x08; } else { (newconn)->flags &= ~ 0x08; }} while(0);

   
  err = netconn_getaddr(newconn,&naddr,&port,0);
  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_accept(%d): netconn_peer failed, err=%d\n", s, err);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    netconn_delete(newconn);
    do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
    return -1;
  }

  

 
  if (0 != addr) {
    do { if(!(addrlen != 0)) ; } while(0);
    memset(&sin, 0, sizeof(sin));
    sin.sin_len = sizeof(sin);
    sin.sin_family = 2;
    sin.sin_port = lwip_htons(port);
    ((&sin . sin_addr)->s_addr = ((&naddr)->addr));

    if (*addrlen > sizeof(sin))
      *addrlen = sizeof(sin);

    memcpy(addr,&sin,*addrlen);
  }

  newsock = alloc_socket(newconn, 1);
  if (newsock == -1) {
    netconn_delete(newconn);
    do { sock->err = (23); ; } while (0);
    return -1;
  }
  do { if(!((newsock >= 0) && (newsock < 20))) ; } while(0);
  do { if(!(newconn->callback == event_callback)) ; } while(0);
  nsock = &sockets[newsock];

  



 
  lev = sys_arch_protect();
  nsock->rcvevent += (s16_t)(-1 - newconn->socket);
  newconn->socket = newsock;
  sys_arch_unprotect(lev);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_accept(%d) returning new sock=%d addr=", s, newsock);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[0])) : 0, &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[1])) : 0, &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[2])) : 0, &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" port=%" "hu" "\n", port);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  do { sock->err = (0); ; } while (0);
  return newsock;
}

int
lwip_bind(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *sock;
  ip_addr_t local_addr;
  u16_t local_port;
  err_t err;
  const struct sockaddr_in *name_in;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

   
  do { if (!(((namelen == sizeof(struct sockaddr_in)) && ((name ->sa_family) == 2) && ((((mem_ptr_t)name) % 4) == 0)))) { ; do { sock->err = (((unsigned)(-(-14)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(-14)] : 5)); ; } while (0); return -1;;}} while(0);


  name_in = (const struct sockaddr_in *)(void*)name;

  (((&local_addr)->addr = ((&name_in->sin_addr)->s_addr)));
  local_port = name_in->sin_port;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_bind(%d, addr=", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", &local_addr != 0 ? ((u16_t)(((u8_t*)(&local_addr))[0])) : 0, &local_addr != 0 ? ((u16_t)(((u8_t*)(&local_addr))[1])) : 0, &local_addr != 0 ? ((u16_t)(((u8_t*)(&local_addr))[2])) : 0, &local_addr != 0 ? ((u16_t)(((u8_t*)(&local_addr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" port=%" "hu" ")\n", lwip_ntohs(local_port));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  err = netconn_bind(sock->conn, &local_addr, lwip_ntohs(local_port));

  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_bind(%d) failed, err=%d\n", s, err);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
    return -1;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_bind(%d) succeeded\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { sock->err = (0); ; } while (0);
  return 0;
}

int
lwip_close(int s)
{
  struct lwip_sock *sock;
  int is_tcp = 0;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_close(%d)\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if(sock->conn != 0) {
    is_tcp = (sock->conn->type) == NETCONN_TCP;
  } else {
    do { if(!(sock->lastdata == 0)) ; } while(0);
  }

  netconn_delete(sock->conn);

  free_socket(sock, is_tcp);
  ;
  return 0;
}

int
lwip_connect(int s, const struct sockaddr *name, socklen_t namelen)
{
  struct lwip_sock *sock;
  err_t err;
  const struct sockaddr_in *name_in;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

   
  do { if (!(((namelen == sizeof(struct sockaddr_in)) && ((name ->sa_family) == 2) && ((((mem_ptr_t)name) % 4) == 0)))) { ; do { sock->err = (((unsigned)(-(-14)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(-14)] : 5)); ; } while (0); return -1;;}} while(0);


  name_in = (const struct sockaddr_in *)(void*)name;

  if (name_in->sin_family == 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_connect(%d, AF_UNSPEC)\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    err = netconn_disconnect(sock->conn);
  } else {
    ip_addr_t remote_addr;
    u16_t remote_port;

    (((&remote_addr)->addr = ((&name_in->sin_addr)->s_addr)));
    remote_port = name_in->sin_port;

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_connect(%d, addr=", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", &remote_addr != 0 ? ((u16_t)(((u8_t*)(&remote_addr))[0])) : 0, &remote_addr != 0 ? ((u16_t)(((u8_t*)(&remote_addr))[1])) : 0, &remote_addr != 0 ? ((u16_t)(((u8_t*)(&remote_addr))[2])) : 0, &remote_addr != 0 ? ((u16_t)(((u8_t*)(&remote_addr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" port=%" "hu" ")\n", lwip_ntohs(remote_port));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    err = netconn_connect(sock->conn, &remote_addr, lwip_ntohs(remote_port));
  }

  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_connect(%d) failed, err=%d\n", s, err);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
    return -1;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_connect(%d) succeeded\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { sock->err = (0); ; } while (0);
  return 0;
}








 
int
lwip_listen(int s, int backlog)
{
  struct lwip_sock *sock;
  err_t err;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_listen(%d, backlog=%d)\n", s, backlog);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

   
  backlog = ((((((backlog) > (0)) ? (backlog) : (0))) < (0xff)) ? ((((backlog) > (0)) ? (backlog) : (0))) : (0xff));

  err = netconn_listen_with_backlog(sock->conn, (u8_t)backlog);

  if (err != 0) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_listen(%d) failed, err=%d\n", s, err);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if ((sock->conn->type) != NETCONN_TCP) {
      do { sock->err = (95); ; } while (0);
      return 95;
    }
    do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
    return -1;
  }

  do { sock->err = (0); ; } while (0);
  return 0;
}

int
lwip_recvfrom(int s, void *mem, size_t len, int flags,
        struct sockaddr *from, socklen_t *fromlen)
{
  struct lwip_sock *sock;
  void             *buf = 0;
  struct pbuf      *p;
  u16_t            buflen, copylen;
  int              off = 0;
  ip_addr_t        *addr;
  u16_t            port;
  u8_t             done = 0;
  err_t            err;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom(%d, %p, %" "uz" ", 0x%x, ..)\n", s, mem, len, flags);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  do {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom: top while sock->lastdata=%p\n", sock->lastdata);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
     
    if (sock->lastdata) {
      buf = sock->lastdata;
    } else {
       
      if (((flags & 0x08) || (((sock->conn)->flags & 0x02) != 0)) && 
          (sock->rcvevent <= 0)) {
        if (off > 0) {
           
          netconn_recved(sock->conn, (u32_t)off);
           
          do { sock->err = (0); ; } while (0);
          return off;
        }
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom(%d): returning EWOULDBLOCK\n", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { sock->err = (11); ; } while (0);
        return -1;
      }

      
 
      if ((sock->conn->type) == NETCONN_TCP) {
        err = netconn_recv_tcp_pbuf(sock->conn, (struct pbuf **)&buf);
      } else {
        err = netconn_recv(sock->conn, (struct netbuf **)&buf);
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom: netconn_recv err=%d, netbuf=%p\n", err, buf);; if ((0x00U) & 0x08U) { while(1); } } } while(0);


      if (err != 0) {
        if (off > 0) {
           
          netconn_recved(sock->conn, (u32_t)off);
           
          do { sock->err = (0); ; } while (0);
          return off;
        }
         
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom(%d): buf == NULL, error is \"%s\"!\n", s, lwip_strerr(err));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

        do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
        if (err == -12) {
          return 0;
        } else {
          return -1;
        }
      }
      do { if(!(buf != 0)) ; } while(0);
      sock->lastdata = buf;
    }

    if ((sock->conn->type) == NETCONN_TCP) {
      p = (struct pbuf *)buf;
    } else {
      p = ((struct netbuf *)buf)->p;
    }
    buflen = p->tot_len;
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom: buflen=%" "hu" " len=%" "uz" " off=%d sock->lastoffset=%" "hu" "\n", buflen, len, off, sock->lastoffset);; if ((0x00U) & 0x08U) { while(1); } } } while(0);


    buflen -= sock->lastoffset;

    if (len > buflen) {
      copylen = buflen;
    } else {
      copylen = (u16_t)len;
    }

    
 
    pbuf_copy_partial(p, (u8_t*)mem + off, copylen, sock->lastoffset);

    off += copylen;

    if ((sock->conn->type) == NETCONN_TCP) {
      do { if(!(len >= copylen)) ; } while(0);
      len -= copylen;
      if ( (len <= 0) || 
           (p->flags & 0x01U) || 
           (sock->rcvevent <= 0) || 
           ((flags & 0x01)!=0)) {
        done = 1;
      }
    } else {
      done = 1;
    }

     
    if (done) {
      ip_addr_t fromaddr;
      if (from && fromlen) {
        struct sockaddr_in sin;

        if ((sock->conn->type) == NETCONN_TCP) {
          addr = &fromaddr;
          netconn_getaddr(sock->conn, addr, &port, 0);
        } else {
          addr = (&(((struct netbuf *)buf)->addr));
          port = (((struct netbuf *)buf)->port);
        }

        memset(&sin, 0, sizeof(sin));
        sin.sin_len = sizeof(sin);
        sin.sin_family = 2;
        sin.sin_port = lwip_htons(port);
        ((&sin . sin_addr)->s_addr = ((addr)->addr));

        if (*fromlen > sizeof(sin)) {
          *fromlen = sizeof(sin);
        }

        memcpy(from,&sin,*fromlen);

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom(%d): addr=", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", addr != 0 ? ((u16_t)(((u8_t*)(addr))[0])) : 0, addr != 0 ? ((u16_t)(((u8_t*)(addr))[1])) : 0, addr != 0 ? ((u16_t)(((u8_t*)(addr))[2])) : 0, addr != 0 ? ((u16_t)(((u8_t*)(addr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" port=%" "hu" " len=%d\n", port, off);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      } else {
#line 708 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
      }
    }

     
    if ((flags & 0x01) == 0) {
      

 
      if (((sock->conn->type) == NETCONN_TCP) && (buflen - copylen > 0)) {
        sock->lastdata = buf;
        sock->lastoffset += copylen;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom: lastdata now netbuf=%p\n", buf);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      } else {
        sock->lastdata = 0;
        sock->lastoffset = 0;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_recvfrom: deleting netbuf=%p\n", buf);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if ((sock->conn->type) == NETCONN_TCP) {
          pbuf_free((struct pbuf *)buf);
        } else {
          netbuf_delete((struct netbuf *)buf);
        }
      }
    }
  } while (!done);

  if (off > 0) {
     
    netconn_recved(sock->conn, (u32_t)off);
  }
  do { sock->err = (0); ; } while (0);
  return off;
}

int
lwip_read(int s, void *mem, size_t len)
{
  return lwip_recvfrom(s, mem, len, 0, 0, 0);
}

int
lwip_recv(int s, void *mem, size_t len, int flags)
{
  return lwip_recvfrom(s, mem, len, flags, 0, 0);
}

int
lwip_send(int s, const void *data, size_t size, int flags)
{
  struct lwip_sock *sock;
  err_t err;
  u8_t write_flags;
  size_t written;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_send(%d, data=%p, size=%" "uz" ", flags=0x%x)\n", s, data, size, flags);; if ((0x00U) & 0x08U) { while(1); } } } while(0);


  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (sock->conn->type != NETCONN_TCP) {

    return lwip_sendto(s, data, size, flags, 0, 0);




  }

  write_flags = 0x01 |
    ((flags & 0x10)     ? 0x02      : 0) |
    ((flags & 0x08) ? 0x04 : 0);
  written = 0;
  err = netconn_write_partly(sock->conn, data, size, write_flags, &written);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_send(%d) err=%d written=%" "uz" "\n", s, err, written);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
  return (err == 0 ? (int)written : -1);
}

int
lwip_sendto(int s, const void *data, size_t size, int flags,
       const struct sockaddr *to, socklen_t tolen)
{
  struct lwip_sock *sock;
  err_t err;
  u16_t short_size;
  const struct sockaddr_in *to_in;
  u16_t remote_port;

  struct netbuf buf;


  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (sock->conn->type == NETCONN_TCP) {

    return lwip_send(s, data, size, flags);





  }

   
  do { if(!(size <= 0xffff)) ; } while(0);
  short_size = (u16_t)size;
  do { if (!((((to == 0) && (tolen == 0)) || ((tolen == sizeof(struct sockaddr_in)) && ((to->sa_family) == 2) && ((((mem_ptr_t)to) % 4) == 0))))) { ; do { sock->err = (((unsigned)(-(-14)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(-14)] : 5)); ; } while (0); return -1;;}} while(0);



  to_in = (const struct sockaddr_in *)(void*)to;

#line 895 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
   
  buf.p = buf.ptr = 0;



  if (to) {
    (((&buf . addr)->addr = ((&to_in->sin_addr)->s_addr)));
    remote_port           = lwip_ntohs(to_in->sin_port);
    ((&buf)->port) = remote_port;
  } else {
    remote_port           = 0;
    ((&buf . addr)->addr = ((u32_t)0x00000000UL));
    ((&buf)->port) = 0;
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_sendto(%d, data=%p, short_size=%" "hu" ", flags=0x%x to=", s, data, short_size, flags);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", &buf . addr != 0 ? ((u16_t)(((u8_t*)(&buf . addr))[0])) : 0, &buf . addr != 0 ? ((u16_t)(((u8_t*)(&buf . addr))[1])) : 0, &buf . addr != 0 ? ((u16_t)(((u8_t*)(&buf . addr))[2])) : 0, &buf . addr != 0 ? ((u16_t)(((u8_t*)(&buf . addr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" port=%" "hu" "\n", remote_port);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

   
#line 933 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
  err = netbuf_ref(&buf, data, short_size);

  if (err == 0) {
     
    err = netconn_send(sock->conn, &buf);
  }

   
  netbuf_free(&buf);

  do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
  return (err == 0 ? short_size : -1);
}

int
lwip_socket(int domain, int type, int protocol)
{
  struct netconn *conn;
  int i;

  (void)domain;

   
  switch (type) {
  case 3:
    conn = netconn_new_with_proto_and_callback(NETCONN_RAW, (u8_t)protocol, event_callback);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_socket(%s, SOCK_RAW, %d) = ", domain == 2 ? "PF_INET" : "UNKNOWN", protocol);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    break;
  case 2:
    conn = netconn_new_with_proto_and_callback((protocol == 136) ? NETCONN_UDPLITE : NETCONN_UDP, 0, event_callback);

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_socket(%s, SOCK_DGRAM, %d) = ", domain == 2 ? "PF_INET" : "UNKNOWN", protocol);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    break;
  case 1:
    conn = netconn_new_with_proto_and_callback(NETCONN_TCP, 0, event_callback);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_socket(%s, SOCK_STREAM, %d) = ", domain == 2 ? "PF_INET" : "UNKNOWN", protocol);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    if (conn != 0) {
       
      do { if(1) { (conn)->flags |= 0x08; } else { (conn)->flags &= ~ 0x08; }} while(0);
    }
    break;
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_socket(%d, %d/UNKNOWN, %d) = -1\n", domain, type, protocol);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    ;
    return -1;
  }

  if (!conn) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("-1 / ENOBUFS (could not create netconn)\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    return -1;
  }

  i = alloc_socket(conn, 0);

  if (i == -1) {
    netconn_delete(conn);
    ;
    return -1;
  }
  conn->socket = i;
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%d\n", i);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  ;
  return i;
}

int
lwip_write(int s, const void *data, size_t size)
{
  return lwip_send(s, data, size, 0);
}
















 
static int
lwip_selscan(int maxfdp1, fd_set *readset_in, fd_set *writeset_in, fd_set *exceptset_in,
             fd_set *readset_out, fd_set *writeset_out, fd_set *exceptset_out)
{
  int i, nready = 0;
  fd_set lreadset, lwriteset, lexceptset;
  struct lwip_sock *sock;
  sys_prot_t lev;

  memset((void*)(&lreadset),0,sizeof(*(&lreadset)));
  memset((void*)(&lwriteset),0,sizeof(*(&lwriteset)));
  memset((void*)(&lexceptset),0,sizeof(*(&lexceptset)));

  
 
  for(i = 0; i < maxfdp1; i++) {
    void* lastdata = 0;
    s16_t rcvevent = 0;
    u16_t sendevent = 0;
    u16_t errevent = 0;
     
    lev = sys_arch_protect();
    sock = tryget_socket(i);
    if (sock != 0) {
      lastdata = sock->lastdata;
      rcvevent = sock->rcvevent;
      sendevent = sock->sendevent;
      errevent = sock->errevent;
    }
    sys_arch_unprotect(lev);
     
     
    if (readset_in && ((readset_in)->fd_bits[(i)/8] & (1 << ((i) & 7))) && ((lastdata != 0) || (rcvevent > 0))) {
      ((&lreadset)->fd_bits[(i)/8] |= (1 << ((i) & 7)));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_selscan: fd=%d ready for reading\n", i);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      nready++;
    }
     
    if (writeset_in && ((writeset_in)->fd_bits[(i)/8] & (1 << ((i) & 7))) && (sendevent != 0)) {
      ((&lwriteset)->fd_bits[(i)/8] |= (1 << ((i) & 7)));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_selscan: fd=%d ready for writing\n", i);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      nready++;
    }
     
    if (exceptset_in && ((exceptset_in)->fd_bits[(i)/8] & (1 << ((i) & 7))) && (errevent != 0)) {
      ((&lexceptset)->fd_bits[(i)/8] |= (1 << ((i) & 7)));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_selscan: fd=%d ready for exception\n", i);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      nready++;
    }
  }
   
  *readset_out = lreadset;
  *writeset_out = lwriteset;
  *exceptset_out = lexceptset;

  do { if(!(nready >= 0)) ; } while(0);
  return nready;
}



 
int
lwip_select(int maxfdp1, fd_set *readset, fd_set *writeset, fd_set *exceptset,
            struct timeval *timeout)
{
  u32_t waitres = 0;
  int nready;
  fd_set lreadset, lwriteset, lexceptset;
  u32_t msectimeout;
  struct lwip_select_cb select_cb;
  err_t err;
  int i;
  sys_prot_t lev;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_select(%d, %p, %p, %p, tvsec=%" "d" " tvusec=%" "d" ")\n", maxfdp1, (void *)readset, (void *) writeset, (void *) exceptset, timeout ? (s32_t)timeout->tv_sec : (s32_t)-1, timeout ? (s32_t)timeout->tv_usec : (s32_t)-1);; if ((0x00U) & 0x08U) { while(1); } } } while(0);




  
 
  nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);

   
  if (!nready) {
    if (timeout && timeout->tv_sec == 0 && timeout->tv_usec == 0) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_select: no timeout, returning 0\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      
 
      goto return_copy_fdsets;
    }

    


 

    select_cb.next = 0;
    select_cb.prev = 0;
    select_cb.readset = readset;
    select_cb.writeset = writeset;
    select_cb.exceptset = exceptset;
    select_cb.sem_signalled = 0;
    err = sys_sem_new(&select_cb.sem, 0);
    if (err != 0) {
       
      ;
      return -1;
    }

     
    lev = sys_arch_protect();

     
    select_cb.next = select_cb_list;
    if (select_cb_list != 0) {
      select_cb_list->prev = &select_cb;
    }
    select_cb_list = &select_cb;
     
    select_cb_ctr++;

     
    sys_arch_unprotect(lev);

     
    for(i = 0; i < maxfdp1; i++) {
      if ((readset && ((readset)->fd_bits[(i)/8] & (1 << ((i) & 7)))) ||
          (writeset && ((writeset)->fd_bits[(i)/8] & (1 << ((i) & 7)))) ||
          (exceptset && ((exceptset)->fd_bits[(i)/8] & (1 << ((i) & 7))))) {
        struct lwip_sock *sock = tryget_socket(i);
        do { if(!(sock != 0)) ; } while(0);
        lev = sys_arch_protect();
        sock->select_waiting++;
        do { if(!(sock->select_waiting > 0)) ; } while(0);
        sys_arch_unprotect(lev);
      }
    }

    
 
    nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);
    if (!nready) {
       
      if (timeout == 0) {
         
        msectimeout = 0;
      } else {
        msectimeout =  ((timeout->tv_sec * 1000) + ((timeout->tv_usec + 500)/1000));
        if (msectimeout == 0) {
           
          msectimeout = 1;
        }
      }

      waitres = sys_arch_sem_wait(&select_cb.sem, msectimeout);
    }
     
    for(i = 0; i < maxfdp1; i++) {
      if ((readset && ((readset)->fd_bits[(i)/8] & (1 << ((i) & 7)))) ||
          (writeset && ((writeset)->fd_bits[(i)/8] & (1 << ((i) & 7)))) ||
          (exceptset && ((exceptset)->fd_bits[(i)/8] & (1 << ((i) & 7))))) {
        struct lwip_sock *sock = tryget_socket(i);
        do { if(!(sock != 0)) ; } while(0);
        lev = sys_arch_protect();
        sock->select_waiting--;
        do { if(!(sock->select_waiting >= 0)) ; } while(0);
        sys_arch_unprotect(lev);
      }
    }
     
    lev = sys_arch_protect();
    if (select_cb.next != 0) {
      select_cb.next->prev = select_cb.prev;
    }
    if (select_cb_list == &select_cb) {
      do { if(!(select_cb . prev == 0)) ; } while(0);
      select_cb_list = select_cb.next;
    } else {
      do { if(!(select_cb . prev != 0)) ; } while(0);
      select_cb.prev->next = select_cb.next;
    }
     
    select_cb_ctr++;
    sys_arch_unprotect(lev);

    sys_sem_free(&select_cb.sem);
    if (waitres == 0xffffffffUL)  {
       
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_select: timeout expired\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      
 
      goto return_copy_fdsets;
    }

     
    nready = lwip_selscan(maxfdp1, readset, writeset, exceptset, &lreadset, &lwriteset, &lexceptset);
  }

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_select: nready=%d\n", nready);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
return_copy_fdsets:
  ;
  if (readset) {
    *readset = lreadset;
  }
  if (writeset) {
    *writeset = lwriteset;
  }
  if (exceptset) {
    *exceptset = lexceptset;
  }


  return nready;
}




 
static void
event_callback(struct netconn *conn, enum netconn_evt evt, u16_t len)
{
  int s;
  struct lwip_sock *sock;
  struct lwip_select_cb *scb;
  int last_select_cb_ctr;
  sys_prot_t lev;

  (void)len;

   
  if (conn) {
    s = conn->socket;
    if (s < 0) {
      



 
      lev = sys_arch_protect();
      if (conn->socket < 0) {
        if (evt == NETCONN_EVT_RCVPLUS) {
          conn->socket--;
        }
        sys_arch_unprotect(lev);
        return;
      }
      s = conn->socket;
      sys_arch_unprotect(lev);
    }

    sock = get_socket(s);
    if (!sock) {
      return;
    }
  } else {
    return;
  }

  lev = sys_arch_protect();
   
  switch (evt) {
    case NETCONN_EVT_RCVPLUS:
      sock->rcvevent++;
      break;
    case NETCONN_EVT_RCVMINUS:
      sock->rcvevent--;
      break;
    case NETCONN_EVT_SENDPLUS:
      sock->sendevent = 1;
      break;
    case NETCONN_EVT_SENDMINUS:
      sock->sendevent = 0;
      break;
    case NETCONN_EVT_ERROR:
      sock->errevent = 1;
      break;
    default:
      do { if(!(0)) ; } while(0);
      break;
  }

  if (sock->select_waiting == 0) {
     
    sys_arch_unprotect(lev);
    return;
  }

   
  

 

   
again:
  for (scb = select_cb_list; scb != 0; scb = scb->next) {
    if (scb->sem_signalled == 0) {
       
      int do_signal = 0;
       
      if (sock->rcvevent > 0) {
        if (scb->readset && ((scb->readset)->fd_bits[(s)/8] & (1 << ((s) & 7)))) {
          do_signal = 1;
        }
      }
      if (sock->sendevent != 0) {
        if (!do_signal && scb->writeset && ((scb->writeset)->fd_bits[(s)/8] & (1 << ((s) & 7)))) {
          do_signal = 1;
        }
      }
      if (sock->errevent != 0) {
        if (!do_signal && scb->exceptset && ((scb->exceptset)->fd_bits[(s)/8] & (1 << ((s) & 7)))) {
          do_signal = 1;
        }
      }
      if (do_signal) {
        scb->sem_signalled = 1;
        
 
        sys_sem_signal(&scb->sem);
      }
    }
     
    last_select_cb_ctr = select_cb_ctr;
    sys_arch_unprotect(lev);
     
    lev = sys_arch_protect();
    if (last_select_cb_ctr != select_cb_ctr) {
       
      goto again;
    }
  }
  sys_arch_unprotect(lev);
}




 
int
lwip_shutdown(int s, int how)
{
  struct lwip_sock *sock;
  err_t err;
  u8_t shut_rx = 0, shut_tx = 0;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_shutdown(%d, how=%d)\n", s, how);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  if (sock->conn != 0) {
    if ((sock->conn->type) != NETCONN_TCP) {
      do { sock->err = (95); ; } while (0);
      return 95;
    }
  } else {
    do { sock->err = (107); ; } while (0);
    return 107;
  }

  if (how == 0) {
    shut_rx = 1;
  } else if (how == 1) {
    shut_tx = 1;
  } else if(how == 2) {
    shut_rx = 1;
    shut_tx = 1;
  } else {
    do { sock->err = (22); ; } while (0);
    return 22;
  }
  err = netconn_shutdown(sock->conn, shut_rx, shut_tx);

  do { sock->err = (((unsigned)(-(err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(err)] : 5)); ; } while (0);
  return (err == 0 ? 0 : -1);
}

static int
lwip_getaddrname(int s, struct sockaddr *name, socklen_t *namelen, u8_t local)
{
  struct lwip_sock *sock;
  struct sockaddr_in sin;
  ip_addr_t naddr;

  sock = get_socket(s);
  if (!sock) {
    return -1;
  }

  memset(&sin, 0, sizeof(sin));
  sin.sin_len = sizeof(sin);
  sin.sin_family = 2;

   
  netconn_getaddr(sock->conn, &naddr, &sin.sin_port, local);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getaddrname(%d, addr=", s);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[0])) : 0, &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[1])) : 0, &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[2])) : 0, &naddr != 0 ? ((u16_t)(((u8_t*)(&naddr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" port=%" "hu" ")\n", sin . sin_port);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  sin.sin_port = lwip_htons(sin . sin_port);
  ((&sin . sin_addr)->s_addr = ((&naddr)->addr));

  if (*namelen > sizeof(sin)) {
    *namelen = sizeof(sin);
  }

  memcpy(name,&sin,*namelen);
  do { sock->err = (0); ; } while (0);
  return 0;
}

int
lwip_getpeername(int s, struct sockaddr *name, socklen_t *namelen)
{
  return lwip_getaddrname(s, name, namelen, 0);
}

int
lwip_getsockname(int s, struct sockaddr *name, socklen_t *namelen)
{
  return lwip_getaddrname(s, name, namelen, 1);
}

int
lwip_getsockopt(int s, int level, int optname, void *optval, socklen_t *optlen)
{
  err_t err = 0;
  struct lwip_sock *sock = get_socket(s);
  struct lwip_setgetsockopt_data data;

  if (!sock) {
    return -1;
  }

  if ((0 == optval) || (0 == optlen)) {
    do { sock->err = (14); ; } while (0);
    return -1;
  }

   
  switch (level) {
   
 
  case 0xfff:
    switch (optname) {
       
    case 0x0002:
    case 0x0020:
     
     
    case 0x1007:
    case 0x0008:
     
#line 1493 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
     
     
     
     




    case 0x1008:
     
      if (*optlen < sizeof(int)) {
        err = 22;
      }
      break;

    case 0x100a:
      if (*optlen < sizeof(int)) {
        err = 22;
      }

      if ((sock->conn->type != NETCONN_UDP) ||
          ((((sock->conn->pcb . udp)->flags) & 0x02U) != 0)) {
         
        err = 97;
      }

      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, SOL_SOCKET, UNIMPL: optname=0x%x, ..)\n", s, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      err = 92;
    }   
    break;
                     
 
  case 0:
    switch (optname) {
     
     
     
    case 2:
    case 1:
      if (*optlen < sizeof(int)) {
        err = 22;
      }
      break;

    case 5:
      if (*optlen < sizeof(u8_t)) {
        err = 22;
      }
      break;
    case 6:
      if (*optlen < sizeof(struct in_addr)) {
        err = 22;
      }
      break;
    case 7:
      if (*optlen < sizeof(u8_t)) {
        err = 22;
      }
      if ((sock->conn->type&0xF0) != NETCONN_UDP) {
        err = 97;
      }
      break;


    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, UNIMPL: optname=0x%x, ..)\n", s, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      err = 92;
    }   
    break;
         

 
  case 6:
    if (*optlen < sizeof(int)) {
      err = 22;
      break;
    }
    
     
    if (sock->conn->type != NETCONN_TCP)
      return 0;

    switch (optname) {
    case 0x01:
    case 0x02:





      break;
       
    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_TCP, UNIMPL: optname=0x%x, ..)\n", s, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      err = 92;
    }   
    break;
#line 1622 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
 
  default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, level=0x%x, UNIMPL: optname=0x%x, ..)\n", s, level, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      err = 92;
  }   

   
  if (err != 0) {
    do { sock->err = (err); ; } while (0);
    return -1;
  }

   
  data.sock = sock;

  data.s = s;

  data.level = level;
  data.optname = optname;
  data.optval = optval;
  data.optlen = optlen;
  data.err = err;
  tcpip_callback_with_block(lwip_getsockopt_internal, &data, 1);
  sys_arch_sem_wait(&sock->conn->op_completed, 0);
   
  err = data.err;

  do { sock->err = (err); ; } while (0);
  return err ? -1 : 0;
}

static void
lwip_getsockopt_internal(void *arg)
{
  struct lwip_sock *sock;

  int s;

  int level, optname;
  void *optval;
  struct lwip_setgetsockopt_data *data;

  do { if(!(arg != 0)) ; } while(0);

  data = (struct lwip_setgetsockopt_data*)arg;
  sock = data->sock;

  s = data->s;

  level = data->level;
  optname = data->optname;
  optval = data->optval;

  switch (level) {

 
  case 0xfff:
    switch (optname) {

     
    case 0x0002:
    case 0x0020:
     
     
    case 0x0008:
     




     
      *(int*)optval = ((sock->conn->pcb . ip)->so_options & (optname));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, SOL_SOCKET, optname=0x%x, ..) = %s\n", s, optname, (*(int*)optval?"on":"off"));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

    case 0x1008:
      switch ((sock->conn->type&0xF0)) {
      case NETCONN_RAW:
        *(int*)optval = 3;
        break;
      case NETCONN_TCP:
        *(int*)optval = 1;
        break;
      case NETCONN_UDP:
        *(int*)optval = 2;
        break;
      default:  
        *(int*)optval = sock->conn->type;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, SOL_SOCKET, SO_TYPE): unrecognized socket type %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);


      }   
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, SOL_SOCKET, SO_TYPE) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

    case 0x1007:
       
      if ((sock->err == 0) || (sock->err == 115)) {
        do { sock->err = (((unsigned)(-(sock->conn->last_err)) < (sizeof(err_to_errno_table)/sizeof(err_to_errno_table[0])) ? err_to_errno_table[-(sock->conn->last_err)] : 5)); ; } while (0);
      } 
      *(int *)optval = sock->err;
      sock->err = 0;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, SOL_SOCKET, SO_ERROR) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

#line 1747 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
    case 0x100a:
      *(int*)optval = (((sock->conn->pcb . udp)->flags) & 0x01U) ? 1 : 0;
      break;

    default:
      do { if(!(0)) ; } while(0);
      break;
    }   
    break;

 
  case 0:
    switch (optname) {
    case 2:
      *(int*)optval = sock->conn->pcb.ip->ttl;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_TTL) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
    case 1:
      *(int*)optval = sock->conn->pcb.ip->tos;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_TOS) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

    case 5:
      *(u8_t*)optval = sock->conn->pcb.ip->ttl;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_MULTICAST_TTL) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
    case 6:
      (((struct in_addr*)optval)->s_addr = ((&sock->conn->pcb . udp->multicast_ip)->addr));
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_MULTICAST_IF) = 0x%" "x" "\n", s, *(u32_t *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
    case 7:
      if ((sock->conn->pcb.udp->flags & 0x08U) != 0) {
        *(u8_t*)optval = 1;
      } else {
        *(u8_t*)optval = 0;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, IP_MULTICAST_LOOP) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

    default:
      do { if(!(0)) ; } while(0);
      break;
    }   
    break;


 
  case 6:
    switch (optname) {
    case 0x01:
      *(int*)optval = (((sock->conn->pcb . tcp)->flags & ((u8_t)0x40U)) != 0);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_TCP, TCP_NODELAY) = %s\n", s, (*(int*)optval)?"on":"off");; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
    case 0x02:
      *(int*)optval = (int)sock->conn->pcb.tcp->keep_idle;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_getsockopt(%d, IPPROTO_IP, TCP_KEEPALIVE) = %d\n", s, *(int *)optval);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

#line 1829 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
    default:
      do { if(!(0)) ; } while(0);
      break;
    }   
    break;
#line 1855 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
  default:
    do { if(!(0)) ; } while(0);
    break;
  }  
  sys_sem_signal(&sock->conn->op_completed);
}

int
lwip_setsockopt(int s, int level, int optname, const void *optval, socklen_t optlen)
{
  struct lwip_sock *sock = get_socket(s);
  err_t err = 0;
  struct lwip_setgetsockopt_data data;

  if (!sock) {
    return -1;
  }

  if (0 == optval) {
    do { sock->err = (14); ; } while (0);
    return -1;
  }

   
  switch (level) {

 
  case 0xfff:
    switch (optname) {

    case 0x0020:
     
     
    case 0x0008:
     
#line 1899 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
     
     
     
     




     
      if (optlen < sizeof(int)) {
        err = 22;
      }
      break;
    case 0x100a:
      if (optlen < sizeof(int)) {
        err = 22;
      }

      if ((sock->conn->type != NETCONN_UDP) ||
          ((((sock->conn->pcb . udp)->flags) & 0x02U) != 0)) {
         
        err = 97;
      }

      break;
    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, SOL_SOCKET, UNIMPL: optname=0x%x, ..)\n", s, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      err = 92;
    }   
    break;

 
  case 0:
    switch (optname) {
     
     
     
    case 2:
    case 1:
      if (optlen < sizeof(int)) {
        err = 22;
      }
      break;

    case 5:
      if (optlen < sizeof(u8_t)) {
        err = 22;
      }
      if ((sock->conn->type&0xF0) != NETCONN_UDP) {
        err = 97;
      }
      break;
    case 6:
      if (optlen < sizeof(struct in_addr)) {
        err = 22;
      }
      if ((sock->conn->type&0xF0) != NETCONN_UDP) {
        err = 97;
      }
      break;
    case 7:
      if (optlen < sizeof(u8_t)) {
        err = 22;
      }
      if ((sock->conn->type&0xF0) != NETCONN_UDP) {
        err = 97;
      }
      break;
    case 3:
    case 4:
      if (optlen < sizeof(struct ip_mreq)) {
        err = 22;
      }
      if ((sock->conn->type&0xF0) != NETCONN_UDP) {
        err = 97;
      }
      break;

      default:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, IPPROTO_IP, UNIMPL: optname=0x%x, ..)\n", s, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

        err = 92;
    }   
    break;


 
  case 6:
    if (optlen < sizeof(int)) {
      err = 22;
      break;
    }

     
    if (sock->conn->type != NETCONN_TCP)
      return 0;

    switch (optname) {
    case 0x01:
    case 0x02:





      break;

    default:
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, IPPROTO_TCP, UNIMPL: optname=0x%x, ..)\n", s, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      err = 92;
    }   
    break;
#line 2038 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
 
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, level=0x%x, UNIMPL: optname=0x%x, ..)\n", s, level, optname);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

    err = 92;
  }   


  if (err != 0) {
    do { sock->err = (err); ; } while (0);
    return -1;
  }


   
  data.sock = sock;

  data.s = s;

  data.level = level;
  data.optname = optname;
  data.optval = (void*)optval;
  data.optlen = &optlen;
  data.err = err;
  tcpip_callback_with_block(lwip_setsockopt_internal, &data, 1);
  sys_arch_sem_wait(&sock->conn->op_completed, 0);
   
  err = data.err;

  do { sock->err = (err); ; } while (0);
  return err ? -1 : 0;
}

static void
lwip_setsockopt_internal(void *arg)
{
  struct lwip_sock *sock;

  int s;

  int level, optname;
  const void *optval;
  struct lwip_setgetsockopt_data *data;

  do { if(!(arg != 0)) ; } while(0);

  data = (struct lwip_setgetsockopt_data*)arg;
  sock = data->sock;

  s = data->s;

  level = data->level;
  optname = data->optname;
  optval = data->optval;

  switch (level) {

 
  case 0xfff:
    switch (optname) {

     
    case 0x0020:
     
     
    case 0x0008:
     




     
      if (*(int*)optval) {
        ((sock->conn->pcb . ip)->so_options |= (optname));
      } else {
        ((sock->conn->pcb . ip)->so_options &= ~(optname));
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, SOL_SOCKET, optname=0x%x, ..) -> %s\n", s, optname, (*(int*)optval?"on":"off"));; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
#line 2134 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
    case 0x100a:
      if (*(int*)optval) {
        ((sock->conn->pcb . udp)->flags = (((sock->conn->pcb . udp)->flags) | 0x01U));
      } else {
        ((sock->conn->pcb . udp)->flags = (((sock->conn->pcb . udp)->flags) & ~0x01U));
      }
      break;

    default:
      do { if(!(0)) ; } while(0);
      break;
    }   
    break;

 
  case 0:
    switch (optname) {
    case 2:
      sock->conn->pcb.ip->ttl = (u8_t)(*(int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, IPPROTO_IP, IP_TTL, ..) -> %d\n", s, sock->conn->pcb . ip->ttl);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
    case 1:
      sock->conn->pcb.ip->tos = (u8_t)(*(int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, IPPROTO_IP, IP_TOS, ..)-> %d\n", s, sock->conn->pcb . ip->tos);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

    case 5:
      sock->conn->pcb.udp->ttl = (u8_t)(*(u8_t*)optval);
      break;
    case 6:
      (((&sock->conn->pcb . udp->multicast_ip)->addr = (((struct in_addr*)optval)->s_addr)));
      break;
    case 7:
      if (*(u8_t*)optval) {
        ((sock->conn->pcb . udp)->flags = (((sock->conn->pcb . udp)->flags) | 0x08U));
      } else {
        ((sock->conn->pcb . udp)->flags = (((sock->conn->pcb . udp)->flags) & ~0x08U));
      }
      break;
    case 3:
    case 4:
      {
         
        struct ip_mreq *imr = (struct ip_mreq *)optval;
        ip_addr_t if_addr;
        ip_addr_t multi_addr;
        (((&if_addr)->addr = ((&imr->imr_interface)->s_addr)));
        (((&multi_addr)->addr = ((&imr->imr_multiaddr)->s_addr)));
        if(optname == 3){
          data->err = igmp_joingroup(&if_addr, &multi_addr);
        } else {
          data->err = igmp_leavegroup(&if_addr, &multi_addr);
        }
        if(data->err != 0) {
          data->err = 99;
        }
      }
      break;

    default:
      do { if(!(0)) ; } while(0);
      break;
    }   
    break;


 
  case 6:
    switch (optname) {
    case 0x01:
      if (*(int*)optval) {
        ((sock->conn->pcb . tcp)->flags |= ((u8_t)0x40U));
      } else {
        ((sock->conn->pcb . tcp)->flags &= ~((u8_t)0x40U));
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_NODELAY) -> %s\n", s, (*(int *)optval)?"on":"off");; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;
    case 0x02:
      sock->conn->pcb.tcp->keep_idle = (u32_t)(*(int*)optval);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_setsockopt(%d, IPPROTO_TCP, TCP_KEEPALIVE) -> %" "u" "\n", s, sock->conn->pcb . tcp->keep_idle);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

      break;

#line 2237 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
    default:
      do { if(!(0)) ; } while(0);
      break;
    }   
    break;
#line 2273 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"
  default:
    do { if(!(0)) ; } while(0);
    break;
  }   
  sys_sem_signal(&sock->conn->op_completed);
}

int
lwip_ioctl(int s, long cmd, void *argp)
{
  struct lwip_sock *sock = get_socket(s);
  u8_t val;





  if (!sock) {
    return -1;
  }

  switch (cmd) {
#line 2324 "..\\..\\libraries\\lwip-1.4.1\\src\\api\\sockets.c"

  case (0x80000000UL|(((long)sizeof(unsigned long)&0x7fU)<<16)|(('f')<<8)|(126)):
    val = 0;
    if (argp && *(u32_t*)argp) {
      val = 1;
    }
    do { if(val) { (sock->conn)->flags |= 0x02; } else { (sock->conn)->flags &= ~ 0x02; }} while(0);
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_ioctl(%d, FIONBIO, %d)\n", s, val);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { sock->err = (0); ; } while (0);
    return 0;

  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_ioctl(%d, UNIMPL: 0x%lx, %p)\n", s, cmd, argp);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    do { sock->err = (38); ; } while (0);  
    return -1;
  }  
}




 
int
lwip_fcntl(int s, int cmd, int val)
{
  struct lwip_sock *sock = get_socket(s);
  int ret = -1;

  if (!sock || !sock->conn) {
    return -1;
  }

  switch (cmd) {
  case 3:
    ret = (((sock->conn)->flags & 0x02) != 0) ? 1 : 0;
    break;
  case 4:
    if ((val & ~1) == 0) {
       
      do { if(val & 1) { (sock->conn)->flags |= 0x02; } else { (sock->conn)->flags &= ~ 0x02; }} while(0);
      ret = 0;
    }
    break;
  default:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("lwip_fcntl(%d, UNIMPL: %d, %d)\n", s, cmd, val);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    break;
  }
  return ret;
}

