// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 123 functions

// ---- crashlytics::detail::impl::write  @ 0x1a258
/* crashlytics::detail::impl::write(int, char) */

void __thiscall crashlytics::detail::impl::write(impl *this,int param_1,char param_2)

{
  undefined1 local_9;
  int iStack_8;
  
  iStack_8 = (int)param_2;
  ::write((int)this,&local_9,1);
  return;
}

// ---- crashlytics::detail::impl::write  @ 0x1a270
/* crashlytics::detail::impl::write(int, unsigned long long) */

void crashlytics::detail::impl::write(int param_1,ulonglong param_2)

{
  char cVar1;
  char extraout_r2;
  size_t __n;
  char *pcVar2;
  char *pcVar3;
  undefined4 uVar4;
  size_t sVar5;
  char local_38 [20];
  int local_24;
  
  local_24 = __stack_chk_guard;
  memset(local_38,0,0x14);
  if (param_2 == 0) {
    __n = 1;
    local_38[0] = '0';
  }
  else {
    sVar5 = 0;
    do {
      uVar4 = (undefined4)(param_2 >> 0x20);
      __aeabi_uldivmod((int)param_2,uVar4,10,0);
      __n = sVar5 + 1;
      pcVar3 = local_38 + sVar5 + 1;
      local_38[sVar5] = extraout_r2 + '0';
      param_2 = __aeabi_uldivmod((int)param_2,uVar4,10,0);
      sVar5 = __n;
    } while (param_2 != 0);
    if (pcVar3 != local_38) {
      pcVar2 = local_38;
      while( true ) {
        pcVar2 = pcVar2 + 1;
        pcVar3 = pcVar3 + -1;
        if (pcVar3 <= pcVar2 + -1) break;
        cVar1 = pcVar2[-1];
        pcVar2[-1] = *pcVar3;
        *pcVar3 = cVar1;
      }
    }
  }
  ::write(param_1,local_38,__n);
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- crashlytics::detail::impl::write  @ 0x1a31c
/* crashlytics::detail::impl::write(int, char const*) */

void crashlytics::detail::impl::write(int param_1,char *param_2)

{
  size_t __n;
  
  __n = strlen(param_2);
  ::write(param_1,&DAT_0002b4b8,1);
  if (param_2[__n - 1] == '\n') {
    __n = __n - 1;
  }
  ::write(param_1,param_2,__n);
  ::write(param_1,&DAT_0002b4b8,1);
  return;
}

// ---- crashlytics::detail::impl::write_sequence  @ 0x1a360
/* crashlytics::detail::impl::write_sequence(int, char const*) */

void crashlytics::detail::impl::write_sequence(int param_1,char *param_2)

{
  size_t __n;
  
  __n = strlen(param_2);
  ::write(param_1,param_2,__n);
  return;
}

// ---- crashlytics::detail::impl::write  @ 0x1a37c
/* crashlytics::detail::impl::write(int, bool) */

void crashlytics::detail::impl::write(int param_1,bool param_2)

{
  char *pcVar1;
  
  if (param_2) {
    pcVar1 = "true";
  }
  else {
    pcVar1 = "false";
  }
  write_sequence(param_1,pcVar1);
  return;
}

// ---- crashlytics::detail::open  @ 0x1a394
/* crashlytics::detail::open(char const*) */

void crashlytics::detail::open(char *param_1)

{
  ::open(param_1,0x241,0x1a4);
  return;
}

// ---- crashlytics::detail::scoped_writer::wrapped::wrapped  @ 0x1a3a0
/* crashlytics::detail::scoped_writer::wrapped::wrapped(char const*, char, char,
   crashlytics::detail::scoped_writer::Comma, crashlytics::detail::scoped_writer&) */

wrapped * __thiscall
crashlytics::detail::scoped_writer::wrapped::wrapped
          (wrapped *this,char *param_1,int param_3_00,wrapped param_3,undefined4 param_5,
          int *param_6)

{
  char extraout_r2;
  int extraout_r2_00;
  int iVar1;
  
  this[4] = param_3;
  *(char **)this = param_1;
  *(int **)(this + 0xc) = param_6;
  *(undefined4 *)(this + 8) = param_5;
  iVar1 = param_3_00;
  if (param_1 != (char *)0x0) {
    impl::write(*param_6,param_1);
    impl::write((impl *)*param_6,0x3a,extraout_r2);
    iVar1 = extraout_r2_00;
  }
  impl::write((impl *)*param_6,param_3_00,(char)iVar1);
  return this;
}

// ---- crashlytics::detail::scoped_writer::wrapped::wrapped  @ 0x1a3ce
/* crashlytics::detail::scoped_writer::wrapped::wrapped(char, char,
   crashlytics::detail::scoped_writer::Comma, crashlytics::detail::scoped_writer&) */

wrapped * __thiscall
crashlytics::detail::scoped_writer::wrapped::wrapped
          (wrapped *this,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5
          )

{
  wrapped(this,0,param_2,param_3,param_4,param_5,param_3);
  return this;
}

// ---- crashlytics::detail::scoped_writer::wrapped::~wrapped  @ 0x1a3ec
/* crashlytics::detail::scoped_writer::wrapped::~wrapped() */

wrapped * __thiscall crashlytics::detail::scoped_writer::wrapped::~wrapped(wrapped *this)

{
  char in_r2;
  char extraout_r2;
  
  impl::write((impl *)**(undefined4 **)(this + 0xc),(uint)(byte)this[4],in_r2);
  if (*(int *)(this + 8) == 0) {
    impl::write((impl *)**(undefined4 **)(this + 0xc),0x2c,extraout_r2);
  }
  return this;
}

// ---- crashlytics::detail::scoped_writer::scoped_writer  @ 0x1a40c
/* crashlytics::detail::scoped_writer::scoped_writer(int) */

scoped_writer * __thiscall
crashlytics::detail::scoped_writer::scoped_writer(scoped_writer *this,int param_1)

{
  char in_r2;
  
  *(int *)this = param_1;
  impl::write((impl *)param_1,0x7b,in_r2);
  return this;
}

// ---- crashlytics::detail::scoped_writer::~scoped_writer  @ 0x1a41e
/* crashlytics::detail::scoped_writer::~scoped_writer() */

scoped_writer * __thiscall crashlytics::detail::scoped_writer::~scoped_writer(scoped_writer *this)

{
  char in_r2;
  
  impl::write(*(impl **)this,0x7d,in_r2);
  fsync(*(int *)this);
  close(*(int *)this);
  return this;
}

// ---- crashlytics::detail::scoped_writer::write  @ 0x1a43a
/* crashlytics::detail::scoped_writer::write(unsigned long long) */

void crashlytics::detail::scoped_writer::write(ulonglong param_1)

{
  undefined4 in_r2;
  undefined4 in_r3;
  
  impl::write(*(int *)param_1,CONCAT44(in_r3,in_r2));
  return;
}

// ---- crashlytics::detail::scoped_writer::write  @ 0x1a440
/* crashlytics::detail::scoped_writer::write(char const*) */

void __thiscall crashlytics::detail::scoped_writer::write(scoped_writer *this,char *param_1)

{
  impl::write(*(int *)this,param_1);
  return;
}

// ---- crashlytics::entry::jni::get_environment  @ 0x1a448
/* crashlytics::entry::jni::get_environment(_JavaVM*) */

_JavaVM * __thiscall crashlytics::entry::jni::get_environment(jni *this,_JavaVM *param_1)

{
  int iVar1;
  char *pcVar2;
  _JavaVM *local_c;
  
  local_c = param_1;
  iVar1 = (**(code **)(*(int *)this + 0x18))
                    (this,&local_c,0x10006,*(code **)(*(int *)this + 0x18),this);
  if (iVar1 == -2) {
    pcVar2 = "Failed to get the JVM environment; EDETACHED";
  }
  else {
    if (iVar1 == 0) {
      DataMemoryBarrier(0x1f);
      DataMemoryBarrier(0x1f);
      detail::jvm = this;
      return local_c;
    }
    if (iVar1 != -3) {
      return (_JavaVM *)0x0;
    }
    pcVar2 = "Failed to get the JVM environment; EVERSION";
  }
  __android_log_print(6,"libcrashlytics",pcVar2);
  return (_JavaVM *)0x0;
}

// ---- crashlytics::entry::jni::find_class  @ 0x1a4b0
/* crashlytics::entry::jni::find_class(_JNIEnv*, char const*) */

void crashlytics::entry::jni::find_class(_JNIEnv *param_1,char *param_2)

{
  (**(code **)(*(int *)param_1 + 0x18))();
  return;
}

// ---- crashlytics::entry::jni::register_natives  @ 0x1a4ba
/* crashlytics::entry::jni::register_natives(_jclass* const&, _JNIEnv*, JNINativeMethod const*,
   unsigned int) */

int crashlytics::entry::jni::register_natives
              (_jclass **param_1,_JNIEnv *param_2,JNINativeMethod *param_3,uint param_4)

{
  uint uVar1;
  int iVar2;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x35c))(param_2,*param_1,param_3,param_4,param_4);
  iVar2 = 1 - uVar1;
  if (1 < uVar1) {
    iVar2 = 0;
  }
  return iVar2;
}

// ---- crashlytics::entry::jni::session_crash_file  @ 0x1a4d4
/* crashlytics::entry::jni::session_crash_file(_JNIEnv*, _jstring*) */

void crashlytics::entry::jni::session_crash_file(_JNIEnv *param_1,_jstring *param_2)

{
  (**(code **)(*(int *)param_1 + 0x2a4))(param_1,param_2,0);
  return;
}

// ---- crashlytics::entry::jni::asset_manager_from  @ 0x1a4e2
/* crashlytics::entry::jni::asset_manager_from(_JNIEnv*, _jobject*) */

void crashlytics::entry::jni::asset_manager_from(_JNIEnv *param_1,_jobject *param_2)

{
  AAssetManager_fromJava(param_1);
  return;
}

// ---- crashlytics::entry::jni::sensor_manager  @ 0x1a4e6
/* crashlytics::entry::jni::sensor_manager() */

void crashlytics::entry::jni::sensor_manager(void)

{
  ASensorManager_getInstance();
  return;
}

// ---- crashlytics::entry::jni::configuration  @ 0x1a4ea
/* crashlytics::entry::jni::configuration() */

void crashlytics::entry::jni::configuration(void)

{
  AConfiguration_new();
  return;
}

// ---- crashlytics::entry::jni::register_natives  @ 0x1a554
/* crashlytics::entry::jni::register_natives(_JavaVM*) */

void __thiscall crashlytics::entry::jni::register_natives(jni *this,_JavaVM *param_1)

{
  _JNIEnv *p_Var1;
  _JavaVM *local_c;
  
  local_c = param_1;
  p_Var1 = (_JNIEnv *)get_environment(this,param_1);
  if (p_Var1 != (_JNIEnv *)0x0) {
    local_c = (_JavaVM *)find_class(p_Var1,"com/crashlytics/android/ndk/JniNativeApi");
    if (local_c != (_JavaVM *)0x0) {
      register_natives((_jclass **)&local_c,p_Var1,(JNINativeMethod *)&PTR_s_nativeInit_0002e648,1);
    }
  }
  return;
}

// ---- crashlytics::entry::jni::detail::managed_environment::managed_environment  @ 0x1a5e8
/* crashlytics::entry::jni::detail::managed_environment::managed_environment(_JavaVM*) */

managed_environment * __thiscall
crashlytics::entry::jni::detail::managed_environment::managed_environment
          (managed_environment *this,_JavaVM *param_1)

{
  int iVar1;
  
  *(_JavaVM **)this = param_1;
  *(undefined4 *)(this + 4) = 0;
  this[8] = (managed_environment)0x0;
  if (param_1 != (_JavaVM *)0x0) {
    iVar1 = (**(code **)(*(int *)param_1 + 0x18))(param_1,this + 4,0x10006);
    if (iVar1 == -2) {
      iVar1 = (**(code **)(**(int **)this + 0x10))(*(int **)this,this + 4,0);
      if (iVar1 == 0) {
        this[8] = (managed_environment)0x1;
      }
      else {
        this[8] = (managed_environment)0x0;
      }
    }
  }
  return this;
}

// ---- crashlytics::entry::jni::detail::managed_environment::~managed_environment  @ 0x1a628
/* crashlytics::entry::jni::detail::managed_environment::~managed_environment() */

managed_environment * __thiscall
crashlytics::entry::jni::detail::managed_environment::~managed_environment
          (managed_environment *this)

{
  if (this[8] != (managed_environment)0x0) {
    (**(code **)(**(int **)this + 0x14))();
  }
  return this;
}

// ---- crashlytics::entry::jni::detail::managed_environment::get  @ 0x1a63c
/* crashlytics::entry::jni::detail::managed_environment::get() const */

undefined4 __thiscall
crashlytics::entry::jni::detail::managed_environment::get(managed_environment *this)

{
  return *(undefined4 *)(this + 4);
}

// ---- crashlytics::api::detail::jvm_context::jvm_context  @ 0x1a640
/* crashlytics::api::detail::jvm_context::jvm_context(_jobject*, _jmethodID*, _jmethodID*,
   _jmethodID*, _jmethodID*, _jmethodID*) */

void __thiscall
crashlytics::api::detail::jvm_context::jvm_context
          (jvm_context *this,_jobject *param_1,_jmethodID *param_2,_jmethodID *param_3,
          _jmethodID *param_4,_jmethodID *param_5,_jmethodID *param_6)

{
  *(_jobject **)this = param_1;
  *(_jmethodID **)(this + 4) = param_2;
  *(_jmethodID **)(this + 8) = param_3;
  *(_jmethodID **)(this + 0xc) = param_4;
  *(_jmethodID **)(this + 0x10) = param_5;
  *(_jmethodID **)(this + 0x14) = param_6;
  return;
}

// ---- crashlytics::detail::null_context  @ 0x1a7a8
/* crashlytics::detail::null_context(crashlytics::api::detail::jvm_context*) */

int crashlytics::detail::null_context(jvm_context *param_1)

{
  int iVar1;
  
  if ((((param_1 != (jvm_context *)0x0) && (*(int *)param_1 != 0)) && (*(int *)(param_1 + 4) != 0))
     && (((*(int *)(param_1 + 8) != 0 && (*(int *)(param_1 + 0xc) != 0)) &&
         (*(int *)(param_1 + 0x10) != 0)))) {
    iVar1 = 1 - *(uint *)(param_1 + 0x14);
    if (1 < *(uint *)(param_1 + 0x14)) {
      iVar1 = 0;
    }
    return iVar1;
  }
  return 1;
}

// ---- crashlytics::detail::managed_jstring::managed_jstring  @ 0x1a7ce
/* crashlytics::detail::managed_jstring::managed_jstring(_JNIEnv*, char const*) */

managed_jstring * __thiscall
crashlytics::detail::managed_jstring::managed_jstring
          (managed_jstring *this,_JNIEnv *param_1,char *param_2)

{
  undefined4 uVar1;
  
  *(_JNIEnv **)this = param_1;
  uVar1 = (**(code **)(*(int *)param_1 + 0x29c))(param_1,param_2);
  *(undefined4 *)(this + 4) = uVar1;
  return this;
}

// ---- crashlytics::detail::managed_jstring::~managed_jstring  @ 0x1a7e6
/* crashlytics::detail::managed_jstring::~managed_jstring() */

managed_jstring * __thiscall
crashlytics::detail::managed_jstring::~managed_jstring(managed_jstring *this)

{
  if (*(int *)(this + 4) != 0) {
    (**(code **)(**(int **)this + 0x5c))();
  }
  return this;
}

// ---- crashlytics::detail::invoke1  @ 0x1a7fa
/* crashlytics::detail::invoke1(_JNIEnv*, _jobject*, _jmethodID*, char const*) */

void crashlytics::detail::invoke1
               (_JNIEnv *param_1,_jobject *param_2,_jmethodID *param_3,char *param_4)

{
  _JNIEnv *p_Stack_20;
  _jobject *local_1c;
  _jmethodID *p_Stack_18;
  
  p_Stack_20 = param_1;
  local_1c = param_2;
  p_Stack_18 = param_3;
  managed_jstring::managed_jstring((managed_jstring *)&p_Stack_20,param_1,param_4);
  if (local_1c != (_jobject *)0x0) {
    _JNIEnv::CallVoidMethod((_jobject *)param_1,(_jmethodID *)param_2,param_3);
  }
  managed_jstring::~managed_jstring((managed_jstring *)&p_Stack_20);
  return;
}

