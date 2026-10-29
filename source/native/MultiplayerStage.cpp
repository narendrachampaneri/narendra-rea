// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- MultiplayerStage::MultiplayerStage  @ 0x385a1c
/* MultiplayerStage::MultiplayerStage() */

MultiplayerStage * __thiscall MultiplayerStage::MultiplayerStage(MultiplayerStage *this)

{
  Stage::Stage((Stage *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00915820;
  *(undefined ***)(this + 0xe4) = &PTR__MultiplayerStage_1_00915a84;
  *(undefined **)(this + 0xe8) = &DAT_00915ab4;
  *(undefined **)(this + 0xec) = &DAT_00915ac0;
  return this;
}

// ---- MultiplayerStage::init  @ 0x385a74
/* MultiplayerStage::init() */

bool __thiscall MultiplayerStage::init(MultiplayerStage *this)

{
  char cVar1;
  CCNotificationCenter *pCVar2;
  
  cVar1 = Stage::init((Stage *)this);
  if (cVar1 == '\x01') {
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x385bd1,(char *)0x0,
               (CCObject *)"PlayerScored");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x386275,(char *)0x0,
               (CCObject *)"AfterPeerDisconnected");
  }
  return cVar1 == '\x01';
}

// ---- MultiplayerStage::~MultiplayerStage  @ 0x385b0c
/* WARNING: Removing unreachable block (ram,0x00385b58) */
/* MultiplayerStage::~MultiplayerStage() */

MultiplayerStage * __thiscall MultiplayerStage::~MultiplayerStage(MultiplayerStage *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00915820;
  *(undefined ***)(this + 0xe4) = &PTR__MultiplayerStage_1_00915a84;
  *(undefined **)(this + 0xe8) = &DAT_00915ab4;
  *(undefined **)(this + 0xec) = &DAT_00915ac0;
  Stage::~Stage((Stage *)this);
  return this;
}

// ---- MultiplayerStage::~MultiplayerStage  @ 0x385b70
/* non-virtual thunk to MultiplayerStage::~MultiplayerStage() */

void __thiscall MultiplayerStage::~MultiplayerStage(MultiplayerStage *this)

{
  ~MultiplayerStage(this + -0xe4);
  return;
}

// ---- MultiplayerStage::~MultiplayerStage  @ 0x385b78
/* MultiplayerStage::~MultiplayerStage() */

MultiplayerStage * __thiscall MultiplayerStage::~MultiplayerStage(MultiplayerStage *this)

{
  ~MultiplayerStage(this);
  operator_delete(this);
  return this;
}

// ---- MultiplayerStage::~MultiplayerStage  @ 0x385b94
/* non-virtual thunk to MultiplayerStage::~MultiplayerStage() */

void __thiscall MultiplayerStage::~MultiplayerStage(MultiplayerStage *this)

{
  ~MultiplayerStage(this + -0xe4);
  return;
}

// ---- MultiplayerStage::setupStage  @ 0x385b9c
/* MultiplayerStage::setupStage() */

void __thiscall MultiplayerStage::setupStage(MultiplayerStage *this)

{
  Stage::setupStage((Stage *)this);
  *(undefined1 *)(*(int *)(this + 0x10c) + 0x1c4) = 1;
  ScoreList::updateScores(*(ScoreList **)(*(int *)(*(int *)(this + 0x10c) + 0xe8) + 0xfc));
  return;
}

// ---- MultiplayerStage::playerScored  @ 0x385bd0
/* MultiplayerStage::playerScored(cocos2d::CCObject*) */

void __thiscall MultiplayerStage::playerScored(MultiplayerStage *this,CCObject *param_1)

{
  undefined3 uVar1;
  CCString *pCVar2;
  undefined4 uVar3;
  int iVar4;
  NetworkManager *pNVar5;
  CCDictionary *pCVar6;
  CCInteger *pCVar7;
  undefined4 uVar8;
  HUD *pHVar9;
  string asStack_44 [4];
  string asStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  int local_20;
  int local_1c;
  CCObject *local_18;
  CCArray *local_14;
  
  local_18 = param_1;
  pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(asStack_44,uVar3,auStack_24);
  FUN_0079a3fc(auStack_24);
  pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)local_18,1);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(asStack_40,uVar3,auStack_24);
  FUN_0079a3fc(auStack_24);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_3c,&DAT_007de430,auStack_24);
  FUN_0079a3fc(auStack_24);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_38,&DAT_007de430,auStack_24);
  FUN_0079a3fc(auStack_24);
  local_20 = 0;
  local_1c = 0;
  local_14 = (CCArray *)0x0;
  uVar1 = FUN_00384c44(0xff,0x32,0x32);
  (**(code **)(*hostSoldier + 0x1c0))(auStack_34,hostSoldier);
  iVar4 = FUN_007c567c(asStack_44,auStack_34);
  FUN_007c5914(auStack_34);
  if (iVar4 == 0) {
    FUN_007c5e70(auStack_3c,&DAT_007de434);
    uVar1 = FUN_00384c44(0x32,200,0x32);
    local_20 = (**(code **)(*hostSoldier + 0x1c4))(hostSoldier);
  }
  else {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
    local_14 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar6,asStack_44);
    if (local_14 == (CCArray *)0x0) goto LAB_00385ffc;
    pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(local_14,1);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_007c5e70(auStack_3c,uVar3);
    pCVar7 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_14,4);
    local_20 = cocos2d::CCInteger::getValue(pCVar7);
  }
  (**(code **)(*hostSoldier + 0x1c0))(auStack_30,hostSoldier);
  iVar4 = FUN_007c567c(asStack_40,auStack_30);
  FUN_007c5914(auStack_30);
  if (iVar4 == 0) {
    FUN_007c5e70(auStack_38,&DAT_007de434);
    uVar1 = FUN_00384c44(0xff,0x32,0x32);
    local_1c = (**(code **)(*hostSoldier + 0x1c4))(hostSoldier);
  }
  else {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
    local_14 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar6,asStack_40);
    if (local_14 == (CCArray *)0x0) goto LAB_00385ffc;
    pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(local_14,1);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_007c5e70(auStack_38,uVar3);
    pCVar7 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_14,4);
    local_1c = cocos2d::CCInteger::getValue(pCVar7);
  }
  iVar4 = FUN_007c567c(asStack_44,asStack_40);
  if (iVar4 == 0) {
    pHVar9 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_3c);
    pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("%s COMMITTED SUICIDE",uVar3);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_2c,uVar3,auStack_24);
    HUD::addMessage(pHVar9,auStack_2c,uVar1,5);
    FUN_007c5914(auStack_2c);
    FUN_0079a3fc(auStack_24);
  }
  else if ((local_20 == 0) || (local_20 != local_1c)) {
    pHVar9 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_3c);
    uVar8 = FUN_007c5300(auStack_38);
    pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("%s KILLED %s",uVar3,uVar8);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,uVar3,auStack_28);
    HUD::addMessage(pHVar9,auStack_24,uVar1,5);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
  }
  else {
    uVar1 = FUN_00384c44(0xff,0x32,0x32);
    pHVar9 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_3c);
    uVar8 = FUN_007c5300(auStack_38);
    pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("%s BETRAYED %s",uVar3,uVar8);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_28,uVar3,auStack_24);
    HUD::addMessage(pHVar9,auStack_28,uVar1,5);
    FUN_007c5914(auStack_28);
    FUN_0079a3fc(auStack_24);
  }
