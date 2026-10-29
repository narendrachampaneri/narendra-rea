// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 23 functions

// ---- AvatarCreator::scrollViewDidScroll  @ 0x2fa450
/* AvatarCreator::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void AvatarCreator::scrollViewDidScroll(CCScrollView *param_1)

{
  return;
}

// ---- AvatarCreator::scrollViewDidScroll  @ 0x2fa45c
/* non-virtual thunk to AvatarCreator::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void __thiscall AvatarCreator::scrollViewDidScroll(AvatarCreator *this,CCScrollView *param_1)

{
  scrollViewDidScroll((CCScrollView *)(this + -0xe4));
  return;
}

// ---- AvatarCreator::scrollViewDidZoom  @ 0x2fa464
/* AvatarCreator::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void AvatarCreator::scrollViewDidZoom(CCScrollView *param_1)

{
  return;
}

// ---- AvatarCreator::scrollViewDidZoom  @ 0x2fa470
/* non-virtual thunk to AvatarCreator::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void __thiscall AvatarCreator::scrollViewDidZoom(AvatarCreator *this,CCScrollView *param_1)

{
  scrollViewDidZoom((CCScrollView *)(this + -0xe4));
  return;
}

// ---- AvatarCreator::tableCellAtIndex  @ 0x2fa478
/* AvatarCreator::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

undefined4 AvatarCreator::tableCellAtIndex(CCTableView *param_1,uint param_2)

{
  return 0;
}

// ---- AvatarCreator::tableCellAtIndex  @ 0x2fa488
/* non-virtual thunk to AvatarCreator::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
AvatarCreator::tableCellAtIndex(AvatarCreator *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex((CCTableView *)(this + -0xe8),(uint)param_1);
  return;
}

// ---- AvatarCreator::numberOfCellsInTableView  @ 0x2fa490
/* AvatarCreator::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 AvatarCreator::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0;
}

// ---- AvatarCreator::numberOfCellsInTableView  @ 0x2fa4a0
/* non-virtual thunk to AvatarCreator::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall AvatarCreator::numberOfCellsInTableView(AvatarCreator *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0xe8));
  return;
}

// ---- AvatarCreator::AvatarCreator  @ 0x2fa574
/* AvatarCreator::AvatarCreator() */

AvatarCreator * __thiscall AvatarCreator::AvatarCreator(AvatarCreator *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  cocos2d::extension::CCTableViewDelegate::CCTableViewDelegate((CCTableViewDelegate *)(this + 0xe4))
  ;
  cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0xe8));
  *(undefined ***)this = &PTR_copyWithZone_1_0090ae20;
  *(undefined ***)(this + 0xe4) = &PTR__AvatarCreator_1_0090afd8;
  *(undefined ***)(this + 0xe8) = &PTR__AvatarCreator_1_0090b000;
  return this;
}

// ---- AvatarCreator::init  @ 0x2faee0
/* AvatarCreator::init() */

bool __thiscall AvatarCreator::init(AvatarCreator *this)

