// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- EyeWareTableView::EyeWareTableView  @ 0x2fab40
/* EyeWareTableView::EyeWareTableView() */

EyeWareTableView * __thiscall EyeWareTableView::EyeWareTableView(EyeWareTableView *this)

{
  MenuTableView::MenuTableView((MenuTableView *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090ca38;
  *(undefined ***)(this + 0xe4) = &PTR__EyeWareTableView_1_0090cc5c;
  *(undefined **)(this + 0xe8) = &DAT_0090cc8c;
  *(undefined **)(this + 0xec) = &DAT_0090cc98;
  *(undefined ***)(this + 0x198) = &PTR__EyeWareTableView_1_0090cca8;
  *(undefined ***)(this + 0x1c8) = &PTR__EyeWareTableView_1_0090ccc0;
  return this;
}

// ---- EyeWareTableView::numberOfCellsInTableView  @ 0x30abe4
/* EyeWareTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

undefined4 EyeWareTableView::numberOfCellsInTableView(CCTableView *param_1)

{
  return 6;
}

// ---- EyeWareTableView::numberOfCellsInTableView  @ 0x30abf4
/* non-virtual thunk to EyeWareTableView::numberOfCellsInTableView(cocos2d::extension::CCTableView*)
    */

void __thiscall
EyeWareTableView::numberOfCellsInTableView(EyeWareTableView *this,CCTableView *param_1)

{
  numberOfCellsInTableView((CCTableView *)(this + -0x1c8));
  return;
}

// ---- EyeWareTableView::getIdentifier  @ 0x30abfc
/* EyeWareTableView::getIdentifier() */

undefined4 EyeWareTableView::getIdentifier(void)

{
  undefined4 in_r0;
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"EyeWare",auStack_c);
  FUN_0079a3fc(auStack_c);
  return in_r0;
}

// ---- EyeWareTableView::tableCellAtIndex  @ 0x30ac40
/* EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCTableViewCell * __thiscall
EyeWareTableView::tableCellAtIndex(EyeWareTableView *this,CCTableView *param_1,uint param_2)

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
    cocos2d::CCRect::CCRect(aCStack_18,(CCRect *)((param_2 + 0x81) * 0x10 + iVar3 + 4));
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

// ---- EyeWareTableView::tableCellAtIndex  @ 0x30ad8c
/* non-virtual thunk to EyeWareTableView::tableCellAtIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
EyeWareTableView::tableCellAtIndex(EyeWareTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellAtIndex(this + -0x1c8,param_1,param_2);
  return;
}

// ---- EyeWareTableView::tableCellSizeForIndex  @ 0x30ad94
/* EyeWareTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

EyeWareTableView * __thiscall
EyeWareTableView::tableCellSizeForIndex(EyeWareTableView *this,CCTableView *param_1,uint param_2)

{
  undefined8 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_2 + 0x8c))(param_2);
  cocos2d::CCSize::CCSize((CCSize *)this,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  return this;
}

// ---- EyeWareTableView::tableCellSizeForIndex  @ 0x30adcc
/* non-virtual thunk to EyeWareTableView::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
EyeWareTableView::tableCellSizeForIndex(EyeWareTableView *this,CCTableView *param_1,uint param_2)

{
  tableCellSizeForIndex(this,param_1 + -0x1c8,param_2);
  return;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c280
/* WARNING: Removing unreachable block (ram,0x0030c2e8) */
/* EyeWareTableView::~EyeWareTableView() */

EyeWareTableView * __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0090ca38;
  *(undefined ***)(this + 0xe4) = &PTR__EyeWareTableView_1_0090cc5c;
  *(undefined **)(this + 0xe8) = &DAT_0090cc8c;
  *(undefined **)(this + 0xec) = &DAT_0090cc98;
  *(undefined ***)(this + 0x198) = &PTR__EyeWareTableView_1_0090cca8;
  *(undefined ***)(this + 0x1c8) = &PTR__EyeWareTableView_1_0090ccc0;
  MenuTableView::~MenuTableView((MenuTableView *)this);
  return this;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c300
/* non-virtual thunk to EyeWareTableView::~EyeWareTableView() */

void __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this + -0x1c8);
  return;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c308
/* non-virtual thunk to EyeWareTableView::~EyeWareTableView() */

void __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this + -0x198);
  return;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c310
/* non-virtual thunk to EyeWareTableView::~EyeWareTableView() */

void __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this + -0xe4);
  return;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c318
/* EyeWareTableView::~EyeWareTableView() */

EyeWareTableView * __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this);
  operator_delete(this);
  return this;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c334
/* non-virtual thunk to EyeWareTableView::~EyeWareTableView() */

void __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this + -0x1c8);
  return;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c33c
/* non-virtual thunk to EyeWareTableView::~EyeWareTableView() */

void __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this + -0x198);
  return;
}

// ---- EyeWareTableView::~EyeWareTableView  @ 0x30c344
/* non-virtual thunk to EyeWareTableView::~EyeWareTableView() */

void __thiscall EyeWareTableView::~EyeWareTableView(EyeWareTableView *this)

{
  ~EyeWareTableView(this + -0xe4);
  return;
}
