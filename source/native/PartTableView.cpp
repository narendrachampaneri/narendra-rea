// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- PartTableView::PartTableView  @ 0x2fa5d0
/* PartTableView::PartTableView() */

PartTableView * __thiscall PartTableView::PartTableView(PartTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090ea18;
  *(undefined ***)(this + 0xe4) = &PTR__PartTableView_1_0090ec3c;
  *(undefined **)(this + 0xe8) = &DAT_0090ec6c;
  *(undefined **)(this + 0xec) = &DAT_0090ec78;
  *(undefined ***)(this + 0x198) = &PTR__PartTableView_1_0090ec88;
  *(undefined ***)(this + 0x1c8) = &PTR__PartTableView_1_0090eca0;
  return this;
}

// ---- PartTableView::numberOfCellsInTableView  @ 0x309488
/* PartTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 PartTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 7;
}

// ---- PartTableView::numberOfCellsInTableView  @ 0x309498
/* non-virtual thunk to PartTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall PartTableView::numberOfCellsInTableView(PartTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- PartTableView::getIdentifier  @ 0x3094a0
/* PartTableView::getIdentifier() */

undefined4 PartTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d472c,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- PartTableView::tableCellAtIndex  @ 0x3094e4
/* PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
PartTableView::tableCellAtIndex(PartTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x2f) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3f266666);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- PartTableView::tableCellAtIndex  @ 0x309630
/* non-virtual thunk to PartTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
PartTableView::tableCellAtIndex(PartTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- PartTableView::tableCellSizeForIndex  @ 0x309638
/* PartTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

PartTableView * __thiscall
PartTableView::tableCellSizeForIndex(PartTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- PartTableView::tableCellSizeForIndex  @ 0x309670
/* non-virtual thunk to PartTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
PartTableView::tableCellSizeForIndex(PartTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- PartTableView::~PartTableView  @ 0x30cc10
/* WARNING: Removing unreachable block (ram,0x0030cc78) */
/* PartTableView::~PartTableView() */

PartTableView * __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090ea18;
  *(undefined ***)(this + 0xe4) = &PTR__PartTableView_1_0090ec3c;
  *(undefined **)(this + 0xe8) = &DAT_0090ec6c;
  *(undefined **)(this + 0xec) = &DAT_0090ec78;
  *(undefined ***)(this + 0x198) = &PTR__PartTableView_1_0090ec88;
  *(undefined ***)(this + 0x1c8) = &PTR__PartTableView_1_0090eca0;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- PartTableView::~PartTableView  @ 0x30cc90
/* non-virtual thunk to PartTableView::~PartTableView() */

void __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this + -0x1c8);
  return;
}

// ---- PartTableView::~PartTableView  @ 0x30cc98
/* non-virtual thunk to PartTableView::~PartTableView() */

void __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this + -0x198);
  return;
}

// ---- PartTableView::~PartTableView  @ 0x30cca0
/* non-virtual thunk to PartTableView::~PartTableView() */

void __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this + -0xe4);
  return;
}

// ---- PartTableView::~PartTableView  @ 0x30cca8
/* PartTableView::~PartTableView() */

PartTableView * __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this);
  operator_delete(this);
  return this;
}

// ---- PartTableView::~PartTableView  @ 0x30ccc4
/* non-virtual thunk to PartTableView::~PartTableView() */

void __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this + -0x1c8);
  return;
}

// ---- PartTableView::~PartTableView  @ 0x30cccc
/* non-virtual thunk to PartTableView::~PartTableView() */

void __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this + -0x198);
  return;
}

// ---- PartTableView::~PartTableView  @ 0x30ccd4
/* non-virtual thunk to PartTableView::~PartTableView() */

void __thiscall PartTableView::~PartTableView(PartTableView *this)

{
  ~PartTableView(this + -0xe4);
  return;
}
