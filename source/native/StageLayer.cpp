// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 25 functions

// ---- StageLayer::create  @ 0x40e4fc
/* StageLayer::create() */

StageLayer * StageLayer::create(void)

{
  bool bVar1;
  StageLayer *this;
  int iVar2;
  
  this = operator_new(0x11c);
  StageLayer(this);
  if ((this == (StageLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (StageLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (StageLayer *)0x0;
  }
  return this;
}

// ---- StageLayer::StageLayer  @ 0x40e72c
/* StageLayer::StageLayer() */

StageLayer * __thiscall StageLayer::StageLayer(StageLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091c2f8;
  *(undefined ***)(this + 0xe4) = &PTR__StageLayer_1_0091c500;
  *(undefined **)(this + 0xe8) = &DAT_0091c530;
  *(undefined **)(this + 0xec) = &DAT_0091c53c;
  cocos2d::CCSize::CCSize((CCSize *)(this + 0x108));
  return this;
}

// ---- StageLayer::scene  @ 0x40e79c
/* StageLayer::scene() */

int * StageLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- StageLayer::init  @ 0x40e7cc
/* StageLayer::init() */

undefined4 __thiscall StageLayer::init(StageLayer *this)

{
  char cVar1;
  int iVar2;
  NetworkManager *this_00;
  CCNotificationCenter *pCVar3;
  undefined4 uVar4;
  
  cVar1 = cocos2d::CCLayer::init((CCLayer *)this);
  if (cVar1 == '\x01') {
    (**(code **)(*(int *)this + 0x1d0))(this,1);
    (**(code **)(*(int *)this + 0x1e8))(this,1);
    switch(gameType) {
    case 0:
      uVar4 = TrainingStage::create();
      *(undefined4 *)(this + 0x114) = uVar4;
      Sound::loadMapSounds(sndEng,1);
      break;
    case 1:
      uVar4 = SurvivalStage::create();
      *(undefined4 *)(this + 0x114) = uVar4;
      Sound::loadMapSounds(sndEng,2);
      break;
    case 2:
    case 5:
      uVar4 = CoOpStage::create();
      *(undefined4 *)(this + 0x114) = uVar4;
      Sound::loadMapSounds(sndEng,2);
      break;
    case 3:
      uVar4 = MultiplayerStage::create();
      *(undefined4 *)(this + 0x114) = uVar4;
      Sound::loadMapSounds(sndEng,3);
      break;
    case 4:
      uVar4 = MultiplayerStage::create();
      *(undefined4 *)(this + 0x114) = uVar4;
      Sound::loadMapSounds(sndEng,3);
      iVar2 = ScoreKeeper::sharedScoreKeeper();
      *(undefined1 *)(iVar2 + 0x28) = 0;
      break;
    default:
      uVar4 = Stage::create();
      *(undefined4 *)(this + 0x114) = uVar4;
      Sound::loadMapSounds(sndEng,2);
    }
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x114),1);
    (**(code **)(*(int *)this + 0x90))(this,0);
    cocos2d::CCSize::operator=((CCSize *)(this + 0x108),(CCSize *)&screenSize);
    this[0x118] = (StageLayer)0x0;
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setInGame(this_00,true);
    pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x40ec51,(char *)0x0,
               (CCObject *)"QuitGame");
    pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x40eea5,(char *)0x0,
               (CCObject *)"CompleteGame");
    pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x40edb9,(char *)0x0,
               (CCObject *)"EndedGame");
    ApplicationInterface::removeAdBanner();
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- StageLayer::~StageLayer  @ 0x40ea04
/* WARNING: Removing unreachable block (ram,0x0040ea74) */
/* StageLayer::~StageLayer() */

