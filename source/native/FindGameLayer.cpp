// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 17 functions

// ---- FindGameLayer::create  @ 0x333ee4
/* FindGameLayer::create() */

FindGameLayer * FindGameLayer::create(void)

{
  bool bVar1;
  FindGameLayer *this;
  int iVar2;
  
  this = operator_new(0x144);
  FindGameLayer(this);
  if ((this == (FindGameLayer *)0x0) ||
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
    if (this != (FindGameLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (FindGameLayer *)0x0;
  }
  return this;
}

// ---- FindGameLayer::FindGameLayer  @ 0x333f54
/* FindGameLayer::FindGameLayer() */

FindGameLayer * __thiscall FindGameLayer::FindGameLayer(FindGameLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00911760;
  *(undefined ***)(this + 0xe4) = &PTR__FindGameLayer_1_00911968;
  *(undefined **)(this + 0xe8) = &DAT_00911998;
  *(undefined **)(this + 0xec) = &DAT_009119a4;
  return this;
}

// ---- FindGameLayer::scene  @ 0x333fac
/* FindGameLayer::scene() */

int * FindGameLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- FindGameLayer::init  @ 0x333fe0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003344ae */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FindGameLayer::init() */

undefined4 __thiscall FindGameLayer::init(FindGameLayer *this)

{
  char cVar1;
  NetworkManager *this_00;
  char *pcVar2;
  char *pcVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  uint in_fpscr;
  float fVar7;
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
  undefined1 auStack_ec [4];
  undefined1 auStack_e8 [4];
  undefined1 auStack_e4 [4];
  undefined1 auStack_e0 [4];
  CCNode *local_dc;
  CCNode *local_d8;
  CCNode *local_d4;
  CCNode *local_d0;
  CCNode *local_cc;
  CCNode *local_c8;
  CCNode *local_c4;
  CCNode *local_c0;
  CCNode *local_bc;
  CCNode *local_b8;
  CCMenuItem *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  undefined4 local_a8;
  CCMenuItem *local_a4;
  CCMenuItem *local_a0;
  float local_9c;
  float local_98;
  undefined4 local_94;
  CCSize local_90 [4];
  float local_8c;
  float local_88 [2];
  CCPoint aCStack_80 [8];
  CCPoint aCStack_78 [8];
  CCPoint aCStack_70 [8];
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
  
  cVar1 = cocos2d::CCLayer::init((CCLayer *)this);
  if (cVar1 == '\x01') {
    this[0x108] = (FindGameLayer)0x0;
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::findSessions(this_00);
    *(undefined4 *)(this + 0x134) = 0;
    uVar5 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x130) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    fVar7 = (float)cocos2d::CCSize::CCSize(local_90,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_88,fVar7,extraout_s1);
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_bc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_b8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_68 = (code *)0x334ebd;
    local_64 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x334ebd);
    uVar5 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0x114) = uVar5;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar6 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_00);
    (*pcVar6)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    local_60 = (code *)0x3350f1;
    local_5c = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3350f1);
    uVar5 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0x120) = uVar5;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar6 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_01);
    (*pcVar6)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    local_58 = (code *)0x33529d;
    local_54 = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_cc,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x33529d);
    uVar5 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x13c) = uVar5;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    pcVar6 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x13c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_02);
    (*pcVar6)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
    local_a8 = 0x43020000;
    local_50 = (code *)0x335361;
    local_4c = 0;
    local_a4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c4,local_c0,(CCObject *)this,(_func_void_CCObject_ptr *)0x335361);
    uVar5 = cocos2d::CCMenu::create(local_a4,0);
    *(undefined4 *)(this + 0x128) = uVar5;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar6 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_03);
    (*pcVar6)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_48 = (code *)0x3353c9;
    local_44 = 0;
    local_a0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_bc,local_b8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3353c9);
    uVar5 = cocos2d::CCMenu::create(local_a0,0);
    *(undefined4 *)(this + 300) = uVar5;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar6 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar5 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_04);
    (*pcVar6)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    if (gameType == 5) {
      pcVar3 = "LOCAL COOP";
    }
    else {
      pcVar3 = "LOCAL GAME";
    }
    FUN_0079a3f4(&local_30);
    FUN_007c6a60(auStack_ec,pcVar3,&local_30);
    FUN_0079a3fc(&local_30);
    pcVar3 = (char *)FUN_007c5300(auStack_ec);
    pcVar2 = (char *)FUN_007c5300(&DAT_009502cc);
    uVar5 = cocos2d::CCLabelAtlas::create(pcVar3,pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x10c) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    pcVar6 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x10c);
    FUN_00333110(SUB84((double)local_88[0],0),extraout_s1_04,SUB84((double)(local_8c - 80.0),0),
                 local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x10c) + 0x1fc))(*(undefined4 *)(this + 0x10c));
    FUN_0079a3f4(aCStack_80);
    FUN_007c6a60(aCStack_78,uVar5,aCStack_80);
    uVar5 = FUN_007c505c(aCStack_78);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_00333110(SUB84((double)local_88[0],0),extraout_s1_04,
                                SUB84((double)(local_8c - 80.0),0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1_05);
    (*pcVar6)(uVar4,aCStack_70);
    FUN_007c5914(aCStack_78);
    FUN_0079a3fc(aCStack_80);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),0x18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    local_9c = 24.0;
    local_98 = -8.0;
    local_94 = 0x3f0ccccd;
    pcVar3 = (char *)FUN_007c5300(&DAT_009502cc);
    uVar5 = cocos2d::CCLabelAtlas::create("JOIN",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar6 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x114) + 0x50))(*(undefined4 *)(this + 0x114));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar7,extraout_s1_06);
    FUN_00333110(0,extraout_s1_06,SUB84((double)local_98,0),local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_e0);
    FUN_007c6a60(auStack_e8,uVar5,auStack_e0);
    uVar5 = FUN_007c505c(auStack_e8);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_00333110(0,extraout_s1_06,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar7,extraout_s1_07);
    FUN_003330f0(aCStack_70,aCStack_80,aCStack_78);
    (*pcVar6)(uVar4,aCStack_70);
    FUN_007c5914(auStack_e8);
    FUN_0079a3fc(auStack_e0);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_9c);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar3 = (char *)FUN_007c5300(&DAT_009502cc);
    uVar5 = cocos2d::CCLabelAtlas::create("HOST",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar6 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar7,extraout_s1_08);
    FUN_00333110(0,extraout_s1_08,SUB84((double)local_98,0),local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_e0);
    FUN_007c6a60(auStack_e4,uVar5,auStack_e0);
    uVar5 = FUN_007c505c(auStack_e4);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_00333110(0,extraout_s1_08,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar7,extraout_s1_09);
    FUN_003330f0(aCStack_70,aCStack_80,aCStack_78);
    (*pcVar6)(uVar4,aCStack_70);
    FUN_007c5914(auStack_e4);
    FUN_0079a3fc(auStack_e0);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_9c);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),local_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar3 = (char *)FUN_007c5300(&DAT_009502cc);
    uVar5 = cocos2d::CCLabelAtlas::create("BACK",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x138) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar6 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x138);
    (**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar7,extraout_s1_10);
    FUN_00333110(0,extraout_s1_10,SUB84((double)local_98,0),local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x138) + 0x1fc))(*(undefined4 *)(this + 0x138));
    FUN_0079a3f4(auStack_e4);
    FUN_007c6a60(auStack_e0,uVar5,auStack_e4);
    uVar5 = FUN_007c505c(auStack_e0);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_00333110(0,extraout_s1_10,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar7,extraout_s1_11);
    FUN_003330f0(aCStack_70,aCStack_80,aCStack_78);
    (*pcVar6)(uVar4,aCStack_70);
    FUN_007c5914(auStack_e0);
    FUN_0079a3fc(auStack_e4);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x138),(int)local_9c);
    (**(code **)(**(int **)(this + 0x138) + 0x40))(*(undefined4 *)(this + 0x138),local_94);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    pcVar3 = (char *)FUN_007c5300(&DAT_009502cc);
    uVar5 = cocos2d::CCLabelAtlas::create("",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x124) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    pcVar3 = (char *)FUN_007c5300(&DAT_009502cc);
    uVar5 = cocos2d::CCLabelAtlas::create("",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    UpdateCurrentSessionLabel();
    UpdateStatusLabel(this);
    uVar5 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x140) = uVar5;
    (**(code **)(**(int **)(this + 0x140) + 0x4c))(*(undefined4 *)(this + 0x140),local_88);
    (**(code **)(**(int **)(this + 0x140) + 0x1a4))(*(undefined4 *)(this + 0x140),0x23);
    fVar7 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    local_30 = (code *)0x334ddd;
    local_2c = 0;
    cocos2d::CCNode::schedule((_func_void_float *)this,fVar7);
    uVar5 = 1;
    FUN_007c5914(auStack_ec);
  }
  else {
    uVar5 = 0;
  }
  return uVar5;
}

