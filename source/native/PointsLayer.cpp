// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 21 functions

// ---- PointsLayer::create  @ 0x3ba54c
/* PointsLayer::create() */

PointsLayer * PointsLayer::create(void)

{
  bool bVar1;
  PointsLayer *this;
  int iVar2;
  
  this = operator_new(0x174);
  PointsLayer(this);
  if ((this == (PointsLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
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
    if (this != (PointsLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PointsLayer *)0x0;
  }
  return this;
}

// ---- PointsLayer::PointsLayer  @ 0x3ba5bc
/* PointsLayer::PointsLayer() */

PointsLayer * __thiscall PointsLayer::PointsLayer(PointsLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009180a8;
  *(undefined ***)(this + 0xe4) = &PTR__PointsLayer_1_009182b0;
  *(undefined **)(this + 0xe8) = &DAT_009182e0;
  *(undefined **)(this + 0xec) = &DAT_009182ec;
  return this;
}

// ---- PointsLayer::scene  @ 0x3ba614
/* PointsLayer::scene() */

int * PointsLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- PointsLayer::init  @ 0x3ba648
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003bad82 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PointsLayer::init() */

bool __thiscall PointsLayer::init(PointsLayer *this)

{
  undefined3 uVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined4 uVar4;
  code *pcVar5;
  bool bVar6;
  uint in_fpscr;
  float fVar7;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
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
  float extraout_s1_26;
  float extraout_s1_27;
  float extraout_s1_28;
  float extraout_s1_29;
  undefined1 auStack_104 [3];
  char local_101;
  undefined1 auStack_100 [4];
  undefined4 local_fc;
  undefined4 local_f8;
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
  CCPoint local_98 [8];
  CCPoint aCStack_90 [8];
  CCPoint aCStack_88 [8];
  undefined1 auStack_80 [8];
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
  undefined *local_40;
  undefined4 uStack_3c;
  code *local_30;
  undefined4 local_2c;
  
  local_101 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar6 = local_101 == '\x01';
  if (bVar6) {
    this[0x108] = (PointsLayer)0x0;
    this[0x16c] = (PointsLayer)0x0;
    fVar7 = (float)cocos2d::CCSize::CCSize(local_a0,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_98,fVar7,extraout_s1);
    local_fc = 0xc1f00000;
    local_f8 = 0x42400000;
    local_f4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_f0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_ec = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_c4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_c0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_78 = (code *)0x3bd4b1;
    local_74 = 0;
    local_bc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_f4,local_f0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd4b1);
    uVar2 = cocos2d::CCMenu::create(local_bc,0);
    *(undefined4 *)(this + 0x138) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar5 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_00);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    local_70 = (code *)0x3bd121;
    local_6c = 0;
    local_b8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_ec,local_e8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd121);
    uVar2 = cocos2d::CCMenu::create(local_b8,0);
    *(undefined4 *)(this + 0x144) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    pcVar5 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_01);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    local_68 = (code *)0x3bd205;
    local_64 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e4,local_e0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd205);
    uVar2 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0x150) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar5 = *(code **)(**(int **)(this + 0x150) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_02);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x150));
    local_60 = (code *)0x3bd2e9;
    local_5c = 0;
    local_b0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd2e9);
    uVar2 = cocos2d::CCMenu::create(local_b0,0);
    *(undefined4 *)(this + 0x15c) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x15c));
    pcVar5 = *(code **)(**(int **)(this + 0x15c) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x15c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_03);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x15c));
    local_58 = (code *)0x3bd3cd;
    local_54 = 0;
    local_ac = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd3cd);
    uVar2 = cocos2d::CCMenu::create(local_ac,0);
    *(undefined4 *)(this + 0x168) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x168));
    pcVar5 = *(code **)(**(int **)(this + 0x168) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x168);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_04);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x168));
    local_50 = (code *)0x3bd05d;
    local_4c = 0;
    local_a8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_cc,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd05d);
    uVar2 = cocos2d::CCMenu::create(local_a8,0);
    *(undefined4 *)(this + 0x124) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar5 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_05);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    local_48 = (code *)0x3bd571;
    local_44 = 0;
    local_a4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_c4,local_c0,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bd571);
    uVar2 = cocos2d::CCMenu::create(local_a4,0);
    *(undefined4 *)(this + 300) = uVar2;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar5 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar2 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_06);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    *(undefined4 *)(this + 0x10c) = 0x3f0ccccd;
    *(undefined4 *)(this + 0x110) = 0x41c00000;
    *(undefined4 *)(this + 0x114) = 0xc1000000;
    uVar2 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x130) = uVar2;
    (**(code **)(**(int **)(this + 0x130) + 0x4c))(*(undefined4 *)(this + 0x130),local_98);
    (**(code **)(**(int **)(this + 0x130) + 0x1a4))(*(undefined4 *)(this + 0x130),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("PRO PACK",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x134) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x134),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x134) + 0x40))
              (*(undefined4 *)(this + 0x134),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x134);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_07);
    FUN_003b97cc(0,extraout_s1_07,SUB84((double)*(float *)(this + 0x114),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x134) + 0x1fc))(*(undefined4 *)(this + 0x134));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_07,SUB84((double)*(float *)(this + 0x114),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_08);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("3000 BP",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x140) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x140),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x140) + 0x40))
              (*(undefined4 *)(this + 0x140),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x140);
    (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_09);
    FUN_003b97cc(0,extraout_s1_09,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x140) + 0x1fc))(*(undefined4 *)(this + 0x140));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_09,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),
                                &local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_10);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    pcVar5 = *(code **)(**(int **)(this + 0x140) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x140);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    (*pcVar5)(uVar2,&local_30);
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("3100 BP",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x14c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x14c),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x14c) + 0x40))
              (*(undefined4 *)(this + 0x14c),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x14c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x14c);
    (**(code **)(**(int **)(this + 0x150) + 0x50))(*(undefined4 *)(this + 0x150));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x150) + 0x50))(*(undefined4 *)(this + 0x150));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_11);
    FUN_003b97cc(0,extraout_s1_11,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x14c) + 0x1fc))(*(undefined4 *)(this + 0x14c));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_11,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),
                                &local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_12);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x14c));
    pcVar5 = *(code **)(**(int **)(this + 0x14c) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x14c);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    (*pcVar5)(uVar2,&local_30);
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("3200 BP",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x158) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x158));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x158),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x158) + 0x40))
              (*(undefined4 *)(this + 0x158),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x158) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x158);
    (**(code **)(**(int **)(this + 0x15c) + 0x50))(*(undefined4 *)(this + 0x15c));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x15c) + 0x50))(*(undefined4 *)(this + 0x15c));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_13);
    FUN_003b97cc(0,extraout_s1_13,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x158) + 0x1fc))(*(undefined4 *)(this + 0x158));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_13,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),
                                &local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_14);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x158));
    pcVar5 = *(code **)(**(int **)(this + 0x158) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x158);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    (*pcVar5)(uVar2,&local_30);
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("3300 BP",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x164) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x164));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x164),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x164) + 0x40))
              (*(undefined4 *)(this + 0x164),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x164) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x164);
    (**(code **)(**(int **)(this + 0x168) + 0x50))(*(undefined4 *)(this + 0x168));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x168) + 0x50))(*(undefined4 *)(this + 0x168));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_15);
    FUN_003b97cc(0,extraout_s1_15,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x164) + 0x1fc))(*(undefined4 *)(this + 0x164));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_15,SUB84((double)(*(float *)(this + 0x114) + 4.0),0),
                                &local_30);
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_16);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x164));
    pcVar5 = *(code **)(**(int **)(this + 0x164) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x164);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar7);
    *(undefined4 *)(this + 0x13c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    pcVar5 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x13c);
    uVar2 = (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,extraout_s0,extraout_s1_17);
    FUN_003b97ac(&local_30,uVar2,&local_40);
    (*pcVar5)(uVar4,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
    pcVar5 = *(code **)(**(int **)(this + 0x13c) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x13c);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    pcVar5 = *(code **)(**(int **)(this + 0x13c) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x13c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_18);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar7);
    *(undefined4 *)(this + 0x148) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar5 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x148);
    uVar2 = (**(code **)(**(int **)(this + 0x150) + 0x50))(*(undefined4 *)(this + 0x150));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,extraout_s0_00,extraout_s1_19);
    FUN_003b97ac(&local_30,uVar2,&local_40);
    (*pcVar5)(uVar4,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
    pcVar5 = *(code **)(**(int **)(this + 0x148) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x148);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    pcVar5 = *(code **)(**(int **)(this + 0x148) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_20);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar7);
    *(undefined4 *)(this + 0x154) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
    pcVar5 = *(code **)(**(int **)(this + 0x154) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x154);
    uVar2 = (**(code **)(**(int **)(this + 0x15c) + 0x50))(*(undefined4 *)(this + 0x15c));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,extraout_s0_01,extraout_s1_21);
    FUN_003b97ac(&local_30,uVar2,&local_40);
    (*pcVar5)(uVar4,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x154));
    pcVar5 = *(code **)(**(int **)(this + 0x154) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x154);
    local_30._0_3_ = FUN_003b9750(0,0xff,0);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    pcVar5 = *(code **)(**(int **)(this + 0x154) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x154);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_22);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    uVar2 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar7);
    *(undefined4 *)(this + 0x160) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x160));
    pcVar5 = *(code **)(**(int **)(this + 0x160) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x160);
    uVar2 = (**(code **)(**(int **)(this + 0x168) + 0x50))(*(undefined4 *)(this + 0x168));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,extraout_s0_02,extraout_s1_23);
    FUN_003b97ac(&local_30,uVar2,&local_40);
    (*pcVar5)(uVar4,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x160));
    pcVar5 = *(code **)(**(int **)(this + 0x160) + 0x1bc);
    uVar2 = *(undefined4 *)(this + 0x160);
    uVar1 = FUN_003b9750(0,0xff,0);
    local_30 = (code *)CONCAT13(local_30._3_1_,uVar1);
    fVar7 = (float)(*pcVar5)(uVar2,&local_30);
    pcVar5 = *(code **)(**(int **)(this + 0x160) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x160);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_24);
    (*pcVar5)(uVar2,&local_30);
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("RESTORE",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x120),(int)*(float *)(this + 0x110));
    (**(code **)(**(int **)(this + 0x120) + 0x40))
              (*(undefined4 *)(this + 0x120),*(undefined4 *)(this + 0x10c));
    pcVar5 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x120);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_25);
    FUN_003b97cc(0,extraout_s1_25,SUB84((double)*(float *)(this + 0x114),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_25,SUB84((double)*(float *)(this + 0x114),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_26);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("BACK",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x128) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x128);
    (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    fVar7 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar7,extraout_s1_27);
    FUN_003b97cc(0,extraout_s1_27,SUB84((double)*(float *)(this + 0x114),0),&local_40);
    uVar2 = (**(code **)(**(int **)(this + 0x128) + 0x1fc))(*(undefined4 *)(this + 0x128));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar2,auStack_104);
    uVar2 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_003b97cc(0,extraout_s1_27,SUB84((double)*(float *)(this + 0x114),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar7,extraout_s1_28);
    FUN_003b97ac(auStack_80,aCStack_90,aCStack_88);
    (*pcVar5)(uVar4,auStack_80);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(**(int **)(this + 0x128) + 0x40))
              (*(undefined4 *)(this + 0x128),*(undefined4 *)(this + 0x10c));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x128),(int)*(float *)(this + 0x110));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    pcVar3 = (char *)FUN_007c5300(&DAT_009511e4);
    uVar2 = cocos2d::CCLabelAtlas::create("RESTORE",pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x118),(int)*(float *)(this + 0x110));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x118) + 0x40))
                             (*(undefined4 *)(this + 0x118),0x3ecccccd);
    pcVar5 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x118);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar7,extraout_s1_29);
    (*pcVar5)(uVar2,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    ApplicationInterface::removeAdBanner();
    NetworkManager::sharedNetworkManager();
    NetworkManagerBridge::startReachability();
    this[0x16e] = (PointsLayer)0x0;
    *(undefined4 *)(this + 0x170) = 0;
    this[0x16d] = (PointsLayer)0x0;
    (**(code **)(**(int **)(this + 0x14c) + 0x90))(*(undefined4 *)(this + 0x14c),0);
    (**(code **)(**(int **)(this + 0x158) + 0x90))(*(undefined4 *)(this + 0x158),0);
    (**(code **)(**(int **)(this + 0x164) + 0x90))(*(undefined4 *)(this + 0x164),0);
    (**(code **)(**(int **)(this + 0x148) + 0x90))(*(undefined4 *)(this + 0x148),0);
    (**(code **)(**(int **)(this + 0x154) + 0x90))(*(undefined4 *)(this + 0x154),0);
    (**(code **)(**(int **)(this + 0x160) + 0x90))(*(undefined4 *)(this + 0x160),0);
    (**(code **)(**(int **)(this + 0x150) + 0x90))(*(undefined4 *)(this + 0x150),0);
    (**(code **)(**(int **)(this + 0x15c) + 0x90))(*(undefined4 *)(this + 0x15c),0);
    fVar7 = (float)(**(code **)(**(int **)(this + 0x168) + 0x90))(*(undefined4 *)(this + 0x168),0);
    fVar7 = (float)updateItemVisibility(this,fVar7);
    local_40 = (undefined *)0x3bc34d;
    uStack_3c = 0;
    fVar7 = (float)cocos2d::CCNode::schedule((_func_void_float *)this,fVar7);
    local_30 = (code *)0x3bccad;
    local_2c = 0;
    cocos2d::CCNode::schedule((_func_void_float *)this,fVar7);
  }
  return bVar6;
}

