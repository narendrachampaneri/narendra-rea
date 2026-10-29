// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 99 functions

// ---- _FINI_0  @ 0x1a16c
void _FINI_0(void)

{
  __cxa_finalize(&DAT_0002f000);
  return;
}

// ---- _INIT_0  @ 0x1a17c
void _INIT_0(void)

{
  uint uVar1;
  
  DAT_000d0678 = 0;
  uVar1 = pthread_key_create(&DAT_000d0674,(__destr_function *)0x20dcd);
  DAT_000d0678 = '\x01' - (char)uVar1;
  if (1 < uVar1) {
    DAT_000d0678 = '\0';
  }
  FUN_00021828(&DAT_000d0674,0x20db1,&DAT_0002f000);
  return;
}

// ---- _INIT_1  @ 0x1a1bc
void _INIT_1(void)

{
  DAT_000d1590 = 0;
  return;
}

// ---- _INIT_2  @ 0x1a1cc
void _INIT_2(void)

{
  undefined4 in_r3;
  
  DAT_000d559c = &PTR_LAB_00021e00_1_0002ebb8;
  FUN_00021828(&DAT_000d559c,&LAB_00021e00_1,&DAT_0002f000);
  DAT_000d5598 = &PTR_LAB_00021df0_1_0002ebf8;
  FUN_00021828(&DAT_000d5598,&LAB_00021df0_1,&DAT_0002f000,in_r3);
  return;
}

// ---- JNI_Init  @ 0x1a4f0
int JNI_Init(_JNIEnv *param_1,undefined4 param_2,_jstring *param_3,_jobject *param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  char *pcVar6;
  
  uVar1 = crashlytics::entry::jni::session_crash_file(param_1,param_3);
  uVar2 = crashlytics::entry::jni::asset_manager_from(param_1,param_4);
  uVar3 = crashlytics::entry::jni::sensor_manager();
  uVar4 = crashlytics::entry::jni::configuration();
  iVar5 = crashlytics::handler::install_handlers(uVar1,uVar2,uVar3,uVar4);
  if (iVar5 == 0) {
    pcVar6 = "failed";
  }
  else {
    pcVar6 = "successful";
  }
  __android_log_print(3,"libcrashlytics","Initializing native crash handling %s.",pcVar6);
  return iVar5;
}

// ---- JNI_OnLoad  @ 0x1a588
undefined4 JNI_OnLoad(jni *param_1,_JavaVM *param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = crashlytics::entry::jni::register_natives(param_1,param_2);
  if (iVar1 == 0) {
    uVar2 = 0xffffffff;
  }
  else {
    uVar2 = 0x10006;
  }
  return uVar2;
}

// ---- external_api_initialize  @ 0x1a654
jvm_context * external_api_initialize(void)

{
  _jclass *p_Var1;
  _jmethodID *p_Var2;
  char *pcVar3;
  _jmethodID *p_Var4;
  _jmethodID *p_Var5;
  _jmethodID *p_Var6;
  _jmethodID *p_Var7;
  _jmethodID *p_Var8;
  int iVar9;
  _jobject *p_Var10;
  jvm_context *this;
  managed_environment amStack_34 [16];
  
  DataMemoryBarrier(0x1f);
  DataMemoryBarrier(0x1f);
  crashlytics::entry::jni::detail::managed_environment::managed_environment
            (amStack_34,crashlytics::entry::jni::detail::jvm);
  p_Var1 = (_jclass *)crashlytics::entry::jni::detail::managed_environment::get(amStack_34);
  if (((((p_Var1 != (_jclass *)0x0) &&
        (p_Var2 = (_jmethodID *)
                  (**(code **)(*(int *)p_Var1 + 0x18))
                            (p_Var1,"com/crashlytics/android/core/CrashlyticsCore"),
        p_Var2 != (_jmethodID *)0x0)) &&
       (pcVar3 = (char *)(**(code **)(*(int *)p_Var1 + 0x54))(p_Var1,p_Var2), pcVar3 != (char *)0x0)
       ) && ((p_Var4 = (_jmethodID *)_JNIEnv::GetMethodID(p_Var1,pcVar3,"log"),
             p_Var4 != (_jmethodID *)0x0 &&
             (p_Var5 = (_jmethodID *)_JNIEnv::GetMethodID(p_Var1,pcVar3,"setString"),
             p_Var5 != (_jmethodID *)0x0)))) &&
     (p_Var6 = (_jmethodID *)_JNIEnv::GetMethodID(p_Var1,pcVar3,"setUserIdentifier"),
     p_Var6 != (_jmethodID *)0x0)) {
    p_Var7 = (_jmethodID *)_JNIEnv::GetMethodID(p_Var1,pcVar3,"setUserName");
    if (((p_Var7 != (_jmethodID *)0x0) &&
        (p_Var8 = (_jmethodID *)_JNIEnv::GetMethodID(p_Var1,pcVar3,"setUserEmail"),
        p_Var8 != (_jmethodID *)0x0)) &&
       ((iVar9 = (**(code **)(*(int *)p_Var1 + 0x1c4))
                           (p_Var1,pcVar3,"getInstance",
                            "()Lcom/crashlytics/android/core/CrashlyticsCore;"), iVar9 != 0 &&
        ((iVar9 = _JNIEnv::CallStaticObjectMethod(p_Var1,p_Var2,iVar9), iVar9 != 0 &&
         (p_Var10 = (_jobject *)(**(code **)(*(int *)p_Var1 + 0x54))(p_Var1,iVar9),
         p_Var10 != (_jobject *)0x0)))))) {
      this = operator_new(0x18,(nothrow_t *)&std::nothrow);
      if (this != (jvm_context *)0x0) {
        crashlytics::api::detail::jvm_context::jvm_context
                  (this,p_Var10,p_Var4,p_Var5,p_Var6,p_Var7,p_Var8);
      }
      goto LAB_0001a764;
    }
  }
  this = (jvm_context *)0x0;
LAB_0001a764:
  crashlytics::entry::jni::detail::managed_environment::~managed_environment(amStack_34);
  return this;
}

// ---- external_api_dispose  @ 0x1a7a4
void external_api_dispose(void *param_1)

{
  if (param_1 == (void *)0x0) {
    return;
  }
  free(param_1);
  return;
}

// ---- external_api_set  @ 0x1a8a8
void external_api_set(jvm_context *param_1,int param_2,int param_3)

{
  int iVar1;
  detail *pdVar2;
  int local_34;
  int local_30;
  managed_environment amStack_24 [16];
  
  iVar1 = crashlytics::detail::null_context(param_1);
  if (((iVar1 == 0) && (param_2 != 0)) && (param_3 != 0)) {
    DataMemoryBarrier(0x1f);
    DataMemoryBarrier(0x1f);
    crashlytics::entry::jni::detail::managed_environment::managed_environment
              (amStack_24,crashlytics::entry::jni::detail::jvm);
    pdVar2 = (detail *)crashlytics::entry::jni::detail::managed_environment::get(amStack_24);
    local_34 = param_2;
    local_30 = param_3;
    crashlytics::detail::invokeN
              (pdVar2,*(undefined4 *)param_1,*(undefined4 *)(param_1 + 8),&local_34,2);
    crashlytics::entry::jni::detail::managed_environment::~managed_environment(amStack_24);
  }
  return;
}

// ---- external_api_log  @ 0x1a8fc
void external_api_log(jvm_context *param_1,int param_2)

{
  int iVar1;
  detail *pdVar2;
  int local_28 [3];
  managed_environment amStack_1c [12];
  
  iVar1 = crashlytics::detail::null_context(param_1);
  if ((iVar1 == 0) && (param_2 != 0)) {
    DataMemoryBarrier(0x1f);
    DataMemoryBarrier(0x1f);
    crashlytics::entry::jni::detail::managed_environment::managed_environment
              (amStack_1c,crashlytics::entry::jni::detail::jvm);
    pdVar2 = (detail *)crashlytics::entry::jni::detail::managed_environment::get(amStack_1c);
    local_28[0] = param_2;
    crashlytics::detail::invokeN
              (pdVar2,*(undefined4 *)param_1,*(undefined4 *)(param_1 + 4),local_28,1);
    crashlytics::entry::jni::detail::managed_environment::~managed_environment(amStack_1c);
  }
  return;
}

// ---- external_api_set_user_identifier  @ 0x1a94c
void external_api_set_user_identifier(jvm_context *param_1,int param_2)

{
  int iVar1;
  detail *pdVar2;
  int local_28 [3];
  managed_environment amStack_1c [12];
  
  iVar1 = crashlytics::detail::null_context(param_1);
  if ((iVar1 == 0) && (param_2 != 0)) {
    DataMemoryBarrier(0x1f);
    DataMemoryBarrier(0x1f);
    crashlytics::entry::jni::detail::managed_environment::managed_environment
              (amStack_1c,crashlytics::entry::jni::detail::jvm);
    pdVar2 = (detail *)crashlytics::entry::jni::detail::managed_environment::get(amStack_1c);
    local_28[0] = param_2;
    crashlytics::detail::invokeN
              (pdVar2,*(undefined4 *)param_1,*(undefined4 *)(param_1 + 0xc),local_28,1);
    crashlytics::entry::jni::detail::managed_environment::~managed_environment(amStack_1c);
  }
  return;
}

// ---- external_api_set_user_name  @ 0x1a99c
void external_api_set_user_name(jvm_context *param_1,int param_2)

{
  int iVar1;
  detail *pdVar2;
  int local_28 [3];
  managed_environment amStack_1c [12];
  
  iVar1 = crashlytics::detail::null_context(param_1);
  if ((iVar1 == 0) && (param_2 != 0)) {
    DataMemoryBarrier(0x1f);
    DataMemoryBarrier(0x1f);
    crashlytics::entry::jni::detail::managed_environment::managed_environment
              (amStack_1c,crashlytics::entry::jni::detail::jvm);
    pdVar2 = (detail *)crashlytics::entry::jni::detail::managed_environment::get(amStack_1c);
    local_28[0] = param_2;
    crashlytics::detail::invokeN
              (pdVar2,*(undefined4 *)param_1,*(undefined4 *)(param_1 + 0x10),local_28,1);
    crashlytics::entry::jni::detail::managed_environment::~managed_environment(amStack_1c);
  }
  return;
}

// ---- external_api_set_user_email  @ 0x1a9ec
void external_api_set_user_email(jvm_context *param_1,int param_2)

{
  int iVar1;
  detail *pdVar2;
  int local_28 [3];
  managed_environment amStack_1c [12];
  
  iVar1 = crashlytics::detail::null_context(param_1);
  if ((iVar1 == 0) && (param_2 != 0)) {
    DataMemoryBarrier(0x1f);
    DataMemoryBarrier(0x1f);
    crashlytics::entry::jni::detail::managed_environment::managed_environment
              (amStack_1c,crashlytics::entry::jni::detail::jvm);
    pdVar2 = (detail *)crashlytics::entry::jni::detail::managed_environment::get(amStack_1c);
    local_28[0] = param_2;
    crashlytics::detail::invokeN
              (pdVar2,*(undefined4 *)param_1,*(undefined4 *)(param_1 + 0x14),local_28,1);
    crashlytics::entry::jni::detail::managed_environment::~managed_environment(amStack_1c);
  }
  return;
}

// ---- android_getCpuFamily  @ 0x1dc5c
undefined4 android_getCpuFamily(void)

{
  pthread_once((pthread_once_t *)&DAT_000d0650,(__init_routine *)&DAT_0001d629);
  return DAT_000d063c;
}

// ---- android_getCpuFeatures  @ 0x1dc7c
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 android_getCpuFeatures(void)

{
  pthread_once((pthread_once_t *)&DAT_000d0650,(__init_routine *)&DAT_0001d629);
  return _DAT_000d0640;
}

// ---- android_getCpuCount  @ 0x1dc9c
undefined4 android_getCpuCount(void)

{
  pthread_once((pthread_once_t *)&DAT_000d0650,(__init_routine *)&DAT_0001d629);
  return DAT_000d0648;
}

// ---- android_setCpu  @ 0x1dcbc
undefined4 android_setCpu(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  if (DAT_000d0638 == 0) {
    DAT_000d063c = 1;
    if (param_1 < 1) {
      param_1 = 1;
    }
    DAT_000d0640 = param_3;
    DAT_000d0644 = param_4;
    DAT_000d0648 = param_1;
    pthread_once((pthread_once_t *)&DAT_000d0650,(__init_routine *)&LAB_0001d394_1);
    return 1;
  }
  return 0;
}

// ---- android_getCpuIdArm  @ 0x1dcf4
undefined4 android_getCpuIdArm(void)

{
  pthread_once((pthread_once_t *)&DAT_000d0650,(__init_routine *)&DAT_0001d629);
  return DAT_000d064c;
}

// ---- android_setCpuArm  @ 0x1dd14
bool android_setCpuArm(void)

{
  int iVar1;
  undefined4 in_stack_00000000;
  
  iVar1 = android_setCpu();
  if (iVar1 != 0) {
    DAT_000d064c = in_stack_00000000;
  }
  return iVar1 != 0;
}

// ---- operator.delete  @ 0x1df2c
/* operator delete(void*) */

void operator_delete(void *param_1)

{
  if (param_1 == (void *)0x0) {
    return;
  }
  free(param_1);
  return;
}

// ---- __cxa_pure_virtual  @ 0x1df44
void __cxa_pure_virtual(void)

