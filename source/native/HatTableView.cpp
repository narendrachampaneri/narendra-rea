// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- HatTableView::HatTableView  @ 0x2fabb4
/* HatTableView::HatTableView() */

HatTableView * __thiscall HatTableView::HatTableView(HatTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090c790;
  *(undefined ***)(this + 0xe4) = &PTR__HatTableView_1_0090c9b4;
  *(undefined **)(this + 0xe8) = &DAT_0090c9e4;
  *(undefined **)(this + 0xec) = &DAT_0090c9f0;
  *(undefined ***)(this + 0x198) = &PTR__HatTableView_1_0090ca00;
  *(undefined ***)(this + 0x1c8) = &PTR__HatTableView_1_0090ca18;
  return this;
}

// ---- HatTableView::numberOfCellsInTableView  @ 0x30add4
/* HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 __thiscall
HatTableView::numberOfCellsInTableView(HatTableView *this,CCTableView *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  ItemPurchase::sharedItemPurchase();
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"maskpack1",auStack_10,auStack_10,param_1,this);
  iVar1 = ItemPurchase::isItemPurchased(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  if (iVar1 == 0) {
    uVar2 = 0xe;
  }
  else {
    uVar2 = 0x13;
  }
  return uVar2;
}

// ---- HatTableView::numberOfCellsInTableView  @ 0x30ae44
/* non-virtual thunk to HatTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall HatTableView::numberOfCellsInTableView(HatTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView(this + -0x1c8,param_1);
  return;
}

// ---- HatTableView::getIdentifier  @ 0x30ae4c
/* HatTableView::getIdentifier() */

undefined4 HatTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47e0,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- HatTableView::tableCellAtIndex  @ 0x30ae90
/* HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
HatTableView::tableCellAtIndex(HatTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(param_2 * 0x10 + iVar3 + 0x91c));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3f400000);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- HatTableView::tableCellAtIndex  @ 0x30afd8
/* non-virtual thunk to HatTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall HatTableView::tableCellAtIndex(HatTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- HatTableView::tableCellSizeForIndex  @ 0x30afe0
/* HatTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

HatTableView * __thiscall
HatTableView::tableCellSizeForIndex(HatTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- HatTableView::tableCellSizeForIndex  @ 0x30b018
/* non-virtual thunk to HatTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
HatTableView::tableCellSizeForIndex(HatTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- HatTableView::~HatTableView  @ 0x30c1b4
/* WARNING: Removing unreachable block (ram,0x0030c21c) */
/* HatTableView::~HatTableView() */

HatTableView * __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090c790;
  *(undefined ***)(this + 0xe4) = &PTR__HatTableView_1_0090c9b4;
  *(undefined **)(this + 0xe8) = &DAT_0090c9e4;
  *(undefined **)(this + 0xec) = &DAT_0090c9f0;
  *(undefined ***)(this + 0x198) = &PTR__HatTableView_1_0090ca00;
  *(undefined ***)(this + 0x1c8) = &PTR__HatTableView_1_0090ca18;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- HatTableView::~HatTableView  @ 0x30c234
/* non-virtual thunk to HatTableView::~HatTableView() */

void __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this + -0x1c8);
  return;
}

// ---- HatTableView::~HatTableView  @ 0x30c23c
/* non-virtual thunk to HatTableView::~HatTableView() */

void __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this + -0x198);
  return;
}

// ---- HatTableView::~HatTableView  @ 0x30c244
/* non-virtual thunk to HatTableView::~HatTableView() */

void __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this + -0xe4);
  return;
}

// ---- HatTableView::~HatTableView  @ 0x30c24c
/* HatTableView::~HatTableView() */

HatTableView * __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this);
  operator_delete(this);
  return this;
}

// ---- HatTableView::~HatTableView  @ 0x30c268
/* non-virtual thunk to HatTableView::~HatTableView() */

void __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this + -0x1c8);
  return;
}

// ---- HatTableView::~HatTableView  @ 0x30c270
/* non-virtual thunk to HatTableView::~HatTableView() */

void __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this + -0x198);
  return;
}

// ---- HatTableView::~HatTableView  @ 0x30c278
/* non-virtual thunk to HatTableView::~HatTableView() */

void __thiscall HatTableView::~HatTableView(HatTableView *this)

{
  ~HatTableView(this + -0xe4);
  return;
}