// ---- FindGameLayer::~FindGameLayer  @ 0x334ca0
/* WARNING: Removing unreachable block (ram,0x00334d7c) */
/* FindGameLayer::~FindGameLayer() */

FindGameLayer * __thiscall FindGameLayer::~FindGameLayer(FindGameLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00911760;
  *(undefined ***)(this + 0xe4) = &PTR__FindGameLayer_1_00911968;
  *(undefined **)(this + 0xe8) = &DAT_00911998;
  *(undefined **)(this + 0xec) = &DAT_009119a4;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- FindGameLayer::~FindGameLayer  @ 0x334d94
/* non-virtual thunk to FindGameLayer::~FindGameLayer() */

void __thiscall FindGameLayer::~FindGameLayer(FindGameLayer *this)

{
  ~FindGameLayer(this + -0xe4);
  return;
}

// ---- FindGameLayer::~FindGameLayer  @ 0x334d9c
/* FindGameLayer::~FindGameLayer() */

FindGameLayer * __thiscall FindGameLayer::~FindGameLayer(FindGameLayer *this)

{
  ~FindGameLayer(this);
  operator_delete(this);
  return this;
}

// ---- FindGameLayer::~FindGameLayer  @ 0x334db8
/* non-virtual thunk to FindGameLayer::~FindGameLayer() */

void __thiscall FindGameLayer::~FindGameLayer(FindGameLayer *this)

{
  ~FindGameLayer(this + -0xe4);
  return;
}

// ---- FindGameLayer::onExit  @ 0x334dc0
/* FindGameLayer::onExit() */

void __thiscall FindGameLayer::onExit(FindGameLayer *this)

{
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- FindGameLayer::sessionStep  @ 0x334ddc
/* FindGameLayer::sessionStep(float) */

void FindGameLayer::sessionStep(float param_1)

{
  bool bVar1;
  FindGameLayer *in_r0;
  CCDictionary *pCVar2;
  int iVar3;
  CCObject *pCVar4;
  uint uVar5;
  uint uVar6;
  CCDictElement *local_18;
  CCDictElement *local_14;
  
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(in_r0 + 0x130));
  NetworkManager::sharedNetworkManager();
  pCVar2 = (CCDictionary *)NetworkManager::getAvailableSessions();
  if ((pCVar2 == (CCDictionary *)0x0) || (iVar3 = cocos2d::CCDictionary::count(pCVar2), iVar3 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_18 = *(CCDictElement **)(pCVar2 + 0x14);
    if (*(int *)(pCVar2 + 0x14) == 0) {
      local_14 = (CCDictElement *)0x0;
    }
    else {
      local_14 = *(CCDictElement **)(*(int *)(pCVar2 + 0x14) + 0x110);
    }
    while (local_18 != (CCDictElement *)0x0) {
      pCVar4 = (CCObject *)cocos2d::CCDictElement::getObject(local_18);
      cocos2d::CCArray::addObject(*(CCArray **)(in_r0 + 0x130),pCVar4);
      local_18 = local_14;
      if (local_14 == (CCDictElement *)0x0) {
        local_14 = (CCDictElement *)0x0;
      }
      else {
        local_14 = *(CCDictElement **)(local_14 + 0x110);
      }
    }
  }
  uVar6 = *(uint *)(in_r0 + 0x134);
  NetworkManager::sharedNetworkManager();
  pCVar2 = (CCDictionary *)NetworkManager::getAvailableSessions();
  uVar5 = cocos2d::CCDictionary::count(pCVar2);
  if (uVar5 <= uVar6) {
    *(undefined4 *)(in_r0 + 0x134) = 0;
  }
  UpdateCurrentSessionLabel();
  UpdateStatusLabel(in_r0);
  return;
}

// ---- FindGameLayer::onJoin  @ 0x334ebc
/* FindGameLayer::onJoin(cocos2d::CCObject*) */

void FindGameLayer::onJoin(CCObject *param_1)

{
  bool bVar1;
  CCDictionary *this;
  uint uVar2;
  int iVar3;
  CCArray *this_00;
  NetworkManager *pNVar4;
  undefined4 uVar5;
  CCDirector *this_01;
  CCScene *pCVar6;
  CCObject *pCVar7;
  uint uVar8;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  CCDictionary *local_18;
  CCString *local_14;
  
  if (-1 < *(int *)(param_1 + 0x134)) {
    uVar8 = *(uint *)(param_1 + 0x134);
    NetworkManager::sharedNetworkManager();
    this = (CCDictionary *)NetworkManager::getAvailableSessions();
    uVar2 = cocos2d::CCDictionary::count(this);
    if (uVar8 < uVar2) {
      bVar1 = true;
      goto LAB_00334efa;
    }
  }
  bVar1 = false;
LAB_00334efa:
  if ((bVar1) && (param_1[0x108] == (CCObject)0x0)) {
    param_1[0x108] = (CCObject)0x1;
    s_bLocalHost = 0;
    Sound::playSound(sndEng,0xd);
    NetworkManager::sharedNetworkManager();
    local_18 = (CCDictionary *)NetworkManager::getAvailableSessions();
    if ((local_18 == (CCDictionary *)0x0) ||
       (iVar3 = cocos2d::CCDictionary::count(local_18), iVar3 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      this_00 = (CCArray *)cocos2d::CCDictionary::allKeys(local_18);
      local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,*(uint *)(param_1 + 0x134));
      pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      uVar5 = cocos2d::CCString::getCString(local_14);
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_1c,uVar5,auStack_20);
      NetworkManager::setSessionToJoin(pNVar4,auStack_1c);
      FUN_007c5914(auStack_1c);
      FUN_0079a3fc(auStack_20);
      FUN_007c5e70(&hostMapName,&DAT_007d7cac);
      this_01 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar6 = (CCScene *)LobbyLayer::scene();
      cocos2d::CCDirector::replaceScene(this_01,pCVar6);
    }
    else {
      FUN_0079a3f4(auStack_2c);
      FUN_007c6a60(auStack_20,"Connection Failed",auStack_2c);
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(auStack_1c,"Please exit and try again.",auStack_28);
      FUN_0079a3f4(auStack_30);
      FUN_007c6a60(asStack_24,&DAT_007d7cf4,auStack_30);
      pCVar7 = (CCObject *)cocos2d::CCString::create(asStack_24);
      uVar5 = cocos2d::CCArray::create(pCVar7,0);
      AMessageBox::showAlert(0,auStack_20,auStack_1c,uVar5,0,0);
      FUN_007c5914(asStack_24);
      FUN_0079a3fc(auStack_30);
      FUN_007c5914(auStack_1c);
      FUN_0079a3fc(auStack_28);
      FUN_007c5914(auStack_20);
      FUN_0079a3fc(auStack_2c);
    }
  }
  return;
}

// ---- FindGameLayer::onHost  @ 0x3350f0
/* FindGameLayer::onHost(cocos2d::CCObject*) */

void FindGameLayer::onHost(CCObject *param_1)

{
  NetworkManager *pNVar1;
  string *psVar2;
  undefined4 uVar3;
  CCString *this;
  CCDirector *pCVar4;
  CCScene *pCVar5;
  float fVar6;
  undefined1 auStack_1c [4];
  char acStack_18 [4];
  undefined1 auStack_14 [4];
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    if (gameType == 5) {
      if (s_bSinglePlayer != '\x01') {
        pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        NetworkManager::setMaxPlayers(pNVar1,2);
        psVar2 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
        FUN_0079a3f4(auStack_1c);
        FUN_007c6a60(auStack_14,"NOOBIE",auStack_1c);
        cocos2d::CCUserDefault::getStringForKey(acStack_18,psVar2);
        FUN_007c5914(auStack_14);
        FUN_0079a3fc(auStack_1c);
        pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        uVar3 = FUN_007c5300(acStack_18);
        this = (CCString *)cocos2d::CCString::createWithFormat("%s\'s Game",uVar3);
        uVar3 = cocos2d::CCString::getCString(this);
        FUN_0079a3f4(auStack_1c);
        FUN_007c6a60(auStack_14,uVar3,auStack_1c);
        NetworkManager::hostSession(pNVar1,auStack_14);
        FUN_007c5914(auStack_14);
        FUN_0079a3fc(auStack_1c);
        s_bLocalHost = 1;
        FUN_007c5914(acStack_18);
      }
      pCVar4 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar5 = DAT_00943318;
      fVar6 = (float)LobbyLayer::scene();
      pCVar5 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar6,pCVar5);
      cocos2d::CCDirector::replaceScene(pCVar4,pCVar5);
    }
    else {
      pCVar4 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar5 = DAT_00943318;
      fVar6 = (float)MapSelectLayer::scene();
      pCVar5 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar6,pCVar5);
      cocos2d::CCDirector::replaceScene(pCVar4,pCVar5);
    }
  }
  return;
}

