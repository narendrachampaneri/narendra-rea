// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- HeadTableView::HeadTableView  @ 0x2fa644
/* HeadTableView::HeadTableView() */

HeadTableView * __thiscall HeadTableView::HeadTableView(HeadTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090e4c8;
  *(undefined ***)(this + 0xe4) = &PTR__HeadTableView_1_0090e6ec;
  *(undefined **)(this + 0xe8) = &DAT_0090e71c;
  *(undefined **)(this + 0xec) = &DAT_0090e728;
  *(undefined ***)(this + 0x198) = &PTR__HeadTableView_1_0090e738;
  *(undefined ***)(this + 0x1c8) = &PTR__HeadTableView_1_0090e750;
  return this;
}

// ---- HeadTableView::numberOfCellsInTableView  @ 0x309a38
/* HeadTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 HeadTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 3;
}

// ---- HeadTableView::numberOfCellsInTableView  @ 0x309a48
/* non-virtual thunk to HeadTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall HeadTableView::numberOfCellsInTableView(HeadTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- HeadTableView::getIdentifier  @ 0x309a50
/* HeadTableView::getIdentifier() */

undefined4 HeadTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4788,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- HeadTableView::tableCellAtIndex  @ 0x309a94
/* HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
HeadTableView::tableCellAtIndex(HeadTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0xe) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3f19999a);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- HeadTableView::tableCellAtIndex  @ 0x309be0
/* non-virtual thunk to HeadTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
HeadTableView::tableCellAtIndex(HeadTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- HeadTableView::tableCellSizeForIndex  @ 0x309be8
/* HeadTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

HeadTableView * __thiscall
HeadTableView::tableCellSizeForIndex(HeadTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- HeadTableView::tableCellSizeForIndex  @ 0x309c20
/* non-virtual thunk to HeadTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
HeadTableView::tableCellSizeForIndex(HeadTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- HeadTableView::~HeadTableView  @ 0x30ca78
/* WARNING: Removing unreachable block (ram,0x0030cae0) */
/* HeadTableView::~HeadTableView() */

HeadTableView * __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090e4c8;
  *(undefined ***)(this + 0xe4) = &PTR__HeadTableView_1_0090e6ec;
  *(undefined **)(this + 0xe8) = &DAT_0090e71c;
  *(undefined **)(this + 0xec) = &DAT_0090e728;
  *(undefined ***)(this + 0x198) = &PTR__HeadTableView_1_0090e738;
  *(undefined ***)(this + 0x1c8) = &PTR__HeadTableView_1_0090e750;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- HeadTableView::~HeadTableView  @ 0x30caf8
/* non-virtual thunk to HeadTableView::~HeadTableView() */

void __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this + -0x1c8);
  return;
}

// ---- HeadTableView::~HeadTableView  @ 0x30cb00
/* non-virtual thunk to HeadTableView::~HeadTableView() */

void __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this + -0x198);
  return;
}

// ---- HeadTableView::~HeadTableView  @ 0x30cb08
/* non-virtual thunk to HeadTableView::~HeadTableView() */

void __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this + -0xe4);
  return;
}

// ---- HeadTableView::~HeadTableView  @ 0x30cb10
/* HeadTableView::~HeadTableView() */

HeadTableView * __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this);
  operator_delete(this);
  return this;
}

// ---- HeadTableView::~HeadTableView  @ 0x30cb2c
/* non-virtual thunk to HeadTableView::~HeadTableView() */

void __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this + -0x1c8);
  return;
}

// ---- HeadTableView::~HeadTableView  @ 0x30cb34
/* non-virtual thunk to HeadTableView::~HeadTableView() */

void __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this + -0x198);
  return;
}

// ---- HeadTableView::~HeadTableView  @ 0x30cb3c
/* non-virtual thunk to HeadTableView::~HeadTableView() */

void __thiscall HeadTableView::~HeadTableView(HeadTableView *this)

{
  ~HeadTableView(this + -0xe4);
  return;
}
