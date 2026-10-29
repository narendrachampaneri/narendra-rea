// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 31 functions

// ---- CocosDenshion::SimpleAudioEngine::stopBackgroundMusic  @ 0x40488c
/* CocosDenshion::SimpleAudioEngine::stopBackgroundMusic() */

void __thiscall CocosDenshion::SimpleAudioEngine::stopBackgroundMusic(SimpleAudioEngine *this)

{
  stopBackgroundMusic(SUB41(this,0));
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::getClassTypeInfo  @ 0x610efc
/* CocosDenshion::SimpleAudioEngine::getClassTypeInfo() */

undefined4 CocosDenshion::SimpleAudioEngine::getClassTypeInfo(void)

{
  undefined4 uVar1;
  
  uVar1 = std::type_info::name((type_info *)&typeinfo);
  uVar1 = FUN_00610ea4(uVar1);
  return uVar1;
}

// ---- CocosDenshion::TypeInfo::TypeInfo  @ 0x610fa4
/* CocosDenshion::TypeInfo::TypeInfo() */

TypeInfo * __thiscall CocosDenshion::TypeInfo::TypeInfo(TypeInfo *this)

{
  *(undefined ***)this = &PTR___cxa_pure_virtual_1_00937ee8;
  return this;
}

// ---- CocosDenshion::SimpleAudioEngine::SimpleAudioEngine  @ 0x610fc8
/* CocosDenshion::SimpleAudioEngine::SimpleAudioEngine() */

SimpleAudioEngine * __thiscall
CocosDenshion::SimpleAudioEngine::SimpleAudioEngine(SimpleAudioEngine *this)

{
  int iVar1;
  char *pcVar2;
  _jstring *local_1c;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  TypeInfo::TypeInfo((TypeInfo *)this);
  *(undefined ***)this = &PTR_getClassTypeInfo_1_00937ed8;
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"org/cocos2dx/lib/Cocos2dxHelper","getDeviceModel",
                     "()Ljava/lang/String;");
  if (iVar1 != 0) {
    local_1c = (_jstring *)_JNIEnv::CallStaticObjectMethod(local_14,local_10,local_c);
  }
  FUN_002eb49c(local_14,local_10);
  pcVar2 = (char *)_JNIEnv::GetStringUTFChars((_JNIEnv *)local_14,local_1c,(uchar *)0x0);
  __android_log_print(3,"Device Model","SimpleAudioEngine() - deviceModel = %s",pcVar2);
  _JNIEnv::ReleaseStringUTFChars((_JNIEnv *)local_14,local_1c,pcVar2);
  FUN_002eb49c(local_14,local_1c);
  return this;
}

// ---- CocosDenshion::SimpleAudioEngine::~SimpleAudioEngine  @ 0x611080
/* CocosDenshion::SimpleAudioEngine::~SimpleAudioEngine() */

SimpleAudioEngine * __thiscall
CocosDenshion::SimpleAudioEngine::~SimpleAudioEngine(SimpleAudioEngine *this)

{
  *(undefined ***)this = &PTR_getClassTypeInfo_1_00937ed8;
  return this;
}

// ---- CocosDenshion::SimpleAudioEngine::sharedEngine  @ 0x6110a4
/* CocosDenshion::SimpleAudioEngine::sharedEngine() */

SimpleAudioEngine * CocosDenshion::SimpleAudioEngine::sharedEngine(void)

{
  SimpleAudioEngine *this;
  
  if (DAT_009666e4 == (SimpleAudioEngine *)0x0) {
    this = operator_new(4);
    SimpleAudioEngine(this);
    DAT_009666e4 = this;
  }
  return DAT_009666e4;
}

// ---- CocosDenshion::SimpleAudioEngine::end  @ 0x6110e8
/* CocosDenshion::SimpleAudioEngine::end() */

void CocosDenshion::SimpleAudioEngine::end(void)

