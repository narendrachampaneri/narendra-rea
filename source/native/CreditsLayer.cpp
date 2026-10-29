// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- CreditsLayer::create  @ 0x31c9e4
/* CreditsLayer::create() */

CreditsLayer * CreditsLayer::create(void)

{
  bool bVar1;
  CreditsLayer *this;
  int iVar2;
  
  this = operator_new(0x130);
  CreditsLayer(this);
  if ((this == (CreditsLayer *)0x0) ||
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
    if (this != (CreditsLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (CreditsLayer *)0x0;
  }
  return this;
}

// ---- CreditsLayer::CreditsLayer  @ 0x31ca54
/* CreditsLayer::CreditsLayer() */

CreditsLayer * __thiscall CreditsLayer::CreditsLayer(CreditsLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090fe08;
  *(undefined ***)(this + 0xe4) = &PTR__CreditsLayer_1_00910010;
  *(undefined **)(this + 0xe8) = &DAT_00910040;
  *(undefined **)(this + 0xec) = &DAT_0091004c;
  return this;
}

// ---- CreditsLayer::scene  @ 0x31caac
/* CreditsLayer::scene() */

int * CreditsLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- CreditsLayer::init  @ 0x31cae0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0031d0dc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* CreditsLayer::init() */

bool __thiscall CreditsLayer::init(CreditsLayer *this)

{
  undefined4 uVar1;
  char *pcVar2;
  undefined4 uVar3;
  code *pcVar4;
  bool bVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
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
  undefined1 auStack_c8 [3];
  char local_c5;
  undefined1 auStack_c4 [4];
  int local_c0;
  int local_bc;
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
  CCPoint aCStack_88 [8];
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
  CCPoint local_40 [16];
  CCPoint aCStack_30 [20];
  
  local_c5 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_c5 == '\x01';
  if (bVar5) {
    this[0x108] = (CreditsLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_90,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1);
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("moregames.png");
    *(undefined4 *)(this + 0x128) = uVar1;
    pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0,extraout_s1_00);
    FUN_0031bc44(aCStack_30,aCStack_88,local_40);
    (*pcVar4)(uVar1,aCStack_30);
    uVar1 = cocos2d::CCSprite::create("credits_new.png");
    *(undefined4 *)(this + 300) = uVar1;
    pcVar4 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar1 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0_00,extraout_s1_01);
    FUN_0031bc44(aCStack_30,aCStack_88,local_40);
    (*pcVar4)(uVar1,aCStack_30);
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x124) = uVar1;
    (**(code **)(**(int **)(this + 0x124) + 0x4c))(*(undefined4 *)(this + 0x124),aCStack_88);
    (**(code **)(**(int **)(this + 0x124) + 0x1a4))(*(undefined4 *)(this + 0x124),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_c0 = 0x4c;
    local_bc = -0x1f;
    local_b8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_b4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_68 = (code *)0x31d401;
    local_64 = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_b8,local_b4,(CCObject *)this,(_func_void_CCObject_ptr *)0x31d401);
    uVar1 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0x110) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_02);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    local_60 = (code *)0x31d351;
    local_5c = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemImage::create
                         ("applink_new.png","applink_new.png",(CCObject *)this,
                          (_func_void_CCObject_ptr *)0x31d351);
    uVar1 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x114);
    uVar1 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    VectorSignedToFloat(local_bc,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0_01,extraout_s1_03);
    FUN_0031bc44(aCStack_30,uVar1,local_40);
    (*pcVar4)(uVar3,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    local_58 = (code *)0x31d37d;
    local_54 = 0;
    local_a8 = (CCMenuItem *)
               cocos2d::CCMenuItemImage::create
                         ("applink_new.png","applink_new.png",(CCObject *)this,
                          (_func_void_CCObject_ptr *)0x31d37d);
    uVar1 = cocos2d::CCMenu::create(local_a8,0);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    uVar1 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    VectorSignedToFloat(local_bc + local_c0,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0_02,extraout_s1_04);
    FUN_0031bc44(aCStack_30,uVar1,local_40);
    (*pcVar4)(uVar3,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    local_50 = (code *)0x31d3a9;
    local_4c = 0;
    local_a4 = (CCMenuItem *)
               cocos2d::CCMenuItemImage::create
                         ("applink_new.png","applink_new.png",(CCObject *)this,
                          (_func_void_CCObject_ptr *)0x31d3a9);
    uVar1 = cocos2d::CCMenu::create(local_a4,0);
    *(undefined4 *)(this + 0x11c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x11c);
    uVar1 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    VectorSignedToFloat(local_bc + local_c0 * 2,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0_03,extraout_s1_05);
    FUN_0031bc44(aCStack_30,uVar1,local_40);
    (*pcVar4)(uVar3,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    local_48 = (code *)0x31d3d5;
    local_44 = 0;
    local_a0 = (CCMenuItem *)
               cocos2d::CCMenuItemImage::create
                         ("applink_new.png","applink_new.png",(CCObject *)this,
                          (_func_void_CCObject_ptr *)0x31d3d5);
    uVar1 = cocos2d::CCMenu::create(local_a0,0);
    *(undefined4 *)(this + 0x120) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x120);
    uVar1 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    VectorSignedToFloat(local_bc + local_c0 * 3,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0_04,extraout_s1_06);
    FUN_0031bc44(aCStack_30,uVar1,local_40);
    (*pcVar4)(uVar3,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    local_9c = 0x3f0ccccd;
    local_98 = 24.0;
    local_94 = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_0095010c);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x10c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    pcVar4 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x10c);
    (**(code **)(**(int **)(this + 0x110) + 0x50))(*(undefined4 *)(this + 0x110));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x110) + 0x50))(*(undefined4 *)(this + 0x110));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_07);
    FUN_0031bc64(0,extraout_s1_07,SUB84((double)local_94,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x10c) + 0x1fc))(*(undefined4 *)(this + 0x10c));
    FUN_0079a3f4(auStack_c8);
    FUN_007c6a60(auStack_c4,uVar1,auStack_c8);
    uVar1 = FUN_007c505c(auStack_c4);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_0031bc64(0,extraout_s1_07,SUB84((double)local_94,0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_08);
    FUN_0031bc44(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_c4);
    FUN_0079a3fc(auStack_c8);
    (**(code **)(**(int **)(this + 0x10c) + 0x40))(*(undefined4 *)(this + 0x10c),local_9c);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),(int)local_98);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    ApplicationInterface::removeAdBanner();
  }
  return bVar5;
}

