// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 65 functions

// ---- FUN_00610728  @ 0x610728
void FUN_00610728(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00966680,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00966688,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00966690,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_00610d08  @ 0x610d08
CCPoint * FUN_00610d08(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_00610e28  @ 0x610e28
void FUN_00610e28(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009666a0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009666a8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009666b0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_00610ea4  @ 0x610ea4
uint FUN_00610ea4(byte *param_1)

{
  size_t sVar1;
  uint uVar2;
  byte *local_1c;
  uint local_14;
  
  sVar1 = strlen((char *)param_1);
  local_14 = 0;
  for (local_1c = param_1; local_1c < param_1 + sVar1; local_1c = local_1c + 1) {
    uVar2 = toupper((uint)*local_1c);
    local_14 = uVar2 & 0xff ^ local_14 * 0x1000193;
  }
  return local_14;
}

// ---- FUN_00610f2c  @ 0x610f2c
undefined4 FUN_00610f2c(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  undefined1 auStack_10 [4];
  int local_c;
  
  piVar1 = (int *)cocos2d::CCFileUtils::sharedFileUtils();
  (**(code **)(*piVar1 + 0x18))(param_1,piVar1,param_2);
  local_c = FUN_007c5380(param_1,"assets/",0);
  if (local_c == 0) {
    FUN_007c6728(auStack_10,param_1,7,0xffffffff);
    FUN_007c52e8(param_1,auStack_10);
    FUN_007c5914(auStack_10);
  }
  return param_1;
}

// ---- FUN_00611404  @ 0x611404
void FUN_00611404(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009666c0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009666c8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009666d0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009666e0);
    FUN_007985bc(&DAT_009666e0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_006115f4  @ 0x6115f4
_JNIEnv * FUN_006115f4(void)

{
  int iVar1;
  _JNIEnv *local_14;
  _JavaVM *local_10;
  int local_c;
  
  local_10 = (_JavaVM *)cocos2d::JniHelper::getJavaVM();
  if (local_10 == (_JavaVM *)0x0) {
    __android_log_print(3,"libSimpleAudioEngine",&DAT_00839a44,
                        "Failed to get JNIEnv. JniHelper::getJavaVM() is NULL");
    local_14 = (_JNIEnv *)0x0;
  }
  else {
    local_14 = (_JNIEnv *)0x0;
    local_c = _JavaVM::GetEnv(local_10,&local_14,0x10006);
    if (local_c == -2) {
      iVar1 = _JavaVM::AttachCurrentThread(local_10,&local_14,(void *)0x0);
      if (iVar1 < 0) {
        __android_log_print(3,"libSimpleAudioEngine",&DAT_00839a44,
                            "Failed to get the environment using AttachCurrentThread()");
        local_14 = (_JNIEnv *)0x0;
      }
    }
    else if (local_c != 0) {
      if (local_c == -3) {
        __android_log_print(3,"libSimpleAudioEngine",&DAT_00839a44,
                            "JNI interface version 1.6 not supported");
      }
      __android_log_print(3,"libSimpleAudioEngine",&DAT_00839a44,
                          "Failed to get the environment using GetEnv()");
      local_14 = (_JNIEnv *)0x0;
    }
  }
  return local_14;
}

// ---- FUN_006116ec  @ 0x6116ec
int FUN_006116ec(_JNIEnv *param_1)

{
  int iVar1;
  
  iVar1 = _JNIEnv::FindClass(param_1,"org/cocos2dx/lib/Cocos2dxHelper");
  if (iVar1 == 0) {
    __android_log_print(3,"libSimpleAudioEngine","Failed to find class of %s",
                        "org/cocos2dx/lib/Cocos2dxHelper");
  }
  return iVar1;
}

// ---- FUN_006117f0  @ 0x6117f0
void FUN_006117f0(void)

{
  _JNIEnv *p_Var1;
  _jobject *p_Var2;
  AudioPlayerController *this;
  int *piVar3;
  _func_void_float *p_Var4;
  float extraout_s0;
  _CkConfig a_Stack_40 [56];
  
  if (DAT_00966718 == '\0') {
    DAT_00966718 = '\x01';
    __android_log_print(3,"libSimpleAudioEngine","CRICKET: STARTING CONFIG");
    p_Var1 = (_JNIEnv *)FUN_006115f4();
    p_Var2 = (_jobject *)cocos2d::JniHelper::getActivity();
    _CkConfig::_CkConfig(a_Stack_40,p_Var1,p_Var2);
    CkInit(a_Stack_40);
    if (DAT_00966760 == (AudioPlayerController *)0x0) {
      this = operator_new(0x14);
      AudioPlayerController::AudioPlayerController(this);
      DAT_00966760 = this;
      piVar3 = (int *)cocos2d::CCDirector::sharedDirector();
      p_Var4 = (_func_void_float *)(**(code **)(*piVar3 + 0x30))(piVar3);
      cocos2d::CCScheduler::scheduleSelector(p_Var4,(CCObject *)0x14,extraout_s0,true);
    }
    DAT_0096671c = CkBank::newBank("da2sound16.ckb",1,0,0);
    __android_log_print(3,"libSimpleAudioEngine","CRICKET INIT: COMPLETED");
  }
  return;
}

// ---- FUN_006143d8  @ 0x6143d8
void FUN_006143d8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009666e8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009666f0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009666f8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    std::list<CkSound*,std::allocator<CkSound*>>::list
              ((list<CkSound*,std::allocator<CkSound*>> *)&DAT_00966728);
    FUN_007985bc(&DAT_00966728,0x6114b5,&DAT_00943000,&DAT_00943000,uVar2);
    std::map<int,CkSound*,std::less<int>,std::allocator<std::pair<int_const,CkSound*>>>::map
              ((map<int,CkSound*,std::less<int>,std::allocator<std::pair<int_const,CkSound*>>> *)
               &DAT_00966730);
    FUN_007985bc(&DAT_00966730,0x6143a9,&DAT_00943000);
    std::map<CkSound*,int,std::less<CkSound*>,std::allocator<std::pair<CkSound*const,int>>>::map
              ((map<CkSound*,int,std::less<CkSound*>,std::allocator<std::pair<CkSound*const,int>>> *
               )&DAT_00966748);
    FUN_007985bc(&DAT_00966748,0x6143c1,&DAT_00943000);
  }
  return;
}

// ---- FUN_006144e8  @ 0x6144e8
undefined4 FUN_006144e8(int *param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(*param_1 + 0x861c);
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[1] != 0) {
      (*Curl_cfree)();
      puVar1[1] = 0;
    }
    *puVar1 = 0;
    if (puVar1[2] != -1) {
      close(puVar1[2]);
    }
    puVar1[2] = 0xffffffff;
  }
  return 0;
}

// ---- FUN_00614524  @ 0x614524
undefined4 FUN_00614524(int *param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)(*param_1 + 0x861c);
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[1] != 0) {
      (*Curl_cfree)();
      puVar1[1] = 0;
    }
    *puVar1 = 0;
    if (puVar1[2] != -1) {
      close(puVar1[2]);
    }
    puVar1[2] = 0xffffffff;
  }
  return 0;
}

// ---- FUN_00614c88  @ 0x614c88
void FUN_00614c88(undefined1 *param_1,int param_2)

{
  char cVar1;
  undefined1 uVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  
  uVar5 = 0;
  iVar4 = 0;
  do {
    for (iVar3 = 0;
        (cVar1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"[iVar3],
        cVar1 != '\0' && (*(char *)(param_2 + iVar4) != cVar1)); iVar3 = iVar3 + 1) {
    }
    if (cVar1 == *(char *)(param_2 + iVar4)) {
      uVar5 = iVar3 + uVar5 * 0x40;
    }
    else if (*(char *)(param_2 + iVar4) == '=') {
      uVar5 = uVar5 << 6;
    }
    iVar4 = iVar4 + 1;
  } while (iVar4 != 4);
  uVar2 = curlx_ultouc(uVar5 & 0xff);
  param_1[2] = uVar2;
  uVar2 = curlx_ultouc((uVar5 & 0xffff) >> 8);
  param_1[1] = uVar2;
  uVar2 = curlx_ultouc((uVar5 & 0xffffff) >> 0x10);
  *param_1 = uVar2;
  return;
}

// ---- FUN_00614ef8  @ 0x614ef8
void FUN_00614ef8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  byte *pbVar1;
  uint uVar2;
  
  pbVar1 = (byte *)curl_maprintf("%s:%d",param_1,param_2,param_1,param_4);
  if (pbVar1 != (byte *)0x0) {
    while( true ) {
      uVar2 = (uint)*pbVar1;
      if (uVar2 == 0x3a || uVar2 == 0) break;
      *pbVar1 = (byte)*(undefined2 *)(_tolower_tab_ + (uVar2 + 1) * 2);
      pbVar1 = pbVar1 + 1;
    }
  }
  return;
}

// ---- FUN_006154ec  @ 0x6154ec
void FUN_006154ec(char *param_1,undefined4 param_2,int param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  bool bVar3;
  longlong lVar4;
  longlong lVar5;
  
  lVar1 = CONCAT44(param_4,param_3);
  if ((int)(uint)(param_3 == 0) <= param_4) {
    lVar4 = __aeabi_ldivmod(param_3,param_4,0xe10,0);
    if ((int)((ulonglong)lVar4 >> 0x20) < (int)(uint)((uint)lVar4 < 100)) {
      lVar5 = lVar4 * -0xe10 + lVar1;
      lVar5 = __aeabi_ldivmod((int)lVar5,(int)((ulonglong)lVar5 >> 0x20),0x3c,0);
      curl_msnprintf(param_1,9,"%2lld:%02lld:%02lld",
                     (int)((ulonglong)lVar5 >> 0x20) * -0x3c - (int)lVar5,lVar4,lVar5,
                     lVar5 * -0x3c + lVar4 * -0xe10 + lVar1);
    }
    else {
      lVar4 = __aeabi_ldivmod(param_3,param_4,0x15180,0);
      iVar2 = (int)((ulonglong)lVar4 >> 0x20);
      bVar3 = (uint)lVar4 < 1000;
      if (iVar2 < (int)(uint)bVar3) {
        lVar1 = lVar4 * -0x15180 + lVar1;
        __aeabi_ldivmod((int)lVar1,(int)((ulonglong)lVar1 >> 0x20),0xe10,0,lVar4);
        curl_msnprintf(param_1,9,"%3lldd %02lldh");
      }
      else {
        curl_msnprintf(param_1,9,"%7lldd",iVar2 - (uint)bVar3,lVar4);
      }
    }
    return;
  }
  strcpy(param_1,"--:--:--");
  return;
}

// ---- FUN_00615608  @ 0x615608
undefined4 FUN_00615608(uint param_1,uint param_2,undefined4 param_3)

{
  uint uVar1;
  char *pcVar2;
  undefined4 uVar3;
  uint uVar4;
  
  uVar4 = 0;
  if ((int)(-(uint)(99999 < param_1) - param_2) < 0 ==
      (SBORROW4(0,param_2) != SBORROW4(-param_2,(uint)(99999 < param_1)))) {
    pcVar2 = "%5lld";
    uVar1 = param_2;
  }
  else if ((int)(-(uint)(0x9c3fff < param_1) - param_2) < 0 ==
           (SBORROW4(0,param_2) != SBORROW4(-param_2,(uint)(0x9c3fff < param_1)))) {
    uVar4 = param_1 >> 10 | param_2 << 0x16;
    uVar1 = (int)param_2 >> 10;
    pcVar2 = "%4lldk";
    param_1 = uVar4;
  }
  else {
    uVar1 = (int)param_2 >> 0x14;
    if ((int)param_2 < (int)(uint)(param_1 < 0x6400000)) {
      uVar4 = param_1 >> 0x14 | param_2 << 0xc;
      pcVar2 = "%2lld.%0lldM";
      param_1 = param_1 & 0xfffff;
      uVar3 = 0x19999;
LAB_006156aa:
      __aeabi_ldivmod(param_1,0,uVar3,0,uVar4,uVar1);
      curl_msnprintf(param_3,6,pcVar2);
      return param_3;
    }
    if ((int)((param_2 - 2) - (uint)(param_1 < 0x71000000)) < 0 ==
        (SBORROW4(param_2,2) != SBORROW4(param_2 - 2,(uint)(param_1 < 0x71000000)))) {
      uVar1 = (int)param_2 >> 0x1e;
      if ((int)param_2 < 0x19) {
        uVar4 = param_1 >> 0x1e | param_2 << 2;
        param_1 = param_1 & 0x3fffffff;
        uVar3 = 0x6666666;
        pcVar2 = "%2lld.%0lldG";
        goto LAB_006156aa;
      }
      if ((int)param_2 < 0x9c4) {
        uVar4 = param_1 >> 0x1e | param_2 << 2;
        pcVar2 = "%4lldG";
        param_1 = uVar4;
      }
      else {
        uVar4 = (int)param_2 >> 0x1f;
        uVar1 = uVar4;
        if ((int)param_2 < 0x271000) {
          pcVar2 = "%4lldT";
          param_1 = (int)param_2 >> 8;
        }
        else {
          pcVar2 = "%4lldP";
          param_1 = (int)param_2 >> 0x12;
        }
      }
    }
    else {
      uVar4 = param_1 >> 0x14 | param_2 << 0xc;
      pcVar2 = "%4lldM";
      param_1 = uVar4;
    }
  }
  curl_msnprintf(param_3,6,pcVar2,uVar4,param_1,uVar1);
  return param_3;
}

// ---- FUN_00615e9c  @ 0x615e9c
size_t FUN_00615e9c(int *param_1,void *param_2,size_t param_3,undefined4 param_4)

{
  size_t sVar1;
  FILE *pFVar2;
  int iVar3;
  
  iVar3 = *param_1;
  if (*(int *)(iVar3 + 4) == 2) {
    if ((code *)param_1[3] == (code *)0x0) {
      return 0;
    }
    sVar1 = (*(code *)param_1[3])(param_2,1,param_3,*(undefined4 *)(iVar3 + 8),param_4);
  }
  else {
    if (param_1[2] == 0) {
      pFVar2 = fopen(*(char **)(iVar3 + 8),"rb");
      param_1[2] = (int)pFVar2;
      if (pFVar2 == (FILE *)0x0) {
        return 0xffffffff;
      }
    }
    sVar1 = fread(param_2,1,param_3,(FILE *)param_1[2]);
  }
  if (sVar1 == 0) {
    if ((FILE *)param_1[2] != (FILE *)0x0) {
      fclose((FILE *)param_1[2]);
      param_1[2] = 0;
    }
    *param_1 = *(int *)*param_1;
  }
  return sVar1;
}

// ---- FUN_00615efc  @ 0x615efc
undefined4 FUN_00615efc(void)

{
  code *pcVar1;
  char *__filename;
  undefined4 uVar2;
  
  __filename = (char *)(*Curl_cstrdup)();
  pcVar1 = Curl_cstrdup;
  if (__filename == (char *)0x0) {
    uVar2 = 0;
  }
  else {
    basename(__filename);
    uVar2 = (*pcVar1)();
    (*Curl_cfree)(__filename);
  }
  return uVar2;
}

// ---- FUN_00615f34  @ 0x615f34
undefined4 FUN_00615f34(undefined4 *param_1,uint param_2,char *param_3,size_t param_4,uint *param_5)

{
  undefined4 *puVar1;
  void *__dest;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  stat sStack_88;
  
  puVar1 = (undefined4 *)(*Curl_cmalloc)(0x10);
  if (puVar1 == (undefined4 *)0x0) {
LAB_00615ffc:
    uVar3 = 0x1b;
  }
  else {
    *puVar1 = 0;
    if (param_2 < 2) {
      if (param_4 == 0) {
        param_4 = strlen(param_3);
      }
      __dest = (void *)(*Curl_cmalloc)(param_4 + 1);
      puVar1[2] = __dest;
      if (__dest == (void *)0x0) {
        (*Curl_cfree)(puVar1);
        goto LAB_00615ffc;
      }
      memcpy(__dest,param_3,param_4);
      puVar1[3] = param_4;
      *(undefined1 *)(puVar1[2] + param_4) = 0;
    }
    else {
      puVar1[2] = param_3;
    }
    puVar1[1] = param_2;
    if ((undefined4 *)*param_1 != (undefined4 *)0x0) {
      *(undefined4 *)*param_1 = puVar1;
    }
    *param_1 = puVar1;
    uVar3 = 0;
    if (param_5 != (uint *)0x0) {
      if (param_2 == 3) {
        iVar2 = curl_strequal(&DAT_0080e257,puVar1[2]);
        if (iVar2 == 0) {
          iVar2 = stat((char *)puVar1[2],&sStack_88);
          if (iVar2 == 0) {
            uVar4 = *param_5;
            *param_5 = uVar4 + sStack_88.st_blksize;
            param_5[1] = param_5[1] + sStack_88.st_blocks + (uint)CARRY4(uVar4,sStack_88.st_blksize)
            ;
            return 0;
          }
          return 0;
        }
      }
      else {
        uVar4 = *param_5;
        *param_5 = uVar4 + param_4;
        param_5[1] = param_5[1] + (uint)CARRY4(uVar4,param_4);
      }
      uVar3 = 0;
    }
  }
  return uVar3;
}

