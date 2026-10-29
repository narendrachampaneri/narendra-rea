// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 26 functions

// ---- MapManager::MapManager  @ 0x36e8fc
/* MapManager::MapManager() */

MapManager * __thiscall MapManager::MapManager(MapManager *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00914e98;
  FUN_007c51b0(this + 0x58);
  init(this);
  return this;
}

// ---- MapManager::init  @ 0x36e954
/* MapManager::init() */

undefined4 __thiscall MapManager::init(MapManager *this)

{
  undefined4 uVar1;
  CCString *this_00;
  CCFloat *this_01;
  CCInteger *this_02;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  CCString *local_10;
  CCArray *local_c;
  
  uVar1 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0x3c) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x3c));
  local_10 = (CCString *)0x0;
  local_c = (CCArray *)0x0;
  FUN_007c5e70(this + 0x58,"bg_new.png");
  *(undefined4 *)(this + 0x5c) = 0x3f800000;
  *(undefined4 *)(this + 0x60) = 100;
  if (mapType == 1) {
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,"training_new.tmx",auStack_18);
    loadMap(this,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
  }
  else if (mapType == 2) {
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,"survival_new.tmx",auStack_18);
    loadMap(this,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
  }
  else {
    local_c = (CCArray *)cocos2d::CCDictionary::objectForKey(multiplayerMaps,(string *)&hostMapName)
    ;
    local_10 = (CCString *)cocos2d::CCArray::objectAtIndex(local_c,0);
    this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(local_c,1);
    uVar1 = cocos2d::CCString::getCString(this_00);
    FUN_007c5e70(this + 0x58,uVar1);
    this_01 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_c,2);
    uVar1 = cocos2d::CCFloat::getValue(this_01);
    *(undefined4 *)(this + 0x5c) = uVar1;
    this_02 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_c,3);
    uVar1 = cocos2d::CCInteger::getValue(this_02);
    *(undefined4 *)(this + 0x60) = uVar1;
    uVar1 = cocos2d::CCString::getCString(local_10);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,uVar1,auStack_18);
    loadMap(this,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
  }
  return 1;
}

// ---- MapManager::~MapManager  @ 0x36eb24
/* WARNING: Removing unreachable block (ram,0x0036eb9c) */
/* MapManager::~MapManager() */

MapManager * __thiscall MapManager::~MapManager(MapManager *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00914e98;
  *(undefined4 *)(this + 0x34) = 0;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x3c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x20));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x24));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x28));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x2c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x38));
  FUN_007c5914(this + 0x58);
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- MapManager::~MapManager  @ 0x36ebb4
/* MapManager::~MapManager() */

MapManager * __thiscall MapManager::~MapManager(MapManager *this)

{
  ~MapManager(this);
  operator_delete(this);
  return this;
}

// ---- MapManager::getBackground  @ 0x36ebd0
/* MapManager::getBackground() */

undefined4 MapManager::getBackground(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x58);
  return in_r0;
}

// ---- MapManager::getGravityFactor  @ 0x36ebec
/* MapManager::getGravityFactor() */

undefined4 __thiscall MapManager::getGravityFactor(MapManager *this)

{
  return *(undefined4 *)(this + 0x5c);
}

// ---- MapManager::updatePlayerModifiers  @ 0x36ebfc
/* MapManager::updatePlayerModifiers() */

void __thiscall MapManager::updatePlayerModifiers(MapManager *this)

{
  if (hostSoldier != (int *)0x0) {
    if (gravityFactor == 0.0) {
      (**(code **)(*hostSoldier + 0x1e0))(hostSoldier,1);
      (**(code **)(*hostSoldier + 0x2a4))(hostSoldier,0x42c80000);
    }
    (**(code **)(*hostSoldier + 0x288))(hostSoldier,*(undefined4 *)(this + 0x60));
  }
  return;
}

// ---- MapManager::loadMap  @ 0x36ec8c
/* MapManager::loadMap(std::string) */

void __thiscall MapManager::loadMap(MapManager *this,undefined4 param_2)

