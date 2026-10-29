// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 29 functions

// ---- StoreLayer::create  @ 0x410254
/* StoreLayer::create() */

StoreLayer * StoreLayer::create(void)

{
  bool bVar1;
  StoreLayer *this;
  int iVar2;
  
  this = operator_new(0x14c);
  StoreLayer(this);
  if ((this == (StoreLayer *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (StoreLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (StoreLayer *)0x0;
  }
  return this;
}

// ---- StoreLayer::scrollViewDidScroll  @ 0x4102c4
/* StoreLayer::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void StoreLayer::scrollViewDidScroll(CCScrollView *param_1)

{
  return;
}

// ---- StoreLayer::scrollViewDidScroll  @ 0x4102d0
/* non-virtual thunk to StoreLayer::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void __thiscall StoreLayer::scrollViewDidScroll(StoreLayer *this,CCScrollView *param_1)

{
  scrollViewDidScroll((CCScrollView *)(this + -0x108));
  return;
}

// ---- StoreLayer::scrollViewDidZoom  @ 0x4102d8
/* StoreLayer::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void StoreLayer::scrollViewDidZoom(CCScrollView *param_1)

{
  return;
}

// ---- StoreLayer::scrollViewDidZoom  @ 0x4102e4
/* non-virtual thunk to StoreLayer::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void __thiscall StoreLayer::scrollViewDidZoom(StoreLayer *this,CCScrollView *param_1)

{
  scrollViewDidZoom((CCScrollView *)(this + -0x108));
  return;
}

// ---- StoreLayer::StoreLayer  @ 0x4102ec
/* StoreLayer::StoreLayer() */

StoreLayer * __thiscall StoreLayer::StoreLayer(StoreLayer *this)

{
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  cocos2d::extension::CCTableViewDelegate::CCTableViewDelegate
            ((CCTableViewDelegate *)(this + 0x108));
  cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0x10c));
  *(undefined ***)this = &PTR_copyWithZone_1_0091c558;
  *(undefined ***)(this + 0xe4) = &PTR__StoreLayer_1_0091c778;
  *(undefined **)(this + 0xe8) = &DAT_0091c7a8;
  *(undefined **)(this + 0xec) = &DAT_0091c7b4;
  *(undefined ***)(this + 0x108) = &PTR__StoreLayer_1_0091c7c4;
  *(undefined ***)(this + 0x10c) = &PTR__StoreLayer_1_0091c7ec;
  *(undefined4 *)(this + 0x114) = 0;
  return this;
}

// ---- StoreLayer::scene  @ 0x410380
/* StoreLayer::scene() */

int * StoreLayer::scene(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)cocos2d::CCScene::create();
  uVar2 = create();
  (**(code **)(*piVar1 + 200))(piVar1,uVar2);
  return piVar1;
}

// ---- StoreLayer::init  @ 0x4103b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00410884 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* StoreLayer::init() */

bool __thiscall StoreLayer::init(StoreLayer *this)

