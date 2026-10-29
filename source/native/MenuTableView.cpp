// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- MenuTableView::numberOfCellsInTableView  @ 0x309414
/* MenuTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 MenuTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0;
}

// ---- MenuTableView::numberOfCellsInTableView  @ 0x309424
/* non-virtual thunk to MenuTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall MenuTableView::numberOfCellsInTableView(MenuTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- MenuTableView::getIdentifier  @ 0x30942c
/* MenuTableView::getIdentifier() */

undefined4 MenuTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4728,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- MenuTableView::tableCellAtIndex  @ 0x309470
/* MenuTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

undefined4 MenuTableView::tableCellAtIndex(CCTableView *param_1,uint param_2)

{
  return 0;
}

// ---- MenuTableView::tableCellAtIndex  @ 0x309480
/* non-virtual thunk to MenuTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
MenuTableView::tableCellAtIndex(MenuTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex((CCTableView *)(this + -0x1c8),(uint)param_1);
  return;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bc14
/* WARNING: Removing unreachable block (ram,0x0030bc88) */
/* MenuTableView::~MenuTableView() */

MenuTableView * __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090edb0;
  *(undefined ***)(this + 0xe4) = &PTR__MenuTableView_1_0090efd0;
  *(undefined **)(this + 0xe8) = &DAT_0090f000;
  *(undefined **)(this + 0xec) = &DAT_0090f00c;
  *(undefined ***)(this + 0x198) = &PTR__MenuTableView_1_0090f01c;
  *(undefined ***)(this + 0x1c8) = &PTR__MenuTableView_1_0090f034;
  cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0x1c8));
  cocos2d::extension::CCTableView::~CCTableView((CCTableView *)this);
  return this;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bca0
/* non-virtual thunk to MenuTableView::~MenuTableView() */

void __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this + -0x1c8);
  return;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bca8
/* non-virtual thunk to MenuTableView::~MenuTableView() */

void __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this + -0x198);
  return;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bcb0
/* non-virtual thunk to MenuTableView::~MenuTableView() */

void __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this + -0xe4);
  return;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bcb8
/* MenuTableView::~MenuTableView() */

MenuTableView * __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this);
  operator_delete(this);
  return this;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bcd4
/* non-virtual thunk to MenuTableView::~MenuTableView() */

void __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this + -0x1c8);
  return;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bcdc
/* non-virtual thunk to MenuTableView::~MenuTableView() */

void __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this + -0x198);
  return;
}

// ---- MenuTableView::~MenuTableView  @ 0x30bce4
/* non-virtual thunk to MenuTableView::~MenuTableView() */

void __thiscall MenuTableView::~MenuTableView(MenuTableView *this)

{
  ~MenuTableView(this + -0xe4);
  return;
}

// ---- MenuTableView::MenuTableView  @ 0x380ca0
/* MenuTableView::MenuTableView() */

MenuTableView * __thiscall MenuTableView::MenuTableView(MenuTableView *this)

{
  cocos2d::extension::CCTableView::CCTableView((CCTableView *)this);
  cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource
            ((CCTableViewDataSource *)(this + 0x1c8));
  *(undefined ***)this = &PTR_copyWithZone_1_0090edb0;
  *(undefined ***)(this + 0xe4) = &PTR__MenuTableView_1_0090efd0;
  *(undefined **)(this + 0xe8) = &DAT_0090f000;
  *(undefined **)(this + 0xec) = &DAT_0090f00c;
  *(undefined ***)(this + 0x198) = &PTR__MenuTableView_1_0090f01c;
  *(undefined ***)(this + 0x1c8) = &PTR__MenuTableView_1_0090f034;
  *(undefined4 *)(this + 0x1cc) = 0;
  return this;
}

// ---- MenuTableView::initWithViewSize  @ 0x380d28
/* MenuTableView::initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) */

undefined4 MenuTableView::initWithViewSize(CCTableView *param_1,CCSize *param_2)

{
  CCSize aCStack_10 [8];
  
  cocos2d::CCSize::CCSize(aCStack_10,param_2);
  cocos2d::extension::CCTableView::initWithViewSize(param_1,aCStack_10,0);
  cocos2d::extension::CCTableView::setDataSource(param_1,(CCTableViewDataSource *)(param_1 + 0x1c8))
  ;
  *(undefined4 *)(param_1 + 0x1a0) = 0;
  cocos2d::extension::CCTableView::_updateCellPositions(param_1);
  cocos2d::extension::CCTableView::_updateContentSize(param_1);
  return 1;
}

// ---- MenuTableView::cellTouched  @ 0x380d7c
/* MenuTableView::cellTouched(unsigned int) */

void __thiscall MenuTableView::cellTouched(MenuTableView *this,uint param_1)

{
  int *piVar1;
  
  *(uint *)(this + 0x1cc) = param_1;
  piVar1 = (int *)cocos2d::extension::CCTableView::cellAtIndex((CCTableView *)this,param_1);
  (**(code **)(*piVar1 + 0xd4))(piVar1,1);
  return;
}
