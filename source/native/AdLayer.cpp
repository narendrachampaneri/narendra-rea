// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 10 functions

// ---- AdLayer::create  @ 0x2f2584
/* AdLayer::create() */

AdLayer * AdLayer::create(void)

{
  bool bVar1;
  AdLayer *this;
  int iVar2;
  
  this = operator_new(0x128);
  AdLayer(this);
  if ((this == (AdLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (AdLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AdLayer *)0x0;
  }
  return this;
}

// ---- AdLayer::AdLayer  @ 0x2f25f4
/* AdLayer::AdLayer() */

AdLayer * __thiscall AdLayer::AdLayer(AdLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090a7d8;
  *(undefined ***)(this + 0xe4) = &PTR__AdLayer_1_0090a9e0;
  *(undefined **)(this + 0xe8) = &DAT_0090aa10;
  *(undefined **)(this + 0xec) = &DAT_0090aa1c;
  return this;
}

// ---- AdLayer::scene  @ 0x2f264c
/* AdLayer::scene() */

int * AdLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- AdLayer::init  @ 0x2f2680
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x002f2a14 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* AdLayer::init() */

undefined4 __thiscall AdLayer::init(AdLayer *this)

{
  char *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  uint in_fpscr;
  float fVar5;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  undefined1 auStack_94 [3];
  char local_91;
  undefined1 auStack_90 [4];
  undefined4 local_8c;
  float local_88;
  float local_84;
  CCNode *local_80;
  CCNode *local_7c;
  CCMenuItem *local_78;
  CCMenuItem *local_74;
  CCSize local_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  CCPoint aCStack_58 [8];
  undefined1 auStack_50 [8];
  code *local_48;
  undefined4 local_44;
  code *local_40;
  undefined4 local_3c;
  undefined1 local_38 [16];
  CCPoint aCStack_28 [16];
  
  local_91 = cocos2d::CCLayer::init((CCLayer *)this);
  if (local_91 == '\x01') {
    local_8c = 0x3f0ccccd;
    local_88 = 24.0;
    local_84 = -8.0;
    fVar5 = (float)cocos2d::CCSize::CCSize(local_70,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar5,extraout_s1);
    uVar2 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x110) = uVar2;
    (**(code **)(**(int **)(this + 0x110) + 0x4c))(*(undefined4 *)(this + 0x110),aCStack_68);
    (**(code **)(**(int **)(this + 0x110) + 0x1a4))(*(undefined4 *)(this + 0x110),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    if (CC_AD_SHOWN == '\x01') {
      if (ZRR_AD_SHOWN == '\x01') {
        *(undefined4 *)(this + 0x108) = 0;
        uVar2 = cocos2d::CCSprite::create("da_new.png");
        *(undefined4 *)(this + 0x114) = uVar2;
      }
      else {
        *(undefined4 *)(this + 0x108) = 2;
        uVar2 = cocos2d::CCSprite::create("zombie_new.png");
        *(undefined4 *)(this + 0x114) = uVar2;
      }
    }
    else {
      *(undefined4 *)(this + 0x108) = 1;
      uVar2 = cocos2d::CCSprite::create("crash_new.png");
      *(undefined4 *)(this + 0x114) = uVar2;
    }
    (**(code **)(**(int **)(this + 0x114) + 0x4c))(*(undefined4 *)(this + 0x114),aCStack_68);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    this[0x10c] = (AdLayer)0x0;
    local_80 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_7c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_48 = (code *)0x2f2f01;
    local_44 = 0;
    local_78 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_80,local_80,(CCObject *)this,(_func_void_CCObject_ptr *)0x2f2f01);
    uVar2 = cocos2d::CCMenu::create(local_78,0);
    *(undefined4 *)(this + 0x120) = uVar2;
    fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar5,extraout_s1_00);
    (*pcVar4)(uVar2,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    local_40 = (code *)0x2f2ddd;
    local_3c = 0;
    local_74 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_7c,local_7c,(CCObject *)this,(_func_void_CCObject_ptr *)0x2f2ddd);
    uVar2 = cocos2d::CCMenu::create(local_74,0);
    *(undefined4 *)(this + 0x124) = uVar2;
    fVar5 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar4 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar5,extraout_s1_01);
    (*pcVar4)(uVar2,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f6e4);
    uVar2 = cocos2d::CCLabelAtlas::create("NOW",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_88);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),local_8c);
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    fVar5 = (float)(**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar5,extraout_s1_02);
    FUN_002f1804(0,extraout_s1_02,SUB84((double)local_84,0),local_38);
    uVar2 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_94);
    FUN_007c6a60(auStack_90,uVar2,auStack_94);
    uVar2 = FUN_007c505c(auStack_90);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar5 = (float)FUN_002f1804(0,extraout_s1_02,SUB84((double)local_84,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_58,fVar5,extraout_s1_03);
    FUN_002f17e4(auStack_50,aCStack_60,aCStack_58);
    (*pcVar4)(uVar3,auStack_50);
    FUN_007c5914(auStack_90);
    FUN_0079a3fc(auStack_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f6e4);
    uVar2 = cocos2d::CCLabelAtlas::create("LATER",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_88);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_8c);
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar5 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar5,extraout_s1_04);
    FUN_002f1804(0,extraout_s1_04,SUB84((double)local_84,0),local_38);
    uVar2 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_94);
    FUN_007c6a60(auStack_90,uVar2,auStack_94);
    uVar2 = FUN_007c505c(auStack_90);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar5 = (float)FUN_002f1804(0,extraout_s1_04,SUB84((double)local_84,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_58,fVar5,extraout_s1_05);
    FUN_002f17e4(auStack_50,aCStack_60,aCStack_58);
    (*pcVar4)(uVar3,auStack_50);
    FUN_007c5914(auStack_90);
    FUN_0079a3fc(auStack_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- AdLayer::~AdLayer  @ 0x2f2d10
/* WARNING: Removing unreachable block (ram,0x002f2d96) */
/* AdLayer::~AdLayer() */

AdLayer * __thiscall AdLayer::~AdLayer(AdLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090a7d8;
  *(undefined ***)(this + 0xe4) = &PTR__AdLayer_1_0090a9e0;
  *(undefined **)(this + 0xe8) = &DAT_0090aa10;
  *(undefined **)(this + 0xec) = &DAT_0090aa1c;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- AdLayer::~AdLayer  @ 0x2f2db0
/* non-virtual thunk to AdLayer::~AdLayer() */

void __thiscall AdLayer::~AdLayer(AdLayer *this)

{
  ~AdLayer(this + -0xe4);
  return;
}

// ---- AdLayer::~AdLayer  @ 0x2f2db8
/* AdLayer::~AdLayer() */

AdLayer * __thiscall AdLayer::~AdLayer(AdLayer *this)

{
  ~AdLayer(this);
  operator_delete(this);
  return this;
}

// ---- AdLayer::~AdLayer  @ 0x2f2dd4
/* non-virtual thunk to AdLayer::~AdLayer() */

void __thiscall AdLayer::~AdLayer(AdLayer *this)

{
  ~AdLayer(this + -0xe4);
  return;
}

// ---- AdLayer::onLobby  @ 0x2f2ddc
/* AdLayer::onLobby(cocos2d::CCObject*) */

void AdLayer::onLobby(CCObject *param_1)

{
  CCTransitionFade *this;
  CCUserDefault *pCVar1;
  int iVar2;
  CCDirector *this_00;
  CCScene *pCVar3;
  float extraout_s0;
  
  if (param_1[0x10c] == (CCObject)0x0) {
    param_1[0x10c] = (CCObject)0x1;
    if (*(int *)(param_1 + 0x108) == 1) {
      pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"AdCount2",0);
      pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"AdCount2",iVar2 + 1);
    }
    else if (*(int *)(param_1 + 0x108) == 2) {
      pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"AdCount3",0);
      pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"AdCount3",iVar2 + 1);
    }
    else {
      pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"AdCount4",0);
      pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
      cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"AdCount4",iVar2 + 1);
    }
    Sound::playSound(sndEng,0xd);
    this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    this = DAT_00943034;
    pCVar3 = (CCScene *)LobbyLayer::scene();
    pCVar3 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar3);
    cocos2d::CCDirector::replaceScene(this_00,pCVar3);
  }
  return;
}

// ---- AdLayer::onAd  @ 0x2f2f00
/* AdLayer::onAd(cocos2d::CCObject*) */

void AdLayer::onAd(CCObject *param_1)

{
  if (*(int *)(param_1 + 0x108) == 1) {
    ApplicationInterface::openCrashCartLink();
  }
  else if (*(int *)(param_1 + 0x108) == 2) {
    ApplicationInterface::openZombieRoadRageLink();
  }
  else {
    ApplicationInterface::openDoodleArmyBCAppLink();
  }
  return;
}
