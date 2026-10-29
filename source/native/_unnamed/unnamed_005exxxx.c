// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 36 functions

// ---- FUN_005e0208  @ 0x5e0208
void FUN_005e0208(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964d00,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964d08,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964d10,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e0444  @ 0x5e0444
void FUN_005e0444(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964d34,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964d3c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964d44,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e1210  @ 0x5e1210
void FUN_005e1210(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    FUN_007c51b0(&g_apkPath);
    FUN_007985bc(&g_apkPath,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_005e13c0  @ 0x5e13c0
void FUN_005e13c0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964d60,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964d68,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964d70,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e1474  @ 0x5e1474
void FUN_005e1474(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964d80,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964d88,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964d90,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e1710  @ 0x5e1710
void FUN_005e1710(_JNIEnv *param_1,undefined4 param_2,int param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  char cVar1;
  _jarray *p_Var2;
  int iVar3;
  int iVar4;
  _jstring *p_Var5;
  char *pcVar6;
  undefined4 uVar7;
  int local_44;
  
  __android_log_print(3,"JniHelper","JNI EXCEPTION: Attempting to append trace messages");
  if (param_3 == 0) {
    __android_log_print(3,"JniHelper",
                        "JNI EXCEPTION: Skipping append of exception trace messages; nothing to append because exception is null"
                       );
  }
  else {
    __android_log_print(3,"JniHelper","JNI EXCEPTION: Start Stack Trace Analysis...");
    p_Var2 = (_jarray *)FUN_002eb500(param_1,param_3,param_5);
    iVar3 = FUN_00546d70(param_1);
    if (iVar3 != 0) {
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION DETECTED: _append_exception_trace_messages -> a_jni_env.CallObjectMethod(...)"
                         );
      FUN_00546d7a(param_1);
      __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    }
    iVar3 = _JNIEnv::GetArrayLength(param_1,p_Var2);
    iVar4 = FUN_00546d70(param_1);
    if (iVar4 != 0) {
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION DETECTED: _append_exception_trace_messages -> a_jni_env.GetArrayLength(...)"
                         );
      FUN_00546d7a(param_1);
      __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    }
    p_Var5 = (_jstring *)FUN_002eb500(param_1,param_3,param_6);
    iVar4 = FUN_00546d70(param_1);
    if (iVar4 != 0) {
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION DETECTED: _append_exception_trace_messages -> a_jni_env.CallObjectMethod(...)"
                         );
      FUN_00546d7a(param_1);
      __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    }
    pcVar6 = (char *)_JNIEnv::GetStringUTFChars(param_1,p_Var5,(uchar *)0x0);
    iVar4 = FUN_00546d70(param_1);
    if (iVar4 != 0) {
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION DETECTED: _append_exception_trace_messages -> a_jni_env.GetStringUTFChars(...)"
                         );
      FUN_00546d7a(param_1);
      __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    }
    cVar1 = FUN_007c5238(param_2);
    if (cVar1 == '\x01') {
      FUN_007c5e70(param_2,pcVar6);
    }
    else {
      FUN_007c6320(param_2,"\nCaused by: ");
      FUN_007c6320(param_2,pcVar6);
    }
    _JNIEnv::ReleaseStringUTFChars(param_1,p_Var5,pcVar6);
    FUN_002eb49c(param_1,p_Var5);
    iVar4 = FUN_00546d70(param_1);
    if (iVar4 != 0) {
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION DETECTED: _append_exception_trace_messages -> After examining the top of the trace."
                         );
      FUN_00546d7a(param_1);
      __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    }
    __android_log_print(3,"JniHelper","JNI EXCEPTION: Append stack trace messages if there are any."
                       );
    if (0 < iVar3) {
      for (local_44 = 0; local_44 < iVar3; local_44 = local_44 + 1) {
        uVar7 = _JNIEnv::GetObjectArrayElement(param_1,(_jobjectArray *)p_Var2,local_44);
        p_Var5 = (_jstring *)FUN_002eb500(param_1,uVar7,param_7);
        pcVar6 = (char *)_JNIEnv::GetStringUTFChars(param_1,p_Var5,(uchar *)0x0);
        FUN_007c6320(param_2,"\n    ");
        FUN_007c6320(param_2,pcVar6);
        _JNIEnv::ReleaseStringUTFChars(param_1,p_Var5,pcVar6);
        FUN_002eb49c(param_1,p_Var5);
        FUN_002eb49c(param_1,uVar7);
      }
    }
    iVar4 = FUN_00546d70(param_1);
    if (iVar4 != 0) {
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION DETECTED: _append_exception_trace_messages -> Found after appending stack trace messages if there are any"
                         );
      FUN_00546d7a(param_1);
      __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    }
    __android_log_print(3,"JniHelper","JNI EXCEPTION: Appending cause... if any");
    iVar4 = FUN_002eb500(param_1,param_3,param_4);
    if ((0 < iVar3) && (iVar4 != 0)) {
      FUN_005e1710(param_1,param_2,iVar4,param_4,param_5,param_6,param_7);
    }
    __android_log_print(3,"JniHelper","JNI EXCEPTION: Trace Analysis completed.");
    iVar3 = FUN_007c505c(param_2);
    if (iVar3 != 0) {
      uVar7 = FUN_007c5300(param_2);
      __android_log_print(6,"JniHelper",&DAT_008358d8,uVar7);
    }
  }
  return;
}

