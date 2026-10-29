// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 24 functions

// ---- MenuLayer::create  @ 0x379a0c
/* MenuLayer::create() */

MenuLayer * MenuLayer::create(void)

{
  bool bVar1;
  MenuLayer *this;
  int iVar2;
  
  this = operator_new(0x164);
  MenuLayer(this);
  if ((this == (MenuLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (MenuLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MenuLayer *)0x0;
  }
  return this;
}

// ---- MenuLayer::MenuLayer  @ 0x379a7c
/* MenuLayer::MenuLayer() */

MenuLayer * __thiscall MenuLayer::MenuLayer(MenuLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009151b0;
  *(undefined ***)(this + 0xe4) = &PTR__MenuLayer_1_009153b8;
  *(undefined **)(this + 0xe8) = &DAT_009153e8;
  *(undefined **)(this + 0xec) = &DAT_009153f4;
  return this;
}

// ---- MenuLayer::scene  @ 0x379ad4
/* MenuLayer::scene() */

int * MenuLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- MenuLayer::init  @ 0x379b08
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0037a55a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MenuLayer::init() */

undefined1 __thiscall MenuLayer::init(MenuLayer *this)

{
  Sound *pSVar1;
  undefined1 uVar2;
  char cVar3;
  int iVar4;
  undefined4 uVar5;
  char *pcVar6;
  char *pcVar7;
  string *psVar8;
  uint uVar9;
  CCUserDefault *pCVar10;
  NetworkManager *pNVar11;
  bool bVar12;
  undefined4 uVar13;
  code *pcVar14;
  uint in_fpscr;
  float fVar15;
  float extraout_s0;
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
  ApplicationInterface aAStack_14c [4];
  undefined1 auStack_148 [4];
  undefined1 auStack_144 [4];
  undefined1 auStack_140 [4];
  undefined1 auStack_13c [4];
  undefined1 auStack_138 [4];
  undefined1 auStack_134 [4];
  undefined1 auStack_130 [4];
  undefined1 auStack_12c [4];
  undefined1 auStack_128 [4];
  undefined1 auStack_124 [4];
  int local_120;
  int local_11c;
  int local_118;
  undefined4 local_114;
  undefined4 local_110;
  undefined4 local_10c;
  CCNode *local_108;
  CCNode *local_104;
  CCNode *local_100;
  CCNode *local_fc;
  CCNode *local_f8;
  CCNode *local_f4;
  CCNode *local_f0;
  CCNode *local_ec;
  CCMenuItem *local_e8;
  CCMenuItem *local_e4;
  CCMenuItem *local_e0;
  CCMenuItem *local_dc;
  CCMenuItem *local_d8;
  CCMenuItem *local_d4;
  CCMenuItem *local_d0;
  CCMenuItem *local_cc;
  CCNode *local_c8;
  CCMenuItem *local_c4;
  undefined4 local_c0;
  float local_bc;
  float local_b8;
  int local_b4;
  CCSize local_b0 [8];
  CCPoint local_a8 [8];
  CCPoint aCStack_a0 [8];
  CCPoint aCStack_98 [8];
  string asStack_90 [8];
  code *local_88;
  undefined4 local_84;
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
  
  uVar2 = cocos2d::CCLayer::init((CCLayer *)this);
  (**(code **)(*(int *)this + 500))(this,1);
  FUN_0079a3f4(&local_40);
  FUN_007c6a60(&local_30,"com.chadtowns.da2.propack",&local_40);
  iVar4 = InAppPurchaseBridge::isProductPurchased(&local_30);
  if (iVar4 == 0) {
    skinCount = 1;
  }
  else {
    skinCount = 0xd;
  }
  FUN_007c5914(&local_30);
  FUN_0079a3fc(&local_40);
  iVar4 = ApplicationInterface::hasCrashCartInstalled();
  if (iVar4 == 0) {
    cVar3 = ApplicationInterface::crashCartIsAvailable();
    if (cVar3 != '\x01') goto LAB_00379ba0;
    bVar12 = false;
  }
  else {
LAB_00379ba0:
    bVar12 = true;
  }
  if (bVar12) {
    CC_INSTALLED = 1;
    CC_AD_SHOWN = 1;
    skinCount = skinCount + 2;
  }
  else {
    pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    local_120 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"AdCount2",0);
    if (10 < local_120) {
      CC_AD_SHOWN = 1;
    }
  }
  iVar4 = ApplicationInterface::hasZombieRoadRageInstalled();
  if (iVar4 == 0) {
    cVar3 = ApplicationInterface::zombieRoadRageIsAvailable();
    if (cVar3 != '\x01') goto LAB_00379c0e;
    bVar12 = false;
  }
  else {
LAB_00379c0e:
    bVar12 = true;
  }
  if (bVar12) {
    ZRR_INSTALLED = 1;
    ZRR_AD_SHOWN = 1;
    skinCount = skinCount + 2;
  }
  else {
    pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    local_11c = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"AdCount3",0);
    if (10 < local_11c) {
      ZRR_AD_SHOWN = 1;
    }
  }
  iVar4 = ApplicationInterface::hasDoodleArmyBCInstalled();
  if (iVar4 == 0) {
    cVar3 = ApplicationInterface::doodleArmyBCIsAvailable();
    if (cVar3 != '\x01') goto LAB_00379c92;
    iVar4 = ApplicationInterface::hasDoodleArmyInstalled();
    if (iVar4 != 0) goto LAB_00379c92;
    cVar3 = ApplicationInterface::doodleArmyIsAvailable();
    if (cVar3 != '\x01') goto LAB_00379c92;
    bVar12 = false;
  }
  else {
LAB_00379c92:
    bVar12 = true;
  }
  if (bVar12) {
    DA_INSTALLED = 1;
    DA_AD_SHOWN = 1;
  }
  else {
    pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    local_118 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"AdCount4",0);
    if (10 < local_118) {
      DA_AD_SHOWN = 1;
    }
  }
  this[0x108] = (MenuLayer)0x0;
  *(undefined4 *)(this + 0x158) = 0;
  *(undefined4 *)(this + 0x150) = 0;
  fVar15 = (float)cocos2d::CCSize::CCSize(local_b0,(CCSize *)&screenSize);
  cocos2d::CCPoint::CCPoint(local_a8,fVar15,extraout_s1);
  local_114 = 0;
  local_110 = 0xc1200000;
  local_10c = 0x42400000;
  local_108 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_top.png");
  local_104 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_100 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_fc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
  local_f8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_bot.png");
  local_f4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_f0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_ec = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
  local_88 = (code *)0x37c019;
  local_84 = 0;
  local_e8 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_108,local_108,(CCObject *)this,(_func_void_CCObject_ptr *)0x37c019);
  uVar5 = cocos2d::CCMenu::create(local_e8,0);
  *(undefined4 *)(this + 0x140) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
  pcVar14 = *(code **)(**(int **)(this + 0x140) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x140);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_00);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
  local_80 = (code *)0x37bd15;
  local_7c = 0;
  local_e4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_104,local_104,(CCObject *)this,(_func_void_CCObject_ptr *)0x37bd15);
  uVar5 = cocos2d::CCMenu::create(local_e4,0);
  *(undefined4 *)(this + 0x130) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
  pcVar14 = *(code **)(**(int **)(this + 0x130) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x130);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_01);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
  local_78 = (code *)0x37bc89;
  local_74 = 0;
  local_e0 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_100,local_100,(CCObject *)this,(_func_void_CCObject_ptr *)0x37bc89);
  uVar5 = cocos2d::CCMenu::create(local_e0,0);
  *(undefined4 *)(this + 0x138) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
  pcVar14 = *(code **)(**(int **)(this + 0x138) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x138);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_02);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
  local_70 = (code *)0x37bc19;
  local_6c = 0;
  local_dc = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_fc,local_fc,(CCObject *)this,(_func_void_CCObject_ptr *)0x37bc19);
  uVar5 = cocos2d::CCMenu::create(local_dc,0);
  *(undefined4 *)(this + 0x134) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
  pcVar14 = *(code **)(**(int **)(this + 0x134) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x134);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_03);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
  local_68 = (code *)0x37bf51;
  local_64 = 0;
  local_d8 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_f8,local_f8,(CCObject *)this,(_func_void_CCObject_ptr *)0x37bf51);
  uVar5 = cocos2d::CCMenu::create(local_d8,0);
  *(undefined4 *)(this + 0x13c) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
  pcVar14 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x13c);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_04);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
  local_60 = (code *)0x37bfb5;
  local_5c = 0;
  local_d4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_f4,local_f4,(CCObject *)this,(_func_void_CCObject_ptr *)0x37bfb5);
  uVar5 = cocos2d::CCMenu::create(local_d4,0);
  *(undefined4 *)(this + 300) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
  pcVar14 = *(code **)(**(int **)(this + 300) + 0x4c);
  uVar5 = *(undefined4 *)(this + 300);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_05);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
  local_58 = (code *)0x37b8d9;
  local_54 = 0;
  local_d0 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_f0,local_f0,(CCObject *)this,(_func_void_CCObject_ptr *)0x37b8d9);
  uVar5 = cocos2d::CCMenu::create(local_d0,0);
  *(undefined4 *)(this + 0x144) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
  pcVar14 = *(code **)(**(int **)(this + 0x144) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x144);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_06);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
  local_50 = (code *)0x37ba41;
  local_4c = 0;
  local_cc = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_ec,local_ec,(CCObject *)this,(_func_void_CCObject_ptr *)0x37ba41);
  uVar5 = cocos2d::CCMenu::create(local_cc,0);
  *(undefined4 *)(this + 0x148) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
  pcVar14 = *(code **)(**(int **)(this + 0x148) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x148);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_07);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
  uVar5 = ApplicationInterface::getRandomAdNumber();
  *(undefined4 *)(this + 0x158) = uVar5;
  ApplicationInterface::getAdSpriteName(aAStack_14c,*(int *)(this + 0x158));
  pcVar6 = (char *)FUN_007c5300(aAStack_14c);
  local_c8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName(pcVar6);
  local_48 = (code *)0x37bbfd;
  local_44 = 0;
  local_c4 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (local_c8,local_c8,(CCObject *)this,(_func_void_CCObject_ptr *)0x37bbfd);
  uVar5 = cocos2d::CCMenu::create(local_c4,0);
  *(undefined4 *)(this + 0x154) = uVar5;
  fVar15 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
  pcVar14 = *(code **)(**(int **)(this + 0x154) + 0x4c);
  uVar5 = *(undefined4 *)(this + 0x154);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,fVar15,extraout_s1_08);
  (*pcVar14)(uVar5,&local_30);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x154));
  local_c0 = 0x3f0ccccd;
  local_bc = 24.0;
  local_b8 = -8.0;
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("QUICK PLAY",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x11c) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_bc);
  (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x11c);
  (**(code **)(**(int **)(this + 0x130) + 0x50))(*(undefined4 *)(this + 0x130));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x130) + 0x50))(*(undefined4 *)(this + 0x130));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_09);
  FUN_00378c8c(0,extraout_s1_09,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_148,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_148);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_09,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_10);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_148);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("MULTIPLAYER",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x110) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x110),(int)local_bc);
  (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x110) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x110);
  (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_11);
  FUN_00378c8c(0,extraout_s1_11,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x110) + 0x1fc))(*(undefined4 *)(this + 0x110));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_144,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_144);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_11,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_12);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_144);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("SOLO PLAY",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x10c) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),(int)local_bc);
  (**(code **)(**(int **)(this + 0x10c) + 0x40))(*(undefined4 *)(this + 0x10c),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x10c);
  (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_13);
  FUN_00378c8c(0,extraout_s1_13,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x10c) + 0x1fc))(*(undefined4 *)(this + 0x10c));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_140,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_140);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_13,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_14);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_140);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("SETTINGS",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x114) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),(int)local_bc);
  (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x114) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x114);
  (**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x13c) + 0x50))(*(undefined4 *)(this + 0x13c));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_15);
  FUN_00378c8c(0,extraout_s1_15,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x114) + 0x1fc))(*(undefined4 *)(this + 0x114));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_13c,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_13c);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_15,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_16);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_13c);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("INFO",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x118) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),(int)local_bc);
  (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x118) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x118);
  (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
  fVar15 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_17);
  FUN_00378c8c(0,extraout_s1_17,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x118) + 0x1fc))(*(undefined4 *)(this + 0x118));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_138,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_138);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_17,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_18);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_138);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("HELP",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x124) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x124),(int)local_bc);
  (**(code **)(**(int **)(this + 0x124) + 0x40))(*(undefined4 *)(this + 0x124),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x124) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x124);
  (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_19);
  FUN_00378c8c(0,extraout_s1_19,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x124) + 0x1fc))(*(undefined4 *)(this + 0x124));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_134,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_134);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_19,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_20);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_134);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
  pcVar6 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create("NEWS",pcVar6,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x128) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x128),(int)local_bc);
  (**(code **)(**(int **)(this + 0x128) + 0x40))(*(undefined4 *)(this + 0x128),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x128) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x128);
  (**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x148) + 0x50))(*(undefined4 *)(this + 0x148));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_21);
  FUN_00378c8c(0,extraout_s1_21,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x128) + 0x1fc))(*(undefined4 *)(this + 0x128));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_130,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_130);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_21,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_22);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_130);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
  FUN_0079a3f4(&local_30);
  FUN_007c6a60(auStack_12c,"UPGRADE",&local_30);
  FUN_0079a3fc(&local_30);
  pcVar6 = (char *)FUN_007c5300(auStack_12c);
  pcVar7 = (char *)FUN_007c5300(&DAT_0095089c);
  uVar5 = cocos2d::CCLabelAtlas::create(pcVar6,pcVar7,0x20,0x20,0x20);
  *(undefined4 *)(this + 0x120) = uVar5;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_bc);
  (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_c0);
  pcVar14 = *(code **)(**(int **)(this + 0x120) + 0x4c);
  uVar13 = *(undefined4 *)(this + 0x120);
  (**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
  fVar15 = (float)(**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
  cocos2d::CCPoint::CCPoint(aCStack_a0,fVar15,extraout_s1_23);
  FUN_00378c8c(0,extraout_s1_23,SUB84((double)local_b8,0),&local_40);
  uVar5 = (**(code **)(**(int **)(this + 0x120) + 0x1fc))(*(undefined4 *)(this + 0x120));
  FUN_0079a3f4(auStack_124);
  FUN_007c6a60(auStack_128,uVar5,auStack_124);
  uVar5 = FUN_007c505c(auStack_128);
  VectorUnsignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)FUN_00378c8c(0,extraout_s1_23,SUB84((double)local_b8,0),&local_30);
  cocos2d::CCPoint::CCPoint(aCStack_98,fVar15,extraout_s1_24);
  FUN_00378c6c(asStack_90,aCStack_a0,aCStack_98);
  (*pcVar14)(uVar13,asStack_90);
  FUN_007c5914(auStack_128);
  FUN_0079a3fc(auStack_124);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
  uVar5 = cocos2d::CCSprite::create("title_ret2_new.png");
  *(undefined4 *)(this + 0x14c) = uVar5;
  (**(code **)(**(int **)(this + 0x14c) + 0x4c))(*(undefined4 *)(this + 0x14c),local_a8);
  (**(code **)(**(int **)(this + 0x14c) + 0x1a4))(*(undefined4 *)(this + 0x14c),0x23);
  (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x14c));
  cVar3 = Sound::isPlayingMusic();
  pSVar1 = sndEng;
  fVar15 = extraout_s0;
  if (cVar3 != '\x01') {
    FUN_0079a3f4(&local_30);
    FUN_007c6a60(auStack_124,"presMix.mp3",&local_30);
    Sound::playMusicFile(pSVar1,auStack_124,0x3f000000,1);
    FUN_007c5914(auStack_124);
    fVar15 = (float)FUN_0079a3fc(&local_30);
  }
  local_40 = (code *)0x37c0ed;
  uStack_3c = 0;
  cocos2d::CCNode::schedule((_func_void_float *)this,fVar15);
  local_30 = (code *)0x37c121;
  local_2c = 0;
  cocos2d::CCNode::schedule((_func_void_float *)this);
  psVar8 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
  FUN_0079a3f4(asStack_90);
  FUN_007c6a60(aCStack_98,&DAT_007dd5c0,asStack_90);
  cocos2d::CCUserDefault::getStringForKey((char *)aCStack_a0,psVar8);
  FUN_007c5914(aCStack_98);
  FUN_0079a3fc(asStack_90);
  iVar4 = FUN_007c505c(aCStack_a0);
  if (iVar4 == 0) {
LAB_0037b4b2:
    bVar12 = true;
  }
  else {
    uVar9 = FUN_007c505c(aCStack_a0);
    if (0x10 < uVar9) goto LAB_0037b4b2;
    bVar12 = false;
  }
  if (bVar12) {
    pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    FUN_0079a3f4(aCStack_98);
    FUN_007c6a60(asStack_90,"NOOBIE",aCStack_98);
    cocos2d::CCUserDefault::setStringForKey(pCVar10,"PlayerName",asStack_90);
    FUN_007c5914(asStack_90);
    FUN_0079a3fc(aCStack_98);
  }
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  local_b4 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"PlayerSkin",0);
  if (local_b4 < skinCountMax) {
    if (-1 < local_b4) goto LAB_0037b53a;
  }
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setIntegerForKey(pCVar10,"PlayerSkin",0);
LAB_0037b53a:
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  playerSkin = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"PlayerSkin",0);
  pNVar11 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::setUseHostedServer(pNVar11,false);
  pNVar11 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::setConnectionType(pNVar11,0);
  NetworkManager::sharedNetworkManager();
  NetworkManagerBridge::startReachability();
  FUN_007c5914(aCStack_a0);
  FUN_007c5914(auStack_12c);
  FUN_007c5914(aAStack_14c);
  return uVar2;
}

