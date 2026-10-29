// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 31 functions

// ---- Stage::Stage  @ 0x40aecc
/* Stage::Stage() */

Stage * __thiscall Stage::Stage(Stage *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091c038;
  *(undefined ***)(this + 0xe4) = &PTR__Stage_1_0091c29c;
  *(undefined **)(this + 0xe8) = &DAT_0091c2cc;
  *(undefined **)(this + 0xec) = &DAT_0091c2d8;
  cocos2d::CCSize::CCSize((CCSize *)(this + 0x120));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x128));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x134));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x13c));
  return this;
}

// ---- Stage::init  @ 0x40af60
/* Stage::init() */

undefined4 __thiscall Stage::init(Stage *this)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint aCStack_18 [8];
  
  local_19 = cocos2d::CCLayer::init((CCLayer *)this);
  if (local_19 == '\x01') {
    playerScale = 0x3ecccccd;
    FUN_007c5e70(&sargePeerId,&DAT_007e9500);
    this[0x151] = (Stage)0x1;
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("aim.png");
    *(undefined4 *)(this + 0x148) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar3 = *(code **)(**(int **)(this + 0x148) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(**(int **)(this + 0x148) + 0x1a4))(*(undefined4 *)(this + 0x148),0xeb);
    uVar2 = LaserSight::create();
    *(undefined4 *)(this + 0x14c) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    pcVar3 = *(code **)(**(int **)(this + 0x14c) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x14c);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(*(int *)this + 0x200))(this);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(aCStack_18,"lasersight",auStack_1c);
    iVar1 = ItemPurchase::isItemPurchased(aCStack_18);
    FUN_007c5914(aCStack_18);
    FUN_0079a3fc(auStack_1c);
    if (iVar1 != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0x14c),1);
    }
    *(undefined4 *)(this + 0x154) = 0;
    *(undefined4 *)(this + 0x158) = 0;
    *(undefined4 *)(this + 0x15c) = 0;
    *(undefined4 *)(this + 0x160) = 0;
    this[0x164] = (Stage)0x0;
    *(undefined4 *)(this + 0x168) = 0;
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0x148),6);
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- Stage::~Stage  @ 0x40b158
/* WARNING: Removing unreachable block (ram,0x0040b2ac) */
/* Stage::~Stage() */

Stage * __thiscall Stage::~Stage(Stage *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091c038;
  *(undefined ***)(this + 0xe4) = &PTR__Stage_1_0091c29c;
  *(undefined **)(this + 0xe8) = &DAT_0091c2cc;
  *(undefined **)(this + 0xec) = &DAT_0091c2d8;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  (**(code **)(*(int *)worldLayer + 0x100))(worldLayer);
  (**(code **)(*(int *)scaleLayer + 0x100))(scaleLayer);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(mapManager);
  HUD::removeAllDependencies();
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(soldierManager);
  WeaponManager::removeAllWeaponsFromSpace(*(WeaponManager **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(worldLayer);
  cocos2d::CCObject::release(scaleLayer);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  worldLayer = (CCObject *)0x0;
  soldierManager = (CCObject *)0x0;
  mapManager = (CCObject *)0x0;
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- Stage::~Stage  @ 0x40b2d4
/* non-virtual thunk to Stage::~Stage() */

void __thiscall Stage::~Stage(Stage *this)

{
  ~Stage(this + -0xe4);
  return;
}

// ---- Stage::~Stage  @ 0x40b2dc
/* Stage::~Stage() */

Stage * __thiscall Stage::~Stage(Stage *this)

{
  ~Stage(this);
  operator_delete(this);
  return this;
}

// ---- Stage::~Stage  @ 0x40b2f8
/* non-virtual thunk to Stage::~Stage() */

void __thiscall Stage::~Stage(Stage *this)

{
  ~Stage(this + -0xe4);
  return;
}

// ---- Stage::setupStage  @ 0x40b300
/* Stage::setupStage() */

void __thiscall Stage::setupStage(Stage *this)

{
  undefined4 uVar1;
  PhysicsManager *this_00;
  MapManager *this_01;
  SoldierManager *this_02;
  ProjectileManager *this_03;
  WeaponManager *this_04;
  ScoreKeeper *this_05;
  char *pcVar2;
  CCNotificationCenter *pCVar3;
  CCObject *pCVar4;
  code *pcVar5;
  undefined8 uVar6;
  undefined4 local_18;
  undefined4 uStack_14;
  
  cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::getWinSize();
  cocos2d::CCSize::operator=((CCSize *)(this + 0x120),(CCSize *)&local_18);
  scaleLayer = (CCObject *)cocos2d::CCLayer::create();
  worldLayer = (CCObject *)cocos2d::CCLayer::create();
  cocos2d::CCObject::retain(scaleLayer);
  cocos2d::CCObject::retain(worldLayer);
  uVar1 = HUD::create();
  *(undefined4 *)(this + 0x10c) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
  this_00 = operator_new(0x14);
  PhysicsManager::PhysicsManager(this_00);
  *(PhysicsManager **)(this + 0x114) = this_00;
  this_01 = operator_new(100);
  MapManager::MapManager(this_01);
  mapManager = this_01;
  gravityFactor = MapManager::getGravityFactor(this_01);
  this_02 = operator_new(0x38);
  SoldierManager::SoldierManager(this_02);
  soldierManager = this_02;
  SoldierManager::spawnPlayer();
  this_03 = operator_new(0x30);
  ProjectileManager::ProjectileManager(this_03);
  *(ProjectileManager **)(this + 0x118) = this_03;
  this_04 = operator_new(0x4c);
  WeaponManager::WeaponManager(this_04);
  *(WeaponManager **)(this + 0x110) = this_04;
  uVar1 = EffectsManager::create();
  *(undefined4 *)(this + 0x11c) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
  *(undefined1 *)(*(int *)(this + 0x11c) + 0x138) = SHOWBLOOD;
  this_05 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  ScoreKeeper::clearScores(this_05);
  MapManager::getBackground();
  pcVar2 = (char *)FUN_007c5300(&local_18);
  uVar1 = cocos2d::CCSprite::create(pcVar2);
  *(undefined4 *)(this + 0x108) = uVar1;
  FUN_007c5914(&local_18);
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
  (**(code **)(**(int **)(this + 0x108) + 0x38))
            (*(undefined4 *)(this + 0x108),screenSize._4_4_ / 320.0);
  uVar6 = (**(code **)(**(int **)(this + 0x108) + 0x30))
                    (*(undefined4 *)(this + 0x108),(float)screenSize / 480.0);
  if (DEBUG_MODE != '\0') {
    uVar6 = (**(code **)(**(int **)(this + 0x108) + 0x1a4))(*(undefined4 *)(this + 0x108),100);
  }
  pcVar5 = *(code **)(**(int **)(this + 0x108) + 0x4c);
  uVar1 = *(undefined4 *)(this + 0x108);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = (*pcVar5)(uVar1,&local_18);
  this[0x150] = (Stage)0x0;
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  uVar6 = cocos2d::CCPoint::operator=((CCPoint *)&centerPoint,(CCPoint *)&local_18);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x13c),(CCPoint *)&local_18);
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x108),0);
  (**(code **)(*(int *)this + 0xcc))(this,scaleLayer,1);
  (**(code **)(*(int *)scaleLayer + 0xcc))(scaleLayer,worldLayer,2);
  MapManager::addToLayer(mapManager,(CCLayer *)worldLayer,1,5);
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x10c),5);
  ProjectileManager::addBodyShapeSprite(*(ProjectileManager **)(this + 0x118));
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x248,(char *)0x1,
             (CCObject *)"BeforePeerDisconnected");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x244,(char *)0x1,
             (CCObject *)"PlayerEnteredGame");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x23c,(char *)0x1,
             (CCObject *)"SendInstantMessage");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x240,(char *)0x1,
             (CCObject *)"DisplayInstantMessage");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x238,(char *)0x1,
             (CCObject *)"ReceivedInstantMessage");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x230,(char *)0x1,
             (CCObject *)"PlayerDead");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x22c,(char *)0x1,
             (CCObject *)"PauseGame");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x228,(char *)0x1,
             (CCObject *)"ResumeGame");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_18 = 0x250;
  uStack_14 = 1;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x250,(char *)0x1,
             (CCObject *)"WeaponChange");
  (**(code **)(*(int *)this + 0x234))(this);
  HUD::addHostPlayer(*(HUD **)(this + 0x10c));
  pCVar4 = (CCObject *)NetworkManager::sharedNetworkManager();
  NetworkManager::sendPlayerEnteredGame(pCVar4);
  return;
}

