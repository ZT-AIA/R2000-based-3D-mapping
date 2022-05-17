#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\bmc.c"
 

#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"







 









 




 
 
 
 

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



 

#line 29 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
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



 

#line 30 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
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





 
#line 31 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 32 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 33 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"










































 



 



 
    






  


 
  


 







 





#line 88 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







            








 










 
#line 124 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
                                             


 



 



 









 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      
  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,        
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,          
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  DMA1_Stream7_IRQn           = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  ETH_IRQn                    = 61,      
  ETH_WKUP_IRQn               = 62,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,       
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  CRYP_IRQn                   = 79,      
  HASH_RNG_IRQn               = 80,       
  FPU_IRQn                    = 81       
} IRQn_Type;



 

#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
 




















 
























 













 




 






 

 











#line 100 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

 
#line 113 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

#line 142 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

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






 
#line 144 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cmInstr.h"
 




















 





 



 


 









 







 







 






 








 







 







 









 









 
static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 
static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 









 









 









 











 











 











 







 










 










 









 






#line 582 "..\\..\\libraries\\CMSIS\\Include\\core_cmInstr.h"

   

#line 145 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cmFunc.h"
 




















 





 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}
 







 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}
 






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 605 "..\\..\\libraries\\CMSIS\\Include\\core_cmFunc.h"

 


#line 146 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"
#line 1 "..\\..\\libraries\\CMSIS\\Include\\core_cm4_simd.h"
 




















 











 


 



 


 

 
#line 106 "..\\..\\libraries\\CMSIS\\Include\\core_cm4_simd.h"








 



#line 693 "..\\..\\libraries\\CMSIS\\Include\\core_cm4_simd.h"

 




#line 147 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"








 
#line 182 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

 
#line 191 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

 





 









 





 


 
typedef union
{
  struct
  {



    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                

    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       



    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                

    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
} ITM_Type;

 



 



























   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 












 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 




 

 
#line 986 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"

#line 993 "..\\..\\libraries\\CMSIS\\Include\\core_cm4.h"











 





 






 



 



 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}








 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}








 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}








 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}








 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}








 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}












 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 4)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 4)) & 0xff);    }         
}













 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 4)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 4)));  }  
}















 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}















 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 4) ? 4 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 4) < 7) ? 0 : PriorityGroupTmp - 7 + 4;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 



 











 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFUL << 0))  return (1);             

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (ticks & (0xFFFFFFUL << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<4) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 



 



 

extern volatile int32_t ITM_RxBuffer;                     











 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((CoreDebug_Type *) (0xE000EDF0UL))->DEMCR & (1UL << 24))  &&       
      (((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}










 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}









 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 





#line 247 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
#line 1 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\system_stm32f4xx.h"



















 




















  


 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           




 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 248 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
#line 249 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



   
 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;



 



    



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;           
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];          
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
} FLASH_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];        
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];     
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
} FSMC_Bank2_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR3;       
} FSMC_Bank3_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint16_t BSRRL;     
  volatile uint16_t BSRRH;     
  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
  uint32_t      RESERVED[2];    
  volatile uint32_t CMPCR;         
} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t OAR1;        
  uint16_t      RESERVED2;   
  volatile uint16_t OAR2;        
  uint16_t      RESERVED3;   
  volatile uint16_t DR;          
  uint16_t      RESERVED4;   
  volatile uint16_t SR1;         
  uint16_t      RESERVED5;   
  volatile uint16_t SR2;         
  uint16_t      RESERVED6;   
  volatile uint16_t CCR;         
  uint16_t      RESERVED7;   
  volatile uint16_t TRISE;       
  uint16_t      RESERVED8;   
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     
} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;           
  volatile uint32_t CLKCR;           
  volatile uint32_t ARG;             
  volatile uint32_t CMD;             
  volatile const uint32_t  RESPCMD;         
  volatile const uint32_t  RESP1;           
  volatile const uint32_t  RESP2;           
  volatile const uint32_t  RESP3;           
  volatile const uint32_t  RESP4;           
  volatile uint32_t DTIMER;          
  volatile uint32_t DLEN;            
  volatile uint32_t DCTRL;           
  volatile const uint32_t  DCOUNT;          
  volatile const uint32_t  STA;             
  volatile uint32_t ICR;             
  volatile uint32_t MASK;            
  uint32_t      RESERVED0[2];    
  volatile const uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];   
  volatile uint32_t FIFO;            
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;         
  uint16_t      RESERVED0;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED1;   
  volatile uint16_t SR;          
  uint16_t      RESERVED2;   
  volatile uint16_t DR;          
  uint16_t      RESERVED3;   
  volatile uint16_t CRCPR;       
  uint16_t      RESERVED4;   
  volatile uint16_t RXCRCR;      
  uint16_t      RESERVED5;   
  volatile uint16_t TXCRCR;      
  uint16_t      RESERVED6;   
  volatile uint16_t I2SCFGR;     
  uint16_t      RESERVED7;   
  volatile uint16_t I2SPR;       
  uint16_t      RESERVED8;   
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;          
  uint16_t      RESERVED0;    
  volatile uint16_t CR2;          
  uint16_t      RESERVED1;    
  volatile uint16_t SMCR;         
  uint16_t      RESERVED2;    
  volatile uint16_t DIER;         
  uint16_t      RESERVED3;    
  volatile uint16_t SR;           
  uint16_t      RESERVED4;    
  volatile uint16_t EGR;          
  uint16_t      RESERVED5;    
  volatile uint16_t CCMR1;        
  uint16_t      RESERVED6;    
  volatile uint16_t CCMR2;        
  uint16_t      RESERVED7;    
  volatile uint16_t CCER;         
  uint16_t      RESERVED8;    
  volatile uint32_t CNT;          
  volatile uint16_t PSC;          
  uint16_t      RESERVED9;    
  volatile uint32_t ARR;          
  volatile uint16_t RCR;          
  uint16_t      RESERVED10;   
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint16_t BDTR;         
  uint16_t      RESERVED11;   
  volatile uint16_t DCR;          
  uint16_t      RESERVED12;   
  volatile uint16_t DMAR;         
  uint16_t      RESERVED13;   
  volatile uint16_t OR;           
  uint16_t      RESERVED14;   
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;          
  uint16_t      RESERVED0;   
  volatile uint16_t DR;          
  uint16_t      RESERVED1;   
  volatile uint16_t BRR;         
  uint16_t      RESERVED2;   
  volatile uint16_t CR1;         
  uint16_t      RESERVED3;   
  volatile uint16_t CR2;         
  uint16_t      RESERVED4;   
  volatile uint16_t CR3;         
  uint16_t      RESERVED5;   
  volatile uint16_t GTPR;        
  uint16_t      RESERVED6;   
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t SR;      
  volatile uint32_t DR;      
  volatile uint32_t DOUT;    
  volatile uint32_t DMACR;   
  volatile uint32_t IMSCR;   
  volatile uint32_t RISR;    
  volatile uint32_t MISR;    
  volatile uint32_t K0LR;    
  volatile uint32_t K0RR;    
  volatile uint32_t K1LR;    
  volatile uint32_t K1RR;    
  volatile uint32_t K2LR;    
  volatile uint32_t K2RR;    
  volatile uint32_t K3LR;    
  volatile uint32_t K3RR;    
  volatile uint32_t IV0LR;   
  volatile uint32_t IV0RR;   
  volatile uint32_t IV1LR;   
  volatile uint32_t IV1RR;   
} CRYP_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;         
  volatile uint32_t DIN;        
  volatile uint32_t STR;        
  volatile uint32_t HR[5];      
  volatile uint32_t IMR;        
  volatile uint32_t SR;         
  uint32_t  RESERVED[52];   
  volatile uint32_t CSR[51];      
} HASH_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;



 
  


 
#line 1016 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 




 





 
#line 1062 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1079 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1116 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 






 




 
  


   
#line 1223 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 
 
#line 1252 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1278 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  
 
#line 1304 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1342 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1384 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 
#line 1433 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1471 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1509 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1538 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 



 
#line 1574 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1596 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 
 
 
 
 
 
 
#line 1617 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1628 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1646 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"











 





 





 
#line 1684 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 












 
#line 1705 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
#line 1845 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1862 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1879 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1896 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1930 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1964 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 1998 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2032 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2066 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2100 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2134 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2168 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2202 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2236 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2270 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2304 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2338 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2372 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2406 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2440 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2474 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2508 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2542 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2576 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2610 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2644 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2678 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2712 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2746 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2780 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2814 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 2848 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 



 



 


 
 
 
 
 
 


#line 2885 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 2894 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 





 


 


 


 



 
 
 
 
 
 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 

 
 
 
 
 
 
#line 3030 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 






 






 






 






 
 
 
 
 
  
#line 3105 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3124 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3135 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3157 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3179 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3201 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

  
#line 3223 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
#line 3250 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3272 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3294 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3316 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3338 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3360 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
#line 3376 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3384 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3393 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3407 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3437 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 











#line 3465 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











#line 3488 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











#line 3511 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











#line 3534 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
#line 3931 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3940 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3949 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 3960 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3970 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3980 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 3990 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4001 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4011 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4021 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4031 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4042 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4052 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4062 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4072 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4083 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4093 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4103 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4113 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4124 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4134 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4144 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4154 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4165 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4175 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4185 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4195 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4206 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4216 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4226 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4236 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
 
 
 
 
 
































































 
#line 4330 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
































































 
































































 
#line 4478 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
#line 4495 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4513 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 
#line 4530 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4564 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
 
 
 
 
 
#line 4585 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4594 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 





 
 
 
 
 
 
#line 4625 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4634 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 



#line 4655 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 



 


 
#line 4680 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4690 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 


 
 
 
 
 
 


 





 


 



 
 
 
 
 
 












 
#line 4747 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 


 
#line 4762 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 
 
 
 
 
 



#line 4780 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4790 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4799 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4808 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 4819 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"















 
 








 








 






#line 4869 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











 











 
#line 4901 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




















 
#line 4944 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 4960 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



  




 


 
#line 4997 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5010 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 
#line 5034 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 


 
#line 5069 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5084 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5108 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 


 
#line 5143 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5158 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 











 
#line 5182 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 



 
 
 
 
 
 



 






 
 
 
 
 
 
#line 5242 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5272 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5300 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5317 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



 


 



 
#line 5370 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5412 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 



 
#line 5451 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5471 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 5489 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5509 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5517 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5525 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 
 
 
 
 
 




 












 


 






#line 5626 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
















 


 
#line 5696 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5711 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5737 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
 
 
 
 
 









#line 5769 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5777 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 5787 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 





















 




 
 
 
 
 
   




 

 


 






  
#line 5859 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5871 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5883 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5895 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






  
#line 5913 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5925 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5937 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5949 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




           


  
#line 5968 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5980 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 5992 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6004 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






  
#line 6021 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6032 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6043 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


  
#line 6054 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

   



 
 
 
 
 
 
















 









#line 6099 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 

























 
#line 6142 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6156 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6166 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




























 





















 




























 





















 
#line 6285 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 


 


 


 


 
#line 6320 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"





#line 6331 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6339 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 6346 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 6357 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"


 
 
 
 
 
 
#line 6375 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 



 
#line 6399 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6408 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 
#line 6428 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6439 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 
 
 
 
 
 
#line 6456 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 
#line 6468 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"







 



 
 
 
 
 
 



 









 
#line 6516 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
 


 






 
 
 
 
 
 
#line 6560 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6576 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 
#line 6594 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"
  
 


 
#line 6610 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 



  


 








 

  
#line 6637 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 






 



 


 


 
#line 6666 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 6681 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
#line 6696 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 
 
 

 
#line 6711 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 




 




 




 




 


 


 


 


 


 


 
 
 

 
#line 6764 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

#line 6771 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 



 


 



 


 


 


 



 
 
 

 
#line 6846 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 


 


 


 


 




   
#line 6897 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6923 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 
#line 6940 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"

 





 


 


 


 




 

 

  

#line 1 "..\\inc\\stm32f4xx_conf.h"



















  




















 
 




 




 
 
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


























 

 







 
#line 1 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"










































 



 



 
    
#line 6998 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"



 

  

 

 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"



 



  

 



  
typedef struct
{
  uint32_t ADC_Resolution;                
                                    
  FunctionalState ADC_ScanConvMode;       


  
  FunctionalState ADC_ContinuousConvMode; 

 
  uint32_t ADC_ExternalTrigConvEdge;      


 
  uint32_t ADC_ExternalTrigConv;          


 
  uint32_t ADC_DataAlign;                 

 
  uint8_t  ADC_NbrOfConversion;           


 
}ADC_InitTypeDef;
  


  
typedef struct 
{
  uint32_t ADC_Mode;                      

                                               
  uint32_t ADC_Prescaler;                 

 
  uint32_t ADC_DMAAccessMode;             


 
  uint32_t ADC_TwoSamplingDelay;          

 
  
}ADC_CommonInitTypeDef;


 



  






  
#line 141 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 157 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 173 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                     


  




  
#line 214 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                     


  




  
#line 231 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                      


  




  
#line 248 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 288 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  






  




  
#line 327 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"





#line 351 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 375 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 391 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
                                            


  




  
#line 432 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 448 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 470 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 484 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  
#line 498 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"
  
#line 506 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_adc.h"


  




  



  




  



  




  



  




  



  




  



  




  



  




  



  




  

 
   

   
void ADC_DeInit(void);

 
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_CommonInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct);
void ADC_CommonStructInit(ADC_CommonInitTypeDef* ADC_CommonInitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);

 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold,uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);

 
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
void ADC_VBATCmd(FunctionalState NewState);

 
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_SoftwareStartConv(ADC_TypeDef* ADCx);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_EOCOnEachRegularChannelCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ContinuousModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetMultiModeConversionValue(void);

 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMARequestAfterLastTransferCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_MultiModeDMARequestAfterLastTransferCmd(FunctionalState NewState);

 
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvEdgeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConvEdge);
void ADC_SoftwareStartInjectedConv(ADC_TypeDef* ADCx);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);

 
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









  



  

 
#line 55 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"



 



 

 






 
typedef struct
{
  uint16_t CAN_Prescaler;   
 
  
  uint8_t CAN_Mode;         
 

  uint8_t CAN_SJW;          


 

  uint8_t CAN_BS1;          

 

  uint8_t CAN_BS2;          
 
  
  FunctionalState CAN_TTCM; 
 
  
  FunctionalState CAN_ABOM;  
 

  FunctionalState CAN_AWUM;  
 

  FunctionalState CAN_NART;  
 

  FunctionalState CAN_RFLM;  
 

  FunctionalState CAN_TXFP;  
 
} CAN_InitTypeDef;



 
typedef struct
{
  uint16_t CAN_FilterIdHigh;         

 

  uint16_t CAN_FilterIdLow;          

 

  uint16_t CAN_FilterMaskIdHigh;     


 

  uint16_t CAN_FilterMaskIdLow;      


 

  uint16_t CAN_FilterFIFOAssignment; 
 
  
  uint8_t CAN_FilterNumber;           

  uint8_t CAN_FilterMode;            
 

  uint8_t CAN_FilterScale;           
 

  FunctionalState CAN_FilterActivation; 
 
} CAN_FilterInitTypeDef;



 
typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     

 

  uint8_t Data[8]; 
 
} CanTxMsg;



 
typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     
 

  uint8_t Data[8]; 
 

  uint8_t FMI;     

 
} CanRxMsg;

 



 



 





 




 



 












 


 


   










 
  



   





 



 









 



 
#line 289 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"




 



 
#line 306 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"




 



 



 



 



 



 







 



 







 



 





 




 



 



 



 






 



 





 




 



 




 




 



 





 	






 



 






 



 



 	




 



 



 




 




                                                          
#line 481 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


 



 

 

 

 




 
#line 505 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

 



 

 





