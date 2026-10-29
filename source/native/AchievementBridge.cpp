// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 21 functions

// ---- AchievementBridge::AchievementBridge  @ 0x4308cc
/* AchievementBridge::AchievementBridge() */

AchievementBridge * __thiscall AchievementBridge::AchievementBridge(AchievementBridge *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091d9c8;
  return this;
}

// ---- AchievementBridge::~AchievementBridge  @ 0x4308f8
/* WARNING: Removing unreachable block (ram,0x0043091a) */
/* AchievementBridge::~AchievementBridge() */

AchievementBridge * __thiscall AchievementBridge::~AchievementBridge(AchievementBridge *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091d9c8;
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- AchievementBridge::~AchievementBridge  @ 0x430934
/* AchievementBridge::~AchievementBridge() */

AchievementBridge * __thiscall AchievementBridge::~AchievementBridge(AchievementBridge *this)

{
  ~AchievementBridge(this);
  operator_delete(this);
  return this;
}

// ---- AchievementBridge::init  @ 0x430950
/* AchievementBridge::init() */

bool __thiscall AchievementBridge::init(AchievementBridge *this)

{
  char cVar1;
  int *piVar2;
  _func_void_float *p_Var3;
  float extraout_s0;
  float extraout_s1;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    platformInit();
    this[0xe5] = (AchievementBridge)0x0;
    this[0xe4] = (AchievementBridge)0x0;
    this[0xe6] = (AchievementBridge)0x1;
    piVar2 = (int *)cocos2d::CCDirector::sharedDirector();
    p_Var3 = (_func_void_float *)(**(code **)(*piVar2 + 0x30))(piVar2);
    cocos2d::CCScheduler::scheduleSelector
              (p_Var3,(CCObject *)0x430ed5,extraout_s0,0,extraout_s1,SUB41(this,0));
  }
  return cVar1 == '\x01';
}

// ---- AchievementBridge::sharedAchievementBridge  @ 0x4309f0
/* AchievementBridge::sharedAchievementBridge() */

AchievementBridge * AchievementBridge::sharedAchievementBridge(void)

{
  AchievementBridge *this;
  
  if (m_pInstance == (AchievementBridge *)0x0) {
    this = operator_new(0xe8);
    AchievementBridge(this);
    m_pInstance = this;
    (**(code **)(*(int *)this + 0x18))(this);
  }
  return m_pInstance;
}

// ---- AchievementBridge::getIdentifier  @ 0x430a4c
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* AchievementBridge::getIdentifier(EAchievementType) */