// ---- crashlytics::detail::invoke2  @ 0x1a824
/* crashlytics::detail::invoke2(_JNIEnv*, _jobject*, _jmethodID*, char const*, char const*) */

void crashlytics::detail::invoke2
               (_JNIEnv *param_1,_jobject *param_2,_jmethodID *param_3,char *param_4,char *param_5)

{
  managed_jstring amStack_28 [4];
  int local_24;
  managed_jstring amStack_20 [4];
  int local_1c;
  
  managed_jstring::managed_jstring(amStack_28,param_1,param_4);
  managed_jstring::managed_jstring(amStack_20,param_1,param_5);
  if ((local_24 != 0) && (local_1c != 0)) {
    _JNIEnv::CallVoidMethod((_jobject *)param_1,(_jmethodID *)param_2,param_3,local_24,local_1c);
  }
  managed_jstring::~managed_jstring(amStack_20);
  managed_jstring::~managed_jstring(amStack_28);
  return;
}

// ---- crashlytics::detail::invokeN  @ 0x1a86e
/* crashlytics::detail::invokeN(_JNIEnv*, _jobject*, _jmethodID*, std::initializer_list<char
   const*>) */

void __thiscall
crashlytics::detail::invokeN
          (detail *this,_jobject *param_1,_jmethodID *param_2,undefined4 *param_3,int param_5)

{
  if ((this != (detail *)0x0) && (param_1 != (_jobject *)0x0)) {
    if (param_5 == 1) {
      invoke1((_JNIEnv *)this,param_1,param_2,(char *)*param_3);
      return;
    }
    if (param_5 == 2) {
      invoke2((_JNIEnv *)this,param_1,param_2,(char *)*param_3,(char *)param_3[1]);
      return;
    }
  }
  return;
}

// ---- crashlytics::handler::signal::detail::fgets_safe  @ 0x1aa3c
/* crashlytics::handler::signal::detail::fgets_safe(int, char*, unsigned int, bool) */

char * crashlytics::handler::signal::detail::fgets_safe
                 (int param_1,char *param_2,uint param_3,bool param_4)

{
  char *pcVar1;
  int *piVar2;
  char *pcVar3;
  char *pcVar4;
  __off_t _Var5;
  char *__nbytes;
  
  memset(param_2,0,param_3);
  __nbytes = (char *)(param_3 - 1);
  do {
    pcVar1 = (char *)read(param_1,param_2,(size_t)__nbytes);
    if (pcVar1 != (char *)0xffffffff) break;
    piVar2 = (int *)__errno();
  } while (*piVar2 == 4);
  if (pcVar1 + 1 < (char *)0x2) {
    return (char *)0x0;
  }
  pcVar3 = strchr(param_2,10);
  if (__nbytes <= pcVar1) {
    pcVar1 = __nbytes;
  }
  if (pcVar3 == (char *)0x0) {
    pcVar4 = strchr(param_2,0);
    pcVar3 = __nbytes;
    if (pcVar4 == (char *)0x0) goto LAB_0001aa9e;
    pcVar3 = pcVar4 + -(int)param_2;
  }
  else {
    pcVar3 = pcVar3 + (1 - (int)param_2);
  }
  if (pcVar3 == (char *)0x0) {
    pcVar3 = __nbytes;
  }
LAB_0001aa9e:
  memset(param_2 + (int)pcVar3,0,(int)__nbytes - (int)pcVar3);
  _Var5 = lseek(param_1,0,1);
  lseek(param_1,(__off_t)(pcVar3 + (_Var5 - (int)pcVar1)),0);
  return param_2;
}

// ---- crashlytics::handler::signal::detail::filesystem::managed_node_file::~managed_node_file  @ 0x1aacc
/* crashlytics::handler::signal::detail::filesystem::managed_node_file::~managed_node_file() */

managed_node_file * __thiscall
crashlytics::handler::signal::detail::filesystem::managed_node_file::~managed_node_file
          (managed_node_file *this)

{
  if (*(int *)this != -1) {
    close(*(int *)this);
  }
  return this;
}

// ---- crashlytics::handler::signal::detail::memory_statistics_from_sysconf  @ 0x1aade
/* crashlytics::handler::signal::detail::memory_statistics_from_sysconf() */

detail * __thiscall
crashlytics::handler::signal::detail::memory_statistics_from_sysconf(detail *this)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  uVar1 = sysconf(0x27);
  uVar1 = uVar1 & ~((int)uVar1 >> 0x1f);
  uVar2 = sysconf(0x62);
  iVar3 = uVar1 * (uVar2 & ~((int)uVar2 >> 0x1f));
  uVar2 = sysconf(99);
  *(int *)this = iVar3;
  *(int *)(this + 4) = iVar3 >> 0x1f;
  iVar3 = uVar1 * (uVar2 & ~((int)uVar2 >> 0x1f));
  *(int *)(this + 8) = iVar3;
  *(int *)(this + 0xc) = iVar3 >> 0x1f;
  return this;
}

// ---- crashlytics::handler::signal::detail::parse_kb_value  @ 0x1ab1a
/* crashlytics::handler::signal::detail::parse_kb_value(char const*, unsigned int) */

void crashlytics::handler::signal::detail::parse_kb_value(char *param_1,uint param_2)

{
  byte *pbVar1;
  byte *__nptr;
  
  do {
    pbVar1 = (byte *)param_1;
    param_1 = (char *)(pbVar1 + 1);
    __nptr = pbVar1;
  } while (*pbVar1 == 0x20);
  for (; (9 < *__nptr - 0x30 && ((uint)((int)__nptr - (int)pbVar1) < param_2)); __nptr = __nptr + 1)
  {
  }
  atoll((char *)__nptr);
  return;
}

// ---- crashlytics::handler::signal::detail::battery_capacity  @ 0x1ab40
/* crashlytics::handler::signal::detail::battery_capacity() */

long crashlytics::handler::signal::detail::battery_capacity(void)

{
  int iVar1;
  int *piVar2;
  long lVar3;
  int local_1c;
  char local_18 [4];
  char *apcStack_14 [2];
  
  local_1c = 0xffffffff;
  do {
    iVar1 = open("/sys/class/power_supply/battery/capacity",0);
    if (iVar1 != -1) break;
    piVar2 = (int *)__errno();
  } while (*piVar2 == 4);
  local_1c = iVar1;
  if (iVar1 == -1) {
    lVar3 = 0;
  }
  else {
    local_18[0] = '\0';
    local_18[1] = '\0';
    local_18[2] = '\0';
    local_18[3] = '\0';
    iVar1 = fgets_safe(iVar1,local_18,4,false);
    lVar3 = 0;
    if (iVar1 != 0) {
      lVar3 = strtol(local_18,apcStack_14,10);
    }
  }
  filesystem::managed_node_file::~managed_node_file((managed_node_file *)&local_1c);
  return lVar3;
}

// ---- crashlytics::detail::memory::detail::pack  @ 0x1aba4
/* crashlytics::detail::memory::detail::pack(unsigned int, unsigned int&, unsigned char*&, unsigned
   int) */

uchar * crashlytics::detail::memory::detail::pack
                  (uint param_1,uint *param_2,uchar **param_3,uint param_4)

{
  uint uVar1;
  uint uVar2;
  uchar *puVar3;
  
  uVar2 = *param_2;
  puVar3 = *param_3;
  uVar1 = param_4 + 8 + uVar2;
  if (uVar1 == param_1) {
    *param_2 = 0;
    *param_3 = (uchar *)0x0;
  }
  else {
    *param_2 = uVar1;
  }
  puVar3[uVar2] = '\x02';
  return puVar3 + uVar2 + 8;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features  @ 0x1abca
/* crashlytics::handler::signal::detail::write_cpu_features(crashlytics::detail::scoped_writer&) */

scoped_writer * crashlytics::handler::signal::detail::write_cpu_features(scoped_writer *param_1)

{
  return param_1;
}

// ---- crashlytics::handler::signal::detail::read_memory_statistics_from_proc_fragment<10u>  @ 0x1abcc
/* unsigned long long
   crashlytics::handler::signal::detail::read_memory_statistics_from_proc_fragment<10u>(int, char
   const (&) [10u]) */

ulonglong crashlytics::handler::signal::detail::read_memory_statistics_from_proc_fragment<10u>
                    (int param_1,char *param_2)

{
  int iVar1;
  int iVar2;
  ulonglong uVar3;
  char acStack_11c [10];
  char acStack_112 [246];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(acStack_11c,0,0x100);
  do {
    iVar1 = fgets_safe(param_1,acStack_11c,0x100,false);
    if (iVar1 == 0) break;
    iVar2 = strncmp(acStack_11c,param_2,9);
  } while (iVar2 != 0);
  lseek(param_1,0,0);
  if (iVar1 == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = parse_kb_value(acStack_112,0xf5);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar3;
}

// ---- crashlytics::handler::signal::detail::read_memory_statistics_from_proc_fragment<9u>  @ 0x1ac40
/* unsigned long long
   crashlytics::handler::signal::detail::read_memory_statistics_from_proc_fragment<9u>(int, char
   const (&) [9u]) */

ulonglong crashlytics::handler::signal::detail::read_memory_statistics_from_proc_fragment<9u>
                    (int param_1,char *param_2)

{
  int iVar1;
  int iVar2;
  ulonglong uVar3;
  char acStack_11c [9];
  char acStack_113 [247];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(acStack_11c,0,0x100);
  do {
    iVar1 = fgets_safe(param_1,acStack_11c,0x100,false);
    if (iVar1 == 0) break;
    iVar2 = strncmp(acStack_11c,param_2,8);
  } while (iVar2 != 0);
  lseek(param_1,0,0);
  if (iVar1 == 0) {
    uVar3 = 0;
  }
  else {
    uVar3 = parse_kb_value(acStack_113,0xf6);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar3;
}

// ---- crashlytics::handler::signal::detail::memory_statistics  @ 0x1acb4
/* crashlytics::handler::signal::detail::memory_statistics() */

void crashlytics::handler::signal::detail::memory_statistics(void)

{
  detail *in_r0;
  int iVar1;
  int *piVar2;
  ulonglong uVar3;
  ulonglong uVar4;
  int local_1c [2];
  
  local_1c[0] = 0xffffffff;
  do {
    iVar1 = open("/proc/meminfo",0);
    if (iVar1 != -1) break;
    piVar2 = (int *)__errno();
  } while (*piVar2 == 4);
  local_1c[0] = iVar1;
  if (iVar1 != -1) {
    uVar3 = read_memory_statistics_from_proc_fragment<10u>(iVar1,"MemTotal:");
    uVar4 = read_memory_statistics_from_proc_fragment<9u>(iVar1,"MemFree:");
    if ((uVar3 != 0) && (uVar4 != 0)) {
      *(ulonglong *)in_r0 = uVar3 << 10;
      *(ulonglong *)(in_r0 + 8) = uVar4 << 10;
      goto LAB_0001ad28;
    }
  }
  memory_statistics_from_sysconf(in_r0);
LAB_0001ad28:
  filesystem::managed_node_file::~managed_node_file((managed_node_file *)local_1c);
  return;
}

// ---- crashlytics::detail::scoped_writer::write<char_const*>  @ 0x1ad40
/* void crashlytics::detail::scoped_writer::write<char const*>(char const*, char const*,
   crashlytics::detail::scoped_writer::Comma) */

void __thiscall
crashlytics::detail::scoped_writer::write<char_const*>
          (scoped_writer *this,char *param_1,char *param_2,int param_4)

{
  char extraout_r2;
  char extraout_r2_00;
  
  impl::write(*(int *)this,param_1);
  impl::write(*(impl **)this,0x3a,extraout_r2);
  impl::write(*(int *)this,param_2);
  if (param_4 == 0) {
    impl::write(*(impl **)this,0x2c,extraout_r2_00);
    return;
  }
  return;
}

// ---- crashlytics::handler::signal::detail::write_version  @ 0x1ad70
/* crashlytics::handler::signal::detail::write_version(crashlytics::detail::scoped_writer&) */

void crashlytics::handler::signal::detail::write_version(scoped_writer *param_1)

{
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"version","1.1.2",0);
  return;
}

// ---- crashlytics::handler::signal::detail::write_unwind_impl  @ 0x1ad88
/* crashlytics::handler::signal::detail::write_unwind_impl(crashlytics::detail::scoped_writer&,
   crashlytics::unwinder::unwinder_base<48u>*) */

void crashlytics::handler::signal::detail::write_unwind_impl
               (scoped_writer *param_1,unwinder_base *param_2)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0xc))(param_2);
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"unwind_impl",uVar1,0);
  return;
}

// ---- crashlytics::detail::scoped_writer::write<unsigned_long_long>  @ 0x1adac
/* void crashlytics::detail::scoped_writer::write<unsigned long long>(char const*, unsigned long
   long, crashlytics::detail::scoped_writer::Comma) */

void crashlytics::detail::scoped_writer::write<unsigned_long_long>
               (int *param_1,char *param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  char extraout_r2;
  char extraout_r2_00;
  
  impl::write(*param_1,param_2);
  impl::write((impl *)*param_1,0x3a,extraout_r2);
  impl::write(*param_1,CONCAT44(param_4,param_3));
  if (param_5 == 0) {
    impl::write((impl *)*param_1,0x2c,extraout_r2_00);
    return;
  }
  return;
}

// ---- crashlytics::handler::signal::detail::write_time  @ 0x1ade0
/* crashlytics::handler::signal::detail::write_time(crashlytics::detail::scoped_writer&) */

void __thiscall
crashlytics::handler::signal::detail::write_time(detail *this,scoped_writer *param_1)

{
  time_t tVar1;
  
  tVar1 = time((time_t *)0x0);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (this,&DAT_0002b707,tVar1,tVar1 >> 0x1f,0,param_1);
  return;
}

// ---- crashlytics::detail::scoped_writer::write<bool>  @ 0x1ae80
/* void crashlytics::detail::scoped_writer::write<bool>(char const*, bool,
   crashlytics::detail::scoped_writer::Comma) */

void __thiscall
crashlytics::detail::scoped_writer::write<bool>
          (scoped_writer *this,char *param_1,bool param_2,int param_4)

{
  char extraout_r2;
  char extraout_r2_00;
  
  impl::write(*(int *)this,param_1);
  impl::write(*(impl **)this,0x3a,extraout_r2);
  impl::write(*(int *)this,param_2);
  if (param_4 == 0) {
    impl::write(*(impl **)this,0x2c,extraout_r2_00);
    return;
  }
  return;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features_mips  @ 0x1af18
/* crashlytics::handler::signal::detail::write_cpu_features_mips(crashlytics::detail::scoped_writer&)
    */

void crashlytics::handler::signal::detail::write_cpu_features_mips(scoped_writer *param_1)

{
  wrapped awStack_18 [16];
  
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"architecture",&DAT_0002b731,0);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            (awStack_18,"cpu-features",0x5b,0x5d,0,param_1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_18);
  return;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features_x86_64  @ 0x1af24
/* crashlytics::handler::signal::detail::write_cpu_features_x86_64(crashlytics::detail::scoped_writer&)
    */

void crashlytics::handler::signal::detail::write_cpu_features_x86_64(scoped_writer *param_1)

{
  wrapped awStack_18 [16];
  
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"architecture",&UNK_0002b736,0);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            (awStack_18,"cpu-features",0x5b,0x5d,0,param_1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_18);
  return;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features_mips64  @ 0x1af30
/* crashlytics::handler::signal::detail::write_cpu_features_mips64(crashlytics::detail::scoped_writer&)
    */

void crashlytics::handler::signal::detail::write_cpu_features_mips64(scoped_writer *param_1)

{
  wrapped awStack_18 [16];
  
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"architecture",&UNK_0002b73d,0);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            (awStack_18,"cpu-features",0x5b,0x5d,0,param_1);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_18);
  return;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features_arm  @ 0x1af6c
/* crashlytics::handler::signal::detail::write_cpu_features_arm(crashlytics::detail::scoped_writer&)
    */

void crashlytics::handler::signal::detail::write_cpu_features_arm(scoped_writer *param_1)

