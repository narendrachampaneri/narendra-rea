// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 28 functions

// ---- WeaponManager::WeaponManager  @ 0x429b24
/* WeaponManager::WeaponManager() */

WeaponManager * __thiscall WeaponManager::WeaponManager(WeaponManager *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091d740;
  init(this);
  return this;
}

// ---- WeaponManager::init  @ 0x429b64
/* WeaponManager::init() */

undefined4 __thiscall WeaponManager::init(WeaponManager *this)

{
  MapManager *pMVar1;
  uint uVar2;
  CCNotificationCenter *pCVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  uint local_58;
  CCArray *local_54;
  CCDictionary *local_50;
  CCObject *local_4c;
  code *local_48;
  undefined4 local_44;
  code *local_40;
  undefined4 local_3c;
  code *local_38;
  undefined4 local_34;
  code *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  code *local_20;
  undefined4 local_1c;
  code *local_18;
  undefined4 local_14;
  code *local_10;
  undefined4 local_c;
  
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 0x30) = 0;
  *(undefined4 *)(this + 0x34) = 0;
  *(undefined4 *)(this + 0x38) = 10;
  *(undefined4 *)(this + 0x3c) = 0xf;
  *(undefined4 *)(this + 0x40) = 0xf;
  this[0x44] = (WeaponManager)0x1;
  this[0x45] = (WeaponManager)0x1;
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_48 = (code *)0x42aaf9;
  local_44 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42aaf9,(char *)0x0,
             (CCObject *)"WeaponCreate");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_40 = (code *)0x42ab15;
  local_3c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42ab15,(char *)0x0,
             (CCObject *)"WeaponRemove");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_38 = (code *)0x42abb1;
  local_34 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42abb1,(char *)0x0,
             (CCObject *)"PeerWeaponCreated");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_30 = (code *)0x42ac31;
  local_2c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42ac31,(char *)0x0,
             (CCObject *)"PeerWeaponRemoved");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_28 = (code *)0x42b881;
  local_24 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42b881,(char *)0x0,
             (CCObject *)"WeaponPickUp");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_20 = (code *)0x42bae5;
  local_1c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42bae5,(char *)0x0,
             (CCObject *)"PeerWeaponUpdated");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_18 = (code *)0x42b981;
  local_14 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42b981,(char *)0x0,
             (CCObject *)"WeaponLockAllowed");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_10 = (code *)0x42ba49;
  local_c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,(CCObject *)this,(_func_void_CCObject_ptr *)0x42ba49,(char *)0x0,
             (CCObject *)"WeaponLockDenied");
  weapons = (CCObject *)cocos2d::CCDictionary::create();
  cocos2d::CCObject::retain(weapons);
  uVar4 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x14) = uVar4;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  uVar4 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x18) = uVar4;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x18));
  this[0x2c] = (WeaponManager)0x0;
  pMVar1 = mapManager;
  FUN_0079a3f4(auStack_60);
  FUN_007c6a60(auStack_5c,&DAT_007eb9ac,auStack_60);
  local_54 = (CCArray *)MapManager::objectsNamed(pMVar1,auStack_5c);
  FUN_007c5914(auStack_5c);
  FUN_0079a3fc(auStack_60);
  uVar4 = cocos2d::CCArray::create();
  *(undefined4 *)(this + 0x48) = uVar4;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x48));
  for (local_58 = 0; uVar2 = local_58, uVar5 = cocos2d::CCArray::count(local_54), uVar2 < uVar5;
      local_58 = local_58 + 1) {
    local_50 = (CCDictionary *)cocos2d::CCArray::objectAtIndex(local_54,local_58);
    local_4c = (CCObject *)cocos2d::CCDictionary::createWithDictionary(local_50);
    cocos2d::CCArray::addObject(*(CCArray **)(this + 0x48),local_4c);
  }
  return 1;
}

// ---- WeaponManager::~WeaponManager  @ 0x429e4c
/* WARNING: Removing unreachable block (ram,0x00429ea8) */
/* WeaponManager::~WeaponManager() */

WeaponManager * __thiscall WeaponManager::~WeaponManager(WeaponManager *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091d740;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::release(weapons);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x48));
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- WeaponManager::~WeaponManager  @ 0x429ec4
/* WeaponManager::~WeaponManager() */

WeaponManager * __thiscall WeaponManager::~WeaponManager(WeaponManager *this)

{
  ~WeaponManager(this);
  operator_delete(this);
  return this;
}

// ---- WeaponManager::removeAllWeaponsFromSpace  @ 0x429ee0
/* WeaponManager::removeAllWeaponsFromSpace() */

void __thiscall WeaponManager::removeAllWeaponsFromSpace(WeaponManager *this)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  CCDictElement *local_14;
  CCDictElement *local_10;
  
  cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(this + 0x18));
  cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(this + 0x14));
  if ((weapons == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(weapons), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_14 = *(CCDictElement **)(weapons + 0x14);
    if (*(int *)(weapons + 0x14) == 0) {
      local_10 = (CCDictElement *)0x0;
    }
    else {
      local_10 = *(CCDictElement **)(*(int *)(weapons + 0x14) + 0x110);
    }
    while (local_14 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_14);
      iVar2 = (**(code **)(*piVar3 + 0x1ec))(piVar3);
      if (iVar2 != 0) {
        (**(code **)(*piVar3 + 0x1c4))(piVar3);
        (**(code **)(*piVar3 + 0x1bc))(piVar3);
      }
      local_14 = local_10;
      if (local_10 == (CCDictElement *)0x0) {
        local_10 = (CCDictElement *)0x0;
      }
      else {
        local_10 = *(CCDictElement **)(local_10 + 0x110);
      }
    }
  }
  cocos2d::CCDictionary::removeAllObjects(weapons);
  return;
}

// ---- WeaponManager::updateStep  @ 0x429fc8
/* WeaponManager::updateStep(float) */

