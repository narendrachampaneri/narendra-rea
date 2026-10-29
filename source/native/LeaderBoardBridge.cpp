// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 26 functions

// ---- LeaderBoardBridge::LeaderBoardBridge  @ 0x434f84
/* LeaderBoardBridge::LeaderBoardBridge() */

LeaderBoardBridge * __thiscall LeaderBoardBridge::LeaderBoardBridge(LeaderBoardBridge *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091dd28;
  return this;
}

// ---- LeaderBoardBridge::~LeaderBoardBridge  @ 0x434fb0
/* WARNING: Removing unreachable block (ram,0x00434fd2) */
/* LeaderBoardBridge::~LeaderBoardBridge() */

LeaderBoardBridge * __thiscall LeaderBoardBridge::~LeaderBoardBridge(LeaderBoardBridge *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091dd28;
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- LeaderBoardBridge::~LeaderBoardBridge  @ 0x434fec
/* LeaderBoardBridge::~LeaderBoardBridge() */

LeaderBoardBridge * __thiscall LeaderBoardBridge::~LeaderBoardBridge(LeaderBoardBridge *this)

{
  ~LeaderBoardBridge(this);
  operator_delete(this);
  return this;
}

// ---- LeaderBoardBridge::init  @ 0x435008
/* LeaderBoardBridge::init() */

bool __thiscall LeaderBoardBridge::init(LeaderBoardBridge *this)

{
  char cVar1;
  int *piVar2;
  _func_void_float *p_Var3;
  float extraout_s0;
  float extraout_s1;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    platformInit();
    *(undefined4 *)(this + 0xe4) = 0;
    *(undefined4 *)(this + 0xe8) = 0;
    this[0xec] = (LeaderBoardBridge)0x0;
    this[0xed] = (LeaderBoardBridge)0x0;
    this[0xee] = (LeaderBoardBridge)0x1;
    piVar2 = (int *)cocos2d::CCDirector::sharedDirector();
    p_Var3 = (_func_void_float *)(**(code **)(*piVar2 + 0x30))(piVar2);
    cocos2d::CCScheduler::scheduleSelector
              (p_Var3,(CCObject *)0x43559d,extraout_s0,0,extraout_s1,SUB41(this,0));
  }
  return cVar1 == '\x01';
}

// ---- LeaderBoardBridge::sharedLeaderBoardBridge  @ 0x4350b8
/* LeaderBoardBridge::sharedLeaderBoardBridge() */

LeaderBoardBridge * LeaderBoardBridge::sharedLeaderBoardBridge(void)

{
  LeaderBoardBridge *this;
  
  if (m_pInstance == (LeaderBoardBridge *)0x0) {
    this = operator_new(0xf0);
    LeaderBoardBridge(this);
    m_pInstance = this;
    (**(code **)(*(int *)this + 0x18))(this);
  }
  return m_pInstance;
}

// ---- LeaderBoardBridge::calcPlayerSkill  @ 0x435114
/* LeaderBoardBridge::calcPlayerSkill() */

undefined4 LeaderBoardBridge::calcPlayerSkill(void)

{
  int iVar1;
  LeaderBoardBridge *pLVar2;
  undefined4 uVar3;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  float fVar4;
  float fVar5;
  
  pLVar2 = (LeaderBoardBridge *)sharedLeaderBoardBridge();
  uVar3 = getScoreData(pLVar2,2);
  fVar4 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  pLVar2 = (LeaderBoardBridge *)sharedLeaderBoardBridge();
  uVar3 = getScoreData(pLVar2,3);
  fVar5 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  if (fVar5 < 1.0) {
    fVar5 = 1.0;
  }
  *(int *)(m_pInstance + 0xe8) = (int)((fVar4 / fVar5) * 25.0);
  iVar1 = m_pInstance;
  VectorSignedToFloat(*(undefined4 *)(m_pInstance + 0xe8),(byte)((in_fpscr & 0xfffffff) >> 0x16) & 3
                     );
  fVar4 = (float)cocos2d::clampf(extraout_s0,extraout_s1,extraout_s2);
  *(int *)(iVar1 + 0xe8) = (int)fVar4;
  return *(undefined4 *)(m_pInstance + 0xe8);
}

