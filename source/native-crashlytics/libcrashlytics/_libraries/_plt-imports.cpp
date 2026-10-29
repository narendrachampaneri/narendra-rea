// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 152 functions

// ---- <EXTERNAL>::write  @ 0x19de0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t write(int __fd,void *__buf,size_t __n)

{
  ssize_t sVar1;
  
  sVar1 = write(__fd,__buf,__n);
  return sVar1;
}

// ---- <EXTERNAL>::memset  @ 0x19dec
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memset(__s,__c,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::__stack_chk_fail  @ 0x19df8
void __stack_chk_fail(void)

{
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- <EXTERNAL>::strlen  @ 0x19e04
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}

// ---- <EXTERNAL>::open  @ 0x19e10
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int open(char *__file,int __oflag,...)

{
  int iVar1;
  
  iVar1 = open(__file,__oflag);
  return iVar1;
}

// ---- <EXTERNAL>::fsync  @ 0x19e1c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fsync(int __fd)

{
  int iVar1;
  
  iVar1 = fsync(__fd);
  return iVar1;
}

// ---- <EXTERNAL>::close  @ 0x19e28
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int close(int __fd)

{
  int iVar1;
  
  iVar1 = close(__fd);
  return iVar1;
}

// ---- <EXTERNAL>::__android_log_print  @ 0x19e34
void __android_log_print(void)

{
  __android_log_print();
  return;
}

// ---- <EXTERNAL>::AAssetManager_fromJava  @ 0x19e40
void AAssetManager_fromJava(void)

{
  AAssetManager_fromJava();
  return;
}

// ---- <EXTERNAL>::ASensorManager_getInstance  @ 0x19e4c
void ASensorManager_getInstance(void)

{
  ASensorManager_getInstance();
  return;
}

// ---- <EXTERNAL>::AConfiguration_new  @ 0x19e58
void AConfiguration_new(void)

{
  AConfiguration_new();
  return;
}

// ---- <EXTERNAL>::read  @ 0x19e64
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t read(int __fd,void *__buf,size_t __nbytes)

{
  ssize_t sVar1;
  
  sVar1 = read(__fd,__buf,__nbytes);
  return sVar1;
}

// ---- <EXTERNAL>::__errno  @ 0x19e70
void __errno(void)

{
  __errno();
  return;
}

// ---- <EXTERNAL>::strchr  @ 0x19e7c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strchr(char *__s,int __c)

{
  char *pcVar1;
  
  pcVar1 = strchr(__s,__c);
  return pcVar1;
}

// ---- <EXTERNAL>::lseek  @ 0x19e88
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__off_t lseek(int __fd,__off_t __offset,int __whence)

{
  __off_t _Var1;
  
  _Var1 = lseek(__fd,__offset,__whence);
  return _Var1;
}

// ---- <EXTERNAL>::sysconf  @ 0x19e94
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long sysconf(int __name)

{
  long lVar1;
  
  lVar1 = sysconf(__name);
  return lVar1;
}

// ---- <EXTERNAL>::atoll  @ 0x19ea0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

longlong atoll(char *__nptr)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  
  atoll(__nptr);
  return CONCAT44(extraout_r1,extraout_r0);
}

// ---- <EXTERNAL>::strtol  @ 0x19eac
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long strtol(char *__nptr,char **__endptr,int __base)

{
  long lVar1;
  
  lVar1 = strtol(__nptr,__endptr,__base);
  return lVar1;
}

// ---- <EXTERNAL>::strncmp  @ 0x19eb8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncmp(char *__s1,char *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = strncmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::time  @ 0x19ec4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

time_t time(time_t *__timer)

{
  time_t tVar1;
  
  tVar1 = time(__timer);
  return tVar1;
}

// ---- <EXTERNAL>::dladdr  @ 0x19ed0
void dladdr(void)

{
  dladdr();
  return;
}

// ---- <EXTERNAL>::AConfiguration_fromAssetManager  @ 0x19edc
void AConfiguration_fromAssetManager(void)