{
  char cVar1;
  int *piVar2;
  PartTableView *this_00;
  HeadTableView *this_01;
  SkinColorTableView *this_02;
  HairColorTableView *pHVar3;
  BrowTableView *this_03;
  EyeTableView *this_04;
  MouthTableView *this_05;
  HairTableView *this_06;
  BackHairTableView *this_07;
  BurnTableView *this_08;
  BeardTableView *this_09;
  StacheTableView *this_10;
  EyeWareTableView *this_11;
  HatTableView *this_12;
  BodyTableView *this_13;
  ShirtTableView *this_14;
  LegTableView *this_15;
  FootTableView *this_16;
  HandTableView *this_17;
  VestTableView *this_18;
  CCArray *pCVar4;
  AvatarRenderer *pAVar5;
  CCTexture2D *pCVar6;
  CCTexture2D *pCVar7;
  CCTexture2D *pCVar8;
  CCTexture2D *pCVar9;
  int iVar10;
  undefined4 uVar11;
  code *pcVar12;
  float extraout_s0;
  float fVar13;
  float extraout_s1;
  undefined8 uVar14;
  CCPoint aCStack_30 [8];
  CCPoint aCStack_28 [4];
  undefined4 local_24;
  CCSize aCStack_20 [8];
  CCSize aCStack_18 [8];
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x144) = 0;
    uVar14 = cocos2d::CCPoint::CCPoint(aCStack_30,extraout_s0,extraout_s1);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    piVar2 = (int *)cocos2d::CCSprite::create("title_ret2_new.png");
    (**(code **)(*piVar2 + 0x4c))(piVar2,aCStack_30);
    (**(code **)(*piVar2 + 0x1a4))(piVar2,0x23);
    uVar14 = (**(code **)(*(int *)this + 200))(this,piVar2);
    cocos2d::CCSize::CCSize(aCStack_20,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    this_00 = operator_new(0x1d0);
    memset(this_00,0,0x1d0);
    PartTableView::PartTableView(this_00);
    *(PartTableView **)(this + 0xf0) = this_00;
    uVar11 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0xf0) + 0x54))(*(undefined4 *)(this + 0xf0),0,0);
    cocos2d::extension::CCTableView::setDelegate
              (*(CCTableView **)(this + 0xf0),(CCTableViewDelegate *)(this + 0xe4));
    uVar14 = (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf0));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_01 = operator_new(0x1d0);
    memset(this_01,0,0x1d0);
    HeadTableView::HeadTableView(this_01);
    *(HeadTableView **)(this + 0xf4) = this_01;
    uVar11 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0xf4) + 0x54))
              (*(undefined4 *)(this + 0xf4),(float)screenSize - 70.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0xf4),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_02 = operator_new(0x1d0);
    memset(this_02,0,0x1d0);
    SkinColorTableView::SkinColorTableView(this_02);
    *(SkinColorTableView **)(this + 0xf8) = this_02;
    uVar11 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0xf8) + 0x54))
              (*(undefined4 *)(this + 0xf8),(float)screenSize - 150.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0xf8),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    pHVar3 = operator_new(0x1d0);
    memset(pHVar3,0,0x1d0);
    HairColorTableView::HairColorTableView(pHVar3);
    *(HairColorTableView **)(this + 0x110) = pHVar3;
    uVar11 = *(undefined4 *)(this + 0x110);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x110) + 0x54))
              (*(undefined4 *)(this + 0x110),(float)screenSize - 225.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x110),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    pHVar3 = operator_new(0x1d0);
    memset(pHVar3,0,0x1d0);
    HairColorTableView::HairColorTableView(pHVar3);
    *(HairColorTableView **)(this + 0xfc) = pHVar3;
    uVar11 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0xfc) + 0x54))
              (*(undefined4 *)(this + 0xfc),(float)screenSize - 200.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0xfc),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_03 = operator_new(0x1d0);
    memset(this_03,0,0x1d0);
    BrowTableView::BrowTableView(this_03);
    *(BrowTableView **)(this + 0x104) = this_03;
    uVar11 = *(undefined4 *)(this + 0x104);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x104) + 0x54))
              (*(undefined4 *)(this + 0x104),(float)screenSize - 150.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x104),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_04 = operator_new(0x1d0);
    memset(this_04,0,0x1d0);
    EyeTableView::EyeTableView(this_04);
    *(EyeTableView **)(this + 0x100) = this_04;
    uVar11 = *(undefined4 *)(this + 0x100);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x100) + 0x54))
              (*(undefined4 *)(this + 0x100),(float)screenSize - 100.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x100),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_05 = operator_new(0x1d0);
    memset(this_05,0,0x1d0);
    MouthTableView::MouthTableView(this_05);
    *(MouthTableView **)(this + 0x108) = this_05;
    uVar11 = *(undefined4 *)(this + 0x108);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x108) + 0x54))
              (*(undefined4 *)(this + 0x108),(float)screenSize - 50.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x108),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_06 = operator_new(0x1d0);
    memset(this_06,0,0x1d0);
    HairTableView::HairTableView(this_06);
    *(HairTableView **)(this + 0x10c) = this_06;
    uVar11 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x10c) + 0x54))
              (*(undefined4 *)(this + 0x10c),(float)screenSize - 140.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x10c),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_07 = operator_new(0x1d0);
    memset(this_07,0,0x1d0);
    BackHairTableView::BackHairTableView(this_07);
    *(BackHairTableView **)(this + 0x114) = this_07;
    uVar11 = *(undefined4 *)(this + 0x114);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x114) + 0x54))
              (*(undefined4 *)(this + 0x114),(float)screenSize - 70.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x114),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_08 = operator_new(0x1d0);
    memset(this_08,0,0x1d0);
    BurnTableView::BurnTableView(this_08);
    *(BurnTableView **)(this + 0x118) = this_08;
    uVar11 = *(undefined4 *)(this + 0x118);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x118) + 0x54))
              (*(undefined4 *)(this + 0x118),(float)screenSize - 177.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x118),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_09 = operator_new(0x1d0);
    memset(this_09,0,0x1d0);
    BeardTableView::BeardTableView(this_09);
    *(BeardTableView **)(this + 0x11c) = this_09;
    uVar11 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x11c) + 0x54))
              (*(undefined4 *)(this + 0x11c),(float)screenSize - 70.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x11c),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_10 = operator_new(0x1d0);
    memset(this_10,0,0x1d0);
    StacheTableView::StacheTableView(this_10);
    *(StacheTableView **)(this + 0x120) = this_10;
    uVar11 = *(undefined4 *)(this + 0x120);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x120) + 0x54))
              (*(undefined4 *)(this + 0x120),(float)screenSize - 125.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x120),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_11 = operator_new(0x1d0);
    memset(this_11,0,0x1d0);
    EyeWareTableView::EyeWareTableView(this_11);
    *(EyeWareTableView **)(this + 0x124) = this_11;
    uVar11 = *(undefined4 *)(this + 0x124);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x124) + 0x54))
              (*(undefined4 *)(this + 0x124),(float)screenSize - 175.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x124),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_12 = operator_new(0x1d0);
    memset(this_12,0,0x1d0);
    HatTableView::HatTableView(this_12);
    *(HatTableView **)(this + 0x128) = this_12;
    uVar11 = *(undefined4 *)(this + 0x128);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x128) + 0x54))
              (*(undefined4 *)(this + 0x128),(float)screenSize - 105.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x128),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_13 = operator_new(0x1d0);
    memset(this_13,0,0x1d0);
    BodyTableView::BodyTableView(this_13);
    *(BodyTableView **)(this + 300) = this_13;
    uVar11 = *(undefined4 *)(this + 300);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 300) + 0x54))
              (*(undefined4 *)(this + 300),(float)screenSize - 80.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 300),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_14 = operator_new(0x1d0);
    memset(this_14,0,0x1d0);
    ShirtTableView::ShirtTableView(this_14);
    *(ShirtTableView **)(this + 0x130) = this_14;
    uVar11 = *(undefined4 *)(this + 0x130);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x130) + 0x54))
              (*(undefined4 *)(this + 0x130),(float)screenSize - 150.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x130),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_15 = operator_new(0x1d0);
    memset(this_15,0,0x1d0);
    LegTableView::LegTableView(this_15);
    *(LegTableView **)(this + 0x134) = this_15;
    uVar11 = *(undefined4 *)(this + 0x134);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x134) + 0x54))
              (*(undefined4 *)(this + 0x134),(float)screenSize - 200.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x134),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_16 = operator_new(0x1d0);
    memset(this_16,0,0x1d0);
    FootTableView::FootTableView(this_16);
    *(FootTableView **)(this + 0x138) = this_16;
    uVar11 = *(undefined4 *)(this + 0x138);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x138) + 0x54))
              (*(undefined4 *)(this + 0x138),(float)screenSize - 190.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x138),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_17 = operator_new(0x1d0);
    memset(this_17,0,0x1d0);
    HandTableView::HandTableView(this_17);
    *(HandTableView **)(this + 0x13c) = this_17;
    uVar11 = *(undefined4 *)(this + 0x13c);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x13c) + 0x54))
              (*(undefined4 *)(this + 0x13c),(float)screenSize - 130.0,local_24);
    uVar14 = cocos2d::extension::CCTableView::setDelegate
                       (*(CCTableView **)(this + 0x13c),(CCTableViewDelegate *)(this + 0xe4));
    cocos2d::CCSize::CCSize(aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    cocos2d::CCSize::operator=(aCStack_20,aCStack_18);
    this_18 = operator_new(0x1d0);
    memset(this_18,0,0x1d0);
    VestTableView::VestTableView(this_18);
    *(VestTableView **)(this + 0x140) = this_18;
    uVar11 = *(undefined4 *)(this + 0x140);
    cocos2d::CCSize::CCSize(aCStack_18,aCStack_20);
    MenuTableView::initWithViewSize(uVar11,aCStack_18,0);
    (**(code **)(**(int **)(this + 0x140) + 0x54))
              (*(undefined4 *)(this + 0x140),(float)screenSize - 80.0,local_24);
    cocos2d::extension::CCTableView::setDelegate
              (*(CCTableView **)(this + 0x140),(CCTableViewDelegate *)(this + 0xe4));
    playerScale = 0x3f800000;
    uVar11 = SoldierView::create();
    *(undefined4 *)(this + 0xec) = uVar11;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar14 = (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xec));
    *(undefined1 *)(*(int *)(this + 0xec) + 0x1e1) = 1;
    pcVar12 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar11 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint
              ((CCPoint *)aCStack_18,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
    fVar13 = (float)(*pcVar12)(uVar11,aCStack_18);
    SoldierView::updateStep(*(SoldierView **)(this + 0xec),fVar13);
    (**(code **)(**(int **)(*(int *)(this + 0xec) + 0xf0) + 0x98))
              (*(undefined4 *)(*(int *)(this + 0xec) + 0xf0),0);
    (**(code **)(**(int **)(*(int *)(this + 0xec) + 0x110) + 0x98))
              (*(undefined4 *)(*(int *)(this + 0xec) + 0x110),0x42c80000);
    (**(code **)(**(int **)(*(int *)(this + 0xec) + 0x114) + 0x98))
              (*(undefined4 *)(*(int *)(this + 0xec) + 0x114),0x42480000);
    (**(code **)(**(int **)(*(int *)(this + 0xec) + 0xe4) + 0x90))
              (*(undefined4 *)(*(int *)(this + 0xec) + 0xe4),0);
    AvatarRenderer::sharedAvatarRenderer();
    pCVar4 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
    pAVar5 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    pCVar6 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar5,pCVar4,0);
    pAVar5 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    pCVar7 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar5,pCVar4,0);
    pAVar5 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    pCVar8 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar5,pCVar4,0);
    pAVar5 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    pCVar9 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar5,pCVar4,0);
    pAVar5 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    iVar10 = AvatarRenderer::getBodyType(pAVar5,pCVar4,0);
    SoldierView::setPlayerSkin(*(SoldierView **)(this + 0xec),iVar10,pCVar6,pCVar7,pCVar8,pCVar9);
  }
  return cVar1 == '\x01';
}

