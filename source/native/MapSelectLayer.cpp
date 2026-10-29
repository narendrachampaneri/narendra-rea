// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 17 functions

// ---- MapSelectLayer::create  @ 0x376694
/* MapSelectLayer::create() */

MapSelectLayer * MapSelectLayer::create(void)

{
  bool bVar1;
  MapSelectLayer *this;
  int iVar2;
  
  this = operator_new(0x13c);
  MapSelectLayer(this);
  if ((this == (MapSelectLayer *)0x0) ||
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
    if (this != (MapSelectLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MapSelectLayer *)0x0;
  }
  return this;
}

// ---- MapSelectLayer::MapSelectLayer  @ 0x376704
/* MapSelectLayer::MapSelectLayer() */

MapSelectLayer * __thiscall MapSelectLayer::MapSelectLayer(MapSelectLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00914ec8;
  *(undefined ***)(this + 0xe4) = &PTR__MapSelectLayer_1_009150d0;
  *(undefined **)(this + 0xe8) = &DAT_00915100;
  *(undefined **)(this + 0xec) = &DAT_0091510c;
  return this;
}

// ---- MapSelectLayer::scene  @ 0x37675c
/* MapSelectLayer::scene() */

int * MapSelectLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- MapSelectLayer::init  @ 0x376790
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00376c24 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapSelectLayer::init() */

bool __thiscall MapSelectLayer::init(MapSelectLayer *this)

{
  undefined4 uVar1;
  char *pcVar2;
  undefined4 uVar3;
  code *pcVar4;
  bool bVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s0;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  float extraout_s1_06;
  float extraout_s1_07;
  float extraout_s1_08;
  float extraout_s1_09;
  undefined1 auStack_c8 [3];
  char local_c5;
  undefined1 auStack_c4 [4];
  CCNode *local_c0;
  CCNode *local_bc;
  CCNode *local_b8;
  CCNode *local_b4;
  CCNode *local_b0;
  CCNode *local_ac;
  CCNode *local_a8;
  CCNode *local_a4;
  CCMenuItem *local_a0;
  undefined4 local_9c;
  CCMenuItem *local_98;
  CCMenuItem *local_94;
  float local_90;
  float local_8c;
  undefined4 local_88;
  CCMenuItem *local_84;
  CCSize local_80 [4];
  float local_7c;
  float local_78 [2];
  CCPoint aCStack_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  code *local_58;
  undefined4 local_54;
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  code *local_40;
  undefined4 local_3c;
  undefined1 local_38 [16];
  CCPoint aCStack_28 [16];
  
  local_c5 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_c5 == '\x01';
  if (bVar5) {
    s_bLocalHost = 0;
    this[0x108] = (MapSelectLayer)0x0;
    *(undefined4 *)(this + 300) = 0xc;
    *(undefined4 *)(this + 0x128) = 0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_80,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_78,fVar6,extraout_s1);
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_bc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_b8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_b4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_b0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_ac = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_a8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_a4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_58 = (code *)0x377239;
    local_54 = 0;
    local_a0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c0,local_b4,(CCObject *)this,(_func_void_CCObject_ptr *)0x377239);
    uVar1 = cocos2d::CCMenu::create(local_a0,0);
    *(undefined4 *)(this + 0x114) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_00);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    local_9c = 0x42d80000;
    local_50 = (code *)0x3773b1;
    local_4c = 0;
    local_98 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_bc,local_b0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3773b1);
    uVar1 = cocos2d::CCMenu::create(local_98,0);
    *(undefined4 *)(this + 0x11c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_01);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    local_48 = (code *)0x37741d;
    local_44 = 0;
    local_94 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_b8,local_ac,(CCObject *)this,(_func_void_CCObject_ptr *)0x37741d);
    uVar1 = cocos2d::CCMenu::create(local_94,0);
    *(undefined4 *)(this + 0x120) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_02);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    *(undefined4 *)(this + 0x124) = uVar1;
    pcVar4 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint(aCStack_28,extraout_s0,extraout_s1_03);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950824);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    UpdateCurrentMapLabel(this);
    local_90 = -8.0;
    local_8c = 24.0;
    local_88 = 0x3f0ccccd;
    local_40 = (code *)0x3774f1;
    local_3c = 0;
    local_84 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_a8,local_a4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3774f1);
    uVar1 = cocos2d::CCMenu::create(local_84,0);
    *(undefined4 *)(this + 0x134) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar4 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x134);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_04);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950824);
    uVar1 = cocos2d::CCLabelAtlas::create("SELECT MAP",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x10c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    pcVar4 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x10c);
    FUN_00375914(SUB84((double)local_78[0],0),extraout_s1_04,SUB84((double)(local_7c - 80.0),0),
                 local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x1fc))(*(undefined4 *)(this + 0x10c));
    FUN_0079a3f4(aCStack_70);
    FUN_007c6a60(aCStack_68,uVar1,aCStack_70);
    uVar1 = FUN_007c505c(aCStack_68);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00375914(SUB84((double)local_78[0],0),extraout_s1_04,
                                SUB84((double)(local_7c - 80.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar6,extraout_s1_05);
    (*pcVar4)(uVar3,aCStack_60);
    FUN_007c5914(aCStack_68);
    FUN_0079a3fc(aCStack_70);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),(int)local_8c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950824);
    uVar1 = cocos2d::CCLabelAtlas::create("PLAY",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_06);
    FUN_00375914(0,extraout_s1_06,SUB84((double)local_90,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_c8);
    FUN_007c6a60(auStack_c4,uVar1,auStack_c8);
    uVar1 = FUN_007c505c(auStack_c4);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00375914(0,extraout_s1_06,SUB84((double)local_90,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1_07);
    FUN_003758f4(aCStack_60,aCStack_70,aCStack_68);
    (*pcVar4)(uVar3,aCStack_60);
    FUN_007c5914(auStack_c4);
    FUN_0079a3fc(auStack_c8);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_8c);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_88);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950824);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x130) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x130);
    (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_08);
    FUN_00375914(0,extraout_s1_08,SUB84((double)local_90,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x130) + 0x1fc))(*(undefined4 *)(this + 0x130));
    FUN_0079a3f4(auStack_c8);
    FUN_007c6a60(auStack_c4,uVar1,auStack_c8);
    uVar1 = FUN_007c505c(auStack_c4);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00375914(0,extraout_s1_08,SUB84((double)local_90,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1_09);
    FUN_003758f4(aCStack_60,aCStack_70,aCStack_68);
    (*pcVar4)(uVar3,aCStack_60);
    FUN_007c5914(auStack_c4);
    FUN_0079a3fc(auStack_c8);
    (**(code **)(**(int **)(this + 0x130) + 0x40))(*(undefined4 *)(this + 0x130),local_88);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x130),(int)local_8c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x138) = uVar1;
    (**(code **)(**(int **)(this + 0x138) + 0x4c))(*(undefined4 *)(this + 0x138),local_78);
    (**(code **)(**(int **)(this + 0x138) + 0x1a4))(*(undefined4 *)(this + 0x138),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
  }
  return bVar5;
}

