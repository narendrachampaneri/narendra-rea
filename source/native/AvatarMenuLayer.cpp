// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- AvatarMenuLayer::create  @ 0x3015f4
/* AvatarMenuLayer::create() */

AvatarMenuLayer * AvatarMenuLayer::create(void)

{
  bool bVar1;
  AvatarMenuLayer *this;
  int iVar2;
  
  this = operator_new(0x140);
  AvatarMenuLayer(this);
  if ((this == (AvatarMenuLayer *)0x0) ||
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
    if (this != (AvatarMenuLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AvatarMenuLayer *)0x0;
  }
  return this;
}

// ---- AvatarMenuLayer::AvatarMenuLayer  @ 0x301664
/* AvatarMenuLayer::AvatarMenuLayer() */

AvatarMenuLayer * __thiscall AvatarMenuLayer::AvatarMenuLayer(AvatarMenuLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090b390;
  *(undefined ***)(this + 0xe4) = &PTR__AvatarMenuLayer_1_0090b598;
  *(undefined **)(this + 0xe8) = &DAT_0090b5c8;
  *(undefined **)(this + 0xec) = &DAT_0090b5d4;
  return this;
}

// ---- AvatarMenuLayer::scene  @ 0x3016bc
/* AvatarMenuLayer::scene() */

int * AvatarMenuLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- AvatarMenuLayer::init  @ 0x3016f0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00301d98 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* AvatarMenuLayer::init() */

bool __thiscall AvatarMenuLayer::init(AvatarMenuLayer *this)

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
  float extraout_s1_15;
  undefined1 auStack_f4 [3];
  char local_f1;
  undefined1 auStack_f0 [4];
  undefined4 local_ec;
  undefined4 local_e8;
  CCNode *local_e4;
  CCNode *local_e0;
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
  CCMenuItem *local_a8;
  CCMenuItem *local_a4;
  undefined4 local_a0;
  float local_9c;
  float local_98;
  CCMenuItem *local_94;
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
  CCPoint local_40 [16];
  code *local_30;
  undefined4 local_2c;
  
  local_f1 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_f1 == '\x01';
  if (bVar5) {
    this[0x108] = (AvatarMenuLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_90,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_88,fVar6,extraout_s1);
    local_ec = 0;
    local_e8 = 0x42400000;
    local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_bot.png");
    local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_bot.png");
    local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_bc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("DAad.png");
    local_b8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("DAad.png");
    local_68 = (code *)0x302731;
    local_64 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e4,local_e0,(CCObject *)this,(_func_void_CCObject_ptr *)0x302731);
    uVar1 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0x128) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_00);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_60 = (code *)0x302795;
    local_5c = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x302795);
    uVar1 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 300) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar4 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar1 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_01);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    local_58 = (code *)0x30285d;
    local_54 = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x30285d);
    uVar1 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x134) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar4 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x134);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_02);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    local_50 = (code *)0x3027f9;
    local_4c = 0;
    local_a8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_cc,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3027f9);
    uVar1 = cocos2d::CCMenu::create(local_a8,0);
    *(undefined4 *)(this + 0x130) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_03);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    local_48 = (code *)0x3026cd;
    local_44 = 0;
    local_a4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c4,local_c0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3026cd);
    uVar1 = cocos2d::CCMenu::create(local_a4,0);
    *(undefined4 *)(this + 0x138) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar4 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_04);
    (*pcVar4)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    local_a0 = 0x3f0ccccd;
    local_9c = 24.0;
    local_98 = -8.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_0094f82c);
    uVar1 = cocos2d::CCLabelAtlas::create("STORE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_9c);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_a0);
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_05);
    FUN_00300874(0,extraout_s1_05,SUB84((double)local_98,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
    FUN_0079a3f4(auStack_f4);
    FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
    uVar1 = FUN_007c505c(auStack_f0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00300874(0,extraout_s1_05,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_06);
    FUN_00300854(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_f0);
    FUN_0079a3fc(auStack_f4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    pcVar2 = (char *)FUN_007c5300(&DAT_0094f82c);
    uVar1 = cocos2d::CCLabelAtlas::create("AVATAR",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_9c);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_a0);
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    fVar6 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_07);
    FUN_00300874(0,extraout_s1_07,SUB84((double)local_98,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(auStack_f4);
    FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
    uVar1 = FUN_007c505c(auStack_f0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00300874(0,extraout_s1_07,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_08);
    FUN_00300854(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_f0);
    FUN_0079a3fc(auStack_f4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    pcVar2 = (char *)FUN_007c5300(&DAT_0094f82c);
    uVar1 = cocos2d::CCLabelAtlas::create("CONTROLS",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_9c);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_a0);
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x130) + 0x50))(*(undefined4 *)(this + 0x130));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x130) + 0x50))(*(undefined4 *)(this + 0x130));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_09);
    FUN_00300874(0,extraout_s1_09,SUB84((double)local_98,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_f4);
    FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
    uVar1 = FUN_007c505c(auStack_f0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00300874(0,extraout_s1_09,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_10);
    FUN_00300854(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_f0);
    FUN_0079a3fc(auStack_f4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    pcVar2 = (char *)FUN_007c5300(&DAT_0094f82c);
    uVar1 = cocos2d::CCLabelAtlas::create("CONFIGURE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_9c);
    (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_a0);
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x120);
    (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_11);
    FUN_00300874(0,extraout_s1_11,SUB84((double)local_98,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
    FUN_0079a3f4(auStack_f4);
    FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
    uVar1 = FUN_007c505c(auStack_f0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00300874(0,extraout_s1_11,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_12);
    FUN_00300854(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_f0);
    FUN_0079a3fc(auStack_f4);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    pcVar2 = (char *)FUN_007c5300(&DAT_0094f82c);
    uVar1 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_13);
    FUN_00300874(0,extraout_s1_13,SUB84((double)local_98,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_f4);
    FUN_007c6a60(auStack_f0,uVar1,auStack_f4);
    uVar1 = FUN_007c505c(auStack_f0);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00300874(0,extraout_s1_13,SUB84((double)local_98,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_14);
    FUN_00300854(auStack_70,aCStack_80,aCStack_78);
    (*pcVar4)(uVar3,auStack_70);
    FUN_007c5914(auStack_f0);
    FUN_0079a3fc(auStack_f4);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),local_a0);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_9c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    local_30 = (code *)0x3026a1;
    local_2c = 0;
    local_94 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_bc,local_b8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3026a1);
    uVar1 = cocos2d::CCMenu::create(local_94,0);
    *(undefined4 *)(this + 0x13c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    pcVar4 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x13c);
    cocos2d::CCPoint::CCPoint(local_40,fVar6,extraout_s1_15);
    (*pcVar4)(uVar1,local_40);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),local_88);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
  }
  return bVar5;
}

