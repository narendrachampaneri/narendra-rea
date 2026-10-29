// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- HairColorTableView::HairColorTableView  @ 0x2fa72c
/* HairColorTableView::HairColorTableView() */

HairColorTableView * __thiscall HairColorTableView::HairColorTableView(HairColorTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090da28;
  *(undefined ***)(this + 0xe4) = &PTR__HairColorTableView_1_0090dc4c;
  *(undefined **)(this + 0xe8) = &DAT_0090dc7c;
  *(undefined **)(this + 0xec) = &DAT_0090dc88;
  *(undefined ***)(this + 0x198) = &PTR__HairColorTableView_1_0090dc98;
  *(undefined ***)(this + 0x1c8) = &PTR__HairColorTableView_1_0090dcb0;
  return this;
}

// ---- HairColorTableView::numberOfCellsInTableView  @ 0x309858
/* HairColorTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 HairColorTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 9;
}

// ---- HairColorTableView::numberOfCellsInTableView  @ 0x309868
/* non-virtual thunk to
   HairColorTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall
HairColorTableView::numberOfCellsInTableView(HairColorTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- HairColorTableView::getIdentifier  @ 0x309870
/* HairColorTableView::getIdentifier() */

undefined4 HairColorTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"HairColor",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- HairColorTableView::tableCellAtIndex  @ 0x3098b4
/* HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
HairColorTableView::tableCellAtIndex(HairColorTableView *this,CCTableView *param_1,uint param_2)

{
  bool bVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  code *pcVar6;
  undefined8 uVar7;
  CCTableViewCell *local_24;
  undefined1 local_18 [8];
  CCPoint aCStack_10 [8];
  
  local_24 = (CCTableViewCell *)cocos2d::extension::CCTableView::dequeueCell(param_1);
  if ((local_24 == (CCTableViewCell *)0x0) ||
     (uVar2 = cocos2d::extension::CCTableViewCell::getIdx(local_24), uVar2 != param_2)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    local_24 = operator_new(0xec);
    cocos2d::extension::CCTableViewCell::CCTableViewCell(local_24);
    cocos2d::CCObject::autorelease((CCObject *)local_24);
    uVar7 = (**(code **)(*(int *)this + 0x218))(local_18,this,param_1,param_2);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    piVar3 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("colorSelection.png");
    pcVar6 = *(code **)(*piVar3 + 0x1bc);
    iVar4 = AvatarRenderer::sharedAvatarRenderer();
    (*pcVar6)(piVar3,param_2 * 3 + iVar4 + 0x8f4);
    (**(code **)(*piVar3 + 0x4c))(piVar3,aCStack_10);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_10);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3eb33333);
    (**(code **)(*(int *)local_24 + 200))(local_24,piVar5);
    (**(code **)(*(int *)local_24 + 200))(local_24,piVar3);
  }
  return local_24;
}

// ---- HairColorTableView::tableCellAtIndex  @ 0x3099f0
/* non-virtual thunk to HairColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
HairColorTableView::tableCellAtIndex(HairColorTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- HairColorTableView::tableCellSizeForIndex  @ 0x3099f8
/* HairColorTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

HairColorTableView * __thiscall
HairColorTableView::tableCellSizeForIndex
          (HairColorTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- HairColorTableView::tableCellSizeForIndex  @ 0x309a30
/* non-virtual thunk to HairColorTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
HairColorTableView::tableCellSizeForIndex
          (HairColorTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c748
/* WARNING: Removing unreachable block (ram,0x0030c7b0) */
/* HairColorTableView::~HairColorTableView() */

HairColorTableView * __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090da28;
  *(undefined ***)(this + 0xe4) = &PTR__HairColorTableView_1_0090dc4c;
  *(undefined **)(this + 0xe8) = &DAT_0090dc7c;
  *(undefined **)(this + 0xec) = &DAT_0090dc88;
  *(undefined ***)(this + 0x198) = &PTR__HairColorTableView_1_0090dc98;
  *(undefined ***)(this + 0x1c8) = &PTR__HairColorTableView_1_0090dcb0;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c7c8
/* non-virtual thunk to HairColorTableView::~HairColorTableView() */

void __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this + -0x1c8);
  return;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c7d0
/* non-virtual thunk to HairColorTableView::~HairColorTableView() */

void __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this + -0x198);
  return;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c7d8
/* non-virtual thunk to HairColorTableView::~HairColorTableView() */

void __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this + -0xe4);
  return;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c7e0
/* HairColorTableView::~HairColorTableView() */

HairColorTableView * __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this);
  operator_delete(this);
  return this;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c7fc
/* non-virtual thunk to HairColorTableView::~HairColorTableView() */

void __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this + -0x1c8);
  return;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c804
/* non-virtual thunk to HairColorTableView::~HairColorTableView() */

void __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this + -0x198);
  return;
}

// ---- HairColorTableView::~HairColorTableView  @ 0x30c80c
/* non-virtual thunk to HairColorTableView::~HairColorTableView() */

void __thiscall HairColorTableView::~HairColorTableView(HairColorTableView *this)

{
  ~HairColorTableView(this + -0xe4);
  return;
}