void __thiscall WeaponManager::updateStep(WeaponManager *this,float param_1)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  byte bVar4;
  Item *pIVar5;
  uint uVar6;
  NetworkManager *this_00;
  int iVar7;
  CCObject *pCVar8;
  undefined4 uVar9;
  float in_r1;
  uint uVar10;
  CCDictionary *pCVar11;
  code *pcVar12;
  uint in_fpscr;
  float fVar13;
  float extraout_s0;
  undefined8 uVar14;
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  string asStack_64 [4];
  string asStack_60 [4];
  float local_5c;
  Item *local_58;
  CCDictElement *local_54;
  CCDictElement *local_50;
  CCDictionary *local_4c;
  CCString *local_48;
  CCFloat *local_44;
  Item *local_40;
  CCArray *local_3c;
  CCString *local_38;
  int *local_34;
  CCPoint aCStack_30 [8];
  string local_28 [16];
  
  uVar6 = cocos2d::CCDictionary::count(weapons);
  if (*(uint *)(this + 0x38) < uVar6) {
    *(undefined4 *)(this + 0x40) = 8;
  }
  else {
    *(undefined4 *)(this + 0x40) = 0xf;
  }
  if (this[0x44] == (WeaponManager)0x0) {
LAB_0042a038:
    bVar1 = false;
  }
  else {
    this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar7 = NetworkManager::isHostLeader(this_00);
    if ((iVar7 == 0) || (iVar7 = cocos2d::CCArray::count(*(CCArray **)(this + 0x48)), iVar7 == 0))
    goto LAB_0042a038;
    bVar1 = true;
  }
  if (!bVar1) goto LAB_0042a320;
  *(int *)(this + 0x24) = *(int *)(this + 0x24) + 1;
  uVar10 = *(uint *)(this + 0x24);
  uVar6 = cocos2d::CCArray::count(*(CCArray **)(this + 0x48));
  if (uVar6 <= uVar10) {
    *(undefined4 *)(this + 0x24) = 0;
  }
  *(float *)(this + 0x30) = *(float *)(this + 0x30) + in_r1;
  local_4c = (CCDictionary *)
             cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x48),*(uint *)(this + 0x24));
  if (local_4c == (CCDictionary *)0x0) goto LAB_0042a320;
  FUN_0079a3f4(aCStack_30);
  FUN_007c6a60(local_28,"WeaponInstanceUUID",aCStack_30);
  local_48 = (CCString *)cocos2d::CCDictionary::objectForKey(local_4c,local_28);
  FUN_007c5914(local_28);
  fVar13 = (float)FUN_0079a3fc(aCStack_30);
  if (local_48 == (CCString *)0x0) {
    pCVar8 = (CCObject *)cocos2d::CCFloat::create(fVar13);
    FUN_0079a3f4(aCStack_30);
    FUN_007c6a60(local_28,"NextSpawnElapsed",aCStack_30);
    cocos2d::CCDictionary::setObject(local_4c,pCVar8,local_28);
    FUN_007c5914(local_28);
    fVar13 = (float)FUN_0079a3fc(aCStack_30);
  }
  pCVar11 = weapons;
  bVar2 = false;
  bVar1 = false;
  if (local_48 == (CCString *)0x0) {
LAB_0042a16a:
    bVar3 = false;
  }
  else {
    uVar9 = cocos2d::CCString::getCString(local_48);
    FUN_0079a3f4(auStack_6c);
    bVar2 = true;
    FUN_007c6a60(asStack_64,uVar9,auStack_6c);
    bVar1 = true;
    iVar7 = cocos2d::CCDictionary::objectForKey(pCVar11,asStack_64);
    fVar13 = extraout_s0;
    if (iVar7 == 0) goto LAB_0042a16a;
    bVar3 = true;
  }
  if (bVar1) {
    fVar13 = (float)FUN_007c5914(asStack_64);
  }
  if (bVar2) {
    fVar13 = (float)FUN_0079a3fc(auStack_6c);
  }
  if (bVar3) {
    setSpawnPeriod(this,local_4c,fVar13);
  }
  else {
    fVar13 = *(float *)(this + 0x30);
    uVar6 = in_fpscr & 0xfffffff | (uint)(fVar13 < 10.0) << 0x1f | (uint)(fVar13 == 10.0) << 0x1e;
    in_fpscr = uVar6 | (uint)NAN(fVar13) << 0x1c;
    bVar4 = (byte)(uVar6 >> 0x18);
    if (!(bool)(bVar4 >> 6 & 1) && bVar4 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1)) {
      local_5c = 0.0;
      FUN_0079a3f4(aCStack_30);
      FUN_007c6a60(local_28,"NextSpawnElapsed",aCStack_30);
      local_44 = (CCFloat *)cocos2d::CCDictionary::objectForKey(local_4c,local_28);
      FUN_007c5914(local_28);
      FUN_0079a3fc(aCStack_30);
      if (local_44 != (CCFloat *)0x0) {
        local_5c = (float)cocos2d::CCFloat::getValue(local_44);
      }
      uVar6 = in_fpscr & 0xfffffff | (uint)(*(float *)(this + 0x30) < local_5c) << 0x1f;
      in_fpscr = uVar6 | (uint)(NAN(*(float *)(this + 0x30)) || NAN(local_5c)) << 0x1c;
      if (((byte)(uVar6 >> 0x1f) == ((byte)(in_fpscr >> 0x1c) & 1)) &&
         (local_40 = (Item *)getWeaponForSpawnPoint(this,local_4c), local_40 != (Item *)0x0)) {
        pcVar12 = *(code **)(*(int *)local_40 + 0x200);
        (**(code **)(*hostSoldier + 0x1c0))(local_28,hostSoldier);
        (*pcVar12)(local_40,local_28);
        FUN_007c5914(local_28);
        uVar14 = MapManager::objectLocation((CCDictionary *)local_28);
        pIVar5 = local_40;
        pcVar12 = *(code **)(*(int *)local_40 + 0x4c);
        cocos2d::CCPoint::CCPoint(aCStack_30,(float)uVar14,(float)((ulonglong)uVar14 >> 0x20));
        (*pcVar12)(pIVar5,aCStack_30);
        addItem(this,local_40);
        (**(code **)(*(int *)local_40 + 0x1fc))(asStack_60,local_40);
        pCVar8 = (CCObject *)cocos2d::CCString::create(asStack_60);
        FUN_0079a3f4(auStack_68);
        FUN_007c6a60(aCStack_30,"WeaponInstanceUUID",auStack_68);
        cocos2d::CCDictionary::setObject(local_4c,pCVar8,(string *)aCStack_30);
        FUN_007c5914(aCStack_30);
        FUN_0079a3fc(auStack_68);
        fVar13 = (float)FUN_007c5914(asStack_60);
        setSpawnPeriod(this,local_4c,fVar13);
      }
    }
  }