// ---- FindGameLayer::onBack  @ 0x33529c
/* FindGameLayer::onBack(cocos2d::CCObject*) */

void __thiscall FindGameLayer::onBack(FindGameLayer *this,CCObject *param_1)

{
  NetworkManager *pNVar1;
  CCDirector *this_00;
  CCScene *pCVar2;
  float fVar3;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (this[0x108] == (FindGameLayer)0x0) {
    this[0x108] = (FindGameLayer)0x1;
    Sound::playSound(sndEng,0xd);
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,&DAT_007d7cac,auStack_18,auStack_18,param_1);
    NetworkManager::setSessionToJoin(pNVar1,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::endMatch(pNVar1);
    this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar2 = DAT_00943318;
    fVar3 = (float)MenuLayer::scene();
    pCVar2 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar3,pCVar2);
    cocos2d::CCDirector::replaceScene(this_00,pCVar2);
  }
  return;
}

// ---- FindGameLayer::onNextSession  @ 0x335360
/* FindGameLayer::onNextSession(cocos2d::CCObject*) */

void FindGameLayer::onNextSession(CCObject *param_1)

{
  uint uVar1;
  uint uVar2;
  
  *(int *)(param_1 + 0x134) = *(int *)(param_1 + 0x134) + 1;
  uVar2 = *(uint *)(param_1 + 0x134);
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x130));
  if (uVar1 <= uVar2) {
    *(undefined4 *)(param_1 + 0x134) = 0;
  }
  Sound::playSound(sndEng,0xe);
  UpdateCurrentSessionLabel();
  return;
}

