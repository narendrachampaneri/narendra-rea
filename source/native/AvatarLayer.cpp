// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 25 functions

// ---- AvatarLayer::create  @ 0x2fdc78
/* AvatarLayer::create() */

AvatarLayer * AvatarLayer::create(void)

{
  bool bVar1;
  AvatarLayer *this;
  int iVar2;
  
  this = operator_new(0x188);
  AvatarLayer(this);
  if ((this == (AvatarLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
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
    if (this != (AvatarLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AvatarLayer *)0x0;
  }
  return this;
}

// ---- AvatarLayer::AvatarLayer  @ 0x2fdd0c
/* AvatarLayer::AvatarLayer() */

AvatarLayer * __thiscall AvatarLayer::AvatarLayer(AvatarLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  cocos2d::extension::CCEditBoxDelegate::CCEditBoxDelegate((CCEditBoxDelegate *)(this + 0x108));
  *(undefined ***)this = &PTR_copyWithZone_1_0090b0c8;
  *(undefined ***)(this + 0xe4) = &PTR__AvatarLayer_1_0090b2d8;
  *(undefined **)(this + 0xe8) = &DAT_0090b308;
  *(undefined **)(this + 0xec) = &DAT_0090b314;
  *(undefined ***)(this + 0x108) = &PTR__AvatarLayer_1_0090b324;
  FUN_007c51b0(this + 0x158);
  return this;
}

// ---- AvatarLayer::scene  @ 0x2fdda4
/* AvatarLayer::scene() */

int * AvatarLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- AvatarLayer::init  @ 0x2fddd8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x002ff272 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* AvatarLayer::init() */

undefined4 __thiscall AvatarLayer::init(AvatarLayer *this)

{
  uint uVar1;
  char cVar2;
  int iVar3;
  CCObject *pCVar4;
  CCInteger *this_00;
  uint uVar5;
  CCString *pCVar6;
  char *pcVar7;
  char *pcVar8;
  LeaderBoardBridge *pLVar9;
  string *psVar10;
  CCScale9Sprite *pCVar11;
  AvatarRenderer *pAVar12;
  undefined4 uVar13;
  CCArray *pCVar14;
  code *pcVar15;
  CCEditBox *this_01;
  undefined4 uVar16;
  uint in_fpscr;
  float fVar17;
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
  float extraout_s1_25;
  float extraout_s1_26;
  float extraout_s1_27;
  float extraout_s1_28;
  float extraout_s1_29;
  float extraout_s1_30;
  float fVar18;
  undefined1 auStack_150 [4];
  undefined1 auStack_14c [4];
  undefined1 auStack_148 [4];
  undefined1 auStack_144 [4];
  int local_140;
  uint local_13c;
  int local_138;
  CCNode *local_134;
  CCNode *local_130;
  CCNode *local_12c;
  CCNode *local_128;
  CCNode *local_124;
  CCNode *local_120;
  CCNode *local_11c;
  CCNode *local_118;
  CCNode *local_114;
  CCNode *local_110;
  CCNode *local_10c;
  CCNode *local_108;
  CCMenuItem *local_104;
  CCMenuItem *local_100;
  CCMenuItem *local_fc;
  undefined4 local_f8;
  undefined4 local_f4;
  CCMenuItem *local_f0;
  CCMenuItem *local_ec;
  CCMenuItem *local_e8;
  float local_e4;
  float local_e0;
  float local_dc;
  int local_d8;
  float local_d4;
  int local_d0;
  int local_cc;
  int local_c8;
  undefined4 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  CCArray *local_b8;
  CCTexture2D *local_b4;
  CCTexture2D *local_b0;
  CCTexture2D *local_ac;
  CCTexture2D *local_a8;
  int local_a4;
  CCSize local_a0 [8];
  CCPoint local_98 [8];
  CCPoint aCStack_90 [8];
  CCPoint aCStack_88 [8];
  CCPoint aCStack_80 [8];
  undefined1 auStack_78 [8];
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
  CCPoint local_30;
  undefined1 local_2f;
  undefined1 local_2e;
  
  cVar2 = cocos2d::CCLayer::init((CCLayer *)this);
  if (cVar2 == '\x01') {
    this[0x10c] = (AvatarLayer)0x0;
    uVar13 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x114) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    FUN_0079a3f4(local_40);
    FUN_007c6a60(&local_30,"com.chadtowns.da2.propack",local_40);
    iVar3 = InAppPurchaseBridge::isProductPurchased(&local_30);
    if (iVar3 == 0) {
      local_138 = 1;
    }
    else {
      local_138 = 0xd;
    }
    FUN_007c5914(&local_30);
    FUN_0079a3fc(local_40);
    for (local_140 = 0; local_140 < local_138; local_140 = local_140 + 1) {
      if ((local_140 != 7) && (local_140 != 0xb)) {
        pCVar14 = *(CCArray **)(this + 0x114);
        pCVar4 = (CCObject *)cocos2d::CCInteger::create(local_140);
        cocos2d::CCArray::addObject(pCVar14,pCVar4);
      }
    }
    if (DA_INSTALLED != '\0') {
      pCVar14 = *(CCArray **)(this + 0x114);
      pCVar4 = (CCObject *)cocos2d::CCInteger::create(7);
      cocos2d::CCArray::addObject(pCVar14,pCVar4);
      pCVar14 = *(CCArray **)(this + 0x114);
      pCVar4 = (CCObject *)cocos2d::CCInteger::create(0xb);
      cocos2d::CCArray::addObject(pCVar14,pCVar4);
    }
    if (ZRR_INSTALLED != '\0') {
      pCVar14 = *(CCArray **)(this + 0x114);
      pCVar4 = (CCObject *)cocos2d::CCInteger::create(0xd);
      cocos2d::CCArray::addObject(pCVar14,pCVar4);
      pCVar14 = *(CCArray **)(this + 0x114);
      pCVar4 = (CCObject *)cocos2d::CCInteger::create(0xe);
      cocos2d::CCArray::addObject(pCVar14,pCVar4);
    }
    if (CC_INSTALLED != '\0') {
      pCVar14 = *(CCArray **)(this + 0x114);
      pCVar4 = (CCObject *)cocos2d::CCInteger::create(0xf);
      cocos2d::CCArray::addObject(pCVar14,pCVar4);
      pCVar14 = *(CCArray **)(this + 0x114);
      pCVar4 = (CCObject *)cocos2d::CCInteger::create(0x10);
      cocos2d::CCArray::addObject(pCVar14,pCVar4);
    }
    for (local_13c = 0; uVar1 = local_13c,
        uVar5 = cocos2d::CCArray::count(*(CCArray **)(this + 0x114)), uVar1 < uVar5;
        local_13c = local_13c + 1) {
      this_00 = (CCInteger *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x114),local_13c);
      iVar3 = cocos2d::CCInteger::getValue(this_00);
      if (iVar3 == playerSkin) {
        *(uint *)(this + 0x110) = local_13c;
        break;
      }
    }
    fVar17 = (float)cocos2d::CCSize::CCSize(local_a0,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_98,fVar17,extraout_s1);
    local_134 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_130 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_12c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_128 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_124 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_120 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_11c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_118 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    local_114 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_110 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    local_10c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_big.png");
    local_108 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_big.png");
    local_70 = (code *)0x2ffd4d;
    local_6c = 0;
    local_104 = (CCMenuItem *)
                cocos2d::CCMenuItemSprite::create
                          (local_134,local_130,(CCObject *)this,(_func_void_CCObject_ptr *)0x2ffd4d)
    ;
    uVar13 = cocos2d::CCMenu::create(local_104,0);
    *(undefined4 *)(this + 0x140) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    pcVar15 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_00);
    (*pcVar15)(uVar13,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    local_68 = (code *)0x2ffe1d;
    local_64 = 0;
    local_100 = (CCMenuItem *)
                cocos2d::CCMenuItemSprite::create
                          (local_12c,local_128,(CCObject *)this,(_func_void_CCObject_ptr *)0x2ffe1d)
    ;
    uVar13 = cocos2d::CCMenu::create(local_100,0);
    *(undefined4 *)(this + 0x144) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    pcVar15 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_01);
    (*pcVar15)(uVar13,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    local_60 = (code *)0x2ffdb5;
    local_5c = 0;
    local_fc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_124,local_120,(CCObject *)this,(_func_void_CCObject_ptr *)0x2ffdb5);
    uVar13 = cocos2d::CCMenu::create(local_fc,0);
    *(undefined4 *)(this + 0x118) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    pcVar15 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x118);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_02);
    (*pcVar15)(uVar13,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    local_f8 = 0xc2000000;
    local_f4 = 0x42b00000;
    local_58 = (code *)0x30027d;
    local_54 = 0;
    local_f0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_11c,local_118,(CCObject *)this,(_func_void_CCObject_ptr *)0x30027d);
    uVar13 = cocos2d::CCMenu::create(local_f0,0);
    *(undefined4 *)(this + 0x124) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar15 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_03);
    (*pcVar15)(uVar13,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    local_50 = (code *)0x30044d;
    local_4c = 0;
    local_ec = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_114,local_110,(CCObject *)this,(_func_void_CCObject_ptr *)0x30044d);
    uVar13 = cocos2d::CCMenu::create(local_ec,0);
    *(undefined4 *)(this + 0x128) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar15 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_04);
    (*pcVar15)(uVar13,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    local_48 = (code *)0x3000bd;
    local_44 = 0;
    local_e8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_10c,local_108,(CCObject *)this,(_func_void_CCObject_ptr *)0x3000bd);
    uVar13 = cocos2d::CCMenu::create(local_e8,0);
    *(undefined4 *)(this + 0x134) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar15 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x134);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_05);
    (*pcVar15)(uVar13,&local_30);
    fVar17 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    local_e4 = -8.0;
    local_e0 = 24.0;
    local_dc = 0.4;
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_06);
    FUN_002fce64(aCStack_90,local_98,&local_30);
    LeaderBoardBridge::sharedLeaderBoardBridge();
    uVar13 = LeaderBoardBridge::calcPlayerExp();
    local_d8 = FUN_002fdb3c(uVar13);
    FUN_002fd61c(auStack_150,local_d8);
    uVar13 = FUN_007c505c(auStack_150);
    fVar17 = (float)VectorUnsignedToFloat(uVar13,(byte)(in_fpscr >> 0x16) & 3);
    fVar17 = (float)VectorSignedToFloat((int)(fVar17 + 0.5),(byte)(in_fpscr >> 0x16) & 3);
    local_d4 = fVar17 * local_e0 * 0.6 * 0.5;
    uVar13 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)(daRank + local_d8 * 0x10));
    *(undefined4 *)(this + 0x17c) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x17c));
    pcVar15 = *(code **)(**(int **)(this + 0x17c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x17c);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_07);
    FUN_002fce64(&local_30,local_98,local_40);
    (*pcVar15)(uVar13,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x17c));
    uVar13 = FUN_007c5300(auStack_150);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("%s",uVar13);
    pcVar7 = (char *)cocos2d::CCString::getCString(pCVar6);
    pcVar8 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create(pcVar7,pcVar8,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x160) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x160));
    pcVar15 = *(code **)(**(int **)(this + 0x160) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x160);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_08);
    FUN_002fce64(&local_30,local_98,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x160),(int)local_e0);
    (**(code **)(**(int **)(this + 0x160) + 0x40))(*(undefined4 *)(this + 0x160),0x3f000000);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x160));
    LeaderBoardBridge::sharedLeaderBoardBridge();
    local_d0 = LeaderBoardBridge::calcPlayerExp();
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("EXP: %d",local_d0);
    pcVar7 = (char *)cocos2d::CCString::getCString(pCVar6);
    pcVar8 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create(pcVar7,pcVar8,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x164) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x164));
    pcVar15 = *(code **)(**(int **)(this + 0x164) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x164);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_09);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x164),(int)local_e0);
    (**(code **)(**(int **)(this + 0x164) + 0x40))(*(undefined4 *)(this + 0x164),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x164));
    pcVar7 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create("RANK PROGRESS:",pcVar7,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x168) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x168));
    pcVar15 = *(code **)(**(int **)(this + 0x168) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x168);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_10);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x168),(int)local_e0);
    (**(code **)(**(int **)(this + 0x168) + 0x40))(*(undefined4 *)(this + 0x168),local_dc * 0.8);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x168));
    local_cc = FUN_002fdaec(local_d8);
    local_cc = local_d0 - local_cc;
    iVar3 = FUN_002fdaec(local_d8 + 1);
    local_c8 = FUN_002fdaec(local_d8);
    local_c8 = iVar3 - local_c8;
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("%d/%d",local_cc,local_c8);
    pcVar7 = (char *)cocos2d::CCString::getCString(pCVar6);
    pcVar8 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create(pcVar7,pcVar8,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x16c) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x16c));
    pcVar15 = *(code **)(**(int **)(this + 0x16c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x16c);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_11);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x16c),(int)local_e0);
    (**(code **)(**(int **)(this + 0x16c) + 0x40))(*(undefined4 *)(this + 0x16c),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x16c));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("bar.png");
    *(undefined4 *)(this + 0x180) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x180));
    pcVar15 = *(code **)(**(int **)(this + 0x180) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x180);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_12);
    (*pcVar15)(uVar13,&local_30);
    pcVar15 = *(code **)(**(int **)(this + 0x180) + 0x1bc);
    uVar16 = *(undefined4 *)(this + 0x180);
    uVar13 = FUN_002fcdf8(0x32,0x50,0xe6);
    local_30 = SUB41(uVar13,0);
    local_2f = (undefined1)((uint)uVar13 >> 8);
    local_2e = (undefined1)((uint)uVar13 >> 0x10);
    fVar17 = (float)(*pcVar15)(uVar16,&local_30);
    pcVar15 = *(code **)(**(int **)(this + 0x180) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x180);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_13);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    fVar17 = (float)VectorSignedToFloat(local_cc,(byte)(in_fpscr >> 0x16) & 3);
    fVar18 = (float)VectorSignedToFloat(local_c8,(byte)(in_fpscr >> 0x16) & 3);
    (**(code **)(**(int **)(this + 0x180) + 0x30))
              (*(undefined4 *)(this + 0x180),(fVar17 * 70.0) / fVar18);
    (**(code **)(**(int **)(this + 0x180) + 0x38))(*(undefined4 *)(this + 0x180),0x400ccccd);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x180));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("progressBar.png");
    *(undefined4 *)(this + 0x184) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x184));
    pcVar15 = *(code **)(**(int **)(this + 0x184) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x184);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_14);
    fVar17 = (float)(*pcVar15)(uVar13,&local_30);
    pcVar15 = *(code **)(**(int **)(this + 0x184) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x184);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_15);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    fVar17 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x184));
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_16);
    FUN_002fce64(&local_30,local_98,local_40);
    cocos2d::CCPoint::operator=(aCStack_90,&local_30);
    LeaderBoardBridge::sharedLeaderBoardBridge();
    local_c4 = LeaderBoardBridge::calcPlayerSkill();
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("SKILL:  %d",local_c4);
    pcVar7 = (char *)cocos2d::CCString::getCString(pCVar6);
    pcVar8 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create(pcVar7,pcVar8,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x170) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x170));
    pcVar15 = *(code **)(**(int **)(this + 0x170) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x170);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_17);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x170),(int)local_e0);
    (**(code **)(**(int **)(this + 0x170) + 0x40))(*(undefined4 *)(this + 0x170),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x170));
    pLVar9 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    local_c0 = LeaderBoardBridge::getScoreData(pLVar9,2);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("KILLS:  %d",local_c0);
    pcVar7 = (char *)cocos2d::CCString::getCString(pCVar6);
    pcVar8 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create(pcVar7,pcVar8,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x174) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x174));
    pcVar15 = *(code **)(**(int **)(this + 0x174) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x174);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_18);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x174),(int)local_e0);
    (**(code **)(**(int **)(this + 0x174) + 0x40))(*(undefined4 *)(this + 0x174),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x174));
    pLVar9 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    local_bc = LeaderBoardBridge::getScoreData(pLVar9,3);
    pCVar6 = (CCString *)cocos2d::CCString::createWithFormat("DEATHS: %d",local_bc);
    pcVar7 = (char *)cocos2d::CCString::getCString(pCVar6);
    pcVar8 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create(pcVar7,pcVar8,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x178) = uVar13;
    fVar17 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x178));
    pcVar15 = *(code **)(**(int **)(this + 0x178) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x178);
    cocos2d::CCPoint::CCPoint(local_40,fVar17,extraout_s1_19);
    FUN_002fce64(&local_30,aCStack_90,local_40);
    (*pcVar15)(uVar13,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x178),(int)local_e0);
    (**(code **)(**(int **)(this + 0x178) + 0x40))(*(undefined4 *)(this + 0x178),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x178));
    local_e0 = 24.0;
    local_dc = 0.55;
    psVar10 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
    FUN_0079a3f4(auStack_78);
    FUN_007c6a60(local_40,"NOOBIE",auStack_78);
    cocos2d::CCUserDefault::getStringForKey((char *)&local_30,psVar10);
    FUN_007c52e8(this + 0x158,&local_30);
    FUN_007c5914(&local_30);
    FUN_007c5914(local_40);
    fVar17 = (float)FUN_0079a3fc(auStack_78);
    cocos2d::CCSize::CCSize((CCSize *)&local_30,fVar17,extraout_s1_20);
    pCVar11 = (CCScale9Sprite *)cocos2d::extension::CCScale9Sprite::create("streak_new.png");
    uVar13 = cocos2d::extension::CCEditBox::create
                       (&local_30,pCVar11,(CCScale9Sprite *)0x0,(CCScale9Sprite *)0x0);
    *(undefined4 *)(this + 300) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    fVar17 = (float)(**(code **)(**(int **)(this + 300) + 0x90))(*(undefined4 *)(this + 300),0);
    pcVar15 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar13 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_21);
    (*pcVar15)(uVar13,&local_30);
    this_01 = *(CCEditBox **)(this + 300);
    pcVar7 = (char *)FUN_007c5300(this + 0x158);
    cocos2d::extension::CCEditBox::setText(this_01,pcVar7);
    cocos2d::extension::CCEditBox::setInputFlag(*(CCEditBox **)(this + 300),3);
    cocos2d::extension::CCEditBox::setReturnType(*(CCEditBox **)(this + 300),1);
    cocos2d::extension::CCEditBox::setDelegate
              (*(CCEditBox **)(this + 300),(CCEditBoxDelegate *)(this + 0x108));
    fVar17 = (float)cocos2d::extension::CCEditBox::setMaxLength(*(CCEditBox **)(this + 300),0x10);
    uVar13 = cocos2d::CCLabelTTF::create("","ARIAL",fVar17);
    *(undefined4 *)(this + 0x130) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    pcVar15 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar16 = *(undefined4 *)(this + 0x130);
    uVar13 = (**(code **)(**(int **)(this + 0x134) + 0x50))(*(undefined4 *)(this + 0x134));
    cocos2d::CCPoint::CCPoint(local_40,extraout_s0,extraout_s1_22);
    FUN_002fce64(&local_30,uVar13,local_40);
    (*pcVar15)(uVar16,&local_30);
    updatePlayerNameLabel(this);
    pcVar7 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create("BACK",pcVar7,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x138) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar15 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar16 = *(undefined4 *)(this + 0x138);
    (**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
    fVar17 = (float)(**(code **)(**(int **)(this + 0x140) + 0x50))(*(undefined4 *)(this + 0x140));
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar17,extraout_s1_23);
    FUN_002fce84(0,extraout_s1_23,SUB84((double)local_e4,0),local_40);
    uVar13 = (**(code **)(**(int **)(this + 0x138) + 0x1fc))(*(undefined4 *)(this + 0x138));
    FUN_0079a3f4(auStack_144);
    FUN_007c6a60(auStack_14c,uVar13,auStack_144);
    uVar13 = FUN_007c505c(auStack_14c);
    VectorUnsignedToFloat(uVar13,(byte)(in_fpscr >> 0x16) & 3);
    fVar17 = (float)FUN_002fce84(0,extraout_s1_23,SUB84((double)local_e4,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar17,extraout_s1_24);
    FUN_002fce64(auStack_78,aCStack_88,aCStack_80);
    (*pcVar15)(uVar16,auStack_78);
    FUN_007c5914(auStack_14c);
    FUN_0079a3fc(auStack_144);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x138),(int)local_e0);
    (**(code **)(**(int **)(this + 0x138) + 0x40))(*(undefined4 *)(this + 0x138),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    pcVar7 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create("CUSTOMIZE",pcVar7,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar15 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar16 = *(undefined4 *)(this + 0x11c);
    (**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    fVar17 = (float)(**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar17,extraout_s1_25);
    FUN_002fce84(0,extraout_s1_25,SUB84((double)local_e4,0),local_40);
    uVar13 = (**(code **)(**(int **)(this + 0x11c) + 0x1fc))(*(undefined4 *)(this + 0x11c));
    FUN_0079a3f4(auStack_144);
    FUN_007c6a60(auStack_148,uVar13,auStack_144);
    uVar13 = FUN_007c505c(auStack_148);
    VectorUnsignedToFloat(uVar13,(byte)(in_fpscr >> 0x16) & 3);
    fVar17 = (float)FUN_002fce84(0,extraout_s1_25,SUB84((double)local_e4,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar17,extraout_s1_26);
    FUN_002fce64(auStack_78,aCStack_88,aCStack_80);
    (*pcVar15)(uVar16,auStack_78);
    FUN_007c5914(auStack_148);
    FUN_0079a3fc(auStack_144);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_e0);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),local_dc);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    pcVar7 = (char *)FUN_007c5300(&DAT_0094f7dc);
    uVar13 = cocos2d::CCLabelAtlas::create("AWARDS",pcVar7,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x13c) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    pcVar15 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar16 = *(undefined4 *)(this + 0x13c);
    (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    fVar17 = (float)(**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    cocos2d::CCPoint::CCPoint(aCStack_88,fVar17,extraout_s1_27);
    FUN_002fce84(0,extraout_s1_27,SUB84((double)local_e4,0),local_40);
    uVar13 = (**(code **)(**(int **)(this + 0x13c) + 0x1fc))(*(undefined4 *)(this + 0x13c));
    FUN_0079a3f4(auStack_148);
    FUN_007c6a60(auStack_144,uVar13,auStack_148);
    uVar13 = FUN_007c505c(auStack_144);
    VectorUnsignedToFloat(uVar13,(byte)(in_fpscr >> 0x16) & 3);
    fVar17 = (float)FUN_002fce84(0,extraout_s1_27,SUB84((double)local_e4,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_80,fVar17,extraout_s1_28);
    FUN_002fce64(auStack_78,aCStack_88,aCStack_80);
    (*pcVar15)(uVar16,auStack_78);
    FUN_007c5914(auStack_144);
    FUN_0079a3fc(auStack_148);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x13c),(int)local_e0);
    (**(code **)(**(int **)(this + 0x13c) + 0x40))(*(undefined4 *)(this + 0x13c),0x3f000000);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
    uVar13 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x154) = uVar13;
    (**(code **)(**(int **)(this + 0x154) + 0x4c))(*(undefined4 *)(this + 0x154),local_98);
    (**(code **)(**(int **)(this + 0x154) + 0x1a4))(*(undefined4 *)(this + 0x154),0x23);
    fVar17 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x154));
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_29);
    cocos2d::CCPoint::operator=((CCPoint *)&centerPoint,&local_30);
    playerScale = 0x3f800000;
    worldLayer = this;
    uVar13 = SoldierView::create();
    *(undefined4 *)(this + 0x15c) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x15c));
    fVar17 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x15c));
    *(undefined1 *)(*(int *)(this + 0x15c) + 0x1e1) = 1;
    pcVar15 = *(code **)(**(int **)(this + 0x15c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x15c);
    cocos2d::CCPoint::CCPoint(&local_30,fVar17,extraout_s1_30);
    fVar17 = (float)(*pcVar15)(uVar13,&local_30);
    SoldierView::updateStep(*(SoldierView **)(this + 0x15c),fVar17);
    (**(code **)(**(int **)(*(int *)(this + 0x15c) + 0xf0) + 0x98))
              (*(undefined4 *)(*(int *)(this + 0x15c) + 0xf0),0);
    (**(code **)(**(int **)(*(int *)(this + 0x15c) + 0x110) + 0x98))
              (*(undefined4 *)(*(int *)(this + 0x15c) + 0x110),0x42c80000);
    (**(code **)(**(int **)(*(int *)(this + 0x15c) + 0x114) + 0x98))
              (*(undefined4 *)(*(int *)(this + 0x15c) + 0x114),0x42480000);
    (**(code **)(**(int **)(*(int *)(this + 0x15c) + 0xe4) + 0x90))
              (*(undefined4 *)(*(int *)(this + 0x15c) + 0xe4),0);
    AvatarRenderer::sharedAvatarRenderer();
    local_b8 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
    pAVar12 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_b4 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar12,local_b8,playerSkin);
    pAVar12 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_b0 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar12,local_b8,playerSkin);
    pAVar12 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_ac = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar12,local_b8,playerSkin);
    pAVar12 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_a8 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar12,local_b8,playerSkin);
    pAVar12 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_a4 = AvatarRenderer::getBodyType(pAVar12,local_b8,playerSkin);
    SoldierView::setPlayerSkin
              (*(SoldierView **)(this + 0x15c),local_a4,local_b4,local_b0,local_ac,local_a8);
    uVar13 = 1;
    FUN_007c5914(auStack_150);
  }
  else {
    uVar13 = 0;
  }
  return uVar13;
}