// ---- MapSelectLayer::~MapSelectLayer  @ 0x377148
/* WARNING: Removing unreachable block (ram,0x003771f4) */
/* MapSelectLayer::~MapSelectLayer() */

MapSelectLayer * __thiscall MapSelectLayer::~MapSelectLayer(MapSelectLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00914ec8;
  *(undefined ***)(this + 0xe4) = &PTR__MapSelectLayer_1_009150d0;
  *(undefined **)(this + 0xe8) = &DAT_00915100;
  *(undefined **)(this + 0xec) = &DAT_0091510c;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- MapSelectLayer::~MapSelectLayer  @ 0x37720c
/* non-virtual thunk to MapSelectLayer::~MapSelectLayer() */

void __thiscall MapSelectLayer::~MapSelectLayer(MapSelectLayer *this)

{
  ~MapSelectLayer(this + -0xe4);
  return;
}

// ---- MapSelectLayer::~MapSelectLayer  @ 0x377214
/* MapSelectLayer::~MapSelectLayer() */

MapSelectLayer * __thiscall MapSelectLayer::~MapSelectLayer(MapSelectLayer *this)

{
  ~MapSelectLayer(this);
  operator_delete(this);
  return this;
}

// ---- MapSelectLayer::~MapSelectLayer  @ 0x377230
/* non-virtual thunk to MapSelectLayer::~MapSelectLayer() */

void __thiscall MapSelectLayer::~MapSelectLayer(MapSelectLayer *this)

{
  ~MapSelectLayer(this + -0xe4);
  return;
}

// ---- MapSelectLayer::onPlay  @ 0x377238
/* MapSelectLayer::onPlay(cocos2d::CCObject*) */

void MapSelectLayer::onPlay(CCObject *param_1)

{
  CCTransitionFade *this;
  NetworkManager *pNVar1;
  string *psVar2;
  undefined4 uVar3;
  CCString *this_00;
  CCDirector *this_01;
  CCScene *pCVar4;
  float extraout_s0;
  undefined1 auStack_1c [4];
  char acStack_18 [4];
  undefined1 auStack_14 [4];
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    if (s_bSinglePlayer != '\x01') {
      pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::setMaxPlayers(pNVar1,*(int *)(param_1 + 300));
      psVar2 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(auStack_14,"NOOBIE",auStack_1c);
      cocos2d::CCUserDefault::getStringForKey(acStack_18,psVar2);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_1c);
      pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      uVar3 = FUN_007c5300(acStack_18);
      this_00 = (CCString *)cocos2d::CCString::createWithFormat("%s\'s Game",uVar3);
      uVar3 = cocos2d::CCString::getCString(this_00);
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(auStack_14,uVar3,auStack_1c);
      NetworkManager::hostSession(pNVar1,auStack_14);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_1c);
      s_bLocalHost = 1;
      FUN_007c5914(acStack_18);
    }
    this_01 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    this = DAT_00943410;
    pCVar4 = (CCScene *)LobbyLayer::scene();
    pCVar4 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar4);
    cocos2d::CCDirector::replaceScene(this_01,pCVar4);
  }
  return;
}