// ---- Stage::sendNetworkData  @ 0x40b888
/* Stage::sendNetworkData(float) */

float __thiscall Stage::sendNetworkData(Stage *this,float param_1)

{
  bool bVar1;
  int iVar2;
  CCObject *pCVar3;
  float in_r1;
  float extraout_s0;
  float fVar4;
  float extraout_s0_00;
  
  *(float *)(this + 0x154) = *(float *)(this + 0x154) + in_r1;
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  *(float *)(this + 0x15c) = *(float *)(this + 0x15c) + in_r1;
  *(float *)(this + 0x160) = *(float *)(this + 0x160) + in_r1;
  this[0x164] = (Stage)0x0;
  if (0.09 < *(float *)(this + 0x15c)) {
    if ((0.25 < *(float *)(this + 0x158)) ||
       (iVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier), iVar2 != 0)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (bVar1) {
      bVar1 = (bool)NetworkManager::sharedNetworkManager();
      fVar4 = (float)NetworkManager::sendPositionData(extraout_s0,bVar1);
      *(undefined4 *)(this + 0x158) = 0;
    }
    else {
      bVar1 = (bool)NetworkManager::sharedNetworkManager();
      fVar4 = (float)NetworkManager::sendPositionData(extraout_s0_00,bVar1);
    }
    param_1 = (float)WeaponManager::updateWeaponsStep(*(WeaponManager **)(this + 0x110),fVar4);
    *(float *)(this + 0x15c) = *(float *)(this + 0x15c) - 0.09;
    this[0x164] = (Stage)0x1;
  }
  if (3.57 < *(float *)(this + 0x154)) {
    pCVar3 = (CCObject *)NetworkManager::sharedNetworkManager();
    param_1 = (float)NetworkManager::sendPing(pCVar3);
    *(float *)(this + 0x154) = *(float *)(this + 0x154) - 3.57;
  }
  return param_1;
}

// ---- Stage::onPlayerDead  @ 0x40b9f8
/* Stage::onPlayerDead(cocos2d::CCObject*) */

void __thiscall Stage::onPlayerDead(Stage *this,CCObject *param_1)

