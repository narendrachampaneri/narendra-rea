// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- LocalGameLayer::create  @ 0x362524
/* LocalGameLayer::create() */

LocalGameLayer * LocalGameLayer::create(void)

{
  bool bVar1;
  LocalGameLayer *this;
  int iVar2;
  
  this = operator_new(0x130);
  LocalGameLayer(this);
  if ((this == (LocalGameLayer *)0x0) ||
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
    if (this != (LocalGameLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (LocalGameLayer *)0x0;
  }
  return this;
}

// ---- LocalGameLayer::LocalGameLayer  @ 0x362594
/* LocalGameLayer::LocalGameLayer() */

LocalGameLayer * __thiscall LocalGameLayer::LocalGameLayer(LocalGameLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009138b8;
  *(undefined ***)(this + 0xe4) = &PTR__LocalGameLayer_1_00913ac0;
  *(undefined **)(this + 0xe8) = &DAT_00913af0;
  *(undefined **)(this + 0xec) = &DAT_00913afc;
  return this;
}

// ---- LocalGameLayer::scene  @ 0x3625ec
/* LocalGameLayer::scene() */

int * LocalGameLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- LocalGameLayer::init  @ 0x362620
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00362a7e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* LocalGameLayer::init() */

bool __thiscall LocalGameLayer::init(LocalGameLayer *this)

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
  undefined1 auStack_bc [3];
  char local_b9;
  undefined1 auStack_b8 [4];
  undefined4 local_b4;
  undefined4 local_b0;
  CCNode *local_ac;
  CCNode *local_a8;
  CCNode *local_a4;
  CCNode *local_a0;
  CCMenuItem *local_9c;
  CCMenuItem *local_98;
  CCMenuItem *local_94;
  CCMenuItem *local_90;
  undefined4 local_8c;
  float local_88;
  float local_84;
  CCSize local_80 [8];
  CCPoint local_78 [8];
  CCPoint aCStack_70 [8];
  CCPoint aCStack_68 [8];
  undefined1 auStack_60 [8];
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
  
  local_b9 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_b9 == '\x01';
  if (bVar5) {
    this[0x108] = (LocalGameLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_80,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_78,fVar6,extraout_s1);
    local_b4 = 0;
    local_b0 = 0x42400000;
    local_ac = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_a8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_bot.png");
    local_a4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_a0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("DAad.png");
    local_58 = (code *)0x36301d;
    local_54 = 0;
    local_9c = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_ac,local_ac,(CCObject *)this,(_func_void_CCObject_ptr *)0x36301d);
    uVar1 = cocos2d::CCMenu::create(local_9c,0);
    *(undefined4 *)(this + 0x120) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_00);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    local_50 = (code *)0x3630a5;
    local_4c = 0;
    local_98 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_a8,local_a8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3630a5);
    uVar1 = cocos2d::CCMenu::create(local_98,0);
    *(undefined4 *)(this + 0x124) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar4 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_01);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    local_48 = (code *)0x36312d;
    local_44 = 0;
    local_94 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_a4,local_a4,(CCObject *)this,(_func_void_CCObject_ptr *)0x36312d);
    uVar1 = cocos2d::CCMenu::create(local_94,0);
    *(undefined4 *)(this + 0x128) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_02);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_40 = (code *)0x363191;
    local_3c = 0;
    local_90 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_a0,local_a0,(CCObject *)this,(_func_void_CCObject_ptr *)0x363191);
    uVar1 = cocos2d::CCMenu::create(local_90,0);
    *(undefined4 *)(this + 300) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar4 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar1 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_03);
    (*pcVar4)(uVar1,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    local_8c = 0x3f0ccccd;
    local_88 = 24.0;
    local_84 = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_009506bc);
    uVar1 = cocos2d::CCLabelAtlas::create("TRAINING",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_88);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_8c);
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_04);
    FUN_003617a8(0,extraout_s1_04,SUB84((double)local_84,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_bc);
    FUN_007c6a60(auStack_b8,uVar1,auStack_bc);
    uVar1 = FUN_007c505c(auStack_b8);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003617a8(0,extraout_s1_04,SUB84((double)local_84,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1_05);
    FUN_00361788(auStack_60,aCStack_70,aCStack_68);
    (*pcVar4)(uVar3,auStack_60);
    FUN_007c5914(auStack_b8);
    FUN_0079a3fc(auStack_bc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar2 = (char *)FUN_007c5300(&DAT_009506bc);
    uVar1 = cocos2d::CCLabelAtlas::create("SURVIVAL",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_88);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_8c);
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_06);
    FUN_003617a8(0,extraout_s1_06,SUB84((double)local_84,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(auStack_bc);
    FUN_007c6a60(auStack_b8,uVar1,auStack_bc);
    uVar1 = FUN_007c505c(auStack_b8);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003617a8(0,extraout_s1_06,SUB84((double)local_84,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1_07);
    FUN_00361788(auStack_60,aCStack_70,aCStack_68);
    (*pcVar4)(uVar3,auStack_60);
    FUN_007c5914(auStack_b8);
    FUN_0079a3fc(auStack_bc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    pcVar2 = (char *)FUN_007c5300(&DAT_009506bc);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_08);
    FUN_003617a8(0,extraout_s1_08,SUB84((double)local_84,0),local_38);
    uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_bc);
    FUN_007c6a60(auStack_b8,uVar1,auStack_bc);
    uVar1 = FUN_007c505c(auStack_b8);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003617a8(0,extraout_s1_08,SUB84((double)local_84,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar6,extraout_s1_09);
    FUN_00361788(auStack_60,aCStack_70,aCStack_68);
    (*pcVar4)(uVar3,auStack_60);
    FUN_007c5914(auStack_b8);
    FUN_0079a3fc(auStack_bc);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_8c);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_88);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),local_78);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
  }
  return bVar5;
}