// ---- PointsLayer::~PointsLayer  @ 0x3bc188
/* WARNING: Removing unreachable block (ram,0x003bc2c4) */
/* PointsLayer::~PointsLayer() */

PointsLayer * __thiscall PointsLayer::~PointsLayer(PointsLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009180a8;
  *(undefined ***)(this + 0xe4) = &PTR__PointsLayer_1_009182b0;
  *(undefined **)(this + 0xe8) = &DAT_009182e0;
  *(undefined **)(this + 0xec) = &DAT_009182ec;
  NetworkManager::sharedNetworkManager();
  NetworkManagerBridge::stopReachability();
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x154));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x158));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x15c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x160));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x164));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x168));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- PointsLayer::~PointsLayer  @ 0x3bc2dc
/* non-virtual thunk to PointsLayer::~PointsLayer() */

void __thiscall PointsLayer::~PointsLayer(PointsLayer *this)

{
  ~PointsLayer(this + -0xe4);
  return;
}

// ---- PointsLayer::~PointsLayer  @ 0x3bc2e4
/* PointsLayer::~PointsLayer() */

PointsLayer * __thiscall PointsLayer::~PointsLayer(PointsLayer *this)

{
  ~PointsLayer(this);
  operator_delete(this);
  return this;
}

// ---- PointsLayer::~PointsLayer  @ 0x3bc300
/* non-virtual thunk to PointsLayer::~PointsLayer() */

