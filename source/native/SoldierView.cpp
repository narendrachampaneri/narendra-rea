// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 50 functions

// ---- SoldierView::create  @ 0x2fa2bc
/* SoldierView::create() */

SoldierView * SoldierView::create(void)

{
  bool bVar1;
  SoldierView *this;
  int iVar2;
  
  this = operator_new(0x1e8);
  SoldierView(this);
  if ((this == (SoldierView *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)
     ) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (SoldierView *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SoldierView *)0x0;
  }
  return this;
}

// ---- SoldierView::getBlood  @ 0x323cdc
/* SoldierView::getBlood() */

SoldierView __thiscall SoldierView::getBlood(SoldierView *this)

{
  return this[0x1e2];
}

// ---- SoldierView::setBlood  @ 0x355b24
/* SoldierView::setBlood(bool) */

void __thiscall SoldierView::setBlood(SoldierView *this,bool param_1)

{
  this[0x1e2] = (SoldierView)param_1;
  return;
}

// ---- SoldierView::setHasWeapon  @ 0x3eeb5c
/* SoldierView::setHasWeapon(bool) */

void __thiscall SoldierView::setHasWeapon(SoldierView *this,bool param_1)

{
  this[0x1e3] = (SoldierView)param_1;
  return;
}

// ---- SoldierView::SoldierView  @ 0x401ae4
/* SoldierView::SoldierView() */

SoldierView * __thiscall SoldierView::SoldierView(SoldierView *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091bc10;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x128));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x130));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x138));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x140));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x148));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x150));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x158));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x160));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x168));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x170));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x178));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x180));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x188));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 400));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x198));
  FUN_007c51b0(this + 0x1e4);
  return this;
}

// ---- SoldierView::init  @ 0x401be0
/* SoldierView::init() */

undefined4 __thiscall SoldierView::init(SoldierView *this)

