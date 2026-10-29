// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- ControlsLayer::create  @ 0x31636c
/* ControlsLayer::create() */

ControlsLayer * ControlsLayer::create(void)

{
  bool bVar1;
  ControlsLayer *this;
  int iVar2;
  
  this = operator_new(0x160);
  ControlsLayer(this);
  if ((this == (ControlsLayer *)0x0) ||
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
    if (this != (ControlsLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ControlsLayer *)0x0;
  }
  return this;
}

// ---- ControlsLayer::ControlsLayer  @ 0x3163dc
/* ControlsLayer::ControlsLayer() */

ControlsLayer * __thiscall ControlsLayer::ControlsLayer(ControlsLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090f948;
  *(undefined ***)(this + 0xe4) = &PTR__ControlsLayer_1_0090fb50;
  *(undefined **)(this + 0xe8) = &DAT_0090fb80;
  *(undefined **)(this + 0xec) = &DAT_0090fb8c;
  return this;
}

// ---- ControlsLayer::scene  @ 0x316434
/* ControlsLayer::scene() */

int * ControlsLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- ControlsLayer::init  @ 0x316468
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00316958 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ControlsLayer::init() */

bool __thiscall ControlsLayer::init(ControlsLayer *this)

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
  float extraout_s1_16;
  float extraout_s1_17;
  float extraout_s1_18;
  float extraout_s1_19;
  float extraout_s1_20;
  float extraout_s1_21;
  float extraout_s1_22;
  float extraout_s1_23;
  float extraout_s1_24;
  float extraout_s1_25;
  undefined1 auStack_108 [3];
  char local_105;
  undefined1 auStack_104 [4];
  float local_100;
  float local_fc;
  float local_f8;
  CCNode *local_f4;
  CCNode *local_f0;
  CCNode *local_ec;
  CCNode *local_e8;
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
  CCMenuItem *local_bc;
  CCMenuItem *local_b8;
  CCMenuItem *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  CCMenuItem *local_a8;
  CCMenuItem *local_a4;
  CCSize local_a0 [8];
  float local_98;
  float local_94;
  CCPoint aCStack_90 [8];
  CCPoint aCStack_88 [8];
  CCPoint aCStack_80 [8];
  code *local_78;
  undefined4 local_74;
  code *local_70;
  undefined4 local_6c;
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
  
  local_105 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar5 = local_105 == '\x01';
  if (bVar5) {
    this[0x108] = (ControlsLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_a0,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_98,fVar6,extraout_s1);
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x15c) = uVar1;
    (**(code **)(**(int **)(this + 0x15c) + 0x4c))(*(undefined4 *)(this + 0x15c),&local_98);
    (**(code **)(**(int **)(this + 0x15c) + 0x1a4))(*(undefined4 *)(this + 0x15c),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x15c));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("moveStick.png");
    *(undefined4 *)(this + 0x10c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    pcVar4 = *(code **)(**(int **)(this + 0x10c) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_00);
    fVar6 = (float)(*pcVar4)(uVar1,aCStack_30);
    pcVar4 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint(local_40,fVar6,extraout_s1_01);
    FUN_003155cc(aCStack_30,&local_98,local_40);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("moveStick.png");
    *(undefined4 *)(this + 0x110) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_02);
    fVar6 = (float)(*pcVar4)(uVar1,aCStack_30);
    pcVar4 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(local_40,fVar6,extraout_s1_03);
    FUN_003155cc(aCStack_30,&local_98,local_40);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    local_100 = -8.0;
    local_fc = 24.0;
    local_f8 = 0.55;
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("MOVEMENT",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x10c) + 0x50))(*(undefined4 *)(this + 0x10c));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_58,fVar6,extraout_s1_04);
    FUN_003155ec(0,extraout_s1_04,SUB84((double)local_100,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(&local_68);
    FUN_007c6a60(&local_60,uVar1,&local_68);
    uVar1 = FUN_007c505c(&local_60);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003155ec(0,extraout_s1_04,SUB84((double)local_100,0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,fVar6,extraout_s1_05);
    FUN_003155cc(&local_48,&local_58,&local_50);
    (*pcVar4)(uVar3,&local_48);
    FUN_007c5914(&local_60);
    FUN_0079a3fc(&local_68);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_fc);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_f8);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("AIMING",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x110) + 0x50))(*(undefined4 *)(this + 0x110));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x110) + 0x50))(*(undefined4 *)(this + 0x110));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_58,fVar6,extraout_s1_06);
    FUN_003155ec(0,extraout_s1_06,SUB84((double)local_100,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(&local_68);
    FUN_007c6a60(&local_60,uVar1,&local_68);
    uVar1 = FUN_007c505c(&local_60);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003155ec(0,extraout_s1_06,SUB84((double)local_100,0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,fVar6,extraout_s1_07);
    FUN_003155cc(&local_48,&local_58,&local_50);
    (*pcVar4)(uVar3,&local_48);
    FUN_007c5914(&local_60);
    FUN_0079a3fc(&local_68);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_fc);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_f8);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    local_f4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_f0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_ec = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_big.png");
    local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_big.png");
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_78 = (code *)0x318581;
    local_74 = 0;
    uVar3 = 0;
    local_bc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_f4,local_f0,(CCObject *)this,(_func_void_CCObject_ptr *)0x318581);
    uVar1 = cocos2d::CCMenu::create(local_bc,0);
    *(undefined4 *)(this + 0x11c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint(local_40,fVar6,extraout_s1_08);
    FUN_003155cc(aCStack_30,&local_98,local_40,local_40,uVar3);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_f8);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_fc);
    (**(code **)(**(int **)(this + 0x120) + 0x1f8))(*(undefined4 *)(this + 0x120),&DAT_007d59bc);
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x120);
    uVar1 = (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    fVar6 = (float)(*pcVar4)(uVar3,uVar1);
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_09);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    local_70 = (code *)0x3185f5;
    local_6c = 0;
    local_b8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_ec,local_e8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3185f5);
    uVar1 = cocos2d::CCMenu::create(local_b8,0);
    *(undefined4 *)(this + 0x148) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar4 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_10);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
    local_68 = (code *)0x318659;
    local_64 = 0;
    uVar3 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e4,local_e0,(CCObject *)this,(_func_void_CCObject_ptr *)0x318659);
    uVar1 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0x150) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar4 = *(code **)(**(int **)(this + 0x150) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint(local_40,fVar6,extraout_s1_11);
    FUN_003155cc(aCStack_30,&local_98,local_40,local_40,uVar3);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x150));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x14c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x14c),(int)local_fc);
    (**(code **)(**(int **)(this + 0x14c) + 0x40))(*(undefined4 *)(this + 0x14c),local_f8);
    (**(code **)(**(int **)(this + 0x14c) + 0x1f8))(*(undefined4 *)(this + 0x14c),"PLACEMENT");
    pcVar4 = *(code **)(**(int **)(this + 0x14c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x14c);
    uVar1 = (**(code **)(**(int **)(this + 0x150) + 0x50))(*(undefined4 *)(this + 0x150));
    fVar6 = (float)(*pcVar4)(uVar3,uVar1);
    pcVar4 = *(code **)(**(int **)(this + 0x14c) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x14c);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_12);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x14c));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x144) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x144),(int)local_fc);
    (**(code **)(**(int **)(this + 0x144) + 0x40))(*(undefined4 *)(this + 0x144),local_f8);
    (**(code **)(**(int **)(this + 0x144) + 0x1f8))(*(undefined4 *)(this + 0x144),&DAT_007d59d0);
    pcVar4 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x144);
    uVar1 = (**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
    fVar6 = (float)(*pcVar4)(uVar3,uVar1);
    pcVar4 = *(code **)(**(int **)(this + 0x144) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_13);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    local_60 = (code *)0x3186bd;
    local_5c = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3186bd);
    uVar1 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0x124) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar4 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_14);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    local_58 = (code *)0x3188ad;
    local_54 = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_cc,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3188ad);
    uVar1 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x128) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_15);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("NONE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 300) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar4 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar3 = *(undefined4 *)(this + 300);
    FUN_003155ec(SUB84((double)(local_98 - 128.0),0),extraout_s1_15,
                 SUB84((double)(local_94 + 20.0 + local_100),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 300) + 0x1fc))(*(undefined4 *)(this + 300));
    FUN_0079a3f4(aCStack_80);
    FUN_007c6a60(&local_50,uVar1,aCStack_80);
    uVar1 = FUN_007c505c(&local_50);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003155ec(SUB84((double)(local_98 - 128.0),0),extraout_s1_15,
                                SUB84((double)(local_94 + 20.0 + local_100),0),aCStack_30);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar6,extraout_s1_16);
    (*pcVar4)(uVar3,&local_48);
    FUN_007c5914(&local_50);
    FUN_0079a3fc(aCStack_80);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 300),(int)local_fc);
    (**(code **)(**(int **)(this + 300) + 0x40))(*(undefined4 *)(this + 300),local_f8);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    local_50 = (code *)0x3187b5;
    local_4c = 0;
    local_a8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3187b5);
    uVar1 = cocos2d::CCMenu::create(local_a8,0);
    *(undefined4 *)(this + 0x134) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar4 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x134);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_17);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    local_48 = (code *)0x3189a5;
    local_44 = 0;
    local_a4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c4,local_c0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3189a5);
    uVar1 = cocos2d::CCMenu::create(local_a4,0);
    *(undefined4 *)(this + 0x138) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar4 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_18);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("NONE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x13c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    pcVar4 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x13c);
    FUN_003155ec(SUB84((double)(local_98 + 128.0),0),extraout_s1_18,
                 SUB84((double)(local_94 + 20.0 + local_100),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x13c) + 0x1fc))(*(undefined4 *)(this + 0x13c));
    FUN_0079a3f4(aCStack_90);
    FUN_007c6a60(aCStack_88,uVar1,aCStack_90);
    uVar1 = FUN_007c505c(aCStack_88);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003155ec(SUB84((double)(local_98 + 128.0),0),extraout_s1_18,
                                SUB84((double)(local_94 + 20.0 + local_100),0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_19);
    (*pcVar4)(uVar3,aCStack_80);
    FUN_007c5914(aCStack_88);
    FUN_0079a3fc(aCStack_90);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x13c),(int)local_fc);
    (**(code **)(**(int **)(this + 0x13c) + 0x40))(*(undefined4 *)(this + 0x13c),local_f8);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
    local_f8 = local_f8 / 2.0;
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("INVERT:",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x130) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x130);
    (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    fVar6 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_20);
    FUN_003155ec(0,extraout_s1_20,SUB84((double)(local_100 * -2.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x130) + 0x1fc))(*(undefined4 *)(this + 0x130));
    FUN_0079a3f4(auStack_108);
    FUN_007c6a60(auStack_104,uVar1,auStack_108);
    uVar1 = FUN_007c505c(auStack_104);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003155ec(0,extraout_s1_20,SUB84((double)(local_100 * -2.0),0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_21);
    FUN_003155cc(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar4)(uVar3,aCStack_80);
    FUN_007c5914(auStack_104);
    FUN_0079a3fc(auStack_108);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x130),(int)local_fc);
    fVar6 = (float)(**(code **)(**(int **)(this + 0x130) + 0x40))
                             (*(undefined4 *)(this + 0x130),local_f8);
    pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_22);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500bc);
    uVar1 = cocos2d::CCLabelAtlas::create("INVERT:",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x140) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    pcVar4 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x140);
    (**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_23);
    FUN_003155ec(0,extraout_s1_23,SUB84((double)(local_100 * -2.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x140) + 0x1fc))(*(undefined4 *)(this + 0x140));
    FUN_0079a3f4(auStack_108);
    FUN_007c6a60(auStack_104,uVar1,auStack_108);
    uVar1 = FUN_007c505c(auStack_104);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003155ec(0,extraout_s1_23,SUB84((double)(local_100 * -2.0),0),aCStack_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_24);
    FUN_003155cc(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar4)(uVar3,aCStack_80);
    FUN_007c5914(auStack_104);
    FUN_0079a3fc(auStack_108);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x140),(int)local_fc);
    fVar6 = (float)(**(code **)(**(int **)(this + 0x140) + 0x40))
                             (*(undefined4 *)(this + 0x140),local_f8);
    pcVar4 = *(code **)(**(int **)(this + 0x140) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar6,extraout_s1_25);
    (*pcVar4)(uVar1,aCStack_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    updateLabels();
  }
  return bVar5;
}

