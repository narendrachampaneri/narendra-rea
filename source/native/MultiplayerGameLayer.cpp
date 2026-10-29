// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 24 functions

// ---- MultiplayerGameLayer::create  @ 0x381cbc
/* MultiplayerGameLayer::create() */

MultiplayerGameLayer * MultiplayerGameLayer::create(void)

{
  bool bVar1;
  MultiplayerGameLayer *this;
  int iVar2;
  
  this = operator_new(0x16c);
  MultiplayerGameLayer(this);
  if ((this == (MultiplayerGameLayer *)0x0) ||
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
    if (this != (MultiplayerGameLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MultiplayerGameLayer *)0x0;
  }
  return this;
}

// ---- MultiplayerGameLayer::MultiplayerGameLayer  @ 0x381d2c
/* MultiplayerGameLayer::MultiplayerGameLayer() */

MultiplayerGameLayer * __thiscall
MultiplayerGameLayer::MultiplayerGameLayer(MultiplayerGameLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009155c0;
  *(undefined ***)(this + 0xe4) = &PTR__MultiplayerGameLayer_1_009157c8;
  *(undefined **)(this + 0xe8) = &DAT_009157f8;
  *(undefined **)(this + 0xec) = &DAT_00915804;
  std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::vector
            ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)(this + 0x160));
  return this;
}

// ---- MultiplayerGameLayer::scene  @ 0x381d9c
/* MultiplayerGameLayer::scene() */

int * MultiplayerGameLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- MultiplayerGameLayer::init  @ 0x381dd0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003826bc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MultiplayerGameLayer::init() */

undefined4 __thiscall MultiplayerGameLayer::init(MultiplayerGameLayer *this)

