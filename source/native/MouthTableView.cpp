// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- MouthTableView::MouthTableView  @ 0x2fa888
/* MouthTableView::MouthTableView() */

MouthTableView * __thiscall MouthTableView::MouthTableView(MouthTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090dcd0;
  *(undefined ***)(this + 0xe4) = &PTR__MouthTableView_1_0090def4;
  *(undefined **)(this + 0xe8) = &DAT_0090df24;
  *(undefined **)(this + 0xec) = &DAT_0090df30;
  *(undefined ***)(this + 0x198) = &PTR__MouthTableView_1_0090df40;
  *(undefined ***)(this + 0x1c8) = &PTR__MouthTableView_1_0090df58;
  return this;
}

// ---- MouthTableView::numberOfCellsInTableView  @ 0x30a030
/* MouthTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 MouthTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0x12;
}

// ---- MouthTableView::numberOfCellsInTableView  @ 0x30a040
/* non-virtual thunk to MouthTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)
    */

void __thiscall MouthTableView::numberOfCellsInTableView(MouthTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- MouthTableView::getIdentifier  @ 0x30a048
/* MouthTableView::getIdentifier() */

undefined4 MouthTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"Mouth",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- MouthTableView::tableCellAtIndex  @ 0x30a08c
/* MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
MouthTableView::tableCellAtIndex(MouthTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x36) * 0x10 + iVar3 + 4));
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

// ---- MouthTableView::tableCellAtIndex  @ 0x30a1ec
/* non-virtual thunk to MouthTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
MouthTableView::tableCellAtIndex(MouthTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- MouthTableView::tableCellSizeForIndex  @ 0x30a1f4
/* MouthTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

MouthTableView * __thiscall
MouthTableView::tableCellSizeForIndex(MouthTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- MouthTableView::tableCellSizeForIndex  @ 0x30a22c
/* non-virtual thunk to MouthTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
MouthTableView::tableCellSizeForIndex(MouthTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c814
/* WARNING: Removing unreachable block (ram,0x0030c87c) */
/* MouthTableView::~MouthTableView() */

MouthTableView * __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090dcd0;
  *(undefined ***)(this + 0xe4) = &PTR__MouthTableView_1_0090def4;
  *(undefined **)(this + 0xe8) = &DAT_0090df24;
  *(undefined **)(this + 0xec) = &DAT_0090df30;
  *(undefined ***)(this + 0x198) = &PTR__MouthTableView_1_0090df40;
  *(undefined ***)(this + 0x1c8) = &PTR__MouthTableView_1_0090df58;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c894
/* non-virtual thunk to MouthTableView::~MouthTableView() */

void __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this + -0x1c8);
  return;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c89c
/* non-virtual thunk to MouthTableView::~MouthTableView() */

void __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this + -0x198);
  return;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c8a4
/* non-virtual thunk to MouthTableView::~MouthTableView() */

void __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this + -0xe4);
  return;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c8ac
/* MouthTableView::~MouthTableView() */

MouthTableView * __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this);
  operator_delete(this);
  return this;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c8c8
/* non-virtual thunk to MouthTableView::~MouthTableView() */

void __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this + -0x1c8);
  return;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c8d0
/* non-virtual thunk to MouthTableView::~MouthTableView() */

void __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this + -0x198);
  return;
}

// ---- MouthTableView::~MouthTableView  @ 0x30c8d8
/* non-virtual thunk to MouthTableView::~MouthTableView() */

void __thiscall MouthTableView::~MouthTableView(MouthTableView *this)

{
  ~MouthTableView(this + -0xe4);
  return;
}