{
  undefined4 uVar1;
  LeaderBoardBridge *this_00;
  CCString *this_01;
  char *pcVar2;
  char *pcVar3;
  undefined4 uVar4;
  code *pcVar5;
  bool bVar6;
  uint in_fpscr;
  float fVar7;
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
  float extraout_s2;
  float extraout_s3;
  undefined1 auStack_bc [3];
  char local_b9;
  undefined1 auStack_b8 [4];
  float local_b4;
  float local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  CCNode *local_a4;
  CCNode *local_a0;
  CCNode *local_9c;
  CCNode *local_98;
  CCNode *local_94;
  CCNode *local_90;
  CCMenuItem *local_8c;
  CCMenuItem *local_88;
  CCMenuItem *local_84;
  CCSize local_80 [8];
  CCPoint local_78 [8];
  CCPoint aCStack_70 [8];
  CCPoint aCStack_68 [8];
  CCPoint aCStack_60 [8];
  code *local_58;
  undefined4 local_54;
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  undefined1 local_40 [16];
  CCPoint local_30;
  undefined1 local_2f;
  undefined1 local_2e;
  
  local_b9 = cocos2d::CCLayer::init((CCLayer *)this);
  bVar6 = local_b9 == '\x01';
  if (bVar6) {
    (**(code **)(*(int *)this + 0x1d0))(this,1);
    this[0x110] = (StoreLayer)0x0;
    fVar7 = (float)cocos2d::CCSize::CCSize(local_80,(CCSize *)&screenSize);
    cocos2d::CCPoint::CCPoint(local_78,fVar7,extraout_s1);
    uVar1 = cocos2d::CCSprite::create("title_ret2_new.png");
    *(undefined4 *)(this + 0x118) = uVar1;
    (**(code **)(**(int **)(this + 0x118) + 0x4c))(*(undefined4 *)(this + 0x118),local_78);
    (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),0x23);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    local_b4 = -8.0;
    local_b0 = 24.0;
    local_ac = 0x3f0ccccd;
    this_00 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    local_a8 = LeaderBoardBridge::calcPlayerPoints(this_00);
    this_01 = (CCString *)cocos2d::CCString::createWithFormat("BATTLE POINTS: %d",local_a8);
    pcVar2 = (char *)cocos2d::CCString::getCString(this_01);
    pcVar3 = (char *)FUN_007c5300(&DAT_00952d6c);
    uVar1 = cocos2d::CCLabelAtlas::create(pcVar2,pcVar3,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x11c) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_00);
    (*pcVar5)(uVar1,&local_30);
    (**(code **)(**(int **)(this + 0x11c) + 0x40))(*(undefined4 *)(this + 0x11c),0x3ecccccd);
    pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x1bc);
    uVar4 = *(undefined4 *)(this + 0x11c);
    uVar1 = FUN_0040f45c(0,0xff,0);
    local_30 = SUB41(uVar1,0);
    local_2f = (undefined1)((uint)uVar1 >> 8);
    local_2e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar4,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x11c),(int)local_b0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    local_a4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_a0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_9c = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_98 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_94 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_90 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_58 = (code *)0x411c31;
    local_54 = 0;
    local_8c = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_a4,local_a0,(CCObject *)this,(_func_void_CCObject_ptr *)0x411c31);
    uVar1 = cocos2d::CCMenu::create(local_8c,0);
    *(undefined4 *)(this + 300) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 300));
    pcVar5 = *(code **)(**(int **)(this + 300) + 0x4c);
    uVar1 = *(undefined4 *)(this + 300);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_01);
    (*pcVar5)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    local_50 = (code *)0x411979;
    local_4c = 0;
    local_88 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_9c,local_98,(CCObject *)this,(_func_void_CCObject_ptr *)0x411979);
    uVar1 = cocos2d::CCMenu::create(local_88,0);
    *(undefined4 *)(this + 0x124) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    pcVar5 = *(code **)(**(int **)(this + 0x124) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x124);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_02);
    (*pcVar5)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    pcVar2 = (char *)FUN_007c5300(&DAT_00952d6c);
    uVar1 = cocos2d::CCLabelAtlas::create("EQUIP",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x120) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    pcVar5 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x120);
    uVar1 = (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    (*pcVar5)(uVar4,uVar1);
    (**(code **)(**(int **)(this + 0x120) + 0x40))(*(undefined4 *)(this + 0x120),local_ac);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x120),(int)local_b0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    pcVar2 = (char *)FUN_007c5300(&DAT_00952d6c);
    uVar1 = cocos2d::CCLabelAtlas::create("COST:",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x130) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x130));
    pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x130);
    (**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x124) + 0x50))(*(undefined4 *)(this + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_03);
    FUN_0040f4d8(0,extraout_s1_03,SUB84((double)(local_b4 + 45.0),0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x130) + 0x1fc))(*(undefined4 *)(this + 0x130));
    FUN_0079a3f4(auStack_b8);
    FUN_007c6a60(aCStack_70,uVar1,auStack_b8);
    uVar1 = FUN_007c505c(aCStack_70);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_0040f4d8(0,extraout_s1_03,SUB84((double)(local_b4 + 45.0),0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_60,fVar7,extraout_s1_04);
    FUN_0040f4b8(&local_48,aCStack_68,aCStack_60);
    (*pcVar5)(uVar4,&local_48);
    FUN_007c5914(aCStack_70);
    FUN_0079a3fc(auStack_b8);
    (**(code **)(**(int **)(this + 0x130) + 0x40))(*(undefined4 *)(this + 0x130),0x3eb33333);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x130),(int)local_b0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    local_48 = (code *)0x411bcd;
    local_44 = 0;
    local_84 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_94,local_90,(CCObject *)this,(_func_void_CCObject_ptr *)0x411bcd);
    uVar1 = cocos2d::CCMenu::create(local_84,0);
    *(undefined4 *)(this + 0x138) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x138));
    pcVar5 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_05);
    (*pcVar5)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
    pcVar2 = (char *)FUN_007c5300(&DAT_00952d6c);
    uVar1 = cocos2d::CCLabelAtlas::create("BUY POINTS",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x128) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x128));
    pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x128);
    (**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    fVar7 = (float)(**(code **)(**(int **)(this + 300) + 0x50))(*(undefined4 *)(this + 300));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1_06);
    FUN_0040f4d8(0,extraout_s1_06,SUB84((double)local_b4,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x128) + 0x1fc))(*(undefined4 *)(this + 0x128));
    FUN_0079a3f4(auStack_bc);
    FUN_007c6a60(auStack_b8,uVar1,auStack_bc);
    uVar1 = FUN_007c505c(auStack_b8);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_0040f4d8(0,extraout_s1_06,SUB84((double)local_b4,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_07);
    FUN_0040f4b8(aCStack_60,aCStack_70,aCStack_68);
    (*pcVar5)(uVar4,aCStack_60);
    FUN_007c5914(auStack_b8);
    FUN_0079a3fc(auStack_bc);
    (**(code **)(**(int **)(this + 0x128) + 0x40))(*(undefined4 *)(this + 0x128),local_ac);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x128),(int)local_b0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
    pcVar2 = (char *)FUN_007c5300(&DAT_00952d6c);
    uVar1 = cocos2d::CCLabelAtlas::create("DONE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x134) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x134));
    pcVar5 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x134);
    (**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x138) + 0x50))(*(undefined4 *)(this + 0x138));
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar7,extraout_s1_08);
    FUN_0040f4d8(0,extraout_s1_08,SUB84((double)local_b4,0),local_40);
    uVar1 = (**(code **)(**(int **)(this + 0x134) + 0x1fc))(*(undefined4 *)(this + 0x134));
    FUN_0079a3f4(auStack_bc);
    FUN_007c6a60(auStack_b8,uVar1,auStack_bc);
    uVar1 = FUN_007c505c(auStack_b8);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar7 = (float)FUN_0040f4d8(0,extraout_s1_08,SUB84((double)local_b4,0),&local_30);
    cocos2d::CCPoint::CCPoint(aCStack_68,fVar7,extraout_s1_09);
    FUN_0040f4b8(aCStack_60,aCStack_70,aCStack_68);
    (*pcVar5)(uVar4,aCStack_60);
    FUN_007c5914(auStack_b8);
    FUN_0079a3fc(auStack_bc);
    (**(code **)(**(int **)(this + 0x134) + 0x40))(*(undefined4 *)(this + 0x134),local_ac);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x134),(int)local_b0);
    fVar7 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    uVar4 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&local_30,fVar7,extraout_s1_10,extraout_s2,extraout_s3);
    uVar1 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)&local_30);
    *(undefined4 *)(this + 0x13c) = uVar1;
    pcVar5 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x13c);
    cocos2d::CCPoint::CCPoint(&local_30,extraout_s0,extraout_s1_11);
    (*pcVar5)(uVar1,&local_30);
    (**(code **)(*(int *)this + 200))
              (this,*(undefined4 *)(this + 0x13c),*(undefined4 *)(this + 0x13c),
               *(code **)(*(int *)this + 200),uVar4);
    pcVar2 = (char *)FUN_007c5300(&DAT_00952d6c);
    uVar1 = cocos2d::CCLabelAtlas::create("ITEM NAME",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(this + 0x140) = uVar1;
    fVar7 = (float)cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    pcVar5 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_12);
    (*pcVar5)(uVar1,&local_30);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x140),0x18);
    fVar7 = (float)(**(code **)(**(int **)(this + 0x140) + 0x40))
                             (*(undefined4 *)(this + 0x140),0x3f000000);
    pcVar5 = *(code **)(**(int **)(this + 0x140) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_13);
    (*pcVar5)(uVar1,&local_30);
    fVar7 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    cocos2d::CCSize::CCSize((CCSize *)&local_30,fVar7,extraout_s1_14);
    uVar1 = cocos2d::CCLabelTTF::create(&DAT_007e9c50,"Helvetica",0x42000000,&local_30,0);
    *(undefined4 *)(this + 0x144) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    fVar7 = (float)(**(code **)(**(int **)(this + 0x144) + 0x40))
                             (*(undefined4 *)(this + 0x144),0x3ee66666);
    pcVar5 = *(code **)(**(int **)(this + 0x144) + 0x7c);
    uVar1 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_15);
    fVar7 = (float)(*pcVar5)(uVar1,&local_30);
    pcVar5 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_16);
    (*pcVar5)(uVar1,&local_30);
    fVar7 = (float)(**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x144));
    cocos2d::CCSize::CCSize((CCSize *)&local_30,fVar7,extraout_s1_17);
    uVar1 = cocos2d::extension::CCTableView::create(this + 0x10c,&local_30);
    *(undefined4 *)(this + 0x148) = uVar1;
    fVar7 = (float)(**(code **)(**(int **)(this + 0x148) + 0x200))(*(undefined4 *)(this + 0x148),1);
    pcVar5 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar1 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint(&local_30,fVar7,extraout_s1_18);
    (*pcVar5)(uVar1,&local_30);
    cocos2d::extension::CCTableView::setDelegate
              (*(CCTableView **)(this + 0x148),(CCTableViewDelegate *)(this + 0x108));
    cocos2d::extension::CCTableView::setVerticalFillOrder(*(CCTableView **)(this + 0x148),0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x148));
    cocos2d::extension::CCTableView::reloadData(*(CCTableView **)(this + 0x148));
    ApplicationInterface::createAdBanner();
    updateSelectedItem(this);
    updateButtons(this);
  }
  return bVar6;
}

