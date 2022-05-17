#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"











 































 
 
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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 47 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"



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





#line 51 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
#line 52 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"

#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
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





#line 39 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/ip.h"
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



 



 

 

 


 

 

 















#line 53 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
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





#line 54 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
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







#line 55 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
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

 











#line 56 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/autoip.h"




 




































 
 



#line 48 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/autoip.h"

#line 117 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/autoip.h"

#line 57 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
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







#line 58 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"





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



 

#line 64 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"

const struct eth_addr ethbroadcast = {{0xff,0xff,0xff,0xff,0xff,0xff}};
const struct eth_addr ethzero = {{0,0,0,0,0,0}};

 









 


 








 




enum etharp_state {
  ETHARP_STATE_EMPTY = 0,
  ETHARP_STATE_PENDING,
  ETHARP_STATE_STABLE,
  ETHARP_STATE_STABLE_REREQUESTING



};

struct etharp_entry {




   
  struct pbuf *q;

  ip_addr_t ipaddr;
  struct netif *netif;
  struct eth_addr ethaddr;
  u8_t state;
  u8_t ctime;
};

static struct etharp_entry arp_table[10];


static u8_t etharp_cached_entry;



 






#line 140 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"


 





#line 169 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"

 




 
static void
etharp_free_entry(int i)
{
   
  ;
   
  if (arp_table[i].q != 0) {
     
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("etharp_free_entry: freeing entry %" "hu" ", packet queue %p.\n", (u16_t)i, (void *)(arp_table[i]. q));; if ((0x00U) & 0x08U) { while(1); } } } while(0);
    pbuf_free(arp_table[i]. q);
    arp_table[i].q = 0;
  }
   
  arp_table[i].state = ETHARP_STATE_EMPTY;

   
  arp_table[i].ctime = 0;
  arp_table[i].netif = 0;
  ((&arp_table[i]. ipaddr)->addr = 0);
  arp_table[i].ethaddr = ethzero;

}






 
void
etharp_tmr(void)
{
  u8_t i;

  do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("etharp_timer\n");; if ((0x00U) & 0x08U) { while(1); } } } while(0);
   
  for (i = 0; i < 10; ++i) {
    u8_t state = arp_table[i].state;
    if (state != ETHARP_STATE_EMPTY



      ) {
      arp_table[i].ctime++;
      if ((arp_table[i].ctime >= 240) ||
          ((arp_table[i].state == ETHARP_STATE_PENDING)  &&
           (arp_table[i].ctime >= 2))) {
         
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("etharp_timer: expired %s entry %" "hu" ".\n", arp_table[i]. state >= ETHARP_STATE_STABLE ? "stable" : "pending", (u16_t)i);; if ((0x00U) & 0x08U) { while(1); } } } while(0);

         
        etharp_free_entry(i);
      }
      else if (arp_table[i].state == ETHARP_STATE_STABLE_REREQUESTING) {
        
 
        arp_table[i].state = ETHARP_STATE_STABLE;
      }