{
  undefined4 extraout_r2;
  undefined4 uVar1;
  undefined4 extraout_r2_00;
  char **ppcVar2;
  char **ppcVar3;
  wrapped awStack_b0 [16];
  char *local_a0;
  undefined1 local_9c;
  char *local_98;
  byte local_94;
  char *local_90;
  undefined1 local_8c;
  char *local_88;
  undefined1 local_84;
  undefined *local_80;
  undefined1 local_7c;
  char *local_78;
  undefined1 local_74;
  char *local_70;
  undefined1 local_6c;
  char *local_68;
  undefined1 local_64;
  char *local_60;
  undefined1 local_5c;
  char *local_58;
  undefined1 local_54;
  char *local_50;
  undefined1 local_4c;
  undefined *local_48;
  undefined1 local_44;
  char *local_40;
  undefined1 local_3c;
  undefined *local_38;
  undefined1 local_34;
  undefined *local_30;
  undefined1 local_2c;
  char *local_28;
  undefined1 local_24;
  char *local_20;
  undefined1 local_1c;
  char *pcStack_18;
  
  android_getCpuFeatures();
  local_9c = 0;
  local_a0 = "VFPv2";
  local_94 = android_getCpuFeatures();
  local_98 = "ARMv7";
  local_94 = local_94 & 1;
  android_getCpuFeatures();
  local_8c = 0;
  local_90 = "VFPv3";
  android_getCpuFeatures();
  local_84 = 0;
  local_88 = "VFP_D32";
  android_getCpuFeatures();
  local_7c = 0;
  local_80 = &DAT_0002b75e;
  android_getCpuFeatures();
  local_74 = 0;
  local_78 = "VFP_FP16";
  android_getCpuFeatures();
  local_6c = 0;
  local_70 = "VFP_FMA";
  android_getCpuFeatures();
  local_64 = 0;
  local_68 = "NEON_FMA";
  android_getCpuFeatures();
  local_5c = 0;
  local_60 = "IDIV_ARM";
  android_getCpuFeatures();
  local_54 = 0;
  local_58 = "IDIV_THUMB2";
  android_getCpuFeatures();
  local_4c = 0;
  local_50 = "iWMMXt";
  android_getCpuFeatures();
  local_44 = 0;
  local_48 = &DAT_0002b799;
  android_getCpuFeatures();
  local_3c = 0;
  local_40 = "CRC32";
  android_getCpuFeatures();
  local_34 = 0;
  local_38 = &DAT_0002b7a3;
  android_getCpuFeatures();
  local_2c = 0;
  local_30 = &DAT_0002b7a8;
  android_getCpuFeatures();
  local_24 = 0;
  local_28 = "PMULL";
  android_getCpuFeatures();
  local_20 = "LDREX_STREX";
  local_1c = 0;
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"architecture",&DAT_0002b7bf,0);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            (awStack_b0,"cpu-features",0x5b,0x5d,0,param_1);
  FUN_0001af3c(&local_a0,param_1);
  uVar1 = extraout_r2;
  ppcVar2 = &local_98;
  do {
    crashlytics::detail::impl::write(*(impl **)param_1,0x2c,(char)uVar1);
    ppcVar3 = ppcVar2 + 2;
    FUN_0001af3c(ppcVar2,param_1);
    uVar1 = extraout_r2_00;
    ppcVar2 = ppcVar3;
  } while (ppcVar3 != &pcStack_18);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_b0);
  return;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features_arm64  @ 0x1b140
/* crashlytics::handler::signal::detail::write_cpu_features_arm64(crashlytics::detail::scoped_writer&)
    */

void crashlytics::handler::signal::detail::write_cpu_features_arm64(scoped_writer *param_1)

{
  undefined4 extraout_r2;
  undefined4 uVar1;
  undefined4 extraout_r2_00;
  char **ppcVar2;
  char **ppcVar3;
  wrapped awStack_60 [16];
  undefined *local_50;
  byte local_4c;
  char *local_48;
  undefined1 local_44;
  undefined *local_40;
  undefined1 local_3c;
  char *local_38;
  undefined1 local_34;
  undefined *local_30;
  undefined1 local_2c;
  undefined *local_28;
  undefined1 local_24;
  char *local_20;
  undefined1 local_1c;
  char *pcStack_18;
  
  local_4c = android_getCpuFeatures();
  local_50 = &DAT_0002b7c3;
  local_4c = local_4c & 1;
  android_getCpuFeatures();
  local_44 = 0;
  local_48 = "ASIMD";
  android_getCpuFeatures();
  local_3c = 0;
  local_40 = &DAT_0002b799;
  android_getCpuFeatures();
  local_34 = 0;
  local_38 = "PMULL";
  android_getCpuFeatures();
  local_2c = 0;
  local_30 = &DAT_0002b7a8;
  android_getCpuFeatures();
  local_24 = 0;
  local_28 = &DAT_0002b7a3;
  android_getCpuFeatures();
  local_20 = "CRC32";
  local_1c = 0;
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"architecture","ARM64",0);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            (awStack_60,"cpu-features",0x5b,0x5d,0,param_1);
  FUN_0001b110(&local_50,param_1);
  uVar1 = extraout_r2;
  ppcVar2 = &local_48;
  do {
    crashlytics::detail::impl::write(*(impl **)param_1,0x2c,(char)uVar1);
    ppcVar3 = ppcVar2 + 2;
    FUN_0001b110(ppcVar2,param_1);
    uVar1 = extraout_r2_00;
    ppcVar2 = ppcVar3;
  } while (ppcVar3 != &pcStack_18);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_60);
  return;
}

// ---- crashlytics::handler::signal::detail::write_cpu_features_x86  @ 0x1b260
/* crashlytics::handler::signal::detail::write_cpu_features_x86(crashlytics::detail::scoped_writer&)
    */

void crashlytics::handler::signal::detail::write_cpu_features_x86(scoped_writer *param_1)

{
  undefined4 extraout_r2;
  undefined4 uVar1;
  undefined4 extraout_r2_00;
  char **ppcVar2;
  char **ppcVar3;
  wrapped awStack_40 [16];
  char *local_30;
  byte local_2c;
  char *local_28;
  undefined1 local_24;
  char *local_20;
  undefined1 local_1c;
  char *pcStack_18;
  
  local_2c = android_getCpuFeatures();
  local_30 = "SSSE3";
  local_2c = local_2c & 1;
  android_getCpuFeatures();
  local_24 = 0;
  local_28 = "POPCNT";
  android_getCpuFeatures();
  local_20 = "MOVBE";
  local_1c = 0;
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"architecture",&DAT_0002b7e5,0);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            (awStack_40,"cpu-features",0x5b,0x5d,0,param_1);
  FUN_0001b230(&local_30,param_1);
  uVar1 = extraout_r2;
  ppcVar2 = &local_28;
  do {
    crashlytics::detail::impl::write(*(impl **)param_1,0x2c,(char)uVar1);
    ppcVar3 = ppcVar2 + 2;
    FUN_0001b230(ppcVar2,param_1);
    uVar1 = extraout_r2_00;
    ppcVar2 = ppcVar3;
  } while (ppcVar3 != &pcStack_18);
  crashlytics::detail::scoped_writer::wrapped::~wrapped(awStack_40);
  return;
}

// ---- crashlytics::handler::signal::detail::write_device_info  @ 0x1b308
/* crashlytics::handler::signal::detail::write_device_info(crashlytics::detail::scoped_writer&,
   crashlytics::handler::detail::context) */

void crashlytics::handler::signal::detail::write_device_info
               (scoped_writer *param_1,undefined4 param_2,undefined4 param_3,int param_4,
               undefined4 param_5)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 uVar8;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  statfs sStack_90;
  
  AConfiguration_fromAssetManager(param_5,param_3);
  memory_statistics();
  do {
    iVar1 = statfs("/data",&sStack_90);
    if (iVar1 != -1) {
      if (iVar1 == 0) {
        uVar6 = (undefined4)((ulonglong)sStack_90.f_blocks * (ulonglong)(uint)sStack_90.f_bsize);
        uVar5 = (undefined4)((ulonglong)sStack_90.f_bavail * (ulonglong)(uint)sStack_90.f_bsize);
        iVar7 = sStack_90.f_bfree * sStack_90.f_bsize +
                (int)((ulonglong)sStack_90.f_blocks * (ulonglong)(uint)sStack_90.f_bsize >> 0x20);
        iVar1 = sStack_90.f_files * sStack_90.f_bsize +
                (int)((ulonglong)sStack_90.f_bavail * (ulonglong)(uint)sStack_90.f_bsize >> 0x20);
        goto LAB_0001b352;
      }
      break;
    }
    piVar2 = (int *)__errno();
  } while (*piVar2 == 4);
  uVar5 = 0;
  iVar1 = 0;
  uVar6 = 0;
  iVar7 = 0;
LAB_0001b352:
  uVar3 = battery_capacity();
  uVar8 = 0;
  if ((param_4 != 0) && (iVar4 = ASensorManager_getDefaultSensor(param_4,8), uVar8 = 0, iVar4 != 0))
  {
    uVar8 = 1;
  }
  iVar4 = AConfiguration_getOrientation(param_5);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_1,"orientation",iVar4,iVar4 >> 0x1f,0);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_1,"total_physical_memory",local_a0,uStack_9c,0);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_1,"total_internal_storage",uVar6,iVar7,0);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_1,"available_physical_memory",local_98,uStack_94,0);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_1,"available_internal_storage",uVar5,iVar1,0);
  crashlytics::detail::scoped_writer::write<unsigned_long_long>(param_1,"battery",uVar3,0,0);
  crashlytics::detail::scoped_writer::write<bool>(param_1,"proximity_enabled",uVar8,0);
  return;
}

// ---- crashlytics::detail::lexical_cast<int>  @ 0x1b440
/* std::enable_if<std::is_integral<int>::value, unsigned int>::type
   crashlytics::detail::lexical_cast<int>(int, char*) */

int crashlytics::detail::lexical_cast<int>(int param_1,char *param_2)

{
  char cVar1;
  char extraout_r1;
  int iVar2;
  char *pcVar3;
  
  if (param_1 == 0) {
    *param_2 = '0';
    return 1;
  }
  iVar2 = 0;
  do {
    __aeabi_idivmod(param_1,10);
    iVar2 = iVar2 + 1;
    pcVar3 = param_2 + iVar2;
    pcVar3[-1] = extraout_r1 + '0';
    param_1 = __divsi3(param_1,10);
  } while (param_1 != 0);
  if (param_2 != pcVar3) {
    while( true ) {
      pcVar3 = pcVar3 + -1;
      if (pcVar3 <= param_2) break;
      cVar1 = *param_2;
      *param_2 = *pcVar3;
      *pcVar3 = cVar1;
      param_2 = param_2 + 1;
    }
  }
  return iVar2;
}

// ---- crashlytics::handler::signal::detail::write_signal_info  @ 0x1b498
/* crashlytics::handler::signal::detail::write_signal_info(crashlytics::detail::scoped_writer&, int,
   siginfo*) */

void crashlytics::handler::signal::detail::write_signal_info
               (scoped_writer *param_1,int param_2,siginfo *param_3)

{
  uint uVar1;
  char *pcVar2;
  char *pcVar3;
  uint uVar4;
  undefined4 local_30;
  undefined4 local_2c [2];
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  uVar4 = param_3->si_code;
  switch(param_2) {
  case 4:
    switch(uVar4) {
    case 1:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_ILLOPC";
      break;
    case 2:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_ILLOPN";
      break;
    case 3:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_ILLADR";
      break;
    case 4:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_ILLTRP";
      break;
    case 5:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_PRVOPC";
      break;
    case 6:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_PRVREG";
      break;
    case 7:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_COPROC";
      break;
    case 8:
      pcVar2 = "SIGILL";
      pcVar3 = "ILL_BADSTK";
      break;
    default:
      pcVar2 = "SIGILL";
      goto LAB_0001b5ac;
    }
    goto LAB_0001b5da;
  default:
    pcVar2 = (char *)0x0;
    break;
  case 6:
    pcVar2 = "SIGABRT";
    break;
  case 7:
    if (uVar4 == 2) {
      pcVar2 = "SIGBUS";
      pcVar3 = "BUS_ADRERR";
      goto LAB_0001b5da;
    }
    if (uVar4 == 3) {
      pcVar2 = "SIGBUS";
      pcVar3 = "BUS_OBJERR";
      goto LAB_0001b5da;
    }
    if (uVar4 == 1) {
      pcVar2 = "SIGBUS";
      pcVar3 = "BUS_ADRALN";
      goto LAB_0001b5da;
    }
    pcVar2 = "SIGBUS";
    break;
  case 8:
    switch(uVar4) {
    case 1:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_INTDIV";
      break;
    case 2:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_INTOVF";
      break;
    case 3:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_FLTDIV";
      break;
    default:
      pcVar2 = "SIGFPE";
      goto LAB_0001b5ac;
    case 5:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_FLTUND";
      break;
    case 6:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_FLTRES";
      break;
    case 7:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_FLTINV";
      break;
    case 8:
      pcVar2 = "SIGFPE";
      pcVar3 = "FPE_FLTSUB";
    }
    goto LAB_0001b5da;
  case 0xb:
    if (uVar4 == 1) {
      pcVar2 = "SIGSEGV";
      pcVar3 = "SEGV_MAPERR";
      goto LAB_0001b5da;
    }
    if (uVar4 == 2) {
      pcVar2 = "SIGSEGV";
      pcVar3 = "SEGV_ACCERR";
      goto LAB_0001b5da;
    }
    pcVar2 = "SIGSEGV";
  }
LAB_0001b5ac:
  pcVar3 = (char *)0x0;
LAB_0001b5da:
  crashlytics::detail::scoped_writer::write<unsigned_long_long>
            (param_1,"si_addr",(param_3->_sifields)._pad[0],(param_3->_sifields)._pad[0] >> 0x1f,0);
  if (pcVar2 == (char *)0x0) {
    if (param_2 < -99) {
      local_24 = 0x444e55;
    }
    else if (param_2 < 1000) {
      uVar1 = param_2 >> 0x1f;
      local_1c = 0x20202d;
      crashlytics::detail::lexical_cast<int>
                ((param_2 ^ uVar1) - uVar1,(char *)((int)&local_1c - uVar1));
      local_24 = local_1c;
    }
    else {
      local_24 = 0x52564f;
    }
    pcVar2 = (char *)&local_30;
    local_30 = local_24;
  }
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"sig_name",pcVar2,0);
  if (pcVar3 == (char *)0x0) {
    if ((int)uVar4 < -99) {
      local_1c = 0x444e55;
    }
    else if ((int)uVar4 < 1000) {
      uVar1 = (int)uVar4 >> 0x1f;
      local_20 = 0x20202d;
      crashlytics::detail::lexical_cast<int>
                ((uVar4 ^ uVar1) - uVar1,(char *)((int)&local_20 - uVar1));
      local_1c = local_20;
    }
    else {
      local_1c = 0x52564f;
    }
    local_20 = local_1c;
    pcVar3 = (char *)local_2c;
    local_2c[0] = local_1c;
  }
  crashlytics::detail::scoped_writer::write<char_const*>(param_1,"sig_code",pcVar3,0);
  return;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<std::array<int,1024u>>::kernel_page_allocator  @ 0x1b778
/* crashlytics::detail::memory::kernel_page_allocator<std::array<int, 1024u>
   >::kernel_page_allocator() */

kernel_page_allocator<std::array<int,1024u>> * __thiscall
crashlytics::detail::memory::kernel_page_allocator<std::array<int,1024u>>::kernel_page_allocator
          (kernel_page_allocator<std::array<int,1024u>> *this)

{
  uint uVar1;
  
  *(undefined4 *)this = 0;
  uVar1 = sysconf(0x27);
  *(undefined4 *)(this + 8) = 0;
  *(uint *)(this + 4) = uVar1 & ~((int)uVar1 >> 0x1f);
  return this;
}

// ---- crashlytics::detail::memory::managed_storage<std::array<int,1024u>>::managed_storage  @ 0x1b794
/* crashlytics::detail::memory::managed_storage<std::array<int, 1024u> >::managed_storage() */