// ---- FindGameLayer::onPrevSession  @ 0x3353c8
/* FindGameLayer::onPrevSession(cocos2d::CCObject*) */

void FindGameLayer::onPrevSession(CCObject *param_1)

{
  int iVar1;
  
  *(int *)(param_1 + 0x134) = *(int *)(param_1 + 0x134) + -1;
  if (*(int *)(param_1 + 0x134) < 0) {
    iVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x130));
    *(int *)(param_1 + 0x134) = iVar1 + -1;
  }
  Sound::playSound(sndEng,0xd);
  UpdateCurrentSessionLabel();
  return;
}

// ---- FindGameLayer::UpdateCurrentSessionLabel  @ 0x335428
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00335542 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FindGameLayer::UpdateCurrentSessionLabel() */

void FindGameLayer::UpdateCurrentSessionLabel(void)

{
  int in_r0;
  int iVar1;
  CCString *this;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float fVar5;
  undefined4 in_s1;
  float extraout_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined1 auStack_8c [4];
  float local_88;
  float local_84;
  CCPoint aCStack_80 [8];
  undefined1 local_78 [16];
  undefined1 auStack_68 [16];
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  FUN_0079a3f4(local_28);
  FUN_007c6a60(auStack_8c,"(SEARCHING...)",local_28);
  FUN_0079a3fc(local_28);
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x130));
  if (iVar1 != 0) {
    this = (CCString *)
           cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r0 + 0x130),*(uint *)(in_r0 + 0x134));
    uVar2 = cocos2d::CCString::getCString(this);
    FUN_007c5e70(auStack_8c,uVar2);
    FUN_007c64e8(local_78,auStack_8c);
    FUN_00333e74(auStack_68,local_78);
    FUN_007c52e8(auStack_8c,auStack_68);
    FUN_007c5914(auStack_68);
    FUN_007c5914(local_78);
  }
  cocos2d::CCSize::CCSize((CCSize *)&local_88,(CCSize *)&screenSize);
  pcVar3 = *(code **)(**(int **)(in_r0 + 0x124) + 0x1f8);
  uVar4 = *(undefined4 *)(in_r0 + 0x124);
  uVar2 = FUN_007c5300(auStack_8c);
  (*pcVar3)(uVar4,uVar2);
  pcVar3 = *(code **)(**(int **)(in_r0 + 0x124) + 0x4c);
  uVar4 = *(undefined4 *)(in_r0 + 0x124);
  FUN_00333110(SUB84((double)(local_88 / 2.0),0),in_s1,SUB84((double)(local_84 / 2.0),0),local_58);
  FUN_00333110(0,in_s1,0,local_48);
  FUN_00333138(local_58[0],in_s1,local_50,in_s3,local_48[0],in_s5,local_40,local_78);
  uVar2 = FUN_007c505c(auStack_8c);
  VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
  FUN_00333110(SUB84((double)(local_88 / 2.0),0),in_s1,SUB84((double)(local_84 / 2.0),0),local_38);
  FUN_00333110(0,in_s1,0,local_28);
  fVar5 = (float)FUN_00333138(local_38[0],in_s1,local_30,in_s3,local_28[0],in_s5,local_20,auStack_68
                             );
  cocos2d::CCPoint::CCPoint(aCStack_80,fVar5,extraout_s1);
  (*pcVar3)(uVar4,aCStack_80);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x124),0x18);
  (**(code **)(**(int **)(in_r0 + 0x124) + 0x40))(*(undefined4 *)(in_r0 + 0x124),0x3ee66666);
  FUN_007c5914(auStack_8c);
  return;
}