StageLayer * __thiscall StageLayer::~StageLayer(StageLayer *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091c2f8;
  *(undefined ***)(this + 0xe4) = &PTR__StageLayer_1_0091c500;
  *(undefined **)(this + 0xe8) = &DAT_0091c530;
  *(undefined **)(this + 0xec) = &DAT_0091c53c;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- StageLayer::~StageLayer  @ 0x40ea8c
/* non-virtual thunk to StageLayer::~StageLayer() */

void __thiscall StageLayer::~StageLayer(StageLayer *this)

{
  ~StageLayer(this + -0xe4);
  return;
}

// ---- StageLayer::~StageLayer  @ 0x40ea94
/* StageLayer::~StageLayer() */

StageLayer * __thiscall StageLayer::~StageLayer(StageLayer *this)

{
  ~StageLayer(this);
  operator_delete(this);
  return this;
}

// ---- StageLayer::~StageLayer  @ 0x40eab0
/* non-virtual thunk to StageLayer::~StageLayer() */

void __thiscall StageLayer::~StageLayer(StageLayer *this)

{
  ~StageLayer(this + -0xe4);
  return;
}

// ---- StageLayer::onReady  @ 0x40eab8
/* StageLayer::onReady(float) */

void StageLayer::onReady(float param_1)

{
  _func_void_float *in_r0;
  
  cocos2d::CCNode::schedule(in_r0);
  return;
}

// ---- StageLayer::onEnter  @ 0x40eaec
/* StageLayer::onEnter() */

void __thiscall StageLayer::onEnter(StageLayer *this)

{
  char cVar1;
  LeaderBoardBridge *this_00;
  AchievementBridge *this_01;
  float fVar2;
  undefined1 auStack_1c [4];
  code *local_18;
  undefined4 local_14;
  
  *(undefined4 *)(this + 0x110) = 0;
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(&local_18,"com.chadtowns.da2.propack",auStack_1c);
  cVar1 = InAppPurchaseBridge::isProductPurchased(&local_18);
  FUN_007c5914(&local_18);
  FUN_0079a3fc(auStack_1c);
  if (cVar1 != '\x01') {
    ApplicationInterface::prepareInterstitial();
  }
  this_00 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
  LeaderBoardBridge::setTryLoadScores(this_00,false);
  this_01 = (AchievementBridge *)AchievementBridge::sharedAchievementBridge();
  AchievementBridge::setTryLoadAchievements(this_01,false);
  fVar2 = (float)cocos2d::CCLayer::onEnter((CCLayer *)this);
  local_18 = (code *)0x40eab9;
  local_14 = 0;
  cocos2d::CCNode::scheduleOnce((_func_void_float *)this,fVar2);
  Sound::stopMusic();
  return;
}

// ---- StageLayer::onExit  @ 0x40ebbc
/* StageLayer::onExit() */

void __thiscall StageLayer::onExit(StageLayer *this)

{
  char cVar1;
  LeaderBoardBridge *this_00;
  AchievementBridge *this_01;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  this_00 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
  LeaderBoardBridge::setTryLoadScores(this_00,true);
  this_01 = (AchievementBridge *)AchievementBridge::sharedAchievementBridge();
  AchievementBridge::setTryLoadAchievements(this_01,true);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  if (cVar1 != '\x01') {
    ApplicationInterface::showInterstitial();
  }
  return;
}

// ---- StageLayer::onQuitGame  @ 0x40ec50
/* StageLayer::onQuitGame(cocos2d::CCObject*) */

void StageLayer::onQuitGame(CCObject *param_1)

{
  bool bVar1;
  CCTransitionFade *pCVar2;
  CCDirector *pCVar3;
  NetworkManager *pNVar4;
  int iVar5;
  ScoreKeeper *this;
  CCScene *pCVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  
  if (param_1[0x118] == (CCObject)0x0) {
    param_1[0x118] = (CCObject)0x1;
    PAUSED = 0;
    pCVar3 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::resume(pCVar3);
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar5 = NetworkManager::isInGame(pNVar4);
    if ((iVar5 == 0) || (gameType != 4)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      this = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      ScoreKeeper::applyPenalty(this);
    }
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setInGame(pNVar4,false);
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::endMatch(pNVar4);
    if (gameType == 3) {
      pCVar3 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar2 = DAT_0094369c;
      pCVar6 = (CCScene *)GameTypeLayer::scene();
      pCVar6 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar2,extraout_s0,pCVar6);
      cocos2d::CCDirector::replaceScene(pCVar3,pCVar6);
    }
    else if (gameType == 4) {
      postGameStatus = 1;
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      iVar5 = NetworkManager::isUsingHostedServer(pNVar4);
      if (iVar5 == 0) {
        pCVar3 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
        pCVar2 = DAT_0094369c;
        pCVar6 = (CCScene *)GameTypeLayer::scene();
        pCVar6 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar2,extraout_s0_01,pCVar6);
        cocos2d::CCDirector::replaceScene(pCVar3,pCVar6);
      }
      else {
        pCVar3 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
        pCVar2 = DAT_0094369c;
        pCVar6 = (CCScene *)MenuLayer::scene();
        pCVar6 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar2,extraout_s0_00,pCVar6);
        cocos2d::CCDirector::replaceScene(pCVar3,pCVar6);
      }
    }
    else {
      pCVar3 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar2 = DAT_0094369c;
      pCVar6 = (CCScene *)MenuLayer::scene();
      pCVar6 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar2,extraout_s0_02,pCVar6);
      cocos2d::CCDirector::replaceScene(pCVar3,pCVar6);
    }
  }
  return;
}

