// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 26 functions

// ---- ControlsPlacementLayer::create  @ 0x3199c4
/* ControlsPlacementLayer::create() */

ControlsPlacementLayer * ControlsPlacementLayer::create(void)

{
  bool bVar1;
  ControlsPlacementLayer *this;
  int iVar2;
  
  this = operator_new(0x174);
  ControlsPlacementLayer(this);
  if ((this == (ControlsPlacementLayer *)0x0) ||
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
    if (this != (ControlsPlacementLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ControlsPlacementLayer *)0x0;
  }
  return this;
}

// ---- ControlsPlacementLayer::ControlsPlacementLayer  @ 0x319a34
/* ControlsPlacementLayer::ControlsPlacementLayer() */

ControlsPlacementLayer * __thiscall
ControlsPlacementLayer::ControlsPlacementLayer(ControlsPlacementLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090fba8;
  *(undefined ***)(this + 0xe4) = &PTR__ControlsPlacementLayer_1_0090fdb0;
  *(undefined **)(this + 0xe8) = &DAT_0090fde0;
  *(undefined **)(this + 0xec) = &DAT_0090fdec;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x120));
  return this;
}

// ---- ControlsPlacementLayer::scene  @ 0x319aa4
/* ControlsPlacementLayer::scene() */

int * ControlsPlacementLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- ControlsPlacementLayer::init  @ 0x319ad4
/* ControlsPlacementLayer::init() */

undefined4 __thiscall ControlsPlacementLayer::init(ControlsPlacementLayer *this)

