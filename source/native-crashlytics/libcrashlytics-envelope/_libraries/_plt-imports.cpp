// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 64 functions

// ---- <EXTERNAL>::_Uarm_create_addr_space  @ 0x13134
void _Uarm_create_addr_space(void)

{
  _Uarm_create_addr_space();
  return;
}

// ---- <EXTERNAL>::_Uarm_set_caching_policy  @ 0x13140
void _Uarm_set_caching_policy(void)

{
  _Uarm_set_caching_policy();
  return;
}

// ---- <EXTERNAL>::_UPT_create  @ 0x1314c
void _UPT_create(void)

{
  _UPT_create();
  return;
}

// ---- <EXTERNAL>::_Uarm_get_proc_name_by_ip  @ 0x13158
void _Uarm_get_proc_name_by_ip(void)

{
  _Uarm_get_proc_name_by_ip();
  return;
}

// ---- <EXTERNAL>::_Uarm_init_local  @ 0x13164
void _Uarm_init_local(void)

{
  _Uarm_init_local();
  return;
}

// ---- <EXTERNAL>::_Uarm_get_reg  @ 0x13170
void _Uarm_get_reg(void)

{
  _Uarm_get_reg();
  return;
}

// ---- <EXTERNAL>::_Uarm_step  @ 0x1317c
void _Uarm_step(void)

{
  _Uarm_step();
  return;
}

// ---- <EXTERNAL>::_Uarm_init_remote  @ 0x13188
void _Uarm_init_remote(void)

{
  _Uarm_init_remote();
  return;
}

// ---- <EXTERNAL>::_UPT_destroy  @ 0x13194
void _UPT_destroy(void)

{
  _UPT_destroy();
  return;
}

// ---- <EXTERNAL>::malloc  @ 0x131a0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_key_delete  @ 0x131ac
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_delete(pthread_key_t __key)

{
  int iVar1;
  
  iVar1 = pthread_key_delete(__key);
  return iVar1;
}

// ---- <EXTERNAL>::free  @ 0x131b8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
  free(__ptr);
  return;
}

// ---- <EXTERNAL>::pthread_getspecific  @ 0x131c4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * pthread_getspecific(pthread_key_t __key)

{
  void *pvVar1;
  
  pvVar1 = pthread_getspecific(__key);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_setspecific  @ 0x131d0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setspecific(pthread_key_t __key,void *__pointer)

{
  int iVar1;
  
  iVar1 = pthread_setspecific(__key,__pointer);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_key_create  @ 0x131dc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_create(pthread_key_t *__key,__destr_function *__destr_function)

{
  int iVar1;
  
  iVar1 = pthread_key_create(__key,__destr_function);
  return iVar1;
}

// ---- <EXTERNAL>::abort  @ 0x131e8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void abort(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- <EXTERNAL>::memset  @ 0x131f4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memset(__s,__c,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x13200
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_lock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x1320c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_unlock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::write  @ 0x13218
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t write(int __fd,void *__buf,size_t __n)

{
  ssize_t sVar1;
  
  sVar1 = write(__fd,__buf,__n);
  return sVar1;
}

// ---- <EXTERNAL>::strcmp  @ 0x13224
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcmp(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::fwrite  @ 0x13230
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
  size_t sVar1;
  
  sVar1 = fwrite(__ptr,__size,__n,__s);
  return sVar1;
}

// ---- <EXTERNAL>::fputs  @ 0x1323c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputs(char *__s,FILE *__stream)

{
  int iVar1;
  
  iVar1 = fputs(__s,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::fputc  @ 0x13248
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputc(int __c,FILE *__stream)

{
  int iVar1;
  
  iVar1 = fputc(__c,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::memcmp  @ 0x13254
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = memcmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::memcpy  @ 0x13260
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memcpy(void *__dest,void *__src,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memcpy(__dest,__src,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::realloc  @ 0x1326c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * realloc(void *__ptr,size_t __size)

{
  void *pvVar1;
  
  pvVar1 = realloc(__ptr,__size);
  return pvVar1;
}

// ---- <EXTERNAL>::strlen  @ 0x13278
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}

// ---- <EXTERNAL>::sprintf  @ 0x13284
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
  int iVar1;
  
  iVar1 = sprintf(__s,__format);
  return iVar1;
}

// ---- <EXTERNAL>::strncmp  @ 0x13290
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncmp(char *__s1,char *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = strncmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::__gnu_Unwind_Find_exidx  @ 0x1329c
void __gnu_Unwind_Find_exidx(void)

{
  __gnu_Unwind_Find_exidx();
  return;
}

// ---- <EXTERNAL>::__cxa_finalize  @ 0x24000
/* WARNING: Control flow encountered bad instruction data */

void __cxa_finalize(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__cxa_atexit  @ 0x24004
/* WARNING: Control flow encountered bad instruction data */

void __cxa_atexit(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_create_addr_space  @ 0x24008
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_create_addr_space(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_set_caching_policy  @ 0x2400c
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_set_caching_policy(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_UPT_create  @ 0x24014
/* WARNING: Control flow encountered bad instruction data */

void _UPT_create(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_get_proc_name_by_ip  @ 0x24018
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_get_proc_name_by_ip(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_init_local  @ 0x24020
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_init_local(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_get_reg  @ 0x24024
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_get_reg(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_step  @ 0x24028
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_step(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_Uarm_init_remote  @ 0x2402c
/* WARNING: Control flow encountered bad instruction data */

void _Uarm_init_remote(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_UPT_destroy  @ 0x24030
/* WARNING: Control flow encountered bad instruction data */

void _UPT_destroy(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::malloc  @ 0x24034
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_key_delete  @ 0x24038
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_delete(pthread_key_t __key)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::free  @ 0x2403c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_getspecific  @ 0x24040
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * pthread_getspecific(pthread_key_t __key)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_setspecific  @ 0x24044
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setspecific(pthread_key_t __key,void *__pointer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_key_create  @ 0x24048
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_create(pthread_key_t *__key,__destr_function *__destr_function)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::abort  @ 0x2404c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void abort(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memset  @ 0x24050
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x24054
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x24058
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::write  @ 0x2405c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t write(int __fd,void *__buf,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcmp  @ 0x24060
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcmp(char *__s1,char *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fwrite  @ 0x24064
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fputs  @ 0x24068
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputs(char *__s,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fputc  @ 0x2406c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputc(int __c,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memcmp  @ 0x24074
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memcpy  @ 0x24078
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memcpy(void *__dest,void *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::realloc  @ 0x2407c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * realloc(void *__ptr,size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strlen  @ 0x24080
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sprintf  @ 0x24084
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strncmp  @ 0x24088
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncmp(char *__s1,char *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__gnu_Unwind_Find_exidx  @ 0x2408c
/* WARNING: Control flow encountered bad instruction data */

void __gnu_Unwind_Find_exidx(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}
