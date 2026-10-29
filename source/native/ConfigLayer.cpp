// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 20 functions

// ---- ConfigLayer::create  @ 0x311ce4
/* ConfigLayer::create() */

ConfigLayer * ConfigLayer::create(void)

{
  bool bVar1;
  ConfigLayer *this;
  int iVar2;
  
  this = operator_new(0x15c);
  ConfigLayer(this);
  if ((this == (ConfigLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
     ) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (ConfigLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ConfigLayer *)0x0;
  }
  return this;
}

// ---- ConfigLayer::ConfigLayer  @ 0x311d54
/* ConfigLayer::ConfigLayer() */

ConfigLayer * __thiscall ConfigLayer::ConfigLayer(ConfigLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090f6e8;
  *(undefined ***)(this + 0xe4) = &PTR__ConfigLayer_1_0090f8f0;
  *(undefined **)(this + 0xe8) = &DAT_0090f920;
  *(undefined **)(this + 0xec) = &DAT_0090f92c;
  return this;
}

// ---- ConfigLayer::scene  @ 0x311dac
/* ConfigLayer::scene() */

int * ConfigLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- ConfigLayer::init  @ 0x311de0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00312782 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ConfigLayer::init() */

undefined4 __thiscall ConfigLayer::init(ConfigLayer *this)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  code *pcVar5;
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
  undefined1 auStack_12c [3];
  char local_129;
  undefined1 auStack_128 [4];
  undefined4 local_124;
  float local_120;
  float local_11c;
  undefined4 local_118;
  CCNode *local_114;
  CCNode *local_110;
  CCNode *local_10c;
  CCNode *local_108;
  CCNode *local_104;
  CCNode *local_100;
  CCNode *local_fc;
  CCNode *local_f8;
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
  CCMenuItem *local_cc;
  CCMenuItem *local_c8;
  CCMenuItem *local_c4;
  CCMenuItem *local_c0;
  CCMenuItem *local_bc;
  CCMenuItem *local_b8;
  CCMenuItem *local_b4;
  CCMenuItem *local_b0;
  CCMenuItem *local_ac;
  CCSize local_a8 [8];
  CCPoint aCStack_a0 [8];
  CCPoint local_98 [8];
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
  code *local_40;
  undefined4 uStack_3c;
  code *local_30;
  undefined4 local_2c;
  
  local_129 = cocos2d::CCLayer::init((CCLayer *)this);
  if (local_129 == '\x01') {
    *(undefined4 *)(this + 0x108) = 0;
    this[0x10c] = (ConfigLayer)0x0;
    fVar6 = (float)cocos2d::CCSize::CCSize(local_a8,(CCSize *)&screenSize);
    fVar6 = (float)cocos2d::CCPoint::CCPoint(aCStack_a0,fVar6,extraout_s1);
    cocos2d::CCPoint::CCPoint(local_98,fVar6,extraout_s1_00);
    uVar3 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x110) = uVar3;
    (**(code **)(**(int **)(this + 0x110) + 0x4c))(*(undefined4 *)(this + 0x110),aCStack_a0);
    (**(code **)(**(int **)(this + 0x110) + 0x1a4))(*(undefined4 *)(this + 0x110),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    local_124 = 0x3f0ccccd;
    local_120 = 24.0;
    local_11c = -8.0;
    local_118 = 0x42400000;
    local_114 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_110 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_10c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_108 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_104 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_100 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_fc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_f8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_f4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_f0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_ec = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_box.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_box.png");
    local_78 = (code *)0x313c49;
    local_74 = 0;
    local_cc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_10c,local_108,(CCObject *)this,(_func_void_CCObject_ptr *)0x313c49);
    uVar3 = cocos2d::CCMenu::create(local_cc,0);
    *(undefined4 *)(this + 0x148) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar5 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_01);
    (*pcVar5)(uVar3,&local_30);
    local_70 = (code *)0x313835;
    local_6c = 0;
    local_c8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_114,local_110,(CCObject *)this,(_func_void_CCObject_ptr *)0x313835);
    uVar3 = cocos2d::CCMenu::create(local_c8,0);
    *(undefined4 *)(this + 0x140) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    pcVar5 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_02);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    local_68 = (code *)0x313991;
    local_64 = 0;
    local_c4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e4,local_e0,(CCObject *)this,(_func_void_CCObject_ptr *)0x313991);
    uVar3 = cocos2d::CCMenu::create(local_c4,0);
    *(undefined4 *)(this + 0x130) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_03);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    local_60 = (code *)0x313949;
    local_5c = 0;
    local_c0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_104,local_100,(CCObject *)this,(_func_void_CCObject_ptr *)0x313949);
    uVar3 = cocos2d::CCMenu::create(local_c0,0);
    *(undefined4 *)(this + 0x128) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_04);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_58 = (code *)0x313905;
    local_54 = 0;
    local_bc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_fc,local_f8,(CCObject *)this,(_func_void_CCObject_ptr *)0x313905);
    uVar3 = cocos2d::CCMenu::create(local_bc,0);
    *(undefined4 *)(this + 0x120) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar5 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_05);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    local_50 = (code *)0x313a6d;
    local_4c = 0;
    local_b8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_f4,local_f0,(CCObject *)this,(_func_void_CCObject_ptr *)0x313a6d);
    uVar3 = cocos2d::CCMenu::create(local_b8,0);
    *(undefined4 *)(this + 0x138) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar5 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_06);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    local_48 = (code *)0x313be9;
    local_44 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_ec,local_e8,(CCObject *)this,(_func_void_CCObject_ptr *)0x313be9);
    uVar3 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0x118) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar5 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_07);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("SOUND",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x124) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x124),(int)local_120);
    (**(code **)(**(int **)(this + 0x124) + 0x40))(*(undefined4 *)(this + 0x124),local_124);
    pcVar5 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x124);
    (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_08);
    FUN_00310f64(0,extraout_s1_08,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 0x124) + 0x1fc))(*(undefined4 *)(this + 0x124));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_08,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_09);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("MUSIC",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 300) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 300),(int)local_120);
    (**(code **)(**(int **)(this + 300) + 0x40))(*(undefined4 *)(this + 300),local_124);
    pcVar5 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar4 = *(undefined4 *)(this + 300);
    (**(code **)(**(int **)(this + 0x130) + 0x50))(*(undefined4 *)(this + 0x130));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x130) + 0x50))(*(undefined4 *)(this + 0x130));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_10);
    FUN_00310f64(0,extraout_s1_10,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 300) + 0x1fc))(*(undefined4 *)(this + 300));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_10,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_11);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("BLOOD",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_120);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),local_124);
    pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x120) + 0x50))(*(undefined4 *)(this + 0x120));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_12);
    FUN_00310f64(0,extraout_s1_12,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_12,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_13);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("HI-RES GFX",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x134) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x134),(int)local_120);
    (**(code **)(**(int **)(this + 0x134) + 0x40))(*(undefined4 *)(this + 0x134),local_124);
    pcVar5 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x134);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_14);
    FUN_00310f64(0,extraout_s1_14,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 0x134) + 0x1fc))(*(undefined4 *)(this + 0x134));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_14,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_15);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("2X VIEW",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_120);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_124);
    pcVar5 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_16);
    FUN_00310f64(0,extraout_s1_16,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_16,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_17);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("ADS?",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x144) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x144),(int)local_120);
    (**(code **)(**(int **)(this + 0x144) + 0x40))(*(undefined4 *)(this + 0x144),local_124);
    pcVar5 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x144);
    (**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_18);
    FUN_00310f64(0,extraout_s1_18,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 0x144) + 0x1fc))(*(undefined4 *)(this + 0x144));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_18,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_19);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    FUN_0079a3f4(&local_40);
    FUN_007c6a60(&local_30,"com.chadtowns.da2.propack",&local_40);
    iVar2 = InAppPurchaseBridge::isProductPurchased(&local_30);
    FUN_007c5914(&local_30);
    FUN_0079a3fc(&local_40);
    if (iVar2 != 0) {
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    }
    pcVar1 = (char *)FUN_007c5300(&DAT_0094f970);
    uVar3 = cocos2d::CCLabelAtlas::create("BACK",pcVar1,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x13c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    pcVar5 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x13c);
    (**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
    fVar6 = (float)(**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar6,extraout_s1_20);
    FUN_00310f64(0,extraout_s1_20,SUB84((double)local_11c,0),&local_40);
    uVar3 = (**(code **)(**(int **)(this + 0x13c) + 0x1fc))(*(undefined4 *)(this + 0x13c));
    FUN_0079a3f4(auStack_12c);
    FUN_007c6a60(auStack_128,uVar3,auStack_12c);
    uVar3 = FUN_007c505c(auStack_128);
    VectorUnsignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_00310f64(0,extraout_s1_20,SUB84((double)local_11c,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar6,extraout_s1_21);
    FUN_00310f44(aCStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,aCStack_80);
    FUN_007c5914(auStack_128);
    FUN_0079a3fc(auStack_12c);
    (**(code **)(**(int **)(this + 0x13c) + 0x40))(*(undefined4 *)(this + 0x13c),local_124);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x13c),(int)local_120);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
    local_40 = (code *)0x313d5d;
    uStack_3c = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x313d5d);
    uVar3 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0x150) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar5 = *(code **)(**(int **)(this + 0x150) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar6,extraout_s1_22);
    (*pcVar5)(uVar3,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x150));
    uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("vid.png");
    *(undefined4 *)(this + 0x14c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    (**(code **)(**(int **)(this + 0x14c) + 0x40))(*(undefined4 *)(this + 0x14c),0x3f4ccccd);
    pcVar5 = *(code **)(**(int **)(this + 0x14c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x14c);
    uVar3 = (**(code **)(**(int **)(this + 0x150) + 0x50))(*(undefined4 *)(this + 0x150));
    (*pcVar5)(uVar4,uVar3);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x14c));
    local_30 = (code *)0x313e05;
    local_2c = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x313e05);
    uVar3 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x158) = uVar3;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x158));
    pcVar5 = *(code **)(**(int **)(this + 0x158) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x158);
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar6,extraout_s1_23);
    (*pcVar5)(uVar3,aCStack_80);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x158));
    iVar2 = ApplicationInterface::isVideoRecording();
    if (iVar2 == 0) {
      uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("rec.png");
      *(undefined4 *)(this + 0x154) = uVar3;
    }
    else {
      uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("stop.png");
      *(undefined4 *)(this + 0x154) = uVar3;
    }
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
    pcVar5 = *(code **)(**(int **)(this + 0x154) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x154);
    uVar3 = (**(code **)(**(int **)(this + 0x158) + 0x50))(*(undefined4 *)(this + 0x158));
    (*pcVar5)(uVar4,uVar3);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x154));
    cocos2d::CCNode::scheduleUpdate((CCNode *)this);
    updateLabels(this);
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- ConfigLayer::~ConfigLayer  @ 0x313598
/* WARNING: Removing unreachable block (ram,0x003136c6) */
/* ConfigLayer::~ConfigLayer() */