#line 240 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
    }
  }
}





















 
static s8_t
etharp_find_entry(ip_addr_t *ipaddr, u8_t flags)
{
  s8_t old_pending = 10, old_stable = 10;
  s8_t empty = 10;
  u8_t i = 0, age_pending = 0, age_stable = 0;
   
  s8_t old_queue = 10;
   
  u8_t age_queue = 0;

  



 

  






 

  for (i = 0; i < 10; ++i) {
    u8_t state = arp_table[i].state;
     
    if ((empty == 10) && (state == ETHARP_STATE_EMPTY)) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x00U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: found empty entry %" "hu" "\n", (u16_t)i);; if ((0x00U) & 0x08U) { while(1); } } } while(0);
       
      empty = i;
    } else if (state != ETHARP_STATE_EMPTY) {
      do { if(!(state == ETHARP_STATE_PENDING || state >= ETHARP_STATE_STABLE)) ; } while(0);

       
      if (ipaddr && ((ipaddr)->addr == (&arp_table[i]. ipaddr)->addr)) {
        do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: found matching entry %" "hu" "\n", (u16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
         
        return i;
      }
       
      if (state == ETHARP_STATE_PENDING) {
         
        if (arp_table[i].q != 0) {
          if (arp_table[i].ctime >= age_queue) {
            old_queue = i;
            age_queue = arp_table[i].ctime;
          }
        } else
         
        {
          if (arp_table[i].ctime >= age_pending) {
            old_pending = i;
            age_pending = arp_table[i].ctime;
          }
        }
       
      } else if (state >= ETHARP_STATE_STABLE) {




        {
           
          if (arp_table[i].ctime >= age_stable) {
            old_stable = i;
            age_stable = arp_table[i].ctime;
          }
        }
      }
    }
  }
   
   
   
  if (((flags & 2) != 0) ||
       
      ((empty == 10) && ((flags & 1) == 0))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: no empty entry found and not allowed to recycle\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return (s8_t)-1;
  }
  
  






  

   
  if (empty < 10) {
    i = empty;
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: selecting empty entry %" "hu" "\n", (u16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  } else {
     
    if (old_stable < 10) {
       
      i = old_stable;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: selecting oldest stable entry %" "hu" "\n", (u16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
       
      do { if(!(arp_table[i]. q == 0)) ; } while(0);
     
    } else if (old_pending < 10) {
       
      i = old_pending;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: selecting oldest pending entry %" "hu" " (without queue)\n", (u16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
     
    } else if (old_queue < 10) {
       
      i = old_queue;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: selecting oldest pending entry %" "hu" ", freeing packet queue %p\n", (u16_t)i, (void *)(arp_table[i]. q));; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
       
    } else {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_find_entry: no empty or recyclable entries found\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      return (s8_t)-1;
    }

     
    do { if(!(i < 10)) ; } while(0);
    etharp_free_entry(i);
  }

  do { if(!(i < 10)) ; } while(0);
  do { if(!(arp_table[i]. state == ETHARP_STATE_EMPTY)) ; } while(0);


   
  if (ipaddr != 0) {
     
    ((arp_table[i]. ipaddr). addr = (*ipaddr). addr);
  }
  arp_table[i].ctime = 0;
  return (err_t)i;
}










 
static err_t
etharp_send_ip(struct netif *netif, struct pbuf *p, struct eth_addr *src, struct eth_addr *dst)
{
  struct eth_hdr *ethhdr = (struct eth_hdr *)p->payload;

  do { if(!((netif->hwaddr_len == 6))) ; } while(0);

  memcpy(&ethhdr->dest,dst,6);
  memcpy(&ethhdr->src,src,6);
  ethhdr->type = ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8));
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_send_ip: sending packet %p\n", (void *)p);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  return netif->linkoutput(netif, p);
}


















 
static err_t
etharp_update_arp_entry(struct netif *netif, ip_addr_t *ipaddr, struct eth_addr *ethaddr, u8_t flags)
{
  s8_t i;
  do { if(!(netif->hwaddr_len == 6)) ; } while(0);
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_update_arp_entry: %" "hu" ".%" "hu" ".%" "hu" ".%" "hu" " - %02" "hx" ":%02" "hx" ":%02" "hx" ":%02" "hx" ":%02" "hx" ":%02" "hx" "\n", ((u16_t)(((u8_t*)(ipaddr))[0])), ((u16_t)(((u8_t*)(ipaddr))[1])), ((u16_t)(((u8_t*)(ipaddr))[2])), ((u16_t)(((u8_t*)(ipaddr))[3])), ethaddr->addr[0], ethaddr->addr[1], ethaddr->addr[2], ethaddr->addr[3], ethaddr->addr[4], ethaddr->addr[5]);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);



   
  if (((ipaddr) == 0 || (ipaddr)->addr == ((u32_t)0x00000000UL)) ||
      ip4_addr_isbroadcast((ipaddr)->addr, (netif)) ||
      (((ipaddr)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_update_arp_entry: will not add non-unicast IP address to ARP cache\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -14;
  }
   
  i = etharp_find_entry(ipaddr, flags);
   
  if (i < 0) {
    return (err_t)i;
  }

#line 476 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
  {
     
    arp_table[i].state = ETHARP_STATE_STABLE;
  }

   
  arp_table[i].netif = netif;
   
  ;

  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_update_arp_entry: updating stable entry %" "d" "\n", (s16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
   
  memcpy(&arp_table[i]. ethaddr,ethaddr,6);
   
  arp_table[i].ctime = 0;
   
#line 504 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
  if (arp_table[i].q != 0) {
    struct pbuf *p = arp_table[i].q;
    arp_table[i].q = 0;

     
    etharp_send_ip(netif, p, (struct eth_addr*)(netif->hwaddr), ethaddr);
     
    pbuf_free(p);
  }
  return 0;
}

#line 573 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"





 
void etharp_cleanup_netif(struct netif *netif)
{
  u8_t i;

  for (i = 0; i < 10; ++i) {
    u8_t state = arp_table[i].state;
    if ((state != ETHARP_STATE_EMPTY) && (arp_table[i].netif == netif)) {
      etharp_free_entry(i);
    }
  }
}











 
s8_t
etharp_find_addr(struct netif *netif, ip_addr_t *ipaddr,
         struct eth_addr **eth_ret, ip_addr_t **ip_ret)
{
  s8_t i;

  do { if(!(eth_ret != 0 && ip_ret != 0)) ; } while(0);


  (void)netif;

  i = etharp_find_entry(ipaddr, 2);
  if((i >= 0) && (arp_table[i].state >= ETHARP_STATE_STABLE)) {
      *eth_ret = &arp_table[i].ethaddr;
      *ip_ret = &arp_table[i].ipaddr;
      return i;
  }
  return -1;
}

#line 671 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"















 
static void
etharp_arp_input(struct netif *netif, struct eth_addr *ethaddr, struct pbuf *p)
{
  struct etharp_hdr *hdr;
  struct eth_hdr *ethhdr;
   
  ip_addr_t sipaddr, dipaddr;
  u8_t for_us;




  do { if (!((netif != 0))) { ; return;;}} while(0);

  
 
  if (p->len < ((14 + 0) + 28)) {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("etharp_arp_input: packet dropped, too short (%" "d" "/%" "d" ")\n", p->tot_len, (s16_t)((14 + 0) + 28));; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);


    ;
    ;
    pbuf_free(p);
    return;
  }

  ethhdr = (struct eth_hdr *)p->payload;
  hdr = (struct etharp_hdr *)((u8_t*)ethhdr + (14 + 0));






   
  if ((hdr->hwtype != ((((1) & 0xff) << 8) | (((1) & 0xff00) >> 8))) ||
      (hdr->hwlen != 6) ||
      (hdr->protolen != sizeof(ip_addr_t)) ||
      (hdr->proto != ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8))))  {
    do { if ( ((0x00U | 0x40U | 0x01) & 0x80U) && ((0x00U | 0x40U | 0x01) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x01) & 0x03) >= 0x00)) { printf ("etharp_arp_input: packet dropped, wrong hw type, hwlen, proto, protolen or ethernet type (%" "hu" "/%" "hu" "/%" "hu" "/%" "hu" ")\n", hdr->hwtype, hdr->hwlen, hdr->proto, hdr->protolen);; if ((0x00U | 0x40U | 0x01) & 0x08U) { while(1); } } } while(0);


    ;
    ;
    pbuf_free(p);
    return;
  }
  ;

