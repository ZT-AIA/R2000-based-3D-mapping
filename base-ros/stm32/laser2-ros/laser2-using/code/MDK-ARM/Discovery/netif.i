#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"




 































 

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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"

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









#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
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





#line 43 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/netif.h"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






 



typedef s8_t err_t;


 

#line 62 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"














extern const char *lwip_strerr(err_t err);








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











#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
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








#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
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







#line 46 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
































 




#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/igmp.h"
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







#line 47 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
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







#line 48 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/stats.h"

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





#line 49 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
#line 55 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"

#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"

 




#line 8 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"



#line 12 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/dhcp.h"
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

 











#line 61 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"














struct netif *netif_list;
struct netif *netif_default;

static u8_t netif_num;

#line 104 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"

void
netif_init(void)
{
#line 122 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
}














 
struct netif *
netif_add(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
  ip_addr_t *gw, void *state, netif_init_fn init, netif_input_fn input)
{

  do { if(!(init != 0)) ; } while(0);

   
  ((&netif->ip_addr)->addr = 0);
  ((&netif->netmask)->addr = 0);
  ((&netif->gw)->addr = 0);
  netif->flags = 0;

   
  netif->dhcp = 0;
#line 165 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"
  netif->igmp_mac_filter = 0;






   
  netif->state = state;
  netif->num = netif_num++;
  netif->input = input;
  ;




  netif_set_addr(netif, ipaddr, netmask, gw);

   
  if (init(netif) != 0) {
    return 0;
  }

   
  netif->next = netif_list;
  netif_list = netif;
  ;


   
  if (netif->flags & 0x80U) {
    igmp_start(netif);
  }


  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("netif: added interface %c%c IP addr ", netif->name[0], netif->name[1]);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", ipaddr != 0 ? ((u16_t)(((u8_t*)(ipaddr))[0])) : 0, ipaddr != 0 ? ((u16_t)(((u8_t*)(ipaddr))[1])) : 0, ipaddr != 0 ? ((u16_t)(((u8_t*)(ipaddr))[2])) : 0, ipaddr != 0 ? ((u16_t)(((u8_t*)(ipaddr))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" netmask ");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", netmask != 0 ? ((u16_t)(((u8_t*)(netmask))[0])) : 0, netmask != 0 ? ((u16_t)(((u8_t*)(netmask))[1])) : 0, netmask != 0 ? ((u16_t)(((u8_t*)(netmask))[2])) : 0, netmask != 0 ? ((u16_t)(((u8_t*)(netmask))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf (" gw ");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("%" "hu" ".%" "hu" ".%" "hu" ".%" "hu", gw != 0 ? ((u16_t)(((u8_t*)(gw))[0])) : 0, gw != 0 ? ((u16_t)(((u8_t*)(gw))[1])) : 0, gw != 0 ? ((u16_t)(((u8_t*)(gw))[2])) : 0, gw != 0 ? ((u16_t)(((u8_t*)(gw))[3])) : 0);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  return netif;
}









 
void
netif_set_addr(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
    ip_addr_t *gw)
{
  netif_set_ipaddr(netif, ipaddr);
  netif_set_netmask(netif, netmask);
  netif_set_gw(netif, gw);
}





 
void
netif_remove(struct netif *netif)
{
  if (netif == 0) {
    return;
  }


   
  if (netif->flags & 0x80U) {
    igmp_stop(netif);
  }

  if ((((netif)->flags & 0x01U) ? (u8_t)1 : (u8_t)0)) {
     
    netif_set_down(netif);
  }

  ;

   
  if (netif_list == netif) {
    netif_list = netif->next;
  } else {
     
    struct netif * tmpNetif;
    for (tmpNetif = netif_list; tmpNetif != 0; tmpNetif = tmpNetif->next) {
      if (tmpNetif->next == netif) {
        tmpNetif->next = netif->next;
        break;
      }
    }
    if (tmpNetif == 0)
      return;  
  }
  ;
   
  if (netif_default == netif) {
     
    netif_set_default(0);
  }





  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("netif_remove: removed netif\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
}






 
struct netif *
netif_find(char *name)
{
  struct netif *netif;
  u8_t num;

  if (name == 0) {
    return 0;
  }

  num = name[2] - '0';

  for(netif = netif_list; netif != 0; netif = netif->next) {
    if (num == netif->num &&
       name[0] == netif->name[0] &&
       name[1] == netif->name[1]) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("netif_find: found %c%c\n", name[0], name[1]);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return netif;
    }
  }
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("netif_find: didn't find %c%c\n", name[0], name[1]);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
  return 0;
}









 
void
netif_set_ipaddr(struct netif *netif, ip_addr_t *ipaddr)
{
   
   

  struct tcp_pcb *pcb;
  struct tcp_pcb_listen *lpcb;

   
  if (ipaddr && (((ipaddr)->addr == (&(netif->ip_addr))->addr)) == 0) {
     
    do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("netif_set_ipaddr: netif address being changed\n");; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);
    pcb = tcp_active_pcbs;
    while (pcb != 0) {
       
      if (((&(pcb->local_ip))->addr == (&(netif->ip_addr))->addr)




        ) {
         
        struct tcp_pcb *next = pcb->next;
        do { if ( ((0x00U | 0x20U) & 0x80U) && ((0x00U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x20U) & 0x03) >= 0x00)) { printf ("netif_set_ipaddr: aborting TCP pcb %p\n", (void *)pcb);; if ((0x00U | 0x20U) & 0x08U) { while(1); } } } while(0);
        tcp_abort(pcb);
        pcb = next;
      } else {
        pcb = pcb->next;
      }
    }
    for (lpcb = tcp_listen_pcbs.listen_pcbs; lpcb != 0; lpcb = lpcb->next) {
       
      if ((!(((&(lpcb->local_ip)) == 0 || (&(lpcb->local_ip))->addr == ((u32_t)0x00000000UL)))) &&
          (((&(lpcb->local_ip))->addr == (&(netif->ip_addr))->addr))) {
        
 
        ((&(lpcb->local_ip))->addr = ((ipaddr) == 0 ? 0 : (ipaddr)->addr));
      }
    }
  }

  ;
  ;
   
  ((&(netif->ip_addr))->addr = ((ipaddr) == 0 ? 0 : (ipaddr)->addr));
  ;
  ;

  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("netif: IP address of interface %c%c set to %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" "\n", netif->name[0], netif->name[1], ((u16_t)(((u8_t*)(&netif->ip_addr))[0])), ((u16_t)(((u8_t*)(&netif->ip_addr))[1])), ((u16_t)(((u8_t*)(&netif->ip_addr))[2])), ((u16_t)(((u8_t*)(&netif->ip_addr))[3])));; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);





}








 
void
netif_set_gw(struct netif *netif, ip_addr_t *gw)
{
  ((&(netif->gw))->addr = ((gw) == 0 ? 0 : (gw)->addr));
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("netif: GW address of interface %c%c set to %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" "\n", netif->name[0], netif->name[1], ((u16_t)(((u8_t*)(&netif->gw))[0])), ((u16_t)(((u8_t*)(&netif->gw))[1])), ((u16_t)(((u8_t*)(&netif->gw))[2])), ((u16_t)(((u8_t*)(&netif->gw))[3])));; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);





}









 
void
netif_set_netmask(struct netif *netif, ip_addr_t *netmask)
{
  ;
   
  ((&(netif->netmask))->addr = ((netmask) == 0 ? 0 : (netmask)->addr));
  ;
  do { if ( ((0x00U | 0x40U | 0x20U) & 0x80U) && ((0x00U | 0x40U | 0x20U) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x20U) & 0x03) >= 0x00)) { printf ("netif: netmask of interface %c%c set to %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" "\n", netif->name[0], netif->name[1], ((u16_t)(((u8_t*)(&netif->netmask))[0])), ((u16_t)(((u8_t*)(&netif->netmask))[1])), ((u16_t)(((u8_t*)(&netif->netmask))[2])), ((u16_t)(((u8_t*)(&netif->netmask))[3])));; if ((0x00U | 0x40U | 0x20U) & 0x08U) { while(1); } } } while(0);





}






 
void
netif_set_default(struct netif *netif)
{
  if (netif == 0) {
     
    ;
  } else {
     
    ;
  }
  netif_default = netif;
  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("netif: setting default interface %c%c\n", netif ? netif->name[0] : '\'', netif ? netif->name[1] : '\'');; if ((0x00U) & 0x08U) { while(1); } } } while(0);

}









  
void netif_set_up(struct netif *netif)
{
  if (!(netif->flags & 0x01U)) {
    netif->flags |= 0x01U;
    




    ;

    if (netif->flags & 0x10U) {

        
      if (netif->flags & (0x20U)) {
        etharp_request((netif), &(netif)->ip_addr);
      }



       
      if (netif->flags & 0x80U) {
        igmp_report_groups( netif);
      }

    }
  }
}








  
void netif_set_down(struct netif *netif)
{
  if (netif->flags & 0x01U) {
    netif->flags &= ~0x01U;





    if (netif->flags & 0x20U) {
      etharp_cleanup_netif(netif);
    }

    ;
  }
}

#line 518 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"

#line 531 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"



 
void netif_set_link_up(struct netif *netif )
{
  if (!(netif->flags & 0x10U)) {
    netif->flags |= 0x10U;


    if (netif->dhcp) {
      dhcp_network_changed(netif);
    }








    if (netif->flags & 0x01U) {

        
      if (netif->flags & 0x20U) {
        etharp_request((netif), &(netif)->ip_addr);
      }



       
      if (netif->flags & 0x80U) {
        igmp_report_groups( netif);
      }

    }
    ;
  }
}



 
void netif_set_link_down(struct netif *netif )
{
  if (netif->flags & 0x10U) {
    netif->flags &= ~0x10U;
    ;
  }
}

#line 593 "..\\..\\libraries\\lwip-1.4.1\\src\\core\\netif.c"