// ---- ControlsLayer::~ControlsLayer  @ 0x317a80
/* WARNING: Removing unreachable block (ram,0x00317b94) */
/* ControlsLayer::~ControlsLayer() */

ControlsLayer * __thiscall ControlsLayer::~ControlsLayer(ControlsLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090f948;
  *(undefined ***)(this + 0xe4) = &PTR__ControlsLayer_1_0090fb50;
  *(undefined **)(this + 0xe8) = &DAT_0090fb80;
  *(undefined **)(this + 0xec) = &DAT_0090fb8c;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- ControlsLayer::~ControlsLayer  @ 0x317bac
/* non-virtual thunk to ControlsLayer::~ControlsLayer() */

void __thiscall ControlsLayer::~ControlsLayer(ControlsLayer *this)

{
  ~ControlsLayer(this + -0xe4);
  return;
}

// ---- ControlsLayer::~ControlsLayer  @ 0x317bb4
/* ControlsLayer::~ControlsLayer() */

ControlsLayer * __thiscall ControlsLayer::~ControlsLayer(ControlsLayer *this)

{
  ~ControlsLayer(this);
  operator_delete(this);
  return this;
}

// ---- ControlsLayer::~ControlsLayer  @ 0x317bd0
/* non-virtual thunk to ControlsLayer::~ControlsLayer() */

void __thiscall ControlsLayer::~ControlsLayer(ControlsLayer *this)

{
  ~ControlsLayer(this + -0xe4);
  return;
}

// ---- ControlsLayer::updateLabels  @ 0x317bd8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00317c3a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ControlsLayer::updateLabels() */

void ControlsLayer::updateLabels(void)

{
  int in_r0;
  CCUserDefault *pCVar1;
  char *pcVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 uVar5;
  uint in_fpscr;
  float fVar6;
  undefined4 in_s1;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  undefined1 auStack_9c [4];
  undefined1 auStack_98 [4];
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  float local_80;
  float local_7c;
  undefined4 local_78;
  int local_74;
  int local_70;
  int local_6c;
  float local_68;
  float local_64;
  CCPoint aCStack_60 [8];
  CCPoint aCStack_58 [8];
  CCPoint aCStack_50 [8];
  double local_48;
  double local_40;
  undefined1 local_38 [16];
  undefined1 auStack_28 [16];
  
  local_80 = -8.0;
  local_7c = 24.0;
  local_78 = 0x3f0ccccd;
  cocos2d::CCSize::CCSize((CCSize *)&local_68,(CCSize *)&screenSize);
  FUN_003155ec(SUB84((double)(local_68 / 2.0),0),in_s1,SUB84((double)(local_64 / 2.0),0),&local_48);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  local_74 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
  if (local_74 == 0) {
    (**(code **)(**(int **)(in_r0 + 0x114) + 0x1f8))(*(undefined4 *)(in_r0 + 0x114),"MOVEMENT");
    (**(code **)(**(int **)(in_r0 + 0x118) + 0x1f8))(*(undefined4 *)(in_r0 + 0x118),"AIMING");
  }
  else {
    (**(code **)(**(int **)(in_r0 + 0x114) + 0x1f8))(*(undefined4 *)(in_r0 + 0x114),"AIMING");
    (**(code **)(**(int **)(in_r0 + 0x118) + 0x1f8))(*(undefined4 *)(in_r0 + 0x118),"MOVEMENT");
  }
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_9c,"InputMoveType",auStack_28);
  FUN_0079a3fc(auStack_28);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_98,"InputAimType",auStack_28);
  FUN_0079a3fc(auStack_28);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_94,"InputMoveInvert",auStack_28);
  FUN_0079a3fc(auStack_28);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_90,"InputAimInvert",auStack_28);
  FUN_0079a3fc(auStack_28);
  if (local_74 == 1) {
    FUN_007c5e70(auStack_9c,"InputAimType");
    FUN_007c5e70(auStack_98,"InputMoveType");
    FUN_007c5e70(auStack_94,"InputAimInvert");
    FUN_007c5e70(auStack_90,"InputMoveInvert");
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar2 = (char *)FUN_007c5300(auStack_94);
  local_70 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,pcVar2,0);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar2 = (char *)FUN_007c5300(auStack_90);
  local_6c = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,pcVar2,0);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_8c,&DAT_007d59d8,auStack_28);
  FUN_0079a3fc(auStack_28);
  if (local_70 == 1) {
    FUN_007c5e70(auStack_8c,&DAT_007d5a34);
  }
  else if (local_70 == 2) {
    FUN_007c5e70(auStack_8c,&DAT_007d5a38);
  }
  else if (local_70 == 3) {
    FUN_007c5e70(auStack_8c,&DAT_007d5a3c);
  }
  pcVar4 = *(code **)(**(int **)(in_r0 + 300) + 0x1f8);
  uVar5 = *(undefined4 *)(in_r0 + 300);
  uVar3 = FUN_007c5300(auStack_8c);
  (*pcVar4)(uVar5,uVar3);
  FUN_007c5e70(auStack_8c,&DAT_007d59d8);
  if (local_6c == 1) {
    FUN_007c5e70(auStack_8c,&DAT_007d5a34);
  }
  else if (local_6c == 2) {
    FUN_007c5e70(auStack_8c,&DAT_007d5a38);
  }
  else if (local_6c == 3) {
    FUN_007c5e70(auStack_8c,&DAT_007d5a3c);
  }
  pcVar4 = *(code **)(**(int **)(in_r0 + 0x13c) + 0x1f8);
  uVar5 = *(undefined4 *)(in_r0 + 0x13c);
  uVar3 = FUN_007c5300(auStack_8c);
  (*pcVar4)(uVar5,uVar3);
  pcVar4 = *(code **)(**(int **)(in_r0 + 0x114) + 0x4c);
  uVar5 = *(undefined4 *)(in_r0 + 0x114);
  (**(code **)(**(int **)(in_r0 + 0x10c) + 0x50))(*(undefined4 *)(in_r0 + 0x10c));
  fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x10c) + 0x50))(*(undefined4 *)(in_r0 + 0x10c));
  cocos2d::CCPoint::CCPoint(aCStack_60,fVar6,extraout_s1);
  FUN_003155ec(0,extraout_s1,SUB84((double)local_80,0),local_38);
  uVar3 = (**(code **)(**(int **)(in_r0 + 0x114) + 0x1fc))(*(undefined4 *)(in_r0 + 0x114));
  FUN_0079a3f4(auStack_84);
  FUN_007c6a60(auStack_88,uVar3,auStack_84);
  uVar3 = FUN_007c505c(auStack_88);
  VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003155ec(0,extraout_s1,SUB84((double)local_80,0),auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_58,fVar6,extraout_s1_00);
  FUN_003155cc(aCStack_50,aCStack_60,aCStack_58);
  (*pcVar4)(uVar5,aCStack_50);
  FUN_007c5914(auStack_88);
  FUN_0079a3fc(auStack_84);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x114),(int)local_7c);
  (**(code **)(**(int **)(in_r0 + 0x114) + 0x40))(*(undefined4 *)(in_r0 + 0x114),local_78);
  pcVar4 = *(code **)(**(int **)(in_r0 + 0x118) + 0x4c);
  uVar5 = *(undefined4 *)(in_r0 + 0x118);
  (**(code **)(**(int **)(in_r0 + 0x110) + 0x50))(*(undefined4 *)(in_r0 + 0x110));
  fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x110) + 0x50))(*(undefined4 *)(in_r0 + 0x110));
  cocos2d::CCPoint::CCPoint(aCStack_60,fVar6,extraout_s1_01);
  FUN_003155ec(0,extraout_s1_01,SUB84((double)local_80,0),local_38);
  uVar3 = (**(code **)(**(int **)(in_r0 + 0x118) + 0x1fc))(*(undefined4 *)(in_r0 + 0x118));
  FUN_0079a3f4(auStack_88);
  FUN_007c6a60(auStack_84,uVar3,auStack_88);
  uVar3 = FUN_007c505c(auStack_84);
  VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003155ec(0,extraout_s1_01,SUB84((double)local_80,0),auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_58,fVar6,extraout_s1_02);
  FUN_003155cc(aCStack_50,aCStack_60,aCStack_58);
  (*pcVar4)(uVar5,aCStack_50);
  FUN_007c5914(auStack_84);
  FUN_0079a3fc(auStack_88);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x118),(int)local_7c);
  (**(code **)(**(int **)(in_r0 + 0x118) + 0x40))(*(undefined4 *)(in_r0 + 0x118),local_78);
  pcVar4 = *(code **)(**(int **)(in_r0 + 300) + 0x4c);
  uVar5 = *(undefined4 *)(in_r0 + 300);
  FUN_003155ec(SUB84(local_48 - 128.0,0),extraout_s1_02,SUB84(local_40 + 20.0 + (double)local_80,0),
               local_38);
  uVar3 = (**(code **)(**(int **)(in_r0 + 300) + 0x1fc))(*(undefined4 *)(in_r0 + 300));
  FUN_0079a3f4(aCStack_58);
  FUN_007c6a60(aCStack_60,uVar3,aCStack_58);
  uVar3 = FUN_007c505c(aCStack_60);
  VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003155ec(SUB84(local_48 - 128.0,0),extraout_s1_02,
                              SUB84(local_40 + 20.0 + (double)local_80,0),auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_50,fVar6,extraout_s1_03);
  (*pcVar4)(uVar5,aCStack_50);
  FUN_007c5914(aCStack_60);
  FUN_0079a3fc(aCStack_58);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 300),(int)local_7c);
  (**(code **)(**(int **)(in_r0 + 300) + 0x40))(*(undefined4 *)(in_r0 + 300),local_78);
  pcVar4 = *(code **)(**(int **)(in_r0 + 0x13c) + 0x4c);
  uVar5 = *(undefined4 *)(in_r0 + 0x13c);
  FUN_003155ec(SUB84(local_48 + 128.0,0),extraout_s1_03,SUB84(local_40 + 20.0 + (double)local_80,0),
               local_38);
  uVar3 = (**(code **)(**(int **)(in_r0 + 0x13c) + 0x1fc))(*(undefined4 *)(in_r0 + 0x13c));
  FUN_0079a3f4(aCStack_60);
  FUN_007c6a60(aCStack_58,uVar3,aCStack_60);
  uVar3 = FUN_007c505c(aCStack_58);
  VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  fVar6 = (float)FUN_003155ec(SUB84(local_48 + 128.0,0),extraout_s1_03,
                              SUB84(local_40 + 20.0 + (double)local_80,0),auStack_28);
  cocos2d::CCPoint::CCPoint(aCStack_50,fVar6,extraout_s1_04);
  (*pcVar4)(uVar5,aCStack_50);
  FUN_007c5914(aCStack_58);
  FUN_0079a3fc(aCStack_60);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x13c),(int)local_7c);
  (**(code **)(**(int **)(in_r0 + 0x13c) + 0x40))(*(undefined4 *)(in_r0 + 0x13c),local_78);
  FUN_007c5914(auStack_8c);
  FUN_007c5914(auStack_90);
  FUN_007c5914(auStack_94);
  FUN_007c5914(auStack_98);
  FUN_007c5914(auStack_9c);
  return;
}