// ---- AvatarCreator::~AvatarCreator  @ 0x2fc0f4
/* WARNING: Removing unreachable block (ram,0x002fc256) */
/* AvatarCreator::~AvatarCreator() */

AvatarCreator * __thiscall AvatarCreator::~AvatarCreator(AvatarCreator *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090ae20;
  *(undefined ***)(this + 0xe4) = &PTR__AvatarCreator_1_0090afd8;
  *(undefined ***)(this + 0xe8) = &PTR__AvatarCreator_1_0090b000;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0xe8));
  cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate
            ((CCTableViewDelegate *)(this + 0xe4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- AvatarCreator::~AvatarCreator  @ 0x2fc270
/* non-virtual thunk to AvatarCreator::~AvatarCreator() */

void __thiscall AvatarCreator::~AvatarCreator(AvatarCreator *this)

{
  ~AvatarCreator(this + -0xe4);
  return;
}

// ---- AvatarCreator::~AvatarCreator  @ 0x2fc278
/* non-virtual thunk to AvatarCreator::~AvatarCreator() */

void __thiscall AvatarCreator::~AvatarCreator(AvatarCreator *this)

{
  ~AvatarCreator(this + -0xe8);
  return;
}

// ---- AvatarCreator::~AvatarCreator  @ 0x2fc280
/* AvatarCreator::~AvatarCreator() */

AvatarCreator * __thiscall AvatarCreator::~AvatarCreator(AvatarCreator *this)

{
  ~AvatarCreator(this);
  operator_delete(this);
  return this;
}

// ---- AvatarCreator::~AvatarCreator  @ 0x2fc29c
/* non-virtual thunk to AvatarCreator::~AvatarCreator() */

void __thiscall AvatarCreator::~AvatarCreator(AvatarCreator *this)

{
  ~AvatarCreator(this + -0xe4);
  return;
}

// ---- AvatarCreator::~AvatarCreator  @ 0x2fc2a4
/* non-virtual thunk to AvatarCreator::~AvatarCreator() */

void __thiscall AvatarCreator::~AvatarCreator(AvatarCreator *this)

{
  ~AvatarCreator(this + -0xe8);
  return;
}

// ---- AvatarCreator::setTableViews  @ 0x2fc2ac
/* AvatarCreator::setTableViews(int) */

void __thiscall AvatarCreator::setTableViews(AvatarCreator *this,int param_1)

{
  int iVar1;
  CCNotificationCenter *pCVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  (**(code **)(**(int **)(this + 0xf4) + 0xe8))(*(undefined4 *)(this + 0xf4));
  (**(code **)(**(int **)(this + 0xf8) + 0xe8))(*(undefined4 *)(this + 0xf8));
  (**(code **)(**(int **)(this + 0x110) + 0xe8))(*(undefined4 *)(this + 0x110));
  (**(code **)(**(int **)(this + 0xfc) + 0xe8))(*(undefined4 *)(this + 0xfc));
  (**(code **)(**(int **)(this + 0x100) + 0xe8))(*(undefined4 *)(this + 0x100));
  (**(code **)(**(int **)(this + 0x104) + 0xe8))(*(undefined4 *)(this + 0x104));
  (**(code **)(**(int **)(this + 0x108) + 0xe8))(*(undefined4 *)(this + 0x108));
  (**(code **)(**(int **)(this + 0x10c) + 0xe8))(*(undefined4 *)(this + 0x10c));
  (**(code **)(**(int **)(this + 0x114) + 0xe8))(*(undefined4 *)(this + 0x114));
  (**(code **)(**(int **)(this + 0x118) + 0xe8))(*(undefined4 *)(this + 0x118));
  (**(code **)(**(int **)(this + 0x11c) + 0xe8))(*(undefined4 *)(this + 0x11c));
  (**(code **)(**(int **)(this + 0x120) + 0xe8))(*(undefined4 *)(this + 0x120));
  (**(code **)(**(int **)(this + 0x124) + 0xe8))(*(undefined4 *)(this + 0x124));
  (**(code **)(**(int **)(this + 0x128) + 0xe8))(*(undefined4 *)(this + 0x128));
  (**(code **)(**(int **)(this + 300) + 0xe8))(*(undefined4 *)(this + 300));
  (**(code **)(**(int **)(this + 0x130) + 0xe8))(*(undefined4 *)(this + 0x130));
  (**(code **)(**(int **)(this + 0x134) + 0xe8))(*(undefined4 *)(this + 0x134));
  (**(code **)(**(int **)(this + 0x138) + 0xe8))(*(undefined4 *)(this + 0x138));
  (**(code **)(**(int **)(this + 0x13c) + 0xe8))(*(undefined4 *)(this + 0x13c));
  (**(code **)(**(int **)(this + 0x140) + 0xe8))(*(undefined4 *)(this + 0x140));
  switch(param_1) {
  case 0:
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf4));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf8));
    break;
  case 1:
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x100));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x104));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xfc));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x108));
    break;
  case 2:
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x10c));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x110));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x118));
    break;
  case 3:
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x120));
    break;
  case 4:
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 300));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x130));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x134));
    break;
  case 5:
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10);
    iVar1 = InAppPurchaseBridge::isProductPurchased(auStack_c);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_10);
    if (iVar1 == 0) {
      pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar2,"AvatarRequireProPack",(CCObject *)0x0)
      ;
    }
    else {
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x128));
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    }
    break;
  case 6:
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10);
    iVar1 = InAppPurchaseBridge::isProductPurchased(auStack_c);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_10);
    if (iVar1 == 0) {
      pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar2,"AvatarRequireProPack",(CCObject *)0x0)
      ;
    }
    else {
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x138));
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x13c));
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x140));
    }
  }
  return;
}