void __thiscall PointsLayer::~PointsLayer(PointsLayer *this)

{
  ~PointsLayer(this + -0xe4);
  return;
}

// ---- PointsLayer::onEnter  @ 0x3bc308
/* PointsLayer::onEnter() */

void __thiscall PointsLayer::onEnter(PointsLayer *this)

{
  char cVar1;
  
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  cVar1 = ApplicationInterface::hasClaimedIdentity();
  if (cVar1 != '\x01') {
    ApplicationInterface::pickClaimedIdentity();
  }
  return;
}

// ---- PointsLayer::onExit  @ 0x3bc330
/* PointsLayer::onExit() */

void __thiscall PointsLayer::onExit(PointsLayer *this)

{
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- PointsLayer::updateItemVisibility  @ 0x3bc34c
/* PointsLayer::updateItemVisibility(float) */

void __thiscall PointsLayer::updateItemVisibility(PointsLayer *this,float param_1)

{
  int iVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  InAppPurchaseBridge aIStack_34 [4];
  undefined1 auStack_30 [4];
  InAppPurchaseBridge aIStack_2c [4];
  undefined1 auStack_28 [4];
  InAppPurchaseBridge aIStack_24 [4];
  CCPoint aCStack_20 [8];
  InAppPurchaseBridge aIStack_18 [8];
  
  if (this[0x16e] != (PointsLayer)0x1) {
    (**(code **)(**(int **)(this + 0x140) + 0x1a4))(*(undefined4 *)(this + 0x140),0xff);
    (**(code **)(**(int **)(this + 0x13c) + 0x1a4))(*(undefined4 *)(this + 0x13c),0xff);
    (**(code **)(**(int **)(this + 0x14c) + 0x1a4))(*(undefined4 *)(this + 0x14c),0xff);
    (**(code **)(**(int **)(this + 0x148) + 0x1a4))(*(undefined4 *)(this + 0x148),0xff);
    (**(code **)(**(int **)(this + 0x158) + 0x1a4))(*(undefined4 *)(this + 0x158),0xff);
    (**(code **)(**(int **)(this + 0x154) + 0x1a4))(*(undefined4 *)(this + 0x154),0xff);
    (**(code **)(**(int **)(this + 0x164) + 0x1a4))(*(undefined4 *)(this + 0x164),0xff);
    param_1 = (float)(**(code **)(**(int **)(this + 0x160) + 0x1a4))
                               (*(undefined4 *)(this + 0x160),0xff);
  }
  if (this[0x16d] != (PointsLayer)0x1) {
    FUN_0079a3f4(param_1,aCStack_20);
    FUN_007c6a60(aIStack_18,"com.chadtowns.da2.battlepack1",aCStack_20);
    InAppPurchaseBridge::getProductPrice(aIStack_34,aIStack_18);
    FUN_007c5914(aIStack_18);
    FUN_0079a3fc(aCStack_20);
    iVar1 = FUN_007c505c(aIStack_34);
    if (iVar1 != 0) {
      this[0x16d] = (PointsLayer)0x1;
      FUN_007c62f0(aIStack_34," PURCHASE");
      pcVar3 = *(code **)(**(int **)(this + 0x13c) + 0x23c);
      uVar4 = *(undefined4 *)(this + 0x13c);
      uVar2 = FUN_007c5300(aIStack_34);
      (*pcVar3)(uVar4,uVar2);
    }
    FUN_0079a3f4(aIStack_18);
    FUN_007c6a60(auStack_30,"com.chadtowns.da2.battlepack2",aIStack_18);
    InAppPurchaseBridge::getProductPrice(aIStack_2c,auStack_30);
    FUN_007c52e8(aIStack_34,aIStack_2c);
    FUN_007c5914(aIStack_2c);
    FUN_007c5914(auStack_30);
    FUN_0079a3fc(aIStack_18);
    iVar1 = FUN_007c505c(aIStack_34);
    if (iVar1 != 0) {
      FUN_007c62f0(aIStack_34," PURCHASE");
      pcVar3 = *(code **)(**(int **)(this + 0x148) + 0x23c);
      uVar4 = *(undefined4 *)(this + 0x148);
      uVar2 = FUN_007c5300(aIStack_34);
      (*pcVar3)(uVar4,uVar2);
    }
    FUN_0079a3f4(aIStack_18);
    FUN_007c6a60(auStack_28,"com.chadtowns.da2.battlepack3",aIStack_18);
    InAppPurchaseBridge::getProductPrice(aIStack_24,auStack_28);
    FUN_007c52e8(aIStack_34,aIStack_24);
    FUN_007c5914(aIStack_24);
    FUN_007c5914(auStack_28);
    FUN_0079a3fc(aIStack_18);
    iVar1 = FUN_007c505c(aIStack_34);
    if (iVar1 != 0) {
      FUN_007c62f0(aIStack_34," PURCHASE");
      pcVar3 = *(code **)(**(int **)(this + 0x154) + 0x23c);
      uVar4 = *(undefined4 *)(this + 0x154);
      uVar2 = FUN_007c5300(aIStack_34);
      (*pcVar3)(uVar4,uVar2);
    }
    FUN_0079a3f4(aIStack_24);
    FUN_007c6a60(aCStack_20,"com.chadtowns.da2.battlepack4",aIStack_24);
    InAppPurchaseBridge::getProductPrice(aIStack_18,aCStack_20);
    FUN_007c52e8(aIStack_34,aIStack_18);
    FUN_007c5914(aIStack_18);
    FUN_007c5914(aCStack_20);
    FUN_0079a3fc(aIStack_24);
    iVar1 = FUN_007c505c(aIStack_34);
    if (iVar1 != 0) {
      FUN_007c62f0(aIStack_34," PURCHASE");
      pcVar3 = *(code **)(**(int **)(this + 0x160) + 0x23c);
      uVar4 = *(undefined4 *)(this + 0x160);
      uVar2 = FUN_007c5300(aIStack_34);
      (*pcVar3)(uVar4,uVar2);
    }
    param_1 = (float)FUN_007c5914(aIStack_34);
  }
  FUN_0079a3f4(param_1,aCStack_20);
  FUN_007c6a60(aIStack_18,"com.chadtowns.da2.propack",aCStack_20);
  iVar1 = InAppPurchaseBridge::isProductPurchased(aIStack_18);
  FUN_007c5914(aIStack_18);
  FUN_0079a3fc(aCStack_20);
  if (iVar1 != 0) {
    (**(code **)(**(int **)(this + 0x134) + 0x90))(*(undefined4 *)(this + 0x134),0);
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
  }
  FUN_0079a3f4(aCStack_20);
  FUN_007c6a60(aIStack_18,"com.chadtowns.da2.battlepack1",aCStack_20);
  iVar1 = InAppPurchaseBridge::isProductPurchased(aIStack_18);
  FUN_007c5914(aIStack_18);
  FUN_0079a3fc(aCStack_20);
  if (iVar1 != 0) {
    (**(code **)(**(int **)(this + 0x14c) + 0x90))(*(undefined4 *)(this + 0x14c),1);
    (**(code **)(**(int **)(this + 0x148) + 0x90))(*(undefined4 *)(this + 0x148),1);
    (**(code **)(**(int **)(this + 0x150) + 0x90))(*(undefined4 *)(this + 0x150),1);
    (**(code **)(**(int **)(this + 0x140) + 0x1a4))(*(undefined4 *)(this + 0x140),100);
    (**(code **)(**(int **)(this + 0x13c) + 0x1a4))(*(undefined4 *)(this + 0x13c),100);
    (**(code **)(**(int **)(this + 0x13c) + 0x23c))(*(undefined4 *)(this + 0x13c),"PURCHASED");
    pcVar3 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x13c);
    uVar2 = (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0,extraout_s1);
    FUN_003b97ac(aIStack_18,uVar2,aCStack_20);
    (*pcVar3)(uVar4,aIStack_18);
  }
  FUN_0079a3f4(aCStack_20);
  FUN_007c6a60(aIStack_18,"com.chadtowns.da2.battlepack2",aCStack_20);
  iVar1 = InAppPurchaseBridge::isProductPurchased(aIStack_18);
  FUN_007c5914(aIStack_18);
  FUN_0079a3fc(aCStack_20);
  if (iVar1 != 0) {
    (**(code **)(**(int **)(this + 0x158) + 0x90))(*(undefined4 *)(this + 0x158),1);
    (**(code **)(**(int **)(this + 0x154) + 0x90))(*(undefined4 *)(this + 0x154),1);
    (**(code **)(**(int **)(this + 0x15c) + 0x90))(*(undefined4 *)(this + 0x15c),1);
    (**(code **)(**(int **)(this + 0x14c) + 0x1a4))(*(undefined4 *)(this + 0x14c),100);
    (**(code **)(**(int **)(this + 0x148) + 0x1a4))(*(undefined4 *)(this + 0x148),100);
    (**(code **)(**(int **)(this + 0x148) + 0x23c))(*(undefined4 *)(this + 0x148),"PURCHASED");
    pcVar3 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x148);
    uVar2 = (**(code **)(**(int **)(this + 0x150) + 0x50))(*(undefined4 *)(this + 0x150));
    cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0_00,extraout_s1_00);
    FUN_003b97ac(aIStack_18,uVar2,aCStack_20);
    (*pcVar3)(uVar4,aIStack_18);
  }
  FUN_0079a3f4(aCStack_20);
  FUN_007c6a60(aIStack_18,"com.chadtowns.da2.battlepack3",aCStack_20);
  iVar1 = InAppPurchaseBridge::isProductPurchased(aIStack_18);
  FUN_007c5914(aIStack_18);
  FUN_0079a3fc(aCStack_20);
  if (iVar1 != 0) {
    (**(code **)(**(int **)(this + 0x164) + 0x90))(*(undefined4 *)(this + 0x164),1);
    (**(code **)(**(int **)(this + 0x160) + 0x90))(*(undefined4 *)(this + 0x160),1);
    (**(code **)(**(int **)(this + 0x168) + 0x90))(*(undefined4 *)(this + 0x168),1);
    (**(code **)(**(int **)(this + 0x158) + 0x1a4))(*(undefined4 *)(this + 0x158),100);
    (**(code **)(**(int **)(this + 0x154) + 0x1a4))(*(undefined4 *)(this + 0x154),100);
    (**(code **)(**(int **)(this + 0x154) + 0x23c))(*(undefined4 *)(this + 0x154),"PURCHASED");
    pcVar3 = *(code **)(**(int **)(this + 0x154) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x154);
    uVar2 = (**(code **)(**(int **)(this + 0x15c) + 0x50))(*(undefined4 *)(this + 0x15c));
    cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0_01,extraout_s1_01);
    FUN_003b97ac(aIStack_18,uVar2,aCStack_20);
    (*pcVar3)(uVar4,aIStack_18);
  }
  FUN_0079a3f4(aCStack_20);
  FUN_007c6a60(aIStack_18,"com.chadtowns.da2.battlepack4",aCStack_20);
  iVar1 = InAppPurchaseBridge::isProductPurchased(aIStack_18);
  FUN_007c5914(aIStack_18);
  FUN_0079a3fc(aCStack_20);
  if (iVar1 != 0) {
    (**(code **)(**(int **)(this + 0x164) + 0x1a4))(*(undefined4 *)(this + 0x164),100);
    (**(code **)(**(int **)(this + 0x160) + 0x1a4))(*(undefined4 *)(this + 0x160),100);
    (**(code **)(**(int **)(this + 0x160) + 0x23c))(*(undefined4 *)(this + 0x160),"PURCHASED");
    pcVar3 = *(code **)(**(int **)(this + 0x160) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x160);
    uVar2 = (**(code **)(**(int **)(this + 0x168) + 0x50))(*(undefined4 *)(this + 0x168));
    cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0_02,extraout_s1_02);
    FUN_003b97ac(aIStack_18,uVar2,aCStack_20);
    (*pcVar3)(uVar4,aIStack_18);
  }
  return;
}