{
  char cVar1;
  char *pcVar2;
  CCNode *pCVar3;
  CCNode *pCVar4;
  CCNode *pCVar5;
  CCNode *pCVar6;
  CCNode *pCVar7;
  CCNode *pCVar8;
  CCNode *pCVar9;
  CCNode *pCVar10;
  CCMenuItem *pCVar11;
  CCUserDefault *this_00;
  int iVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  code *pcVar15;
  undefined8 uVar16;
  CCSize local_50 [8];
  CCPoint aCStack_48 [8];
  CCPoint aCStack_40 [8];
  CCPoint aCStack_38 [8];
  code *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  code *local_20;
  undefined4 local_1c;
  code *local_18;
  undefined4 local_14;
  
  cVar1 = cocos2d::CCLayer::init((CCLayer *)this);
  if (cVar1 == '\x01') {
    (**(code **)(*(int *)this + 0x1d0))(this,1);
    this[0x108] = (ControlsPlacementLayer)0x0;
    uVar16 = cocos2d::CCSize::CCSize(local_50,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(aCStack_48,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20));
    uVar13 = cocos2d::CCSprite::create("bg_new.png");
    *(undefined4 *)(this + 0x16c) = uVar13;
    (**(code **)(**(int **)(this + 0x16c) + 0x38))
              (*(undefined4 *)(this + 0x16c),screenSize._4_4_ / 320.0);
    (**(code **)(**(int **)(this + 0x16c) + 0x30))
              (*(undefined4 *)(this + 0x16c),(float)screenSize / 480.0);
    (**(code **)(**(int **)(this + 0x16c) + 0x4c))(*(undefined4 *)(this + 0x16c),aCStack_48);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x16c));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500e4);
    uVar13 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x168) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x168));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x168),0x18);
    (**(code **)(**(int **)(this + 0x168) + 0x40))(*(undefined4 *)(this + 0x168),0x3eb33333);
    uVar16 = (**(code **)(**(int **)(this + 0x168) + 0x1f8))
                       (*(undefined4 *)(this + 0x168),"DRAG CONTROLS TO MOVE   USE (+/-) TO SCALE");
    pcVar15 = *(code **)(**(int **)(this + 0x168) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x168);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    uVar16 = (*pcVar15)(uVar13,&local_18);
    pcVar15 = *(code **)(**(int **)(this + 0x168) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x168);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x168));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("movePad.png");
    *(undefined4 *)(this + 0x110) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar15 = *(code **)(**(int **)(this + 0x110) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(**(int **)(this + 0x110) + 0x1a4))(*(undefined4 *)(this + 0x110),0x96);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("firePad.png");
    *(undefined4 *)(this + 0x114) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    pcVar15 = *(code **)(**(int **)(this + 0x114) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(**(int **)(this + 0x114) + 0x1a4))(*(undefined4 *)(this + 0x114),0x96);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("grenadeBtn.png");
    *(undefined4 *)(this + 0x128) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar15 = *(code **)(**(int **)(this + 0x128) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(**(int **)(this + 0x128) + 0x1a4))(*(undefined4 *)(this + 0x128),0x96);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("meleeBtn.png");
    *(undefined4 *)(this + 300) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar15 = *(code **)(**(int **)(this + 300) + 0x7c);
    uVar13 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(**(int **)(this + 300) + 0x1a4))(*(undefined4 *)(this + 300),0x96);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("zoomBtn.png");
    *(undefined4 *)(this + 0x130) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar15 = *(code **)(**(int **)(this + 0x130) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x130);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(**(int **)(this + 0x130) + 0x1a4))(*(undefined4 *)(this + 0x130),0x96);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    uVar13 = cocos2d::CCSprite::createWithSpriteFrameName("ammoBtn.png");
    *(undefined4 *)(this + 0x134) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar15 = *(code **)(**(int **)(this + 0x134) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x134);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(**(int **)(this + 0x134) + 0x1a4))(*(undefined4 *)(this + 0x134),0x96);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    pCVar3 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    pCVar4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_right.png");
    pCVar5 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    pCVar6 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_left.png");
    pCVar7 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    pCVar8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    pCVar9 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    pCVar10 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_30 = (code *)0x31b291;
    local_2c = 0;
    uVar13 = cocos2d::CCMenuItemSprite::create
                       (pCVar3,pCVar4,(CCObject *)this,(_func_void_CCObject_ptr *)0x31b291);
    *(undefined4 *)(this + 0x160) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x160));
    uVar13 = cocos2d::CCMenu::create(*(CCMenuItem **)(this + 0x160),0);
    *(undefined4 *)(this + 0x154) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
    pcVar15 = *(code **)(**(int **)(this + 0x154) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x154);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    FUN_00318c04(&local_18,aCStack_48,&local_20);
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x154));
    local_28 = (code *)0x31b359;
    local_24 = 0;
    uVar13 = cocos2d::CCMenuItemSprite::create
                       (pCVar5,pCVar6,(CCObject *)this,(_func_void_CCObject_ptr *)0x31b359);
    *(undefined4 *)(this + 0x164) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x164));
    uVar13 = cocos2d::CCMenu::create(*(CCMenuItem **)(this + 0x164),0);
    *(undefined4 *)(this + 0x15c) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x15c));
    pcVar15 = *(code **)(**(int **)(this + 0x15c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x15c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    FUN_00318c04(&local_18,aCStack_48,&local_20);
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x15c));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500e4);
    uVar13 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x150) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x150),0x18);
    (**(code **)(**(int **)(this + 0x150) + 0x40))(*(undefined4 *)(this + 0x150),0x3f266666);
    uVar16 = (**(code **)(**(int **)(this + 0x150) + 0x1f8))
                       (*(undefined4 *)(this + 0x150),&DAT_007d5d30);
    pcVar15 = *(code **)(**(int **)(this + 0x150) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    uVar16 = (*pcVar15)(uVar13,&local_18);
    pcVar15 = *(code **)(**(int **)(this + 0x150) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    uVar13 = (**(code **)(**(int **)(this + 0x154) + 0x50))(*(undefined4 *)(this + 0x154));
    FUN_00318c04(&local_18,&local_20,uVar13);
    (*pcVar15)(uVar14,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x150));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500e4);
    uVar13 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x158) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x158));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x158),0x18);
    (**(code **)(**(int **)(this + 0x158) + 0x40))(*(undefined4 *)(this + 0x158),0x3f266666);
    uVar16 = (**(code **)(**(int **)(this + 0x158) + 0x1f8))
                       (*(undefined4 *)(this + 0x158),&DAT_007d5d34);
    pcVar15 = *(code **)(**(int **)(this + 0x158) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x158);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    uVar16 = (*pcVar15)(uVar13,&local_18);
    pcVar15 = *(code **)(**(int **)(this + 0x158) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0x158);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    uVar13 = (**(code **)(**(int **)(this + 0x15c) + 0x50))(*(undefined4 *)(this + 0x15c));
    FUN_00318c04(&local_18,&local_20,uVar13);
    (*pcVar15)(uVar14,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x158));
    (**(code **)(**(int **)(this + 0x164) + 0x1a4))(*(undefined4 *)(this + 0x164),100);
    (**(code **)(**(int **)(this + 0x160) + 0x1a4))(*(undefined4 *)(this + 0x160),100);
    (**(code **)(**(int **)(this + 0x158) + 0x1a4))(*(undefined4 *)(this + 0x158),100);
    (**(code **)(**(int **)(this + 0x150) + 0x1a4))(*(undefined4 *)(this + 0x150),100);
    local_20 = (code *)0x31b07d;
    local_1c = 0;
    uVar14 = 0;
    pCVar11 = (CCMenuItem *)
              cocos2d::CCMenuItemSprite::create
                        (pCVar7,pCVar8,(CCObject *)this,(_func_void_CCObject_ptr *)0x31b07d);
    uVar13 = cocos2d::CCMenu::create(pCVar11,0);
    *(undefined4 *)(this + 0x14c) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    pcVar15 = *(code **)(**(int **)(this + 0x14c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x14c);
    cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20));
    FUN_00318c04(&local_18,aCStack_48,aCStack_38,aCStack_38,uVar14);
    (*pcVar15)(uVar13,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x14c));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500e4);
    uVar13 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x148) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x148),0x18);
    (**(code **)(**(int **)(this + 0x148) + 0x40))(*(undefined4 *)(this + 0x148),0x3f0ccccd);
    uVar16 = (**(code **)(**(int **)(this + 0x148) + 0x1f8))
                       (*(undefined4 *)(this + 0x148),"DEFAULT");
    pcVar15 = *(code **)(**(int **)(this + 0x148) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20))
    ;
    (*pcVar15)(uVar13,&local_18);
    pcVar15 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0x148);
    uVar13 = (**(code **)(**(int **)(this + 0x14c) + 0x50))(*(undefined4 *)(this + 0x14c));
    (*pcVar15)(uVar14,uVar13);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
    local_18 = (code *)0x31ab59;
    local_14 = 0;
    uVar14 = 0;
    pCVar11 = (CCMenuItem *)
              cocos2d::CCMenuItemSprite::create
                        (pCVar9,pCVar10,(CCObject *)this,(_func_void_CCObject_ptr *)0x31ab59);
    uVar13 = cocos2d::CCMenu::create(pCVar11,0);
    *(undefined4 *)(this + 0x144) = uVar13;
    uVar16 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    pcVar15 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint(aCStack_40,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20));
    FUN_00318c04(aCStack_38,aCStack_48,aCStack_40,aCStack_40,uVar14);
    (*pcVar15)(uVar13,aCStack_38);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    pcVar2 = (char *)FUN_007c5300(&DAT_009500e4);
    uVar13 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x140) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x140),0x18);
    (**(code **)(**(int **)(this + 0x140) + 0x40))(*(undefined4 *)(this + 0x140),0x3f0ccccd);
    uVar16 = (**(code **)(**(int **)(this + 0x140) + 0x1f8))
                       (*(undefined4 *)(this + 0x140),&DAT_007d5d40);
    pcVar15 = *(code **)(**(int **)(this + 0x140) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar16,(float)((ulonglong)uVar16 >> 0x20));
    (*pcVar15)(uVar13,aCStack_38);
    pcVar15 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0x140);
    uVar13 = (**(code **)(**(int **)(this + 0x144) + 0x50))(*(undefined4 *)(this + 0x144));
    (*pcVar15)(uVar14,uVar13);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    iVar12 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"InputSwap",0);
    if (iVar12 == 1) {
      (**(code **)(**(int **)(this + 0x114) + 0x4c))(*(undefined4 *)(this + 0x114),&LEFT_PAD);
      (**(code **)(**(int **)(this + 0x110) + 0x4c))(*(undefined4 *)(this + 0x110),&RIGHT_PAD);
    }
    else {
      (**(code **)(**(int **)(this + 0x114) + 0x4c))(*(undefined4 *)(this + 0x114),&RIGHT_PAD);
      (**(code **)(**(int **)(this + 0x110) + 0x4c))(*(undefined4 *)(this + 0x110),&LEFT_PAD);
    }
    (**(code **)(**(int **)(this + 0x128) + 0x4c))(*(undefined4 *)(this + 0x128),&GRENADE_POS);
    (**(code **)(**(int **)(this + 300) + 0x4c))(*(undefined4 *)(this + 300),&PUNCH_POS);
    (**(code **)(**(int **)(this + 0x130) + 0x4c))(*(undefined4 *)(this + 0x130),&ZOOM_POS);
    (**(code **)(**(int **)(this + 0x134) + 0x4c))(*(undefined4 *)(this + 0x134),&RELOAD_POS);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),FIRE_PAD_SCL);
    (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),MOVE_PAD_SCL);
    (**(code **)(**(int **)(this + 0x128) + 0x40))(*(undefined4 *)(this + 0x128),GRENADE_SCL);
    (**(code **)(**(int **)(this + 300) + 0x40))(*(undefined4 *)(this + 300),PUNCH_SCL);
    (**(code **)(**(int **)(this + 0x130) + 0x40))(*(undefined4 *)(this + 0x130),ZOOM_SCL);
    (**(code **)(**(int **)(this + 0x134) + 0x40))(*(undefined4 *)(this + 0x134),RELOAD_SCL);
    cancelTouches();
    ApplicationInterface::removeAdBanner();
    uVar13 = 1;
  }
  else {
    uVar13 = 0;
  }
  return uVar13;
}