{
  char cVar1;
  char *pcVar2;
  undefined4 uVar3;
  float fVar4;
  code *pcVar5;
  float extraout_s0;
  undefined8 uVar6;
  CCPoint aCStack_18 [8];
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    this[0x1e2] = (SoldierView)0x0;
    this[0x1e3] = (SoldierView)0x0;
    uVar3 = Boostie::create();
    *(undefined4 *)(this + 0xe8) = uVar3;
    uVar3 = Boostie::create();
    *(undefined4 *)(this + 0xec) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x124) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x124));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x10c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x108) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x114) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x118) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x110) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x11c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    uVar3 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x120) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x120));
    uVar3 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)qHeads);
    *(undefined4 *)(this + 0xf0) = uVar3;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    pcVar5 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar3,aCStack_18);
    uVar3 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)qBodies);
    *(undefined4 *)(this + 0xf4) = uVar3;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    pcVar5 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar3,aCStack_18);
    uVar3 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)qArms);
    *(undefined4 *)(this + 0xf8) = uVar3;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    pcVar5 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar3,aCStack_18);
    uVar3 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)qArms);
    *(undefined4 *)(this + 0xfc) = uVar3;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    pcVar5 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar3,aCStack_18);
    uVar3 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)qLegs);
    *(undefined4 *)(this + 0x100) = uVar3;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    pcVar5 = *(code **)(**(int **)(this + 0x100) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar3,aCStack_18);
    uVar3 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)qLegs);
    *(undefined4 *)(this + 0x104) = uVar3;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
    pcVar5 = *(code **)(**(int **)(this + 0x104) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x104);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar5)(uVar3,aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x138),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x168),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x170),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x140),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x148),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x150),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x158),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x160),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x128),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x130),aCStack_18);
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x178),(CCPoint *)(this + 0x168));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x180),(CCPoint *)(this + 0x170));
    (**(code **)(**(int **)(this + 0x120) + 0x4c))(*(undefined4 *)(this + 0x120),this + 0x178);
    (**(code **)(**(int **)(this + 0x11c) + 0x4c))(*(undefined4 *)(this + 0x11c),this + 0x180);
    (**(code **)(**(int **)(this + 0x114) + 0x4c))(*(undefined4 *)(this + 0x114),this + 0x160);
    (**(code **)(**(int **)(this + 0x118) + 0x4c))(*(undefined4 *)(this + 0x118),this + 0x160);
    (**(code **)(**(int **)(this + 0x110) + 0x4c))(*(undefined4 *)(this + 0x110),this + 0x158);
    (**(code **)(**(int **)(this + 0x108) + 0x4c))(*(undefined4 *)(this + 0x108),this + 0x128);
    (**(code **)(**(int **)(this + 0x10c) + 0x4c))(*(undefined4 *)(this + 0x10c),this + 0x130);
    (**(code **)(**(int **)(this + 0x114) + 0xcc))
              (*(undefined4 *)(this + 0x114),*(undefined4 *)(this + 0xf8),1);
    (**(code **)(**(int **)(this + 0x110) + 0xcc))
              (*(undefined4 *)(this + 0x110),*(undefined4 *)(this + 0xfc),1);
    (**(code **)(**(int **)(this + 0x10c) + 200))
              (*(undefined4 *)(this + 0x10c),*(undefined4 *)(this + 0xe8));
    (**(code **)(**(int **)(this + 0x108) + 200))
              (*(undefined4 *)(this + 0x108),*(undefined4 *)(this + 0xec));
    (**(code **)(**(int **)(this + 0x10c) + 200))
              (*(undefined4 *)(this + 0x10c),*(undefined4 *)(this + 0x100));
    (**(code **)(**(int **)(this + 0x108) + 200))
              (*(undefined4 *)(this + 0x108),*(undefined4 *)(this + 0x104));
    (**(code **)(**(int **)(this + 0x11c) + 0xcc))
              (*(undefined4 *)(this + 0x11c),*(undefined4 *)(this + 0xf4),2);
    (**(code **)(**(int **)(this + 0x120) + 200))
              (*(undefined4 *)(this + 0x120),*(undefined4 *)(this + 0xf0));
    (**(code **)(**(int **)(this + 0x124) + 0xcc))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x114),0);
    (**(code **)(**(int **)(this + 0x11c) + 0xcc))
              (*(undefined4 *)(this + 0x11c),*(undefined4 *)(this + 0x10c),1);
    (**(code **)(**(int **)(this + 0x11c) + 0xcc))
              (*(undefined4 *)(this + 0x11c),*(undefined4 *)(this + 0x108),1);
    (**(code **)(**(int **)(this + 0x124) + 0xcc))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x11c),3);
    (**(code **)(**(int **)(this + 0x124) + 0xcc))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x120),4);
    (**(code **)(**(int **)(this + 0x124) + 0xcc))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x118),4);
    (**(code **)(**(int **)(this + 0x124) + 0xcc))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x110),5);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x124));
    FUN_007c5e70(this + 0x1e4,&DAT_007e8c40);
    pcVar2 = (char *)FUN_007c5300(this + 0x1e4);
    uVar3 = cocos2d::CCLabelTTF::create(pcVar2,"Arial-BoldMT",extraout_s0);
    *(undefined4 *)(this + 0xe4) = uVar3;
    uVar6 = (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f800000);
    pcVar5 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar3,aCStack_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),5);
    fVar4 = playerScale;
    if (playerScale == 0.0) {
      fVar4 = 1.0;
    }
    *(float *)(this + 0x1d0) = fVar4;
    (**(code **)(**(int **)(this + 0x124) + 0x40))
              (*(undefined4 *)(this + 0x124),*(undefined4 *)(this + 0x1d0));
    uVar6 = (**(code **)(**(int **)(this + 0xe4) + 0x40))
                      (*(undefined4 *)(this + 0xe4),*(undefined4 *)(this + 0x1d0));
    pcVar5 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar5)(uVar3,aCStack_18);
    *(undefined4 *)(this + 0x1a8) = 0;
    *(undefined4 *)(this + 0x1ac) = 0;
    *(undefined4 *)(this + 0x1b0) = 0;
    *(undefined4 *)(this + 0x1b4) = 0;
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x188),aCStack_18);
    *(undefined4 *)(this + 0x1a0) = 0;
    *(undefined4 *)(this + 0x1b8) = 0;
    *(undefined4 *)(this + 0x1c4) = 0;
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 400),aCStack_18);
    *(undefined4 *)(this + 0x1a4) = 0;
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x198),aCStack_18);
    this[0x1cd] = (SoldierView)0x0;
    this[0x1d4] = (SoldierView)0x0;
    *(undefined4 *)(this + 0x1d8) = 0;
    *(undefined4 *)(this + 0x1bc) = 0;
    this[0x1d5] = (SoldierView)0x0;
    *(undefined4 *)(this + 0x1c0) = 0;
    this[0x1e2] = (SoldierView)0x1;
    *(undefined4 *)(this + 0x1dc) = 0;
    this[0x1e0] = (SoldierView)0x1;
    this[0x1e1] = (SoldierView)0x0;
    *(undefined4 *)(this + 0x1c8) = 0;
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- SoldierView::~SoldierView  @ 0x402600
/* WARNING: Removing unreachable block (ram,0x004027ae) */
/* SoldierView::~SoldierView() */