LAB_0042a320:
  iVar7 = cocos2d::CCDictionary::count(weapons);
  if (iVar7 != 0) {
    *(int *)(this + 0x20) = *(int *)(this + 0x20) + 1;
    local_3c = (CCArray *)cocos2d::CCDictionary::allKeys(weapons);
    uVar10 = *(uint *)(this + 0x20);
    uVar6 = cocos2d::CCArray::count(local_3c);
    if (uVar6 <= uVar10) {
      *(undefined4 *)(this + 0x20) = 0;
    }
    local_38 = (CCString *)cocos2d::CCArray::objectAtIndex(local_3c,*(uint *)(this + 0x20));
    pCVar11 = weapons;
    uVar9 = cocos2d::CCString::getCString(local_38);
    FUN_0079a3f4(aCStack_30);
    FUN_007c6a60(local_28,uVar9,aCStack_30);
    local_58 = (Item *)cocos2d::CCDictionary::objectForKey(pCVar11,local_28);
    FUN_007c5914(local_28);
    FUN_0079a3fc(aCStack_30);
    if (local_58 != (Item *)0x0) {
      *(float *)(local_58 + 400) = *(float *)(local_58 + 400) + in_r1;
      if ((this[0x45] != (WeaponManager)0x0) &&
         (fVar13 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x40),
                                              (byte)(in_fpscr >> 0x16) & 3),
         fVar13 < *(float *)(local_58 + 400))) {
        *(undefined4 *)(local_58 + 400) = 0;
        removeItem(this,local_58);
        local_58 = (Item *)0x0;
      }
      if (((local_58 != (Item *)0x0) && (local_58[0xe6] != (Item)0x0)) &&
         ((int)((uint)(*(double *)(*(int *)(local_58 + 0xe8) + 0x30) < -500.0) << 0x1f) < 0)) {
        removeItem(this,local_58);
        local_58 = (Item *)0x0;
      }
      if ((local_58 == (Item *)0x0) ||
         (iVar7 = (**(code **)(*(int *)local_58 + 0x2a8))(local_58), iVar7 == 0)) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if ((bVar1) &&
         (*(float *)(local_58 + 0x138) = *(float *)(local_58 + 0x138) + in_r1,
         5.0 < *(float *)(local_58 + 0x138))) {
        (**(code **)(*(int *)local_58 + 0x2ac))(local_58,0);
        *(int *)(local_58 + 0x138) = 0;
      }
      if ((local_58 == (Item *)0x0) ||
         (iVar7 = (**(code **)(*(int *)local_58 + 0x19c))(local_58), iVar7 == 0)) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (bVar1) {
        weaponProximity((Weapon *)this);
      }
    }
  }
  local_54 = (CCDictElement *)0x0;
  local_50 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x18) == 0) ||
     (iVar7 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x18)), iVar7 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_54 = *(CCDictElement **)(*(int *)(this + 0x18) + 0x14);
    if (*(int *)(*(int *)(this + 0x18) + 0x14) == 0) {
      local_50 = (CCDictElement *)0x0;
    }
    else {
      local_50 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x18) + 0x14) + 0x110);
    }
    while (local_54 != (CCDictElement *)0x0) {
      local_34 = (int *)cocos2d::CCDictElement::getObject(local_54);
      (**(code **)(*local_34 + 600))(local_34,in_r1);
      fVar13 = (float)(**(code **)(*local_34 + 0x210))(local_34);
      if (5.0 < fVar13) {
        pCVar11 = *(CCDictionary **)(this + 0x18);
        (**(code **)(*local_34 + 0x1fc))(local_28,local_34);
        cocos2d::CCDictionary::removeObjectForKey(pCVar11,local_28);
        FUN_007c5914(local_28);
      }
      local_54 = local_50;
      if (local_50 == (CCDictElement *)0x0) {
        local_50 = (CCDictElement *)0x0;
      }
      else {
        local_50 = *(CCDictElement **)(local_50 + 0x110);
      }
    }
  }
  return;
}

// ---- WeaponManager::updateWeaponsStep  @ 0x42a6b0
/* WeaponManager::updateWeaponsStep(float) */

float __thiscall WeaponManager::updateWeaponsStep(WeaponManager *this,float param_1)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  CCNotificationCenter *pCVar4;
  float in_r1;
  CCDictionary *this_00;
  float extraout_s0;
  double dVar5;
  string asStack_18 [4];
  CCDictElement *local_14;
  CCDictElement *local_10;
  CCObject *local_c;
  
  local_14 = (CCDictElement *)0x0;
  local_10 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x14) == 0) ||
     (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x14)), param_1 = extraout_s0,
     iVar3 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_14 = *(CCDictElement **)(*(int *)(this + 0x14) + 0x14);
    if (*(int *)(*(int *)(this + 0x14) + 0x14) == 0) {
      local_10 = (CCDictElement *)0x0;
    }
    else {
      local_10 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x14) + 0x14) + 0x110);
    }
    while (local_14 != (CCDictElement *)0x0) {
      local_c = (CCObject *)cocos2d::CCDictElement::getObject(local_14);
      *(float *)(local_c + 0x11c) = *(float *)(local_c + 0x11c) + in_r1;
      iVar3 = *(int *)(local_c + 0xe8);
      dVar5 = (double)cpvlength(*(undefined4 *)(iVar3 + 0x38),*(undefined4 *)(iVar3 + 0x3c),
                                *(undefined4 *)(iVar3 + 0x40),*(undefined4 *)(iVar3 + 0x44));
      if (((int)((uint)(ABS(dVar5) < 0.5) << 0x1f) < 0) &&
         ((int)((uint)(ABS(*(double *)(*(int *)(local_c + 0xe8) + 0x60)) < 0.5) << 0x1f) < 0)) {
        bVar1 = true;
      }
      else {
        bVar1 = false;
      }
      if (bVar1) {
        *(float *)(local_c + 0x118) = *(float *)(local_c + 0x118) + 1.0;
      }
      else {
        *(int *)(local_c + 0x118) = 0;
      }
      if (((10.0 < *(float *)(local_c + 0x118)) ||
          (cVar2 = (**(code **)(*(int *)local_c + 0x1ec))(local_c), cVar2 != '\x01')) ||
         (8.0 < *(float *)(local_c + 0x11c))) {
        bVar1 = true;
      }
      else {
        bVar1 = false;
      }
      if (bVar1) {
        *(int *)(local_c + 0x118) = 0;
        *(int *)(local_c + 0x11c) = 0;
        (**(code **)(*(int *)local_c + 0x1c4))(local_c);
        (**(code **)(*(int *)local_c + 0x1bc))(local_c);
        this_00 = *(CCDictionary **)(this + 0x14);
        (**(code **)(*(int *)local_c + 0x1fc))(asStack_18,local_c);
        cocos2d::CCDictionary::removeObjectForKey(this_00,asStack_18);
        FUN_007c5914(asStack_18);
        pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        param_1 = (float)cocos2d::CCNotificationCenter::postNotification
                                   (pCVar4,"ReliableWeaponUpdate",local_c);
      }
      else {
        pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        param_1 = (float)cocos2d::CCNotificationCenter::postNotification
                                   (pCVar4,"WeaponUpdate",local_c);
      }
      local_14 = local_10;
      if (local_10 == (CCDictElement *)0x0) {
        local_10 = (CCDictElement *)0x0;
      }
      else {
        local_10 = *(CCDictElement **)(local_10 + 0x110);
      }
    }
  }
  return param_1;
}

// ---- WeaponManager::setSpawnPeriod  @ 0x42a898
/* WeaponManager::setSpawnPeriod(cocos2d::CCDictionary*, float) */

void __thiscall
WeaponManager::setSpawnPeriod(WeaponManager *this,CCDictionary *param_1,float param_2)