{
  bool bVar1;
  undefined4 uVar2;
  CCObject *pCVar3;
  char *pcVar4;
  int iVar5;
  float *pfVar6;
  CCArray *pCVar7;
  CCSize *pCVar8;
  CCDictionary *pCVar9;
  uint in_fpscr;
  float fVar10;
  undefined1 auStack_40 [4];
  CCTMXLayerInfo *local_3c;
  int local_38;
  uint local_34;
  int local_30;
  int local_2c;
  int local_28;
  int local_24;
  CCTMXLayer *local_20;
  CCTMXMapInfo *local_1c;
  float local_18;
  float local_14;
  
  uVar2 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0x20) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x20));
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x28) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x28));
  *(undefined4 *)(this + 0x4c) = 200;
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x24) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x24));
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(9);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x14);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(8);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x15);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x16);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x17);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x18);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(10);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x19);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xb);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x1a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xd);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x1b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xc);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x1c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1d);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x1d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1b);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x1e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(5);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x1f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x20);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x21);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x22);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x23);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x20);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x24);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x25);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x26);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x27);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x28);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x29);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x2a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xf);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x2b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x2c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xe);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x2d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(4);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x2e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xf);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x2f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xe);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x30);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xd);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x31);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xc);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x32);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x33);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x34);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xf);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x35);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xe);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x36);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xd);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x37);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xc);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x38);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x39);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(6);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x3a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(7);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x3b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x3c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x14);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x3d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x14);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x3e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x14);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x3f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x18);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x40);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x19);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x41);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x12);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x42);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x12);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x43);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(9);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x44);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x45);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x49);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xd);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x4a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xc);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x4b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1c);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x4c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x4d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x4e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1a);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x4f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x15);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x50);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x15);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x51);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x15);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x52);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x27);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x53);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x28);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x54);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x55);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x20);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x56);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xf);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x57);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0xe);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x58);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(5);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x59);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(4);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x5a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x5b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x5c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x5d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x23);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x5e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x24);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x5f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x19);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x60);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x18);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x61);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x62);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x22);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,99);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x21);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,100);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1e);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x65);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1f);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x66);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x25);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x67);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x26);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x68);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x69);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x6a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x6b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x6c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x6d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x15);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x6e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x12);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x6f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x14);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x70);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x24);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x71);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1e);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x72);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x23);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x73);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1f);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x74);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x25);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x75);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x26);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x76);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x77);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x78);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x79);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x7a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x20);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x7b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1e);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x7c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1f);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x7d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1e);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x7e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1f);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x7f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x80);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x81);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x82);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x83);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x84);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x85);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x86);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x87);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x88);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x13);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x89);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x12);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x8a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x14);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x8b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x15);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x8c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1e);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x8d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x24);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x8e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x23);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x8f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1f);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x90);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x91);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x92);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x93);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x94);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x95);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x96);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x97);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x98);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1c);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x99);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1a);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x9a);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1d);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x9b);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x1b);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x9c);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x18);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x9d);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x19);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x9e);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x21);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x9f);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(0x22);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0xa0);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0xa1);
  pCVar9 = *(CCDictionary **)(this + 0x24);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0xa2);
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x2c) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x2c));
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,1);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x12);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x15);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x13);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x14);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x20);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0xe);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0xf);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x10);
  pCVar9 = *(CCDictionary **)(this + 0x2c);
  pCVar3 = (CCObject *)cocos2d::CCInteger::create(1);
  cocos2d::CCDictionary::setObject(pCVar9,pCVar3,0x11);
  pcVar4 = (char *)FUN_007c5300(param_2);
  uVar2 = cocos2d::CCTMXTiledMap::create(pcVar4);
  *(undefined4 *)(this + 0x14) = uVar2;
  tileSize = 0x40;
  *(undefined4 *)(this + 0x48) = 5;
  iVar5 = (**(code **)(**(int **)(this + 0x14) + 0x8c))(*(undefined4 *)(this + 0x14));
  fVar10 = (float)VectorSignedToFloat(tileSize,(byte)(in_fpscr >> 0x16) & 3);
  *(int *)(this + 0x44) = (int)(*(float *)(iVar5 + 4) / fVar10 - 1.0);
  pfVar6 = (float *)(**(code **)(**(int **)(this + 0x14) + 0x8c))(*(undefined4 *)(this + 0x14));
  fVar10 = (float)VectorSignedToFloat(tileSize,(byte)(in_fpscr >> 0x16) & 3);
  *(int *)(this + 0x40) = (int)(*pfVar6 / fVar10 - 1.0);
  uVar2 = cocos2d::CCTMXTiledMap::layerNamed(*(CCTMXTiledMap **)(this + 0x14),"tile");
  *(undefined4 *)(this + 0x30) = uVar2;
  (**(code **)(**(int **)(this + 0x30) + 0x90))(*(undefined4 *)(this + 0x30),0);
  local_20 = (CCTMXLayer *)
             cocos2d::CCTMXTiledMap::layerNamed(*(CCTMXTiledMap **)(this + 0x14),"tilebg");
  if (local_20 != (CCTMXLayer *)0x0) {
    (**(code **)(*(int *)local_20 + 0x90))(local_20,0);
  }
  uVar2 = cocos2d::CCTMXTiledMap::objectGroupNamed(*(CCTMXTiledMap **)(this + 0x14),"objects");
  *(undefined4 *)(this + 0x34) = uVar2;
  FUN_0079a3f4(auStack_40);
  FUN_007c6a60(&local_18,&DAT_007dccec,auStack_40);
  uVar2 = objectsNamed(this,&local_18);
  *(undefined4 *)(this + 0x38) = uVar2;
  FUN_007c5914(&local_18);
  FUN_0079a3fc(auStack_40);
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x38));
  pfVar6 = (float *)(**(code **)(**(int **)(this + 0x30) + 0x1ac))(*(undefined4 *)(this + 0x30));
  fVar10 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x48),(byte)(in_fpscr >> 0x16) & 3);
  *(int *)(this + 0x50) = (int)(*pfVar6 / fVar10 + 0.5);
  iVar5 = (**(code **)(**(int **)(this + 0x30) + 0x1ac))(*(undefined4 *)(this + 0x30));
  fVar10 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x48),(byte)(in_fpscr >> 0x16) & 3);
  *(int *)(this + 0x54) = (int)(*(float *)(iVar5 + 4) / fVar10 + 0.5);
  uVar2 = cocos2d::CCArray::createWithCapacity(*(int *)(this + 0x54) * *(int *)(this + 0x50));
  *(undefined4 *)(this + 0x1c) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x1c));
  pcVar4 = (char *)FUN_007c5300(param_2);
  local_1c = (CCTMXMapInfo *)cocos2d::CCTMXMapInfo::formatWithTMXFile(pcVar4);
  local_3c = (CCTMXLayerInfo *)0x0;
  pCVar7 = (CCArray *)(**(code **)(*(int *)local_1c + 0x30))(local_1c);
  local_38 = cocos2d::CCArray::count(pCVar7);
  for (local_34 = 0; (int)local_34 < local_38; local_34 = local_34 + 1) {
    pCVar7 = (CCArray *)(**(code **)(*(int *)local_1c + 0x30))(local_1c);
    local_3c = (CCTMXLayerInfo *)cocos2d::CCArray::objectAtIndex(pCVar7,local_34);
    FUN_0079a3f4(auStack_40);
    FUN_007c6a60(&local_18,"title",auStack_40);
    FUN_0079a3fc(auStack_40);
    iVar5 = FUN_007c567c(&local_18,local_3c + 0x18);
    if (iVar5 == 0) {
      if (DEBUG_MODE != '\0') {
        local_3c[0x29] = (CCTMXLayerInfo)0x64;
      }
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    FUN_007c5914(&local_18);
    if (!bVar1) break;
  }
  for (local_30 = 0; local_30 < *(int *)(this + 0x54); local_30 = local_30 + 1) {
    for (local_2c = 0; local_2c < *(int *)(this + 0x50); local_2c = local_2c + 1) {
      createMapArea(this,local_3c,local_1c,local_2c,local_30,local_38,local_20);
      local_38 = local_38 + 1;
    }
  }
  pCVar8 = (CCSize *)(**(code **)(**(int **)(this + 0x30) + 0x1ac))(*(undefined4 *)(this + 0x30));
  cocos2d::CCSize::CCSize((CCSize *)&local_18,pCVar8);
  for (local_28 = 0; local_28 < (int)local_14; local_28 = local_28 + 1) {
    for (local_24 = 0; local_24 < (int)local_18; local_24 = local_24 + 1) {
      addStaticBodyShape(this,local_24,local_28);
    }
  }
  return;
}

// ---- MapManager::loadSpritesFromLayer  @ 0x36fd88
/* MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int) */

void __thiscall
MapManager::loadSpritesFromLayer
          (MapManager *this,undefined4 param_2,int *param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  char *pcVar3;
  uint uVar4;
  code *pcVar5;
  float extraout_s0;
  float extraout_s1;
  undefined1 auStack_38 [4];
  uint local_34;
  CCArray *local_30;
  int local_2c;
  CCString *local_28;
  CCObject *local_24;
  CCPoint aCStack_20 [8];
  CCDictionary local_18 [16];
  
  uVar2 = FUN_007c5300(param_2);
  FUN_0079a3f4(aCStack_20);
  FUN_007c6a60(local_18,uVar2,aCStack_20);
  local_30 = (CCArray *)objectsNamed(this,local_18);
  FUN_007c5914(local_18);
  FUN_0079a3fc(aCStack_20);
  for (local_34 = 0; uVar1 = local_34, uVar4 = cocos2d::CCArray::count(local_30), uVar1 < uVar4;
      local_34 = local_34 + 1) {
    local_2c = cocos2d::CCArray::objectAtIndex(local_30,local_34);
    if (local_2c != 0) {
      FUN_0079a3f4(aCStack_20);
      FUN_007c6a60(local_18,"sprite",aCStack_20);
      objectProperty(auStack_38,this,local_2c,local_18);
      FUN_007c5914(local_18);
      FUN_0079a3fc(aCStack_20);
      uVar2 = FUN_007c5300(auStack_38);
      local_28 = (CCString *)cocos2d::CCString::createWithFormat("%s%s",uVar2,&DAT_007dcd08);
      objectLocation(local_18);
      pcVar3 = (char *)cocos2d::CCString::getCString(local_28);
      local_24 = (CCObject *)cocos2d::CCSprite::createWithSpriteFrameName(pcVar3);
      pcVar5 = *(code **)(*(int *)local_24 + 0x4c);
      cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0,extraout_s1);
      (*pcVar5)(local_24,aCStack_20);
      (**(code **)(*param_3 + 0xcc))(param_3,local_24,param_4);
      cocos2d::CCArray::addObject(*(CCArray **)(this + 0x3c),local_24);
      FUN_007c5914(auStack_38);
    }
  }
  cocos2d::CCObject::release((CCObject *)local_30);
  return;
}