SoldierView * __thiscall SoldierView::~SoldierView(SoldierView *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091bc10;
  (**(code **)(**(int **)(this + 0x110) + 0x104))(*(undefined4 *)(this + 0x110),1);
  (**(code **)(**(int **)(this + 0x114) + 0x104))(*(undefined4 *)(this + 0x114),1);
  (**(code **)(**(int **)(this + 0x118) + 0x104))(*(undefined4 *)(this + 0x118),1);
  (**(code **)(**(int **)(this + 0x108) + 0x104))(*(undefined4 *)(this + 0x108),1);
  (**(code **)(**(int **)(this + 0x10c) + 0x104))(*(undefined4 *)(this + 0x10c),1);
  (**(code **)(**(int **)(this + 0x11c) + 0x104))(*(undefined4 *)(this + 0x11c),1);
  (**(code **)(**(int **)(this + 0x124) + 0x104))(*(undefined4 *)(this + 0x124),1);
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  FUN_007c5914(this + 0x1e4);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- SoldierView::~SoldierView  @ 0x4027c8
/* SoldierView::~SoldierView() */

SoldierView * __thiscall SoldierView::~SoldierView(SoldierView *this)

{
  ~SoldierView(this);
  operator_delete(this);
  return this;
}

// ---- SoldierView::updateVisible  @ 0x4027e4
/* SoldierView::updateVisible(bool) */

void __thiscall SoldierView::updateVisible(SoldierView *this,bool param_1)

{
  (**(code **)(*(int *)this + 0x90))(this,param_1);
  (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),param_1);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),param_1);
  return;
}

// ---- SoldierView::setOpacity  @ 0x402844
/* SoldierView::setOpacity(int) */

void __thiscall SoldierView::setOpacity(SoldierView *this,int param_1)

{
  (**(code **)(**(int **)(this + 0xf0) + 0x1a4))(*(undefined4 *)(this + 0xf0),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xf4) + 0x1a4))(*(undefined4 *)(this + 0xf4),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xf8) + 0x1a4))(*(undefined4 *)(this + 0xf8),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0xfc) + 0x1a4))(*(undefined4 *)(this + 0xfc),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0x100) + 0x1a4))(*(undefined4 *)(this + 0x100),param_1 & 0xff);
  (**(code **)(**(int **)(this + 0x104) + 0x1a4))(*(undefined4 *)(this + 0x104),param_1 & 0xff);
  return;
}

// ---- SoldierView::updateBody  @ 0x402908
/* SoldierView::updateBody(cocos2d::CCPoint, cocos2d::CCPoint, float, float, cocos2d::CCPoint,
   float, bool) */

void __thiscall
SoldierView::updateBody
          (SoldierView *this,undefined4 param_2,CCPoint *param_3,undefined4 param_4,
          undefined4 param_5,CCPoint *param_6,undefined4 param_7,SoldierView param_8)

{
  (**(code **)(*(int *)this + 0x4c))(this,param_2);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 400),param_3);
  *(undefined4 *)(this + 0x1a0) = param_4;
  (**(code **)(**(int **)(this + 0x124) + 0x98))
            (*(undefined4 *)(this + 0x124),-*(float *)(this + 0x1a0) * 57.29578);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x198),param_6);
  *(undefined4 *)(this + 0x1b8) = param_5;
  *(undefined4 *)(this + 0x1a4) = param_7;
  this[0x1cd] = param_8;
  return;
}

// ---- SoldierView::setNormalArmRotation  @ 0x402998
/* SoldierView::setNormalArmRotation() */

void __thiscall SoldierView::setNormalArmRotation(SoldierView *this)

