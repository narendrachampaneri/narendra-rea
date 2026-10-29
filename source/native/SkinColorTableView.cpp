// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- SkinColorTableView::SkinColorTableView  @ 0x2fa6b8
/* SkinColorTableView::SkinColorTableView() */

SkinColorTableView * __thiscall SkinColorTableView::SkinColorTableView(SkinColorTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090e770;
  *(undefined ***)(this + 0xe4) = &PTR__SkinColorTableView_1_0090e994;
  *(undefined **)(this + 0xe8) = &DAT_0090e9c4;
  *(undefined **)(this + 0xec) = &DAT_0090e9d0;
  *(undefined ***)(this + 0x198) = &PTR__SkinColorTableView_1_0090e9e0;
  *(undefined ***)(this + 0x1c8) = &PTR__SkinColorTableView_1_0090e9f8;
  return this;
}

// ---- SkinColorTableView::numberOfCellsInTableView  @ 0x309678
/* SkinColorTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 SkinColorTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 4;
}

// ---- SkinColorTableView::numberOfCellsInTableView  @ 0x309688
/* non-virtual thunk to
   SkinColorTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall
SkinColorTableView::numberOfCellsInTableView(SkinColorTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- SkinColorTableView::getIdentifier  @ 0x309690
/* SkinColorTableView::getIdentifier() */

undefined4 SkinColorTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"SkinColor",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- SkinColorTableView::tableCellAtIndex  @ 0x3096d4
/* SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
SkinColorTableView::tableCellAtIndex(SkinColorTableView *this,CCTableView *param_1,uint param_2)

{
  bool bVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  code *pcVar6;
  undefined8 uVar7;
  CCTableViewCell *local_24;
  undefined1 local_18 [8];
  CCPoint aCStack_10 [8];
  
  local_24 = (CCTableViewCell *)cocos2d::extension::CCTableView::dequeueCell(param_1);
  if ((local_24 == (CCTableViewCell *)0x0) ||
     (uVar2 = cocos2d::extension::CCTableViewCell::getIdx(local_24), uVar2 != param_2)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    local_24 = operator_new(0xec);
    cocos2d::extension::CCTableViewCell::CCTableViewCell(local_24);
    cocos2d::CCObject::autorelease((CCObject *)local_24);
    uVar7 = (**(code **)(*(int *)this + 0x218))(local_18,this,param_1,param_2);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    piVar3 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("colorSelection.png");
    pcVar6 = *(code **)(*piVar3 + 0x1bc);
    iVar4 = AvatarRenderer::sharedAvatarRenderer();
    (*pcVar6)(piVar3,param_2 * 3 + iVar4 + 0x90f);
    (**(code **)(*piVar3 + 0x4c))(piVar3,aCStack_10);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_10);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3eb33333);
    (**(code **)(*(int *)local_24 + 200))(local_24,piVar5);
    (**(code **)(*(int *)local_24 + 200))(local_24,piVar3);
  }
  return local_24;
}

// ---- SkinColorTableView::tableCellAtIndex  @ 0x309810
/* non-virtual thunk to SkinColorTableView::tableCellAtIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
SkinColorTableView::tableCellAtIndex(SkinColorTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- SkinColorTableView::tableCellSizeForIndex  @ 0x309818
/* SkinColorTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

SkinColorTableView * __thiscall
SkinColorTableView::tableCellSizeForIndex
          (SkinColorTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- SkinColorTableView::tableCellSizeForIndex  @ 0x309850
/* non-virtual thunk to SkinColorTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
SkinColorTableView::tableCellSizeForIndex
          (SkinColorTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cb44
/* WARNING: Removing unreachable block (ram,0x0030cbac) */
/* SkinColorTableView::~SkinColorTableView() */

SkinColorTableView * __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090e770;
  *(undefined ***)(this + 0xe4) = &PTR__SkinColorTableView_1_0090e994;
  *(undefined **)(this + 0xe8) = &DAT_0090e9c4;
  *(undefined **)(this + 0xec) = &DAT_0090e9d0;
  *(undefined ***)(this + 0x198) = &PTR__SkinColorTableView_1_0090e9e0;
  *(undefined ***)(this + 0x1c8) = &PTR__SkinColorTableView_1_0090e9f8;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cbc4
/* non-virtual thunk to SkinColorTableView::~SkinColorTableView() */

void __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this + -0x1c8);
  return;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cbcc
/* non-virtual thunk to SkinColorTableView::~SkinColorTableView() */

void __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this + -0x198);
  return;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cbd4
/* non-virtual thunk to SkinColorTableView::~SkinColorTableView() */

void __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this + -0xe4);
  return;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cbdc
/* SkinColorTableView::~SkinColorTableView() */

SkinColorTableView * __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this);
  operator_delete(this);
  return this;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cbf8
/* non-virtual thunk to SkinColorTableView::~SkinColorTableView() */

void __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this + -0x1c8);
  return;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cc00
/* non-virtual thunk to SkinColorTableView::~SkinColorTableView() */

void __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this + -0x198);
  return;
}

// ---- SkinColorTableView::~SkinColorTableView  @ 0x30cc08
/* non-virtual thunk to SkinColorTableView::~SkinColorTableView() */

void __thiscall SkinColorTableView::~SkinColorTableView(SkinColorTableView *this)

{
  ~SkinColorTableView(this + -0xe4);
  return;
}