{
  uint uVar1;
  char *pcVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 uVar5;
  int *piVar6;
  undefined4 uVar7;
  code *pcVar8;
  uint in_fpscr;
  float fVar9;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
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
  undefined1 auStack_104 [3];
  char local_101;
  undefined1 auStack_100 [4];
  uint local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  CCNode *local_f0;
  CCNode *local_ec;
  CCNode *local_e8;
  CCNode *local_e4;
  CCNode *local_e0;
  CCNode *local_dc;
  CCNode *local_d8;
  CCNode *local_d4;
  CCMenuItem *local_d0;
  CCMenuItem *local_cc;
  CCMenuItem *local_c8;
  CCMenuItem *local_c4;
  CCMenuItem *local_c0;
  CCMenuItem *local_bc;
  CCMenuItem *local_b8;
  CCMenuItem *local_b4;
  int *local_b0;
  int *local_ac;
  CCSize local_a8 [8];
  CCPoint local_a0 [8];
  CCPoint aCStack_98 [8];
  CCPoint aCStack_90 [8];
  undefined1 auStack_88 [8];
  code *local_80;
  undefined4 local_7c;
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
  
  local_101 = cocos2d::CCLayer::init((CCLayer *)this);
  if (local_101 == '\x01') {
    this[0x108] = (MultiplayerGameLayer)0x0;
    this[0x109] = (MultiplayerGameLayer)0x0;
    fVar9 = (float)cocos2d::CCSize::CCSize(local_a8,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_a0,fVar9,extraout_s1);
    *(undefined4 *)(this + 0x154) = 0x3f0ccccd;
    *(undefined4 *)(this + 0x158) = 0x41c00000;
    *(undefined4 *)(this + 0x15c) = 0xc1000000;
    local_f8 = 0;
    local_f4 = 0x42400000;
    local_f0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_bot.png");
    local_ec = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
    local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("DAad.png");
    local_80 = (code *)0x383865;
    local_7c = 0;
    local_d0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_f0,local_f0,(CCObject *)this,(_func_void_CCObject_ptr *)0x383865);
    uVar5 = cocos2d::CCMenu::create(local_d0,0);
    *(undefined4 *)(this + 0x140) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    local_78 = (code *)0x3837c1;
    local_74 = 0;
    local_cc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e4,local_e4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3837c1);
    uVar5 = cocos2d::CCMenu::create(local_cc,0);
    *(undefined4 *)(this + 0x148) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    local_70 = (code *)0x383e95;
    local_6c = 0;
    local_c8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e0,local_e0,(CCObject *)this,(_func_void_CCObject_ptr *)0x383e95);
    uVar5 = cocos2d::CCMenu::create(local_c8,0);
    *(undefined4 *)(this + 0x13c) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    local_68 = (code *)0x383c75;
    local_64 = 0;
    local_c4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e8,local_e8,(CCObject *)this,(_func_void_CCObject_ptr *)0x383c75);
    uVar5 = cocos2d::CCMenu::create(local_c4,0);
    *(undefined4 *)(this + 0x138) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    local_60 = (code *)0x383abd;
    local_5c = 0;
    local_c0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_ec,local_ec,(CCObject *)this,(_func_void_CCObject_ptr *)0x383abd);
    uVar5 = cocos2d::CCMenu::create(local_c0,0);
    *(undefined4 *)(this + 0x134) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    local_58 = (code *)0x383989;
    local_54 = 0;
    local_bc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_dc,local_dc,(CCObject *)this,(_func_void_CCObject_ptr *)0x383989);
    uVar5 = cocos2d::CCMenu::create(local_bc,0);
    *(undefined4 *)(this + 0x14c) = uVar5;
    fVar9 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    pcVar8 = *(code **)(**(int **)(this + 0x14c) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x14c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar9,extraout_s1_00);
    (*pcVar8)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x14c));
    local_50 = (code *)0x384375;
    local_4c = 0;
    local_b8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d8,local_d8,(CCObject *)this,(_func_void_CCObject_ptr *)0x384375);
    uVar5 = cocos2d::CCMenu::create(local_b8,0);
    *(undefined4 *)(this + 0x144) = uVar5;
    fVar9 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    pcVar8 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar9,extraout_s1_01);
    (*pcVar8)(uVar5,&local_30);
    local_48 = (code *)0x3839ed;
    local_44 = 0;
    local_b4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d4,local_d4,(CCObject *)this,(_func_void_CCObject_ptr *)0x3839ed);
    uVar5 = cocos2d::CCMenu::create(local_b4,0);
    *(undefined4 *)(this + 0x150) = uVar5;
    fVar9 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar8 = *(code **)(**(int **)(this + 0x150) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar9,extraout_s1_02);
    (*pcVar8)(uVar5,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x150));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("ONLINE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x114),(int)*(float *)(this + 0x158));
    (**(code **)(**(int **)(this + 0x114) + 0x40))
              (*(undefined4 *)(this + 0x114),*(undefined4 *)(this + 0x154));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("ONLINE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x118),(int)*(float *)(this + 0x158));
    (**(code **)(**(int **)(this + 0x118) + 0x40))
              (*(undefined4 *)(this + 0x118),*(undefined4 *)(this + 0x154));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("QUICK PLAY",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x11c),(int)*(float *)(this + 0x158));
    (**(code **)(**(int **)(this + 0x11c) + 0x40))
              (*(undefined4 *)(this + 0x11c),*(undefined4 *)(this + 0x154));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("LAN WIFI",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x120),(int)*(float *)(this + 0x158));
    (**(code **)(**(int **)(this + 0x120) + 0x40))
              (*(undefined4 *)(this + 0x120),*(undefined4 *)(this + 0x154));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("BLUETOOTH",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x124) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x124),(int)*(float *)(this + 0x158));
    (**(code **)(**(int **)(this + 0x124) + 0x40))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x154));
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("LOGOUT",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 300) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    (**(code **)(**(int **)(this + 300) + 0x40))
              (*(undefined4 *)(this + 300),*(undefined4 *)(this + 0x154));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 300),(int)*(float *)(this + 0x158));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::push_back
              ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)(this + 0x160),
               (CCMenu **)(this + 0x138));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    if (gameType != 2) {
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
      std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::push_back
                ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)(this + 0x160),
                 (CCMenu **)(this + 0x13c));
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    }
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
    std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::push_back
              ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)(this + 0x160),
               (CCMenu **)(this + 0x148));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    for (local_fc = 0; uVar1 = local_fc,
        uVar4 = std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::size
                          ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)
                           (this + 0x160)), uVar1 < uVar4; local_fc = local_fc + 1) {
      puVar3 = (undefined4 *)
               std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::operator[]
                         ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)
                          (this + 0x160),local_fc);
      piVar6 = (int *)*puVar3;
      pcVar8 = *(code **)(*piVar6 + 0x4c);
      VectorSignedToFloat(2 - local_fc,(byte)(in_fpscr >> 0x16) & 3);
      cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,extraout_s0,extraout_s1_03);
      (*pcVar8)(piVar6,&local_30);
    }
    pcVar8 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar7 = *(undefined4 *)(this + 0x114);
    (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_04);
    FUN_00380f3c(0,extraout_s1_04,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_04,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_05);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    pcVar8 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar7 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_06);
    FUN_00380f3c(0,extraout_s1_06,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_06,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_07);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    pcVar8 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar7 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_08);
    FUN_00380f3c(0,extraout_s1_08,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_08,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_09);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    pcVar8 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar7 = *(undefined4 *)(this + 300);
    (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_10);
    FUN_00380f3c(0,extraout_s1_10,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 300) + 0x1fc))(*(undefined4 *)(this + 300));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_10,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_11);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    pcVar8 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar7 = *(undefined4 *)(this + 0x120);
    (**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_12);
    FUN_00380f3c(0,extraout_s1_12,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_12,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_13);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    pcVar8 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar7 = *(undefined4 *)(this + 0x124);
    (**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_14);
    FUN_00380f3c(0,extraout_s1_14,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x124) + 0x1fc))(*(undefined4 *)(this + 0x124));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_14,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_15);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    uVar5 = cocos2d::CCSprite::createWithSpriteFrameName("googlePlus.png");
    *(undefined4 *)(this + 0x110) = uVar5;
    pcVar8 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar5 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,extraout_s0_00,extraout_s1_16);
    (*pcVar8)(uVar5,&local_30);
    (**(code **)(**(int **)(this + 0x118) + 200))
              (*(undefined4 *)(this + 0x118),*(undefined4 *)(this + 0x110));
    local_b0 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("gameCenter.png");
    pcVar8 = *(code **)(*local_b0 + 0x4c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,extraout_s0_01,extraout_s1_17);
    (*pcVar8)(local_b0,&local_30);
    (**(code **)(**(int **)(this + 0x114) + 200))(*(undefined4 *)(this + 0x114),local_b0);
    local_ac = (int *)cocos2d::CCSprite::createWithSpriteFrameName("googlePlus.png");
    fVar9 = (float)(**(code **)(*local_ac + 0x40))(local_ac,0x3f000000);
    pcVar8 = *(code **)(*local_ac + 0x4c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar9,extraout_s1_18);
    (*pcVar8)(local_ac,&local_30);
    (**(code **)(**(int **)(this + 300) + 200))(*(undefined4 *)(this + 300),local_ac);
    pcVar2 = (char *)FUN_007c5300(&DAT_00950964);
    uVar5 = cocos2d::CCLabelAtlas::create("BACK",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x128) = uVar5;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    (**(code **)(**(int **)(this + 0x128) + 0x40))
              (*(undefined4 *)(this + 0x128),*(undefined4 *)(this + 0x154));
    cocos2d::CCLabelAtlas::setDrawWidth
              (*(CCLabelAtlas **)(this + 0x128),(int)*(float *)(this + 0x158));
    pcVar8 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar7 = *(undefined4 *)(this + 0x128);
    (**(code **)(**(int **)(this + 0x14c) + 0x50))(*(undefined4 *)(this + 0x14c));
    fVar9 = (float)(**(code **)(**(int **)(this + 0x14c) + 0x50))(*(undefined4 *)(this + 0x14c));
    cocos2d::CCPoint::CCPoint(aCStack_98,fVar9,extraout_s1_19);
    FUN_00380f3c(0,extraout_s1_19,SUB84((double)*(float *)(this + 0x15c),0),&local_40);
    uVar5 = (**(code **)(**(int **)(this + 0x128) + 0x1fc))(*(undefined4 *)(this + 0x128));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar5,auStack_104);
    uVar5 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
    fVar9 = (float)FUN_00380f3c(0,extraout_s1_19,SUB84((double)*(float *)(this + 0x15c),0),&local_30
                               );
    cocos2d::CCPoint::CCPoint(aCStack_90,fVar9,extraout_s1_20);
    FUN_00380f1c(auStack_88,aCStack_98,aCStack_90);
    (*pcVar8)(uVar7,auStack_88);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    uVar5 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x10c) = uVar5;
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),local_a0);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0x23);
    fVar9 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    local_40 = (code *)0x383a89;
    uStack_3c = 0;
    fVar9 = (float)cocos2d::CCNode::schedule((_func_void_float *)this,fVar9);
    local_30 = (code *)0x383369;
    local_2c = 0;
    cocos2d::CCNode::schedule((_func_void_float *)this,fVar9);
    uVar5 = 1;
  }
  else {
    uVar5 = 0;
  }
  return uVar5;
}