LAB_00385ffc:
  FUN_007c5914(auStack_38);
  FUN_007c5914(auStack_3c);
  FUN_007c5914(asStack_40);
  FUN_007c5914(asStack_44);
  return;
}

// ---- MultiplayerStage::updateStep  @ 0x386110
/* MultiplayerStage::updateStep(float) */

void __thiscall MultiplayerStage::updateStep(MultiplayerStage *this,float param_1)

{
  float fVar1;
  
  Stage::updateStep(param_1);
  if ((*(int *)(*(int *)(this + 0x10c) + 0x1c0) < 1) && (this[0x150] != (MultiplayerStage)0x1)) {
    this[0x150] = (MultiplayerStage)0x1;
    *(undefined1 *)(hostSoldier + 0x1f0) = 1;
    *(undefined1 *)(*(int *)(this + 0x10c) + 0x1c5) = 1;
    fVar1 = (float)ScoreScreen::endGame(*(ScoreScreen **)(*(int *)(this + 0x10c) + 0xe8));
    cocos2d::CCNode::scheduleOnce((_func_void_float *)this,fVar1);
  }
  return;
}

// ---- MultiplayerStage::opponentExists  @ 0x3861a4
/* MultiplayerStage::opponentExists() */

undefined4 MultiplayerStage::opponentExists(void)

{
  bool bVar1;
  char cVar2;
  NetworkManager *this;
  CCDictionary *this_00;
  int iVar3;
  CCArray *this_01;
  CCInteger *this_02;
  undefined4 uVar4;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  this_00 = (CCDictionary *)NetworkManager::getPeerPlayers(this);
  if ((this_00 == (CCDictionary *)0x0) ||
     (iVar3 = cocos2d::CCDictionary::count(this_00), iVar3 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_1c = *(CCDictElement **)(this_00 + 0x14);
    if (*(int *)(this_00 + 0x14) == 0) {
      local_18 = (CCDictElement *)0x0;
    }
    else {
      local_18 = *(CCDictElement **)(*(int *)(this_00 + 0x14) + 0x110);
    }
    while (local_1c != (CCDictElement *)0x0) {
      this_01 = (CCArray *)cocos2d::CCDictElement::getObject(local_1c);
      this_02 = (CCInteger *)cocos2d::CCArray::objectAtIndex(this_01,4);
      uVar4 = cocos2d::CCInteger::getValue(this_02);
      cVar2 = (**(code **)(*hostSoldier + 0x300))(hostSoldier,uVar4);
      if (cVar2 != '\x01') {
        return 1;
      }
      local_1c = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  return 0;
}

// ---- MultiplayerStage::onPlayerDisconnected  @ 0x386274
/* MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*) */

void MultiplayerStage::onPlayerDisconnected(CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  NetworkManager *this;
  CCDictionary *this_00;
  int iVar3;
  
  if (gameType == 4) {
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    this_00 = (CCDictionary *)NetworkManager::getPeerPlayers(this);
    iVar3 = cocos2d::CCDictionary::count(this_00);
    if ((iVar3 == 0) || (cVar2 = opponentExists(), cVar2 != '\x01')) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (bVar1) {
      param_1[0x151] = (CCObject)0x0;
      HUD::setGameClockToZero(*(HUD **)(param_1 + 0x10c));
    }
  }
  return;
}

// ---- MultiplayerStage::create  @ 0x40e64c
/* MultiplayerStage::create() */

MultiplayerStage * MultiplayerStage::create(void)

{
  bool bVar1;
  MultiplayerStage *this;
  int iVar2;
  
  this = operator_new(0x16c);
  MultiplayerStage(this);
  if ((this == (MultiplayerStage *)0x0) ||
     (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (MultiplayerStage *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MultiplayerStage *)0x0;
  }
  return this;
}
