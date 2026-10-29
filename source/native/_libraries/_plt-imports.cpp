// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 770 functions

// ---- <EXTERNAL>::__cxa_atexit  @ 0x2e5ee4
void __cxa_atexit(void)

{
  __cxa_atexit();
  return;
}

// ---- <EXTERNAL>::atan  @ 0x2e5efc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double atan(double __x)

{
  double dVar1;
  
  dVar1 = atan(__x);
  return dVar1;
}

// ---- <EXTERNAL>::cos  @ 0x2e5f08
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double cos(double __x)

{
  double dVar1;
  
  dVar1 = cos(__x);
  return dVar1;
}

// ---- <EXTERNAL>::sin  @ 0x2e5f14
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double sin(double __x)

{
  double dVar1;
  
  dVar1 = sin(__x);
  return dVar1;
}

// ---- <EXTERNAL>::atan2  @ 0x2e5f20
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double atan2(double __y,double __x)

{
  double dVar1;
  
  dVar1 = atan2(__y,__x);
  return dVar1;
}

// ---- <EXTERNAL>::floor  @ 0x2e5f2c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double floor(double __x)

{
  double dVar1;
  
  dVar1 = floor(__x);
  return dVar1;
}

// ---- <EXTERNAL>::strlen  @ 0x2e5f38
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}

