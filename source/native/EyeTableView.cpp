// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- EyeTableView::EyeTableView  @ 0x2fa814
/* EyeTableView::EyeTableView() */

EyeTableView * __thiscall EyeTableView::EyeTableView(EyeTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090e220;
  *(undefined ***)(this + 0xe4) = &PTR__EyeTableView_1_0090e444;
  *(undefined **)(this + 0xe8) = &DAT_0090e474;
  *(undefined **)(this + 0xec) = &DAT_0090e480;
  *(undefined ***)(this + 0x198) = &PTR__EyeTableView_1_0090e490;
  *(undefined ***)(this + 0x1c8) = &PTR__EyeTableView_1_0090e4a8;
  return this;
}

// ---- EyeTableView::numberOfCellsInTableView  @ 0x309c28
/* EyeTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 EyeTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 0x11;
}

// ---- EyeTableView::numberOfCellsInTableView  @ 0x309c38
/* non-virtual thunk to EyeTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall EyeTableView::numberOfCellsInTableView(EyeTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- EyeTableView::getIdentifier  @ 0x309c40
/* EyeTableView::getIdentifier() */

undefined4 EyeTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4790,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- EyeTableView::tableCellAtIndex  @ 0x309c84
/* EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
EyeTableView::tableCellAtIndex(EyeTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x11) * 0x10 + iVar3 + 4));
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

// ---- EyeTableView::tableCellAtIndex  @ 0x309de4
/* non-virtual thunk to EyeTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall EyeTableView::tableCellAtIndex(EyeTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- EyeTableView::tableCellSizeForIndex  @ 0x309dec
/* EyeTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

EyeTableView * __thiscall
EyeTableView::tableCellSizeForIndex(EyeTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- EyeTableView::tableCellSizeForIndex  @ 0x309e24
/* non-virtual thunk to EyeTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
EyeTableView::tableCellSizeForIndex(EyeTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- EyeTableView::~EyeTableView  @ 0x30c9ac
/* WARNING: Removing unreachable block (ram,0x0030ca14) */
/* EyeTableView::~EyeTableView() */

EyeTableView * __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090e220;
  *(undefined ***)(this + 0xe4) = &PTR__EyeTableView_1_0090e444;
  *(undefined **)(this + 0xe8) = &DAT_0090e474;
  *(undefined **)(this + 0xec) = &DAT_0090e480;
  *(undefined ***)(this + 0x198) = &PTR__EyeTableView_1_0090e490;
  *(undefined ***)(this + 0x1c8) = &PTR__EyeTableView_1_0090e4a8;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca2c
/* non-virtual thunk to EyeTableView::~EyeTableView() */

void __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this + -0x1c8);
  return;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca34
/* non-virtual thunk to EyeTableView::~EyeTableView() */

void __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this + -0x198);
  return;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca3c
/* non-virtual thunk to EyeTableView::~EyeTableView() */

void __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this + -0xe4);
  return;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca44
/* EyeTableView::~EyeTableView() */

EyeTableView * __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this);
  operator_delete(this);
  return this;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca60
/* non-virtual thunk to EyeTableView::~EyeTableView() */

void __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this + -0x1c8);
  return;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca68
/* non-virtual thunk to EyeTableView::~EyeTableView() */

void __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this + -0x198);
  return;
}

// ---- EyeTableView::~EyeTableView  @ 0x30ca70
/* non-virtual thunk to EyeTableView::~EyeTableView() */

void __thiscall EyeTableView::~EyeTableView(EyeTableView *this)

{
  ~EyeTableView(this + -0xe4);
  return;
}