#line 526 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"








 

  


  


 
#line 549 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

 



 






 





#line 574 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"

#line 581 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_can.h"


 



 

 
   

  
void CAN_DeInit(CAN_TypeDef* CANx);

  
uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct);
void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct);
void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct);
void CAN_SlaveStartBank(uint8_t CAN_BankNumber); 
void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState);
void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState);

 
uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage);
uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox);
void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox);

 
void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage);
void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber);
uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber);

 
uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode);
uint8_t CAN_Sleep(CAN_TypeDef* CANx);
uint8_t CAN_WakeUp(CAN_TypeDef* CANx);

 
uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx);
uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx);
uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx);

 
void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState);
FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT);
void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT);









 



 

 
#line 56 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_crc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_crc.h"



 



 

 
 



 



 

 
   

void CRC_ResetDR(void);
uint32_t CRC_CalcCRC(uint32_t Data);
uint32_t CRC_CalcBlockCRC(uint32_t pBuffer[], uint32_t BufferLength);
uint32_t CRC_GetCRC(void);
void CRC_SetIDRegister(uint8_t IDValue);
uint8_t CRC_GetIDRegister(void);









 



 

 
#line 57 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"



 



  

 



  
typedef struct
{
  uint16_t CRYP_AlgoDir;   
 
  uint16_t CRYP_AlgoMode;  

 
  uint16_t CRYP_DataType;  
  
  uint16_t CRYP_KeySize;   

 
}CRYP_InitTypeDef;



  
typedef struct
{
  uint32_t CRYP_Key0Left;   
  uint32_t CRYP_Key0Right;  
  uint32_t CRYP_Key1Left;   
  uint32_t CRYP_Key1Right;  
  uint32_t CRYP_Key2Left;   
  uint32_t CRYP_Key2Right;  
  uint32_t CRYP_Key3Left;   
  uint32_t CRYP_Key3Right;  
}CRYP_KeyInitTypeDef;


  
typedef struct
{
  uint32_t CRYP_IV0Left;   
  uint32_t CRYP_IV0Right;  
  uint32_t CRYP_IV1Left;   
  uint32_t CRYP_IV1Right;  
}CRYP_IVInitTypeDef;



  
typedef struct
{
   
  uint32_t CR_bits9to2;
   
  uint32_t CRYP_IV0LR;
  uint32_t CRYP_IV0RR;
  uint32_t CRYP_IV1LR;
  uint32_t CRYP_IV1RR;
   
  uint32_t CRYP_K0LR;
  uint32_t CRYP_K0RR;
  uint32_t CRYP_K1LR;
  uint32_t CRYP_K1RR;
  uint32_t CRYP_K2LR;
  uint32_t CRYP_K2RR;
  uint32_t CRYP_K3LR;
  uint32_t CRYP_K3RR;
}CRYP_Context;


 



 



 







  
 


 

 



 



 





#line 160 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


  
 


 
#line 175 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 
                                     


 
#line 188 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 



 
#line 207 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"

#line 215 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_cryp.h"


 



 







 



 





 



 





  



  

 
 

 
void CRYP_DeInit(void);

 
void CRYP_Init(CRYP_InitTypeDef* CRYP_InitStruct);
void CRYP_StructInit(CRYP_InitTypeDef* CRYP_InitStruct);
void CRYP_KeyInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_KeyStructInit(CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_IVInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct);
void CRYP_IVStructInit(CRYP_IVInitTypeDef* CRYP_IVInitStruct);
void CRYP_Cmd(FunctionalState NewState);

 
void CRYP_DataIn(uint32_t Data);
uint32_t CRYP_DataOut(void);
void CRYP_FIFOFlush(void);

 
ErrorStatus CRYP_SaveContext(CRYP_Context* CRYP_ContextSave,
                             CRYP_KeyInitTypeDef* CRYP_KeyInitStruct);
void CRYP_RestoreContext(CRYP_Context* CRYP_ContextRestore);

 
void CRYP_DMACmd(uint8_t CRYP_DMAReq, FunctionalState NewState);

 
void CRYP_ITConfig(uint8_t CRYP_IT, FunctionalState NewState);
ITStatus CRYP_GetITStatus(uint8_t CRYP_IT);
FlagStatus CRYP_GetFlagStatus(uint8_t CRYP_FLAG);

 
ErrorStatus CRYP_AES_ECB(uint8_t Mode,
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_CBC(uint8_t Mode,
                         uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_AES_CTR(uint8_t Mode,
                         uint8_t InitVectors[16],
                         uint8_t *Key, uint16_t Keysize,
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

 
ErrorStatus CRYP_TDES_ECB(uint8_t Mode,
                           uint8_t Key[24], 
                           uint8_t *Input, uint32_t Ilength,
                           uint8_t *Output);

ErrorStatus CRYP_TDES_CBC(uint8_t Mode,
                          uint8_t Key[24],
                          uint8_t InitVectors[8],
                          uint8_t *Input, uint32_t Ilength,
                          uint8_t *Output);

 
ErrorStatus CRYP_DES_ECB(uint8_t Mode,
                         uint8_t Key[8],
                         uint8_t *Input, uint32_t Ilength,
                         uint8_t *Output);

ErrorStatus CRYP_DES_CBC(uint8_t Mode,
                         uint8_t Key[8],
                         uint8_t InitVectors[8],
                         uint8_t *Input,uint32_t Ilength,
                         uint8_t *Output);









 



  

 
#line 58 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"



 



 

 



 

typedef struct
{
  uint32_t DAC_Trigger;                      
 

  uint32_t DAC_WaveGeneration;               

 

  uint32_t DAC_LFSRUnmask_TriangleAmplitude; 

 

  uint32_t DAC_OutputBuffer;                 
 
}DAC_InitTypeDef;

 



 



 

#line 89 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"




#line 102 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"



 



 

#line 117 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 

#line 149 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"

#line 174 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 







 



 







 



 

#line 212 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dac.h"


 



 







 



 




 
  


    





  



  
  





 



 

 
   

   
void DAC_DeInit(void);

 
void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef* DAC_InitStruct);
void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct);
void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_SoftwareTriggerCmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_DualSoftwareTriggerCmd(FunctionalState NewState);
void DAC_WaveGenerationCmd(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState);
void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetChannel2Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetDualChannelData(uint32_t DAC_Align, uint16_t Data2, uint16_t Data1);
uint16_t DAC_GetDataOutputValue(uint32_t DAC_Channel);

 
void DAC_DMACmd(uint32_t DAC_Channel, FunctionalState NewState);

 
void DAC_ITConfig(uint32_t DAC_Channel, uint32_t DAC_IT, FunctionalState NewState);
FlagStatus DAC_GetFlagStatus(uint32_t DAC_Channel, uint32_t DAC_FLAG);
void DAC_ClearFlag(uint32_t DAC_Channel, uint32_t DAC_FLAG);
ITStatus DAC_GetITStatus(uint32_t DAC_Channel, uint32_t DAC_IT);
void DAC_ClearITPendingBit(uint32_t DAC_Channel, uint32_t DAC_IT);









 



 

 
#line 59 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"

























 

 







 
#line 38 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"



 



  

 
 



  





#line 76 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"

#line 83 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dbgmcu.h"


  

 
  
uint32_t DBGMCU_GetREVID(void);
uint32_t DBGMCU_GetDEVID(void);
void DBGMCU_Config(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB1PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);
void DBGMCU_APB2PeriphConfig(uint32_t DBGMCU_Periph, FunctionalState NewState);









  



  

 
#line 60 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"

























 

 







 
#line 38 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"



 



  

 


  
typedef struct
{
  uint16_t DCMI_CaptureMode;      
 

  uint16_t DCMI_SynchroMode;      
 

  uint16_t DCMI_PCKPolarity;      
 

  uint16_t DCMI_VSPolarity;       
 

  uint16_t DCMI_HSPolarity;       
 

  uint16_t DCMI_CaptureRate;      
 

  uint16_t DCMI_ExtendedDataMode; 
 
} DCMI_InitTypeDef;



  
typedef struct
{
  uint16_t DCMI_VerticalStartLine;      
 

  uint16_t DCMI_HorizontalOffsetCount;  
 

  uint16_t DCMI_VerticalLineCount;      
 

  uint16_t DCMI_CaptureCount;           

 
} DCMI_CROPInitTypeDef;



  
typedef struct
{
  uint8_t DCMI_FrameStartCode;  
  uint8_t DCMI_LineStartCode;   
  uint8_t DCMI_LineEndCode;     
  uint8_t DCMI_FrameEndCode;    
} DCMI_CodesInitTypeDef;

 



 



  
#line 120 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
#line 134 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  






  




  






  




  






  




  
#line 184 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
#line 200 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  
#line 219 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"


  




  


  





  







  
#line 262 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dcmi.h"
                                



  



  

 
  

  
void DCMI_DeInit(void);

 
void DCMI_Init(DCMI_InitTypeDef* DCMI_InitStruct);
void DCMI_StructInit(DCMI_InitTypeDef* DCMI_InitStruct);
void DCMI_CROPConfig(DCMI_CROPInitTypeDef* DCMI_CROPInitStruct);
void DCMI_CROPCmd(FunctionalState NewState);
void DCMI_SetEmbeddedSynchroCodes(DCMI_CodesInitTypeDef* DCMI_CodesInitStruct);
void DCMI_JPEGCmd(FunctionalState NewState);

 
void DCMI_Cmd(FunctionalState NewState);
void DCMI_CaptureCmd(FunctionalState NewState);
uint32_t DCMI_ReadData(void);

 
void DCMI_ITConfig(uint16_t DCMI_IT, FunctionalState NewState);
FlagStatus DCMI_GetFlagStatus(uint16_t DCMI_FLAG);
void DCMI_ClearFlag(uint16_t DCMI_FLAG);
ITStatus DCMI_GetITStatus(uint16_t DCMI_IT);
void DCMI_ClearITPendingBit(uint16_t DCMI_IT);









  



  

 
#line 61 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"



 



 

 



 

typedef struct
{
  uint32_t DMA_Channel;            
 
 
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_Memory0BaseAddr;    

 

  uint32_t DMA_DIR;                

 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_FIFOMode;          


 

  uint32_t DMA_FIFOThreshold;      
 

  uint32_t DMA_MemoryBurst;        


 

  uint32_t DMA_PeripheralBurst;    


   
}DMA_InitTypeDef;

 



 

#line 134 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"






  
#line 149 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"

#line 158 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  









  




  



  




  







  




  







  




  









  




  









  




  







  




  











  




  







  




  











  




  











  




  











  




 
#line 346 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"

#line 353 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  



 
#line 400 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"




#line 424 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  









  




  
#line 487 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"





#line 512 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_dma.h"


  




  







  




  







  




  






  



  

 
  

  
void DMA_DeInit(DMA_Stream_TypeDef* DMAy_Streamx);

 
void DMA_Init(DMA_Stream_TypeDef* DMAy_Streamx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState);

 
void DMA_PeriphIncOffsetSizeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_Pincos);
void DMA_FlowControllerConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FlowCtrl);

 
void DMA_SetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx, uint16_t Counter);
uint16_t DMA_GetCurrDataCounter(DMA_Stream_TypeDef* DMAy_Streamx);

 
void DMA_DoubleBufferModeConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t Memory1BaseAddr,
                                uint32_t DMA_CurrentMemory);
void DMA_DoubleBufferModeCmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState);
void DMA_MemoryTargetConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t MemoryBaseAddr,
                            uint32_t DMA_MemoryTarget);
uint32_t DMA_GetCurrentMemoryTarget(DMA_Stream_TypeDef* DMAy_Streamx);

 
FunctionalState DMA_GetCmdStatus(DMA_Stream_TypeDef* DMAy_Streamx);
uint32_t DMA_GetFIFOStatus(DMA_Stream_TypeDef* DMAy_Streamx);
FlagStatus DMA_GetFlagStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG);
void DMA_ClearFlag(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG);
void DMA_ITConfig(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT, FunctionalState NewState);
ITStatus DMA_GetITStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT);
void DMA_ClearITPendingBit(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_IT);









 



 


 
#line 62 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"



 



 

 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;





 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;






 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;

 



 



 

#line 128 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"
                                          


#line 143 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_exti.h"
                    


 



 

 
 

 
void EXTI_DeInit(void);

 
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);

 
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);









 



 

 
#line 63 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"



 



  

 


  
typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PGS,
  FLASH_ERROR_PGP,
  FLASH_ERROR_PGA,
  FLASH_ERROR_WRP,
  FLASH_ERROR_PROGRAM,
  FLASH_ERROR_OPERATION,
  FLASH_COMPLETE
}FLASH_Status;

 



   



  
#line 81 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"

#line 90 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


  



  











  



  
#line 133 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


  



  
#line 153 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"




 



 


  
 





  



  





  



  





  




  





 
  


   
#line 213 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


 



  





  



  
#line 242 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_flash.h"


 



 







  



  







  



  



  






  

 
  
 
 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_PrefetchBufferCmd(FunctionalState NewState);
