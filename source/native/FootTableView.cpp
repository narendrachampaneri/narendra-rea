// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- FootTableView::FootTableView  @ 0x2fad84
/* FootTableView::FootTableView() */

FootTableView * __thiscall FootTableView::FootTableView(FootTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090bcf0;
  *(undefined ***)(this + 0xe4) = &PTR__FootTableView_1_0090bf14;
  *(undefined **)(this + 0xe8) = &DAT_0090bf44;
  *(undefined **)(this + 0xec) = &DAT_0090bf50;
  *(undefined ***)(this + 0x198) = &PTR__FootTableView_1_0090bf60;
  *(undefined ***)(this + 0x1c8) = &PTR__FootTableView_1_0090bf78;
  return this;
}

// ---- FootTableView::numberOfCellsInTableView  @ 0x30b5f0
/* FootTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 FootTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 5;
}

// ---- FootTableView::numberOfCellsInTableView  @ 0x30b600
/* non-virtual thunk to FootTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall FootTableView::numberOfCellsInTableView(FootTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- FootTableView::getIdentifier  @ 0x30b608
/* FootTableView::getIdentifier() */

undefined4 FootTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d47f8,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- FootTableView::tableCellAtIndex  @ 0x30b64c
/* FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
FootTableView::tableCellAtIndex(FootTableView *this,CCTableView *param_1,uint param_2)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  CCTexture2D *this_00;
  int *piVar5;
  code *pcVar6;
  undefined8 uVar7;
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
    uVar7 = (**(code **)(*(int *)this + 0x218))(local_28,this,param_1,param_2);
    cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    iVar3 = AvatarRenderer::sharedAvatarRenderer();
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(iVar3 + 0xebc));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    pcVar6 = *(code **)(*piVar4 + 0x1bc);
    iVar3 = AvatarRenderer::sharedAvatarRenderer();
    (*pcVar6)(piVar4,param_2 * 3 + iVar3 + 0xedc);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3ee66666);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- FootTableView::tableCellAtIndex  @ 0x30b7b8
/* non-virtual thunk to FootTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
FootTableView::tableCellAtIndex(FootTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- FootTableView::tableCellSizeForIndex  @ 0x30b7c0
/* FootTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

FootTableView * __thiscall
FootTableView::tableCellSizeForIndex(FootTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- FootTableView::tableCellSizeForIndex  @ 0x30b7f8
/* non-virtual thunk to FootTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
FootTableView::tableCellSizeForIndex(FootTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- FootTableView::~FootTableView  @ 0x30be84
/* WARNING: Removing unreachable block (ram,0x0030beec) */
/* FootTableView::~FootTableView() */

FootTableView * __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090bcf0;
  *(undefined ***)(this + 0xe4) = &PTR__FootTableView_1_0090bf14;
  *(undefined **)(this + 0xe8) = &DAT_0090bf44;
  *(undefined **)(this + 0xec) = &DAT_0090bf50;
  *(undefined ***)(this + 0x198) = &PTR__FootTableView_1_0090bf60;
  *(undefined ***)(this + 0x1c8) = &PTR__FootTableView_1_0090bf78;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- FootTableView::~FootTableView  @ 0x30bf04
/* non-virtual thunk to FootTableView::~FootTableView() */

void __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this + -0x1c8);
  return;
}

// ---- FootTableView::~FootTableView  @ 0x30bf0c
/* non-virtual thunk to FootTableView::~FootTableView() */

void __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this + -0x198);
  return;
}

// ---- FootTableView::~FootTableView  @ 0x30bf14
/* non-virtual thunk to FootTableView::~FootTableView() */

void __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this + -0xe4);
  return;
}

// ---- FootTableView::~FootTableView  @ 0x30bf1c
/* FootTableView::~FootTableView() */

FootTableView * __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this);
  operator_delete(this);
  return this;
}

// ---- FootTableView::~FootTableView  @ 0x30bf38
/* non-virtual thunk to FootTableView::~FootTableView() */

void __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this + -0x1c8);
  return;
}

// ---- FootTableView::~FootTableView  @ 0x30bf40
/* non-virtual thunk to FootTableView::~FootTableView() */

void __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this + -0x198);
  return;
}

// ---- FootTableView::~FootTableView  @ 0x30bf48
/* non-virtual thunk to FootTableView::~FootTableView() */

void __thiscall FootTableView::~FootTableView(FootTableView *this)

{
  ~FootTableView(this + -0xe4);
  return;
}