{
  undefined3 uVar1;
  int iVar2;
  CCString *pCVar3;
  undefined4 uVar4;
  ScoreKeeper *this_00;
  NetworkManager *this_01;
  CCDictionary *this_02;
  HUD *pHVar5;
  undefined4 local_2c;
  undefined1 auStack_28 [4];
  undefined4 local_24;
  string asStack_20 [4];
  undefined1 auStack_1c [4];
  CCArray *local_18;
  CCString *local_14;
  
  (**(code **)(*hostSoldier + 0x1b8))
            (asStack_20,hostSoldier,hostSoldier,*(code **)(*hostSoldier + 0x1b8),param_1);
  (**(code **)(*hostSoldier + 0x1c0))(auStack_1c,hostSoldier);
  iVar2 = FUN_007c567c(asStack_20,auStack_1c);
  FUN_007c5914(auStack_1c);
  FUN_007c5914(asStack_20);
  if (iVar2 == 0) {
    pHVar5 = *(HUD **)(this + 0x10c);
    FUN_0079a3f4(&local_2c);
    FUN_007c6a60(asStack_20,"YOU COMMITTED SUICIDE",&local_2c);
    pCVar3 = (CCString *)cocos2d::CCString::create(asStack_20);
    uVar4 = cocos2d::CCString::getCString(pCVar3);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_1c,uVar4,auStack_28);
    uVar1 = FUN_00409f40(0xff,0,0);
    local_24 = CONCAT13(local_24._3_1_,uVar1);
    HUD::addMessage(pHVar5,auStack_1c,local_24,5);
    FUN_007c5914(auStack_1c);
    FUN_0079a3fc(auStack_28);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(&local_2c);
    this_00 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    ScoreKeeper::addSuicide(this_00);
  }
  else {
    (**(code **)(*hostSoldier + 0x1b8))(auStack_28,hostSoldier);
    this_01 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    this_02 = (CCDictionary *)NetworkManager::getPeerPlayers(this_01);
    uVar4 = FUN_007c5300(auStack_28);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(&local_24,uVar4,auStack_1c);
    local_18 = (CCArray *)cocos2d::CCDictionary::objectForKey(this_02,(string *)&local_24);
    FUN_007c5914(&local_24);
    FUN_0079a3fc(auStack_1c);
    if (local_18 == (CCArray *)0x0) {
      pHVar5 = *(HUD **)(this + 0x10c);
      pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("YOU WERE KILLED");
      uVar4 = cocos2d::CCString::getCString(pCVar3);
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(asStack_20,uVar4,auStack_1c);
      uVar1 = FUN_00409f40(0xff,0,0);
      HUD::addMessage(pHVar5,asStack_20,uVar1,5);
      FUN_007c5914(asStack_20);
      FUN_0079a3fc(auStack_1c);
    }
    else {
      local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_18,1);
      pHVar5 = *(HUD **)(this + 0x10c);
      uVar4 = cocos2d::CCString::getCString(local_14);
      pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("YOU WERE KILLED BY %s",uVar4);
      uVar4 = cocos2d::CCString::getCString(pCVar3);
      FUN_0079a3f4(asStack_20);
      FUN_007c6a60(auStack_1c,uVar4,asStack_20);
      uVar1 = FUN_00409f40(0xff,0,0);
      local_2c = CONCAT13(local_2c._3_1_,uVar1);
      HUD::addMessage(pHVar5,auStack_1c,local_2c,5);
      FUN_007c5914(auStack_1c);
      FUN_0079a3fc(asStack_20);
    }
    FUN_007c5914(auStack_28);
  }
  return;
}

// ---- Stage::receivedIM  @ 0x40bd28
/* Stage::receivedIM(cocos2d::CCObject*) */

void __thiscall Stage::receivedIM(Stage *this,CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  undefined3 uVar3;
  CCString *pCVar4;
  undefined4 uVar5;
  int iVar6;
  NetworkManager *this_00;
  CCDictionary *pCVar7;
  undefined4 uVar8;
  CCNotificationCenter *this_01;
  CCObject *pCVar9;
  HUD *pHVar10;
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  string asStack_34 [4];
  string asStack_30 [4];
  undefined1 auStack_2c [4];
  string asStack_28 [4];
  undefined1 auStack_24 [4];
  CCObject *local_20;
  CCString *local_1c;
  CCArray *local_18;
  int *local_14;
  
  if (param_1 == (CCObject *)0x0) {
    return;
  }
  local_20 = param_1;
  pCVar4 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  uVar5 = cocos2d::CCString::getCString(pCVar4);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_3c,uVar5,auStack_24);
  FUN_0079a3fc(auStack_24);
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)local_20,1);
  if (local_1c == (CCString *)0x0) goto LAB_0040bfc8;
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_38,"Server",auStack_24);
  FUN_0079a3fc(auStack_24);
  iVar6 = FUN_007c505c(auStack_3c);
  if ((iVar6 == 0) || (iVar6 = FUN_007c5724(auStack_3c,"Server"), iVar6 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar7 = (CCDictionary *)NetworkManager::getPeerPlayers(this_00);
    uVar5 = FUN_007c5300(auStack_3c);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(asStack_34,uVar5,auStack_24);
    local_18 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar7,asStack_34);
    FUN_007c5914(asStack_34);
    FUN_0079a3fc(auStack_24);
    if (local_18 != (CCArray *)0x0) {
      pCVar4 = (CCString *)cocos2d::CCArray::objectAtIndex(local_18,1);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_007c5e70(auStack_38,uVar5);
      goto LAB_0040be46;
    }
  }
  else {
LAB_0040be46:
    pCVar7 = peerSoldiers;
    uVar5 = FUN_007c5300(auStack_3c);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(asStack_30,uVar5,auStack_24);
    local_14 = (int *)cocos2d::CCDictionary::objectForKey(pCVar7,asStack_30);
    FUN_007c5914(asStack_30);
    FUN_0079a3fc(auStack_24);
    uVar5 = sndEng;
    if (local_14 != (int *)0x0) {
      uVar8 = cocos2d::CCString::getCString(local_1c);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_2c,uVar8,auStack_24);
      iVar6 = local_14[0x4e];
      cVar2 = Sound::playTaunt(uVar5,auStack_2c,*(undefined4 *)(iVar6 + 0x28),
                               *(undefined4 *)(iVar6 + 0x2c),*(undefined4 *)(iVar6 + 0x30),
                               *(undefined4 *)(iVar6 + 0x34));
      FUN_007c5914(auStack_2c);
      FUN_0079a3fc(auStack_24);
      if (cVar2 != '\0') {
        this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        (**(code **)(*local_14 + 0x1c0))(asStack_28,local_14);
        pCVar9 = (CCObject *)cocos2d::CCString::create(asStack_28);
        cocos2d::CCNotificationCenter::postNotification(this_01,"RadarAlert",pCVar9);
        FUN_007c5914(asStack_28);
      }
    }
    pHVar10 = *(HUD **)(this + 0x10c);
    uVar5 = FUN_007c5300(auStack_38);
    uVar8 = cocos2d::CCString::getCString(local_1c);
    pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%s: %s",uVar5,uVar8);
    uVar5 = cocos2d::CCString::getCString(pCVar4);
    FUN_0079a3f4(asStack_28);
    FUN_007c6a60(auStack_24,uVar5,asStack_28);
    uVar3 = FUN_00409f40(0xff,0xff,0xff);
    HUD::addMessage(pHVar10,auStack_24,uVar3,5);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(asStack_28);
  }
  FUN_007c5914(auStack_38);