// ---- MultiplayerGameLayer::~MultiplayerGameLayer  @ 0x3831f0
/* WARNING: Removing unreachable block (ram,0x00383304) */
/* MultiplayerGameLayer::~MultiplayerGameLayer() */

MultiplayerGameLayer * __thiscall
MultiplayerGameLayer::~MultiplayerGameLayer(MultiplayerGameLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009155c0;
  *(undefined ***)(this + 0xe4) = &PTR__MultiplayerGameLayer_1_009157c8;
  *(undefined **)(this + 0xe8) = &DAT_009157f8;
  *(undefined **)(this + 0xec) = &DAT_00915804;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  std::vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>>::~vector
            ((vector<cocos2d::CCMenu*,std::allocator<cocos2d::CCMenu*>> *)(this + 0x160));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- MultiplayerGameLayer::~MultiplayerGameLayer  @ 0x38331c
/* non-virtual thunk to MultiplayerGameLayer::~MultiplayerGameLayer() */

void __thiscall MultiplayerGameLayer::~MultiplayerGameLayer(MultiplayerGameLayer *this)

{
  ~MultiplayerGameLayer(this + -0xe4);
  return;
}

// ---- MultiplayerGameLayer::~MultiplayerGameLayer  @ 0x383324
/* MultiplayerGameLayer::~MultiplayerGameLayer() */

MultiplayerGameLayer * __thiscall
MultiplayerGameLayer::~MultiplayerGameLayer(MultiplayerGameLayer *this)

{
  ~MultiplayerGameLayer(this);
  operator_delete(this);
  return this;
}

// ---- MultiplayerGameLayer::~MultiplayerGameLayer  @ 0x383340
/* non-virtual thunk to MultiplayerGameLayer::~MultiplayerGameLayer() */

void __thiscall MultiplayerGameLayer::~MultiplayerGameLayer(MultiplayerGameLayer *this)

{
  ~MultiplayerGameLayer(this + -0xe4);
  return;
}

// ---- MultiplayerGameLayer::onExit  @ 0x383348
/* MultiplayerGameLayer::onExit() */

void __thiscall MultiplayerGameLayer::onExit(MultiplayerGameLayer *this)

{
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- MultiplayerGameLayer::updateStep  @ 0x383368
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003835bc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MultiplayerGameLayer::updateStep(float) */

void __thiscall MultiplayerGameLayer::updateStep(MultiplayerGameLayer *this,float param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  uint in_fpscr;
  float fVar5;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  CCPoint aCStack_50 [8];
  CCPoint aCStack_48 [8];
  undefined1 auStack_40 [8];
  undefined1 local_38 [16];
  undefined1 auStack_28 [16];
  
  iVar1 = GPGSStateManager::IsAuthInProgress();
  if (iVar1 == 0) {
    (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"ONLINE");
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar5 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_50,fVar5,extraout_s1_01);
    FUN_00380f3c(0,extraout_s1_01,SUB84((double)*(float *)(this + 0x15c),0),local_38);
    uVar2 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_58);
    FUN_007c6a60(auStack_54,uVar2,auStack_58);
    uVar2 = FUN_007c505c(auStack_54);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar5 = (float)FUN_00380f3c(0,extraout_s1_01,SUB84((double)*(float *)(this + 0x15c),0),
                                auStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_48,fVar5,extraout_s1_02);
    FUN_00380f1c(auStack_40,aCStack_50,aCStack_48);
    (*pcVar4)(uVar3,auStack_40);
    FUN_007c5914(auStack_54);
    FUN_0079a3fc(auStack_58);
    (**(code **)(**(int **)(this + 0x138) + 0x23c))(*(undefined4 *)(this + 0x138),1);
    (**(code **)(**(int **)(this + 0x138) + 0x208))(*(undefined4 *)(this + 0x138),0xff);
    (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),1);
  }
  else {
    (**(code **)(**(int **)(this + 0x118) + 0x1f8))(*(undefined4 *)(this + 0x118),"SIGNING IN");
    pcVar4 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x118);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar5 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_50,fVar5,extraout_s1);
    FUN_00380f3c(0,extraout_s1,SUB84((double)*(float *)(this + 0x15c),0),local_38);
    uVar2 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
    FUN_0079a3f4(auStack_58);
    FUN_007c6a60(auStack_54,uVar2,auStack_58);
    uVar2 = FUN_007c505c(auStack_54);
    VectorUnsignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    fVar5 = (float)FUN_00380f3c(0,extraout_s1,SUB84((double)*(float *)(this + 0x15c),0),auStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_48,fVar5,extraout_s1_00);
    FUN_00380f1c(auStack_40,aCStack_50,aCStack_48);
    (*pcVar4)(uVar3,auStack_40);
    FUN_007c5914(auStack_54);
    FUN_0079a3fc(auStack_58);
    (**(code **)(**(int **)(this + 0x138) + 0x23c))(*(undefined4 *)(this + 0x138),0);
    (**(code **)(**(int **)(this + 0x138) + 0x208))(*(undefined4 *)(this + 0x138),100);
    (**(code **)(**(int **)(this + 0x110) + 0x90))(*(undefined4 *)(this + 0x110),0);
  }
  iVar1 = GPGSStateManager::IsAuthorized();
  if (iVar1 == 0) {
    (**(code **)(**(int **)(this + 0x144) + 0x90))(*(undefined4 *)(this + 0x144),0);
    (**(code **)(**(int **)(this + 0x144) + 0x23c))(*(undefined4 *)(this + 0x144),0);
    (**(code **)(**(int **)(this + 300) + 0x90))(*(undefined4 *)(this + 300),0);
  }
  else {
    (**(code **)(**(int **)(this + 0x144) + 0x90))(*(undefined4 *)(this + 0x144),1);
    (**(code **)(**(int **)(this + 0x144) + 0x23c))(*(undefined4 *)(this + 0x144),1);
    (**(code **)(**(int **)(this + 300) + 0x90))(*(undefined4 *)(this + 300),1);
  }
  return;
}

