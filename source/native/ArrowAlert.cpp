// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 7 functions

// ---- ArrowAlert::create  @ 0x3cd6c4
/* ArrowAlert::create() */

ArrowAlert * ArrowAlert::create(void)

{
  bool bVar1;
  ArrowAlert *this;
  int iVar2;
  
  this = operator_new(0xec);
  ArrowAlert(this);
  if ((this == (ArrowAlert *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (ArrowAlert *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ArrowAlert *)0x0;
  }
  return this;
}

// ---- ArrowAlert::ArrowAlert  @ 0x3cd734
/* ArrowAlert::ArrowAlert() */

ArrowAlert * __thiscall ArrowAlert::ArrowAlert(ArrowAlert *this)

{
  undefined4 uVar1;
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00919170;
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("arrowAlert.png");
  *(undefined4 *)(this + 0xe8) = uVar1;
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe8));
  *(undefined4 *)(this + 0xe4) = 0x3f800000;
  return this;
}

// ---- ArrowAlert::~ArrowAlert  @ 0x3cd7a0
/* WARNING: Removing unreachable block (ram,0x003cd7c2) */
/* ArrowAlert::~ArrowAlert() */

ArrowAlert * __thiscall ArrowAlert::~ArrowAlert(ArrowAlert *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00919170;
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- ArrowAlert::~ArrowAlert  @ 0x3cd7dc
/* ArrowAlert::~ArrowAlert() */

ArrowAlert * __thiscall ArrowAlert::~ArrowAlert(ArrowAlert *this)

{
  ~ArrowAlert(this);
  operator_delete(this);
  return this;
}

// ---- ArrowAlert::setArrowScale  @ 0x3cd7f8
/* ArrowAlert::setArrowScale(float) */

void __thiscall ArrowAlert::setArrowScale(ArrowAlert *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0xe4) = in_r1;
  return;
}

// ---- ArrowAlert::getArrowScale  @ 0x3cd80c
/* ArrowAlert::getArrowScale() */

undefined4 __thiscall ArrowAlert::getArrowScale(ArrowAlert *this)

{
  return *(undefined4 *)(this + 0xe4);
}

// ---- ArrowAlert::getSprite  @ 0x3cd81c
/* ArrowAlert::getSprite() */

undefined4 __thiscall ArrowAlert::getSprite(ArrowAlert *this)

{
  return *(undefined4 *)(this + 0xe8);
}