// ---- StageLayer::onEndedGame  @ 0x40edb8
/* StageLayer::onEndedGame(cocos2d::CCObject*) */

void StageLayer::onEndedGame(CCObject *param_1)

{
  CCTransitionFade *pCVar1;
  CCDirector *pCVar2;
  NetworkManager *this;
  CCScene *pCVar3;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  
  if (param_1[0x118] == (CCObject)0x0) {
    param_1[0x118] = (CCObject)0x1;
    PAUSED = 0;
    pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::resume(pCVar2);
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setInGame(this,false);
    if (gameType == 3) {
      pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar1 = DAT_0094369c;
      pCVar3 = (CCScene *)LobbyLayer::scene();
      pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar1,extraout_s0,pCVar3);
      cocos2d::CCDirector::replaceScene(pCVar2,pCVar3);
    }
    else if (gameType == 4) {
      postGameStatus = 2;
      pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar1 = DAT_0094369c;
      pCVar3 = (CCScene *)LobbyLayer::scene();
      pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar1,extraout_s0_00,pCVar3);
      cocos2d::CCDirector::replaceScene(pCVar2,pCVar3);
    }
    else {
      pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar1 = DAT_0094369c;
      pCVar3 = (CCScene *)MenuLayer::scene();
      pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar1,extraout_s0_01,pCVar3);
      cocos2d::CCDirector::replaceScene(pCVar2,pCVar3);
    }
  }
  return;
}

// ---- StageLayer::onCompleteGame  @ 0x40eea4
/* StageLayer::onCompleteGame(cocos2d::CCObject*) */

void StageLayer::onCompleteGame(CCObject *param_1)

{
  CCTransitionFade *pCVar1;
  CCDirector *pCVar2;
  NetworkManager *this;
  CCScene *pCVar3;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  
  if (param_1[0x118] == (CCObject)0x0) {
    param_1[0x118] = (CCObject)0x1;
    PAUSED = 0;
    pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::resume(pCVar2);
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setInGame(this,false);
    switch(gameType) {
    case 2:
    case 3:
    case 5:
      pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar1 = DAT_0094369c;
      pCVar3 = (CCScene *)LobbyLayer::scene();
      pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar1,extraout_s0,pCVar3);
      cocos2d::CCDirector::replaceScene(pCVar2,pCVar3);
      break;
    case 4:
      postGameStatus = 3;
      pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar1 = DAT_0094369c;
      pCVar3 = (CCScene *)LobbyLayer::scene();
      pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar1,extraout_s0_00,pCVar3);
      cocos2d::CCDirector::replaceScene(pCVar2,pCVar3);
      break;
    default:
      pCVar2 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar1 = DAT_0094369c;
      pCVar3 = (CCScene *)MenuLayer::scene();
      pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(pCVar1,extraout_s0_01,pCVar3);
      cocos2d::CCDirector::replaceScene(pCVar2,pCVar3);
    }
  }
  return;
}