// ---- MultiplayerGameLayer::onLocal  @ 0x3837c0
/* MultiplayerGameLayer::onLocal(cocos2d::CCObject*) */

void MultiplayerGameLayer::onLocal(CCObject *param_1)

{
  NetworkManager *this;
  CCDirector *this_00;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    s_bSinglePlayer = 0;
    Sound::playSound(sndEng,0xd);
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::useRakNetLAN(this);
    if (gameType == 4) {
      gameType = 3;
    }
    if (gameType == 2) {
      gameType = 5;
    }
    this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943438;
    fVar2 = (float)FindGameLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  }
  return;
}

// ---- MultiplayerGameLayer::onBlueTooth  @ 0x383864
/* MultiplayerGameLayer::onBlueTooth(cocos2d::CCObject*) */

void MultiplayerGameLayer::onBlueTooth(CCObject *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  if (param_1[0x108] == (CCObject)0x0) {
    Sound::playSound(sndEng,0xd);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"Coming Soon!",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,"Local play over Bluetooth is still under construction.",auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,&DAT_007de044,auStack_20);
    pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar2 = cocos2d::CCArray::create(pCVar1,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar2,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
  }
  return;
}

// ---- MultiplayerGameLayer::onBack  @ 0x383988
/* MultiplayerGameLayer::onBack(cocos2d::CCObject*) */

void MultiplayerGameLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943438;
    fVar2 = (float)GameTypeLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- MultiplayerGameLayer::onDA  @ 0x3839ec
/* MultiplayerGameLayer::onDA(cocos2d::CCObject*) */

void MultiplayerGameLayer::onDA(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  ApplicationInterface::openDoodleArmyAppLink();
  return;
}

// ---- MultiplayerGameLayer::onStartedMatchFromMMVC  @ 0x383a18
/* MultiplayerGameLayer::onStartedMatchFromMMVC() */

void MultiplayerGameLayer::onStartedMatchFromMMVC(void)

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
  this = DAT_00943438;
  pCVar1 = (CCScene *)LobbyLayer::scene();
  pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
  cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  return;
}

// ---- MultiplayerGameLayer::inviteCheck  @ 0x383a88
/* MultiplayerGameLayer::inviteCheck(float) */

void MultiplayerGameLayer::inviteCheck(float param_1)

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

// ---- MultiplayerGameLayer::onOnlineGC  @ 0x383abc
/* MultiplayerGameLayer::onOnlineGC(cocos2d::CCObject*) */

void MultiplayerGameLayer::onOnlineGC(CCObject *param_1)

{
  CCTransitionFade *this;
  NetworkManager *pNVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  CCDirector *this_00;
  CCScene *pCVar4;
  float extraout_s0;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [2];
  char local_1e;
  char local_1d;
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0x108] == (CCObject)0x0) {
    Sound::playSound(sndEng,0xd);
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::useGameCenter(pNVar1);
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    local_1e = NetworkManager::isUsingHostedServer(pNVar1);
    pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    local_1d = NetworkManager::isPlayerAuthenticated(pNVar1);
    if ((local_1e == '\x01') || (local_1d == '\x01')) {
      param_1[0x108] = (CCObject)0x1;
      s_bSinglePlayer = 0;
      this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      this = DAT_00943438;
      pCVar4 = (CCScene *)LobbyLayer::scene();
      pCVar4 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar4);
      cocos2d::CCDirector::replaceScene(this_00,pCVar4);
    }
    else {
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_18,"Game Center Required",auStack_24);
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_14,"Please sign into a Game Center account before playing online.",
                   auStack_20);
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(asStack_1c,&DAT_007de044,auStack_28);
      pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_1c);
      uVar3 = cocos2d::CCArray::create(pCVar2,0);
      AMessageBox::showAlert(0x384109,auStack_18,auStack_14,uVar3,0,param_1);
      FUN_007c5914(asStack_1c);
      FUN_0079a3fc(auStack_28);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_20);
      FUN_007c5914(auStack_18);
      FUN_0079a3fc(auStack_24);
      param_1[0x109] = (CCObject)0x1;
    }
  }
  return;
}