ConfigLayer * __thiscall ConfigLayer::~ConfigLayer(ConfigLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090f6e8;
  *(undefined ***)(this + 0xe4) = &PTR__ConfigLayer_1_0090f8f0;
  *(undefined **)(this + 0xe8) = &DAT_0090f920;
  *(undefined **)(this + 0xec) = &DAT_0090f92c;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,false);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x158));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x154));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- ConfigLayer::~ConfigLayer  @ 0x3136e0
/* non-virtual thunk to ConfigLayer::~ConfigLayer() */

void __thiscall ConfigLayer::~ConfigLayer(ConfigLayer *this)

{
  ~ConfigLayer(this + -0xe4);
  return;
}

// ---- ConfigLayer::~ConfigLayer  @ 0x3136e8
/* ConfigLayer::~ConfigLayer() */

ConfigLayer * __thiscall ConfigLayer::~ConfigLayer(ConfigLayer *this)

{
  ~ConfigLayer(this);
  operator_delete(this);
  return this;
}

// ---- ConfigLayer::~ConfigLayer  @ 0x313704
/* non-virtual thunk to ConfigLayer::~ConfigLayer() */

void __thiscall ConfigLayer::~ConfigLayer(ConfigLayer *this)

{
  ~ConfigLayer(this + -0xe4);
  return;
}