// ---- AvatarCreator::intAtArrayIndex  @ 0x2fc748
/* AvatarCreator::intAtArrayIndex(cocos2d::CCArray*, int) */

undefined4 __thiscall
AvatarCreator::intAtArrayIndex(AvatarCreator *this,CCArray *param_1,int param_2)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  CCString *this_00;
  undefined4 uVar4;
  
  uVar2 = cocos2d::CCArray::count(param_1);
  if (((uint)param_2 < uVar2) &&
     (iVar3 = cocos2d::CCArray::objectAtIndex(param_1,param_2), iVar3 != 0)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(param_1,param_2);
    uVar4 = cocos2d::CCString::intValue(this_00);
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- AvatarCreator::getSelections  @ 0x2fc79c
/* AvatarCreator::getSelections() */

undefined4 __thiscall AvatarCreator::getSelections(AvatarCreator *this)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  
  pCVar1 = (CCObject *)cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(this + 0x144));
  uVar2 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0xf4) + 0x1cc));
  uVar3 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0xf8) + 0x1cc));
  uVar4 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x100) + 0x1cc));
  uVar5 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x104) + 0x1cc));
  uVar6 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0xfc) + 0x1cc));
  uVar7 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x108) + 0x1cc));
  uVar8 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x10c) + 0x1cc));
  uVar9 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x114) + 0x1cc));
  uVar10 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x118) + 0x1cc))
  ;
  uVar11 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x110) + 0x1cc))
  ;
  uVar12 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x11c) + 0x1cc))
  ;
  uVar13 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x120) + 0x1cc))
  ;
  uVar14 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x124) + 0x1cc))
  ;
  uVar15 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x128) + 0x1cc))
  ;
  uVar16 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 300) + 0x1cc));
  uVar17 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x130) + 0x1cc))
  ;
  uVar18 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x134) + 0x1cc))
  ;
  uVar19 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x138) + 0x1cc))
  ;
  uVar20 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x13c) + 0x1cc))
  ;
  uVar21 = cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(*(int *)(this + 0x140) + 0x1cc))
  ;
  uVar2 = cocos2d::CCArray::create
                    (pCVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,
                     uVar13,uVar14,uVar15,uVar16,uVar17,uVar18,uVar19,uVar20,uVar21,0);
  return uVar2;
}