// ---- MultiplayerGameLayer::onOnlineGP  @ 0x383c74
/* MultiplayerGameLayer::onOnlineGP(cocos2d::CCObject*) */

void MultiplayerGameLayer::onOnlineGP(CCObject *param_1)

{
  CCTransitionFade *this;
  NetworkManager *pNVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  CCDirector *this_00;
  CCScene *pCVar4;
  float extraout_s0;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 uStack_24;
  char local_23;
  char local_22;
  char local_21;
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0x108] == (CCObject)0x0) {
    Sound::playSound(sndEng,0xd);
    local_23 = ApplicationInterface::initGPGS();
    if (local_23 == '\x01') {
      pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::useGooglePlay(pNVar1);
      pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      local_22 = NetworkManager::isUsingHostedServer(pNVar1);
      pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      local_21 = NetworkManager::isPlayerAuthenticated(pNVar1);
      if ((local_22 == '\x01') || (local_21 == '\x01')) {
        param_1[0x108] = (CCObject)0x1;
        s_bSinglePlayer = 0;
        this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
        this = DAT_00943438;
        pCVar4 = (CCScene *)LobbyLayer::scene();
        pCVar4 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar4);
        cocos2d::CCDirector::replaceScene(this_00,pCVar4);
      }
      else {
        FUN_0079a3f4(auStack_28);
        FUN_007c6a60(auStack_18,"Google+ Login Required",auStack_28);
        FUN_0079a3f4(&uStack_24);
        FUN_007c6a60(auStack_14,
                     "Please login to Google+ to play online using the Google Play Game Services Network or switch to Quickplay."
                     ,&uStack_24);
        FUN_0079a3f4(auStack_30);
        FUN_007c6a60(asStack_20,"CANCEL",auStack_30);
        pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_20);
        FUN_0079a3f4(auStack_2c);
        FUN_007c6a60(asStack_1c,"LOGIN",auStack_2c);
        uVar3 = cocos2d::CCString::create(asStack_1c);
        uVar3 = cocos2d::CCArray::create(pCVar2,uVar3,0);
        AMessageBox::showAlert(0x384125,auStack_18,auStack_14,uVar3,0,param_1);
        FUN_007c5914(asStack_1c);
        FUN_0079a3fc(auStack_2c);
        FUN_007c5914(asStack_20);
        FUN_0079a3fc(auStack_30);
        FUN_007c5914(auStack_14);
        FUN_0079a3fc(&uStack_24);
        FUN_007c5914(auStack_18);
        FUN_0079a3fc(auStack_28);
        param_1[0x109] = (CCObject)0x1;
      }
    }
  }
  return;
}

