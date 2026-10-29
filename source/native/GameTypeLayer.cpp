// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- GameTypeLayer::create  @ 0x3463f4
/* GameTypeLayer::create() */

GameTypeLayer * GameTypeLayer::create(void)

{
  bool bVar1;
  GameTypeLayer *this;
  int iVar2;
  
  this = operator_new(0x138);
  GameTypeLayer(this);
  if ((this == (GameTypeLayer *)0x0) ||
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
    if (this != (GameTypeLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (GameTypeLayer *)0x0;
  }
  return this;
}

// ---- GameTypeLayer::GameTypeLayer  @ 0x346464
/* GameTypeLayer::GameTypeLayer() */

GameTypeLayer * __thiscall GameTypeLayer::GameTypeLayer(GameTypeLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00912120;
  *(undefined ***)(this + 0xe4) = &PTR__GameTypeLayer_1_00912328;
  *(undefined **)(this + 0xe8) = &DAT_00912358;
  *(undefined **)(this + 0xec) = &DAT_00912364;
  return this;
}

// ---- GameTypeLayer::scene  @ 0x3464bc
/* GameTypeLayer::scene() */

int * GameTypeLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- GameTypeLayer::init  @ 0x3464f0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003469fc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* GameTypeLayer::init() */

bool __thiscall GameTypeLayer::init(GameTypeLayer *this)

{
  undefined4 uVar1;
  char *pcVar2;
  undefined4 uVar3;
  code *pcVar4;
  bool bVar5;
  uint in_fpscr;
  float fVar6;
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
  float extraout_s1_10;
  float extraout_s1_11;
  float extraout_s1_12;
  float extraout_s1_13;
  float extraout_s1_14;
  undefined1 auStack_d4 [3];
  char local_d1;
  undefined1 auStack_d0 [4];
  undefined4 local_cc;
  undefined4 local_c8;
  CCNode *local_c4;
  CCNode *local_c0;
  CCNode *local_bc;
  CCNode *local_b8;
  CCNode *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  CCMenuItem *local_a8;
  CCMenuItem *local_a4;
  CCMenuItem *local_a0;
  undefined4 local_9c;
  float local_98;
  float local_94;
  CCSize local_90 [8];
  CCPoint local_88 [8];
  CCPoint aCStack_80 [8];
  CCPoint aCStack_78 [8];
  undefined1 auStack_70 [8];
  code *local_68;
  undefined4 local_64;
  code *local_60;
  undefined4 local_5c;
  code *local_58;
  undefined4 local_54;
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  code *local_30;
  undefined4 local_2c;
  
  local_d1 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_d1 == '\x01';
  if (bVar5) {
    this[0x108] = (GameTypeLayer)0x0;
    this[0x109] = (GameTypeLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_90,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_88,fVar6,extraout_s1);
    local_cc = 0;
    local_c8 = 0x42400000;
    local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_bc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_bot.png");
    local_b8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_b4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("DAad.png");
    local_68 = (code *)0x3473f1;
    local_64 = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c4,local_c4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3473f1);
    uVar1 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0x128) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_00);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_60 = (code *)0x347485;
    local_5c = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c0,local_c0,(CCObject *)this,(_func_void_CCObject_ptr *)0x347485);
    uVar1 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x124) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar4 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_01);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    local_58 = (code *)0x347519;
    local_54 = 0;
    local_a8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_bc,local_bc,(CCObject *)this,(_func_void_CCObject_ptr *)0x347519);
    uVar1 = cocos2d::CCMenu::create(local_a8,0);
    *(undefined4 *)(this + 0x134) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar4 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x134);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_02);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    local_50 = (code *)0x347751;
    local_4c = 0;
    local_a4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_b8,local_b8,(CCObject *)this,(_func_void_CCObject_ptr *)0x347751);
    uVar1 = cocos2d::CCMenu::create(local_a4,0);
    *(undefined4 *)(this + 300) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar4 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar1 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_03);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    local_48 = (code *)0x3477b5;
    local_44 = 0;
    local_a0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_b4,local_b4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3477b5);
    uVar1 = cocos2d::CCMenu::create(local_a0,0);
    *(undefined4 *)(this + 0x130) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_04);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    local_9c = 0x3f0ccccd;
    local_98 = 24.0;
    local_94 = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_009503ec);
    uVar1 = cocos2d::CCLabelAtlas::create("DEATHMATCH",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_98);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_9c);
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_05);
    FUN_00345674(0,extraout_s1_05,SUB84((double)local_94,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_d4);
    FUN_007c6a60(auStack_d0,uVar1,auStack_d4);
    uVar1 = FUN_007c505c(auStack_d0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00345674(0,extraout_s1_05,SUB84((double)local_94,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_06);
    FUN_00345654(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_d0);
    FUN_0079a3fc(auStack_d4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar2 = (char *)FUN_007c5300(&DAT_009503ec);
    uVar1 = cocos2d::CCLabelAtlas::create("SURVIVAL",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_98);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_9c);
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_07);
    FUN_00345674(0,extraout_s1_07,SUB84((double)(local_94 + 3.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(auStack_d4);
    FUN_007c6a60(auStack_d0,uVar1,auStack_d4);
    uVar1 = FUN_007c505c(auStack_d0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00345674(0,extraout_s1_07,SUB84((double)(local_94 + 3.0),0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_08);
    FUN_00345654(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_d0);
    FUN_0079a3fc(auStack_d4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    pcVar2 = (char *)FUN_007c5300(&DAT_009503ec);
    uVar1 = cocos2d::CCLabelAtlas::create("CO-OP",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_98);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),0x3e8f5c29);
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_09);
    FUN_00345674(0,extraout_s1_09,SUB84((double)(local_94 - 7.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_d4);
    FUN_007c6a60(auStack_d0,uVar1,auStack_d4);
    uVar1 = FUN_007c505c(auStack_d0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00345674(0,extraout_s1_09,SUB84((double)(local_94 - 7.0),0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_10);
    FUN_00345654(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_d0);
    FUN_0079a3fc(auStack_d4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar2 = (char *)FUN_007c5300(&DAT_009503ec);
    uVar1 = cocos2d::CCLabelAtlas::create("SCORES",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_98);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_9c);
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_11);
    FUN_00345674(0,extraout_s1_11,SUB84((double)local_94,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_d4);
    FUN_007c6a60(auStack_d0,uVar1,auStack_d4);
    uVar1 = FUN_007c505c(auStack_d0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00345674(0,extraout_s1_11,SUB84((double)local_94,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_12);
    FUN_00345654(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_d0);
    FUN_0079a3fc(auStack_d4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    pcVar2 = (char *)FUN_007c5300(&DAT_009503ec);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x120);
    (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    fVar6 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_13);
    FUN_00345674(0,extraout_s1_13,SUB84((double)local_94,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
    FUN_0079a3f4(auStack_d4);
    FUN_007c6a60(auStack_d0,uVar1,auStack_d4);
    uVar1 = FUN_007c505c(auStack_d0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00345674(0,extraout_s1_13,SUB84((double)local_94,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_14);
    FUN_00345654(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_d0);
    FUN_0079a3fc(auStack_d4);
    (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_9c);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_98);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),local_88);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    fVar6 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    local_30 = (code *)0x347851;
    local_2c = 0;
    cocos2d::CCNode::schedule((_func_void_float *)this,fVar6);
  }
  return bVar5;
}

// ---- GameTypeLayer::~GameTypeLayer  @ 0x3472b0
/* WARNING: Removing unreachable block (ram,0x00347374) */
/* GameTypeLayer::~GameTypeLayer() */

GameTypeLayer * __thiscall GameTypeLayer::~GameTypeLayer(GameTypeLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00912120;
  *(undefined ***)(this + 0xe4) = &PTR__GameTypeLayer_1_00912328;
  *(undefined **)(this + 0xe8) = &DAT_00912358;
  *(undefined **)(this + 0xec) = &DAT_00912364;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- GameTypeLayer::~GameTypeLayer  @ 0x34738c
/* non-virtual thunk to GameTypeLayer::~GameTypeLayer() */

void __thiscall GameTypeLayer::~GameTypeLayer(GameTypeLayer *this)

{
  ~GameTypeLayer(this + -0xe4);
  return;
}

// ---- GameTypeLayer::~GameTypeLayer  @ 0x347394
/* GameTypeLayer::~GameTypeLayer() */

GameTypeLayer * __thiscall GameTypeLayer::~GameTypeLayer(GameTypeLayer *this)

{
  ~GameTypeLayer(this);
  operator_delete(this);
  return this;
}

// ---- GameTypeLayer::~GameTypeLayer  @ 0x3473b0
/* non-virtual thunk to GameTypeLayer::~GameTypeLayer() */

void __thiscall GameTypeLayer::~GameTypeLayer(GameTypeLayer *this)

{
  ~GameTypeLayer(this + -0xe4);
  return;
}

// ---- GameTypeLayer::onExit  @ 0x3473b8
/* GameTypeLayer::onExit() */

void __thiscall GameTypeLayer::onExit(GameTypeLayer *this)

{
  cocos2d::CCNode::unschedule((_func_void_float *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- GameTypeLayer::onDM  @ 0x3473f0
/* GameTypeLayer::onDM(cocos2d::CCObject*) */

void GameTypeLayer::onDM(CCObject *param_1)

{
  CCTransitionFade *this;
  NetworkManager *this_00;
  CCDirector *this_01;
  CCScene *pCVar1;
  float extraout_s0;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    s_bSinglePlayer = 0;
    Sound::playSound(sndEng,0xd);
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setMaxPlayers(this_00,4);
    gameType = 4;
    mapType = 3;
    this_01 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    this = DAT_00943340;
    pCVar1 = (CCScene *)MultiplayerGameLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
    cocos2d::CCDirector::replaceScene(this_01,pCVar1);
  }
  return;
}

// ---- GameTypeLayer::onCoOp  @ 0x347484
/* GameTypeLayer::onCoOp(cocos2d::CCObject*) */

void GameTypeLayer::onCoOp(CCObject *param_1)

{
  NetworkManager *this;
  CCDirector *this_00;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    s_bSinglePlayer = 0;
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setMaxPlayers(this,2);
    Sound::playSound(sndEng,0xd);
    gameType = 2;
    mapType = 2;
    this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943340;
    fVar2 = (float)MultiplayerGameLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  }
  return;
}

// ---- GameTypeLayer::onLB  @ 0x347518
/* GameTypeLayer::onLB(cocos2d::CCObject*) */

void GameTypeLayer::onLB(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  LeaderBoardBridge *pLVar4;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  Sound::playSound(sndEng,0xd);
  cVar1 = GPGSStateManager::IsAuthorized();
  if (cVar1 == '\x01') {
    NetworkManager::sharedNetworkManager();
    cVar1 = NetworkManagerBridge::isInternetReachable();
    if (cVar1 == '\x01') {
      pLVar4 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
      LeaderBoardBridge::showLeaderboard(pLVar4,2);
    }
    else {
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(auStack_10,"No Internet Connection",auStack_1c);
      FUN_0079a3f4(auStack_18);
      FUN_007c6a60(auStack_c,"Enable your internet connection to access player stats!",auStack_18);
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(asStack_14,&DAT_007d92b0,auStack_20);
      pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_14);
      uVar3 = cocos2d::CCArray::create(pCVar2,0);
      AMessageBox::showAlert(0,auStack_10,auStack_c,uVar3,0,0);
      FUN_007c5914(asStack_14);
      FUN_0079a3fc(auStack_20);
      FUN_007c5914(auStack_c);
      FUN_0079a3fc(auStack_18);
      FUN_007c5914(auStack_10);
      FUN_0079a3fc(auStack_1c);
    }
  }
  else {
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Login Required",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,"Login to Google Play Services to view leaderboards!",auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,&DAT_007d92b0,auStack_20);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar3 = cocos2d::CCArray::create(pCVar2,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar3,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
  }
  return;
}

// ---- GameTypeLayer::onBack  @ 0x347750
/* GameTypeLayer::onBack(cocos2d::CCObject*) */

void GameTypeLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943340;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- GameTypeLayer::onDA  @ 0x3477b4
/* GameTypeLayer::onDA(cocos2d::CCObject*) */

void GameTypeLayer::onDA(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDoodleArmyAppLink();
  return;
}

// ---- GameTypeLayer::onStartedMatchFromMMVC  @ 0x3477e0
/* GameTypeLayer::onStartedMatchFromMMVC() */

void GameTypeLayer::onStartedMatchFromMMVC(void)

{
  CCTransitionFade *this;
  CCDirector *this_00;
  CCScene *pCVar1;
  float extraout_s0;
  
  s_bSinglePlayer = 0;
  gameType = 4;
  mapType = 3;
  Sound::playSound(sndEng,0xd);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  this = DAT_00943340;
  pCVar1 = (CCScene *)LobbyLayer::scene();
  pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
  cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  return;
}

// ---- GameTypeLayer::inviteCheck  @ 0x347850
/* GameTypeLayer::inviteCheck(float) */

void GameTypeLayer::inviteCheck(float param_1)

{
  NetworkManager *pNVar1;
  int iVar2;
  
  pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar2 = NetworkManager::getWasInvited(pNVar1);
  if (iVar2 != 0) {
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setWasInvited(pNVar1,false);
    onStartedMatchFromMMVC();
  }
  return;
}
