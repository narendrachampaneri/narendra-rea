// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- LegTableView::LegTableView  @ 0x2fad10
/* LegTableView::LegTableView() */

LegTableView * __thiscall LegTableView::LegTableView(LegTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090bf98;
  *(undefined ***)(this + 0xe4) = &PTR__LegTableView_1_0090c1bc;
  *(undefined **)(this + 0xe8) = &DAT_0090c1ec;
  *(undefined **)(this + 0xec) = &DAT_0090c1f8;
  *(undefined ***)(this + 0x198) = &PTR__LegTableView_1_0090c208;
  *(undefined ***)(this + 0x1c8) = &PTR__LegTableView_1_0090c220;
  return this;
}

// ---- LegTableView::numberOfCellsInTableView  @ 0x30b400
/* LegTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 LegTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0xb;
}

// ---- LegTableView::numberOfCellsInTableView  @ 0x30b410
/* non-virtual thunk to LegTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall LegTableView::numberOfCellsInTableView(LegTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- LegTableView::getIdentifier  @ 0x30b418
/* LegTableView::getIdentifier() */

undefined4 LegTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47f4,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- LegTableView::tableCellAtIndex  @ 0x30b45c
/* LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
LegTableView::tableCellAtIndex(LegTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(param_2 * 0x10 + iVar3 + 0xdcc));
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

// ---- LegTableView::tableCellAtIndex  @ 0x30b5a8
/* non-virtual thunk to LegTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall LegTableView::tableCellAtIndex(LegTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- LegTableView::tableCellSizeForIndex  @ 0x30b5b0
/* LegTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

LegTableView * __thiscall
LegTableView::tableCellSizeForIndex(LegTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- LegTableView::tableCellSizeForIndex  @ 0x30b5e8
/* non-virtual thunk to LegTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
LegTableView::tableCellSizeForIndex(LegTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- LegTableView::~LegTableView  @ 0x30bf50
/* WARNING: Removing unreachable block (ram,0x0030bfb8) */
/* LegTableView::~LegTableView() */

LegTableView * __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090bf98;
  *(undefined ***)(this + 0xe4) = &PTR__LegTableView_1_0090c1bc;
  *(undefined **)(this + 0xe8) = &DAT_0090c1ec;
  *(undefined **)(this + 0xec) = &DAT_0090c1f8;
  *(undefined ***)(this + 0x198) = &PTR__LegTableView_1_0090c208;
  *(undefined ***)(this + 0x1c8) = &PTR__LegTableView_1_0090c220;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- LegTableView::~LegTableView  @ 0x30bfd0
/* non-virtual thunk to LegTableView::~LegTableView() */

void __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this + -0x1c8);
  return;
}

// ---- LegTableView::~LegTableView  @ 0x30bfd8
/* non-virtual thunk to LegTableView::~LegTableView() */

void __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this + -0x198);
  return;
}

// ---- LegTableView::~LegTableView  @ 0x30bfe0
/* non-virtual thunk to LegTableView::~LegTableView() */

void __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this + -0xe4);
  return;
}

// ---- LegTableView::~LegTableView  @ 0x30bfe8
/* LegTableView::~LegTableView() */

LegTableView * __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this);
  operator_delete(this);
  return this;
}

// ---- LegTableView::~LegTableView  @ 0x30c004
/* non-virtual thunk to LegTableView::~LegTableView() */

void __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this + -0x1c8);
  return;
}

// ---- LegTableView::~LegTableView  @ 0x30c00c
/* non-virtual thunk to LegTableView::~LegTableView() */

void __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this + -0x198);
  return;
}

// ---- LegTableView::~LegTableView  @ 0x30c014
/* non-virtual thunk to LegTableView::~LegTableView() */

void __thiscall LegTableView::~LegTableView(LegTableView *this)

{
  ~LegTableView(this + -0xe4);
  return;
}