managed_storage<std::array<int,1024u>> * __thiscall
crashlytics::detail::memory::managed_storage<std::array<int,1024u>>::managed_storage
          (managed_storage<std::array<int,1024u>> *this)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *__s;
  int local_1c;
  uint local_18;
  uint local_14;
  
  kernel_page_allocator<std::array<int,1024u>>::kernel_page_allocator
            ((kernel_page_allocator<std::array<int,1024u>> *)&local_1c);
  if ((local_1c == 0) || ((local_18 - 8) - local_14 < 0x1000)) {
    iVar1 = __udivsi3(local_18 + 0x1007,local_18);
    puVar2 = mmap((void *)0x0,local_18 * iVar1,3,0x22,-1,0);
    if ((puVar2 != (undefined1 *)0xffffffff) && (puVar2 != (undefined1 *)0x0)) {
      __s = puVar2 + 8;
      *puVar2 = 1;
      goto LAB_0001b7ea;
    }
  }
  else {
    __s = (undefined1 *)detail::pack(local_18,&local_14,(uchar **)&local_1c,0x1000);
    if (__s != (undefined1 *)0x0) goto LAB_0001b7ea;
  }
  __s = make_function_scoped_static_byte_array<std::array<int,1024u>>()::storage + 8;
  make_function_scoped_static_byte_array<std::array<int,1024u>>()::storage[0] = 0;
  make_function_scoped_static_byte_array<std::array<int,1024u>>()::call_count =
       make_function_scoped_static_byte_array<std::array<int,1024u>>()::call_count + 1;
LAB_0001b7ea:
  memset(__s,0,0x1000);
  *(undefined1 **)this = __s;
  return this;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::kernel_page_allocator  @ 0x1b838
/* crashlytics::detail::memory::kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,
   48u> >::kernel_page_allocator() */

kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>> * __thiscall
crashlytics::detail::memory::
kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::
kernel_page_allocator
          (kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>
           *this)

{
  uint uVar1;
  
  *(undefined4 *)this = 0;
  uVar1 = sysconf(0x27);
  *(undefined4 *)(this + 8) = 0;
  *(uint *)(this + 4) = uVar1 & ~((int)uVar1 >> 0x1f);
  return this;
}

// ---- crashlytics::detail::memory::managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::managed_storage  @ 0x1b854
/* crashlytics::detail::memory::managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,
   48u> >::managed_storage() */

managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>> * __thiscall
crashlytics::detail::memory::
managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::managed_storage
          (managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>> *this)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *__s;
  int local_1c;
  uint local_18;
  uint local_14;
  
  kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::
  kernel_page_allocator
            ((kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>
              *)&local_1c);
  if ((local_1c == 0) || ((local_18 - 8) - local_14 < 0x180)) {
    iVar1 = __udivsi3(local_18 + 0x187,local_18);
    puVar2 = mmap((void *)0x0,local_18 * iVar1,3,0x22,-1,0);
    if ((puVar2 != (undefined1 *)0xffffffff) && (puVar2 != (undefined1 *)0x0)) {
      __s = puVar2 + 8;
      *puVar2 = 1;
      goto LAB_0001b8a8;
    }
  }
  else {
    __s = (undefined1 *)detail::pack(local_18,&local_14,(uchar **)&local_1c,0x180);
    if (__s != (undefined1 *)0x0) goto LAB_0001b8a8;
  }
  __s = make_function_scoped_static_byte_array<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>()
        ::storage + 8;
  make_function_scoped_static_byte_array<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>()
  ::storage[0] = 0;
  make_function_scoped_static_byte_array<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>()
  ::call_count = make_function_scoped_static_byte_array<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>()
                 ::call_count + 1;
LAB_0001b8a8:
  memset(__s,0,0x180);
  *(undefined1 **)this = __s;
  return this;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t>::kernel_page_allocator  @ 0x1b8f8
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t>::kernel_page_allocator()
    */

kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t> * __thiscall
crashlytics::detail::memory::
kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t>::kernel_page_allocator
          (kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t> *this)

{
  uint uVar1;
  
  *(undefined4 *)this = 0;
  uVar1 = sysconf(0x27);
  *(undefined4 *)(this + 8) = 0;
  *(uint *)(this + 4) = uVar1 & ~((int)uVar1 >> 0x1f);
  return this;
}

// ---- crashlytics::detail::memory::managed_storage<crashlytics::handler::signal::detail::thread_name_t>::managed_storage  @ 0x1b914
/* crashlytics::detail::memory::managed_storage<crashlytics::handler::signal::detail::thread_name_t>::managed_storage()
    */

managed_storage<crashlytics::handler::signal::detail::thread_name_t> * __thiscall
crashlytics::detail::memory::managed_storage<crashlytics::handler::signal::detail::thread_name_t>::
managed_storage(managed_storage<crashlytics::handler::signal::detail::thread_name_t> *this)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *__s;
  int local_1c;
  uint local_18;
  uint local_14;
  
  kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t>::kernel_page_allocator
            ((kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t> *)&local_1c
            );
  if ((local_1c == 0) || ((local_18 - 8) - local_14 < 0x11)) {
    iVar1 = __udivsi3(local_18 + 0x18,local_18);
    puVar2 = mmap((void *)0x0,local_18 * iVar1,3,0x22,-1,0);
    if ((puVar2 == (undefined1 *)0xffffffff) || (puVar2 == (undefined1 *)0x0)) goto LAB_0001b986;
    __s = puVar2 + 8;
    *puVar2 = 1;
  }
  else {
    __s = (undefined1 *)detail::pack(local_18,&local_14,(uchar **)&local_1c,0x11);
    if (__s == (undefined1 *)0x0) {
LAB_0001b986:
      __s = make_function_scoped_static_byte_array<crashlytics::handler::signal::detail::thread_name_t>()
            ::storage + 8;
      make_function_scoped_static_byte_array<crashlytics::handler::signal::detail::thread_name_t>()
      ::storage[0] = 0;
      make_function_scoped_static_byte_array<crashlytics::handler::signal::detail::thread_name_t>()
      ::call_count = make_function_scoped_static_byte_array<crashlytics::handler::signal::detail::thread_name_t>()
                     ::call_count + 1;
      goto LAB_0001b9a2;
    }
  }
  memset(__s,0,0x11);
LAB_0001b9a2:
  memset(__s,0,0x11);
  *(undefined1 **)this = __s;
  return this;
}

// ---- crashlytics::handler::signal::detail::read_thread_name_from_stat<17u>  @ 0x1b9b8
/* bool crashlytics::handler::signal::detail::read_thread_name_from_stat<17u>(int, char (&) [17u])
    */

bool crashlytics::handler::signal::detail::read_thread_name_from_stat<17u>
               (int param_1,char *param_2)