// ---- CreditsLayer::~CreditsLayer  @ 0x31d278
/* WARNING: Removing unreachable block (ram,0x0031d30c) */
/* CreditsLayer::~CreditsLayer() */

CreditsLayer * __thiscall CreditsLayer::~CreditsLayer(CreditsLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090fe08;
  *(undefined ***)(this + 0xe4) = &PTR__CreditsLayer_1_00910010;
  *(undefined **)(this + 0xe8) = &DAT_00910040;
  *(undefined **)(this + 0xec) = &DAT_0091004c;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- CreditsLayer::~CreditsLayer  @ 0x31d324
/* non-virtual thunk to CreditsLayer::~CreditsLayer() */

void __thiscall CreditsLayer::~CreditsLayer(CreditsLayer *this)

{
  ~CreditsLayer(this + -0xe4);
  return;
}

// ---- CreditsLayer::~CreditsLayer  @ 0x31d32c
/* CreditsLayer::~CreditsLayer() */

CreditsLayer * __thiscall CreditsLayer::~CreditsLayer(CreditsLayer *this)

{
  ~CreditsLayer(this);
  operator_delete(this);
  return this;
}

// ---- CreditsLayer::~CreditsLayer  @ 0x31d348
/* non-virtual thunk to CreditsLayer::~CreditsLayer() */

void __thiscall CreditsLayer::~CreditsLayer(CreditsLayer *this)

{
  ~CreditsLayer(this + -0xe4);
  return;
}

// ---- CreditsLayer::onDA  @ 0x31d350
/* CreditsLayer::onDA(cocos2d::CCObject*) */

void CreditsLayer::onDA(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDeveloperLink();
  return;
}

// ---- CreditsLayer::onB  @ 0x31d37c
/* CreditsLayer::onB(cocos2d::CCObject*) */

void CreditsLayer::onB(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDeveloperLink();
  return;
}

// ---- CreditsLayer::onJ  @ 0x31d3a8
/* CreditsLayer::onJ(cocos2d::CCObject*) */

void CreditsLayer::onJ(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDeveloperLink();
  return;
}

// ---- CreditsLayer::onPK  @ 0x31d3d4
/* CreditsLayer::onPK(cocos2d::CCObject*) */

void CreditsLayer::onPK(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDeveloperLink();
  return;
}

// ---- CreditsLayer::onBack  @ 0x31d400
/* CreditsLayer::onBack(cocos2d::CCObject*) */

void CreditsLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009432a8;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