// ---- MenuLayer::~MenuLayer  @ 0x37b700
/* WARNING: Removing unreachable block (ram,0x0037b824) */
/* MenuLayer::~MenuLayer() */

MenuLayer * __thiscall MenuLayer::~MenuLayer(MenuLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009151b0;
  *(undefined ***)(this + 0xe4) = &PTR__MenuLayer_1_009153b8;
  *(undefined **)(this + 0xe8) = &DAT_009153e8;
  *(undefined **)(this + 0xec) = &DAT_009153f4;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x154));
  NetworkManager::sharedNetworkManager();
  NetworkManagerBridge::stopReachability();
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- MenuLayer::~MenuLayer  @ 0x37b83c
/* non-virtual thunk to MenuLayer::~MenuLayer() */

void __thiscall MenuLayer::~MenuLayer(MenuLayer *this)

{
  ~MenuLayer(this + -0xe4);
  return;
}

// ---- MenuLayer::~MenuLayer  @ 0x37b844
/* MenuLayer::~MenuLayer() */

MenuLayer * __thiscall MenuLayer::~MenuLayer(MenuLayer *this)

{
  ~MenuLayer(this);
  operator_delete(this);
  return this;
}

// ---- MenuLayer::~MenuLayer  @ 0x37b860
/* non-virtual thunk to MenuLayer::~MenuLayer() */