// ---- AvatarLayer::~AvatarLayer  @ 0x2ffad0
/* WARNING: Removing unreachable block (ram,0x002ffc26) */
/* AvatarLayer::~AvatarLayer() */

AvatarLayer * __thiscall AvatarLayer::~AvatarLayer(AvatarLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090b0c8;
  *(undefined ***)(this + 0xe4) = &PTR__AvatarLayer_1_0090b2d8;
  *(undefined **)(this + 0xe8) = &DAT_0090b308;
  *(undefined **)(this + 0xec) = &DAT_0090b314;
  *(undefined ***)(this + 0x108) = &PTR__AvatarLayer_1_0090b324;
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x15c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x170));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x160));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x164));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x168));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x16c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x174));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x178));
  FUN_007c5914(this + 0x158);
  cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate((CCEditBoxDelegate *)(this + 0x108));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- AvatarLayer::~AvatarLayer  @ 0x2ffc40
/* non-virtual thunk to AvatarLayer::~AvatarLayer() */

void __thiscall AvatarLayer::~AvatarLayer(AvatarLayer *this)

{
  ~AvatarLayer(this + -0xe4);
  return;
}

// ---- AvatarLayer::~AvatarLayer  @ 0x2ffc48
/* non-virtual thunk to AvatarLayer::~AvatarLayer() */