// ---- ControlsPlacementLayer::~ControlsPlacementLayer  @ 0x31aa2c
/* WARNING: Removing unreachable block (ram,0x0031ab14) */
/* ControlsPlacementLayer::~ControlsPlacementLayer() */

ControlsPlacementLayer * __thiscall
ControlsPlacementLayer::~ControlsPlacementLayer(ControlsPlacementLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090fba8;
  *(undefined ***)(this + 0xe4) = &PTR__ControlsPlacementLayer_1_0090fdb0;
  *(undefined **)(this + 0xe8) = &DAT_0090fde0;
  *(undefined **)(this + 0xec) = &DAT_0090fdec;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x168));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x164));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x160));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- ControlsPlacementLayer::~ControlsPlacementLayer  @ 0x31ab2c
/* non-virtual thunk to ControlsPlacementLayer::~ControlsPlacementLayer() */

void __thiscall ControlsPlacementLayer::~ControlsPlacementLayer(ControlsPlacementLayer *this)

{
  ~ControlsPlacementLayer(this + -0xe4);
  return;
}

// ---- ControlsPlacementLayer::~ControlsPlacementLayer  @ 0x31ab34
/* ControlsPlacementLayer::~ControlsPlacementLayer() */

ControlsPlacementLayer * __thiscall
ControlsPlacementLayer::~ControlsPlacementLayer(ControlsPlacementLayer *this)

