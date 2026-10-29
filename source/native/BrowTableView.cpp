// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- BrowTableView::BrowTableView  @ 0x2fa7a0
/* BrowTableView::BrowTableView() */

BrowTableView * __thiscall BrowTableView::BrowTableView(BrowTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090df78;
  *(undefined ***)(this + 0xe4) = &PTR__BrowTableView_1_0090e19c;
  *(undefined **)(this + 0xe8) = &DAT_0090e1cc;
  *(undefined **)(this + 0xec) = &DAT_0090e1d8;
  *(undefined ***)(this + 0x198) = &PTR__BrowTableView_1_0090e1e8;
  *(undefined ***)(this + 0x1c8) = &PTR__BrowTableView_1_0090e200;
  return this;
}

// ---- BrowTableView::numberOfCellsInTableView  @ 0x309e2c
/* BrowTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 BrowTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0xd;
}

// ---- BrowTableView::numberOfCellsInTableView  @ 0x309e3c
/* non-virtual thunk to BrowTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall BrowTableView::numberOfCellsInTableView(BrowTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- BrowTableView::getIdentifier  @ 0x309e44
/* BrowTableView::getIdentifier() */

undefined4 BrowTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4794,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- BrowTableView::tableCellAtIndex  @ 0x309e88
/* BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
BrowTableView::tableCellAtIndex(BrowTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x22) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar4 + 0x40))(piVar4,0x3fa00000);
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3ecccccd);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- BrowTableView::tableCellAtIndex  @ 0x309fe8
/* non-virtual thunk to BrowTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
BrowTableView::tableCellAtIndex(BrowTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- BrowTableView::tableCellSizeForIndex  @ 0x309ff0
/* BrowTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

BrowTableView * __thiscall
BrowTableView::tableCellSizeForIndex(BrowTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- BrowTableView::tableCellSizeForIndex  @ 0x30a028
/* non-virtual thunk to BrowTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BrowTableView::tableCellSizeForIndex(BrowTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c8e0
/* WARNING: Removing unreachable block (ram,0x0030c948) */
/* BrowTableView::~BrowTableView() */

BrowTableView * __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090df78;
  *(undefined ***)(this + 0xe4) = &PTR__BrowTableView_1_0090e19c;
  *(undefined **)(this + 0xe8) = &DAT_0090e1cc;
  *(undefined **)(this + 0xec) = &DAT_0090e1d8;
  *(undefined ***)(this + 0x198) = &PTR__BrowTableView_1_0090e1e8;
  *(undefined ***)(this + 0x1c8) = &PTR__BrowTableView_1_0090e200;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c960
/* non-virtual thunk to BrowTableView::~BrowTableView() */

void __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this + -0x1c8);
  return;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c968
/* non-virtual thunk to BrowTableView::~BrowTableView() */

void __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this + -0x198);
  return;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c970
/* non-virtual thunk to BrowTableView::~BrowTableView() */

void __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this + -0xe4);
  return;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c978
/* BrowTableView::~BrowTableView() */

BrowTableView * __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this);
  operator_delete(this);
  return this;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c994
/* non-virtual thunk to BrowTableView::~BrowTableView() */

void __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this + -0x1c8);
  return;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c99c
/* non-virtual thunk to BrowTableView::~BrowTableView() */

void __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this + -0x198);
  return;
}

// ---- BrowTableView::~BrowTableView  @ 0x30c9a4
/* non-virtual thunk to BrowTableView::~BrowTableView() */

void __thiscall BrowTableView::~BrowTableView(BrowTableView *this)

{
  ~BrowTableView(this + -0xe4);
  return;
}