void __thiscall AvatarLayer::~AvatarLayer(AvatarLayer *this)

{
  ~AvatarLayer(this + -0x108);
  return;
}

// ---- AvatarLayer::~AvatarLayer  @ 0x2ffc50
/* AvatarLayer::~AvatarLayer() */

AvatarLayer * __thiscall AvatarLayer::~AvatarLayer(AvatarLayer *this)

{
  ~AvatarLayer(this);
  operator_delete(this);
  return this;
}

// ---- AvatarLayer::~AvatarLayer  @ 0x2ffc6c
/* non-virtual thunk to AvatarLayer::~AvatarLayer() */

void __thiscall AvatarLayer::~AvatarLayer(AvatarLayer *this)

{
  ~AvatarLayer(this + -0xe4);
  return;
}

// ---- AvatarLayer::~AvatarLayer  @ 0x2ffc74
/* non-virtual thunk to AvatarLayer::~AvatarLayer() */

void __thiscall AvatarLayer::~AvatarLayer(AvatarLayer *this)

{
  ~AvatarLayer(this + -0x108);
  return;
}

// ---- AvatarLayer::saveProperties  @ 0x2ffc7c
/* AvatarLayer::saveProperties() */

void __thiscall AvatarLayer::saveProperties(AvatarLayer *this)