{
  ~ControlsPlacementLayer(this);
  operator_delete(this);
  return this;
}

// ---- ControlsPlacementLayer::~ControlsPlacementLayer  @ 0x31ab50
/* non-virtual thunk to ControlsPlacementLayer::~ControlsPlacementLayer() */

void __thiscall ControlsPlacementLayer::~ControlsPlacementLayer(ControlsPlacementLayer *this)

{
  ~ControlsPlacementLayer(this + -0xe4);
  return;
}

// ---- ControlsPlacementLayer::onDone  @ 0x31ab58
/* ControlsPlacementLayer::onDone(cocos2d::CCObject*) */

void ControlsPlacementLayer::onDone(CCObject *param_1)

{
  CCUserDefault *pCVar1;
  int iVar2;
  CCPoint *pCVar3;
  char *pcVar4;
  CCDirector *this;
  CCScene *pCVar5;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float fVar6;
  
  if (param_1[0x108] == (CCObject)0x0) {
    param_1[0x108] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    iVar2 = cocos2d::CCUserDefault::getIntegerForKey(pCVar1,"InputSwap",0);
    if (iVar2 == 1) {
      pCVar3 = (CCPoint *)
               (**(code **)(**(int **)(param_1 + 0x110) + 0x50))(*(undefined4 *)(param_1 + 0x110));
      cocos2d::CCPoint::operator=((CCPoint *)&RIGHT_PAD,pCVar3);
      pCVar3 = (CCPoint *)
               (**(code **)(**(int **)(param_1 + 0x114) + 0x50))(*(undefined4 *)(param_1 + 0x114));
      cocos2d::CCPoint::operator=((CCPoint *)&LEFT_PAD,pCVar3);
    }
    else {
      pCVar3 = (CCPoint *)
               (**(code **)(**(int **)(param_1 + 0x114) + 0x50))(*(undefined4 *)(param_1 + 0x114));
      cocos2d::CCPoint::operator=((CCPoint *)&RIGHT_PAD,pCVar3);
      pCVar3 = (CCPoint *)
               (**(code **)(**(int **)(param_1 + 0x110) + 0x50))(*(undefined4 *)(param_1 + 0x110));
      cocos2d::CCPoint::operator=((CCPoint *)&LEFT_PAD,pCVar3);
    }
    pCVar3 = (CCPoint *)
             (**(code **)(**(int **)(param_1 + 0x128) + 0x50))(*(undefined4 *)(param_1 + 0x128));
    cocos2d::CCPoint::operator=((CCPoint *)&GRENADE_POS,pCVar3);
    pCVar3 = (CCPoint *)
             (**(code **)(**(int **)(param_1 + 300) + 0x50))(*(undefined4 *)(param_1 + 300));
    cocos2d::CCPoint::operator=((CCPoint *)&PUNCH_POS,pCVar3);
    pCVar3 = (CCPoint *)
             (**(code **)(**(int **)(param_1 + 0x130) + 0x50))(*(undefined4 *)(param_1 + 0x130));
    cocos2d::CCPoint::operator=((CCPoint *)&ZOOM_POS,pCVar3);
    pCVar3 = (CCPoint *)
             (**(code **)(**(int **)(param_1 + 0x134) + 0x50))(*(undefined4 *)(param_1 + 0x134));
    cocos2d::CCPoint::operator=((CCPoint *)&RELOAD_POS,pCVar3);
    FIRE_PAD_SCL = (**(code **)(**(int **)(param_1 + 0x114) + 0x44))
                             (*(undefined4 *)(param_1 + 0x114));
    MOVE_PAD_SCL = (**(code **)(**(int **)(param_1 + 0x110) + 0x44))
                             (*(undefined4 *)(param_1 + 0x110));
    GRENADE_SCL = (**(code **)(**(int **)(param_1 + 0x128) + 0x44))
                            (*(undefined4 *)(param_1 + 0x128));
    PUNCH_SCL = (**(code **)(**(int **)(param_1 + 300) + 0x44))(*(undefined4 *)(param_1 + 300));
    ZOOM_SCL = (**(code **)(**(int **)(param_1 + 0x130) + 0x44))(*(undefined4 *)(param_1 + 0x130));
    RELOAD_SCL = (**(code **)(**(int **)(param_1 + 0x134) + 0x44))(*(undefined4 *)(param_1 + 0x134))
    ;
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,extraout_s0);
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,extraout_s0_00);
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,extraout_s0_01);
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,extraout_s0_02);
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,extraout_s0_03);
    pcVar4 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setFloatForKey(pcVar4,extraout_s0_04);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"LeftPadX",(int)(float)LEFT_PAD);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"LeftPadY",(int)LEFT_PAD._4_4_);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"RightPadX",(int)(float)RIGHT_PAD);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"RightPadY",(int)RIGHT_PAD._4_4_);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"GrenadePosX",(int)(float)GRENADE_POS);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"GrenadePosY",(int)GRENADE_POS._4_4_);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"PunchPosX",(int)(float)PUNCH_POS);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"PunchPosY",(int)PUNCH_POS._4_4_);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"ZoomPosX",(int)(float)ZOOM_POS);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"ZoomPosY",(int)ZOOM_POS._4_4_);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"ReloadPosX",(int)(float)RELOAD_POS);
    pCVar1 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setIntegerForKey(pCVar1,"ReloadPosY",(int)RELOAD_POS._4_4_);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar5 = DAT_009432a0;
    fVar6 = (float)ControlsLayer::scene();
    pCVar5 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar6,pCVar5);
    cocos2d::CCDirector::replaceScene(this,pCVar5);
  }
  return;
}