// ---- LeaderBoardBridge::getCategory  @ 0x4351f0
/* LeaderBoardBridge::getCategory(ELeaderboardType) */

undefined4 LeaderBoardBridge::getCategory(undefined4 param_1,undefined4 param_2,int param_3)

{
  undefined1 *puVar1;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_2c,"experience.earned",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_28,"experience.lost",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_24,"kills",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_20,"deaths",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_1c,"survival",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_18,"survival.coop",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_14,"points",auStack_30);
  FUN_0079a3fc(auStack_30);
  FUN_007c64e8(param_1,auStack_2c + param_3 * 4);
  while (puVar1 != auStack_2c) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- LeaderBoardBridge::getCachedPlayerSkill  @ 0x4353b8
/* LeaderBoardBridge::getCachedPlayerSkill() */

undefined4 LeaderBoardBridge::getCachedPlayerSkill(void)

{
  return *(undefined4 *)(m_pInstance + 0xe8);
}

// ---- LeaderBoardBridge::updatePlayerSkill  @ 0x4353d8
/* LeaderBoardBridge::updatePlayerSkill(int, int) */

void LeaderBoardBridge::updatePlayerSkill(int param_1,int param_2)

{
  return;
}

// ---- LeaderBoardBridge::calcPlayerExp  @ 0x4353e4
/* LeaderBoardBridge::calcPlayerExp() */

undefined4 LeaderBoardBridge::calcPlayerExp(void)

{
  LeaderBoardBridge *pLVar1;
  undefined4 uVar2;
  
  pLVar1 = (LeaderBoardBridge *)sharedLeaderBoardBridge();
  uVar2 = getScoreData(pLVar1,0);
  return uVar2;
}

// ---- LeaderBoardBridge::calcPlayerPoints  @ 0x435408
/* LeaderBoardBridge::calcPlayerPoints() */

int __thiscall LeaderBoardBridge::calcPlayerPoints(LeaderBoardBridge *this)