// ---- StoreLayer::~StoreLayer  @ 0x4111d8
/* WARNING: Removing unreachable block (ram,0x004112d0) */
/* StoreLayer::~StoreLayer() */

StoreLayer * __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091c558;
  *(undefined ***)(this + 0xe4) = &PTR__StoreLayer_1_0091c778;
  *(undefined **)(this + 0xe8) = &DAT_0091c7a8;
  *(undefined **)(this + 0xec) = &DAT_0091c7b4;
  *(undefined ***)(this + 0x108) = &PTR__StoreLayer_1_0091c7c4;
  *(undefined ***)(this + 0x10c) = &PTR__StoreLayer_1_0091c7ec;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0x10c));
  cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate
            ((CCTableViewDelegate *)(this + 0x108));
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}

// ---- StoreLayer::~StoreLayer  @ 0x4112e8
/* non-virtual thunk to StoreLayer::~StoreLayer() */

void __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this + -0xe4);
  return;
}

// ---- StoreLayer::~StoreLayer  @ 0x4112f0
/* non-virtual thunk to StoreLayer::~StoreLayer() */

void __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this + -0x108);
  return;
}

// ---- StoreLayer::~StoreLayer  @ 0x4112f8
/* non-virtual thunk to StoreLayer::~StoreLayer() */