{
  write(2,"pure virtual method called\n",0x1b);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_deleted_virtual  @ 0x1df5c
void __cxa_deleted_virtual(void)

{
  write(2,"deleted virtual method called\n",0x1e);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- operator.new  @ 0x1df74
/* operator new(unsigned int, std::nothrow_t const&) */

void * operator_new(uint param_1,nothrow_t *param_2)

{
  void *pvVar1;
  
  if (param_1 == 0) {
    param_1 = 1;
  }
  pvVar1 = malloc(param_1);
  if (pvVar1 == (void *)0x0) {
    do {
      if (DAT_000d0658 == (code *)0x0) {
        return (void *)0x0;
      }
      (*DAT_000d0658)();
      pvVar1 = malloc(param_1);
    } while (pvVar1 == (void *)0x0);
    return pvVar1;
  }
  return pvVar1;
}

// ---- operator.delete  @ 0x1f0ac
void operator_delete(void *param_1)

{
  operator_delete(param_1);
  return;
}

// ---- __cxa_guard_acquire  @ 0x20320
undefined4 __cxa_guard_acquire(uint *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  bool bVar3;
  undefined4 local_24;
  
  if ((*param_1 & 1) != 0) {
    return 0;
  }
LAB_00020346:
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(param_1);
    local_24 = *param_1;
    bVar3 = local_24 == 0;
    if (!bVar3) goto LAB_0002035c;
    bVar3 = (bool)hasExclusiveAccess(param_1);
  } while (!bVar3);
  *param_1 = 0x100;
  bVar3 = true;
LAB_0002035c:
  DataMemoryBarrier(0x1f);
  if (bVar3) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
    if (local_24 != 1) {
      if (local_24 != 0x100) goto LAB_00020378;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(param_1);
        uVar1 = *param_1;
        bVar3 = uVar1 == 0x100;
        if (!bVar3) goto LAB_000203a6;
        bVar3 = (bool)hasExclusiveAccess(param_1);
      } while (!bVar3);
      *param_1 = 0x10100;
      bVar3 = true;
LAB_000203a6:
      DataMemoryBarrier(0x1f);
      local_24 = 0x10100;
      if (bVar3) goto LAB_00020378;
      if (uVar1 != 1) goto code_r0x000203b0;
    }
  }
  return uVar2;
code_r0x000203b0:
  if (uVar1 != 0) {
LAB_00020378:
    syscall(0xf0,param_1,0,local_24,0);
  }
  goto LAB_00020346;
}

// ---- __cxa_guard_abort  @ 0x203bc
void __cxa_guard_abort(uint *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  uint uVar2;
  
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(param_1);
    uVar2 = *param_1;
    bVar1 = (bool)hasExclusiveAccess(param_1);
  } while (!bVar1);
  *param_1 = 0;
  DataMemoryBarrier(0x1f);
  if ((uVar2 & 0x10000) != 0) {
    syscall(0xf0,param_1,1,0x7fffffff,param_4);
    return;
  }
  return;
}

// ---- __cxa_guard_release  @ 0x203fc
void __cxa_guard_release(uint *param_1)

{
  bool bVar1;
  uint uVar2;
  
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(param_1);
    uVar2 = *param_1;
    bVar1 = (bool)hasExclusiveAccess(param_1);
  } while (!bVar1);
  *param_1 = 1;
  DataMemoryBarrier(0x1f);
  if ((uVar2 & 0x10000) != 0) {
    syscall(0xf0,param_1,1,0x7fffffff);
    return;
  }
  return;
}

// ---- __cxa_get_exception_ptr  @ 0x20ab4
undefined4 __cxa_get_exception_ptr(int param_1)

{
  return *(undefined4 *)(param_1 + 0x24);
}

// ---- __cxa_begin_catch  @ 0x20ab8
undefined4 __cxa_begin_catch(char *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  char *pcVar3;
  char *pcVar4;
  undefined4 uVar5;
  int iVar6;
  
  puVar1 = (undefined4 *)__cxa_get_globals();
  pcVar3 = param_1 + -0x20;
  pcVar4 = (char *)*puVar1;
  if (((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) &&
      ((param_1[3] == 'C' && (param_1[4] == 'C')))) &&
     ((param_1[5] == '+' && ((param_1[6] == '+' && ((byte)param_1[7] < 2)))))) {
    iVar6 = *(int *)(param_1 + -0xc);
    if (iVar6 < 0) {
      iVar6 = -iVar6;
    }
    iVar2 = puVar1[1];
    *(int *)(param_1 + -0xc) = iVar6 + 1;
    puVar1[1] = iVar2 + -1;
    if (pcVar3 != pcVar4) {
      *(char **)(param_1 + -0x10) = pcVar4;
      *puVar1 = pcVar3;
    }
    uVar5 = *(undefined4 *)(param_1 + 0x24);
    _Unwind_Complete(param_1);
    return uVar5;
  }
  if (pcVar4 == (char *)0x0) {
    *puVar1 = pcVar3;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_end_catch  @ 0x20b44
void __cxa_end_catch(void)

{
  int *piVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  undefined4 in_r3;
  
  piVar1 = (int *)__cxa_get_globals_fast();
  iVar2 = *piVar1;
  if (iVar2 == 0) {
    return;
  }
  bVar3 = *(byte *)(iVar2 + 0x20);
  if (((((bVar3 != 0x47) || (bVar3 = *(byte *)(iVar2 + 0x21), bVar3 != 0x4e)) ||
       (bVar3 = *(byte *)(iVar2 + 0x22), bVar3 != 0x55)) ||
      ((bVar3 = *(byte *)(iVar2 + 0x23), bVar3 != 0x43 ||
       (bVar3 = *(byte *)(iVar2 + 0x24), bVar3 != 0x43)))) ||
     ((bVar3 = *(byte *)(iVar2 + 0x25), bVar3 != 0x2b ||
      ((bVar3 = *(byte *)(iVar2 + 0x26), bVar3 != 0x2b ||
       (bVar3 = *(byte *)(iVar2 + 0x27), 1 < bVar3)))))) {
    *piVar1 = 0;
    _Unwind_DeleteException(iVar2 + 0x20,bVar3,piVar1,in_r3);
    return;
  }
  iVar4 = *(int *)(iVar2 + 0x14);
  if (iVar4 < 0) {
    iVar4 = iVar4 + 1;
    if (iVar4 == 0) {
      *piVar1 = *(int *)(iVar2 + 0x10);
    }
  }
  else {
    iVar4 = iVar4 + -1;
    if (iVar4 == 0) {
      iVar4 = *(int *)(iVar2 + 0x10);
      *piVar1 = iVar4;
      _Unwind_DeleteException(iVar2 + 0x20,iVar4,piVar1,in_r3);
      return;
    }
    if (iVar4 == -1) {
                    /* WARNING: Subroutine does not return */
      std::terminate();
    }
  }
  *(int *)(iVar2 + 0x14) = iVar4;
  return;
}

// ---- operator.new  @ 0x20be0
/* operator new(unsigned int) */

void * operator_new(uint param_1)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  if (param_1 == 0) {
    param_1 = 1;
  }
  pvVar1 = malloc(param_1);
  if (pvVar1 == (void *)0x0) {
    do {
      if (DAT_000d0658 == (code *)0x0) {
        puVar2 = (undefined4 *)__cxa_allocate_exception(4);
        *puVar2 = &PTR__bad_alloc_1_0002e9a8;
                    /* WARNING: Subroutine does not return */
        __cxa_throw(puVar2,&std::bad_alloc::typeinfo,0x21841);
      }
      (*DAT_000d0658)();
      pvVar1 = malloc(param_1);
    } while (pvVar1 == (void *)0x0);
    return pvVar1;
  }
  return pvVar1;
}

// ---- __cxa_call_unexpected  @ 0x20ca4
void __cxa_call_unexpected(int param_1)

{
  int iVar1;
  _func_void *p_Var2;
  
  iVar1 = FUN_00020c48();
  if (iVar1 != 0) {
    p_Var2 = *(_func_void **)(param_1 + -0x18);
    __cxa_begin_catch(param_1);
                    /* WARNING: Subroutine does not return */
    __cxxabiv1::__unexpected(p_Var2);
  }
  __cxa_begin_catch(param_1);
  std::unexpected();
  __cxa_begin_catch();
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_get_globals_fast  @ 0x20df4
undefined * __cxa_get_globals_fast(void)

{
  undefined *puVar1;
  
  if (DAT_000d0678 == '\0') {
    return &DAT_000d067c;
  }
  puVar1 = pthread_getspecific(DAT_000d0674);
  return puVar1;
}

// ---- __cxa_get_globals  @ 0x20e20
undefined4 * __cxa_get_globals(void)

{
  int iVar1;
  undefined4 *__pointer;
  
  __pointer = (undefined4 *)&DAT_000d067c;
  if ((DAT_000d0678 != '\0') &&
     (__pointer = pthread_getspecific(DAT_000d0674), __pointer == (undefined4 *)0x0)) {
    __pointer = malloc(0xc);
    if ((__pointer == (undefined4 *)0x0) ||
       (iVar1 = pthread_setspecific(DAT_000d0674,__pointer), iVar1 != 0)) {
                    /* WARNING: Subroutine does not return */
      std::terminate();
    }
    *__pointer = 0;
    __pointer[1] = 0;
    __pointer[2] = 0;
  }
  return __pointer;
}

// ---- __cxa_throw  @ 0x20ec0
void __cxa_throw(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = __cxa_get_globals();
  uVar2 = __cxxabiv1::__unexpected_handler;
  uVar1 = __cxxabiv1::__terminate_handler;
  *(int *)(iVar3 + 4) = *(int *)(iVar3 + 4) + 1;
  *(undefined4 *)(param_1 + -0x78) = param_2;
  *(undefined4 *)(param_1 + -0x80) = 1;
  *(undefined4 *)(param_1 + -0x70) = uVar2;
  *(undefined4 *)(param_1 + -0x6c) = uVar1;
  *(undefined1 *)(param_1 + -0x58) = 0x47;
  *(undefined1 **)(param_1 + -0x50) = &LAB_00020e7c_1;
  *(undefined1 *)(param_1 + -0x55) = 0x43;
  *(undefined1 *)(param_1 + -0x54) = 0x43;
  *(undefined1 *)(param_1 + -0x53) = 0x2b;
  *(undefined1 *)(param_1 + -0x52) = 0x2b;
  *(undefined4 *)(param_1 + -0x74) = param_3;
  *(undefined1 *)(param_1 + -0x57) = 0x4e;
  *(undefined1 *)(param_1 + -0x56) = 0x55;
  *(undefined1 *)(param_1 + -0x51) = 0;
  ___Unwind_RaiseException(param_1 + -0x58);
  __cxa_begin_catch(param_1 + -0x58);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_rethrow  @ 0x20f54
void __cxa_rethrow(void)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__cxa_get_globals();
  iVar2 = *piVar1;
  piVar1[1] = piVar1[1] + 1;
  if (iVar2 != 0) {
    if (((((*(char *)(iVar2 + 0x20) == 'G') && (*(char *)(iVar2 + 0x21) == 'N')) &&
         (*(char *)(iVar2 + 0x22) == 'U')) &&
        ((*(char *)(iVar2 + 0x23) == 'C' && (*(char *)(iVar2 + 0x24) == 'C')))) &&
       ((*(char *)(iVar2 + 0x25) == '+' &&
        ((*(char *)(iVar2 + 0x26) == '+' && (*(byte *)(iVar2 + 0x27) < 2)))))) {
      *(int *)(iVar2 + 0x14) = -*(int *)(iVar2 + 0x14);
    }
    else {
      *piVar1 = 0;
    }
    ___Unwind_Resume_or_Rethrow(iVar2 + 0x20);
    __cxa_begin_catch(iVar2 + 0x20);
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_end_cleanup  @ 0x21078
void __cxa_end_cleanup(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = __gnu_end_cleanup();
  ___Unwind_Resume(uVar1,param_2,param_3,param_4);
  return;
}

// ---- __cxa_type_match  @ 0x21084
undefined4 __cxa_type_match(char *param_1,int *param_2,undefined4 param_3,undefined4 *param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined **ppuVar3;
  undefined4 uVar4;
  char *local_1c;
  
  if ((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) && (param_1[3] == 'C')) {
    if (((param_1[4] == 'F') && (param_1[5] == 'O')) &&
       ((param_1[6] == 'R' && (param_1[7] == '\0')))) {
      ppuVar3 = &__cxxabiv1::__forced_unwind::typeinfo;
      local_1c = (char *)0x0;
      goto LAB_0002109e;
    }
    if (((param_1[4] == 'C') && (param_1[5] == '+')) &&
       ((param_1[6] == '+' && ((byte)param_1[7] < 2)))) {
      if (param_1[7] == 1) {
        local_1c = *(char **)(param_1 + -0x20);
        ppuVar3 = *(undefined ***)(local_1c + -0x78);
      }
      else {
        ppuVar3 = *(undefined ***)(param_1 + -0x20);
        local_1c = param_1 + 0x58;
      }
      goto LAB_0002109e;
    }
  }
  local_1c = (char *)0x0;
  ppuVar3 = &__cxxabiv1::__foreign_exception::typeinfo;
LAB_0002109e:
  uVar4 = 1;
  iVar1 = (**(code **)(*ppuVar3 + 8))(ppuVar3);
  if (iVar1 != 0) {
    uVar4 = 2;
    local_1c = *(char **)local_1c;
  }
  iVar1 = (**(code **)(*param_2 + 0x10))(param_2,ppuVar3,&local_1c,1);
  uVar2 = 0;
  if (iVar1 != 0) {
    *param_4 = local_1c;
    uVar2 = uVar4;
  }
  return uVar2;
}

// ---- __cxa_begin_cleanup  @ 0x2113c
undefined4 __cxa_begin_cleanup(char *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = __cxa_get_globals();
  if (((((*param_1 == 'G') && (param_1[1] == 'N')) && (param_1[2] == 'U')) &&
      ((param_1[3] == 'C' && (param_1[4] == 'C')))) &&
     ((param_1[5] == '+' && ((param_1[6] == '+' && ((byte)param_1[7] < 2)))))) {
    iVar2 = *(int *)(param_1 + -4);
    *(int *)(param_1 + -4) = iVar2 + 1;
    if (iVar2 + 1 == 1) {
      *(undefined4 *)(param_1 + -8) = *(undefined4 *)(iVar1 + 8);
      *(char **)(iVar1 + 8) = param_1 + -0x20;
      return 1;
    }
  }
  else {
    if (*(int *)(iVar1 + 8) != 0) {
                    /* WARNING: Subroutine does not return */
      std::terminate();
    }
    *(char **)(iVar1 + 8) = param_1 + -0x20;
  }
  return 1;
}

// ---- __gnu_end_cleanup  @ 0x211a0
int __gnu_end_cleanup(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar1 = __cxa_get_globals();
  iVar3 = *(int *)(iVar1 + 8);
  if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
    std::terminate();
  }
  if (((((*(char *)(iVar3 + 0x20) == 'G') && (*(char *)(iVar3 + 0x21) == 'N')) &&
       (*(char *)(iVar3 + 0x22) == 'U')) &&
      ((*(char *)(iVar3 + 0x23) == 'C' && (*(char *)(iVar3 + 0x24) == 'C')))) &&
     ((*(char *)(iVar3 + 0x25) == '+' &&
      ((*(char *)(iVar3 + 0x26) == '+' && (*(byte *)(iVar3 + 0x27) < 2)))))) {
    iVar2 = *(int *)(iVar3 + 0x1c) + -1;
    *(int *)(iVar3 + 0x1c) = iVar2;
    if (iVar2 == 0) {
      *(undefined4 *)(iVar1 + 8) = *(undefined4 *)(iVar3 + 0x18);
      *(undefined4 *)(iVar3 + 0x18) = 0;
      return iVar3 + 0x20;
    }
  }
  else {
    *(undefined4 *)(iVar1 + 8) = 0;
  }
  return iVar3 + 0x20;
}

// ---- __cxa_allocate_exception  @ 0x21368
int __cxa_allocate_exception(int param_1)

{
  void *__s;
  int iVar1;
  int extraout_r1;
  uint uVar2;
  uint uVar3;
  
  __s = malloc(param_1 + 0x80U);
  if (__s != (void *)0x0) {
LAB_00021378:
    memset(__s,0,0x80);
    return (int)__s + 0x80;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_000d1590);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00021318();
  }
  if (param_1 + 0x80U < 0x201) {
    uVar3 = 0;
    uVar2 = DAT_000d1594;
    do {
      if (-1 < (int)(uVar2 << 0x1f)) {
        DAT_000d1594 = DAT_000d1594 | 1 << (uVar3 & 0xff);
        __s = (void *)(uVar3 * 0x200 + 0xd1598);
        iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_000d1590);
        if (iVar1 != 0) {
          FUN_00021340();
          if (extraout_r1 == -1) {
                    /* WARNING: Subroutine does not return */
            __cxa_call_unexpected();
          }
                    /* WARNING: Subroutine does not return */
          __cxa_end_cleanup();
        }
        goto LAB_00021378;
      }
      uVar3 = uVar3 + 1;
      uVar2 = uVar2 >> 1;
    } while (uVar3 != 0x20);
  }
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_free_exception  @ 0x21400
void __cxa_free_exception(uint param_1)

{
  int iVar1;
  int extraout_r1;
  
  if ((param_1 < 0xd1598) || (0xd5597 < param_1)) {
    free((void *)(param_1 - 0x80));
    return;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_000d1590);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00021318();
  }
  DAT_000d1594 = DAT_000d1594 & ~(1 << (param_1 - 0xd1598 >> 9 & 0xff));
  iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_000d1590);
  if (iVar1 != 0) {
    FUN_00021340();
    if (extraout_r1 == -1) {
                    /* WARNING: Subroutine does not return */
      __cxa_call_unexpected();
    }
                    /* WARNING: Subroutine does not return */
    __cxa_end_cleanup();
  }
  return;
}