// ---- PointsLayer::updateStep  @ 0x3bccac
/* PointsLayer::updateStep(float) */

void __thiscall PointsLayer::updateStep(PointsLayer *this,float param_1)

{
  char cVar1;
  int iVar2;
  float in_r1;
  
  iVar2 = InAppPurchaseBridge::readyToSignIn();
  if (iVar2 == 0) {
    cVar1 = InAppPurchaseBridge::readyToPurchase();
    if (cVar1 == '\x01') {
      iVar2 = InAppPurchaseBridge::hasPendingTransactions();
      if (iVar2 == 0) {
        (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),&DAT_007e345c)
        ;
      }
      else {
        (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"PURCHASING");
      }
    }
    else {
      (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"STAND BY");
    }
  }
  else if ((this[0x16e] == (PointsLayer)0x0) ||
          (-1 < (int)((uint)(*(float *)(this + 0x170) < 20.0) << 0x1f))) {
    this[0x16e] = (PointsLayer)0x0;
    *(undefined4 *)(this + 0x170) = 0;
    (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),&DAT_007e345c);
  }
  else {
    *(float *)(this + 0x170) = *(float *)(this + 0x170) + in_r1;
    (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"PROCESSING");
  }
  return;
}

// ---- PointsLayer::checkCanConnectToStore  @ 0x3bcdd4
/* PointsLayer::checkCanConnectToStore() */