{
  CCUserDefault *pCVar1;
  int iVar2;
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar2 = FUN_007c505c(this + 0x158);
  if (iVar2 == 0) {
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(asStack_14,"NOOBIE",auStack_18);
  }
  else {
    FUN_007c64e8(asStack_14,this + 0x158);
  }
  cocos2d::CCUserDefault::setStringForKey(pCVar1,"PlayerName",asStack_14);
  FUN_007c5914(asStack_14);
  if (iVar2 == 0) {
    FUN_0079a3fc(auStack_18);
  }
  pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"PlayerSkin",playerSkin);
  return;
}

// ---- AvatarLayer::onDone  @ 0x2ffd4c
/* AvatarLayer::onDone(cocos2d::CCObject*) */

void AvatarLayer::onDone(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x10c] == (CCObject)0x0) {
    param_1[0x10c] = (CCObject)0x1;
    saveProperties((AvatarLayer *)param_1);
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_0094321c;
    fVar2 = (float)AvatarMenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarLayer::onCustom  @ 0x2ffdb4
/* AvatarLayer::onCustom(cocos2d::CCObject*) */

void AvatarLayer::onCustom(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x10c] == (CCObject)0x0) {
    param_1[0x10c] = (CCObject)0x1;
    saveProperties((AvatarLayer *)param_1);
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_0094321c;
    fVar2 = (float)CustomAvatarLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarLayer::onAward  @ 0x2ffe1c
/* AvatarLayer::onAward(cocos2d::CCObject*) */

void AvatarLayer::onAward(CCObject *param_1)

{
  char cVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  Sound::playSound(sndEng,0xd);
  NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManagerBridge::isInternetReachable();
  if (cVar1 == '\x01') {
    cVar1 = GPGSStateManager::IsAuthorized();
    if (cVar1 == '\x01') {
      AchievementBridge::sharedAchievementBridge();
      AchievementBridge::showAchievements();
    }
    else {
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(auStack_10,"Login Required",auStack_1c);
      FUN_0079a3f4(auStack_18);
      FUN_007c6a60(auStack_c,"Login to Google Play Services to view achievements!",auStack_18);
      FUN_0079a3f4(auStack_20);
      FUN_007c6a60(asStack_14,&DAT_007d34c8,auStack_20);
      pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_14);
      uVar3 = cocos2d::CCArray::create(pCVar2,0);
      AMessageBox::showAlert(0,auStack_10,auStack_c,uVar3,0,0);
      FUN_007c5914(asStack_14);
      FUN_0079a3fc(auStack_20);
      FUN_007c5914(auStack_c);
      FUN_0079a3fc(auStack_18);
      FUN_007c5914(auStack_10);
      FUN_0079a3fc(auStack_1c);
    }
  }
  else {
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(auStack_10,"No Internet Connection",auStack_1c);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_c,"Enable your internet connection to access player stats!",auStack_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_14,&DAT_007d34c8,auStack_20);
    pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_14);
    uVar3 = cocos2d::CCArray::create(pCVar2,0);
    AMessageBox::showAlert(0,auStack_10,auStack_c,uVar3,0,0);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_20);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_18);
    FUN_007c5914(auStack_10);
    FUN_0079a3fc(auStack_1c);
  }
  return;
}