{
  int iVar1;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  int local_10;
  
  local_10 = 0;
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack1",auStack_18);
  iVar1 = InAppPurchaseBridge::isProductPurchased(auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  if (iVar1 != 0) {
    local_10 = local_10 + 3000;
  }
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack2",auStack_18);
  iVar1 = InAppPurchaseBridge::isProductPurchased(auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  if (iVar1 != 0) {
    local_10 = local_10 + 0xc1c;
  }
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack3",auStack_18);
  iVar1 = InAppPurchaseBridge::isProductPurchased(auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  if (iVar1 != 0) {
    local_10 = local_10 + 0xc80;
  }
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack4",auStack_18);
  iVar1 = InAppPurchaseBridge::isProductPurchased(auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  if (iVar1 != 0) {
    local_10 = local_10 + 0xce4;
  }
  iVar1 = getScoreData(this,6);
  return local_10 + iVar1;
}

// ---- LeaderBoardBridge::statusChecker  @ 0x43559c
/* LeaderBoardBridge::statusChecker(float) */

float LeaderBoardBridge::statusChecker(float param_1)

{
  LeaderBoardBridge *in_r0;
  
  if (in_r0[0xee] != (LeaderBoardBridge)0x0) {
    if (in_r0[0xec] != (LeaderBoardBridge)0x0) {
      in_r0[0xec] = (LeaderBoardBridge)0x0;
      param_1 = (float)getServerScores(in_r0);
    }
    if (in_r0[0xed] != (LeaderBoardBridge)0x0) {
      in_r0[0xed] = (LeaderBoardBridge)0x0;
      param_1 = (float)sendServerScores(in_r0);
    }
  }
  return param_1;
}

// ---- LeaderBoardBridge::getCategoryKey  @ 0x4355e4
/* LeaderBoardBridge::getCategoryKey(ELeaderboardType) */

undefined4
LeaderBoardBridge::getCategoryKey(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  CCString *this;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  uVar1 = sharedLeaderBoardBridge();
  getCategory(auStack_c,uVar1,param_3);
  uVar1 = FUN_007c5300(auStack_c);
  this = (CCString *)cocos2d::CCString::createWithFormat("LBKey.%s",uVar1);
  uVar1 = cocos2d::CCString::getCString(this);
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(param_1,uVar1,auStack_10);
  FUN_0079a3fc(auStack_10);
  FUN_007c5914(auStack_c);
  return param_1;
}

// ---- LeaderBoardBridge::getServerScores  @ 0x435668
/* LeaderBoardBridge::getServerScores() */

void __thiscall LeaderBoardBridge::getServerScores(LeaderBoardBridge *this)

{
  char cVar1;
  NetworkManager *this_00;
  int local_c;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isPlayerAuthenticated(this_00);
  if (cVar1 == '\x01') {
    for (local_c = 0; local_c < 7; local_c = local_c + 1) {
      getServerScore(this,local_c);
    }
  }
  else {
    this[0xec] = (LeaderBoardBridge)0x1;
  }
  return;
}

// ---- LeaderBoardBridge::setTryLoadScores  @ 0x4356b4
/* LeaderBoardBridge::setTryLoadScores(bool) */

void __thiscall LeaderBoardBridge::setTryLoadScores(LeaderBoardBridge *this,bool param_1)

{
  *(bool *)(m_pInstance + 0xee) = param_1;
  return;
}

// ---- LeaderBoardBridge::sendServerScores  @ 0x4356dc
/* LeaderBoardBridge::sendServerScores() */

void __thiscall LeaderBoardBridge::sendServerScores(LeaderBoardBridge *this)

{
  undefined4 local_c;
  
  for (local_c = 0; local_c < 7; local_c = local_c + 1) {
    sendServerScore(this,local_c);
  }
  return;
}

// ---- LeaderBoardBridge::getServerScore  @ 0x435704
/* LeaderBoardBridge::getServerScore(ELeaderboardType) */

void __thiscall LeaderBoardBridge::getServerScore(LeaderBoardBridge *this,undefined4 param_2)

{
  retrieveScore(this,param_2);
  return;
}

// ---- LeaderBoardBridge::sendServerScore  @ 0x43571c
/* LeaderBoardBridge::sendServerScore(ELeaderboardType) */

void __thiscall LeaderBoardBridge::sendServerScore(LeaderBoardBridge *this,undefined4 param_2)

{
  reportScore(this,param_2);
  return;
}

// ---- LeaderBoardBridge::getScoreData  @ 0x435734
/* LeaderBoardBridge::getScoreData(ELeaderboardType) */

undefined4 __thiscall LeaderBoardBridge::getScoreData(LeaderBoardBridge *this,undefined4 param_2)

{
  undefined4 uVar1;
  CCUserDefault *this_00;
  char *pcVar2;
  undefined1 auStack_10 [4];
  undefined4 local_c;
  
  uVar1 = sharedLeaderBoardBridge();
  getCategoryKey(auStack_10,uVar1,param_2,uVar1,param_2,this);
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar2 = (char *)FUN_007c5300(auStack_10);
  uVar1 = cocos2d::CCUserDefault::getIntegerForKey(this_00,pcVar2,0);
  local_c = uVar1;
  FUN_007c5914(auStack_10);
  return uVar1;
}

// ---- LeaderBoardBridge::setLocalScore  @ 0x43578c
/* LeaderBoardBridge::setLocalScore(ELeaderboardType, long long) */

void LeaderBoardBridge::setLocalScore
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  CCUserDefault *this;
  char *pcVar2;
  undefined1 auStack_c [4];
  
  uVar1 = sharedLeaderBoardBridge();
  getCategoryKey(auStack_c,uVar1,param_2,uVar1,param_3,param_4,param_2,param_1);
  this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar2 = (char *)FUN_007c5300(auStack_c);
  cocos2d::CCUserDefault::setIntegerForKey(this,pcVar2,param_3);
  FUN_007c5914(auStack_c);
  return;
}

// ---- LeaderBoardBridge::addLocalScore  @ 0x4357e0
/* LeaderBoardBridge::addLocalScore(ELeaderboardType, long long) */

void LeaderBoardBridge::addLocalScore
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  undefined4 uVar1;
  CCUserDefault *pCVar2;
  char *pcVar3;
  undefined1 auStack_10 [4];
  int local_c;
  
  uVar1 = sharedLeaderBoardBridge();
  getCategoryKey(auStack_10,uVar1,param_2,uVar1,param_3,param_4,param_2,param_1);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_10);
  local_c = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,pcVar3,0);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_10);
  cocos2d::CCUserDefault::setIntegerForKey(pCVar2,pcVar3,local_c + param_3);
  FUN_007c5914(auStack_10);
  return;
}