{
  float fVar1;
  float fVar2;
  
  fVar2 = *(float *)(this + 0x1b8);
  fVar1 = (float)(**(code **)(**(int **)(this + 0x124) + 0x9c))(*(undefined4 *)(this + 0x124));
  if (this[0x1cc] == (SoldierView)0x1) {
    (**(code **)(**(int **)(this + 0x110) + 0x98))
              (*(undefined4 *)(this + 0x110),(fVar2 - fVar1) - *(float *)(this + 0x1c0));
  }
  else {
    (**(code **)(**(int **)(this + 0x110) + 0x98))
              (*(undefined4 *)(this + 0x110),(-(fVar2 - fVar1) - 180.0) - *(float *)(this + 0x1c0));
  }
  return;
}

// ---- SoldierView::setRecoilArmRotation  @ 0x402a60
/* SoldierView::setRecoilArmRotation() */

void __thiscall SoldierView::setRecoilArmRotation(SoldierView *this)

{
  float fVar1;
  float fVar2;
  
  fVar2 = *(float *)(this + 0x1b8);
  fVar1 = (float)(**(code **)(**(int **)(this + 0x124) + 0x9c))(*(undefined4 *)(this + 0x124));
  if (this[0x1cc] == (SoldierView)0x1) {
    (**(code **)(**(int **)(this + 0x110) + 0x98))
              (*(undefined4 *)(this + 0x110),
               ((((fVar2 - fVar1) - *(float *)(this + 0x1a8)) - *(float *)(this + 0x1b0)) -
               *(float *)(this + 0x1bc)) - *(float *)(this + 0x1c0));
  }
  else {
    (**(code **)(**(int **)(this + 0x110) + 0x98))
              (*(undefined4 *)(this + 0x110),
               ((((-(fVar2 - fVar1) - 180.0) - *(float *)(this + 0x1a8)) - *(float *)(this + 0x1b0))
               - *(float *)(this + 0x1bc)) - *(float *)(this + 0x1c0));
  }
  return;
}

// ---- SoldierView::setVelocity  @ 0x403c50
/* SoldierView::setVelocity(cpVect) */

void SoldierView::setVelocity(float param_1,float param_2,int param_3)

{
  CCPoint aCStack_18 [8];
  
  cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
  cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 400),aCStack_18);
  return;
}

// ---- SoldierView::setRotationAngle  @ 0x403c98
/* SoldierView::setRotationAngle(float) */

void __thiscall SoldierView::setRotationAngle(SoldierView *this,float param_1)

{
  undefined4 in_r1;
  
  (**(code **)(**(int **)(this + 0x124) + 0x98))(*(undefined4 *)(this + 0x124),in_r1);
  return;
}

// ---- SoldierView::setFiringAngle  @ 0x403cc0
/* SoldierView::setFiringAngle(float) */

void __thiscall SoldierView::setFiringAngle(SoldierView *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x1b8) = in_r1;
  return;
}

// ---- SoldierView::setFiringAngleOffset  @ 0x403cd4
/* SoldierView::setFiringAngleOffset(float) */

void __thiscall SoldierView::setFiringAngleOffset(SoldierView *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x1bc) = in_r1;
  return;
}

// ---- SoldierView::getFiringAngleOffset  @ 0x403ce8
/* SoldierView::getFiringAngleOffset() */

undefined4 __thiscall SoldierView::getFiringAngleOffset(SoldierView *this)

{
  return *(undefined4 *)(this + 0x1bc);
}

// ---- SoldierView::setFixFiringAngleOffset  @ 0x403cf8
/* SoldierView::setFixFiringAngleOffset(bool) */

void __thiscall SoldierView::setFixFiringAngleOffset(SoldierView *this,bool param_1)

{
  this[0x1d5] = (SoldierView)param_1;
  return;
}

// ---- SoldierView::setWeaponAngleOffset  @ 0x403d10
/* SoldierView::setWeaponAngleOffset(float) */

void __thiscall SoldierView::setWeaponAngleOffset(SoldierView *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x1c0) = in_r1;
  return;
}

// ---- SoldierView::setJoyOffset  @ 0x403d24
/* SoldierView::setJoyOffset(cpVect) */

void SoldierView::setJoyOffset(float param_1,float param_2,int param_3)

{
  CCPoint aCStack_18 [8];
  
  cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
  cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x198),aCStack_18);
  return;
}

// ---- SoldierView::setThrustFactor  @ 0x403d6c
/* SoldierView::setThrustFactor(double) */