// ---- AvatarLayer::onControls  @ 0x300054
/* AvatarLayer::onControls(cocos2d::CCObject*) */

void AvatarLayer::onControls(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x10c] == (CCObject)0x0) {
    param_1[0x10c] = (CCObject)0x1;
    saveProperties((AvatarLayer *)param_1);
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_0094321c;
    fVar2 = (float)ControlsLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInR::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- AvatarLayer::onPlayerName  @ 0x3000bc
/* AvatarLayer::onPlayerName(cocos2d::CCObject*) */

void AvatarLayer::onPlayerName(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  cocos2d::extension::CCEditBox::touchDownAction(*(CCObject **)(param_1 + 300),0);
  return;
}

// ---- AvatarLayer::updatePlayerNameLabel  @ 0x3000f4
/* AvatarLayer::updatePlayerNameLabel() */

void __thiscall AvatarLayer::updatePlayerNameLabel(AvatarLayer *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0x130) + 0x23c);
  uVar3 = *(undefined4 *)(this + 0x130);
  uVar1 = cocos2d::extension::CCEditBox::getText(*(CCEditBox **)(this + 300));
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- AvatarLayer::presentProPackAlert  @ 0x300128
/* AvatarLayer::presentProPackAlert() */

void AvatarLayer::presentProPackAlert(void)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_18,"Pro Pack Required",auStack_28);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_14,"Upgrade now for more avatars!",auStack_24);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(asStack_20,"NOT NOW",auStack_30);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(asStack_1c,"VIEW UPGRADE",auStack_2c);
  uVar2 = cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
  AMessageBox::showAlert(0x30068d,auStack_18,auStack_14,uVar2,0,0);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_30);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_24);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_28);
  return;
}