{
  bool bVar1;
  int iVar2;
  char *pcVar3;
  char *pcVar4;
  size_t __n;
  char acStack_38 [28];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  memset(acStack_38,0,0x1a);
  iVar2 = fgets_safe(param_1,acStack_38,0x1a,false);
  bVar1 = false;
  if (iVar2 != 0) {
    pcVar3 = strchr(acStack_38,0x28);
    pcVar3 = pcVar3 + 1;
    pcVar4 = strchr(pcVar3,0x29);
    if (((pcVar3 == (char *)0x0) || (pcVar4 == (char *)0x0)) || (pcVar4 == pcVar3)) {
      bVar1 = false;
    }
    else {
      memset(param_2,0,0x11);
      __n = (int)pcVar4 - (int)pcVar3;
      if (0xf < __n) {
        __n = 0x10;
      }
      memcpy(param_2,pcVar3,__n);
      bVar1 = true;
    }
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return bVar1;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<std::array<char[256],2560u>>::kernel_page_allocator  @ 0x1ba34
/* crashlytics::detail::memory::kernel_page_allocator<std::array<char [256], 2560u>
   >::kernel_page_allocator() */

kernel_page_allocator<std::array<char[256],2560u>> * __thiscall
crashlytics::detail::memory::kernel_page_allocator<std::array<char[256],2560u>>::
kernel_page_allocator(kernel_page_allocator<std::array<char[256],2560u>> *this)

{
  uint uVar1;
  
  *(undefined4 *)this = 0;
  uVar1 = sysconf(0x27);
  *(undefined4 *)(this + 8) = 0;
  *(uint *)(this + 4) = uVar1 & ~((int)uVar1 >> 0x1f);
  return this;
}

// ---- crashlytics::detail::memory::managed_storage<std::array<char[256],2560u>>::managed_storage  @ 0x1ba50
/* crashlytics::detail::memory::managed_storage<std::array<char [256], 2560u> >::managed_storage()
    */

managed_storage<std::array<char[256],2560u>> * __thiscall
crashlytics::detail::memory::managed_storage<std::array<char[256],2560u>>::managed_storage
          (managed_storage<std::array<char[256],2560u>> *this)

{
  int iVar1;
  undefined1 *puVar2;
  undefined1 *__s;
  int local_1c;
  uint local_18;
  uint local_14;
  
  kernel_page_allocator<std::array<char[256],2560u>>::kernel_page_allocator
            ((kernel_page_allocator<std::array<char[256],2560u>> *)&local_1c);
  if ((local_1c == 0) || ((local_18 - 8) - local_14 < 0xa0000)) {
    iVar1 = __udivsi3(local_18 + 0xa0007,local_18);
    puVar2 = mmap((void *)0x0,local_18 * iVar1,3,0x22,-1,0);
    if ((puVar2 != (undefined1 *)0xffffffff) && (puVar2 != (undefined1 *)0x0)) {
      __s = puVar2 + 8;
      *puVar2 = 1;
      goto LAB_0001baa6;
    }
  }
  else {
    __s = (undefined1 *)detail::pack(local_18,&local_14,(uchar **)&local_1c,0xa0000);
    if (__s != (undefined1 *)0x0) goto LAB_0001baa6;
  }
  __s = make_function_scoped_static_byte_array<std::array<char[256],2560u>>()::storage + 8;
  make_function_scoped_static_byte_array<std::array<char[256],2560u>>()::storage[0] = 0;
  make_function_scoped_static_byte_array<std::array<char[256],2560u>>()::call_count =
       make_function_scoped_static_byte_array<std::array<char[256],2560u>>()::call_count + 1;
LAB_0001baa6:
  memset(__s,0,0xa0000);
  *(undefined1 **)this = __s;
  return this;
}

// ---- crashlytics::handler::signal::detail::filesystem::concatenate<7u>  @ 0x1baf4
/* unsigned int crashlytics::handler::signal::detail::filesystem::concatenate<7u>(char*, char const
   (&) [7u], int) */

uint crashlytics::handler::signal::detail::filesystem::concatenate<7u>
               (char *param_1,char *param_2,int param_3)

{
  size_t __n;
  char local_24 [8];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_24[0] = '\0';
  local_24[1] = '\0';
  local_24[2] = '\0';
  local_24[3] = '\0';
  local_24[4] = '\0';
  local_24[5] = '\0';
  local_24[6] = '\0';
  local_24[7] = '\0';
  __n = crashlytics::detail::lexical_cast<int>(param_3,local_24);
  *(undefined4 *)param_1 = *(undefined4 *)param_2;
  *(undefined2 *)(param_1 + 4) = *(undefined2 *)(param_2 + 4);
  memcpy(param_1 + 6,local_24,__n);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return __n + 6;
}

// ---- crashlytics::handler::signal::detail::filesystem::managed_node_file::managed_node_file<7u,6u>  @ 0x1bb44
/* crashlytics::handler::signal::detail::filesystem::managed_node_file::managed_node_file<7u,
   6u>(char const (&) [7u], int, char const (&) [6u]) */

void __thiscall
crashlytics::handler::signal::detail::filesystem::managed_node_file::managed_node_file<7u,6u>
          (managed_node_file *this,char *param_1,int param_2,char *param_3)

{
  uint uVar1;
  int iVar2;
  int *piVar3;
  char acStack_38 [4];
  char acStack_34 [16];
  int local_24;
  
  local_24 = __stack_chk_guard;
  *(undefined4 *)this = 0xffffffff;
  memset(acStack_38,0,0x13);
  uVar1 = concatenate<7u>(acStack_38,param_1,param_2);
  *(undefined4 *)(acStack_38 + uVar1) = *(undefined4 *)param_3;
  acStack_34[uVar1] = param_3[4];
  do {
    iVar2 = open(acStack_38,0);
    if (iVar2 != -1) break;
    piVar3 = (int *)__errno();
  } while (*piVar3 == 4);
  *(int *)this = iVar2;
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(this);
}

// ---- crashlytics::handler::signal::detail::write_maps  @ 0x1bbb8
/* crashlytics::handler::signal::detail::write_maps(crashlytics::detail::scoped_writer&, int) */

void crashlytics::handler::signal::detail::write_maps(scoped_writer *param_1,int param_2)

{
  int iVar1;
  size_t __len;
  undefined4 extraout_r2;
  undefined4 uVar2;
  undefined4 extraout_r2_00;
  int iVar3;
  char *pcVar4;
  char *pcVar5;
  bool bVar6;
  char *local_2c;
  int local_28;
  int local_24;
  
  crashlytics::detail::memory::managed_storage<std::array<char[256],2560u>>::managed_storage
            ((managed_storage<std::array<char[256],2560u>> *)&local_2c);
  pcVar5 = local_2c;
  filesystem::managed_node_file::managed_node_file<7u,6u>
            ((managed_node_file *)&local_28,"/proc/",param_2,"/maps");
  iVar3 = 0;
  bVar6 = local_28 == -1;
  while ((!bVar6 && (iVar1 = fgets_safe(local_28,pcVar5 + iVar3 * 0x100,0x100,true), iVar1 != 0))) {
    iVar3 = iVar3 + 1;
    bVar6 = iVar3 == 0xa00;
  }
  pcVar4 = pcVar5 + iVar3 * 0x100;
  filesystem::managed_node_file::~managed_node_file((managed_node_file *)&local_28);
  crashlytics::detail::scoped_writer::wrapped::wrapped
            ((wrapped *)&local_28,&DAT_0002b9a1,0x5b,0x5d,1,param_1);
  if (pcVar5 != pcVar4) {
    crashlytics::detail::scoped_writer::write(param_1,pcVar5);
    uVar2 = extraout_r2;
    while (pcVar5 = pcVar5 + 0x100, pcVar5 != pcVar4) {
      crashlytics::detail::impl::write(*(impl **)param_1,0x2c,(char)uVar2);
      crashlytics::detail::scoped_writer::write(param_1,pcVar5);
      uVar2 = extraout_r2_00;
    }
  }
  crashlytics::detail::scoped_writer::wrapped::~wrapped((wrapped *)&local_28);
  if (local_2c[-8] == '\x01') {
    crashlytics::detail::memory::kernel_page_allocator<std::array<char[256],2560u>>::
    kernel_page_allocator((kernel_page_allocator<std::array<char[256],2560u>> *)&local_28);
    __len = __udivsi3(local_24 + 0xa0007);
    munmap(local_2c + -8,__len);
  }
  return;
}

// ---- crashlytics::handler::signal::detail::thread_name_from_stat<17u>  @ 0x1bc90
/* bool crashlytics::handler::signal::detail::thread_name_from_stat<17u>(int, int, char (&) [17u])
    */

bool crashlytics::handler::signal::detail::thread_name_from_stat<17u>
               (int param_1,int param_2,char *param_3)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  int local_40;
  char acStack_3c [4];
  char acStack_38 [28];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  local_40 = 0xffffffff;
  memset(acStack_3c,0,0x20);
  uVar2 = filesystem::concatenate<7u>(acStack_3c,"/proc/",param_1);
  uVar3 = filesystem::concatenate<7u>(acStack_3c + uVar2,"/task/",param_2);
  builtin_strncpy(acStack_3c + uVar3 + uVar2,"/sta",4);
  acStack_38[uVar3 + uVar2] = 't';
  do {
    iVar4 = open(acStack_3c,0);
    if (iVar4 != -1) break;
    piVar5 = (int *)__errno();
  } while (*piVar5 == 4);
  local_40 = iVar4;
  if (iVar4 == -1) {
    bVar1 = false;
  }
  else {
    bVar1 = read_thread_name_from_stat<17u>(iVar4,param_3);
  }
  filesystem::managed_node_file::~managed_node_file((managed_node_file *)&local_40);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return bVar1;
}

// ---- crashlytics::handler::signal::detail::write_thread_info  @ 0x1be9c
/* WARNING: Restarted to delay deadcode elimination for space: stack */
/* crashlytics::handler::signal::detail::write_thread_info(crashlytics::detail::scoped_writer&, int,
   crashlytics::unwinder::unwinder_base<48u>*, siginfo*, void*) */

void crashlytics::handler::signal::detail::write_thread_info
               (scoped_writer *param_1,int param_2,unwinder_base *param_3,siginfo *param_4,
               void *param_5)

{
  uint uVar1;
  DIR *__dirp;
  int iVar2;
  size_t sVar3;
  long lVar4;
  undefined4 uVar5;
  char extraout_r2;
  undefined4 *puVar6;
  undefined4 *puVar7;
  void *local_1a0;
  siginfo *local_19c;
  unwinder_base *local_198;
  int local_194 [2];
  undefined4 *local_18c;
  int local_188;
  int local_184;
  undefined4 local_180;
  int local_17c;
  int local_178;
  dirent *local_174;
  int local_170;
  int *local_164;
  unwinder_base **ppuStack_160;
  int *local_15c;
  siginfo **local_158;
  void **local_154;
  undefined4 *local_150;
  int *local_14c;
  dirent dStack_148;
  int local_2c;
  
  local_1a0 = param_5;
  local_2c = __stack_chk_guard;
  local_19c = param_4;
  local_198 = param_3;
  local_194[0] = param_2;
  crashlytics::detail::memory::managed_storage<std::array<int,1024u>>::managed_storage
            ((managed_storage<std::array<int,1024u>> *)&local_18c);
  crashlytics::detail::memory::
  managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::managed_storage
            ((managed_storage<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>> *)
             &local_188);
  crashlytics::detail::memory::managed_storage<crashlytics::handler::signal::detail::thread_name_t>
  ::managed_storage((managed_storage<crashlytics::handler::signal::detail::thread_name_t> *)
                    &local_184);
  local_180 = (**(code **)(*(int *)local_198 + 0x14))(local_198,local_194[0]);
  puVar7 = local_18c;
  iVar2 = local_194[0];
  local_17c = local_188;
  local_178 = local_184;
  memset(&dStack_148,0,0x13);
  uVar1 = filesystem::concatenate<7u>((char *)&dStack_148,"/proc/",iVar2);
  builtin_strncpy(dStack_148.d_name + uVar1 + -0xb,"/task",5);
  __dirp = opendir((char *)&dStack_148);
  if (__dirp == (DIR *)0x0) {
    uVar1 = 0;
  }
  else {
    uVar1 = 0;
    local_174 = &dStack_148;
    while (((iVar2 = readdir_r(__dirp,&dStack_148,&local_174), iVar2 == 0 &&
            (local_174 != (dirent *)0x0)) && (uVar1 < 0x400))) {
      lVar4 = strtol(dStack_148.d_name + 8,(char **)&local_164,10);
      puVar7[uVar1] = lVar4;
      if (lVar4 != 0) {
        uVar1 = uVar1 + 1;
      }
    }
    closedir(__dirp);
  }
  local_15c = &local_17c;
  local_158 = &local_19c;
  puVar6 = puVar7 + uVar1;
  local_150 = &local_180;
  local_14c = &local_178;
  local_164 = local_194;
  ppuStack_160 = &local_198;
  local_154 = &local_1a0;
  crashlytics::detail::scoped_writer::wrapped::wrapped
            ((wrapped *)&local_174,"threads",0x5b,0x5d,0,param_1);
  if (puVar7 != puVar6) {
    uVar5 = *puVar7;
    while( true ) {
      puVar7 = puVar7 + 1;
      FUN_0001bd38(&local_164,uVar5,param_1);
      if (puVar7 == puVar6) break;
      crashlytics::detail::impl::write(*(impl **)param_1,0x2c,extraout_r2);
      uVar5 = *puVar7;
    }
  }
  crashlytics::detail::scoped_writer::wrapped::~wrapped((wrapped *)&local_174);
  if (*(char *)(local_184 + -8) == '\x01') {
    crashlytics::detail::memory::
    kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t>::
    kernel_page_allocator
              ((kernel_page_allocator<crashlytics::handler::signal::detail::thread_name_t> *)
               &local_174);
    sVar3 = __udivsi3(local_170 + 0x18);
    munmap((void *)(local_184 + -8),sVar3);
  }
  if (*(char *)(local_188 + -8) == '\x01') {
    crashlytics::detail::memory::
    kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>::
    kernel_page_allocator
              ((kernel_page_allocator<std::array<crashlytics::unwinder::unwinder_base<48u>::frame,48u>>
                *)&local_174);
    sVar3 = __udivsi3(local_170 + 0x187);
    munmap((void *)(local_188 + -8),sVar3);
  }
  if (*(char *)(local_18c + -2) == '\x01') {
    crashlytics::detail::memory::kernel_page_allocator<std::array<int,1024u>>::kernel_page_allocator
              ((kernel_page_allocator<std::array<int,1024u>> *)&local_174);
    sVar3 = __udivsi3(local_170 + 0x1007);
    munmap(local_18c + -2,sVar3);
  }
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- crashlytics::handler::signal::detail::install_handlers  @ 0x1c08c
/* crashlytics::handler::signal::detail::install_handlers(std::array<std::pair<int, sigaction>,
   7u>*, sigaction const&) */

void crashlytics::handler::signal::detail::install_handlers(array *param_1,sigaction *param_2)

{
  array *paVar1;
  int iVar2;
  _union_1051 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  paVar1 = param_1;
  while (param_1 + 0x8c != paVar1) {
    iVar2 = sigaction(*(int *)paVar1,param_2,(sigaction *)&local_30);
    if (iVar2 == -1) {
      __android_log_print(6,"libcrashlytics","Failed to install signal handler for signal %d",
                          *(undefined4 *)paVar1);
      paVar1 = paVar1 + 0x14;
    }
    else {
      *(undefined4 *)(paVar1 + 0x10) = uStack_24;
      *(undefined4 *)(paVar1 + 0xc) = uStack_28;
      *(undefined4 *)(paVar1 + 8) = uStack_2c;
      *(_union_1051 *)(paVar1 + 4) = local_30;
      paVar1 = paVar1 + 0x14;
    }
  }
  return;
}

// ---- crashlytics::handler::signal::detail::restore_handlers  @ 0x1c0ec
/* crashlytics::handler::signal::detail::restore_handlers(std::array<std::pair<int, sigaction>, 7u>
   const*) */

void crashlytics::handler::signal::detail::restore_handlers(array *param_1)

{
  array *paVar1;
  _union_1051 _Stack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  paVar1 = param_1;
  while (param_1 + 0x8c != paVar1) {
    _Stack_28 = *(_union_1051 *)(paVar1 + 4);
    uStack_24 = *(undefined4 *)(paVar1 + 8);
    uStack_20 = *(undefined4 *)(paVar1 + 0xc);
    uStack_1c = *(undefined4 *)(paVar1 + 0x10);
    sigaction(*(int *)paVar1,(sigaction *)&_Stack_28,(sigaction *)0x0);
    paVar1 = paVar1 + 0x14;
  }
  return;
}

// ---- crashlytics::handler::signal::detail::mask_fatals  @ 0x1c124
/* crashlytics::handler::signal::detail::mask_fatals(std::array<std::pair<int, sigaction>, 7u>
   const*, unsigned long*) */

void crashlytics::handler::signal::detail::mask_fatals(array *param_1,ulong *param_2)

{
  uint uVar1;
  uint uVar2;
  array *paVar3;
  
  paVar3 = param_1 + 0x8c;
  for (; param_1 != paVar3; param_1 = param_1 + 0x14) {
    uVar1 = *(int *)param_1 - 1;
    uVar2 = uVar1;
    if ((int)uVar1 < 0) {
      uVar2 = *(int *)param_1 + 0x1e;
    }
    uVar1 = uVar1 & 0x8000001f;
    if ((int)uVar1 < 0) {
      uVar1 = (uVar1 - 1 | 0xffffffe0) + 1;
    }
    param_2[(int)uVar2 >> 5] = param_2[(int)uVar2 >> 5] | 1 << (uVar1 & 0xff);
  }
  return;
}

// ---- crashlytics::handler::signal::handler  @ 0x1c168
/* crashlytics::handler::signal::handler(crashlytics::unwinder::unwinder_base<48u>*, int,
   crashlytics::handler::detail::context, int, siginfo*, void*, int) */

void crashlytics::handler::signal::handler
               (unwinder_base *param_1,int param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_7,siginfo *param_8,void *param_9,
               int param_10)

{
  __pid_t _Var1;
  scoped_writer *extraout_r1;
  undefined4 uVar2;
  undefined4 uStack_1c;
  
  uVar2 = param_3;
  uStack_1c = param_4;
  crashlytics::detail::scoped_writer::scoped_writer((scoped_writer *)&uStack_1c,param_2);
  detail::write_version((scoped_writer *)&uStack_1c);
  detail::write_time((detail *)&uStack_1c,extraout_r1);
  detail::write_device_info
            ((scoped_writer *)&uStack_1c,param_3,param_4,param_5,param_6,param_2,uVar2);
  detail::write_unwind_impl((scoped_writer *)&uStack_1c,param_1);
  detail::write_thread_info((scoped_writer *)&uStack_1c,param_10,param_1,param_8,param_9);
  detail::write_signal_info((scoped_writer *)&uStack_1c,param_7,param_8);
  detail::write_cpu_features((scoped_writer *)&uStack_1c);
  _Var1 = getpid();
  detail::write_maps((scoped_writer *)&uStack_1c,_Var1);
  crashlytics::detail::scoped_writer::~scoped_writer((scoped_writer *)&uStack_1c);
  return;
}

// ---- crashlytics::handler::signal::detail::ptrace::wait_for_pid  @ 0x1c1de
/* crashlytics::handler::signal::detail::ptrace::wait_for_pid(int) */

undefined1 crashlytics::handler::signal::detail::ptrace::wait_for_pid(int param_1)

{
  __pid_t _Var1;
  undefined1 uVar2;
  int aiStack_c [2];
  
  _Var1 = waitpid(param_1,aiStack_c,1);
  if (_Var1 == -1) {
    uVar2 = 2;
  }
  else {
    uVar2 = _Var1 != 0;
  }
  return uVar2;
}

// ---- crashlytics::handler::signal::detail::ptrace::timed_wait_for_pid  @ 0x1c1fc
/* crashlytics::handler::signal::detail::ptrace::timed_wait_for_pid(int, std::chrono::duration<long
   long, std::ratio<1ll, 1ll> > const&, unsigned int) */

void crashlytics::handler::signal::detail::ptrace::timed_wait_for_pid
               (int param_1,duration *param_2,uint param_3)

{
  int iVar1;
  
  for (; (iVar1 = wait_for_pid(param_1), iVar1 == 0 && (param_3 != 0)); param_3 = param_3 - 1) {
    sleep(*(uint *)param_2);
  }
  return;
}

// ---- crashlytics::handler::signal::detail::ptrace::attach_and_wait_for  @ 0x1c21a
/* crashlytics::handler::signal::detail::ptrace::attach_and_wait_for(int) */

void __thiscall
crashlytics::handler::signal::detail::ptrace::attach_and_wait_for(ptrace *this,int param_1)

{
  long lVar1;
  ptrace *local_10;
  int iStack_c;
  
  local_10 = this;
  iStack_c = param_1;
  lVar1 = ::ptrace(PTRACE_ATTACH,this,0,0);
  if (lVar1 != -1) {
    local_10 = (ptrace *)0x1;
    iStack_c = 0;
    timed_wait_for_pid((int)this,(duration *)&local_10,5);
  }
  return;
}

// ---- crashlytics::handler::signal::detail::ptrace::detach_and_wake  @ 0x1c246
/* crashlytics::handler::signal::detail::ptrace::detach_and_wake(int) */

void crashlytics::handler::signal::detail::ptrace::detach_and_wake(int param_1)

{
  long lVar1;
  
  lVar1 = ::ptrace(PTRACE_DETACH,param_1,0,0);
  if (lVar1 == -1) {
    return;
  }
  kill(param_1,0x12);
  return;
}

// ---- crashlytics::handler::signal::detail::ptrace::enable_and_wait  @ 0x1c268
/* crashlytics::handler::signal::detail::ptrace::enable_and_wait() */

void crashlytics::handler::signal::detail::ptrace::enable_and_wait(void)

{
  undefined4 local_10;
  undefined4 uStack_c;
  
  prctl(4,1);
  local_10 = 1;
  uStack_c = 0;
  timed_wait_for_pid(-1,(duration *)&local_10,5);
  return;
}

// ---- crashlytics::handler::signal::requeue_async_signal  @ 0x1c28e
/* crashlytics::handler::signal::requeue_async_signal(int, siginfo*) */

void crashlytics::handler::signal::requeue_async_signal(int param_1,siginfo *param_2)

{
  __pid_t __pid;
  
  if (((param_2->_sifields)._pad[0] != 0) && (param_1 != 8)) {
    __pid = getpid();
    kill(__pid,param_1);
    return;
  }
  return;
}

// ---- crashlytics::handler::signal::handler_forked  @ 0x1c2aa
/* crashlytics::handler::signal::handler_forked(crashlytics::unwinder::unwinder_base<48u>*, int,
   crashlytics::handler::detail::context, int, siginfo*, void*, int) */

void crashlytics::handler::signal::handler_forked
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_7,siginfo *param_8,undefined4 param_9
               ,ptrace *param_10)

{
  __pid_t _Var1;
  int extraout_r1;
  
  _Var1 = fork();
  if (_Var1 == -1) {
    return;
  }
  if (_Var1 == 0) {
    detail::ptrace::attach_and_wait_for(param_10,extraout_r1);
    handler(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,param_9,param_10);
    detail::ptrace::detach_and_wake((int)param_10);
                    /* WARNING: Subroutine does not return */
    _exit(0);
  }
  detail::ptrace::enable_and_wait();
  requeue_async_signal(param_7,param_8);
  return;
}

// ---- crashlytics::handler::signal::handler  @ 0x1c324
/* crashlytics::handler::signal::handler(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*) */

void crashlytics::handler::signal::handler
               (undefined4 param_1,char *param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  int iVar1;
  __pid_t _Var2;
  
  iVar1 = crashlytics::detail::open(param_2);
  if (iVar1 != -1) {
    _Var2 = getpid();
    handler_forked(param_1,iVar1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,_Var2);
  }
  return;
}

// ---- crashlytics::detail::memory::allocate_storage<std::array<std::pair<int,sigaction>,7u>>  @ 0x1c370
/* WARNING: Removing unreachable block (ram,0x0001c3c2) */
/* std::array<std::pair<int, sigaction>, 7u>*
   crashlytics::detail::memory::allocate_storage<std::array<std::pair<int, sigaction>, 7u>
   >(std::array<std::pair<int, sigaction>, 7u>&&) */

array * crashlytics::detail::memory::allocate_storage<std::array<std::pair<int,sigaction>,7u>>
                  (array *param_1)

{
  uint uVar1;
  undefined1 *__dest;
  int iVar2;
  undefined1 *puVar3;
  array *paVar4;
  uint extraout_r1;
  uchar *local_24;
  uint local_20;
  uint local_1c [2];
  
  local_24 = (uchar *)0x0;
  uVar1 = sysconf(0x27);
  local_1c[0] = 0;
  uVar1 = uVar1 & ~((int)uVar1 >> 0x1f);
  local_20 = uVar1;
  if ((local_24 == (uchar *)0x0) || (uVar1 - 8 < 0x8c)) {
    iVar2 = __udivsi3(uVar1 + 0x93,uVar1);
    puVar3 = mmap((void *)0x0,uVar1 * iVar2,3,0x22,-1,0);
    uVar1 = local_20;
    if ((puVar3 != (undefined1 *)0xffffffff) && (puVar3 != (undefined1 *)0x0)) {
      iVar2 = local_20 * iVar2;
      __aeabi_uidivmod((local_20 + 0x94) - iVar2,local_20);
      if (extraout_r1 == 0) {
        local_24 = (uchar *)0x0;
      }
      else {
        local_24 = puVar3 + (iVar2 - uVar1);
      }
      __dest = puVar3 + 8;
      *puVar3 = 1;
      local_1c[0] = extraout_r1;
      goto LAB_0001c412;
    }
  }
  else {
    __dest = (undefined1 *)detail::pack(uVar1,local_1c,&local_24,0x8c);
    if (__dest != (undefined1 *)0x0) goto LAB_0001c412;
  }
  make_function_scoped_static_byte_array<std::array<std::pair<int,sigaction>,7u>>()::call_count =
       make_function_scoped_static_byte_array<std::array<std::pair<int,sigaction>,7u>>()::call_count
       + 1;
  __dest = make_function_scoped_static_byte_array<std::array<std::pair<int,sigaction>,7u>>()::
           storage + 8;
  make_function_scoped_static_byte_array<std::array<std::pair<int,sigaction>,7u>>()::storage[0] = 0;
LAB_0001c412:
  paVar4 = memcpy(__dest,param_1,0x8c);
  return paVar4;
}

// ---- crashlytics::detail::memory::allocate_storage<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>  @ 0x1c434
/* crashlytics::handler::handler_invocation_wrapper<std::_Bind<void (*(std::array<std::pair<int,
   sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u> const*)>, std::_Bind<void
   (*(crashlytics::unwinder::unwinder_base<48u>*, crashlytics::handler::detail::context,
   std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>, void (int, siginfo*, void*)>*
   crashlytics::detail::memory::allocate_storage<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void
   (*(std::array<std::pair<int, sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u>
   const*)>, std::_Bind<void (*(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>, void (int, siginfo*, void*)> >()
    */

handler_invocation_wrapper *
crashlytics::detail::memory::
allocate_storage<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>
          (void)

{
  uint uVar1;
  handler_invocation_wrapper *phVar2;
  int iVar3;
  undefined1 *puVar4;
  uchar *local_1c;
  uint local_18;
  uint local_14 [2];
  
  local_1c = (uchar *)0x0;
  uVar1 = sysconf(0x27);
  local_14[0] = 0;
  uVar1 = uVar1 & ~((int)uVar1 >> 0x1f);
  local_18 = uVar1;
  if ((local_1c == (uchar *)0x0) || (uVar1 - 8 < 0xc)) {
    iVar3 = __udivsi3(uVar1 + 0x13,uVar1);
    puVar4 = mmap((void *)0x0,uVar1 * iVar3,3,0x22,-1,0);
    if ((puVar4 != (undefined1 *)0xffffffff) && (puVar4 != (undefined1 *)0x0)) {
      phVar2 = (handler_invocation_wrapper *)(puVar4 + 8);
      *puVar4 = 1;
      goto LAB_0001c4e8;
    }
  }
  else {
    phVar2 = (handler_invocation_wrapper *)detail::pack(uVar1,local_14,&local_1c,0xc);
    if (phVar2 != (handler_invocation_wrapper *)0x0) {
LAB_0001c4e8:
      *(undefined4 *)(phVar2 + 8) = 0;
      *(undefined4 *)phVar2 = 0;
      *(undefined4 *)(phVar2 + 4) = 0;
      *(undefined4 *)(phVar2 + 8) = 0;
      return phVar2;
    }
  }
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::call_count = make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
                 ::call_count + 1;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0x13] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0x12] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0x11] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0x10] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0xf] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0xe] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0xd] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0xc] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0xb] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[10] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[9] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[8] = 0;
  make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
  ::storage[0] = 0;
  return (handler_invocation_wrapper *)
         (make_function_scoped_static_byte_array<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>()
          ::storage + 8);
}