// ---- FUN_005e1ae0  @ 0x5e1ae0
undefined4 FUN_005e1ae0(_JNIEnv *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_r3;
  undefined1 auStack_28 [4];
  undefined4 local_24;
  _jthrowable *local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_20 = (_jthrowable *)FUN_00546d70(param_1);
  if (local_20 != (_jthrowable *)0x0) {
    __android_log_print(6,"JniHelper","JNI EXCEPTION DETECTED");
    FUN_00546d7a(param_1);
    __android_log_print(6,"JniHelper","JNI EXCEPTION CLEARED");
    local_1c = cocos2d::JniHelper::findClass("java/lang/Throwable");
    local_18 = FUN_002eb4d8(param_1,local_1c,"getCause","()Ljava/lang/Throwable;");
    local_14 = FUN_002eb4d8(param_1,local_1c,"getStackTrace","()[Ljava/lang/StackTraceElement;");
    local_10 = FUN_002eb4d8(param_1,local_1c,"toString","()Ljava/lang/String;");
    local_c = cocos2d::JniHelper::findClass("java/lang/StackTraceElement");
    local_24 = 0;
    iVar1 = FUN_005e1ae0(param_1);
    if (iVar1 == 0) {
      local_24 = FUN_002eb4d8(param_1,local_c,"toString","()Ljava/lang/String;");
    }
    else {
      __android_log_print(6,"JniHelper","java/lang/StackTraceElement class NOT FOUND!!!");
      __android_log_print(6,"JniHelper",
                          "JNI EXCEPTION CLEARED WHILE ANALYZING EXCEPTION!!! WARNING EXCEPTION INCEPTION HAS OCCURRED!!!"
                         );
    }
    __android_log_print(3,"JniHelper","JNI EXCEPTION ATTEMPTING TRACE ANALYSIS");
    FUN_007c51b0(auStack_28);
    FUN_005e1710(param_1,auStack_28,local_20,local_18,local_14,local_10,local_24);
    uVar2 = FUN_007c5300(auStack_28);
    __android_log_print(6,"JniHelper","JNI EXCEPTION DETECTED:\n%s",uVar2);
    __android_log_print(3,"JniHelper","JNI EXCEPTION COMPLETED TRACE ANALYSIS");
    FUN_007c5914(auStack_28);
  }
  if (local_20 == (_jthrowable *)0x0) {
    uVar2 = 0;
  }
  else {
    _JNIEnv::Throw(param_1,local_20);
    uVar2 = extraout_r3;
  }
  return uVar2;
}