// ---- MapManager::getMap  @ 0x36ff24
/* MapManager::getMap() */

undefined4 __thiscall MapManager::getMap(MapManager *this)

{
  return *(undefined4 *)(this + 0x14);
}

// ---- MapManager::addToLayer  @ 0x36ff34
/* MapManager::addToLayer(cocos2d::CCLayer*, int, int) */

void __thiscall MapManager::addToLayer(MapManager *this,CCLayer *param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"spritebg",auStack_18);
  loadSpritesFromLayer(this,auStack_14,param_1,param_2 + -1);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  pcVar2 = *(code **)(*(int *)param_1 + 0xd0);
  uVar1 = getMap(this);
  (*pcVar2)(param_1,uVar1,param_2,1);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"spritemg",auStack_18);
  loadSpritesFromLayer(this,auStack_14,param_1,param_2);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"spritefg",auStack_18);
  loadSpritesFromLayer(this,auStack_14,param_1,param_3);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  return;
}

// ---- MapManager::isCollisionTile  @ 0x37005c
/* MapManager::isCollisionTile(cpVect) */

undefined4
MapManager::isCollisionTile
          (float param_1,float param_2,int param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,double param_7)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  CCTMXLayer *this;
  uint in_fpscr;
  double dVar4;
  CCPoint aCStack_18 [8];
  
  if ((((0.0 < (double)CONCAT44(param_6,param_5)) &&
       (uVar1 = in_fpscr & 0xfffffff | (uint)(param_7 < 0.0) << 0x1f |
                (uint)(param_7 == 0.0) << 0x1e, bVar2 = (byte)(uVar1 >> 0x18),
       !(bool)(bVar2 >> 6 & 1) && (bool)(bVar2 >> 7) == NAN(param_7))) &&
      (dVar4 = (double)VectorSignedToFloat(*(undefined4 *)(param_3 + 0x40),(byte)(uVar1 >> 0x16) & 3
                                          ), (double)CONCAT44(param_6,param_5) < dVar4)) &&
     (dVar4 = (double)VectorSignedToFloat(*(undefined4 *)(param_3 + 0x44),
                                          (byte)((in_fpscr & 0xfffffff) >> 0x16) & 3),
     (int)((uint)(param_7 < dVar4) << 0x1f) < 0)) {
    this = *(CCTMXLayer **)(param_3 + 0x30);
    cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
    iVar3 = cocos2d::CCTMXLayer::tileGIDAt(this,aCStack_18);
    if (iVar3 < *(int *)(param_3 + 0x4c)) {
      return 1;
    }
  }
  return 0;
}

// ---- MapManager::keyByPosition  @ 0x370108
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00370164 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapManager::keyByPosition(cpVect) */

undefined4
MapManager::keyByPosition
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,int param_8,undefined4 param_9,
          undefined4 param_10,undefined4 param_11)

{
  float *pfVar1;
  int iVar2;
  uint in_fpscr;
  undefined8 uVar3;
  float fVar6;
  double dVar4;
  undefined8 uVar5;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  int local_38;
  undefined4 local_34;
  undefined4 local_30 [2];
  undefined4 local_28;
  
  local_38 = param_8;
  local_34 = param_7;
  pfVar1 = (float *)(**(code **)(**(int **)(param_8 + 0x14) + 0x50))
                              (*(undefined4 *)(param_8 + 0x14));
  fVar6 = *pfVar1;
  iVar2 = (**(code **)(**(int **)(local_38 + 0x14) + 0x50))(*(undefined4 *)(local_38 + 0x14));
  FUN_0036da80(SUB84((double)fVar6,0),param_2,SUB84((double)*(float *)(iVar2 + 4),0),local_30);
  FUN_0036db00(param_9,param_2,param_11,param_4,local_30[0],param_6,local_28,&local_48);
  dVar4 = (double)VectorSignedToFloat(tileSize,(byte)(in_fpscr >> 0x16) & 3);
  uVar3 = VectorSignedToFloat((int)(longlong)((double)CONCAT44(uStack_44,local_48) / dVar4),
                              (byte)(in_fpscr >> 0x16) & 3);
  dVar4 = (double)VectorSignedToFloat(tileSize,(byte)(in_fpscr >> 0x16) & 3);
  uVar5 = VectorSignedToFloat(*(int *)(local_38 + 0x44) -
                              (int)(longlong)((double)CONCAT44(uStack_3c,uStack_40) / dVar4),
                              (byte)(in_fpscr >> 0x16) & 3);
  FUN_0036da80((int)uVar3,param_2,(int)uVar5,local_34);
  return local_34;
}

// ---- MapManager::getTileShapes  @ 0x37020c
/* MapManager::getTileShapes() */

undefined4 __thiscall MapManager::getTileShapes(MapManager *this)

{
  return *(undefined4 *)(this + 0x28);
}

// ---- MapManager::tileTypeAt  @ 0x37021c
/* MapManager::tileTypeAt(cpVect) */

undefined4
MapManager::tileTypeAt
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  uint uVar1;
  byte bVar2;
  int iVar3;
  CCInteger *this;
  undefined4 uVar4;
  CCTMXLayer *this_00;
  uint in_fpscr;
  undefined8 uVar5;
  double dVar6;
  CCPoint aCStack_28 [8];
  double local_20;
  double local_18;
  
  uVar5 = keyByPosition(&local_20,param_1,param_3,param_4,param_5,param_6);
  if ((((0.0 < local_20) &&
       (uVar1 = in_fpscr & 0xfffffff | (uint)(local_18 < 0.0) << 0x1f |
                (uint)(local_18 == 0.0) << 0x1e, bVar2 = (byte)(uVar1 >> 0x18),
       !(bool)(bVar2 >> 6 & 1) && (bool)(bVar2 >> 7) == NAN(local_18))) &&
      (dVar6 = (double)VectorSignedToFloat(*(undefined4 *)(param_1 + 0x40),(byte)(uVar1 >> 0x16) & 3
                                          ), local_20 < dVar6)) &&
     (dVar6 = (double)VectorSignedToFloat(*(undefined4 *)(param_1 + 0x44),
                                          (byte)((in_fpscr & 0xfffffff) >> 0x16) & 3),
     (int)((uint)(local_18 < dVar6) << 0x1f) < 0)) {
    this_00 = *(CCTMXLayer **)(param_1 + 0x30);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    iVar3 = cocos2d::CCTMXLayer::tileGIDAt(this_00,aCStack_28);
    if (iVar3 < *(int *)(param_1 + 0x4c)) {
      this = (CCInteger *)
             cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(param_1 + 0x24),iVar3);
      uVar4 = cocos2d::CCInteger::getValue(this);
      return uVar4;
    }
  }
  return 0;
}

// ---- MapManager::mapCollision  @ 0x3702fc
/* MapManager::mapCollision(cpVect) */