void FLASH_InstructionCacheCmd(FunctionalState NewState);
void FLASH_DataCacheCmd(FunctionalState NewState);
void FLASH_InstructionCacheReset(void);
void FLASH_DataCacheReset(void);

    
void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_EraseSector(uint32_t FLASH_Sector, uint8_t VoltageRange);
FLASH_Status FLASH_EraseAllSectors(uint8_t VoltageRange);
FLASH_Status FLASH_ProgramDoubleWord(uint32_t Address, uint64_t Data);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramByte(uint32_t Address, uint8_t Data);

  
void FLASH_OB_Unlock(void);
void FLASH_OB_Lock(void);
void FLASH_OB_WRPConfig(uint32_t OB_WRP, FunctionalState NewState);
void FLASH_OB_RDPConfig(uint8_t OB_RDP);
void FLASH_OB_UserConfig(uint8_t OB_IWDG, uint8_t OB_STOP, uint8_t OB_STDBY);
void FLASH_OB_BORConfig(uint8_t OB_BOR);
FLASH_Status FLASH_OB_Launch(void);
uint8_t FLASH_OB_GetUser(void);
uint16_t FLASH_OB_GetWRP(void);
FlagStatus FLASH_OB_GetRDP(void);
uint8_t FLASH_OB_GetBOR(void);

 
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(void);









  



  

 
#line 64 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"



 



 

 



 
typedef struct
{
  uint32_t FSMC_AddressSetupTime;       


 

  uint32_t FSMC_AddressHoldTime;        


 

  uint32_t FSMC_DataSetupTime;          


 

  uint32_t FSMC_BusTurnAroundDuration;  


 

  uint32_t FSMC_CLKDivision;            

 

  uint32_t FSMC_DataLatency;            





 

  uint32_t FSMC_AccessMode;             
 
}FSMC_NORSRAMTimingInitTypeDef;



 
typedef struct
{
  uint32_t FSMC_Bank;                
 

  uint32_t FSMC_DataAddressMux;      

 

  uint32_t FSMC_MemoryType;          

 

  uint32_t FSMC_MemoryDataWidth;     
 

  uint32_t FSMC_BurstAccessMode;     

 

  uint32_t FSMC_AsynchronousWait;     

                                           

  uint32_t FSMC_WaitSignalPolarity;  

 

  uint32_t FSMC_WrapMode;            

 

  uint32_t FSMC_WaitSignalActive;    


 

  uint32_t FSMC_WriteOperation;      
 

  uint32_t FSMC_WaitSignal;          

 

  uint32_t FSMC_ExtendedMode;        
 

  uint32_t FSMC_WriteBurst;          
  

  FSMC_NORSRAMTimingInitTypeDef* FSMC_ReadWriteTimingStruct;    

  FSMC_NORSRAMTimingInitTypeDef* FSMC_WriteTimingStruct;            
}FSMC_NORSRAMInitTypeDef;



 
typedef struct
{
  uint32_t FSMC_SetupTime;      



 

  uint32_t FSMC_WaitSetupTime;  



 

  uint32_t FSMC_HoldSetupTime;  




 

  uint32_t FSMC_HiZSetupTime;   



 
}FSMC_NAND_PCCARDTimingInitTypeDef;



 
typedef struct
{
  uint32_t FSMC_Bank;              
 

  uint32_t FSMC_Waitfeature;      
 

  uint32_t FSMC_MemoryDataWidth;  
 

  uint32_t FSMC_ECC;              
 

  uint32_t FSMC_ECCPageSize;      
 

  uint32_t FSMC_TCLRSetupTime;    

 

  uint32_t FSMC_TARSetupTime;     

  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;     

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;  
}FSMC_NANDInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Waitfeature;    
 

  uint32_t FSMC_TCLRSetupTime;  

 

  uint32_t FSMC_TARSetupTime;   

  

  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;    
  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_IOSpaceTimingStruct;    
}FSMC_PCCARDInitTypeDef;

 



 



 






 



   




 



     



 



















 



 







 



 

#line 314 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 







 



 







 
    


 






 



 






 



 






 



 






 



 






 



 






 



 







 



 







 



 



 



 



 



 



 



 



 



 



 



 



 



 
#line 491 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 
  


 



 






 




 






 



 
#line 541 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 



 



 



 



 



 



 



 



 



 



 



 



 
#line 603 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"


 



 
#line 618 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_fsmc.h"




 



 



 

 
  

 
void FSMC_NORSRAMDeInit(uint32_t FSMC_Bank);
void FSMC_NORSRAMInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NORSRAMStructInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NORSRAMCmd(uint32_t FSMC_Bank, FunctionalState NewState);

 
void FSMC_NANDDeInit(uint32_t FSMC_Bank);
void FSMC_NANDInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_NANDStructInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_NANDCmd(uint32_t FSMC_Bank, FunctionalState NewState);
void FSMC_NANDECCCmd(uint32_t FSMC_Bank, FunctionalState NewState);
uint32_t FSMC_GetECC(uint32_t FSMC_Bank);

 
void FSMC_PCCARDDeInit(void);
void FSMC_PCCARDInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_PCCARDStructInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_PCCARDCmd(FunctionalState NewState);

 
void FSMC_ITConfig(uint32_t FSMC_Bank, uint32_t FSMC_IT, FunctionalState NewState);
FlagStatus FSMC_GetFlagStatus(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
void FSMC_ClearFlag(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
ITStatus FSMC_GetITStatus(uint32_t FSMC_Bank, uint32_t FSMC_IT);
void FSMC_ClearITPendingBit(uint32_t FSMC_Bank, uint32_t FSMC_IT);








 



  

 
#line 65 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_hash.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_hash.h"



 



  

 



  
typedef struct
{
  uint32_t HASH_AlgoSelection; 
 
  uint32_t HASH_AlgoMode;      
 
  uint32_t HASH_DataType;      

 
  uint32_t HASH_HMACKeyType;   
 
}HASH_InitTypeDef;



  
typedef struct
{
  uint32_t Data[5];      
 
} HASH_MsgDigest; 



  
typedef struct
{
  uint32_t HASH_IMR; 
  uint32_t HASH_STR;      
  uint32_t HASH_CR;     
  uint32_t HASH_CSR[51];       
}HASH_Context;

 



  



  







 



  







 



   











 



  







 



   




 



   





				   


 



   

















  



  

 
  
  
 
void HASH_DeInit(void);

 
void HASH_Init(HASH_InitTypeDef* HASH_InitStruct);
void HASH_StructInit(HASH_InitTypeDef* HASH_InitStruct);
void HASH_Reset(void);

 
void HASH_DataIn(uint32_t Data);
uint8_t HASH_GetInFIFOWordsNbr(void);
void HASH_SetLastWordValidBitsNbr(uint16_t ValidNumber);
void HASH_StartDigest(void);
void HASH_GetDigest(HASH_MsgDigest* HASH_MessageDigest);

 
void HASH_SaveContext(HASH_Context* HASH_ContextSave);
void HASH_RestoreContext(HASH_Context* HASH_ContextRestore);

 
void HASH_DMACmd(FunctionalState NewState);

 
void HASH_ITConfig(uint8_t HASH_IT, FunctionalState NewState);
FlagStatus HASH_GetFlagStatus(uint16_t HASH_FLAG);
void HASH_ClearFlag(uint16_t HASH_FLAG);
ITStatus HASH_GetITStatus(uint8_t HASH_IT);
void HASH_ClearITPendingBit(uint8_t HASH_IT);

 
ErrorStatus HASH_SHA1(uint8_t *Input, uint32_t Ilen, uint8_t Output[20]);
ErrorStatus HMAC_SHA1(uint8_t *Key, uint32_t Keylen,
                      uint8_t *Input, uint32_t Ilen,
                      uint8_t Output[20]);

 
ErrorStatus HASH_MD5(uint8_t *Input, uint32_t Ilen, uint8_t Output[16]);
ErrorStatus HMAC_MD5(uint8_t *Key, uint32_t Keylen,
                     uint8_t *Input, uint32_t Ilen,
                     uint8_t Output[16]);









  



  

 
#line 66 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"



 



  

 

#line 59 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"
                                                                


    
typedef enum
{ 
  GPIO_Mode_IN   = 0x00,  
  GPIO_Mode_OUT  = 0x01,  
  GPIO_Mode_AF   = 0x02,  
  GPIO_Mode_AN   = 0x03   
}GPIOMode_TypeDef;





   
typedef enum
{ 
  GPIO_OType_PP = 0x00,
  GPIO_OType_OD = 0x01
}GPIOOType_TypeDef;





   
typedef enum
{ 
  GPIO_Speed_2MHz   = 0x00,  
  GPIO_Speed_25MHz  = 0x01,  
  GPIO_Speed_50MHz  = 0x02,  
  GPIO_Speed_100MHz = 0x03   
}GPIOSpeed_TypeDef;





  
typedef enum
{ 
  GPIO_PuPd_NOPULL = 0x00,
  GPIO_PuPd_UP     = 0x01,
  GPIO_PuPd_DOWN   = 0x02
}GPIOPuPd_TypeDef;





  
typedef enum
{ 
  Bit_RESET = 0,
  Bit_SET
}BitAction;





  
typedef struct
{
  uint32_t GPIO_Pin;              
 

  GPIOMode_TypeDef GPIO_Mode;     
 

  GPIOSpeed_TypeDef GPIO_Speed;   
 

  GPIOOType_TypeDef GPIO_OType;   
 

  GPIOPuPd_TypeDef GPIO_PuPd;     
 
}GPIO_InitTypeDef;

 



  



  
#line 167 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

#line 185 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  




  
#line 209 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"

#line 226 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  



  


  








  





  






  







  






  





  




  







  






  








  





  




  






  




  


#line 351 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_gpio.h"


  



 
    








 



 

 
  

 
void GPIO_DeInit(GPIO_TypeDef* GPIOx);

 
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
void GPIO_PinAFConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_PinSource, uint8_t GPIO_AF);









  



  

 
#line 67 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



 



 

 



 

typedef struct
{
  uint32_t I2C_ClockSpeed;          
 

  uint16_t I2C_Mode;                
 

  uint16_t I2C_DutyCycle;           
 

  uint16_t I2C_OwnAddress1;         
 

  uint16_t I2C_Ack;                 
 

  uint16_t I2C_AcknowledgedAddress; 
 
}I2C_InitTypeDef;

 




 






 

#line 95 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 







  



 







 



 







 



 







  



 

#line 169 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 







  



 







 



 







  



 







  



 

#line 239 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



#line 249 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 



 

#line 268 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



 

#line 287 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"



#line 301 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 





 








 
 

























 

 


 





























 

  
 


 
 

 







 

























 

    
 



 



 



























 

  
 

 


 
 


 






 

#line 507 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_i2c.h"


 



 




 



 




 



 

 
  

 
void I2C_DeInit(I2C_TypeDef* I2Cx);

 
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address);
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle);
void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition);
void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert);
void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

  
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);
uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx);

  
void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_PECPosition);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx);

 
void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

 
uint16_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);
void I2C_ITConfig(I2C_TypeDef* I2Cx, uint16_t I2C_IT, FunctionalState NewState);




















































































 





 
ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT);




 
uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx);




 
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);


void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT);









  



  

 
#line 68 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"



 



 

 
 



 
  


 






 



 
#line 83 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_iwdg.h"


 



 






 



 

 
 

 
void IWDG_WriteAccessCmd(uint16_t IWDG_WriteAccess);
void IWDG_SetPrescaler(uint8_t IWDG_Prescaler);
void IWDG_SetReload(uint16_t Reload);
void IWDG_ReloadCounter(void);

 
void IWDG_Enable(void);

 
FlagStatus IWDG_GetFlagStatus(uint16_t IWDG_FLAG);









 



 

 
#line 69 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"



 



  

 
 



  



  

#line 67 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_pwr.h"







 

  


 







 



 







 




 


 



 









 



 








 



 

 
  

  
void PWR_DeInit(void);

  
void PWR_BackupAccessCmd(FunctionalState NewState);

  
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_PVDCmd(FunctionalState NewState);

  
void PWR_WakeUpPinCmd(FunctionalState NewState);

  
void PWR_BackupRegulatorCmd(FunctionalState NewState);
void PWR_MainRegulatorModeConfig(uint32_t PWR_Regulator_Voltage);

  
void PWR_FlashPowerDownCmd(FunctionalState NewState);

  
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);

  
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);









 



 

 
#line 70 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"

























 

 







 
#line 38 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"



 



  

 
typedef struct
{
  uint32_t SYSCLK_Frequency;  
  uint32_t HCLK_Frequency;    
  uint32_t PCLK1_Frequency;   
  uint32_t PCLK2_Frequency;   
}RCC_ClocksTypeDef;

 



 
  


 







  
  


 
#line 85 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
 




  
  


 
#line 101 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 122 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 137 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 157 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 







  
  


 
#line 240 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 






  
  


  
#line 284 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


   
#line 297 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


  




  
  


  
#line 337 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


  
#line 360 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  
  


 
#line 378 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
                                   





  
  


 
#line 400 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"
                                   





  
  


 
#line 432 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rcc.h"


  



  

 
  

 
void RCC_DeInit(void);

 
void RCC_HSEConfig(uint8_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);

void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t PLLM, uint32_t PLLN, uint32_t PLLP, uint32_t PLLQ);
void RCC_PLLCmd(FunctionalState NewState);
void RCC_PLLI2SConfig(uint32_t PLLI2SN, uint32_t PLLI2SR);
void RCC_PLLI2SCmd(FunctionalState NewState);

void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCO1Config(uint32_t RCC_MCO1Source, uint32_t RCC_MCO1Div);
void RCC_MCO2Config(uint32_t RCC_MCO2Source, uint32_t RCC_MCO2Div);

 
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);

 
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_I2SCLKConfig(uint32_t RCC_I2SCLKSource); 

void RCC_AHB1PeriphClockCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void RCC_AHB2PeriphClockCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void RCC_AHB3PeriphClockCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void RCC_AHB1PeriphResetCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void RCC_AHB2PeriphResetCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void RCC_AHB3PeriphResetCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

void RCC_AHB1PeriphClockLPModeCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState);
void RCC_AHB2PeriphClockLPModeCmd(uint32_t RCC_AHB2Periph, FunctionalState NewState);
void RCC_AHB3PeriphClockLPModeCmd(uint32_t RCC_AHB3Periph, FunctionalState NewState);
void RCC_APB1PeriphClockLPModeCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphClockLPModeCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);

 
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);









  



  

 
#line 71 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rng.h"



 



  

 
  



 
  


  











  



   







  



  

 
  

  
void RNG_DeInit(void);

 
void RNG_Cmd(FunctionalState NewState);

 
uint32_t RNG_GetRandomNumber(void);

 
void RNG_ITConfig(FunctionalState NewState);
FlagStatus RNG_GetFlagStatus(uint8_t RNG_FLAG);
void RNG_ClearFlag(uint8_t RNG_FLAG);
ITStatus RNG_GetITStatus(uint8_t RNG_IT);
void RNG_ClearITPendingBit(uint8_t RNG_IT);









  



  

 
#line 72 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



 



  

 



  
typedef struct
{
  uint32_t RTC_HourFormat;   
 
  
  uint32_t RTC_AsynchPrediv; 
 
  
  uint32_t RTC_SynchPrediv;  
 
}RTC_InitTypeDef;



 
typedef struct
{
  uint8_t RTC_Hours;    


 

  uint8_t RTC_Minutes;  
 
  
  uint8_t RTC_Seconds;  
 

  uint8_t RTC_H12;      
 
}RTC_TimeTypeDef; 



 
typedef struct
{
  uint8_t RTC_WeekDay; 
 
  
  uint8_t RTC_Month;   
 

  uint8_t RTC_Date;     
 
  
  uint8_t RTC_Year;     
 
}RTC_DateTypeDef;



 
typedef struct
{
  RTC_TimeTypeDef RTC_AlarmTime;      

  uint32_t RTC_AlarmMask;            
 

  uint32_t RTC_AlarmDateWeekDaySel;  
 
  
  uint8_t RTC_AlarmDateWeekDay;      



 
}RTC_AlarmTypeDef;

 



  




  






  



  

 


  




  




  



  







  



  






  



  




  



  

 
#line 211 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  
  
