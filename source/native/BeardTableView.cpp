// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- BeardTableView::BeardTableView  @ 0x2faa58
/* BeardTableView::BeardTableView() */

BeardTableView * __thiscall BeardTableView::BeardTableView(BeardTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090cf88;
  *(undefined ***)(this + 0xe4) = &PTR__BeardTableView_1_0090d1ac;
  *(undefined **)(this + 0xe8) = &DAT_0090d1dc;
  *(undefined **)(this + 0xec) = &DAT_0090d1e8;
  *(undefined ***)(this + 0x198) = &PTR__BeardTableView_1_0090d1f8;
  *(undefined ***)(this + 0x1c8) = &PTR__BeardTableView_1_0090d210;
  return this;
}

// ---- BeardTableView::numberOfCellsInTableView  @ 0x30a804
/* BeardTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 BeardTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 8;
}

// ---- BeardTableView::numberOfCellsInTableView  @ 0x30a814
/* non-virtual thunk to BeardTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)
    */

void __thiscall BeardTableView::numberOfCellsInTableView(BeardTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- BeardTableView::getIdentifier  @ 0x30a81c
/* BeardTableView::getIdentifier() */

undefined4 BeardTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"Beard",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- BeardTableView::tableCellAtIndex  @ 0x30a860
/* BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
BeardTableView::tableCellAtIndex(BeardTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x87) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3f0ccccd);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- BeardTableView::tableCellAtIndex  @ 0x30a9ac
/* non-virtual thunk to BeardTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
BeardTableView::tableCellAtIndex(BeardTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- BeardTableView::tableCellSizeForIndex  @ 0x30a9b4
/* BeardTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

BeardTableView * __thiscall
BeardTableView::tableCellSizeForIndex(BeardTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- BeardTableView::tableCellSizeForIndex  @ 0x30a9ec
/* non-virtual thunk to BeardTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BeardTableView::tableCellSizeForIndex(BeardTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c418
/* WARNING: Removing unreachable block (ram,0x0030c480) */
/* BeardTableView::~BeardTableView() */

BeardTableView * __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090cf88;
  *(undefined ***)(this + 0xe4) = &PTR__BeardTableView_1_0090d1ac;
  *(undefined **)(this + 0xe8) = &DAT_0090d1dc;
  *(undefined **)(this + 0xec) = &DAT_0090d1e8;
  *(undefined ***)(this + 0x198) = &PTR__BeardTableView_1_0090d1f8;
  *(undefined ***)(this + 0x1c8) = &PTR__BeardTableView_1_0090d210;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c498
/* non-virtual thunk to BeardTableView::~BeardTableView() */

void __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this + -0x1c8);
  return;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c4a0
/* non-virtual thunk to BeardTableView::~BeardTableView() */

void __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this + -0x198);
  return;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c4a8
/* non-virtual thunk to BeardTableView::~BeardTableView() */

void __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this + -0xe4);
  return;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c4b0
/* BeardTableView::~BeardTableView() */

BeardTableView * __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this);
  operator_delete(this);
  return this;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c4cc
/* non-virtual thunk to BeardTableView::~BeardTableView() */

void __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this + -0x1c8);
  return;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c4d4
/* non-virtual thunk to BeardTableView::~BeardTableView() */

void __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this + -0x198);
  return;
}

// ---- BeardTableView::~BeardTableView  @ 0x30c4dc
/* non-virtual thunk to BeardTableView::~BeardTableView() */

void __thiscall BeardTableView::~BeardTableView(BeardTableView *this)

{
  ~BeardTableView(this + -0xe4);
  return;
}