undefined4
MapManager::mapCollision
          (MapManager *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  bool bVar1;
  CCDictionary *this;
  undefined4 uVar2;
  int iVar3;
  CCTMXLayer *this_00;
  uint in_fpscr;
  undefined4 extraout_s0;
  undefined8 uVar4;
  undefined4 extraout_s1;
  undefined1 auStack_4c [4];
  int local_48;
  int local_44;
  CCString *local_40;
  int local_3c;
  int local_38;
  CCInteger *local_34;
  string asStack_30 [8];
  double local_28;
  double local_20;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  keyByPosition(&local_28,param_1,param_3,param_4,param_5,param_6);
  local_48 = (int)(longlong)local_28;
  local_44 = (int)(longlong)local_20;
  local_40 = (CCString *)
             cocos2d::CCString::createWithFormat
                       ("%d,%d",(int)(longlong)local_28,(int)(longlong)local_20);
  this = (CCDictionary *)getTileShapes(param_1);
  uVar2 = cocos2d::CCString::getCString(local_40);
  FUN_0079a3f4(auStack_4c);
  FUN_007c6a60(asStack_30,uVar2,auStack_4c);
  local_3c = cocos2d::CCDictionary::objectForKey(this,asStack_30);
  FUN_007c5914(asStack_30);
  uVar4 = FUN_0079a3fc(auStack_4c);
  if (local_3c != 0) {
    iVar3 = cpShapePointQuery(*(undefined4 *)(local_3c + 0x14),&local_8,local_8,uStack_4,param_5,
                              param_6);
    uVar4 = CONCAT44(extraout_s1,extraout_s0);
    if (iVar3 != 0) {
      bVar1 = true;
      goto LAB_003703da;
    }
  }
  bVar1 = false;
LAB_003703da:
  if (bVar1) {
    return 1;
  }
  if ((((0 < local_48) && (0 < local_44)) && (local_48 < *(int *)(param_1 + 0x40))) &&
     (local_44 < *(int *)(param_1 + 0x44))) {
    this_00 = *(CCTMXLayer **)(param_1 + 0x30);
    VectorSignedToFloat(local_48,(byte)(in_fpscr >> 0x16) & 3);
    VectorSignedToFloat(local_44,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint((CCPoint *)asStack_30,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    local_38 = cocos2d::CCTMXLayer::tileGIDAt(this_00,(CCPoint *)asStack_30);
    local_34 = (CCInteger *)
               cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(param_1 + 0x24),local_38);
    if (local_34 == (CCInteger *)0x0) {
      return 0;
    }
    iVar3 = cocos2d::CCInteger::getValue(local_34);
    if (iVar3 == 1) {
      return 1;
    }
  }
  return 0;
}

// ---- MapManager::createMapArea  @ 0x370498
/* MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int,
   cocos2d::CCTMXLayer*) */

void __thiscall
MapManager::createMapArea
          (MapManager *this,CCTMXLayerInfo *param_1,CCTMXMapInfo *param_2,int param_3,int param_4,
          int param_5,CCTMXLayer *param_6)

{
  uint uVar1;
  byte bVar2;
  uint *puVar3;
  CCTMXTilesetInfo *pCVar4;
  CCTMXLayer *this_00;
  CCString *this_01;
  char *pcVar5;
  int *piVar6;
  CCTextureAtlas *this_02;
  _ccCArray *p_Var7;
  CCTexture2D *this_03;
  int extraout_r1;
  int iVar8;
  uint uVar9;
  uint uVar10;
  int iVar11;
  int iVar12;
  void *pvVar13;
  uint in_fpscr;
  uint uVar14;
  float fVar15;
  float fVar16;
  uint uVar17;
  void *pvVar18;
  uint local_74;
  uint local_68;
  uint local_64;
  uint local_60;
  uint local_5c;
  float local_18;
  float local_14;
  
  uVar9 = param_3 * *(int *)(this + 0x48);
  uVar10 = param_4 * *(int *)(this + 0x48);
  cocos2d::CCSize::CCSize((CCSize *)&local_18,(CCSize *)(param_1 + 0x1c));
  fVar16 = (float)VectorSignedToFloat(uVar9,(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)VectorSignedToFloat(uVar10,(byte)(in_fpscr >> 0x16) & 3);
  fVar16 = fVar16 + fVar15 * local_18;
  uVar17 = (uint)(0.0 < fVar16) * (int)fVar16;
  fVar16 = (float)VectorSignedToFloat(uVar9 + *(int *)(this + 0x48),(byte)(in_fpscr >> 0x16) & 3);
  fVar15 = (float)VectorSignedToFloat(uVar10 + *(int *)(this + 0x48),(byte)(in_fpscr >> 0x16) & 3);
  fVar16 = fVar16 + fVar15 * local_18;
  pvVar18 = (void *)((uint)(0.0 < fVar16) * (int)fVar16);
  if (param_6 != (CCTMXLayer *)0x0) {
    for (local_74 = 0; puVar3 = (uint *)cocos2d::CCTMXLayer::getAtlasIndexArray(param_6),
        local_74 < *puVar3; local_74 = local_74 + 1) {
      iVar11 = cocos2d::CCTMXLayer::getAtlasIndexArray(param_6);
      if (uVar17 <= *(uint *)(local_74 * 4 + *(int *)(iVar11 + 8))) {
        local_68 = local_74;
        goto LAB_003705fa;
      }
    }
  }
LAB_00370636:
  local_64 = uVar10 & ~((int)uVar10 >> 0x1f);
  while( true ) {
    fVar16 = (float)VectorUnsignedToFloat(local_64,(byte)(in_fpscr >> 0x16) & 3);
    fVar15 = (float)VectorSignedToFloat(uVar10 + *(int *)(this + 0x48),(byte)(in_fpscr >> 0x16) & 3)
    ;
    in_fpscr = in_fpscr & 0xfffffff;
    uVar1 = in_fpscr | (uint)(local_14 < fVar15) << 0x1f | (uint)(local_14 == fVar15) << 0x1e;
    uVar14 = uVar1 | (uint)(NAN(local_14) || NAN(fVar15)) << 0x1c;
    bVar2 = (byte)(uVar1 >> 0x18);
    fVar15 = local_14;
    if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar14 >> 0x1c) & 1)) {
      fVar15 = (float)VectorSignedToFloat(uVar10 + *(int *)(this + 0x48),(byte)(uVar14 >> 0x16) & 3)
      ;
    }
    if (fVar15 <= fVar16) break;
    local_60 = uVar9 & ~((int)uVar9 >> 0x1f);
    while( true ) {
      fVar16 = (float)VectorUnsignedToFloat(local_60,(byte)(in_fpscr >> 0x16) & 3);
      fVar15 = (float)VectorSignedToFloat(uVar9 + *(int *)(this + 0x48),(byte)(in_fpscr >> 0x16) & 3
                                         );
      in_fpscr = in_fpscr & 0xfffffff;
      uVar1 = in_fpscr | (uint)(local_18 < fVar15) << 0x1f | (uint)(local_18 == fVar15) << 0x1e;
      uVar14 = uVar1 | (uint)(NAN(local_18) || NAN(fVar15)) << 0x1c;
      bVar2 = (byte)(uVar1 >> 0x18);
      fVar15 = local_18;
      if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar14 >> 0x1c) & 1)) {
        fVar15 = (float)VectorSignedToFloat(uVar9 + *(int *)(this + 0x48),(byte)(uVar14 >> 0x16) & 3
                                           );
      }
      if (fVar15 <= fVar16) break;
      VectorUnsignedToFloat(local_60,(byte)(in_fpscr >> 0x16) & 3);
      VectorUnsignedToFloat(local_64,(byte)(in_fpscr >> 0x16) & 3);
      (**(code **)(**(int **)(this + 0x30) + 0x1bc))(*(undefined4 *)(this + 0x30));
      local_60 = local_60 + 1;
    }
    local_64 = local_64 + 1;
  }
  pCVar4 = (CCTMXTilesetInfo *)
           cocos2d::CCTMXTiledMap::tilesetForLayer(*(CCTMXTiledMap **)(this + 0x14),param_1,param_2)
  ;
  this_00 = (CCTMXLayer *)cocos2d::CCTMXLayer::create(pCVar4,param_1,param_2);
  this_01 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",param_3,param_4);
  pcVar5 = (char *)cocos2d::CCString::getCString(this_01);
  cocos2d::CCTMXLayer::setLayerName(this_00,pcVar5);
  cocos2d::CCTMXLayer::setOwnTiles(this_00,false);
  iVar11 = *(int *)(this + 0x48) * param_3;
  iVar12 = *(int *)(this + 0x48) * param_4;
  if (param_6 != (CCTMXLayer *)0x0) {
    for (local_74 = 0; puVar3 = (uint *)cocos2d::CCTMXLayer::getAtlasIndexArray(param_6),
        local_74 < *puVar3; local_74 = local_74 + 1) {
      iVar8 = cocos2d::CCTMXLayer::getAtlasIndexArray(param_6);
      if (uVar17 <= *(uint *)(local_74 * 4 + *(int *)(iVar8 + 8))) {
        local_5c = local_74;
        goto LAB_003708ce;
      }
    }
  }