// ---- ConfigLayer::update  @ 0x31370c
/* ConfigLayer::update(float) */

void __thiscall ConfigLayer::update(ConfigLayer *this,float param_1)

{
  float in_r1;
  
  *(float *)(this + 0x108) = *(float *)(this + 0x108) + in_r1;
  return;
}

// ---- ConfigLayer::updateLabels  @ 0x31372c
/* ConfigLayer::updateLabels() */

void __thiscall ConfigLayer::updateLabels(ConfigLayer *this)

{
  undefined4 uVar1;
  
  if (*(char *)(sndEng + 0x28) == '\0') {
    uVar1 = 100;
  }
  else {
    uVar1 = 0xff;
  }
  (**(code **)(**(int **)(this + 0x124) + 0x1a4))(*(undefined4 *)(this + 0x124),uVar1);
  if (*(char *)(sndEng + 0x29) == '\0') {
    uVar1 = 100;
  }
  else {
    uVar1 = 0xff;
  }
  (**(code **)(**(int **)(this + 300) + 0x1a4))(*(undefined4 *)(this + 300),uVar1);
  if (SHOWBLOOD == '\0') {
    uVar1 = 100;
  }
  else {
    uVar1 = 0xff;
  }
  (**(code **)(**(int **)(this + 0x11c) + 0x1a4))(*(undefined4 *)(this + 0x11c),uVar1);
  if (RETINA_MODE == '\0') {
    uVar1 = 100;
  }
  else {
    uVar1 = 0xff;
  }
  (**(code **)(**(int **)(this + 0x134) + 0x1a4))(*(undefined4 *)(this + 0x134),uVar1);
  if (VIEW_2X_MODE == '\0') {
    uVar1 = 100;
  }
  else {
    uVar1 = 0xff;
  }
  (**(code **)(**(int **)(this + 0x114) + 0x1a4))(*(undefined4 *)(this + 0x114),uVar1);
  return;
}