// ---- MapSelectLayer::onNextMap  @ 0x3773b0
/* MapSelectLayer::onNextMap(cocos2d::CCObject*) */

void MapSelectLayer::onNextMap(CCObject *param_1)

{
  uint uVar1;
  uint uVar2;
  
  *(int *)(param_1 + 0x128) = *(int *)(param_1 + 0x128) + 1;
  uVar2 = *(uint *)(param_1 + 0x128);
  uVar1 = cocos2d::CCDictionary::count(multiplayerMaps);
  if (uVar1 <= uVar2) {
    *(undefined4 *)(param_1 + 0x128) = 0;
  }
  Sound::playSound(sndEng,0xe);
  UpdateCurrentMapLabel((MapSelectLayer *)param_1);
  return;
}

// ---- MapSelectLayer::onPrevMap  @ 0x37741c
/* MapSelectLayer::onPrevMap(cocos2d::CCObject*) */

void MapSelectLayer::onPrevMap(CCObject *param_1)

{
  int iVar1;
  
  *(int *)(param_1 + 0x128) = *(int *)(param_1 + 0x128) + -1;
  if (*(int *)(param_1 + 0x128) < 0) {
    iVar1 = cocos2d::CCDictionary::count(multiplayerMaps);
    *(int *)(param_1 + 0x128) = iVar1 + -1;
  }
  Sound::playSound(sndEng,0xd);
  UpdateCurrentMapLabel((MapSelectLayer *)param_1);
  return;
}

// ---- MapSelectLayer::onMorePlayers  @ 0x37747c
/* MapSelectLayer::onMorePlayers(cocos2d::CCObject*) */

void MapSelectLayer::onMorePlayers(CCObject *param_1)