LAB_0037090e:
  iVar8 = iVar12 + *(int *)(this + 0x48);
  cocos2d::CCTMXLayer::setupTileArea((int)this_00,iVar11,iVar12,iVar11 + *(int *)(this + 0x48));
  this_03 = (CCTexture2D *)(**(code **)(*(int *)this_00 + 0x19c))(this_00);
  cocos2d::CCTexture2D::setAntiAliasTexParameters(this_03);
  (**(code **)(**(int **)(this + 0x14) + 0xd0))
            (*(undefined4 *)(this + 0x14),this_00,param_5,param_5,iVar8);
  (**(code **)(*(int *)this_00 + 0x90))(this_00,0);
  cocos2d::CCArray::addObject(*(CCArray **)(this + 0x1c),(CCObject *)this_00);
  return;
LAB_003705fa:
  puVar3 = (uint *)cocos2d::CCTMXLayer::getAtlasIndexArray(param_6);
  if (*puVar3 <= local_68) goto LAB_00370636;
  iVar11 = cocos2d::CCTMXLayer::getAtlasIndexArray(param_6);
  pvVar13 = *(void **)(local_68 * 4 + *(int *)(iVar11 + 8));
  if (pvVar18 <= pvVar13) goto LAB_00370636;
  __aeabi_uidivmod(pvVar13,(int)local_18);
  VectorUnsignedToFloat(pvVar13,(byte)(in_fpscr >> 0x16) & 3);
  local_68 = local_68 + 1;
  goto LAB_003705fa;
LAB_003708ce:
  puVar3 = (uint *)cocos2d::CCTMXLayer::getAtlasIndexArray(param_6);
  if (*puVar3 <= local_5c) goto LAB_0037090e;
  iVar8 = cocos2d::CCTMXLayer::getAtlasIndexArray(param_6);
  pvVar13 = *(void **)(local_5c * 4 + *(int *)(iVar8 + 8));
  if (pvVar18 <= pvVar13) goto LAB_0037090e;
  __aeabi_uidivmod(pvVar13,(int)local_18);
  fVar15 = (float)VectorUnsignedToFloat(pvVar13,(byte)(in_fpscr >> 0x16) & 3);
  if ((((iVar11 <= extraout_r1) && (extraout_r1 < *(int *)(this + 0x48) + iVar11)) &&
      (iVar12 <= (int)(fVar15 / local_18))) &&
     ((int)(fVar15 / local_18) < *(int *)(this + 0x48) + iVar12)) {
    piVar6 = (int *)cocos2d::CCSpriteBatchNode::getTextureAtlas((CCSpriteBatchNode *)param_6);
    iVar8 = (**(code **)(*piVar6 + 0x28))(piVar6);
    piVar6 = (int *)cocos2d::CCSpriteBatchNode::getTextureAtlas((CCSpriteBatchNode *)this_00);
    uVar9 = (**(code **)(*piVar6 + 0x18))(piVar6);
    this_02 = (CCTextureAtlas *)
              cocos2d::CCSpriteBatchNode::getTextureAtlas((CCSpriteBatchNode *)this_00);
    cocos2d::CCTextureAtlas::insertQuad
              (this_02,(_ccV3F_C4B_T2F_Quad *)(local_5c * 0x60 + iVar8),uVar9);
    p_Var7 = (_ccCArray *)cocos2d::CCTMXLayer::getAtlasIndexArray(this_00);
    puVar3 = (uint *)cocos2d::CCTMXLayer::getAtlasIndexArray(this_00);
    cocos2d::ccCArrayInsertValueAtIndex(p_Var7,pvVar13,*puVar3);
  }
  local_5c = local_5c + 1;
  goto LAB_003708ce;
}

// ---- MapManager::updateVisibleTiles  @ 0x370980
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00370a18 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapManager::updateVisibleTiles(cpVect) */