void __thiscall PointsLayer::checkCanConnectToStore(PointsLayer *this)

{
  bool bVar1;
  char cVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  int iVar5;
  NetworkManager *this_00;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  NetworkManager::sharedNetworkManager();
  cVar2 = NetworkManagerBridge::isInternetReachable();
  if (cVar2 != '\x01') {
    Sound::playSound(sndEng,0xe);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Internet Connection Failed",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,"Please make sure your internet connection is working.",auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,"THANK YOU",auStack_20);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar4 = cocos2d::CCArray::create(pCVar3,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar4,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
    return;
  }
  iVar5 = ApplicationInterface::requiresClaimedIdentity();
  if (iVar5 != 0) {
    NetworkManager::sharedNetworkManager();
    cVar2 = NetworkManager::checkCurrentSessionIsValid();
    if (cVar2 != '\x01') {
      bVar1 = true;
      goto LAB_003bced2;
    }
  }
  bVar1 = false;
LAB_003bced2:
  if (bVar1) {
    Sound::playSound(sndEng,0xd);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Please Wait",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,
                 "We are refreshing your connection.  Give us a few seconds and try your purchase again."
                 ,auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,&DAT_007e361c,auStack_20);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar4 = cocos2d::CCArray::create(pCVar3,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar4,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::requestWebSession(this_00);
  }
  else {
    cVar2 = InAppPurchaseBridge::canMakePurchases();
    if (cVar2 != '\x01') {
      if (this[0x16c] != (PointsLayer)0x1) {
        InAppPurchaseBridge::showPurchaseStatusAlert();
      }
      this[0x16c] = (PointsLayer)0x1;
    }
  }
  return;
}