// ---- ControlsLayer::onSwap  @ 0x318580
/* ControlsLayer::onSwap(cocos2d::CCObject*) */

void ControlsLayer::onSwap(CCObject *param_1)

{
  CCUserDefault *pCVar1;
  int iVar2;
  
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"InputSwap",(iVar2 + 1) % 2);
  Sound::playSound(sndEng,0xd);
  updateLabels();
  return;
}

// ---- ControlsLayer::onDone  @ 0x3185f4
/* ControlsLayer::onDone(cocos2d::CCObject*) */

void ControlsLayer::onDone(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943298;
    fVar2 = (float)SettingsLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- ControlsLayer::onPlacement  @ 0x318658
/* ControlsLayer::onPlacement(cocos2d::CCObject*) */

void ControlsLayer::onPlacement(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943298;
    fVar2 = (float)ControlsPlacementLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- ControlsLayer::onNextLeftInv  @ 0x3186bc
/* ControlsLayer::onNextLeftInv(cocos2d::CCObject*) */

void __thiscall ControlsLayer::onNextLeftInv(ControlsLayer *this,CCObject *param_1)

{
  CCUserDefault *pCVar1;
  int iVar2;
  char *pcVar3;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_18,"InputMoveInvert",auStack_1c,auStack_1c,param_1,this);
  FUN_0079a3fc(auStack_1c);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
  if (iVar2 == 1) {
    FUN_007c5e70(auStack_18,"InputAimInvert");
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,pcVar3,0);
  local_14 = (iVar2 + 1) % 4;
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  cocos2d::CCUserDefault::setIntegerForKey(pCVar1,pcVar3,local_14);
  Sound::playSound(sndEng,0xd);
  updateLabels();
  FUN_007c5914(auStack_18);
  return;
}

// ---- ControlsLayer::onNextRightInv  @ 0x3187b4
/* ControlsLayer::onNextRightInv(cocos2d::CCObject*) */

void __thiscall ControlsLayer::onNextRightInv(ControlsLayer *this,CCObject *param_1)

{
  CCUserDefault *pCVar1;
  int iVar2;
  char *pcVar3;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_18,"InputAimInvert",auStack_1c,auStack_1c,param_1,this);
  FUN_0079a3fc(auStack_1c);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
  if (iVar2 == 1) {
    FUN_007c5e70(auStack_18,"InputMoveInvert");
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,pcVar3,0);
  local_14 = (iVar2 + 1) % 4;
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  cocos2d::CCUserDefault::setIntegerForKey(pCVar1,pcVar3,local_14);
  Sound::playSound(sndEng,0xd);
  updateLabels();
  FUN_007c5914(auStack_18);
  return;
}