// ---- FUN_005e1cbc  @ 0x5e1cbc
void FUN_005e1cbc(void)

{
  _JavaVM *this;
  
  this = (_JavaVM *)cocos2d::JniHelper::getJavaVM();
  _JavaVM::DetachCurrentThread(this);
  return;
}

// ---- FUN_005e1cd4  @ 0x5e1cd4
undefined1 FUN_005e1cd4(_JNIEnv **param_1)

{
  _JavaVM *p_Var1;
  int iVar2;
  undefined1 local_9;
  
  local_9 = 0;
  p_Var1 = (_JavaVM *)cocos2d::JniHelper::getJavaVM();
  iVar2 = _JavaVM::GetEnv(p_Var1,param_1,0x10006);
  if (iVar2 == -2) {
    pthread_key_create(&DAT_00964dac,(__destr_function *)0x5e1cbd);
    p_Var1 = (_JavaVM *)cocos2d::JniHelper::getJavaVM();
    iVar2 = _JavaVM::AttachCurrentThread(p_Var1,param_1,(void *)0x0);
    if (iVar2 < 0) {
      __android_log_print(3,"JniHelper",&DAT_008358d8,
                          "Failed to get the environment using AttachCurrentThread()");
    }
    else {
      pthread_getspecific(DAT_00964dac);
      local_9 = 1;
    }
  }
  else if (iVar2 == 0) {
    local_9 = 1;
  }
  else {
    __android_log_print(3,"JniHelper",&DAT_008358d8,"Failed to get the environment using GetEnv()");
  }
  return local_9;
}

// ---- FUN_005e1dac  @ 0x5e1dac
int FUN_005e1dac(char *param_1,_JNIEnv *param_2)

{
  char cVar1;
  int iVar2;
  _JNIEnv *local_10;
  int local_c;
  
  local_c = 0;
  local_10 = param_2;
  iVar2 = FUN_005e1ae0(param_2);
  if (iVar2 != 0) {
    __android_log_print(6,"JniHelper",
                        "JNI EXCEPTION: Cleared unhandled JNI exception in getClassID_");
  }
  local_c = cocos2d::JniHelper::findClass(param_1);
  if (local_c == 0) {
    if ((local_10 == (_JNIEnv *)0x0) && (cVar1 = FUN_005e1cd4(&local_10), cVar1 != '\x01')) {
      __android_log_print(6,"JniHelper","Failed to get env while attempting a find class call");
    }
    else {
      local_c = _JNIEnv::FindClass(local_10,param_1);
      if (local_c == 0) {
        __android_log_print(3,"JniHelper","Failed to find class of %s",param_1);
        __android_log_print(3,"JniHelper",
                            "Clearing JNI exception occurred attempting call to FindClass");
        iVar2 = FUN_005e1ae0(param_2);
        if (iVar2 != 0) {
          __android_log_print(6,"JniHelper",
                              "JNI EXCEPTION: Cleared unhandled JNI exception in getClassID_ from given jenv"
                             );
        }
        __android_log_print(3,"JniHelper",
                            "Attempting to find class using globally cached cache loader.");
        local_c = cocos2d::JniHelper::findClass(param_1);
      }
    }
  }
  return local_c;
}

// ---- FUN_005e1ecc  @ 0x5e1ecc
undefined1
FUN_005e1ecc(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined1 local_15;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 0;
  local_14 = 0;
  local_15 = 0;
  cVar1 = FUN_005e1cd4(&local_14);
  if (cVar1 == '\x01') {
    local_c = FUN_005e1dac(param_2,local_14);
    iVar2 = FUN_00546d24(local_14,local_c,param_3,param_4);
    if (iVar2 != 0) {
      param_1[1] = local_c;
      *param_1 = local_14;
      param_1[2] = iVar2;
      local_15 = 1;
    }
  }
  else {
    __android_log_print(3,"JniHelper","Calling Static Method getEnv(): Environment is null");
  }
  return local_15;
}