// ---- StageLayer::updateStep  @ 0x40efa8
/* StageLayer::updateStep(float) */

void __thiscall StageLayer::updateStep(StageLayer *this,float param_1)

{
  float in_r1;
  float local_10;
  
  if (INTERUPTED != '\0') {
    (**(code **)(**(int **)(this + 0x114) + 0x218))(*(undefined4 *)(this + 0x114));
    param_1 = (float)(**(code **)(**(int **)(this + 0x114) + 0x21c))(*(undefined4 *)(this + 0x114));
    INTERUPTED = '\0';
  }
  local_10 = in_r1;
  if (0.25 < in_r1) {
    local_10 = 0.25;
  }
  if (1.0 < *(float *)(this + 0x110)) {
    (**(code **)(*(int *)this + 0x90))(param_1,this,1);
  }
  *(float *)(this + 0x110) = *(float *)(this + 0x110) + local_10;
  (**(code **)(**(int **)(this + 0x114) + 0x208))(*(undefined4 *)(this + 0x114),local_10);
  return;
}

// ---- StageLayer::didAccelerate  @ 0x40f06c
/* StageLayer::didAccelerate(cocos2d::CCAcceleration*) */

void __thiscall StageLayer::didAccelerate(StageLayer *this,CCAcceleration *param_1)

{
  (**(code **)(**(int **)(this + 0x114) + 0x220))
            (*(undefined4 *)(this + 0x114),(float)*(double *)param_1,(float)*(double *)(param_1 + 8)
             ,(float)*(double *)(param_1 + 0x10));
  return;
}

// ---- StageLayer::didAccelerate  @ 0x40f0c0
/* non-virtual thunk to StageLayer::didAccelerate(cocos2d::CCAcceleration*) */

void __thiscall StageLayer::didAccelerate(StageLayer *this,CCAcceleration *param_1)

{
  didAccelerate(this + -0xe8,param_1);
  return;
}

// ---- StageLayer::ccTouchesCancelled  @ 0x40f0c8
/* StageLayer::ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) */

void StageLayer::ccTouchesCancelled(CCSet *param_1,CCEvent *param_2)

{
  (**(code **)(**(int **)(param_1 + 0x114) + 0x218))(*(undefined4 *)(param_1 + 0x114));
  return;
}

// ---- StageLayer::ccTouchesCancelled  @ 0x40f0f0
/* non-virtual thunk to StageLayer::ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) */

void __thiscall StageLayer::ccTouchesCancelled(StageLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesCancelled((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- StageLayer::ccTouchesBegan  @ 0x40f0f8
/* StageLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) */

void StageLayer::ccTouchesBegan(CCSet *param_1,CCEvent *param_2)

{
  int *piVar1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined4 local_2c;
  int local_28;
  int local_24;
  CCPoint aCStack_20 [8];
  undefined4 local_18 [3];
  
  std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator
            ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c);
  local_2c = cocos2d::CCSet::begin((CCSet *)param_2);
  while( true ) {
    local_18[0] = cocos2d::CCSet::end((CCSet *)param_2);
    iVar2 = std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=
                      ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c,
                       (_Rb_tree_const_iterator *)local_18);
    if (iVar2 == 0) {
      return;
    }
    piVar1 = (int *)std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*
                              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c);
    local_28 = *piVar1;
    if (local_28 == 0) break;
    cocos2d::CCTouch::getLocationInView();
    cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::convertToGL((CCPoint *)local_18);
    cocos2d::CCPoint::operator=(aCStack_20,(CCPoint *)local_18);
    local_24 = local_28;
    pcVar3 = *(code **)(**(int **)(param_1 + 0x114) + 0x20c);
    uVar4 = *(undefined4 *)(param_1 + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_18,aCStack_20);
    (*pcVar3)(uVar4,local_18,local_24);
    std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++
              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c,0);
  }
  return;
}