#line 234 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  




  
#line 250 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  




  








  




  
#line 280 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  







  

  

  
#line 349 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  





  



  
#line 379 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  






  



  




 







  



  






  




  








  

 

  






  



  
#line 459 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"
                                          


  



  
#line 474 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  




 



  











  



  
#line 515 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



  



  


#line 535 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  
#line 566 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"



 

  

  
#line 582 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"







 



  





 



  






  



  






  



  







  



  






  



  




 



 

#line 699 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  






  



  
#line 739 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"


  



  
#line 752 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_rtc.h"









  



  





  



  

 
  

 
ErrorStatus RTC_DeInit(void);

 
ErrorStatus RTC_Init(RTC_InitTypeDef* RTC_InitStruct);
void RTC_StructInit(RTC_InitTypeDef* RTC_InitStruct);
void RTC_WriteProtectionCmd(FunctionalState NewState);
ErrorStatus RTC_EnterInitMode(void);
void RTC_ExitInitMode(void);
ErrorStatus RTC_WaitForSynchro(void);
ErrorStatus RTC_RefClockCmd(FunctionalState NewState);
void RTC_BypassShadowCmd(FunctionalState NewState);

 
ErrorStatus RTC_SetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct);
void RTC_TimeStructInit(RTC_TimeTypeDef* RTC_TimeStruct);
void RTC_GetTime(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_TimeStruct);
uint32_t RTC_GetSubSecond(void);
ErrorStatus RTC_SetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct);
void RTC_DateStructInit(RTC_DateTypeDef* RTC_DateStruct);
void RTC_GetDate(uint32_t RTC_Format, RTC_DateTypeDef* RTC_DateStruct);

 
void RTC_SetAlarm(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct);
void RTC_AlarmStructInit(RTC_AlarmTypeDef* RTC_AlarmStruct);
void RTC_GetAlarm(uint32_t RTC_Format, uint32_t RTC_Alarm, RTC_AlarmTypeDef* RTC_AlarmStruct);
ErrorStatus RTC_AlarmCmd(uint32_t RTC_Alarm, FunctionalState NewState);
void RTC_AlarmSubSecondConfig(uint32_t RTC_Alarm, uint32_t RTC_AlarmSubSecondValue, uint32_t RTC_AlarmSubSecondMask);
uint32_t RTC_GetAlarmSubSecond(uint32_t RTC_Alarm);

 
void RTC_WakeUpClockConfig(uint32_t RTC_WakeUpClock);
void RTC_SetWakeUpCounter(uint32_t RTC_WakeUpCounter);
uint32_t RTC_GetWakeUpCounter(void);
ErrorStatus RTC_WakeUpCmd(FunctionalState NewState);

 
void RTC_DayLightSavingConfig(uint32_t RTC_DayLightSaving, uint32_t RTC_StoreOperation);
uint32_t RTC_GetStoreOperation(void);

 
void RTC_OutputConfig(uint32_t RTC_Output, uint32_t RTC_OutputPolarity);

 
ErrorStatus RTC_CoarseCalibConfig(uint32_t RTC_CalibSign, uint32_t Value);
ErrorStatus RTC_CoarseCalibCmd(FunctionalState NewState);
void RTC_CalibOutputCmd(FunctionalState NewState);
void RTC_CalibOutputConfig(uint32_t RTC_CalibOutput);
ErrorStatus RTC_SmoothCalibConfig(uint32_t RTC_SmoothCalibPeriod, 
                                  uint32_t RTC_SmoothCalibPlusPulses,
                                  uint32_t RTC_SmouthCalibMinusPulsesValue);

 
void RTC_TimeStampCmd(uint32_t RTC_TimeStampEdge, FunctionalState NewState);
void RTC_GetTimeStamp(uint32_t RTC_Format, RTC_TimeTypeDef* RTC_StampTimeStruct,
                                      RTC_DateTypeDef* RTC_StampDateStruct);
uint32_t RTC_GetTimeStampSubSecond(void);

 
void RTC_TamperTriggerConfig(uint32_t RTC_Tamper, uint32_t RTC_TamperTrigger);
void RTC_TamperCmd(uint32_t RTC_Tamper, FunctionalState NewState);
void RTC_TamperFilterConfig(uint32_t RTC_TamperFilter);
void RTC_TamperSamplingFreqConfig(uint32_t RTC_TamperSamplingFreq);
void RTC_TamperPinsPrechargeDuration(uint32_t RTC_TamperPrechargeDuration);
void RTC_TimeStampOnTamperDetectionCmd(FunctionalState NewState);
void RTC_TamperPullUpCmd(FunctionalState NewState);

 
void RTC_WriteBackupRegister(uint32_t RTC_BKP_DR, uint32_t Data);
uint32_t RTC_ReadBackupRegister(uint32_t RTC_BKP_DR);


 
void RTC_TamperPinSelection(uint32_t RTC_TamperPin);
void RTC_TimeStampPinSelection(uint32_t RTC_TimeStampPin);
void RTC_OutputTypeConfig(uint32_t RTC_OutputType);

 
ErrorStatus RTC_SynchroShiftConfig(uint32_t RTC_ShiftAdd1S, uint32_t RTC_ShiftSubFS);

 
void RTC_ITConfig(uint32_t RTC_IT, FunctionalState NewState);
FlagStatus RTC_GetFlagStatus(uint32_t RTC_FLAG);
void RTC_ClearFlag(uint32_t RTC_FLAG);
ITStatus RTC_GetITStatus(uint32_t RTC_IT);
void RTC_ClearITPendingBit(uint32_t RTC_IT);









  



  

 
#line 73 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"



 



 

 

typedef struct
{
  uint32_t SDIO_ClockEdge;            
 

  uint32_t SDIO_ClockBypass;          

 

  uint32_t SDIO_ClockPowerSave;       

 

  uint32_t SDIO_BusWide;              
 

  uint32_t SDIO_HardwareFlowControl;  
 

  uint8_t SDIO_ClockDiv;              
 
                                           
} SDIO_InitTypeDef;

typedef struct
{
  uint32_t SDIO_Argument;  


 

  uint32_t SDIO_CmdIndex;   

  uint32_t SDIO_Response;  
 

  uint32_t SDIO_Wait;      
 

  uint32_t SDIO_CPSM;      

 
} SDIO_CmdInitTypeDef;

typedef struct
{
  uint32_t SDIO_DataTimeOut;     

  uint32_t SDIO_DataLength;      
 
  uint32_t SDIO_DataBlockSize;  
 
 
  uint32_t SDIO_TransferDir;    

 
 
  uint32_t SDIO_TransferMode;   
 
 
  uint32_t SDIO_DPSM;           

 
} SDIO_DataInitTypeDef;


 



 



 







 



 







  



 







 



 









 



 







 



 






  




 

#line 225 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


  



 




 



 

#line 248 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 








 



 






  



 

#line 286 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 




 



 

#line 333 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"


 



 







 



 







 



 






 



 

#line 424 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"



#line 451 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_sdio.h"





 



 







 



 

 
 
 
void SDIO_DeInit(void);

 
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_ClockCmd(FunctionalState NewState);
void SDIO_SetPowerState(uint32_t SDIO_PowerState);
uint32_t SDIO_GetPowerState(void);

 
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct);
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct);
uint8_t SDIO_GetCommandResponse(void);
uint32_t SDIO_GetResponse(uint32_t SDIO_RESP);

 
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
uint32_t SDIO_GetDataCounter(void);
uint32_t SDIO_ReadData(void);
void SDIO_WriteData(uint32_t Data);
uint32_t SDIO_GetFIFOCount(void);

 
void SDIO_StartSDIOReadWait(FunctionalState NewState);
void SDIO_StopSDIOReadWait(FunctionalState NewState);
void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode);
void SDIO_SetSDIOOperation(FunctionalState NewState);
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState);

 
void SDIO_CommandCompletionCmd(FunctionalState NewState);
void SDIO_CEATAITCmd(FunctionalState NewState);
void SDIO_SendCEATACmd(FunctionalState NewState);

 
void SDIO_DMACmd(FunctionalState NewState);

 
void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState);
FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG);
void SDIO_ClearFlag(uint32_t SDIO_FLAG);
ITStatus SDIO_GetITStatus(uint32_t SDIO_IT);
void SDIO_ClearITPendingBit(uint32_t SDIO_IT);









 



 

 
#line 74 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"



 



  

 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;

 



 

























 
  
#line 153 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

#line 237 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


  



 







 



 

#line 265 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  



 

#line 284 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  


 

#line 300 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 







 



 

#line 330 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"






 
            


 







 



 






 



 







 



 






 



 







 



 























 



 

#line 437 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"

#line 444 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 



 




 



 

#line 480 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_spi.h"


 
  


 

 
  

  
void SPI_I2S_DeInit(SPI_TypeDef* SPIx);

 
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_TIModeCmd(SPI_TypeDef* SPIx, FunctionalState NewState);

void I2S_FullDuplexConfig(SPI_TypeDef* I2Sxext, I2S_InitTypeDef* I2S_InitStruct);

  
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);

 
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);

 
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);

 
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);









 



 

 
#line 75 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"



 



  

 
 
  


  



  
#line 67 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"
                                      
#line 77 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


  




  
#line 117 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_syscfg.h"


  




  




   






  




  







  



  

 
  
 
void SYSCFG_DeInit(void);
void SYSCFG_MemoryRemapConfig(uint8_t SYSCFG_MemoryRemap);
void SYSCFG_EXTILineConfig(uint8_t EXTI_PortSourceGPIOx, uint8_t EXTI_PinSourcex);
void SYSCFG_ETH_MediaInterfaceConfig(uint32_t SYSCFG_ETH_MediaInterface); 
void SYSCFG_CompensationCellCmd(FunctionalState NewState); 
FlagStatus SYSCFG_GetCompensationCellStatus(void);









  



  

 
#line 76 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



 



  

 




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint32_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef; 



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint32_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;

 



 

#line 189 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                          
#line 202 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                     
 
#line 212 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
 
#line 219 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
 


 
#line 231 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
                                






 

#line 260 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 







  



 





                                 




                                 







  



 

#line 309 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 

#line 327 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

#line 451 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







 



 







  



 







  



 







  



 

#line 513 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 529 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 545 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 562 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"

#line 571 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 619 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 663 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 679 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  



 

#line 696 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 724 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  



  






 



 







  



 







  



 

#line 785 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  




 

#line 803 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"
  


  



 

#line 818 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  



 





                                     


  



 







  



 

#line 879 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 

#line 895 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


  



 







  


 














#line 937 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  


 

#line 969 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"



  



 




  



 




  



 

#line 1014 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_tim.h"


 



 

 
  

 
void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint32_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint32_t Autoreload);
uint32_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint32_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint32_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint32_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint32_t Compare4);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);

 
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
uint32_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint32_t TIM_GetCapture4(TIM_TypeDef* TIMx);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);

 
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);

 
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);

    
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);

 
void TIM_RemapConfig(TIM_TypeDef* TIMx, uint16_t TIM_Remap);









  



 

 
#line 77 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


























  

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"



 



  

  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            



 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;

 



  
  
#line 116 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"








  
  


                                    




  



  
  
#line 147 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  
  
#line 161 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  
  





  



  
#line 188 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
#line 255 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"



 



 

#line 276 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"


 



 







  



 







 



 
  







 



 







  



 

#line 348 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_usart.h"
                              








  



  

 
   

  
void USART_DeInit(USART_TypeDef* USARTx);

 
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);

  
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);

 
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendBreak(USART_TypeDef* USARTx);

 
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);

 
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);

 
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);









  



  

 
#line 78 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"



 



  

 
 



  
  


 
  
#line 69 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\stm32f4xx_wwdg.h"



  



  

 
 
  
   
void WWDG_DeInit(void);

 
void WWDG_SetPrescaler(uint32_t WWDG_Prescaler);
void WWDG_SetWindowValue(uint8_t WindowValue);
void WWDG_EnableIT(void);
void WWDG_SetCounter(uint8_t Counter);

 
void WWDG_Enable(uint8_t Counter);

 
FlagStatus WWDG_GetFlagStatus(void);
void WWDG_ClearFlag(void);









  



  

 
#line 79 "..\\inc\\stm32f4xx_conf.h"
#line 1 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"


























 

 







 
#line 39 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"



 



 

 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  


 

  uint8_t NVIC_IRQChannelSubPriority;         


 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 
 



 



 







 



 

#line 104 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"


 



 

#line 122 "..\\..\\libraries\\STM32F4xx_StdPeriph_Driver\\inc\\misc.h"















 



 







 



 

 
 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 

 
#line 80 "..\\inc\\stm32f4xx_conf.h"

 
 



 
   



 
 

 
#line 111 "..\\inc\\stm32f4xx_conf.h"



 
#line 6969 "..\\..\\libraries\\CMSIS\\Device\\ST\\STM32F4xx\\Include\\stm32f4xx.h"




 

















 









 

  

 

 
#line 34 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"




















 



















 
 







 
#line 1 "..\\inc\\stm32f4x7_eth_conf.h"



















 




















 
 







 
#line 52 "..\\inc\\stm32f4x7_eth_conf.h"

 
 

 




 


#line 70 "..\\inc\\stm32f4x7_eth_conf.h"


     


#line 82 "..\\inc\\stm32f4x7_eth_conf.h"


 
  

  

 



 



 





 






 




 



   
 
   








 