// ---- FUN_005e1f64  @ 0x5e1f64
undefined1
FUN_005e1f64(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  int iVar2;
  undefined1 local_15;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = 0;
  local_14 = 0;
  local_15 = 0;
  cVar1 = FUN_005e1cd4(&local_14);
  if (cVar1 == '\x01') {
    local_c = FUN_005e1dac(param_2,local_14);
    iVar2 = FUN_002eb4d8(local_14,local_c,param_3,param_4);
    if (iVar2 != 0) {
      param_1[1] = local_c;
      *param_1 = local_14;
      param_1[2] = iVar2;
      local_15 = 1;
    }
  }
  return local_15;
}

// ---- FUN_005e1fe0  @ 0x5e1fe0
undefined4 FUN_005e1fe0(undefined4 param_1,_jstring *param_2)

{
  char cVar1;
  undefined1 auStack_18 [4];
  _JNIEnv *local_14;
  undefined1 auStack_10 [4];
  char *local_c;
  
  if (param_2 == (_jstring *)0x0) {
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(param_1,&DAT_00835ca0,auStack_10);
    FUN_0079a3fc(auStack_10);
  }
  else {
    local_14 = (_JNIEnv *)0x0;
    cVar1 = FUN_005e1cd4(&local_14);
    if (cVar1 == '\x01') {
      local_c = (char *)_JNIEnv::GetStringUTFChars(local_14,param_2,(uchar *)0x0);
      FUN_0079a3f4(auStack_18);
      FUN_007c6a60(auStack_10,local_c,auStack_18);
      FUN_0079a3fc(auStack_18);
      _JNIEnv::ReleaseStringUTFChars(local_14,param_2,local_c);
      FUN_007c51c0(param_1,auStack_10);
      FUN_007c5914(auStack_10);
    }
    else {
      FUN_0079a3f4(auStack_10);
      FUN_007c6a60(param_1,0,auStack_10);
      FUN_0079a3fc(auStack_10);
    }
  }
  return param_1;
}