{
  endJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::preloadBackgroundMusic  @ 0x6110f0
/* CocosDenshion::SimpleAudioEngine::preloadBackgroundMusic(char const*) */

void __thiscall
CocosDenshion::SimpleAudioEngine::preloadBackgroundMusic(SimpleAudioEngine *this,char *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_c [8];
  
  FUN_00610f2c(auStack_c,param_1);
  uVar1 = FUN_007c5300(auStack_c);
  preloadBackgroundMusicJNI(uVar1);
  FUN_007c5914(auStack_c);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::playBackgroundMusic  @ 0x611130
/* CocosDenshion::SimpleAudioEngine::playBackgroundMusic(char const*, bool) */

void __thiscall
CocosDenshion::SimpleAudioEngine::playBackgroundMusic
          (SimpleAudioEngine *this,char *param_1,bool param_2)

{
  undefined4 uVar1;
  undefined1 auStack_c [8];
  
  FUN_00610f2c(auStack_c,param_1);
  uVar1 = FUN_007c5300(auStack_c);
  playBackgroundMusicJNI(uVar1,param_2);
  FUN_007c5914(auStack_c);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::stopBackgroundMusic  @ 0x61117c
/* CocosDenshion::SimpleAudioEngine::stopBackgroundMusic(bool) */

void CocosDenshion::SimpleAudioEngine::stopBackgroundMusic(bool param_1)

{
  stopBackgroundMusicJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::pauseBackgroundMusic  @ 0x611194
/* CocosDenshion::SimpleAudioEngine::pauseBackgroundMusic() */

void CocosDenshion::SimpleAudioEngine::pauseBackgroundMusic(void)

{
  pauseBackgroundMusicJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::resumeBackgroundMusic  @ 0x6111a4
/* CocosDenshion::SimpleAudioEngine::resumeBackgroundMusic() */

void CocosDenshion::SimpleAudioEngine::resumeBackgroundMusic(void)

{
  resumeBackgroundMusicJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::rewindBackgroundMusic  @ 0x6111b4
/* CocosDenshion::SimpleAudioEngine::rewindBackgroundMusic() */

void CocosDenshion::SimpleAudioEngine::rewindBackgroundMusic(void)

{
  rewindBackgroundMusicJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::willPlayBackgroundMusic  @ 0x6111c4
/* CocosDenshion::SimpleAudioEngine::willPlayBackgroundMusic() */

undefined4 CocosDenshion::SimpleAudioEngine::willPlayBackgroundMusic(void)

{
  return 1;
}

// ---- CocosDenshion::SimpleAudioEngine::isBackgroundMusicPlaying  @ 0x6111d0
/* CocosDenshion::SimpleAudioEngine::isBackgroundMusicPlaying() */

undefined4 CocosDenshion::SimpleAudioEngine::isBackgroundMusicPlaying(void)

{
  undefined4 uVar1;
  
  uVar1 = isBackgroundMusicPlayingJNI();
  return uVar1;
}

// ---- CocosDenshion::SimpleAudioEngine::getBackgroundMusicVolume  @ 0x6111e4
/* CocosDenshion::SimpleAudioEngine::getBackgroundMusicVolume() */

undefined4 CocosDenshion::SimpleAudioEngine::getBackgroundMusicVolume(void)

{
  undefined4 uVar1;
  
  uVar1 = getBackgroundMusicVolumeJNI();
  return uVar1;
}

// ---- CocosDenshion::SimpleAudioEngine::setBackgroundMusicVolume  @ 0x6111f8
/* CocosDenshion::SimpleAudioEngine::setBackgroundMusicVolume(float) */

void __thiscall
CocosDenshion::SimpleAudioEngine::setBackgroundMusicVolume(SimpleAudioEngine *this,float param_1)

{
  undefined4 in_r1;
  
  setBackgroundMusicVolumeJNI(in_r1);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::getEffectsVolume  @ 0x61120c
/* CocosDenshion::SimpleAudioEngine::getEffectsVolume() */

undefined4 CocosDenshion::SimpleAudioEngine::getEffectsVolume(void)

{
  undefined4 uVar1;
  
  uVar1 = getEffectsVolumeJNI();
  return uVar1;
}

// ---- CocosDenshion::SimpleAudioEngine::setEffectsVolume  @ 0x611220
/* CocosDenshion::SimpleAudioEngine::setEffectsVolume(float) */

void CocosDenshion::SimpleAudioEngine::setEffectsVolume(float param_1)

{
  setEffectsVolumeJNI(param_1);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::playEffect  @ 0x611234
/* CocosDenshion::SimpleAudioEngine::playEffect(char const*, int, bool, float, float, float) */

undefined4
CocosDenshion::SimpleAudioEngine::playEffect
          (char *param_1,int param_2,bool param_3,float param_4,float param_5,float param_6)

{
  char *pcVar1;
  undefined4 uVar2;
  bool in_r3;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  int in_stack_00000000;
  undefined1 auStack_c [4];
  
  FUN_00610f2c(auStack_c,param_2);
  pcVar1 = (char *)FUN_007c5300(auStack_c);
  uVar2 = playEffectJNI(pcVar1,in_r3,extraout_s0,extraout_s1,extraout_s2,in_stack_00000000);
  FUN_007c5914(auStack_c);
  return uVar2;
}

// ---- CocosDenshion::SimpleAudioEngine::playEffect  @ 0x611290
/* CocosDenshion::SimpleAudioEngine::playEffect(char const*, bool, float, float, float) */

undefined4
CocosDenshion::SimpleAudioEngine::playEffect
          (char *param_1,bool param_2,float param_3,float param_4,float param_5)

{
  char *pcVar1;
  undefined4 uVar2;
  bool in_r2;
  int in_r3;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  undefined1 auStack_c [4];
  
  FUN_00610f2c(auStack_c,param_2);
  pcVar1 = (char *)FUN_007c5300(auStack_c);
  uVar2 = playEffectJNI(pcVar1,in_r2,extraout_s0,extraout_s1,extraout_s2,in_r3);
  FUN_007c5914(auStack_c);
  return uVar2;
}

// ---- CocosDenshion::SimpleAudioEngine::stopEffect  @ 0x6112ec
/* CocosDenshion::SimpleAudioEngine::stopEffect(unsigned int, int) */

void CocosDenshion::SimpleAudioEngine::stopEffect(uint param_1,int param_2)

{
  stopEffectJNI(param_2);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::preloadEffect  @ 0x611304
/* CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int) */

void CocosDenshion::SimpleAudioEngine::preloadEffect(char *param_1,int param_2)

{
  char *pcVar1;
  undefined1 auStack_c [8];
  
  FUN_00610f2c(auStack_c,param_2);
  pcVar1 = (char *)FUN_007c5300(auStack_c);
  preloadEffectJNI(pcVar1);
  FUN_007c5914(auStack_c);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::unloadEffect  @ 0x611344
/* CocosDenshion::SimpleAudioEngine::unloadEffect(char const*, int) */

void CocosDenshion::SimpleAudioEngine::unloadEffect(char *param_1,int param_2)

{
  char *pcVar1;
  undefined1 auStack_c [8];
  
  FUN_00610f2c(auStack_c,param_2);
  pcVar1 = (char *)FUN_007c5300(auStack_c);
  unloadEffectJNI(pcVar1);
  FUN_007c5914(auStack_c);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::pauseEffect  @ 0x611384
/* CocosDenshion::SimpleAudioEngine::pauseEffect(unsigned int, int) */

void CocosDenshion::SimpleAudioEngine::pauseEffect(uint param_1,int param_2)

{
  pauseEffectJNI(param_2);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::pauseAllEffects  @ 0x61139c
/* CocosDenshion::SimpleAudioEngine::pauseAllEffects() */

void CocosDenshion::SimpleAudioEngine::pauseAllEffects(void)

{
  pauseAllEffectsJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::resumeEffect  @ 0x6113ac
/* CocosDenshion::SimpleAudioEngine::resumeEffect(unsigned int, int) */

void CocosDenshion::SimpleAudioEngine::resumeEffect(uint param_1,int param_2)

{
  resumeEffectJNI(param_2);
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::resumeAllEffects  @ 0x6113c4
/* CocosDenshion::SimpleAudioEngine::resumeAllEffects() */

void CocosDenshion::SimpleAudioEngine::resumeAllEffects(void)

{
  resumeAllEffectsJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::stopAllEffects  @ 0x6113d4
/* CocosDenshion::SimpleAudioEngine::stopAllEffects() */

void CocosDenshion::SimpleAudioEngine::stopAllEffects(void)

{
  stopAllEffectsJNI();
  return;
}

// ---- CocosDenshion::SimpleAudioEngine::redefineSourceGroups  @ 0x6113e4
/* CocosDenshion::SimpleAudioEngine::redefineSourceGroups(int*, int) */

undefined4 CocosDenshion::SimpleAudioEngine::redefineSourceGroups(int *param_1,int param_2)

{
  return 0;
}

// ---- CocosDenshion::SimpleAudioEngine::createSoundGroup  @ 0x6113f4
/* CocosDenshion::SimpleAudioEngine::createSoundGroup(int, int) */

undefined4 CocosDenshion::SimpleAudioEngine::createSoundGroup(int param_1,int param_2)

{
  return 1;
}
