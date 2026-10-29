// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- AmmoMeter::AmmoMeter  @ 0x2f3e5c
/* AmmoMeter::AmmoMeter() */

AmmoMeter * __thiscall AmmoMeter::AmmoMeter(AmmoMeter *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090aa38;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x108));
  *(undefined4 *)(this + 0xf0) = 0;
  return this;
}

// ---- AmmoMeter::init  @ 0x2f3eac
/* AmmoMeter::init() */

bool __thiscall AmmoMeter::init(AmmoMeter *this)

{
  char cVar1;
  undefined4 uVar2;
  CCNotificationCenter *pCVar3;
  code *pcVar4;
  undefined8 uVar5;
  code *local_18;
  undefined4 local_14;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("ammoBar.png");
    *(undefined4 *)(this + 0xe4) = uVar2;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),0);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("blank.png");
    *(undefined4 *)(this + 0xe8) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),0x3f19999a);
    uVar5 = (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe8));
    pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("grenade.png");
    *(undefined4 *)(this + 0xec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),0x3f19999a);
    uVar5 = (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xec));
    pcVar4 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    uVar2 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xfc) = uVar2;
    uVar2 = cocos2d::CCLabelAtlas::create("000","ammoText_new.png",0xe,0xf,0x30);
    *(undefined4 *)(this + 0xf4) = uVar2;
    uVar2 = cocos2d::CCLabelAtlas::create("000","ammoText_new.png",0xe,0xf,0x30);
    *(undefined4 *)(this + 0xf8) = uVar2;
    (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),0x3f000000);
    (**(code **)(**(int **)(this + 0xf8) + 0x40))(*(undefined4 *)(this + 0xf8),0x3f000000);
    (**(code **)(**(int **)(this + 0xfc) + 0x40))(*(undefined4 *)(this + 0xfc),0x3ecccccd);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xfc),0x1a);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf4),0xf);
    uVar5 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf8),0xf);
    pcVar4 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = (*pcVar4)(uVar2,&local_18);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    uVar5 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x108),(CCPoint *)&local_18);
    pcVar4 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf4));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xf8));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xfc));
    *(undefined4 *)(this + 0x104) = 0;
    *(undefined4 *)(this + 0x100) = 0;
    pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x2f4b29,(char *)0x0,
               (CCObject *)"WeaponChange");
    pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_18 = (code *)0x2f4b45;
    local_14 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x2f4b45,(char *)0x0,
               (CCObject *)"GrenadeChange");
  }
  return cVar1 == '\x01';
}

// ---- AmmoMeter::~AmmoMeter  @ 0x2f4334
/* WARNING: Removing unreachable block (ram,0x002f4394) */
/* AmmoMeter::~AmmoMeter() */

AmmoMeter * __thiscall AmmoMeter::~AmmoMeter(AmmoMeter *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0090aa38;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- AmmoMeter::~AmmoMeter  @ 0x2f43ac
/* AmmoMeter::~AmmoMeter() */

AmmoMeter * __thiscall AmmoMeter::~AmmoMeter(AmmoMeter *this)

{
  ~AmmoMeter(this);
  operator_delete(this);
  return this;
}

// ---- AmmoMeter::setWeaponState  @ 0x2f43c8
/* AmmoMeter::setWeaponState(int) */

void __thiscall AmmoMeter::setWeaponState(AmmoMeter *this,int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_20 [8];
  undefined1 local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  if (param_1 == 2) {
    if (*(int *)(this + 0x104) != 2) {
      *(undefined4 *)(this + 0x104) = 2;
      (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"NO AMMO");
      pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x1bc);
      uVar2 = *(undefined4 *)(this + 0xfc);
      uVar1 = FUN_002f3064(0xf5,0,0);
      local_18 = (undefined1)uVar1;
      local_17 = (undefined1)((uint)uVar1 >> 8);
      local_16 = (undefined1)((uint)uVar1 >> 0x10);
      uVar4 = (*pcVar3)(uVar2,&local_18);
      pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
      uVar1 = *(undefined4 *)(this + 0xfc);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
      FUN_002f30c0(&local_18,this + 0x108,aCStack_20);
      (*pcVar3)(uVar1,&local_18);
    }
  }
  else if (param_1 == 3) {
    if (*(int *)(this + 0x104) != 3) {
      *(undefined4 *)(this + 0x104) = 3;
      (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"LOW AMMO");
      pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x1bc);
      uVar2 = *(undefined4 *)(this + 0xfc);
      uVar1 = FUN_002f3064(0xf5,0xf5,0);
      local_18 = (undefined1)uVar1;
      local_17 = (undefined1)((uint)uVar1 >> 8);
      local_16 = (undefined1)((uint)uVar1 >> 0x10);
      uVar4 = (*pcVar3)(uVar2,&local_18);
      pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
      uVar1 = *(undefined4 *)(this + 0xfc);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
      FUN_002f30c0(&local_18,this + 0x108,aCStack_20);
      (*pcVar3)(uVar1,&local_18);
    }
  }
  else if (param_1 == 1) {
    if (*(int *)(this + 0x104) != 1) {
      *(undefined4 *)(this + 0x104) = 1;
      (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"RELOADING");
      pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x1bc);
      uVar2 = *(undefined4 *)(this + 0xfc);
      uVar1 = FUN_002f3064(0xff,0xff,0xff);
      local_18 = (undefined1)uVar1;
      local_17 = (undefined1)((uint)uVar1 >> 8);
      local_16 = (undefined1)((uint)uVar1 >> 0x10);
      uVar4 = (*pcVar3)(uVar2,&local_18);
      pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
      uVar1 = *(undefined4 *)(this + 0xfc);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
      FUN_002f30c0(&local_18,this + 0x108,aCStack_20);
      (*pcVar3)(uVar1,&local_18);
    }
  }
  else {
    (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),&DAT_007d2254);
  }
  return;
}