{
  undefined4 uVar1;
  CCObject *pCVar2;
  undefined4 extraout_r1;
  float in_r2;
  float fVar3;
  float extraout_s0;
  float local_2c;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  CCString *local_14;
  float local_10;
  float local_c;
  
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_18,"period",auStack_1c);
  local_14 = (CCString *)cocos2d::CCDictionary::objectForKey(param_1,asStack_18);
  FUN_007c5914(asStack_18);
  fVar3 = (float)FUN_0079a3fc(auStack_1c);
  local_2c = in_r2;
  if (local_14 != (CCString *)0x0) {
    uVar1 = cocos2d::CCString::getCString(local_14);
    uVar1 = FUN_00428d04(uVar1);
    local_10 = (float)(double)CONCAT44(extraout_r1,uVar1);
    fVar3 = extraout_s0;
    local_2c = local_10;
    if (local_10 <= 0.0) {
      local_2c = in_r2;
    }
  }
  local_c = *(float *)(this + 0x30) + local_2c;
  pCVar2 = (CCObject *)cocos2d::CCFloat::create(fVar3);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_18,"NextSpawnElapsed",auStack_1c);
  cocos2d::CCDictionary::setObject(param_1,pCVar2,asStack_18);
  FUN_007c5914(asStack_18);
  FUN_0079a3fc(auStack_1c);
  return;
}

// ---- WeaponManager::addItem  @ 0x42a998
/* WeaponManager::addItem(Item*) */

void __thiscall WeaponManager::addItem(WeaponManager *this,Item *param_1)

{
  undefined4 uVar1;
  CCNotificationCenter *this_00;
  CCDictionary *this_01;
  code *pcVar2;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  CCString *local_14;
  
  if (param_1 != (Item *)0x0) {
    *(int *)(this + 0x28) = *(int *)(this + 0x28) + 1;
    (**(code **)(*(int *)param_1 + 0x204))(asStack_18,param_1);
    uVar1 = FUN_007c5300(asStack_18);
    local_14 = (CCString *)
               cocos2d::CCString::createWithFormat("%s:%d",uVar1,*(undefined4 *)(this + 0x28));
    FUN_007c5914(asStack_18);
    pcVar2 = *(code **)(*(int *)param_1 + 0x1f8);
    uVar1 = cocos2d::CCString::getCString(local_14);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(asStack_18,uVar1,auStack_1c);
    (*pcVar2)(param_1,asStack_18);
    FUN_007c5914(asStack_18);
    FUN_0079a3fc(auStack_1c);
    (**(code **)(*(int *)param_1 + 0x224))(param_1,0);
    pcVar2 = *(code **)(*(int *)param_1 + 0x20c);
    uVar1 = (**(code **)(*hostSoldier + 0x254))(hostSoldier);
    (*pcVar2)(param_1,uVar1);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponCreated",(CCObject *)param_1);
    this_01 = *(CCDictionary **)(this + 0x14);
    (**(code **)(*(int *)param_1 + 0x1fc))(asStack_18,param_1);
    cocos2d::CCDictionary::setObject(this_01,(CCObject *)param_1,asStack_18);
    FUN_007c5914(asStack_18);
    addItemToWorld((Item *)this,SUB41(param_1,0));
  }
  return;
}

// ---- WeaponManager::itemCreate  @ 0x42aaf8
/* WeaponManager::itemCreate(cocos2d::CCObject*) */

void __thiscall WeaponManager::itemCreate(WeaponManager *this,CCObject *param_1)

{
  addItem(this,(Item *)param_1);
  return;
}

// ---- WeaponManager::itemRemove  @ 0x42ab14
/* WeaponManager::itemRemove(cocos2d::CCObject*) */

void __thiscall WeaponManager::itemRemove(WeaponManager *this,CCObject *param_1)

{
  removeItem(this,(Item *)param_1);
  return;
}

// ---- WeaponManager::removeItem  @ 0x42ab30
/* WeaponManager::removeItem(Item*) */

void __thiscall WeaponManager::removeItem(WeaponManager *this,Item *param_1)

{
  int iVar1;
  CCNotificationCenter *this_00;
  string asStack_10 [4];
  CCObject *local_c;
  
  if ((param_1 != (Item *)0x0) &&
     (iVar1 = (**(code **)(*(int *)param_1 + 0x220))(param_1), iVar1 == 0)) {
    (**(code **)(*(int *)param_1 + 0x1fc))(asStack_10,param_1);
    local_c = (CCObject *)cocos2d::CCString::create(asStack_10);
    FUN_007c5914(asStack_10);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemoved",local_c);
    removeItemFromWorld(this,param_1);
  }
  return;
}

// ---- WeaponManager::peerWeaponCreated  @ 0x42abb0
/* WeaponManager::peerWeaponCreated(cocos2d::CCObject*) */

void __thiscall WeaponManager::peerWeaponCreated(WeaponManager *this,CCObject *param_1)

{
  CCDictionary *this_00;
  int iVar1;
  string asStack_10 [4];
  CCObject *local_c;
  
  this_00 = weapons;
  local_c = param_1;
  (**(code **)(*(int *)param_1 + 0x1fc))(asStack_10,param_1);
  iVar1 = cocos2d::CCDictionary::objectForKey(this_00,asStack_10);
  FUN_007c5914(asStack_10);
  if (iVar1 == 0) {
    (**(code **)(*(int *)local_c + 0x224))(local_c,0);
    addItemToWorld((Item *)this,SUB41(local_c,0));
  }
  return;
}

// ---- WeaponManager::peerWeaponRemoved  @ 0x42ac30
/* WeaponManager::peerWeaponRemoved(cocos2d::CCObject*) */

void __thiscall WeaponManager::peerWeaponRemoved(WeaponManager *this,CCObject *param_1)

{
  CCDictionary *this_00;
  undefined4 uVar1;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCObject *local_18;
  Item *local_14;
  
  this_00 = weapons;
  if (param_1 != (CCObject *)0x0) {
    local_18 = param_1;
    uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar1,auStack_20);
    local_14 = (Item *)cocos2d::CCDictionary::objectForKey(this_00,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
    removeItemFromWorld(this,local_14);
  }
  return;
}

// ---- WeaponManager::addItemToWorld  @ 0x42acb8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042adaa */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WeaponManager::addItemToWorld(Item*, bool) */

void WeaponManager::addItemToWorld(Item *param_1,bool param_2)

{
  CCDictionary *this;
  char cVar1;
  CCPoint *pCVar2;
  char in_r2;
  int iVar3;
  undefined4 in_s1;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  char local_21;
  CCObject *local_20;
  Item *local_1c;
  string asStack_14 [4];
  float local_10;
  float local_c;
  
  local_20 = (CCObject *)(uint)param_2;
  local_21 = in_r2;
  local_1c = param_1;
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_20,3);
  pCVar2 = (CCPoint *)(**(code **)(*(int *)local_20 + 0x50))(local_20);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_10,pCVar2);
  (**(code **)(*(int *)local_20 + 0x1e0))(local_20);
  (**(code **)(*(int *)local_20 + 0x4c))(local_20,&local_10);
  cVar1 = (**(code **)(*(int *)local_20 + 0x1a0))(local_20);
  this = weapons;
  if (cVar1 != '\x01') {
    (**(code **)(*(int *)local_20 + 0x1fc))(asStack_14,local_20);
    cocos2d::CCDictionary::setObject(this,local_20,asStack_14);
    FUN_007c5914(asStack_14);
  }
  if (local_21 != '\0') {
    (**(code **)(*(int *)local_20 + 0x1b8))(local_20);
    (**(code **)(*(int *)local_20 + 0x1c0))(local_20);
    iVar3 = *(int *)(local_20 + 0xe8);
    FUN_00428da8(SUB84((double)local_10,0),in_s1,SUB84((double)local_c,0),&local_38);
    *(undefined4 *)(iVar3 + 0x28) = local_38;
    *(undefined4 *)(iVar3 + 0x2c) = uStack_34;
    *(undefined4 *)(iVar3 + 0x30) = uStack_30;
    *(undefined4 *)(iVar3 + 0x34) = uStack_2c;
  }
  return;
}