LAB_0040bfc8:
  FUN_007c5914(auStack_3c);
  return;
}

// ---- Stage::sentIM  @ 0x40c080
/* Stage::sentIM(cocos2d::CCObject*) */

void __thiscall Stage::sentIM(Stage *this,CCObject *param_1)

{
  undefined3 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  CCString *this_00;
  int iVar4;
  HUD *pHVar5;
  undefined1 auStack_24 [4];
  undefined4 local_20;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  uVar3 = sndEng;
  uVar2 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,uVar2,auStack_18);
  iVar4 = hostSoldier[0x4e];
  Sound::playTaunt(uVar3,auStack_14,*(undefined4 *)(iVar4 + 0x28),*(undefined4 *)(iVar4 + 0x2c),
                   *(undefined4 *)(iVar4 + 0x30),*(undefined4 *)(iVar4 + 0x34));
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::getPlayerName();
  uVar3 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_14);
  FUN_007c6a60(auStack_18,uVar3,auStack_14);
  FUN_0079a3fc(auStack_14);
  iVar4 = FUN_007c5724(auStack_18,"DA2ID");
  if (iVar4 != 0) {
    pHVar5 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_1c);
    uVar2 = FUN_007c5300(auStack_18);
    this_00 = (CCString *)cocos2d::CCString::createWithFormat("%s: %s",uVar3,uVar2);
    uVar3 = cocos2d::CCString::getCString(this_00);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_14,uVar3,auStack_24);
    uVar1 = FUN_00409f40(0xff,0xff,0xff);
    local_20 = CONCAT13(local_20._3_1_,uVar1);
    HUD::addMessage(pHVar5,auStack_14,local_20,5);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_24);
  }
  FUN_007c5914(auStack_18);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- Stage::showAlert  @ 0x40c248
/* Stage::showAlert(cocos2d::CCObject*) */

void __thiscall Stage::showAlert(Stage *this,CCObject *param_1)

{
  undefined3 uVar1;
  undefined4 uVar2;
  CCString *this_00;
  HUD *pHVar3;
  undefined1 auStack_20 [4];
  undefined4 local_1c;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  uVar2 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_14);
  FUN_007c6a60(auStack_18,uVar2,auStack_14);
  FUN_0079a3fc(auStack_14);
  pHVar3 = *(HUD **)(this + 0x10c);
  uVar2 = FUN_007c5300(auStack_18);
  this_00 = (CCString *)cocos2d::CCString::createWithFormat("%s",uVar2);
  uVar2 = cocos2d::CCString::getCString(this_00);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_14,uVar2,auStack_20);
  uVar1 = FUN_00409f40(0xfa,0xfa,0);
  local_1c = CONCAT13(local_1c._3_1_,uVar1);
  HUD::addMessage(pHVar3,auStack_14,local_1c,5);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_20);
  FUN_007c5914(auStack_18);
  return;
}

// ---- Stage::addRemotePlayersFromPeerList  @ 0x40c330
/* Stage::addRemotePlayersFromPeerList() */

void __thiscall Stage::addRemotePlayersFromPeerList(Stage *this)

{
  undefined3 uVar1;
  NetworkManager *pNVar2;
  int iVar3;
  undefined4 uVar4;
  CCDictionary *this_00;
  CCString *pCVar5;
  SoldierView *pSVar6;
  CCInteger *pCVar7;
  AvatarRenderer *pAVar8;
  code *pcVar9;
  HUD *pHVar10;
  bool bVar11;
  string asStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  CCDictElement *local_40;
  CCDictElement *local_3c;
  CCDictionary *local_38;
  int *local_34;
  CCArray *local_30;
  int local_2c;
  CCArray *local_28;
  CCTexture2D *local_24;
  CCTexture2D *local_20;
  CCTexture2D *local_1c;
  CCTexture2D *local_18;
  int local_14;
  
  local_40 = (CCDictElement *)0x0;
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  local_38 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar2);
  local_3c = (CCDictElement *)0x0;
  if ((local_38 == (CCDictionary *)0x0) ||
     (iVar3 = cocos2d::CCDictionary::count(local_38), iVar3 == 0)) {
    bVar11 = false;
  }
  else {
    bVar11 = true;
  }
  if (bVar11) {
    local_40 = *(CCDictElement **)(local_38 + 0x14);
    if (*(int *)(local_38 + 0x14) == 0) {
      local_3c = (CCDictElement *)0x0;
    }
    else {
      local_3c = *(CCDictElement **)(*(int *)(local_38 + 0x14) + 0x110);
    }
    while (local_40 != (CCDictElement *)0x0) {
      uVar4 = cocos2d::CCDictElement::getStrKey(local_40);
      FUN_0079a3f4(auStack_44);
      FUN_007c6a60(asStack_58,uVar4,auStack_44);
      FUN_0079a3fc(auStack_44);
      pcVar9 = *(code **)(*(int *)this + 0x224);
      FUN_007c64e8(auStack_54,asStack_58);
      local_34 = (int *)(*pcVar9)(this,auStack_54);
      FUN_007c5914(auStack_54);
      pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      this_00 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar2);
      local_30 = (CCArray *)cocos2d::CCDictionary::objectForKey(this_00,asStack_58);
      bVar11 = local_30 != (CCArray *)0x0;
      if (bVar11) {
        pCVar5 = (CCString *)cocos2d::CCArray::objectAtIndex(local_30,1);
        uVar4 = cocos2d::CCString::getCString(pCVar5);
        FUN_0079a3f4(auStack_44);
        FUN_007c6a60(auStack_50,uVar4,auStack_44);
        FUN_0079a3fc(auStack_44);
        pSVar6 = (SoldierView *)(**(code **)(*local_34 + 0x1d8))(local_34);
        FUN_007c64e8(auStack_4c,auStack_50);
        SoldierView::setPlayerName(pSVar6,auStack_4c);
        FUN_007c5914(auStack_4c);
        pCVar7 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,2);
        local_2c = cocos2d::CCInteger::getValue(pCVar7);
        local_28 = (CCArray *)cocos2d::CCArray::objectAtIndex(local_30,7);
        pAVar8 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
        local_24 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar8,local_28,local_2c);
        pAVar8 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
        local_20 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar8,local_28,local_2c);
        pAVar8 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
        local_1c = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar8,local_28,local_2c);
        pAVar8 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
        local_18 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar8,local_28,local_2c);
        pAVar8 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
        local_14 = AvatarRenderer::getBodyType(pAVar8,local_28,local_2c);
        pSVar6 = (SoldierView *)(**(code **)(*local_34 + 0x1d8))(local_34);
        SoldierView::setPlayerSkin(pSVar6,local_14,local_24,local_20,local_1c,local_18);
        pcVar9 = *(code **)(*local_34 + 0x1c8);
        pCVar7 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,4);
        uVar4 = cocos2d::CCInteger::getValue(pCVar7);
        (*pcVar9)(local_34,uVar4);
        pHVar10 = *(HUD **)(this + 0x10c);
        FUN_007c64e8(auStack_48,asStack_58);
        HUD::addPlayer(pHVar10,auStack_48);
        FUN_007c5914(auStack_48);
        pHVar10 = *(HUD **)(this + 0x10c);
        uVar4 = FUN_007c5300(auStack_50);
        pCVar5 = (CCString *)cocos2d::CCString::createWithFormat("%s JOINED THE GAME",uVar4);
        uVar4 = cocos2d::CCString::getCString(pCVar5);
        FUN_0079a3f4(auStack_48);
        FUN_007c6a60(auStack_44,uVar4,auStack_48);
        uVar1 = FUN_00409f40(0x19,0x19,0xe1);
        HUD::addMessage(pHVar10,auStack_44,uVar1,5);
        FUN_007c5914(auStack_44);
        FUN_0079a3fc(auStack_48);
        FUN_007c5914(auStack_50);
      }
      FUN_007c5914(asStack_58);
      if (!bVar11) {
        return;
      }
      local_40 = local_3c;
      if (local_3c == (CCDictElement *)0x0) {
        local_3c = (CCDictElement *)0x0;
      }
      else {
        local_3c = *(CCDictElement **)(local_3c + 0x110);
      }
    }
  }
  return;
}