// ---- AvatarLayer::onNextVisual  @ 0x30027c
/* AvatarLayer::onNextVisual(cocos2d::CCObject*) */

void AvatarLayer::onNextVisual(CCObject *param_1)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  CCInteger *this;
  AvatarRenderer *pAVar4;
  uint uVar5;
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  CCArray *local_30;
  CCTexture2D *local_2c;
  CCTexture2D *local_28;
  CCTexture2D *local_24;
  CCTexture2D *local_20;
  int local_1c;
  
  FUN_0079a3f4(auStack_38);
  FUN_007c6a60(auStack_34,"com.chadtowns.da2.propack",auStack_38);
  iVar2 = InAppPurchaseBridge::isProductPurchased(auStack_34);
  if ((iVar2 == 0) && (uVar3 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x114)), uVar3 < 2))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  FUN_007c5914(auStack_34);
  FUN_0079a3fc(auStack_38);
  if (bVar1) {
    *(int *)(param_1 + 0x110) = *(int *)(param_1 + 0x110) + 1;
    uVar5 = *(uint *)(param_1 + 0x110);
    uVar3 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x114));
    if (uVar3 <= uVar5) {
      *(undefined4 *)(param_1 + 0x110) = 0;
    }
    this = (CCInteger *)
           cocos2d::CCArray::objectAtIndex
                     (*(CCArray **)(param_1 + 0x114),*(uint *)(param_1 + 0x110));
    playerSkin = cocos2d::CCInteger::getValue(this);
    AvatarRenderer::sharedAvatarRenderer();
    local_30 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_2c = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_28 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_24 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_20 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_1c = AvatarRenderer::getBodyType(pAVar4,local_30,playerSkin);
    SoldierView::setPlayerSkin
              (*(SoldierView **)(param_1 + 0x15c),local_1c,local_2c,local_28,local_24,local_20);
  }
  else {
    presentProPackAlert();
  }
  Sound::playSound(sndEng,0xe);
  return;
}