// ---- PointsLayer::onRestore  @ 0x3bd05c
/* PointsLayer::onRestore(cocos2d::CCObject*) */

void PointsLayer::onRestore(CCObject *param_1)

{
  checkCanConnectToStore((PointsLayer *)param_1);
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    InAppPurchaseBridge::restore();
    param_1[0x108] = (CCObject)0x0;
  }
  return;
}

// ---- PointsLayer::processPurchase  @ 0x3bd0a8
/* PointsLayer::processPurchase(std::string) */

void __thiscall PointsLayer::processPurchase(PointsLayer *this,undefined4 param_2)

{
  undefined1 auStack_c [4];
  
  checkCanConnectToStore(this);
  if (this[0x108] == (PointsLayer)0x0) {
    this[0x108] = (PointsLayer)0x1;
    Sound::playSound(sndEng,0xd);
    this[0x16e] = (PointsLayer)0x1;
    FUN_007c64e8(auStack_c,param_2);
    InAppPurchaseBridge::purchaseProduct(auStack_c);
    FUN_007c5914(auStack_c);
    this[0x108] = (PointsLayer)0x0;
  }
  return;
}

// ---- PointsLayer::onBattlePack1  @ 0x3bd120
/* PointsLayer::onBattlePack1(cocos2d::CCObject*) */