// ---- FindGameLayer::UpdateStatusLabel  @ 0x3356c8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003357fc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FindGameLayer::UpdateStatusLabel() */

void __thiscall FindGameLayer::UpdateStatusLabel(FindGameLayer *this)

{
  int iVar1;
  char *pcVar2;
  undefined4 uVar3;
  CCString *this_00;
  code *pcVar4;
  undefined4 uVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s1;
  float extraout_s1_00;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  CCSize local_50 [8];
  float local_48;
  float local_44;
  CCPoint aCStack_40 [8];
  undefined1 local_38 [16];
  undefined1 auStack_28 [20];
  
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_58,"FOUND %i GAMES:",auStack_28);
  FUN_0079a3fc(auStack_28);
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x130));
  if (iVar1 == 1) {
    FUN_007c5e70(auStack_58,"FOUND %i GAME:");
  }
  pcVar2 = (char *)FUN_007c5300(auStack_58);
  uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x130));
  this_00 = (CCString *)cocos2d::CCString::createWithFormat(pcVar2,uVar3);
  uVar3 = cocos2d::CCString::getCString(this_00);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_54,uVar3,auStack_28);
  FUN_0079a3fc(auStack_28);
  fVar6 = (float)cocos2d::CCSize::CCSize(local_50,(CCSize *)&screenSize);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar6,extraout_s1);
  pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x118);
  uVar3 = FUN_007c5300(auStack_54);
  (*pcVar4)(uVar5,uVar3);
  pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x118);
  FUN_00333110(SUB84((double)local_48,0),extraout_s1,SUB84((double)(local_44 + 25.0),0),local_38);
  uVar3 = FUN_007c505c(auStack_54);
  VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_00333110(SUB84((double)local_48,0),extraout_s1,
                              SUB84((double)(local_44 + 25.0),0),auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_40,fVar6,extraout_s1_00);
  (*pcVar4)(uVar5,aCStack_40);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),0x18);
  (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),0x3f0ccccd);
  FUN_007c5914(auStack_54);
  FUN_007c5914(auStack_58);
  return;
}