undefined4 SoldierView::setThrustFactor(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x1a4) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- SoldierView::getDualFiringAngle  @ 0x403d88
/* SoldierView::getDualFiringAngle() */

float __thiscall SoldierView::getDualFiringAngle(SoldierView *this)

{
  int iVar1;
  float fVar2;
  
  iVar1 = isRight(this);
  if (iVar1 == 0) {
    fVar2 = *(float *)(this + 0x1b8) + *(float *)(this + 0x1b4);
  }
  else {
    fVar2 = *(float *)(this + 0x1b8) - *(float *)(this + 0x1b4);
  }
  return fVar2;
}

// ---- SoldierView::getFiringAngle  @ 0x403dc8
/* SoldierView::getFiringAngle() */

float __thiscall SoldierView::getFiringAngle(SoldierView *this)

{
  int iVar1;
  float fVar2;
  
  iVar1 = isRight(this);
  if (iVar1 == 0) {
    fVar2 = *(float *)(this + 0x1b8) + *(float *)(this + 0x1bc) + *(float *)(this + 0x1b0);
  }
  else {
    fVar2 = (*(float *)(this + 0x1b8) - *(float *)(this + 0x1bc)) - *(float *)(this + 0x1b0);
  }
  return fVar2;
}

// ---- SoldierView::getBodyRotation  @ 0x403e1c
/* SoldierView::getBodyRotation() */

undefined4 __thiscall SoldierView::getBodyRotation(SoldierView *this)

{
  return *(undefined4 *)(this + 0x1a0);
}

// ---- SoldierView::setPrimaryRecoilRotation  @ 0x403e2c
/* SoldierView::setPrimaryRecoilRotation(double) */

undefined4 SoldierView::setPrimaryRecoilRotation(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x1a8) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- SoldierView::setDualRecoilRotation  @ 0x403e48
/* SoldierView::setDualRecoilRotation(double) */

undefined4 SoldierView::setDualRecoilRotation(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x1ac) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- SoldierView::setPrimaryMoveRotation  @ 0x403e64
/* SoldierView::setPrimaryMoveRotation(double) */

undefined4 SoldierView::setPrimaryMoveRotation(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x1b0) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- SoldierView::setDualMoveRotation  @ 0x403e80
/* SoldierView::setDualMoveRotation(double) */

undefined4 SoldierView::setDualMoveRotation(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x1b4) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- SoldierView::setUUID  @ 0x403e9c
/* SoldierView::setUUID(std::string) */

void SoldierView::setUUID(void)

{
  return;
}

// ---- SoldierView::hidePlayerLabel  @ 0x403ea8
/* SoldierView::hidePlayerLabel(bool) */

void __thiscall SoldierView::hidePlayerLabel(SoldierView *this,bool param_1)

{
  (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),!param_1);
  return;
}

// ---- SoldierView::setPlayerLabelOpacity  @ 0x403ee0
/* SoldierView::setPlayerLabelOpacity(int) */

void __thiscall SoldierView::setPlayerLabelOpacity(SoldierView *this,int param_1)

{
  (**(code **)(**(int **)(this + 0xe4) + 0x1a4))(*(undefined4 *)(this + 0xe4),param_1 & 0xff);
  return;
}

// ---- SoldierView::setPlayerLabelColor  @ 0x403f10
/* SoldierView::setPlayerLabelColor(cocos2d::_ccColor3B) */

void __thiscall SoldierView::setPlayerLabelColor(SoldierView *this,undefined4 param_2)

{
  undefined4 local_10;
  SoldierView *local_c;
  
  local_10 = param_2;
  local_c = this;
  (**(code **)(**(int **)(this + 0xe4) + 0x1bc))(*(undefined4 *)(this + 0xe4),&local_10);
  return;
}

// ---- SoldierView::getPlayerLabelOpacity  @ 0x403f3c
/* SoldierView::getPlayerLabelOpacity() */

undefined4 __thiscall SoldierView::getPlayerLabelOpacity(SoldierView *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0xe4) + 0x19c))(*(undefined4 *)(this + 0xe4));
  return uVar1;
}

// ---- SoldierView::setPlayerName  @ 0x403f64
/* SoldierView::setPlayerName(std::string) */