// ---- AvatarLayer::onPrevVisual  @ 0x30044c
/* AvatarLayer::onPrevVisual(cocos2d::CCObject*) */

void AvatarLayer::onPrevVisual(CCObject *param_1)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  CCInteger *this;
  AvatarRenderer *pAVar4;
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  CCArray *local_30;
  CCTexture2D *local_2c;
  CCTexture2D *local_28;
  CCTexture2D *local_24;
  CCTexture2D *local_20;
  int local_1c;
  
  FUN_0079a3f4(auStack_38);
  FUN_007c6a60(auStack_34,"com.chadtowns.da2.propack",auStack_38);
  iVar2 = InAppPurchaseBridge::isProductPurchased(auStack_34);
  if ((iVar2 == 0) && (uVar3 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x114)), uVar3 < 2))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  FUN_007c5914(auStack_34);
  FUN_0079a3fc(auStack_38);
  if (bVar1) {
    *(int *)(param_1 + 0x110) = *(int *)(param_1 + 0x110) + -1;
    if (*(int *)(param_1 + 0x110) < 0) {
      iVar2 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x114));
      *(int *)(param_1 + 0x110) = iVar2 + -1;
    }
    this = (CCInteger *)
           cocos2d::CCArray::objectAtIndex
                     (*(CCArray **)(param_1 + 0x114),*(uint *)(param_1 + 0x110));
    playerSkin = cocos2d::CCInteger::getValue(this);
    AvatarRenderer::sharedAvatarRenderer();
    local_30 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_2c = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_28 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_24 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_20 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar4,local_30,playerSkin);
    pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_1c = AvatarRenderer::getBodyType(pAVar4,local_30,playerSkin);
    SoldierView::setPlayerSkin
              (*(SoldierView **)(param_1 + 0x15c),local_1c,local_2c,local_28,local_24,local_20);
  }
  else {
    presentProPackAlert();
  }
  Sound::playSound(sndEng,0xe);
  return;
}