// ---- AvatarMenuLayer::~AvatarMenuLayer  @ 0x302580
/* WARNING: Removing unreachable block (ram,0x0030265a) */
/* AvatarMenuLayer::~AvatarMenuLayer() */

AvatarMenuLayer * __thiscall AvatarMenuLayer::~AvatarMenuLayer(AvatarMenuLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090b390;
  *(undefined ***)(this + 0xe4) = &PTR__AvatarMenuLayer_1_0090b598;
  *(undefined **)(this + 0xe8) = &DAT_0090b5c8;
  *(undefined **)(this + 0xec) = &DAT_0090b5d4;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- AvatarMenuLayer::~AvatarMenuLayer  @ 0x302674
/* non-virtual thunk to AvatarMenuLayer::~AvatarMenuLayer() */

void __thiscall AvatarMenuLayer::~AvatarMenuLayer(AvatarMenuLayer *this)

{
  ~AvatarMenuLayer(this + -0xe4);
  return;
}

// ---- AvatarMenuLayer::~AvatarMenuLayer  @ 0x30267c
/* AvatarMenuLayer::~AvatarMenuLayer() */

AvatarMenuLayer * __thiscall AvatarMenuLayer::~AvatarMenuLayer(AvatarMenuLayer *this)

{
  ~AvatarMenuLayer(this);
  operator_delete(this);
  return this;
}

// ---- AvatarMenuLayer::~AvatarMenuLayer  @ 0x302698
/* non-virtual thunk to AvatarMenuLayer::~AvatarMenuLayer() */

void __thiscall AvatarMenuLayer::~AvatarMenuLayer(AvatarMenuLayer *this)

{
  ~AvatarMenuLayer(this + -0xe4);
  return;
}

// ---- AvatarMenuLayer::onDA  @ 0x3026a0
/* AvatarMenuLayer::onDA(cocos2d::CCObject*) */

void AvatarMenuLayer::onDA(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDoodleArmyAppLink();
  return;
}

// ---- AvatarMenuLayer::onBack  @ 0x3026cc
/* AvatarMenuLayer::onBack(cocos2d::CCObject*) */

void AvatarMenuLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943224;
    fVar2 = (float)MenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarMenuLayer::onStore  @ 0x302730
/* AvatarMenuLayer::onStore(cocos2d::CCObject*) */

void AvatarMenuLayer::onStore(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943224;
    fVar2 = (float)StoreLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarMenuLayer::onSkin  @ 0x302794
/* AvatarMenuLayer::onSkin(cocos2d::CCObject*) */

void AvatarMenuLayer::onSkin(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943224;
    fVar2 = (float)AvatarLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarMenuLayer::onControls  @ 0x3027f8
/* AvatarMenuLayer::onControls(cocos2d::CCObject*) */

void AvatarMenuLayer::onControls(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943224;
    fVar2 = (float)ControlsLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarMenuLayer::onConfig  @ 0x30285c
/* AvatarMenuLayer::onConfig(cocos2d::CCObject*) */

void AvatarMenuLayer::onConfig(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943224;
    fVar2 = (float)ConfigLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