void MapManager::updateVisibleTiles
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  uint uVar1;
  float *pfVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  code *pcVar6;
  uint in_fpscr;
  double dVar7;
  float fVar10;
  undefined8 uVar8;
  double dVar9;
  undefined8 uVar11;
  undefined4 local_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  int local_c4;
  uint local_c0;
  uint local_bc;
  int local_b8;
  int local_b4;
  CCSprite *local_b0;
  int local_ac;
  int local_a8;
  int *local_a4;
  float local_a0;
  float local_9c;
  uint local_98;
  CCObject *local_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined1 local_70 [16];
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  
  local_c4 = param_7;
  for (local_c0 = 0; uVar1 = local_c0,
      uVar4 = cocos2d::CCArray::count(*(CCArray **)(local_c4 + 0x3c)), uVar1 < uVar4;
      local_c0 = local_c0 + 1) {
    local_b0 = (CCSprite *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_c4 + 0x3c),local_c0);
    iVar5 = cocos2d::CCSprite::getTextureRect(local_b0);
    local_ac = (int)*(float *)(iVar5 + 8);
    iVar5 = cocos2d::CCSprite::getTextureRect(local_b0);
    local_a8 = (int)*(float *)(iVar5 + 0xc);
    pfVar2 = (float *)(**(code **)(*(int *)local_b0 + 0x50))(local_b0);
    fVar10 = *pfVar2;
    iVar5 = (**(code **)(*(int *)local_b0 + 0x50))(local_b0);
    FUN_0036da80(SUB84((double)fVar10,0),param_2,SUB84((double)*(float *)(iVar5 + 4),0),&local_30);
    pcVar6 = *(code **)(*(int *)local_b0 + 0x90);
    uVar8 = VectorSignedToFloat(local_ac,(byte)(in_fpscr >> 0x16) & 3);
    uVar11 = VectorSignedToFloat(local_a8,(byte)(in_fpscr >> 0x16) & 3);
    FUN_0036da80((int)uVar8,param_2,(int)uVar11,local_70);
    uVar3 = FUN_0036de98(local_30,uStack_2c,local_28,uStack_24);
    (*pcVar6)(local_b0,uVar3);
  }
  local_bc = 0;
  while( true ) {
    uVar1 = local_bc;
    uVar4 = cocos2d::CCArray::count(*(CCArray **)(local_c4 + 0x20));
    if (uVar4 <= uVar1) break;
    local_a4 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_c4 + 0x20),local_bc);
    (**(code **)(*local_a4 + 0x90))(local_a4,0);
    local_bc = local_bc + 1;
  }
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(local_c4 + 0x20));
  local_a0 = (float)(**(code **)(*hostSoldier + 0x2c8))(hostSoldier);
  local_9c = (float)VectorSignedToFloat(tileSize * *(int *)(local_c4 + 0x48),
                                        (byte)(in_fpscr >> 0x16) & 3);
  FUN_0036da80(SUB84((double)(float)screenSize,0),param_2,SUB84((double)screenSize._4_4_,0),local_60
              );
  FUN_0036da80(SUB84((double)(2.0 / local_a0),0),param_2,SUB84((double)(2.0 / local_a0),0),local_50)
  ;
  FUN_0036daa8(local_60[0],param_2,local_58,param_4,local_50[0],param_6,local_48,&local_90);
  FUN_0036db58(local_90,param_2,local_88,param_4,SUB84((double)(1.0 / local_a0),0),&local_d8);
  local_90 = local_d8;
  uStack_8c = uStack_d4;
  local_88 = uStack_d0;
  uStack_84 = uStack_cc;
  FUN_0036da80(SUB84((double)(1.0 / local_a0),0),param_2,SUB84((double)(1.0 / local_a0),0),local_40)
  ;
  FUN_0036db00(param_9,param_2,param_11,param_4,local_40[0],param_6,local_38,&local_80);
  FUN_0036da80(SUB84((double)CONCAT44(uStack_8c,local_90) * 0.5 * (double)(1.0 - local_a0),0),
               param_2,SUB84((double)CONCAT44(uStack_84,local_88) * 0.5 * (double)(1.0 - local_a0),0
                            ),&local_30);
  FUN_0036db00(local_80,param_2,local_78,param_4,local_30,param_6,local_28,&local_d8);
  local_80 = local_d8;
  uStack_7c = uStack_d4;
  local_78 = uStack_d0;
  uStack_74 = uStack_cc;
  uVar11 = VectorSignedToFloat((int)(longlong)
                                    ((double)CONCAT44(uStack_d4,local_d8) / (double)local_9c),
                               (byte)(in_fpscr >> 0x16) & 3);
  iVar5 = (**(code **)(**(int **)(local_c4 + 0x14) + 0x8c))(*(undefined4 *)(local_c4 + 0x14));
  uVar8 = VectorSignedToFloat((int)(longlong)
                                   (((double)*(float *)(iVar5 + 4) -
                                    (double)CONCAT44(uStack_74,local_78)) / (double)local_9c),
                              (byte)(in_fpscr >> 0x16) & 3);
  FUN_0036da80((int)uVar11,param_2,(int)uVar8,&local_d8);
  local_80 = local_d8;
  uStack_7c = uStack_d4;
  local_78 = uStack_d0;
  uStack_74 = uStack_cc;
  local_b8 = 0;
  while( true ) {
    dVar7 = (double)VectorSignedToFloat(local_b8,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = (double)CONCAT44(uStack_84,local_88) / (double)local_9c + 1.0;
    in_fpscr = in_fpscr & 0xfffffff | (uint)(dVar7 < dVar9) << 0x1f | (uint)(dVar7 == dVar9) << 0x1e
               | (uint)(dVar9 <= dVar7) << 0x1d;
    if (-1 < (int)in_fpscr) break;
    local_b4 = 0;
    while( true ) {
      dVar7 = (double)VectorSignedToFloat(local_b4,(byte)(in_fpscr >> 0x16) & 3);
      dVar9 = (double)CONCAT44(uStack_8c,local_90) / (double)local_9c + 1.0;
      in_fpscr = in_fpscr & 0xfffffff | (uint)(dVar7 < dVar9) << 0x1f |
                 (uint)(dVar7 == dVar9) << 0x1e | (uint)(dVar9 <= dVar7) << 0x1d;
      if (-1 < (int)in_fpscr) break;
      local_98 = *(int *)(local_c4 + 0x50) *
                 ((int)(longlong)(double)CONCAT44(uStack_74,local_78) - local_b8) +
                 (int)(longlong)(double)CONCAT44(uStack_7c,local_80) + local_b4;
      if (((-1 < (int)local_98) &&
          (iVar5 = *(int *)(local_c4 + 0x54) * *(int *)(local_c4 + 0x50),
          iVar5 - local_98 != 0 && (int)local_98 <= iVar5)) &&
         (local_94 = (CCObject *)
                     cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_c4 + 0x1c),local_98),
         local_94 != (CCObject *)0x0)) {
        (**(code **)(*(int *)local_94 + 0x90))(local_94,1);
        cocos2d::CCArray::addObject(*(CCArray **)(local_c4 + 0x20),local_94);
      }
      local_b4 = local_b4 + 1;
    }
    local_b8 = local_b8 + 1;
  }
  return;
}

// ---- MapManager::isBoundryTile  @ 0x370e10
/* MapManager::isBoundryTile(cpVect) */

undefined4
MapManager::isBoundryTile
          (float param_1,float param_2,int param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,double param_7)

{
  uint uVar1;
  byte bVar2;
  bool bVar3;
  int iVar4;
  CCInteger *this;
  CCTMXLayer *this_00;
  CCDictionary *this_01;
  uint in_fpscr;
  double dVar5;
  CCPoint aCStack_18 [8];
  
  if ((double)CONCAT44(param_6,param_5) <= 0.0) {
    return 0;
  }
  uVar1 = in_fpscr & 0xfffffff | (uint)(param_7 < 0.0) << 0x1f | (uint)(param_7 == 0.0) << 0x1e;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || (bool)(bVar2 >> 7) != NAN(param_7)) {
    return 0;
  }
  dVar5 = (double)VectorSignedToFloat(*(undefined4 *)(param_3 + 0x40),(byte)(uVar1 >> 0x16) & 3);
  if (dVar5 <= (double)CONCAT44(param_6,param_5)) {
    return 0;
  }
  dVar5 = (double)VectorSignedToFloat(*(undefined4 *)(param_3 + 0x44),
                                      (byte)((in_fpscr & 0xfffffff) >> 0x16) & 3);
  if (-1 < (int)((uint)(param_7 < dVar5) << 0x1f)) {
    return 0;
  }
  this_00 = *(CCTMXLayer **)(param_3 + 0x30);
  cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
  iVar4 = cocos2d::CCTMXLayer::tileGIDAt(this_00,aCStack_18);
  this = (CCInteger *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(param_3 + 0x24),iVar4);
  if (this != (CCInteger *)0x0) {
    this_01 = *(CCDictionary **)(param_3 + 0x2c);
    iVar4 = cocos2d::CCInteger::getValue(this);
    iVar4 = cocos2d::CCDictionary::objectForKey(this_01,iVar4);
    if (iVar4 != 0) {
      bVar3 = true;
      goto LAB_00370ed6;
    }
  }
  bVar3 = false;
LAB_00370ed6:
  if (!bVar3) {
    return 0;
  }
  return 1;
}

// ---- MapManager::addStaticBodyShape  @ 0x370ef0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00370fe6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapManager::addStaticBodyShape(int, int) */

void __thiscall MapManager::addStaticBodyShape(MapManager *this,int param_1,int param_2)