void __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this + -0x10c);
  return;
}

// ---- StoreLayer::~StoreLayer  @ 0x411300
/* StoreLayer::~StoreLayer() */

StoreLayer * __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this);
  operator_delete(this);
  return this;
}

// ---- StoreLayer::~StoreLayer  @ 0x41131c
/* non-virtual thunk to StoreLayer::~StoreLayer() */

void __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this + -0xe4);
  return;
}

// ---- StoreLayer::~StoreLayer  @ 0x411324
/* non-virtual thunk to StoreLayer::~StoreLayer() */

void __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this + -0x108);
  return;
}

// ---- StoreLayer::~StoreLayer  @ 0x41132c
/* non-virtual thunk to StoreLayer::~StoreLayer() */

void __thiscall StoreLayer::~StoreLayer(StoreLayer *this)

{
  ~StoreLayer(this + -0x10c);
  return;
}

// ---- StoreLayer::updateSelectedItem  @ 0x411334
/* StoreLayer::updateSelectedItem() */

void __thiscall StoreLayer::updateSelectedItem(StoreLayer *this)

{
  char cVar1;
  undefined4 uVar2;
  CCString *this_00;
  char *pcVar3;
  code *pcVar4;
  undefined4 uVar5;
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  int local_78;
  undefined4 local_74;
  ItemInfo aIStack_70 [4];
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined4 local_64;
  CCRect aCStack_50 [16];
  ItemLibrary aIStack_40 [52];
  
  local_78 = *(int *)(this + 0x114);
  ItemLibrary::sharedItemLibrary();
  ItemLibrary::getItemInfoById(aIStack_40,local_78);
  ItemInfo::ItemInfo(aIStack_70,(ItemInfo *)aIStack_40);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_40);
  FUN_007c64e8(auStack_88,auStack_68);
  FUN_007c64e8(auStack_84,auStack_6c);
  cocos2d::CCRect::CCRect((CCRect *)aIStack_40,aCStack_50);
  local_74 = local_64;
  (**(code **)(**(int **)(this + 0x13c) + 0x208))(*(undefined4 *)(this + 0x13c),aIStack_40);
  pcVar4 = *(code **)(**(int **)(this + 0x140) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x140);
  uVar2 = FUN_007c5300(auStack_88);
  (*pcVar4)(uVar5,uVar2);
  pcVar4 = *(code **)(**(int **)(this + 0x144) + 0x23c);
  uVar5 = *(undefined4 *)(this + 0x144);
  uVar2 = FUN_007c5300(auStack_84);
  (*pcVar4)(uVar5,uVar2);
  ItemPurchase::sharedItemPurchase();
  FUN_007c64e8(auStack_80,aIStack_70);
  cVar1 = ItemPurchase::isItemPurchased(auStack_80);
  FUN_007c5914(auStack_80);
  if (cVar1 == '\0') {
    this_00 = (CCString *)cocos2d::CCString::createWithFormat("COST: %d",local_74);
    pcVar3 = (char *)cocos2d::CCString::getCString(this_00);
  }
  else {
    pcVar3 = "PURCHASED";
  }
  FUN_0079a3f4(auStack_80);
  FUN_007c6a60(auStack_7c,pcVar3,auStack_80);
  FUN_0079a3fc(auStack_80);
  pcVar4 = *(code **)(**(int **)(this + 0x130) + 0x1f8);
  uVar5 = *(undefined4 *)(this + 0x130);
  uVar2 = FUN_007c5300(auStack_7c);
  (*pcVar4)(uVar5,uVar2);
  FUN_007c5914(auStack_7c);
  FUN_007c5914(auStack_84);
  FUN_007c5914(auStack_88);
  ItemInfo::~ItemInfo(aIStack_70);
  return;
}