#line 52 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



 






  
typedef struct {


  
  uint32_t             ETH_AutoNegotiation;           


 

  uint32_t             ETH_Watchdog;                  


   

  uint32_t             ETH_Jabber;                    


 

  uint32_t             ETH_InterFrameGap;             
    

  uint32_t             ETH_CarrierSense;              
 

  uint32_t             ETH_Speed;                     
 

  uint32_t             ETH_ReceiveOwn;                


   

  uint32_t             ETH_LoopbackMode;              
   

  uint32_t             ETH_Mode;                      
   

  uint32_t             ETH_ChecksumOffload;           
     

  uint32_t             ETH_RetryTransmission;         

 

  uint32_t             ETH_AutomaticPadCRCStrip;      
  

  uint32_t             ETH_BackOffLimit;              
 

  uint32_t             ETH_DeferralCheck;             
                                                                                                         

  uint32_t             ETH_ReceiveAll;                
    

  uint32_t             ETH_SourceAddrFilter;          
                   

  uint32_t             ETH_PassControlFrames;         
  

  uint32_t             ETH_BroadcastFramesReception;  
 

  uint32_t             ETH_DestinationAddrFilter;     
  

  uint32_t             ETH_PromiscuousMode;           
 

  uint32_t             ETH_MulticastFramesFilter;     
  

  uint32_t             ETH_UnicastFramesFilter;       
  

  uint32_t             ETH_HashTableHigh;                  

  uint32_t             ETH_HashTableLow;                   

  uint32_t             ETH_PauseTime;                 
 

  uint32_t             ETH_ZeroQuantaPause;           
   

  uint32_t             ETH_PauseLowThreshold;         

 
                                                           
  uint32_t             ETH_UnicastPauseFrameDetect;   

   

  uint32_t             ETH_ReceiveFlowControl;        

 

  uint32_t             ETH_TransmitFlowControl;       

      

  uint32_t             ETH_VLANTagComparison;         

  

  uint32_t             ETH_VLANTagIdentifier;          



  

  uint32_t             ETH_DropTCPIPChecksumErrorFrame; 
  

  uint32_t             ETH_ReceiveStoreForward;         
  

  uint32_t             ETH_FlushReceivedFrame;          
  

  uint32_t             ETH_TransmitStoreForward;        
  

  uint32_t             ETH_TransmitThresholdControl;    
 

  uint32_t             ETH_ForwardErrorFrames;          
 

  uint32_t             ETH_ForwardUndersizedGoodFrames; 

 

  uint32_t             ETH_ReceiveThresholdControl;     
 

  uint32_t             ETH_SecondFrameOperate;          

 

  uint32_t             ETH_AddressAlignedBeats;         
 

  uint32_t             ETH_FixedBurst;                  
 
                       
  uint32_t             ETH_RxDMABurstLength;            
  

  uint32_t             ETH_TxDMABurstLength;            
                                                    

  uint32_t             ETH_DescriptorSkipLength;                                                                      

  uint32_t             ETH_DMAArbitration;              
   
}ETH_InitTypeDef;



  
typedef struct {
  uint32_t TimeStampLow;
  uint32_t TimeStampHigh;
} ETH_TimeStamp;

 


  
 



  
typedef struct  {
  volatile uint32_t   Status;                 
  uint32_t   ControlBufferSize;      
  uint32_t   Buffer1Addr;            
  uint32_t   Buffer2NextDescAddr;    
 

  uint32_t   ExtendedStatus;         
  uint32_t   Reserved1;              
  uint32_t   TimeStampLow;           
  uint32_t   TimeStampHigh;          

} ETH_DMADESCTypeDef;


typedef struct{
  u32 length;
  u32 buffer;
  volatile ETH_DMADESCTypeDef *descriptor;
}FrameTypeDef;


typedef struct  {
  volatile ETH_DMADESCTypeDef *FS_Rx_Desc;           
  volatile ETH_DMADESCTypeDef *LS_Rx_Desc;           
  volatile uint32_t  Seg_Count;                      
} ETH_DMA_Rx_Frame_infos;
  



 



  
 
 


  
 



  
#line 300 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

 












  
   

     




  





 












  
   

   




  






 


  
 














 



  
#line 409 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



  





  




  


  



 

 


 




  




 














 



  
#line 484 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



  








  




  










 

 
#line 534 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

 


 



 


  
 



 



  





 



  









 



  
#line 589 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  






 

 


  
 



  







 



  







 



  







 



  
#line 666 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  







 



  







 



  







 



  







 



  







 



  







 



  







 



  







 



  
#line 778 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



 







 



  







 



  
#line 816 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  
#line 830 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  







 



  







 



  







 



  
#line 882 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"
                                                     



 



  
#line 897 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  




 



  






 



  
#line 933 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  







 



  







 



  







 



  








 



  
#line 998 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  
#line 1014 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  
#line 1032 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  






 



  
#line 1062 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

 


  
 


 



  
#line 1099 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  







 



  
#line 1127 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


  




 



  
#line 1157 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

 
#line 1168 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  





 


  
 


 



  






 



  






 



  






 



  






 



  
#line 1253 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  






 



  







 



  
#line 1291 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  







 



  







 



  







 



  
#line 1346 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

#line 1359 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"
 


 



  
#line 1379 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

#line 1392 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


  




 



  
#line 1414 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  
#line 1442 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

#line 1455 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  
#line 1480 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

#line 1491 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  
#line 1505 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



  




  
#line 1520 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



 



  





 


  
 


 



  






 


  
 


 



  






 



 
#line 1582 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"


 



  
#line 1600 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



  
#line 1610 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

 


  
 


 



  







  




  








#line 1650 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



  




  




  







  




  
#line 1686 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"











  











 
#line 1716 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"

#line 1723 "..\\..\\libraries\\STM32F4x7_ETH_Driver\\inc\\stm32f4x7_eth.h"



  
 



 


 


 



 



 


 


 


 


 


 


 





 



  


 



  
void ETH_DeInit(void);
uint32_t ETH_Init(ETH_InitTypeDef* ETH_InitStruct, uint16_t PHYAddress);
void ETH_StructInit(ETH_InitTypeDef* ETH_InitStruct);
void ETH_SoftwareReset(void);
FlagStatus ETH_GetSoftwareResetStatus(void);
void  ETH_Start(void);
void ETH_Stop(void);
uint32_t ETH_GetRxPktSize(ETH_DMADESCTypeDef *DMARxDesc);


 void ETH_EnhancedDescriptorCmd(FunctionalState NewState);




  
uint16_t ETH_ReadPHYRegister(uint16_t PHYAddress, uint16_t PHYReg);
uint32_t ETH_WritePHYRegister(uint16_t PHYAddress, uint16_t PHYReg, uint16_t PHYValue);
uint32_t ETH_PHYLoopBackCmd(uint16_t PHYAddress, FunctionalState NewState);



  
void ETH_MACTransmissionCmd(FunctionalState NewState);
void ETH_MACReceptionCmd(FunctionalState NewState);
FlagStatus ETH_GetFlowControlBusyStatus(void);
void ETH_InitiatePauseControlFrame(void);  
void ETH_BackPressureActivationCmd(FunctionalState NewState); 
FlagStatus ETH_GetMACFlagStatus(uint32_t ETH_MAC_FLAG);  
ITStatus ETH_GetMACITStatus(uint32_t ETH_MAC_IT);
void ETH_MACITConfig(uint32_t ETH_MAC_IT, FunctionalState NewState);
void ETH_MACAddressConfig(uint32_t MacAddr, uint8_t *Addr);
void ETH_GetMACAddress(uint32_t MacAddr, uint8_t *Addr);
void ETH_MACAddressPerfectFilterCmd(uint32_t MacAddr, FunctionalState NewState);
void ETH_MACAddressFilterConfig(uint32_t MacAddr, uint32_t Filter);
void ETH_MACAddressMaskBytesFilterConfig(uint32_t MacAddr, uint32_t MaskByte);



  
void ETH_DMARxDescChainInit(ETH_DMADESCTypeDef *DMARxDescTab, uint8_t *RxBuff, uint32_t RxBuffCount);
void ETH_DMATxDescChainInit(ETH_DMADESCTypeDef *DMATxDescTab, uint8_t* TxBuff, uint32_t TxBuffCount);
uint32_t ETH_CheckFrameReceived(void);
uint32_t ETH_Prepare_Transmit_Descriptors(u16 FrameLength);
uint32_t ETH_Prepare_Transmit_Descriptors_TimeStamp(u16 FrameLength, ETH_TimeStamp *TimeStamp);
FrameTypeDef ETH_Get_Received_Frame(void);
FlagStatus ETH_GetDMATxDescFlagStatus(ETH_DMADESCTypeDef *DMATxDesc, uint32_t ETH_DMATxDescFlag);
uint32_t ETH_GetDMATxDescCollisionCount(ETH_DMADESCTypeDef *DMATxDesc);
void ETH_SetDMATxDescOwnBit(ETH_DMADESCTypeDef *DMATxDesc);
void ETH_DMATxDescTransmitITConfig(ETH_DMADESCTypeDef *DMATxDesc, FunctionalState NewState);
void ETH_DMATxDescFrameSegmentConfig(ETH_DMADESCTypeDef *DMATxDesc, uint32_t DMATxDesc_FrameSegment);
void ETH_DMATxDescChecksumInsertionConfig(ETH_DMADESCTypeDef *DMATxDesc, uint32_t DMATxDesc_Checksum);
void ETH_DMATxDescCRCCmd(ETH_DMADESCTypeDef *DMATxDesc, FunctionalState NewState);
void ETH_DMATxDescSecondAddressChainedCmd(ETH_DMADESCTypeDef *DMATxDesc, FunctionalState NewState);
void ETH_DMATxDescShortFramePaddingCmd(ETH_DMADESCTypeDef *DMATxDesc, FunctionalState NewState);
void ETH_DMATxDescBufferSizeConfig(ETH_DMADESCTypeDef *DMATxDesc, uint32_t BufferSize1, uint32_t BufferSize2);
FlagStatus ETH_GetDMARxDescFlagStatus(ETH_DMADESCTypeDef *DMARxDesc, uint32_t ETH_DMARxDescFlag);

 FlagStatus ETH_GetDMAPTPRxDescExtendedFlagStatus(ETH_DMADESCTypeDef *DMAPTPRxDesc, uint32_t ETH_DMAPTPRxDescExtendedFlag);

void ETH_SetDMARxDescOwnBit(ETH_DMADESCTypeDef *DMARxDesc);
uint32_t ETH_GetDMARxDescFrameLength(ETH_DMADESCTypeDef *DMARxDesc);
void ETH_DMARxDescReceiveITConfig(ETH_DMADESCTypeDef *DMARxDesc, FunctionalState NewState);
void ETH_DMARxDescSecondAddressChainedCmd(ETH_DMADESCTypeDef *DMARxDesc, FunctionalState NewState);
uint32_t ETH_GetDMARxDescBufferSize(ETH_DMADESCTypeDef *DMARxDesc, uint32_t DMARxDesc_Buffer);
FrameTypeDef ETH_Get_Received_Frame_interrupt(void);


  
FlagStatus ETH_GetDMAFlagStatus(uint32_t ETH_DMA_FLAG);
void ETH_DMAClearFlag(uint32_t ETH_DMA_FLAG);
ITStatus ETH_GetDMAITStatus(uint32_t ETH_DMA_IT);
void ETH_DMAClearITPendingBit(uint32_t ETH_DMA_IT);
uint32_t ETH_GetTransmitProcessState(void);
uint32_t ETH_GetReceiveProcessState(void);
void ETH_FlushTransmitFIFO(void);
FlagStatus ETH_GetFlushTransmitFIFOStatus(void);
void ETH_DMATransmissionCmd(FunctionalState NewState);
void ETH_DMAReceptionCmd(FunctionalState NewState);
void ETH_DMAITConfig(uint32_t ETH_DMA_IT, FunctionalState NewState);
FlagStatus ETH_GetDMAOverflowStatus(uint32_t ETH_DMA_Overflow);
uint32_t ETH_GetRxOverflowMissedFrameCounter(void);
uint32_t ETH_GetBufferUnavailableMissedFrameCounter(void);
uint32_t ETH_GetCurrentTxDescStartAddress(void);
uint32_t ETH_GetCurrentRxDescStartAddress(void);
uint32_t ETH_GetCurrentTxBufferAddress(void);
uint32_t ETH_GetCurrentRxBufferAddress(void);
void ETH_ResumeDMATransmission(void);
void ETH_ResumeDMAReception(void);
void ETH_SetReceiveWatchdogTimer(uint8_t Value);




  
void ETH_ResetWakeUpFrameFilterRegisterPointer(void);
void ETH_SetWakeUpFrameFilterRegister(uint32_t *Buffer);
void ETH_GlobalUnicastWakeUpCmd(FunctionalState NewState);
FlagStatus ETH_GetPMTFlagStatus(uint32_t ETH_PMT_FLAG);
void ETH_WakeUpFrameDetectionCmd(FunctionalState NewState);
void ETH_MagicPacketDetectionCmd(FunctionalState NewState);
void ETH_PowerDownCmd(FunctionalState NewState);



  
void ETH_MMCCounterFullPreset(void);
void ETH_MMCCounterHalfPreset(void);
void ETH_MMCCounterFreezeCmd(FunctionalState NewState);
void ETH_MMCResetOnReadCmd(FunctionalState NewState);
void ETH_MMCCounterRolloverCmd(FunctionalState NewState);
void ETH_MMCCountersReset(void);
void ETH_MMCITConfig(uint32_t ETH_MMC_IT, FunctionalState NewState);
ITStatus ETH_GetMMCITStatus(uint32_t ETH_MMC_IT);
uint32_t ETH_GetMMCRegister(uint32_t ETH_MMCReg);



  
void ETH_EnablePTPTimeStampAddend(void);
void ETH_EnablePTPTimeStampInterruptTrigger(void);
void ETH_EnablePTPTimeStampUpdate(void);
void ETH_InitializePTPTimeStamp(void);
void ETH_PTPUpdateMethodConfig(uint32_t UpdateMethod);
void ETH_PTPTimeStampCmd(FunctionalState NewState);
FlagStatus ETH_GetPTPFlagStatus(uint32_t ETH_PTP_FLAG);
void ETH_SetPTPSubSecondIncrement(uint32_t SubSecondValue);
void ETH_SetPTPTimeStampUpdate(uint32_t Sign, uint32_t SecondValue, uint32_t SubSecondValue);
void ETH_SetPTPTimeStampAddend(uint32_t Value);
void ETH_SetPTPTargetTime(uint32_t HighValue, uint32_t LowValue);
uint32_t ETH_GetPTPRegister(uint32_t ETH_PTPReg);








  




  

 
#line 35 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\limits.h"
 
 
 





 






     

     

     

     
#line 30 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\limits.h"
       

       






#line 45 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\limits.h"
     
     


     

     

     

     

     

     





     





     





     


       

       

       




 

#line 36 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\inc\\main.h"




















 





















 
 







 
#line 54 "..\\inc\\main.h"
#line 1 "..\\inc\\stm32f4x7_eth_bsp.h"



















 




















 
 







 
#line 52 "..\\inc\\stm32f4x7_eth_bsp.h"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"




















  





















     
 






                                              
 