// ---- AvatarCreator::setSelections  @ 0x2fca44
/* AvatarCreator::setSelections(cocos2d::CCArray*) */

void __thiscall AvatarCreator::setSelections(AvatarCreator *this,CCArray *param_1)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = intAtArrayIndex(this,param_1,0);
  *(undefined4 *)(this + 0x144) = uVar1;
  iVar2 = *(int *)(this + 0xf4);
  uVar1 = intAtArrayIndex(this,param_1,1);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0xf8);
  uVar1 = intAtArrayIndex(this,param_1,2);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x100);
  uVar1 = intAtArrayIndex(this,param_1,3);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x104);
  uVar1 = intAtArrayIndex(this,param_1,4);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0xfc);
  uVar1 = intAtArrayIndex(this,param_1,5);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x108);
  uVar1 = intAtArrayIndex(this,param_1,6);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x10c);
  uVar1 = intAtArrayIndex(this,param_1,7);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x114);
  uVar1 = intAtArrayIndex(this,param_1,8);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x118);
  uVar1 = intAtArrayIndex(this,param_1,9);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x110);
  uVar1 = intAtArrayIndex(this,param_1,10);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x11c);
  uVar1 = intAtArrayIndex(this,param_1,0xb);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x120);
  uVar1 = intAtArrayIndex(this,param_1,0xc);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x124);
  uVar1 = intAtArrayIndex(this,param_1,0xd);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x128);
  uVar1 = intAtArrayIndex(this,param_1,0xe);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 300);
  uVar1 = intAtArrayIndex(this,param_1,0xf);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x130);
  uVar1 = intAtArrayIndex(this,param_1,0x10);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x134);
  uVar1 = intAtArrayIndex(this,param_1,0x11);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x138);
  uVar1 = intAtArrayIndex(this,param_1,0x12);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x13c);
  uVar1 = intAtArrayIndex(this,param_1,0x13);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  iVar2 = *(int *)(this + 0x140);
  uVar1 = intAtArrayIndex(this,param_1,0x14);
  *(undefined4 *)(iVar2 + 0x1cc) = uVar1;
  return;
}