// ---- ControlsPlacementLayer::onDefault  @ 0x31b07c
/* ControlsPlacementLayer::onDefault(cocos2d::CCObject*) */

void __thiscall ControlsPlacementLayer::onDefault(ControlsPlacementLayer *this,CCObject *param_1)

{
  CCUserDefault *this_00;
  int iVar1;
  
  this_00 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  iVar1 = cocos2d::CCUserDefault::getIntegerForKey(this_00,"InputSwap");
  if (iVar1 == 1) {
    (**(code **)(**(int **)(this + 0x114) + 0x4c))(*(undefined4 *)(this + 0x114),&defaultLeftPadPos)
    ;
    (**(code **)(**(int **)(this + 0x110) + 0x4c))
              (*(undefined4 *)(this + 0x110),&defaultRightPadPos);
  }
  else {
    (**(code **)(**(int **)(this + 0x114) + 0x4c))
              (*(undefined4 *)(this + 0x114),&defaultRightPadPos,&defaultRightPadPos,
               *(code **)(**(int **)(this + 0x114) + 0x4c),param_1);
    (**(code **)(**(int **)(this + 0x110) + 0x4c))(*(undefined4 *)(this + 0x110),&defaultLeftPadPos)
    ;
  }
  (**(code **)(**(int **)(this + 0x128) + 0x4c))(*(undefined4 *)(this + 0x128),&defaultGrenadePos);
  (**(code **)(**(int **)(this + 0x130) + 0x4c))(*(undefined4 *)(this + 0x130),&defaultZoomPos);
  (**(code **)(**(int **)(this + 0x134) + 0x4c))(*(undefined4 *)(this + 0x134),&defaultReloadPos);
  (**(code **)(**(int **)(this + 300) + 0x4c))(*(undefined4 *)(this + 300),&defaultPunchPos);
  (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),defaultFirePadScl);
  (**(code **)(**(int **)(this + 0x110) + 0x40))(*(undefined4 *)(this + 0x110),defaultMovePadScl);
  (**(code **)(**(int **)(this + 0x128) + 0x40))(*(undefined4 *)(this + 0x128),defaultGrenadeScl);
  (**(code **)(**(int **)(this + 300) + 0x40))(*(undefined4 *)(this + 300),defaultPunchScl);
  (**(code **)(**(int **)(this + 0x130) + 0x40))(*(undefined4 *)(this + 0x130),defaultZoomScl);
  (**(code **)(**(int **)(this + 0x134) + 0x40))(*(undefined4 *)(this + 0x134),defaultReloadScl);
  Sound::playSound(sndEng,0xd);
  return;
}

// ---- ControlsPlacementLayer::onPlus  @ 0x31b290
/* ControlsPlacementLayer::onPlus(cocos2d::CCObject*) */

void ControlsPlacementLayer::onPlus(CCObject *param_1)