// ---- FUN_005e3478  @ 0x5e3478
bool FUN_005e3478(__normal_iterator<char*,std::string> *param_1,
                 __normal_iterator<char*,std::string> *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__gnu_cxx::__normal_iterator<char*,std::string>::base(param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__gnu_cxx::__normal_iterator<char*,std::string>::base(param_2);
  return iVar2 == *piVar1;
}

// ---- FUN_005e35b0  @ 0x5e35b0
void FUN_005e35b0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964db4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964dbc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964dc4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e3a2c  @ 0x5e3a2c
void FUN_005e3a2c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964dd4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964ddc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964de4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e3fe4  @ 0x5e3fe4
void FUN_005e3fe4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964df4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964dfc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964e04,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e4060  @ 0x5e4060
long FUN_005e4060(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_005e5a66  @ 0x5e5a66
void FUN_005e5a66(int param_1)

{
  uint uVar1;
  int iVar2;
  undefined4 *puStack_18;
  undefined4 *puStack_14;
  
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x18) = *(undefined4 *)(param_1 + 0x1c);
  memset((void *)(param_1 + 0x20),0,0x20);
  *(undefined4 *)(param_1 + 0x14) = 0;
  puStack_18 = *(undefined4 **)(param_1 + 0x40);
  if (*(int *)(param_1 + 0x40) == 0) {
    puStack_14 = (undefined4 *)0x0;
  }
  else {
    puStack_14 = *(undefined4 **)(*(int *)(param_1 + 0x40) + 0x10);
  }
  while (puStack_18 != (undefined4 *)0x0) {
    if ((puStack_18[3] == 0) && (puStack_18[4] == 0)) {
      free((void *)**(undefined4 **)(*(int *)(param_1 + 0x40) + 8));
      free(*(void **)(*(int *)(param_1 + 0x40) + 8));
      *(undefined4 *)(param_1 + 0x40) = 0;
    }
    else {
      if ((undefined4 *)
          (*(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 0x10) -
          *(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 0x14)) == puStack_18) {
        *(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 0x10) =
             *(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 0x14) + puStack_18[3];
      }
      if (puStack_18[3] == 0) {
        *(undefined4 *)(param_1 + 0x40) = puStack_18[4];
      }
      else {
        *(undefined4 *)(*(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 0x14) + puStack_18[3] + 8)
             = puStack_18[4];
      }
      if (puStack_18[4] != 0) {
        *(undefined4 *)(*(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 0x14) + puStack_18[4] + 4)
             = puStack_18[3];
      }
      uVar1 = *(int *)(*(int *)(*(int *)(param_1 + 0x40) + 8) + 4) - 1U & puStack_18[9];
      iVar2 = uVar1 * 0xc + **(int **)(*(int *)(param_1 + 0x40) + 8);
      *(int *)(iVar2 + 4) = *(int *)(iVar2 + 4) + -1;
      if (*(undefined4 **)(uVar1 * 0xc + **(int **)(*(int *)(param_1 + 0x40) + 8)) == puStack_18 + 2
         ) {
        *(undefined4 *)(uVar1 * 0xc + **(int **)(*(int *)(param_1 + 0x40) + 8)) = puStack_18[6];
      }
      if (puStack_18[5] != 0) {
        *(undefined4 *)(puStack_18[5] + 0x10) = puStack_18[6];
      }
      if (puStack_18[6] != 0) {
        *(undefined4 *)(puStack_18[6] + 0xc) = puStack_18[5];
      }
      iVar2 = *(int *)(*(int *)(param_1 + 0x40) + 8);
      *(int *)(iVar2 + 0xc) = *(int *)(iVar2 + 0xc) + -1;
    }
    free((void *)*puStack_18);
    free(puStack_18);
    puStack_18 = puStack_14;
    if (puStack_14 == (undefined4 *)0x0) {
      puStack_14 = (undefined4 *)0x0;
    }
    else {
      puStack_14 = (undefined4 *)puStack_14[4];
    }
  }
  *(undefined4 *)(param_1 + 0x40) = 0;
  return;
}

// ---- FUN_005e5c28  @ 0x5e5c28
void FUN_005e5c28(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964e1c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964e24,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964e2c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e5da0  @ 0x5e5da0
void FUN_005e5da0(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0)) {
    glDisable(0xbe2);
  }
  else {
    glEnable(0xbe2);
    glBlendFunc(param_1,param_2);
  }
  return;
}

// ---- FUN_005e600c  @ 0x5e600c
void FUN_005e600c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964e3c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964e44,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964e4c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e73e4  @ 0x5e73e4
void FUN_005e73e4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964e68,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964e70,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964e78,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e7fbc  @ 0x5e7fbc
void FUN_005e7fbc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964e8c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964e94,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964e9c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005e8038  @ 0x5e8038
undefined4 *
FUN_005e8038(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  *param_4 = param_1;
  param_4[1] = param_2;
  param_4[2] = param_3;
  return param_4;
}