// ---- AmmoMeter::updateStep  @ 0x2f4630
/* AmmoMeter::updateStep(float) */

void __thiscall AmmoMeter::updateStep(AmmoMeter *this,float param_1)

{
  bool bVar1;
  char cVar2;
  short sVar3;
  CCString *pCVar4;
  undefined4 uVar5;
  int *piVar6;
  float in_r1;
  int iVar7;
  int iVar8;
  code *pcVar9;
  undefined4 uVar10;
  
  *(float *)(this + 0x100) = *(float *)(this + 0x100) + in_r1;
  cVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier);
  if ((cVar2 == '\x01') || (*(int *)(this + 0xf0) == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    sVar3 = (**(code **)(**(int **)(this + 0xf0) + 0x284))(*(undefined4 *)(this + 0xf0));
    iVar7 = (int)sVar3;
    sVar3 = (**(code **)(**(int **)(this + 0xf0) + 0x274))(*(undefined4 *)(this + 0xf0));
    iVar8 = (int)sVar3;
    pcVar9 = *(code **)(**(int **)(this + 0xf4) + 0x1f8);
    uVar10 = *(undefined4 *)(this + 0xf4);
    pCVar4 = (CCString *)
             cocos2d::CCString::createWithFormat("%d%d%d",iVar7 / 100,(iVar7 / 10) % 10,iVar7 % 10);
    uVar5 = cocos2d::CCString::getCString(pCVar4);
    (*pcVar9)(uVar10,uVar5);
    pcVar9 = *(code **)(**(int **)(this + 0xf8) + 0x1f8);
    uVar10 = *(undefined4 *)(this + 0xf8);
    pCVar4 = (CCString *)
             cocos2d::CCString::createWithFormat("%d%d%d",iVar8 / 100,(iVar8 / 10) % 10,iVar8 % 10);
    uVar5 = cocos2d::CCString::getCString(pCVar4);
    (*pcVar9)(uVar10,uVar5);
  }
  else {
    (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007d2268);
    (**(code **)(**(int **)(this + 0xf8) + 0x1f8))(*(undefined4 *)(this + 0xf8),&DAT_007d2268);
  }
  piVar6 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if ((piVar6 == (int *)0x0) || (-1 < (int)((uint)(*(float *)(this + 0x100) < 0.25) << 0x1f))) {
    (**(code **)(**(int **)(this + 0xfc) + 0x90))(*(undefined4 *)(this + 0xfc),0);
  }
  else {
    iVar7 = (**(code **)(*piVar6 + 0x2cc))(piVar6);
    if (iVar7 == 0) {
      sVar3 = (**(code **)(*piVar6 + 0x274))(piVar6);
      if (sVar3 == 0) {
        sVar3 = (**(code **)(*piVar6 + 0x284))(piVar6);
        if (sVar3 == 0) {
          setWeaponState(this,2);
        }
        else {
          setWeaponState(this,3);
        }
        (**(code **)(**(int **)(this + 0xfc) + 0x90))(*(undefined4 *)(this + 0xfc),1);
      }
    }
    else {
      (**(code **)(**(int **)(this + 0xfc) + 0x90))(*(undefined4 *)(this + 0xfc),1);
      setWeaponState(this,1);
    }
  }
  if ((piVar6 == (int *)0x0) || (iVar7 = (**(code **)(*piVar6 + 0x2dc))(piVar6), iVar7 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0xf4) + 0x1f8))(*(undefined4 *)(this + 0xf4),&DAT_007d2254);
    (**(code **)(**(int **)(this + 0xf8) + 0x1f8))(*(undefined4 *)(this + 0xf8),&DAT_007d2254);
  }
  if (0.4 < *(float *)(this + 0x100)) {
    *(undefined4 *)(this + 0x100) = 0;
  }
  return;
}