// ---- FUN_00616018  @ 0x616018
void FUN_00616018(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 auStack_101c [4096];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  curl_mvsnprintf(auStack_101c,0x1000,param_3);
  FUN_00615f34(param_1,0,auStack_101c,0,param_2);
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- FUN_0061607c  @ 0x61607c
void * FUN_0061607c(char *param_1,size_t param_2)

{
  void *pvVar1;
  int iVar2;
  
  if (param_2 == 0) {
    if (param_1 == (char *)0x0) {
      pvVar1 = (void *)(*Curl_cstrdup)(&DAT_00801f93);
      return pvVar1;
    }
    param_2 = strlen(param_1);
    iVar2 = 1;
  }
  else {
    iVar2 = 0;
  }
  pvVar1 = (void *)(*Curl_cmalloc)(iVar2 + param_2);
  if ((pvVar1 != (void *)0x0) && (memcpy(pvVar1,param_1,param_2), iVar2 != 0)) {
    *(undefined1 *)((int)pvVar1 + param_2) = 0;
  }
  return pvVar1;
}

// ---- FUN_00616cdc  @ 0x616cdc
void FUN_00616cdc(int param_1)

{
  if (*(int *)(param_1 + 0x20) != 0) {
    (*Curl_cfree)();
  }
  if (*(int *)(param_1 + 0x10) != 0) {
    (*Curl_cfree)();
  }
  if (*(int *)(param_1 + 0xc) != 0) {
    (*Curl_cfree)();
  }
  if (*(int *)(param_1 + 4) != 0) {
    (*Curl_cfree)();
  }
  if (*(int *)(param_1 + 8) != 0) {
    (*Curl_cfree)();
  }
  if (*(int *)(param_1 + 0x2c) != 0) {
    (*Curl_cfree)();
  }
  if (*(int *)(param_1 + 0x28) != 0) {
    (*Curl_cfree)();
  }
  (*Curl_cfree)(param_1);
  return;
}

// ---- FUN_00616d2c  @ 0x616d2c
void FUN_00616d2c(int *param_1,undefined4 param_2)

{
  int iVar1;
  
  if (*param_1 != 0) {
    (*Curl_cfree)();
  }
  iVar1 = (*Curl_cstrdup)(param_2);
  *param_1 = iVar1;
  return;
}

// ---- FUN_00616d58  @ 0x616d58
void FUN_00616d58(int param_1)

{
  char *pcVar1;
  undefined1 *puVar2;
  char *pcVar3;
  char *pcVar4;
  char *pcVar5;
  undefined *puVar6;
  
  if (*(char *)(param_1 + 0x32) == '\0') {
    pcVar1 = "";
  }
  else {
    pcVar1 = "#HttpOnly_";
  }
  if (*(char *)(param_1 + 0x24) == '\0') {
    puVar2 = &DAT_00801f93;
  }
  else if (*(char **)(param_1 + 0x10) == (char *)0x0) {
    puVar2 = &DAT_00801f93;
  }
  else if (**(char **)(param_1 + 0x10) == '.') {
    puVar2 = &DAT_00801f93;
  }
  else {
    puVar2 = &DAT_008076a6;
  }
  pcVar3 = *(char **)(param_1 + 0x10);
  if (pcVar3 == (char *)0x0) {
    pcVar3 = "unknown";
  }
  if (*(char *)(param_1 + 0x24) == '\0') {
    pcVar5 = "FALSE";
  }
  else {
    pcVar5 = "TRUE";
  }
  puVar6 = *(undefined **)(param_1 + 0xc);
  if (puVar6 == (undefined *)0x0) {
    puVar6 = &DAT_00800fc6;
  }
  if (*(char *)(param_1 + 0x30) == '\0') {
    pcVar4 = "FALSE";
  }
  else {
    pcVar4 = "TRUE";
  }
  curl_maprintf("%s%s%s\t%s\t%s\t%s\t%lld\t%s\t%s",pcVar1,puVar2,pcVar3,pcVar5,puVar6,pcVar4);
  return;
}

// ---- FUN_00617b4c  @ 0x617b4c
undefined4 FUN_00617b4c(uint *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  uint uVar3;
  
  uVar1 = *param_1 & param_1[2];
  uVar3 = 4;
  if (-1 < (int)(uVar1 << 0x1d)) {
    if ((int)(uVar1 << 0x1e) < 0) {
      uVar3 = 2;
    }
    else {
      uVar3 = 8;
      if (-1 < (int)(uVar1 << 0x1c)) {
        if (-1 < (int)(uVar1 << 0x1a)) {
          if ((uVar1 & 1) == 0) {
            param_1[1] = 0x40000000;
            uVar2 = 0;
          }
          else {
            uVar2 = 1;
            param_1[1] = 1;
          }
          goto LAB_00617b86;
        }
        uVar3 = 0x20;
      }
    }
  }
  param_1[1] = uVar3;
  uVar2 = 1;
LAB_00617b86:
  param_1[2] = 0;
  return uVar2;
}

// ---- FUN_00617b8c  @ 0x617b8c
undefined1 FUN_00617b8c(int *param_1)

{
  int iVar1;
  int iVar2;
  
  iVar2 = *param_1;
  iVar1 = *(int *)(iVar2 + 0x90);
  if (*(char *)(iVar2 + 0x2b0) == '\0') {
    return 0;
  }
  if ((399 < iVar1) &&
     ((*(int *)(iVar2 + 0x8608) == 0 && *(int *)(iVar2 + 0x860c) == 0 ||
      (iVar1 != 0x1a0 || *(int *)(iVar2 + 0x22c) != 1)))) {
    if (iVar1 != 0x197 && iVar1 != 0x191) {
      return 1;
    }
    if (iVar1 == 0x191) {
      if ((char)param_1[0x6f] == '\0') {
        return 1;
      }
    }
    else if ((iVar1 == 0x197) && (*(char *)((int)param_1 + 0x1bd) == '\0')) {
      return 1;
    }
    return *(undefined1 *)(iVar2 + 0x85ac);
  }
  return 0;
}

// ---- FUN_00617c24  @ 0x617c24
bool FUN_00617c24(int param_1,int param_2)

{
  if (*(int *)(param_1 + 0x230) != 2) {
    if (*(int *)(param_1 + 0x230) == 1) {
      return false;
    }
    if (*(int *)(param_2 + 0x118) != 0xb) {
      if (*(int *)(param_2 + 0x118) != 10) {
        return *(int *)(param_1 + 0x85e0) != 10;
      }
      return false;
    }
  }
  return true;
}

// ---- FUN_00617c70  @ 0x617c70
undefined4 FUN_00617c70(int param_1,int param_2,size_t param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  
  uVar3 = param_3 + *(int *)(param_2 + 0x58);
  if (uVar3 < *(uint *)(param_1 + 0x508)) {
LAB_00617ce6:
    memcpy(*(void **)(param_2 + 0x54),*(void **)(param_2 + 0x60),param_3);
    iVar4 = *(int *)(param_2 + 0x54);
    *(size_t *)(param_2 + 0x54) = iVar4 + param_3;
    *(size_t *)(param_2 + 0x58) = *(int *)(param_2 + 0x58) + param_3;
    *(undefined1 *)(iVar4 + param_3) = 0;
    return 0;
  }
  if (uVar3 < 0x19001) {
    uVar2 = *(uint *)(param_1 + 0x508) << 1;
    iVar4 = *(int *)(param_1 + 0x504);
    iVar5 = *(int *)(param_2 + 0x54);
    uVar3 = uVar3 * 3 >> 1;
    if (uVar3 < uVar2) {
      uVar3 = uVar2;
    }
    iVar1 = (*Curl_crealloc)(iVar4,uVar3,uVar2,Curl_crealloc,param_4);
    if (iVar1 != 0) {
      *(int *)(param_1 + 0x504) = iVar1;
      *(uint *)(param_1 + 0x508) = uVar3;
      *(int *)(param_2 + 0x54) = iVar1 + (iVar5 - iVar4);
      goto LAB_00617ce6;
    }
    Curl_failf(param_1,"Failed to alloc memory for big header!");
  }
  else {
    Curl_failf(param_1,"Avoided giant realloc for header (max is %d)!",0x19000);
  }
  return 0x1b;
}

// ---- FUN_00617d10  @ 0x617d10
uint FUN_00617d10(void *param_1,int param_2,int param_3,int *param_4)

{
  uint __n;
  int iVar1;
  int iVar2;
  int iVar3;
  uint __n_00;
  
  iVar3 = *(int *)(*param_4 + 0x861c);
  if (*(int *)(iVar3 + 8) == 0 && *(int *)(iVar3 + 0xc) == 0) {
    __n_00 = 0;
  }
  else {
    __n_00 = param_2 * param_3;
    *(bool *)(*param_4 + 0x10f) = *(int *)(iVar3 + 0x58) == 1;
    __n = *(uint *)(iVar3 + 8);
    iVar1 = *(int *)(iVar3 + 0xc);
    if ((int)(-(uint)(__n_00 < __n) - iVar1) < 0 ==
        (SBORROW4(0,iVar1) != SBORROW4(-iVar1,(uint)(__n_00 < __n)))) {
      memcpy(param_1,*(void **)(iVar3 + 0x10),__n);
      iVar1 = *(int *)(iVar3 + 0x50);
      iVar2 = *(int *)(iVar3 + 0x54);
      __n_00 = *(uint *)(iVar3 + 8);
      if (iVar1 != 0 || iVar2 != 0) {
        *(int *)(iVar3 + 8) = iVar1;
        *(int *)(iVar3 + 0xc) = iVar2;
        *(undefined4 *)(iVar3 + 0x10) = *(undefined4 *)(iVar3 + 0x48);
        param_4[0x93] = *(int *)(iVar3 + 0x40);
        param_4[0x94] = *(int *)(iVar3 + 0x44);
        *(int *)(iVar3 + 0x58) = *(int *)(iVar3 + 0x58) + 1;
        *(undefined4 *)(iVar3 + 0x50) = 0;
        *(undefined4 *)(iVar3 + 0x54) = 0;
        return __n_00;
      }
    }
    else {
      memcpy(param_1,*(void **)(iVar3 + 0x10),__n_00);
      *(uint *)(iVar3 + 0x10) = *(int *)(iVar3 + 0x10) + __n_00;
      iVar1 = *(uint *)(iVar3 + 8) - __n_00;
      iVar2 = *(int *)(iVar3 + 0xc) - (uint)(*(uint *)(iVar3 + 8) < __n_00);
    }
    *(int *)(iVar3 + 8) = iVar1;
    *(int *)(iVar3 + 0xc) = iVar2;
  }
  return __n_00;
}

// ---- FUN_00617da8  @ 0x617da8
bool FUN_00617da8(int param_1,undefined4 param_2)

{
  size_t sVar1;
  int iVar2;
  undefined4 *puVar3;
  char *__s;
  
  puVar3 = *(undefined4 **)(param_1 + 0x284);
  while( true ) {
    if (puVar3 == (undefined4 *)0x0) {
      iVar2 = Curl_raw_nequal("HTTP/",param_2,5);
      return iVar2 != 0;
    }
    __s = (char *)*puVar3;
    sVar1 = strlen(__s);
    iVar2 = Curl_raw_nequal(__s,param_2,sVar1);
    if (iVar2 != 0) break;
    puVar3 = (undefined4 *)puVar3[1];
  }
  return true;
}

// ---- FUN_00617dec  @ 0x617dec
void * FUN_00617dec(byte *param_1)

{
  byte bVar1;
  int iVar2;
  byte *pbVar3;
  void *__dest;
  byte *pbVar4;
  byte *__s;
  
  iVar2 = _ctype_;
  do {
    pbVar3 = param_1;
    bVar1 = *pbVar3;
    param_1 = pbVar3 + 1;
  } while (bVar1 != 0x3a && bVar1 != 0);
  if (bVar1 != 0) {
    pbVar3 = pbVar3 + 1;
  }
  do {
    __s = pbVar3;
    if (*__s == 0) break;
    pbVar3 = __s + 1;
  } while ((int)((uint)*(byte *)(_ctype_ + (uint)*__s + 1) << 0x1c) < 0);
  pbVar3 = (byte *)strchr((char *)__s,0xd);
  if (((pbVar3 == (byte *)0x0) && (pbVar3 = (byte *)strchr((char *)__s,10), pbVar3 == (byte *)0x0))
     && (pbVar3 = (byte *)strchr((char *)__s,0), pbVar3 == (byte *)0x0)) {
    return (void *)0x0;
  }
  do {
    pbVar4 = pbVar3;
    if (pbVar4 <= __s) break;
    pbVar3 = pbVar4 + -1;
  } while ((int)((uint)*(byte *)(iVar2 + (uint)*pbVar4 + 1) << 0x1c) < 0);
  __dest = (void *)(*Curl_cmalloc)(pbVar4 + (2 - (int)__s));
  if (__dest != (void *)0x0) {
    memcpy(__dest,__s,(size_t)(pbVar4 + (1 - (int)__s)));
    *(byte *)((int)__dest + (int)(pbVar4 + (1 - (int)__s))) = 0;
  }
  return __dest;
}

// ---- FUN_00617e88  @ 0x617e88
undefined4 FUN_00617e88(int *param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  size_t sVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  
  iVar5 = *param_1;
  iVar2 = *(int *)(iVar5 + 0x861c);
  if (iVar2 == 0) {
    return 0;
  }
  iVar4 = *(int *)(iVar5 + 0x22c);
  if (iVar4 == 1) {
    return 0;
  }
  if (iVar4 == 5) {
    return 0;
  }
  cVar1 = *(char *)((int)param_1 + 0x1c6);
  sVar6 = 0;
  uVar8 = *(uint *)(iVar2 + 0x28);
  iVar9 = *(int *)(iVar2 + 0x2c);
  if (cVar1 == '\0') {
    if (iVar4 == 3) {
      sVar6 = *(uint *)(iVar2 + 8);
      uVar7 = *(uint *)(iVar2 + 0xc);
      goto LAB_00617f02;
    }
    if (iVar4 == 4) {
      sVar6 = *(uint *)(iVar5 + 0x1d0);
      uVar7 = *(uint *)(iVar5 + 0x1d4);
      goto LAB_00617f02;
    }
    if (iVar4 != 2) {
      sVar6 = 0xffffffff;
      uVar7 = 0xffffffff;
      goto LAB_00617f02;
    }
    sVar6 = *(uint *)(iVar5 + 0x158);
    uVar7 = *(uint *)(iVar5 + 0x15c);
    if ((sVar6 != 0xffffffff || uVar7 != 0xffffffff) || (*(char **)(iVar5 + 0x14c) == (char *)0x0))
    goto LAB_00617f02;
    sVar6 = strlen(*(char **)(iVar5 + 0x14c));
  }
  uVar7 = 0;
LAB_00617f02:
  *(undefined1 *)((int)param_1 + 0x1c7) = 0;
  if ((sVar6 & uVar7) == 0xffffffff ||
      (int)((iVar9 - uVar7) - (uint)(uVar8 < sVar6)) < 0 !=
      (SBORROW4(iVar9,uVar7) != SBORROW4(iVar9 - uVar7,(uint)(uVar8 < sVar6)))) {
    if ((((*(int *)(iVar5 + 0x85a0) == 8) || (*(int *)(iVar5 + 0x8590) == 8)) ||
        (*(int *)(iVar5 + 0x85a0) == 0x20)) || (*(int *)(iVar5 + 0x8590) == 0x20)) {
      if (((int)((uVar7 - iVar9) - (uint)(sVar6 < uVar8)) < (int)(uint)(sVar6 - uVar8 < 2000)) ||
         (param_1[0x95] != 0)) {
        if (cVar1 != '\0') {
          return 0;
        }
        *(undefined1 *)((int)param_1 + 0x1c7) = 1;
        Curl_infof(iVar5,"Rewind stream after send\n");
        return 0;
      }
      if ((char)param_1[0x6e] != '\0') {
        return 0;
      }
      Curl_infof(iVar5,"NTLM send, close instead of sending %lld bytes\n");
    }
    *(undefined1 *)(param_1 + 0x6e) = 1;
    *(undefined4 *)(iVar5 + 0x18) = 0;
    *(undefined4 *)(iVar5 + 0x1c) = 0;
  }
  if (uVar8 == 0 && iVar9 == 0) {
    return 0;
  }
  uVar3 = Curl_readrewind(param_1);
  return uVar3;
}

// ---- FUN_0061816c  @ 0x61816c
int FUN_0061816c(int *param_1,int param_2,undefined4 param_3,int param_4,char param_5)

{
  int iVar1;
  size_t sVar2;
  undefined1 *puVar3;
  int iVar4;
  int iVar5;
  char *pcVar6;
  char *pcVar7;
  int iVar8;
  int *piVar9;
  int iVar10;
  undefined4 local_28;
  int local_24;
  
  iVar4 = *(int *)(param_2 + 4);
  iVar10 = *param_1;
  local_28 = param_3;
  local_24 = param_4;
  if (iVar4 == 8) {
    iVar4 = Curl_output_ntlm(param_1,param_5);
    if (iVar4 != 0) {
      return iVar4;
    }
    pcVar7 = "NTLM";
    goto LAB_006182b4;
  }
  if (iVar4 == 0x20) {
    iVar4 = Curl_output_ntlm_wb(param_1,param_5);
    if (iVar4 != 0) {
      return iVar4;
    }
    pcVar7 = "NTLM_WB";
    goto LAB_006182b4;
  }
  if (iVar4 == 2) {
    iVar4 = Curl_output_digest(param_1,param_5);
    if (iVar4 != 0) {
      return iVar4;
    }
    pcVar7 = "Digest";
    goto LAB_006182b4;
  }
  if (iVar4 != 1) goto LAB_006182f0;
  if (param_5 == '\0') {
    if (((char)param_1[0x6f] != '\0') &&
       (iVar4 = Curl_checkheaders(iVar10,"Authorization:",param_3,(char)param_1[0x6f],param_1,
                                  param_2), iVar4 == 0)) goto LAB_00618200;
    pcVar7 = (char *)0x0;
  }
  else if ((*(char *)((int)param_1 + 0x1bd) == '\0') ||
          (iVar4 = Curl_checkheaders(iVar10,"Proxy-authorization:",param_3,
                                     *(char *)((int)param_1 + 0x1bd),param_1,param_2), iVar4 != 0))
  {
    pcVar7 = (char *)0x0;
  }
  else {
LAB_00618200:
    iVar4 = *param_1;
    local_28 = 0;
    local_24 = 0;
    if (param_5 == '\0') {
      iVar8 = param_1[0x41];
      iVar1 = 0x204;
      iVar5 = param_1[0x42];
    }
    else {
      iVar1 = 0x1f8;
      iVar8 = param_1[0x43];
      iVar5 = param_1[0x44];
    }
    piVar9 = (int *)((int)param_1 + iVar1);
    pcVar7 = (char *)(iVar4 + 0x50c);
    curl_msnprintf(pcVar7,0x4001,"%s:%s",iVar8,iVar5);
    sVar2 = strlen(pcVar7);
    iVar4 = Curl_base64_encode(iVar4,pcVar7,sVar2,&local_24,&local_28);
    if (iVar4 != 0) {
      return iVar4;
    }
    if (local_24 == 0) {
      return 9;
    }
    if (*piVar9 != 0) {
      (*Curl_cfree)();
      *piVar9 = 0;
    }
    if (param_5 == '\0') {
      pcVar7 = "";
    }
    else {
      pcVar7 = "Proxy-";
    }
    iVar4 = curl_maprintf("%sAuthorization: Basic %s\r\n",pcVar7,local_24);
    *piVar9 = iVar4;
    (*Curl_cfree)(local_24);
    if (*piVar9 == 0) {
      return 0x1b;
    }
    pcVar7 = "Basic";
  }
  *(undefined1 *)(param_2 + 0xc) = 1;
  if (pcVar7 == (char *)0x0) {
LAB_006182f0:
    *(undefined1 *)(param_2 + 0xd) = 0;
    return 0;
  }
LAB_006182b4:
  if (param_5 == '\0') {
    puVar3 = (undefined1 *)param_1[0x41];
    if (puVar3 == (undefined1 *)0x0) {
      pcVar6 = "Server";
      puVar3 = &DAT_00801f93;
    }
    else {
      pcVar6 = "Server";
    }
  }
  else {
    puVar3 = (undefined1 *)param_1[0x43];
    if (puVar3 == (undefined1 *)0x0) {
      pcVar6 = "Proxy";
      puVar3 = &DAT_00801f93;
    }
    else {
      pcVar6 = "Proxy";
    }
  }
  Curl_infof(iVar10,"%s auth using %s with user \'%s\'\n",pcVar6,pcVar7,puVar3);
  *(byte *)(param_2 + 0xd) = *(byte *)(param_2 + 0xc) ^ 1;
  return 0;
}

// ---- FUN_00618af8  @ 0x618af8
int FUN_00618af8(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  
  *(undefined1 *)(param_1 + 0x85e4) = 0;
  iVar2 = FUN_00617c24();
  iVar3 = 0;
  if (iVar2 != 0) {
    iVar3 = Curl_checkheaders(param_1,"Expect:");
    if (iVar3 != 0) {
      uVar1 = Curl_compareheader(iVar3,"Expect:","100-continue");
      *(undefined1 *)(param_1 + 0x85e4) = uVar1;
      return 0;
    }
    iVar3 = Curl_add_bufferf(param_3,"Expect: 100-continue\r\n");
    if (iVar3 == 0) {
      *(undefined1 *)(param_1 + 0x85e4) = 1;
    }
  }
  return iVar3;
}

// ---- FUN_0061b268  @ 0x61b268
void FUN_0061b268(int param_1)

{
  int iVar1;
  
  if (*(int *)(param_1 + 0x3c) != 0) {
    for (iVar1 = 0; iVar1 < *(int *)(param_1 + 0x40); iVar1 = iVar1 + 1) {
      if (*(int *)(*(int *)(param_1 + 0x3c) + iVar1 * 4) != 0) {
        (*Curl_cfree)();
        *(undefined4 *)(*(int *)(param_1 + 0x3c) + iVar1 * 4) = 0;
      }
    }
    (*Curl_cfree)(*(undefined4 *)(param_1 + 0x3c));
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined4 *)(param_1 + 0x40) = 0;
  }
  if (*(int *)(param_1 + 0x48) != 0) {
    (*Curl_cfree)();
    *(undefined4 *)(param_1 + 0x48) = 0;
  }
  return;
}

// ---- FUN_0061b2c4  @ 0x61b2c4
void FUN_0061b2c4(int *param_1)

{
  int iVar1;
  undefined1 *puVar2;
  
  puVar2 = *(undefined1 **)(*(int *)(*param_1 + 0x861c) + 4);
  if (puVar2 == (undefined1 *)0x0) {
    puVar2 = &DAT_00801f93;
  }
  iVar1 = Curl_pp_sendf(param_1 + 0xe4,"USER %s",puVar2);
  if (iVar1 == 0) {
    param_1[0xfe] = 3;
    *(undefined1 *)(*param_1 + 0x85dc) = 0;
  }
  return;
}

// ---- FUN_0061b320  @ 0x61b320
void FUN_0061b320(int param_1)

{
  int iVar1;
  
  do {
    if (*(int *)(param_1 + 0x3f8) == 0) {
      return;
    }
    iVar1 = Curl_pp_easy_statemach(param_1 + 0x390);
  } while (iVar1 == 0);
  return;
}

// ---- FUN_0061b33c  @ 0x61b33c
undefined4 FUN_0061b33c(int *param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  
  if (param_2 != 0) {
    *(undefined1 *)((int)param_1 + 0x3dd) = 0;
  }
  if (*(char *)((int)param_1 + 0x3dd) != '\0') {
    iVar1 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080ef7a,0,*(char *)((int)param_1 + 0x3dd),param_4);
    if (iVar1 == 0) {
      param_1[0xfe] = 0x22;
      FUN_0061b320(param_1);
    }
    else {
      iVar1 = *param_1;
      uVar2 = curl_easy_strerror();
      Curl_failf(iVar1,"Failure sending QUIT command: %s",uVar2);
      *(undefined1 *)((int)param_1 + 0x3dd) = 0;
      *(undefined1 *)(param_1 + 0x6e) = 1;
      param_1[0xfe] = 0;
    }
  }
  if (param_1[0xf2] != 0) {
    if (*(int *)(*param_1 + 0x85d8) == param_1[0xf2]) {
      *(undefined4 *)(*param_1 + 0x85d8) = 0;
    }
    (*Curl_cfree)(param_1[0xf2]);
    param_1[0xf2] = 0;
  }
  FUN_0061b268(param_1 + 0xe4);
  if (param_1[0xf9] != 0) {
    (*Curl_cfree)();
    param_1[0xf9] = 0;
  }
  if (param_1[0x102] != 0) {
    (*Curl_cfree)();
    param_1[0x102] = 0;
  }
  Curl_pp_disconnect(param_1 + 0xe4);
  return 0;
}

// ---- FUN_0061b414  @ 0x61b414
void FUN_0061b414(int param_1,char *param_2)

{
  char cVar1;
  
  Curl_pp_multi_statemach(param_1 + 0x390);
  cVar1 = '\x01' - (char)*(uint *)(param_1 + 0x3f8);
  if (1 < *(uint *)(param_1 + 0x3f8)) {
    cVar1 = '\0';
  }
  *param_2 = cVar1;
  return;
}

// ---- FUN_0061b432  @ 0x61b432
bool FUN_0061b432(char *param_1)

{
  char *pcVar1;
  
  pcVar1 = strchr(param_1,0xd);
  if (pcVar1 == (char *)0x0) {
    pcVar1 = strchr(param_1,10);
    return pcVar1 != (char *)0x0;
  }
  return true;
}

// ---- FUN_0061b454  @ 0x61b454
undefined4 FUN_0061b454(int *param_1)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  
  iVar3 = *param_1;
  if (*(int *)(iVar3 + 0x861c) == 0) {
    uVar1 = (*Curl_cmalloc)(0x18);
    *(undefined4 *)(iVar3 + 0x861c) = uVar1;
    if (*(int *)(*param_1 + 0x861c) == 0) {
      return 0x1b;
    }
  }
  piVar2 = *(int **)(*param_1 + 0x861c);
  *piVar2 = *param_1 + 0x38;
  piVar2[4] = 0;
  piVar2[5] = 0;
  piVar2[3] = 0;
  piVar2[1] = param_1[0x41];
  iVar4 = param_1[0x42];
  piVar2[2] = iVar4;
  iVar3 = FUN_0061b432();
  if (iVar3 == 0) {
    iVar3 = FUN_0061b432(iVar4);
    if (iVar3 == 0) {
      param_1[0x104] = -1;
      param_1[0x105] = -1;
      return 0;
    }
    return 3;
  }
  return 3;
}

// ---- FUN_0061b5a4  @ 0x61b5a4
int FUN_0061b5a4(int *param_1,undefined4 param_2,uint param_3,int param_4)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar5 = *param_1;
  uVar2 = *(uint *)(iVar5 + 0x290);
  iVar3 = *(int *)(iVar5 + 0x294);
  iVar6 = *(int *)(iVar5 + 0x861c);
  if ((uVar2 != 0 || iVar3 != 0) &&
     ((int)((iVar3 - param_4) - (uint)(uVar2 < param_3)) < 0 !=
      (SBORROW4(iVar3,param_4) != SBORROW4(iVar3 - param_4,(uint)(uVar2 < param_3))))) {
    Curl_failf(iVar5,"Maximum file size exceeded");
    return 0x3f;
  }
  *(uint *)(iVar6 + 0x10) = param_3;
  *(int *)(iVar6 + 0x14) = param_4;
  uVar2 = *(uint *)(iVar5 + 0x8608);
  iVar3 = *(int *)(iVar5 + 0x860c);
  if (uVar2 == 0 && iVar3 == 0) {
    iVar3 = Curl_pp_sendf(param_1 + 0xe4,"RETR %s",param_1[0xf6]);
    if (iVar3 != 0) {
      return iVar3;
    }
    iVar3 = 0x20;
  }
  else {
    if (param_3 == 0xffffffff && param_4 == -1) {
      Curl_infof(iVar5,"ftp server doesn\'t support SIZE\n");
    }
    else if (iVar3 < 0) {
      uVar1 = -uVar2;
      iVar4 = -iVar3 - (uint)(uVar2 != 0);
      if ((int)((param_4 - iVar4) - (uint)(param_3 < uVar1)) < 0 !=
          (SBORROW4(param_4,iVar4) != SBORROW4(param_4 - iVar4,(uint)(param_3 < uVar1)))) {
LAB_0061b63e:
        Curl_failf(iVar5,"Offset (%lld) was beyond file size (%lld)",uVar2,iVar3,param_3,param_4);
        return 0x24;
      }
      *(uint *)(iVar6 + 0x10) = uVar1;
      *(int *)(iVar6 + 0x14) = iVar4;
      *(uint *)(iVar5 + 0x8608) = uVar2 + param_3;
      *(uint *)(iVar5 + 0x860c) = iVar3 + param_4 + (uint)CARRY4(uVar2,param_3);
    }
    else {
      if ((int)((param_4 - iVar3) - (uint)(param_3 < uVar2)) < 0 !=
          (SBORROW4(param_4,iVar3) != SBORROW4(param_4 - iVar3,(uint)(param_3 < uVar2))))
      goto LAB_0061b63e;
      *(uint *)(iVar6 + 0x10) = param_3 - uVar2;
      *(uint *)(iVar6 + 0x14) = (param_4 - iVar3) - (uint)(param_3 < uVar2);
    }
    if (*(int *)(iVar6 + 0x10) == 0 && *(int *)(iVar6 + 0x14) == 0) {
      Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff,0,0,0xffffffff,0);
      Curl_infof(iVar5,"File already completely downloaded\n");
      *(undefined4 *)(iVar6 + 0xc) = 2;
      param_1[0xfe] = 0;
      return 0;
    }
    Curl_infof(iVar5,"Instructs server to resume from offset %lld\n",*(undefined4 *)(iVar5 + 0x8608)
               ,*(undefined4 *)(iVar5 + 0x860c));
    iVar5 = Curl_pp_sendf(param_1 + 0xe4,"REST %lld",*(undefined4 *)(iVar5 + 0x8608),
                          *(undefined4 *)(iVar5 + 0x860c));
    iVar3 = 0x1b;
    if (iVar5 != 0) {
      return iVar5;
    }
  }
  param_1[0xfe] = iVar3;
  return 0;
}

// ---- FUN_0061bd7c  @ 0x61bd7c
void FUN_0061bd7c(int *param_1,int param_2)

{
  char *pcVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined1 *puVar5;
  uint uVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  char *__s;
  undefined4 uVar10;
  undefined1 local_1cd;
  undefined4 local_1cc;
  int local_1c8;
  ushort local_1c4 [2];
  int local_1c0;
  int local_1bc;
  undefined4 local_1b8;
  undefined4 local_1b4;
  undefined4 local_1b0;
  undefined4 local_1ac [22];
  undefined1 auStack_154 [48];
  undefined1 auStack_124 [256];
  int local_24;
  
  iVar9 = *param_1;
  local_24 = __stack_chk_guard;
  local_1c8 = 0;
  uVar6 = param_1[0xfb];
  uVar4 = 1 - uVar6;
  if (1 < uVar6) {
    uVar4 = 0;
  }
  uVar8 = (uint)(param_2 == 0xe5);
  if ((uVar8 & uVar4) != 0) {
    pcVar1 = strchr((char *)(iVar9 + 0x510),0x28);
    if (pcVar1 != (char *)0x0) {
      iVar2 = sscanf(pcVar1 + 1,"%c%c%c%u%c",&local_1b8,(int)&local_1b8 + 1,(int)&local_1b8 + 2,
                     local_1c4,(int)&local_1b8 + 3);
      if (iVar2 == 5) {
        if (((((char)local_1b8 == local_1b8._1_1_) && (local_1b8._2_1_ == (char)local_1b8)) &&
            (local_1b8._3_1_ == local_1b8._2_1_)) && (pcVar1 + 1 != (char *)0x0)) {
          uVar4 = (uint)local_1c4[0];
          if (((*(char *)((int)param_1 + 0x1c5) == '\0') && (iVar2 = param_1[0x45], iVar2 != 5)) &&
             ((iVar2 != 7 && ((iVar2 != 4 && (iVar2 != 6)))))) {
            piVar7 = param_1 + 0x10;
          }
          else {
            piVar7 = (int *)param_1[0x20];
          }
          curl_msnprintf(auStack_154,0x30,&DAT_0080c64d,piVar7);
          goto LAB_0061bf62;
        }
      }
    }
    Curl_failf(iVar9,"Weirdly formatted EPSV reply");
LAB_0061bf5e:
    iVar2 = 0xd;
    goto LAB_0061c0f4;
  }
  pcVar1 = (char *)(iVar9 + 0x510);
  if (param_2 != 0xe3 || uVar6 != 1) {
    if (uVar4 == 0) {
      Curl_failf(iVar9,"Bad PASV/EPSV response: %03d");
      goto LAB_0061bf5e;
    }
    *(undefined1 *)(param_1 + 0x72) = 0;
    Curl_infof(iVar9,"disabling EPSV usage\n");
LAB_0061c008:
    iVar2 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080f29e,0);
    if (iVar2 == 0) {
      param_1[0xfb] = param_1[0xfb] + 1;
    }
    goto LAB_0061c0f4;
  }
  do {
    __s = pcVar1;
    if (*__s == '\0') break;
    iVar2 = sscanf(__s,"%d,%d,%d,%d,%d,%d",&local_1b8,&local_1b4,&local_1b0,local_1ac,&local_1c0,
                   &local_1bc);
    pcVar1 = __s + 1;
  } while (iVar2 != 6);
  if (*__s == '\0') {
    Curl_failf(iVar9,"Couldn\'t interpret the 227-response");
    iVar2 = 0xe;
    goto LAB_0061c0f4;
  }
  if (*(char *)(iVar9 + 0x2d8) == '\0') {
    curl_msnprintf(auStack_154,0x30,"%d.%d.%d.%d",local_1b8,local_1b4,local_1b0,local_1ac[0]);
  }
  else {
    piVar7 = param_1 + 0x10;
    Curl_infof(iVar9,"Skips %d.%d.%d.%d for data connection, uses %s instead\n",local_1b8,local_1b4,
               local_1b0,local_1ac[0],piVar7);
    if ((((*(char *)((int)param_1 + 0x1c5) != '\0') || (iVar2 = param_1[0x45], iVar2 == 5)) ||
        (iVar2 == 7)) || ((iVar2 == 4 || (iVar2 == 6)))) {
      piVar7 = (int *)param_1[0x20];
    }
    curl_msnprintf(auStack_154,0x30,&DAT_0080c64d,piVar7);
  }
  uVar4 = local_1bc + local_1c0 * 0x100 & 0xffff;