// ---- ConfigLayer::onBack  @ 0x313834
/* ConfigLayer::onBack(cocos2d::CCObject*) */

void ConfigLayer::onBack(CCObject *param_1)

{
  CCUserDefault *pCVar1;
  CCDirector *this;
  CCScene *pCVar2;
  float fVar3;
  
  if (param_1[0x10c] == (CCObject)0x0) {
    param_1[0x10c] = (CCObject)0x1;
    cocos2d::CCNode::unscheduleUpdate((CCNode *)param_1);
    Sound::playSound(sndEng,0xd);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setBoolForKey(pCVar1,"Blood",(bool)SHOWBLOOD);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setBoolForKey(pCVar1,"Sound",(bool)sndEng[0x28]);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setBoolForKey(pCVar1,"Music",(bool)sndEng[0x29]);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar2 = DAT_0094324c;
    fVar3 = (float)SettingsLayer::scene();
    pCVar2 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar3,pCVar2);
    cocos2d::CCDirector::replaceScene(this,pCVar2);
  }
  return;
}

// ---- ConfigLayer::onBlood  @ 0x313904
/* ConfigLayer::onBlood(cocos2d::CCObject*) */

void ConfigLayer::onBlood(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  SHOWBLOOD = SHOWBLOOD ^ 1;
  updateLabels((ConfigLayer *)param_1);
  return;
}

// ---- ConfigLayer::onSound  @ 0x313948
/* ConfigLayer::onSound(cocos2d::CCObject*) */

void ConfigLayer::onSound(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  sndEng[0x28] = (Sound)((byte)sndEng[0x28] ^ 1);
  updateLabels((ConfigLayer *)param_1);
  return;
}

// ---- ConfigLayer::onMusic  @ 0x313990
/* ConfigLayer::onMusic(cocos2d::CCObject*) */

void __thiscall ConfigLayer::onMusic(ConfigLayer *this,CCObject *param_1)

{
  Sound *pSVar1;
  char cVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  Sound::playSound(sndEng,0xd);
  sndEng[0x29] = (Sound)((byte)sndEng[0x29] ^ 1);
  if (sndEng[0x29] == (Sound)0x1) {
    cVar2 = Sound::isPlayingMusic();
    pSVar1 = sndEng;
    if (cVar2 != '\x01') {
      FUN_0079a3f4(auStack_10);
      FUN_007c6a60(auStack_c,"presMix.mp3",auStack_10,auStack_10,param_1);
      Sound::playMusicFile(pSVar1,auStack_c,0x3f000000,1);
      FUN_007c5914(auStack_c);
      FUN_0079a3fc(auStack_10);
    }
  }
  else {
    Sound::stopMusic();
  }
  updateLabels(this);
  return;
}

// ---- ConfigLayer::onRetina  @ 0x313a6c
/* ConfigLayer::onRetina(cocos2d::CCObject*) */

void ConfigLayer::onRetina(CCObject *param_1)

{
  undefined4 uVar1;
  CCObject *pCVar2;
  CCUserDefault *this;
  char *pcVar3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  CCString *local_14;
  
  Sound::playSound(sndEng,0xd);
  RETINA_MODE = RETINA_MODE ^ 1;
  updateLabels((ConfigLayer *)param_1);
  if (RETINA_MODE == 0) {
    pcVar3 = "Disabled";
  }
  else {
    pcVar3 = "Enabled";
  }
  local_14 = (CCString *)cocos2d::CCString::createWithFormat("HI-RES %s",pcVar3);
  uVar1 = cocos2d::CCString::getCString(local_14);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_1c,uVar1,auStack_28);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_18,"You must restart the application for this change to take effect.",
               auStack_24);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(asStack_20,&DAT_007d531c,auStack_2c);
  pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_20);
  uVar1 = cocos2d::CCArray::create(pCVar2,0);
  AMessageBox::showAlert(0,auStack_1c,auStack_18,uVar1,0,0);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_24);
  FUN_007c5914(auStack_1c);
  FUN_0079a3fc(auStack_28);
  this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setBoolForKey(this,"RetinaMode",(bool)RETINA_MODE);
  return;
}