// ---- __cxa_allocate_dependent_exception  @ 0x21470
void * __cxa_allocate_dependent_exception(void)

{
  void *__s;
  int iVar1;
  uint uVar2;
  uint uVar3;
  
  __s = malloc(0x78);
  if (__s != (void *)0x0) {
LAB_0002147c:
    memset(__s,0,0x78);
    return __s;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_000d1590);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00021318();
  }
  uVar2 = 0;
  uVar3 = DAT_000d0688;
  do {
    if (-1 < (int)(uVar3 << 0x1f)) {
      DAT_000d0688 = DAT_000d0688 | 1 << (uVar2 & 0xff);
      __s = (void *)(uVar2 * 0x78 + 0xd0690);
      iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_000d1590);
      if (iVar1 == 0) goto LAB_0002147c;
      FUN_00021340();
      break;
    }
    uVar2 = uVar2 + 1;
    uVar3 = uVar3 >> 1;
  } while (uVar2 != 0x20);
                    /* WARNING: Subroutine does not return */
  std::terminate();
}

// ---- __cxa_free_dependent_exception  @ 0x214fc
void __cxa_free_dependent_exception(void *param_1)

{
  int iVar1;
  int extraout_r1;
  
  if ((param_1 < (void *)0xd0690) || ((void *)0xd158f < param_1)) {
    free(param_1);
    return;
  }
  iVar1 = pthread_mutex_lock((pthread_mutex_t *)&DAT_000d1590);
  if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00021318();
  }
  DAT_000d0688 = DAT_000d0688 & ~(1 << (((int)param_1 - 0xd0690U) / 0x78 & 0xff));
  iVar1 = pthread_mutex_unlock((pthread_mutex_t *)&DAT_000d1590);
  if (iVar1 != 0) {
    FUN_00021340();
    if (extraout_r1 == -1) {
                    /* WARNING: Subroutine does not return */
      __cxa_call_unexpected();
    }
                    /* WARNING: Subroutine does not return */
    __cxa_end_cleanup();
  }
  return;
}

// ---- __cxa_demangle  @ 0x2840c
char * __cxa_demangle(int param_1,char *param_2,uint *param_3,int *param_4)

{
  int iVar1;
  size_t sVar2;
  char *__src;
  uint uVar3;
  char *local_28;
  undefined4 local_24;
  uint local_20;
  int local_1c;
  
  if ((param_1 == 0) || ((param_2 != (char *)0x0 && (param_3 == (uint *)0x0)))) {
    if (param_4 == (int *)0x0) {
      return (char *)0x0;
    }
    *param_4 = -3;
    return (char *)0x0;
  }
  local_28 = (char *)0x0;
  local_24 = 0;
  local_20 = 0;
  local_1c = 0;
  iVar1 = FUN_000281d4(param_1,0x2276d,&local_28);
  __src = local_28;
  if (iVar1 == 0) {
    free(local_28);
    if (param_4 == (int *)0x0) {
      return (char *)0x0;
    }
  }
  else {
    uVar3 = 1;
    if (local_1c == 0) {
      uVar3 = local_20;
    }
    if (local_28 != (char *)0x0) {
      if (param_2 == (char *)0x0) {
        if (param_3 == (uint *)0x0) goto LAB_00028484;
      }
      else {
        sVar2 = strlen(local_28);
        if (sVar2 < *param_3) {
          memcpy(param_2,__src,sVar2 + 1);
          free(__src);
          __src = param_2;
          goto LAB_00028484;
        }
        free(param_2);
      }
      *param_3 = uVar3;
LAB_00028484:
      if (param_4 != (int *)0x0) {
        *param_4 = 0;
        return __src;
      }
      return __src;
    }
    if (param_4 == (int *)0x0) {
      return (char *)0x0;
    }
    if (uVar3 == 1) {
      iVar1 = 1;
      goto LAB_000284a2;
    }
  }
  iVar1 = 2;
LAB_000284a2:
  *param_4 = -iVar1;
  return (char *)0x0;
}

// ---- __gcclibcxx_demangle_callback  @ 0x284d0
undefined4 __gcclibcxx_demangle_callback(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((param_1 == 0) || (param_2 == 0)) {
    uVar2 = 0xfffffffd;
  }
  else {
    iVar1 = FUN_000281d4();
    uVar2 = 0;
    if (iVar1 == 0) {
      uVar2 = 0xfffffffe;
    }
  }
  return uVar2;
}

// ---- __cxa_current_exception_type  @ 0x284f4
int __cxa_current_exception_type(void)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__cxa_get_globals();
  piVar1 = (int *)*piVar1;
  iVar2 = 0;
  if (piVar1 != (int *)0x0) {
    if (*(char *)((int)piVar1 + 0x27) == '\x01') {
      piVar1 = (int *)(*piVar1 + -0x78);
    }
    iVar2 = *piVar1;
  }
  return iVar2;
}

// ---- __gnu_thumb1_case_sqi  @ 0x28510
/* WARNING: This is an inlined function */

void __gnu_thumb1_case_sqi(void)

{
  return;
}

// ---- __gnu_thumb1_case_uqi  @ 0x28524
/* WARNING: This is an inlined function */

void __gnu_thumb1_case_uqi(void)

{
  return;
}

// ---- __gnu_thumb1_case_shi  @ 0x28538
/* WARNING: This is an inlined function */

undefined8 __gnu_thumb1_case_shi(undefined4 param_1,undefined4 param_2)

{
  return CONCAT44(param_2,param_1);
}

// ---- __gnu_thumb1_case_uhi  @ 0x2854c
/* WARNING: This is an inlined function */

undefined8 __gnu_thumb1_case_uhi(undefined4 param_1,undefined4 param_2)

{
  return CONCAT44(param_2,param_1);
}

// ---- __gnu_thumb1_case_si  @ 0x28560
/* WARNING: This is an inlined function */

undefined8 __gnu_thumb1_case_si(undefined4 param_1,undefined4 param_2)

{
  return CONCAT44(param_2,param_1);
}

// ---- __udivsi3  @ 0x28578
uint __udivsi3(uint param_1,uint param_2)

{
  undefined4 uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  bool bVar5;
  
  if (param_2 - 1 == 0) {
    return param_1;
  }
  if (param_2 == 0) {
    uVar1 = 0;
    if (param_1 != 0) {
      uVar1 = 0xffffffff;
    }
    uVar2 = __aeabi_ldiv0(uVar1);
    return uVar2;
  }
  if (param_1 <= param_2) {
    return (uint)(param_1 == param_2);
  }
  if ((param_2 & param_2 - 1) == 0) {
    return param_1 >> (0x1fU - LZCOUNT(param_2) & 0xff);
  }
  uVar2 = param_2 << (LZCOUNT(param_2) - LZCOUNT(param_1) & 0xffU);
  uVar4 = 1 << (LZCOUNT(param_2) - LZCOUNT(param_1) & 0xffU);
  uVar3 = 0;
  while( true ) {
    if (uVar2 <= param_1) {
      param_1 = param_1 - uVar2;
      uVar3 = uVar3 | uVar4;
    }
    if (uVar2 >> 1 <= param_1) {
      param_1 = param_1 - (uVar2 >> 1);
      uVar3 = uVar3 | uVar4 >> 1;
    }
    if (uVar2 >> 2 <= param_1) {
      param_1 = param_1 - (uVar2 >> 2);
      uVar3 = uVar3 | uVar4 >> 2;
    }
    if (uVar2 >> 3 <= param_1) {
      param_1 = param_1 - (uVar2 >> 3);
      uVar3 = uVar3 | uVar4 >> 3;
    }
    bVar5 = param_1 == 0;
    if (!bVar5) {
      uVar4 = uVar4 >> 4;
      bVar5 = uVar4 == 0;
    }
    if (bVar5) break;
    uVar2 = uVar2 >> 4;
  }
  return uVar3;
}

// ---- __aeabi_uidivmod  @ 0x28608
void __aeabi_uidivmod(int param_1,int param_2)

{
  undefined4 uVar1;
  
  if (param_2 != 0) {
    __udivsi3();
    return;
  }
  uVar1 = 0;
  if (param_1 != 0) {
    uVar1 = 0xffffffff;
  }
  __aeabi_ldiv0(uVar1);
  return;
}

// ---- __divsi3  @ 0x28624
uint __divsi3(uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  bool bVar6;
  
  if (param_2 == 0) {
    bVar6 = (int)param_1 < 0;
    if (0 < (int)param_1) {
      param_1 = 0x7fffffff;
    }
    if (bVar6) {
      param_1 = 0x80000000;
    }
    uVar1 = __aeabi_ldiv0(param_1);
    return uVar1;
  }
  uVar5 = param_1 ^ param_2;
  uVar1 = param_2;
  if ((int)param_2 < 0) {
    uVar1 = -param_2;
  }
  if (uVar1 - 1 == 0) {
    if ((int)param_2 < 0) {
      param_1 = -param_1;
    }
    return param_1;
  }
  uVar4 = param_1;
  if ((int)param_1 < 0) {
    uVar4 = -param_1;
  }
  if (uVar4 <= uVar1) {
    if (uVar4 < uVar1) {
      param_1 = 0;
    }
    if (uVar4 == uVar1) {
      param_1 = (int)uVar5 >> 0x1f | 1;
    }
    return param_1;
  }
  if ((uVar1 & uVar1 - 1) == 0) {
    uVar4 = uVar4 >> (0x1fU - LZCOUNT(uVar1) & 0xff);
    if ((int)uVar5 < 0) {
      uVar4 = -uVar4;
    }
    return uVar4;
  }
  uVar2 = uVar1 << (LZCOUNT(uVar1) - LZCOUNT(uVar4) & 0xffU);
  uVar3 = 1 << (LZCOUNT(uVar1) - LZCOUNT(uVar4) & 0xffU);
  uVar1 = 0;
  while( true ) {
    if (uVar2 <= uVar4) {
      uVar4 = uVar4 - uVar2;
      uVar1 = uVar1 | uVar3;
    }
    if (uVar2 >> 1 <= uVar4) {
      uVar4 = uVar4 - (uVar2 >> 1);
      uVar1 = uVar1 | uVar3 >> 1;
    }
    if (uVar2 >> 2 <= uVar4) {
      uVar4 = uVar4 - (uVar2 >> 2);
      uVar1 = uVar1 | uVar3 >> 2;
    }
    if (uVar2 >> 3 <= uVar4) {
      uVar4 = uVar4 - (uVar2 >> 3);
      uVar1 = uVar1 | uVar3 >> 3;
    }
    bVar6 = uVar4 == 0;
    if (!bVar6) {
      uVar3 = uVar3 >> 4;
      bVar6 = uVar3 == 0;
    }
    if (bVar6) break;
    uVar2 = uVar2 >> 4;
  }
  if ((int)uVar5 < 0) {
    uVar1 = -uVar1;
  }
  return uVar1;
}