void __thiscall PointsLayer::onBattlePack1(PointsLayer *this,CCObject *param_1)

{
  char cVar1;
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack1",auStack_c,auStack_c,param_1);
  FUN_0079a3fc(auStack_c);
  FUN_007c64e8(auStack_10,auStack_14);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_10);
  FUN_007c5914(auStack_10);
  if (cVar1 != '\x01') {
    (**(code **)(**(int **)(this + 0x140) + 0x1a4))(*(undefined4 *)(this + 0x140),100);
    (**(code **)(**(int **)(this + 0x13c) + 0x1a4))(*(undefined4 *)(this + 0x13c),100);
    FUN_007c64e8(auStack_c,auStack_14);
    processPurchase(this,auStack_c);
    FUN_007c5914(auStack_c);
  }
  FUN_007c5914(auStack_14);
  return;
}

// ---- PointsLayer::onBattlePack2  @ 0x3bd204
/* PointsLayer::onBattlePack2(cocos2d::CCObject*) */

void __thiscall PointsLayer::onBattlePack2(PointsLayer *this,CCObject *param_1)

{
  char cVar1;
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack2",auStack_c,auStack_c,param_1);
  FUN_0079a3fc(auStack_c);
  FUN_007c64e8(auStack_10,auStack_14);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_10);
  FUN_007c5914(auStack_10);
  if (cVar1 != '\x01') {
    (**(code **)(**(int **)(this + 0x14c) + 0x1a4))(*(undefined4 *)(this + 0x14c),100);
    (**(code **)(**(int **)(this + 0x148) + 0x1a4))(*(undefined4 *)(this + 0x148),100);
    FUN_007c64e8(auStack_c,auStack_14);
    processPurchase(this,auStack_c);
    FUN_007c5914(auStack_c);
  }
  FUN_007c5914(auStack_14);
  return;
}