// ---- AvatarLayer::editBoxTextChanged  @ 0x300610
/* AvatarLayer::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&) */

void AvatarLayer::editBoxTextChanged(CCEditBox *param_1,string *param_2)

{
  updatePlayerNameLabel((AvatarLayer *)param_1);
  return;
}

// ---- AvatarLayer::editBoxTextChanged  @ 0x300628
/* non-virtual thunk to AvatarLayer::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string
   const&) */

void __thiscall
AvatarLayer::editBoxTextChanged(AvatarLayer *this,CCEditBox *param_1,string *param_2)

{
  editBoxTextChanged((CCEditBox *)(this + -0x108),(string *)param_1);
  return;
}

// ---- AvatarLayer::editBoxReturn  @ 0x300630
/* AvatarLayer::editBoxReturn(cocos2d::extension::CCEditBox*) */

void __thiscall AvatarLayer::editBoxReturn(AvatarLayer *this,CCEditBox *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = cocos2d::extension::CCEditBox::getText(param_1);
  FUN_007c5e70(this + 0x158,uVar1);
  iVar2 = FUN_007c505c(this + 0x158);
  if (iVar2 == 0) {
    FUN_007c5e70(this + 0x158,"NOOBIE");
  }
  return;
}

// ---- AvatarLayer::editBoxReturn  @ 0x300684
/* non-virtual thunk to AvatarLayer::editBoxReturn(cocos2d::extension::CCEditBox*) */

void __thiscall AvatarLayer::editBoxReturn(AvatarLayer *this,CCEditBox *param_1)

{
  editBoxReturn(this + -0x108,param_1);
  return;
}

// ---- AvatarLayer::messageBoxHandler  @ 0x30068c
/* AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void AvatarLayer::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1 == 1) {
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_0094321c;
    fVar2 = (float)PurchaseLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
