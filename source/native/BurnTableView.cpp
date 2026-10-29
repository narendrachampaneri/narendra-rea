// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- BurnTableView::BurnTableView  @ 0x2fa9e4
/* BurnTableView::BurnTableView() */

BurnTableView * __thiscall BurnTableView::BurnTableView(BurnTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090d230;
  *(undefined ***)(this + 0xe4) = &PTR__BurnTableView_1_0090d454;
  *(undefined **)(this + 0xe8) = &DAT_0090d484;
  *(undefined **)(this + 0xec) = &DAT_0090d490;
  *(undefined ***)(this + 0x198) = &PTR__BurnTableView_1_0090d4a0;
  *(undefined ***)(this + 0x1c8) = &PTR__BurnTableView_1_0090d4b8;
  return this;
}

// ---- BurnTableView::numberOfCellsInTableView  @ 0x30a614
/* BurnTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 BurnTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 9;
}

// ---- BurnTableView::numberOfCellsInTableView  @ 0x30a624
/* non-virtual thunk to BurnTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall BurnTableView::numberOfCellsInTableView(BurnTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- BurnTableView::getIdentifier  @ 0x30a62c
/* BurnTableView::getIdentifier() */

undefined4 BurnTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47b4,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- BurnTableView::tableCellAtIndex  @ 0x30a670
/* BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
BurnTableView::tableCellAtIndex(BurnTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x73) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3eb33333);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- BurnTableView::tableCellAtIndex  @ 0x30a7bc
/* non-virtual thunk to BurnTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
BurnTableView::tableCellAtIndex(BurnTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- BurnTableView::tableCellSizeForIndex  @ 0x30a7c4
/* BurnTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

BurnTableView * __thiscall
BurnTableView::tableCellSizeForIndex(BurnTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- BurnTableView::tableCellSizeForIndex  @ 0x30a7fc
/* non-virtual thunk to BurnTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BurnTableView::tableCellSizeForIndex(BurnTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c4e4
/* WARNING: Removing unreachable block (ram,0x0030c54c) */
/* BurnTableView::~BurnTableView() */

BurnTableView * __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090d230;
  *(undefined ***)(this + 0xe4) = &PTR__BurnTableView_1_0090d454;
  *(undefined **)(this + 0xe8) = &DAT_0090d484;
  *(undefined **)(this + 0xec) = &DAT_0090d490;
  *(undefined ***)(this + 0x198) = &PTR__BurnTableView_1_0090d4a0;
  *(undefined ***)(this + 0x1c8) = &PTR__BurnTableView_1_0090d4b8;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c564
/* non-virtual thunk to BurnTableView::~BurnTableView() */

void __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this + -0x1c8);
  return;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c56c
/* non-virtual thunk to BurnTableView::~BurnTableView() */

void __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this + -0x198);
  return;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c574
/* non-virtual thunk to BurnTableView::~BurnTableView() */

void __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this + -0xe4);
  return;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c57c
/* BurnTableView::~BurnTableView() */

BurnTableView * __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this);
  operator_delete(this);
  return this;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c598
/* non-virtual thunk to BurnTableView::~BurnTableView() */

void __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this + -0x1c8);
  return;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c5a0
/* non-virtual thunk to BurnTableView::~BurnTableView() */

void __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this + -0x198);
  return;
}

// ---- BurnTableView::~BurnTableView  @ 0x30c5a8
/* non-virtual thunk to BurnTableView::~BurnTableView() */

void __thiscall BurnTableView::~BurnTableView(BurnTableView *this)

{
  ~BurnTableView(this + -0xe4);
  return;
}