LAB_0061bf62:
  if ((*(char **)(iVar9 + 0x330) == (char *)0x0) || (**(char **)(iVar9 + 0x330) == '\0')) {
    Curl_resolv(param_1,auStack_154,uVar4,&local_1c8);
    uVar6 = uVar4;
    if (local_1c8 == 0) {
      puVar5 = auStack_154;
      pcVar1 = "Can\'t resolve new host %s:%hu";
      goto LAB_0061bfaa;
    }
  }
  else {
    Curl_resolv(param_1,param_1[0x24],param_1[0x26],&local_1c8);
    uVar6 = (uint)*(ushort *)(param_1 + 0x26);
    if (local_1c8 == 0) {
      puVar5 = (undefined1 *)param_1[0x24];
      pcVar1 = "Can\'t resolve proxy host %s:%hu";
      uVar4 = (uint)*(ushort *)(param_1 + 0x26);
LAB_0061bfaa:
      Curl_failf(iVar9,pcVar1,puVar5,uVar4);
      iVar2 = 0xf;
      goto LAB_0061c0f4;
    }
  }
  iVar3 = Curl_connecthost(param_1,local_1c8,param_1 + 0x4d,&local_1cc,&local_1cd);
  Curl_resolv_unlock(iVar9,local_1c8);
  if (iVar3 != 0) {
    if (param_1[0xfb] != 0) {
      uVar8 = 0;
    }
    iVar2 = iVar3;
    if (uVar8 == 0) goto LAB_0061c0f4;
    Curl_infof(iVar9,"got positive EPSV response, but can\'t connect. Disabling EPSV\n");
    *(undefined1 *)(param_1 + 0x72) = 0;
    *(undefined1 *)(iVar9 + 0x8538) = 0;
    goto LAB_0061c008;
  }
  *(undefined1 *)((int)param_1 + 0x1c2) = local_1cd;
  if (*(char *)(iVar9 + 0x2c0) != '\0') {
    Curl_printable_address(local_1cc,auStack_124,0x100);
    Curl_infof(*param_1,"Connecting to %s (%s) port %d\n",auStack_154,auStack_124,uVar6);
  }
  switch(param_1[0x45]) {
  case 0:
  case 1:
    goto switchD_0061c052_caseD_0;
  default:
    Curl_failf(iVar9,"unknown proxytype option given");
    iVar2 = 7;
    goto LAB_0061c0f4;
  case 4:
    uVar10 = 0;
    iVar2 = param_1[0x43];
    break;
  case 5:
  case 7:
    iVar2 = Curl_SOCKS5(param_1[0x43],param_1[0x44],auStack_154,uVar4,1,param_1);
    goto LAB_0061c0aa;
  case 6:
    iVar2 = param_1[0x43];
    uVar10 = 1;
  }
  iVar2 = Curl_SOCKS4(iVar2,auStack_154,uVar4,1,param_1,uVar10);
LAB_0061c0aa:
  if (iVar2 == 0) {
switchD_0061c052_caseD_0:
    if ((*(char *)((int)param_1 + 0x1c5) != '\0') && (*(char *)((int)param_1 + 0x1bb) != '\0')) {
      uVar10 = *(undefined4 *)(iVar9 + 0x861c);
      memset(&local_1b8,0,0x60);
      *(undefined4 **)(iVar9 + 0x861c) = &local_1b8;
      iVar2 = Curl_proxyCONNECT(param_1,1,auStack_154,uVar4);
      *(undefined4 *)(iVar9 + 0x861c) = uVar10;
      if (iVar2 != 0) goto LAB_0061c0f4;
    }
    *(undefined1 *)((int)param_1 + 0x1c2) = 1;
    param_1[0xfe] = 0;
    iVar2 = iVar3;
  }
LAB_0061c0f4:
  if (local_24 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}

// ---- FUN_0061c15c  @ 0x61c15c
int FUN_0061c15c(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  iVar2 = *(int *)(param_1 + 0x1c4);
  if (iVar2 < 1) {
    iVar2 = 60000;
  }
  curlx_tvnow(&local_28);
  local_20 = local_28;
  uStack_1c = uStack_24;
  iVar1 = Curl_timeleft(param_1,&local_20,0);
  if (iVar2 <= iVar1 || iVar1 == 0) {
    iVar1 = curlx_tvdiff(local_20,uStack_1c,*(undefined4 *)(param_1 + 0x480),
                         *(undefined4 *)(param_1 + 0x484));
    iVar1 = iVar2 - iVar1;
    if (iVar1 == 0) {
      iVar1 = -1;
    }
  }
  return iVar1;
}

// ---- FUN_0061c1bc  @ 0x61c1bc
void FUN_0061c1bc(undefined4 *param_1)

