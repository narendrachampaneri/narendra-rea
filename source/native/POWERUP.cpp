// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- POWERUP::POWERUP  @ 0x39d3d0
/* POWERUP::POWERUP() */

POWERUP * __thiscall POWERUP::POWERUP(POWERUP *this)

{
  POWERUP *this_00;
  int iVar1;
  
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009162e8;
  this_00 = this + 0x200;
  for (iVar1 = 1; iVar1 != -1; iVar1 = iVar1 + -1) {
    cocos2d::CCRect::CCRect((CCRect *)this_00);
    this_00 = this_00 + 0x10;
  }
  return this;
}

// ---- POWERUP::init  @ 0x39d428
/* POWERUP::init() */

bool __thiscall POWERUP::init(POWERUP *this)

{
  char cVar1;
  CCSprite *pCVar2;
  CCRect *pCVar3;
  undefined4 uVar4;
  
  cVar1 = Weapon::init((Weapon *)this);
  if (cVar1 == '\x01') {
    pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("medPack.png");
    pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
    cocos2d::CCRect::operator=((CCRect *)(this + 0x200),pCVar3);
    pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("boost.png");
    pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
    cocos2d::CCRect::operator=((CCRect *)(this + 0x210),pCVar3);
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("blank.png");
    *(undefined4 *)(this + 0x1ec) = uVar4;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1ec));
    (**(code **)(*(int *)this + 0x1e0))(this);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1ec),0);
    *(undefined4 *)(this + 0x110) = 0;
    *(undefined2 *)(this + 0x1e8) = 1;
    *(undefined2 *)(this + 0x1ea) = 1;
    *(undefined4 *)(this + 0x1f0) = 0;
    *(undefined4 *)(this + 500) = 0;
    *(undefined4 *)(this + 0x1f8) = 0;
    *(undefined4 *)(this + 0x1fc) = 0;
  }
  return cVar1 == '\x01';
}

// ---- POWERUP::~POWERUP  @ 0x39d52c
/* WARNING: Removing unreachable block (ram,0x0039d562) */
/* POWERUP::~POWERUP() */

POWERUP * __thiscall POWERUP::~POWERUP(POWERUP *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009162e8;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- POWERUP::~POWERUP  @ 0x39d57c
/* POWERUP::~POWERUP() */

POWERUP * __thiscall POWERUP::~POWERUP(POWERUP *this)

{
  ~POWERUP(this);
  operator_delete(this);
  return this;
}

// ---- POWERUP::initBody  @ 0x39d598
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039d604 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* POWERUP::initBody() */

void POWERUP::initBody(void)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  undefined4 in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  int local_3c;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined1 local_20 [20];
  
  local_34 = 0x3dcccccd;
  local_3c = in_r0;
  uVar1 = cpBodyNew(0xa0000000,0x3fb99999,0,0x40200000);
  iVar2 = local_3c;
  *(undefined4 *)(local_3c + 0xe8) = uVar1;
  **(undefined4 **)(local_3c + 0xe8) = 0x39d245;
  *(int *)(*(int *)(local_3c + 0xe8) + 0x90) = local_3c;
  *(undefined4 *)(local_3c + 0xf0) = 0;
  *(undefined4 *)(local_3c + 0xf4) = 0x3ff00000;
  FUN_0039c2e4(0,in_s1,0,&local_50);
  *(undefined4 *)(iVar2 + 0xf8) = local_50;
  *(undefined4 *)(iVar2 + 0xfc) = uStack_4c;
  *(undefined4 *)(iVar2 + 0x100) = uStack_48;
  *(undefined4 *)(iVar2 + 0x104) = uStack_44;
  uVar1 = *(undefined4 *)(local_3c + 0xe8);
  FUN_0039c2e4(0,in_s1,0,&local_30);
  FUN_0039c2e4(0,in_s1,0,local_20);
  uVar1 = cpSegmentShapeNew(uVar1,uStack_24,local_30,uStack_2c);
  *(undefined4 *)(local_3c + 0xec) = uVar1;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x54) = 2;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x5c) = 2;
  *(undefined4 *)(*(int *)(local_3c + 0xec) + 0x58) = 2;
  iVar2 = *(int *)(local_3c + 0xec);
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fb99999;
  iVar2 = *(int *)(local_3c + 0xec);
  *(undefined4 *)(iVar2 + 0x38) = 0x80000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fefae14;
  *(int *)(*(int *)(local_3c + 0xec) + 0x50) = local_3c;
  return;
}

// ---- POWERUP::updateRemoteWeaponStep  @ 0x39d6e8
/* POWERUP::updateRemoteWeaponStep(float) */

void POWERUP::updateRemoteWeaponStep(float param_1)

{
  Weapon *in_r0;
  undefined4 in_r1;
  
  Weapon::updateRemoteWeaponStep(in_r0,param_1);
  (**(code **)(*(int *)in_r0 + 0x1b4))(in_r0,in_r1);
  return;
}

// ---- POWERUP::updateItemStep  @ 0x39d710
/* POWERUP::updateItemStep(float) */