// ---- crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>::instance<crashlytics::handler::signal::tag>  @ 0x1c500
/* crashlytics::handler::handler_invocation_wrapper<std::_Bind<void (*(std::array<std::pair<int,
   sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u> const*)>, std::_Bind<void
   (*(crashlytics::unwinder::unwinder_base<48u>*, crashlytics::handler::detail::context,
   std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>, void (int, siginfo*, void*)>&
   crashlytics::handler::handler_invocation_wrapper<std::_Bind<void (*(std::array<std::pair<int,
   sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u> const*)>, std::_Bind<void
   (*(crashlytics::unwinder::unwinder_base<48u>*, crashlytics::handler::detail::context,
   std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>, void (int, siginfo*,
   void*)>::instance<crashlytics::handler::signal::tag>() */

handler_invocation_wrapper *
crashlytics::handler::
handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>
::instance<crashlytics::handler::signal::tag>(void)

{
  DataMemoryBarrier(0x1f);
  DataMemoryBarrier(0x1f);
  if (detail::instance == (handler_invocation_wrapper *)0x0) {
    detail::instance =
         crashlytics::detail::memory::
         allocate_storage<crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>>
                   ();
    DataMemoryBarrier(0x1f);
    DataMemoryBarrier(0x1f);
  }
  DataMemoryBarrier(0x1f);
  DataMemoryBarrier(0x1f);
  return detail::instance;
}

// ---- crashlytics::handler::install_signal_handler  @ 0x1c708
/* crashlytics::handler::install_signal_handler(crashlytics::handler::detail::context,
   crashlytics::unwinder::unwinder_base<48u>*) */

undefined4
crashlytics::handler::install_signal_handler
          (int param_1,_func_4849 *param_2,void *param_3,undefined4 param_4,undefined4 param_5)

{
  array *paVar1;
  undefined1 local_134 [132];
  ulong local_b0;
  _func_4849 *p_Stack_ac;
  void *pvStack_a8;
  ulong uStack_a4;
  undefined4 local_a0;
  ulong local_9c;
  ulong uStack_98;
  ulong uStack_94;
  ulong uStack_90;
  undefined4 local_8c;
  ulong local_88;
  ulong uStack_84;
  ulong uStack_80;
  ulong uStack_7c;
  undefined4 local_78;
  ulong local_74;
  ulong uStack_70;
  ulong uStack_6c;
  ulong uStack_68;
  undefined4 local_64;
  ulong local_60;
  ulong uStack_5c;
  ulong uStack_58;
  ulong uStack_54;
  undefined4 local_50;
  ulong local_4c;
  ulong uStack_48;
  ulong uStack_44;
  ulong uStack_40;
  undefined4 local_3c;
  ulong uStack_38;
  ulong uStack_34;
  ulong uStack_30;
  ulong uStack_2c;
  
  memset((sigaction *)local_134,0,0x10);
  __android_log_print(3,"libcrashlytics","Attempting to register signal handler...");
  memset(local_134 + 0x10,0,0x10);
  local_134._128_4_ = 6;
  local_b0 = local_134._16_4_;
  p_Stack_ac = (_func_4849 *)local_134._20_4_;
  pvStack_a8 = (void *)local_134._24_4_;
  uStack_a4 = local_134._28_4_;
  memset(local_134 + 0x20,0,0x10);
  local_a0 = 7;
  local_9c = local_134._32_4_;
  uStack_98 = local_134._36_4_;
  uStack_94 = local_134._40_4_;
  uStack_90 = local_134._44_4_;
  memset(local_134 + 0x30,0,0x10);
  local_8c = 8;
  local_88 = local_134._48_4_;
  uStack_84 = local_134._52_4_;
  uStack_80 = local_134._56_4_;
  uStack_7c = local_134._60_4_;
  memset(local_134 + 0x40,0,0x10);
  local_78 = 4;
  local_74 = local_134._64_4_;
  uStack_70 = local_134._68_4_;
  uStack_6c = local_134._72_4_;
  uStack_68 = local_134._76_4_;
  memset(local_134 + 0x50,0,0x10);
  local_64 = 0xb;
  local_60 = local_134._80_4_;
  uStack_5c = local_134._84_4_;
  uStack_58 = local_134._88_4_;
  uStack_54 = local_134._92_4_;
  memset(local_134 + 0x60,0,0x10);
  local_50 = 0x1f;
  local_4c = local_134._96_4_;
  uStack_48 = local_134._100_4_;
  uStack_44 = local_134._104_4_;
  uStack_40 = local_134._108_4_;
  memset(local_134 + 0x70,0,0x10);
  local_3c = 5;
  uStack_2c = local_134._124_4_;
  uStack_30 = local_134._120_4_;
  uStack_34 = local_134._116_4_;
  uStack_38 = local_134._112_4_;
  paVar1 = crashlytics::detail::memory::allocate_storage<std::array<std::pair<int,sigaction>,7u>>
                     ((array *)(local_134 + 0x80));
  local_134._8_4_ = 4;
  local_134._112_4_ = (code *)0x1c0ed;
  local_134._128_4_ = (code *)0x1c325;
  local_a0 = param_5;
  local_134._116_4_ = paVar1;
  local_b0 = param_1;
  p_Stack_ac = param_2;
  pvStack_a8 = param_3;
  uStack_a4 = param_4;
  __crashlytics__handler__handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>__bind<crashlytics::handler::signal::tag>_std___Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>___std___Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>____
            ((int)(local_134 + 0x70),(siginfo *)(local_134 + 0x80),param_3);
  signal::detail::mask_fatals(paVar1,(ulong *)(local_134 + 4));
  signal::detail::install_handlers(paVar1,(sigaction *)local_134);
  __android_log_print(3,"libcrashlytics","Signal handler registered.");
  return 1;
}

// ---- crashlytics::handler::install_handlers  @ 0x1c860
/* crashlytics::handler::install_handlers(crashlytics::handler::detail::context) */

undefined4
crashlytics::handler::install_handlers
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 uVar2;
  
  __android_log_print(3,"libcrashlytics","Initializing libcrashlytics version %s","1.1.2");
  __android_log_print(3,"libcrashlytics","Attempting to load unwinder...");
  piVar1 = (int *)unwinder::load();
  if (piVar1 == (int *)0x0) {
    __android_log_print(3,"libcrashlytics","Failed!");
    uVar2 = 0;
  }
  else {
    uVar2 = (**(code **)(*piVar1 + 0xc))();
    __android_log_print(3,"libcrashlytics","Done; using %s",uVar2);
    uVar2 = install_signal_handler(param_1,param_2,param_3,param_4,piVar1);
  }
  return uVar2;
}

// ---- crashlytics::handler::handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>::invoke<crashlytics::handler::signal::tag>  @ 0x1c8dc
/* void crashlytics::handler::handler_invocation_wrapper<std::_Bind<void
   (*(std::array<std::pair<int, sigaction>, 7u>*))(std::array<std::pair<int, sigaction>, 7u>
   const*)>, std::_Bind<void (*(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, std::_Placeholder<1>, std::_Placeholder<2>,
   std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,
   crashlytics::handler::detail::context, int, siginfo*, void*)>, void (int, siginfo*,
   void*)>::invoke<crashlytics::handler::signal::tag>(int, siginfo*, void*) */

void crashlytics::handler::
     handler_invocation_wrapper<std::_Bind<void(*(std::array<std::pair<int,sigaction>,7u>*))(std::array<std::pair<int,sigaction>,7u>const*)>,std::_Bind<void(*(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,std::_Placeholder<1>,std::_Placeholder<2>,std::_Placeholder<3>))(crashlytics::unwinder::unwinder_base<48u>*,crashlytics::handler::detail::context,int,siginfo*,void*)>,void(int,siginfo*,void*)>
     ::invoke<crashlytics::handler::signal::tag>(int param_1,siginfo *param_2,void *param_3)