undefined4 AchievementBridge::getIdentifier(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,_FUN_00430e80 + 0x430a6e,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,iRam00430e84 + 0x430a92,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,&DAT_007ebf90,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,&DAT_007ebf94,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,&DAT_007ebf98,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,&DAT_007ebf9c,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,&DAT_007ebfa0,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,&DAT_007ebfa4,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,&DAT_007ebfa8,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,&DAT_007ebfac,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,&DAT_007ebfb0,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,&DAT_007ebfb4,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,&DAT_007ebfb8,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,&DAT_007ebfbc,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,&DAT_007ebfc0,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,&DAT_007ebfc4,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,&DAT_007ebfc8,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,&DAT_007ebfcc,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,&DAT_007ebfd0,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,&DAT_007ebfd4,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,&DAT_007ebfd8,auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_007c64e8(param_1,auStack_64 + param_3 * 4);
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- AchievementBridge::statusChecker  @ 0x430ed4
/* AchievementBridge::statusChecker(float) */

float AchievementBridge::statusChecker(float param_1)

{
  AchievementBridge *in_r0;
  
  if (in_r0[0xe6] != (AchievementBridge)0x0) {
    if (in_r0[0xe4] != (AchievementBridge)0x0) {
      in_r0[0xe4] = (AchievementBridge)0x0;
      param_1 = (float)getServerProgress(in_r0);
    }
    if (in_r0[0xe5] != (AchievementBridge)0x0) {
      in_r0[0xe5] = (AchievementBridge)0x0;
      param_1 = (float)sendServerAllProgress(in_r0);
    }
  }
  return param_1;
}

// ---- AchievementBridge::findAchievementType  @ 0x430f1c
/* AchievementBridge::findAchievementType(std::string) */

int __thiscall AchievementBridge::findAchievementType(AchievementBridge *this,undefined4 param_2)

{
  int iVar1;
  undefined1 auStack_10 [4];
  int local_c;
  
  local_c = 0;
  while( true ) {
    if (0x14 < local_c) {
      return 0x15;
    }
    getIdentifier(auStack_10,this,local_c);
    iVar1 = FUN_007c567c(param_2,auStack_10);
    FUN_007c5914(auStack_10);
    if (iVar1 == 0) break;
    local_c = local_c + 1;
  }
  return local_c;
}

// ---- AchievementBridge::getIdentifierKey  @ 0x430f80
/* AchievementBridge::getIdentifierKey(EAchievementType) */

undefined4
AchievementBridge::getIdentifierKey(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  CCString *local_c;
  
  uVar1 = sharedAchievementBridge();
  getIdentifier(auStack_10,uVar1,param_3);
  uVar1 = FUN_007c5300(auStack_10);
  local_c = (CCString *)cocos2d::CCString::createWithFormat("AchKey.%s",uVar1);
  uVar1 = cocos2d::CCString::getCString(local_c);
  FUN_0079a3f4(auStack_14);
  FUN_007c6a60(param_1,uVar1,auStack_14);
  FUN_0079a3fc(auStack_14);
  FUN_007c5914(auStack_10);
  return param_1;
}

// ---- AchievementBridge::sendServerProgress  @ 0x431004
/* AchievementBridge::sendServerProgress(EAchievementType) */

void __thiscall AchievementBridge::sendServerProgress(AchievementBridge *this,undefined4 param_2)

{
  reportAchievement(this,param_2);
  return;
}

// ---- AchievementBridge::sendServerAllProgress  @ 0x43101c
/* AchievementBridge::sendServerAllProgress() */

void __thiscall AchievementBridge::sendServerAllProgress(AchievementBridge *this)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < 0x15; local_c = local_c + 1) {
    sendServerProgress(this,local_c);
  }
  return;
}

// ---- AchievementBridge::getAchievementData  @ 0x431044
/* AchievementBridge::getAchievementData(EAchievementType) */

undefined4 __thiscall
AchievementBridge::getAchievementData(AchievementBridge *this,undefined4 param_2)

{
  undefined4 uVar1;
  char *pcVar2;
  float fVar3;
  undefined1 auStack_10 [4];
  undefined4 local_c;
  
  uVar1 = sharedAchievementBridge();
  getIdentifier(auStack_10,uVar1,param_2,uVar1,param_2,this);
  pcVar2 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  fVar3 = (float)FUN_007c5300(auStack_10);
  uVar1 = cocos2d::CCUserDefault::getFloatForKey(pcVar2,fVar3);
  local_c = uVar1;
  FUN_007c5914(auStack_10);
  return uVar1;
}

// ---- AchievementBridge::setLocalProgress  @ 0x4310a0
/* AchievementBridge::setLocalProgress(EAchievementType, float) */

void AchievementBridge::setLocalProgress(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  char *pcVar2;
  float fVar3;
  undefined1 auStack_c [4];
  
  uVar1 = sharedAchievementBridge();
  getIdentifier(auStack_c,uVar1,param_2);
  pcVar2 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  fVar3 = (float)FUN_007c5300(auStack_c);
  cocos2d::CCUserDefault::setFloatForKey(pcVar2,fVar3);
  FUN_007c5914(auStack_c);
  return;
}

// ---- AchievementBridge::addLocalProgress  @ 0x4310f0
/* AchievementBridge::addLocalProgress(EAchievementType, float) */

void AchievementBridge::addLocalProgress(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  char *pcVar2;
  float fVar3;
  undefined1 auStack_10 [4];
  undefined4 local_c;
  
  uVar1 = sharedAchievementBridge();
  getIdentifier(auStack_10,uVar1,param_2);
  pcVar2 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  fVar3 = (float)FUN_007c5300(auStack_10);
  local_c = cocos2d::CCUserDefault::getFloatForKey(pcVar2,fVar3);
  pcVar2 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  fVar3 = (float)FUN_007c5300(auStack_10);
  cocos2d::CCUserDefault::setFloatForKey(pcVar2,fVar3);
  FUN_007c5914(auStack_10);
  return;
}