// ---- StoreLayer::updateButtons  @ 0x411500
/* StoreLayer::updateButtons() */

void __thiscall StoreLayer::updateButtons(StoreLayer *this)

{
  bool bVar1;
  char cVar2;
  LeaderBoardBridge *this_00;
  int iVar3;
  int iVar4;
  ItemLibrary *this_01;
  CCString *this_02;
  undefined4 uVar5;
  CCArray *pCVar6;
  char *pcVar7;
  code *pcVar8;
  undefined4 uVar9;
  undefined8 uVar10;
  ItemInfo aIStack_70 [12];
  int local_64;
  ItemLibrary local_40;
  undefined1 local_3f;
  undefined1 local_3e;
  
  this_00 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
  iVar3 = LeaderBoardBridge::calcPlayerPoints(this_00);
  ItemLibrary::sharedItemLibrary();
  ItemLibrary::getItemInfoById(&local_40,*(int *)(this + 0x114));
  ItemInfo::ItemInfo(aIStack_70,(ItemInfo *)&local_40);
  ItemInfo::~ItemInfo((ItemInfo *)&local_40);
  iVar4 = ItemPurchase::sharedItemPurchase();
  pCVar6 = *(CCArray **)(iVar4 + 4);
  this_01 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
  iVar4 = ItemLibrary::getTotalPurchaseAmount(this_01,pCVar6);
  pcVar8 = *(code **)(**(int **)(this + 0x11c) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x11c);
  this_02 = (CCString *)
            cocos2d::CCString::createWithFormat
                      ("BATTLE POINTS: %d",iVar3 - iVar4 & ~(iVar3 - iVar4 >> 0x1f));
  uVar5 = cocos2d::CCString::getCString(this_02);
  (*pcVar8)(uVar9,uVar5);
  bVar1 = local_64 <= (iVar3 - iVar4 & ~(iVar3 - iVar4 >> 0x1f));
  ItemPurchase::sharedItemPurchase();
  FUN_007c64e8(&local_40,aIStack_70);
  cVar2 = ItemPurchase::isItemPurchased(&local_40);
  FUN_007c5914(&local_40);
  if ((bVar1) || (cVar2 == '\x01')) {
    pcVar8 = *(code **)(**(int **)(this + 0x120) + 0x1bc);
    uVar9 = *(undefined4 *)(this + 0x120);
    uVar5 = FUN_0040f45c(0xff,0xff,0xff);
    local_40 = SUB41(uVar5,0);
    local_3f = (undefined1)((uint)uVar5 >> 8);
    local_3e = (undefined1)((uint)uVar5 >> 0x10);
    (*pcVar8)(uVar9,&local_40);
    if (cVar2 == '\0') {
      pcVar7 = "EQUIP";
    }
    else {
      pcVar7 = "SELL";
    }
    uVar10 = (**(code **)(**(int **)(this + 0x120) + 0x1f8))(*(undefined4 *)(this + 0x120),pcVar7);
    pcVar8 = *(code **)(**(int **)(this + 0x120) + 0x7c);
    uVar5 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20))
    ;
    (*pcVar8)(uVar5,&local_40);
  }
  else {
    (**(code **)(**(int **)(this + 0x120) + 0x1f8))
              (*(undefined4 *)(this + 0x120),"MORE POINTS NEEDED");
    pcVar8 = *(code **)(**(int **)(this + 0x120) + 0x1bc);
    uVar9 = *(undefined4 *)(this + 0x120);
    uVar5 = FUN_0040f45c(0xff,0,0);
    local_40 = SUB41(uVar5,0);
    local_3f = (undefined1)((uint)uVar5 >> 8);
    local_3e = (undefined1)((uint)uVar5 >> 0x10);
    uVar10 = (*pcVar8)(uVar9,&local_40);
    pcVar8 = *(code **)(**(int **)(this + 0x120) + 0x7c);
    uVar5 = *(undefined4 *)(this + 0x120);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,(float)uVar10,(float)((ulonglong)uVar10 >> 0x20))
    ;
    (*pcVar8)(uVar5,&local_40);
  }
  if ((bVar1) || (cVar2 != '\0')) {
    uVar5 = 1;
  }
  else {
    uVar5 = 0;
  }
  (**(code **)(**(int **)(this + 0x124) + 0x90))(*(undefined4 *)(this + 0x124),uVar5);
  ItemInfo::~ItemInfo(aIStack_70);
  return;
}