{
  float fVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  if (*(int *)(param_1 + 0x118) != 0) {
    Sound::playSound(sndEng,0xd);
    pcVar2 = *(code **)(**(int **)(param_1 + 0x118) + 0x40);
    uVar3 = *(undefined4 *)(param_1 + 0x118);
    fVar1 = (float)(**(code **)(**(int **)(param_1 + 0x118) + 0x44))
                             (*(undefined4 *)(param_1 + 0x118));
    if (fVar1 + 0.1 <= 1.3) {
      fVar1 = (float)(**(code **)(**(int **)(param_1 + 0x118) + 0x44))
                               (*(undefined4 *)(param_1 + 0x118));
      fVar1 = fVar1 + 0.1;
    }
    else {
      fVar1 = 1.3;
    }
    (*pcVar2)(uVar3,fVar1);
  }
  return;
}

// ---- ControlsPlacementLayer::onMinus  @ 0x31b358
/* ControlsPlacementLayer::onMinus(cocos2d::CCObject*) */

void ControlsPlacementLayer::onMinus(CCObject *param_1)

{
  float fVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  if (*(int *)(param_1 + 0x118) != 0) {
    Sound::playSound(sndEng,0xd);
    pcVar2 = *(code **)(**(int **)(param_1 + 0x118) + 0x40);
    uVar3 = *(undefined4 *)(param_1 + 0x118);
    fVar1 = (float)(**(code **)(**(int **)(param_1 + 0x118) + 0x44))
                             (*(undefined4 *)(param_1 + 0x118));
    if ((int)((uint)(fVar1 - 0.1 < 0.5) << 0x1f) < 0) {
      fVar1 = 0.5;
    }
    else {
      fVar1 = (float)(**(code **)(**(int **)(param_1 + 0x118) + 0x44))
                               (*(undefined4 *)(param_1 + 0x118));
      fVar1 = fVar1 - 0.1;
    }
    (*pcVar2)(uVar3,fVar1);
  }
  return;
}

// ---- ControlsPlacementLayer::selectItem  @ 0x31b410
/* ControlsPlacementLayer::selectItem(cocos2d::CCSprite*, cocos2d::CCPoint, long) */

bool __thiscall
ControlsPlacementLayer::selectItem
          (ControlsPlacementLayer *this,int *param_1,CCPoint *param_3,undefined4 param_4)

{
  bool bVar1;
  CCPoint *pCVar2;
  float fVar3;
  float *pfVar4;
  undefined4 uVar5;
  CCPoint aCStack_18 [8];
  
  pCVar2 = (CCPoint *)(**(code **)(*param_1 + 0x50))(param_1);
  fVar3 = (float)cocos2d::ccpDistance(pCVar2,param_3);
  pfVar4 = (float *)(**(code **)(*param_1 + 0x8c))(param_1);
  if (((int)((uint)(fVar3 < *pfVar4) << 0x1f) < 0) && (*(int *)(this + 0x11c) == 0)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    deSelectItem(this);
    *(int **)(this + 0x118) = param_1;
    (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),0xff);
    *(undefined4 *)(this + 0x11c) = param_4;
    uVar5 = (**(code **)(**(int **)(this + 0x118) + 0x50))(*(undefined4 *)(this + 0x118));
    FUN_00318c24(aCStack_18,uVar5,param_3);
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x120),aCStack_18);
    (**(code **)(**(int **)(this + 0x164) + 0x1a4))(*(undefined4 *)(this + 0x164),0xff);
    (**(code **)(**(int **)(this + 0x160) + 0x1a4))(*(undefined4 *)(this + 0x160),0xff);
    (**(code **)(**(int **)(this + 0x158) + 0x1a4))(*(undefined4 *)(this + 0x158),0xff);
    (**(code **)(**(int **)(this + 0x150) + 0x1a4))(*(undefined4 *)(this + 0x150),0xff);
  }
  return bVar1;
}

// ---- ControlsPlacementLayer::deSelectItem  @ 0x31b54c
/* ControlsPlacementLayer::deSelectItem() */

void __thiscall ControlsPlacementLayer::deSelectItem(ControlsPlacementLayer *this)

{
  if (*(int *)(this + 0x118) != 0) {
    (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),0x96);
    *(undefined4 *)(this + 0x118) = 0;
    (**(code **)(**(int **)(this + 0x164) + 0x1a4))(*(undefined4 *)(this + 0x164),100);
    (**(code **)(**(int **)(this + 0x160) + 0x1a4))(*(undefined4 *)(this + 0x160),100);
    (**(code **)(**(int **)(this + 0x158) + 0x1a4))(*(undefined4 *)(this + 0x158),100);
    (**(code **)(**(int **)(this + 0x150) + 0x1a4))(*(undefined4 *)(this + 0x150),100);
  }
  return;
}

// ---- ControlsPlacementLayer::cancelTouches  @ 0x31b5ec
/* ControlsPlacementLayer::cancelTouches() */

void ControlsPlacementLayer::cancelTouches(void)

{
  int in_r0;
  float in_s0;
  float in_s1;
  CCPoint aCStack_10 [8];
  
  *(undefined4 *)(in_r0 + 0x11c) = 0;
  *(undefined4 *)(in_r0 + 0x118) = 0;
  cocos2d::CCPoint::CCPoint(aCStack_10,in_s0,in_s1);
  cocos2d::CCPoint::operator=((CCPoint *)(in_r0 + 0x120),aCStack_10);
  *(undefined1 *)(in_r0 + 0x170) = 0;
  return;
}