// ---- LocalGameLayer::~LocalGameLayer  @ 0x362f38
/* WARNING: Removing unreachable block (ram,0x00362fd8) */
/* LocalGameLayer::~LocalGameLayer() */

LocalGameLayer * __thiscall LocalGameLayer::~LocalGameLayer(LocalGameLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009138b8;
  *(undefined ***)(this + 0xe4) = &PTR__LocalGameLayer_1_00913ac0;
  *(undefined **)(this + 0xe8) = &DAT_00913af0;
  *(undefined **)(this + 0xec) = &DAT_00913afc;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- LocalGameLayer::~LocalGameLayer  @ 0x362ff0
/* non-virtual thunk to LocalGameLayer::~LocalGameLayer() */

void __thiscall LocalGameLayer::~LocalGameLayer(LocalGameLayer *this)

{
  ~LocalGameLayer(this + -0xe4);
  return;
}

// ---- LocalGameLayer::~LocalGameLayer  @ 0x362ff8
/* LocalGameLayer::~LocalGameLayer() */

LocalGameLayer * __thiscall LocalGameLayer::~LocalGameLayer(LocalGameLayer *this)

{
  ~LocalGameLayer(this);
  operator_delete(this);
  return this;
}

// ---- LocalGameLayer::~LocalGameLayer  @ 0x363014
/* non-virtual thunk to LocalGameLayer::~LocalGameLayer() */

void __thiscall LocalGameLayer::~LocalGameLayer(LocalGameLayer *this)

{
  ~LocalGameLayer(this + -0xe4);
  return;
}

// ---- LocalGameLayer::onTraining  @ 0x36301c
/* LocalGameLayer::onTraining(cocos2d::CCObject*) */

void LocalGameLayer::onTraining(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    s_bSinglePlayer = 1;
    Sound::playSound(sndEng,0xd);
    gameType = 0;
    mapType = 1;
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009433a8;
    fVar2 = (float)StageLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- LocalGameLayer::onSurvival  @ 0x3630a4
/* LocalGameLayer::onSurvival(cocos2d::CCObject*) */

void LocalGameLayer::onSurvival(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    s_bSinglePlayer = 0;
    Sound::playSound(sndEng,0xd);
    gameType = 1;
    mapType = 2;
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009433a8;
    fVar2 = (float)StageLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- LocalGameLayer::onBack  @ 0x36312c
/* LocalGameLayer::onBack(cocos2d::CCObject*) */

void LocalGameLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009433a8;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- LocalGameLayer::onDA  @ 0x363190
/* LocalGameLayer::onDA(cocos2d::CCObject*) */

void LocalGameLayer::onDA(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDoodleArmyAppLink();
  return;
}