{
  int iVar1;
  int __fd;
  undefined4 uVar2;
  socklen_t local_30;
  sockaddr sStack_2c;
  int local_1c;
  
  __fd = param_1[0x4d];
  uVar2 = *param_1;
  local_1c = __stack_chk_guard;
  local_30 = 0x10;
  iVar1 = getsockname(__fd,&sStack_2c,&local_30);
  if (iVar1 == 0) {
    local_30 = 0x10;
    iVar1 = accept(__fd,&sStack_2c,&local_30);
  }
  else {
    iVar1 = -1;
  }
  Curl_closesocket(param_1,__fd);
  if (iVar1 == -1) {
    Curl_failf(uVar2,"Error accept()ing server connect");
    uVar2 = 0x1e;
  }
  else {
    Curl_infof(uVar2,"Connection accepted from server\n");
    param_1[0x4d] = iVar1;
    curlx_nonblock(iVar1,1);
    uVar2 = 0;
    *(undefined1 *)((int)param_1 + 0x139) = 1;
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- FUN_0061c258  @ 0x61c258
void FUN_0061c258(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  
  iVar6 = *param_1;
  puVar5 = *(undefined4 **)(iVar6 + 0x861c);
  if ((char)param_1[0x59] != '\0') {
    Curl_infof(iVar6,"Doing the SSL/TLS handshake on the data stream\n",param_3,(char)param_1[0x59],
               param_1,param_2,param_3,param_4);
    iVar1 = Curl_ssl_connect(param_1,1);
    if (iVar1 != 0) {
      return;
    }
  }
  if (param_1[0xff] == 0x21) {
    puVar3 = (undefined4 *)*puVar5;
    *puVar3 = 0;
    puVar3[1] = 0;
    Curl_pgrsSetUploadSize(iVar6,0,*(undefined4 *)(iVar6 + 0x1d0),*(undefined4 *)(iVar6 + 0x1d4));
    uVar7 = 0;
    uVar8 = 1;
    uVar2 = 0xffffffff;
    uVar4 = *puVar5;
    iVar6 = -1;
    iVar1 = -1;
  }
  else {
    uVar7 = *puVar5;
    uVar4 = 0;
    uVar8 = 0xffffffff;
    uVar2 = 1;
    iVar6 = param_1[0x100];
    iVar1 = param_1[0x101];
  }
  Curl_setup_transfer(param_1,uVar2,iVar6,iVar1,0,uVar7,uVar8,uVar4);
  *(undefined1 *)(param_1 + 0xe8) = 1;
  param_1[0xfe] = 0;
  return;
}

// ---- FUN_0061c2f4  @ 0x61c2f4
void FUN_0061c2f4(int param_1)

{
  if (param_1 != 0) {
    Curl_ftp_parselist_data_free();
    (*Curl_cfree)(param_1);
  }
  return;
}

// ---- FUN_0061c310  @ 0x61c310
undefined4 FUN_0061c310(int *param_1)

{
  size_t sVar1;
  char *pcVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int *piVar10;
  char *__s;
  int iVar11;
  int local_2c [2];
  
  iVar9 = *param_1;
  piVar10 = param_1 + 0xe4;
  iVar8 = *(int *)(iVar9 + 0x861c);
  __s = *(char **)(iVar9 + 0x85fc);
  *(undefined1 *)((int)param_1 + 0x3dd) = 0;
  *(undefined1 *)((int)param_1 + 0x3df) = 0;
  if (*(int *)(iVar9 + 0x298) == 2) {
    __s = *(char **)(iVar9 + 0x85fc);
    if (((__s == (char *)0x0) || (*__s == '\0')) || (sVar1 = strlen(__s), __s[sVar1 - 1] == '/')) {
LAB_0061c536:
      param_1[0xf6] = 0;
LAB_0061c53c:
      if (((*(char *)(iVar9 + 0x2b9) == '\0') || (param_1[0xf6] != 0)) ||
         (*(int *)(iVar8 + 0xc) != 0)) {
        *(undefined1 *)((int)param_1 + 0x3de) = 0;
        if (param_1[0xf9] == 0) {
          return 0;
        }
        iVar8 = curl_easy_unescape(*param_1,*(undefined4 *)(iVar9 + 0x85fc),0,local_2c);
        if (iVar8 != 0) {
          iVar6 = 0;
          if ((char *)param_1[0xf6] != (char *)0x0) {
            strlen((char *)param_1[0xf6]);
            iVar6 = curlx_uztosi();
          }
          iVar6 = local_2c[0] - iVar6;
          local_2c[0] = iVar6;
          strlen((char *)param_1[0xf9]);
          iVar7 = curlx_uztosi();
          if ((iVar6 == iVar7) &&
             (iVar6 = curl_strnequal(iVar8,param_1[0xf9],local_2c[0]), iVar6 != 0)) {
            Curl_infof(iVar9,"Request has same path as previous transfer\n");
            *(undefined1 *)((int)param_1 + 0x3de) = 1;
          }
          (*Curl_cfree)(iVar8);
          return 0;
        }
        goto LAB_0061c57e;
      }
      Curl_failf(iVar9,"Uploading to a URL without a file name!");
    }
    else {
LAB_0061c4fe:
      if (*__s == '\0') goto LAB_0061c536;
      iVar6 = curl_easy_unescape(*param_1,__s,0,0);
      param_1[0xf6] = iVar6;
      if (iVar6 == 0) {
        FUN_0061b268(piVar10);
        Curl_failf(iVar9,"no memory");
        goto LAB_0061c5d6;
      }
      iVar6 = FUN_0061b432();
      if (iVar6 == 0) goto LAB_0061c53c;
LAB_0061c52e:
      FUN_0061b268(piVar10);
    }
    uVar5 = 3;
  }
  else {
    if (*(int *)(iVar9 + 0x298) == 3) {
      if (*__s == '\0') {
        param_1[0xf4] = 0;
        goto LAB_0061c536;
      }
      pcVar2 = strrchr(__s,0x2f);
      if (pcVar2 == (char *)0x0) {
LAB_0061c4f8:
        if (__s != (char *)0x0) goto LAB_0061c4fe;
        goto LAB_0061c536;
      }
      puVar3 = (undefined4 *)(*Curl_ccalloc)(1,4);
      param_1[0xf3] = (int)puVar3;
      if (puVar3 == (undefined4 *)0x0) goto LAB_0061c5d6;
      iVar6 = *param_1;
      uVar5 = curlx_sztosi((int)pcVar2 - (int)__s);
      uVar5 = curl_easy_unescape(iVar6,__s,uVar5,0);
      *puVar3 = uVar5;
      if (*(int *)param_1[0xf3] != 0) {
        param_1[0xf4] = 1;
        __s = pcVar2 + 1;
        goto LAB_0061c4f8;
      }
LAB_0061c57e:
      FUN_0061b268(piVar10);
    }
    else {
      param_1[0xf4] = 0;
      param_1[0xf5] = 5;
      iVar6 = (*Curl_ccalloc)(5,4);
      param_1[0xf3] = iVar6;
      if (iVar6 != 0) {
        iVar6 = curl_strequal(__s,&DAT_00800fc6);
        if (iVar6 == 0) {
          while (pcVar2 = strchr(__s,0x2f), pcVar2 != (char *)0x0) {
            iVar6 = 0;
            if ((0 < (int)__s - *(int *)(iVar9 + 0x85fc)) &&
               (iVar6 = 1 - param_1[0xf4], 1 < (uint)param_1[0xf4])) {
              iVar6 = 0;
            }
            if (pcVar2 == __s) {
              __s = __s + 1;
            }
            else {
              uVar5 = curlx_sztosi(pcVar2 + (iVar6 - (int)__s));
              iVar7 = param_1[0xf3];
              iVar11 = param_1[0xf4];
              uVar5 = curl_easy_unescape(*param_1,(int)__s - iVar6,uVar5,0);
              *(undefined4 *)(iVar7 + iVar11 * 4) = uVar5;
              iVar11 = param_1[0xf3];
              iVar6 = param_1[0xf4];
              iVar7 = *(int *)(iVar11 + iVar6 * 4);
              if (iVar7 == 0) {
                Curl_failf(iVar9,"no memory");
                goto LAB_0061c57e;
              }
              iVar4 = FUN_0061b432(iVar7);
              if (iVar4 != 0) {
                (*Curl_cfree)(iVar7);
                goto LAB_0061c52e;
              }
              iVar7 = param_1[0xf5];
              iVar6 = iVar6 + 1;
              __s = pcVar2 + 1;
              param_1[0xf4] = iVar6;
              if (iVar7 <= iVar6) {
                param_1[0xf5] = iVar7 << 1;
                iVar6 = (*Curl_crealloc)(iVar11,iVar7 << 3);
                if (iVar6 == 0) goto LAB_0061c57e;
                param_1[0xf3] = iVar6;
              }
            }
          }
        }
        else {
          puVar3 = (undefined4 *)param_1[0xf3];
          __s = __s + 1;
          uVar5 = (*Curl_cstrdup)(&DAT_00800fc6);
          *puVar3 = uVar5;
          param_1[0xf4] = param_1[0xf4] + 1;
        }
        goto LAB_0061c4f8;
      }
    }
LAB_0061c5d6:
    uVar5 = 0x1b;
  }
  return uVar5;
}

// ---- FUN_0061c608  @ 0x61c608
undefined4 FUN_0061c608(int *param_1)

{
  char *pcVar1;
  int iVar2;
  undefined *puVar3;
  int iVar4;
  
  iVar4 = *param_1;
  if ((*(char *)((int)param_1 + 0x1bb) != '\0') && (*(char *)(iVar4 + 0x2aa) == '\0')) {
    if ((undefined1 *)param_1[0x79] == Curl_handler_ftp) {
      puVar3 = &DAT_00937fbc;
    }
    else {
      puVar3 = &DAT_00938000;
    }
    param_1[0x79] = (int)puVar3;
    *(undefined1 *)(param_1 + 0x6e) = 0;
  }
  pcVar1 = (char *)(*(int *)(iVar4 + 0x85fc) + 1);
  *(char **)(iVar4 + 0x85fc) = pcVar1;
  *(undefined1 *)(iVar4 + 0x8600) = 1;
  pcVar1 = strstr(pcVar1,";type=");
  if ((pcVar1 != (char *)0x0) ||
     (pcVar1 = strstr((char *)param_1[0x1e],";type="), pcVar1 != (char *)0x0)) {
    *pcVar1 = '\0';
    iVar2 = Curl_raw_toupper(pcVar1[6]);
    *(undefined1 *)(param_1 + 0x74) = 1;
    if (iVar2 == 0x41) {
      *(undefined1 *)(iVar4 + 0x2ab) = 1;
    }
    else if (iVar2 == 0x44) {
      *(undefined1 *)(iVar4 + 0x2ad) = 1;
    }
    else {
      *(undefined1 *)(iVar4 + 0x2ab) = 0;
    }
  }
  return 0;
}

// ---- FUN_0061c6d8  @ 0x61c6d8
/* WARNING: Removing unreachable block (ram,0x0061b75c) */
/* WARNING: Removing unreachable block (ram,0x0061b77a) */
/* WARNING: Removing unreachable block (ram,0x0061b786) */
/* WARNING: Removing unreachable block (ram,0x0061b78e) */
/* WARNING: Removing unreachable block (ram,0x0061b7a6) */
/* WARNING: Removing unreachable block (ram,0x0061c8fc) */
/* WARNING: Removing unreachable block (ram,0x0061c7be) */
/* WARNING: Removing unreachable block (ram,0x0061c7c2) */
/* WARNING: Removing unreachable block (ram,0x0061c7c6) */
/* WARNING: Removing unreachable block (ram,0x0061c7c8) */
/* WARNING: Removing unreachable block (ram,0x0061c83a) */
/* WARNING: Removing unreachable block (ram,0x0061c840) */
/* WARNING: Removing unreachable block (ram,0x0061c85e) */
/* WARNING: Removing unreachable block (ram,0x0061c872) */
/* WARNING: Removing unreachable block (ram,0x0061c878) */
/* WARNING: Removing unreachable block (ram,0x0061c864) */
/* WARNING: Removing unreachable block (ram,0x0061c88c) */
/* WARNING: Removing unreachable block (ram,0x0061c896) */
/* WARNING: Removing unreachable block (ram,0x0061c760) */
/* WARNING: Removing unreachable block (ram,0x0061c76c) */
/* WARNING: Removing unreachable block (ram,0x0061c772) */
/* WARNING: Removing unreachable block (ram,0x0061c778) */
/* WARNING: Removing unreachable block (ram,0x0061c786) */
/* WARNING: Removing unreachable block (ram,0x0061c798) */
/* WARNING: Removing unreachable block (ram,0x0061c71c) */
/* WARNING: Removing unreachable block (ram,0x0061c72c) */
/* WARNING: Removing unreachable block (ram,0x0061c732) */
/* WARNING: Removing unreachable block (ram,0x0061c73e) */
/* WARNING: Removing unreachable block (ram,0x0061c740) */
/* WARNING: Removing unreachable block (ram,0x0061c742) */
/* WARNING: Removing unreachable block (ram,0x0061c746) */
/* WARNING: Removing unreachable block (ram,0x0061c758) */
/* WARNING: Removing unreachable block (ram,0x0061c7d0) */
/* WARNING: Removing unreachable block (ram,0x0061b77c) */
/* WARNING: Removing unreachable block (ram,0x0061b784) */
/* WARNING: Removing unreachable block (ram,0x0061b7a8) */
/* WARNING: Removing unreachable block (ram,0x0061b7b6) */
/* WARNING: Removing unreachable block (ram,0x0061b7c4) */
/* WARNING: Removing unreachable block (ram,0x0061b7c8) */
/* WARNING: Removing unreachable block (ram,0x0061b7ce) */
/* WARNING: Removing unreachable block (ram,0x0061b7e6) */
/* WARNING: Removing unreachable block (ram,0x0061b800) */
/* WARNING: Removing unreachable block (ram,0x0061b804) */
/* WARNING: Removing unreachable block (ram,0x0061b806) */
/* WARNING: Removing unreachable block (ram,0x0061b80c) */
/* WARNING: Removing unreachable block (ram,0x0061b822) */
/* WARNING: Removing unreachable block (ram,0x0061b824) */
/* WARNING: Removing unreachable block (ram,0x0061b828) */
/* WARNING: Removing unreachable block (ram,0x0061b82a) */
/* WARNING: Removing unreachable block (ram,0x0061b82e) */
/* WARNING: Removing unreachable block (ram,0x0061b830) */
/* WARNING: Removing unreachable block (ram,0x0061b834) */
/* WARNING: Removing unreachable block (ram,0x0061b83e) */
/* WARNING: Removing unreachable block (ram,0x0061b852) */
/* WARNING: Removing unreachable block (ram,0x0061b868) */
/* WARNING: Removing unreachable block (ram,0x0061b884) */
/* WARNING: Removing unreachable block (ram,0x0061b8b8) */
/* WARNING: Removing unreachable block (ram,0x0061b8c8) */
/* WARNING: Removing unreachable block (ram,0x0061b8c2) */
/* WARNING: Removing unreachable block (ram,0x0061b8cc) */
/* WARNING: Removing unreachable block (ram,0x0061b8d6) */
/* WARNING: Removing unreachable block (ram,0x0061b8d8) */
/* WARNING: Removing unreachable block (ram,0x0061b8dc) */
/* WARNING: Type propagation algorithm not settling */

int FUN_0061c6d8(int *param_1,int param_2,int param_3)

{
  byte bVar1;
  bool bVar2;
  size_t sVar3;
  char *pcVar4;
  char *pcVar5;
  char *pcVar6;
  int iVar7;
  int *piVar8;
  undefined4 uVar9;
  int iVar10;
  undefined4 extraout_r1;
  int iVar11;
  char *pcVar12;
  undefined *puVar13;
  char cVar14;
  undefined4 *puVar15;
  int iStack_9bc;
  socklen_t sStack_9b8;
  int *piStack_9b4;
  sockaddr asStack_9b0 [8];
  char acStack_930 [256];
  char acStack_830 [1024];
  char acStack_430 [1028];
  int iStack_2c;
  
  if (param_2 == 0) {
    cVar14 = 'I';
  }
  else {
    cVar14 = 'A';
  }
  if ((char)param_1[0xfa] != cVar14) {
    iVar10 = Curl_pp_sendf(param_1 + 0xe4,"TYPE %c",cVar14);
    if (iVar10 == 0) {
      param_1[0xfe] = param_3;
      *(char *)(param_1 + 0xfa) = cVar14;
    }
    return iVar10;
  }
  param_1[0xfe] = param_3;
  if (param_3 != 0x13) {
    if (param_3 != 0x14) {
      if (param_3 == 0x15) {
        uVar9 = 0xd;
      }
      else {
        if (param_3 != 0x16) {
          return 0;
        }
        uVar9 = 0xe;
      }
      iVar10 = FUN_0061c7a0(param_1,1,uVar9);
      return iVar10;
    }
    iVar10 = *param_1;
    pcVar12 = (char *)0x0;
    if (*(int *)(iVar10 + 0x298) == 2) {
      pcVar5 = *(char **)(iVar10 + 0x85fc);
      if (pcVar5 == (char *)0x0) {
        pcVar12 = (char *)0x0;
      }
      else {
        pcVar12 = (char *)0x0;
        if (*pcVar5 != '\0') {
          pcVar12 = strchr(pcVar5,0x2f);
          if (pcVar12 == (char *)0x0) {
            pcVar12 = (char *)0x0;
          }
          else {
            pcVar12 = (char *)(*Curl_cstrdup)(pcVar5);
            if (pcVar12 == (char *)0x0) {
              return 0x1b;
            }
            sVar3 = strlen(pcVar12);
            if ((pcVar12[sVar3 - 1] != '/') &&
               (pcVar5 = strrchr(pcVar12,0x2f), pcVar5 != (char *)0x0)) {
              pcVar5[1] = '\0';
            }
          }
        }
      }
    }
    puVar13 = *(undefined **)(iVar10 + 0x300);
    if (puVar13 == (undefined *)0x0) {
      if (*(char *)(iVar10 + 0x2ad) == '\0') {
        puVar13 = &UNK_0080f462;
      }
      else {
        puVar13 = &DAT_0080f467;
      }
    }
    if (pcVar12 == (char *)0x0) {
      pcVar4 = "";
      pcVar5 = pcVar4;
    }
    else {
      pcVar4 = " ";
      pcVar5 = pcVar12;
    }
    iVar10 = curl_maprintf("%s%s%s",puVar13,pcVar4,pcVar5);
    if (iVar10 == 0) {
      if (pcVar12 != (char *)0x0) {
        (*Curl_cfree)(pcVar12);
      }
      return 0x1b;
    }
    iVar11 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d,iVar10);
    if (pcVar12 != (char *)0x0) {
      (*Curl_cfree)(pcVar12);
    }
    (*Curl_cfree)(iVar10);
    if (iVar11 == 0) {
      param_1[0xfe] = 0x1f;
      return 0;
    }
    return iVar11;
  }
  if ((*(int *)(*(int *)(*param_1 + 0x861c) + 0xc) == 1) && (param_1[0xf6] != 0)) {
    iVar10 = Curl_pp_sendf(param_1 + 0xe4,"SIZE %s");
    if (iVar10 != 0) {
      return iVar10;
    }
    param_1[0xfe] = 0x17;
    return 0;
  }
  if ((*(int *)(*(int *)(*param_1 + 0x861c) + 0xc) != 0) && (param_1[0xf6] != 0)) {
    iVar10 = Curl_pp_sendf(param_1 + 0xe4,"REST %d",0);
    if (iVar10 != 0) {
      return iVar10;
    }
    param_1[0xfe] = 0x1a;
    return 0;
  }
  iVar10 = *param_1;
  if (*(int *)(*(int *)(iVar10 + 0x861c) + 0xc) != 0) {
    param_1[0xfe] = 0xd;
    iVar10 = *(int *)(*param_1 + 0x861c);
    puVar15 = *(undefined4 **)(*param_1 + 0x20c);
    param_1[0xfb] = 0;
    if (puVar15 != (undefined4 *)0x0) {
      iVar11 = 0;
      for (; puVar15 != (undefined4 *)0x0 && iVar11 < param_1[0xfb];
          puVar15 = (undefined4 *)puVar15[1]) {
        iVar11 = iVar11 + 1;
      }
      if (puVar15 != (undefined4 *)0x0) {
        pcVar12 = (char *)*puVar15;
        if (*pcVar12 == '*') {
          pcVar12 = pcVar12 + 1;
          param_1[0xfc] = 1;
        }
        else {
          param_1[0xfc] = 0;
        }
        iVar10 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d,pcVar12);
        if (iVar10 == 0) {
          param_1[0xfe] = 0xd;
          return 0;
        }
        return iVar10;
      }
    }
    if (*(int *)(iVar10 + 0xc) != 0) {
      param_1[0xfe] = 0;
      return 0;
    }
    if (param_1[0x104] != -1 || param_1[0x105] != -1) {
      Curl_pgrsSetDownloadSize();
      iVar10 = FUN_0061b5a4(param_1,extraout_r1,param_1[0x104],param_1[0x105]);
      return iVar10;
    }
    iVar10 = Curl_pp_sendf(param_1 + 0xe4,"SIZE %s",param_1[0xf6]);
    if (iVar10 == 0) {
      param_1[0xfe] = 0x18;
      return 0;
    }
    return iVar10;
  }
  if (*(char *)(iVar10 + 0x2ae) == '\0') {
    if (*(char *)(iVar10 + 0x2c6) == '\0') {
      if (((char)param_1[0x72] == '\0') && (*(char *)((int)param_1 + 0x1bf) != '\0')) {
        *(undefined1 *)(param_1 + 0x72) = 1;
      }
      bVar1 = *(byte *)(param_1 + 0x72);
      iVar10 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d,&DAT_00839e13 + (bVar1 ^ 1) * 5);
      if (iVar10 == 0) {
        param_1[0xfb] = bVar1 ^ 1;
        param_1[0xfe] = 0x1e;
        Curl_infof(*param_1,"Connect data stream passively\n");
      }
      return iVar10;
    }
    piVar8 = param_1 + 0xe4;
    if (param_1[0xf6] == 0) {
      puVar13 = *(undefined **)(iVar10 + 0x300);
      if (puVar13 == (undefined *)0x0) {
        if (*(char *)(iVar10 + 0x2ad) == '\0') {
          puVar13 = &UNK_0080f462;
        }
        else {
          puVar13 = &DAT_0080f467;
        }
      }
      iVar10 = Curl_pp_sendf(piVar8,"PRET %s",puVar13);
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    else if (*(char *)(iVar10 + 0x2b9) == '\0') {
      iVar10 = Curl_pp_sendf(piVar8,"PRET RETR %s");
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    else {
      iVar10 = Curl_pp_sendf(piVar8,"PRET STOR %s");
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    param_1[0xfe] = 0x1d;
    return 0;
  }
  iVar10 = *param_1;
  acStack_930[0] = '\0';
  acStack_930[1] = '\0';
  acStack_930[2] = '\0';
  acStack_930[3] = '\0';
  iStack_2c = __stack_chk_guard;
  iStack_9bc = -1;
  memset(acStack_930 + 4,0,0xfc);
  pcVar12 = *(char **)(iVar10 + 0x314);
  piStack_9b4 = (int *)0x0;
  if ((pcVar12 == (char *)0x0) || (sVar3 = strlen(pcVar12), sVar3 < 2)) {
    pcVar4 = (char *)0x0;
    pcVar12 = pcVar4;
    pcVar5 = pcVar4;
LAB_0061ba0c:
    sStack_9b8 = 0x80;
    iVar11 = getsockname(param_1[0x4c],asStack_9b0,&sStack_9b8);
    if (iVar11 == 0) {
      inet_ntop((uint)asStack_9b0[0].sa_family,asStack_9b0[0].sa_data + 2,acStack_430,0x401);
      bVar2 = false;
      pcVar6 = acStack_430;
      goto LAB_0061ba50;
    }
    puVar15 = (undefined4 *)__errno();
    pcVar6 = (char *)Curl_strerror(param_1,*puVar15);
    pcVar12 = "getsockname() failed: %s";
  }
  else {
    if (sVar3 < 0x10) {
      sVar3 = 0x10;
    }
    pcVar4 = (char *)(*Curl_ccalloc)(sVar3 + 1,1);
    if (pcVar4 == (char *)0x0) {
      iVar11 = 0x1b;
      goto LAB_0061bcf4;
    }
    if (*pcVar12 == ':') {
LAB_0061b998:
      pcVar5 = strchr(pcVar12,0x3a);
      if (pcVar5 == (char *)0x0) {
        pcVar12 = (char *)0x0;
        pcVar5 = pcVar12;
      }
      else {
        strtoul(pcVar5 + 1,(char **)0x0,10);
        pcVar12 = (char *)curlx_ultous();
        pcVar6 = strchr(pcVar5,0x2d);
        pcVar5 = pcVar12;
        if (pcVar6 != (char *)0x0) {
          strtoul(pcVar6 + 1,(char **)0x0,10);
          pcVar5 = (char *)curlx_ultous();
          if (pcVar5 < pcVar12) {
            pcVar12 = (char *)0x0;
            pcVar5 = pcVar12;
          }
        }
      }
    }
    else {
      pcVar5 = strchr(pcVar12,0x3a);
      if (pcVar5 != (char *)0x0) {
        strncpy(pcVar4,pcVar12,(int)pcVar5 - (int)pcVar12);
        pcVar12 = pcVar5;
        goto LAB_0061b998;
      }
      strcpy(pcVar4,pcVar12);
      pcVar12 = (char *)0x0;
      pcVar5 = pcVar12;
    }
    if (*pcVar4 == '\0') goto LAB_0061ba0c;
    iVar11 = Curl_if2ip(*(undefined4 *)(param_1[0xf] + 4),pcVar4,acStack_430,0x401);
    bVar2 = true;
    pcVar6 = acStack_430;
    if (iVar11 == 0) {
      pcVar6 = pcVar4;
    }
LAB_0061ba50:
    Curl_resolv(param_1,pcVar6,0,&piStack_9b4);
    if (piStack_9b4 != (int *)0x0) {
      iVar11 = *piStack_9b4;
      Curl_resolv_unlock(iVar10);
      if (iVar11 != 0) {
        if (pcVar4 != (char *)0x0) {
          (*Curl_cfree)(pcVar4);
        }
        iStack_9bc = -1;
        do {
          iVar7 = Curl_socket(param_1,iVar11,0,&iStack_9bc);
          if (iVar7 == 0) {
            memcpy(asStack_9b0,*(void **)(iVar11 + 0x18),*(size_t *)(iVar11 + 0x10));
            sStack_9b8 = *(socklen_t *)(iVar11 + 0x10);
            pcVar4 = pcVar12;
            goto LAB_0061bb76;
          }
          puVar15 = (undefined4 *)__errno();
          iVar11 = *(int *)(iVar11 + 0x1c);
        } while (iVar11 != 0);
        uVar9 = Curl_strerror(param_1,*puVar15);
        Curl_failf(iVar10,"socket failure: %s",uVar9);
        goto LAB_0061bcf2;
      }
    }
    pcVar12 = "failed to resolve the address provided to PORT: %s";
  }
  Curl_failf(iVar10,pcVar12,pcVar6);
  if (pcVar4 != (char *)0x0) {
    (*Curl_cfree)(pcVar4);
  }
  goto LAB_0061bcf2;
LAB_0061bcc2:
  if (iVar7 == 2) goto LAB_0061bcc8;
  if (((*(char *)((int)param_1 + 0x1c9) != '\0') || (iVar7 != 0)) && (asStack_9b0[0].sa_family == 2)
     ) {
    if (iVar7 == 0) {
      iVar11 = Curl_pp_sendf(param_1 + 0xe4,"%s |%d|%s|%hu|",&DAT_00839e1d,1,acStack_930,
                             asStack_9b0[0].sa_data._0_2_ << 8 |
                             (ushort)asStack_9b0[0].sa_data._0_2_ >> 8);
      if (iVar11 != 0) {
        uVar9 = curl_easy_strerror();
        Curl_failf(iVar10,"Failure sending EPRT command: %s",uVar9);
        Curl_closesocket(param_1,iStack_9bc);
        param_1[0xfe] = 0;
        param_1[0xfb] = 1;
        goto LAB_0061bcf4;
      }
      goto LAB_0061bcc8;
    }
    if (iVar7 == 1) {
      pcVar12 = acStack_830;
      pcVar5 = acStack_930;
      goto LAB_0061bc68;
    }
  }
  iVar7 = iVar7 + 1;
  goto LAB_0061bcc2;
  while( true ) {
    if (cVar14 == '.') {
      cVar14 = ',';
    }
    pcVar4 = pcVar12 + 1;
    *pcVar12 = cVar14;
    pcVar12 = pcVar4;
    pcVar5 = pcVar6;
    if (pcVar6 == (char *)0x0) break;
LAB_0061bc68:
    pcVar6 = pcVar5 + 1;
    cVar14 = *pcVar5;
    pcVar4 = pcVar12;
    if (cVar14 == '\0') break;
  }
  *pcVar4 = '\0';
  curl_msnprintf(pcVar4,0x14,",%d,%d",asStack_9b0[0].sa_data._0_2_ & 0xff,
                 (ushort)asStack_9b0[0].sa_data._0_2_ >> 8);
  iVar11 = Curl_pp_sendf(param_1 + 0xe4,"%s %s",&DAT_00839e22,acStack_830);
  if (iVar11 == 0) {
LAB_0061bcc8:
    param_1[0xfb] = iVar7;
    if (param_1[0x4d] != -1) {
      Curl_closesocket(param_1);
    }
    param_1[0x4d] = iStack_9bc;
    *(undefined1 *)((int)param_1 + 0x1c2) = 1;
    param_1[0xfe] = 0x1c;
    iVar11 = 0;
  }
  else {
    uVar9 = curl_easy_strerror();
    Curl_failf(iVar10,"Failure sending PORT command: %s",uVar9);
    Curl_closesocket(param_1,iStack_9bc);
    param_1[0xfe] = 0;
  }
  goto LAB_0061bcf4;
LAB_0061bb76:
  if (pcVar4 <= pcVar5) {
    if (asStack_9b0[0].sa_family == 2) {
      asStack_9b0[0].sa_data._0_2_ =
           (ushort)(((uint)pcVar4 & 0xff) << 8) | (ushort)((uint)pcVar4 >> 8) & 0xff;
    }
    iVar7 = bind(iStack_9bc,asStack_9b0,sStack_9b8);
    if (iVar7 == 0) {
      sStack_9b8 = 0x80;
      iVar7 = getsockname(iStack_9bc,asStack_9b0,&sStack_9b8);
      if (iVar7 == 0) {
        iVar7 = listen(iStack_9bc,1);
        if (iVar7 == 0) {
          Curl_printable_address(iVar11,acStack_930,0x100);
          iVar7 = 0;
          goto LAB_0061bcc2;
        }
        puVar15 = (undefined4 *)__errno();
        uVar9 = Curl_strerror(param_1,*puVar15);
        pcVar12 = "socket failure: %s";
      }
      else {
        puVar15 = (undefined4 *)__errno();
        uVar9 = Curl_strerror(param_1,*puVar15);
        pcVar12 = "getsockname() failed: %s";
      }
LAB_0061bbc6:
      Curl_failf(iVar10,pcVar12,uVar9);
      goto LAB_0061bbcc;
    }
    piVar8 = (int *)__errno();
    iVar7 = *piVar8;
    if ((bVar2) && (iVar7 == 99)) {
      uVar9 = Curl_strerror(param_1);
      Curl_infof(iVar10,"bind(port=%hu) on non-local address failed: %s\n",pcVar4,uVar9);
      sStack_9b8 = 0x80;
      iVar7 = getsockname(param_1[0x4c],asStack_9b0,&sStack_9b8);
      if (iVar7 != 0) {
        puVar15 = (undefined4 *)__errno();
        uVar9 = Curl_strerror(param_1,*puVar15);
        pcVar12 = "getsockname() failed: %s";
        goto LAB_0061bbc6;
      }
      bVar2 = false;
      pcVar4 = pcVar12;
    }
    else {
      if (iVar7 != 0xd && iVar7 != 0x62) {
        uVar9 = Curl_strerror(param_1);
        Curl_failf(iVar10,"bind(port=%hu) failed: %s",pcVar4,uVar9);
        goto LAB_0061bbcc;
      }
      pcVar4 = (char *)((uint)(pcVar4 + 1) & 0xffff);
    }
    goto LAB_0061bb76;
  }
  Curl_failf(iVar10,"bind() failed, we ran out of ports!");
LAB_0061bbcc:
  Curl_closesocket(param_1,iStack_9bc);
LAB_0061bcf2:
  iVar11 = 0x1e;
LAB_0061bcf4:
  if (iStack_2c == __stack_chk_guard) {
    return iVar11;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar11);
}

// ---- FUN_0061c7a0  @ 0x61c7a0
/* WARNING: Removing unreachable block (ram,0x0061cb26) */
/* WARNING: Removing unreachable block (ram,0x0061ca4e) */
/* WARNING: Removing unreachable block (ram,0x0061cb22) */
/* WARNING: Removing unreachable block (ram,0x0061cb2c) */
/* WARNING: Removing unreachable block (ram,0x0061cb30) */
/* WARNING: Removing unreachable block (ram,0x0061cb34) */
/* WARNING: Removing unreachable block (ram,0x0061cb36) */
/* WARNING: Removing unreachable block (ram,0x0061cb3a) */
/* WARNING: Removing unreachable block (ram,0x0061ca52) */
/* WARNING: Removing unreachable block (ram,0x0061ca60) */
/* WARNING: Removing unreachable block (ram,0x0061caa6) */
/* WARNING: Removing unreachable block (ram,0x0061ca6a) */
/* WARNING: Removing unreachable block (ram,0x0061ca6e) */
/* WARNING: Removing unreachable block (ram,0x0061caaa) */
/* WARNING: Removing unreachable block (ram,0x0061ca78) */
/* WARNING: Removing unreachable block (ram,0x0061ca88) */
/* WARNING: Removing unreachable block (ram,0x0061ca96) */
/* WARNING: Removing unreachable block (ram,0x0061caa0) */
/* WARNING: Removing unreachable block (ram,0x0061caac) */
/* WARNING: Removing unreachable block (ram,0x0061cab2) */
/* WARNING: Removing unreachable block (ram,0x0061cabe) */
/* WARNING: Removing unreachable block (ram,0x0061cab8) */
/* WARNING: Removing unreachable block (ram,0x0061cac2) */
/* WARNING: Removing unreachable block (ram,0x0061cacc) */
/* WARNING: Removing unreachable block (ram,0x0061cac4) */
/* WARNING: Removing unreachable block (ram,0x0061cad2) */
/* WARNING: Removing unreachable block (ram,0x0061caec) */
/* WARNING: Removing unreachable block (ram,0x0061cb02) */
/* WARNING: Removing unreachable block (ram,0x0061cb08) */
/* WARNING: Removing unreachable block (ram,0x0061cb14) */
/* WARNING: Removing unreachable block (ram,0x0061cade) */
/* WARNING: Removing unreachable block (ram,0x0061cae0) */
/* WARNING: Removing unreachable block (ram,0x0061cb1c) */
/* WARNING: Removing unreachable block (ram,0x0061cb42) */
/* WARNING: Removing unreachable block (ram,0x0061b77c) */
/* WARNING: Removing unreachable block (ram,0x0061b784) */
/* WARNING: Type propagation algorithm not settling */

int FUN_0061c7a0(int *param_1,int param_2,uint param_3)

{
  byte bVar1;
  uint uVar2;
  uint uVar3;
  size_t sVar4;
  char *pcVar5;
  char *pcVar6;
  char *pcVar7;
  int *piVar8;
  undefined4 uVar9;
  int iVar10;
  undefined4 extraout_r1;
  int iVar11;
  char *pcVar12;
  undefined *puVar13;
  char cVar14;
  uint uVar15;
  undefined4 *puVar16;
  int iVar17;
  uint uVar18;
  bool bVar19;
  int iStack_9bc;
  socklen_t sStack_9b8;
  int *piStack_9b4;
  sockaddr asStack_9b0 [8];
  char acStack_930 [256];
  char acStack_830 [1024];
  char acStack_430 [1008];
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int iStack_2c;
  
  do {
    iVar10 = *param_1;
    iVar17 = *(int *)(iVar10 + 0x861c);
    if (param_3 < 0xd) {
LAB_0061c7c8:
      puVar16 = *(undefined4 **)(iVar10 + 0x204);
    }
    else if (param_3 < 0xf) {
      puVar16 = *(undefined4 **)(iVar10 + 0x20c);
    }
    else {
      if (param_3 != 0xf) goto LAB_0061c7c8;
      puVar16 = *(undefined4 **)(iVar10 + 0x208);
    }
    iVar11 = 0;
    if (param_2 == 0) {
      iVar11 = param_1[0xfb] + 1;
    }
    param_1[0xfb] = iVar11;
    if (puVar16 != (undefined4 *)0x0) {
      iVar11 = 0;
      for (; puVar16 != (undefined4 *)0x0 && iVar11 < param_1[0xfb];
          puVar16 = (undefined4 *)puVar16[1]) {
        iVar11 = iVar11 + 1;
      }
      if (puVar16 != (undefined4 *)0x0) {
        pcVar12 = (char *)*puVar16;
        if (*pcVar12 == '*') {
          pcVar12 = pcVar12 + 1;
          param_1[0xfc] = 1;
        }
        else {
          param_1[0xfc] = 0;
        }
        iVar10 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d,pcVar12);
        if (iVar10 != 0) {
          return iVar10;
        }
        param_1[0xfe] = param_3;
        return 0;
      }
    }
    if (param_3 == 0xe) {
      iVar10 = *param_1;
      iStack_2c = *(int *)(iVar10 + 0x861c);
      if (*(int *)(iVar10 + 0x8608) == 0 && *(int *)(iVar10 + 0x860c) == 0) goto LAB_0061b8b8;
      if (*(int *)(iVar10 + 0x860c) < 0) {
        iVar17 = Curl_pp_sendf(param_1 + 0xe4,"SIZE %s",param_1[0xf6]);
        iVar11 = 0x19;
        iVar10 = 0;
        if (iVar17 != 0) {
          return iVar17;
        }
        goto LAB_0061b8d8;
      }
      *(undefined1 *)(iVar10 + 0x2ac) = 1;
      if ((code *)param_1[0x91] == (code *)0x0) goto LAB_0061b852;
      uStack_40 = 0;
      iVar17 = (*(code *)param_1[0x91])(param_1[0x92]);
      if (iVar17 == 0) goto LAB_0061b852;
      if (iVar17 == 2) {
        uVar18 = 0;
        iVar17 = 0;
        while( true ) {
          uVar2 = *(uint *)(iVar10 + 0x8608);
          iVar11 = (*(int *)(iVar10 + 0x860c) - iVar17) - (uint)(uVar2 < uVar18);
          bVar19 = 0x4000 < uVar2 - uVar18;
          if ((int)(-(uint)bVar19 - iVar11) < 0 ==
              (SBORROW4(0,iVar11) != SBORROW4(-iVar11,(uint)bVar19))) {
            uVar2 = curlx_sotouz();
          }
          else {
            uVar2 = 0x4000;
          }
          uVar3 = (*(code *)param_1[0x93])(iVar10 + 0x50c,1,uVar2,param_1[0x94]);
          uVar15 = 1 - uVar3;
          if (1 < uVar3) {
            uVar15 = 0;
          }
          if (uVar2 < uVar3) {
            uVar15 = uVar15 | 1;
          }
          if (uVar15 != 0) break;
          bVar19 = CARRY4(uVar18,uVar3);
          uVar18 = uVar18 + uVar3;
          iVar11 = *(int *)(iVar10 + 0x860c);
          iVar17 = iVar17 + (uint)bVar19;
          bVar19 = uVar18 < *(uint *)(iVar10 + 0x8608);
          if ((int)((iVar17 - iVar11) - (uint)bVar19) < 0 ==
              (SBORROW4(iVar17,iVar11) != SBORROW4(iVar17 - iVar11,(uint)bVar19))) {
LAB_0061b852:
            uVar18 = *(uint *)(iVar10 + 0x1d0);
            iVar17 = *(int *)(iVar10 + 0x1d4);
            if ((int)(-(uint)(uVar18 != 0) - iVar17) < 0 !=
                (SBORROW4(0,iVar17) != SBORROW4(-iVar17,(uint)(uVar18 != 0)))) {
              uVar2 = uVar18 - *(uint *)(iVar10 + 0x8608);
              iVar17 = (iVar17 - *(int *)(iVar10 + 0x860c)) -
                       (uint)(uVar18 < *(uint *)(iVar10 + 0x8608));
              *(uint *)(iVar10 + 0x1d0) = uVar2;
              *(int *)(iVar10 + 0x1d4) = iVar17;
              if ((int)(-(uint)(uVar2 != 0) - iVar17) < 0 ==
                  (SBORROW4(0,iVar17) != SBORROW4(-iVar17,(uint)(uVar2 != 0)))) {
                Curl_infof(iVar10,"File already completely uploaded\n");
                uStack_40 = 0;
                uStack_3c = 0;
                uStack_38 = 0xffffffff;
                uStack_34 = 0;
                Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff);
                *(undefined4 *)(iStack_2c + 0xc) = 2;
                param_1[0xfe] = 0;
                return 0;
              }
            }
LAB_0061b8b8:
            if (*(char *)(iVar10 + 0x2ac) == '\0') {
              pcVar12 = "STOR %s";
            }
            else {
              pcVar12 = "APPE %s";
            }
            iVar10 = Curl_pp_sendf(param_1 + 0xe4,pcVar12,param_1[0xf6]);
            if (iVar10 == 0) {
              iVar11 = 0x21;
LAB_0061b8d8:
              param_1[0xfe] = iVar11;
            }
            return iVar10;
          }
        }
        pcVar12 = "Failed to read data";
      }
      else {
        pcVar12 = "Could not seek stream";
      }
      Curl_failf(iVar10,pcVar12);
      return 0x1f;
    }
    if (param_3 == 0xf) {
      return 0;
    }
    if (param_3 == 0xd) {
      if (*(int *)(iVar17 + 0xc) != 0) {
        param_1[0xfe] = 0;
        return 0;
      }
      if (param_1[0x104] != -1 || param_1[0x105] != -1) {
        Curl_pgrsSetDownloadSize();
        iVar10 = FUN_0061b5a4(param_1,extraout_r1,param_1[0x104],param_1[0x105]);
        return iVar10;
      }
      iVar10 = Curl_pp_sendf(param_1 + 0xe4,"SIZE %s",param_1[0xf6]);
      if (iVar10 != 0) {
        return iVar10;
      }
      iVar10 = 0x18;
      goto LAB_0061c8e8;
    }
    if (*(char *)((int)param_1 + 0x3de) == '\0') {
      param_1[0xfc] = 0;
      param_1[0xfd] = (uint)(*(int *)(iVar10 + 0x29c) == 2);
      if ((*(char *)((int)param_1 + 0x1b9) == '\0') || (iVar10 = param_1[0xf2], iVar10 == 0)) {
        if (param_1[0xf4] == 0) goto LAB_0061c760;
        param_1[0xfb] = 1;
        iVar10 = *(int *)param_1[0xf3];
      }
      else {
        param_1[0xfb] = 0;
      }
      iVar17 = Curl_pp_sendf(param_1 + 0xe4,"CWD %s",iVar10);
      iVar10 = 0x10;
      if (iVar17 != 0) {
        return iVar17;
      }
LAB_0061c8e8:
      param_1[0xfe] = iVar10;
      return 0;
    }
LAB_0061c760:
    if (((*(char *)(*param_1 + 0x2a9) != '\0') || (*(int *)(*param_1 + 0x224) != 0)) &&
       (param_1[0xf6] != 0)) {
      iVar10 = Curl_pp_sendf(param_1 + 0xe4,&UNK_0080f453);
      if (iVar10 == 0) {
        param_1[0xfe] = 0x12;
        return 0;
      }
      return iVar10;
    }
    iVar10 = *param_1;
    if ((*(char *)(iVar10 + 0x2b7) != '\0') && (param_1[0xf6] != 0)) {
      if (*(char *)(iVar10 + 0x2ab) == '\0') {
        cVar14 = 'I';
      }
      else {
        cVar14 = 'A';
      }
      if ((char)param_1[0xfa] != cVar14) {
        *(undefined4 *)(*(int *)(iVar10 + 0x861c) + 0xc) = 1;
        if (*(char *)(iVar10 + 0x2ab) == '\0') {
          cVar14 = 'I';
        }
        else {
          cVar14 = 'A';
        }
        if ((char)param_1[0xfa] != cVar14) {
          iVar10 = Curl_pp_sendf(param_1 + 0xe4,"TYPE %c",cVar14);
          if (iVar10 == 0) {
            param_1[0xfe] = 0x13;
            *(char *)(param_1 + 0xfa) = cVar14;
          }
          return iVar10;
        }
        param_1[0xfe] = 0x13;
      }
    }
    if ((*(int *)(*(int *)(*param_1 + 0x861c) + 0xc) == 1) && (param_1[0xf6] != 0)) {
      iVar10 = Curl_pp_sendf(param_1 + 0xe4,"SIZE %s");
      if (iVar10 == 0) {
        param_1[0xfe] = 0x17;
        return 0;
      }
      return iVar10;
    }
    if ((*(int *)(*(int *)(*param_1 + 0x861c) + 0xc) != 0) && (param_1[0xf6] != 0)) {
      iVar10 = Curl_pp_sendf(param_1 + 0xe4,"REST %d",0);
      if (iVar10 == 0) {
        param_1[0xfe] = 0x1a;
        return 0;
      }
      return iVar10;
    }
    iVar10 = *param_1;
    if (*(int *)(*(int *)(iVar10 + 0x861c) + 0xc) == 0) break;
    param_3 = 0xd;
    param_2 = 1;
    param_1[0xfe] = 0xd;
  } while( true );
  if (*(char *)(iVar10 + 0x2ae) == '\0') {
    if (*(char *)(iVar10 + 0x2c6) == '\0') {
      if (((char)param_1[0x72] == '\0') && (*(char *)((int)param_1 + 0x1bf) != '\0')) {
        *(undefined1 *)(param_1 + 0x72) = 1;
      }
      bVar1 = *(byte *)(param_1 + 0x72);
      iVar10 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080c64d,&DAT_00839e13 + (bVar1 ^ 1) * 5);
      if (iVar10 == 0) {
        param_1[0xfb] = bVar1 ^ 1;
        param_1[0xfe] = 0x1e;
        Curl_infof(*param_1,"Connect data stream passively\n");
      }
      return iVar10;
    }
    piVar8 = param_1 + 0xe4;
    if (param_1[0xf6] == 0) {
      puVar13 = *(undefined **)(iVar10 + 0x300);
      if (puVar13 == (undefined *)0x0) {
        if (*(char *)(iVar10 + 0x2ad) == '\0') {
          puVar13 = &UNK_0080f462;
        }
        else {
          puVar13 = &DAT_0080f467;
        }
      }
      iVar10 = Curl_pp_sendf(piVar8,"PRET %s",puVar13);
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    else if (*(char *)(iVar10 + 0x2b9) == '\0') {
      iVar10 = Curl_pp_sendf(piVar8,"PRET RETR %s");
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    else {
      iVar10 = Curl_pp_sendf(piVar8,"PRET STOR %s");
      if (iVar10 != 0) {
        return iVar10;
      }
    }
    param_1[0xfe] = 0x1d;
    return 0;
  }
  iVar10 = *param_1;
  acStack_930[0] = '\0';
  acStack_930[1] = '\0';
  acStack_930[2] = '\0';
  acStack_930[3] = '\0';
  iStack_2c = __stack_chk_guard;
  iStack_9bc = -1;
  memset(acStack_930 + 4,0,0xfc);
  pcVar12 = *(char **)(iVar10 + 0x314);
  piStack_9b4 = (int *)0x0;
  if ((pcVar12 == (char *)0x0) || (sVar4 = strlen(pcVar12), sVar4 < 2)) {
    pcVar5 = (char *)0x0;
    pcVar12 = pcVar5;
    pcVar6 = pcVar5;
LAB_0061ba0c:
    sStack_9b8 = 0x80;
    iVar17 = getsockname(param_1[0x4c],asStack_9b0,&sStack_9b8);
    if (iVar17 == 0) {
      inet_ntop((uint)asStack_9b0[0].sa_family,asStack_9b0[0].sa_data + 2,acStack_430,0x401);
      bVar19 = false;
      pcVar7 = acStack_430;
      goto LAB_0061ba50;
    }
    puVar16 = (undefined4 *)__errno();
    pcVar7 = (char *)Curl_strerror(param_1,*puVar16);
    pcVar12 = "getsockname() failed: %s";
  }
  else {
    if (sVar4 < 0x10) {
      sVar4 = 0x10;
    }
    pcVar5 = (char *)(*Curl_ccalloc)(sVar4 + 1,1);
    if (pcVar5 == (char *)0x0) {
      iVar17 = 0x1b;
      goto LAB_0061bcf4;
    }
    if (*pcVar12 == ':') {
LAB_0061b998:
      pcVar6 = strchr(pcVar12,0x3a);
      if (pcVar6 == (char *)0x0) {
        pcVar12 = (char *)0x0;
        pcVar6 = pcVar12;
      }
      else {
        strtoul(pcVar6 + 1,(char **)0x0,10);
        pcVar12 = (char *)curlx_ultous();
        pcVar7 = strchr(pcVar6,0x2d);
        pcVar6 = pcVar12;
        if (pcVar7 != (char *)0x0) {
          strtoul(pcVar7 + 1,(char **)0x0,10);
          pcVar6 = (char *)curlx_ultous();
          if (pcVar6 < pcVar12) {
            pcVar12 = (char *)0x0;
            pcVar6 = pcVar12;
          }
        }
      }
    }
    else {
      pcVar6 = strchr(pcVar12,0x3a);
      if (pcVar6 != (char *)0x0) {
        strncpy(pcVar5,pcVar12,(int)pcVar6 - (int)pcVar12);
        pcVar12 = pcVar6;
        goto LAB_0061b998;
      }
      strcpy(pcVar5,pcVar12);
      pcVar12 = (char *)0x0;
      pcVar6 = pcVar12;
    }
    if (*pcVar5 == '\0') goto LAB_0061ba0c;
    iVar17 = Curl_if2ip(*(undefined4 *)(param_1[0xf] + 4),pcVar5,acStack_430,0x401);
    bVar19 = true;
    pcVar7 = acStack_430;
    if (iVar17 == 0) {
      pcVar7 = pcVar5;
    }
LAB_0061ba50:
    Curl_resolv(param_1,pcVar7,0,&piStack_9b4);
    if (piStack_9b4 != (int *)0x0) {
      iVar17 = *piStack_9b4;
      Curl_resolv_unlock(iVar10);
      if (iVar17 != 0) {
        if (pcVar5 != (char *)0x0) {
          (*Curl_cfree)(pcVar5);
        }
        iStack_9bc = -1;
        do {
          iVar11 = Curl_socket(param_1,iVar17,0,&iStack_9bc);
          if (iVar11 == 0) {
            memcpy(asStack_9b0,*(void **)(iVar17 + 0x18),*(size_t *)(iVar17 + 0x10));
            sStack_9b8 = *(socklen_t *)(iVar17 + 0x10);
            pcVar5 = pcVar12;
            goto LAB_0061bb76;
          }
          puVar16 = (undefined4 *)__errno();
          iVar17 = *(int *)(iVar17 + 0x1c);
        } while (iVar17 != 0);
        uVar9 = Curl_strerror(param_1,*puVar16);
        Curl_failf(iVar10,"socket failure: %s",uVar9);
        goto LAB_0061bcf2;
      }
    }
    pcVar12 = "failed to resolve the address provided to PORT: %s";
  }
  Curl_failf(iVar10,pcVar12,pcVar7);
  if (pcVar5 != (char *)0x0) {
    (*Curl_cfree)(pcVar5);
  }
  goto LAB_0061bcf2;
LAB_0061bcc2:
  if (iVar11 == 2) goto LAB_0061bcc8;
  if (((*(char *)((int)param_1 + 0x1c9) != '\0') || (iVar11 != 0)) &&
     (asStack_9b0[0].sa_family == 2)) {
    if (iVar11 == 0) {
      iVar17 = Curl_pp_sendf(param_1 + 0xe4,"%s |%d|%s|%hu|",&DAT_00839e1d,1,acStack_930,
                             asStack_9b0[0].sa_data._0_2_ << 8 |
                             (ushort)asStack_9b0[0].sa_data._0_2_ >> 8);
      if (iVar17 != 0) {
        uVar9 = curl_easy_strerror();
        Curl_failf(iVar10,"Failure sending EPRT command: %s",uVar9);
        Curl_closesocket(param_1,iStack_9bc);
        param_1[0xfe] = 0;
        param_1[0xfb] = 1;
        goto LAB_0061bcf4;
      }
      goto LAB_0061bcc8;
    }
    if (iVar11 == 1) {
      pcVar12 = acStack_830;
      pcVar6 = acStack_930;
      goto LAB_0061bc68;
    }
  }
  iVar11 = iVar11 + 1;
  goto LAB_0061bcc2;
  while( true ) {
    if (cVar14 == '.') {
      cVar14 = ',';
    }
    pcVar5 = pcVar12 + 1;
    *pcVar12 = cVar14;
    pcVar12 = pcVar5;
    pcVar6 = pcVar7;
    if (pcVar7 == (char *)0x0) break;
LAB_0061bc68:
    pcVar7 = pcVar6 + 1;
    cVar14 = *pcVar6;
    pcVar5 = pcVar12;
    if (cVar14 == '\0') break;
  }
  *pcVar5 = '\0';
  curl_msnprintf(pcVar5,0x14,",%d,%d",asStack_9b0[0].sa_data._0_2_ & 0xff,
                 (ushort)asStack_9b0[0].sa_data._0_2_ >> 8);
  iVar17 = Curl_pp_sendf(param_1 + 0xe4,"%s %s",&DAT_00839e22,acStack_830);
  if (iVar17 == 0) {
LAB_0061bcc8:
    param_1[0xfb] = iVar11;
    if (param_1[0x4d] != -1) {
      Curl_closesocket(param_1);
    }
    param_1[0x4d] = iStack_9bc;
    *(undefined1 *)((int)param_1 + 0x1c2) = 1;
    param_1[0xfe] = 0x1c;
    iVar17 = 0;
  }
  else {
    uVar9 = curl_easy_strerror();
    Curl_failf(iVar10,"Failure sending PORT command: %s",uVar9);
    Curl_closesocket(param_1,iStack_9bc);
    param_1[0xfe] = 0;
  }
  goto LAB_0061bcf4;
LAB_0061bb76:
  if (pcVar5 <= pcVar6) {
    if (asStack_9b0[0].sa_family == 2) {
      asStack_9b0[0].sa_data._0_2_ =
           (ushort)(((uint)pcVar5 & 0xff) << 8) | (ushort)((uint)pcVar5 >> 8) & 0xff;
    }
    iVar11 = bind(iStack_9bc,asStack_9b0,sStack_9b8);
    if (iVar11 == 0) {
      sStack_9b8 = 0x80;
      iVar11 = getsockname(iStack_9bc,asStack_9b0,&sStack_9b8);
      if (iVar11 == 0) {
        iVar11 = listen(iStack_9bc,1);
        if (iVar11 == 0) {
          Curl_printable_address(iVar17,acStack_930,0x100);
          iVar11 = 0;
          goto LAB_0061bcc2;
        }
        puVar16 = (undefined4 *)__errno();
        uVar9 = Curl_strerror(param_1,*puVar16);
        pcVar12 = "socket failure: %s";
      }
      else {
        puVar16 = (undefined4 *)__errno();
        uVar9 = Curl_strerror(param_1,*puVar16);
        pcVar12 = "getsockname() failed: %s";
      }
LAB_0061bbc6:
      Curl_failf(iVar10,pcVar12,uVar9);
      goto LAB_0061bbcc;
    }
    piVar8 = (int *)__errno();
    iVar11 = *piVar8;
    if ((bVar19) && (iVar11 == 99)) {
      uVar9 = Curl_strerror(param_1);
      Curl_infof(iVar10,"bind(port=%hu) on non-local address failed: %s\n",pcVar5,uVar9);
      sStack_9b8 = 0x80;
      iVar11 = getsockname(param_1[0x4c],asStack_9b0,&sStack_9b8);
      if (iVar11 != 0) {
        puVar16 = (undefined4 *)__errno();
        uVar9 = Curl_strerror(param_1,*puVar16);
        pcVar12 = "getsockname() failed: %s";
        goto LAB_0061bbc6;
      }
      bVar19 = false;
      pcVar5 = pcVar12;
    }
    else {
      if (iVar11 != 0xd && iVar11 != 0x62) {
        uVar9 = Curl_strerror(param_1);
        Curl_failf(iVar10,"bind(port=%hu) failed: %s",pcVar5,uVar9);
        goto LAB_0061bbcc;
      }
      pcVar5 = (char *)((uint)(pcVar5 + 1) & 0xffff);
    }
    goto LAB_0061bb76;
  }
  Curl_failf(iVar10,"bind() failed, we ran out of ports!");
LAB_0061bbcc:
  Curl_closesocket(param_1,iStack_9bc);
LAB_0061bcf2:
  iVar17 = 0x1e;
LAB_0061bcf4:
  if (iStack_2c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar17);
  }
  return iVar17;
}