// ---- AvatarCreator::tableCellTouched  @ 0x2fcc1c
/* AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
AvatarCreator::tableCellTouched(AvatarCreator *this,CCTableView *param_1,CCTableViewCell *param_2)

{
  uint uVar1;
  CCArray *pCVar2;
  AvatarRenderer *pAVar3;
  CCTexture2D *pCVar4;
  CCTexture2D *pCVar5;
  CCTexture2D *pCVar6;
  CCTexture2D *pCVar7;
  
  uVar1 = cocos2d::extension::CCTableViewCell::getIdx(param_2);
  MenuTableView::cellTouched((MenuTableView *)param_1,uVar1);
  setTableViews(this,*(int *)(*(int *)(this + 0xf0) + 0x1cc));
  pCVar2 = (CCArray *)getSelections(this);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar4 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar3,pCVar2,0);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar5 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar3,pCVar2,0);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar6 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar3,pCVar2,0);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar7 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar3,pCVar2,0);
  SoldierView::setPlayerSkin
            (*(SoldierView **)(this + 0xec),*(int *)(this + 0x144),pCVar4,pCVar5,pCVar6,pCVar7);
  Sound::playSound(sndEng,0xd);
  return;
}

// ---- AvatarCreator::tableCellTouched  @ 0x2fcce4
/* non-virtual thunk to AvatarCreator::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
AvatarCreator::tableCellTouched(AvatarCreator *this,CCTableView *param_1,CCTableViewCell *param_2)

{
  tableCellTouched(this + -0xe4,param_1,param_2);
  return;
}

// ---- AvatarCreator::create  @ 0x31e36c
/* AvatarCreator::create() */

AvatarCreator * AvatarCreator::create(void)

{
  bool bVar1;
  AvatarCreator *this;
  int iVar2;
  
  this = operator_new(0x148);
  AvatarCreator(this);
  if ((this == (AvatarCreator *)0x0) ||
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
    if (this != (AvatarCreator *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AvatarCreator *)0x0;
  }
  return this;
}
