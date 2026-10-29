// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- VestTableView::VestTableView  @ 0x2fae6c
/* VestTableView::VestTableView() */

VestTableView * __thiscall VestTableView::VestTableView(VestTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090b7a0;
  *(undefined ***)(this + 0xe4) = &PTR__VestTableView_1_0090b9c4;
  *(undefined **)(this + 0xe8) = &DAT_0090b9f4;
  *(undefined **)(this + 0xec) = &DAT_0090ba00;
  *(undefined ***)(this + 0x198) = &PTR__VestTableView_1_0090ba10;
  *(undefined ***)(this + 0x1c8) = &PTR__VestTableView_1_0090ba28;
  return this;
}

// ---- VestTableView::numberOfCellsInTableView  @ 0x30ba24
/* VestTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 VestTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 7;
}

// ---- VestTableView::numberOfCellsInTableView  @ 0x30ba34
/* non-virtual thunk to VestTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall VestTableView::numberOfCellsInTableView(VestTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- VestTableView::getIdentifier  @ 0x30ba3c
/* VestTableView::getIdentifier() */

undefined4 VestTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4808,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- VestTableView::tableCellAtIndex  @ 0x30ba80
/* VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
VestTableView::tableCellAtIndex(VestTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(param_2 * 0x10 + iVar3 + 0xefc));
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

// ---- VestTableView::tableCellAtIndex  @ 0x30bbcc
/* non-virtual thunk to VestTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
VestTableView::tableCellAtIndex(VestTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- VestTableView::tableCellSizeForIndex  @ 0x30bbd4
/* VestTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

VestTableView * __thiscall
VestTableView::tableCellSizeForIndex(VestTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- VestTableView::tableCellSizeForIndex  @ 0x30bc0c
/* non-virtual thunk to VestTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
VestTableView::tableCellSizeForIndex(VestTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- VestTableView::~VestTableView  @ 0x30bcec
/* WARNING: Removing unreachable block (ram,0x0030bd54) */
/* VestTableView::~VestTableView() */

VestTableView * __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090b7a0;
  *(undefined ***)(this + 0xe4) = &PTR__VestTableView_1_0090b9c4;
  *(undefined **)(this + 0xe8) = &DAT_0090b9f4;
  *(undefined **)(this + 0xec) = &DAT_0090ba00;
  *(undefined ***)(this + 0x198) = &PTR__VestTableView_1_0090ba10;
  *(undefined ***)(this + 0x1c8) = &PTR__VestTableView_1_0090ba28;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- VestTableView::~VestTableView  @ 0x30bd6c
/* non-virtual thunk to VestTableView::~VestTableView() */

void __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this + -0x1c8);
  return;
}

// ---- VestTableView::~VestTableView  @ 0x30bd74
/* non-virtual thunk to VestTableView::~VestTableView() */

void __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this + -0x198);
  return;
}

// ---- VestTableView::~VestTableView  @ 0x30bd7c
/* non-virtual thunk to VestTableView::~VestTableView() */

void __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this + -0xe4);
  return;
}

// ---- VestTableView::~VestTableView  @ 0x30bd84
/* VestTableView::~VestTableView() */

VestTableView * __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this);
  operator_delete(this);
  return this;
}

// ---- VestTableView::~VestTableView  @ 0x30bda0
/* non-virtual thunk to VestTableView::~VestTableView() */

void __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this + -0x1c8);
  return;
}

// ---- VestTableView::~VestTableView  @ 0x30bda8
/* non-virtual thunk to VestTableView::~VestTableView() */

void __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this + -0x198);
  return;
}

// ---- VestTableView::~VestTableView  @ 0x30bdb0
/* non-virtual thunk to VestTableView::~VestTableView() */

void __thiscall VestTableView::~VestTableView(VestTableView *this)

{
  ~VestTableView(this + -0xe4);
  return;
}