// ---- ControlsPlacementLayer::touchBeganHandler  @ 0x31b630
/* ControlsPlacementLayer::touchBeganHandler(cocos2d::CCPoint, long) */

void __thiscall
ControlsPlacementLayer::touchBeganHandler
          (ControlsPlacementLayer *this,CCPoint *param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  CCPoint aCStack_10 [8];
  
  uVar2 = *(undefined4 *)(this + 0x128);
  cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
  iVar1 = selectItem(this,uVar2,aCStack_10,param_3);
  if (iVar1 == 0) {
    uVar2 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
    iVar1 = selectItem(this,uVar2,aCStack_10,param_3);
    if (iVar1 == 0) {
      uVar2 = *(undefined4 *)(this + 0x130);
      cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
      iVar1 = selectItem(this,uVar2,aCStack_10,param_3);
      if (iVar1 == 0) {
        uVar2 = *(undefined4 *)(this + 0x134);
        cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
        iVar1 = selectItem(this,uVar2,aCStack_10,param_3);
        if (iVar1 == 0) {
          uVar2 = *(undefined4 *)(this + 0x110);
          cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
          iVar1 = selectItem(this,uVar2,aCStack_10,param_3);
          if (iVar1 == 0) {
            uVar2 = *(undefined4 *)(this + 0x114);
            cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
            selectItem(this,uVar2,aCStack_10,param_3);
          }
        }
      }
    }
  }
  return;
}

// ---- ControlsPlacementLayer::touchMoveHandler  @ 0x31b710
/* ControlsPlacementLayer::touchMoveHandler(cocos2d::CCPoint, long) */

void __thiscall
ControlsPlacementLayer::touchMoveHandler
          (ControlsPlacementLayer *this,undefined4 param_2,int param_3)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined1 auStack_18 [12];
  
  if ((*(int *)(this + 0x118) != 0) && (*(int *)(this + 0x11c) == param_3)) {
    pcVar1 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x118);
    FUN_00318c04(auStack_18,param_2,this + 0x120);
    (*pcVar1)(uVar2,auStack_18);
    this[0x170] = (ControlsPlacementLayer)0x1;
  }
  return;
}

// ---- ControlsPlacementLayer::touchEndHandler  @ 0x31b768
/* ControlsPlacementLayer::touchEndHandler(cocos2d::CCPoint, long) */

void __thiscall
ControlsPlacementLayer::touchEndHandler(ControlsPlacementLayer *this,undefined4 param_2,int param_3)

{
  code *pcVar1;
  undefined4 uVar2;
  uint in_fpscr;
  undefined8 uVar3;
  float local_20;
  float local_1c;
  CCPoint aCStack_18 [8];
  
  if ((*(int *)(this + 0x118) != 0) && (*(int *)(this + 0x11c) == param_3)) {
    if (this[0x170] != (ControlsPlacementLayer)0x0) {
      uVar3 = FUN_00318c04(&local_20,param_2,this + 0x120);
      pcVar1 = *(code **)(**(int **)(this + 0x118) + 0x4c);
      uVar2 = *(undefined4 *)(this + 0x118);
      VectorSignedToFloat((int)(local_20 / 10.0) * 10,(byte)(in_fpscr >> 0x16) & 3);
      VectorSignedToFloat((int)(local_1c / 10.0) * 10,(byte)(in_fpscr >> 0x16) & 3);
      cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      (*pcVar1)(uVar2,aCStack_18);
    }
    *(undefined4 *)(this + 0x11c) = 0;
    Sound::playSound(sndEng,0xe);
    this[0x170] = (ControlsPlacementLayer)0x0;
  }
  return;
}

// ---- ControlsPlacementLayer::ccTouchesCancelled  @ 0x31b84c
/* ControlsPlacementLayer::ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) */

void ControlsPlacementLayer::ccTouchesCancelled(CCSet *param_1,CCEvent *param_2)

{
  cancelTouches();
  return;
}

// ---- ControlsPlacementLayer::ccTouchesCancelled  @ 0x31b864
/* non-virtual thunk to ControlsPlacementLayer::ccTouchesCancelled(cocos2d::CCSet*,
   cocos2d::CCEvent*) */