// ---- Stage::onPlayerEntered  @ 0x40c668
/* Stage::onPlayerEntered(cocos2d::CCObject*) */

void Stage::onPlayerEntered(CCObject *param_1)

{
  CCObject *pCVar1;
  
  pCVar1 = (CCObject *)NetworkManager::sharedNetworkManager();
  NetworkManager::sendWeaponChange(pCVar1);
  return;
}

// ---- Stage::addRemotePlayer  @ 0x40c684
/* Stage::addRemotePlayer(std::string) */

undefined4 __thiscall Stage::addRemotePlayer(undefined4 param_1,undefined4 param_2)

{
  SoldierManager *pSVar1;
  int *piVar2;
  CCObject *pCVar3;
  code *pcVar4;
  undefined1 auStack_18 [4];
  undefined4 local_14;
  
  piVar2 = hostSoldier;
  pcVar4 = *(code **)(*hostSoldier + 0x24c);
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  (*pcVar4)(piVar2,auStack_18);
  FUN_007c5914(auStack_18);
  pSVar1 = soldierManager;
  FUN_007c64e8(auStack_18,param_2);
  local_14 = SoldierManager::addRemotePlayer(pSVar1,auStack_18);
  FUN_007c5914(auStack_18);
  pCVar3 = (CCObject *)NetworkManager::sharedNetworkManager();
  NetworkManager::sendWeaponChange(pCVar3);
  return local_14;
}

// ---- Stage::removeRemotePlayer  @ 0x40c728
/* Stage::removeRemotePlayer(cocos2d::CCObject*) */

void __thiscall Stage::removeRemotePlayer(Stage *this,CCObject *param_1)

{
  SoldierManager *pSVar1;
  undefined3 uVar2;
  undefined4 uVar3;
  NetworkManager *this_00;
  CCDictionary *this_01;
  CCString *pCVar4;
  WeaponManager *pWVar5;
  HUD *pHVar6;
  string asStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  CCArray *local_14;
  
  uVar3 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(asStack_2c,uVar3,auStack_18);
  FUN_0079a3fc(auStack_18);
  pSVar1 = soldierManager;
  FUN_007c64e8(auStack_28,asStack_2c);
  SoldierManager::removeRemotePlayer(pSVar1,auStack_28);
  FUN_007c5914(auStack_28);
  pWVar5 = *(WeaponManager **)(this + 0x110);
  FUN_007c64e8(auStack_24,asStack_2c);
  WeaponManager::removeAllWeaponsForPeer(pWVar5,auStack_24);
  FUN_007c5914(auStack_24);
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  this_01 = (CCDictionary *)NetworkManager::getPeerPlayers(this_00);
  local_14 = (CCArray *)cocos2d::CCDictionary::objectForKey(this_01,asStack_2c);
  if (local_14 != (CCArray *)0x0) {
    pCVar4 = (CCString *)cocos2d::CCArray::objectAtIndex(local_14,1);
    uVar3 = cocos2d::CCString::getCString(pCVar4);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_20,uVar3,auStack_18);
    FUN_0079a3fc(auStack_18);
    pHVar6 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_20);
    pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%s LEFT THE GAME",uVar3);
    uVar3 = cocos2d::CCString::getCString(pCVar4);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_1c,uVar3,auStack_18);
    uVar2 = FUN_00409f40(0xfa,0xfa,0);
    HUD::addMessage(pHVar6,auStack_1c,uVar2,5);
    FUN_007c5914(auStack_1c);
    FUN_0079a3fc(auStack_18);
    pHVar6 = *(HUD **)(this + 0x10c);
    FUN_007c64e8(auStack_18,asStack_2c);
    HUD::removePlayer(pHVar6,auStack_18);
    FUN_007c5914(auStack_18);
    FUN_007c5914(auStack_20);
  }
  FUN_007c5914(asStack_2c);
  return;
}