{
  handler_invocation_wrapper *phVar1;
  sigaction *__act;
  int iVar2;
  handler_invocation_wrapper *phVar3;
  uint uVar4;
  uint uVar5;
  undefined4 *puVar6;
  _union_1051 local_30;
  uint local_2c [4];
  
  phVar1 = instance<crashlytics::handler::signal::tag>();
  __act = (sigaction *)pthread_mutex_lock((pthread_mutex_t *)(phVar1 + 8));
  if (__act != (sigaction *)0x0) {
    FUN_0001e410();
  }
  memset(&local_30,(int)__act,0x10);
  iVar2 = sigaction(param_1,__act,(sigaction *)&local_30);
  if ((iVar2 == 0) && ((local_2c[1] & 4) == 0)) {
    phVar3 = instance<crashlytics::handler::signal::tag>();
    uVar4 = param_1 - 1;
    uVar5 = uVar4 & 0x8000001f;
    puVar6 = *(undefined4 **)phVar3;
    if ((int)uVar4 < 0) {
      uVar4 = param_1 + 0x1e;
    }
    local_2c[0] = local_2c[1] & 4;
    if ((int)uVar5 < 0) {
      uVar5 = (uVar5 - 1 | 0xffffffe0) + 1;
    }
    local_2c[(int)uVar4 >> 5] = local_2c[(int)uVar4 >> 5] | 1 << (uVar5 & 0xff);
    local_2c[1] = 4;
    local_30.sa_handler = (__sighandler_t)(undefined *)0x1c8dd;
    iVar2 = sigaction(param_1,(sigaction *)&local_30,(sigaction *)0x0);
    if ((iVar2 == -1) && (puVar6 != (undefined4 *)0x0)) {
      (*(code *)*puVar6)(puVar6[1]);
    }
  }
  else {
    phVar3 = instance<crashlytics::handler::signal::tag>();
    puVar6 = *(undefined4 **)phVar3;
    if (puVar6 != (undefined4 *)0x0) {
      (*(code *)*puVar6)(puVar6[1]);
    }
    phVar3 = instance<crashlytics::handler::signal::tag>();
    puVar6 = *(undefined4 **)(phVar3 + 4);
    if (puVar6 != (undefined4 *)0x0) {
      (*(code *)*puVar6)(puVar6[5],puVar6[1],puVar6[2],puVar6[3],puVar6[4],param_1,param_2,param_3);
    }
  }
  pthread_mutex_unlock((pthread_mutex_t *)(phVar1 + 8));
  return;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::id_impl  @ 0x1c9c4
/* crashlytics::unwinder::impl::libcorkscrew::id_impl() */

char * crashlytics::unwinder::impl::libcorkscrew::id_impl(void)

{
  return "libcorkscrew";
}

// ---- crashlytics::unwinder::impl::libcorkscrew::ptrace_context_impl  @ 0x1c9d0
/* crashlytics::unwinder::impl::libcorkscrew::ptrace_context_impl(int) */

void __thiscall
crashlytics::unwinder::impl::libcorkscrew::ptrace_context_impl(libcorkscrew *this,int param_1)

{
  (**(code **)(this + 0x10))(param_1);
  return;
}

// ---- crashlytics::unwinder::unwinder_base<48u>::~unwinder_base  @ 0x1c9dc
/* crashlytics::unwinder::unwinder_base<48u>::~unwinder_base() */

void __thiscall crashlytics::unwinder::unwinder_base<48u>::~unwinder_base(unwinder_base<48u> *this)

{
  *(undefined ***)this = &PTR__unwinder_base_1_0002e668;
  return;
}

// ---- crashlytics::unwinder::unwinder_base<48u>::unwind_impl  @ 0x1c9ec
/* crashlytics::unwinder::unwinder_base<48u>::unwind_impl(int, int,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, void*) */

undefined4
crashlytics::unwinder::unwinder_base<48u>::unwind_impl
          (int param_1,int param_2,array *param_3,void *param_4)

{
  return 0xffffffff;
}

// ---- crashlytics::unwinder::unwinder_base<48u>::ptrace_context_impl  @ 0x1c9f2
/* crashlytics::unwinder::unwinder_base<48u>::ptrace_context_impl(int) */

undefined4 crashlytics::unwinder::unwinder_base<48u>::ptrace_context_impl(int param_1)

{
  return 0;
}

// ---- crashlytics::unwinder::unwinder_base<48u>::~unwinder_base  @ 0x1c9f8
/* crashlytics::unwinder::unwinder_base<48u>::~unwinder_base() */

unwinder_base<48u> * __thiscall
crashlytics::unwinder::unwinder_base<48u>::~unwinder_base(unwinder_base<48u> *this)

{
  *(undefined ***)this = &PTR__unwinder_base_1_0002e668;
  operator_delete(this);
  return this;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::populate_frames  @ 0x1ca14
/* crashlytics::unwinder::impl::libcorkscrew::populate_frames(crashlytics::unwinder::impl::libcorkscrew::backtrace_frame*,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, int) */

int __thiscall
crashlytics::unwinder::impl::libcorkscrew::populate_frames
          (libcorkscrew *this,backtrace_frame *param_1,array *param_2,int param_3)

{
  array *paVar1;
  int iVar2;
  
  if (param_3 != -1) {
    paVar1 = param_2 + -8;
    for (iVar2 = 0; iVar2 < param_3; iVar2 = iVar2 + 1) {
      *(undefined4 *)(paVar1 + 8) = *(undefined4 *)(param_1 + iVar2 * 0xc);
      *(undefined4 *)(paVar1 + 0xc) = 0;
      paVar1 = paVar1 + 8;
    }
  }
  return param_3;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::unwind_impl  @ 0x1ca38
/* crashlytics::unwinder::impl::libcorkscrew::unwind_impl(int, int,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, siginfo*, void*) */

void __thiscall
crashlytics::unwinder::impl::libcorkscrew::unwind_impl
          (libcorkscrew *this,int param_1,int param_2,array *param_3,siginfo *param_4,void *param_5)

{
  undefined4 uVar1;
  int iVar2;
  backtrace_frame *pbVar3;
  
  if (*(int *)(this + 0x18) == 0) {
    uVar1 = (**(code **)(this + 8))();
    *(undefined4 *)(this + 0x18) = uVar1;
  }
  pbVar3 = *(backtrace_frame **)(this + 0x1c);
  iVar2 = (**(code **)(this + 4))(param_4,param_5,*(undefined4 *)(this + 0x18),pbVar3,0,0x30);
  populate_frames(this,pbVar3,param_3,iVar2);
  return;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::unwind_impl  @ 0x1ca78
/* crashlytics::unwinder::impl::libcorkscrew::unwind_impl(int, int,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, void*) */

undefined4 __thiscall
crashlytics::unwinder::impl::libcorkscrew::unwind_impl
          (libcorkscrew *this,int param_1,int param_2,array *param_3,void *param_4)

{
  long lVar1;
  int iVar2;
  backtrace_frame *pbVar3;
  undefined4 uVar4;
  
  if ((param_4 != (void *)0x0) &&
     (lVar1 = ptrace(PTRACE_ATTACH,param_2,0,0,this,param_1), lVar1 != -1)) {
    pbVar3 = *(backtrace_frame **)(this + 0x1c);
    uVar4 = 0x30;
    iVar2 = (**(code **)(this + 0x14))(param_2,param_4,pbVar3,0,0x30);
    lVar1 = ptrace(PTRACE_DETACH,param_2,0,0,uVar4,param_1);
    if ((lVar1 != -1) && (iVar2 != -1)) {
      uVar4 = populate_frames(this,pbVar3,param_3,iVar2);
      return uVar4;
    }
  }
  return 0xffffffff;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::kernel_page_allocator  @ 0x1cada
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::kernel_page_allocator()
    */

kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames> * __thiscall
crashlytics::detail::memory::
kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::
kernel_page_allocator
          (kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames> *this)

{
  uint uVar1;
  
  *(undefined4 *)this = 0;
  uVar1 = sysconf(0x27);
  *(undefined4 *)(this + 8) = 0;
  *(uint *)(this + 4) = uVar1 & ~((int)uVar1 >> 0x1f);
  return this;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::~libcorkscrew  @ 0x1caf4
/* crashlytics::unwinder::impl::libcorkscrew::~libcorkscrew() */

libcorkscrew * __thiscall
crashlytics::unwinder::impl::libcorkscrew::~libcorkscrew(libcorkscrew *this)

{
  size_t __len;
  int iVar1;
  kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames> akStack_1c [4];
  int local_18;
  
  *(undefined ***)this = &PTR__libcorkscrew_1_0002e698;
  if (*(int *)(this + 0x18) != 0) {
    (**(code **)(this + 0xc))();
  }
  iVar1 = *(int *)(this + 0x1c);
  if (*(char *)(iVar1 + -8) == '\x01') {
    detail::memory::
    kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::
    kernel_page_allocator(akStack_1c);
    __len = __udivsi3(local_18 + 0x247);
    munmap((void *)(iVar1 + -8),__len);
  }
  *(undefined ***)this = &PTR__unwinder_base_1_0002e668;
  return this;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::~libcorkscrew  @ 0x1cb48
/* crashlytics::unwinder::impl::libcorkscrew::~libcorkscrew() */

libcorkscrew * __thiscall
crashlytics::unwinder::impl::libcorkscrew::~libcorkscrew(libcorkscrew *this)

{
  ~libcorkscrew(this);
  operator_delete(this);
  return this;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::allocate_pages_for_size  @ 0x1cb5a
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::allocate_pages_for_size(unsigned
   int) */

undefined1 * __thiscall
crashlytics::detail::memory::
kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::
allocate_pages_for_size
          (kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames> *this,
          uint param_1)

{
  undefined1 *puVar1;
  int extraout_r1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar3 = *(int *)this;
  iVar5 = *(int *)(this + 4);
  iVar4 = *(int *)(this + 8);
  if ((iVar3 == 0) || ((uint)((iVar5 + -8) - iVar4) < param_1)) {
    iVar3 = __udivsi3(iVar5 + 7 + param_1,iVar5,iVar3,iVar4,this,param_1);
    puVar1 = mmap((void *)0x0,iVar5 * iVar3,3,0x22,-1,0);
    if (puVar1 == (undefined1 *)0xffffffff) {
      puVar2 = (undefined1 *)0x0;
    }
    else if (puVar1 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      iVar4 = *(int *)(this + 4);
      __aeabi_uidivmod((iVar4 + 8 + param_1) - iVar4 * iVar3,iVar4);
      *(int *)(this + 8) = extraout_r1;
      puVar2 = (undefined1 *)0x0;
      if (extraout_r1 != 0) {
        puVar2 = puVar1 + (iVar4 * iVar3 - iVar4);
      }
      *(undefined1 **)this = puVar2;
      puVar2 = puVar1 + 8;
      *puVar1 = 1;
    }
  }
  else {
    iVar6 = param_1 + iVar4 + 8;
    if (iVar6 == iVar5) {
      *(undefined4 *)(this + 8) = 0;
      *(undefined4 *)this = 0;
    }
    else {
      *(int *)(this + 8) = iVar6;
    }
    puVar2 = (undefined1 *)(iVar3 + iVar4 + 8);
    *(undefined1 *)(iVar3 + iVar4) = 2;
  }
  return puVar2;
}

// ---- crashlytics::unwinder::impl::libcorkscrew::libcorkscrew  @ 0x1cbfc
/* crashlytics::unwinder::impl::libcorkscrew::libcorkscrew(void*, void*, void*, void*, void*) */

libcorkscrew * __thiscall
crashlytics::unwinder::impl::libcorkscrew::libcorkscrew
          (libcorkscrew *this,void *param_1,void *param_2,void *param_3,void *param_4,void *param_5)

{
  undefined1 *__s;
  void *pvStack_1c;
  void *pvStack_18;
  void *pvStack_14;
  
  *(undefined4 *)(this + 0x18) = 0;
  *(undefined ***)this = &PTR__libcorkscrew_1_0002e698;
  *(void **)(this + 4) = param_1;
  *(void **)(this + 8) = param_2;
  *(void **)(this + 0xc) = param_3;
  *(void **)(this + 0x10) = param_4;
  *(void **)(this + 0x14) = param_5;
  pvStack_1c = param_1;
  pvStack_18 = param_2;
  pvStack_14 = param_3;
  detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>
  ::kernel_page_allocator
            ((kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames> *)
             &pvStack_1c);
  __s = (undefined1 *)
        detail::memory::
        kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>::
        allocate_pages_for_size
                  ((kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>
                    *)&pvStack_1c,0x240);
  if (__s == (undefined1 *)0x0) {
    __s = detail::memory::
          make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>()
          ::storage + 8;
    detail::memory::
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>()
    ::storage[0] = 0;
    detail::memory::
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>()
    ::call_count = detail::memory::
                   make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>()
                   ::call_count + 1;
    memset(detail::memory::
           make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew::backtrace_frames>()
           ::storage + 8,0,0x240);
  }
  else {
    memset(__s,0,0x240);
  }
  *(undefined1 **)(this + 0x1c) = __s;
  return this;
}

// ---- crashlytics::unwinder::impl::libunwind::unwind_impl  @ 0x1cc74
/* crashlytics::unwinder::impl::libunwind::unwind_impl(int, int,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, siginfo*, void*) */

void __thiscall
crashlytics::unwinder::impl::libunwind::unwind_impl
          (libunwind *this,int param_1,int param_2,array *param_3,siginfo *param_4,void *param_5)

{
  int iVar1;
  array *paVar2;
  int iVar3;
  int iVar4;
  
  iVar4 = *(int *)(this + 0x10);
  iVar1 = (**(code **)(this + 4))(param_5,iVar4,0x30,*(code **)(this + 4),param_3);
  paVar2 = param_3 + -8;
  for (iVar3 = 0; iVar3 < iVar1; iVar3 = iVar3 + 1) {
    *(undefined4 *)(paVar2 + 8) = *(undefined4 *)(iVar4 + iVar3 * 4);
    *(undefined4 *)(paVar2 + 0xc) = 0;
    paVar2 = paVar2 + 8;
  }
  return;
}

// ---- crashlytics::unwinder::impl::libunwind::id_impl  @ 0x1cca0
/* crashlytics::unwinder::impl::libunwind::id_impl() */

char * crashlytics::unwinder::impl::libunwind::id_impl(void)

{
  return "libunwind";
}

// ---- crashlytics::unwinder::impl::libunwind::unwind_impl  @ 0x1ccac
/* crashlytics::unwinder::impl::libunwind::unwind_impl(int, int,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, void*) */

void __thiscall
crashlytics::unwinder::impl::libunwind::unwind_impl
          (libunwind *this,int param_1,int param_2,array *param_3,void *param_4)

{
  int iVar1;
  int iVar2;
  array *paVar3;
  int iVar4;
  int iVar5;
  
  iVar5 = *(int *)(this + 0x10);
  iVar1 = (**(code **)(this + 0xc))(param_4,param_2,iVar5,0x30);
  paVar3 = param_3 + -8;
  for (iVar2 = 0; iVar2 < iVar1; iVar2 = iVar2 + 1) {
    iVar4 = *(int *)(iVar5 + iVar2 * 4);
    *(int *)(paVar3 + 8) = iVar4;
    *(int *)(paVar3 + 0xc) = iVar4 >> 0x1f;
    paVar3 = paVar3 + 8;
  }
  return;
}

// ---- crashlytics::unwinder::impl::libunwind::ptrace_context_impl  @ 0x1ccd8
/* crashlytics::unwinder::impl::libunwind::ptrace_context_impl(int) */

void crashlytics::unwinder::impl::libunwind::ptrace_context_impl(int param_1)

{
  (**(code **)(param_1 + 8))();
  return;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::kernel_page_allocator  @ 0x1cce0
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::kernel_page_allocator()
    */

kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames> * __thiscall
crashlytics::detail::memory::
kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::
kernel_page_allocator
          (kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames> *this)

{
  uint uVar1;
  
  *(undefined4 *)this = 0;
  uVar1 = sysconf(0x27);
  *(undefined4 *)(this + 8) = 0;
  *(uint *)(this + 4) = uVar1 & ~((int)uVar1 >> 0x1f);
  return this;
}

// ---- crashlytics::unwinder::impl::libunwind::~libunwind  @ 0x1ccfc
/* crashlytics::unwinder::impl::libunwind::~libunwind() */

libunwind * __thiscall crashlytics::unwinder::impl::libunwind::~libunwind(libunwind *this)

{
  size_t __len;
  int iVar1;
  kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames> akStack_1c [4];
  int local_18;
  
  iVar1 = *(int *)(this + 0x10);
  *(undefined ***)this = &PTR__libunwind_1_0002e6c8;
  if (*(char *)(iVar1 + -8) == '\x01') {
    detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>
    ::kernel_page_allocator(akStack_1c);
    __len = __udivsi3(local_18 + 199);
    munmap((void *)(iVar1 + -8),__len);
  }
  *(undefined ***)this = &PTR__unwinder_base_1_0002e668;
  return this;
}

// ---- crashlytics::unwinder::impl::libunwind::~libunwind  @ 0x1cd48
/* crashlytics::unwinder::impl::libunwind::~libunwind() */

libunwind * __thiscall crashlytics::unwinder::impl::libunwind::~libunwind(libunwind *this)

{
  ~libunwind(this);
  operator_delete(this);
  return this;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::allocate_pages_for_size  @ 0x1cd5a
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::allocate_pages_for_size(unsigned
   int) */

undefined1 * __thiscall
crashlytics::detail::memory::
kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::
allocate_pages_for_size
          (kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames> *this,
          uint param_1)

{
  undefined1 *puVar1;
  int extraout_r1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar3 = *(int *)this;
  iVar5 = *(int *)(this + 4);
  iVar4 = *(int *)(this + 8);
  if ((iVar3 == 0) || ((uint)((iVar5 + -8) - iVar4) < param_1)) {
    iVar3 = __udivsi3(iVar5 + 7 + param_1,iVar5,iVar3,iVar4,this,param_1);
    puVar1 = mmap((void *)0x0,iVar5 * iVar3,3,0x22,-1,0);
    if (puVar1 == (undefined1 *)0xffffffff) {
      puVar2 = (undefined1 *)0x0;
    }
    else if (puVar1 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      iVar4 = *(int *)(this + 4);
      __aeabi_uidivmod((iVar4 + 8 + param_1) - iVar4 * iVar3,iVar4);
      *(int *)(this + 8) = extraout_r1;
      puVar2 = (undefined1 *)0x0;
      if (extraout_r1 != 0) {
        puVar2 = puVar1 + (iVar4 * iVar3 - iVar4);
      }
      *(undefined1 **)this = puVar2;
      puVar2 = puVar1 + 8;
      *puVar1 = 1;
    }
  }
  else {
    iVar6 = param_1 + iVar4 + 8;
    if (iVar6 == iVar5) {
      *(undefined4 *)(this + 8) = 0;
      *(undefined4 *)this = 0;
    }
    else {
      *(int *)(this + 8) = iVar6;
    }
    puVar2 = (undefined1 *)(iVar3 + iVar4 + 8);
    *(undefined1 *)(iVar3 + iVar4) = 2;
  }
  return puVar2;
}

// ---- crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libunwind::backtrace_frames>  @ 0x1cdfc
/* crashlytics::unwinder::impl::libunwind::backtrace_frames*
   crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libunwind::backtrace_frames>()
    */

backtrace_frames *
crashlytics::detail::memory::
allocate_storage<crashlytics::unwinder::impl::libunwind::backtrace_frames>(void)

{
  backtrace_frames *__s;
  kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames> akStack_1c [16];
  
  kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::
  kernel_page_allocator(akStack_1c);
  __s = (backtrace_frames *)
        kernel_page_allocator<crashlytics::unwinder::impl::libunwind::backtrace_frames>::
        allocate_pages_for_size(akStack_1c,0xc0);
  if (__s == (backtrace_frames *)0x0) {
    __s = (backtrace_frames *)
          (make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind::backtrace_frames>()
           ::storage + 8);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind::backtrace_frames>()
    ::storage[0] = 0;
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind::backtrace_frames>()
    ::call_count = make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind::backtrace_frames>()
                   ::call_count + 1;
    memset(make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind::backtrace_frames>()
           ::storage + 8,0,0xc0);
  }
  else {
    memset(__s,0,0xc0);
    memset(__s,0,0xc0);
  }
  return __s;
}

// ---- crashlytics::unwinder::impl::libunwind::libunwind  @ 0x1ce5c
/* crashlytics::unwinder::impl::libunwind::libunwind(void*, void*, void*) */

libunwind * __thiscall
crashlytics::unwinder::impl::libunwind::libunwind
          (libunwind *this,void *param_1,void *param_2,void *param_3)

{
  backtrace_frames *pbVar1;
  
  *(undefined ***)this = &PTR__libunwind_1_0002e6c8;
  *(void **)(this + 4) = param_1;
  *(void **)(this + 8) = param_2;
  *(void **)(this + 0xc) = param_3;
  pbVar1 = detail::memory::
           allocate_storage<crashlytics::unwinder::impl::libunwind::backtrace_frames>();
  *(backtrace_frames **)(this + 0x10) = pbVar1;
  return this;
}

// ---- crashlytics::unwinder::impl::simple::~simple  @ 0x1ce7c
/* crashlytics::unwinder::impl::simple::~simple() */

void __thiscall crashlytics::unwinder::impl::simple::~simple(simple *this)

{
  *(undefined ***)this = &PTR__unwinder_base_1_0002e668;
  return;
}

// ---- crashlytics::unwinder::impl::simple::unwind_impl  @ 0x1ce8c
/* crashlytics::unwinder::impl::simple::unwind_impl(int, int,
   std::array<crashlytics::unwinder::unwinder_base<48u>::frame, 48u>&, siginfo*, void*) */

undefined4 __thiscall
crashlytics::unwinder::impl::simple::unwind_impl
          (simple *this,int param_1,int param_2,array *param_3,siginfo *param_4,void *param_5)

{
  if (param_1 == param_2) {
    *(undefined4 *)param_3 = *(undefined4 *)((int)param_5 + 0x5c);
    *(undefined4 *)(param_3 + 4) = 0;
    return 1;
  }
  return 0;
}

// ---- crashlytics::unwinder::impl::simple::id_impl  @ 0x1cea4
/* crashlytics::unwinder::impl::simple::id_impl() */

char * crashlytics::unwinder::impl::simple::id_impl(void)

{
  return "simple";
}

// ---- crashlytics::unwinder::impl::simple::~simple  @ 0x1ceb0
/* crashlytics::unwinder::impl::simple::~simple() */

simple * __thiscall crashlytics::unwinder::impl::simple::~simple(simple *this)

{
  ~simple(this);
  operator_delete(this);
  return this;
}

// ---- crashlytics::unwinder::impl::simple::simple  @ 0x1cec4
/* crashlytics::unwinder::impl::simple::simple() */

void __thiscall crashlytics::unwinder::impl::simple::simple(simple *this)

{
  *(undefined ***)this = &PTR__simple_1_0002e6f8;
  return;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind>::allocate_pages_for_size  @ 0x1ced4
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind>::allocate_pages_for_size(unsigned
   int) */

undefined1 * __thiscall
crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libunwind>::
allocate_pages_for_size
          (kernel_page_allocator<crashlytics::unwinder::impl::libunwind> *this,uint param_1)

{
  undefined1 *puVar1;
  int extraout_r1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar3 = *(int *)this;
  iVar5 = *(int *)(this + 4);
  iVar4 = *(int *)(this + 8);
  if ((iVar3 == 0) || ((uint)((iVar5 + -8) - iVar4) < param_1)) {
    iVar3 = __udivsi3(iVar5 + 7 + param_1,iVar5,iVar3,iVar4,this,param_1);
    puVar1 = mmap((void *)0x0,iVar5 * iVar3,3,0x22,-1,0);
    if (puVar1 == (undefined1 *)0xffffffff) {
      puVar2 = (undefined1 *)0x0;
    }
    else if (puVar1 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      iVar4 = *(int *)(this + 4);
      __aeabi_uidivmod((iVar4 + 8 + param_1) - iVar4 * iVar3,iVar4);
      *(int *)(this + 8) = extraout_r1;
      puVar2 = (undefined1 *)0x0;
      if (extraout_r1 != 0) {
        puVar2 = puVar1 + (iVar4 * iVar3 - iVar4);
      }
      *(undefined1 **)this = puVar2;
      puVar2 = puVar1 + 8;
      *puVar1 = 1;
    }
  }
  else {
    iVar6 = param_1 + iVar4 + 8;
    if (iVar6 == iVar5) {
      *(undefined4 *)(this + 8) = 0;
      *(undefined4 *)this = 0;
    }
    else {
      *(int *)(this + 8) = iVar6;
    }
    puVar2 = (undefined1 *)(iVar3 + iVar4 + 8);
    *(undefined1 *)(iVar3 + iVar4) = 2;
  }
  return puVar2;
}

// ---- crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libunwind>  @ 0x1cf74
/* crashlytics::unwinder::impl::libunwind*
   crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libunwind>(crashlytics::unwinder::impl::libunwind&&)
    */

libunwind *
crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libunwind>
          (libunwind *param_1)

{
  libunwind *plVar1;
  undefined4 local_1c;
  uint local_18;
  undefined4 local_14;
  
  local_1c = 0;
  local_18 = sysconf(0x27);
  local_14 = 0;
  local_18 = local_18 & ~((int)local_18 >> 0x1f);
  plVar1 = (libunwind *)
           kernel_page_allocator<crashlytics::unwinder::impl::libunwind>::allocate_pages_for_size
                     ((kernel_page_allocator<crashlytics::unwinder::impl::libunwind> *)&local_1c,
                      0x14);
  if (plVar1 == (libunwind *)0x0) {
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::call_count =
         make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::
         call_count + 1;
    plVar1 = (libunwind *)
             (make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::
              storage + 8);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::storage[0] = 0
    ;
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::storage._8_4_
         = &PTR__libunwind_1_0002e6c8;
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::storage._12_4_
         = *(undefined4 *)(param_1 + 4);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::storage._16_4_
         = *(undefined4 *)(param_1 + 8);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::storage._20_4_
         = *(undefined4 *)(param_1 + 0xc);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libunwind>()::storage._24_4_
         = *(undefined4 *)(param_1 + 0x10);
  }
  else {
    *(undefined ***)plVar1 = &PTR__libunwind_1_0002e6c8;
    *(undefined4 *)(plVar1 + 4) = *(undefined4 *)(param_1 + 4);
    *(undefined4 *)(plVar1 + 8) = *(undefined4 *)(param_1 + 8);
    *(undefined4 *)(plVar1 + 0xc) = *(undefined4 *)(param_1 + 0xc);
    *(undefined4 *)(plVar1 + 0x10) = *(undefined4 *)(param_1 + 0x10);
  }
  return plVar1;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew>::allocate_pages_for_size  @ 0x1cff8
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew>::allocate_pages_for_size(unsigned
   int) */

undefined1 * __thiscall
crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew>::
allocate_pages_for_size
          (kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew> *this,uint param_1)

{
  undefined1 *puVar1;
  int extraout_r1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar3 = *(int *)this;
  iVar5 = *(int *)(this + 4);
  iVar4 = *(int *)(this + 8);
  if ((iVar3 == 0) || ((uint)((iVar5 + -8) - iVar4) < param_1)) {
    iVar3 = __udivsi3(iVar5 + 7 + param_1,iVar5,iVar3,iVar4,this,param_1);
    puVar1 = mmap((void *)0x0,iVar5 * iVar3,3,0x22,-1,0);
    if (puVar1 == (undefined1 *)0xffffffff) {
      puVar2 = (undefined1 *)0x0;
    }
    else if (puVar1 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      iVar4 = *(int *)(this + 4);
      __aeabi_uidivmod((iVar4 + 8 + param_1) - iVar4 * iVar3,iVar4);
      *(int *)(this + 8) = extraout_r1;
      puVar2 = (undefined1 *)0x0;
      if (extraout_r1 != 0) {
        puVar2 = puVar1 + (iVar4 * iVar3 - iVar4);
      }
      *(undefined1 **)this = puVar2;
      puVar2 = puVar1 + 8;
      *puVar1 = 1;
    }
  }
  else {
    iVar6 = param_1 + iVar4 + 8;
    if (iVar6 == iVar5) {
      *(undefined4 *)(this + 8) = 0;
      *(undefined4 *)this = 0;
    }
    else {
      *(int *)(this + 8) = iVar6;
    }
    puVar2 = (undefined1 *)(iVar3 + iVar4 + 8);
    *(undefined1 *)(iVar3 + iVar4) = 2;
  }
  return puVar2;
}

// ---- crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libcorkscrew>  @ 0x1d098
/* crashlytics::unwinder::impl::libcorkscrew*
   crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libcorkscrew>(crashlytics::unwinder::impl::libcorkscrew&&)
    */

libcorkscrew *
crashlytics::detail::memory::allocate_storage<crashlytics::unwinder::impl::libcorkscrew>
          (libcorkscrew *param_1)

{
  libcorkscrew *plVar1;
  undefined4 local_1c;
  uint local_18;
  undefined4 local_14;
  
  local_1c = 0;
  local_18 = sysconf(0x27);
  local_14 = 0;
  local_18 = local_18 & ~((int)local_18 >> 0x1f);
  plVar1 = (libcorkscrew *)
           kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew>::allocate_pages_for_size
                     ((kernel_page_allocator<crashlytics::unwinder::impl::libcorkscrew> *)&local_1c,
                      0x20);
  if (plVar1 == (libcorkscrew *)0x0) {
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::call_count
         = make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::
           call_count + 1;
    plVar1 = (libcorkscrew *)
             (make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::
              storage + 8);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage[0]
         = 0;
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _8_4_ = &PTR__libcorkscrew_1_0002e698;
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _12_4_ = *(undefined4 *)(param_1 + 4);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _16_4_ = *(undefined4 *)(param_1 + 8);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _20_4_ = *(undefined4 *)(param_1 + 0xc);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _24_4_ = *(undefined4 *)(param_1 + 0x10);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _28_4_ = *(undefined4 *)(param_1 + 0x14);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _32_4_ = *(undefined4 *)(param_1 + 0x18);
    make_function_scoped_static_byte_array<crashlytics::unwinder::impl::libcorkscrew>()::storage.
    _36_4_ = *(undefined4 *)(param_1 + 0x1c);
  }
  else {
    *(undefined ***)plVar1 = &PTR__libcorkscrew_1_0002e698;
    *(undefined4 *)(plVar1 + 4) = *(undefined4 *)(param_1 + 4);
    *(undefined4 *)(plVar1 + 8) = *(undefined4 *)(param_1 + 8);
    *(undefined4 *)(plVar1 + 0xc) = *(undefined4 *)(param_1 + 0xc);
    *(undefined4 *)(plVar1 + 0x10) = *(undefined4 *)(param_1 + 0x10);
    *(undefined4 *)(plVar1 + 0x14) = *(undefined4 *)(param_1 + 0x14);
    *(undefined4 *)(plVar1 + 0x18) = *(undefined4 *)(param_1 + 0x18);
    *(undefined4 *)(plVar1 + 0x1c) = *(undefined4 *)(param_1 + 0x1c);
  }
  return plVar1;
}

// ---- crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::simple>::allocate_pages_for_size  @ 0x1d134
/* crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::simple>::allocate_pages_for_size(unsigned
   int) */

undefined1 * __thiscall
crashlytics::detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::simple>::
allocate_pages_for_size
          (kernel_page_allocator<crashlytics::unwinder::impl::simple> *this,uint param_1)

{
  undefined1 *puVar1;
  int extraout_r1;
  undefined1 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar3 = *(int *)this;
  iVar5 = *(int *)(this + 4);
  iVar4 = *(int *)(this + 8);
  if ((iVar3 == 0) || ((uint)((iVar5 + -8) - iVar4) < param_1)) {
    iVar3 = __udivsi3(iVar5 + 7 + param_1,iVar5,iVar3,iVar4,this,param_1);
    puVar1 = mmap((void *)0x0,iVar5 * iVar3,3,0x22,-1,0);
    if (puVar1 == (undefined1 *)0xffffffff) {
      puVar2 = (undefined1 *)0x0;
    }
    else if (puVar1 == (undefined1 *)0x0) {
      puVar2 = (undefined1 *)0x0;
    }
    else {
      iVar4 = *(int *)(this + 4);
      __aeabi_uidivmod((iVar4 + 8 + param_1) - iVar4 * iVar3,iVar4);
      *(int *)(this + 8) = extraout_r1;
      puVar2 = (undefined1 *)0x0;
      if (extraout_r1 != 0) {
        puVar2 = puVar1 + (iVar4 * iVar3 - iVar4);
      }
      *(undefined1 **)this = puVar2;
      puVar2 = puVar1 + 8;
      *puVar1 = 1;
    }
  }
  else {
    iVar6 = param_1 + iVar4 + 8;
    if (iVar6 == iVar5) {
      *(undefined4 *)(this + 8) = 0;
      *(undefined4 *)this = 0;
    }
    else {
      *(int *)(this + 8) = iVar6;
    }
    puVar2 = (undefined1 *)(iVar3 + iVar4 + 8);
    *(undefined1 *)(iVar3 + iVar4) = 2;
  }
  return puVar2;
}

// ---- crashlytics::unwinder::load  @ 0x1d1d4
/* crashlytics::unwinder::load() */

simple * crashlytics::unwinder::load(void)

{
  int iVar1;
  void *pvVar2;
  void *pvVar3;
  void *pvVar4;
  libunwind *plVar5;
  void *pvVar6;
  void *pvVar7;
  libcorkscrew *plVar8;
  simple *this;
  undefined4 local_40;
  uint local_3c;
  undefined4 local_38;
  
  iVar1 = dlopen("libcrashlytics-envelope.so",1);
  if (iVar1 != 0) {
    pvVar2 = (void *)dlsym(iVar1,"unwind");
    pvVar3 = (void *)dlsym(iVar1,"context");
    pvVar4 = (void *)dlsym(iVar1,"unwind_ptrace");
    if (((pvVar3 != (void *)0x0) && (pvVar2 != (void *)0x0)) && (pvVar4 != (void *)0x0)) {
      impl::libunwind::libunwind((libunwind *)&local_40,pvVar2,pvVar3,pvVar4);
      plVar5 = detail::memory::allocate_storage<crashlytics::unwinder::impl::libunwind>
                         ((libunwind *)&local_40);
      impl::libunwind::~libunwind((libunwind *)&local_40);
      return (simple *)plVar5;
    }
  }
  iVar1 = dlopen("libcorkscrew.so",1);
  if (iVar1 != 0) {
    pvVar2 = (void *)dlsym(iVar1,"unwind_backtrace_signal_arch");
    pvVar3 = (void *)dlsym(iVar1,"acquire_my_map_info_list");
    pvVar4 = (void *)dlsym(iVar1,"release_my_map_info_list");
    pvVar6 = (void *)dlsym(iVar1,"load_ptrace_context");
    pvVar7 = (void *)dlsym(iVar1,"unwind_backtrace_ptrace_arch");
    if (((pvVar2 != (void *)0x0) && (pvVar3 != (void *)0x0)) &&
       ((pvVar4 != (void *)0x0 && ((pvVar6 != (void *)0x0 && (pvVar7 != (void *)0x0)))))) {
      impl::libcorkscrew::libcorkscrew((libcorkscrew *)&local_40,pvVar2,pvVar3,pvVar4,pvVar6,pvVar7)
      ;
      plVar8 = detail::memory::allocate_storage<crashlytics::unwinder::impl::libcorkscrew>
                         ((libcorkscrew *)&local_40);
      impl::libcorkscrew::~libcorkscrew((libcorkscrew *)&local_40);
      return (simple *)plVar8;
    }
    __android_log_print(6,"libcrashlytics",
                        "Found libcorkscrew, but failed to find the necessary symbols");
  }
  __android_log_print(6,"libcrashlytics",
                      "Failed to find any usable unwinding libraries on the device, falling back to simple unwinding"
                     );
  local_40 = 0;
  local_3c = sysconf(0x27);
  local_38 = 0;
  local_3c = local_3c & ~((int)local_3c >> 0x1f);
  this = (simple *)
         detail::memory::kernel_page_allocator<crashlytics::unwinder::impl::simple>::
         allocate_pages_for_size
                   ((kernel_page_allocator<crashlytics::unwinder::impl::simple> *)&local_40,4);
  if (this == (simple *)0x0) {
    this = (simple *)
           (detail::memory::
            make_function_scoped_static_byte_array<crashlytics::unwinder::impl::simple>()::storage +
           8);
    detail::memory::make_function_scoped_static_byte_array<crashlytics::unwinder::impl::simple>()::
    storage[0] = 0;
    detail::memory::make_function_scoped_static_byte_array<crashlytics::unwinder::impl::simple>()::
    call_count = detail::memory::
                 make_function_scoped_static_byte_array<crashlytics::unwinder::impl::simple>()::
                 call_count + 1;
    impl::simple::simple
              ((simple *)
               (detail::memory::
                make_function_scoped_static_byte_array<crashlytics::unwinder::impl::simple>()::
                storage + 8));
  }
  else {
    impl::simple::simple(this);
  }
  return this;
}