// ---- WeaponManager::removeItemFromWorld  @ 0x42add8
/* WeaponManager::removeItemFromWorld(Item*) */

void __thiscall WeaponManager::removeItemFromWorld(WeaponManager *this,Item *param_1)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  CCNotificationCenter *this_00;
  CCDictionary *pCVar5;
  undefined1 uStack_24;
  char local_23;
  char local_22;
  char local_21;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCString *local_18;
  undefined4 local_14;
  
  if (param_1 == (Item *)0x0) {
    return;
  }
  (**(code **)(*(int *)param_1 + 0x1fc))(asStack_1c,param_1);
  local_18 = (CCString *)cocos2d::CCString::create(asStack_1c);
  FUN_007c5914(asStack_1c);
  bVar1 = false;
  if (*(int *)(this + 0x1c) != 0) {
    (**(code **)(**(int **)(this + 0x1c) + 0x1fc))(auStack_20,*(undefined4 *)(this + 0x1c));
    bVar1 = true;
    uVar3 = cocos2d::CCString::getCString(local_18);
    iVar4 = FUN_007c5724(auStack_20,uVar3);
    if (iVar4 == 0) {
      bVar2 = true;
      goto LAB_0042ae54;
    }
  }
  bVar2 = false;
LAB_0042ae54:
  if (bVar1) {
    FUN_007c5914(auStack_20);
  }
  if (bVar2) {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponCollisionEnded",(CCObject *)0x0);
    *(undefined4 *)(this + 0x1c) = 0;
  }
  local_23 = 0;
  local_22 = 0;
  local_21 = 0;
  pCVar5 = *(CCDictionary **)(this + 0x14);
  uVar3 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(&uStack_24);
  FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
  iVar4 = cocos2d::CCDictionary::objectForKey(pCVar5,asStack_1c);
  local_23 = iVar4 != 0;
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(&uStack_24);
  pCVar5 = *(CCDictionary **)(this + 0x18);
  uVar3 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(&uStack_24);
  FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
  iVar4 = cocos2d::CCDictionary::objectForKey(pCVar5,asStack_1c);
  local_22 = iVar4 != 0;
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(&uStack_24);
  pCVar5 = weapons;
  uVar3 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(&uStack_24);
  FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
  iVar4 = cocos2d::CCDictionary::objectForKey(pCVar5,asStack_1c);
  local_21 = iVar4 != 0;
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(&uStack_24);
  if (local_23 != '\0') {
    pCVar5 = *(CCDictionary **)(this + 0x14);
    uVar3 = cocos2d::CCString::getCString(local_18);
    FUN_0079a3f4(&uStack_24);
    FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
    cocos2d::CCDictionary::removeObjectForKey(pCVar5,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(&uStack_24);
  }
  if (local_22 != '\0') {
    pCVar5 = *(CCDictionary **)(this + 0x18);
    uVar3 = cocos2d::CCString::getCString(local_18);
    FUN_0079a3f4(&uStack_24);
    FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
    cocos2d::CCDictionary::removeObjectForKey(pCVar5,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(&uStack_24);
  }
  pCVar5 = weapons;
  if (local_21 != '\0') {
    uVar3 = cocos2d::CCString::getCString(local_18);
    FUN_0079a3f4(&uStack_24);
    FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
    local_14 = cocos2d::CCDictionary::objectForKey(pCVar5,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(&uStack_24);
    pCVar5 = weapons;
    uVar3 = cocos2d::CCString::getCString(local_18);
    FUN_0079a3f4(&uStack_24);
    FUN_007c6a60(asStack_1c,uVar3,&uStack_24);
    cocos2d::CCDictionary::removeObjectForKey(pCVar5,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(&uStack_24);
  }
  (**(code **)(*(int *)param_1 + 0x1c4))(param_1);
  (**(code **)(*(int *)param_1 + 0x1bc))(param_1);
  (**(code **)(*(int *)param_1 + 0x98))(param_1,0);
  (**(code **)(*(int *)param_1 + 0x20c))(param_1,1);
  (**(code **)(*worldLayer + 0xf0))(worldLayer,param_1);
  return;
}

// ---- WeaponManager::setAllWeaponsUUIDWithHostPeerID  @ 0x42b1ac
/* WeaponManager::setAllWeaponsUUIDWithHostPeerID(std::string) */

void __thiscall
WeaponManager::setAllWeaponsUUIDWithHostPeerID(WeaponManager *this,undefined4 param_2)

{
  bool bVar1;
  CCDictionary *pCVar2;
  uint uVar3;
  int iVar4;
  CCObject *pCVar5;
  char *__nptr;
  undefined4 uVar6;
  uint uVar7;
  code *pcVar8;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  string asStack_38 [4];
  string asStack_34 [4];
  CCDictElement *local_30;
  CCDictElement *local_2c;
  uint local_28;
  CCArray *local_24;
  CCObject *local_20;
  CCString *local_1c;
  
  if (this[0x2c] == (WeaponManager)0x0) {
    local_24 = (CCArray *)cocos2d::CCArray::create();
    local_30 = (CCDictElement *)0x0;
    local_2c = (CCDictElement *)0x0;
    if ((weapons == (CCDictionary *)0x0) ||
       (iVar4 = cocos2d::CCDictionary::count(weapons), iVar4 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      local_30 = *(CCDictElement **)(weapons + 0x14);
      if (*(int *)(weapons + 0x14) == 0) {
        local_2c = (CCDictElement *)0x0;
      }
      else {
        local_2c = *(CCDictElement **)(*(int *)(weapons + 0x14) + 0x110);
      }
      while (local_30 != (CCDictElement *)0x0) {
        pCVar5 = (CCObject *)cocos2d::CCDictElement::getObject(local_30);
        cocos2d::CCArray::addObject(local_24,pCVar5);
        local_30 = local_2c;
        if (local_2c == (CCDictElement *)0x0) {
          local_2c = (CCDictElement *)0x0;
        }
        else {
          local_2c = *(CCDictElement **)(local_2c + 0x110);
        }
      }
    }
    cocos2d::CCDictionary::removeAllObjects(weapons);
    for (local_28 = 0; uVar3 = local_28, uVar7 = cocos2d::CCArray::count(local_24), uVar3 < uVar7;
        local_28 = local_28 + 1) {
      local_20 = (CCObject *)cocos2d::CCArray::objectAtIndex(local_24,local_28);
      (**(code **)(*(int *)local_20 + 0x204))(auStack_44,local_20);
      __nptr = (char *)FUN_007c5300(auStack_44);
      iVar4 = atoi(__nptr);
      if (iVar4 == 0) {
        uVar6 = FUN_007c5300(param_2);
        local_1c = (CCString *)
                   cocos2d::CCString::createWithFormat("%s:%d",uVar6,*(undefined4 *)(this + 0x28));
        pCVar5 = local_20;
        pcVar8 = *(code **)(*(int *)local_20 + 0x1f8);
        uVar6 = cocos2d::CCString::getCString(local_1c);
        FUN_0079a3f4(asStack_34);
        FUN_007c6a60(auStack_40,uVar6,asStack_34);
        (*pcVar8)(pCVar5,auStack_40);
        FUN_007c5914(auStack_40);
        FUN_0079a3fc(asStack_34);
        pcVar8 = *(code **)(*(int *)local_20 + 0x200);
        FUN_007c64e8(auStack_3c,param_2);
        (*pcVar8)(local_20,auStack_3c);
        FUN_007c5914(auStack_3c);
        pCVar2 = weapons;
        uVar6 = cocos2d::CCString::getCString(local_1c);
        FUN_0079a3f4(asStack_34);
        FUN_007c6a60(asStack_38,uVar6,asStack_34);
        cocos2d::CCDictionary::setObject(pCVar2,local_20,asStack_38);
        FUN_007c5914(asStack_38);
        FUN_0079a3fc(asStack_34);
        *(int *)(this + 0x28) = *(int *)(this + 0x28) + 1;
      }
      pCVar2 = weapons;
      (**(code **)(*(int *)local_20 + 0x1fc))(asStack_34,local_20);
      cocos2d::CCDictionary::setObject(pCVar2,local_20,asStack_34);
      FUN_007c5914(asStack_34);
      FUN_007c5914(auStack_44);
    }
    this[0x2c] = (WeaponManager)0x1;
  }
  return;
}

// ---- WeaponManager::getWeapons  @ 0x42b42c
/* WeaponManager::getWeapons() */

undefined4 WeaponManager::getWeapons(void)

{
  return weapons;
}

// ---- WeaponManager::weaponProximity  @ 0x42b448
/* WeaponManager::weaponProximity(Weapon*) */

void WeaponManager::weaponProximity(Weapon *param_1)

{
  bool bVar1;
  int *piVar2;
  char cVar3;
  short sVar4;
  CCNotificationCenter *pCVar5;
  undefined4 uVar6;
  float fVar7;
  Weapon *pWVar8;
  Weapon *pWVar9;
  Weapon *pWVar10;
  int iVar11;
  Weapon *in_r1;
  int iVar12;
  float in_s0;
  float in_s1;
  double dVar13;
  float local_38;
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [12];
  
  piVar2 = hostSoldier;
  cocos2d::CCPoint::CCPoint(aCStack_20,in_s0,in_s1);
  iVar12 = piVar2[0x4e];
  dVar13 = (double)cpvlength(*(undefined4 *)(iVar12 + 0x38),*(undefined4 *)(iVar12 + 0x3c),
                             *(undefined4 *)(iVar12 + 0x40),*(undefined4 *)(iVar12 + 0x44));
  if ((200.0 < dVar13) || (iVar12 = (**(code **)(*hostSoldier + 0x264))(hostSoldier), iVar12 != 0))
  {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    pCVar5 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar5,"WeaponCollisionEnded",(CCObject *)0x0);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    return;
  }
  local_38 = 0.0;
  if (*(int *)(param_1 + 0x1c) != 0) {
    uVar6 = (**(code **)(**(int **)(param_1 + 0x1c) + 0x50))(*(undefined4 *)(param_1 + 0x1c));
    FUN_00428d88(aCStack_18,uVar6,aCStack_20);
    local_38 = (float)cocos2d::ccpLength(aCStack_18);
    if (35.0 < local_38) {
      pCVar5 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar5,"WeaponCollisionEnded",(CCObject *)0x0)
      ;
      *(undefined4 *)(param_1 + 0x1c) = 0;
    }
  }
  uVar6 = (**(code **)(*(int *)in_r1 + 0x50))(in_r1);
  FUN_00428d88(aCStack_18,uVar6,aCStack_20);
  fVar7 = (float)cocos2d::ccpLength(aCStack_18);
  if (-1 < (int)((uint)(fVar7 < 35.0) << 0x1f)) {
    return;
  }
  if ((*(int *)(param_1 + 0x1c) != 0) && (-1 < (int)((uint)(fVar7 < local_38) << 0x1f))) {
    return;
  }
  pWVar8 = (Weapon *)(**(code **)(*piVar2 + 500))(piVar2);
  pWVar9 = (Weapon *)(**(code **)(*piVar2 + 0x1f8))(piVar2);
  pWVar10 = (Weapon *)(**(code **)(*piVar2 + 0x1fc))(piVar2);
  if (pWVar8 == (Weapon *)0x0) {
LAB_0042b618:
    bVar1 = false;
  }
  else {
    iVar12 = (**(code **)(*(int *)pWVar8 + 0x268))(pWVar8);
    iVar11 = (**(code **)(*(int *)in_r1 + 0x268))(in_r1);
    if (iVar12 != iVar11) goto LAB_0042b618;
    bVar1 = true;
  }
  if (bVar1) {
    sVar4 = (**(code **)(*(int *)pWVar8 + 0x274))(pWVar8);
    iVar12 = (**(code **)(*(int *)pWVar8 + 0x2b0))(pWVar8);
    if ((sVar4 < iVar12) &&
       (iVar12 = transferAmmo((WeaponManager *)param_1,in_r1,pWVar8), iVar12 != 0)) {
      return;
    }
    cVar3 = (**(code **)(*(int *)in_r1 + 0x2ec))(in_r1);
    if (cVar3 != '\x01') {
      return;
    }
  }
  if (pWVar9 == (Weapon *)0x0) {
LAB_0042b6ac:
    bVar1 = false;
  }
  else {
    iVar12 = (**(code **)(*(int *)pWVar9 + 0x268))(pWVar9);
    iVar11 = (**(code **)(*(int *)in_r1 + 0x268))(in_r1);
    if (iVar12 != iVar11) goto LAB_0042b6ac;
    bVar1 = true;
  }
  if (bVar1) {
    sVar4 = (**(code **)(*(int *)pWVar9 + 0x274))(pWVar9);
    iVar12 = (**(code **)(*(int *)pWVar9 + 0x2b0))(pWVar9);
    if ((sVar4 < iVar12) &&
       (iVar12 = transferAmmo((WeaponManager *)param_1,in_r1,pWVar9), iVar12 != 0)) {
      return;
    }
    cVar3 = (**(code **)(*(int *)in_r1 + 0x2ec))(in_r1);
    if (cVar3 != '\x01') {
      return;
    }
  }
  if (pWVar10 != (Weapon *)0x0) {
    iVar12 = (**(code **)(*(int *)pWVar10 + 0x268))(pWVar10);
    iVar11 = (**(code **)(*(int *)in_r1 + 0x268))(in_r1);
    if (iVar12 == iVar11) {
      bVar1 = true;
      goto LAB_0042b760;
    }
  }
  bVar1 = false;
LAB_0042b760:
  if (bVar1) {
    sVar4 = (**(code **)(*(int *)pWVar10 + 0x274))(pWVar10);
    iVar12 = (**(code **)(*(int *)pWVar10 + 0x2b0))(pWVar10);
    if ((sVar4 < iVar12) &&
       (iVar12 = transferAmmo((WeaponManager *)param_1,in_r1,pWVar10), iVar12 != 0)) {
      return;
    }
  }
  iVar12 = (**(code **)(*(int *)in_r1 + 0x268))(in_r1);
  if (((iVar12 == 2) || (iVar12 = (**(code **)(*(int *)in_r1 + 0x268))(in_r1), iVar12 == 0x14)) ||
     (iVar12 = (**(code **)(*(int *)in_r1 + 0x268))(in_r1), iVar12 == 0x17)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    (**(code **)(*hostSoldier + 0x220))(hostSoldier,in_r1);
  }
  else {
    iVar12 = (**(code **)(*(int *)in_r1 + 0x22c))(in_r1);
    if (iVar12 == 0) {
      *(Weapon **)(param_1 + 0x1c) = in_r1;
      pCVar5 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification
                (pCVar5,"WeaponCollisionBegan",*(CCObject **)(param_1 + 0x1c));
    }
    else {
      iVar12 = (**(code **)(*(int *)in_r1 + 0x228))(in_r1);
      if (iVar12 != 0) {
        (**(code **)(*hostSoldier + 0x2e8))(hostSoldier,in_r1);
      }
    }
  }
  return;
}

// ---- WeaponManager::onPickUpWeapon  @ 0x42b880
/* WeaponManager::onPickUpWeapon(cocos2d::CCObject*) */

void __thiscall WeaponManager::onPickUpWeapon(WeaponManager *this,CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  int iVar4;
  CCNotificationCenter *this_00;
  undefined1 auStack_18 [3];
  undefined1 local_15;
  undefined1 auStack_14 [8];
  
  uVar3 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,uVar3,auStack_18);
  FUN_0079a3fc(auStack_18);
  if ((*(int *)(this + 0x1c) == 0) ||
     (cVar2 = (**(code **)(**(int **)(this + 0x1c) + 0x2a8))(*(undefined4 *)(this + 0x1c)),
     cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    iVar4 = FUN_007c505c(auStack_14);
    local_15 = iVar4 != 0;
    (**(code **)(**(int **)(this + 0x1c) + 0x300))(*(undefined4 *)(this + 0x1c),local_15);
    (**(code **)(*hostSoldier + 0x2a8))(hostSoldier,*(undefined4 *)(this + 0x1c));
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponCollisionEnded",(CCObject *)0x0);
    *(undefined4 *)(this + 0x1c) = 0;
  }
  FUN_007c5914(auStack_14);
  return;
}

// ---- WeaponManager::onPickUpWeaponAllowed  @ 0x42b980
/* WeaponManager::onPickUpWeaponAllowed(cocos2d::CCObject*) */

void __thiscall WeaponManager::onPickUpWeaponAllowed(WeaponManager *this,CCObject *param_1)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  CCNotificationCenter *this_00;
  undefined1 auStack_18 [4];
  CCString *local_14;
  
  bVar1 = false;
  local_14 = (CCString *)param_1;
  if (*(int *)(this + 0x1c) != 0) {
    (**(code **)(**(int **)(this + 0x1c) + 0x1fc))(auStack_18,*(undefined4 *)(this + 0x1c));
    bVar1 = true;
    uVar3 = cocos2d::CCString::getCString(local_14);
    iVar4 = FUN_007c5724(auStack_18,uVar3);
    if (iVar4 == 0) {
      bVar2 = true;
      goto LAB_0042b9d2;
    }
  }
  bVar2 = false;
LAB_0042b9d2:
  if (bVar1) {
    FUN_007c5914(auStack_18);
  }
  if (bVar2) {
    (**(code **)(*hostSoldier + 0x2a8))(hostSoldier,*(undefined4 *)(this + 0x1c));
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponCollisionEnded",(CCObject *)0x0);
    *(undefined4 *)(this + 0x1c) = 0;
  }
  return;
}

// ---- WeaponManager::onPickUpWeaponDenied  @ 0x42ba48
/* WeaponManager::onPickUpWeaponDenied(cocos2d::CCObject*) */

void __thiscall WeaponManager::onPickUpWeaponDenied(WeaponManager *this,CCObject *param_1)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  CCNotificationCenter *this_00;
  undefined1 auStack_18 [4];
  CCString *local_14;
  
  bVar1 = false;
  local_14 = (CCString *)param_1;
  if (*(int *)(this + 0x1c) != 0) {
    (**(code **)(**(int **)(this + 0x1c) + 0x1fc))(auStack_18,*(undefined4 *)(this + 0x1c));
    bVar1 = true;
    uVar3 = cocos2d::CCString::getCString(local_14);
    iVar4 = FUN_007c5724(auStack_18,uVar3);
    if (iVar4 == 0) {
      bVar2 = true;
      goto LAB_0042ba96;
    }
  }
  bVar2 = false;
LAB_0042ba96:
  if (bVar1) {
    FUN_007c5914(auStack_18);
  }
  if (bVar2) {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponCollisionEnded",(CCObject *)0x0);
    *(undefined4 *)(this + 0x1c) = 0;
  }
  return;
}