// ---- StageLayer::ccTouchesBegan  @ 0x40f1ac
/* non-virtual thunk to StageLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) */

void __thiscall StageLayer::ccTouchesBegan(StageLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesBegan((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- StageLayer::ccTouchesMoved  @ 0x40f1b4
/* StageLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) */

void StageLayer::ccTouchesMoved(CCSet *param_1,CCEvent *param_2)

{
  int *piVar1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined4 local_2c;
  int local_28;
  int local_24;
  CCPoint aCStack_20 [8];
  undefined4 local_18 [3];
  
  std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator
            ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c);
  local_2c = cocos2d::CCSet::begin((CCSet *)param_2);
  while( true ) {
    local_18[0] = cocos2d::CCSet::end((CCSet *)param_2);
    iVar2 = std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=
                      ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c,
                       (_Rb_tree_const_iterator *)local_18);
    if (iVar2 == 0) {
      return;
    }
    piVar1 = (int *)std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*
                              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c);
    local_28 = *piVar1;
    if (local_28 == 0) break;
    cocos2d::CCTouch::getLocationInView();
    cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::convertToGL((CCPoint *)local_18);
    cocos2d::CCPoint::operator=(aCStack_20,(CCPoint *)local_18);
    local_24 = local_28;
    pcVar3 = *(code **)(**(int **)(param_1 + 0x114) + 0x210);
    uVar4 = *(undefined4 *)(param_1 + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_18,aCStack_20);
    (*pcVar3)(uVar4,local_18,local_24);
    std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++
              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c,0);
  }
  return;
}

// ---- StageLayer::ccTouchesMoved  @ 0x40f268
/* non-virtual thunk to StageLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) */

void __thiscall StageLayer::ccTouchesMoved(StageLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesMoved((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- StageLayer::ccTouchesEnded  @ 0x40f270
/* StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) */

void StageLayer::ccTouchesEnded(CCSet *param_1,CCEvent *param_2)

{
  int *piVar1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined4 local_2c;
  int local_28;
  int local_24;
  CCPoint aCStack_20 [8];
  undefined4 local_18 [3];
  
  std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator
            ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c);
  local_2c = cocos2d::CCSet::begin((CCSet *)param_2);
  while( true ) {
    local_18[0] = cocos2d::CCSet::end((CCSet *)param_2);
    iVar2 = std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=
                      ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c,
                       (_Rb_tree_const_iterator *)local_18);
    if (iVar2 == 0) {
      return;
    }
    piVar1 = (int *)std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*
                              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c);
    local_28 = *piVar1;
    if (local_28 == 0) break;
    cocos2d::CCTouch::getLocationInView();
    cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::convertToGL((CCPoint *)local_18);
    cocos2d::CCPoint::operator=(aCStack_20,(CCPoint *)local_18);
    local_24 = local_28;
    pcVar3 = *(code **)(**(int **)(param_1 + 0x114) + 0x214);
    uVar4 = *(undefined4 *)(param_1 + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_18,aCStack_20);
    (*pcVar3)(uVar4,local_18,local_24);
    std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++
              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_2c,0);
  }
  return;
}

// ---- StageLayer::ccTouchesEnded  @ 0x40f324
/* non-virtual thunk to StageLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) */

void __thiscall StageLayer::ccTouchesEnded(StageLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesEnded((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}
