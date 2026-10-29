// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- StacheTableView::StacheTableView  @ 0x2faacc
/* StacheTableView::StacheTableView() */

StacheTableView * __thiscall StacheTableView::StacheTableView(StacheTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090cce0;
  *(undefined ***)(this + 0xe4) = &PTR__StacheTableView_1_0090cf04;
  *(undefined **)(this + 0xe8) = &DAT_0090cf34;
  *(undefined **)(this + 0xec) = &DAT_0090cf40;
  *(undefined ***)(this + 0x198) = &PTR__StacheTableView_1_0090cf50;
  *(undefined ***)(this + 0x1c8) = &PTR__StacheTableView_1_0090cf68;
  return this;
}

// ---- StacheTableView::numberOfCellsInTableView  @ 0x30a9f4
/* StacheTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 StacheTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 5;
}

// ---- StacheTableView::numberOfCellsInTableView  @ 0x30aa04
/* non-virtual thunk to StacheTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)
    */

void __thiscall
StacheTableView::numberOfCellsInTableView(StacheTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- StacheTableView::getIdentifier  @ 0x30aa0c
/* StacheTableView::getIdentifier() */

undefined4 StacheTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"Stache",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- StacheTableView::tableCellAtIndex  @ 0x30aa50
/* StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
StacheTableView::tableCellAtIndex(StacheTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x7c) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3ecccccd);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- StacheTableView::tableCellAtIndex  @ 0x30ab9c
/* non-virtual thunk to StacheTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
StacheTableView::tableCellAtIndex(StacheTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- StacheTableView::tableCellSizeForIndex  @ 0x30aba4
/* StacheTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

StacheTableView * __thiscall
StacheTableView::tableCellSizeForIndex(StacheTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- StacheTableView::tableCellSizeForIndex  @ 0x30abdc
/* non-virtual thunk to StacheTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
StacheTableView::tableCellSizeForIndex(StacheTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c34c
/* WARNING: Removing unreachable block (ram,0x0030c3b4) */
/* StacheTableView::~StacheTableView() */

StacheTableView * __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090cce0;
  *(undefined ***)(this + 0xe4) = &PTR__StacheTableView_1_0090cf04;
  *(undefined **)(this + 0xe8) = &DAT_0090cf34;
  *(undefined **)(this + 0xec) = &DAT_0090cf40;
  *(undefined ***)(this + 0x198) = &PTR__StacheTableView_1_0090cf50;
  *(undefined ***)(this + 0x1c8) = &PTR__StacheTableView_1_0090cf68;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c3cc
/* non-virtual thunk to StacheTableView::~StacheTableView() */

void __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this + -0x1c8);
  return;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c3d4
/* non-virtual thunk to StacheTableView::~StacheTableView() */

void __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this + -0x198);
  return;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c3dc
/* non-virtual thunk to StacheTableView::~StacheTableView() */

void __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this + -0xe4);
  return;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c3e4
/* StacheTableView::~StacheTableView() */

StacheTableView * __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this);
  operator_delete(this);
  return this;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c400
/* non-virtual thunk to StacheTableView::~StacheTableView() */

void __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this + -0x1c8);
  return;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c408
/* non-virtual thunk to StacheTableView::~StacheTableView() */

void __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this + -0x198);
  return;
}

// ---- StacheTableView::~StacheTableView  @ 0x30c410
/* non-virtual thunk to StacheTableView::~StacheTableView() */

void __thiscall StacheTableView::~StacheTableView(StacheTableView *this)

{
  ~StacheTableView(this + -0xe4);
  return;
}