// ---- WeaponManager::peerWeaponUpdated  @ 0x42bae4
/* WeaponManager::peerWeaponUpdated(cocos2d::CCObject*) */

void __thiscall WeaponManager::peerWeaponUpdated(WeaponManager *this,CCObject *param_1)

{
  CCDictionary *this_00;
  string asStack_10 [4];
  CCObject *local_c;
  
  this_00 = *(CCDictionary **)(this + 0x18);
  local_c = param_1;
  (**(code **)(*(int *)param_1 + 0x1fc))(asStack_10,param_1);
  cocos2d::CCDictionary::setObject(this_00,local_c,asStack_10);
  FUN_007c5914(asStack_10);
  return;
}

// ---- WeaponManager::transferAmmo  @ 0x42bb30
/* WeaponManager::transferAmmo(Weapon*, Weapon*) */

undefined4 __thiscall
WeaponManager::transferAmmo(WeaponManager *this,Weapon *param_1,Weapon *param_2)

{
  bool bVar1;
  short sVar2;
  int iVar3;
  undefined4 uVar4;
  CCNotificationCenter *this_00;
  
  iVar3 = (**(code **)(*(int *)param_2 + 0x2b0))(param_2);
  sVar2 = (**(code **)(*(int *)param_2 + 0x274))(param_2);
  uVar4 = (**(code **)(*(int *)param_1 + 0x2c8))(param_1,iVar3 - sVar2);
  (**(code **)(*(int *)param_2 + 0x2c4))(param_2,uVar4);
  iVar3 = (**(code **)(*(int *)param_1 + 0x2ec))(param_1);
  if ((iVar3 == 0) || (iVar3 = (**(code **)(*hostSoldier + 0x1fc))(hostSoldier), iVar3 != 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    if (5.0 < *(float *)(param_1 + 400)) {
      *(undefined4 *)(param_1 + 400) = 0x40a00000;
    }
    *(Weapon **)(this + 0x1c) = param_1;
    uVar4 = 0;
  }
  else {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)param_1);
    *(undefined4 *)(this + 0x1c) = 0;
    uVar4 = 1;
  }
  return uVar4;
}

