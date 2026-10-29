// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- BodyTableView::BodyTableView  @ 0x2fac28
/* BodyTableView::BodyTableView() */

BodyTableView * __thiscall BodyTableView::BodyTableView(BodyTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090c4e8;
  *(undefined ***)(this + 0xe4) = &PTR__BodyTableView_1_0090c70c;
  *(undefined **)(this + 0xe8) = &DAT_0090c73c;
  *(undefined **)(this + 0xec) = &DAT_0090c748;
  *(undefined ***)(this + 0x198) = &PTR__BodyTableView_1_0090c758;
  *(undefined ***)(this + 0x1c8) = &PTR__BodyTableView_1_0090c770;
  return this;
}

// ---- BodyTableView::numberOfCellsInTableView  @ 0x30b020
/* BodyTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 BodyTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 2;
}

// ---- BodyTableView::numberOfCellsInTableView  @ 0x30b030
/* non-virtual thunk to BodyTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall BodyTableView::numberOfCellsInTableView(BodyTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- BodyTableView::getIdentifier  @ 0x30b038
/* BodyTableView::getIdentifier() */

undefined4 BodyTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47e4,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- BodyTableView::tableCellAtIndex  @ 0x30b07c
/* BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
BodyTableView::tableCellAtIndex(BodyTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(param_2 * 0x10 + iVar3 + 0xb7c));
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

// ---- BodyTableView::tableCellAtIndex  @ 0x30b1c8
/* non-virtual thunk to BodyTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
BodyTableView::tableCellAtIndex(BodyTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- BodyTableView::tableCellSizeForIndex  @ 0x30b1d0
/* BodyTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

BodyTableView * __thiscall
BodyTableView::tableCellSizeForIndex(BodyTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- BodyTableView::tableCellSizeForIndex  @ 0x30b208
/* non-virtual thunk to BodyTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BodyTableView::tableCellSizeForIndex(BodyTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c0e8
/* WARNING: Removing unreachable block (ram,0x0030c150) */
/* BodyTableView::~BodyTableView() */

BodyTableView * __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090c4e8;
  *(undefined ***)(this + 0xe4) = &PTR__BodyTableView_1_0090c70c;
  *(undefined **)(this + 0xe8) = &DAT_0090c73c;
  *(undefined **)(this + 0xec) = &DAT_0090c748;
  *(undefined ***)(this + 0x198) = &PTR__BodyTableView_1_0090c758;
  *(undefined ***)(this + 0x1c8) = &PTR__BodyTableView_1_0090c770;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c168
/* non-virtual thunk to BodyTableView::~BodyTableView() */

void __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this + -0x1c8);
  return;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c170
/* non-virtual thunk to BodyTableView::~BodyTableView() */

void __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this + -0x198);
  return;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c178
/* non-virtual thunk to BodyTableView::~BodyTableView() */

void __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this + -0xe4);
  return;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c180
/* BodyTableView::~BodyTableView() */

BodyTableView * __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this);
  operator_delete(this);
  return this;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c19c
/* non-virtual thunk to BodyTableView::~BodyTableView() */

void __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this + -0x1c8);
  return;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c1a4
/* non-virtual thunk to BodyTableView::~BodyTableView() */

void __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this + -0x198);
  return;
}

// ---- BodyTableView::~BodyTableView  @ 0x30c1ac
/* non-virtual thunk to BodyTableView::~BodyTableView() */

void __thiscall BodyTableView::~BodyTableView(BodyTableView *this)

{
  ~BodyTableView(this + -0xe4);
  return;
}