#line 54 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"
   


 
  


 
      


  



 
typedef enum 
{
  LED4 = 0,
  LED3 = 1,
  LED5 = 2,
  LED6 = 3
} Led_TypeDef;

typedef enum 
{  
  BUTTON_USER = 0,
} Button_TypeDef;

typedef enum 
{  
  BUTTON_MODE_GPIO = 0,
  BUTTON_MODE_EXTI = 1
} ButtonMode_TypeDef; 

typedef enum 
{
  COM1 = 0,
  COM2 = 1,
  COM3 = 2,
  COM4 = 3,
  COM5 = 4,
  COM6 = 5,
} COM_TypeDef; 
    


  



  



 





  



  



  





  
  


   




 
#line 146 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"


  



 



  
#line 170 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



 
#line 187 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



 
#line 204 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



  	  




  


 



   



 



 




 



#line 257 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery.h"



   


  




 
void STM_EVAL_LEDInit(Led_TypeDef Led);
void STM_EVAL_LEDOn(Led_TypeDef Led);
void STM_EVAL_LEDOff(Led_TypeDef Led);
void STM_EVAL_LEDToggle(Led_TypeDef Led);

void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode);
uint32_t STM_EVAL_PBGetState(Button_TypeDef Button);

void STM_EVAL_COMInit(COM_TypeDef COM, USART_InitTypeDef* USART_InitStruct);

void SD_LowLevel_DeInit(void);
void SD_LowLevel_Init(void); 
void SD_LowLevel_DMA_TxConfig(uint32_t *BufferSRC, uint32_t BufferSize);
void SD_LowLevel_DMA_RxConfig(uint32_t *BufferDST, uint32_t BufferSize);


 
  







  



  



 

 

 
#line 53 "..\\inc\\stm32f4x7_eth_bsp.h"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"




















  





















 

 







 
#line 55 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"
#line 1 "..\\..\\libraries\\STM32F4-Discovery\\fonts.h"



















  

 







 
#line 32 "..\\..\\libraries\\STM32F4-Discovery\\fonts.h"



 
  


  



 



  



  
typedef struct _tFont
{    
  const uint16_t *table;
  uint16_t Width;
  uint16_t Height;
  
} sFONT;

extern sFONT Font16x24;
extern sFONT Font12x12;
extern sFONT Font8x12;
extern sFONT Font8x8;



  



  




  



  


  



  


 




  

 


 



  



 



 



       

 
#line 56 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



 



  



 
    


  




 
typedef struct 
{
  int16_t X;
  int16_t Y;
} Point, * pPoint;   


  




 
#line 126 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"







 






 


#line 167 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



  





 
 

#line 186 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



  
#line 200 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"

#line 207 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



 
#line 241 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"

#line 252 "..\\..\\libraries\\STM32F4-Discovery\\stm32f4_discovery_lcd.h"



  




  





  





  



 



  



  


 
void LCD_DeInit(void);   
void STM32f4_Discovery_LCD_Init(void);
void LCD_RGB_Test(void);
void LCD_SetColors(volatile uint16_t _TextColor, volatile uint16_t _BackColor); 
void LCD_GetColors(volatile uint16_t *_TextColor, volatile uint16_t *_BackColor);
void LCD_SetTextColor(volatile uint16_t Color);
void LCD_SetBackColor(volatile uint16_t Color);
void LCD_ClearLine(uint16_t Line);
void LCD_Clear(uint16_t Color);
void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos);
void LCD_DrawChar(uint16_t Xpos, uint16_t Ypos, const uint16_t *c);
void LCD_DisplayChar(uint16_t Line, uint16_t Column, uint8_t Ascii);
void LCD_SetFont(sFONT *fonts);
sFONT *LCD_GetFont(void);
void LCD_DisplayStringLine(uint16_t Line, uint8_t *ptr);
void LCD_SetDisplayWindow(uint16_t Xpos, uint16_t Ypos, uint16_t Height, uint16_t Width);
void LCD_WindowModeDisable(void);
void LCD_DrawLine(uint16_t Xpos, uint16_t Ypos, uint16_t Length, uint8_t Direction);
void LCD_DrawRect(uint16_t Xpos, uint16_t Ypos, uint8_t Height, uint16_t Width);
void LCD_DrawCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius);
void LCD_DrawMonoPict(const uint32_t *Pict);
void LCD_WriteBMP(uint32_t BmpAddress);
void LCD_DrawUniLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void LCD_DrawFullRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height);
void LCD_DrawFullCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius);
void LCD_PolyLine(pPoint Points, uint16_t PointCount);
void LCD_PolyLineRelative(pPoint Points, uint16_t PointCount);
void LCD_ClosedPolyLine(pPoint Points, uint16_t PointCount);
void LCD_ClosedPolyLineRelative(pPoint Points, uint16_t PointCount);
void LCD_FillPolyLine(pPoint Points, uint16_t PointCount);


  



  
void LCD_WriteReg(uint8_t LCD_Reg, uint16_t LCD_RegValue);
uint16_t LCD_ReadReg(uint8_t LCD_Reg);
void LCD_WriteRAM_Prepare(void);
void LCD_WriteRAM(uint16_t RGB_Code);
uint16_t LCD_ReadRAM(void);
void LCD_PowerOn(void);
void LCD_DisplayOn(void);
void LCD_DisplayOff(void);


  



  
void LCD_CtrlLinesConfig(void);
void LCD_FSMCConfig(void);


 


     







  



  



  



  

 
#line 54 "..\\inc\\stm32f4x7_eth_bsp.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"






























 



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/opt.h"




 































 






 
#line 1 "..\\inc\\lwipopts.h"



#line 5 "..\\inc\\lwipopts.h"
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





 


 



 


 



 


 






 



 


 



 


 






 







 








 

 











 







 





 




 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 






 






 






 






 






 






 






 






 






 






 






 






 






 






 




#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"



#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"






 



typedef s8_t err_t;


 

#line 62 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/err.h"














extern const char *lwip_strerr(err_t err);








#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"

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





#line 42 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"

#line 44 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"
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





#line 45 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"

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
#line 170 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"
  
 
  void *state;

   
  struct dhcp *dhcp;
#line 185 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"
   
  u16_t mtu;
   
  u8_t hwaddr_len;
   
  u8_t hwaddr[6U];
   
  u8_t flags;
   
  char name[2];
   
  u8_t num;
#line 215 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"
  
 
  netif_igmp_mac_filter_fn igmp_mac_filter;
#line 230 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"
};

#line 250 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"


 
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
 


#line 290 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"

void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
  
















#line 317 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip\\netif.h"











#line 55 "..\\inc\\stm32f4x7_eth_bsp.h"

 
 


	 
 




 




    



 
 
void  ETH_BSP_Config(void);
uint32_t Eth_Link_PHYITConfig(uint16_t PHYAddress);
void Eth_Link_EXTIConfig(void);
void Eth_Link_ITHandler(uint16_t PHYAddress);
void ETH_link_callback(struct netif *netif);








 
#line 55 "..\\inc\\main.h"

 
 


 
 
#line 68 "..\\inc\\main.h"
 
 




   
 





 





 


 
   
void Time_Update(void);
void Delay(uint32_t nCount);









 

#line 37 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"


















































 












































































 















#line 152 "..\\..\\libraries\\rtx-v4.73\\INC\\cmsis_os.h"







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






#line 38 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 39 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
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
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"





#line 76 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"

 




 


#line 86 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/sys.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/sys_arch.h"
















 



#line 22 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch/sys_arch.h"
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







#line 40 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"
#line 37 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"
#line 38 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\ipv4\\lwip/inet.h"





 
struct in_addr {
  u32_t s_addr;
};

 

 

 

 





 

































 


 









#line 41 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
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





 







 






 








#line 42 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"






























 



#line 36 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"



#line 40 "..\\..\\libraries\\lwip-1.4.1\\src\\include\\lwip/udp.h"
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













#line 43 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
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







#line 44 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 45 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
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







#line 46 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch\\ethernetif.h"



#line 5 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch\\ethernetif.h"
#line 6 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch\\ethernetif.h"
#line 7 "..\\..\\libraries\\lwip-1.4.1\\port\\STM32F4x7\\arch\\ethernetif.h"

struct ptptime_t {
  s32_t tv_sec;
  s32_t tv_nsec;
};

err_t ethernetif_init(struct netif *netif);


void ETH_PTPTime_SetTime(struct ptptime_t * timestamp);
void ETH_PTPTime_GetTime(struct ptptime_t * timestamp);
void ETH_PTPTime_UpdateOffset(struct ptptime_t * timeoffset);
void ETH_PTPTime_AdjFreq(int32_t Adj);
















 
















 






#line 47 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"

#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\constants.h"









 

 





 
#line 52 "..\\..\\libraries\\ptpd-2.0.0\\src\\constants.h"





 








 
 
#line 78 "..\\..\\libraries\\ptpd-2.0.0\\src\\constants.h"
 

 


 

enum
{
		DFLT_DOMAIN_NUMBER = 0,
		ALT1_DOMAIN_NUMBER,
		ALT2_DOMAIN_NUMBER,
		ALT3_DOMAIN_NUMBER
};


 
enum
{
		UDP_IPV4 = 1,
		UDP_IPV6,
		IEE_802_3,
		DeviceNet,
		ControlNet,
		PROFINET
};


 
enum
{
	ATOMIC_CLOCK = 0x10,
	GPS = 0x20,
	TERRESTRIAL_RADIO = 0x30,
	PTP = 0x40,
	NTP = 0x50,
	HAND_SET = 0x60,
	OTHER = 0x90,
	INTERNAL_OSCILLATOR = 0xA0
};



 
enum
{
	PTP_INITIALIZING = 0,
	PTP_FAULTY,
	PTP_DISABLED,
	PTP_LISTENING,
	PTP_PRE_MASTER,
	PTP_MASTER,
	PTP_PASSIVE,
	PTP_UNCALIBRATED,
	PTP_SLAVE
};



 
enum
{
	E2E = 1,
	P2P = 2,
	DELAY_DISABLED = 0xFE
};



 
enum
{
	PDELAYREQ_INTERVAL_TIMER = 0, 
	DELAYREQ_INTERVAL_TIMER, 
	SYNC_INTERVAL_TIMER, 
	ANNOUNCE_RECEIPT_TIMER, 
	ANNOUNCE_INTERVAL_TIMER,  
	QUALIFICATION_TIMEOUT,
	TIMER_ARRAY_SIZE   
};



 
enum
{
	SYNC = 0x0,
	DELAY_REQ,
	PDELAY_REQ,
	PDELAY_RESP,
	FOLLOW_UP = 0x8,
	DELAY_RESP,
	PDELAY_RESP_FOLLOW_UP,
	ANNOUNCE,
	SIGNALING,
	MANAGEMENT,
};



 
enum
{
	CTRL_SYNC = 0x00,
	CTRL_DELAY_REQ,
	CTRL_FOLLOW_UP,
	CTRL_DELAY_RESP,
	CTRL_MANAGEMENT,
	CTRL_OTHER,
};



 

enum
{
	PTP_NO_STATS = 0,
	PTP_TEXT_STATS,
	PTP_CSV_STATS  
};



 

enum
{
	FLAG0_ALTERNATE_MASTER = 0x01,
	FLAG0_TWO_STEP = 0x02,
	FLAG0_UNICAST = 0x04,
	FLAG0_PTP_PROFILE_SPECIFIC_1 = 0x20,
	FLAG0_PTP_PROFILE_SPECIFIC_2 = 0x40,
	FLAG0_SECURITY = 0x80,
};



 

 enum
{
	FLAG1_LEAP61 = 0x01,
	FLAG1_LEAP59 = 0x02,
	FLAG1_UTC_OFFSET_VALID = 0x04,
	FLAG1_PTP_TIMESCALE = 0x08,
	FLAG1_TIME_TRACEABLE = 0x10,
	FLAG1_FREQUENCY_TRACEABLE = 0x20,
};



 

enum
{
	POWERUP = 0x0001,
	INITIALIZE = 0x0002,
	DESIGNATED_ENABLED = 0x0004,
	DESIGNATED_DISABLED = 0x0008,
	FAULT_CLEARED = 0x0010,
	FAULT_DETECTED = 0x0020,
	STATE_DECISION_EVENT = 0x0040,
	QUALIFICATION_TIMEOUT_EXPIRES = 0x0080,
	ANNOUNCE_RECEIPT_TIMEOUT_EXPIRES = 0x0100,
	SYNCHRONIZATION_FAULT = 0x0200,
	MASTER_CLOCK_SELECTED = 0x0400,
	 
	MASTER_CLOCK_CHANGED = 0x0800,
};



 

enum
{
	ARB_TIMESCALE,
	PTP_TIMESCALE
};

#line 49 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/constants_dep.h"

 










 

 



























 





 

















 



 






#line 50 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/datatypes_dep.h"






typedef unsigned char enum4bit_t;


typedef unsigned char enum8bit_t;


typedef unsigned short enum16bit_t;


typedef unsigned char uint4bit_t; 


typedef struct
{
	unsigned int lsb;
	unsigned short msb;
} uint48bit_t;


typedef unsigned char nibble_t;


typedef char octet_t; 









typedef struct
{
	int32_t   y_prev;
	int32_t   y_sum;
	int16_t   s;
	int16_t   s_prev;
	int32_t n;
} Filter;


typedef struct
{
	void      *pbuf[4];
	int16_t   head;
	int16_t   tail;
	sys_mutex_t mutex;
} BufQueue;


typedef struct
{
	int32_t   multicastAddr;
	int32_t   peerMulticastAddr;
	int32_t   unicastAddr;

	struct udp_pcb    *eventPcb;
	struct udp_pcb    *generalPcb;

	BufQueue    eventQ;
	BufQueue    generalQ;
} NetPath;



typedef long ssize_t;
#line 81 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/datatypes_dep.h"

#line 51 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\datatypes.h"









 





 

typedef struct
{
		int64_t scaledNanoseconds;
} TimeInterval;



 

typedef struct
{
		uint48bit_t secondsField;
		uint32_t nanosecondsField;
} Timestamp;



 
typedef octet_t ClockIdentity[8];



 

typedef struct
{
		ClockIdentity clockIdentity;
		int16_t portNumber;
} PortIdentity;



 

 typedef struct
{
		enum16bit_t networkProtocol;
		int16_t adressLength;
		octet_t* adressField;
} PortAdress;



 

typedef struct
{
		uint8_t clockClass;
		enum8bit_t clockAccuracy;
		int16_t offsetScaledLogVariance;
} ClockQuality;



 