// ---- LeaderBoardBridge::updateLocalScore  @ 0x435858
/* LeaderBoardBridge::updateLocalScore(ELeaderboardType, long long) */

void LeaderBoardBridge::updateLocalScore
               (undefined4 param_1,undefined4 param_2,uint param_3,int param_4)

{
  int iVar1;
  undefined4 uVar2;
  CCUserDefault *pCVar3;
  char *pcVar4;
  undefined1 auStack_10 [4];
  uint local_c;
  
  uVar2 = sharedLeaderBoardBridge();
  getCategoryKey(auStack_10,uVar2,param_2);
  pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar4 = (char *)FUN_007c5300(auStack_10);
  local_c = cocos2d::CCUserDefault::getIntegerForKey(pCVar3,pcVar4,0);
  iVar1 = (int)local_c >> 0x1f;
  if ((int)((iVar1 - param_4) - (uint)(local_c < param_3)) < 0 !=
      (SBORROW4(iVar1,param_4) != SBORROW4(iVar1 - param_4,(uint)(local_c < param_3)))) {
    pCVar3 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    pcVar4 = (char *)FUN_007c5300(auStack_10);
    cocos2d::CCUserDefault::setIntegerForKey(pCVar3,pcVar4,param_3);
  }
  FUN_007c5914(auStack_10);
  return;
}

// ---- LeaderBoardBridge::platformInit  @ 0x443568
/* LeaderBoardBridge::platformInit() */

void LeaderBoardBridge::platformInit(void)

{
  LeaderBoardBridge *this;
  
  this = (LeaderBoardBridge *)sharedLeaderBoardBridge();
  getServerScores(this);
  return;
}

// ---- LeaderBoardBridge::retrieveScore  @ 0x443664
/* LeaderBoardBridge::retrieveScore(ELeaderboardType) */

void __thiscall LeaderBoardBridge::retrieveScore(LeaderBoardBridge *this,undefined4 param_2)

{
  int iVar1;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)> afStack_1c [16];
  int local_c;
  
  local_c = __stack_chk_guard;
  getAndroidId(auStack_24,param_2);
  iVar1 = FUN_007c505c(auStack_24);
  if (iVar1 != 0) {
    FUN_007c64e8(auStack_20,auStack_24);
    FUN_004437e0(afStack_1c,this);
    GPGSStateManager::FetchLeaderboardScore(auStack_20,afStack_1c);
    std::function<void(gpg::LeaderboardManager::FetchScoreSummaryResponse_const&)>::~function
              (afStack_1c);
    FUN_007c5914(auStack_20);
  }
  FUN_007c5914(auStack_24);
  if (local_c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- LeaderBoardBridge::reportScore  @ 0x443714
/* LeaderBoardBridge::reportScore(ELeaderboardType) */

void __thiscall LeaderBoardBridge::reportScore(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  LeaderBoardBridge *pLVar2;
  char *pcVar3;
  undefined1 auStack_14 [4];
  int local_10;
  int iStack_c;
  
  getAndroidId(auStack_14,param_2);
  iVar1 = FUN_007c505c(auStack_14);
  if (iVar1 != 0) {
    pLVar2 = (LeaderBoardBridge *)sharedLeaderBoardBridge();
    local_10 = getScoreData(pLVar2,param_2);
    iStack_c = local_10 >> 0x1f;
    pcVar3 = (char *)FUN_007c5300(auStack_14);
    GPGSStateManager::SubmitHighScore(pcVar3,CONCAT44(iStack_c,local_10));
  }
  FUN_007c5914(auStack_14);
  return;
}

// ---- LeaderBoardBridge::showLeaderboard  @ 0x443788
/* LeaderBoardBridge::showLeaderboard(ELeaderboardType) */

void __thiscall LeaderBoardBridge::showLeaderboard(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined1 auStack_c [8];
  
  getAndroidId(auStack_c,param_2);
  iVar1 = FUN_007c505c(auStack_c);
  if (iVar1 != 0) {
    GPGSStateManager::ShowAllLeaderboards();
  }
  FUN_007c5914(auStack_c);
  return;
}