// ---- ConfigLayer::on2XView  @ 0x313be8
/* ConfigLayer::on2XView(cocos2d::CCObject*) */

void ConfigLayer::on2XView(CCObject *param_1)

{
  CCUserDefault *this;
  
  Sound::playSound(sndEng,0xd);
  VIEW_2X_MODE = VIEW_2X_MODE ^ 1;
  updateLabels((ConfigLayer *)param_1);
  this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setBoolForKey(this,"ViewMode",(bool)VIEW_2X_MODE);
  return;
}

// ---- ConfigLayer::onAd  @ 0x313c48
/* ConfigLayer::onAd(cocos2d::CCObject*) */

void ConfigLayer::onAd(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  Sound::playSound(sndEng,0xd);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_10,"Why Ads?",auStack_1c);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_c,
               "Pro Pack removes post game popup ads, but lobby banner ads will remain to fund online servers.  Thank you for your support."
               ,auStack_18);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_14,&DAT_007d531c,auStack_20);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_14);
  uVar2 = cocos2d::CCArray::create(pCVar1,0);
  AMessageBox::showAlert(0,auStack_10,auStack_c,uVar2,0,0);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_20);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_18);
  FUN_007c5914(auStack_10);
  FUN_0079a3fc(auStack_1c);
  return;
}

// ---- ConfigLayer::onVideo  @ 0x313d5c
/* ConfigLayer::onVideo(cocos2d::CCObject*) */

void ConfigLayer::onVideo(CCObject *param_1)

{
  char cVar1;
  int iVar2;
  CCSpriteFrameCache *this;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 uVar5;
  
  if ((param_1[0x10c] == (CCObject)0x0) &&
     (-1 < (int)((uint)(*(float *)(param_1 + 0x108) < 0.5) << 0x1f))) {
    Sound::playSound(sndEng,0xd);
    cVar1 = ApplicationInterface::isVideoRecordingAvaliable();
    if (cVar1 == '\x01') {
      *(undefined4 *)(param_1 + 0x108) = 0;
      iVar2 = ApplicationInterface::isVideoRecording();
      if (iVar2 != 0) {
        ApplicationInterface::stopVideoRecording();
      }
      pcVar4 = *(code **)(**(int **)(param_1 + 0x154) + 0x214);
      uVar5 = *(undefined4 *)(param_1 + 0x154);
      this = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
      uVar3 = cocos2d::CCSpriteFrameCache::spriteFrameByName(this,"rec.png");
      (*pcVar4)(uVar5,uVar3);
      ApplicationInterface::showVideoRecordingInterface();
    }
  }
  return;
}

// ---- ConfigLayer::onRecord  @ 0x313e04
/* ConfigLayer::onRecord(cocos2d::CCObject*) */

void ConfigLayer::onRecord(CCObject *param_1)