typedef struct
{
		enum16bit_t tlvType;
		int16_t lengthField;
		octet_t* valueField;
} TLV;




 

typedef struct
{
		uint8_t lengthField;
		octet_t* textField;
} PTPText;



 

typedef struct
{
		int16_t faultRecordLength;
		Timestamp faultTime;
		enum8bit_t severityCode;
		PTPText faultName;
		PTPText faultValue;
		PTPText faultDescription;
} FaultRecord;




 

typedef struct
{
		nibble_t transportSpecific;
		enum4bit_t messageType;
		uint4bit_t  versionPTP;
		int16_t messageLength;
		uint8_t domainNumber;
		octet_t flagField[2];
		int64_t correctionfield;
		PortIdentity sourcePortIdentity;
		int16_t sequenceId;
		uint8_t controlField;
		int8_t logMessageInterval;
} MsgHeader;




 

typedef struct
{
		Timestamp originTimestamp;
		int16_t currentUtcOffset;
		uint8_t grandmasterPriority1;
		ClockQuality grandmasterClockQuality;
		uint8_t grandmasterPriority2;
		ClockIdentity grandmasterIdentity;
		int16_t stepsRemoved;
		enum8bit_t timeSource;
}MsgAnnounce;




 

typedef struct
{
		Timestamp originTimestamp;
}MsgSync;



 

typedef struct
{
		Timestamp originTimestamp;
}MsgDelayReq;



 

typedef struct
{
		Timestamp receiveTimestamp;
		PortIdentity requestingPortIdentity;
}MsgDelayResp;



 

typedef struct
{
		Timestamp preciseOriginTimestamp;
}MsgFollowUp;



 

typedef struct
{
		Timestamp originTimestamp;

}MsgPDelayReq;



 

typedef struct
{
		Timestamp requestReceiptTimestamp;
		PortIdentity requestingPortIdentity;
}MsgPDelayResp;



 

typedef struct
{
		Timestamp responseOriginTimestamp;
		PortIdentity requestingPortIdentity;
}MsgPDelayRespFollowUp;



 

typedef struct
{
		PortIdentity targetPortIdentity;
		char* tlv;
}MsgSignaling;



 

typedef struct
{
		PortIdentity targetPortIdentity;
		uint8_t startingBoundaryHops;
		uint8_t boundaryHops;
		enum4bit_t actionField;
		char* tlv;
}MsgManagement;




 

typedef struct
{
		int32_t seconds;
		int32_t nanoseconds;
} TimeInternal;



 

typedef struct
{
		PortIdentity foreignMasterPortIdentity;
		int16_t foreignMasterAnnounceMessages;

		 
		MsgAnnounce  announce;
		MsgHeader    header;

} ForeignMasterRecord;





 

typedef struct
{
		_Bool  twoStepFlag;
		ClockIdentity clockIdentity;  
		int16_t numberPorts;   
		ClockQuality clockQuality;  
		uint8_t priority1;  
		uint8_t priority2;  
		uint8_t domainNumber;
		_Bool  slaveOnly;
} DefaultDS;





 

typedef struct
{
		int16_t stepsRemoved;
		TimeInternal offsetFromMaster;
		TimeInternal meanPathDelay;
} CurrentDS;





 

typedef struct
{
		PortIdentity parentPortIdentity;
		 
		_Bool  parentStats;  
		int16_t observedParentOffsetScaledLogVariance;  
		int32_t observedParentClockPhaseChangeRate;  

		ClockIdentity grandmasterIdentity;
		ClockQuality grandmasterClockQuality;
		uint8_t grandmasterPriority1;
		uint8_t grandmasterPriority2;
} ParentDS;




 

 typedef struct
{
		int16_t currentUtcOffset;
		_Bool  currentUtcOffsetValid;
		_Bool  leap59;
		_Bool  leap61;
		_Bool  timeTraceable;
		_Bool  frequencyTraceable;
		_Bool  ptpTimescale;
		enum8bit_t timeSource;  
} TimePropertiesDS;





 

 typedef struct
{
		PortIdentity portIdentity;
		enum8bit_t portState;
		int8_t logMinDelayReqInterval;  
		TimeInternal peerMeanPathDelay;
		int8_t logAnnounceInterval;  
		uint8_t announceReceiptTimeout;  
		int8_t logSyncInterval;  
		enum8bit_t delayMechanism;
		int8_t logMinPdelayReqInterval;  
		uint4bit_t  versionNumber;
} PortDS;





 

typedef struct
{
		ForeignMasterRecord *records;

		 
		int16_t count;
		int16_t  capacity;
		int16_t  i;
		int16_t  best;
} ForeignMasterDS;




 

typedef struct
{
		_Bool  noResetClock;
		_Bool  noAdjust;
		int16_t ap, ai;
		int16_t sDelay;
		int16_t sOffset;
} Servo;




 

typedef struct
{
		int8_t  announceInterval;
		int8_t  syncInterval;
		ClockQuality clockQuality;
		uint8_t  priority1;
		uint8_t  priority2;
		uint8_t  domainNumber;
		_Bool   slaveOnly;
		int16_t  currentUtcOffset;
		octet_t   ifaceName[2];
		enum8bit_t stats;
		octet_t   unicastAddress[16];
		TimeInternal  inboundLatency, outboundLatency;
		int16_t   maxForeignRecords;
		enum8bit_t  delayMechanism;
	Servo servo;
} RunTimeOpts;




 
 

typedef struct
{

	DefaultDS defaultDS;  
	CurrentDS currentDS;  
	ParentDS parentDS;  
	TimePropertiesDS timePropertiesDS;  
	PortDS portDS;  
	ForeignMasterDS foreignMasterDS;  

		MsgHeader msgTmpHeader;  

		union
		{
				MsgSync  sync;
				MsgFollowUp  follow;
				MsgDelayReq  req;
				MsgDelayResp resp;
				MsgPDelayReq  preq;
				MsgPDelayResp  presp;
				MsgPDelayRespFollowUp  prespfollow;
				MsgManagement  manage;
				MsgAnnounce  announce;
				MsgSignaling signaling;
		} msgTmp;  


		octet_t msgObuf[300];  
		octet_t msgIbuf[300];  
		ssize_t msgIbufLength;  

		TimeInternal Tms;  
		TimeInternal Tsm;  

	TimeInternal pdelay_t1;  
	TimeInternal pdelay_t2;  
	TimeInternal pdelay_t3;  
	TimeInternal pdelay_t4;  

		TimeInternal timestamp_syncRecieve;  
		TimeInternal timestamp_delayReqSend;  
		TimeInternal timestamp_delayReqRecieve;  

		TimeInternal correctionField_sync;  
		TimeInternal correctionField_pDelayResp;  

		   

		int16_t sentPDelayReqSequenceId;
		int16_t sentDelayReqSequenceId;
		int16_t sentSyncSequenceId;
		int16_t sentAnnounceSequenceId;

		int16_t recvPDelayReqSequenceId;
		int16_t recvSyncSequenceId;

		_Bool   waitingForFollowUp;  
	_Bool   waitingForPDelayRespFollowUp;  

		Filter  ofm_filt;  
		Filter  owd_filt;  
	Filter  slv_filt;  
	int16_t offsetHistory[2];
		int32_t  observedDrift;

		_Bool  messageActivity;

		NetPath netPath;

		enum8bit_t recommendedState;

		octet_t portUuidField[6U];  

		TimeInternal  inboundLatency, outboundLatency;

	Servo servo;

		int32_t  events;

		enum8bit_t  stats;

		RunTimeOpts * rtOpts;

} PtpClock;

#line 52 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"
#line 1 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/ptpd_dep.h"



 
 

#line 15 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/ptpd_dep.h"

#line 23 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/ptpd_dep.h"

#line 30 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/ptpd_dep.h"
 

 
 
#line 40 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/ptpd_dep.h"
 

 
 

#line 52 "..\\..\\libraries\\ptpd-2.0.0\\src\\dep/ptpd_dep.h"





 
















 

 


 
 



 
 
 
 


 
 

void msgUnpackHeader(const octet_t*, MsgHeader*);
void msgUnpackAnnounce(const octet_t*, MsgAnnounce*);
void msgUnpackSync(const octet_t*, MsgSync*);
void msgUnpackFollowUp(const octet_t*, MsgFollowUp*);
void msgUnpackDelayReq(const octet_t*, MsgDelayReq*);
void msgUnpackDelayResp(const octet_t*, MsgDelayResp*);
void msgUnpackPDelayReq(const octet_t*, MsgPDelayReq*);
void msgUnpackPDelayResp(const octet_t*, MsgPDelayResp*);
void msgUnpackPDelayRespFollowUp(const octet_t*, MsgPDelayRespFollowUp*);
void msgUnpackManagement(const octet_t*, MsgManagement*);
void msgUnpackManagementPayload(const octet_t *buf, MsgManagement *manage);
void msgPackHeader(const PtpClock*, octet_t*);
void msgPackAnnounce(const PtpClock*, octet_t*);
void msgPackSync(const PtpClock*, octet_t*, const Timestamp*);
void msgPackFollowUp(const PtpClock*, octet_t*, const Timestamp*);
void msgPackDelayReq(const PtpClock*, octet_t*, const Timestamp*);
void msgPackDelayResp(const PtpClock*, octet_t*, const MsgHeader*, const Timestamp*);
void msgPackPDelayReq(const PtpClock*, octet_t*, const Timestamp*);
void msgPackPDelayResp(octet_t*, const MsgHeader*, const Timestamp*);
void msgPackPDelayRespFollowUp(octet_t*, const MsgHeader*, const Timestamp*);
int16_t msgPackManagement(const PtpClock*,  octet_t*, const MsgManagement*);
int16_t msgPackManagementResponse(const PtpClock*,  octet_t*, MsgHeader*, const MsgManagement*);
 


 
 

_Bool  netInit(NetPath*, PtpClock*);
_Bool  netShutdown(NetPath*);
int32_t netSelect(NetPath*, const TimeInternal*);
ssize_t netRecvEvent(NetPath*, octet_t*, TimeInternal*);
ssize_t netRecvGeneral(NetPath*, octet_t*, TimeInternal*);
ssize_t netSendEvent(NetPath*, const octet_t*, int16_t, TimeInternal*);
ssize_t netSendGeneral(NetPath*, const octet_t*, int16_t);
ssize_t netSendPeerGeneral(NetPath*, const octet_t*, int16_t);
ssize_t netSendPeerEvent(NetPath*, const octet_t*, int16_t, TimeInternal*);
void netEmptyEventQ(NetPath *netPath);
 


 
 

void initClock(PtpClock*);
void updatePeerDelay(PtpClock*, const TimeInternal*, _Bool);
void updateDelay(PtpClock*, const TimeInternal*, const TimeInternal*, const TimeInternal*);
void updateOffset(PtpClock *, const TimeInternal*, const TimeInternal*, const TimeInternal*);
void updateClock(PtpClock*);
 


 
 
int16_t ptpdStartup(PtpClock*, RunTimeOpts*, ForeignMasterRecord*);
void ptpdShutdown(PtpClock *);
 


 
 
void displayStats(const PtpClock *ptpClock);
_Bool  nanoSleep(const TimeInternal*);
void getTime(TimeInternal*);
void setTime(const TimeInternal*);
void updateTime(const TimeInternal*);
_Bool  adjFreq(int32_t);
uint32_t getRand(uint32_t);
 


 
 
void initTimer(void);
void timerStop(int32_t);
void timerStart(int32_t,  uint32_t);
_Bool timerExpired(int32_t);
 


 


#line 53 "..\\..\\libraries\\ptpd-2.0.0\\src\\ptpd.h"


 
 
 



 
void scaledNanosecondsToInternalTime(const int64_t*, TimeInternal*);


 
void fromInternalTime(const TimeInternal*, Timestamp*);



 
void toInternalTime(TimeInternal*, const Timestamp*);



 
void addTime(TimeInternal*, const TimeInternal*, const TimeInternal*);



 
void subTime(TimeInternal*, const TimeInternal*, const TimeInternal*);



 
void div2Time(TimeInternal*);




 
int32_t floorLog2(uint32_t);



 
static __inline int32_t max(int32_t a, int32_t b)
{
	return a > b ? a : b;
}



 
static __inline int32_t min(int32_t a, int32_t b)
{
	return a > b ? b : a;
}

 


 
 
 



 
uint8_t bmc(PtpClock*);



 
void m1(PtpClock*);



 
void p1(PtpClock*);



 
void s1(PtpClock*, const MsgHeader*, const MsgAnnounce*);



 
void initData(PtpClock*);



 
_Bool  isSamePortIdentity(const PortIdentity*, const PortIdentity*);



 
void addForeign(PtpClock*, const MsgHeader*, const MsgAnnounce*);


 



 
 


 
 



 
void doState(PtpClock*);



 
void toState(PtpClock*, uint8_t);
 


void ptpd_alert(void);


void ptpd_init(void);

#line 4 "..\\..\\libraries\\ptpd-2.0.0\\src\\bmc.c"

 
void EUI48toEUI64(const octet_t * eui48, octet_t * eui64)
{
	eui64[0] = eui48[0];
	eui64[1] = eui48[1];
	eui64[2] = eui48[2];
	eui64[3] = 0xff;
	eui64[4] = 0xfe;
	eui64[5] = eui48[3];
	eui64[6] = eui48[4];
	eui64[7] = eui48[5];
}

 
void initData(PtpClock *ptpClock)
{
	RunTimeOpts * rtOpts;

	;
	rtOpts = ptpClock->rtOpts;

	 
	ptpClock->defaultDS.twoStepFlag = 1;

	 
	if ((8 == 8) && (6U == 6))
	{
			;
			EUI48toEUI64(ptpClock->portUuidField, ptpClock->defaultDS.clockIdentity);
	}
	else if (8 == 6U)
	{
			memcpy(ptpClock->defaultDS.clockIdentity, ptpClock->portUuidField, 8);
	}
	else
	{
			;
	}

	ptpClock->defaultDS.numberPorts = 1;

	ptpClock->defaultDS.clockQuality.clockAccuracy = rtOpts->clockQuality.clockAccuracy;
	ptpClock->defaultDS.clockQuality.clockClass = rtOpts->clockQuality.clockClass;
	ptpClock->defaultDS.clockQuality.offsetScaledLogVariance = rtOpts->clockQuality.offsetScaledLogVariance;

	ptpClock->defaultDS.priority1 = rtOpts->priority1;
	ptpClock->defaultDS.priority2 = rtOpts->priority2;

	ptpClock->defaultDS.domainNumber = rtOpts->domainNumber;
	ptpClock->defaultDS.slaveOnly = rtOpts->slaveOnly;

	 

	 
	memcpy(ptpClock->portDS.portIdentity.clockIdentity, ptpClock->defaultDS.clockIdentity, 8);
	ptpClock->portDS.portIdentity.portNumber = 1;
	ptpClock->portDS.logMinDelayReqInterval = 3;
	ptpClock->portDS.peerMeanPathDelay.seconds = ptpClock->portDS.peerMeanPathDelay.nanoseconds = 0;
	ptpClock->portDS.logAnnounceInterval = rtOpts->announceInterval;
	ptpClock->portDS.announceReceiptTimeout = 6;
	ptpClock->portDS.logSyncInterval = rtOpts->syncInterval;
	ptpClock->portDS.delayMechanism = rtOpts->delayMechanism;
	ptpClock->portDS.logMinPdelayReqInterval = 1;
	ptpClock->portDS.versionNumber = 2;

	 
	ptpClock->foreignMasterDS.count = 0;
	ptpClock->foreignMasterDS.capacity = rtOpts->maxForeignRecords;

	ptpClock->inboundLatency = rtOpts->inboundLatency;
	ptpClock->outboundLatency = rtOpts->outboundLatency;

	ptpClock->servo.sDelay = rtOpts->servo.sDelay;
	ptpClock->servo.sOffset = rtOpts->servo.sOffset;
	ptpClock->servo.ai = rtOpts->servo.ai;
	ptpClock->servo.ap = rtOpts->servo.ap;
	ptpClock->servo.noAdjust = rtOpts->servo.noAdjust;
	ptpClock->servo.noResetClock = rtOpts->servo.noResetClock;

	ptpClock->stats = rtOpts->stats;
}