// ---- FUN_0061cc70  @ 0x61cc70
undefined8 FUN_0061cc70(undefined4 *param_1,undefined1 *param_2,undefined4 param_3)

{
  int iVar1;
  uint uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 *puStack_28;
  undefined1 *local_24;
  undefined4 uStack_20;
  
  uVar3 = *param_1;
  uVar5 = param_1[0x4c];
  uVar4 = param_1[0x4d];
  *param_2 = 0;
  puStack_28 = param_1;
  local_24 = param_2;
  uStack_20 = param_3;
  iVar1 = FUN_0061c15c(uVar3);
  Curl_infof(uVar3,"Checking for server connect\n");
  if (iVar1 < 0) {
    Curl_failf(uVar3,"Accept timeout occurred while waiting server connect");
    uVar4 = 0xc;
  }
  else {
    if (((param_1[0xe5] == 0) || ((byte *)param_1[0xe4] == (byte *)0x0)) ||
       (*(byte *)param_1[0xe4] < 0x34)) {
      uVar2 = Curl_socket_check(uVar5,uVar4,0xffffffff,0);
      if (uVar2 != 0xffffffff) {
        uVar4 = 0;
        if (uVar2 != 0) {
          if ((int)(uVar2 << 0x1c) < 0) {
            Curl_infof(uVar3,"Ready to accept data connection from server\n");
            uVar4 = 0;
            *param_2 = 1;
          }
          else {
            uVar4 = 0;
            if ((uVar2 & 1) != 0) {
              Curl_infof(uVar3,"Ctrl conn has data while waiting for data conn\n");
              Curl_GetFTPResponse(&puStack_28,param_1,&local_24);
              if ((int)local_24 < 400) {
                uVar4 = 8;
              }
              else {
                uVar4 = 10;
              }
            }
          }
        }
        goto LAB_0061cd34;
      }
      Curl_failf(uVar3,"Error while waiting for server connect");
    }
    else {
      Curl_infof(uVar3,"There is negative response in cache while serv connect\n");
      Curl_GetFTPResponse(&puStack_28,param_1,&local_24);
    }
    uVar4 = 10;
  }
LAB_0061cd34:
  return CONCAT44(puStack_28,uVar4);
}

// ---- FUN_0061cd50  @ 0x61cd50
int FUN_0061cd50(int *param_1,char *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *param_1;
  *param_2 = '\0';
  Curl_infof(iVar3,"Preparing for accepting server on data port\n");
  Curl_pgrsTime(iVar3,8);
  while( true ) {
    iVar1 = FUN_0061c15c(iVar3);
    if (iVar1 < 0) {
      Curl_failf(iVar3,"Accept timeout occurred while waiting server connect");
      return 0xc;
    }
    iVar2 = FUN_0061cc70(param_1,param_2);
    if (iVar2 != 0) {
      return iVar2;
    }
    if (*param_2 != '\0') {
      iVar3 = FUN_0061c1bc(param_1);
      if (iVar3 != 0) {
        return iVar3;
      }
      iVar3 = FUN_0061c258(param_1);
      return iVar3;
    }
    if (*(int *)(iVar3 + 0x4f0) != 1) break;
    if (999 < iVar1) {
      iVar1 = 1000;
    }
    Curl_socket_check(0xffffffff,0xffffffff,0xffffffff,iVar1);
  }
  iVar1 = *(int *)(iVar3 + 0x1c4);
  if (iVar1 < 1) {
    iVar1 = 60000;
  }
  Curl_expire(iVar3,iVar1);
  return 0;
}

// ---- FUN_0061da30  @ 0x61da30
int FUN_0061da30(int *param_1,undefined1 *param_2)

{
  undefined1 uVar1;
  uint uVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  longlong lVar8;
  longlong lVar9;
  char local_29;
  byte *local_28;
  byte *local_24;
  
  iVar7 = *param_1;
  iVar5 = 0;
  local_29 = '\0';
  iVar6 = *(int *)(iVar7 + 0x861c);
  if ((*(char *)((int)param_1 + 0x1c2) == '\0') &&
     (iVar5 = Curl_is_connected(param_1,1,&local_29), local_29 == '\0')) {
    return iVar5;
  }
  if (1 < *(uint *)(iVar6 + 0xc)) goto LAB_0061dba6;
  if ((char)param_1[0xf8] == '\0') {
    if (*(char *)(iVar7 + 0x2b9) == '\0') {
      *(undefined4 *)(iVar6 + 0x10) = 0xffffffff;
      *(undefined4 *)(iVar6 + 0x14) = 0xffffffff;
      iVar5 = *param_1;
      if ((*(char *)(iVar5 + 0x8601) == '\0') || (*(char **)(iVar5 + 0x8604) == (char *)0x0)) {
        *(undefined4 *)(iVar5 + 0x28) = 0xffffffff;
        *(undefined4 *)(iVar5 + 0x2c) = 0xffffffff;
      }
      else {
        lVar8 = strtoll(*(char **)(iVar5 + 0x8604),(char **)&local_28,0);
        uVar2 = (uint)((ulonglong)lVar8 >> 0x20);
        for (; (uVar4 = (uint)*local_28, uVar4 != 0 &&
               (((int)((uint)*(byte *)(_ctype_ + uVar4 + 1) << 0x1c) < 0 || (uVar4 == 0x2d))));
            local_28 = local_28 + 1) {
        }
        lVar9 = strtoll((char *)local_28,(char **)&local_24,0);
        if (local_28 == local_24) {
          lVar9 = -1;
        }
        uVar4 = ~uVar2 >> 0x1f;
        if (lVar9 != -1) {
          uVar4 = 0;
        }
        if (uVar4 == 0) {
          if (lVar8 < 0) {
            lVar9 = CONCAT44(-uVar2 - (uint)((int)lVar8 != 0),-(int)lVar8);
          }
          else {
            lVar9 = (lVar9 - lVar8) + 1;
          }
          *(longlong *)(iVar5 + 0x28) = lVar9;
        }
        *(longlong *)(iVar5 + 0x8608) = lVar8;
        *(undefined1 *)(param_1 + 0xf7) = 1;
      }
      if ((*(char *)(iVar7 + 0x2ad) == '\0') && (param_1[0xf6] != 0)) {
        uVar1 = *(undefined1 *)(iVar7 + 0x2ab);
        uVar3 = 0x15;
      }
      else {
        uVar1 = 1;
        uVar3 = 0x14;
        if (*(int *)(iVar6 + 0xc) != 0) goto LAB_0061db9e;
      }
    }
    else {
      uVar1 = *(undefined1 *)(iVar7 + 0x2ab);
      uVar3 = 0x16;
    }
    iVar5 = FUN_0061c6d8(param_1,uVar1,uVar3);
    if (iVar5 != 0) {
      return iVar5;
    }
  }
  else {
    iVar5 = FUN_0061cc70(param_1,&local_24);
    if (iVar5 != 0) {
      return iVar5;
    }
    if (((uint)local_24 & 0xff) != 0) {
      iVar5 = FUN_0061c1bc(param_1);
      *(undefined1 *)(param_1 + 0xf8) = 0;
      if (iVar5 == 0) {
        FUN_0061c258(param_1);
      }
    }
  }
LAB_0061db9e:
  iVar5 = FUN_0061b320(param_1);
LAB_0061dba6:
  if ((iVar5 == 0) && (*(int *)(iVar6 + 0xc) != 0)) {
    Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff,0,0,0xffffffff,0);
  }
  if ((char)param_1[0xf8] == '\0') {
    *param_2 = 1;
  }
  return iVar5;
}

// ---- FUN_0061dc4e  @ 0x61dc4e
/* WARNING: Removing unreachable block (ram,0x0061dbf4) */
/* WARNING: Removing unreachable block (ram,0x0061dc00) */
/* WARNING: Removing unreachable block (ram,0x0061dc08) */

int FUN_0061dc4e(int *param_1,char *param_2)

{
  int iVar1;
  
  iVar1 = FUN_0061b414();
  if ((iVar1 == 0) && (*param_2 != '\0')) {
    if (*(int *)(*(int *)(*param_1 + 0x861c) + 0xc) == 0) {
      *(undefined1 *)(param_1 + 0x70) = 1;
    }
    else {
      Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff,0,0,0xffffffff,0);
    }
    *(undefined1 *)((int)param_1 + 0x3dd) = 1;
    return 0;
  }
  return iVar1;
}

// ---- FUN_0061dc70  @ 0x61dc70
int FUN_0061dc70(int *param_1,char *param_2)