// ---- Stage::draw  @ 0x40c924
/* Stage::draw() */

void Stage::draw(void)

{
  cocos2d::CCNode::draw();
  if (DEBUG_MODE != '\0') {
    PhysicsManager::drawShapes();
  }
  return;
}

// ---- Stage::updateSight  @ 0x40c958
/* Stage::updateSight(float) */

void Stage::updateSight(float param_1)

{
  bool bVar1;
  char cVar2;
  int in_r0;
  int iVar3;
  undefined4 uVar4;
  SoldierView *this;
  int *piVar5;
  undefined4 uVar6;
  float fVar7;
  code *pcVar8;
  LaserSight *this_00;
  undefined4 uVar9;
  undefined8 uVar10;
  CCPoint aCStack_38 [8];
  undefined1 local_30 [16];
  CCPoint local_20 [16];
  
  iVar3 = (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  uVar4 = (**(code **)(**(int **)(iVar3 + 0x110) + 0x9c))(*(int **)(iVar3 + 0x110));
  this = (SoldierView *)(**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::setNormalArmRotation(this);
  piVar5 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if (piVar5 != (int *)0x0) {
    (**(code **)(*piVar5 + 800))(local_30,piVar5);
    pcVar8 = *(code **)(**(int **)(in_r0 + 0x148) + 0x98);
    uVar9 = *(undefined4 *)(in_r0 + 0x148);
    uVar6 = Joypad::getFireAngle(*(Joypad **)(*(int *)(in_r0 + 0x10c) + 0xf4));
    uVar10 = (*pcVar8)(uVar9,uVar6);
    pcVar8 = *(code **)(**(int **)(in_r0 + 0x148) + 0x4c);
    uVar6 = *(undefined4 *)(in_r0 + 0x148);
    cocos2d::CCPoint::CCPoint(local_20,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    uVar10 = (*pcVar8)(uVar6,local_20);
    pcVar8 = *(code **)(**(int **)(in_r0 + 0x148) + 0x7c);
    uVar6 = *(undefined4 *)(in_r0 + 0x148);
    cocos2d::CCPoint::CCPoint(local_20,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    (*pcVar8)(uVar6,local_20);
    pcVar8 = *(code **)(**(int **)(in_r0 + 0x148) + 0x30);
    uVar6 = *(undefined4 *)(in_r0 + 0x148);
    fVar7 = (float)(**(code **)(*hostSoldier + 0x2c8))(hostSoldier);
    (*pcVar8)(uVar6,1.5 / fVar7);
    pcVar8 = *(code **)(**(int **)(in_r0 + 0x148) + 0x38);
    uVar6 = *(undefined4 *)(in_r0 + 0x148);
    fVar7 = (float)(**(code **)(*hostSoldier + 0x2c8))(hostSoldier);
    (*pcVar8)(uVar6,0.5 / fVar7);
    uVar10 = (**(code **)(*piVar5 + 800))(local_20,piVar5);
    pcVar8 = *(code **)(**(int **)(in_r0 + 0x14c) + 0x4c);
    uVar6 = *(undefined4 *)(in_r0 + 0x14c);
    cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
    (*pcVar8)(uVar6,aCStack_38);
    this_00 = *(LaserSight **)(in_r0 + 0x14c);
    uVar10 = Joypad::getFireAngle(*(Joypad **)(*(int *)(in_r0 + 0x10c) + 0xf4));
    LaserSight::updateStep(this_00,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20));
  }
  iVar3 = (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  (**(code **)(**(int **)(iVar3 + 0x110) + 0x98))(*(int **)(iVar3 + 0x110),uVar4);
  pcVar8 = *(code **)(**(int **)(in_r0 + 0x148) + 0x90);
  uVar4 = *(undefined4 *)(in_r0 + 0x148);
  if ((piVar5 == (int *)0x0) ||
     (cVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier), cVar2 == '\x01')) {
    uVar6 = 0;
  }
  else {
    uVar6 = 1;
  }
  (*pcVar8)(uVar4,uVar6);
  if ((piVar5 == (int *)0x0) ||
     (iVar3 = (**(code **)(*hostSoldier + 0x264))(hostSoldier), iVar3 != 0)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    (**(code **)(**(int **)(in_r0 + 0x14c) + 0x90))(*(undefined4 *)(in_r0 + 0x14c),0);
  }
  return;
}

// ---- Stage::updateView  @ 0x40cc38
/* Stage::updateView() */

void __thiscall Stage::updateView(Stage *this)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  uint in_fpscr;
  undefined4 extraout_s0;
  undefined4 extraout_s0_00;
  float extraout_s0_01;
  undefined8 in_d0;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  double dVar5;
  float extraout_s1_01;
  CCPoint aCStack_60 [8];
  undefined1 auStack_58 [8];
  undefined1 auStack_50 [8];
  undefined1 auStack_48 [8];
  CCPoint aCStack_40 [8];
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_38,(float)in_d0,(float)((ulonglong)in_d0 >> 0x20));
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x128),(CCPoint *)&local_38);
  (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  piVar1 = (int *)SoldierManager::getHostController();
  iVar2 = (**(code **)(*piVar1 + 0x2b4))(piVar1);
  dVar5 = (double)CONCAT44(extraout_s1,extraout_s0);
  if (0x28 < iVar2) {
    piVar1 = (int *)SoldierManager::getHostController();
    uVar3 = (**(code **)(*piVar1 + 0x2b4))(piVar1);
    dVar5 = (double)CONCAT44(extraout_s1_00,extraout_s0_00);
    VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  }
  dVar5 = cos(dVar5);
  dVar5 = sin(dVar5);
  cocos2d::CCPoint::CCPoint(aCStack_60,SUB84(dVar5,0),(float)((ulonglong)dVar5 >> 0x20));
  FUN_00409fbc(auStack_58,aCStack_60,this + 0x13c);
  FUN_00409fdc(0x3ccccccd,aCStack_40,auStack_58);
  FUN_00409f9c(&local_38,this + 0x13c,aCStack_40);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x13c),(CCPoint *)&local_38);
  uVar3 = (**(code **)(*worldLayer + 0x50))(worldLayer);
  FUN_00409fbc(&local_38,this + 0x128,uVar3);
  cocos2d::CCPoint::operator=((CCPoint *)&centerPoint,(CCPoint *)&local_38);
  iVar2 = SoldierManager::getHostController();
  iVar2 = *(int *)(iVar2 + 0x138);
  local_38 = *(undefined4 *)(iVar2 + 0x28);
  uStack_34 = *(undefined4 *)(iVar2 + 0x2c);
  local_30 = *(undefined4 *)(iVar2 + 0x30);
  uStack_2c = *(undefined4 *)(iVar2 + 0x34);
  cocos2d::CCPoint::CCPoint(aCStack_40,extraout_s0_01,extraout_s1_01);
  FUN_00409fbc(auStack_50,aCStack_40,&centerPoint);
  piVar1 = worldLayer;
  pcVar4 = *(code **)(*worldLayer + 0x4c);
  uVar3 = (**(code **)(*worldLayer + 0x50))(worldLayer);
  FUN_00409fbc(aCStack_40,uVar3,auStack_50);
  (*pcVar4)(piVar1,aCStack_40);
  piVar1 = worldLayer;
  pcVar4 = *(code **)(*worldLayer + 0x4c);
  EffectsManager::getShakeOffset();
  uVar3 = (**(code **)(*worldLayer + 0x50))(worldLayer);
  FUN_00409f9c(aCStack_40,auStack_48,uVar3);
  (*pcVar4)(piVar1,aCStack_40);
  piVar1 = worldLayer;
  pcVar4 = *(code **)(*worldLayer + 0x4c);
  uVar3 = (**(code **)(*worldLayer + 0x50))(worldLayer);
  FUN_00409f9c(aCStack_40,this + 0x13c,uVar3);
  (*pcVar4)(piVar1,aCStack_40);
  piVar1 = scaleLayer;
  pcVar4 = *(code **)(*scaleLayer + 0x40);
  uVar3 = (**(code **)(*hostSoldier + 0x2c8))(hostSoldier);
  (*pcVar4)(piVar1,uVar3);
  return;
}