{
  int iVar1;
  float *pfVar2;
  MapStaticShape *pMVar3;
  CCString *pCVar4;
  undefined4 uVar5;
  bool bVar6;
  CCTMXLayer *this_00;
  CCDictionary *pCVar7;
  uint in_fpscr;
  undefined8 in_d0;
  float fVar8;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined8 uVar9;
  float fVar10;
  undefined8 uVar11;
  float fVar12;
  undefined4 local_148;
  undefined4 uStack_144;
  undefined4 uStack_140;
  undefined4 uStack_13c;
  int local_134;
  int local_130;
  MapManager *local_12c;
  undefined1 auStack_128 [4];
  string asStack_124 [4];
  undefined4 local_120;
  int local_11c;
  int local_118;
  int local_114;
  CCInteger *local_110;
  int local_10c;
  float local_108;
  MapStaticShape *local_104;
  undefined4 local_100;
  undefined4 uStack_fc;
  undefined4 local_f8;
  undefined4 uStack_f4;
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e4;
  undefined4 local_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d4;
  undefined4 local_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c4;
  undefined4 local_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b4;
  undefined4 local_b0 [2];
  undefined4 local_a8;
  undefined4 local_a0 [2];
  undefined4 local_98;
  undefined4 local_90 [2];
  undefined4 local_88;
  CCPoint aCStack_80 [16];
  undefined1 auStack_70 [16];
  undefined1 auStack_60 [16];
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [20];
  
  fVar8 = (float)((ulonglong)in_d0 >> 0x20);
  local_120 = 0;
  local_110 = (CCInteger *)0x0;
  local_134 = param_2;
  local_130 = param_1;
  local_12c = this;
  local_118 = param_1;
  local_114 = param_2;
  if ((((0 < param_1) && (0 < param_2)) && (param_1 < *(int *)(this + 0x40))) &&
     (param_2 < *(int *)(this + 0x44))) {
    this_00 = *(CCTMXLayer **)(this + 0x30);
    VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
    VectorSignedToFloat(param_2,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint(aCStack_80,(float)in_d0,fVar8);
    local_10c = cocos2d::CCTMXLayer::tileGIDAt(this_00,aCStack_80);
    if (*(int *)(local_12c + 0x4c) <= local_10c) {
      return;
    }
    local_110 = (CCInteger *)
                cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(local_12c + 0x24),local_10c);
    if (local_110 == (CCInteger *)0x0) {
      local_120 = 0;
    }
    else {
      local_120 = cocos2d::CCInteger::getValue(local_110);
    }
  }
  uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
  uVar11 = VectorSignedToFloat(local_134 + 1,(byte)(in_fpscr >> 0x16) & 3);
  FUN_0036da80((int)uVar9,fVar8,(int)uVar11,&local_f0);
  iVar1 = isBoundryTile(local_12c,uStack_e4,local_f0,uStack_ec);
  if (iVar1 == 0) {
LAB_003710e4:
    bVar6 = false;
  }
  else {
    uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
    uVar11 = VectorSignedToFloat(local_134 + -1,(byte)(in_fpscr >> 0x16) & 3);
    FUN_0036da80((int)uVar9,fVar8,(int)uVar11,&local_e0);
    iVar1 = isBoundryTile(local_12c,uStack_d4,local_e0,uStack_dc);
    if (iVar1 == 0) goto LAB_003710e4;
    uVar9 = VectorSignedToFloat(local_130 + 1,(byte)(in_fpscr >> 0x16) & 3);
    uVar11 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
    FUN_0036da80((int)uVar9,fVar8,(int)uVar11,&local_d0);
    iVar1 = isBoundryTile(local_12c,uStack_c4,local_d0,uStack_cc);
    if (iVar1 == 0) goto LAB_003710e4;
    uVar9 = VectorSignedToFloat(local_130 + -1,(byte)(in_fpscr >> 0x16) & 3);
    uVar11 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
    FUN_0036da80((int)uVar9,fVar8,(int)uVar11,&local_c0);
    iVar1 = isBoundryTile(local_12c,uStack_b4,local_c0,uStack_bc);
    if (iVar1 == 0) goto LAB_003710e4;
    bVar6 = true;
  }
  if (!bVar6) {
    local_108 = (float)VectorSignedToFloat(tileSize / 2,(byte)(in_fpscr >> 0x16) & 3);
    uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
    uVar11 = VectorSignedToFloat(*(int *)(local_12c + 0x44) - local_134,(byte)(in_fpscr >> 0x16) & 3
                                );
    FUN_0036da80((int)uVar9,fVar8,(int)uVar11,local_b0);
    uVar9 = VectorSignedToFloat(tileSize,(byte)(in_fpscr >> 0x16) & 3);
    FUN_0036db58(local_b0[0],fVar8,local_a8,in_s3,(int)uVar9,&local_100);
    FUN_0036da80(SUB84((double)local_108,0),fVar8,SUB84((double)local_108,0),local_a0);
    FUN_0036daa8(local_a0[0],fVar8,local_98,in_s3,local_100,in_s5,local_f8,&local_148);
    local_100 = local_148;
    uStack_fc = uStack_144;
    local_f8 = uStack_140;
    uStack_f4 = uStack_13c;
    pfVar2 = (float *)(**(code **)(**(int **)(local_12c + 0x14) + 0x50))
                                (*(undefined4 *)(local_12c + 0x14));
    fVar12 = *pfVar2;
    iVar1 = (**(code **)(**(int **)(local_12c + 0x14) + 0x50))(*(undefined4 *)(local_12c + 0x14));
    FUN_0036da80(SUB84((double)fVar12,0),fVar8,SUB84((double)*(float *)(iVar1 + 4),0),local_90);
    FUN_0036daa8(local_100,fVar8,local_f8,in_s3,local_90[0],in_s5,local_88,&local_148);
    local_100 = local_148;
    uStack_fc = uStack_144;
    local_f8 = uStack_140;
    uStack_f4 = uStack_13c;
    local_130 = (int)(longlong)(double)CONCAT44(uStack_144,local_148);
    local_134 = (int)(longlong)(double)CONCAT44(uStack_13c,uStack_140);
    switch(local_120) {
    case 1:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      break;
    case 2:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar11 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,(int)uVar11,aCStack_80);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 3:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar11 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,(int)uVar11,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 4:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar11 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,(int)uVar11,auStack_60);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 5:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),aCStack_80);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar11 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,(int)uVar11,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 6:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 7:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 8:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 9:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 10:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0xb:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0xc:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0xd:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0xe:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_50);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_40);
      local_11c = cpPolyShapeNew(staticBody,5,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0xf:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_50);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_40);
      local_11c = cpPolyShapeNew(staticBody,5,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x10:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_40);
      local_11c = cpPolyShapeNew(staticBody,5,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x11:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_50);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_40);
      local_11c = cpPolyShapeNew(staticBody,5,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x12:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x13:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x14:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),aCStack_80);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x15:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    default:
      goto LAB_003753d6;
    case 0x18:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x19:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x1a:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x1b:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x1c:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x1d:
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x1e:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x1f:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      local_11c = cpPolyShapeNew(staticBody,3,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x20:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar10 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(-local_108 / 2.0 + fVar10),0),fVar8,
                   SUB84((double)(fVar12 + local_108),0),auStack_60);
      fVar10 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(local_108 / 2.0 + fVar10),0),fVar8,
                   SUB84((double)(fVar12 + local_108),0),auStack_50);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_40);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_30);
      local_11c = cpPolyShapeNew(staticBody,6,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x21:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x22:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x23:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x24:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,(int)uVar9,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x25:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x26:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x27:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 - local_108),0),auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x28:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      uVar9 = VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,(int)uVar9,aCStack_80);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x29:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
      break;
    case 0x2a:
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 - local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,aCStack_80);
      uVar9 = VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar12 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80((int)uVar9,fVar8,SUB84((double)(fVar12 + local_108),0),auStack_70);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 + local_108),0)
                   ,auStack_60);
      fVar12 = (float)VectorSignedToFloat(local_130,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)VectorSignedToFloat(local_134,(byte)(in_fpscr >> 0x16) & 3);
      FUN_0036da80(SUB84((double)(fVar12 + local_108),0),fVar8,SUB84((double)(fVar10 - local_108),0)
                   ,auStack_50);
      local_11c = cpPolyShapeNew(staticBody,4,aCStack_80);
      pMVar3 = operator_new(0x18);
      MapStaticShape::MapStaticShape(pMVar3);
      local_104 = pMVar3;
      cocos2d::CCObject::autorelease((CCObject *)pMVar3);
      *(int *)(local_104 + 0x14) = local_11c;
      pCVar7 = *(CCDictionary **)(local_12c + 0x28);
      pCVar4 = (CCString *)cocos2d::CCString::createWithFormat("%d,%d",local_118,local_114);
      uVar5 = cocos2d::CCString::getCString(pCVar4);
      FUN_0079a3f4(auStack_128);
      FUN_007c6a60(asStack_124,uVar5,auStack_128);
      cocos2d::CCDictionary::setObject(pCVar7,(CCObject *)local_104,asStack_124);
      FUN_007c5914(asStack_124);
      FUN_0079a3fc(auStack_128);
    }
    *(undefined4 *)(local_11c + 0x54) = 0x143;
    *(undefined4 *)(local_11c + 0x5c) = 0x143;
    *(undefined4 *)(local_11c + 0x58) = 0x143;
    *(undefined4 *)(local_11c + 0x30) = 0xa0000000;
    *(undefined4 *)(local_11c + 0x34) = 0x3fe99999;
    *(undefined4 *)(local_11c + 0x38) = 0;
    *(undefined4 *)(local_11c + 0x3c) = 0x3fe00000;
    cpSpaceAddStaticShape(space,local_11c);
  }