#line 742 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"

  
 
  memcpy(&sipaddr,&hdr->sipaddr,sizeof(ip_addr_t));
  memcpy(&dipaddr,&hdr->dipaddr,sizeof(ip_addr_t));

   
  if (((&netif->ip_addr) == 0 || (&netif->ip_addr)->addr == ((u32_t)0x00000000UL))) {
    for_us = 0;
  } else {
     
    for_us = (u8_t)((&dipaddr)->addr == (&(netif->ip_addr))->addr);
  }

  



 
  etharp_update_arp_entry(netif, &sipaddr, &(hdr->shwaddr),
                   for_us ? 1 : 2);

   
  switch (hdr->opcode) {
   
  case ((((1) & 0xff) << 8) | (((1) & 0xff00) >> 8)):
    

 

    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_arp_input: incoming ARP request\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
     
    if (for_us) {

      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_arp_input: replying to ARP request for our IP address\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      

 
      hdr->opcode = lwip_htons(2);

      memcpy(&hdr->dipaddr,&hdr->sipaddr,sizeof(ip_addr_t));
      memcpy(&hdr->sipaddr,&netif->ip_addr,sizeof(ip_addr_t));

      do { if(!((netif->hwaddr_len == 6))) ; } while(0);
#line 793 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"

      memcpy(&hdr->dhwaddr,&hdr->shwaddr,6);



      memcpy(&ethhdr->dest,&hdr->shwaddr,6);

      memcpy(&hdr->shwaddr,ethaddr,6);
      memcpy(&ethhdr->src,ethaddr,6);

      
 

       
      netif->linkoutput(netif, p);
     
    } else if (((&netif->ip_addr) == 0 || (&netif->ip_addr)->addr == ((u32_t)0x00000000UL))) {
       
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_arp_input: we are unconfigured, ARP request ignored.\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
     
    } else {
       
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_arp_input: ARP request was not for us.\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    }
    break;
  case ((((2) & 0xff) << 8) | (((2) & 0xff00) >> 8)):
     
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_arp_input: incoming ARP reply\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    


 
    dhcp_arp_reply(netif, &sipaddr);

    break;
  default:
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_arp_input: ARP unknown opcode type %" "d" "\n", lwip_htons(hdr->opcode));; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    ;
    break;
  }
   
  pbuf_free(p);
}



 
static err_t
etharp_output_to_arp_index(struct netif *netif, struct pbuf *q, u8_t arp_idx)
{
  do { if(!(arp_table[arp_idx]. state >= ETHARP_STATE_STABLE)) ; } while(0);

  

 
  if ((arp_table[arp_idx].state == ETHARP_STATE_STABLE) && 
      (arp_table[arp_idx].ctime >= (240 - 12))) {
    if (etharp_request(netif, &arp_table[arp_idx].ipaddr) == 0) {
      arp_table[arp_idx].state = ETHARP_STATE_STABLE_REREQUESTING;
    }
  }
  
  return etharp_send_ip(netif, q, (struct eth_addr*)(netif->hwaddr),
    &arp_table[arp_idx].ethaddr);
}


















 
err_t
etharp_output(struct netif *netif, struct pbuf *q, ip_addr_t *ipaddr)
{
  struct eth_addr *dest;
  struct eth_addr mcastaddr;
  ip_addr_t *dst_addr = ipaddr;

  do { if(!(netif != 0)) ; } while(0);
  do { if(!(q != 0)) ; } while(0);
  do { if(!(ipaddr != 0)) ; } while(0);

   
  if (pbuf_header(q, sizeof(struct eth_hdr)) != 0) {
     
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("etharp_output: could not allocate room for header.\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);

    ;
    return -2;
  }

  
 

   
  if (ip4_addr_isbroadcast((ipaddr)->addr, (netif))) {
     
    dest = (struct eth_addr *)&ethbroadcast;
   
  } else if ((((ipaddr)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
     
    mcastaddr.addr[0] = 0x01;
    mcastaddr.addr[1] = 0x00;
    mcastaddr.addr[2] = 0x5e;
    mcastaddr.addr[3] = (((u8_t*)(ipaddr))[1]) & 0x7f;
    mcastaddr.addr[4] = (((u8_t*)(ipaddr))[2]);
    mcastaddr.addr[5] = (((u8_t*)(ipaddr))[3]);
     
    dest = &mcastaddr;
   
  } else {
    s8_t i;
    
 
    if (!(((ipaddr)->addr & (&(netif->netmask))->addr) == ((&(netif->ip_addr))->addr & (&(netif->netmask))->addr)) &&
        !(((ipaddr)->addr & ((((0xffff0000UL) & 0xff) << 24) | (((0xffff0000UL) & 0xff00) << 8) | (((0xffff0000UL) & 0xff0000UL) >> 8) | (((0xffff0000UL) & 0xff000000UL) >> 24))) == ((((0xa9fe0000UL) & 0xff) << 24) | (((0xa9fe0000UL) & 0xff00) << 8) | (((0xa9fe0000UL) & 0xff0000UL) >> 8) | (((0xa9fe0000UL) & 0xff000000UL) >> 24)))) {
#line 932 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
      {
         
        if (!((&netif->gw) == 0 || (&netif->gw)->addr == ((u32_t)0x00000000UL))) {
           
          dst_addr = &(netif->gw);
         
        } else {
           
          return -4;
        }
      }
    }
#line 950 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
        if ((arp_table[etharp_cached_entry].state >= ETHARP_STATE_STABLE) &&
            (((dst_addr)->addr == (&arp_table[etharp_cached_entry]. ipaddr)->addr))) {
           
          ;
          return etharp_output_to_arp_index(netif, q, etharp_cached_entry);
        }





    
 
    for (i = 0; i < 10; i++) {
      if ((arp_table[i].state >= ETHARP_STATE_STABLE) &&
          (((dst_addr)->addr == (&arp_table[i]. ipaddr)->addr))) {
         
        (etharp_cached_entry = (i));
        return etharp_output_to_arp_index(netif, q, i);
      }
    }
    
 
    return etharp_query(netif, dst_addr, q);
  }

   
   
   
  return etharp_send_ip(netif, q, (struct eth_addr*)(netif->hwaddr), dest);
}

































 
err_t
etharp_query(struct netif *netif, ip_addr_t *ipaddr, struct pbuf *q)
{
  struct eth_addr * srcaddr = (struct eth_addr *)netif->hwaddr;
  err_t result = -1;
  s8_t i;  

   
  if (ip4_addr_isbroadcast((ipaddr)->addr, (netif)) ||
      (((ipaddr)->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24))) ||
      ((ipaddr) == 0 || (ipaddr)->addr == ((u32_t)0x00000000UL))) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_query: will not add non-unicast IP address to ARP cache\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    return -14;
  }

   
  i = etharp_find_entry(ipaddr, 1);

   
  if (i < 0) {
    do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_query: could not create ARP entry\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
    if (q) {
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_query: packet dropped\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      ;
    }
    return (err_t)i;
  }

   
  if (arp_table[i].state == ETHARP_STATE_EMPTY) {
    arp_table[i].state = ETHARP_STATE_PENDING;
  }

   
  do { if(!(((arp_table[i]. state == ETHARP_STATE_PENDING) || (arp_table[i]. state >= ETHARP_STATE_STABLE)))) ; } while(0);



   
  if ((arp_table[i].state == ETHARP_STATE_PENDING) || (q == 0)) {
     
    result = etharp_request(netif, ipaddr);
    if (result != 0) {
       
      

 
    }
    if (q == 0) {
      return result;
    }
  }

   
  do { if(!(q != 0)) ; } while(0);
   
  if (arp_table[i].state >= ETHARP_STATE_STABLE) {
     
    (etharp_cached_entry = (i));
     
    result = etharp_send_ip(netif, q, srcaddr, &(arp_table[i].ethaddr));
   
  } else if (arp_table[i].state == ETHARP_STATE_PENDING) {
     
    struct pbuf *p;
    int copy_needed = 0;
    

 
    p = q;
    while (p) {
      do { if(!((p->len != p->tot_len) || (p->next == 0))) ; } while(0);
      if(p->type != PBUF_ROM) {
        copy_needed = 1;
        break;
      }
      p = p->next;
    }
    if(copy_needed) {
       
      p = pbuf_alloc(PBUF_RAW, p->tot_len, PBUF_RAM);
      if(p != 0) {
        if (pbuf_copy(p, q) != 0) {
          pbuf_free(p);
          p = 0;
        }
      }
    } else {
       
      p = q;
      pbuf_ref(p);
    }
     
    if (p != 0) {
       
#line 1138 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
       
      if (arp_table[i].q != 0) {
        do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_query: dropped previously queued packet %p for ARP entry %" "d" "\n", (void *)q, (s16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
        pbuf_free(arp_table[i].q);
      }
      arp_table[i].q = p;
      result = 0;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_query: queued packet %p on ARP entry %" "d" "\n", (void *)q, (s16_t)i);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);

    } else {
      ;
      do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_query: could not queue a copy of PBUF_REF packet %p (out of memory)\n", (void *)q);; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
      result = -1;
    }
  }
  return result;
}















 

static

err_t
etharp_raw(struct netif *netif, const struct eth_addr *ethsrc_addr,
           const struct eth_addr *ethdst_addr,
           const struct eth_addr *hwsrc_addr, const ip_addr_t *ipsrc_addr,
           const struct eth_addr *hwdst_addr, const ip_addr_t *ipdst_addr,
           const u16_t opcode)
{
  struct pbuf *p;
  err_t result = 0;
  struct eth_hdr *ethhdr;
  struct etharp_hdr *hdr;




  do { if(!(netif != 0)) ; } while(0);

   
  p = pbuf_alloc(PBUF_RAW, ((14 + 0) + 28), PBUF_RAM);
   
  if (p == 0) {
    do { if ( ((0x00U | 0x40U | 0x02) & 0x80U) && ((0x00U | 0x40U | 0x02) & 0x00U) && ((s16_t)((0x00U | 0x40U | 0x02) & 0x03) >= 0x00)) { printf ("etharp_raw: could not allocate pbuf for ARP request.\n");; if ((0x00U | 0x40U | 0x02) & 0x08U) { while(1); } } } while(0);

    ;
    return -1;
  }
  do { if(!((p->len >= ((14 + 0) + 28)))) ; } while(0);


  ethhdr = (struct eth_hdr *)p->payload;
  hdr = (struct etharp_hdr *)((u8_t*)ethhdr + (14 + 0));
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_raw: sending raw ARP packet.\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  hdr->opcode = lwip_htons(opcode);

  do { if(!((netif->hwaddr_len == 6))) ; } while(0);
#line 1216 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"
   
  memcpy(&hdr->shwaddr,hwsrc_addr,6);
  memcpy(&hdr->dhwaddr,hwdst_addr,6);
   



  memcpy(&ethhdr->dest,ethdst_addr,6);

  memcpy(&ethhdr->src,ethsrc_addr,6);
  
  
  memcpy(&hdr->sipaddr,ipsrc_addr,sizeof(ip_addr_t));
  memcpy(&hdr->dipaddr,ipdst_addr,sizeof(ip_addr_t));

  hdr->hwtype = ((((1) & 0xff) << 8) | (((1) & 0xff00) >> 8));
  hdr->proto = ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8));
   
  hdr->hwlen = 6;
  hdr->protolen = sizeof(ip_addr_t);

  ethhdr->type = ((((0x0806U) & 0xff) << 8) | (((0x0806U) & 0xff00) >> 8));
   
  result = netif->linkoutput(netif, p);
  ;
   
  pbuf_free(p);
  p = 0;
   

  return result;
}









 
err_t
etharp_request(struct netif *netif, ip_addr_t *ipaddr)
{
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("etharp_request: sending ARP request.\n");; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
  return etharp_raw(netif, (struct eth_addr *)netif->hwaddr, &ethbroadcast,
                    (struct eth_addr *)netif->hwaddr, &netif->ip_addr, &ethzero,
                    ipaddr, 1);
}









 
err_t
ethernet_input(struct pbuf *p, struct netif *netif)
{
  struct eth_hdr* ethhdr;
  u16_t type;

  s16_t ip_hdr_offset = (14 + 0);


  if (p->len <= (14 + 0)) {
     
    ;
    ;
    goto free_and_return;
  }

   
  ethhdr = (struct eth_hdr *)p->payload;
  do { if ( ((0x00U | 0x40U) & 0x80U) && ((0x00U | 0x40U) & 0x00U) && ((s16_t)((0x00U | 0x40U) & 0x03) >= 0x00)) { printf ("ethernet_input: dest:%" "02x" ":%" "02x" ":%" "02x" ":%" "02x" ":%" "02x" ":%" "02x" ", src:%" "02x" ":%" "02x" ":%" "02x" ":%" "02x" ":%" "02x" ":%" "02x" ", type:%" "hx" "\n", (unsigned)ethhdr->dest . addr[0], (unsigned)ethhdr->dest . addr[1], (unsigned)ethhdr->dest . addr[2], (unsigned)ethhdr->dest . addr[3], (unsigned)ethhdr->dest . addr[4], (unsigned)ethhdr->dest . addr[5], (unsigned)ethhdr->src . addr[0], (unsigned)ethhdr->src . addr[1], (unsigned)ethhdr->src . addr[2], (unsigned)ethhdr->src . addr[3], (unsigned)ethhdr->src . addr[4], (unsigned)ethhdr->src . addr[5], (unsigned)lwip_htons(ethhdr->type));; if ((0x00U | 0x40U) & 0x08U) { while(1); } } } while(0);
#line 1301 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"

  type = ethhdr->type;
#line 1327 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"





  if (ethhdr->dest.addr[0] & 1) {
     
    if (ethhdr->dest.addr[0] == 0x01) {
      if ((ethhdr->dest.addr[1] == 0x00) &&
          (ethhdr->dest.addr[2] == 0x5e)) {
         
        p->flags |= 0x10U;
      }
    } else if ((memcmp((&ethhdr->dest)->addr, (&ethbroadcast)->addr, 6) == 0)) {
       
      p->flags |= 0x08U;
    }
  }

  switch (type) {

     
    case ((((0x0800U) & 0xff) << 8) | (((0x0800U) & 0xff00) >> 8)):
      if (!(netif->flags & 0x20U)) {
        goto free_and_return;
      }




       
      if(pbuf_header(p, -ip_hdr_offset)) {
        do { if(!(0)) ; } while(0);
        goto free_and_return;
      } else {
         
        ip_input(p, netif);
      }
      break;
      
    case ((((0x0806U) & 0xff) << 8) | (((0x0806U) & 0xff00) >> 8)):
      if (!(netif->flags & 0x20U)) {
        goto free_and_return;
      }
       
      etharp_arp_input(netif, (struct eth_addr*)(netif->hwaddr), p);
      break;
#line 1384 "..\\..\\libraries\\lwip-1.4.1\\src\\netif\\etharp.c"

    default:
      ;
      ;
      goto free_and_return;
  }

  
 
  return 0;

free_and_return:
  pbuf_free(p);
  return 0;
}