void __thiscall SoldierView::setPlayerName(SoldierView *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  thunk_FUN_007c653c(this + 0x1e4,param_2);
  pcVar2 = *(code **)(**(int **)(this + 0xe4) + 0x23c);
  uVar3 = *(undefined4 *)(this + 0xe4);
  uVar1 = FUN_007c5300(param_2);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- SoldierView::getPlayerName  @ 0x403fa0
/* SoldierView::getPlayerName() */

undefined4 SoldierView::getPlayerName(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x1e4);
  return in_r0;
}

// ---- SoldierView::isRight  @ 0x403fc0
/* SoldierView::isRight() */

SoldierView __thiscall SoldierView::isRight(SoldierView *this)

{
  return this[0x1cc];
}

// ---- SoldierView::getDualArmPoint  @ 0x403fd0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00404072 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierView::getDualArmPoint() */

undefined4 SoldierView::getDualArmPoint(void)

{
  undefined4 in_r0;
  CCPoint *pCVar1;
  int in_r1;
  undefined4 in_s1;
  float local_38;
  float local_34;
  cocos2d acStack_30 [8];
  CCAffineTransform aCStack_28 [28];
  
  pCVar1 = (CCPoint *)
           (**(code **)(**(int **)(in_r1 + 0x114) + 0x50))(*(undefined4 *)(in_r1 + 0x114));
  (**(code **)(**(int **)(in_r1 + 0x114) + 0x184))(aCStack_28,*(undefined4 *)(in_r1 + 0x114));
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_38,pCVar1,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_30,(CCPoint *)&local_38,aCStack_28);
  cocos2d::CCPoint::operator=((CCPoint *)&local_38,(CCPoint *)acStack_30);
  FUN_00400cac(SUB84((double)local_38,0),in_s1,SUB84((double)local_34,0),in_r0);
  return in_r0;
}

// ---- SoldierView::setPlayerSkin  @ 0x404084
/* SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*,
   cocos2d::CCTexture2D*, cocos2d::CCTexture2D*) */

void __thiscall
SoldierView::setPlayerSkin
          (SoldierView *this,int param_1,CCTexture2D *param_2,CCTexture2D *param_3,
          CCTexture2D *param_4,CCTexture2D *param_5)

{
  *(int *)(this + 0x1d8) = param_1;
  setHeadTexture(this,param_2);
  setBodyTexture(this,param_3);
  setArmTexture(this,param_4);
  setLegTexture(this,param_5);
  return;
}

// ---- SoldierView::setIsVisible  @ 0x4040c0
/* SoldierView::setIsVisible(bool) */

void __thiscall SoldierView::setIsVisible(SoldierView *this,bool param_1)

{
  this[0x1e0] = (SoldierView)param_1;
  if (this[0x1e0] != (SoldierView)0x1) {
    updateVisible(this,(bool)this[0x1e0]);
  }
  return;
}

// ---- SoldierView::setBoostColor  @ 0x4040fc
/* SoldierView::setBoostColor(cocos2d::_ccColor4B) */

void __thiscall SoldierView::setBoostColor(SoldierView *this,uint param_2)

{
  undefined3 uVar1;
  Boostie *pBVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined4 local_30;
  undefined1 auStack_20 [20];
  
  pBVar2 = *(Boostie **)(this + 0xe8);
  local_30._1_1_ = (undefined1)(param_2 >> 8);
  local_30._2_1_ = (undefined1)(param_2 >> 0x10);
  uVar1 = FUN_00400bd4(param_2 & 0xff,local_30._1_1_,local_30._2_1_);
  Boostie::setStreakColor(pBVar2,uVar1);
  pBVar2 = *(Boostie **)(this + 0xec);
  uVar1 = FUN_00400bd4(param_2 & 0xff,local_30._1_1_,local_30._2_1_);
  Boostie::setStreakColor(pBVar2,uVar1);
  pcVar3 = *(code **)(**(int **)(*(int *)(this + 0xe8) + 0xf0) + 0x288);
  uVar4 = *(undefined4 *)(*(int *)(this + 0xe8) + 0xf0);
  FUN_00400c30(auStack_20,param_2);
  (*pcVar3)(uVar4,auStack_20);
  pcVar3 = *(code **)(**(int **)(*(int *)(this + 0xec) + 0xf0) + 0x288);
  uVar4 = *(undefined4 *)(*(int *)(this + 0xec) + 0xf0);
  FUN_00400c30(auStack_20,param_2);
  (*pcVar3)(uVar4,auStack_20);
  local_30 = param_2 & 0xffffff;
  pcVar3 = *(code **)(**(int **)(*(int *)(this + 0xe8) + 0xf0) + 0x298);
  uVar4 = *(undefined4 *)(*(int *)(this + 0xe8) + 0xf0);
  FUN_00400c30(auStack_20,local_30);
  (*pcVar3)(uVar4,auStack_20);
  pcVar3 = *(code **)(**(int **)(*(int *)(this + 0xec) + 0xf0) + 0x298);
  uVar4 = *(undefined4 *)(*(int *)(this + 0xec) + 0xf0);
  FUN_00400c30(auStack_20,local_30);
  (*pcVar3)(uVar4,auStack_20);
  return;
}

