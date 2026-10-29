// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- HairTableView::HairTableView  @ 0x2fa8fc
/* HairTableView::HairTableView() */

HairTableView * __thiscall HairTableView::HairTableView(HairTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090d780;
  *(undefined ***)(this + 0xe4) = &PTR__HairTableView_1_0090d9a4;
  *(undefined **)(this + 0xe8) = &DAT_0090d9d4;
  *(undefined **)(this + 0xec) = &DAT_0090d9e0;
  *(undefined ***)(this + 0x198) = &PTR__HairTableView_1_0090d9f0;
  *(undefined ***)(this + 0x1c8) = &PTR__HairTableView_1_0090da08;
  return this;
}

// ---- HairTableView::numberOfCellsInTableView  @ 0x30a234
/* HairTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 HairTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0x22;
}

// ---- HairTableView::numberOfCellsInTableView  @ 0x30a244
/* non-virtual thunk to HairTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall HairTableView::numberOfCellsInTableView(HairTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- HairTableView::getIdentifier  @ 0x30a24c
/* HairTableView::getIdentifier() */

undefined4 HairTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47a4,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- HairTableView::tableCellAtIndex  @ 0x30a290
/* HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
HairTableView::tableCellAtIndex(HairTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x49) * 0x10 + iVar3 + 4));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3f333333);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- HairTableView::tableCellAtIndex  @ 0x30a3dc
/* non-virtual thunk to HairTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
HairTableView::tableCellAtIndex(HairTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- HairTableView::tableCellSizeForIndex  @ 0x30a3e4
/* HairTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

HairTableView * __thiscall
HairTableView::tableCellSizeForIndex(HairTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- HairTableView::tableCellSizeForIndex  @ 0x30a41c
/* non-virtual thunk to HairTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
HairTableView::tableCellSizeForIndex(HairTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- HairTableView::~HairTableView  @ 0x30c67c
/* WARNING: Removing unreachable block (ram,0x0030c6e4) */
/* HairTableView::~HairTableView() */

HairTableView * __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090d780;
  *(undefined ***)(this + 0xe4) = &PTR__HairTableView_1_0090d9a4;
  *(undefined **)(this + 0xe8) = &DAT_0090d9d4;
  *(undefined **)(this + 0xec) = &DAT_0090d9e0;
  *(undefined ***)(this + 0x198) = &PTR__HairTableView_1_0090d9f0;
  *(undefined ***)(this + 0x1c8) = &PTR__HairTableView_1_0090da08;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- HairTableView::~HairTableView  @ 0x30c6fc
/* non-virtual thunk to HairTableView::~HairTableView() */

void __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this + -0x1c8);
  return;
}

// ---- HairTableView::~HairTableView  @ 0x30c704
/* non-virtual thunk to HairTableView::~HairTableView() */

void __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this + -0x198);
  return;
}

// ---- HairTableView::~HairTableView  @ 0x30c70c
/* non-virtual thunk to HairTableView::~HairTableView() */

void __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this + -0xe4);
  return;
}

// ---- HairTableView::~HairTableView  @ 0x30c714
/* HairTableView::~HairTableView() */

HairTableView * __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this);
  operator_delete(this);
  return this;
}

// ---- HairTableView::~HairTableView  @ 0x30c730
/* non-virtual thunk to HairTableView::~HairTableView() */

void __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this + -0x1c8);
  return;
}

// ---- HairTableView::~HairTableView  @ 0x30c738
/* non-virtual thunk to HairTableView::~HairTableView() */

void __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this + -0x198);
  return;
}

// ---- HairTableView::~HairTableView  @ 0x30c740
/* non-virtual thunk to HairTableView::~HairTableView() */

void __thiscall HairTableView::~HairTableView(HairTableView *this)

{
  ~HairTableView(this + -0xe4);
  return;
}