// ---- AmmoMeter::setGrenade  @ 0x2f49e8
/* AmmoMeter::setGrenade(Weapon*) */

void __thiscall AmmoMeter::setGrenade(AmmoMeter *this,Weapon *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 auStack_20 [20];
  
  if (param_1 == (Weapon *)0x0) {
    (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  }
  else {
    pcVar2 = *(code **)(**(int **)(this + 0xec) + 0x1f0);
    uVar3 = *(undefined4 *)(this + 0xec);
    uVar1 = (**(code **)(*(int *)param_1 + 0x26c))(param_1);
    (*pcVar2)(uVar3,uVar1);
    pcVar2 = *(code **)(**(int **)(this + 0xec) + 0x208);
    uVar1 = *(undefined4 *)(this + 0xec);
    (**(code **)(*(int *)param_1 + 0x270))(auStack_20,param_1);
    (*pcVar2)(uVar1,auStack_20);
    (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),1);
  }
  return;
}

// ---- AmmoMeter::setWeapon  @ 0x2f4a84
/* AmmoMeter::setWeapon(Weapon*) */

void __thiscall AmmoMeter::setWeapon(AmmoMeter *this,Weapon *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 auStack_20 [20];
  
  if (param_1 == (Weapon *)0x0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),0);
  }
  else {
    *(Weapon **)(this + 0xf0) = param_1;
    pcVar2 = *(code **)(**(int **)(this + 0xe8) + 0x1f0);
    uVar3 = *(undefined4 *)(this + 0xe8);
    uVar1 = (**(code **)(*(int *)param_1 + 0x26c))(param_1);
    (*pcVar2)(uVar3,uVar1);
    pcVar2 = *(code **)(**(int **)(this + 0xe8) + 0x208);
    uVar1 = *(undefined4 *)(this + 0xe8);
    (**(code **)(*(int *)param_1 + 0x270))(auStack_20,param_1);
    (*pcVar2)(uVar1,auStack_20);
    (**(code **)(**(int **)(this + 0xe8) + 0x90))(*(undefined4 *)(this + 0xe8),1);
  }
  return;
}

// ---- AmmoMeter::onWeaponChanged  @ 0x2f4b28
/* AmmoMeter::onWeaponChanged(cocos2d::CCObject*) */

void __thiscall AmmoMeter::onWeaponChanged(AmmoMeter *this,CCObject *param_1)

{
  setWeapon(this,(Weapon *)param_1);
  return;
}

// ---- AmmoMeter::onGrenadeChanged  @ 0x2f4b44
/* AmmoMeter::onGrenadeChanged(cocos2d::CCObject*) */

void __thiscall AmmoMeter::onGrenadeChanged(AmmoMeter *this,CCObject *param_1)

{
  setGrenade(this,(Weapon *)param_1);
  return;
}

// ---- AmmoMeter::setLength  @ 0x2f4b60
/* AmmoMeter::setLength(double, double) */

undefined4 AmmoMeter::setLength(double param_1,double param_2)

{
  return SUB84(param_1,0);
}

// ---- AmmoMeter::create  @ 0x349fbc
/* AmmoMeter::create() */

AmmoMeter * AmmoMeter::create(void)

{
  bool bVar1;
  AmmoMeter *this;
  int iVar2;
  
  this = operator_new(0x110);
  AmmoMeter(this);
  if ((this == (AmmoMeter *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (AmmoMeter *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (AmmoMeter *)0x0;
  }
  return this;
}