// ---- SoldierView::setDualWieldConfiguration  @ 0x404240
/* SoldierView::setDualWieldConfiguration(bool) */

void __thiscall SoldierView::setDualWieldConfiguration(SoldierView *this,bool param_1)

{
  this[0x1d4] = (SoldierView)param_1;
  return;
}

// ---- SoldierView::showSight  @ 0x404258
/* SoldierView::showSight() */

void SoldierView::showSight(void)

{
  return;
}

// ---- SoldierView::hideSight  @ 0x404260
/* SoldierView::hideSight() */

void SoldierView::hideSight(void)

{
  return;
}

// ---- SoldierView::resetStreak  @ 0x404268
/* SoldierView::resetStreak() */

void __thiscall SoldierView::resetStreak(SoldierView *this)

{
  Boostie::reset(*(Boostie **)(this + 0xe8));
  Boostie::reset(*(Boostie **)(this + 0xec));
  return;
}

// ---- SoldierView::showLabel  @ 0x40428c
/* SoldierView::showLabel() */

void __thiscall SoldierView::showLabel(SoldierView *this)

{
  *(undefined4 *)(this + 0x1dc) = 0;
  (**(code **)(**(int **)(this + 0xe4) + 0x1a4))(*(undefined4 *)(this + 0xe4),0xff);
  return;
}

// ---- SoldierView::setHeadTexture  @ 0x4042bc
/* SoldierView::setHeadTexture(cocos2d::CCTexture2D*) */

void __thiscall SoldierView::setHeadTexture(SoldierView *this,CCTexture2D *param_1)

{
  undefined4 uVar1;
  CCTexture2D *this_00;
  code *pcVar2;
  undefined8 uVar3;
  CCPoint aCStack_18 [12];
  
  if (*(int *)(this + 0xf0) != 0) {
    (**(code **)(**(int **)(this + 0x120) + 0xf4))
              (*(undefined4 *)(this + 0x120),*(undefined4 *)(this + 0xf0),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  }
  uVar1 = cocos2d::CCSprite::createWithTexture(param_1);
  *(undefined4 *)(this + 0xf0) = uVar1;
  this_00 = (CCTexture2D *)
            (**(code **)(**(int **)(this + 0xf0) + 500))(*(undefined4 *)(this + 0xf0));
  cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
  uVar3 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
  pcVar2 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf0);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar2)(uVar1,aCStack_18);
  (**(code **)(**(int **)(this + 0x120) + 200))
            (*(undefined4 *)(this + 0x120),*(undefined4 *)(this + 0xf0));
  return;
}

// ---- SoldierView::setBodyTexture  @ 0x404384
/* SoldierView::setBodyTexture(cocos2d::CCTexture2D*) */

void __thiscall SoldierView::setBodyTexture(SoldierView *this,CCTexture2D *param_1)

{
  undefined4 uVar1;
  CCTexture2D *this_00;
  code *pcVar2;
  undefined8 uVar3;
  CCPoint aCStack_18 [12];
  
  if (*(int *)(this + 0xf4) != 0) {
    (**(code **)(**(int **)(this + 0x11c) + 0xf4))
              (*(undefined4 *)(this + 0x11c),*(undefined4 *)(this + 0xf4),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  }
  uVar1 = cocos2d::CCSprite::createWithTexture(param_1);
  *(undefined4 *)(this + 0xf4) = uVar1;
  this_00 = (CCTexture2D *)
            (**(code **)(**(int **)(this + 0xf4) + 500))(*(undefined4 *)(this + 0xf4));
  cocos2d::CCTexture2D::setAntiAliasTexParameters(this_00);
  uVar3 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
  pcVar2 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf4);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar2)(uVar1,aCStack_18);
  (**(code **)(**(int **)(this + 0x11c) + 0xcc))
            (*(undefined4 *)(this + 0x11c),*(undefined4 *)(this + 0xf4),2);
  return;
}