LAB_003753d6:
  return;
}

// ---- MapManager::getPlayerSpawnPoints  @ 0x375408
/* MapManager::getPlayerSpawnPoints() */

undefined4 __thiscall MapManager::getPlayerSpawnPoints(MapManager *this)

{
  return *(undefined4 *)(this + 0x38);
}

// ---- MapManager::objectNamed  @ 0x375418
/* MapManager::objectNamed(std::string) */

undefined4 __thiscall MapManager::objectNamed(MapManager *this,undefined4 param_2)

{
  char *pcVar1;
  undefined4 uVar2;
  CCTMXObjectGroup *this_00;
  
  if (*(int *)(this + 0x34) == 0) {
    uVar2 = 0;
  }
  else {
    this_00 = *(CCTMXObjectGroup **)(this + 0x34);
    pcVar1 = (char *)FUN_007c5300(param_2);
    uVar2 = cocos2d::CCTMXObjectGroup::objectNamed(this_00,pcVar1);
  }
  return uVar2;
}

// ---- MapManager::objectsNamed  @ 0x375448
/* MapManager::objectsNamed(std::string) */

CCArray * __thiscall MapManager::objectsNamed(MapManager *this,undefined4 param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  uint local_1c;
  CCArray *local_18;
  CCArray *local_14;
  CCDictionary *local_10;
  CCString *local_c;
  
  if (*(int *)(this + 0x34) == 0) {
    local_18 = (CCArray *)cocos2d::CCArray::create();
  }
  else {
    local_18 = (CCArray *)cocos2d::CCArray::create();
    local_14 = (CCArray *)
               (**(code **)(**(int **)(this + 0x34) + 0x28))(*(undefined4 *)(this + 0x34));
    for (local_1c = 0; uVar1 = local_1c, uVar4 = cocos2d::CCArray::count(local_14), uVar1 < uVar4;
        local_1c = local_1c + 1) {
      local_10 = (CCDictionary *)cocos2d::CCArray::objectAtIndex(local_14,local_1c);
      FUN_0079a3f4(auStack_24);
      FUN_007c6a60(asStack_20,&DAT_007dcd3c,auStack_24);
      local_c = (CCString *)cocos2d::CCDictionary::valueForKey(local_10,asStack_20);
      FUN_007c5914(asStack_20);
      FUN_0079a3fc(auStack_24);
      uVar2 = cocos2d::CCString::getCString(local_c);
      FUN_0079a3f4(auStack_28);
      FUN_007c6a60(auStack_24,uVar2,auStack_28);
      FUN_007c64e8(asStack_20,param_2);
      iVar3 = hasPrefix(auStack_24,asStack_20);
      FUN_007c5914(asStack_20);
      FUN_007c5914(auStack_24);
      FUN_0079a3fc(auStack_28);
      if (iVar3 != 0) {
        cocos2d::CCArray::addObject(local_18,(CCObject *)local_10);
      }
    }
  }
  return local_18;
}

// ---- MapManager::objectProperty  @ 0x375588
/* MapManager::objectProperty(cocos2d::CCDictionary*, std::string) */

undefined4
MapManager::objectProperty
          (undefined4 param_1,undefined4 param_2,CCDictionary *param_3,string *param_4)

{
  bool bVar1;
  int iVar2;
  CCString *this;
  undefined4 uVar3;
  undefined1 auStack_c [4];
  
  if ((param_3 == (CCDictionary *)0x0) || (iVar2 = FUN_007c505c(param_4), iVar2 == 0)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(param_1,&DAT_007dcd44,auStack_c);
    FUN_0079a3fc(auStack_c);
  }
  else {
    this = (CCString *)cocos2d::CCDictionary::valueForKey(param_3,param_4);
    uVar3 = cocos2d::CCString::getCString(this);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(param_1,uVar3,auStack_c);
    FUN_0079a3fc(auStack_c);
  }
  return param_1;
}

// ---- MapManager::objectLocation  @ 0x375628
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003756e6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapManager::objectLocation(cocos2d::CCDictionary*) */

CCDictionary * MapManager::objectLocation(CCDictionary *param_1)

{
  CCString *pCVar1;
  CCDictionary *in_r2;
  undefined4 in_s1;
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  float local_10;
  float local_c;
  
  if (in_r2 == (CCDictionary *)0x0) {
    FUN_0036da80(0,in_s1,0,param_1);
  }
  else {
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(asStack_14,&DAT_007dcd48,auStack_18);
    pCVar1 = (CCString *)cocos2d::CCDictionary::valueForKey(in_r2,asStack_14);
    local_10 = (float)cocos2d::CCString::floatValue(pCVar1);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_18);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(asStack_14,&DAT_007dcd4c,auStack_18);
    pCVar1 = (CCString *)cocos2d::CCDictionary::valueForKey(in_r2,asStack_14);
    local_c = (float)cocos2d::CCString::floatValue(pCVar1);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_18);
    FUN_0036da80(SUB84((double)local_10,0),in_s1,SUB84((double)local_c,0),param_1);
  }
  return param_1;
}

// ---- MapManager::hasPrefix  @ 0x375730
/* MapManager::hasPrefix(std::string, std::string) */

bool MapManager::hasPrefix(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  int iVar2;
  undefined1 auStack_c [4];
  
  uVar1 = FUN_007c505c(param_2);
  FUN_007c6728(auStack_c,param_1,0,uVar1);
  iVar2 = FUN_007c567c(auStack_c,param_2);
  FUN_007c5914(auStack_c);
  return iVar2 == 0;
}