void __thiscall MenuLayer::~MenuLayer(MenuLayer *this)

{
  ~MenuLayer(this + -0xe4);
  return;
}

// ---- MenuLayer::onEnter  @ 0x37b868
/* MenuLayer::onEnter() */

void __thiscall MenuLayer::onEnter(MenuLayer *this)

{
  char cVar1;
  NetworkManager *pNVar2;
  int iVar3;
  
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  ApplicationInterface::createAdBanner();
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::updateServerConfig(pNVar2);
  iVar3 = ApplicationInterface::hasClaimedIdentity();
  if (iVar3 != 0) {
    NetworkManager::sharedNetworkManager();
    cVar1 = NetworkManager::checkCurrentSessionIsValid();
    if (cVar1 != '\x01') {
      pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::requestWebSession(pNVar2);
    }
  }
  return;
}

// ---- MenuLayer::onExit  @ 0x37b8bc
/* MenuLayer::onExit() */

void __thiscall MenuLayer::onExit(MenuLayer *this)

{
  cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
  cocos2d::CCLayer::onExit((CCLayer *)this);
  return;
}

// ---- MenuLayer::onHelp  @ 0x37b8d8
/* MenuLayer::onHelp(cocos2d::CCObject*) */

void MenuLayer::onHelp(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  CCDirector *this;
  CCScene *pCVar4;
  float fVar5;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManagerBridge::isInternetReachable();
  if (cVar1 != '\x01') {
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"No Internet Connection",auStack_24);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_14,"Enable your internet connection to access Mini Militia Help!",
                 auStack_20);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_1c,&DAT_007dd63c,auStack_28);
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
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar4 = DAT_00943420;
    fVar5 = (float)HelpLayer::scene();
    pCVar4 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar5,pCVar4);
    cocos2d::CCDirector::replaceScene(this,pCVar4);
  }
  return;
}