{
  AConfiguration_fromAssetManager();
  return;
}

// ---- <EXTERNAL>::statfs  @ 0x19ee8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int statfs(char *__file,statfs *__buf)

{
  int iVar1;
  
  iVar1 = statfs(__file,__buf);
  return iVar1;
}

// ---- <EXTERNAL>::ASensorManager_getDefaultSensor  @ 0x19ef4
void ASensorManager_getDefaultSensor(void)

{
  ASensorManager_getDefaultSensor();
  return;
}

// ---- <EXTERNAL>::AConfiguration_getOrientation  @ 0x19f00
void AConfiguration_getOrientation(void)

{
  AConfiguration_getOrientation();
  return;
}

// ---- <EXTERNAL>::mmap  @ 0x19f0c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * mmap(void *__addr,size_t __len,int __prot,int __flags,int __fd,__off_t __offset)

{
  void *pvVar1;
  
  pvVar1 = mmap(__addr,__len,__prot,__flags,__fd,__offset);
  return pvVar1;
}

// ---- <EXTERNAL>::memcpy  @ 0x19f18
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memcpy(void *__dest,void *__src,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memcpy(__dest,__src,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::munmap  @ 0x19f24
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int munmap(void *__addr,size_t __len)

{
  int iVar1;
  
  iVar1 = munmap(__addr,__len);
  return iVar1;
}

// ---- <EXTERNAL>::opendir  @ 0x19f30
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

DIR * opendir(char *__name)

{
  DIR *pDVar1;
  
  pDVar1 = opendir(__name);
  return pDVar1;
}

// ---- <EXTERNAL>::readdir_r  @ 0x19f3c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int readdir_r(DIR *__dirp,dirent *__entry,dirent **__result)

{
  int iVar1;
  
  iVar1 = readdir_r(__dirp,__entry,__result);
  return iVar1;
}

// ---- <EXTERNAL>::closedir  @ 0x19f48
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int closedir(DIR *__dirp)

{
  int iVar1;
  
  iVar1 = closedir(__dirp);
  return iVar1;
}

// ---- <EXTERNAL>::sigaction  @ 0x19f54
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sigaction(int __sig,sigaction *__act,sigaction *__oact)

{
  int iVar1;
  
  iVar1 = sigaction(__sig,__act,__oact);
  return iVar1;
}

// ---- <EXTERNAL>::getpid  @ 0x19f60
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t getpid(void)

{
  __pid_t _Var1;
  
  _Var1 = getpid();
  return _Var1;
}

// ---- <EXTERNAL>::waitpid  @ 0x19f6c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t waitpid(__pid_t __pid,int *__stat_loc,int __options)

{
  __pid_t _Var1;
  
  _Var1 = waitpid(__pid,__stat_loc,__options);
  return _Var1;
}

// ---- <EXTERNAL>::sleep  @ 0x19f78
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

uint sleep(uint __seconds)

{
  uint uVar1;
  
  uVar1 = sleep(__seconds);
  return uVar1;
}

// ---- <EXTERNAL>::ptrace  @ 0x19f84
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long ptrace(__ptrace_request __request,...)

{
  long lVar1;
  
  lVar1 = ptrace(__request);
  return lVar1;
}

// ---- <EXTERNAL>::kill  @ 0x19f90
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int kill(__pid_t __pid,int __sig)

{
  int iVar1;
  
  iVar1 = kill(__pid,__sig);
  return iVar1;
}

// ---- <EXTERNAL>::prctl  @ 0x19f9c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int prctl(int __option,...)

{
  int iVar1;
  
  iVar1 = prctl(__option);
  return iVar1;
}

// ---- <EXTERNAL>::fork  @ 0x19fa8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t fork(void)

{
  __pid_t _Var1;
  
  _Var1 = fork();
  return _Var1;
}

// ---- <EXTERNAL>::_exit  @ 0x19fb4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void _exit(int __status)

{
                    /* WARNING: Subroutine does not return */
  _exit(__status);
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x19fc0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_lock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x19fcc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_unlock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::dlopen  @ 0x19fd8
void dlopen(void)

{
  dlopen();
  return;
}

// ---- <EXTERNAL>::dlsym  @ 0x19fe4
void dlsym(void)

{
  dlsym();
  return;
}

// ---- <EXTERNAL>::memcmp  @ 0x19ff0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = memcmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::dlerror  @ 0x19ffc
void dlerror(void)

{
  dlerror();
  return;
}

// ---- <EXTERNAL>::dlclose  @ 0x1a008
void dlclose(void)

{
  dlclose();
  return;
}

// ---- <EXTERNAL>::memmem  @ 0x1a014
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmem(void *__haystack,size_t __haystacklen,void *__needle,size_t __needlelen)

{
  void *pvVar1;
  
  pvVar1 = memmem(__haystack,__haystacklen,__needle,__needlelen);
  return pvVar1;
}

// ---- <EXTERNAL>::memchr  @ 0x1a020
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memchr(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memchr(__s,__c,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::malloc  @ 0x1a02c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}

// ---- <EXTERNAL>::free  @ 0x1a038
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
  free(__ptr);
  return;
}

// ---- <EXTERNAL>::strcmp  @ 0x1a044
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcmp(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_once  @ 0x1a050
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_once(pthread_once_t *__once_control,__init_routine *__init_routine)

{
  int iVar1;
  
  iVar1 = pthread_once(__once_control,__init_routine);
  return iVar1;
}

// ---- <EXTERNAL>::memmove  @ 0x1a05c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmove(void *__dest,void *__src,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memmove(__dest,__src,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::syscall  @ 0x1a068
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long syscall(long __sysno,...)

{
  long lVar1;
  
  lVar1 = syscall(__sysno);
  return lVar1;
}

// ---- <EXTERNAL>::abort  @ 0x1a074
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void abort(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- <EXTERNAL>::pthread_key_delete  @ 0x1a080
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_delete(pthread_key_t __key)

{
  int iVar1;
  
  iVar1 = pthread_key_delete(__key);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_getspecific  @ 0x1a08c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * pthread_getspecific(pthread_key_t __key)

{
  void *pvVar1;
  
  pvVar1 = pthread_getspecific(__key);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_setspecific  @ 0x1a098
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setspecific(pthread_key_t __key,void *__pointer)

{
  int iVar1;
  
  iVar1 = pthread_setspecific(__key,__pointer);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_key_create  @ 0x1a0a4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_create(pthread_key_t *__key,__destr_function *__destr_function)

{
  int iVar1;
  
  iVar1 = pthread_key_create(__key,__destr_function);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_destroy  @ 0x1a0b0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_destroy(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_destroy(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_wait  @ 0x1a0bc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_wait(pthread_cond_t *__cond,pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_cond_wait(__cond,__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_signal  @ 0x1a0c8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_signal(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_signal(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_broadcast  @ 0x1a0d4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_broadcast(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_broadcast(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::strerror  @ 0x1a0e0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strerror(int __errnum)

{
  char *pcVar1;
  
  pcVar1 = strerror(__errnum);
  return pcVar1;
}

// ---- <EXTERNAL>::fwrite  @ 0x1a0ec
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
  size_t sVar1;
  
  sVar1 = fwrite(__ptr,__size,__n,__s);
  return sVar1;
}

// ---- <EXTERNAL>::fputs  @ 0x1a0f8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputs(char *__s,FILE *__stream)

{
  int iVar1;
  
  iVar1 = fputs(__s,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::fputc  @ 0x1a104
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputc(int __c,FILE *__stream)

{
  int iVar1;
  
  iVar1 = fputc(__c,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::realloc  @ 0x1a110
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * realloc(void *__ptr,size_t __size)

{
  void *pvVar1;
  
  pvVar1 = realloc(__ptr,__size);
  return pvVar1;
}

// ---- <EXTERNAL>::sprintf  @ 0x1a11c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
  int iVar1;
  
  iVar1 = sprintf(__s,__format);
  return iVar1;
}

// ---- <EXTERNAL>::raise  @ 0x1a128
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int raise(int __sig)

{
  int iVar1;
  
  iVar1 = raise(__sig);
  return iVar1;
}

// ---- <EXTERNAL>::__gnu_Unwind_Find_exidx  @ 0x1a134
void __gnu_Unwind_Find_exidx(void)

{
  __gnu_Unwind_Find_exidx();
  return;
}

// ---- <EXTERNAL>::AAssetManager_fromJava  @ 0x29bc0
void AAssetManager_fromJava(void)

{
  AAssetManager_fromJava();
  return;
}

// ---- <EXTERNAL>::AAssetManager_fromJava  @ 0x29bc4
void AAssetManager_fromJava(void)

{
  AAssetManager_fromJava();
  return;
}

// ---- <EXTERNAL>::ASensorManager_getInstance  @ 0x29bd0
void ASensorManager_getInstance(void)

{
  ASensorManager_getInstance();
  return;
}

// ---- <EXTERNAL>::ASensorManager_getInstance  @ 0x29bd4
void ASensorManager_getInstance(void)

{
  ASensorManager_getInstance();
  return;
}

// ---- <EXTERNAL>::AConfiguration_new  @ 0x29be0
void AConfiguration_new(void)

{
  AConfiguration_new();
  return;
}

// ---- <EXTERNAL>::AConfiguration_new  @ 0x29be4
void AConfiguration_new(void)

{
  AConfiguration_new();
  return;
}

// ---- <EXTERNAL>::__cxa_finalize  @ 0xd6000
/* WARNING: Control flow encountered bad instruction data */

void __cxa_finalize(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__cxa_atexit  @ 0xd6004
/* WARNING: Control flow encountered bad instruction data */

void __cxa_atexit(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::write  @ 0xd6008
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t write(int __fd,void *__buf,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memset  @ 0xd600c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__stack_chk_fail  @ 0xd6010
/* WARNING: Control flow encountered bad instruction data */

void __stack_chk_fail(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strlen  @ 0xd6018
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::open  @ 0xd601c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int open(char *__file,int __oflag,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fsync  @ 0xd6020
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fsync(int __fd)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::close  @ 0xd6024
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int close(int __fd)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__android_log_print  @ 0xd6028
/* WARNING: Control flow encountered bad instruction data */

void __android_log_print(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::AAssetManager_fromJava  @ 0xd602c
/* WARNING: Control flow encountered bad instruction data */

void AAssetManager_fromJava(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ASensorManager_getInstance  @ 0xd6030
/* WARNING: Control flow encountered bad instruction data */

void ASensorManager_getInstance(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::AConfiguration_new  @ 0xd6034
/* WARNING: Control flow encountered bad instruction data */

void AConfiguration_new(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::read  @ 0xd6038
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t read(int __fd,void *__buf,size_t __nbytes)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__errno  @ 0xd603c
/* WARNING: Control flow encountered bad instruction data */

void __errno(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strchr  @ 0xd6040
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strchr(char *__s,int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::lseek  @ 0xd6044
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__off_t lseek(int __fd,__off_t __offset,int __whence)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sysconf  @ 0xd6048
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long sysconf(int __name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atoll  @ 0xd604c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

longlong atoll(char *__nptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtol  @ 0xd6050
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long strtol(char *__nptr,char **__endptr,int __base)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strncmp  @ 0xd6054
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncmp(char *__s1,char *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::time  @ 0xd6058
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

time_t time(time_t *__timer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dladdr  @ 0xd605c
/* WARNING: Control flow encountered bad instruction data */

void dladdr(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::AConfiguration_fromAssetManager  @ 0xd6060
/* WARNING: Control flow encountered bad instruction data */

void AConfiguration_fromAssetManager(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::statfs  @ 0xd6064
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int statfs(char *__file,statfs *__buf)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ASensorManager_getDefaultSensor  @ 0xd6068
/* WARNING: Control flow encountered bad instruction data */

void ASensorManager_getDefaultSensor(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::AConfiguration_getOrientation  @ 0xd606c
/* WARNING: Control flow encountered bad instruction data */

void AConfiguration_getOrientation(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::mmap  @ 0xd6070
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * mmap(void *__addr,size_t __len,int __prot,int __flags,int __fd,__off_t __offset)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memcpy  @ 0xd6074
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memcpy(void *__dest,void *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::munmap  @ 0xd6078
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int munmap(void *__addr,size_t __len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::opendir  @ 0xd607c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

DIR * opendir(char *__name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::readdir_r  @ 0xd6080
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int readdir_r(DIR *__dirp,dirent *__entry,dirent **__result)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::closedir  @ 0xd6084
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int closedir(DIR *__dirp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sigaction  @ 0xd6088
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sigaction(int __sig,sigaction *__act,sigaction *__oact)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getpid  @ 0xd608c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t getpid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::waitpid  @ 0xd6090
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t waitpid(__pid_t __pid,int *__stat_loc,int __options)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sleep  @ 0xd6094
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

uint sleep(uint __seconds)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ptrace  @ 0xd6098
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long ptrace(__ptrace_request __request,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::kill  @ 0xd609c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int kill(__pid_t __pid,int __sig)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::prctl  @ 0xd60a0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int prctl(int __option,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fork  @ 0xd60a4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t fork(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::_exit  @ 0xd60a8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void _exit(int __status)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0xd60ac
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0xd60b0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlopen  @ 0xd60b4
/* WARNING: Control flow encountered bad instruction data */

void dlopen(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlsym  @ 0xd60b8
/* WARNING: Control flow encountered bad instruction data */

void dlsym(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memcmp  @ 0xd60bc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlerror  @ 0xd60c0
/* WARNING: Control flow encountered bad instruction data */

void dlerror(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlclose  @ 0xd60c4
/* WARNING: Control flow encountered bad instruction data */

void dlclose(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memmem  @ 0xd60c8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmem(void *__haystack,size_t __haystacklen,void *__needle,size_t __needlelen)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memchr  @ 0xd60cc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memchr(void *__s,int __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::malloc  @ 0xd60d0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::free  @ 0xd60d4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcmp  @ 0xd60d8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcmp(char *__s1,char *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_once  @ 0xd60dc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_once(pthread_once_t *__once_control,__init_routine *__init_routine)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memmove  @ 0xd60e0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmove(void *__dest,void *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::syscall  @ 0xd60e4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long syscall(long __sysno,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::abort  @ 0xd60e8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void abort(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_key_delete  @ 0xd60ec
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_delete(pthread_key_t __key)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_getspecific  @ 0xd60f0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * pthread_getspecific(pthread_key_t __key)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_setspecific  @ 0xd60f4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setspecific(pthread_key_t __key,void *__pointer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_key_create  @ 0xd60f8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_create(pthread_key_t *__key,__destr_function *__destr_function)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_destroy  @ 0xd60fc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_destroy(pthread_cond_t *__cond)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_wait  @ 0xd6100
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_wait(pthread_cond_t *__cond,pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_signal  @ 0xd6104
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_signal(pthread_cond_t *__cond)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_broadcast  @ 0xd6108
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_broadcast(pthread_cond_t *__cond)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strerror  @ 0xd610c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strerror(int __errnum)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fwrite  @ 0xd6110
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fputs  @ 0xd6114
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputs(char *__s,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fputc  @ 0xd6118
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputc(int __c,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::realloc  @ 0xd6120
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * realloc(void *__ptr,size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sprintf  @ 0xd6124
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::raise  @ 0xd6128
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int raise(int __sig)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__gnu_Unwind_Find_exidx  @ 0xd612c
/* WARNING: Control flow encountered bad instruction data */

void __gnu_Unwind_Find_exidx(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}