// ---- __aeabi_idivmod  @ 0x286e8
void __aeabi_idivmod(int param_1,int param_2)

{
  bool bVar1;
  
  if (param_2 != 0) {
    FUN_00028628();
    return;
  }
  bVar1 = param_1 < 0;
  if (0 < param_1) {
    param_1 = 0x7fffffff;
  }
  if (bVar1) {
    param_1 = -0x80000000;
  }
  __aeabi_ldiv0(param_1);
  return;
}

// ---- __aeabi_uldivmod  @ 0x28704
void __aeabi_uldivmod(int param_1,int param_2,int param_3,int param_4)

{
  if ((param_4 == 0) && (param_3 == 0)) {
    if (param_2 != 0 || param_1 != 0) {
      param_1 = -1;
    }
    __aeabi_ldiv0(param_1);
    return;
  }
  __gnu_uldivmod_helper();
  return;
}

// ---- __aeabi_ldiv0  @ 0x28730
void __aeabi_ldiv0(void)

{
  raise(8);
  return;
}

// ---- __popcountsi2  @ 0x2873c
int __popcountsi2(uint param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  
  iVar3 = 0;
  uVar2 = 0;
  do {
    uVar1 = uVar2 & 0xff;
    uVar2 = uVar2 + 8;
    iVar3 = iVar3 + (uint)(byte)__popcount_tab[param_1 >> uVar1 & 0xff];
  } while (uVar2 != 0x20);
  return iVar3;
}

// ---- __gnu_ldivmod_helper  @ 0x28760
void __gnu_ldivmod_helper
               (uint param_1,int param_2,undefined4 param_3,undefined4 param_4,int *param_5)

{
  uint uVar1;
  longlong lVar2;
  
  lVar2 = __divdi3();
  lVar2 = lVar2 * CONCAT44(param_4,param_3);
  uVar1 = (uint)lVar2;
  *param_5 = param_1 - uVar1;
  param_5[1] = (param_2 - (int)((ulonglong)lVar2 >> 0x20)) - (uint)(param_1 < uVar1);
  return;
}

// ---- __gnu_uldivmod_helper  @ 0x2878a
void __gnu_uldivmod_helper
               (uint param_1,int param_2,undefined4 param_3,undefined4 param_4,int *param_5)

{
  uint uVar1;
  longlong lVar2;
  
  lVar2 = __udivdi3();
  lVar2 = lVar2 * CONCAT44(param_4,param_3);
  uVar1 = (uint)lVar2;
  *param_5 = param_1 - uVar1;
  param_5[1] = (param_2 - (int)((ulonglong)lVar2 >> 0x20)) - (uint)(param_1 < uVar1);
  return;
}

// ---- _Unwind_GetCFA  @ 0x28a60
undefined4 _Unwind_GetCFA(int param_1)

{
  return *(undefined4 *)(param_1 + 0x44);
}

// ---- __gnu_Unwind_RaiseException  @ 0x28a64
undefined4 __gnu_Unwind_RaiseException(int param_1,int param_2)

{
  int iVar1;
  undefined4 local_1f8;
  undefined4 local_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 local_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 local_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 local_1b8;
  
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_2 + 0x3c);
  local_1f4 = *(undefined4 *)(param_2 + 4);
  uStack_1f0 = *(undefined4 *)(param_2 + 8);
  uStack_1ec = *(undefined4 *)(param_2 + 0xc);
  uStack_1e8 = *(undefined4 *)(param_2 + 0x10);
  local_1e4 = *(undefined4 *)(param_2 + 0x14);
  uStack_1e0 = *(undefined4 *)(param_2 + 0x18);
  uStack_1dc = *(undefined4 *)(param_2 + 0x1c);
  uStack_1d8 = *(undefined4 *)(param_2 + 0x20);
  local_1d4 = *(undefined4 *)(param_2 + 0x24);
  uStack_1d0 = *(undefined4 *)(param_2 + 0x28);
  uStack_1cc = *(undefined4 *)(param_2 + 0x2c);
  uStack_1c8 = *(undefined4 *)(param_2 + 0x30);
  local_1c4 = *(undefined4 *)(param_2 + 0x34);
  uStack_1c0 = *(undefined4 *)(param_2 + 0x38);
  uStack_1bc = *(undefined4 *)(param_2 + 0x3c);
  local_1b8 = *(undefined4 *)(param_2 + 0x40);
  local_1f8 = 0xffffffff;
  do {
    iVar1 = FUN_00028860(param_1,local_1b8);
    if (iVar1 != 0) {
      return 9;
    }
    iVar1 = (**(code **)(param_1 + 0x10))(0,param_1,&local_1f8);
  } while (iVar1 == 8);
  FUN_00028904(&local_1f8);
  if (iVar1 == 6) {
    FUN_00028964(param_1,param_2);
  }
  return 9;
}

// ---- __gnu_Unwind_ForcedUnwind  @ 0x28ac6
void __gnu_Unwind_ForcedUnwind(int param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  
  *(undefined4 *)(param_1 + 0x18) = param_3;
  uVar1 = *(undefined4 *)(param_4 + 0x3c);
  *(undefined4 *)(param_1 + 0xc) = param_2;
  *(undefined4 *)(param_4 + 0x40) = uVar1;
  FUN_0002899e(param_1,param_4,0);
  return;
}

// ---- __gnu_Unwind_Resume  @ 0x28ada
void __gnu_Unwind_Resume(int param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc);
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_1 + 0x14);
  if (iVar1 == 0) {
    iVar1 = (**(code **)(param_1 + 0x10))(2,param_1,param_2);
    if (iVar1 != 7) {
      if (iVar1 != 8) goto LAB_00028b18;
      FUN_00028964(param_1,param_2);
    }
    FUN_00028962(0,*(undefined4 *)(param_2 + 0x40));
    restore_core_regs(param_2 + 4);
  }
  else {
    FUN_0002899e(param_1,param_2,1);
  }
LAB_00028b18:
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- __gnu_Unwind_Resume_or_Rethrow  @ 0x28b1c
void __gnu_Unwind_Resume_or_Rethrow(int param_1,int param_2)

{
  if (*(int *)(param_1 + 0xc) == 0) {
    __gnu_Unwind_RaiseException();
    return;
  }
  *(undefined4 *)(param_2 + 0x40) = *(undefined4 *)(param_2 + 0x3c);
  FUN_0002899e(param_1,param_2,0);
  return;
}

// ---- _Unwind_Complete  @ 0x28b2c
void _Unwind_Complete(void)

{
  return;
}

// ---- _Unwind_DeleteException  @ 0x28b2e
void _Unwind_DeleteException(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(param_1 + 8);
  if (pcVar1 != (code *)0x0) {
    (*pcVar1)(1,param_1,param_3,pcVar1,param_4);
  }
  return;
}

// ---- _Unwind_VRS_Get  @ 0x28b3c
undefined4
_Unwind_VRS_Get(int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 *param_5)

{
  switch(param_2) {
  case 0:
    if ((param_4 == 0) && (param_3 < 0x10)) {
      *param_5 = *(undefined4 *)(param_1 + param_3 * 4 + 4);
      return 0;
    }
    break;
  case 1:
  case 3:
  case 4:
    return 1;
  }
  return 2;
}

// ---- _Unwind_VRS_Set  @ 0x28b80
undefined4
_Unwind_VRS_Set(int param_1,undefined4 param_2,uint param_3,int param_4,undefined4 *param_5)

{
  switch(param_2) {
  case 0:
    if ((param_4 == 0) && (param_3 < 0x10)) {
      *(undefined4 *)(param_1 + param_3 * 4 + 4) = *param_5;
      return 0;
    }
    break;
  case 1:
  case 3:
  case 4:
    return 1;
  }
  return 2;
}

// ---- __gnu_Unwind_Backtrace  @ 0x28bc6
int __gnu_Unwind_Backtrace(code *param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  undefined1 auStack_250 [16];
  code *local_240;
  undefined4 local_1f8;
  undefined4 local_1f4;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  undefined4 uStack_1e8;
  undefined4 local_1e4;
  undefined4 uStack_1e0;
  undefined4 uStack_1dc;
  undefined4 uStack_1d8;
  undefined4 local_1d4;
  undefined4 uStack_1d0;
  undefined4 uStack_1cc;
  undefined4 uStack_1c8;
  undefined4 local_1c4;
  undefined4 uStack_1c0;
  undefined4 uStack_1bc;
  undefined4 local_1b8;
  
  *(undefined4 *)(param_3 + 0x40) = *(undefined4 *)(param_3 + 0x3c);
  local_1f4 = *(undefined4 *)(param_3 + 4);
  uStack_1f0 = *(undefined4 *)(param_3 + 8);
  uStack_1ec = *(undefined4 *)(param_3 + 0xc);
  uStack_1e8 = *(undefined4 *)(param_3 + 0x10);
  local_1e4 = *(undefined4 *)(param_3 + 0x14);
  uStack_1e0 = *(undefined4 *)(param_3 + 0x18);
  uStack_1dc = *(undefined4 *)(param_3 + 0x1c);
  uStack_1d8 = *(undefined4 *)(param_3 + 0x20);
  local_1d4 = *(undefined4 *)(param_3 + 0x24);
  uStack_1d0 = *(undefined4 *)(param_3 + 0x28);
  uStack_1cc = *(undefined4 *)(param_3 + 0x2c);
  uStack_1c8 = *(undefined4 *)(param_3 + 0x30);
  local_1c4 = *(undefined4 *)(param_3 + 0x34);
  uStack_1c0 = *(undefined4 *)(param_3 + 0x38);
  uStack_1bc = *(undefined4 *)(param_3 + 0x3c);
  local_1b8 = *(undefined4 *)(param_3 + 0x40);
  local_1f8 = 0xffffffff;
  do {
    iVar1 = FUN_00028860(auStack_250,local_1b8);
    if (iVar1 != 0) break;
    FUN_00028bac(&local_1f8,0xc,auStack_250);
    iVar1 = (*param_1)(&local_1f8,param_2);
    if (iVar1 != 0) break;
    iVar1 = (*local_240)(8,auStack_250,&local_1f8);
    if (iVar1 == 5) goto LAB_00028c30;
  } while (iVar1 != 9);
  iVar1 = 9;
LAB_00028c30:
  FUN_00028904(&local_1f8);
  return iVar1;
}

// ---- __aeabi_unwind_cpp_pr0  @ 0x28ec8
/* WARNING: Removing unreachable block (ram,0x00028cb4) */
/* WARNING: Removing unreachable block (ram,0x00028c6e) */
/* WARNING: Removing unreachable block (ram,0x00028c72) */
/* WARNING: Removing unreachable block (ram,0x00028e84) */

undefined4 __aeabi_unwind_cpp_pr0(uint param_1,code *param_2,undefined4 param_3)

