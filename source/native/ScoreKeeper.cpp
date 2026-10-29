// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 21 functions

// ---- ScoreKeeper::ScoreKeeper  @ 0x3e2184
/* ScoreKeeper::ScoreKeeper() */

ScoreKeeper * __thiscall ScoreKeeper::ScoreKeeper(ScoreKeeper *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091a5d8;
  return this;
}

// ---- ScoreKeeper::sharedScoreKeeper  @ 0x3e22c8
/* ScoreKeeper::sharedScoreKeeper() */

ScoreKeeper * ScoreKeeper::sharedScoreKeeper(void)

{
  ScoreKeeper *this;
  
  if (m_pInstance == (ScoreKeeper *)0x0) {
    this = operator_new(0x30);
    ScoreKeeper(this);
    m_pInstance = this;
    init(this);
  }
  return m_pInstance;
}

// ---- ScoreKeeper::init  @ 0x3e2318
/* ScoreKeeper::init() */

undefined4 __thiscall ScoreKeeper::init(ScoreKeeper *this)

{
  CCNotificationCenter *pCVar1;
  undefined4 uVar2;
  
  this[0x28] = (ScoreKeeper)0x1;
  *(undefined4 *)(this + 0x2c) = 0;
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e256d,(char *)0x0,
             (CCObject *)"PlayerScored");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e2495,(char *)0x0,
             (CCObject *)"PlayerDead");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)this,(_func_void_CCObject_ptr *)0x3e2789,(char *)0x0,
             (CCObject *)"PlayerPoints");
  *(undefined4 *)(this + 0x20) = 0;
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x14) = uVar2;
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x18) = uVar2;
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x1c) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x1c));
  return 1;
}

// ---- ScoreKeeper::~ScoreKeeper  @ 0x3e2410
/* WARNING: Removing unreachable block (ram,0x003e2460) */
/* ScoreKeeper::~ScoreKeeper() */

ScoreKeeper * __thiscall ScoreKeeper::~ScoreKeeper(ScoreKeeper *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091a5d8;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1c));
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- ScoreKeeper::~ScoreKeeper  @ 0x3e2478
/* ScoreKeeper::~ScoreKeeper() */

ScoreKeeper * __thiscall ScoreKeeper::~ScoreKeeper(ScoreKeeper *this)

{
  ~ScoreKeeper(this);
  operator_delete(this);
  return this;
}

// ---- ScoreKeeper::onHostDead  @ 0x3e2494
/* ScoreKeeper::onHostDead(cocos2d::CCObject*) */

void __thiscall ScoreKeeper::onHostDead(ScoreKeeper *this,CCObject *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  (**(code **)(*hostSoldier + 0x1b8))
            (auStack_18,hostSoldier,hostSoldier,*(code **)(*hostSoldier + 0x1b8),param_1);
  (**(code **)(*hostSoldier + 0x1c0))(auStack_14,hostSoldier);
  FUN_007c64e8(auStack_10,auStack_18);
  FUN_007c64e8(auStack_c,auStack_14);
  uVar1 = (**(code **)(*hostSoldier + 0x310))(hostSoldier);
  addKill(this,auStack_10,auStack_c,uVar1);
  FUN_007c5914(auStack_c);
  FUN_007c5914(auStack_10);
  FUN_007c5914(auStack_14);
  FUN_007c5914(auStack_18);
  return;
}

// ---- ScoreKeeper::onPeerDead  @ 0x3e256c
/* ScoreKeeper::onPeerDead(cocos2d::CCObject*) */

void __thiscall ScoreKeeper::onPeerDead(ScoreKeeper *this,CCObject *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [3];
  undefined1 local_25;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  CCArray *local_1c;
  CCString *local_18;
  CCString *local_14;
  CCInteger *local_10;
  CCInteger *local_c;
  
  local_1c = (CCArray *)param_1;
  local_18 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_1c,1);
  local_10 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_1c,2);
  local_c = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_1c,4);
  iVar1 = cocos2d::CCInteger::getValue(local_c);
  local_25 = iVar1 != 0;
  uVar2 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(auStack_24,uVar2,auStack_2c);
  uVar2 = cocos2d::CCString::getCString(local_14);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_20,uVar2,auStack_28);
  addKill(this,auStack_24,auStack_20,local_25);
  FUN_007c5914(auStack_20);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_2c);
  iVar1 = cocos2d::CCInteger::getValue(local_10);
  *(int *)(this + 0x20) = *(int *)(this + 0x20) + iVar1;
  return;
}

// ---- ScoreKeeper::addKill  @ 0x3e2668
/* ScoreKeeper::addKill(std::string, std::string, bool) */

