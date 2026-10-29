// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- LobbyLayer::create  @ 0x360dc4
/* LobbyLayer::create() */

LobbyLayer * LobbyLayer::create(void)

{
  bool bVar1;
  LobbyLayer *this;
  int iVar2;
  
  this = operator_new(0x110);
  LobbyLayer(this);
  if ((this == (LobbyLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (LobbyLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (LobbyLayer *)0x0;
  }
  return this;
}

// ---- LobbyLayer::LobbyLayer  @ 0x360fa8
/* LobbyLayer::LobbyLayer() */

LobbyLayer * __thiscall LobbyLayer::LobbyLayer(LobbyLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  LobbyDelegate::LobbyDelegate((LobbyDelegate *)(this + 0x108));
  *(undefined ***)this = &PTR_copyWithZone_1_00913600;
  *(undefined ***)(this + 0xe4) = &PTR__LobbyLayer_1_00913814;
  *(undefined **)(this + 0xe8) = &DAT_00913844;
  *(undefined **)(this + 0xec) = &DAT_00913850;
  *(undefined **)(this + 0x108) = &DAT_00913860;
  return this;
}

// ---- LobbyLayer::init  @ 0x361018
/* LobbyLayer::init() */

undefined4 __thiscall LobbyLayer::init(LobbyLayer *this)

{
  CCUserDefault *this_00;
  CCObject *pCVar1;
  NetworkManager *this_01;
  undefined4 uVar2;
  code *pcVar3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [2];
  char local_22;
  char local_21;
  string asStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  local_22 = cocos2d::CCLayer::init((CCLayer *)this);
  if (local_22 == '\x01') {
    *(undefined4 *)(this + 0x10c) = 0;
    this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    local_14 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"QuitCount",0);
    if ((local_14 < 1) || (gameType != 4)) {
      this_01 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      local_21 = NetworkManager::isUsingHostedServer(this_01);
      switch(gameType) {
      case 2:
        uVar2 = PlayerLobbyOnline::create();
        *(undefined4 *)(this + 0x10c) = uVar2;
        break;
      case 3:
        uVar2 = PlayerLobbyLocal::create();
        *(undefined4 *)(this + 0x10c) = uVar2;
        if (s_bLocalHost != '\0') {
          pcVar3 = *(code **)(**(int **)(this + 0x10c) + 0x1c8);
          uVar2 = *(undefined4 *)(this + 0x10c);
          FUN_0079a3f4(auStack_1c);
          FUN_007c6a60(auStack_18,"START",auStack_1c);
          (*pcVar3)(uVar2,auStack_18);
          FUN_007c5914(auStack_18);
          FUN_0079a3fc(auStack_1c);
        }
        break;
      case 4:
        if (local_21 == '\0') {
          uVar2 = PlayerLobbyOnline::create();
          *(undefined4 *)(this + 0x10c) = uVar2;
        }
        else {
          uVar2 = PlayerLobbyOnlineHosted::create();
          *(undefined4 *)(this + 0x10c) = uVar2;
        }
        break;
      case 5:
        uVar2 = PlayerLobbyLocal::create();
        *(undefined4 *)(this + 0x10c) = uVar2;
        if (s_bLocalHost != '\0') {
          pcVar3 = *(code **)(**(int **)(this + 0x10c) + 0x1c8);
          uVar2 = *(undefined4 *)(this + 0x10c);
          FUN_0079a3f4(auStack_1c);
          FUN_007c6a60(auStack_18,"START",auStack_1c);
          (*pcVar3)(uVar2,auStack_18);
          FUN_007c5914(auStack_18);
          FUN_0079a3fc(auStack_1c);
        }
      }
      cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
      (**(code **)(**(int **)(this + 0x10c) + 0x234))(*(undefined4 *)(this + 0x10c),this + 0x108);
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
      uVar2 = 1;
    }
    else {
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(auStack_1c,"Quiting Penalty",auStack_28);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_18,
                   "You must view a Pop-up Ad to continue. Points are no longer lost for quiting a match early"
                   ,auStack_24);
      FUN_0079a3f4(auStack_2c);
      FUN_007c6a60(asStack_20,&DAT_007db980,auStack_2c);
      pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
      uVar2 = cocos2d::CCArray::create(pCVar1,0);
      AMessageBox::showAlert(0x3613d9,auStack_1c,auStack_18,uVar2,0,this);
      FUN_007c5914(asStack_20);
      FUN_0079a3fc(auStack_2c);
      FUN_007c5914(auStack_18);
      FUN_0079a3fc(auStack_24);
      FUN_007c5914(auStack_1c);
      FUN_0079a3fc(auStack_28);
      uVar2 = 1;
    }
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- LobbyLayer::~LobbyLayer  @ 0x361324
/* WARNING: Removing unreachable block (ram,0x00361394) */
/* LobbyLayer::~LobbyLayer() */

LobbyLayer * __thiscall LobbyLayer::~LobbyLayer(LobbyLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00913600;
  *(undefined ***)(this + 0xe4) = &PTR__LobbyLayer_1_00913814;
  *(undefined **)(this + 0xe8) = &DAT_00913844;
  *(undefined **)(this + 0xec) = &DAT_00913850;
  *(undefined **)(this + 0x108) = &DAT_00913860;
  if (*(int *)(this + 0x10c) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  }
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- LobbyLayer::~LobbyLayer  @ 0x3613ac
/* non-virtual thunk to LobbyLayer::~LobbyLayer() */

void __thiscall LobbyLayer::~LobbyLayer(LobbyLayer *this)

{
  ~LobbyLayer(this + -0xe4);
  return;
}

// ---- LobbyLayer::~LobbyLayer  @ 0x3613b4
/* LobbyLayer::~LobbyLayer() */

LobbyLayer * __thiscall LobbyLayer::~LobbyLayer(LobbyLayer *this)

{
  ~LobbyLayer(this);
  operator_delete(this);
  return this;
}

// ---- LobbyLayer::~LobbyLayer  @ 0x3613d0
/* non-virtual thunk to LobbyLayer::~LobbyLayer() */

void __thiscall LobbyLayer::~LobbyLayer(LobbyLayer *this)

{
  ~LobbyLayer(this + -0xe4);
  return;
}

// ---- LobbyLayer::messageBoxHandler  @ 0x3613d8
/* LobbyLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void LobbyLayer::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  goBack();
  ApplicationInterface::showInterstitial();
  return;
}

// ---- LobbyLayer::goBack  @ 0x3613f8
/* LobbyLayer::goBack() */

void LobbyLayer::goBack(void)

{
  CCDirector *this;
  CCScene *pCVar1;
  
  this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  pCVar1 = (CCScene *)MenuLayer::scene();
  cocos2d::CCDirector::replaceScene(this,pCVar1);
  return;
}

// ---- LobbyLayer::onEnter  @ 0x361418
/* LobbyLayer::onEnter() */

void __thiscall LobbyLayer::onEnter(LobbyLayer *this)

{
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  if (*(int *)(this + 0x10c) != 0) {
    (**(code **)(**(int **)(this + 0x10c) + 0x1a0))(*(undefined4 *)(this + 0x10c));
  }
  return;
}

// ---- LobbyLayer::onExit  @ 0x361450
/* LobbyLayer::onExit() */

void __thiscall LobbyLayer::onExit(LobbyLayer *this)

{
  if (*(int *)(this + 0x10c) != 0) {
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c));
  }
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- LobbyLayer::onStartGame  @ 0x361488
/* LobbyLayer::onStartGame() */

void __thiscall LobbyLayer::onStartGame(LobbyLayer *this)

{
  CCDirector *this_00;
  CCScene *pCVar1;
  float fVar2;
  
  (**(code **)(**(int **)(this + 0x10c) + 0x234))(*(undefined4 *)(this + 0x10c),0);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  pCVar1 = DAT_009433a0;
  fVar2 = (float)StageLayer::scene();
  pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
  cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  return;
}

// ---- LobbyLayer::onStartGame  @ 0x3614d4
/* non-virtual thunk to LobbyLayer::onStartGame() */

void __thiscall LobbyLayer::onStartGame(LobbyLayer *this)

{
  onStartGame(this + -0x108);
  return;
}

// ---- LobbyLayer::onExitGame  @ 0x3614dc
/* LobbyLayer::onExitGame() */

void __thiscall LobbyLayer::onExitGame(LobbyLayer *this)

{
  CCDirector *this_00;
  CCScene *pCVar1;
  float fVar2;
  
  (**(code **)(**(int **)(this + 0x10c) + 0x234))(*(undefined4 *)(this + 0x10c),0);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  pCVar1 = DAT_009433a0;
  fVar2 = (float)MenuLayer::scene();
  pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
  cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  return;
}

// ---- LobbyLayer::onExitGame  @ 0x361528
/* non-virtual thunk to LobbyLayer::onExitGame() */

void __thiscall LobbyLayer::onExitGame(LobbyLayer *this)

{
  onExitGame(this + -0x108);
  return;
}

// ---- LobbyLayer::onSwitchToPeer2Peer  @ 0x361530
/* LobbyLayer::onSwitchToPeer2Peer() */

void __thiscall LobbyLayer::onSwitchToPeer2Peer(LobbyLayer *this)

{
  NetworkManager *pNVar1;
  CCDirector *this_00;
  CCScene *pCVar2;
  float fVar3;
  
  (**(code **)(**(int **)(this + 0x10c) + 0x234))(*(undefined4 *)(this + 0x10c),0);
  s_bSinglePlayer = 0;
  pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::setMaxPlayers(pNVar1,4);
  gameType = 4;
  mapType = 3;
  pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::setUseHostedServer(pNVar1,false);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  pCVar2 = DAT_009433a0;
  fVar3 = (float)scene();
  pCVar2 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar3,pCVar2);
  cocos2d::CCDirector::replaceScene(this_00,pCVar2);
  return;
}

// ---- LobbyLayer::onSwitchToPeer2Peer  @ 0x3615c4
/* non-virtual thunk to LobbyLayer::onSwitchToPeer2Peer() */

void __thiscall LobbyLayer::onSwitchToPeer2Peer(LobbyLayer *this)

{
  onSwitchToPeer2Peer(this + -0x108);
  return;
}

// ---- LobbyLayer::scene  @ 0x3615cc
/* LobbyLayer::scene() */

int * LobbyLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}
