// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- BackHairTableView::BackHairTableView  @ 0x2fa970
/* BackHairTableView::BackHairTableView() */

BackHairTableView * __thiscall BackHairTableView::BackHairTableView(BackHairTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090d4d8;
  *(undefined ***)(this + 0xe4) = &PTR__BackHairTableView_1_0090d6fc;
  *(undefined **)(this + 0xe8) = &DAT_0090d72c;
  *(undefined **)(this + 0xec) = &DAT_0090d738;
  *(undefined ***)(this + 0x198) = &PTR__BackHairTableView_1_0090d748;
  *(undefined ***)(this + 0x1c8) = &PTR__BackHairTableView_1_0090d760;
  return this;
}

// ---- BackHairTableView::numberOfCellsInTableView  @ 0x30a424
/* BackHairTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 BackHairTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 8;
}

// ---- BackHairTableView::numberOfCellsInTableView  @ 0x30a434
/* non-virtual thunk to
   BackHairTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall
BackHairTableView::numberOfCellsInTableView(BackHairTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- BackHairTableView::getIdentifier  @ 0x30a43c
/* BackHairTableView::getIdentifier() */

undefined4 BackHairTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47ac,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- BackHairTableView::tableCellAtIndex  @ 0x30a480
/* BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
BackHairTableView::tableCellAtIndex(BackHairTableView *this,CCTableView *param_1,uint param_2)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  CCTexture2D *this_00;
  int *piVar5;
  undefined8 uVar6;
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
    uVar6 = (**(code **)(*(int *)this + 0x218))(local_28,this,param_1,param_2);
    cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    iVar3 = AvatarRenderer::sharedAvatarRenderer();
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x6b) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3f333333);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- BackHairTableView::tableCellAtIndex  @ 0x30a5cc
/* non-virtual thunk to BackHairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BackHairTableView::tableCellAtIndex(BackHairTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- BackHairTableView::tableCellSizeForIndex  @ 0x30a5d4
/* BackHairTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

BackHairTableView * __thiscall
BackHairTableView::tableCellSizeForIndex(BackHairTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- BackHairTableView::tableCellSizeForIndex  @ 0x30a60c
/* non-virtual thunk to BackHairTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BackHairTableView::tableCellSizeForIndex(BackHairTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c5b0
/* WARNING: Removing unreachable block (ram,0x0030c618) */
/* BackHairTableView::~BackHairTableView() */

BackHairTableView * __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090d4d8;
  *(undefined ***)(this + 0xe4) = &PTR__BackHairTableView_1_0090d6fc;
  *(undefined **)(this + 0xe8) = &DAT_0090d72c;
  *(undefined **)(this + 0xec) = &DAT_0090d738;
  *(undefined ***)(this + 0x198) = &PTR__BackHairTableView_1_0090d748;
  *(undefined ***)(this + 0x1c8) = &PTR__BackHairTableView_1_0090d760;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c630
/* non-virtual thunk to BackHairTableView::~BackHairTableView() */

void __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this + -0x1c8);
  return;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c638
/* non-virtual thunk to BackHairTableView::~BackHairTableView() */

void __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this + -0x198);
  return;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c640
/* non-virtual thunk to BackHairTableView::~BackHairTableView() */

void __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this + -0xe4);
  return;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c648
/* BackHairTableView::~BackHairTableView() */

BackHairTableView * __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this);
  operator_delete(this);
  return this;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c664
/* non-virtual thunk to BackHairTableView::~BackHairTableView() */

void __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this + -0x1c8);
  return;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c66c
/* non-virtual thunk to BackHairTableView::~BackHairTableView() */

void __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this + -0x198);
  return;
}

// ---- BackHairTableView::~BackHairTableView  @ 0x30c674
/* non-virtual thunk to BackHairTableView::~BackHairTableView() */

void __thiscall BackHairTableView::~BackHairTableView(BackHairTableView *this)

{
  ~BackHairTableView(this + -0xe4);
  return;
}