// ---- Stage::updateStep  @ 0x40cf78
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0040d1e0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Stage::updateStep(float) */

void Stage::updateStep(float param_1)

{
  MapManager *pMVar1;
  int *piVar2;
  int *in_r0;
  undefined4 uVar3;
  float fVar4;
  int iVar5;
  float *pfVar6;
  float in_r1;
  code *pcVar7;
  undefined4 uVar8;
  uint in_fpscr;
  float fVar9;
  float extraout_s0;
  float extraout_s1;
  double dVar10;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  
  in_r0[0x51] = (int)((float)in_r0[0x51] + in_r1);
  HUD::updateStep(param_1);
  fVar9 = (float)(**(code **)(*in_r0 + 0x204))(in_r0,in_r1);
  if (PAUSED != '\x01') {
    fVar9 = (float)PhysicsManager::updateStep((PhysicsManager *)in_r0[0x45],fVar9);
    EffectsManager::updateStep((EffectsManager *)in_r0[0x47],fVar9);
    uVar3 = (**(code **)(*hostSoldier + 0x25c))(hostSoldier);
    VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    (**(code **)(*hostSoldier + 0x2a0))(hostSoldier);
    uVar3 = (**(code **)(*hostSoldier + 0x28c))(hostSoldier);
    VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)HUD::setMeters(extraout_s0,extraout_s1);
    Joypad::updateSpecialInput(fVar9);
    piVar2 = hostSoldier;
    pcVar7 = *(code **)(*hostSoldier + 0x238);
    uVar3 = Joypad::getFireAngle(*(Joypad **)(in_r0[0x43] + 0xf4));
    (*pcVar7)(piVar2,uVar3);
    MapManager::updatePlayerModifiers(mapManager);
    *(undefined1 *)(hostSoldier + 0x47) = *(undefined1 *)(*(int *)(in_r0[0x43] + 0xf4) + 0x12f);
    piVar2 = hostSoldier;
    pcVar7 = *(code **)(*hostSoldier + 0x2f8);
    Joypad::getDirectionVector();
    Joypad::getOffset();
    Joypad::getXOffset(*(Joypad **)(in_r0[0x43] + 0xf4));
    (*pcVar7)(piVar2,in_r1,local_60,uStack_5c);
    (**(code **)(*in_r0 + 0x24c))(in_r0,in_r1);
    pcVar7 = *(code **)(**(int **)(*(int *)(in_r0[0x43] + 0xf4) + 0xf0) + 0x90);
    uVar8 = *(undefined4 *)(*(int *)(in_r0[0x43] + 0xf4) + 0xf0);
    uVar3 = (**(code **)(*hostSoldier + 0x1ec))(hostSoldier);
    (*pcVar7)(uVar8,uVar3);
    piVar2 = hostSoldier;
    pcVar7 = *(code **)(*hostSoldier + 0x230);
    fVar9 = (float)Joypad::getXOffset(*(Joypad **)(in_r0[0x43] + 0xf4));
    fVar4 = (float)Joypad::getYOffset(*(Joypad **)(in_r0[0x43] + 0xf4));
    FUN_00409ffc(SUB84((double)fVar9,0),extraout_s1,SUB84((double)fVar4,0),&local_40);
    (*pcVar7)(piVar2,uStack_34,local_40,uStack_3c);
    iVar5 = Joypad::fire(*(Joypad **)(in_r0[0x43] + 0xf4));
    if (iVar5 != 0) {
      (**(code **)(*hostSoldier + 0x240))(hostSoldier,in_r1);
    }
    pMVar1 = mapManager;
    pfVar6 = (float *)(**(code **)(*worldLayer + 0x50))(worldLayer);
    fVar9 = *pfVar6;
    iVar5 = (**(code **)(*worldLayer + 0x50))(worldLayer);
    FUN_00409ffc(SUB84((double)-fVar9,0),extraout_s1,SUB84((double)-*(float *)(iVar5 + 4),0),
                 &local_30);
    fVar9 = (float)MapManager::updateVisibleTiles(pMVar1,uStack_24,local_30,uStack_2c);
    fVar9 = (float)ProjectileManager::updateStep(fVar9);
    WeaponManager::updateStep((WeaponManager *)in_r0[0x44],fVar9);
    (**(code **)(*in_r0 + 600))(in_r0);
    fVar9 = (float)NetworkManager::sharedNetworkManager();
    fVar9 = (float)NetworkManager::updateNetworkObjects(fVar9);
    SoldierManager::updateStep(soldierManager,fVar9);
    (**(code **)(*hostSoldier + 0x1b0))(&local_70,hostSoldier);
    dVar10 = (double)cpvlength(local_70,uStack_6c,uStack_68,uStack_64);
    in_r0[0x5a] = (int)(float)(dVar10 * -0.00213 + 0.25);
  }
  return;
}