// ---- PointsLayer::onBattlePack3  @ 0x3bd2e8
/* PointsLayer::onBattlePack3(cocos2d::CCObject*) */

void __thiscall PointsLayer::onBattlePack3(PointsLayer *this,CCObject *param_1)

{
  char cVar1;
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack3",auStack_c,auStack_c,param_1);
  FUN_0079a3fc(auStack_c);
  FUN_007c64e8(auStack_10,auStack_14);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_10);
  FUN_007c5914(auStack_10);
  if (cVar1 != '\x01') {
    (**(code **)(**(int **)(this + 0x158) + 0x1a4))(*(undefined4 *)(this + 0x158),100);
    (**(code **)(**(int **)(this + 0x154) + 0x1a4))(*(undefined4 *)(this + 0x154),100);
    FUN_007c64e8(auStack_c,auStack_14);
    processPurchase(this,auStack_c);
    FUN_007c5914(auStack_c);
  }
  FUN_007c5914(auStack_14);
  return;
}

// ---- PointsLayer::onBattlePack4  @ 0x3bd3cc
/* PointsLayer::onBattlePack4(cocos2d::CCObject*) */

void __thiscall PointsLayer::onBattlePack4(PointsLayer *this,CCObject *param_1)

{
  char cVar1;
  undefined1 auStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.battlepack4",auStack_c,auStack_c,param_1);
  FUN_0079a3fc(auStack_c);
  FUN_007c64e8(auStack_10,auStack_14);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_10);
  FUN_007c5914(auStack_10);
  if (cVar1 != '\x01') {
    (**(code **)(**(int **)(this + 0x164) + 0x1a4))(*(undefined4 *)(this + 0x164),100);
    (**(code **)(**(int **)(this + 0x160) + 0x1a4))(*(undefined4 *)(this + 0x160),100);
    FUN_007c64e8(auStack_c,auStack_14);
    processPurchase(this,auStack_c);
    FUN_007c5914(auStack_c);
  }
  FUN_007c5914(auStack_14);
  return;
}

// ---- PointsLayer::onProPack  @ 0x3bd4b0
/* PointsLayer::onProPack(cocos2d::CCObject*) */

void __thiscall PointsLayer::onProPack(PointsLayer *this,CCObject *param_1)

{
  char cVar1;
  CCDirector *this_00;
  CCScene *pCVar2;
  float fVar3;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.propack",auStack_18,auStack_18,param_1);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  if ((cVar1 != '\x01') && (this[0x108] == (PointsLayer)0x0)) {
    this[0x108] = (PointsLayer)0x1;
    Sound::playSound(sndEng,0xd);
    this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar2 = DAT_009435ac;
    fVar3 = (float)PurchaseLayer::scene();
    pCVar2 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar3,pCVar2);
    cocos2d::CCDirector::replaceScene(this_00,pCVar2);
  }
  return;
}

// ---- PointsLayer::onBack  @ 0x3bd570
/* PointsLayer::onBack(cocos2d::CCObject*) */

void PointsLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009435ac;
    fVar2 = (float)StoreLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