// ---- MultiplayerGameLayer::onOnlineQP  @ 0x383e94
/* MultiplayerGameLayer::onOnlineQP(cocos2d::CCObject*) */

void MultiplayerGameLayer::onOnlineQP(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  NetworkManager *pNVar4;
  CCDirector *pCVar5;
  CCScene *pCVar6;
  float fVar7;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (param_1[0x108] == (CCObject)0x0) {
    Sound::playSound(sndEng,0xd);
    NetworkManager::sharedNetworkManager();
    cVar1 = NetworkManagerBridge::isInternetReachable();
    if (cVar1 == '\x01') {
      if (param_1[0x108] == (CCObject)0x0) {
        param_1[0x108] = (CCObject)0x1;
        pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        NetworkManager::setUseHostedServer(pNVar4,true);
        pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        NetworkManager::setConnectionType(pNVar4,1);
        gameType = 4;
        mapType = 3;
        if (TOS_ACCEPTED == '\x01') {
          if (((ZRR_AD_SHOWN == '\0') || (CC_AD_SHOWN == '\0')) || (DA_AD_SHOWN == '\0')) {
            pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
            pCVar6 = DAT_00943438;
            fVar7 = (float)AdLayer::scene();
            pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
            cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
          }
          else {
            pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
            pCVar6 = DAT_00943438;
            fVar7 = (float)LobbyLayer::scene();
            pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
            cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
          }
        }
        else {
          pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
          pCVar6 = DAT_00943438;
          fVar7 = (float)TOSLayer::scene();
          pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
          cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
        }
      }
    }
    else {
      Sound::playSound(sndEng,0xe);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(auStack_18,"No Internet Connection",auStack_24);
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(auStack_14,"Please make sure your internet connection is working.",auStack_20);
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(asStack_1c,"THANK YOU",auStack_28);
      pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_1c);
      uVar3 = cocos2d::CCArray::create(pCVar2,0);
      AMessageBox::showAlert(0,auStack_18,auStack_14,uVar3,0,0);
      FUN_007c5914(asStack_1c);
      FUN_0079a3fc(auStack_28);
      FUN_007c5914(auStack_14);
      FUN_0079a3fc(auStack_20);
      FUN_007c5914(auStack_18);
      FUN_0079a3fc(auStack_24);
    }
  }
  return;
}