{
  ushort uVar1;
  bool bVar2;
  uint uVar3;
  uint *puVar4;
  undefined4 uVar5;
  int iVar6;
  code *pcVar7;
  uint uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  bool bVar14;
  code *pcStack_38;
  int iStack_34;
  uint *puStack_30;
  undefined1 uStack_2c;
  undefined1 uStack_2b;
  
  puStack_30 = (uint *)(*(int **)(param_2 + 0x4c) + 1);
  uVar13 = param_1 & 3;
  iStack_34 = **(int **)(param_2 + 0x4c) << 8;
  uStack_2b = 0;
  uStack_2c = 3;
  puVar10 = puStack_30;
  if (uVar13 == 2) {
    puVar10 = *(uint **)(param_2 + 0x38);
  }
  if ((*(uint *)(param_2 + 0x50) & 1) == 0) {
    pcVar7 = param_2 + 0x58;
    bVar12 = false;
LAB_00028ca4:
    do {
      while( true ) {
        if (*puVar10 == 0) goto LAB_00028e80;
        uVar11 = *puVar10;
        puVar4 = puVar10 + 1;
        uVar1 = *(ushort *)((int)puVar10 + 2);
        uVar8 = (uVar1 & 0xfffffffe) + *(int *)(param_2 + 0x48);
        uVar3 = FUN_00028b68(param_3,0xf);
        bVar14 = uVar3 < uVar8 + ((ushort)uVar11 & 0xfffffffe);
        bVar2 = uVar8 <= uVar3 && bVar14;
        uVar11 = (ushort)uVar11 & 1 | (uVar1 & 1) << 1;
        if (uVar11 != 1) break;
        if (uVar13 == 0) {
          if (bVar2) {
            uVar11 = *puVar4;
            if (puVar10[2] == 0xfffffffe) {
              return 9;
            }
            iVar6 = 1;
            pcStack_38 = pcVar7;
            if (puVar10[2] == 0xffffffff) {
LAB_00028d76:
              uVar5 = FUN_00028b68(param_3,0xd);
              *(undefined4 *)(param_2 + 0x20) = uVar5;
              if (iVar6 == 2) {
                pcVar7 = param_2 + 0x2c;
                *(code **)pcVar7 = pcStack_38;
LAB_00028e26:
                *(code **)(param_2 + 0x24) = pcVar7;
              }
              else {
                *(code **)(param_2 + 0x24) = pcStack_38;
              }
              *(uint **)(param_2 + 0x28) = puVar4;
              return 6;
            }
            uVar5 = FUN_00028952(puVar10 + 2);
            iVar6 = __cxa_type_match(param_2,uVar5,uVar11 >> 0x1f,&pcStack_38);
            if (iVar6 != 0) goto LAB_00028d76;
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_00028b68(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
LAB_00028dac:
            uVar5 = FUN_000287b4(puVar4);
            FUN_00028bac(param_3,0xf,uVar5);
            uVar5 = 0;
            pcVar7 = param_2;
            goto LAB_00028dc0;
          }
        }
        puVar10 = puVar10 + 3;
      }
      if (uVar11 != 0) {
        if (uVar11 != 2) {
          return 9;
        }
        uVar11 = *puVar4 & 0x7fffffff;
        if (uVar13 == 0) {
          if ((bVar2) && (((param_1 & 8) == 0 || (uVar11 == 0)))) {
            uVar3 = 0;
            do {
              if (uVar3 == uVar11) {
                uVar5 = FUN_00028b68(param_3,0xd);
                *(undefined4 *)(param_2 + 0x20) = uVar5;
                pcVar7 = pcStack_38;
                goto LAB_00028e26;
              }
              uVar3 = uVar3 + 1;
              pcStack_38 = pcVar7;
              uVar5 = FUN_00028952(puVar4 + uVar3);
              iVar6 = __cxa_type_match(param_2,uVar5,0,&pcStack_38);
            } while (iVar6 == 0);
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_00028b68(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
            *(undefined4 *)(param_2 + 0x30) = 4;
            *(uint *)(param_2 + 0x28) = uVar11;
            *(undefined4 *)(param_2 + 0x2c) = 0;
            *(uint **)(param_2 + 0x34) = puVar10 + 2;
            if ((int)*puVar4 < 0) {
              puVar4 = puVar4 + uVar11 + 1;
              goto LAB_00028dac;
            }
            bVar12 = true;
          }
        }
        if ((int)*puVar4 < 0) {
          puVar4 = puVar10 + 2;
        }
        puVar10 = puVar4 + uVar11 + 1;
        goto LAB_00028ca4;
      }
      puVar10 = puVar10 + 2;
    } while ((uVar13 == 0) || (uVar8 > uVar3 || !bVar14));
    pcVar7 = (code *)FUN_000287b4(puVar4);
    *(uint **)(param_2 + 0x38) = puVar10;
    iVar6 = __cxa_begin_cleanup(param_2);
    if (iVar6 == 0) {
      return 9;
    }
    uVar5 = 0xf;
  }
  else {
    bVar12 = false;
LAB_00028e80:
    iVar6 = __gnu_unwind_execute(param_3,&iStack_34);
    if (iVar6 != 0) {
      return 9;
    }
    if (!bVar12) {
      return 8;
    }
    uVar5 = FUN_00028b68(param_3,0xf);
    FUN_00028bac(param_3,0xe,uVar5);
    uVar5 = 0xf;
    pcVar7 = (code *)0x20ca5;
  }
LAB_00028dc0:
  FUN_00028bac(param_3,uVar5,pcVar7);
  return 7;
}

// ---- __aeabi_unwind_cpp_pr1  @ 0x28ecc
/* WARNING: Removing unreachable block (ram,0x00028cb4) */
/* WARNING: Removing unreachable block (ram,0x00028c5e) */
/* WARNING: Removing unreachable block (ram,0x00028e84) */

undefined4 __aeabi_unwind_cpp_pr1(uint param_1,code *param_2,undefined4 param_3)

{
  ushort uVar1;
  bool bVar2;
  uint uVar3;
  uint *puVar4;
  undefined4 uVar5;
  int iVar6;
  code *pcVar7;
  uint uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  bool bVar14;
  code *pcStack_38;
  int iStack_34;
  int *piStack_30;
  undefined1 uStack_2c;
  byte bStack_2b;
  
  piStack_30 = *(int **)(param_2 + 0x4c) + 1;
  uVar13 = param_1 & 3;
  iStack_34 = **(int **)(param_2 + 0x4c);
  bStack_2b = (byte)((uint)iStack_34 >> 0x10);
  iStack_34 = iStack_34 << 0x10;
  uStack_2c = 2;
  puVar10 = (uint *)(piStack_30 + bStack_2b);
  if (uVar13 == 2) {
    puVar10 = *(uint **)(param_2 + 0x38);
  }
  if ((*(uint *)(param_2 + 0x50) & 1) == 0) {
    pcVar7 = param_2 + 0x58;
    bVar12 = false;
LAB_00028ca4:
    do {
      while( true ) {
        if (*puVar10 == 0) goto LAB_00028e80;
        uVar11 = *puVar10;
        puVar4 = puVar10 + 1;
        uVar1 = *(ushort *)((int)puVar10 + 2);
        uVar8 = (uVar1 & 0xfffffffe) + *(int *)(param_2 + 0x48);
        uVar3 = FUN_00028b68(param_3,0xf);
        bVar14 = uVar3 < uVar8 + ((ushort)uVar11 & 0xfffffffe);
        bVar2 = uVar8 <= uVar3 && bVar14;
        uVar11 = (ushort)uVar11 & 1 | (uVar1 & 1) << 1;
        if (uVar11 != 1) break;
        if (uVar13 == 0) {
          if (bVar2) {
            uVar11 = *puVar4;
            if (puVar10[2] == 0xfffffffe) {
              return 9;
            }
            iVar6 = 1;
            pcStack_38 = pcVar7;
            if (puVar10[2] == 0xffffffff) {
LAB_00028d76:
              uVar5 = FUN_00028b68(param_3,0xd);
              *(undefined4 *)(param_2 + 0x20) = uVar5;
              if (iVar6 == 2) {
                pcVar7 = param_2 + 0x2c;
                *(code **)pcVar7 = pcStack_38;
LAB_00028e26:
                *(code **)(param_2 + 0x24) = pcVar7;
              }
              else {
                *(code **)(param_2 + 0x24) = pcStack_38;
              }
              *(uint **)(param_2 + 0x28) = puVar4;
              return 6;
            }
            uVar5 = FUN_00028952(puVar10 + 2);
            iVar6 = __cxa_type_match(param_2,uVar5,uVar11 >> 0x1f,&pcStack_38);
            if (iVar6 != 0) goto LAB_00028d76;
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_00028b68(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
LAB_00028dac:
            uVar5 = FUN_000287b4(puVar4);
            FUN_00028bac(param_3,0xf,uVar5);
            uVar5 = 0;
            pcVar7 = param_2;
            goto LAB_00028dc0;
          }
        }
        puVar10 = puVar10 + 3;
      }
      if (uVar11 != 0) {
        if (uVar11 != 2) {
          return 9;
        }
        uVar11 = *puVar4 & 0x7fffffff;
        if (uVar13 == 0) {
          if ((bVar2) && (((param_1 & 8) == 0 || (uVar11 == 0)))) {
            uVar3 = 0;
            do {
              if (uVar3 == uVar11) {
                uVar5 = FUN_00028b68(param_3,0xd);
                *(undefined4 *)(param_2 + 0x20) = uVar5;
                pcVar7 = pcStack_38;
                goto LAB_00028e26;
              }
              uVar3 = uVar3 + 1;
              pcStack_38 = pcVar7;
              uVar5 = FUN_00028952(puVar4 + uVar3);
              iVar6 = __cxa_type_match(param_2,uVar5,0,&pcStack_38);
            } while (iVar6 == 0);
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar6 = FUN_00028b68(param_3,0xd);
          if ((iVar9 == iVar6) && (puVar4 == *(uint **)(param_2 + 0x28))) {
            *(undefined4 *)(param_2 + 0x30) = 4;
            *(uint *)(param_2 + 0x28) = uVar11;
            *(undefined4 *)(param_2 + 0x2c) = 0;
            *(uint **)(param_2 + 0x34) = puVar10 + 2;
            if ((int)*puVar4 < 0) {
              puVar4 = puVar4 + uVar11 + 1;
              goto LAB_00028dac;
            }
            bVar12 = true;
          }
        }
        if ((int)*puVar4 < 0) {
          puVar4 = puVar10 + 2;
        }
        puVar10 = puVar4 + uVar11 + 1;
        goto LAB_00028ca4;
      }
      puVar10 = puVar10 + 2;
    } while ((uVar13 == 0) || (uVar8 > uVar3 || !bVar14));
    pcVar7 = (code *)FUN_000287b4(puVar4);
    *(uint **)(param_2 + 0x38) = puVar10;
    iVar6 = __cxa_begin_cleanup(param_2);
    if (iVar6 == 0) {
      return 9;
    }
    uVar5 = 0xf;
  }
  else {
    bVar12 = false;
LAB_00028e80:
    iVar6 = __gnu_unwind_execute(param_3,&iStack_34);
    if (iVar6 != 0) {
      return 9;
    }
    if (!bVar12) {
      return 8;
    }
    uVar5 = FUN_00028b68(param_3,0xf);
    FUN_00028bac(param_3,0xe,uVar5);
    uVar5 = 0xf;
    pcVar7 = (code *)0x20ca5;
  }
LAB_00028dc0:
  FUN_00028bac(param_3,uVar5,pcVar7);
  return 7;
}

// ---- __aeabi_unwind_cpp_pr2  @ 0x28ed0
/* WARNING: Removing unreachable block (ram,0x00028cba) */
/* WARNING: Removing unreachable block (ram,0x00028c5e) */
/* WARNING: Removing unreachable block (ram,0x00028e84) */

undefined4 __aeabi_unwind_cpp_pr2(uint param_1,code *param_2,undefined4 param_3)

{
  bool bVar1;
  uint uVar2;
  uint *puVar3;
  undefined4 uVar4;
  int iVar5;
  code *pcVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint *puVar10;
  uint uVar11;
  bool bVar12;
  uint uVar13;
  bool bVar14;
  code *local_38;
  int local_34;
  int *local_30;
  undefined1 local_2c;
  byte local_2b;
  
  local_30 = *(int **)(param_2 + 0x4c) + 1;
  uVar13 = param_1 & 3;
  local_34 = **(int **)(param_2 + 0x4c);
  local_2b = (byte)((uint)local_34 >> 0x10);
  local_34 = local_34 << 0x10;
  local_2c = 2;
  puVar10 = (uint *)(local_30 + local_2b);
  if (uVar13 == 2) {
    puVar10 = *(uint **)(param_2 + 0x38);
  }
  if ((*(uint *)(param_2 + 0x50) & 1) == 0) {
    pcVar6 = param_2 + 0x58;
    bVar12 = false;
LAB_00028ca4:
    do {
      while( true ) {
        uVar11 = *puVar10;
        if (uVar11 == 0) goto LAB_00028e80;
        uVar8 = puVar10[1];
        puVar3 = puVar10 + 2;
        uVar7 = (uVar8 & 0xfffffffe) + *(int *)(param_2 + 0x48);
        uVar2 = FUN_00028b68(param_3,0xf);
        bVar14 = uVar2 < uVar7 + (uVar11 & 0xfffffffe);
        bVar1 = uVar7 <= uVar2 && bVar14;
        uVar11 = uVar11 & 1 | (uVar8 & 1) << 1;
        if (uVar11 != 1) break;
        if (uVar13 == 0) {
          if (bVar1) {
            uVar11 = *puVar3;
            if (puVar10[3] == 0xfffffffe) {
              return 9;
            }
            iVar5 = 1;
            local_38 = pcVar6;
            if (puVar10[3] == 0xffffffff) {
LAB_00028d76:
              uVar4 = FUN_00028b68(param_3,0xd);
              *(undefined4 *)(param_2 + 0x20) = uVar4;
              if (iVar5 == 2) {
                pcVar6 = param_2 + 0x2c;
                *(code **)pcVar6 = local_38;
LAB_00028e26:
                *(code **)(param_2 + 0x24) = pcVar6;
              }
              else {
                *(code **)(param_2 + 0x24) = local_38;
              }
              *(uint **)(param_2 + 0x28) = puVar3;
              return 6;
            }
            uVar4 = FUN_00028952(puVar10 + 3);
            iVar5 = __cxa_type_match(param_2,uVar4,uVar11 >> 0x1f,&local_38);
            if (iVar5 != 0) goto LAB_00028d76;
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar5 = FUN_00028b68(param_3,0xd);
          if ((iVar9 == iVar5) && (puVar3 == *(uint **)(param_2 + 0x28))) {
LAB_00028dac:
            uVar4 = FUN_000287b4(puVar3);
            FUN_00028bac(param_3,0xf,uVar4);
            uVar4 = 0;
            pcVar6 = param_2;
            goto LAB_00028dc0;
          }
        }
        puVar10 = puVar10 + 4;
      }
      if (uVar11 != 0) {
        if (uVar11 != 2) {
          return 9;
        }
        uVar11 = *puVar3 & 0x7fffffff;
        if (uVar13 == 0) {
          if ((bVar1) && (((param_1 & 8) == 0 || (uVar11 == 0)))) {
            uVar2 = 0;
            do {
              if (uVar2 == uVar11) {
                uVar4 = FUN_00028b68(param_3,0xd);
                *(undefined4 *)(param_2 + 0x20) = uVar4;
                pcVar6 = local_38;
                goto LAB_00028e26;
              }
              uVar2 = uVar2 + 1;
              local_38 = pcVar6;
              uVar4 = FUN_00028952(puVar3 + uVar2);
              iVar5 = __cxa_type_match(param_2,uVar4,0,&local_38);
            } while (iVar5 == 0);
          }
        }
        else {
          iVar9 = *(int *)(param_2 + 0x20);
          iVar5 = FUN_00028b68(param_3,0xd);
          if ((iVar9 == iVar5) && (puVar3 == *(uint **)(param_2 + 0x28))) {
            *(undefined4 *)(param_2 + 0x30) = 4;
            *(uint *)(param_2 + 0x28) = uVar11;
            *(undefined4 *)(param_2 + 0x2c) = 0;
            *(uint **)(param_2 + 0x34) = puVar10 + 3;
            if ((int)*puVar3 < 0) {
              puVar3 = puVar3 + uVar11 + 1;
              goto LAB_00028dac;
            }
            bVar12 = true;
          }
        }
        if ((int)*puVar3 < 0) {
          puVar3 = puVar10 + 3;
        }
        puVar10 = puVar3 + uVar11 + 1;
        goto LAB_00028ca4;
      }
      puVar10 = puVar10 + 3;
    } while ((uVar13 == 0) || (uVar7 > uVar2 || !bVar14));
    pcVar6 = (code *)FUN_000287b4(puVar3);
    *(uint **)(param_2 + 0x38) = puVar10;
    iVar5 = __cxa_begin_cleanup(param_2);
    if (iVar5 == 0) {
      return 9;
    }
    uVar4 = 0xf;
  }
  else {
    bVar12 = false;
LAB_00028e80:
    iVar5 = __gnu_unwind_execute(param_3,&local_34);
    if (iVar5 != 0) {
      return 9;
    }
    if (!bVar12) {
      return 8;
    }
    uVar4 = FUN_00028b68(param_3,0xf);
    FUN_00028bac(param_3,0xe,uVar4);
    uVar4 = 0xf;
    pcVar6 = (code *)0x20ca5;
  }
LAB_00028dc0:
  FUN_00028bac(param_3,uVar4,pcVar6);
  return 7;
}

// ---- _Unwind_VRS_Pop  @ 0x28ed4
undefined4 _Unwind_VRS_Pop(uint *param_1,undefined4 param_2,uint param_3,uint param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  uint uVar8;
  bool bVar9;
  undefined4 auStack_1a0 [32];
  undefined1 local_120 [128];
  undefined4 local_a0 [34];
  
  switch(param_2) {
  case 0:
    if (param_4 != 0) {
      return 2;
    }
    puVar3 = (uint *)param_1[0xe];
    uVar5 = 0;
    do {
      if ((1 << (uVar5 & 0xff) & param_3 & 0xffff) != 0) {
        uVar4 = *puVar3;
        puVar3 = puVar3 + 1;
        param_1[uVar5 + 1] = uVar4;
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 != 0x10);
    if ((param_3 & 0x2000) != 0) {
      return 0;
    }
    param_1[0xe] = (uint)puVar3;
    return 0;
  case 1:
    if ((param_4 & 0xfffffffb) != 1) {
      return 2;
    }
    uVar4 = param_3 >> 0x10;
    param_3 = param_3 & 0xffff;
    uVar5 = param_3 + uVar4;
    if (param_4 == 1) {
      if (0x10 < uVar5) {
        return 2;
      }
      if (0xf < uVar4) {
        return 2;
      }
LAB_00029026:
      uVar5 = 0;
LAB_00029028:
      uVar6 = *param_1;
      if ((int)(uVar6 << 0x1f) < 0) {
        *param_1 = uVar6 & 0xfffffffe;
        if (param_4 == 5) {
          *param_1 = uVar6 & 0xfffffffe | 2;
          __gnu_Unwind_Save_VFP_D();
        }
        else {
          *param_1 = uVar6 & 0xfffffffc;
          __gnu_Unwind_Save_VFP(param_1 + 0x12);
        }
      }
    }
    else {
      if (0x20 < uVar5) {
        return 2;
      }
      if (uVar4 < 0x10) {
        if (uVar5 < 0x11) goto LAB_00029026;
        uVar5 = uVar5 - 0x10;
      }
      else {
        uVar5 = param_3;
        if (param_3 == 0) goto LAB_0002908c;
      }
      if (param_4 != 5) {
        return 2;
      }
      if (uVar4 < 0x10) goto LAB_00029028;
    }
    if ((uVar5 != 0) && ((int)(*param_1 << 0x1d) < 0)) {
      *param_1 = *param_1 & 0xfffffffb;
      __gnu_Unwind_Save_VFP_D_16_to_31(param_1 + 0x34);
    }
    if (param_4 == 1) {
      __gnu_Unwind_Save_VFP(local_a0);
      if (uVar5 == 0) goto LAB_0002908c;
    }
    else {
      if (uVar4 < 0x10) {
        __gnu_Unwind_Save_VFP_D(local_a0);
      }
      if (uVar5 == 0) goto LAB_0002908c;
      __gnu_Unwind_Save_VFP_D_16_to_31(local_120);
    }
    param_3 = 0x10 - uVar4;
LAB_0002908c:
    uVar6 = param_1[0xe];
    if (0 < (int)param_3) {
      iVar7 = param_3 << 1;
      puVar2 = (undefined4 *)(uVar6 - 4);
      while (bVar9 = iVar7 != 0, iVar7 = iVar7 + -1, bVar9) {
        puVar2 = puVar2 + 1;
        *(undefined4 *)((int)local_a0 + (uVar4 * 8 - uVar6) + (int)puVar2) = *puVar2;
      }
      uVar6 = uVar6 + param_3 * 8;
    }
    if (uVar5 != 0) {
      uVar8 = uVar4;
      if (uVar4 < 0x10) {
        uVar8 = 0x10;
      }
      iVar7 = 0;
      do {
        auStack_1a0[uVar8 * 2 + iVar7] = *(undefined4 *)(uVar6 + iVar7 * 4);
        iVar7 = iVar7 + 1;
      } while (iVar7 != uVar5 * 2);
      uVar6 = uVar6 + iVar7 * 4;
    }
    if (param_4 == 1) {
      uVar6 = uVar6 + 4;
    }
    param_1[0xe] = uVar6;
    if (param_4 == 1) {
      __gnu_Unwind_Restore_VFP(local_a0);
    }
    else {
      if (uVar4 < 0x10) {
        __gnu_Unwind_Restore_VFP_D(local_a0);
      }
      if (uVar5 != 0) {
        __gnu_Unwind_Restore_VFP_D_16_to_31(local_120);
      }
    }
    return 0;
  case 3:
    if (param_4 == 3) {
      uVar5 = param_3 & 0xffff;
      if (uVar5 + (param_3 >> 0x10) < 0x11) {
        if ((int)(*param_1 << 0x1c) < 0) {
          *param_1 = *param_1 & 0xfffffff7;
          __gnu_Unwind_Save_WMMXD(param_1 + 0x54);
        }
        iVar7 = uVar5 << 1;
        __gnu_Unwind_Save_WMMXD(local_a0);
        uVar4 = param_1[0xe];
        puVar2 = (undefined4 *)(uVar4 - 4);
        while (bVar9 = iVar7 != 0, iVar7 = iVar7 + -1, bVar9) {
          puVar2 = puVar2 + 1;
          *(undefined4 *)((int)local_a0 + ((param_3 >> 0x10) * 8 - uVar4) + (int)puVar2) = *puVar2;
        }
        param_1[0xe] = uVar4 + uVar5 * 8;
        __gnu_Unwind_Restore_WMMXD(local_a0);
        return 0;
      }
    }
    break;
  case 4:
    if ((param_4 == 0) && (param_3 < 0x11)) {
      if ((int)(*param_1 << 0x1b) < 0) {
        *param_1 = *param_1 & 0xffffffef;
        __gnu_Unwind_Save_WMMXC(param_1 + 0x74);
      }
      __gnu_Unwind_Save_WMMXC(local_a0);
      puVar2 = (undefined4 *)param_1[0xe];
      uVar5 = 0;
      do {
        if ((1 << (uVar5 & 0xff) & param_3) != 0) {
          uVar1 = *puVar2;
          puVar2 = puVar2 + 1;
          local_a0[uVar5] = uVar1;
        }
        uVar5 = uVar5 + 1;
      } while (uVar5 != 4);
      param_1[0xe] = (uint)puVar2;
      __gnu_Unwind_Restore_WMMXC(local_a0);
      return 0;
    }
  }
  return 2;
}

// ---- restore_core_regs  @ 0x290f8
undefined8 restore_core_regs(undefined8 *param_1)

{
  *(undefined4 *)(*(int *)((int)param_1 + 0x34) + -4) = *(undefined4 *)((int)param_1 + 0x3c);
  return *param_1;
}

// ---- __gnu_Unwind_Restore_VFP  @ 0x29110
undefined4 __gnu_Unwind_Restore_VFP(undefined8 *param_1)

{
  return (int)*param_1;
}

// ---- __gnu_Unwind_Save_VFP  @ 0x29118
void __gnu_Unwind_Save_VFP(undefined8 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined8 in_d2;
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 in_d6;
  undefined8 in_d7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d12;
  undefined8 unaff_d13;
  undefined8 unaff_d14;
  undefined8 unaff_d15;
  
  *param_1 = in_d0;
  param_1[1] = in_d1;
  param_1[2] = in_d2;
  param_1[3] = in_d3;
  param_1[4] = in_d4;
  param_1[5] = in_d5;
  param_1[6] = in_d6;
  param_1[7] = in_d7;
  param_1[8] = unaff_d8;
  param_1[9] = unaff_d9;
  param_1[10] = unaff_d10;
  param_1[0xb] = unaff_d11;
  param_1[0xc] = unaff_d12;
  param_1[0xd] = unaff_d13;
  param_1[0xe] = unaff_d14;
  param_1[0xf] = unaff_d15;
  return;
}

// ---- __gnu_Unwind_Restore_VFP_D  @ 0x29120
undefined4 __gnu_Unwind_Restore_VFP_D(undefined8 *param_1)

{
  return (int)*param_1;
}

// ---- __gnu_Unwind_Save_VFP_D  @ 0x29128
void __gnu_Unwind_Save_VFP_D(undefined8 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined8 in_d2;
  undefined8 in_d3;
  undefined8 in_d4;
  undefined8 in_d5;
  undefined8 in_d6;
  undefined8 in_d7;
  undefined8 unaff_d8;
  undefined8 unaff_d9;
  undefined8 unaff_d10;
  undefined8 unaff_d11;
  undefined8 unaff_d12;
  undefined8 unaff_d13;
  undefined8 unaff_d14;
  undefined8 unaff_d15;
  
  *param_1 = in_d0;
  param_1[1] = in_d1;
  param_1[2] = in_d2;
  param_1[3] = in_d3;
  param_1[4] = in_d4;
  param_1[5] = in_d5;
  param_1[6] = in_d6;
  param_1[7] = in_d7;
  param_1[8] = unaff_d8;
  param_1[9] = unaff_d9;
  param_1[10] = unaff_d10;
  param_1[0xb] = unaff_d11;
  param_1[0xc] = unaff_d12;
  param_1[0xd] = unaff_d13;
  param_1[0xe] = unaff_d14;
  param_1[0xf] = unaff_d15;
  return;
}

// ---- __gnu_Unwind_Restore_VFP_D_16_to_31  @ 0x29130
void __gnu_Unwind_Restore_VFP_D_16_to_31(void)

{
  return;
}

// ---- __gnu_Unwind_Save_VFP_D_16_to_31  @ 0x29138
void __gnu_Unwind_Save_VFP_D_16_to_31(undefined8 *param_1)

{
  undefined8 in_d16;
  undefined8 in_d17;
  undefined8 in_d18;
  undefined8 in_d19;
  undefined8 in_d20;
  undefined8 in_d21;
  undefined8 in_d22;
  undefined8 in_d23;
  undefined8 in_d24;
  undefined8 in_d25;
  undefined8 in_d26;
  undefined8 in_d27;
  undefined8 in_d28;
  undefined8 in_d29;
  undefined8 in_d30;
  undefined8 in_d31;
  
  *param_1 = in_d16;
  param_1[1] = in_d17;
  param_1[2] = in_d18;
  param_1[3] = in_d19;
  param_1[4] = in_d20;
  param_1[5] = in_d21;
  param_1[6] = in_d22;
  param_1[7] = in_d23;
  param_1[8] = in_d24;
  param_1[9] = in_d25;
  param_1[10] = in_d26;
  param_1[0xb] = in_d27;
  param_1[0xc] = in_d28;
  param_1[0xd] = in_d29;
  param_1[0xe] = in_d30;
  param_1[0xf] = in_d31;
  return;
}

// ---- __gnu_Unwind_Restore_WMMXD  @ 0x29140
int __gnu_Unwind_Restore_WMMXD(int param_1)

{
  undefined4 in_cr0;
  undefined4 in_cr1;
  undefined4 in_cr2;
  undefined4 in_cr3;
  undefined4 in_cr4;
  undefined4 in_cr5;
  undefined4 in_cr6;
  undefined4 in_cr7;
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  undefined4 in_cr12;
  undefined4 in_cr13;
  undefined4 in_cr14;
  undefined4 in_cr15;
  
  coprocessor_loadlong(1,in_cr0,param_1);
  coprocessor_loadlong(1,in_cr1,param_1 + 8);
  coprocessor_loadlong(1,in_cr2,param_1 + 0x10);
  coprocessor_loadlong(1,in_cr3,param_1 + 0x18);
  coprocessor_loadlong(1,in_cr4,param_1 + 0x20);
  coprocessor_loadlong(1,in_cr5,param_1 + 0x28);
  coprocessor_loadlong(1,in_cr6,param_1 + 0x30);
  coprocessor_loadlong(1,in_cr7,param_1 + 0x38);
  coprocessor_loadlong(1,in_cr8,param_1 + 0x40);
  coprocessor_loadlong(1,in_cr9,param_1 + 0x48);
  coprocessor_loadlong(1,in_cr10,param_1 + 0x50);
  coprocessor_loadlong(1,in_cr11,param_1 + 0x58);
  coprocessor_loadlong(1,in_cr12,param_1 + 0x60);
  coprocessor_loadlong(1,in_cr13,param_1 + 0x68);
  coprocessor_loadlong(1,in_cr14,param_1 + 0x70);
  coprocessor_loadlong(1,in_cr15,param_1 + 0x78);
  return param_1 + 0x80;
}

// ---- __gnu_Unwind_Save_WMMXD  @ 0x29184
int __gnu_Unwind_Save_WMMXD(int param_1)

{
  undefined4 in_cr0;
  undefined4 in_cr1;
  undefined4 in_cr2;
  undefined4 in_cr3;
  undefined4 in_cr4;
  undefined4 in_cr5;
  undefined4 in_cr6;
  undefined4 in_cr7;
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  undefined4 in_cr12;
  undefined4 in_cr13;
  undefined4 in_cr14;
  undefined4 in_cr15;
  
  coprocessor_storelong(1,in_cr0,param_1);
  coprocessor_storelong(1,in_cr1,param_1 + 8);
  coprocessor_storelong(1,in_cr2,param_1 + 0x10);
  coprocessor_storelong(1,in_cr3,param_1 + 0x18);
  coprocessor_storelong(1,in_cr4,param_1 + 0x20);
  coprocessor_storelong(1,in_cr5,param_1 + 0x28);
  coprocessor_storelong(1,in_cr6,param_1 + 0x30);
  coprocessor_storelong(1,in_cr7,param_1 + 0x38);
  coprocessor_storelong(1,in_cr8,param_1 + 0x40);
  coprocessor_storelong(1,in_cr9,param_1 + 0x48);
  coprocessor_storelong(1,in_cr10,param_1 + 0x50);
  coprocessor_storelong(1,in_cr11,param_1 + 0x58);
  coprocessor_storelong(1,in_cr12,param_1 + 0x60);
  coprocessor_storelong(1,in_cr13,param_1 + 0x68);
  coprocessor_storelong(1,in_cr14,param_1 + 0x70);
  coprocessor_storelong(1,in_cr15,param_1 + 0x78);
  return param_1 + 0x80;
}

// ---- __gnu_Unwind_Restore_WMMXC  @ 0x291c8
int __gnu_Unwind_Restore_WMMXC(int param_1)

{
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  
  coprocessor_load(1,in_cr8,param_1);
  coprocessor_load(1,in_cr9,param_1 + 4);
  coprocessor_load(1,in_cr10,param_1 + 8);
  coprocessor_load(1,in_cr11,param_1 + 0xc);
  return param_1 + 0x10;
}

// ---- __gnu_Unwind_Save_WMMXC  @ 0x291dc
int __gnu_Unwind_Save_WMMXC(int param_1)

{
  undefined4 in_cr8;
  undefined4 in_cr9;
  undefined4 in_cr10;
  undefined4 in_cr11;
  
  coprocessor_store(1,in_cr8,param_1);
  coprocessor_store(1,in_cr9,param_1 + 4);
  coprocessor_store(1,in_cr10,param_1 + 8);
  coprocessor_store(1,in_cr11,param_1 + 0xc);
  return param_1 + 0x10;
}

// ---- ___Unwind_RaiseException  @ 0x291f0
void ___Unwind_RaiseException
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_RaiseException(param_1,&uStack_44,param_3,0,param_3);
  return;
}

// ---- ___Unwind_Resume  @ 0x29214
void ___Unwind_Resume(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Resume(param_1,&uStack_44,param_3,0,param_3);
  return;
}

// ---- ___Unwind_Resume_or_Rethrow  @ 0x29238
void ___Unwind_Resume_or_Rethrow
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Resume_or_Rethrow(param_1,&uStack_44,param_3,0,param_3);
  return;
}

// ---- _Unwind_ForcedUnwind  @ 0x2925c
void _Unwind_ForcedUnwind(void)

{
  __gnu_Unwind_ForcedUnwind();
  return;
}

// ---- _Unwind_Backtrace  @ 0x29280
void _Unwind_Backtrace(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  uStack_44 = 0;
  uStack_40 = param_1;
  uStack_3c = param_2;
  uStack_38 = param_3;
  uStack_34 = param_4;
  __gnu_Unwind_Backtrace(param_1,param_2,&uStack_44,0,param_3);
  return;
}

// ---- __gnu_unwind_execute  @ 0x292ea
undefined4 __gnu_unwind_execute(int *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 uVar5;
  bool bVar6;
  int iVar7;
  int *piVar8;
  undefined4 uVar9;
  int local_24;
  
  bVar6 = false;
  piVar8 = param_1;
  uVar9 = param_2;
  local_24 = param_4;
LAB_000292fc:
  do {
    while( true ) {
      uVar2 = FUN_000292a4(param_2);
      if (uVar2 == 0xb0) {
        if (!bVar6) {
          _Unwind_VRS_Get(param_1,0,0xe,0,&local_24,uVar9,param_3);
          _Unwind_VRS_Set(param_1,0,0xf,0,&local_24);
        }
        return 0;
      }
      if ((uVar2 & 0x80) != 0) break;
      _Unwind_VRS_Get(param_1,0,0xd,0,&local_24,uVar9,param_3);
      iVar7 = (uVar2 & 0x3f) * 4 + 4;
      if ((uVar2 & 0x40) != 0) {
        iVar7 = -iVar7;
      }
      local_24 = local_24 + iVar7;
LAB_000293c2:
      piVar8 = &local_24;
      _Unwind_VRS_Set(param_1,0,0xd,0);
    }
    uVar4 = uVar2 & 0xf0;
    if (uVar4 == 0x80) {
      uVar4 = FUN_000292a4(param_2);
      uVar4 = uVar4 | uVar2 << 8;
      if (uVar4 == 0x8000) {
        return 9;
      }
      uVar4 = uVar4 << 4;
      iVar7 = _Unwind_VRS_Pop(param_1,0,uVar4 & 0xffff,0,piVar8);
      if (iVar7 != 0) {
        return 9;
      }
      if ((uVar4 & 0x8000) != 0) {
        bVar6 = true;
      }
      goto LAB_000292fc;
    }
    if (uVar4 == 0x90) {
      if ((uVar2 & 0xd) == 0xd) {
        return 9;
      }
      _Unwind_VRS_Get(param_1,0,uVar2 & 0xf,0,&local_24,uVar9,param_3);
      goto LAB_000293c2;
    }
    if (uVar4 == 0xa0) {
      uVar4 = 0xff0 >> (~uVar2 & 7) & 0xff0;
      if ((int)(uVar2 << 0x1c) < 0) {
        uVar4 = uVar4 | 0x4000;
      }
      uVar3 = 0;
      uVar5 = uVar3;
    }
    else if (uVar4 == 0xb0) {
      if (uVar2 == 0xb1) {
        uVar4 = FUN_000292a4(param_2);
        if (uVar4 == 0) {
          return 9;
        }
        if ((uVar4 & 0xf0) != 0) {
          return 9;
        }
        uVar3 = 0;
        uVar5 = uVar3;
      }
      else {
        if (uVar2 == 0xb2) {
          uVar4 = 2;
          _Unwind_VRS_Get(param_1,0,0xd,0,&local_24,uVar9,param_3);
          uVar2 = FUN_000292a4(param_2);
          while ((uVar2 & 0x80) != 0) {
            uVar1 = uVar4 & 0xff;
            uVar4 = uVar4 + 7;
            local_24 = local_24 + ((uVar2 & 0x7f) << uVar1);
            uVar2 = FUN_000292a4(param_2);
          }
          local_24 = ((uVar2 & 0x7f) << (uVar4 & 0xff)) + local_24 + 0x204;
          goto LAB_000293c2;
        }
        if (uVar2 == 0xb3) {
          uVar2 = FUN_000292a4(param_2);
          uVar3 = 1;
          goto LAB_000294a4;
        }
        if ((uVar2 & 0xfc) == 0xb4) {
          return 9;
        }
        uVar3 = 1;
        uVar4 = (uVar2 & 7) + 1 | 0x80000;
        uVar5 = uVar3;
      }
    }
    else if (uVar4 == 0xc0) {
      if (uVar2 == 0xc6) {
        uVar2 = FUN_000292a4(param_2);
        uVar3 = 3;
LAB_000294a4:
        uVar4 = (uVar2 & 0xf) + 1 | (uVar2 & 0xf0) << 0xc;
        uVar5 = uVar3;
      }
      else if (uVar2 == 199) {
        uVar4 = FUN_000292a4(param_2);
        if (uVar4 == 0) {
          return 9;
        }
        if ((uVar4 & 0xf0) != 0) {
          return 9;
        }
        uVar3 = 4;
        uVar5 = 0;
      }
      else {
        if ((uVar2 & 0xf8) != 0xc0) {
          if (uVar2 == 200) {
            uVar2 = FUN_000292a4(param_2);
            uVar4 = (uVar2 & 0xf0) + 0x10;
          }
          else {
            if (uVar2 != 0xc9) {
              return 9;
            }
            uVar2 = FUN_000292a4(param_2);
            uVar4 = uVar2 & 0xf0;
          }
          uVar4 = (uVar2 & 0xf) + 1 | uVar4 << 0xc;
          goto LAB_00029532;
        }
        uVar3 = 3;
        uVar4 = (uVar2 & 0xf) + 1 | 0xa0000;
        uVar5 = uVar3;
      }
    }
    else {
      if ((uVar2 & 0xf8) != 0xd0) {
        return 9;
      }
      uVar4 = (uVar2 & 7) + 1 | 0x80000;
LAB_00029532:
      uVar3 = 1;
      uVar5 = 5;
    }
    iVar7 = _Unwind_VRS_Pop(param_1,uVar3,uVar4,uVar5,piVar8);
    if (iVar7 != 0) {
      return 9;
    }
  } while( true );
}

// ---- __gnu_unwind_frame  @ 0x29548
void __gnu_unwind_frame(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  int local_14;
  int local_10;
  undefined1 local_c;
  undefined1 local_b;
  undefined2 uStack_a;
  
  iVar1 = *(int *)(param_1 + 0x4c);
  local_14 = *(int *)(iVar1 + 4) << 8;
  local_10 = iVar1 + 8;
  uStack_a = (undefined2)((uint)param_4 >> 0x10);
  _local_c = CONCAT11(*(undefined1 *)(iVar1 + 7),3);
  __gnu_unwind_execute(param_2,&local_14,3,*(undefined1 *)(iVar1 + 7),param_1);
  return;
}

// ---- _Unwind_GetRegionStart  @ 0x29572
undefined4 _Unwind_GetRegionStart(void)

{
  int iVar1;
  
  iVar1 = thunk_FUN_000292d0();
  return *(undefined4 *)(iVar1 + 0x48);
}

// ---- _Unwind_GetLanguageSpecificData  @ 0x2957c
int _Unwind_GetLanguageSpecificData(void)

{
  int iVar1;
  
  iVar1 = thunk_FUN_000292d0();
  return *(int *)(iVar1 + 0x4c) + (uint)*(byte *)(*(int *)(iVar1 + 0x4c) + 7) * 4 + 8;
}

// ---- _Unwind_GetDataRelBase  @ 0x2958e
void _Unwind_GetDataRelBase(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- _Unwind_GetTextRelBase  @ 0x29594
void _Unwind_GetTextRelBase(void)

{
                    /* WARNING: Subroutine does not return */
  abort();
}

// ---- __divdi3  @ 0x2959a
undefined8 __divdi3(uint param_1,uint param_2,uint param_3,uint param_4)

{
  longlong lVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int extraout_r1;
  uint uVar5;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  int extraout_r1_04;
  int extraout_r1_05;
  int extraout_r1_06;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  bool bVar13;
  
  if ((int)param_2 < 0) {
    bVar13 = param_1 != 0;
    param_1 = -param_1;
    param_2 = -param_2 - (uint)bVar13;
    uVar7 = 0xffffffff;
  }
  else {
    uVar7 = 0;
  }
  if ((int)param_4 < 0) {
    bVar13 = param_3 != 0;
    param_3 = -param_3;
    param_4 = -param_4 - (uint)bVar13;
    uVar7 = ~uVar7;
  }
  if (param_4 == 0) {
    if (param_3 <= param_2) {
      if (param_3 == 0) {
        param_3 = __udivsi3(1,0);
      }
      iVar6 = LZCOUNT(param_3);
      if (iVar6 == 0) {
        iVar2 = param_2 - param_3;
        uVar8 = 1;
      }
      else {
        param_3 = param_3 << iVar6;
        uVar5 = param_2 >> (0x20U - iVar6 & 0xff);
        uVar12 = param_1 >> (0x20U - iVar6 & 0xff);
        uVar8 = param_3 >> 0x10;
        param_1 = param_1 << iVar6;
        iVar2 = __udivsi3(uVar5,uVar8);
        uVar12 = uVar12 | param_2 << iVar6;
        uVar3 = (param_3 & 0xffff) * iVar2;
        __aeabi_uidivmod(uVar5,uVar8);
        uVar5 = uVar12 >> 0x10 | extraout_r1_01 << 0x10;
        iVar6 = iVar2;
        if (uVar5 < uVar3) {
          bVar13 = CARRY4(uVar5,param_3);
          uVar5 = uVar5 + param_3;
          iVar6 = iVar2 + -1;
          if ((!bVar13) && (uVar5 < uVar3)) {
            uVar5 = uVar5 + param_3;
            iVar6 = iVar2 + -2;
          }
        }
        uVar10 = __udivsi3(uVar5 - uVar3,uVar8);
        uVar11 = uVar10 * (param_3 & 0xffff);
        __aeabi_uidivmod(uVar5 - uVar3,uVar8);
        uVar5 = uVar12 & 0xffff | extraout_r1_02 << 0x10;
        uVar8 = uVar10;
        if (uVar5 < uVar11) {
          bVar13 = CARRY4(uVar5,param_3);
          uVar5 = uVar5 + param_3;
          uVar8 = uVar10 - 1;
          if ((!bVar13) && (uVar5 < uVar11)) {
            uVar5 = uVar5 + param_3;
            uVar8 = uVar10 - 2;
          }
        }
        iVar2 = uVar5 - uVar11;
        uVar8 = uVar8 | iVar6 << 0x10;
      }
      uVar3 = param_3 >> 0x10;
      iVar4 = __udivsi3(iVar2,uVar3);
      uVar12 = (param_3 & 0xffff) * iVar4;
      __aeabi_uidivmod(iVar2,uVar3);
      uVar5 = param_1 >> 0x10 | extraout_r1_03 << 0x10;
      iVar6 = iVar4;
      if (uVar5 < uVar12) {
        bVar13 = CARRY4(uVar5,param_3);
        uVar5 = uVar5 + param_3;
        iVar6 = iVar4 + -1;
        if ((!bVar13) && (uVar5 < uVar12)) {
          uVar5 = uVar5 + param_3;
          iVar6 = iVar4 + -2;
        }
      }
      uVar10 = __udivsi3(uVar5 - uVar12,uVar3);
      uVar11 = (param_3 & 0xffff) * uVar10;
      __aeabi_uidivmod(uVar5 - uVar12,uVar3);
      uVar12 = param_1 & 0xffff | extraout_r1_04 << 0x10;
      uVar5 = uVar10;
      if (uVar12 < uVar11) {
        uVar5 = uVar10 - 1;
        if ((!CARRY4(uVar12,param_3)) && (uVar12 + param_3 < uVar11)) {
          uVar5 = uVar10 - 2;
        }
      }
      uVar5 = uVar5 | iVar6 << 0x10;
      goto LAB_000298ba;
    }
    iVar6 = LZCOUNT(param_3);
    if (iVar6 != 0) {
      param_3 = param_3 << iVar6;
      param_2 = param_1 >> (0x20U - iVar6 & 0xff) | param_2 << iVar6;
      param_1 = param_1 << iVar6;
    }
    uVar8 = param_3 >> 0x10;
    iVar2 = __udivsi3(param_2,uVar8);
    uVar12 = (param_3 & 0xffff) * iVar2;
    __aeabi_uidivmod(param_2,uVar8);
    uVar5 = param_1 >> 0x10 | extraout_r1 << 0x10;
    iVar6 = iVar2;
    if (uVar5 < uVar12) {
      bVar13 = CARRY4(uVar5,param_3);
      uVar5 = uVar5 + param_3;
      iVar6 = iVar2 + -1;
      if ((!bVar13) && (uVar5 < uVar12)) {
        uVar5 = uVar5 + param_3;
        iVar6 = iVar2 + -2;
      }
    }
    uVar3 = __udivsi3(uVar5 - uVar12,uVar8);
    uVar10 = (param_3 & 0xffff) * uVar3;
    __aeabi_uidivmod(uVar5 - uVar12,uVar8);
    uVar8 = param_1 & 0xffff | extraout_r1_00 << 0x10;
    uVar5 = uVar3;
    if (uVar8 < uVar10) {
      uVar5 = uVar3 - 1;
      if ((!CARRY4(uVar8,param_3)) && (uVar8 + param_3 < uVar10)) {
        uVar5 = uVar3 - 2;
      }
    }
    uVar5 = uVar5 | iVar6 << 0x10;
LAB_000298b8:
    uVar8 = 0;
  }
  else {
    if (param_4 <= param_2) {
      iVar6 = LZCOUNT(param_4);
      if (iVar6 != 0) {
        uVar8 = 0x20 - iVar6;
        uVar12 = param_3 >> (uVar8 & 0xff) | param_4 << iVar6;
        uVar5 = param_2 >> (uVar8 & 0xff);
        uVar3 = uVar12 >> 0x10;
        uVar8 = param_2 << iVar6 | param_1 >> (uVar8 & 0xff);
        iVar4 = __udivsi3(uVar5,uVar3);
        uVar10 = (uVar12 & 0xffff) * iVar4;
        __aeabi_uidivmod(uVar5,uVar3);
        uVar5 = uVar8 >> 0x10 | extraout_r1_05 << 0x10;
        iVar2 = iVar4;
        if (uVar5 < uVar10) {
          bVar13 = CARRY4(uVar5,uVar12);
          uVar5 = uVar5 + uVar12;
          iVar2 = iVar4 + -1;
          if ((!bVar13) && (uVar5 < uVar10)) {
            uVar5 = uVar5 + uVar12;
            iVar2 = iVar4 + -2;
          }
        }
        uVar11 = __udivsi3(uVar5 - uVar10,uVar3);
        uVar9 = uVar11 * (uVar12 & 0xffff);
        __aeabi_uidivmod(uVar5 - uVar10,uVar3);
        uVar8 = uVar8 & 0xffff | extraout_r1_06 << 0x10;
        uVar5 = uVar11;
        if (uVar8 < uVar9) {
          bVar13 = CARRY4(uVar8,uVar12);
          uVar8 = uVar8 + uVar12;
          uVar5 = uVar11 - 1;
          if ((!bVar13) && (uVar8 < uVar9)) {
            uVar8 = uVar8 + uVar12;
            uVar5 = uVar11 - 2;
          }
        }
        uVar5 = uVar5 | iVar2 << 0x10;
        lVar1 = (ulonglong)uVar5 * (ulonglong)(param_3 << iVar6);
        uVar12 = (uint)((ulonglong)lVar1 >> 0x20);
        if ((uVar8 - uVar9 < uVar12) ||
           ((uVar12 == uVar8 - uVar9 && (param_1 << iVar6 < (uint)lVar1)))) {
          uVar5 = uVar5 - 1;
        }
        goto LAB_000298b8;
      }
      if ((param_4 < param_2) || (param_3 <= param_1)) {
        uVar8 = 0;
        uVar5 = 1;
        goto LAB_000298ba;
      }
    }
    uVar8 = 0;
    uVar5 = uVar8;
  }
LAB_000298ba:
  if (uVar7 != 0) {
    bVar13 = uVar5 != 0;
    uVar5 = -uVar5;
    uVar8 = -uVar8 - (uint)bVar13;
  }
  return CONCAT44(uVar8,uVar5);
}

// ---- __udivdi3  @ 0x298cc
undefined8 __udivdi3(uint param_1,uint param_2,uint param_3,uint param_4)

{
  longlong lVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int extraout_r1;
  int extraout_r1_00;
  int extraout_r1_01;
  int extraout_r1_02;
  int extraout_r1_03;
  int extraout_r1_04;
  int extraout_r1_05;
  int extraout_r1_06;
  int iVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  bool bVar12;
  
  if (param_4 == 0) {
    if (param_3 <= param_2) {
      uVar9 = param_1;
      uVar6 = param_2;
      uVar10 = param_3;
      if (param_3 == 0) {
        param_3 = __udivsi3(1,0,0,0,param_1,param_2,0);
      }
      iVar5 = LZCOUNT(param_3);
      if (iVar5 == 0) {
        iVar2 = param_2 - param_3;
        uVar6 = 1;
      }
      else {
        param_3 = param_3 << iVar5;
        uVar7 = 0x20 - iVar5;
        uVar8 = param_2 >> (uVar7 & 0xff);
        uVar11 = param_1 >> (uVar7 & 0xff);
        param_1 = param_1 << iVar5;
        uVar3 = param_3 >> 0x10;
        iVar2 = __udivsi3(uVar8,uVar3,uVar7,iVar5,uVar9,uVar6,uVar10);
        uVar11 = uVar11 | param_2 << iVar5;
        uVar6 = (param_3 & 0xffff) * iVar2;
        __aeabi_uidivmod(uVar8,uVar3);
        uVar9 = uVar11 >> 0x10 | extraout_r1_01 << 0x10;
        iVar5 = iVar2;
        if (uVar9 < uVar6) {
          bVar12 = CARRY4(uVar9,param_3);
          uVar9 = uVar9 + param_3;
          iVar5 = iVar2 + -1;
          if ((!bVar12) && (uVar9 < uVar6)) {
            uVar9 = uVar9 + param_3;
            iVar5 = iVar2 + -2;
          }
        }
        uVar10 = __udivsi3(uVar9 - uVar6,uVar3);
        uVar7 = (param_3 & 0xffff) * uVar10;
        __aeabi_uidivmod(uVar9 - uVar6,uVar3);
        uVar9 = uVar11 & 0xffff | extraout_r1_02 << 0x10;
        uVar6 = uVar10;
        if (uVar9 < uVar7) {
          bVar12 = CARRY4(uVar9,param_3);
          uVar9 = uVar9 + param_3;
          uVar6 = uVar10 - 1;
          if ((!bVar12) && (uVar9 < uVar7)) {
            uVar9 = uVar9 + param_3;
            uVar6 = uVar10 - 2;
          }
        }
        iVar2 = uVar9 - uVar7;
        uVar6 = uVar6 | iVar5 << 0x10;
      }
      uVar7 = param_3 >> 0x10;
      iVar4 = __udivsi3(iVar2,uVar7);
      uVar10 = (param_3 & 0xffff) * iVar4;
      __aeabi_uidivmod(iVar2,uVar7);
      uVar9 = param_1 >> 0x10 | extraout_r1_03 << 0x10;
      iVar5 = iVar4;
      if (uVar9 < uVar10) {
        bVar12 = CARRY4(uVar9,param_3);
        uVar9 = uVar9 + param_3;
        iVar5 = iVar4 + -1;
        if ((!bVar12) && (uVar9 < uVar10)) {
          uVar9 = uVar9 + param_3;
          iVar5 = iVar4 + -2;
        }
      }
      uVar8 = __udivsi3(uVar9 - uVar10,uVar7);
      uVar3 = (param_3 & 0xffff) * uVar8;
      __aeabi_uidivmod(uVar9 - uVar10,uVar7);
      uVar10 = param_1 & 0xffff | extraout_r1_04 << 0x10;
      uVar9 = uVar8;
      if (uVar10 < uVar3) {
        uVar9 = uVar8 - 1;
        if ((!CARRY4(uVar10,param_3)) && (uVar10 + param_3 < uVar3)) {
          uVar9 = uVar8 - 2;
        }
      }
      uVar9 = uVar9 | iVar5 << 0x10;
      goto LAB_00029b98;
    }
    iVar5 = LZCOUNT(param_3);
    uVar6 = param_3;
    uVar9 = param_1;
    uVar10 = param_2;
    if (iVar5 != 0) {
      uVar6 = param_3 << iVar5;
      uVar10 = param_1 >> (0x20U - iVar5 & 0xff) | param_2 << iVar5;
      uVar9 = param_1 << iVar5;
    }
    uVar7 = uVar6 >> 0x10;
    iVar2 = __udivsi3(uVar10,uVar7,param_3,iVar5,param_1,param_2,param_3);
    uVar8 = (uVar6 & 0xffff) * iVar2;
    __aeabi_uidivmod(uVar10,uVar7);
    uVar10 = uVar9 >> 0x10 | extraout_r1 << 0x10;
    iVar5 = iVar2;
    if (uVar10 < uVar8) {
      bVar12 = CARRY4(uVar10,uVar6);
      uVar10 = uVar10 + uVar6;
      iVar5 = iVar2 + -1;
      if ((!bVar12) && (uVar10 < uVar8)) {
        uVar10 = uVar10 + uVar6;
        iVar5 = iVar2 + -2;
      }
    }
    uVar3 = __udivsi3(uVar10 - uVar8,uVar7);
    uVar11 = (uVar6 & 0xffff) * uVar3;
    __aeabi_uidivmod(uVar10 - uVar8,uVar7);
    uVar10 = uVar9 & 0xffff | extraout_r1_00 << 0x10;
    uVar9 = uVar3;
    if (uVar10 < uVar11) {
      uVar9 = uVar3 - 1;
      if ((!CARRY4(uVar10,uVar6)) && (uVar10 + uVar6 < uVar11)) {
        uVar9 = uVar3 - 2;
      }
    }
    uVar9 = uVar9 | iVar5 << 0x10;
LAB_00029b96:
    uVar6 = 0;
  }
  else {
    if (param_4 <= param_2) {
      iVar5 = LZCOUNT(param_4);
      if (iVar5 != 0) {
        uVar9 = 0x20 - iVar5;
        uVar6 = param_2 >> (uVar9 & 0xff);
        uVar7 = param_3 >> (uVar9 & 0xff) | param_4 << iVar5;
        uVar8 = uVar7 >> 0x10;
        uVar10 = param_2 << iVar5 | param_1 >> (uVar9 & 0xff);
        iVar4 = __udivsi3(uVar6,uVar8,param_3,param_4 << iVar5,param_1,param_2,param_3);
        uVar3 = (uVar7 & 0xffff) * iVar4;
        __aeabi_uidivmod(uVar6,uVar8);
        uVar9 = uVar10 >> 0x10 | extraout_r1_05 << 0x10;
        iVar2 = iVar4;
        if (uVar9 < uVar3) {
          bVar12 = CARRY4(uVar9,uVar7);
          uVar9 = uVar9 + uVar7;
          iVar2 = iVar4 + -1;
          if ((!bVar12) && (uVar9 < uVar3)) {
            uVar9 = uVar9 + uVar7;
            iVar2 = iVar4 + -2;
          }
        }
        iVar4 = uVar9 - uVar3;
        uVar6 = __udivsi3(iVar4,uVar8);
        uVar3 = (uVar7 & 0xffff) * uVar6;
        __aeabi_uidivmod(iVar4,uVar8);
        uVar10 = uVar10 & 0xffff | extraout_r1_06 << 0x10;
        uVar9 = uVar6;
        if (uVar10 < uVar3) {
          bVar12 = CARRY4(uVar10,uVar7);
          uVar10 = uVar10 + uVar7;
          uVar9 = uVar6 - 1;
          if ((!bVar12) && (uVar10 < uVar3)) {
            uVar10 = uVar10 + uVar7;
            uVar9 = uVar6 - 2;
          }
        }
        uVar9 = uVar9 | iVar2 << 0x10;
        lVar1 = (ulonglong)uVar9 * (ulonglong)(param_3 << iVar5);
        uVar6 = (uint)((ulonglong)lVar1 >> 0x20);
        if ((uVar10 - uVar3 < uVar6) ||
           ((uVar6 == uVar10 - uVar3 && (param_1 << iVar5 < (uint)lVar1)))) {
          uVar9 = uVar9 - 1;
        }
        goto LAB_00029b96;
      }
      if ((param_4 < param_2) || (param_3 <= param_1)) {
        uVar9 = 1;
        uVar6 = 0;
        goto LAB_00029b98;
      }
    }
    uVar9 = 0;
    uVar6 = uVar9;
  }
LAB_00029b98:
  return CONCAT44(uVar6,uVar9);
}