// ---- SoldierView::setArmTexture  @ 0x40444c
/* SoldierView::setArmTexture(cocos2d::CCTexture2D*) */

void __thiscall SoldierView::setArmTexture(SoldierView *this,CCTexture2D *param_1)

{
  undefined4 uVar1;
  CCTexture2D *pCVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_18 [12];
  
  if (*(int *)(this + 0xfc) != 0) {
    (**(code **)(**(int **)(this + 0x110) + 0xf4))
              (*(undefined4 *)(this + 0x110),*(undefined4 *)(this + 0xfc),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  }
  uVar1 = cocos2d::CCSprite::createWithTexture(param_1);
  *(undefined4 *)(this + 0xfc) = uVar1;
  pCVar2 = (CCTexture2D *)(**(code **)(**(int **)(this + 0xfc) + 500))(*(undefined4 *)(this + 0xfc))
  ;
  cocos2d::CCTexture2D::setAntiAliasTexParameters(pCVar2);
  uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
  pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_18);
  (**(code **)(**(int **)(this + 0x110) + 0xcc))
            (*(undefined4 *)(this + 0x110),*(undefined4 *)(this + 0xfc),1);
  if (*(int *)(this + 0xf8) != 0) {
    (**(code **)(**(int **)(this + 0x114) + 0xf4))
              (*(undefined4 *)(this + 0x114),*(undefined4 *)(this + 0xf8),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  }
  uVar1 = cocos2d::CCSprite::createWithTexture(param_1);
  *(undefined4 *)(this + 0xf8) = uVar1;
  pCVar2 = (CCTexture2D *)(**(code **)(**(int **)(this + 0xf8) + 500))(*(undefined4 *)(this + 0xf8))
  ;
  cocos2d::CCTexture2D::setAntiAliasTexParameters(pCVar2);
  uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
  pcVar3 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0xf8);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_18);
  (**(code **)(**(int **)(this + 0x114) + 0xcc))
            (*(undefined4 *)(this + 0x114),*(undefined4 *)(this + 0xf8),1);
  return;
}

// ---- SoldierView::setLegTexture  @ 0x4045dc
/* SoldierView::setLegTexture(cocos2d::CCTexture2D*) */

void __thiscall SoldierView::setLegTexture(SoldierView *this,CCTexture2D *param_1)

{
  undefined4 uVar1;
  CCTexture2D *pCVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_18 [12];
  
  if (*(int *)(this + 0x104) != 0) {
    (**(code **)(**(int **)(this + 0x108) + 0xf4))
              (*(undefined4 *)(this + 0x108),*(undefined4 *)(this + 0x104),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  }
  uVar1 = cocos2d::CCSprite::createWithTexture(param_1);
  *(undefined4 *)(this + 0x104) = uVar1;
  pCVar2 = (CCTexture2D *)
           (**(code **)(**(int **)(this + 0x104) + 500))(*(undefined4 *)(this + 0x104));
  cocos2d::CCTexture2D::setAntiAliasTexParameters(pCVar2);
  uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
  pcVar3 = *(code **)(**(int **)(this + 0x104) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0x104);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_18);
  (**(code **)(**(int **)(this + 0x108) + 200))
            (*(undefined4 *)(this + 0x108),*(undefined4 *)(this + 0x104));
  if (*(int *)(this + 0x100) != 0) {
    (**(code **)(**(int **)(this + 0x10c) + 0xf4))
              (*(undefined4 *)(this + 0x10c),*(undefined4 *)(this + 0x100),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  }
  uVar1 = cocos2d::CCSprite::createWithTexture(param_1);
  *(undefined4 *)(this + 0x100) = uVar1;
  pCVar2 = (CCTexture2D *)
           (**(code **)(**(int **)(this + 0x100) + 500))(*(undefined4 *)(this + 0x100));
  cocos2d::CCTexture2D::setAntiAliasTexParameters(pCVar2);
  uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
  pcVar3 = *(code **)(**(int **)(this + 0x100) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0x100);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar1,aCStack_18);
  (**(code **)(**(int **)(this + 0x10c) + 200))
            (*(undefined4 *)(this + 0x10c),*(undefined4 *)(this + 0x100));
  return;
}