// ---- MenuLayer::onNews  @ 0x37ba40
/* MenuLayer::onNews(cocos2d::CCObject*) */

void MenuLayer::onNews(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  int iVar4;
  CCUserDefault *this;
  CCDirector *this_00;
  CCScene *pCVar5;
  float fVar6;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManagerBridge::isInternetReachable();
  if (cVar1 != '\x01') {
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_18,"No Internet Connection",auStack_24);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_14,"Enable your internet connection to see up to date Mini Militia News!",
                 auStack_20);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_1c,&DAT_007dd63c,auStack_28);
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
  if (param_1[0x108] == (CCObject)0x0) {
    NetworkManager::sharedNetworkManager();
    iVar4 = NetworkManager::getNewsEpoch();
    if (FLASH_NEWS <= iVar4) {
      NetworkManager::sharedNetworkManager();
      FLASH_NEWS = NetworkManager::getNewsEpoch();
    }
    this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(this,"FlashNews",FLASH_NEWS);
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar5 = DAT_00943420;
    fVar6 = (float)NewsLayer::scene();
    pCVar5 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar6,pCVar5);
    cocos2d::CCDirector::replaceScene(this_00,pCVar5);
  }
  return;
}

// ---- MenuLayer::onCrossPromoAd  @ 0x37bbfc
/* MenuLayer::onCrossPromoAd(cocos2d::CCObject*) */