void __thiscall ScoreKeeper::addKill(ScoreKeeper *this,string *param_2,string *param_3,char param_4)

{
  CCInteger *this_00;
  CCInteger *this_01;
  CCObject *pCVar1;
  CCNotificationCenter *this_02;
  CCDictionary *pCVar2;
  int local_18;
  int local_14;
  
  this_00 = (CCInteger *)
            cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x14),param_2);
  this_01 = (CCInteger *)
            cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x18),param_3);
  local_18 = 0;
  local_14 = 0;
  if (this_00 != (CCInteger *)0x0) {
    local_18 = cocos2d::CCInteger::getValue(this_00);
  }
  if (this_01 != (CCInteger *)0x0) {
    local_14 = cocos2d::CCInteger::getValue(this_01);
  }
  if (param_4 != '\0') {
    pCVar2 = *(CCDictionary **)(this + 0x14);
    pCVar1 = (CCObject *)cocos2d::CCInteger::create(local_18 + 1);
    cocos2d::CCDictionary::setObject(pCVar2,pCVar1,param_2);
  }
  pCVar2 = *(CCDictionary **)(this + 0x18);
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(local_14 + 1);
  cocos2d::CCDictionary::setObject(pCVar2,pCVar1,param_3);
  this_02 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_02,"ScoreChanged",(CCObject *)0x0);
  return;
}

// ---- ScoreKeeper::getKills  @ 0x3e2718
/* ScoreKeeper::getKills(std::string) */

undefined4 __thiscall ScoreKeeper::getKills(ScoreKeeper *this,string *param_2)

{
  CCInteger *this_00;
  undefined4 local_10;
  
  this_00 = (CCInteger *)
            cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x14),param_2);
  local_10 = 0;
  if (this_00 != (CCInteger *)0x0) {
    local_10 = cocos2d::CCInteger::getValue(this_00);
  }
  return local_10;
}

// ---- ScoreKeeper::getDeaths  @ 0x3e2750
/* ScoreKeeper::getDeaths(std::string) */

undefined4 __thiscall ScoreKeeper::getDeaths(ScoreKeeper *this,string *param_2)

{
  CCInteger *this_00;
  undefined4 local_10;
  
  this_00 = (CCInteger *)
            cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x18),param_2);
  local_10 = 0;
  if (this_00 != (CCInteger *)0x0) {
    local_10 = cocos2d::CCInteger::getValue(this_00);
  }
  return local_10;
}

// ---- ScoreKeeper::onPlayerPoints  @ 0x3e2788
/* ScoreKeeper::onPlayerPoints(cocos2d::CCObject*) */

void __thiscall ScoreKeeper::onPlayerPoints(ScoreKeeper *this,CCObject *param_1)

{
  int iVar1;
  
  iVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  *(int *)(this + 0x20) = *(int *)(this + 0x20) + iVar1;
  return;
}

// ---- ScoreKeeper::clearScores  @ 0x3e27ac
/* ScoreKeeper::clearScores() */

void __thiscall ScoreKeeper::clearScores(ScoreKeeper *this)

{
  cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(this + 0x14));
  cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(this + 0x18));
  cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(this + 0x1c));
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x2c) = 0;
  return;
}

// ---- ScoreKeeper::addPlayerScore  @ 0x3e27e8
/* ScoreKeeper::addPlayerScore(std::string, std::string, int) */

void __thiscall
ScoreKeeper::addPlayerScore(ScoreKeeper *this,undefined4 param_2,string *param_3,undefined4 param_4)

{
  ScoreKeeperRow *this_00;
  CCObject *pCVar1;
  CCDictionary *pCVar2;
  
  this_00 = operator_new(0x20);
  ScoreKeeperRow::ScoreKeeperRow(this_00);
  cocos2d::CCObject::autorelease((CCObject *)this_00);
  thunk_FUN_007c653c(this_00 + 0x14,param_2);
  *(undefined4 *)(this_00 + 0x1c) = param_4;
  thunk_FUN_007c653c(this_00 + 0x18,param_3);
  cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0x1c),(CCObject *)this_00,param_3);
  pCVar2 = *(CCDictionary **)(this + 0x14);
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(0);
  cocos2d::CCDictionary::setObject(pCVar2,pCVar1,param_3);
  pCVar2 = *(CCDictionary **)(this + 0x18);
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(0);
  cocos2d::CCDictionary::setObject(pCVar2,pCVar1,param_3);
  return;
}

// ---- ScoreKeeper::setScore  @ 0x3e2878
/* ScoreKeeper::setScore(int) */

void __thiscall ScoreKeeper::setScore(ScoreKeeper *this,int param_1)

{
  *(int *)(this + 0x20) = param_1;
  return;
}

