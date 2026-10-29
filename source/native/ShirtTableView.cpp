// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- ShirtTableView::ShirtTableView  @ 0x2fac9c
/* ShirtTableView::ShirtTableView() */

ShirtTableView * __thiscall ShirtTableView::ShirtTableView(ShirtTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090c240;
  *(undefined ***)(this + 0xe4) = &PTR__ShirtTableView_1_0090c464;
  *(undefined **)(this + 0xe8) = &DAT_0090c494;
  *(undefined **)(this + 0xec) = &DAT_0090c4a0;
  *(undefined ***)(this + 0x198) = &PTR__ShirtTableView_1_0090c4b0;
  *(undefined ***)(this + 0x1c8) = &PTR__ShirtTableView_1_0090c4c8;
  return this;
}

// ---- ShirtTableView::numberOfCellsInTableView  @ 0x30b210
/* ShirtTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 ShirtTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0xb;
}

// ---- ShirtTableView::numberOfCellsInTableView  @ 0x30b220
/* non-virtual thunk to ShirtTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)
    */

void __thiscall ShirtTableView::numberOfCellsInTableView(ShirtTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- ShirtTableView::getIdentifier  @ 0x30b228
/* ShirtTableView::getIdentifier() */

undefined4 ShirtTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"Shirt",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- ShirtTableView::tableCellAtIndex  @ 0x30b26c
/* ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
ShirtTableView::tableCellAtIndex(ShirtTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(param_2 * 0x10 + iVar3 + 0xb9c));
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

// ---- ShirtTableView::tableCellAtIndex  @ 0x30b3b8
/* non-virtual thunk to ShirtTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
ShirtTableView::tableCellAtIndex(ShirtTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- ShirtTableView::tableCellSizeForIndex  @ 0x30b3c0
/* ShirtTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

ShirtTableView * __thiscall
ShirtTableView::tableCellSizeForIndex(ShirtTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- ShirtTableView::tableCellSizeForIndex  @ 0x30b3f8
/* non-virtual thunk to ShirtTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
ShirtTableView::tableCellSizeForIndex(ShirtTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c01c
/* WARNING: Removing unreachable block (ram,0x0030c084) */
/* ShirtTableView::~ShirtTableView() */

ShirtTableView * __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090c240;
  *(undefined ***)(this + 0xe4) = &PTR__ShirtTableView_1_0090c464;
  *(undefined **)(this + 0xe8) = &DAT_0090c494;
  *(undefined **)(this + 0xec) = &DAT_0090c4a0;
  *(undefined ***)(this + 0x198) = &PTR__ShirtTableView_1_0090c4b0;
  *(undefined ***)(this + 0x1c8) = &PTR__ShirtTableView_1_0090c4c8;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c09c
/* non-virtual thunk to ShirtTableView::~ShirtTableView() */

void __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this + -0x1c8);
  return;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c0a4
/* non-virtual thunk to ShirtTableView::~ShirtTableView() */

void __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this + -0x198);
  return;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c0ac
/* non-virtual thunk to ShirtTableView::~ShirtTableView() */

void __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this + -0xe4);
  return;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c0b4
/* ShirtTableView::~ShirtTableView() */

ShirtTableView * __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this);
  operator_delete(this);
  return this;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c0d0
/* non-virtual thunk to ShirtTableView::~ShirtTableView() */

void __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this + -0x1c8);
  return;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c0d8
/* non-virtual thunk to ShirtTableView::~ShirtTableView() */

void __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this + -0x198);
  return;
}

// ---- ShirtTableView::~ShirtTableView  @ 0x30c0e0
/* non-virtual thunk to ShirtTableView::~ShirtTableView() */

void __thiscall ShirtTableView::~ShirtTableView(ShirtTableView *this)

{
  ~ShirtTableView(this + -0xe4);
  return;
}