// ---- ControlsLayer::onPrevLeftInv  @ 0x3188ac
/* ControlsLayer::onPrevLeftInv(cocos2d::CCObject*) */

void __thiscall ControlsLayer::onPrevLeftInv(ControlsLayer *this,CCObject *param_1)

{
  CCUserDefault *pCVar1;
  int iVar2;
  char *pcVar3;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_18,"InputMoveInvert",auStack_1c,auStack_1c,param_1,this);
  FUN_0079a3fc(auStack_1c);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
  if (iVar2 == 1) {
    FUN_007c5e70(auStack_18,"InputAimInvert");
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  local_14 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,pcVar3,0);
  local_14 = local_14 + -1;
  if (local_14 < 0) {
    local_14 = 3;
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  cocos2d::CCUserDefault::setIntegerForKey(pCVar1,pcVar3,local_14);
  Sound::playSound(sndEng,0xd);
  updateLabels();
  FUN_007c5914(auStack_18);
  return;
}

// ---- ControlsLayer::onPrevRightInv  @ 0x3189a4
/* ControlsLayer::onPrevRightInv(cocos2d::CCObject*) */

void __thiscall ControlsLayer::onPrevRightInv(ControlsLayer *this,CCObject *param_1)

{
  CCUserDefault *pCVar1;
  int iVar2;
  char *pcVar3;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int local_14;
  
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_18,"InputAimInvert",auStack_1c,auStack_1c,param_1,this);
  FUN_0079a3fc(auStack_1c);
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
  if (iVar2 == 1) {
    FUN_007c5e70(auStack_18,"InputMoveInvert");
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  local_14 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,pcVar3,0);
  local_14 = local_14 + -1;
  if (local_14 < 0) {
    local_14 = 3;
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  pcVar3 = (char *)FUN_007c5300(auStack_18);
  cocos2d::CCUserDefault::setIntegerForKey(pCVar1,pcVar3,local_14);
  Sound::playSound(sndEng,0xd);
  updateLabels();
  FUN_007c5914(auStack_18);
  return;
}