{
  char cVar1;
  int iVar2;
  CCSpriteFrameCache *pCVar3;
  undefined4 uVar4;
  CCObject *pCVar5;
  code *pcVar6;
  undefined4 uVar7;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if ((param_1[0x10c] == (CCObject)0x0) &&
     (-1 < (int)((uint)(*(float *)(param_1 + 0x108) < 0.5) << 0x1f))) {
    Sound::playSound(sndEng,0xd);
    cVar1 = ApplicationInterface::isVideoRecordingAvaliable();
    if (cVar1 == '\x01') {
      *(undefined4 *)(param_1 + 0x108) = 0;
      iVar2 = ApplicationInterface::isVideoRecording();
      if (iVar2 == 0) {
        iVar2 = ApplicationInterface::hasUnViewedVideo();
        if (iVar2 == 0) {
          FUN_0079a3f4(auStack_24);
          FUN_007c6a60(auStack_18,"Recording Started!",auStack_24);
          FUN_0079a3f4(asStack_20);
          FUN_007c6a60(auStack_14,"Video recording has started!",asStack_20);
          FUN_0079a3f4(auStack_28);
          FUN_007c6a60(asStack_1c,&DAT_007d531c,auStack_28);
          pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_1c);
          uVar4 = cocos2d::CCArray::create(pCVar5,0);
          AMessageBox::showAlert(0,auStack_18,auStack_14,uVar4,0,0);
          FUN_007c5914(asStack_1c);
          FUN_0079a3fc(auStack_28);
          FUN_007c5914(auStack_14);
          FUN_0079a3fc(asStack_20);
          FUN_007c5914(auStack_18);
          FUN_0079a3fc(auStack_24);
          ApplicationInterface::startVideoRecording();
          pcVar6 = *(code **)(**(int **)(param_1 + 0x154) + 0x214);
          uVar7 = *(undefined4 *)(param_1 + 0x154);
          pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
          uVar4 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,"stop.png");
          (*pcVar6)(uVar7,uVar4);
        }
        else {
          FUN_0079a3f4(auStack_28);
          FUN_007c6a60(auStack_18,"Unsaved Video!",auStack_28);
          FUN_0079a3f4(auStack_24);
          FUN_007c6a60(auStack_14,
                       "You have an unsaved video.  Do you want to start a new recording and overwite the exisitng video?"
                       ,auStack_24);
          FUN_0079a3f4(auStack_30);
          FUN_007c6a60(asStack_20,"Cancel",auStack_30);
          pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_20);
          FUN_0079a3f4(auStack_2c);
          FUN_007c6a60(asStack_1c,"Overwrite",auStack_2c);
          uVar4 = cocos2d::CCString::create(asStack_1c);
          uVar4 = cocos2d::CCArray::create(pCVar5,uVar4,0);
          AMessageBox::showAlert(0x314201,auStack_18,auStack_14,uVar4,0,param_1);
          FUN_007c5914(asStack_1c);
          FUN_0079a3fc(auStack_2c);
          FUN_007c5914(asStack_20);
          FUN_0079a3fc(auStack_30);
          FUN_007c5914(auStack_14);
          FUN_0079a3fc(auStack_24);
          FUN_007c5914(auStack_18);
          FUN_0079a3fc(auStack_28);
        }
      }
      else {
        ApplicationInterface::stopVideoRecording();
        pcVar6 = *(code **)(**(int **)(param_1 + 0x154) + 0x214);
        uVar7 = *(undefined4 *)(param_1 + 0x154);
        pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
        uVar4 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,"rec.png");
        (*pcVar6)(uVar7,uVar4);
        FUN_0079a3f4(auStack_24);
        FUN_007c6a60(auStack_18,"Recording Stopped!",auStack_24);
        FUN_0079a3f4(asStack_20);
        FUN_007c6a60(auStack_14,"Video recording has stopped",asStack_20);
        FUN_0079a3f4(auStack_28);
        FUN_007c6a60(asStack_1c,&DAT_007d531c,auStack_28);
        pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_1c);
        uVar4 = cocos2d::CCArray::create(pCVar5,0);
        AMessageBox::showAlert(0,auStack_18,auStack_14,uVar4,0,0);
        FUN_007c5914(asStack_1c);
        FUN_0079a3fc(auStack_28);
        FUN_007c5914(auStack_14);
        FUN_0079a3fc(asStack_20);
        FUN_007c5914(auStack_18);
        FUN_0079a3fc(auStack_24);
      }
    }
  }
  return;
}

// ---- ConfigLayer::messageBoxHandler  @ 0x314200
/* ConfigLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void ConfigLayer::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  CCSpriteFrameCache *this;
  code *pcVar3;
  undefined4 uVar4;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  CCObject *local_14;
  
  if (param_1 == 1) {
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_1c,"Recording Started!",auStack_28);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"Video recording has started!",auStack_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_20,&DAT_007d531c,auStack_2c);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
    uVar2 = cocos2d::CCArray::create(pCVar1,0);
    AMessageBox::showAlert(0,auStack_1c,auStack_18,uVar2,0,0);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_2c);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_24);
    FUN_007c5914(auStack_1c);
    FUN_0079a3fc(auStack_28);
    local_14 = param_3;
    ApplicationInterface::startVideoRecording();
    pcVar3 = *(code **)(**(int **)(local_14 + 0x154) + 0x214);
    uVar4 = *(undefined4 *)(local_14 + 0x154);
    this = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
    uVar2 = cocos2d::CCSpriteFrameCache::spriteFrameByName(this,"stop.png");
    (*pcVar3)(uVar4,uVar2);
  }
  return;
}