// ---- WeaponManager::removeAllWeaponsForPeer  @ 0x42bc20
/* WeaponManager::removeAllWeaponsForPeer(std::string) */

void __thiscall WeaponManager::removeAllWeaponsForPeer(WeaponManager *this,undefined4 param_2)

{
  bool bVar1;
  int iVar2;
  undefined1 auStack_18 [4];
  CCDictElement *local_14;
  CCDictElement *local_10;
  Item *local_c;
  
  local_14 = (CCDictElement *)0x0;
  local_10 = (CCDictElement *)0x0;
  if ((weapons == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(weapons), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_14 = *(CCDictElement **)(weapons + 0x14);
    if (*(int *)(weapons + 0x14) == 0) {
      local_10 = (CCDictElement *)0x0;
    }
    else {
      local_10 = *(CCDictElement **)(*(int *)(weapons + 0x14) + 0x110);
    }
    while (local_14 != (CCDictElement *)0x0) {
      local_c = (Item *)cocos2d::CCDictElement::getObject(local_14);
      (**(code **)(*(int *)local_c + 0x204))(auStack_18,local_c);
      iVar2 = FUN_007c567c(auStack_18,param_2);
      FUN_007c5914(auStack_18);
      if (iVar2 == 0) {
        removeItemFromWorld(this,local_c);
      }
      local_14 = local_10;
      if (local_10 == (CCDictElement *)0x0) {
        local_10 = (CCDictElement *)0x0;
      }
      else {
        local_10 = *(CCDictElement **)(local_10 + 0x110);
      }
    }
  }
  return;
}

// ---- WeaponManager::removeAllWeapons  @ 0x42bd04
/* WeaponManager::removeAllWeapons() */

void __thiscall WeaponManager::removeAllWeapons(WeaponManager *this)

{
  bool bVar1;
  int iVar2;
  uint in_fpscr;
  undefined4 uVar3;
  CCDictElement *local_14;
  CCDictElement *local_10;
  
  if ((weapons == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(weapons), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_14 = *(CCDictElement **)(weapons + 0x14);
    if (*(int *)(weapons + 0x14) == 0) {
      local_10 = (CCDictElement *)0x0;
    }
    else {
      local_10 = *(CCDictElement **)(*(int *)(weapons + 0x14) + 0x110);
    }
    while (local_14 != (CCDictElement *)0x0) {
      iVar2 = cocos2d::CCDictElement::getObject(local_14);
      uVar3 = VectorSignedToFloat(*(undefined4 *)(this + 0x40),(byte)(in_fpscr >> 0x16) & 3);
      *(undefined4 *)(iVar2 + 400) = uVar3;
      local_14 = local_10;
      if (local_10 == (CCDictElement *)0x0) {
        local_10 = (CCDictElement *)0x0;
      }
      else {
        local_10 = *(CCDictElement **)(local_10 + 0x110);
      }
    }
  }
  return;
}

// ---- WeaponManager::getWeaponForSpawnPoint  @ 0x42bdac
/* WeaponManager::getWeaponForSpawnPoint(cocos2d::CCDictionary*) */

undefined4 __thiscall
WeaponManager::getWeaponForSpawnPoint(WeaponManager *this,CCDictionary *param_1)

{
  undefined4 uVar1;
  int iVar2;
  uint uVar3;
  WeaponFactory *pWVar4;
  uint in_fpscr;
  float fVar5;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  CCString *local_24;
  uint local_20;
  float local_1c;
  undefined4 local_18;
  string asStack_14 [12];
  
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_14,"weapons",auStack_28,auStack_28,param_1,this);
  local_24 = (CCString *)cocos2d::CCDictionary::objectForKey(param_1,asStack_14);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_28);
  if (local_24 == (CCString *)0x0) {
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_14,"weapon",auStack_28);
    local_24 = (CCString *)cocos2d::CCDictionary::objectForKey(param_1,asStack_14);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_28);
  }
  if (local_24 == (CCString *)0x0) {
    uVar1 = getRandomWeapon();
  }
  else {
    uVar1 = cocos2d::CCString::getCString(local_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(auStack_28,uVar1,auStack_2c);
    FUN_0042947c(asStack_14,auStack_28,&DAT_007eba70);
    FUN_007c5914(auStack_28);
    FUN_0079a3fc(auStack_2c);
    iVar2 = std::vector<std::string,std::allocator<std::string>>::size
                      ((vector<std::string,std::allocator<std::string>> *)asStack_14);
    if (iVar2 == 0) {
      uVar1 = getRandomWeapon();
    }
    else {
      uVar1 = FUN_00428d20();
      fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
      local_1c = ABS(fVar5 / 1.0737418e+09 - 1.0);
      uVar1 = std::vector<std::string,std::allocator<std::string>>::size
                        ((vector<std::string,std::allocator<std::string>> *)asStack_14);
      fVar5 = (float)VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
      fVar5 = fVar5 * local_1c;
      local_20 = (int)fVar5;
      uVar3 = std::vector<std::string,std::allocator<std::string>>::size
                        ((vector<std::string,std::allocator<std::string>> *)asStack_14);
      if ((int)fVar5 == uVar3) {
        local_20 = local_20 - 1;
      }
      uVar1 = std::vector<std::string,std::allocator<std::string>>::operator[]
                        ((vector<std::string,std::allocator<std::string>> *)asStack_14,local_20);
      FUN_007c64e8(auStack_2c,uVar1);
      pWVar4 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
      FUN_007c64e8(auStack_28,auStack_2c);
      local_18 = WeaponFactory::getAmmoTypeFromString(pWVar4,auStack_28);
      FUN_007c5914(auStack_28);
      pWVar4 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
      uVar1 = WeaponFactory::createWeaponFromAmmoType(pWVar4,local_18);
      FUN_007c5914(auStack_2c);
    }
    std::vector<std::string,std::allocator<std::string>>::~vector
              ((vector<std::string,std::allocator<std::string>> *)asStack_14);
  }
  return uVar1;
}

// ---- WeaponManager::getRandomWeapon  @ 0x42bfe4
/* WeaponManager::getRandomWeapon() */

undefined4 WeaponManager::getRandomWeapon(void)

{
  WeaponFactory *this;
  undefined4 uVar1;
  
  this = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar1 = WeaponFactory::createRandomWeapon(this);
  return uVar1;
}