// ---- <EXTERNAL>::memcpy  @ 0x2e5f44
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memcpy(void *__dest,void *__src,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memcpy(__dest,__src,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::toupper  @ 0x2e5f50
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int toupper(int __c)

{
  int iVar1;
  
  iVar1 = toupper(__c);
  return iVar1;
}

// ---- <EXTERNAL>::__android_log_print  @ 0x2e5f5c
void __android_log_print(void)

{
  __android_log_print();
  return;
}

// ---- <EXTERNAL>::__stack_chk_fail  @ 0x2e5f68
void __stack_chk_fail(void)

{
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- <EXTERNAL>::memset  @ 0x2e5f74
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memset(__s,__c,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::lrand48  @ 0x2e5f80
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long lrand48(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- <EXTERNAL>::pow  @ 0x2e5f8c
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double pow(double __x,double __y)

{
  double dVar1;
  
  dVar1 = pow(__x,__y);
  return dVar1;
}

// ---- <EXTERNAL>::atanf  @ 0x2e5f98
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float atanf(float __x)

{
  float fVar1;
  
  fVar1 = atanf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::cosf  @ 0x2e5fa4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float cosf(float __x)

{
  float fVar1;
  
  fVar1 = cosf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::floorf  @ 0x2e5fb0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float floorf(float __x)

{
  float fVar1;
  
  fVar1 = floorf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::sinf  @ 0x2e5fbc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float sinf(float __x)

{
  float fVar1;
  
  fVar1 = sinf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::memcmp  @ 0x2e5fc8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = memcmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x2e5fd4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_lock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x2e5fe0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_unlock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::memmove  @ 0x2e5fec
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmove(void *__dest,void *__src,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memmove(__dest,__src,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::printf  @ 0x2e5ff8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int printf(char *__format,...)

{
  int iVar1;
  
  iVar1 = printf(__format);
  return iVar1;
}

// ---- <EXTERNAL>::time  @ 0x2e6004
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

time_t time(time_t *__timer)

{
  time_t tVar1;
  
  tVar1 = time(__timer);
  return tVar1;
}

// ---- <EXTERNAL>::malloc  @ 0x2e6010
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}

// ---- <EXTERNAL>::free  @ 0x2e601c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
  free(__ptr);
  return;
}

// ---- <EXTERNAL>::atoi  @ 0x2e6028
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int atoi(char *__nptr)

{
  int iVar1;
  
  iVar1 = atoi(__nptr);
  return iVar1;
}

// ---- <EXTERNAL>::setjmp  @ 0x2e6034
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setjmp(__jmp_buf_tag *__env)

{
  int iVar1;
  
  iVar1 = setjmp(__env);
  return iVar1;
}

// ---- <EXTERNAL>::longjmp  @ 0x2e6040
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void longjmp(__jmp_buf_tag *__env,int __val)

{
                    /* WARNING: Subroutine does not return */
  longjmp(__env,__val);
}

// ---- <EXTERNAL>::puts  @ 0x2e604c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int puts(char *__s)

{
  int iVar1;
  
  iVar1 = puts(__s);
  return iVar1;
}

// ---- <EXTERNAL>::srand48  @ 0x2e6058
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void srand48(long __seedval)

{
  srand48(__seedval);
  return;
}

// ---- <EXTERNAL>::strcmp  @ 0x2e6064
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcmp(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::strtod  @ 0x2e6070
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double strtod(char *__nptr,char **__endptr)

{
  double dVar1;
  
  dVar1 = strtod(__nptr,__endptr);
  return dVar1;
}

// ---- <EXTERNAL>::realloc  @ 0x2e607c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * realloc(void *__ptr,size_t __size)

{
  void *pvVar1;
  
  pvVar1 = realloc(__ptr,__size);
  return pvVar1;
}

// ---- <EXTERNAL>::snprintf  @ 0x2e6088
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int snprintf(char *__s,size_t __maxlen,char *__format,...)

{
  int iVar1;
  
  iVar1 = snprintf(__s,__maxlen,__format);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_create  @ 0x2e6094
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_create(pthread_t *__newthread,pthread_attr_t *__attr,__start_routine *__start_routine,
                  void *__arg)

{
  int iVar1;
  
  iVar1 = pthread_create(__newthread,__attr,__start_routine,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::fopen  @ 0x2e60a0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * fopen(char *__filename,char *__modes)

{
  FILE *pFVar1;
  
  pFVar1 = fopen(__filename,__modes);
  return pFVar1;
}

// ---- <EXTERNAL>::fwrite  @ 0x2e60ac
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
  size_t sVar1;
  
  sVar1 = fwrite(__ptr,__size,__n,__s);
  return sVar1;
}

// ---- <EXTERNAL>::fclose  @ 0x2e60b8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fclose(FILE *__stream)

{
  int iVar1;
  
  iVar1 = fclose(__stream);
  return iVar1;
}

// ---- <EXTERNAL>::umask  @ 0x2e60c4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__mode_t umask(__mode_t __mask)

{
  __mode_t _Var1;
  
  _Var1 = umask(__mask);
  return _Var1;
}

// ---- <EXTERNAL>::mkdir  @ 0x2e60d0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int mkdir(char *__path,__mode_t __mode)

{
  int iVar1;
  
  iVar1 = mkdir(__path,__mode);
  return iVar1;
}

// ---- <EXTERNAL>::__errno  @ 0x2e60dc
void __errno(void)

{
  __errno();
  return;
}

// ---- <EXTERNAL>::pthread_mutex_init  @ 0x2e60e8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_init(pthread_mutex_t *__mutex,pthread_mutexattr_t *__mutexattr)

{
  int iVar1;
  
  iVar1 = pthread_mutex_init(__mutex,__mutexattr);
  return iVar1;
}

// ---- <EXTERNAL>::remove  @ 0x2e60f4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int remove(char *__filename)

{
  int iVar1;
  
  iVar1 = remove(__filename);
  return iVar1;
}

// ---- <EXTERNAL>::atan2f  @ 0x2e6100
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float atan2f(float __y,float __x)

{
  float fVar1;
  
  fVar1 = atan2f(__y,__x);
  return fVar1;
}

// ---- <EXTERNAL>::sqrt  @ 0x2e610c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double sqrt(double __x)

{
  double dVar1;
  
  dVar1 = sqrt(__x);
  return dVar1;
}

// ---- <EXTERNAL>::sqrtf  @ 0x2e6118
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float sqrtf(float __x)

{
  float fVar1;
  
  fVar1 = sqrtf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::glGetUniformLocation  @ 0x2e6124
void glGetUniformLocation(void)

{
  glGetUniformLocation();
  return;
}

// ---- <EXTERNAL>::glActiveTexture  @ 0x2e6130
void glActiveTexture(void)

{
  glActiveTexture();
  return;
}

// ---- <EXTERNAL>::glUniform1i  @ 0x2e613c
void glUniform1i(void)

{
  glUniform1i();
  return;
}

// ---- <EXTERNAL>::glVertexAttribPointer  @ 0x2e6148
void glVertexAttribPointer(void)

{
  glVertexAttribPointer();
  return;
}

// ---- <EXTERNAL>::glDrawArrays  @ 0x2e6154
void glDrawArrays(void)

{
  glDrawArrays();
  return;
}

// ---- <EXTERNAL>::glEnable  @ 0x2e6160
void glEnable(void)

{
  glEnable();
  return;
}

// ---- <EXTERNAL>::glDisable  @ 0x2e616c
void glDisable(void)

{
  glDisable();
  return;
}

// ---- <EXTERNAL>::pthread_cond_wait  @ 0x2e6178
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_wait(pthread_cond_t *__cond,pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_cond_wait(__cond,__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_destroy  @ 0x2e6184
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_destroy(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_destroy(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_destroy  @ 0x2e6190
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_destroy(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_destroy(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_exit  @ 0x2e619c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void pthread_exit(void *__retval)

{
                    /* WARNING: Subroutine does not return */
  pthread_exit(__retval);
}

// ---- <EXTERNAL>::pthread_cond_signal  @ 0x2e61a8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_signal(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_signal(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_init  @ 0x2e61b4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_init(pthread_cond_t *__cond,pthread_condattr_t *__cond_attr)

{
  int iVar1;
  
  iVar1 = pthread_cond_init(__cond,__cond_attr);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_detach  @ 0x2e61c0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_detach(pthread_t __th)

{
  int iVar1;
  
  iVar1 = pthread_detach(__th);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_attr_init  @ 0x2e61cc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_init(pthread_attr_t *__attr)

{
  int iVar1;
  
  iVar1 = pthread_attr_init(__attr);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_join  @ 0x2e61d8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_join(pthread_t __th,void **__thread_return)

{
  int iVar1;
  
  iVar1 = pthread_join(__th,__thread_return);
  return iVar1;
}

// ---- <EXTERNAL>::strcpy  @ 0x2e61e4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strcpy(char *__dest,char *__src)

{
  char *pcVar1;
  
  pcVar1 = strcpy(__dest,__src);
  return pcVar1;
}

// ---- <EXTERNAL>::usleep  @ 0x2e61f0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int usleep(__useconds_t __useconds)

{
  int iVar1;
  
  iVar1 = usleep(__useconds);
  return iVar1;
}

// ---- <EXTERNAL>::sprintf  @ 0x2e61fc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
  int iVar1;
  
  iVar1 = sprintf(__s,__format);
  return iVar1;
}

// ---- <EXTERNAL>::fread  @ 0x2e6208
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fread(void *__ptr,size_t __size,size_t __n,FILE *__stream)

{
  size_t sVar1;
  
  sVar1 = fread(__ptr,__size,__n,__stream);
  return sVar1;
}

// ---- <EXTERNAL>::strcat  @ 0x2e6214
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strcat(char *__dest,char *__src)

{
  char *pcVar1;
  
  pcVar1 = strcat(__dest,__src);
  return pcVar1;
}

// ---- <EXTERNAL>::putchar  @ 0x2e6220
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int putchar(int __c)

{
  int iVar1;
  
  iVar1 = putchar(__c);
  return iVar1;
}

// ---- <EXTERNAL>::strncpy  @ 0x2e622c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strncpy(char *__dest,char *__src,size_t __n)

{
  char *pcVar1;
  
  pcVar1 = strncpy(__dest,__src,__n);
  return pcVar1;
}

// ---- <EXTERNAL>::strstr  @ 0x2e6238
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strstr(char *__haystack,char *__needle)

{
  char *pcVar1;
  
  pcVar1 = strstr(__haystack,__needle);
  return pcVar1;
}

// ---- <EXTERNAL>::strncmp  @ 0x2e6244
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncmp(char *__s1,char *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = strncmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::localtime  @ 0x2e6250
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * localtime(time_t *__timer)

{
  tm *ptVar1;
  
  ptVar1 = localtime(__timer);
  return ptVar1;
}

// ---- <EXTERNAL>::strftime  @ 0x2e625c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strftime(char *__s,size_t __maxsize,char *__format,tm *__tp)

{
  size_t sVar1;
  
  sVar1 = strftime(__s,__maxsize,__format,__tp);
  return sVar1;
}

// ---- <EXTERNAL>::fseek  @ 0x2e6268
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fseek(FILE *__stream,long __off,int __whence)

{
  int iVar1;
  
  iVar1 = fseek(__stream,__off,__whence);
  return iVar1;
}

// ---- <EXTERNAL>::ftell  @ 0x2e6274
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long ftell(FILE *__stream)

{
  long lVar1;
  
  lVar1 = ftell(__stream);
  return lVar1;
}

// ---- <EXTERNAL>::unlink  @ 0x2e6280
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int unlink(char *__name)

{
  int iVar1;
  
  iVar1 = unlink(__name);
  return iVar1;
}

// ---- <EXTERNAL>::vsnprintf  @ 0x2e628c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vsnprintf(char *__s,size_t __maxlen,char *__format,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vsnprintf(__s,__maxlen,__format,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::gettimeofday  @ 0x2e6298
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int gettimeofday(timeval *__tv,__timezone_ptr_t __tz)

{
  int iVar1;
  
  iVar1 = gettimeofday(__tv,__tz);
  return iVar1;
}

// ---- <EXTERNAL>::ioctl  @ 0x2e62a4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int ioctl(int __fd,ulong __request,...)

{
  int iVar1;
  
  iVar1 = ioctl(__fd,__request);
  return iVar1;
}

// ---- <EXTERNAL>::getc  @ 0x2e62b0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getc(FILE *__stream)

{
  int iVar1;
  
  iVar1 = getc(__stream);
  return iVar1;
}

// ---- <EXTERNAL>::fgets  @ 0x2e62bc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * fgets(char *__s,int __n,FILE *__stream)

{
  char *pcVar1;
  
  pcVar1 = fgets(__s,__n,__stream);
  return pcVar1;
}

// ---- <EXTERNAL>::ceil  @ 0x2e62c8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double ceil(double __x)

{
  double dVar1;
  
  dVar1 = ceil(__x);
  return dVar1;
}

// ---- <EXTERNAL>::strpbrk  @ 0x2e62d4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strpbrk(char *__s,char *__accept)

{
  char *pcVar1;
  
  pcVar1 = strpbrk(__s,__accept);
  return pcVar1;
}

// ---- <EXTERNAL>::atol  @ 0x2e62e0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long atol(char *__nptr)

{
  long lVar1;
  
  lVar1 = atol(__nptr);
  return lVar1;
}

// ---- <EXTERNAL>::strtoul  @ 0x2e62ec
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ulong strtoul(char *__nptr,char **__endptr,int __base)

{
  ulong uVar1;
  
  uVar1 = strtoul(__nptr,__endptr,__base);
  return uVar1;
}

// ---- <EXTERNAL>::strcasecmp  @ 0x2e62f8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcasecmp(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcasecmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::strncasecmp  @ 0x2e6304
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncasecmp(char *__s1,char *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = strncasecmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::fflush  @ 0x2e6310
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fflush(FILE *__stream)

{
  int iVar1;
  
  iVar1 = fflush(__stream);
  return iVar1;
}

// ---- <EXTERNAL>::fprintf  @ 0x2e631c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fprintf(FILE *__stream,char *__format,...)

{
  int iVar1;
  
  iVar1 = fprintf(__stream,__format);
  return iVar1;
}

// ---- <EXTERNAL>::gethostname  @ 0x2e6328
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int gethostname(char *__name,size_t __len)

{
  int iVar1;
  
  iVar1 = gethostname(__name,__len);
  return iVar1;
}

// ---- <EXTERNAL>::gethostbyname  @ 0x2e6334
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

hostent * gethostbyname(char *__name)

{
  hostent *phVar1;
  
  phVar1 = gethostbyname(__name);
  return phVar1;
}

// ---- <EXTERNAL>::getsockopt  @ 0x2e6340
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getsockopt(int __fd,int __level,int __optname,void *__optval,socklen_t *__optlen)

{
  int iVar1;
  
  iVar1 = getsockopt(__fd,__level,__optname,__optval,__optlen);
  return iVar1;
}

// ---- <EXTERNAL>::setsockopt  @ 0x2e634c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setsockopt(int __fd,int __level,int __optname,void *__optval,socklen_t __optlen)

{
  int iVar1;
  
  iVar1 = setsockopt(__fd,__level,__optname,__optval,__optlen);
  return iVar1;
}

// ---- <EXTERNAL>::sendto  @ 0x2e6358
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t sendto(int __fd,void *__buf,size_t __n,int __flags,sockaddr *__addr,socklen_t __addr_len)

{
  ssize_t sVar1;
  
  sVar1 = sendto(__fd,__buf,__n,__flags,__addr,__addr_len);
  return sVar1;
}

// ---- <EXTERNAL>::fcntl  @ 0x2e6364
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fcntl(int __fd,int __cmd,...)

{
  int iVar1;
  
  iVar1 = fcntl(__fd,__cmd);
  return iVar1;
}

// ---- <EXTERNAL>::getsockname  @ 0x2e6370
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getsockname(int __fd,sockaddr *__addr,socklen_t *__len)

{
  int iVar1;
  
  iVar1 = getsockname(__fd,__addr,__len);
  return iVar1;
}

// ---- <EXTERNAL>::inet_addr  @ 0x2e637c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

in_addr_t inet_addr(char *__cp)

{
  in_addr_t iVar1;
  
  iVar1 = inet_addr(__cp);
  return iVar1;
}

// ---- <EXTERNAL>::socket  @ 0x2e6388
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int socket(int __domain,int __type,int __protocol)

{
  int iVar1;
  
  iVar1 = socket(__domain,__type,__protocol);
  return iVar1;
}

// ---- <EXTERNAL>::bind  @ 0x2e6394
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int bind(int __fd,sockaddr *__addr,socklen_t __len)

{
  int iVar1;
  
  iVar1 = bind(__fd,__addr,__len);
  return iVar1;
}

// ---- <EXTERNAL>::close  @ 0x2e63a0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int close(int __fd)

{
  int iVar1;
  
  iVar1 = close(__fd);
  return iVar1;
}

// ---- <EXTERNAL>::recvfrom  @ 0x2e63ac
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t recvfrom(int __fd,void *__buf,size_t __n,int __flags,sockaddr *__addr,socklen_t *__addr_len)

{
  ssize_t sVar1;
  
  sVar1 = recvfrom(__fd,__buf,__n,__flags,__addr,__addr_len);
  return sVar1;
}

// ---- <EXTERNAL>::inet_ntoa  @ 0x2e63b8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * inet_ntoa(in_addr __in)

{
  char *pcVar1;
  
  pcVar1 = inet_ntoa(__in);
  return pcVar1;
}

// ---- <EXTERNAL>::strtoull  @ 0x2e63c4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ulonglong strtoull(char *__nptr,char **__endptr,int __base)

{
  ulonglong uVar1;
  
  uVar1 = strtoull(__nptr,__endptr,__base);
  return uVar1;
}

// ---- <EXTERNAL>::pthread_cond_timedwait  @ 0x2e63d0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_timedwait(pthread_cond_t *__cond,pthread_mutex_t *__mutex,timespec *__abstime)

{
  int iVar1;
  
  iVar1 = pthread_cond_timedwait(__cond,__mutex,__abstime);
  return iVar1;
}

// ---- <EXTERNAL>::fputs  @ 0x2e63dc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputs(char *__s,FILE *__stream)

{
  int iVar1;
  
  iVar1 = fputs(__s,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_attr_setschedparam  @ 0x2e63e8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_setschedparam(pthread_attr_t *__attr,sched_param *__param)

{
  int iVar1;
  
  iVar1 = pthread_attr_setschedparam(__attr,__param);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_attr_setstacksize  @ 0x2e63f4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_setstacksize(pthread_attr_t *__attr,size_t __stacksize)

{
  int iVar1;
  
  iVar1 = pthread_attr_setstacksize(__attr,__stacksize);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_attr_setdetachstate  @ 0x2e6400
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_setdetachstate(pthread_attr_t *__attr,int __detachstate)

{
  int iVar1;
  
  iVar1 = pthread_attr_setdetachstate(__attr,__detachstate);
  return iVar1;
}

// ---- <EXTERNAL>::wcslen  @ 0x2e640c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcslen(wchar_t *__s)

{
  size_t sVar1;
  
  sVar1 = wcslen(__s);
  return sVar1;
}

// ---- <EXTERNAL>::wcscpy  @ 0x2e6418
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wcscpy(wchar_t *__dest,wchar_t *__src)

{
  wchar_t *pwVar1;
  
  pwVar1 = wcscpy(__dest,__src);
  return pwVar1;
}

// ---- <EXTERNAL>::wcscat  @ 0x2e6424
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wcscat(wchar_t *__dest,wchar_t *__src)

{
  wchar_t *pwVar1;
  
  pwVar1 = wcscat(__dest,__src);
  return pwVar1;
}

// ---- <EXTERNAL>::wcscmp  @ 0x2e6430
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wcscmp(wchar_t *__s1,wchar_t *__s2)

{
  int iVar1;
  
  iVar1 = wcscmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutexattr_init  @ 0x2e643c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutexattr_init(pthread_mutexattr_t *__attr)

{
  int iVar1;
  
  iVar1 = pthread_mutexattr_init(__attr);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutexattr_destroy  @ 0x2e6448
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutexattr_destroy(pthread_mutexattr_t *__attr)

{
  int iVar1;
  
  iVar1 = pthread_mutexattr_destroy(__attr);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_broadcast  @ 0x2e6454
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_broadcast(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_broadcast(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::listen  @ 0x2e6460
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int listen(int __fd,int __n)

{
  int iVar1;
  
  iVar1 = listen(__fd,__n);
  return iVar1;
}

// ---- <EXTERNAL>::shutdown  @ 0x2e646c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int shutdown(int __fd,int __how)

{
  int iVar1;
  
  iVar1 = shutdown(__fd,__how);
  return iVar1;
}

// ---- <EXTERNAL>::connect  @ 0x2e6478
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int connect(int __fd,sockaddr *__addr,socklen_t __len)

{
  int iVar1;
  
  iVar1 = connect(__fd,__addr,__len);
  return iVar1;
}

// ---- <EXTERNAL>::select  @ 0x2e6484
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int select(int __nfds,fd_set *__readfds,fd_set *__writefds,fd_set *__exceptfds,timeval *__timeout)

{
  int iVar1;
  
  iVar1 = select(__nfds,__readfds,__writefds,__exceptfds,__timeout);
  return iVar1;
}

// ---- <EXTERNAL>::accept  @ 0x2e6490
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int accept(int __fd,sockaddr *__addr,socklen_t *__addr_len)

{
  int iVar1;
  
  iVar1 = accept(__fd,__addr,__addr_len);
  return iVar1;
}

// ---- <EXTERNAL>::send  @ 0x2e649c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t send(int __fd,void *__buf,size_t __n,int __flags)

{
  ssize_t sVar1;
  
  sVar1 = send(__fd,__buf,__n,__flags);
  return sVar1;
}

// ---- <EXTERNAL>::recv  @ 0x2e64a8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t recv(int __fd,void *__buf,size_t __n,int __flags)

{
  ssize_t sVar1;
  
  sVar1 = recv(__fd,__buf,__n,__flags);
  return sVar1;
}

// ---- <EXTERNAL>::strncat  @ 0x2e64b4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strncat(char *__dest,char *__src,size_t __n)

{
  char *pcVar1;
  
  pcVar1 = strncat(__dest,__src,__n);
  return pcVar1;
}

// ---- <EXTERNAL>::strrchr  @ 0x2e64c0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strrchr(char *__s,int __c)

{
  char *pcVar1;
  
  pcVar1 = strrchr(__s,__c);
  return pcVar1;
}

// ---- <EXTERNAL>::opendir  @ 0x2e64cc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

DIR * opendir(char *__name)

{
  DIR *pDVar1;
  
  pDVar1 = opendir(__name);
  return pDVar1;
}

// ---- <EXTERNAL>::readdir  @ 0x2e64d8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

dirent * readdir(DIR *__dirp)

{
  dirent *pdVar1;
  
  pdVar1 = readdir(__dirp);
  return pdVar1;
}

// ---- <EXTERNAL>::fnmatch  @ 0x2e64e4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fnmatch(char *__pattern,char *__name,int __flags)

{
  int iVar1;
  
  iVar1 = fnmatch(__pattern,__name,__flags);
  return iVar1;
}

// ---- <EXTERNAL>::stat  @ 0x2e64f0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int stat(char *__file,stat *__buf)

{
  int iVar1;
  
  iVar1 = stat(__file,__buf);
  return iVar1;
}

// ---- <EXTERNAL>::closedir  @ 0x2e64fc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int closedir(DIR *__dirp)

{
  int iVar1;
  
  iVar1 = closedir(__dirp);
  return iVar1;
}

// ---- <EXTERNAL>::getaddrinfo  @ 0x2e6508
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getaddrinfo(char *__name,char *__service,addrinfo *__req,addrinfo **__pai)

{
  int iVar1;
  
  iVar1 = getaddrinfo(__name,__service,__req,__pai);
  return iVar1;
}

// ---- <EXTERNAL>::gai_strerror  @ 0x2e6514
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * gai_strerror(int __ecode)

{
  char *pcVar1;
  
  pcVar1 = gai_strerror(__ecode);
  return pcVar1;
}

// ---- <EXTERNAL>::perror  @ 0x2e6520
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void perror(char *__s)

{
  perror(__s);
  return;
}

// ---- <EXTERNAL>::freeaddrinfo  @ 0x2e652c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void freeaddrinfo(addrinfo *__ai)

{
  freeaddrinfo(__ai);
  return;
}

// ---- <EXTERNAL>::write  @ 0x2e6538
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t write(int __fd,void *__buf,size_t __n)

{
  ssize_t sVar1;
  
  sVar1 = write(__fd,__buf,__n);
  return sVar1;
}

// ---- <EXTERNAL>::read  @ 0x2e6544
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t read(int __fd,void *__buf,size_t __nbytes)

{
  ssize_t sVar1;
  
  sVar1 = read(__fd,__buf,__nbytes);
  return sVar1;
}

// ---- <EXTERNAL>::strchr  @ 0x2e6550
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strchr(char *__s,int __c)

{
  char *pcVar1;
  
  pcVar1 = strchr(__s,__c);
  return pcVar1;
}

// ---- <EXTERNAL>::poll  @ 0x2e655c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int poll(pollfd *__fds,nfds_t __nfds,int __timeout)

{
  int iVar1;
  
  iVar1 = poll(__fds,__nfds,__timeout);
  return iVar1;
}

// ---- <EXTERNAL>::getnameinfo  @ 0x2e6568
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getnameinfo(sockaddr *__sa,socklen_t __salen,char *__host,socklen_t __hostlen,char *__serv,
               socklen_t __servlen,uint __flags)

{
  int iVar1;
  
  iVar1 = getnameinfo(__sa,__salen,__host,__hostlen,__serv,__servlen,__flags);
  return iVar1;
}

// ---- <EXTERNAL>::sscanf  @ 0x2e6574
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sscanf(char *__s,char *__format,...)

{
  int iVar1;
  
  iVar1 = sscanf(__s,__format);
  return iVar1;
}

// ---- <EXTERNAL>::calloc  @ 0x2e6580
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * calloc(size_t __nmemb,size_t __size)

{
  void *pvVar1;
  
  pvVar1 = calloc(__nmemb,__size);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_equal  @ 0x2e658c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_equal(pthread_t __thread1,pthread_t __thread2)

{
  int iVar1;
  
  iVar1 = pthread_equal(__thread1,__thread2);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_getspecific  @ 0x2e6598
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * pthread_getspecific(pthread_key_t __key)

{
  void *pvVar1;
  
  pvVar1 = pthread_getspecific(__key);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_setspecific  @ 0x2e65a4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setspecific(pthread_key_t __key,void *__pointer)

{
  int iVar1;
  
  iVar1 = pthread_setspecific(__key,__pointer);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_key_delete  @ 0x2e65b0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_delete(pthread_key_t __key)

{
  int iVar1;
  
  iVar1 = pthread_key_delete(__key);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_key_create  @ 0x2e65bc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_create(pthread_key_t *__key,__destr_function *__destr_function)

{
  int iVar1;
  
  iVar1 = pthread_key_create(__key,__destr_function);
  return iVar1;
}

// ---- <EXTERNAL>::vasprintf  @ 0x2e65c8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vasprintf(char **__ptr,char *__f,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vasprintf(__ptr,__f,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_self  @ 0x2e65d4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

pthread_t pthread_self(void)

{
  pthread_t pVar1;
  
  pVar1 = pthread_self();
  return pVar1;
}

// ---- <EXTERNAL>::pthread_setname_np  @ 0x2e65e0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setname_np(pthread_t __target_thread,char *__name)

{
  int iVar1;
  
  iVar1 = pthread_setname_np(__target_thread,__name);
  return iVar1;
}

// ---- <EXTERNAL>::localtime_r  @ 0x2e65ec
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * localtime_r(time_t *__timer,tm *__tp)

{
  tm *ptVar1;
  
  ptVar1 = localtime_r(__timer,__tp);
  return ptVar1;
}

// ---- <EXTERNAL>::strerror  @ 0x2e65f8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strerror(int __errnum)

{
  char *pcVar1;
  
  pcVar1 = strerror(__errnum);
  return pcVar1;
}

// ---- <EXTERNAL>::sched_yield  @ 0x2e6604
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sched_yield(void)

{
  int iVar1;
  
  iVar1 = sched_yield();
  return iVar1;
}

// ---- <EXTERNAL>::inflateEnd  @ 0x2e6610
void inflateEnd(void)

{
  inflateEnd();
  return;
}

// ---- <EXTERNAL>::inflateInit2_  @ 0x2e661c
void inflateInit2_(void)

{
  inflateInit2_();
  return;
}

// ---- <EXTERNAL>::inflate  @ 0x2e6628
void inflate(void)

{
  inflate();
  return;
}

// ---- <EXTERNAL>::deflateInit2_  @ 0x2e6634
void deflateInit2_(void)

{
  deflateInit2_();
  return;
}

// ---- <EXTERNAL>::deflate  @ 0x2e6640
void deflate(void)

{
  deflate();
  return;
}

// ---- <EXTERNAL>::deflateEnd  @ 0x2e664c
void deflateEnd(void)

{
  deflateEnd();
  return;
}

// ---- <EXTERNAL>::lseek  @ 0x2e6658
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__off_t lseek(int __fd,__off_t __offset,int __whence)

{
  __off_t _Var1;
  
  _Var1 = lseek(__fd,__offset,__whence);
  return _Var1;
}

// ---- <EXTERNAL>::nanosleep  @ 0x2e6664
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int nanosleep(timespec *__requested_time,timespec *__remaining)

{
  int iVar1;
  
  iVar1 = nanosleep(__requested_time,__remaining);
  return iVar1;
}

// ---- <EXTERNAL>::open  @ 0x2e6670
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int open(char *__file,int __oflag,...)

{
  int iVar1;
  
  iVar1 = open(__file,__oflag);
  return iVar1;
}

// ---- <EXTERNAL>::dlsym  @ 0x2e667c
void dlsym(void)

{
  dlsym();
  return;
}

// ---- <EXTERNAL>::glGetString  @ 0x2e6688
void glGetString(void)

{
  glGetString();
  return;
}

// ---- <EXTERNAL>::glGetIntegerv  @ 0x2e6694
void glGetIntegerv(void)

{
  glGetIntegerv();
  return;
}

// ---- <EXTERNAL>::exit  @ 0x2e66a0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void exit(int __status)

{
                    /* WARNING: Subroutine does not return */
  exit(__status);
}

// ---- <EXTERNAL>::isnanf  @ 0x2e66ac
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isnanf(float __value)

{
  int iVar1;
  
  iVar1 = isnanf(__value);
  return iVar1;
}

// ---- <EXTERNAL>::powf  @ 0x2e66b8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float powf(float __x,float __y)

{
  float fVar1;
  
  fVar1 = powf(__x,__y);
  return fVar1;
}

// ---- <EXTERNAL>::acosf  @ 0x2e66c4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float acosf(float __x)

{
  float fVar1;
  
  fVar1 = acosf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::asinf  @ 0x2e66d0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float asinf(float __x)

{
  float fVar1;
  
  fVar1 = asinf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::logf  @ 0x2e66dc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float logf(float __x)

{
  float fVar1;
  
  fVar1 = logf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::expf  @ 0x2e66e8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float expf(float __x)

{
  float fVar1;
  
  fVar1 = expf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::fmodf  @ 0x2e66f4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float fmodf(float __x,float __y)

{
  float fVar1;
  
  fVar1 = fmodf(__x,__y);
  return fVar1;
}

// ---- <EXTERNAL>::tanf  @ 0x2e6700
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float tanf(float __x)

{
  float fVar1;
  
  fVar1 = tanf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::glClearColor  @ 0x2e670c
void glClearColor(void)

{
  glClearColor();
  return;
}

// ---- <EXTERNAL>::glClear  @ 0x2e6718
void glClear(void)

{
  glClear();
  return;
}

// ---- <EXTERNAL>::glClearDepthf  @ 0x2e6724
void glClearDepthf(void)

{
  glClearDepthf();
  return;
}

// ---- <EXTERNAL>::glDepthFunc  @ 0x2e6730
void glDepthFunc(void)

{
  glDepthFunc();
  return;
}

// ---- <EXTERNAL>::glDeleteBuffers  @ 0x2e673c
void glDeleteBuffers(void)

{
  glDeleteBuffers();
  return;
}

// ---- <EXTERNAL>::glGenBuffers  @ 0x2e6748
void glGenBuffers(void)

{
  glGenBuffers();
  return;
}

// ---- <EXTERNAL>::glBindBuffer  @ 0x2e6754
void glBindBuffer(void)

{
  glBindBuffer();
  return;
}

// ---- <EXTERNAL>::glBufferData  @ 0x2e6760
void glBufferData(void)

{
  glBufferData();
  return;
}

// ---- <EXTERNAL>::glEnableVertexAttribArray  @ 0x2e676c
void glEnableVertexAttribArray(void)

{
  glEnableVertexAttribArray();
  return;
}

// ---- <EXTERNAL>::glGenFramebuffers  @ 0x2e6778
void glGenFramebuffers(void)

{
  glGenFramebuffers();
  return;
}

// ---- <EXTERNAL>::glBindFramebuffer  @ 0x2e6784
void glBindFramebuffer(void)

{
  glBindFramebuffer();
  return;
}

// ---- <EXTERNAL>::glFramebufferTexture2D  @ 0x2e6790
void glFramebufferTexture2D(void)

{
  glFramebufferTexture2D();
  return;
}

// ---- <EXTERNAL>::glCheckFramebufferStatus  @ 0x2e679c
void glCheckFramebufferStatus(void)

{
  glCheckFramebufferStatus();
  return;
}

// ---- <EXTERNAL>::glGetFloatv  @ 0x2e67a8
void glGetFloatv(void)

{
  glGetFloatv();
  return;
}

// ---- <EXTERNAL>::glDeleteFramebuffers  @ 0x2e67b4
void glDeleteFramebuffers(void)

{
  glDeleteFramebuffers();
  return;
}

// ---- <EXTERNAL>::glViewport  @ 0x2e67c0
void glViewport(void)

{
  glViewport();
  return;
}

// ---- <EXTERNAL>::glDrawElements  @ 0x2e67cc
void glDrawElements(void)

{
  glDrawElements();
  return;
}

// ---- <EXTERNAL>::glIsEnabled  @ 0x2e67d8
void glIsEnabled(void)

{
  glIsEnabled();
  return;
}

// ---- <EXTERNAL>::glStencilMask  @ 0x2e67e4
void glStencilMask(void)

{
  glStencilMask();
  return;
}

// ---- <EXTERNAL>::glGetBooleanv  @ 0x2e67f0
void glGetBooleanv(void)

{
  glGetBooleanv();
  return;
}

// ---- <EXTERNAL>::glDepthMask  @ 0x2e67fc
void glDepthMask(void)

{
  glDepthMask();
  return;
}

// ---- <EXTERNAL>::glStencilFunc  @ 0x2e6808
void glStencilFunc(void)

{
  glStencilFunc();
  return;
}

// ---- <EXTERNAL>::glStencilOp  @ 0x2e6814
void glStencilOp(void)

{
  glStencilOp();
  return;
}

// ---- <EXTERNAL>::glDeleteRenderbuffers  @ 0x2e6820
void glDeleteRenderbuffers(void)

{
  glDeleteRenderbuffers();
  return;
}

// ---- <EXTERNAL>::glGenRenderbuffers  @ 0x2e682c
void glGenRenderbuffers(void)

{
  glGenRenderbuffers();
  return;
}

// ---- <EXTERNAL>::glBindRenderbuffer  @ 0x2e6838
void glBindRenderbuffer(void)

{
  glBindRenderbuffer();
  return;
}

// ---- <EXTERNAL>::glRenderbufferStorage  @ 0x2e6844
void glRenderbufferStorage(void)

{
  glRenderbufferStorage();
  return;
}

// ---- <EXTERNAL>::glFramebufferRenderbuffer  @ 0x2e6850
void glFramebufferRenderbuffer(void)

{
  glFramebufferRenderbuffer();
  return;
}

// ---- <EXTERNAL>::glClearStencil  @ 0x2e685c
void glClearStencil(void)

{
  glClearStencil();
  return;
}

// ---- <EXTERNAL>::glPixelStorei  @ 0x2e6868
void glPixelStorei(void)

{
  glPixelStorei();
  return;
}

// ---- <EXTERNAL>::glReadPixels  @ 0x2e6874
void glReadPixels(void)

{
  glReadPixels();
  return;
}

// ---- <EXTERNAL>::glBufferSubData  @ 0x2e6880
void glBufferSubData(void)

{
  glBufferSubData();
  return;
}

// ---- <EXTERNAL>::ceilf  @ 0x2e688c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float ceilf(float __x)

{
  float fVar1;
  
  fVar1 = ceilf(__x);
  return fVar1;
}

// ---- <EXTERNAL>::glScissor  @ 0x2e6898
void glScissor(void)

{
  glScissor();
  return;
}

// ---- <EXTERNAL>::tolower  @ 0x2e68a4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int tolower(int __c)

{
  int iVar1;
  
  iVar1 = tolower(__c);
  return iVar1;
}

// ---- <EXTERNAL>::glCreateProgram  @ 0x2e68b0
void glCreateProgram(void)

{
  glCreateProgram();
  return;
}

// ---- <EXTERNAL>::glAttachShader  @ 0x2e68bc
void glAttachShader(void)

{
  glAttachShader();
  return;
}

// ---- <EXTERNAL>::glCreateShader  @ 0x2e68c8
void glCreateShader(void)

{
  glCreateShader();
  return;
}

// ---- <EXTERNAL>::glShaderSource  @ 0x2e68d4
void glShaderSource(void)

{
  glShaderSource();
  return;
}

// ---- <EXTERNAL>::glCompileShader  @ 0x2e68e0
void glCompileShader(void)

{
  glCompileShader();
  return;
}

// ---- <EXTERNAL>::glGetShaderiv  @ 0x2e68ec
void glGetShaderiv(void)

{
  glGetShaderiv();
  return;
}

// ---- <EXTERNAL>::glGetShaderSource  @ 0x2e68f8
void glGetShaderSource(void)

{
  glGetShaderSource();
  return;
}

// ---- <EXTERNAL>::abort  @ 0x2e6904
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void abort(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- <EXTERNAL>::glBindAttribLocation  @ 0x2e6910
void glBindAttribLocation(void)

{
  glBindAttribLocation();
  return;
}

// ---- <EXTERNAL>::glLinkProgram  @ 0x2e691c
void glLinkProgram(void)

{
  glLinkProgram();
  return;
}

// ---- <EXTERNAL>::glDeleteShader  @ 0x2e6928
void glDeleteShader(void)

{
  glDeleteShader();
  return;
}

// ---- <EXTERNAL>::glUniform2i  @ 0x2e6934
void glUniform2i(void)

{
  glUniform2i();
  return;
}

// ---- <EXTERNAL>::glUniform3i  @ 0x2e6940
void glUniform3i(void)

{
  glUniform3i();
  return;
}

// ---- <EXTERNAL>::glUniform4i  @ 0x2e694c
void glUniform4i(void)

{
  glUniform4i();
  return;
}

// ---- <EXTERNAL>::glUniform2iv  @ 0x2e6958
void glUniform2iv(void)

{
  glUniform2iv();
  return;
}

// ---- <EXTERNAL>::glUniform3iv  @ 0x2e6964
void glUniform3iv(void)

{
  glUniform3iv();
  return;
}

// ---- <EXTERNAL>::glUniform4iv  @ 0x2e6970
void glUniform4iv(void)

{
  glUniform4iv();
  return;
}

// ---- <EXTERNAL>::glUniform1f  @ 0x2e697c
void glUniform1f(void)

{
  glUniform1f();
  return;
}

// ---- <EXTERNAL>::glUniform2f  @ 0x2e6988
void glUniform2f(void)

{
  glUniform2f();
  return;
}

// ---- <EXTERNAL>::glUniform3f  @ 0x2e6994
void glUniform3f(void)

{
  glUniform3f();
  return;
}

// ---- <EXTERNAL>::glUniform4f  @ 0x2e69a0
void glUniform4f(void)

{
  glUniform4f();
  return;
}

// ---- <EXTERNAL>::glUniform2fv  @ 0x2e69ac
void glUniform2fv(void)

{
  glUniform2fv();
  return;
}

// ---- <EXTERNAL>::glUniform3fv  @ 0x2e69b8
void glUniform3fv(void)

{
  glUniform3fv();
  return;
}

// ---- <EXTERNAL>::glUniform4fv  @ 0x2e69c4
void glUniform4fv(void)

{
  glUniform4fv();
  return;
}

// ---- <EXTERNAL>::glUniformMatrix4fv  @ 0x2e69d0
void glUniformMatrix4fv(void)

{
  glUniformMatrix4fv();
  return;
}

// ---- <EXTERNAL>::glDeleteProgram  @ 0x2e69dc
void glDeleteProgram(void)

{
  glDeleteProgram();
  return;
}

// ---- <EXTERNAL>::glUseProgram  @ 0x2e69e8
void glUseProgram(void)

{
  glUseProgram();
  return;
}

// ---- <EXTERNAL>::glBlendFunc  @ 0x2e69f4
void glBlendFunc(void)

{
  glBlendFunc();
  return;
}

// ---- <EXTERNAL>::glBlendEquation  @ 0x2e6a00
void glBlendEquation(void)

{
  glBlendEquation();
  return;
}

// ---- <EXTERNAL>::glBindTexture  @ 0x2e6a0c
void glBindTexture(void)

{
  glBindTexture();
  return;
}

// ---- <EXTERNAL>::glDeleteTextures  @ 0x2e6a18
void glDeleteTextures(void)

{
  glDeleteTextures();
  return;
}

// ---- <EXTERNAL>::glDisableVertexAttribArray  @ 0x2e6a24
void glDisableVertexAttribArray(void)

{
  glDisableVertexAttribArray();
  return;
}

// ---- <EXTERNAL>::isspace  @ 0x2e6a30
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isspace(int param_1)

{
  int iVar1;
  
  iVar1 = isspace(param_1);
  return iVar1;
}

// ---- <EXTERNAL>::isalnum  @ 0x2e6a3c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isalnum(int param_1)

{
  int iVar1;
  
  iVar1 = isalnum(param_1);
  return iVar1;
}

// ---- <EXTERNAL>::isalpha  @ 0x2e6a48
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isalpha(int param_1)

{
  int iVar1;
  
  iVar1 = isalpha(param_1);
  return iVar1;
}

// ---- <EXTERNAL>::vfprintf  @ 0x2e6a54
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vfprintf(FILE *__s,char *__format,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vfprintf(__s,__format,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::gzopen  @ 0x2e6a60
void gzopen(void)

{
  gzopen();
  return;
}

// ---- <EXTERNAL>::gzread  @ 0x2e6a6c
void gzread(void)

{
  gzread();
  return;
}

// ---- <EXTERNAL>::gzclose  @ 0x2e6a78
void gzclose(void)

{
  gzclose();
  return;
}

// ---- <EXTERNAL>::uncompress  @ 0x2e6a84
void uncompress(void)

{
  uncompress();
  return;
}

// ---- <EXTERNAL>::crc32  @ 0x2e6a90
void crc32(void)

{
  crc32();
  return;
}

// ---- <EXTERNAL>::glGenTextures  @ 0x2e6a9c
void glGenTextures(void)

{
  glGenTextures();
  return;
}

// ---- <EXTERNAL>::glTexParameteri  @ 0x2e6aa8
void glTexParameteri(void)

{
  glTexParameteri();
  return;
}

// ---- <EXTERNAL>::glTexImage2D  @ 0x2e6ab4
void glTexImage2D(void)

{
  glTexImage2D();
  return;
}

// ---- <EXTERNAL>::glGenerateMipmap  @ 0x2e6ac0
void glGenerateMipmap(void)

{
  glGenerateMipmap();
  return;
}

// ---- <EXTERNAL>::glCompressedTexImage2D  @ 0x2e6acc
void glCompressedTexImage2D(void)

{
  glCompressedTexImage2D();
  return;
}

// ---- <EXTERNAL>::glGetError  @ 0x2e6ad8
void glGetError(void)

{
  glGetError();
  return;
}

// ---- <EXTERNAL>::bsearch  @ 0x2e6ae4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * bsearch(void *__key,void *__base,size_t __nmemb,size_t __size,__compar_fn_t __compar)

{
  void *pvVar1;
  
  pvVar1 = bsearch(__key,__base,__nmemb,__size,__compar);
  return pvVar1;
}

// ---- <EXTERNAL>::fstat  @ 0x2e6af0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fstat(int __fd,stat *__buf)

{
  int iVar1;
  
  iVar1 = fstat(__fd,__buf);
  return iVar1;
}

// ---- <EXTERNAL>::strtoll  @ 0x2e6afc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

longlong strtoll(char *__nptr,char **__endptr,int __base)

{
  longlong lVar1;
  
  lVar1 = strtoll(__nptr,__endptr,__base);
  return lVar1;
}

// ---- <EXTERNAL>::clock_gettime  @ 0x2e6b08
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int clock_gettime(clockid_t __clock_id,timespec *__tp)

{
  int iVar1;
  
  iVar1 = clock_gettime(__clock_id,__tp);
  return iVar1;
}

// ---- <EXTERNAL>::siglongjmp  @ 0x2e6b14
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void siglongjmp(__jmp_buf_tag *__env,int __val)

{
                    /* WARNING: Subroutine does not return */
  siglongjmp(__env,__val);
}

// ---- <EXTERNAL>::inet_ntop  @ 0x2e6b20
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * inet_ntop(int __af,void *__cp,char *__buf,socklen_t __len)

{
  char *pcVar1;
  
  pcVar1 = inet_ntop(__af,__cp,__buf,__len);
  return pcVar1;
}

// ---- <EXTERNAL>::sigaction  @ 0x2e6b2c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sigaction(int __sig,sigaction *__act,sigaction *__oact)

{
  int iVar1;
  
  iVar1 = sigaction(__sig,__act,__oact);
  return iVar1;
}

// ---- <EXTERNAL>::alarm  @ 0x2e6b38
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

uint alarm(uint __seconds)

{
  uint uVar1;
  
  uVar1 = alarm(__seconds);
  return uVar1;
}

// ---- <EXTERNAL>::sigsetjmp  @ 0x2e6b44
void sigsetjmp(void)

{
  sigsetjmp();
  return;
}

// ---- <EXTERNAL>::basename  @ 0x2e6b50
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * basename(char *__filename)

{
  char *pcVar1;
  
  pcVar1 = basename(__filename);
  return pcVar1;
}

// ---- <EXTERNAL>::strtol  @ 0x2e6b5c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long strtol(char *__nptr,char **__endptr,int __base)

{
  long lVar1;
  
  lVar1 = strtol(__nptr,__endptr,__base);
  return lVar1;
}

// ---- <EXTERNAL>::memrchr  @ 0x2e6b68
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memrchr(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memrchr(__s,__c,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::strtok_r  @ 0x2e6b74
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strtok_r(char *__s,char *__delim,char **__save_ptr)

{
  char *pcVar1;
  
  pcVar1 = strtok_r(__s,__delim,__save_ptr);
  return pcVar1;
}

// ---- <EXTERNAL>::qsort  @ 0x2e6b80
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void qsort(void *__base,size_t __nmemb,size_t __size,__compar_fn_t __compar)

{
  qsort(__base,__nmemb,__size,__compar);
  return;
}

// ---- <EXTERNAL>::memchr  @ 0x2e6b8c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memchr(void *__s,int __c,size_t __n)

{
  void *pvVar1;
  
  pvVar1 = memchr(__s,__c,__n);
  return pvVar1;
}

// ---- <EXTERNAL>::inet_pton  @ 0x2e6b98
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int inet_pton(int __af,char *__cp,void *__buf)

{
  int iVar1;
  
  iVar1 = inet_pton(__af,__cp,__buf);
  return iVar1;
}

// ---- <EXTERNAL>::zlibVersion  @ 0x2e6ba4
void zlibVersion(void)

{
  zlibVersion();
  return;
}

// ---- <EXTERNAL>::getenv  @ 0x2e6bb0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * getenv(char *__name)

{
  char *pcVar1;
  
  pcVar1 = getenv(__name);
  return pcVar1;
}

// ---- <EXTERNAL>::geteuid  @ 0x2e6bbc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__uid_t geteuid(void)

{
  __uid_t _Var1;
  
  _Var1 = geteuid();
  return _Var1;
}

// ---- <EXTERNAL>::getpwuid  @ 0x2e6bc8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

passwd * getpwuid(__uid_t __uid)

{
  passwd *ppVar1;
  
  ppVar1 = getpwuid(__uid);
  return ppVar1;
}

// ---- <EXTERNAL>::strdup  @ 0x2e6bd4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strdup(char *__s)

{
  char *pcVar1;
  
  pcVar1 = strdup(__s);
  return pcVar1;
}

// ---- <EXTERNAL>::getpeername  @ 0x2e6be0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getpeername(int __fd,sockaddr *__addr,socklen_t *__len)

{
  int iVar1;
  
  iVar1 = getpeername(__fd,__addr,__len);
  return iVar1;
}

// ---- <EXTERNAL>::inflateInit_  @ 0x2e6bec
void inflateInit_(void)

{
  inflateInit_();
  return;
}

// ---- <EXTERNAL>::strerror_r  @ 0x2e6bf8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strerror_r(int __errnum,char *__buf,size_t __buflen)

{
  char *pcVar1;
  
  pcVar1 = strerror_r(__errnum,__buf,__buflen);
  return pcVar1;
}

// ---- <EXTERNAL>::gmtime_r  @ 0x2e6c04
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * gmtime_r(time_t *__timer,tm *__tp)

{
  tm *ptVar1;
  
  ptVar1 = gmtime_r(__timer,__tp);
  return ptVar1;
}

// ---- <EXTERNAL>::strlcat  @ 0x2e6c10
void strlcat(void)

{
  strlcat();
  return;
}

// ---- <EXTERNAL>::waitpid  @ 0x2e6c1c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t waitpid(__pid_t __pid,int *__stat_loc,int __options)

{
  __pid_t _Var1;
  
  _Var1 = waitpid(__pid,__stat_loc,__options);
  return _Var1;
}

// ---- <EXTERNAL>::kill  @ 0x2e6c28
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int kill(__pid_t __pid,int __sig)

{
  int iVar1;
  
  iVar1 = kill(__pid,__sig);
  return iVar1;
}

// ---- <EXTERNAL>::access  @ 0x2e6c34
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int access(char *__name,int __type)

{
  int iVar1;
  
  iVar1 = access(__name,__type);
  return iVar1;
}

// ---- <EXTERNAL>::socketpair  @ 0x2e6c40
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int socketpair(int __domain,int __type,int __protocol,int *__fds)

{
  int iVar1;
  
  iVar1 = socketpair(__domain,__type,__protocol,__fds);
  return iVar1;
}

// ---- <EXTERNAL>::fork  @ 0x2e6c4c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t fork(void)

{
  __pid_t _Var1;
  
  _Var1 = fork();
  return _Var1;
}

// ---- <EXTERNAL>::dup2  @ 0x2e6c58
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int dup2(int __fd,int __fd2)

{
  int iVar1;
  
  iVar1 = dup2(__fd,__fd2);
  return iVar1;
}

// ---- <EXTERNAL>::execl  @ 0x2e6c64
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int execl(char *__path,char *__arg,...)

{
  int iVar1;
  
  iVar1 = execl(__path,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::getservbyname  @ 0x2e6c70
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

servent * getservbyname(char *__name,char *__proto)

{
  servent *psVar1;
  
  psVar1 = getservbyname(__name,__proto);
  return psVar1;
}

// ---- <EXTERNAL>::closelog  @ 0x2e6c7c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void closelog(void)

{
  closelog();
  return;
}

// ---- <EXTERNAL>::openlog  @ 0x2e6c88
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void openlog(char *__ident,int __option,int __facility)

{
  openlog(__ident,__option,__facility);
  return;
}

// ---- <EXTERNAL>::zError  @ 0x2e6ca0
void zError(void)

{
  zError();
  return;
}

// ---- <EXTERNAL>::deflateInit_  @ 0x2e6cac
void deflateInit_(void)

{
  deflateInit_();
  return;
}

// ---- <EXTERNAL>::getpid  @ 0x2e6cb8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t getpid(void)

{
  __pid_t _Var1;
  
  _Var1 = getpid();
  return _Var1;
}

// ---- <EXTERNAL>::dlopen  @ 0x2e6cc4
void dlopen(void)

{
  dlopen();
  return;
}

// ---- <EXTERNAL>::dlclose  @ 0x2e6cd0
void dlclose(void)

{
  dlclose();
  return;
}

// ---- <EXTERNAL>::dlerror  @ 0x2e6cdc
void dlerror(void)

{
  dlerror();
  return;
}

// ---- <EXTERNAL>::getuid  @ 0x2e6ce8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__uid_t getuid(void)

{
  __uid_t _Var1;
  
  _Var1 = getuid();
  return _Var1;
}

// ---- <EXTERNAL>::setvbuf  @ 0x2e6cf4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setvbuf(FILE *__stream,char *__buf,int __modes,size_t __n)

{
  int iVar1;
  
  iVar1 = setvbuf(__stream,__buf,__modes,__n);
  return iVar1;
}

// ---- <EXTERNAL>::chmod  @ 0x2e6d00
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int chmod(char *__file,__mode_t __mode)

{
  int iVar1;
  
  iVar1 = chmod(__file,__mode);
  return iVar1;
}

// ---- <EXTERNAL>::bsd_signal  @ 0x2e6d0c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__sighandler_t bsd_signal(int __sig,__sighandler_t __handler)

{
  __sighandler_t p_Var1;
  
  p_Var1 = bsd_signal(__sig,__handler);
  return p_Var1;
}

// ---- <EXTERNAL>::fputc  @ 0x2e6d18
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputc(int __c,FILE *__stream)

{
  int iVar1;
  
  iVar1 = fputc(__c,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::getgid  @ 0x2e6d24
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__gid_t getgid(void)

{
  __gid_t _Var1;
  
  _Var1 = getgid();
  return _Var1;
}

// ---- <EXTERNAL>::getegid  @ 0x2e6d30
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__gid_t getegid(void)

{
  __gid_t _Var1;
  
  _Var1 = getegid();
  return _Var1;
}

// ---- <EXTERNAL>::strnlen  @ 0x2e6d3c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strnlen(char *__string,size_t __maxlen)

{
  size_t sVar1;
  
  sVar1 = strnlen(__string,__maxlen);
  return sVar1;
}

// ---- <EXTERNAL>::vprintf  @ 0x2e6d48
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vprintf(char *__format,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vprintf(__format,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::exp  @ 0x2e6d54
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double exp(double __x)

{
  double dVar1;
  
  dVar1 = exp(__x);
  return dVar1;
}

// ---- <EXTERNAL>::fmod  @ 0x2e6d60
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double fmod(double __x,double __y)

{
  double dVar1;
  
  dVar1 = fmod(__x,__y);
  return dVar1;
}

// ---- <EXTERNAL>::acos  @ 0x2e6d6c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double acos(double __x)

{
  double dVar1;
  
  dVar1 = acos(__x);
  return dVar1;
}

// ---- <EXTERNAL>::gethostbyaddr  @ 0x2e6d78
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

hostent * gethostbyaddr(void *__addr,__socklen_t __len,int __type)

{
  hostent *phVar1;
  
  phVar1 = gethostbyaddr(__addr,__len,__type);
  return phVar1;
}

// ---- <EXTERNAL>::getdtablesize  @ 0x2e6d84
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getdtablesize(void)

{
  int iVar1;
  
  iVar1 = getdtablesize();
  return iVar1;
}

// ---- <EXTERNAL>::setgid  @ 0x2e6d90
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setgid(__gid_t __gid)

{
  int iVar1;
  
  iVar1 = setgid(__gid);
  return iVar1;
}

// ---- <EXTERNAL>::setuid  @ 0x2e6d9c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setuid(__uid_t __uid)

{
  int iVar1;
  
  iVar1 = setuid(__uid);
  return iVar1;
}

// ---- <EXTERNAL>::__assert2  @ 0x2e6da8
void __assert2(void)

{
  __assert2();
  return;
}

// ---- <EXTERNAL>::getppid  @ 0x2e6db4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t getppid(void)

{
  __pid_t _Var1;
  
  _Var1 = getppid();
  return _Var1;
}

// ---- <EXTERNAL>::setsid  @ 0x2e6dc0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t setsid(void)

{
  __pid_t _Var1;
  
  _Var1 = setsid();
  return _Var1;
}

// ---- <EXTERNAL>::chdir  @ 0x2e6dcc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int chdir(char *__path)

{
  int iVar1;
  
  iVar1 = chdir(__path);
  return iVar1;
}

// ---- <EXTERNAL>::freopen  @ 0x2e6dd8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * freopen(char *__filename,char *__modes,FILE *__stream)

{
  FILE *pFVar1;
  
  pFVar1 = freopen(__filename,__modes,__stream);
  return pFVar1;
}

// ---- <EXTERNAL>::pause  @ 0x2e6de4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pause(void)

{
  int iVar1;
  
  iVar1 = pause();
  return iVar1;
}

// ---- <EXTERNAL>::inflateReset  @ 0x2e6df0
void inflateReset(void)

{
  inflateReset();
  return;
}

// ---- <EXTERNAL>::inflateCopy  @ 0x2e6dfc
void inflateCopy(void)

{
  inflateCopy();
  return;
}

// ---- <EXTERNAL>::gmtime  @ 0x2e6e08
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * gmtime(time_t *__timer)

{
  tm *ptVar1;
  
  ptVar1 = gmtime(__timer);
  return ptVar1;
}

// ---- <EXTERNAL>::deflateReset  @ 0x2e6e14
void deflateReset(void)

{
  deflateReset();
  return;
}

// ---- <EXTERNAL>::inflateSync  @ 0x2e6e20
void inflateSync(void)

{
  inflateSync();
  return;
}

// ---- <EXTERNAL>::deflateParams  @ 0x2e6e2c
void deflateParams(void)

{
  deflateParams();
  return;
}

// ---- <EXTERNAL>::log  @ 0x2e6e38
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double log(double __x)

{
  double dVar1;
  
  dVar1 = log(__x);
  return dVar1;
}

// ---- <EXTERNAL>::getopt  @ 0x2e6e44
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getopt(int ___argc,char **___argv,char *__shortopts)

{
  int iVar1;
  
  iVar1 = getopt(___argc,___argv,__shortopts);
  return iVar1;
}

// ---- <EXTERNAL>::munmap  @ 0x2e6e50
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int munmap(void *__addr,size_t __len)

{
  int iVar1;
  
  iVar1 = munmap(__addr,__len);
  return iVar1;
}

// ---- <EXTERNAL>::mmap  @ 0x2e6e5c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * mmap(void *__addr,size_t __len,int __prot,int __flags,int __fd,__off_t __offset)

{
  void *pvVar1;
  
  pvVar1 = mmap(__addr,__len,__prot,__flags,__fd,__offset);
  return pvVar1;
}

// ---- <EXTERNAL>::log10  @ 0x2e6e68
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double log10(double __x)

{
  double dVar1;
  
  dVar1 = log10(__x);
  return dVar1;
}

// ---- <EXTERNAL>::memmem  @ 0x2e6e74
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmem(void *__haystack,size_t __haystacklen,void *__needle,size_t __needlelen)

{
  void *pvVar1;
  
  pvVar1 = memmem(__haystack,__haystacklen,__needle,__needlelen);
  return pvVar1;
}

// ---- <EXTERNAL>::pthread_once  @ 0x2e6e80
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_once(pthread_once_t *__once_control,__init_routine *__init_routine)

{
  int iVar1;
  
  iVar1 = pthread_once(__once_control,__init_routine);
  return iVar1;
}

// ---- <EXTERNAL>::__aeabi_memcpy  @ 0x2e6e8c
void __aeabi_memcpy(void)

{
  __aeabi_memcpy();
  return;
}

// ---- <EXTERNAL>::__aeabi_memset  @ 0x2e6e98
void __aeabi_memset(void)

{
  __aeabi_memset();
  return;
}

// ---- <EXTERNAL>::exp2f  @ 0x2e6ea4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float exp2f(float __x)

{
  float fVar1;
  
  fVar1 = exp2f(__x);
  return fVar1;
}

// ---- <EXTERNAL>::rmdir  @ 0x2e6eb0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int rmdir(char *__path)

{
  int iVar1;
  
  iVar1 = rmdir(__path);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutexattr_settype  @ 0x2e6ebc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutexattr_settype(pthread_mutexattr_t *__attr,int __kind)

{
  int iVar1;
  
  iVar1 = pthread_mutexattr_settype(__attr,__kind);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_trylock  @ 0x2e6ec8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_trylock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_trylock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::getcwd  @ 0x2e6ed4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * getcwd(char *__buf,size_t __size)

{
  char *pcVar1;
  
  pcVar1 = getcwd(__buf,__size);
  return pcVar1;
}

// ---- <EXTERNAL>::pthread_attr_destroy  @ 0x2e6ee0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_destroy(pthread_attr_t *__attr)

{
  int iVar1;
  
  iVar1 = pthread_attr_destroy(__attr);
  return iVar1;
}

// ---- <EXTERNAL>::gettid  @ 0x2e6eec
void gettid(void)

{
  gettid();
  return;
}

// ---- <EXTERNAL>::setpriority  @ 0x2e6ef8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setpriority(__priority_which_t __which,id_t __who,int __prio)

{
  int iVar1;
  
  iVar1 = setpriority(__which,__who,__prio);
  return iVar1;
}

// ---- <EXTERNAL>::log10f  @ 0x2e6f04
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float log10f(float __x)

{
  float fVar1;
  
  fVar1 = log10f(__x);
  return fVar1;
}

// ---- <EXTERNAL>::__android_log_write  @ 0x2e6f10
void __android_log_write(void)

{
  __android_log_write();
  return;
}

// ---- <EXTERNAL>::__aeabi_memmove  @ 0x2e6f1c
void __aeabi_memmove(void)

{
  __aeabi_memmove();
  return;
}

// ---- <EXTERNAL>::syscall  @ 0x2e6f28
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long syscall(long __sysno,...)

{
  long lVar1;
  
  lVar1 = syscall(__sysno);
  return lVar1;
}

// ---- <EXTERNAL>::wmemcpy  @ 0x2e6f34
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemcpy(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
  wchar_t *pwVar1;
  
  pwVar1 = wmemcpy(__s1,__s2,__n);
  return pwVar1;
}

// ---- <EXTERNAL>::setlocale  @ 0x2e6f40
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * setlocale(int __category,char *__locale)

{
  char *pcVar1;
  
  pcVar1 = setlocale(__category,__locale);
  return pcVar1;
}

// ---- <EXTERNAL>::vsprintf  @ 0x2e6f4c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vsprintf(char *__s,char *__format,__gnuc_va_list __arg)

{
  int iVar1;
  
  iVar1 = vsprintf(__s,__format,__arg);
  return iVar1;
}

// ---- <EXTERNAL>::wcrtomb  @ 0x2e6f58
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcrtomb(char *__s,wchar_t __wc,mbstate_t *__ps)

{
  size_t sVar1;
  
  sVar1 = wcrtomb(__s,__wc,__ps);
  return sVar1;
}

// ---- <EXTERNAL>::mbrtowc  @ 0x2e6f64
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t mbrtowc(wchar_t *__pwc,char *__s,size_t __n,mbstate_t *__p)

{
  size_t sVar1;
  
  sVar1 = mbrtowc(__pwc,__s,__n,__p);
  return sVar1;
}

// ---- <EXTERNAL>::wcsftime  @ 0x2e6f70
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcsftime(wchar_t *__s,size_t __maxsize,wchar_t *__format,tm *__tp)

{
  size_t sVar1;
  
  sVar1 = wcsftime(__s,__maxsize,__format,__tp);
  return sVar1;
}

// ---- <EXTERNAL>::fdopen  @ 0x2e6f7c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * fdopen(int __fd,char *__modes)

{
  FILE *pFVar1;
  
  pFVar1 = fdopen(__fd,__modes);
  return pFVar1;
}

// ---- <EXTERNAL>::writev  @ 0x2e6f88
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t writev(int __fd,iovec *__iovec,int __count)

{
  ssize_t sVar1;
  
  sVar1 = writev(__fd,__iovec,__count);
  return sVar1;
}

// ---- <EXTERNAL>::wmemchr  @ 0x2e6f94
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemchr(wchar_t *__s,wchar_t __c,size_t __n)

{
  wchar_t *pwVar1;
  
  pwVar1 = wmemchr(__s,__c,__n);
  return pwVar1;
}

// ---- <EXTERNAL>::strcoll  @ 0x2e6fa0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcoll(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcoll(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::strxfrm  @ 0x2e6fac
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strxfrm(char *__dest,char *__src,size_t __n)

{
  size_t sVar1;
  
  sVar1 = strxfrm(__dest,__src,__n);
  return sVar1;
}

// ---- <EXTERNAL>::wcscoll  @ 0x2e6fb8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wcscoll(wchar_t *__s1,wchar_t *__s2)

{
  int iVar1;
  
  iVar1 = wcscoll(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::wcsxfrm  @ 0x2e6fc4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcsxfrm(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
  size_t sVar1;
  
  sVar1 = wcsxfrm(__s1,__s2,__n);
  return sVar1;
}

// ---- <EXTERNAL>::getwc  @ 0x2e6fd0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t getwc(__FILE *__stream)

{
  wint_t wVar1;
  
  wVar1 = getwc(__stream);
  return wVar1;
}

// ---- <EXTERNAL>::putwc  @ 0x2e6fdc
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t putwc(wchar_t __wc,__FILE *__stream)

{
  wint_t wVar1;
  
  wVar1 = putwc(__wc,__stream);
  return wVar1;
}

// ---- <EXTERNAL>::ungetc  @ 0x2e6fe8
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int ungetc(int __c,FILE *__stream)

{
  int iVar1;
  
  iVar1 = ungetc(__c,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::ungetwc  @ 0x2e6ff4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t ungetwc(wint_t __wc,__FILE *__stream)

{
  wint_t wVar1;
  
  wVar1 = ungetwc(__wc,__stream);
  return wVar1;
}

// ---- <EXTERNAL>::putc  @ 0x2e7000
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int putc(int __c,FILE *__stream)

{
  int iVar1;
  
  iVar1 = putc(__c,__stream);
  return iVar1;
}

// ---- <EXTERNAL>::wmemset  @ 0x2e700c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemset(wchar_t *__s,wchar_t __c,size_t __n)

{
  wchar_t *pwVar1;
  
  pwVar1 = wmemset(__s,__c,__n);
  return pwVar1;
}

// ---- <EXTERNAL>::wmemmove  @ 0x2e7018
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemmove(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
  wchar_t *pwVar1;
  
  pwVar1 = wmemmove(__s1,__s2,__n);
  return pwVar1;
}

// ---- <EXTERNAL>::towupper  @ 0x2e7048
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t towupper(wint_t __wc)

{
  wint_t wVar1;
  
  wVar1 = towupper(__wc);
  return wVar1;
}

// ---- <EXTERNAL>::wctob  @ 0x2e706c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wctob(wint_t __c)

{
  int iVar1;
  
  iVar1 = wctob(__c);
  return iVar1;
}

// ---- <EXTERNAL>::btowc  @ 0x2e7078
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t btowc(int __c)

{
  wint_t wVar1;
  
  wVar1 = btowc(__c);
  return wVar1;
}

// ---- <EXTERNAL>::raise  @ 0x2e7084
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int raise(int __sig)

{
  int iVar1;
  
  iVar1 = raise(__sig);
  return iVar1;
}

// ---- <EXTERNAL>::__gnu_Unwind_Find_exidx  @ 0x2e7090
void __gnu_Unwind_Find_exidx(void)

{
  __gnu_Unwind_Find_exidx();
  return;
}

// ---- <EXTERNAL>::gethostbyname  @ 0x6daf18
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

hostent * gethostbyname(char *__name)

{
  hostent *phVar1;
  
  phVar1 = gethostbyname(__name);
  return phVar1;
}

// ---- <EXTERNAL>::gethostbyname  @ 0x6daf1c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

hostent * gethostbyname(char *__name)

{
  hostent *phVar1;
  
  phVar1 = gethostbyname(__name);
  return phVar1;
}

// ---- <EXTERNAL>::strncasecmp  @ 0x6daf68
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncasecmp(char *__s1,char *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = strncasecmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::strncasecmp  @ 0x6daf6c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncasecmp(char *__s1,char *__s2,size_t __n)

{
  int iVar1;
  
  iVar1 = strncasecmp(__s1,__s2,__n);
  return iVar1;
}

// ---- <EXTERNAL>::strcasecmp  @ 0x6daf78
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcasecmp(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcasecmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::strcasecmp  @ 0x6daf7c
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcasecmp(char *__s1,char *__s2)

{
  int iVar1;
  
  iVar1 = strcasecmp(__s1,__s2);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_wait  @ 0x7d0ec0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_wait(pthread_cond_t *__cond,pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_cond_wait(__cond,__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_wait  @ 0x7d0ec4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_wait(pthread_cond_t *__cond,pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_cond_wait(__cond,__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_signal  @ 0x7d0ed0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_signal(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_signal(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_cond_signal  @ 0x7d0ed4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_signal(pthread_cond_t *__cond)

{
  int iVar1;
  
  iVar1 = pthread_cond_signal(__cond);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x7d0ef0
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_lock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x7d0ef4
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_lock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x7d0f00
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_unlock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x7d0f04
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
  int iVar1;
  
  iVar1 = pthread_mutex_unlock(__mutex);
  return iVar1;
}

// ---- <EXTERNAL>::strlen  @ 0x7d0f30
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}

// ---- <EXTERNAL>::strlen  @ 0x7d0f34
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
  size_t sVar1;
  
  sVar1 = strlen(__s);
  return sVar1;
}

// ---- <EXTERNAL>::gettid  @ 0x7d0f50
void gettid(void)

{
  gettid();
  return;
}

// ---- <EXTERNAL>::gettid  @ 0x7d0f54
void gettid(void)

{
  gettid();
  return;
}

// ---- <EXTERNAL>::__cxa_finalize  @ 0x98c000
/* WARNING: Control flow encountered bad instruction data */

void __cxa_finalize(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__cxa_atexit  @ 0x98c004
/* WARNING: Control flow encountered bad instruction data */

void __cxa_atexit(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atan  @ 0x98c008
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double atan(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::cos  @ 0x98c00c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double cos(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sin  @ 0x98c010
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double sin(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atan2  @ 0x98c014
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double atan2(double __y,double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::floor  @ 0x98c018
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double floor(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strlen  @ 0x98c01c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strlen(char *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memcpy  @ 0x98c020
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memcpy(void *__dest,void *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::toupper  @ 0x98c024
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int toupper(int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__android_log_print  @ 0x98c028
/* WARNING: Control flow encountered bad instruction data */

void __android_log_print(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__stack_chk_fail  @ 0x98c02c
/* WARNING: Control flow encountered bad instruction data */

void __stack_chk_fail(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memset  @ 0x98c034
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memset(void *__s,int __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::lrand48  @ 0x98c038
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long lrand48(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pow  @ 0x98c03c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double pow(double __x,double __y)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atanf  @ 0x98c040
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float atanf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::cosf  @ 0x98c044
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float cosf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::floorf  @ 0x98c048
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float floorf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sinf  @ 0x98c04c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float sinf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memcmp  @ 0x98c050
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int memcmp(void *__s1,void *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_lock  @ 0x98c054
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_lock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_unlock  @ 0x98c058
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_unlock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memmove  @ 0x98c05c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmove(void *__dest,void *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::printf  @ 0x98c060
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int printf(char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::time  @ 0x98c064
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

time_t time(time_t *__timer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::malloc  @ 0x98c068
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * malloc(size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::free  @ 0x98c06c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void free(void *__ptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atoi  @ 0x98c070
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int atoi(char *__nptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setjmp  @ 0x98c074
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setjmp(__jmp_buf_tag *__env)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::longjmp  @ 0x98c078
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void longjmp(__jmp_buf_tag *__env,int __val)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::puts  @ 0x98c07c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int puts(char *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::srand48  @ 0x98c080
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void srand48(long __seedval)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcmp  @ 0x98c084
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcmp(char *__s1,char *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtod  @ 0x98c088
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double strtod(char *__nptr,char **__endptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::realloc  @ 0x98c08c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * realloc(void *__ptr,size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::snprintf  @ 0x98c090
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int snprintf(char *__s,size_t __maxlen,char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_create  @ 0x98c094
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_create(pthread_t *__newthread,pthread_attr_t *__attr,__start_routine *__start_routine,
                  void *__arg)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fopen  @ 0x98c098
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * fopen(char *__filename,char *__modes)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fwrite  @ 0x98c09c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fwrite(void *__ptr,size_t __size,size_t __n,FILE *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fclose  @ 0x98c0a0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fclose(FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::umask  @ 0x98c0a4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__mode_t umask(__mode_t __mask)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::mkdir  @ 0x98c0a8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int mkdir(char *__path,__mode_t __mode)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__errno  @ 0x98c0ac
/* WARNING: Control flow encountered bad instruction data */

void __errno(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_init  @ 0x98c0b0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_init(pthread_mutex_t *__mutex,pthread_mutexattr_t *__mutexattr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::remove  @ 0x98c0b4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int remove(char *__filename)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::tolower  @ 0x98c0b8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int tolower(int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atan2f  @ 0x98c0bc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float atan2f(float __y,float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sqrt  @ 0x98c0c0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double sqrt(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sqrtf  @ 0x98c0c4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float sqrtf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetUniformLocation  @ 0x98c0c8
/* WARNING: Control flow encountered bad instruction data */

void glGetUniformLocation(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glActiveTexture  @ 0x98c0cc
/* WARNING: Control flow encountered bad instruction data */

void glActiveTexture(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform1i  @ 0x98c0d0
/* WARNING: Control flow encountered bad instruction data */

void glUniform1i(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glVertexAttribPointer  @ 0x98c0d4
/* WARNING: Control flow encountered bad instruction data */

void glVertexAttribPointer(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDrawArrays  @ 0x98c0d8
/* WARNING: Control flow encountered bad instruction data */

void glDrawArrays(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glEnable  @ 0x98c0dc
/* WARNING: Control flow encountered bad instruction data */

void glEnable(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDisable  @ 0x98c0e0
/* WARNING: Control flow encountered bad instruction data */

void glDisable(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_wait  @ 0x98c0e4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_wait(pthread_cond_t *__cond,pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_destroy  @ 0x98c0e8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_destroy(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_destroy  @ 0x98c0ec
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_destroy(pthread_cond_t *__cond)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_exit  @ 0x98c0f0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void pthread_exit(void *__retval)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_signal  @ 0x98c0f4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_signal(pthread_cond_t *__cond)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_init  @ 0x98c0f8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_init(pthread_cond_t *__cond,pthread_condattr_t *__cond_attr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_detach  @ 0x98c0fc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_detach(pthread_t __th)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_attr_init  @ 0x98c100
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_init(pthread_attr_t *__attr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_join  @ 0x98c104
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_join(pthread_t __th,void **__thread_return)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcpy  @ 0x98c108
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strcpy(char *__dest,char *__src)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::usleep  @ 0x98c10c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int usleep(__useconds_t __useconds)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sprintf  @ 0x98c110
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sprintf(char *__s,char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fread  @ 0x98c114
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t fread(void *__ptr,size_t __size,size_t __n,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcat  @ 0x98c118
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strcat(char *__dest,char *__src)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::putchar  @ 0x98c11c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int putchar(int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strncpy  @ 0x98c120
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strncpy(char *__dest,char *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strstr  @ 0x98c124
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strstr(char *__haystack,char *__needle)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strncmp  @ 0x98c128
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncmp(char *__s1,char *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::localtime  @ 0x98c12c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * localtime(time_t *__timer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strftime  @ 0x98c130
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strftime(char *__s,size_t __maxsize,char *__format,tm *__tp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fseek  @ 0x98c134
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fseek(FILE *__stream,long __off,int __whence)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ftell  @ 0x98c138
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long ftell(FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::unlink  @ 0x98c13c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int unlink(char *__name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::vsnprintf  @ 0x98c140
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vsnprintf(char *__s,size_t __maxlen,char *__format,__gnuc_va_list __arg)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gettimeofday  @ 0x98c144
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int gettimeofday(timeval *__tv,__timezone_ptr_t __tz)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ioctl  @ 0x98c148
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int ioctl(int __fd,ulong __request,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getc  @ 0x98c14c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getc(FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fgets  @ 0x98c154
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * fgets(char *__s,int __n,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ceil  @ 0x98c158
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double ceil(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strpbrk  @ 0x98c15c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strpbrk(char *__s,char *__accept)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::atol  @ 0x98c160
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long atol(char *__nptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtoul  @ 0x98c164
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ulong strtoul(char *__nptr,char **__endptr,int __base)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcasecmp  @ 0x98c168
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcasecmp(char *__s1,char *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strncasecmp  @ 0x98c16c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strncasecmp(char *__s1,char *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fflush  @ 0x98c170
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fflush(FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fprintf  @ 0x98c174
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fprintf(FILE *__stream,char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gethostname  @ 0x98c178
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int gethostname(char *__name,size_t __len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gethostbyname  @ 0x98c17c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

hostent * gethostbyname(char *__name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getsockopt  @ 0x98c180
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getsockopt(int __fd,int __level,int __optname,void *__optval,socklen_t *__optlen)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setsockopt  @ 0x98c184
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setsockopt(int __fd,int __level,int __optname,void *__optval,socklen_t __optlen)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sendto  @ 0x98c188
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t sendto(int __fd,void *__buf,size_t __n,int __flags,sockaddr *__addr,socklen_t __addr_len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fcntl  @ 0x98c18c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fcntl(int __fd,int __cmd,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getsockname  @ 0x98c190
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getsockname(int __fd,sockaddr *__addr,socklen_t *__len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inet_addr  @ 0x98c194
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

in_addr_t inet_addr(char *__cp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::socket  @ 0x98c198
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int socket(int __domain,int __type,int __protocol)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::bind  @ 0x98c19c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int bind(int __fd,sockaddr *__addr,socklen_t __len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::close  @ 0x98c1a0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int close(int __fd)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::recvfrom  @ 0x98c1a4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t recvfrom(int __fd,void *__buf,size_t __n,int __flags,sockaddr *__addr,socklen_t *__addr_len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inet_ntoa  @ 0x98c1a8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * inet_ntoa(in_addr __in)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtoull  @ 0x98c1ac
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ulonglong strtoull(char *__nptr,char **__endptr,int __base)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_timedwait  @ 0x98c1b0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_timedwait(pthread_cond_t *__cond,pthread_mutex_t *__mutex,timespec *__abstime)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fputs  @ 0x98c1b4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputs(char *__s,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_attr_setschedparam  @ 0x98c1b8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_setschedparam(pthread_attr_t *__attr,sched_param *__param)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_attr_setstacksize  @ 0x98c1bc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_setstacksize(pthread_attr_t *__attr,size_t __stacksize)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_attr_setdetachstate  @ 0x98c1c0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_setdetachstate(pthread_attr_t *__attr,int __detachstate)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcslen  @ 0x98c1c4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcslen(wchar_t *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcscpy  @ 0x98c1c8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wcscpy(wchar_t *__dest,wchar_t *__src)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcscat  @ 0x98c1cc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wcscat(wchar_t *__dest,wchar_t *__src)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcscmp  @ 0x98c1d0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wcscmp(wchar_t *__s1,wchar_t *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutexattr_init  @ 0x98c1d4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutexattr_init(pthread_mutexattr_t *__attr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutexattr_destroy  @ 0x98c1d8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutexattr_destroy(pthread_mutexattr_t *__attr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_cond_broadcast  @ 0x98c1dc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_cond_broadcast(pthread_cond_t *__cond)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::listen  @ 0x98c1e0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int listen(int __fd,int __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::shutdown  @ 0x98c1e4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int shutdown(int __fd,int __how)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::connect  @ 0x98c1e8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int connect(int __fd,sockaddr *__addr,socklen_t __len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::select  @ 0x98c1ec
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int select(int __nfds,fd_set *__readfds,fd_set *__writefds,fd_set *__exceptfds,timeval *__timeout)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::accept  @ 0x98c1f0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int accept(int __fd,sockaddr *__addr,socklen_t *__addr_len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::send  @ 0x98c1f4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t send(int __fd,void *__buf,size_t __n,int __flags)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::recv  @ 0x98c1f8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t recv(int __fd,void *__buf,size_t __n,int __flags)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strncat  @ 0x98c1fc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strncat(char *__dest,char *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strrchr  @ 0x98c200
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strrchr(char *__s,int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::opendir  @ 0x98c204
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

DIR * opendir(char *__name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::readdir  @ 0x98c208
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

dirent * readdir(DIR *__dirp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fnmatch  @ 0x98c20c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fnmatch(char *__pattern,char *__name,int __flags)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::stat  @ 0x98c210
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int stat(char *__file,stat *__buf)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::closedir  @ 0x98c214
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int closedir(DIR *__dirp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getaddrinfo  @ 0x98c218
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getaddrinfo(char *__name,char *__service,addrinfo *__req,addrinfo **__pai)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gai_strerror  @ 0x98c21c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * gai_strerror(int __ecode)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::perror  @ 0x98c220
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void perror(char *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::freeaddrinfo  @ 0x98c224
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void freeaddrinfo(addrinfo *__ai)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::write  @ 0x98c228
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t write(int __fd,void *__buf,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::read  @ 0x98c22c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t read(int __fd,void *__buf,size_t __nbytes)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strchr  @ 0x98c230
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strchr(char *__s,int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::poll  @ 0x98c234
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int poll(pollfd *__fds,nfds_t __nfds,int __timeout)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getnameinfo  @ 0x98c23c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getnameinfo(sockaddr *__sa,socklen_t __salen,char *__host,socklen_t __hostlen,char *__serv,
               socklen_t __servlen,uint __flags)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sscanf  @ 0x98c240
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sscanf(char *__s,char *__format,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::calloc  @ 0x98c244
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * calloc(size_t __nmemb,size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_equal  @ 0x98c248
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_equal(pthread_t __thread1,pthread_t __thread2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_getspecific  @ 0x98c24c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * pthread_getspecific(pthread_key_t __key)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_setspecific  @ 0x98c250
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setspecific(pthread_key_t __key,void *__pointer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_key_delete  @ 0x98c254
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_delete(pthread_key_t __key)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_key_create  @ 0x98c258
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_key_create(pthread_key_t *__key,__destr_function *__destr_function)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::vasprintf  @ 0x98c25c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vasprintf(char **__ptr,char *__f,__gnuc_va_list __arg)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_self  @ 0x98c260
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

pthread_t pthread_self(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_setname_np  @ 0x98c264
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_setname_np(pthread_t __target_thread,char *__name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::localtime_r  @ 0x98c268
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * localtime_r(time_t *__timer,tm *__tp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strerror  @ 0x98c26c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strerror(int __errnum)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sched_yield  @ 0x98c270
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sched_yield(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflateEnd  @ 0x98c274
/* WARNING: Control flow encountered bad instruction data */

void inflateEnd(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflateInit2_  @ 0x98c278
/* WARNING: Control flow encountered bad instruction data */

void inflateInit2_(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflate  @ 0x98c27c
/* WARNING: Control flow encountered bad instruction data */

void inflate(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::deflateInit2_  @ 0x98c280
/* WARNING: Control flow encountered bad instruction data */

void deflateInit2_(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::deflate  @ 0x98c284
/* WARNING: Control flow encountered bad instruction data */

void deflate(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::deflateEnd  @ 0x98c288
/* WARNING: Control flow encountered bad instruction data */

void deflateEnd(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::lseek  @ 0x98c28c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__off_t lseek(int __fd,__off_t __offset,int __whence)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::nanosleep  @ 0x98c290
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int nanosleep(timespec *__requested_time,timespec *__remaining)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::open  @ 0x98c294
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int open(char *__file,int __oflag,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlsym  @ 0x98c298
/* WARNING: Control flow encountered bad instruction data */

void dlsym(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetString  @ 0x98c29c
/* WARNING: Control flow encountered bad instruction data */

void glGetString(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetIntegerv  @ 0x98c2a0
/* WARNING: Control flow encountered bad instruction data */

void glGetIntegerv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::exit  @ 0x98c2a4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void exit(int __status)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::isnanf  @ 0x98c2a8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isnanf(float __value)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::powf  @ 0x98c2ac
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float powf(float __x,float __y)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::acosf  @ 0x98c2b0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float acosf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::asinf  @ 0x98c2b4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float asinf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::logf  @ 0x98c2b8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float logf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::expf  @ 0x98c2bc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float expf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fmodf  @ 0x98c2c0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float fmodf(float __x,float __y)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::tanf  @ 0x98c2c4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float tanf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glClearColor  @ 0x98c2c8
/* WARNING: Control flow encountered bad instruction data */

void glClearColor(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glClear  @ 0x98c2cc
/* WARNING: Control flow encountered bad instruction data */

void glClear(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glClearDepthf  @ 0x98c2d0
/* WARNING: Control flow encountered bad instruction data */

void glClearDepthf(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDepthFunc  @ 0x98c2d4
/* WARNING: Control flow encountered bad instruction data */

void glDepthFunc(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDeleteBuffers  @ 0x98c2d8
/* WARNING: Control flow encountered bad instruction data */

void glDeleteBuffers(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGenBuffers  @ 0x98c2dc
/* WARNING: Control flow encountered bad instruction data */

void glGenBuffers(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBindBuffer  @ 0x98c2e0
/* WARNING: Control flow encountered bad instruction data */

void glBindBuffer(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBufferData  @ 0x98c2e4
/* WARNING: Control flow encountered bad instruction data */

void glBufferData(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glEnableVertexAttribArray  @ 0x98c2e8
/* WARNING: Control flow encountered bad instruction data */

void glEnableVertexAttribArray(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGenFramebuffers  @ 0x98c2ec
/* WARNING: Control flow encountered bad instruction data */

void glGenFramebuffers(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBindFramebuffer  @ 0x98c2f0
/* WARNING: Control flow encountered bad instruction data */

void glBindFramebuffer(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glFramebufferTexture2D  @ 0x98c2f4
/* WARNING: Control flow encountered bad instruction data */

void glFramebufferTexture2D(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glCheckFramebufferStatus  @ 0x98c2f8
/* WARNING: Control flow encountered bad instruction data */

void glCheckFramebufferStatus(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetFloatv  @ 0x98c2fc
/* WARNING: Control flow encountered bad instruction data */

void glGetFloatv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDeleteFramebuffers  @ 0x98c300
/* WARNING: Control flow encountered bad instruction data */

void glDeleteFramebuffers(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glViewport  @ 0x98c304
/* WARNING: Control flow encountered bad instruction data */

void glViewport(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDrawElements  @ 0x98c308
/* WARNING: Control flow encountered bad instruction data */

void glDrawElements(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glIsEnabled  @ 0x98c30c
/* WARNING: Control flow encountered bad instruction data */

void glIsEnabled(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glStencilMask  @ 0x98c310
/* WARNING: Control flow encountered bad instruction data */

void glStencilMask(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetBooleanv  @ 0x98c314
/* WARNING: Control flow encountered bad instruction data */

void glGetBooleanv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDepthMask  @ 0x98c318
/* WARNING: Control flow encountered bad instruction data */

void glDepthMask(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glStencilFunc  @ 0x98c31c
/* WARNING: Control flow encountered bad instruction data */

void glStencilFunc(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glStencilOp  @ 0x98c320
/* WARNING: Control flow encountered bad instruction data */

void glStencilOp(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDeleteRenderbuffers  @ 0x98c324
/* WARNING: Control flow encountered bad instruction data */

void glDeleteRenderbuffers(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGenRenderbuffers  @ 0x98c328
/* WARNING: Control flow encountered bad instruction data */

void glGenRenderbuffers(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBindRenderbuffer  @ 0x98c32c
/* WARNING: Control flow encountered bad instruction data */

void glBindRenderbuffer(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glRenderbufferStorage  @ 0x98c330
/* WARNING: Control flow encountered bad instruction data */

void glRenderbufferStorage(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glFramebufferRenderbuffer  @ 0x98c334
/* WARNING: Control flow encountered bad instruction data */

void glFramebufferRenderbuffer(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glClearStencil  @ 0x98c338
/* WARNING: Control flow encountered bad instruction data */

void glClearStencil(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glPixelStorei  @ 0x98c33c
/* WARNING: Control flow encountered bad instruction data */

void glPixelStorei(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glReadPixels  @ 0x98c340
/* WARNING: Control flow encountered bad instruction data */

void glReadPixels(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBufferSubData  @ 0x98c344
/* WARNING: Control flow encountered bad instruction data */

void glBufferSubData(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ceilf  @ 0x98c348
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float ceilf(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glScissor  @ 0x98c34c
/* WARNING: Control flow encountered bad instruction data */

void glScissor(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glCreateProgram  @ 0x98c350
/* WARNING: Control flow encountered bad instruction data */

void glCreateProgram(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glAttachShader  @ 0x98c354
/* WARNING: Control flow encountered bad instruction data */

void glAttachShader(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glCreateShader  @ 0x98c358
/* WARNING: Control flow encountered bad instruction data */

void glCreateShader(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glShaderSource  @ 0x98c35c
/* WARNING: Control flow encountered bad instruction data */

void glShaderSource(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glCompileShader  @ 0x98c360
/* WARNING: Control flow encountered bad instruction data */

void glCompileShader(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetShaderiv  @ 0x98c364
/* WARNING: Control flow encountered bad instruction data */

void glGetShaderiv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetShaderSource  @ 0x98c368
/* WARNING: Control flow encountered bad instruction data */

void glGetShaderSource(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::abort  @ 0x98c36c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void abort(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBindAttribLocation  @ 0x98c370
/* WARNING: Control flow encountered bad instruction data */

void glBindAttribLocation(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glLinkProgram  @ 0x98c374
/* WARNING: Control flow encountered bad instruction data */

void glLinkProgram(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDeleteShader  @ 0x98c378
/* WARNING: Control flow encountered bad instruction data */

void glDeleteShader(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetShaderInfoLog  @ 0x98c37c
/* WARNING: Control flow encountered bad instruction data */

void glGetShaderInfoLog(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetProgramiv  @ 0x98c380
/* WARNING: Control flow encountered bad instruction data */

void glGetProgramiv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetProgramInfoLog  @ 0x98c384
/* WARNING: Control flow encountered bad instruction data */

void glGetProgramInfoLog(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform2i  @ 0x98c388
/* WARNING: Control flow encountered bad instruction data */

void glUniform2i(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform3i  @ 0x98c38c
/* WARNING: Control flow encountered bad instruction data */

void glUniform3i(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform4i  @ 0x98c390
/* WARNING: Control flow encountered bad instruction data */

void glUniform4i(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform2iv  @ 0x98c394
/* WARNING: Control flow encountered bad instruction data */

void glUniform2iv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform3iv  @ 0x98c398
/* WARNING: Control flow encountered bad instruction data */

void glUniform3iv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform4iv  @ 0x98c39c
/* WARNING: Control flow encountered bad instruction data */

void glUniform4iv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform1f  @ 0x98c3a0
/* WARNING: Control flow encountered bad instruction data */

void glUniform1f(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform2f  @ 0x98c3a4
/* WARNING: Control flow encountered bad instruction data */

void glUniform2f(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform3f  @ 0x98c3a8
/* WARNING: Control flow encountered bad instruction data */

void glUniform3f(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform4f  @ 0x98c3ac
/* WARNING: Control flow encountered bad instruction data */

void glUniform4f(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform2fv  @ 0x98c3b0
/* WARNING: Control flow encountered bad instruction data */

void glUniform2fv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform3fv  @ 0x98c3b4
/* WARNING: Control flow encountered bad instruction data */

void glUniform3fv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniform4fv  @ 0x98c3b8
/* WARNING: Control flow encountered bad instruction data */

void glUniform4fv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUniformMatrix4fv  @ 0x98c3bc
/* WARNING: Control flow encountered bad instruction data */

void glUniformMatrix4fv(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDeleteProgram  @ 0x98c3c0
/* WARNING: Control flow encountered bad instruction data */

void glDeleteProgram(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glUseProgram  @ 0x98c3c4
/* WARNING: Control flow encountered bad instruction data */

void glUseProgram(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBlendFunc  @ 0x98c3c8
/* WARNING: Control flow encountered bad instruction data */

void glBlendFunc(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBlendEquation  @ 0x98c3cc
/* WARNING: Control flow encountered bad instruction data */

void glBlendEquation(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glBindTexture  @ 0x98c3d0
/* WARNING: Control flow encountered bad instruction data */

void glBindTexture(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDeleteTextures  @ 0x98c3d4
/* WARNING: Control flow encountered bad instruction data */

void glDeleteTextures(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glDisableVertexAttribArray  @ 0x98c3d8
/* WARNING: Control flow encountered bad instruction data */

void glDisableVertexAttribArray(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::isspace  @ 0x98c3dc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isspace(int param_1)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::isalnum  @ 0x98c3e0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isalnum(int param_1)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::isalpha  @ 0x98c3e4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int isalpha(int param_1)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::vfprintf  @ 0x98c3e8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vfprintf(FILE *__s,char *__format,__gnuc_va_list __arg)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gzopen  @ 0x98c3ec
/* WARNING: Control flow encountered bad instruction data */

void gzopen(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gzread  @ 0x98c3f0
/* WARNING: Control flow encountered bad instruction data */

void gzread(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gzclose  @ 0x98c3f4
/* WARNING: Control flow encountered bad instruction data */

void gzclose(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::uncompress  @ 0x98c3f8
/* WARNING: Control flow encountered bad instruction data */

void uncompress(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::crc32  @ 0x98c3fc
/* WARNING: Control flow encountered bad instruction data */

void crc32(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGenTextures  @ 0x98c400
/* WARNING: Control flow encountered bad instruction data */

void glGenTextures(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glTexParameteri  @ 0x98c404
/* WARNING: Control flow encountered bad instruction data */

void glTexParameteri(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glTexImage2D  @ 0x98c408
/* WARNING: Control flow encountered bad instruction data */

void glTexImage2D(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGenerateMipmap  @ 0x98c40c
/* WARNING: Control flow encountered bad instruction data */

void glGenerateMipmap(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glCompressedTexImage2D  @ 0x98c410
/* WARNING: Control flow encountered bad instruction data */

void glCompressedTexImage2D(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::glGetError  @ 0x98c414
/* WARNING: Control flow encountered bad instruction data */

void glGetError(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::bsearch  @ 0x98c418
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * bsearch(void *__key,void *__base,size_t __nmemb,size_t __size,__compar_fn_t __compar)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fstat  @ 0x98c41c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fstat(int __fd,stat *__buf)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtoll  @ 0x98c420
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

longlong strtoll(char *__nptr,char **__endptr,int __base)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::clock_gettime  @ 0x98c424
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int clock_gettime(clockid_t __clock_id,timespec *__tp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::siglongjmp  @ 0x98c42c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void siglongjmp(__jmp_buf_tag *__env,int __val)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inet_ntop  @ 0x98c430
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * inet_ntop(int __af,void *__cp,char *__buf,socklen_t __len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sigaction  @ 0x98c434
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int sigaction(int __sig,sigaction *__act,sigaction *__oact)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::alarm  @ 0x98c438
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

uint alarm(uint __seconds)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sigsetjmp  @ 0x98c43c
/* WARNING: Control flow encountered bad instruction data */

void sigsetjmp(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::basename  @ 0x98c440
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * basename(char *__filename)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtol  @ 0x98c444
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long strtol(char *__nptr,char **__endptr,int __base)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memrchr  @ 0x98c448
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memrchr(void *__s,int __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strtok_r  @ 0x98c44c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strtok_r(char *__s,char *__delim,char **__save_ptr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::qsort  @ 0x98c450
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void qsort(void *__base,size_t __nmemb,size_t __size,__compar_fn_t __compar)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memchr  @ 0x98c454
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memchr(void *__s,int __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inet_pton  @ 0x98c458
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int inet_pton(int __af,char *__cp,void *__buf)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::zlibVersion  @ 0x98c45c
/* WARNING: Control flow encountered bad instruction data */

void zlibVersion(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getenv  @ 0x98c460
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * getenv(char *__name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fputc  @ 0x98c464
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int fputc(int __c,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::geteuid  @ 0x98c468
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__uid_t geteuid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getpwuid  @ 0x98c46c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

passwd * getpwuid(__uid_t __uid)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strdup  @ 0x98c470
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strdup(char *__s)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getpeername  @ 0x98c474
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getpeername(int __fd,sockaddr *__addr,socklen_t *__len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflateInit_  @ 0x98c478
/* WARNING: Control flow encountered bad instruction data */

void inflateInit_(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strerror_r  @ 0x98c47c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * strerror_r(int __errnum,char *__buf,size_t __buflen)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gmtime_r  @ 0x98c480
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * gmtime_r(time_t *__timer,tm *__tp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strlcat  @ 0x98c484
/* WARNING: Control flow encountered bad instruction data */

void strlcat(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::waitpid  @ 0x98c488
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t waitpid(__pid_t __pid,int *__stat_loc,int __options)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::kill  @ 0x98c48c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int kill(__pid_t __pid,int __sig)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::access  @ 0x98c490
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int access(char *__name,int __type)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::socketpair  @ 0x98c494
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int socketpair(int __domain,int __type,int __protocol,int *__fds)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fork  @ 0x98c498
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t fork(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dup2  @ 0x98c49c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int dup2(int __fd,int __fd2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::execl  @ 0x98c4a0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int execl(char *__path,char *__arg,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getservbyname  @ 0x98c4a4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

servent * getservbyname(char *__name,char *__proto)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::closelog  @ 0x98c4a8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void closelog(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::openlog  @ 0x98c4ac
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void openlog(char *__ident,int __option,int __facility)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::syslog  @ 0x98c4b0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void syslog(int __pri,char *__fmt,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::zError  @ 0x98c4b4
/* WARNING: Control flow encountered bad instruction data */

void zError(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::deflateInit_  @ 0x98c4b8
/* WARNING: Control flow encountered bad instruction data */

void deflateInit_(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getpid  @ 0x98c4bc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t getpid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlopen  @ 0x98c4c0
/* WARNING: Control flow encountered bad instruction data */

void dlopen(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlclose  @ 0x98c4c4
/* WARNING: Control flow encountered bad instruction data */

void dlclose(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::dlerror  @ 0x98c4c8
/* WARNING: Control flow encountered bad instruction data */

void dlerror(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getuid  @ 0x98c4cc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__uid_t getuid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setvbuf  @ 0x98c4d0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setvbuf(FILE *__stream,char *__buf,int __modes,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::chmod  @ 0x98c4d4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int chmod(char *__file,__mode_t __mode)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::bsd_signal  @ 0x98c4d8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__sighandler_t bsd_signal(int __sig,__sighandler_t __handler)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getgid  @ 0x98c4dc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__gid_t getgid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getegid  @ 0x98c4e0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__gid_t getegid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strnlen  @ 0x98c4e4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strnlen(char *__string,size_t __maxlen)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::vprintf  @ 0x98c4e8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vprintf(char *__format,__gnuc_va_list __arg)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::exp  @ 0x98c4ec
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double exp(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fmod  @ 0x98c4f0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double fmod(double __x,double __y)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::acos  @ 0x98c4f4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double acos(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gethostbyaddr  @ 0x98c4f8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

hostent * gethostbyaddr(void *__addr,__socklen_t __len,int __type)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getdtablesize  @ 0x98c4fc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getdtablesize(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setgid  @ 0x98c500
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setgid(__gid_t __gid)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setuid  @ 0x98c504
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setuid(__uid_t __uid)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__assert2  @ 0x98c508
/* WARNING: Control flow encountered bad instruction data */

void __assert2(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getppid  @ 0x98c50c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t getppid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setsid  @ 0x98c510
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

__pid_t setsid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::chdir  @ 0x98c514
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int chdir(char *__path)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::freopen  @ 0x98c518
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * freopen(char *__filename,char *__modes,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pause  @ 0x98c51c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pause(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflateReset  @ 0x98c520
/* WARNING: Control flow encountered bad instruction data */

void inflateReset(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflateCopy  @ 0x98c524
/* WARNING: Control flow encountered bad instruction data */

void inflateCopy(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gmtime  @ 0x98c528
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

tm * gmtime(time_t *__timer)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::deflateReset  @ 0x98c52c
/* WARNING: Control flow encountered bad instruction data */

void deflateReset(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::inflateSync  @ 0x98c530
/* WARNING: Control flow encountered bad instruction data */

void inflateSync(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::deflateParams  @ 0x98c534
/* WARNING: Control flow encountered bad instruction data */

void deflateParams(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::log  @ 0x98c538
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double log(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getopt  @ 0x98c53c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int getopt(int ___argc,char **___argv,char *__shortopts)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::munmap  @ 0x98c548
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int munmap(void *__addr,size_t __len)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::mmap  @ 0x98c54c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * mmap(void *__addr,size_t __len,int __prot,int __flags,int __fd,__off_t __offset)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::log10  @ 0x98c550
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

double log10(double __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::memmem  @ 0x98c554
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

void * memmem(void *__haystack,size_t __haystacklen,void *__needle,size_t __needlelen)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_once  @ 0x98c558
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_once(pthread_once_t *__once_control,__init_routine *__init_routine)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__aeabi_memcpy  @ 0x98c55c
/* WARNING: Control flow encountered bad instruction data */

void __aeabi_memcpy(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__aeabi_memset  @ 0x98c560
/* WARNING: Control flow encountered bad instruction data */

void __aeabi_memset(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::exp2f  @ 0x98c564
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float exp2f(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::rmdir  @ 0x98c568
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int rmdir(char *__path)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutex_trylock  @ 0x98c56c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutex_trylock(pthread_mutex_t *__mutex)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_mutexattr_settype  @ 0x98c570
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_mutexattr_settype(pthread_mutexattr_t *__attr,int __kind)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getcwd  @ 0x98c574
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * getcwd(char *__buf,size_t __size)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::gettid  @ 0x98c57c
/* WARNING: Control flow encountered bad instruction data */

void gettid(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::pthread_attr_destroy  @ 0x98c580
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int pthread_attr_destroy(pthread_attr_t *__attr)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setpriority  @ 0x98c584
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int setpriority(__priority_which_t __which,id_t __who,int __prio)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::log10f  @ 0x98c588
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

float log10f(float __x)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__android_log_write  @ 0x98c58c
/* WARNING: Control flow encountered bad instruction data */

void __android_log_write(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__aeabi_memmove  @ 0x98c590
/* WARNING: Control flow encountered bad instruction data */

void __aeabi_memmove(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::syscall  @ 0x98c594
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long syscall(long __sysno,...)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wmemcpy  @ 0x98c598
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemcpy(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::setlocale  @ 0x98c59c
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

char * setlocale(int __category,char *__locale)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::vsprintf  @ 0x98c5a0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int vsprintf(char *__s,char *__format,__gnuc_va_list __arg)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcrtomb  @ 0x98c5a4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcrtomb(char *__s,wchar_t __wc,mbstate_t *__ps)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::mbrtowc  @ 0x98c5a8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t mbrtowc(wchar_t *__pwc,char *__s,size_t __n,mbstate_t *__p)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcsftime  @ 0x98c5ac
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcsftime(wchar_t *__s,size_t __maxsize,wchar_t *__format,tm *__tp)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::fdopen  @ 0x98c5b0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

FILE * fdopen(int __fd,char *__modes)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::writev  @ 0x98c5b4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

ssize_t writev(int __fd,iovec *__iovec,int __count)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wmemchr  @ 0x98c5b8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemchr(wchar_t *__s,wchar_t __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strcoll  @ 0x98c5bc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int strcoll(char *__s1,char *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::strxfrm  @ 0x98c5c0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t strxfrm(char *__dest,char *__src,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcscoll  @ 0x98c5c4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wcscoll(wchar_t *__s1,wchar_t *__s2)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wcsxfrm  @ 0x98c5c8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

size_t wcsxfrm(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::getwc  @ 0x98c5cc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t getwc(__FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::putwc  @ 0x98c5d0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t putwc(wchar_t __wc,__FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ungetc  @ 0x98c5d4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int ungetc(int __c,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::ungetwc  @ 0x98c5d8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t ungetwc(wint_t __wc,__FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::putc  @ 0x98c5dc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int putc(int __c,FILE *__stream)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wmemset  @ 0x98c5e0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemset(wchar_t *__s,wchar_t __c,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wmemmove  @ 0x98c5e4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wchar_t * wmemmove(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wmemcmp  @ 0x98c5e8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wmemcmp(wchar_t *__s1,wchar_t *__s2,size_t __n)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::sysconf  @ 0x98c5ec
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

long sysconf(int __name)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wctype  @ 0x98c5f0
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wctype_t wctype(char *__property)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::towupper  @ 0x98c5f4
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t towupper(wint_t __wc)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::towlower  @ 0x98c5f8
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t towlower(wint_t __wc)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::iswctype  @ 0x98c5fc
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int iswctype(wint_t __wc,wctype_t __desc)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::wctob  @ 0x98c600
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int wctob(wint_t __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::btowc  @ 0x98c604
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

wint_t btowc(int __c)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::raise  @ 0x98c608
/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Unknown calling convention -- yet parameter storage is locked */

int raise(int __sig)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

// ---- <EXTERNAL>::__gnu_Unwind_Find_exidx  @ 0x98c60c
/* WARNING: Control flow encountered bad instruction data */

void __gnu_Unwind_Find_exidx(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}