{
  char cVar1;
  int *piVar2;
  size_t sVar3;
  size_t sVar4;
  char *__dest;
  int iVar5;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  uint extraout_r1_03;
  uint extraout_r1_04;
  uint extraout_r1_05;
  uint uVar6;
  uint extraout_r1_06;
  uint extraout_r1_07;
  undefined4 extraout_r1_08;
  undefined4 extraout_r1_09;
  undefined4 extraout_r1_10;
  undefined4 uVar7;
  undefined4 *puVar8;
  int iVar9;
  undefined8 uVar10;
  longlong lVar11;
  char *pcVar12;
  char *pcVar13;
  
  *param_2 = '\0';
  *(undefined1 *)(param_1 + 0xf8) = 0;
  Curl_reset_reqproto();
  uVar10 = FUN_0061b454(param_1);
  uVar6 = (uint)((ulonglong)uVar10 >> 0x20);
  if ((int)uVar10 != 0) {
    return (int)uVar10;
  }
  if (*(char *)(*param_1 + 0x3a0) != '\0') {
    pcVar12 = "Wildcard - START of \"%s\"\n";
    pcVar13 = "rrayEPNS_15CCTouchDelegateE";
LAB_0061dcb8:
    iVar9 = *param_1;
    switch(*(undefined4 *)(iVar9 + 0x8628)) {
    case 0:
      pcVar13 = *(char **)(iVar9 + 0x85fc);
      pcVar12 = strrchr(pcVar13,0x2f);
      if (pcVar12 == (char *)0x0) {
        if (*pcVar13 != '\0') {
          uVar10 = (*Curl_cstrdup)(pcVar13);
          uVar7 = (undefined4)((ulonglong)uVar10 >> 0x20);
          *(int *)(iVar9 + 0x8630) = (int)uVar10;
          if ((int)uVar10 != 0) {
            *pcVar13 = '\0';
            goto LAB_0061dd42;
          }
          goto LAB_0061de32;
        }
LAB_0061dd34:
        *(undefined4 *)(iVar9 + 0x8628) = 3;
        lVar11 = FUN_0061c310(param_1);
      }
      else {
        if (pcVar12[1] == '\0') goto LAB_0061dd34;
        uVar10 = (*Curl_cstrdup)(pcVar12 + 1);
        uVar7 = (undefined4)((ulonglong)uVar10 >> 0x20);
        *(int *)(iVar9 + 0x8630) = (int)uVar10;
        if ((int)uVar10 == 0) {
LAB_0061de32:
          lVar11 = CONCAT44(uVar7,0x1b);
        }
        else {
          pcVar12[1] = '\0';
LAB_0061dd42:
          uVar10 = (*Curl_ccalloc)(1,0xc);
          uVar7 = (undefined4)((ulonglong)uVar10 >> 0x20);
          piVar2 = (int *)uVar10;
          if (piVar2 == (int *)0x0) {
            if (*(int *)(iVar9 + 0x8630) != 0) {
              (*Curl_cfree)();
              *(undefined4 *)(iVar9 + 0x8630) = 0;
              uVar7 = extraout_r1;
            }
            goto LAB_0061de32;
          }
          iVar5 = Curl_ftp_parselist_data_alloc();
          *piVar2 = iVar5;
          if (iVar5 == 0) {
            if (*(int *)(iVar9 + 0x8630) != 0) {
              (*Curl_cfree)();
              *(undefined4 *)(iVar9 + 0x8630) = 0;
            }
            (*Curl_cfree)(piVar2);
            uVar7 = extraout_r1_00;
            goto LAB_0061de32;
          }
          *(int **)(iVar9 + 0x8638) = piVar2;
          *(undefined4 *)(iVar9 + 0x863c) = 0x61c2f5;
          if (*(int *)(*param_1 + 0x298) == 2) {
            *(undefined4 *)(*param_1 + 0x298) = 1;
          }
          iVar5 = FUN_0061c310(param_1);
          if (iVar5 == 0) {
            iVar5 = (*Curl_cstrdup)(*(undefined4 *)(*param_1 + 0x85fc));
            *(int *)(iVar9 + 0x862c) = iVar5;
            if (iVar5 == 0) {
              if (*(int *)(iVar9 + 0x8630) != 0) {
                (*Curl_cfree)();
                *(undefined4 *)(iVar9 + 0x8630) = 0;
              }
              (**(code **)(iVar9 + 0x863c))(*(undefined4 *)(iVar9 + 0x8638));
              *(undefined4 *)(iVar9 + 0x863c) = 0;
              *(undefined4 *)(iVar9 + 0x8638) = 0;
              uVar7 = extraout_r1_02;
              goto LAB_0061de32;
            }
            piVar2[1] = *(int *)(*param_1 + 0x168);
            *(undefined4 *)(*param_1 + 0x168) = 0x6299d5;
            piVar2[2] = *(int *)(*param_1 + 0x120);
            *(int **)(*param_1 + 0x120) = param_1;
            Curl_infof(*param_1,"Wildcard - Parsing started\n");
            lVar11 = (ulonglong)extraout_r1_03 << 0x20;
          }
          else {
            if (*(int *)(iVar9 + 0x8630) != 0) {
              (*Curl_cfree)();
              *(undefined4 *)(iVar9 + 0x8630) = 0;
            }
            (**(code **)(iVar9 + 0x863c))(*(undefined4 *)(iVar9 + 0x8638));
            lVar11 = CONCAT44(extraout_r1_01,iVar5);
            *(undefined4 *)(iVar9 + 0x863c) = 0;
            *(undefined4 *)(iVar9 + 0x8638) = 0;
          }
        }
      }
      if (*(int *)(iVar9 + 0x8628) == 3) goto LAB_0061dfe4;
      if ((int)lVar11 == 0) {
        uVar7 = 1;
      }
      else {
        uVar7 = 5;
      }
      break;
    case 1:
      puVar8 = *(undefined4 **)(iVar9 + 0x8638);
      *(undefined4 *)(iVar9 + 0x168) = puVar8[1];
      *(undefined4 *)(*param_1 + 0x120) = puVar8[2];
      puVar8[1] = 0;
      puVar8[2] = 0;
      *(undefined4 *)(iVar9 + 0x8628) = 2;
      uVar10 = Curl_ftp_parselist_geterror(*puVar8);
      uVar6 = (uint)((ulonglong)uVar10 >> 0x20);
      uVar7 = 3;
      if ((int)uVar10 != 0) goto LAB_0061dfa4;
      if (*(int *)(*(int *)(iVar9 + 0x8634) + 0xc) == 0) goto code_r0x0061de82;
      goto LAB_0061dcb8;
    case 2:
      puVar8 = *(undefined4 **)**(undefined4 **)(iVar9 + 0x8634);
      sVar3 = strlen(*(char **)(iVar9 + 0x85fc));
      sVar4 = strlen((char *)*puVar8);
      uVar10 = (*Curl_cmalloc)(sVar4 + sVar3 + 1);
      __dest = (char *)uVar10;
      if (__dest == (char *)0x0) {
        lVar11 = CONCAT44((int)((ulonglong)uVar10 >> 0x20),0x1b);
        goto LAB_0061dfe4;
      }
      *__dest = '\0';
      strcat(__dest,*(char **)(iVar9 + 0x862c));
      strcat(__dest,(char *)*puVar8);
      if (*(int *)(*param_1 + 0x85f8) != 0) {
        (*Curl_cfree)();
        *(undefined4 *)(*param_1 + 0x85f8) = 0;
      }
      *(char **)(*param_1 + 0x85f8) = __dest;
      *(char **)(*param_1 + 0x85fc) = __dest;
      Curl_infof(*param_1,pcVar12,*puVar8);
      uVar6 = extraout_r1_04;
      if (*(code **)(*param_1 + 0x3a4) == (code *)0x0) {
LAB_0061df3e:
        if (puVar8[1] == 0) {
          if ((int)(puVar8[0xe] << 0x19) < 0) {
            iVar5 = puVar8[7];
            param_1[0x104] = puVar8[6];
            param_1[0x105] = iVar5;
          }
          lVar11 = FUN_0061c310(param_1);
          if ((int)lVar11 == 0) {
            Curl_llist_remove(*(undefined4 **)(iVar9 + 0x8634),**(undefined4 **)(iVar9 + 0x8634),0);
            lVar11 = (ulonglong)extraout_r1_06 << 0x20;
            if (*(int *)(*(int *)(iVar9 + 0x8634) + 0xc) == 0) {
              uVar7 = 3;
              lVar11 = (ulonglong)extraout_r1_06 << 0x20;
              break;
            }
          }
          goto LAB_0061dfe4;
        }
      }
      else {
        uVar10 = (**(code **)(*param_1 + 0x3a4))
                           (puVar8,*(undefined4 *)(iVar9 + 0x8640),
                            *(undefined4 *)(*(int *)(iVar9 + 0x8634) + 0xc));
        uVar6 = (uint)((ulonglong)uVar10 >> 0x20);
        if ((int)uVar10 == 1) {
          lVar11 = CONCAT44(uVar6,0x58);
          goto LAB_0061dfe4;
        }
        if ((int)uVar10 != 2) goto LAB_0061df3e;
        Curl_infof(*param_1,pcVar13 + 0x61df36,*puVar8);
        uVar6 = extraout_r1_05;
      }
      uVar7 = 4;
      goto LAB_0061dfa4;
    case 3:
      if (*(undefined4 **)(iVar9 + 0x8638) == (undefined4 *)0x0) {
        uVar7 = 6;
        lVar11 = (ulonglong)uVar6 << 0x20;
      }
      else {
        lVar11 = Curl_ftp_parselist_geterror(**(undefined4 **)(iVar9 + 0x8638));
        if ((int)lVar11 == 0) {
          uVar7 = 6;
        }
        else {
          uVar7 = 5;
        }
      }
      break;
    case 4:
      if (*(code **)(iVar9 + 0x3a8) != (code *)0x0) {
        (**(code **)(iVar9 + 0x3a8))(*(undefined4 *)(iVar9 + 0x8640));
      }
      Curl_llist_remove(*(undefined4 **)(iVar9 + 0x8634),**(undefined4 **)(iVar9 + 0x8634),0);
      uVar6 = extraout_r1_07;
      if (*(int *)(*(int *)(iVar9 + 0x8634) + 0xc) == 0) {
        uVar7 = 3;
      }
      else {
        uVar7 = 2;
      }
LAB_0061dfa4:
      *(undefined4 *)(iVar9 + 0x8628) = uVar7;
      goto LAB_0061dcb8;
    default:
      lVar11 = (ulonglong)uVar6 << 0x20;
      goto LAB_0061dfe4;
    }
    *(undefined4 *)(iVar9 + 0x8628) = uVar7;
    goto LAB_0061dfe4;
  }
  lVar11 = FUN_0061c310(param_1);
  iVar9 = (int)lVar11;
joined_r0x0061e00a:
  iVar5 = (int)lVar11;
  if (iVar9 == 0) {
    iVar9 = *param_1;
    *(undefined4 *)(iVar9 + 0x18) = 0xffffffff;
    *(undefined4 *)(iVar9 + 0x1c) = 0xffffffff;
    Curl_pgrsSetUploadCounter(iVar9,(int)((ulonglong)lVar11 >> 0x20),0,0);
    Curl_pgrsSetDownloadCounter(iVar9,extraout_r1_08,0,0);
    Curl_pgrsSetUploadSize(iVar9,extraout_r1_09,0,0);
    Curl_pgrsSetDownloadSize(iVar9,extraout_r1_10,0,0);
    *(undefined1 *)((int)param_1 + 0x3dd) = 1;
    if (*(char *)(*param_1 + 0x2b7) != '\0') {
      *(undefined4 *)(*(int *)(*param_1 + 0x861c) + 0xc) = 1;
    }
    *param_2 = '\0';
    iVar5 = FUN_0061c7a0(param_1,1,0xc);
    if (iVar5 == 0) {
      if (*(int *)(*param_1 + 0x4f0) == 2) {
        iVar5 = FUN_0061b414(param_1,param_2);
      }
      else {
        iVar5 = FUN_0061b320(param_1);
        *param_2 = '\x01';
      }
      cVar1 = *(char *)((int)param_1 + 0x1c1);
      if (iVar5 == 0) {
        if (*param_2 == '\0') {
          return 0;
        }
        iVar5 = *(int *)(*param_1 + 0x861c);
        iVar9 = 0;
        if (((cVar1 == '\0') || (iVar9 = FUN_0061da30(param_1,&stack0xffffffe7), iVar9 == 0)) ||
           (param_1[0x4d] == -1)) {
          if (*(int *)(iVar5 + 0xc) == 0) {
            if (cVar1 == '\0') {
              *(undefined1 *)(param_1 + 0x70) = 1;
            }
          }
          else {
            Curl_setup_transfer(param_1,0xffffffff,0xffffffff,0xffffffff,0,0,0xffffffff,0);
          }
          *(undefined1 *)((int)param_1 + 0x3dd) = 1;
        }
        else {
          Curl_closesocket(param_1);
          param_1[0x4d] = -1;
        }
        return iVar9;
      }
    }
    FUN_0061b268(param_1 + 0xe4);
  }
  return iVar5;
code_r0x0061de82:
  *(undefined4 *)(iVar9 + 0x8628) = 3;
  lVar11 = CONCAT44(uVar6,0x4e);
LAB_0061dfe4:
  iVar9 = (int)lVar11;
  if (*(int *)(*param_1 + 0x8628) == 6 || *(int *)(*param_1 + 0x8628) == 4) {
    return 0;
  }
  goto joined_r0x0061e00a;
}

// ---- FUN_0061e1a0  @ 0x61e1a0
uint FUN_0061e1a0(int *param_1,uint param_2,uint param_3)

{
  char cVar1;
  char *pcVar2;
  size_t sVar3;
  size_t sVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  int iVar12;
  uint uVar13;
  undefined4 *puVar14;
  undefined4 uVar15;
  int iVar16;
  bool bVar17;
  int local_40;
  int iStack_3c;
  uint local_38;
  int local_34;
  undefined1 auStack_30 [4];
  int local_2c [2];
  
  iVar12 = *param_1;
  puVar14 = *(undefined4 **)(iVar12 + 0x861c);
  uVar15 = *(undefined4 *)(iVar12 + 0x85fc);
  if (puVar14 == (undefined4 *)0x0) {
    return 0;
  }
  if (param_2 < 0x14) {
    if (0x10 < param_2) goto LAB_0061e204;
    if (param_2 < 0xb) {
      if ((8 < param_2) || (param_2 == 0)) goto LAB_0061e204;
    }
    else if (param_2 - 0xc < 2) goto LAB_0061e204;
LAB_0061e20c:
    *(undefined1 *)((int)param_1 + 0x3dd) = 0;
    *(undefined1 *)((int)param_1 + 0x3df) = 1;
    *(undefined1 *)(param_1 + 0x6e) = 1;
    uVar13 = param_2;
  }
  else {
    if (param_2 != 0x1e) {
      if (param_2 < 0x1f) {
        if (param_2 != 0x17) {
          bVar17 = param_2 == 0x19;
LAB_0061e202:
          if (!bVar17) goto LAB_0061e20c;
        }
      }
      else if ((param_2 != 0x3f) && (param_2 != 0x4e)) {
        bVar17 = param_2 == 0x24;
        goto LAB_0061e202;
      }
    }
LAB_0061e204:
    uVar13 = param_3;
    if (param_3 != 0) goto LAB_0061e20c;
  }
  if (param_1[0xf9] != 0) {
    (*Curl_cfree)();
  }
  if (*(char *)(iVar12 + 0x3a0) != '\0') {
    if ((*(code **)(iVar12 + 0x3a8) != (code *)0x0) && (param_1[0xf6] != 0)) {
      (**(code **)(iVar12 + 0x3a8))(*(undefined4 *)(iVar12 + 0x8640));
    }
    param_1[0x104] = -1;
    param_1[0x105] = -1;
  }
  pcVar2 = (char *)curl_easy_unescape(iVar12,uVar15,0,0);
  if (pcVar2 == (char *)0x0) {
    if (uVar13 == 0) {
      uVar13 = 0x1b;
    }
    *(undefined1 *)((int)param_1 + 0x3dd) = 0;
    *(undefined1 *)(param_1 + 0x6e) = 1;
    param_1[0xf9] = 0;
  }
  else {
    sVar3 = 0;
    if ((char *)param_1[0xf6] != (char *)0x0) {
      sVar3 = strlen((char *)param_1[0xf6]);
    }
    sVar4 = strlen(pcVar2);
    if (*(char *)((int)param_1 + 0x3df) == '\0') {
      if ((sVar4 - sVar3 == 0) || (*(int *)(iVar12 + 0x298) == 2)) {
        iVar16 = (*Curl_cstrdup)(&DAT_00801f93);
        param_1[0xf9] = iVar16;
        (*Curl_cfree)(pcVar2);
      }
      else {
        param_1[0xf9] = (int)pcVar2;
        if (sVar3 != 0) {
          pcVar2[sVar4 - sVar3] = '\0';
        }
      }
      if (param_1[0xf9] != 0) {
        Curl_infof(iVar12,"Remembering we are in dir \"%s\"\n");
      }
    }
    else {
      param_1[0xf9] = 0;
      (*Curl_cfree)(pcVar2);
    }
  }
  FUN_0061b268(param_1 + 0xe4);
  if (param_1[0x4d] != -1) {
    if ((uVar13 != 0) ||
       ((((char)param_1[0xf7] != '\0' &&
         ((int)(uint)(*(int *)(iVar12 + 0x28) == 0) <= *(int *)(iVar12 + 0x2c))) &&
        (uVar13 = Curl_pp_sendf(param_1 + 0xe4,&DAT_0080fa93), uVar13 != 0)))) {
      uVar15 = curl_easy_strerror(uVar13);
      Curl_failf(iVar12,"Failure sending ABOR command: %s",uVar15);
      *(undefined1 *)((int)param_1 + 0x3dd) = 0;
      *(undefined1 *)(param_1 + 0x6e) = 1;
    }
    if ((char)param_1[0x59] != '\0') {
      Curl_ssl_close(param_1,1);
    }
    if (param_1[0x4d] != -1) {
      Curl_closesocket(param_1);
      param_1[0x4d] = -1;
      *(undefined1 *)((int)param_1 + 0x1c2) = 0;
    }
  }
  if (uVar13 != 0) goto LAB_0061e540;
  if (((puVar14[3] != 0) || (*(char *)((int)param_1 + 0x3dd) == '\0')) ||
     ((char)param_1[0xe8] == '\0')) {
    if (param_3 != 0) goto LAB_0061e540;
    goto LAB_0061e442;
  }
  if (param_3 != 0) goto LAB_0061e540;
  iVar16 = param_1[0xee];
  param_1[0xee] = 60000;
  curlx_tvnow(&local_40);
  param_1[0xec] = local_40;
  param_1[0xed] = iStack_3c;
  uVar5 = Curl_GetFTPResponse(&local_38,param_1,&local_34);
  param_1[0xee] = iVar16;
  uVar10 = 1 - local_38;
  if (1 < local_38) {
    uVar10 = 0;
  }
  if (uVar5 == 0x1c) {
    uVar10 = uVar10 & 1;
  }
  else {
    uVar10 = 0;
  }
  if (uVar10 != 0) {
    Curl_failf(iVar12,"control connection looks dead");
    *(undefined1 *)((int)param_1 + 0x3dd) = 0;
    *(undefined1 *)(param_1 + 0x6e) = 1;
    return 0x1c;
  }
  if (uVar5 != 0) {
    return uVar5;
  }
  if ((char)param_1[0xf7] == '\0') {
    if (local_34 == 0xfa || local_34 == 0xe2) goto LAB_0061e442;
    Curl_failf(iVar12,"server did not report OK, got %d");
  }
  else {
    if ((int)(uint)(*(int *)(iVar12 + 0x28) == 0) <= *(int *)(iVar12 + 0x2c)) {
      Curl_infof(iVar12,"partial download completed, closing connection\n");
      *(undefined1 *)(param_1 + 0x6e) = 1;
      return 0;
    }
LAB_0061e442:
    if (*(char *)(iVar12 + 0x2b9) == '\0') {
      uVar5 = *(uint *)(iVar12 + 0x18);
      uVar10 = *(uint *)(iVar12 + 0x1c);
      if (uVar5 != 0xffffffff || uVar10 != 0xffffffff) {
        uVar9 = *(uint *)*puVar14;
        uVar11 = ((uint *)*puVar14)[1];
        if (((uVar10 != uVar11 || uVar5 != uVar9) &&
            (*(uint *)(iVar12 + 0x85e8) + uVar5 != uVar9 ||
             *(int *)(iVar12 + 0x85ec) + uVar10 + CARRY4(*(uint *)(iVar12 + 0x85e8),uVar5) != uVar11
            )) && (*(uint *)(iVar12 + 0x28) != uVar9 || *(uint *)(iVar12 + 0x2c) != uVar11)) {
          Curl_failf(iVar12,"Received only partial file: %lld bytes",uVar9,uVar11);
          goto LAB_0061e510;
        }
      }
      if ((char)param_1[0xf7] == '\0') {
        uVar9 = *(uint *)*puVar14;
        uVar11 = ((uint *)*puVar14)[1];
        if ((uVar9 == 0 && uVar11 == 0) &&
           ((int)((uVar11 - uVar10) - (uint)(uVar9 < uVar5)) < 0 !=
            (SBORROW4(uVar11,uVar10) != SBORROW4(uVar11 - uVar10,(uint)(uVar9 < uVar5))))) {
          uVar13 = 0x13;
          Curl_failf(iVar12,"No data was received!");
        }
      }
      goto LAB_0061e540;
    }
    iVar16 = *(int *)(iVar12 + 0x1d0);
    iVar7 = *(int *)(iVar12 + 0x1d4);
    if (iVar16 == -1 && iVar7 == -1) goto LAB_0061e540;
    iVar6 = *(int *)*puVar14;
    iVar8 = ((int *)*puVar14)[1];
    if (((iVar16 == iVar6 && iVar7 == iVar8) || (*(char *)(iVar12 + 0x201) != '\0')) ||
       (puVar14[3] != 0)) goto LAB_0061e540;
    Curl_failf(iVar12,"Uploaded unaligned file size (%lld out of %lld bytes)",iVar6,iVar8,iVar16,
               iVar7);
  }
LAB_0061e510:
  uVar13 = 0x12;
LAB_0061e540:
  puVar14[3] = 0;
  uVar5 = 0;
  if (uVar13 != 0 || param_2 != 0) {
    uVar5 = uVar13;
  }
  *(undefined1 *)(param_1 + 0xf7) = 0;
  if (((uVar13 == 0 && param_2 == 0) && (param_3 == 0)) &&
     (puVar14 = *(undefined4 **)(iVar12 + 0x208), uVar5 = param_3, puVar14 != (undefined4 *)0x0)) {
    do {
      pcVar2 = (char *)*puVar14;
      if (pcVar2 != (char *)0x0) {
        cVar1 = *pcVar2;
        if (cVar1 == '*') {
          pcVar2 = pcVar2 + 1;
        }
        uVar13 = Curl_ftpsendf(param_1,&DAT_0080c64d,pcVar2);
        if (uVar13 != 0) {
          return uVar13;
        }
        curlx_tvnow(&local_40);
        param_1[0xec] = local_40;
        param_1[0xed] = iStack_3c;
        uVar13 = Curl_GetFTPResponse(auStack_30,param_1,local_2c);
        if (uVar13 != 0) {
          return uVar13;
        }
        if ((cVar1 != '*') && (399 < local_2c[0])) {
          Curl_failf(*param_1,"QUOT string not accepted: %s",pcVar2);
          return 0x15;
        }
      }
      puVar14 = (undefined4 *)puVar14[1];
    } while (puVar14 != (undefined4 *)0x0);
    uVar5 = 0;
  }
  return uVar5;
}

// ---- FUN_0061e630  @ 0x61e630
undefined4 FUN_0061e630(int *param_1,int param_2)

{
  int iVar1;
  
  if (*param_1 != 0) {
    (*Curl_cfree)();
    *param_1 = 0;
  }
  if (param_2 != 0) {
    iVar1 = (*Curl_cstrdup)(param_2);
    if (iVar1 != 0) {
      *param_1 = iVar1;
      return 0;
    }
    return 0x1b;
  }
  return 0;
}

// ---- FUN_0061e674  @ 0x61e674
undefined4 FUN_0061e674(int param_1)

{
  undefined4 uVar1;
  bool bVar2;
  
  *(int *)(param_1 + 0x8608) = *(int *)(param_1 + 0x1f0);
  *(int *)(param_1 + 0x860c) = *(int *)(param_1 + 500);
  if ((*(int *)(param_1 + 0x1f0) == 0 && *(int *)(param_1 + 500) == 0) &&
     (*(int *)(param_1 + 0x334) == 0)) {
    *(undefined1 *)(param_1 + 0x8601) = 0;
    return 0;
  }
  if (*(char *)(param_1 + 0x8602) != '\0') {
    (*Curl_cfree)(*(undefined4 *)(param_1 + 0x8604));
  }
  if (*(int *)(param_1 + 0x8608) == 0 && *(int *)(param_1 + 0x860c) == 0) {
    uVar1 = (*Curl_cstrdup)(*(undefined4 *)(param_1 + 0x334));
  }
  else {
    uVar1 = curl_maprintf("%llu-");
  }
  *(undefined4 *)(param_1 + 0x8604) = uVar1;
  bVar2 = *(int *)(param_1 + 0x8604) != 0;
  *(bool *)(param_1 + 0x8602) = bVar2;
  if (!bVar2) {
    return 0x1b;
  }
  *(undefined1 *)(param_1 + 0x8601) = 1;
  return 0;
}

// ---- FUN_0061e794  @ 0x61e794
void FUN_0061e794(undefined4 *param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  
  if (param_1 != (undefined4 *)0x0) {
    piVar2 = (int *)*param_1;
    while (piVar2 != (int *)0x0) {
      piVar1 = (int *)piVar2[2];
      if (param_2 != 0) {
        *(undefined1 *)(*piVar2 + 0x85e5) = 1;
      }
      Curl_multi_handlePipeBreak();
      Curl_llist_remove(param_1,piVar2,0);
      piVar2 = piVar1;
    }
  }
  return;
}

// ---- FUN_0061e7d4  @ 0x61e7d4
void FUN_0061e7d4(int param_1)

{
  if (param_1 != 0) {
    Curl_ssl_close(param_1,0);
    Curl_ssl_close(param_1,1);
    if (*(int *)(param_1 + 0x134) != -1) {
      Curl_closesocket(param_1);
    }
    if (*(int *)(param_1 + 0x130) != -1) {
      Curl_closesocket(param_1);
    }
    Curl_ntlm_wb_cleanup(param_1);
    if (*(int *)(param_1 + 0x104) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x104) = 0;
    }
    if (*(int *)(param_1 + 0x108) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x108) = 0;
    }
    if (*(int *)(param_1 + 0x10c) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x10c) = 0;
    }
    if (*(int *)(param_1 + 0x110) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x110) = 0;
    }
    if (*(int *)(param_1 + 0x1f8) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x1f8) = 0;
    }
    if (*(int *)(param_1 + 0x1fc) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x1fc) = 0;
    }
    if (*(int *)(param_1 + 0x204) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x204) = 0;
    }
    if (*(int *)(param_1 + 0x200) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x200) = 0;
    }
    if (*(int *)(param_1 + 0x21c) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x21c) = 0;
    }
    if (*(int *)(param_1 + 0x208) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x208) = 0;
    }
    if (*(int *)(param_1 + 0x20c) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x20c) = 0;
    }
    if (*(int *)(param_1 + 0x210) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x210) = 0;
    }
    if (*(int *)(param_1 + 0x214) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x214) = 0;
    }
    if (*(int *)(param_1 + 0x218) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x218) = 0;
    }
    if (*(int *)(param_1 + 900) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 900) = 0;
    }
    if (*(int *)(param_1 + 0x78) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x78) = 0;
    }
    if (*(int *)(param_1 + 0x88) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x88) = 0;
    }
    if (*(int *)(param_1 + 0x238) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x238) = 0;
    }
    Curl_llist_destroy(*(undefined4 *)(param_1 + 0x228),0);
    Curl_llist_destroy(*(undefined4 *)(param_1 + 0x22c),0);
    Curl_llist_destroy(*(undefined4 *)(param_1 + 0x230),0);
    Curl_llist_destroy(*(undefined4 *)(param_1 + 0x234),0);
    *(undefined4 *)(param_1 + 0x228) = 0;
    *(undefined4 *)(param_1 + 0x22c) = 0;
    *(undefined4 *)(param_1 + 0x230) = 0;
    *(undefined4 *)(param_1 + 0x234) = 0;
    if (*(int *)(param_1 + 0x428) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x428) = 0;
    }
    Curl_free_ssl_config(param_1 + 0x17c);
    (*Curl_cfree)(param_1);
  }
  return;
}

// ---- FUN_0061e98c  @ 0x61e98c
undefined8 FUN_0061e98c(char *param_1,char *param_2)