// ---- MultiplayerGameLayer::authPlayer  @ 0x3840dc
/* MultiplayerGameLayer::authPlayer() */

void __thiscall MultiplayerGameLayer::authPlayer(MultiplayerGameLayer *this)

{
  NetworkManager *this_00;
  
  if (this[0x109] != (MultiplayerGameLayer)0x0) {
    this[0x109] = (MultiplayerGameLayer)0x0;
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::authenticateLocalPlayer(this_00);
  }
  return;
}

// ---- MultiplayerGameLayer::messageBoxHandlerGC  @ 0x384108
/* MultiplayerGameLayer::messageBoxHandlerGC(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void MultiplayerGameLayer::messageBoxHandlerGC(int param_1,CCObject *param_2,CCObject *param_3)

{
  authPlayer((MultiplayerGameLayer *)param_3);
  return;
}

// ---- MultiplayerGameLayer::messageBoxHandlerGP  @ 0x384124
/* MultiplayerGameLayer::messageBoxHandlerGP(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void MultiplayerGameLayer::messageBoxHandlerGP(int param_1,CCObject *param_2,CCObject *param_3)

{
  if (param_1 != 0) {
    authPlayer((MultiplayerGameLayer *)param_3);
  }
  return;
}

// ---- MultiplayerGameLayer::messageBoxHandlerGP2  @ 0x384148
/* MultiplayerGameLayer::messageBoxHandlerGP2(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void MultiplayerGameLayer::messageBoxHandlerGP2(int param_1,CCObject *param_2,CCObject *param_3)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  NetworkManager *pNVar4;
  CCDirector *pCVar5;
  CCScene *pCVar6;
  float fVar7;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManagerBridge::isInternetReachable();
  if (cVar1 == '\x01') {
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setUseHostedServer(pNVar4,true);
    pNVar4 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setConnectionType(pNVar4,1);
    Sound::playSound(sndEng,0xd);
    gameType = 4;
    mapType = 3;
    if (TOS_ACCEPTED == '\x01') {
      if (((ZRR_AD_SHOWN == '\0') || (CC_AD_SHOWN == '\0')) || (DA_AD_SHOWN == '\0')) {
        pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
        pCVar6 = DAT_00943438;
        fVar7 = (float)AdLayer::scene();
        pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
        cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
      }
      else {
        pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
        pCVar6 = DAT_00943438;
        fVar7 = (float)LobbyLayer::scene();
        pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
        cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
      }
    }
    else {
      pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
      pCVar6 = DAT_00943438;
      fVar7 = (float)TOSLayer::scene();
      pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
      cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
    }
  }
  else {
    Sound::playSound(sndEng,0xe);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"No Internet Connection",auStack_24);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_14,"Please make sure your internet connection is working.",auStack_20);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_1c,"THANK YOU",auStack_28);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_1c);
    uVar3 = cocos2d::CCArray::create(pCVar2,0);
    AMessageBox::showAlert(0,auStack_18,auStack_14,uVar3,0,0);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_28);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_18);
    FUN_0079a3fc(auStack_24);
  }
  return;
}

// ---- MultiplayerGameLayer::onLogoutGP  @ 0x384374
/* MultiplayerGameLayer::onLogoutGP(cocos2d::CCObject*) */

void MultiplayerGameLayer::onLogoutGP(CCObject *param_1)

{
  NetworkManager *pNVar1;
  
  Sound::playSound(sndEng,0xd);
  pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::useGooglePlay(pNVar1);
  pNVar1 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::unauthenticateLocalPlayer(pNVar1);
  (**(code **)(**(int **)(param_1 + 0x144) + 0x90))(*(undefined4 *)(param_1 + 0x144),0);
  (**(code **)(**(int **)(param_1 + 300) + 0x90))(*(undefined4 *)(param_1 + 300),0);
  return;
}