_Bool isSamePortIdentity(const PortIdentity * A, const PortIdentity * B)
{
	return (_Bool)(0 == memcmp(A->clockIdentity, B->clockIdentity, 8) && (A->portNumber == B->portNumber));
}

void addForeign(PtpClock *ptpClock, const MsgHeader *header, const MsgAnnounce * announce)
{
	int i, j;
	_Bool found = 0;

	j = ptpClock->foreignMasterDS.best;

	 
	for (i = 0; i < ptpClock->foreignMasterDS.count; i++)
	{
		if (isSamePortIdentity(&header->sourcePortIdentity, &ptpClock->foreignMasterDS.records[j].foreignMasterPortIdentity))
		{
			 
			ptpClock->foreignMasterDS.records[j].foreignMasterAnnounceMessages++;
			found = 1;
			;
			ptpClock->foreignMasterDS.records[j].header = *header;
			ptpClock->foreignMasterDS.records[j].announce = *announce;
			break;
		}

		j = (j + 1) % ptpClock->foreignMasterDS.count;
	}

	 
	if (!found)
	{
		if (ptpClock->foreignMasterDS.count < ptpClock->foreignMasterDS.capacity)
		{
			ptpClock->foreignMasterDS.count++;
		}

		j = ptpClock->foreignMasterDS.i;

		 
		memcpy(ptpClock->foreignMasterDS.records[j].foreignMasterPortIdentity.clockIdentity, header->sourcePortIdentity.clockIdentity, 8);
		ptpClock->foreignMasterDS.records[j].foreignMasterPortIdentity.portNumber = header->sourcePortIdentity.portNumber;
		ptpClock->foreignMasterDS.records[j].foreignMasterAnnounceMessages = 0;

		 
		ptpClock->foreignMasterDS.records[j].header = *header;
		ptpClock->foreignMasterDS.records[j].announce = *announce;
		;

		ptpClock->foreignMasterDS.i = (ptpClock->foreignMasterDS.i + 1) % ptpClock->foreignMasterDS.capacity;
	}
}



 
void m1(PtpClock *ptpClock)
{
	;

	 
	ptpClock->currentDS.stepsRemoved = 0;
	ptpClock->currentDS.offsetFromMaster.seconds = ptpClock->currentDS.offsetFromMaster.nanoseconds = 0;
	ptpClock->currentDS.meanPathDelay.seconds = ptpClock->currentDS.meanPathDelay.nanoseconds = 0;

	 
	memcpy(ptpClock->parentDS.parentPortIdentity.clockIdentity, ptpClock->defaultDS.clockIdentity, 8);
	ptpClock->parentDS.parentPortIdentity.portNumber = 0;
	memcpy(ptpClock->parentDS.grandmasterIdentity, ptpClock->defaultDS.clockIdentity, 8);
	ptpClock->parentDS.grandmasterClockQuality.clockAccuracy = ptpClock->defaultDS.clockQuality.clockAccuracy;
	ptpClock->parentDS.grandmasterClockQuality.clockClass = ptpClock->defaultDS.clockQuality.clockClass;
	ptpClock->parentDS.grandmasterClockQuality.offsetScaledLogVariance = ptpClock->defaultDS.clockQuality.offsetScaledLogVariance;
	ptpClock->parentDS.grandmasterPriority1 = ptpClock->defaultDS.priority1;
	ptpClock->parentDS.grandmasterPriority2 = ptpClock->defaultDS.priority2;

	 
	ptpClock->timePropertiesDS.currentUtcOffset = ptpClock->rtOpts->currentUtcOffset;
	ptpClock->timePropertiesDS.currentUtcOffsetValid = 0;
	ptpClock->timePropertiesDS.leap59 = 0;
	ptpClock->timePropertiesDS.leap61 = 0;
	ptpClock->timePropertiesDS.timeTraceable = 0;
	ptpClock->timePropertiesDS.frequencyTraceable = 0;
	ptpClock->timePropertiesDS.ptpTimescale = (_Bool)(ARB_TIMESCALE == PTP_TIMESCALE);
	ptpClock->timePropertiesDS.timeSource = INTERNAL_OSCILLATOR;
}

void p1(PtpClock *ptpClock)
{
	;
}

 
void s1(PtpClock *ptpClock, const MsgHeader *header, const MsgAnnounce *announce)
{
	_Bool isFromCurrentParent;

	;

	 
	ptpClock->currentDS.stepsRemoved = announce->stepsRemoved + 1;

	isFromCurrentParent = isSamePortIdentity(&ptpClock->parentDS.parentPortIdentity, &header->sourcePortIdentity);

	if (!isFromCurrentParent)
	{
			(ptpClock->events) |= (MASTER_CLOCK_CHANGED);
	}

	 
	memcpy(ptpClock->parentDS.parentPortIdentity.clockIdentity, header->sourcePortIdentity.clockIdentity, 8);
	ptpClock->parentDS.parentPortIdentity.portNumber = header->sourcePortIdentity.portNumber;
	memcpy(ptpClock->parentDS.grandmasterIdentity, announce->grandmasterIdentity, 8);
	ptpClock->parentDS.grandmasterClockQuality.clockAccuracy = announce->grandmasterClockQuality.clockAccuracy;
	ptpClock->parentDS.grandmasterClockQuality.clockClass = announce->grandmasterClockQuality.clockClass;
	ptpClock->parentDS.grandmasterClockQuality.offsetScaledLogVariance = announce->grandmasterClockQuality.offsetScaledLogVariance;
	ptpClock->parentDS.grandmasterPriority1 = announce->grandmasterPriority1;
	ptpClock->parentDS.grandmasterPriority2 = announce->grandmasterPriority2;

	 
	ptpClock->timePropertiesDS.currentUtcOffset = announce->currentUtcOffset;
	ptpClock->timePropertiesDS.currentUtcOffsetValid = (_Bool)(((header->flagField[1]) & (FLAG1_UTC_OFFSET_VALID)) == (FLAG1_UTC_OFFSET_VALID));
	ptpClock->timePropertiesDS.leap59 = (_Bool)(((header->flagField[1]) & (FLAG1_LEAP59)) == (FLAG1_LEAP59));
	ptpClock->timePropertiesDS.leap61 = (_Bool)(((header->flagField[1]) & (FLAG1_LEAP61)) == (FLAG1_LEAP61));
	ptpClock->timePropertiesDS.timeTraceable = (_Bool)(((header->flagField[1]) & (FLAG1_TIME_TRACEABLE)) == (FLAG1_TIME_TRACEABLE));
	ptpClock->timePropertiesDS.frequencyTraceable = (_Bool)(((header->flagField[1]) & (FLAG1_FREQUENCY_TRACEABLE)) == (FLAG1_FREQUENCY_TRACEABLE));
	ptpClock->timePropertiesDS.ptpTimescale = (_Bool)(((header->flagField[1]) & (FLAG1_PTP_TIMESCALE)) == (FLAG1_PTP_TIMESCALE));
	ptpClock->timePropertiesDS.timeSource = announce->timeSource;
}



 
void copyD0(MsgHeader *header, MsgAnnounce *announce, PtpClock *ptpClock)
{
	announce->grandmasterPriority1 = ptpClock->defaultDS.priority1;
	memcpy(announce->grandmasterIdentity, ptpClock->defaultDS.clockIdentity, 8);
	announce->grandmasterClockQuality.clockClass = ptpClock->defaultDS.clockQuality.clockClass;
	announce->grandmasterClockQuality.clockAccuracy = ptpClock->defaultDS.clockQuality.clockAccuracy;
	announce->grandmasterClockQuality.offsetScaledLogVariance = ptpClock->defaultDS.clockQuality.offsetScaledLogVariance;
	announce->grandmasterPriority2 = ptpClock->defaultDS.priority2;
	announce->stepsRemoved = 0;
	memcpy(header->sourcePortIdentity.clockIdentity, ptpClock->defaultDS.clockIdentity, 8);
}


#line 238 "..\\..\\libraries\\ptpd-2.0.0\\src\\bmc.c"


#line 250 "..\\..\\libraries\\ptpd-2.0.0\\src\\bmc.c"
 
int8_t bmcDataSetComparison(MsgHeader *headerA, MsgAnnounce *announceA,
															MsgHeader *headerB, MsgAnnounce *announceB, PtpClock *ptpClock)
{
	int grandmasterIdentityComp;
	short comp = 0;

	;
	 

	 
	 
	grandmasterIdentityComp = memcmp(announceA->grandmasterIdentity, announceB->grandmasterIdentity, 8);

	if (0 != grandmasterIdentityComp)
	{
		 
		if ((announceA->grandmasterPriority1) > (announceB->grandmasterPriority1)) { ; return -1; } if ((announceB->grandmasterPriority1) > (announceA->grandmasterPriority1)) { ; return 1; };
		if ((announceA->grandmasterClockQuality . clockClass) > (announceB->grandmasterClockQuality . clockClass)) { ; return -1; } if ((announceB->grandmasterClockQuality . clockClass) > (announceA->grandmasterClockQuality . clockClass)) { ; return 1; };
		if ((announceA->grandmasterClockQuality . clockAccuracy) > (announceB->grandmasterClockQuality . clockAccuracy)) { ; return -1; } if ((announceB->grandmasterClockQuality . clockAccuracy) > (announceA->grandmasterClockQuality . clockAccuracy)) { ; return 1; };
		if ((announceA->grandmasterClockQuality . offsetScaledLogVariance) > (announceB->grandmasterClockQuality . offsetScaledLogVariance)) { ; return -1; } if ((announceB->grandmasterClockQuality . offsetScaledLogVariance) > (announceA->grandmasterClockQuality . offsetScaledLogVariance)) { ; return 1; };
		if ((announceA->grandmasterPriority2) > (announceB->grandmasterPriority2)) { ; return -1; } if ((announceB->grandmasterPriority2) > (announceA->grandmasterPriority2)) { ; return 1; };

		if (grandmasterIdentityComp > 0)
		{
			;
			return -1;
		}
		else if (grandmasterIdentityComp < 0)
		{
			;
			return 1;
		}
	}

	 
	if ((announceA->stepsRemoved) > (announceB->stepsRemoved + 1))
	{
		;
		return -1;
	}

	if ((announceB->stepsRemoved) > (announceA->stepsRemoved + 1))
	{
		;
		return 1;
	}

	if ((announceA->stepsRemoved) > (announceB->stepsRemoved))
	{
		comp = memcmp(headerA->sourcePortIdentity.clockIdentity, ptpClock->portDS.portIdentity.clockIdentity, 8);

		if (comp > 0)
		{
			 
			;
			return -1;
		}
		else if (comp < 0)
		{
			 
			;
			return -1;
		}
		else
		{
			;
			return 0;
		}
	}
	else if ((announceA->stepsRemoved) < (announceB->stepsRemoved))
	{
		comp = memcmp(headerB->sourcePortIdentity.clockIdentity, ptpClock->portDS.portIdentity.clockIdentity, 8);
		if (comp > 0)
		{
			 
			;
			return 1;
		}
		else if (comp < 0)
		{
			 
			;
			return 1;
		}
		else
		{
			;
			return 0;
		}
	}

	comp = memcmp(headerA->sourcePortIdentity.clockIdentity, headerB->sourcePortIdentity.clockIdentity, 8);
	if (comp > 0)
	{
		 
		;
		return -1;
	}
	else if (comp < 0)
	{
		 
		;
		return 1;
	}

	 
	;
	return -0;
}

 
uint8_t bmcStateDecision(MsgHeader *header, MsgAnnounce *announce, PtpClock *ptpClock)
{
	int comp;

	if ((!ptpClock->foreignMasterDS.count) && (ptpClock->portDS.portState == PTP_LISTENING))
	{
		return PTP_LISTENING;
	}

	copyD0(&ptpClock->msgTmpHeader, &ptpClock->msgTmp.announce, ptpClock);

	comp = bmcDataSetComparison(&ptpClock->msgTmpHeader, &ptpClock->msgTmp.announce, header, announce, ptpClock);

	;

	if (ptpClock->defaultDS.clockQuality.clockClass < 128)
	{
		if (1 == comp)
		{
			m1(ptpClock);   
			return PTP_MASTER;
		}
		else
		{
			p1(ptpClock);
			return PTP_PASSIVE;
		}
	}
	else
	{
		if (1 == comp)
		{
			m1(ptpClock);  
			return PTP_MASTER;
		}
		else
		{
			s1(ptpClock, header, announce);
			return PTP_SLAVE;
		}
	}
}



uint8_t bmc(PtpClock *ptpClock)
{
	int16_t i, best;

	 
	for (i = 1, best = 0; i < ptpClock->foreignMasterDS.count; i++)
	{
		if ((bmcDataSetComparison(&ptpClock->foreignMasterDS.records[i].header, &ptpClock->foreignMasterDS.records[i].announce,
															&ptpClock->foreignMasterDS.records[best].header, &ptpClock->foreignMasterDS.records[best].announce, ptpClock)) < 0)
		{
			best = i;
		}
	}

	;
	ptpClock->foreignMasterDS.best = best;

	return bmcStateDecision(&ptpClock->foreignMasterDS.records[best].header, &ptpClock->foreignMasterDS.records[best].announce, ptpClock);
}