void POWERUP::updateItemStep(float param_1)

{
  return;
}

// ---- POWERUP::setAmmoType  @ 0x39d71c
/* POWERUP::setAmmoType(ItemType) */

void __thiscall POWERUP::setAmmoType(POWERUP *this,int param_2)

{
  Weapon::setAmmoType((Weapon *)this,param_2);
  if (param_2 == 0xe) {
    (**(code **)(**(int **)(this + 0x1ec) + 0x208))(*(undefined4 *)(this + 0x1ec),this + 0x200);
  }
  else if (param_2 == 0xf) {
    (**(code **)(**(int **)(this + 0x1ec) + 0x208))(*(undefined4 *)(this + 0x1ec),this + 0x210);
  }
  return;
}

// ---- POWERUP::setContact  @ 0x39d784
/* POWERUP::setContact(bool, std::string, int) */

undefined1 POWERUP::setContact(int param_1,undefined1 param_2)

{
  *(undefined1 *)(param_1 + 0xe4) = param_2;
  return *(undefined1 *)(param_1 + 0xe4);
}

// ---- POWERUP::setMapConfiguration  @ 0x39d7a8
/* POWERUP::setMapConfiguration() */

void POWERUP::setMapConfiguration(void)

{
  int *in_r0;
  code *pcVar1;
  int iVar2;
  float in_s0;
  float in_s1;
  undefined8 uVar3;
  CCPoint aCStack_18 [8];
  
  pcVar1 = *(code **)(*(int *)in_r0[0x7b] + 0x4c);
  iVar2 = in_r0[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,in_s0,in_s1);
  uVar3 = (*pcVar1)(iVar2,aCStack_18);
  pcVar1 = *(code **)(*(int *)in_r0[0x7b] + 0x7c);
  iVar2 = in_r0[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(iVar2,aCStack_18);
  uVar3 = (**(code **)(*(int *)in_r0[0x7b] + 0x98))(in_r0[0x7b],0);
  pcVar1 = *(code **)(*in_r0 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(in_r0,aCStack_18);
  (**(code **)(*in_r0 + 0x40))(in_r0,playerScale);
  return;
}

// ---- POWERUP::isRight  @ 0x39d864
/* POWERUP::isRight() */

bool __thiscall POWERUP::isRight(POWERUP *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- POWERUP::setRight  @ 0x39d8a0
/* POWERUP::setRight(bool) */

void __thiscall POWERUP::setRight(POWERUP *this,bool param_1)

{
  undefined4 uVar1;
  
  if (param_1) {
    uVar1 = 0x3f800000;
  }
  else {
    uVar1 = 0xbf800000;
  }
  (**(code **)(**(int **)(this + 0x1ec) + 0x30))(*(undefined4 *)(this + 0x1ec),uVar1);
  return;
}

// ---- POWERUP::canPlayerBeModed  @ 0x39d8e0
/* POWERUP::canPlayerBeModed() */

bool __thiscall POWERUP::canPlayerBeModed(POWERUP *this)

{
  int iVar1;
  bool local_9;
  
  local_9 = false;
  iVar1 = (**(code **)(*(int *)this + 0x27c))(this);
  if (iVar1 == 0xf) {
    local_9 = true;
  }
  else if (iVar1 == 0x16) {
    local_9 = true;
  }
  else if (iVar1 == 0xe) {
    iVar1 = (**(code **)(*hostSoldier + 0x25c))(hostSoldier);
    local_9 = iVar1 < 100;
  }
  return local_9;
}

// ---- POWERUP::doPlayerMod  @ 0x39d968
/* POWERUP::doPlayerMod(float) */

bool __thiscall POWERUP::doPlayerMod(POWERUP *this,float param_1)

{
  int *piVar1;
  int iVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  CCNotificationCenter *pCVar11;
  float in_r1;
  code *pcVar12;
  float fVar13;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  double dVar14;
  bool local_31;
  string asStack_30 [4];
  CCObject *local_2c;
  
  local_31 = false;
  iVar2 = (**(code **)(*(int *)this + 0x27c))(this);
  if (iVar2 == 0xf) {
    *(float *)(this + 500) = *(float *)(this + 500) + in_r1;
    if ((int)((uint)(*(float *)(this + 500) < 30.0) << 0x1f) < 0) {
      (**(code **)(*hostSoldier + 0x2a4))(hostSoldier,0x42c80000);
      (**(code **)(*hostSoldier + 0x1e0))(hostSoldier,1);
      piVar1 = hostSoldier;
      pcVar12 = *(code **)(*hostSoldier + 0x1e4);
      dVar14 = (double)(**(code **)(*hostSoldier + 0x1e8))(hostSoldier);
      if ((int)((uint)(dVar14 < 0.2) << 0x1f) < 0) {
        fVar13 = 0.2;
      }
      else {
        dVar14 = (double)(**(code **)(*hostSoldier + 0x1e8))(hostSoldier);
        fVar13 = (float)dVar14;
      }
      (*pcVar12)(piVar1,fVar13);
      *(undefined1 *)(hostSoldier + 0x47) = 1;
      (**(code **)(*hostSoldier + 0x19c))(hostSoldier,0);
      local_31 = true;
    }
  }
  else if (iVar2 == 0x16) {
    *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
    *(float *)(this + 0x1fc) = *(float *)(this + 0x1fc) - in_r1;
    if ((int)((uint)(*(float *)(this + 0x1f8) < 30.0) << 0x1f) < 0) {
      (**(code **)(*hostSoldier + 0x2a4))(hostSoldier,0);
      fVar13 = (float)(**(code **)(*hostSoldier + 0x1e0))(hostSoldier,0);
      if (*(float *)(this + 0x1fc) <= 0.0) {
        *(undefined4 *)(this + 0x1fc) = 0x40e00000;
        pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar13);
        uVar4 = cocos2d::CCFloat::create(extraout_s0);
        uVar5 = cocos2d::CCFloat::create(extraout_s0_00);
        uVar6 = cocos2d::CCFloat::create(extraout_s0_01);
        uVar7 = cocos2d::CCInteger::create(0x16);
        uVar8 = cocos2d::CCFloat::create(extraout_s0_02);
        iVar2 = globalSeed;
        globalSeed = globalSeed + 1;
        uVar9 = cocos2d::CCInteger::create(iVar2);
        (**(code **)(*hostSoldier + 0x1c0))(asStack_30,hostSoldier);
        uVar10 = cocos2d::CCString::create(asStack_30);
        local_2c = (CCObject *)
                   cocos2d::CCArray::create(pCVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,0);
        FUN_007c5914(asStack_30);
        pCVar11 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification(pCVar11,"ExplosiveCreate",local_2c);
        pCVar11 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification(pCVar11,"Explosive",local_2c);
      }
      local_31 = true;
    }
  }
  else if (iVar2 == 0xe) {
    iVar2 = (**(code **)(*hostSoldier + 0x25c))(hostSoldier);
    piVar1 = hostSoldier;
    if ((iVar2 < 100) && ((int)((uint)(*(float *)(this + 0x1f0) < 100.0) << 0x1f) < 0)) {
      local_31 = true;
    }
    else {
      local_31 = false;
    }
    if (local_31) {
      pcVar12 = *(code **)(*hostSoldier + 0x260);
      iVar2 = (**(code **)(*hostSoldier + 0x25c))(hostSoldier);
      (*pcVar12)(piVar1,iVar2 + 1);
      *(float *)(this + 0x1f0) = *(float *)(this + 0x1f0) + 1.0;
    }
  }
  return local_31;
}

// ---- POWERUP::startPlayerMod  @ 0x39dcd8
/* POWERUP::startPlayerMod() */

void __thiscall POWERUP::startPlayerMod(POWERUP *this)

{
  int iVar1;
  SoldierView *pSVar2;
  undefined4 uVar3;
  CCNotificationCenter *this_00;
  CCObject *pCVar4;
  
  iVar1 = (**(code **)(*(int *)this + 0x27c))(this);
  if (iVar1 == 0xf) {
    Sound::playSound(sndEng,0x11);
    pSVar2 = (SoldierView *)(**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
    uVar3 = FUN_0039c1e0(0xff,0,0,0xff);
    SoldierView::setBoostColor(pSVar2,uVar3);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    pCVar4 = (CCObject *)cocos2d::CCInteger::create(0xf);
    cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerPowerUpOn",pCVar4);
  }
  else if (iVar1 != 0x16) {
    Sound::playSound(sndEng,0x11);
  }
  return;
}

// ---- POWERUP::stopPlayerMod  @ 0x39dd84
/* POWERUP::stopPlayerMod() */

void __thiscall POWERUP::stopPlayerMod(POWERUP *this)

{
  int iVar1;
  SoldierView *pSVar2;
  undefined4 uVar3;
  CCNotificationCenter *this_00;
  CCObject *pCVar4;
  
  iVar1 = (**(code **)(*(int *)this + 0x27c))(this);
  if (iVar1 == 0xf) {
    pSVar2 = (SoldierView *)(**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
    uVar3 = FUN_0039c1e0(0xff,0xff,0xff,0xff);
    SoldierView::setBoostColor(pSVar2,uVar3);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    pCVar4 = (CCObject *)cocos2d::CCInteger::create(0xf);
    cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerPowerUpOff",pCVar4);
    *(undefined1 *)((int)hostSoldier + 0x11d) = 0;
  }
  return;
}

// ---- POWERUP::isModItem  @ 0x39de14
/* POWERUP::isModItem() */

undefined4 POWERUP::isModItem(void)

{
  return 1;
}

// ---- POWERUP::create  @ 0x3a2b0c
/* POWERUP::create() */

POWERUP * POWERUP::create(void)

{
  bool bVar1;
  POWERUP *this;
  int iVar2;
  
  this = operator_new(0x220);
  POWERUP(this);
  if ((this == (POWERUP *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (POWERUP *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (POWERUP *)0x0;
  }
  return this;
}