{
  size_t sVar1;
  char *pcVar2;
  int iVar3;
  undefined4 uVar4;
  uint uVar5;
  size_t sVar6;
  uint uVar7;
  size_t sVar8;
  char *local_30;
  
  sVar1 = strlen(param_2);
  pcVar2 = strchr(param_1,0x3a);
  sVar6 = (int)pcVar2 - (int)param_1;
  if (pcVar2 == (char *)0x0) {
    sVar6 = strlen(param_1);
  }
  sVar8 = 0;
  local_30 = param_1;
  while (sVar8 < sVar1) {
    do {
      pcVar2 = strchr(", ",(uint)(byte)param_2[sVar8]);
      if (pcVar2 == (char *)0x0) break;
      sVar8 = sVar8 + 1;
    } while (sVar8 < sVar1);
    uVar5 = sVar8;
    if (sVar8 == sVar1) break;
    while ((uVar5 < sVar1 &&
           (pcVar2 = strchr(", ",(uint)(byte)param_2[uVar5]), pcVar2 == (char *)0x0))) {
      uVar5 = uVar5 + 1;
    }
    if (param_2[sVar8] == '.') {
      sVar8 = sVar8 + 1;
    }
    uVar7 = uVar5 - sVar8;
    if (uVar7 <= sVar6) {
      local_30 = param_1 + (sVar6 - uVar5) + sVar8;
      iVar3 = Curl_raw_nequal(param_2 + sVar8,local_30,uVar7);
      if ((iVar3 != 0) && ((uVar7 == sVar6 || (local_30[-1] == '.')))) {
        uVar4 = 1;
        goto LAB_0061ea38;
      }
    }
    sVar8 = uVar5 + 1;
  }
  uVar4 = 0;
LAB_0061ea38:
  return CONCAT44(local_30,uVar4);
}

// ---- FUN_0061ee58  @ 0x61ee58
int FUN_0061ee58(int param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int local_20;
  undefined4 uStack_1c;
  
  iVar3 = -1;
  local_20 = param_1;
  uStack_1c = param_2;
  curlx_tvnow(&local_20);
  iVar5 = -1;
  for (iVar4 = 0; (piVar2 = *(int **)(param_1 + 0x4f4), piVar2 != (int *)0x0 && (iVar4 < piVar2[1]))
      ; iVar4 = iVar4 + 1) {
    iVar1 = *(int *)(*piVar2 + iVar4 * 4);
    if ((iVar1 != 0) &&
       ((*(char *)(iVar1 + 0x30) == '\0' &&
        (iVar1 = curlx_tvdiff(local_20,uStack_1c,*(undefined4 *)(iVar1 + 0x120),
                              *(undefined4 *)(iVar1 + 0x124)), iVar5 < iVar1)))) {
      iVar3 = iVar4;
      iVar5 = iVar1;
    }
  }
  if (-1 < iVar3) {
    piVar2 = *(int **)(*piVar2 + iVar3 * 4);
    *piVar2 = param_1;
    Curl_disconnect(piVar2,0);
    *(undefined4 *)(**(int **)(param_1 + 0x4f4) + iVar3 * 4) = 0;
  }
  return iVar3;
}

// ---- FUN_0061eec8  @ 0x61eec8
void FUN_0061eec8(int param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  
  iVar1 = (*(int **)(param_1 + 0x4f4))[1];
  for (iVar2 = 0; iVar2 < iVar1; iVar2 = iVar2 + 1) {
    if (*(int *)(**(int **)(param_1 + 0x4f4) + iVar2 * 4) == 0) goto LAB_0061ef12;
  }
  if (iVar2 == iVar1) {
    iVar2 = FUN_0061ee58(param_1);
    if (iVar2 == -1) {
      Curl_infof(param_1,"This connection did not fit in the connection cache\n");
    }
    else {
      Curl_infof(param_1,"Connection (#%ld) was killed to make room (holds %ld)\n",iVar2,
                 *(undefined4 *)(*(int *)(param_1 + 0x4f4) + 4));
    }
  }
LAB_0061ef12:
  param_2[0xd] = iVar2;
  *(undefined1 *)(param_2 + 0xc) = 1;
  if (iVar2 != -1) {
    *(int **)(**(int **)(param_1 + 0x4f4) + iVar2 * 4) = param_2;
    *param_2 = param_1;
  }
  return;
}

// ---- FUN_0061ef34  @ 0x61ef34
/* WARNING: Type propagation algorithm not settling */

void FUN_0061ef34(int param_1,undefined4 *param_2,undefined1 *param_3)