// ---- StoreLayer::tableCellTouched  @ 0x41178c
/* StoreLayer::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
StoreLayer::tableCellTouched(StoreLayer *this,CCTableView *param_1,CCTableViewCell *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::extension::CCTableViewCell::getIdx(param_2);
  *(undefined4 *)(this + 0x114) = uVar1;
  Sound::playSound(sndEng,0xe);
  updateSelectedItem(this);
  updateButtons(this);
  return;
}

// ---- StoreLayer::tableCellTouched  @ 0x4117d0
/* non-virtual thunk to StoreLayer::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
StoreLayer::tableCellTouched(StoreLayer *this,CCTableView *param_1,CCTableViewCell *param_2)

{
  tableCellTouched(this + -0x108,param_1,param_2);
  return;
}

// ---- StoreLayer::tableCellSizeForIndex  @ 0x4117d8
/* StoreLayer::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

StoreLayer * __thiscall
StoreLayer::tableCellSizeForIndex(StoreLayer *this,CCTableView *param_1,uint param_2)

{
  float in_s0;
  float in_s1;
  
  cocos2d::CCSize::CCSize((CCSize *)this,in_s0,in_s1);
  return this;
}

// ---- StoreLayer::tableCellSizeForIndex  @ 0x411804
/* non-virtual thunk to StoreLayer::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
StoreLayer::tableCellSizeForIndex(StoreLayer *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x10c,param_2);
  return;
}

// ---- StoreLayer::tableCellAtIndex  @ 0x41180c
/* StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
StoreLayer::tableCellAtIndex(StoreLayer *this,CCTableView *param_1,uint param_2)

{
  bool bVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  undefined8 uVar5;
  CCTableViewCell *local_34;
  undefined1 local_28 [8];
  CCPoint aCStack_20 [8];
  CCRect aCStack_18 [16];
  
  local_34 = (CCTableViewCell *)cocos2d::extension::CCTableView::dequeueCell(param_1);
  if ((local_34 == (CCTableViewCell *)0x0) ||
     (uVar2 = cocos2d::extension::CCTableViewCell::getIdx(local_34), uVar2 != param_2)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    local_34 = operator_new(0xec);
    cocos2d::extension::CCTableViewCell::CCTableViewCell(local_34);
    cocos2d::CCObject::autorelease((CCObject *)local_34);
    uVar5 = (**(code **)(*(int *)this + 0x200))(local_28,this,*(undefined4 *)(this + 0x148),param_2)
    ;
    cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    piVar3 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar3 + 0x4c))(piVar3,aCStack_20);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar3);
    (**(code **)(*piVar3 + 0x40))(piVar3,0x3f0f5c29);
    iVar4 = ItemLibrary::sharedItemLibrary();
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(param_2 * 0x10 + iVar4 + 4));
    piVar3 = (int *)cocos2d::CCSprite::create("menuTexture.png",aCStack_18);
    (**(code **)(*piVar3 + 0x4c))(piVar3,aCStack_20);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar3);
  }
  return local_34;
}

// ---- StoreLayer::tableCellAtIndex  @ 0x411944
/* non-virtual thunk to StoreLayer::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)
    */