// ---- Stage::returnToLobby  @ 0x40d358
/* Stage::returnToLobby(cocos2d::CCObject*) */

void Stage::returnToLobby(CCObject *param_1)

{
  CCNotificationCenter *pCVar1;
  
  SoldierManager::removeRemotePlayers(soldierManager);
  if (param_1[0x151] == (CCObject)0x0) {
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar1,"EndedGame",(CCObject *)0x0);
  }
  else {
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar1,"CompleteGame",(CCObject *)0x0);
  }
  return;
}

// ---- Stage::onPauseGame  @ 0x40d3bc
/* Stage::onPauseGame(cocos2d::CCObject*) */

void Stage::onPauseGame(CCObject *param_1)

{
  PAUSED = 1;
  return;
}

// ---- Stage::onResumeGame  @ 0x40d3dc
/* Stage::onResumeGame(cocos2d::CCObject*) */

void Stage::onResumeGame(CCObject *param_1)

{
  PAUSED = 0;
  return;
}

// ---- Stage::onWeaponChange  @ 0x40d3fc
/* Stage::onWeaponChange(cocos2d::CCObject*) */

void __thiscall Stage::onWeaponChange(Stage *this,CCObject *param_1)

{
  bool bVar1;
  int *piVar2;
  WeaponFactory *pWVar3;
  undefined4 uVar4;
  int iVar5;
  
  piVar2 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if (piVar2 != (int *)0x0) {
    pWVar3 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    uVar4 = (**(code **)(*piVar2 + 0x27c))(piVar2);
    iVar5 = WeaponFactory::isLaserSight(pWVar3,uVar4);
    if (iVar5 != 0) {
      bVar1 = true;
      goto LAB_0040d454;
    }
  }
  bVar1 = false;
LAB_0040d454:
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x14c) + 0x90))(*(undefined4 *)(this + 0x14c),1);
  }
  else {
    (**(code **)(**(int **)(this + 0x14c) + 0x90))
              (*(undefined4 *)(this + 0x14c),0,*(undefined4 *)(this + 0x14c),
               *(code **)(**(int **)(this + 0x14c) + 0x90),param_1);
  }
  return;
}

// ---- Stage::touchBeganHandler  @ 0x40d498
/* Stage::touchBeganHandler(cocos2d::CCPoint, long) */

void __thiscall Stage::touchBeganHandler(Stage *this,CCPoint *param_2,undefined4 param_3)

{
  Joypad *pJVar1;
  CCPoint aCStack_10 [8];
  
  pJVar1 = *(Joypad **)(*(int *)(this + 0x10c) + 0xf4);
  cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
  Joypad::touchBeganHandler(pJVar1,aCStack_10,param_3);
  return;
}

// ---- Stage::touchMoveHandler  @ 0x40d4c8
/* Stage::touchMoveHandler(cocos2d::CCPoint, long) */

void __thiscall Stage::touchMoveHandler(Stage *this,CCPoint *param_2,undefined4 param_3)

{
  undefined4 uVar1;
  CCPoint aCStack_10 [8];
  
  uVar1 = *(undefined4 *)(*(int *)(this + 0x10c) + 0xf4);
  cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
  Joypad::touchMoveHandler(uVar1,aCStack_10,param_3);
  return;
}

// ---- Stage::touchEndHandler  @ 0x40d4f8
/* Stage::touchEndHandler(cocos2d::CCPoint, long) */

void __thiscall Stage::touchEndHandler(Stage *this,CCPoint *param_2,undefined4 param_3)

{
  Joypad *pJVar1;
  CCPoint aCStack_10 [8];
  
  pJVar1 = *(Joypad **)(*(int *)(this + 0x10c) + 0xf4);
  cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
  Joypad::touchEndHandler(pJVar1,aCStack_10,param_3);
  return;
}

// ---- Stage::cancelMovement  @ 0x40d528
/* Stage::cancelMovement() */

void Stage::cancelMovement(void)

{
  return;
}

// ---- Stage::cancelTouches  @ 0x40d530
/* Stage::cancelTouches() */

void __thiscall Stage::cancelTouches(Stage *this)

{
  Joypad::cancelTouches(*(Joypad **)(*(int *)(this + 0x10c) + 0xf4));
  return;
}

// ---- Stage::setAcceleration  @ 0x40d54c
/* Stage::setAcceleration(float, float, float) */

void __thiscall Stage::setAcceleration(Stage *this,float param_1,float param_2,float param_3)

{
  undefined4 in_r1;
  
  (**(code **)(*hostSoldier + 0x2cc))(hostSoldier,in_r1);
  return;
}

// ---- Stage::create  @ 0x40e48c
/* Stage::create() */

Stage * Stage::create(void)

{
  bool bVar1;
  Stage *this;
  int iVar2;
  
  this = operator_new(0x16c);
  Stage(this);
  if ((this == (Stage *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (Stage *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (Stage *)0x0;
  }
  return this;
}