{
  bool bVar1;
  undefined2 uVar2;
  int *piVar3;
  int iVar4;
  size_t sVar5;
  undefined1 *puVar6;
  char *pcVar7;
  size_t sVar8;
  ulong uVar9;
  int iVar10;
  long lVar11;
  int iVar12;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  uint uVar13;
  byte *pbVar14;
  char cVar15;
  undefined1 uVar16;
  char *pcVar17;
  undefined4 uVar18;
  uint *puVar19;
  undefined *puVar20;
  int *piVar21;
  int iVar22;
  char *pcVar23;
  undefined4 *puVar24;
  char *pcVar25;
  undefined4 *puVar26;
  int *piVar27;
  undefined1 *puVar28;
  int local_440;
  int iStack_43c;
  char local_431;
  char *local_430;
  char local_42c [255];
  undefined1 local_32d;
  char local_32c [255];
  undefined1 local_22d;
  char local_22c [255];
  undefined1 local_12d;
  uint local_12c [63];
  undefined1 local_2d;
  int local_2c;
  
  local_2c = __stack_chk_guard;
  *param_3 = 0;
  if (*(int *)(param_1 + 0x3c8) == 0) {
LAB_006202f2:
    iVar4 = 3;
    goto LAB_006202f8;
  }
  piVar3 = (int *)(*Curl_ccalloc)(1,0x440);
  if (piVar3 == (int *)0x0) goto LAB_006202f6;
  piVar3[0x79] = (int)&DAT_008fe6f8;
  piVar3[0x4c] = -1;
  piVar3[0x4d] = -1;
  piVar3[0xd] = -1;
  piVar3[0x26] = -1;
  *(undefined1 *)(piVar3 + 0x6e) = 1;
  curlx_tvnow(&local_440);
  piVar3[0x4a] = local_440;
  piVar3[0x4b] = iStack_43c;
  *piVar3 = param_1;
  uVar13 = *(uint *)(param_1 + 0x270);
  piVar3[0x45] = uVar13;
  cVar15 = '\0';
  if ((*(char **)(param_1 + 0x330) != (char *)0x0) &&
     (cVar15 = '\0', **(char **)(param_1 + 0x330) != '\0')) {
    cVar15 = '\x01';
  }
  *(char *)((int)piVar3 + 0x1ba) = cVar15;
  uVar16 = 0;
  if (cVar15 != '\0') {
    if (uVar13 < 2) {
      uVar16 = 1;
    }
    else {
      uVar16 = 0;
    }
  }
  *(undefined1 *)((int)piVar3 + 0x1bb) = uVar16;
  *(bool *)((int)piVar3 + 0x1bd) = *(int *)(param_1 + 0x368) != 0;
  *(undefined1 *)((int)piVar3 + 0x1c5) = *(undefined1 *)(param_1 + 0x2aa);
  *(bool *)(piVar3 + 0x6f) = *(int *)(param_1 + 0x360) != 0;
  *(undefined1 *)(piVar3 + 0x72) = *(undefined1 *)(param_1 + 0x2c4);
  *(undefined1 *)((int)piVar3 + 0x1c9) = *(undefined1 *)(param_1 + 0x2c5);
  piVar3[0x108] = *(int *)(param_1 + 0x23c);
  piVar3[0x109] = *(int *)(param_1 + 0x240);
  piVar3[0x7b] = *(int *)(param_1 + 0x288);
  piVar3[0x9d] = -1;
  piVar3[0x9e] = 0;
  piVar3[0x9f] = 0;
  piVar3[0xa0] = 0;
  if (((*(int *)(param_1 + 8) == 0) || (iVar4 = Curl_multi_canPipeline(), iVar4 == 0)) ||
     (piVar3[0x8e] != 0)) {
LAB_0061f068:
    iVar4 = Curl_llist_alloc(&DAT_0061e671);
    piVar3[0x8a] = iVar4;
    iVar4 = Curl_llist_alloc(&DAT_0061e671);
    piVar3[0x8b] = iVar4;
    iVar4 = Curl_llist_alloc(&DAT_0061e671);
    piVar3[0x8c] = iVar4;
    iVar4 = Curl_llist_alloc(&DAT_0061e671);
    piVar3[0x8d] = iVar4;
    if (((piVar3[0x8a] == 0) || (piVar3[0x8b] == 0)) || ((piVar3[0x8c] == 0 || (iVar4 == 0))))
    goto LAB_0061f0fe;
    if (*(int *)(param_1 + 0x304) != 0) {
      iVar4 = (*Curl_cstrdup)();
      piVar3[0x10a] = iVar4;
      if (iVar4 == 0) goto LAB_0061f0fe;
    }
    piVar3[0x10c] = *(int *)(param_1 + 0x164);
    *(undefined2 *)(piVar3 + 0x10b) = *(undefined2 *)(param_1 + 0x160);
    piVar3[10] = *(int *)(param_1 + 0x19c);
    piVar3[0xb] = *(int *)(param_1 + 0x1a0);
    *param_2 = piVar3;
    sVar5 = strlen(*(char **)(param_1 + 0x3c8));
    if (sVar5 < 0x100) {
      sVar5 = 0x100;
    }
    if (*(int *)(param_1 + 0x85f8) != 0) {
      (*Curl_cfree)();
      *(undefined4 *)(param_1 + 0x85f8) = 0;
    }
    *(undefined4 *)(param_1 + 0x85fc) = 0;
    iVar4 = (*Curl_cmalloc)(sVar5 + 2);
    *(int *)(param_1 + 0x85f8) = iVar4;
    if (iVar4 != 0) {
      *(int *)(param_1 + 0x85fc) = iVar4;
      puVar6 = (undefined1 *)(*Curl_cmalloc)(sVar5 + 2);
      piVar3[0x1e] = (int)puVar6;
      if (puVar6 == (undefined1 *)0x0) {
        if (*(int *)(param_1 + 0x85f8) != 0) {
          (*Curl_cfree)();
          *(undefined4 *)(param_1 + 0x85f8) = 0;
        }
        *(undefined4 *)(param_1 + 0x85fc) = 0;
      }
      else {
        piVar3[0x20] = (int)puVar6;
        *puVar6 = 0;
        pcVar23 = *(char **)(param_1 + 0x85fc);
        iVar4 = sscanf(*(char **)(param_1 + 0x3c8),"%15[^:]:%[^\n]",local_12c,pcVar23);
        if ((iVar4 == 2) && (iVar4 = Curl_raw_equal(local_12c,&DAT_0080fca5), iVar4 != 0)) {
          if ((*pcVar23 == '/') && (pcVar23[1] == '/')) {
            sVar5 = strlen(pcVar23 + 2);
            memmove(pcVar23,pcVar23 + 2,sVar5 + 1);
          }
          if (*pcVar23 == '/') {
            bVar1 = false;
            puVar19 = (uint *)&DAT_0080fca5;
          }
          else {
            pcVar7 = strchr(pcVar23,0x2f);
            if (pcVar7 == (char *)0x0) {
              puVar19 = (uint *)&DAT_0080fca5;
              bVar1 = false;
            }
            else {
              bVar1 = false;
              if (pcVar7[1] == '/') {
                pcVar7 = pcVar7 + 1;
              }
              sVar5 = strlen(pcVar7);
              puVar19 = (uint *)&DAT_0080fca5;
              memmove(pcVar23,pcVar7,sVar5 + 1);
            }
          }
        }
        else {
          bVar1 = false;
          *pcVar23 = '\0';
          pcVar7 = pcVar23;
          iVar4 = sscanf(*(char **)(param_1 + 0x3c8),"%15[^\n:]://%[^\n/?]%[^\n]",local_12c,
                         piVar3[0x20],pcVar23);
          puVar19 = local_12c;
          if (iVar4 < 2) {
            iVar4 = sscanf(*(char **)(param_1 + 0x3c8),"%[^\n/?]%[^\n]",piVar3[0x20],pcVar23,pcVar7)
            ;
            if (iVar4 < 1) {
              Curl_failf(param_1,"<url> malformed");
              goto LAB_006202f2;
            }
            iVar4 = Curl_raw_nequal(&DAT_0080fd05,piVar3[0x20],4);
            if (iVar4 == 0) {
              iVar4 = Curl_raw_nequal("DICT.",piVar3[0x20],5);
              if (iVar4 == 0) {
                iVar4 = Curl_raw_nequal("LDAP.",piVar3[0x20],5);
                if (iVar4 == 0) {
                  bVar1 = true;
                  iVar4 = Curl_raw_nequal("IMAP.",piVar3[0x20],5);
                  if (iVar4 == 0) {
                    puVar19 = (uint *)&DAT_0080fcb3;
                  }
                  else {
                    puVar19 = (uint *)&UNK_0080fcb8;
                  }
                }
                else {
                  bVar1 = true;
                  puVar19 = (uint *)&UNK_0080fcbd;
                }
              }
              else {
                bVar1 = true;
                puVar19 = (uint *)&UNK_0080fcaa;
              }
            }
            else {
              bVar1 = true;
              puVar19 = (uint *)&DAT_0080fcaf;
            }
          }
        }
        pcVar25 = (char *)piVar3[0x20];
        pcVar7 = strchr(pcVar25,0x40);
        if (pcVar7 != (char *)0x0) {
          pcVar25 = pcVar7 + 1;
        }
        pcVar7 = strchr(pcVar25,0x3f);
        if (pcVar7 == (char *)0x0) {
          if (*pcVar23 == '\0') {
            strcpy(pcVar23,"/");
          }
        }
        else {
          sVar5 = strlen(pcVar7);
          sVar8 = strlen(pcVar23);
          memmove(pcVar23 + sVar5 + 1,pcVar23,sVar8 + 1);
          memcpy(pcVar23 + 1,pcVar7,sVar5);
          *pcVar23 = '/';
          *pcVar7 = '\0';
        }
        if (*pcVar23 == '?') {
          sVar5 = strlen(pcVar23);
          memmove(pcVar23 + 1,pcVar23,sVar5 + 1);
          *pcVar23 = '/';
        }
        pcVar25 = (char *)piVar3[0x20];
        pcVar7 = strchr(pcVar25,0x40);
        local_42c[0] = '\0';
        local_32c[0] = '\0';
        if (pcVar7 != (char *)0x0) {
          piVar3[0x20] = (int)(pcVar7 + 1);
          *(undefined1 *)((int)piVar3 + 0x1cb) = 1;
          if (*(int *)(param_1 + 700) != 2) {
            *(undefined1 *)(piVar3 + 0x6f) = 1;
            if (*pcVar25 == ':') {
              sscanf(pcVar25,":%255[^@]",local_32c);
            }
            else {
              sscanf(pcVar25,"%255[^:@]:%255[^@]",local_42c,local_32c);
            }
            if (local_42c[0] != '\0') {
              pcVar7 = (char *)curl_easy_unescape(param_1,local_42c,0,0);
              if (pcVar7 == (char *)0x0) goto LAB_006202f6;
              sVar5 = strlen(pcVar7);
              if (sVar5 < 0x100) {
                strcpy(local_42c,pcVar7);
              }
              (*Curl_cfree)(pcVar7);
            }
            if (local_32c[0] != '\0') {
              pcVar7 = (char *)curl_easy_unescape(param_1,local_32c,0,0);
              if (pcVar7 == (char *)0x0) goto LAB_006202f6;
              sVar5 = strlen(pcVar7);
              if (sVar5 < 0x100) {
                strcpy(local_32c,pcVar7);
              }
              (*Curl_cfree)(pcVar7);
            }
          }
        }
        if ((*(char *)piVar3[0x20] == '[') &&
           (pcVar7 = strstr((char *)piVar3[0x20],"%25"), pcVar7 != (char *)0x0)) {
          uVar9 = strtoul(pcVar7 + 3,&local_430,10);
          pcVar25 = local_430;
          if (*local_430 == ']') {
            sVar5 = strlen(local_430);
            memmove(pcVar7,pcVar25,sVar5 + 1);
            if (*(char *)(param_1 + 0x8518) == '\0') {
              piVar3[0x1c] = uVar9;
            }
          }
          else {
            Curl_infof(param_1,"Invalid IPv6 address format\n");
          }
        }
        if (*(int *)(param_1 + 0x388) != 0) {
          piVar3[0x1c] = *(int *)(param_1 + 0x388);
        }
        pcVar23 = strchr(pcVar23,0x23);
        if (pcVar23 != (char *)0x0) {
          *pcVar23 = '\0';
        }
        puVar26 = &DAT_00938044;
        do {
          puVar24 = (undefined4 *)*puVar26;
          if (puVar24 == (undefined4 *)0x0) goto LAB_0061f558;
          iVar4 = Curl_raw_equal(*puVar24,puVar19);
          puVar26 = puVar26 + 1;
        } while (iVar4 == 0);
        if (((puVar24[0xf] & *(uint *)(param_1 + 0x38c)) == 0) ||
           ((*(char *)(param_1 + 0x8518) != '\0' &&
            ((puVar24[0xf] & *(uint *)(param_1 + 0x390)) == 0)))) {
LAB_0061f558:
          iVar4 = 1;
          Curl_failf(param_1,"Protocol %s not supported or disabled in libcurl",puVar19);
          goto LAB_006202f8;
        }
        piVar3[0x7a] = (int)puVar24;
        piVar3[0x79] = (int)puVar24;
        if (bVar1) {
          iVar4 = curl_maprintf("%s://%s",*puVar24,*(undefined4 *)(param_1 + 0x3c8));
          if (iVar4 == 0) goto LAB_006202f6;
          if ((*(char *)(param_1 + 0x3cc) != '\0') && (*(int *)(param_1 + 0x3c8) != 0)) {
            (*Curl_cfree)();
          }
          *(int *)(param_1 + 0x3c8) = iVar4;
          *(undefined1 *)(param_1 + 0x3cc) = 1;
        }
        if ((*(int *)(piVar3[0x7a] + 0x40) << 0x19 < 0) &&
           (pcVar23 = strchr(*(char **)(*piVar3 + 0x85fc),0x3f), pcVar23 != (char *)0x0)) {
          *pcVar23 = '\0';
        }
        if (*(char *)((int)piVar3 + 0x1bd) == '\0') {
LAB_0061f640:
          if (*(int *)(param_1 + 0x330) == 0) {
            pcVar23 = (char *)0x0;
          }
          else {
            pcVar23 = (char *)(*Curl_cstrdup)();
            if (pcVar23 == (char *)0x0) {
              Curl_failf(param_1,"memory shortage");
              goto LAB_006202f6;
            }
          }
          pcVar7 = *(char **)(param_1 + 0x370);
          if (((pcVar7 == (char *)0x0) || (iVar4 = piVar3[0x20], *pcVar7 == '\0')) ||
             ((iVar10 = Curl_raw_equal(&DAT_0080fda3,pcVar7), iVar10 == 0 &&
              (iVar4 = FUN_0061e98c(iVar4,pcVar7), iVar4 == 0)))) {
            if (pcVar23 == (char *)0x0) {
              pcVar7 = (char *)curl_getenv("no_proxy");
              if (pcVar7 == (char *)0x0) {
                pcVar7 = (char *)curl_getenv("NO_PROXY");
              }
              iVar4 = piVar3[0x20];
              if (((pcVar7 == (char *)0x0) || (*pcVar7 == '\0')) ||
                 ((iVar10 = Curl_raw_equal(&DAT_0080fda3,pcVar7), iVar10 == 0 &&
                  (iVar4 = FUN_0061e98c(iVar4,pcVar7), iVar4 == 0)))) {
                puVar19 = local_12c;
                pbVar14 = *(byte **)piVar3[0x79];
                while( true ) {
                  if (*pbVar14 == 0) break;
                  *(char *)puVar19 = (char)*(undefined2 *)(_tolower_tab_ + (*pbVar14 + 1) * 2);
                  puVar19 = (uint *)((int)puVar19 + 1);
                  pbVar14 = pbVar14 + 1;
                }
                strcpy((char *)puVar19,"_proxy");
                pcVar23 = (char *)curl_getenv(local_12c);
                if (pcVar23 == (char *)0x0) {
                  iVar4 = Curl_raw_equal("http_proxy",local_12c);
                  if (iVar4 == 0) {
                    Curl_strntoupper(local_12c,local_12c,0x80);
                    pcVar23 = (char *)curl_getenv(local_12c);
                    if (pcVar23 != (char *)0x0) goto LAB_0061f726;
                  }
LAB_0061f72c:
                  pcVar23 = (char *)curl_getenv("all_proxy");
                  if (pcVar23 == (char *)0x0) {
                    pcVar23 = (char *)curl_getenv("ALL_PROXY");
                  }
                }
                else {
LAB_0061f726:
                  if (*pcVar23 == '\0') goto LAB_0061f72c;
                }
                if (pcVar7 != (char *)0x0) goto LAB_0061f744;
              }
              else {
LAB_0061f744:
                (*Curl_cfree)(pcVar7);
              }
              if (pcVar23 == (char *)0x0) goto LAB_0061f770;
            }
            if ((*pcVar23 == '\0') || (*(int *)(piVar3[0x79] + 0x40) << 0x1b < 0))
            goto LAB_0061f766;
            pcVar25 = strstr(pcVar23,"://");
            pcVar7 = pcVar23;
            if (pcVar25 != (char *)0x0) {
              iVar4 = Curl_raw_nequal("socks5h",pcVar23,7);
              iVar10 = 7;
              pcVar7 = pcVar25 + 3;
              if (iVar4 == 0) {
                iVar4 = Curl_raw_nequal("socks5",pcVar23,6);
                iVar10 = 5;
                if (iVar4 == 0) {
                  iVar4 = Curl_raw_nequal("socks4a",pcVar23,7);
                  iVar10 = 6;
                  if (iVar4 == 0) {
                    iVar4 = Curl_raw_nequal("socks4",pcVar23,6);
                    if (iVar4 == 0) goto LAB_0061f7cc;
                    iVar10 = 4;
                  }
                }
              }
              piVar3[0x45] = iVar10;
            }
LAB_0061f7cc:
            pcVar25 = strchr(pcVar7,0x40);
            if (pcVar25 == (char *)0x0) {
LAB_0061f846:
              pcVar25 = pcVar7;
              if (*pcVar7 == '[') {
                pcVar25 = pcVar7 + 1;
                do {
                  pcVar17 = pcVar7;
                  pcVar7 = pcVar17 + 1;
                  uVar13 = (uint)(byte)pcVar17[1];
                  if (uVar13 == 0) goto LAB_0061f88a;
                } while (((((*(byte *)(_ctype_ + uVar13 + 1) & 0x44) != 0) || (uVar13 == 0x3a)) ||
                         (uVar13 == 0x25)) || (uVar13 == 0x2e));
                if (uVar13 == 0x5d) {
                  *pcVar7 = '\0';
                  pcVar7 = pcVar17 + 2;
                }
                else {
LAB_0061f88a:
                  Curl_infof(param_1,"Invalid IPv6 address format\n");
                }
              }
              pcVar7 = strchr(pcVar7,0x3a);
              if (pcVar7 == (char *)0x0) {
                if (*pcVar25 == '/') {
                  iVar4 = 5;
                  goto LAB_0061f8ee;
                }
                pcVar7 = strchr(pcVar25,0x2f);
                if (pcVar7 != (char *)0x0) {
                  *pcVar7 = '\0';
                }
                if (*(int *)(param_1 + 0x11c) != 0) {
                  piVar3[0x26] = *(int *)(param_1 + 0x11c);
                }
              }
              else {
                *pcVar7 = '\0';
                lVar11 = strtol(pcVar7 + 1,(char **)0x0,10);
                piVar3[0x26] = lVar11;
              }
              iVar10 = (*Curl_cstrdup)(pcVar25);
              piVar3[0x22] = iVar10;
              if (iVar10 == 0) {
                iVar4 = 0x1b;
              }
              else {
                iVar4 = 0;
              }
              piVar3[0x24] = iVar10;
            }
            else {
              local_12c[0] = local_12c[0] & 0xffffff00;
              iVar4 = sscanf(pcVar7,"%255[^:@]:%255[^@]",local_22c,local_12c);
              if (iVar4 < 1) goto LAB_0061f846;
              if (piVar3[0x43] != 0) {
                (*Curl_cfree)();
                piVar3[0x43] = 0;
              }
              iVar4 = curl_easy_unescape(param_1,local_22c,0,0);
              piVar3[0x43] = iVar4;
              if (iVar4 != 0) {
                if (piVar3[0x44] != 0) {
                  (*Curl_cfree)();
                  piVar3[0x44] = 0;
                }
                iVar4 = curl_easy_unescape(param_1,local_12c,0,0);
                piVar3[0x44] = iVar4;
                if (iVar4 != 0) {
                  *(undefined1 *)((int)piVar3 + 0x1bd) = 1;
                  pcVar7 = pcVar25 + 1;
                  if (pcVar7 != (char *)0x0) goto LAB_0061f846;
                }
              }
              iVar4 = 0x1b;
            }
LAB_0061f8ee:
            (*Curl_cfree)(pcVar23);
            if (iVar4 != 0) goto LAB_006202f8;
            if ((uint)piVar3[0x45] < 2) {
              if ((-1 < *(int *)(piVar3[0x79] + 0x3c) << 0x1f) &&
                 (*(char *)((int)piVar3 + 0x1c5) == '\0')) {
                piVar3[0x79] = (int)Curl_handler_http;
              }
              *(undefined1 *)((int)piVar3 + 0x1bb) = 1;
            }
            else {
              *(undefined1 *)((int)piVar3 + 0x1bb) = 0;
            }
            *(undefined1 *)((int)piVar3 + 0x1ba) = 1;
          }
          else {
            if (pcVar23 != (char *)0x0) {
LAB_0061f766:
              (*Curl_cfree)(pcVar23);
            }
LAB_0061f770:
            pcVar23 = (char *)0x0;
            *(undefined1 *)((int)piVar3 + 0x1ba) = 0;
            *(undefined1 *)((int)piVar3 + 0x1bb) = 0;
            *(undefined1 *)((int)piVar3 + 0x1bd) = 0;
            *(undefined1 *)((int)piVar3 + 0x1c5) = 0;
          }
          iVar4 = piVar3[0x79];
          piVar3[0x1d] = 1;
          if (*(code **)(iVar4 + 4) != (code *)0x0) {
            iVar4 = (**(code **)(iVar4 + 4))(piVar3);
            if (iVar4 != 0) {
              if (pcVar23 != (char *)0x0) {
                (*Curl_cfree)(pcVar23);
              }
              goto LAB_006202f8;
            }
            iVar4 = piVar3[0x79];
          }
          if (piVar3[0x26] < 0) {
            piVar3[0x26] = *(int *)(iVar4 + 0x38);
          }
          *(undefined2 *)(piVar3 + 0x27) = *(undefined2 *)(piVar3[0x7a] + 0x38);
          piVar3[0x4f] = 0x61b0f1;
          piVar3[0x50] = 0x61b0f1;
          piVar3[0x51] = 0x61b161;
          piVar3[0x52] = 0x61b161;
          if (*(int *)(piVar3[0x79] + 0x40) << 0x1b < 0) {
            iVar4 = (**(code **)(piVar3[0x79] + 0x14))(piVar3,&local_430);
            if (iVar4 == 0) {
              *(undefined1 *)((int)piVar3 + 0x1c1) = 1;
              *piVar3 = param_1;
              FUN_0061eec8(param_1,piVar3);
              iVar4 = FUN_0061e674(param_1);
              if (iVar4 == 0) {
                Curl_setup_transfer(piVar3,0xffffffff,0xffffffff,0xffffffff,0,0,0xffffffff,0);
              }
              else {
                (**(code **)(piVar3[0x79] + 0xc))(piVar3,iVar4,0);
              }
            }
            goto LAB_006202f8;
          }
          if ((*(int *)(piVar3[0x7a] + 0x40) << 0x1f < 0) &&
             (*(char *)((int)piVar3 + 0x1bb) != '\0')) {
            *(undefined1 *)((int)piVar3 + 0x1c5) = 1;
          }
          iVar4 = sscanf((char *)piVar3[0x20],"[%*45[0123456789abcdefABCDEF:.]%c",&local_431);
          if ((iVar4 == 1) && (local_431 == ']')) {
            *(undefined1 *)((int)piVar3 + 0x1be) = 1;
            iVar4 = piVar3[0x20];
            piVar3[0x20] = iVar4 + 1;
            pcVar7 = strchr((char *)(iVar4 + 1),0x5d);
            pcVar23 = pcVar7;
            if (pcVar7 != (char *)0x0) {
              pcVar23 = pcVar7 + 1;
              *pcVar7 = '\0';
              if (pcVar7[1] != ':') {
                pcVar23 = (char *)0x0;
              }
            }
          }
          else {
            pcVar23 = strrchr((char *)piVar3[0x20],0x3a);
          }
          if ((*(int *)(param_1 + 0x130) == 0) || (*(char *)(param_1 + 0x8540) == '\0')) {
            if (pcVar23 != (char *)0x0) {
              uVar9 = strtoul(pcVar23 + 1,&local_430,10);
              if ((local_430 == pcVar23 + 1) || (*local_430 != '\0')) {
                if (uVar9 == 0) {
                  *pcVar23 = '\0';
                }
              }
              else {
                if (0xffff < uVar9) {
                  Curl_failf(param_1,"Port number too large: %lu");
                  goto LAB_006202f2;
                }
                *pcVar23 = '\0';
                uVar2 = curlx_ultous();
                *(undefined2 *)(piVar3 + 0x27) = uVar2;
              }
            }
          }
          else {
            *(short *)(piVar3 + 0x27) = (short)*(int *)(param_1 + 0x130);
            if (pcVar23 != (char *)0x0) {
              *pcVar23 = '\0';
            }
            if (*(char *)((int)piVar3 + 0x1bb) != '\0') {
              local_12c[0] = 0;
              local_12c[1] = 0;
              local_12c[2] = 0;
              if ((char)piVar3[0x74] != '\0') {
                if (*(char *)(param_1 + 0x2ab) == '\0') {
                  if (*(char *)(param_1 + 0x2ad) == '\0') {
                    uVar18 = 0x49;
                  }
                  else {
                    uVar18 = 0x44;
                  }
                }
                else {
                  uVar18 = 0x41;
                }
                curl_msnprintf(local_12c,0xc,";type=%c",uVar18);
              }
              if (*(char *)((int)piVar3 + 0x1be) == '\0') {
                puVar6 = &DAT_00801f93;
              }
              else {
                puVar6 = &DAT_0080e8ce;
              }
              if (*(char *)((int)piVar3 + 0x1be) == '\0') {
                puVar28 = &DAT_00801f93;
              }
              else {
                puVar28 = &DAT_0080e8d0;
              }
              if (*(char *)(param_1 + 0x8600) == '\0') {
                puVar20 = &DAT_00801f93;
              }
              else {
                puVar20 = &DAT_00800fc6;
              }
              iVar4 = curl_maprintf("%s://%s%s%s:%hu%s%s%s",*(undefined4 *)piVar3[0x7a],puVar6,
                                    piVar3[0x20],puVar28,(short)piVar3[0x27],puVar20,
                                    *(undefined4 *)(param_1 + 0x85fc),local_12c);
              if (iVar4 == 0) goto LAB_006202f6;
              if ((*(char *)(param_1 + 0x3cc) != '\0') && (*(int *)(param_1 + 0x3c8) != 0)) {
                (*Curl_cfree)();
              }
              *(int *)(param_1 + 0x3c8) = iVar4;
              *(undefined1 *)(param_1 + 0x3cc) = 1;
            }
          }
          if (*(char **)(param_1 + 0x360) != (char *)0x0) {
            strncpy(local_42c,*(char **)(param_1 + 0x360),0x100);
            local_32d = 0;
          }
          if (*(char **)(param_1 + 0x364) != (char *)0x0) {
            strncpy(local_32c,*(char **)(param_1 + 0x364),0x100);
            local_22d = 0;
          }
          *(undefined1 *)((int)piVar3 + 0x1ca) = 0;
          if (*(int *)(param_1 + 700) != 0) {
            iVar4 = Curl_parsenetrc(piVar3[0x20],local_42c,local_32c,
                                    *(undefined4 *)(param_1 + 0x328));
            if (iVar4 == 0) {
              *(undefined1 *)((int)piVar3 + 0x1ca) = 1;
              *(undefined1 *)(piVar3 + 0x6f) = 1;
            }
            else {
              Curl_infof(param_1,"Couldn\'t find host %s in the .netrc file; using defaults\n",
                         piVar3[0x20]);
            }
          }
          if (((*(uint *)(piVar3[0x79] + 0x40) & 0x20) == 0) || ((char)piVar3[0x6f] != '\0')) {
            iVar10 = (*Curl_cstrdup)(local_42c);
            piVar3[0x41] = iVar10;
            iVar4 = 0;
            if (iVar10 != 0) {
              pcVar23 = local_32c;
              goto LAB_0061fd06;
            }
          }
          else {
            iVar10 = (*Curl_cstrdup)("anonymous");
            piVar3[0x41] = iVar10;
            iVar4 = 0;
            if (iVar10 != 0) {
              pcVar23 = "ftp@example.com";
LAB_0061fd06:
              iVar4 = (*Curl_cstrdup)(pcVar23);
            }
          }
          piVar3[0x42] = iVar4;
          if ((piVar3[0x41] != 0) && (piVar3[0x42] != 0)) {
            piVar27 = piVar3 + 0x5f;
            *(undefined4 *)(param_1 + 0x244) = *(undefined4 *)(param_1 + 0x340);
            *(undefined4 *)(param_1 + 0x248) = *(undefined4 *)(param_1 + 0x344);
            *(undefined4 *)(param_1 + 0x24c) = *(undefined4 *)(param_1 + 0x358);
            *(undefined4 *)(param_1 + 0x250) = *(undefined4 *)(param_1 + 0x35c);
            *(undefined4 *)(param_1 + 0x254) = *(undefined4 *)(param_1 + 0x350);
            *(undefined4 *)(param_1 + 600) = *(undefined4 *)(param_1 + 0x34c);
            *(undefined4 *)(param_1 + 0x25c) = *(undefined4 *)(param_1 + 0x348);
            iVar4 = Curl_clone_ssl_config(param_1 + 0x234,piVar27);
            if (iVar4 != 0) {
              if ((*(char *)(param_1 + 0x2c3) == '\0') || (*(char *)(param_1 + 0x8518) != '\0')) {
                iVar4 = FUN_002e70a0(param_1,piVar3);
                for (iVar10 = 0; iVar10 < (*(int **)(param_1 + 0x4f4))[1]; iVar10 = iVar10 + 1) {
                  piVar21 = *(int **)(**(int **)(param_1 + 0x4f4) + iVar10 * 4);
                  if (piVar21 != (int *)0x0) {
                    iVar22 = *(int *)(piVar21[0x8b] + 0xc) + *(int *)(piVar21[0x8a] + 0xc);
                    if (piVar21[0xd] == -1) {
                      piVar21[0xd] = iVar10;
                    }
                    if ((iVar22 == 0) && ((char)piVar21[0xc] == '\0')) {
                      if (*(int *)(piVar21[0x79] + 0x3c) << 0xd < 0) {
                        iVar12 = Curl_rtsp_connisdead(piVar21);
                      }
                      else {
                        iVar12 = Curl_socket_check(piVar21[0x4c],0xffffffff,0xffffffff,0);
                      }
                      if (iVar12 != 0) {
                        *piVar21 = param_1;
                        Curl_infof(param_1,"Connection #%ld seems to be dead!\n",iVar10);
                        Curl_disconnect(piVar21,1);
                        *(undefined4 *)(**(int **)(param_1 + 0x4f4) + iVar10 * 4) = 0;
                        goto LAB_0061ffda;
                      }
                    }
                    if (iVar4 == 0) {
                      if (iVar22 == 0) {
                        if ((piVar21[0x4c] != -1) && ((char)piVar21[0x6e] == '\0'))
                        goto LAB_0061fe1a;
                        Curl_infof(param_1,"Connection #%ld isn\'t open enough, can\'t reuse\n",
                                   piVar21[0xd]);
                      }
                    }
                    else {
                      iVar22 = 0;
                      if (*(int **)piVar21[0x8a] != (int *)0x0) {
                        iVar22 = **(int **)piVar21[0x8a];
                      }
                      iVar12 = 0;
                      if (*(int **)piVar21[0x8b] != (int *)0x0) {
                        iVar12 = **(int **)piVar21[0x8b];
                      }
                      if (((iVar22 == 0) && (iVar22 = iVar12, iVar12 == 0)) ||
                         (iVar22 = FUN_002e70a0(iVar22,piVar21), iVar22 != 0)) {
LAB_0061fe1a:
                        uVar13 = *(uint *)(piVar3[0x79] + 0x40);
                        if ((((((-1 < (int)((*(uint *)(piVar21[0x79] + 0x40) ^ uVar13) << 0x1f)) ||
                               ((*(uint *)(piVar21[0x79] + 0x3c) & *(uint *)(piVar3[0x79] + 0x3c))
                                != 0)) &&
                              ((uVar13 = uVar13 & 1, uVar13 == 0 ||
                               ((*(int *)(param_1 + 0x23c) == piVar21[0x108] &&
                                (*(int *)(param_1 + 0x240) == piVar21[0x109])))))) &&
                             (*(char *)((int)piVar3 + 0x1ba) == *(char *)((int)piVar21 + 0x1ba))) &&
                            ((iVar4 != 0 || ((char)piVar21[0xc] == '\0')))) &&
                           (((pcVar23 = (char *)piVar3[0x10a], pcVar23 == (char *)0x0 &&
                             ((short)piVar3[0x10b] == 0)) ||
                            (((((short)piVar21[0x10b] == (short)piVar3[0x10b] &&
                               (piVar21[0x10c] == piVar3[0x10c])) &&
                              ((char *)piVar21[0x10a] != (char *)0x0)) &&
                             ((pcVar23 != (char *)0x0 &&
                              (iVar22 = strcmp((char *)piVar21[0x10a],pcVar23), iVar22 == 0))))))))
                        {
                          if (((*(char *)((int)piVar3 + 0x1bb) == '\0') || (uVar13 != 0)) ||
                             (((*(char *)((int)piVar21 + 0x1bb) != '\0' &&
                               (*(char *)((int)piVar3 + 0x1c5) != '\0')) &&
                              ((*(char *)((int)piVar21 + 0x1c5) != '\0' &&
                               ((iVar22 = Curl_raw_equal(piVar3[0x24],piVar21[0x24]), iVar22 != 0 &&
                                (piVar3[0x26] == piVar21[0x26])))))))) {
                            iVar22 = Curl_raw_equal(*(undefined4 *)piVar3[0x79],
                                                    *(undefined4 *)piVar21[0x79]);
                            if ((((iVar22 != 0) ||
                                 ((*(uint *)(piVar21[0x79] + 0x3c) & *(uint *)(piVar3[0x79] + 0x3c))
                                  != 0)) &&
                                (((iVar22 = Curl_raw_equal(piVar3[0x20],piVar21[0x20]), iVar22 != 0
                                  && ((short)piVar3[0x27] == (short)piVar21[0x27])) &&
                                 ((-1 < *(int *)(piVar3[0x79] + 0x40) << 0x1f ||
                                  ((iVar22 = Curl_ssl_config_matches(piVar27,piVar21 + 0x5f),
                                   iVar22 != 0 && (piVar21[0x54] == 2)))))))) &&
                               (((-1 < *(int *)(piVar3[0x79] + 0x3c) << 0x1d &&
                                 ((-1 < *(int *)(piVar3[0x79] + 0x3c) << 0x1f ||
                                  (*(int *)(param_1 + 0x858c) != 0x20 &&
                                   *(int *)(param_1 + 0x858c) != 8)))) ||
                                ((iVar22 = curl_strequal(piVar3[0x41],piVar21[0x41]), iVar22 != 0 &&
                                 (iVar22 = curl_strequal(piVar3[0x42],piVar21[0x42]), iVar22 != 0)))
                                ))) goto LAB_0062031a;
                          }
                          else if ((((*(char *)((int)piVar21 + 0x1ba) != '\0') &&
                                    (piVar3[0x45] == piVar21[0x45])) &&
                                   (*(char *)((int)piVar3 + 0x1c5) ==
                                    *(char *)((int)piVar21 + 0x1c5))) &&
                                  ((iVar22 = Curl_raw_equal(piVar3[0x24],piVar21[0x24]), iVar22 != 0
                                   && (piVar3[0x26] == piVar21[0x26])))) {
LAB_0062031a:
                            *(undefined1 *)(piVar21 + 0xc) = 1;
                            if (piVar3[0x22] != 0) {
                              (*Curl_cfree)();
                            }
                            Curl_free_ssl_config(piVar27);
                            *piVar21 = *piVar3;
                            iVar4 = piVar3[0x6f];
                            *(char *)(piVar21 + 0x6f) = (char)iVar4;
                            if ((char)iVar4 != '\0') {
                              if (piVar21[0x41] != 0) {
                                (*Curl_cfree)();
                                piVar21[0x41] = 0;
                              }
                              if (piVar21[0x42] != 0) {
                                (*Curl_cfree)();
                                piVar21[0x42] = 0;
                              }
                              piVar21[0x41] = piVar3[0x41];
                              piVar21[0x42] = piVar3[0x42];
                              piVar3[0x41] = 0;
                              piVar3[0x42] = 0;
                            }
                            cVar15 = *(char *)((int)piVar3 + 0x1bd);
                            *(char *)((int)piVar21 + 0x1bd) = cVar15;
                            if (cVar15 != '\0') {
                              if (piVar21[0x43] != 0) {
                                (*Curl_cfree)();
                                piVar21[0x43] = 0;
                              }
                              if (piVar21[0x44] != 0) {
                                (*Curl_cfree)();
                                piVar21[0x44] = 0;
                              }
                              piVar21[0x43] = piVar3[0x43];
                              piVar21[0x44] = piVar3[0x44];
                              piVar3[0x43] = 0;
                              piVar3[0x44] = 0;
                            }
                            if (piVar21[0x1e] != 0) {
                              (*Curl_cfree)();
                              piVar21[0x1e] = 0;
                            }
                            iVar4 = piVar3[0x1f];
                            iVar10 = piVar3[0x20];
                            iVar22 = piVar3[0x21];
                            piVar21[0x1e] = piVar3[0x1e];
                            piVar21[0x1f] = iVar4;
                            piVar21[0x20] = iVar10;
                            piVar21[0x21] = iVar22;
                            Curl_persistconninfo(piVar21);
                            *(undefined1 *)((int)piVar21 + 0x1b9) = 1;
                            if (piVar3[0x41] != 0) {
                              (*Curl_cfree)();
                              piVar3[0x41] = 0;
                            }
                            if (piVar3[0x42] != 0) {
                              (*Curl_cfree)();
                              piVar3[0x42] = 0;
                            }
                            if (piVar3[0x43] != 0) {
                              (*Curl_cfree)();
                              piVar3[0x43] = 0;
                            }
                            if (piVar3[0x44] != 0) {
                              (*Curl_cfree)();
                              piVar3[0x44] = 0;
                            }
                            Curl_llist_destroy(piVar3[0x8a],0);
                            Curl_llist_destroy(piVar3[0x8b],0);
                            Curl_llist_destroy(piVar3[0x8c],0);
                            Curl_llist_destroy(piVar3[0x8d],0);
                            piVar3[0x8a] = 0;
                            piVar3[0x8b] = 0;
                            piVar3[0x8c] = 0;
                            piVar3[0x8d] = 0;
                            if (piVar3[0x8e] != 0) {
                              (*Curl_cfree)();
                              piVar3[0x8e] = 0;
                            }
                            (*Curl_cfree)(piVar3);
                            *param_2 = piVar21;
                            if (piVar21[0x24] == 0) {
                              iVar4 = piVar21[0x21];
                            }
                            else {
                              iVar4 = piVar21[0x25];
                            }
                            Curl_infof(param_1,"Re-using existing connection! (#%ld) with host %s\n"
                                       ,piVar21[0xd],iVar4);
                            goto LAB_00620164;
                          }
                        }
                      }
                    }
                  }
LAB_0061ffda:
                }
              }
              FUN_0061eec8(param_1,piVar3);
              piVar21 = piVar3;
LAB_00620164:
              iVar4 = *piVar21;
              *(undefined1 *)(piVar21 + 0x73) = 0;
              *(undefined1 *)(piVar21 + 0x70) = 0;
              *(undefined1 *)(iVar4 + 0x85e4) = 0;
              if (*(char *)(iVar4 + 0x2b7) == '\0') {
                if (*(int *)(iVar4 + 0x22c) == 5) {
                  uVar18 = 1;
                  goto LAB_00620190;
                }
              }
              else {
                uVar18 = 5;
LAB_00620190:
                *(undefined4 *)(iVar4 + 0x22c) = uVar18;
              }
              Curl_easy_initHandleData(iVar4);
              curlx_tvnow(&local_440);
              *(int *)(iVar4 + 0x50) = local_440;
              *(int *)(iVar4 + 0x54) = iStack_43c;
              *(undefined4 *)(iVar4 + 0x58) = *(undefined4 *)(iVar4 + 0x50);
              *(undefined4 *)(iVar4 + 0x5c) = *(undefined4 *)(iVar4 + 0x54);
              *(undefined4 *)(iVar4 + 0x38) = 0;
              *(undefined4 *)(iVar4 + 0x3c) = 0;
              *(int *)(iVar4 + 0xe8) = iVar4 + 0x50c;
              *(int *)(iVar4 + 0xec) = iVar4 + 0x450d;
              *(undefined1 *)(iVar4 + 0x60) = 1;
              *(undefined4 *)(iVar4 + 0x6c) = *(undefined4 *)(iVar4 + 0x504);
              *(undefined1 *)(iVar4 + 0xf9) = 0;
              Curl_speedinit(iVar4);
              Curl_pgrsSetUploadCounter(iVar4,extraout_r1,0,0);
              Curl_pgrsSetDownloadCounter(iVar4,extraout_r1_00,0,0);
              iVar4 = FUN_0061e674(param_1);
              if (iVar4 != 0) goto LAB_006202f8;
              piVar21[0x93] = *(int *)(param_1 + 0x174);
              piVar21[0x94] = *(int *)(param_1 + 0x124);
              piVar21[0x91] = *(int *)(param_1 + 0x150);
              piVar21[0x92] = *(int *)(param_1 + 0x1a4);
              uVar18 = Curl_timeleft(param_1,0,1);
              if (*(char *)((int)piVar21 + 0x1b9) != '\0') {
                *param_3 = 0;
                if (*(char *)((int)piVar21 + 0x1ba) != '\0') {
                  FUN_002e70e0(param_1,piVar21 + 0x1e);
                }
                goto LAB_006202f8;
              }
              FUN_002e70e0(param_1,piVar21 + 0x1e);
              if (((char *)piVar21[0x24] == (char *)0x0) || (*(char *)piVar21[0x24] == '\0')) {
                piVar21[0x26] = (uint)*(ushort *)(piVar21 + 0x27);
                iVar10 = Curl_resolv_timeout(piVar21,piVar21[0x20],(uint)*(ushort *)(piVar21 + 0x27)
                                             ,&local_430,uVar18);
                if (iVar10 == 1) {
                  *param_3 = 1;
                }
                else {
                  if (iVar10 == -2) goto LAB_006202ea;
                  if (local_430 == (char *)0x0) {
                    iVar4 = 6;
                    Curl_failf(param_1,"Couldn\'t resolve host \'%s\'",piVar21[0x21]);
                  }
                }
              }
              else {
                FUN_002e70e0(param_1,piVar21 + 0x22);
                iVar10 = Curl_resolv_timeout(piVar21,piVar21[0x24],piVar21[0x26],&local_430,uVar18);
                if (iVar10 == 1) {
                  *param_3 = 1;
                }
                else if (iVar10 == -2) {
LAB_006202ea:
                  iVar4 = 0x1c;
                }
                else if (local_430 == (char *)0x0) {
                  iVar4 = 5;
                  Curl_failf(param_1,"Couldn\'t resolve proxy \'%s\'",piVar21[0x25]);
                }
              }
              piVar21[0xe] = (int)local_430;
              goto LAB_006202f8;
            }
          }
        }
        else {
          local_22c[0] = '\0';
          local_22c[1] = '\0';
          local_22c[2] = '\0';
          local_22c[3] = '\0';
          memset(local_22c + 4,0,0xfc);
          local_12c[0] = 0;
          memset(local_12c + 1,0,0xfc);
          if (*(char **)(param_1 + 0x368) != (char *)0x0) {
            strncpy(local_22c,*(char **)(param_1 + 0x368),0x100);
            local_12d = 0;
          }
          if (*(char **)(param_1 + 0x36c) != (char *)0x0) {
            strncpy((char *)local_12c,*(char **)(param_1 + 0x36c),0x100);
            local_2d = 0;
          }
          iVar4 = curl_easy_unescape(param_1,local_22c,0,0);
          piVar3[0x43] = iVar4;
          if (iVar4 != 0) {
            iVar4 = curl_easy_unescape(param_1,local_12c,0,0);
            piVar3[0x44] = iVar4;
            if (iVar4 != 0) goto LAB_0061f640;
          }
        }
      }
    }
  }
  else {
    iVar4 = (*Curl_ccalloc)(0x4000,1);
    piVar3[0x8e] = iVar4;
    if (iVar4 != 0) goto LAB_0061f068;
LAB_0061f0fe:
    Curl_llist_destroy(piVar3[0x8a],0);
    Curl_llist_destroy(piVar3[0x8b],0);
    Curl_llist_destroy(piVar3[0x8c],0);
    Curl_llist_destroy(piVar3[0x8d],0);
    piVar3[0x8a] = 0;
    piVar3[0x8b] = 0;
    piVar3[0x8c] = 0;
    piVar3[0x8d] = 0;
    if (piVar3[0x8e] != 0) {
      (*Curl_cfree)();
      piVar3[0x8e] = 0;
    }
    if (piVar3[0x10a] != 0) {
      (*Curl_cfree)();
      piVar3[0x10a] = 0;
    }
    (*Curl_cfree)(piVar3);
  }
LAB_006202f6:
  iVar4 = 0x1b;
LAB_006202f8:
  if (local_2c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}