{
  *(int *)(param_1 + 300) = *(int *)(param_1 + 300) + 1;
  if (4 < *(int *)(param_1 + 300)) {
    *(undefined4 *)(param_1 + 300) = 4;
  }
  UpdateNumPlayersLabel();
  return;
}

// ---- MapSelectLayer::onLessPlayers  @ 0x3774b0
/* MapSelectLayer::onLessPlayers(cocos2d::CCObject*) */

void MapSelectLayer::onLessPlayers(CCObject *param_1)

{
  *(int *)(param_1 + 300) = *(int *)(param_1 + 300) + -1;
  if (*(int *)(param_1 + 300) < 2) {
    *(undefined4 *)(param_1 + 300) = 2;
  }
  UpdateNumPlayersLabel();
  return;
}

// ---- MapSelectLayer::onTeams  @ 0x3774e4
/* MapSelectLayer::onTeams(cocos2d::CCObject*) */

void MapSelectLayer::onTeams(CCObject *param_1)

{
  return;
}

// ---- MapSelectLayer::onBack  @ 0x3774f0
/* MapSelectLayer::onBack(cocos2d::CCObject*) */

void MapSelectLayer::onBack(CCObject *param_1)

{
  CCDirector *pCVar1;
  CCScene *pCVar2;
  float fVar3;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    if (s_bSinglePlayer == '\0') {
      pCVar1 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar2 = DAT_00943410;
      fVar3 = (float)FindGameLayer::scene();
      pCVar2 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar3,pCVar2);
      cocos2d::CCDirector::replaceScene(pCVar1,pCVar2);
    }
    else {
      pCVar1 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar2 = DAT_00943410;
      fVar3 = (float)LocalGameLayer::scene();
      pCVar2 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar3,pCVar2);
      cocos2d::CCDirector::replaceScene(pCVar1,pCVar2);
    }
  }
  return;
}

// ---- MapSelectLayer::UpdateCurrentMapLabel  @ 0x377590
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00377678 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapSelectLayer::UpdateCurrentMapLabel() */

void __thiscall MapSelectLayer::UpdateCurrentMapLabel(MapSelectLayer *this)

{
  CCArray *this_00;
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  uint in_fpscr;
  float fVar4;
  float extraout_s1;
  float extraout_s1_00;
  undefined1 auStack_58 [4];
  CCString *local_54;
  CCPoint aCStack_50 [8];
  CCPoint aCStack_48 [8];
  undefined1 auStack_40 [8];
  undefined1 local_38 [16];
  undefined1 auStack_28 [16];
  
  this_00 = (CCArray *)cocos2d::CCDictionary::allKeys(multiplayerMaps);
  local_54 = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,*(uint *)(this + 0x128));
  uVar1 = cocos2d::CCString::getCString(local_54);
  FUN_007c5e70(&hostMapName,uVar1);
  FUN_007c64e8(auStack_28,&hostMapName);
  FUN_00376624(auStack_58,auStack_28);
  FUN_007c5914(auStack_28);
  pcVar2 = *(code **)(**(int **)(this + 0x118) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0x118);
  uVar1 = FUN_007c5300(auStack_58);
  (*pcVar2)(uVar3,uVar1);
  pcVar2 = *(code **)(**(int **)(this + 0x118) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x118);
  (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
  fVar4 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
  cocos2d::CCPoint::CCPoint(aCStack_50,fVar4,extraout_s1);
  FUN_00375914(0,extraout_s1,0,local_38);
  uVar1 = FUN_007c505c(auStack_58);
  VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar4 = (float)FUN_00375914(0,extraout_s1,0,auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_48,fVar4,extraout_s1_00);
  FUN_003758f4(auStack_40,aCStack_50,aCStack_48);
  (*pcVar2)(uVar3,auStack_40);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),0x18);
  (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),0x3f0ccccd);
  FUN_007c5914(auStack_58);
  return;
}

// ---- MapSelectLayer::UpdateNumPlayersLabel  @ 0x377768
/* MapSelectLayer::UpdateNumPlayersLabel() */

void MapSelectLayer::UpdateNumPlayersLabel(void)

{
  return;
}
