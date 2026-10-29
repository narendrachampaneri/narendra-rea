// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- HandTableView::HandTableView  @ 0x2fadf8
/* HandTableView::HandTableView() */

HandTableView * __thiscall HandTableView::HandTableView(HandTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090ba48;
  *(undefined ***)(this + 0xe4) = &PTR__HandTableView_1_0090bc6c;
  *(undefined **)(this + 0xe8) = &DAT_0090bc9c;
  *(undefined **)(this + 0xec) = &DAT_0090bca8;
  *(undefined ***)(this + 0x198) = &PTR__HandTableView_1_0090bcb8;
  *(undefined ***)(this + 0x1c8) = &PTR__HandTableView_1_0090bcd0;
  return this;
}

// ---- HandTableView::numberOfCellsInTableView  @ 0x30b800
/* HandTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 HandTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 5;
}

// ---- HandTableView::numberOfCellsInTableView  @ 0x30b810
/* non-virtual thunk to HandTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall HandTableView::numberOfCellsInTableView(HandTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- HandTableView::getIdentifier  @ 0x30b818
/* HandTableView::getIdentifier() */

undefined4 HandTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,&DAT_007d4800,auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- HandTableView::tableCellAtIndex  @ 0x30b85c
/* HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
HandTableView::tableCellAtIndex(HandTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)(iVar3 + 0xe8c));
    piVar4 = (int *)cocos2d::CCSprite::create("partsTexture.png",aCStack_18);
    this_00 = (CCTexture2D *)(**(code **)(*piVar4 + 500))(piVar4);
    cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
    (**(code **)(*piVar4 + 0x4c))(piVar4,aCStack_20);
    pcVar6 = *(code **)(*piVar4 + 0x1bc);
    iVar3 = AvatarRenderer::sharedAvatarRenderer();
    (*pcVar6)(piVar4,param_2 * 3 + iVar3 + 0xedc);
    if (param_2 == 0) {
      (**(code **)(*piVar4 + 0x90))(piVar4,0);
    }
    piVar5 = (int *)cocos2d::CCSprite::createWithSpriteFrameName("itemBackground.png");
    (**(code **)(*piVar5 + 0x4c))(piVar5,aCStack_20);
    (**(code **)(*piVar5 + 0x40))(piVar5,0x3ee66666);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar5);
    (**(code **)(*(int *)local_34 + 200))(local_34,piVar4);
  }
  return local_34;
}

// ---- HandTableView::tableCellAtIndex  @ 0x30b9dc
/* non-virtual thunk to HandTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned
   int) */

void __thiscall
HandTableView::tableCellAtIndex(HandTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- HandTableView::tableCellSizeForIndex  @ 0x30b9e4
/* HandTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

HandTableView * __thiscall
HandTableView::tableCellSizeForIndex(HandTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- HandTableView::tableCellSizeForIndex  @ 0x30ba1c
/* non-virtual thunk to HandTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
HandTableView::tableCellSizeForIndex(HandTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- HandTableView::~HandTableView  @ 0x30bdb8
/* WARNING: Removing unreachable block (ram,0x0030be20) */
/* HandTableView::~HandTableView() */

HandTableView * __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090ba48;
  *(undefined ***)(this + 0xe4) = &PTR__HandTableView_1_0090bc6c;
  *(undefined **)(this + 0xe8) = &DAT_0090bc9c;
  *(undefined **)(this + 0xec) = &DAT_0090bca8;
  *(undefined ***)(this + 0x198) = &PTR__HandTableView_1_0090bcb8;
  *(undefined ***)(this + 0x1c8) = &PTR__HandTableView_1_0090bcd0;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- HandTableView::~HandTableView  @ 0x30be38
/* non-virtual thunk to HandTableView::~HandTableView() */

void __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this + -0x1c8);
  return;
}

// ---- HandTableView::~HandTableView  @ 0x30be40
/* non-virtual thunk to HandTableView::~HandTableView() */

void __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this + -0x198);
  return;
}

// ---- HandTableView::~HandTableView  @ 0x30be48
/* non-virtual thunk to HandTableView::~HandTableView() */

void __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this + -0xe4);
  return;
}

// ---- HandTableView::~HandTableView  @ 0x30be50
/* HandTableView::~HandTableView() */

HandTableView * __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this);
  operator_delete(this);
  return this;
}

// ---- HandTableView::~HandTableView  @ 0x30be6c
/* non-virtual thunk to HandTableView::~HandTableView() */

void __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this + -0x1c8);
  return;
}

// ---- HandTableView::~HandTableView  @ 0x30be74
/* non-virtual thunk to HandTableView::~HandTableView() */

void __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this + -0x198);
  return;
}

// ---- HandTableView::~HandTableView  @ 0x30be7c
/* non-virtual thunk to HandTableView::~HandTableView() */

void __thiscall HandTableView::~HandTableView(HandTableView *this)

{
  ~HandTableView(this + -0xe4);
  return;
}