// ---- AchievementBridge::updateLocalProgress  @ 0x431170
/* AchievementBridge::updateLocalProgress(EAchievementType, float) */

void __thiscall
AchievementBridge::updateLocalProgress(undefined4 param_1,undefined4 param_2,float param_3)

{
  uint uVar1;
  byte bVar2;
  undefined4 uVar3;
  char *pcVar4;
  uint in_fpscr;
  uint uVar5;
  float fVar6;
  undefined1 auStack_10 [4];
  float local_c;
  
  uVar3 = sharedAchievementBridge();
  getIdentifier(auStack_10,uVar3,param_2);
  pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  fVar6 = (float)FUN_007c5300(auStack_10);
  local_c = (float)cocos2d::CCUserDefault::getFloatForKey(pcVar4,fVar6);
  uVar1 = in_fpscr & 0xfffffff | (uint)(param_3 < local_c) << 0x1f |
          (uint)(param_3 == local_c) << 0x1e;
  uVar5 = uVar1 | (uint)(NAN(param_3) || NAN(local_c)) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar5 >> 0x1c) & 1)) {
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    fVar6 = (float)FUN_007c5300(auStack_10);
    VectorSignedToFloat((int)param_3,(byte)(uVar5 >> 0x16) & 3);
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,fVar6);
  }
  FUN_007c5914(auStack_10);
  return;
}

// ---- AchievementBridge::setTryLoadAchievements  @ 0x431200
/* AchievementBridge::setTryLoadAchievements(bool) */

void __thiscall AchievementBridge::setTryLoadAchievements(AchievementBridge *this,bool param_1)

{
  *(bool *)(m_pInstance + 0xe6) = param_1;
  return;
}

// ---- AchievementBridge::platformInit  @ 0x439ca4
/* AchievementBridge::platformInit() */

void AchievementBridge::platformInit(void)

{
  AchievementBridge *this;
  
  this = (AchievementBridge *)sharedAchievementBridge();
  getServerProgress(this);
  return;
}

// ---- AchievementBridge::showAchievements  @ 0x439cbc
/* AchievementBridge::showAchievements() */

void AchievementBridge::showAchievements(void)

{
  GPGSStateManager::ShowAchievements();
  return;
}

// ---- AchievementBridge::reportAchievement  @ 0x43ab1c
/* AchievementBridge::reportAchievement(EAchievementType) */

void __thiscall AchievementBridge::reportAchievement(AchievementBridge *this,undefined4 param_2)

{
  undefined4 uVar1;
  char *pcVar2;
  float fVar3;
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  uVar1 = sharedAchievementBridge();
  getIdentifier(auStack_14,uVar1,param_2);
  FUN_007c64e8(auStack_10,auStack_14);
  getAndroidIdentifierFromGameId(auStack_c,auStack_10);
  FUN_007c52e8(auStack_14,auStack_c);
  FUN_007c5914(auStack_c);
  FUN_007c5914(auStack_10);
  pcVar2 = (char *)FUN_007c5300(auStack_14);
  fVar3 = (float)getAchievementData(this,param_2);
  GPGSStateManager::SetPercentCompleteOnAchievement(pcVar2,(int)fVar3);
  FUN_007c5914(auStack_14);
  return;
}

// ---- AchievementBridge::loadAchievements  @ 0x43ad20
/* AchievementBridge::loadAchievements() */

void __thiscall AchievementBridge::loadAchievements(AchievementBridge *this)

{
  function<void(gpg::AchievementManager::FetchAllResponse_const&)> afStack_1c [16];
  int local_c;
  
  local_c = __stack_chk_guard;
  FUN_0043adb0(afStack_1c,this);
  GPGSStateManager::FetchAllAchievements(afStack_1c);
  std::function<void(gpg::AchievementManager::FetchAllResponse_const&)>::~function(afStack_1c);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- AchievementBridge::getServerProgress  @ 0x43ad78
/* AchievementBridge::getServerProgress() */

void __thiscall AchievementBridge::getServerProgress(AchievementBridge *this)

{
  char cVar1;
  
  cVar1 = GPGSStateManager::IsAuthorized();
  if (cVar1 == '\x01') {
    loadAchievements(this);
  }
  else {
    this[0xe4] = (AchievementBridge)0x1;
  }
  return;
}