void MenuLayer::onCrossPromoAd(CCObject *param_1)

{
  ApplicationInterface::adClicked(*(int *)(param_1 + 0x158));
  return;
}

// ---- MenuLayer::onSolo  @ 0x37bc18
/* MenuLayer::onSolo(cocos2d::CCObject*) */

void MenuLayer::onSolo(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    s_bSinglePlayer = 0;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943420;
    fVar2 = (float)LocalGameLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- MenuLayer::onMultiplayer  @ 0x37bc88
/* MenuLayer::onMultiplayer(cocos2d::CCObject*) */

void MenuLayer::onMultiplayer(CCObject *param_1)

{
  ScoreKeeper *this;
  NetworkManager *this_00;
  CCDirector *this_01;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    if (gameType == 1) {
      this = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      ScoreKeeper::clearScores(this);
    }
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::setUseHostedServer(this_00,false);
    this_01 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943420;
    fVar2 = (float)GameTypeLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this_01,pCVar1);
  }
  return;
}

// ---- MenuLayer::onQuick  @ 0x37bd14
/* MenuLayer::onQuick(cocos2d::CCObject*) */

void MenuLayer::onQuick(CCObject *param_1)

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
    if (param_1[0x108] == (CCObject)0x0) {
      param_1[0x108] = (CCObject)0x1;
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
          pCVar6 = DAT_00943420;
          fVar7 = (float)AdLayer::scene();
          pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
          cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
        }
        else {
          pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
          pCVar6 = DAT_00943420;
          fVar7 = (float)LobbyLayer::scene();
          pCVar6 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar7,pCVar6);
          cocos2d::CCDirector::replaceScene(pCVar5,pCVar6);
        }
      }
      else {
        pCVar5 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
        pCVar6 = DAT_00943420;
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
  return;
}