// ---- FUN_005ea524  @ 0x5ea524
void FUN_005ea524(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964eac,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964eb4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964ebc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ebe50  @ 0x5ebe50
void FUN_005ebe50(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964ecc,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964ed4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964edc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ec940  @ 0x5ec940
void FUN_005ec940(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964eec,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964ef4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964efc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ec9bc  @ 0x5ec9bc
int FUN_005ec9bc(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_005ee338  @ 0x5ee338
void FUN_005ee338(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964f0c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964f14,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964f1c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ee3b4  @ 0x5ee3b4
undefined4 FUN_005ee3b4(void)

{
  return 1;
}

// ---- FUN_005ee3bc  @ 0x5ee3bc
int FUN_005ee3bc(int *param_1,int param_2)

{
  bool bVar1;
  int iVar2;
  
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(param_1);
    iVar2 = *param_1;
    bVar1 = (bool)hasExclusiveAccess(param_1);
  } while (!bVar1);
  *param_1 = iVar2 + param_2;
  DataMemoryBarrier(0x1f);
  return iVar2;
}

// ---- FUN_005ee3e8  @ 0x5ee3e8
int FUN_005ee3e8(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  *param_1 = *param_1 + param_2;
  return iVar1;
}

// ---- FUN_005ee408  @ 0x5ee408
undefined4 FUN_005ee408(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_005ee3b4();
  if (iVar1 == 0) {
    uVar2 = FUN_005ee3e8(param_1,param_2);
  }
  else {
    uVar2 = FUN_005ee3bc(param_1,param_2);
  }
  return uVar2;
}

// ---- FUN_005ee9d4  @ 0x5ee9d4
undefined4 FUN_005ee9d4(byte *param_1,int param_2)

{
  byte bVar1;
  bool bVar2;
  undefined4 uVar3;
  byte *local_4;
  
  local_4 = param_1 + param_2;
  switch(param_2) {
  case 1:
    goto switchD_005ee9f2_caseD_1;
  case 2:
    goto switchD_005ee9f2_caseD_2;
  case 3:
    goto switchD_005ee9f2_caseD_3;
  case 4:
    local_4 = local_4 + -1;
    if (((char)*local_4 < '\0') && (*local_4 < 0xc0)) {
      bVar2 = false;
    }
    else {
      bVar2 = true;
    }
    if (bVar2) {
      return 0;
    }
switchD_005ee9f2_caseD_3:
    local_4 = local_4 + -1;
    if (((char)*local_4 < '\0') && (*local_4 < 0xc0)) {
      bVar2 = false;
    }
    else {
      bVar2 = true;
    }
    if (bVar2) {
      uVar3 = 0;
    }
    else {
switchD_005ee9f2_caseD_2:
      bVar1 = local_4[-1];
      if (((char)bVar1 < '\0') && (bVar1 < 0xc0)) {
        bVar2 = false;
      }
      else {
        bVar2 = true;
      }
      if (bVar2) {
        uVar3 = 0;
      }
      else {
        switch(*param_1) {
        case 0xe0:
          if (bVar1 < 0xa0) {
            return 0;
          }
          break;
        default:
          if (-1 < (char)bVar1) {
            return 0;
          }
          break;
        case 0xed:
          if (0x9f < bVar1) {
            return 0;
          }
          break;
        case 0xf0:
          if (bVar1 < 0x90) {
            return 0;
          }
          break;
        case 0xf4:
          if (0x8f < bVar1) {
            return 0;
          }
        }
switchD_005ee9f2_caseD_1:
        if (((char)*param_1 < '\0') && (*param_1 < 0xc2)) {
          uVar3 = 0;
        }
        else if (*param_1 < 0xf5) {
          uVar3 = 1;
        }
        else {
          uVar3 = 0;
        }
      }
    }
    return uVar3;
  default:
    return 0;
  }
}

// ---- FUN_005ef48c  @ 0x5ef48c
void FUN_005ef48c(vector<unsigned_short,std::allocator<unsigned_short>> *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int local_20;
  vector<unsigned_short,std::allocator<unsigned_short>> *local_1c;
  int local_14;
  undefined4 local_10;
  undefined4 local_c;
  
  local_20 = param_2;
  local_1c = param_1;
  local_14 = std::vector<unsigned_short,std::allocator<unsigned_short>>::size(param_1);
  if ((local_20 < local_14) && (-1 < local_20)) {
    local_10 = std::vector<unsigned_short,std::allocator<unsigned_short>>::begin(local_1c);
    uVar1 = __gnu_cxx::
            __normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
            ::operator+((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                         *)&local_10,&local_20);
    local_c = std::vector<unsigned_short,std::allocator<unsigned_short>>::begin(local_1c);
    uVar2 = __gnu_cxx::
            __normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
            ::operator+((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                         *)&local_c,&local_14);
    std::vector<unsigned_short,std::allocator<unsigned_short>>::erase(local_1c,uVar1,uVar2);
  }
  return;
}