// ---- ScoreKeeper::getScore  @ 0x3e2888
/* ScoreKeeper::getScore() */

undefined4 __thiscall ScoreKeeper::getScore(ScoreKeeper *this)

{
  return *(undefined4 *)(this + 0x20);
}

// ---- ScoreKeeper::getPlayerInfo  @ 0x3e2898
/* ScoreKeeper::getPlayerInfo() */

undefined4 __thiscall ScoreKeeper::getPlayerInfo(ScoreKeeper *this)

{
  return *(undefined4 *)(this + 0x1c);
}

// ---- ScoreKeeper::addSuicide  @ 0x3e28a8
/* ScoreKeeper::addSuicide() */

void __thiscall ScoreKeeper::addSuicide(ScoreKeeper *this)

{
  *(int *)(this + 0x24) = *(int *)(this + 0x24) + 1;
  return;
}

// ---- ScoreKeeper::getSuicides  @ 0x3e28bc
/* ScoreKeeper::getSuicides() */

undefined4 __thiscall ScoreKeeper::getSuicides(ScoreKeeper *this)

{
  return *(undefined4 *)(this + 0x24);
}

// ---- ScoreKeeper::applyAward  @ 0x3e28cc
/* ScoreKeeper::applyAward(int, int, int, int) */

void __thiscall
ScoreKeeper::applyAward(ScoreKeeper *this,int param_1,int param_2,int param_3,int param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  LeaderBoardBridge *this_00;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  AchievementBridge *pAVar8;
  uint in_fpscr;
  float fVar9;
  float fVar10;
  int local_24;
  
  if (this[0x28] != (ScoreKeeper)0x1) {
    LeaderBoardBridge::sharedLeaderBoardBridge();
    uVar1 = LeaderBoardBridge::calcPlayerExp();
    iVar2 = FUN_003e20bc(uVar1);
    uVar1 = LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::addLocalScore(uVar1,0,param_1,param_1 >> 0x1f);
    uVar1 = LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::addLocalScore(uVar1,2,param_2,param_2 >> 0x1f);
    uVar1 = LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::addLocalScore(uVar1,3,param_3,param_3 >> 0x1f);
    uVar1 = LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::addLocalScore(uVar1,6,param_4,param_4 >> 0x1f);
    iVar3 = LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::updatePlayerSkill(iVar3,param_2);
    this_00 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    LeaderBoardBridge::sendServerScores(this_00);
    LeaderBoardBridge::sharedLeaderBoardBridge();
    iVar3 = LeaderBoardBridge::calcPlayerExp();
    iVar4 = FUN_003e20bc(iVar3);
    iVar5 = FUN_003e206c(iVar4);
    iVar6 = FUN_003e206c(iVar4 + 1);
    iVar7 = FUN_003e206c(iVar4);
    fVar9 = (float)VectorSignedToFloat(iVar3 - iVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar10 = (float)VectorSignedToFloat(iVar6 - iVar7,(byte)(in_fpscr >> 0x16) & 3);
    for (local_24 = 0; local_24 <= iVar4; local_24 = local_24 + 1) {
      uVar1 = AchievementBridge::sharedAchievementBridge();
      AchievementBridge::setLocalProgress(uVar1,local_24,0x42c80000);
      pAVar8 = (AchievementBridge *)AchievementBridge::sharedAchievementBridge();
      AchievementBridge::sendServerProgress(pAVar8,local_24);
    }
    if (iVar4 + 1 < 0x15) {
      uVar1 = AchievementBridge::sharedAchievementBridge();
      AchievementBridge::setLocalProgress(uVar1,iVar4 + 1,(fVar9 / fVar10) * 100.0);
      pAVar8 = (AchievementBridge *)AchievementBridge::sharedAchievementBridge();
      AchievementBridge::sendServerProgress(pAVar8,iVar4 + 1);
    }
    if (iVar2 < iVar4) {
      *(undefined4 *)(this + 0x2c) = 1;
    }
  }
  return;
}

// ---- ScoreKeeper::applyPenalty  @ 0x3e2a5c
/* ScoreKeeper::applyPenalty() */

void __thiscall ScoreKeeper::applyPenalty(ScoreKeeper *this)

{
  CCUserDefault *this_00;
  
  if (this[0x28] != (ScoreKeeper)0x1) {
    this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(this_00,"QuitCount",1);
  }
  return;
}

// ---- ScoreKeeper::getRankChange  @ 0x3e2a90
/* ScoreKeeper::getRankChange() */

undefined4 __thiscall ScoreKeeper::getRankChange(ScoreKeeper *this)

{
  return *(undefined4 *)(this + 0x2c);
}