// ---- MenuLayer::onAvatar  @ 0x37bf50
/* MenuLayer::onAvatar(cocos2d::CCObject*) */

void MenuLayer::onAvatar(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943420;
    fVar2 = (float)SettingsLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- MenuLayer::onCredits  @ 0x37bfb4
/* MenuLayer::onCredits(cocos2d::CCObject*) */

void MenuLayer::onCredits(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943420;
    fVar2 = (float)AboutLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- MenuLayer::onUpgrade  @ 0x37c018
/* MenuLayer::onUpgrade(cocos2d::CCObject*) */

void MenuLayer::onUpgrade(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_00943420;
    fVar2 = (float)PurchaseLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- MenuLayer::onStartedMatchFromMMVC  @ 0x37c07c
/* MenuLayer::onStartedMatchFromMMVC() */

void MenuLayer::onStartedMatchFromMMVC(void)

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
  this = DAT_00943420;
  pCVar1 = (CCScene *)LobbyLayer::scene();
  pCVar1 = (CCScene *)cocos2d::CCTransitionFade::create(this,extraout_s0,pCVar1);
  cocos2d::CCDirector::replaceScene(this_00,pCVar1);
  return;
}

// ---- MenuLayer::inviteCheck  @ 0x37c0ec
/* MenuLayer::inviteCheck(float) */

void MenuLayer::inviteCheck(float param_1)

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

// ---- MenuLayer::updateThrob  @ 0x37c120
/* MenuLayer::updateThrob(float) */

void __thiscall MenuLayer::updateThrob(MenuLayer *this,float param_1)

{
  char cVar1;
  undefined4 extraout_r0;
  int iVar2;
  undefined4 extraout_r0_00;
  float in_r1;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 uVar3;
  code *pcVar4;
  undefined4 uVar5;
  undefined4 extraout_s0;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  double dVar6;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  *(float *)(this + 0x150) = *(float *)(this + 0x150) + in_r1 * 5.0;
  FUN_0079a3f4(param_1,auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.propack",auStack_18);
  cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_14);
  FUN_007c5914(auStack_14);
  uVar5 = FUN_0079a3fc(auStack_18);
  if (cVar1 == '\x01') {
    (**(code **)(**(int **)(this + 0x120) + 0x1a4))(*(undefined4 *)(this + 0x120),0xff);
  }
  else {
    pcVar4 = *(code **)(**(int **)(this + 0x120) + 0x1a4);
    uVar3 = *(undefined4 *)(this + 0x120);
    cos((double)CONCAT44(extraout_s1,uVar5));
    dVar6 = (double)CONCAT44(extraout_r1,extraout_r0) * 75.0 + 150.0;
    (*pcVar4)(uVar3,(uint)(0.0 < dVar6) * (int)(longlong)dVar6 & 0xff);
  }
  NetworkManager::sharedNetworkManager();
  iVar2 = NetworkManager::getNewsEpoch();
  if (FLASH_NEWS < iVar2) {
    pcVar4 = *(code **)(**(int **)(this + 0x128) + 0x1a4);
    uVar5 = *(undefined4 *)(this + 0x128);
    cos((double)CONCAT44(extraout_s1_00,extraout_s0));
    dVar6 = (double)CONCAT44(extraout_r1_00,extraout_r0_00) * 75.0 + 150.0;
    (*pcVar4)(uVar5,(uint)(0.0 < dVar6) * (int)(longlong)dVar6 & 0xff);
  }
  else {
    (**(code **)(**(int **)(this + 0x128) + 0x1a4))(*(undefined4 *)(this + 0x128),0xff);
  }
  return;
}

// ---- MenuLayer::keyBackClicked  @ 0x37c2b8
/* MenuLayer::keyBackClicked() */

void MenuLayer::keyBackClicked(void)

{
  ApplicationInterface::exit();
  return;
}

// ---- MenuLayer::keyBackClicked  @ 0x37c2c8
/* non-virtual thunk to MenuLayer::keyBackClicked() */

void __thiscall MenuLayer::keyBackClicked(MenuLayer *this)

{
  keyBackClicked();
  return;
}