void __thiscall
ControlsPlacementLayer::ccTouchesCancelled
          (ControlsPlacementLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesCancelled((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- ControlsPlacementLayer::ccTouchesBegan  @ 0x31b86c
/* ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) */

void ControlsPlacementLayer::ccTouchesBegan(CCSet *param_1,CCEvent *param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 local_24;
  int local_20;
  int local_1c;
  CCPoint aCStack_18 [8];
  undefined4 local_10 [3];
  
  std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator
            ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24);
  local_24 = cocos2d::CCSet::begin((CCSet *)param_2);
  while( true ) {
    local_10[0] = cocos2d::CCSet::end((CCSet *)param_2);
    iVar2 = std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=
                      ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24,
                       (_Rb_tree_const_iterator *)local_10);
    if (iVar2 == 0) {
      return;
    }
    piVar1 = (int *)std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*
                              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24);
    local_20 = *piVar1;
    if (local_20 == 0) break;
    cocos2d::CCTouch::getLocationInView();
    cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::convertToGL((CCPoint *)local_10);
    cocos2d::CCPoint::operator=(aCStack_18,(CCPoint *)local_10);
    local_1c = local_20;
    cocos2d::CCPoint::CCPoint((CCPoint *)local_10,aCStack_18);
    touchBeganHandler((ControlsPlacementLayer *)param_1,local_10,local_1c);
    std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++
              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24,0);
  }
  return;
}

// ---- ControlsPlacementLayer::ccTouchesBegan  @ 0x31b910
/* non-virtual thunk to ControlsPlacementLayer::ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*)
    */

void __thiscall
ControlsPlacementLayer::ccTouchesBegan(ControlsPlacementLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesBegan((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- ControlsPlacementLayer::ccTouchesMoved  @ 0x31b918
/* ControlsPlacementLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) */

void ControlsPlacementLayer::ccTouchesMoved(CCSet *param_1,CCEvent *param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 local_24;
  int local_20;
  int local_1c;
  CCPoint aCStack_18 [8];
  undefined4 local_10 [3];
  
  std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator
            ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24);
  local_24 = cocos2d::CCSet::begin((CCSet *)param_2);
  while( true ) {
    local_10[0] = cocos2d::CCSet::end((CCSet *)param_2);
    iVar2 = std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=
                      ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24,
                       (_Rb_tree_const_iterator *)local_10);
    if (iVar2 == 0) {
      return;
    }
    piVar1 = (int *)std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*
                              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24);
    local_20 = *piVar1;
    if (local_20 == 0) break;
    cocos2d::CCTouch::getLocationInView();
    cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::convertToGL((CCPoint *)local_10);
    cocos2d::CCPoint::operator=(aCStack_18,(CCPoint *)local_10);
    local_1c = local_20;
    cocos2d::CCPoint::CCPoint((CCPoint *)local_10,aCStack_18);
    touchMoveHandler((ControlsPlacementLayer *)param_1,local_10,local_1c);
    std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++
              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24,0);
  }
  return;
}

// ---- ControlsPlacementLayer::ccTouchesMoved  @ 0x31b9bc
/* non-virtual thunk to ControlsPlacementLayer::ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*)
    */

void __thiscall
ControlsPlacementLayer::ccTouchesMoved(ControlsPlacementLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesMoved((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}

// ---- ControlsPlacementLayer::ccTouchesEnded  @ 0x31b9c4
/* ControlsPlacementLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) */

void ControlsPlacementLayer::ccTouchesEnded(CCSet *param_1,CCEvent *param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 local_24;
  int local_20;
  int local_1c;
  CCPoint aCStack_18 [8];
  undefined4 local_10 [3];
  
  std::_Rb_tree_const_iterator<cocos2d::CCObject*>::_Rb_tree_const_iterator
            ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24);
  local_24 = cocos2d::CCSet::begin((CCSet *)param_2);
  while( true ) {
    local_10[0] = cocos2d::CCSet::end((CCSet *)param_2);
    iVar2 = std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator!=
                      ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24,
                       (_Rb_tree_const_iterator *)local_10);
    if (iVar2 == 0) {
      return;
    }
    piVar1 = (int *)std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator*
                              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24);
    local_20 = *piVar1;
    if (local_20 == 0) break;
    cocos2d::CCTouch::getLocationInView();
    cocos2d::CCDirector::sharedDirector();
    cocos2d::CCDirector::convertToGL((CCPoint *)local_10);
    cocos2d::CCPoint::operator=(aCStack_18,(CCPoint *)local_10);
    local_1c = local_20;
    cocos2d::CCPoint::CCPoint((CCPoint *)local_10,aCStack_18);
    touchEndHandler((ControlsPlacementLayer *)param_1,local_10,local_1c);
    std::_Rb_tree_const_iterator<cocos2d::CCObject*>::operator++
              ((_Rb_tree_const_iterator<cocos2d::CCObject*> *)&local_24,0);
  }
  return;
}

// ---- ControlsPlacementLayer::ccTouchesEnded  @ 0x31ba68
/* non-virtual thunk to ControlsPlacementLayer::ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*)
    */

void __thiscall
ControlsPlacementLayer::ccTouchesEnded(ControlsPlacementLayer *this,CCSet *param_1,CCEvent *param_2)

{
  ccTouchesEnded((CCSet *)(this + -0xe4),(CCEvent *)param_1);
  return;
}