void __thiscall StoreLayer::tableCellAtIndex(StoreLayer *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x10c,param_1,param_2);
  return;
}

// ---- StoreLayer::numberOfCellsInTableView  @ 0x41194c
/* StoreLayer::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 StoreLayer::numberOfCellsInTableView(CCTableView *param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = ItemLibrary::sharedItemLibrary();
  uVar2 = std::vector<ItemInfo,std::allocator<ItemInfo>>::size
                    ((vector<ItemInfo,std::allocator<ItemInfo>> *)(iVar1 + 0xe4));
  return uVar2;
}

// ---- StoreLayer::numberOfCellsInTableView  @ 0x411970
/* non-virtual thunk to StoreLayer::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall StoreLayer::numberOfCellsInTableView(StoreLayer *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x10c));
  return;
}

// ---- StoreLayer::onBuy  @ 0x411978
/* StoreLayer::onBuy(cocos2d::CCObject*) */

void StoreLayer::onBuy(CCObject *param_1)

{
  char cVar1;
  int iVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  string asStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  ItemInfo aIStack_70 [24];
  char local_58;
  ItemLibrary aIStack_40 [52];
  
  ItemLibrary::sharedItemLibrary();
  ItemLibrary::getItemInfoById(aIStack_40,*(int *)(param_1 + 0x114));
  ItemInfo::ItemInfo(aIStack_70,(ItemInfo *)aIStack_40);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_40);
  ItemPurchase::sharedItemPurchase();
  FUN_007c64e8(auStack_88,aIStack_70);
  iVar2 = ItemPurchase::isItemPurchased(auStack_88);
  FUN_007c5914(auStack_88);
  if (iVar2 == 0) {
    FUN_0079a3f4(aIStack_40);
    FUN_007c6a60(auStack_80,"com.chadtowns.da2.propack",aIStack_40);
    cVar1 = InAppPurchaseBridge::isProductPurchased(auStack_80);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(aIStack_40);
    if ((cVar1 == '\x01') || (local_58 == '\0')) {
      ItemPurchase::sharedItemPurchase();
      FUN_007c64e8(aIStack_40,aIStack_70);
      ItemPurchase::purchaseItem(aIStack_40);
      FUN_007c5914(aIStack_40);
    }
    else {
      FUN_0079a3f4(auStack_80);
      FUN_007c6a60(auStack_78,"Pro Pack Required",auStack_80);
      FUN_0079a3f4(aIStack_40);
      FUN_007c6a60(auStack_74,"This item is for pro pack players only.",aIStack_40);
      FUN_0079a3f4(auStack_84);
      FUN_007c6a60(asStack_7c,&DAT_007e9d00,auStack_84);
      pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_7c);
      uVar4 = cocos2d::CCArray::create(pCVar3,0);
      AMessageBox::showAlert(0,auStack_78,auStack_74,uVar4,0,0);
      FUN_007c5914(asStack_7c);
      FUN_0079a3fc(auStack_84);
      FUN_007c5914(auStack_74);
      FUN_0079a3fc(aIStack_40);
      FUN_007c5914(auStack_78);
      FUN_0079a3fc(auStack_80);
    }
  }
  else {
    ItemPurchase::sharedItemPurchase();
    FUN_007c64e8(auStack_84,aIStack_70);
    ItemPurchase::sellItem(auStack_84);
    FUN_007c5914(auStack_84);
  }
  updateButtons((StoreLayer *)param_1);
  updateSelectedItem((StoreLayer *)param_1);
  Sound::playSound(sndEng,0xd);
  ItemInfo::~ItemInfo(aIStack_70);
  return;
}

// ---- StoreLayer::onBack  @ 0x411bcc
/* StoreLayer::onBack(cocos2d::CCObject*) */

void StoreLayer::onBack(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x110] == (CCObject)0x0) {
    param_1[0x110] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009436a4;
    fVar2 = (float)AvatarMenuLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}

// ---- StoreLayer::onPoints  @ 0x411c30
/* StoreLayer::onPoints(cocos2d::CCObject*) */

void StoreLayer::onPoints(CCObject *param_1)

{
  CCDirector *this;
  CCScene *pCVar1;
  float fVar2;
  
  if (param_1[0x110] == (CCObject)0x0) {
    param_1[0x110] = (CCObject)0x1;
    Sound::playSound(sndEng,0xd);
    this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
    pCVar1 = DAT_009436a4;
    fVar2 = (float)PointsLayer::scene();
    pCVar1 = (CCScene *)cocos2d::CCTransitionSlideInL::create(fVar2,pCVar1);
    cocos2d::CCDirector::replaceScene(this,pCVar1);
  }
  return;
}
