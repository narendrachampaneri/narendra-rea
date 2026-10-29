// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 36 functions

// ---- EnemyManager::EnemyManager  @ 0x328d6c
/* EnemyManager::EnemyManager() */

EnemyManager * __thiscall EnemyManager::EnemyManager(EnemyManager *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910d50;
  init();
  return this;
}

// ---- EnemyManager::init  @ 0x328db0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00328e92 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EnemyManager::init() */

undefined4 EnemyManager::init(void)

{
  CCObject *pCVar1;
  CCObject *in_r0;
  undefined4 uVar2;
  CCNotificationCenter *pCVar3;
  undefined4 in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  CCObject *local_3c;
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
  
  local_3c = in_r0;
  activeEnemies = (CCObject *)cocos2d::CCDictionary::create();
  cocos2d::CCObject::retain(activeEnemies);
  allEnemies = (CCObject *)cocos2d::CCDictionary::create();
  cocos2d::CCObject::retain(allEnemies);
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(local_3c + 0x14) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x14));
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(local_3c + 0x18) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x18));
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(local_3c + 0x1c) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x1c));
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(local_3c + 0x20) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x20));
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(local_3c + 0x24) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x24));
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(local_3c + 0x28) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x28));
  pCVar1 = local_3c;
  *(undefined4 *)(local_3c + 0x2c) = 1;
  *(undefined4 *)(local_3c + 0x30) = 0;
  *(undefined4 *)(local_3c + 0x34) = 0;
  *(undefined4 *)(local_3c + 0x38) = 0;
  *(undefined4 *)(local_3c + 0x3c) = 0;
  FUN_00327e44(0,in_s1,0,&local_50);
  *(undefined4 *)(pCVar1 + 0x40) = local_50;
  *(undefined4 *)(pCVar1 + 0x44) = uStack_4c;
  *(undefined4 *)(pCVar1 + 0x48) = uStack_48;
  *(undefined4 *)(pCVar1 + 0x4c) = uStack_44;
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_38 = (code *)0x32aa29;
  local_34 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,local_3c,(_func_void_CCObject_ptr *)0x32aa29,(char *)0x0,
             (CCObject *)"PlayerDamaged");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_30 = (code *)0x32ab41;
  local_2c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,local_3c,(_func_void_CCObject_ptr *)0x32ab41,(char *)0x0,(CCObject *)"Explosive"
            );
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_28 = (code *)0x32b291;
  local_24 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,local_3c,(_func_void_CCObject_ptr *)0x32b291,(char *)0x0,
             (CCObject *)"EnemySpawned");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_20 = (code *)0x32b501;
  local_1c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,local_3c,(_func_void_CCObject_ptr *)0x32b501,(char *)0x0,
             (CCObject *)"EnemyDestroyed");
  pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_18 = (code *)0x32b769;
  local_14 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar3,local_3c,(_func_void_CCObject_ptr *)0x32b769,(char *)0x0,
             (CCObject *)"EnemyPositionUpdated");
  return 1;
}

// ---- EnemyManager::~EnemyManager  @ 0x328fb8
/* WARNING: Removing unreachable block (ram,0x0032905e) */
/* EnemyManager::~EnemyManager() */

EnemyManager * __thiscall EnemyManager::~EnemyManager(EnemyManager *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00910d50;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCDictionary::removeAllObjects(allEnemies);
  cocos2d::CCDictionary::removeAllObjects(activeEnemies);
  cocos2d::CCObject::release((CCObject *)activeEnemies);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x20));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x24));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x28));
  cocos2d::CCObject::release((CCObject *)allEnemies);
  allEnemies = (CCDictionary *)0x0;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- EnemyManager::~EnemyManager  @ 0x32907c
/* EnemyManager::~EnemyManager() */

EnemyManager * __thiscall EnemyManager::~EnemyManager(EnemyManager *this)

{
  ~EnemyManager(this);
  operator_delete(this);
  return this;
}

// ---- EnemyManager::initEnemies  @ 0x329098
/* EnemyManager::initEnemies() */

void __thiscall EnemyManager::initEnemies(EnemyManager *this)

{
  int local_14;
  int local_10;
  int local_c;
  
  for (local_14 = 0; local_14 < 3; local_14 = local_14 + 1) {
    createWormDrone(this,*(undefined4 *)(this + 0x4c),*(undefined4 *)(this + 0x40),
                    *(undefined4 *)(this + 0x44),*(undefined4 *)(this + 0x48),
                    *(undefined4 *)(this + 0x4c));
  }
  for (local_10 = 0; local_10 < 5; local_10 = local_10 + 1) {
    createHawkDrone(this,*(undefined4 *)(this + 0x4c),*(undefined4 *)(this + 0x40),
                    *(undefined4 *)(this + 0x44),*(undefined4 *)(this + 0x48),
                    *(undefined4 *)(this + 0x4c));
  }
  for (local_c = 0; local_c < 5; local_c = local_c + 1) {
    createHumanoidDrone(this,*(undefined4 *)(this + 0x4c),*(undefined4 *)(this + 0x40),
                        *(undefined4 *)(this + 0x44),*(undefined4 *)(this + 0x48),
                        *(undefined4 *)(this + 0x4c));
  }
  return;
}

// ---- EnemyManager::awardPoints  @ 0x329124
/* EnemyManager::awardPoints(Enemy*, int) */

void __thiscall EnemyManager::awardPoints(EnemyManager *this,Enemy *param_1,int param_2)

{
  int iVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  CCNotificationCenter *this_00;
  int local_34;
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  string asStack_20 [4];
  CCObject *local_1c;
  
  (**(code **)(*(int *)param_1 + 0x1b8))(asStack_24,param_1);
  (**(code **)(*hostSoldier + 0x1c0))(asStack_20,hostSoldier);
  iVar1 = FUN_007c567c(asStack_24,asStack_20);
  FUN_007c5914(asStack_20);
  FUN_007c5914(asStack_24);
  local_34 = param_2;
  if (iVar1 != 0) {
    local_34 = 0;
  }
  (**(code **)(*(int *)param_1 + 0x1b8))(asStack_24,param_1);
  pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_24);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_20,"enemy",auStack_28);
  uVar3 = cocos2d::CCString::create(asStack_20);
  uVar4 = cocos2d::CCInteger::create(local_34);
  iVar1 = (**(code **)(*(int *)param_1 + 0x1b4))(param_1);
  uVar5 = cocos2d::CCInteger::create(iVar1);
  uVar6 = cocos2d::CCInteger::create(1);
  local_1c = (CCObject *)cocos2d::CCArray::create(pCVar2,uVar3,uVar4,uVar5,uVar6,0);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(asStack_24);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerScored",local_1c);
  return;
}

// ---- EnemyManager::destroyHawk  @ 0x32928c
/* EnemyManager::destroyHawk(HawkDrone*) */

void EnemyManager::destroyHawk(HawkDrone *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  CCNotificationCenter *this;
  Enemy *in_r1;
  float in_s0;
  float extraout_s0;
  float extraout_s0_00;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCObject *local_18;
  CCString *local_14;
  
  pCVar1 = (CCObject *)cocos2d::CCFloat::create(in_s0);
  uVar2 = cocos2d::CCFloat::create(extraout_s0);
  uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
  local_18 = (CCObject *)cocos2d::CCArray::create(pCVar1,uVar2,uVar3,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"ExplosionND",local_18);
  (**(code **)(*(int *)in_r1 + 0x1c0))(asStack_1c,in_r1);
  local_14 = (CCString *)cocos2d::CCString::create(asStack_1c);
  FUN_007c5914(asStack_1c);
  awardPoints((EnemyManager *)param_1,in_r1,0x19);
  uVar2 = cocos2d::CCString::getCString(local_14);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar2,auStack_20);
  removeHawkDrone((EnemyManager *)param_1,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  return;
}

// ---- EnemyManager::destroyWorm  @ 0x329388
/* EnemyManager::destroyWorm(WormDrone*) */

void EnemyManager::destroyWorm(WormDrone *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  CCNotificationCenter *this;
  Enemy *in_r1;
  float in_s0;
  float extraout_s0;
  float extraout_s0_00;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCObject *local_18;
  CCString *local_14;
  
  pCVar1 = (CCObject *)cocos2d::CCFloat::create(in_s0);
  uVar2 = cocos2d::CCFloat::create(extraout_s0);
  uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
  local_18 = (CCObject *)cocos2d::CCArray::create(pCVar1,uVar2,uVar3,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"ExplosionND",local_18);
  (**(code **)(*(int *)in_r1 + 0x1c0))(asStack_1c,in_r1);
  local_14 = (CCString *)cocos2d::CCString::create(asStack_1c);
  FUN_007c5914(asStack_1c);
  awardPoints((EnemyManager *)param_1,in_r1,0x32);
  uVar2 = cocos2d::CCString::getCString(local_14);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar2,auStack_20);
  removeWormDrone((EnemyManager *)param_1,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  return;
}

// ---- EnemyManager::destroyHumanoid  @ 0x329484
/* EnemyManager::destroyHumanoid(HumanoidDrone*) */

void EnemyManager::destroyHumanoid(HumanoidDrone *param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  CCNotificationCenter *pCVar4;
  Enemy *in_r1;
  float in_s0;
  float extraout_s0;
  float extraout_s0_00;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCObject *local_18;
  CCString *local_14;
  
  pCVar1 = (CCObject *)cocos2d::CCFloat::create(in_s0);
  uVar2 = cocos2d::CCFloat::create(extraout_s0);
  uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
  local_18 = (CCObject *)cocos2d::CCArray::create(pCVar1,uVar2,uVar3,0);
  pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(pCVar4,"ExplosionND",local_18);
  pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification
            (pCVar4,"PeerPlayerDead",*(CCObject **)(in_r1 + 0x1ac));
  (**(code **)(*(int *)in_r1 + 0x1c0))(asStack_1c,in_r1);
  local_14 = (CCString *)cocos2d::CCString::create(asStack_1c);
  FUN_007c5914(asStack_1c);
  awardPoints((EnemyManager *)param_1,in_r1,0x4b);
  uVar2 = cocos2d::CCString::getCString(local_14);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar2,auStack_20);
  removeHumanoidDrone((EnemyManager *)param_1,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  return;
}

// ---- EnemyManager::updateRemoteStep  @ 0x3295a8
/* EnemyManager::updateRemoteStep(float) */

void __thiscall EnemyManager::updateRemoteStep(EnemyManager *this,float param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  undefined4 in_r1;
  CCDictElement *local_24;
  CCDictElement *local_20;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  
  if ((*(int *)(this + 0x14) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x14)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x14) + 0x14);
    if (*(int *)(*(int *)(this + 0x14) + 0x14) == 0) {
      local_20 = (CCDictElement *)0x0;
    }
    else {
      local_20 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x14) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*piVar3 + 0x1d4))(piVar3,in_r1);
      local_24 = local_20;
      if (local_20 == (CCDictElement *)0x0) {
        local_20 = (CCDictElement *)0x0;
      }
      else {
        local_20 = *(CCDictElement **)(local_20 + 0x110);
      }
    }
  }
  if ((*(int *)(this + 0x1c) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x1c)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x1c) + 0x14);
    if (*(int *)(*(int *)(this + 0x1c) + 0x14) == 0) {
      local_1c = (CCDictElement *)0x0;
    }
    else {
      local_1c = *(CCDictElement **)(*(int *)(*(int *)(this + 0x1c) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*piVar3 + 0x1d4))(piVar3,in_r1);
      local_24 = local_1c;
      if (local_1c == (CCDictElement *)0x0) {
        local_1c = (CCDictElement *)0x0;
      }
      else {
        local_1c = *(CCDictElement **)(local_1c + 0x110);
      }
    }
  }
  if ((*(int *)(this + 0x18) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x18)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x18) + 0x14);
    if (*(int *)(*(int *)(this + 0x18) + 0x14) == 0) {
      local_18 = (CCDictElement *)0x0;
    }
    else {
      local_18 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x18) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*piVar3 + 0x1d4))(piVar3,in_r1);
      local_24 = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  return;
}

// ---- EnemyManager::updateStep  @ 0x32973c
/* EnemyManager::updateStep(float) */

void __thiscall EnemyManager::updateStep(EnemyManager *this,float param_1)

{
  bool bVar1;
  int iVar2;
  CCNotificationCenter *pCVar3;
  CCObject *pCVar4;
  undefined4 in_r1;
  string asStack_28 [4];
  CCDictElement *local_24;
  CCDictElement *local_20;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  int *local_14;
  int *local_10;
  int *local_c;
  
  local_24 = (CCDictElement *)0x0;
  local_20 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x14) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x14)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x14) + 0x14);
    if (*(int *)(*(int *)(this + 0x14) + 0x14) == 0) {
      local_20 = (CCDictElement *)0x0;
    }
    else {
      local_20 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x14) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      local_14 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*local_14 + 0x1d0))(local_14,in_r1);
      iVar2 = (**(code **)(*local_14 + 0x1e4))(local_14);
      if (iVar2 == 0) {
        destroyHawk((HawkDrone *)this);
        pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        (**(code **)(*local_14 + 0x1c0))(asStack_28,local_14);
        pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_28);
        cocos2d::CCNotificationCenter::postNotification(pCVar3,"SendEnemyDestroy",pCVar4);
        FUN_007c5914(asStack_28);
      }
      local_24 = local_20;
      if (local_20 == (CCDictElement *)0x0) {
        local_20 = (CCDictElement *)0x0;
      }
      else {
        local_20 = *(CCDictElement **)(local_20 + 0x110);
      }
    }
  }
  local_1c = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x1c) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x1c)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x1c) + 0x14);
    if (*(int *)(*(int *)(this + 0x1c) + 0x14) == 0) {
      local_1c = (CCDictElement *)0x0;
    }
    else {
      local_1c = *(CCDictElement **)(*(int *)(*(int *)(this + 0x1c) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      local_10 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*local_10 + 0x1d0))(local_10,in_r1);
      iVar2 = (**(code **)(*local_10 + 0x1e4))(local_10);
      if (iVar2 == 0) {
        destroyWorm((WormDrone *)this);
        pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        (**(code **)(*local_10 + 0x1c0))(asStack_28,local_10);
        pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_28);
        cocos2d::CCNotificationCenter::postNotification(pCVar3,"SendEnemyDestroy",pCVar4);
        FUN_007c5914(asStack_28);
      }
      local_24 = local_1c;
      if (local_1c == (CCDictElement *)0x0) {
        local_1c = (CCDictElement *)0x0;
      }
      else {
        local_1c = *(CCDictElement **)(local_1c + 0x110);
      }
    }
  }
  local_18 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0x18) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x18)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x18) + 0x14);
    if (*(int *)(*(int *)(this + 0x18) + 0x14) == 0) {
      local_18 = (CCDictElement *)0x0;
    }
    else {
      local_18 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x18) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      local_c = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*local_c + 0x1d0))(local_c,in_r1);
      iVar2 = (**(code **)(*local_c + 0x1e4))(local_c);
      if (iVar2 == 0) {
        destroyHumanoid((HumanoidDrone *)this);
        pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        (**(code **)(*local_c + 0x1c0))(asStack_28,local_c);
        pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_28);
        cocos2d::CCNotificationCenter::postNotification(pCVar3,"SendEnemyDestroy",pCVar4);
        FUN_007c5914(asStack_28);
        (**(code **)(*(int *)local_c[0x6b] + 0x208))(local_c[0x6b]);
      }
      local_24 = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  return;
}

// ---- EnemyManager::spawnWormDrone  @ 0x329a30
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00329ad4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EnemyManager::spawnWormDrone(WormDrone*) */

void EnemyManager::spawnWormDrone(WormDrone *param_1)

{
  CCObject *in_r1;
  code *pcVar1;
  undefined4 in_s1;
  string asStack_24 [4];
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  if (in_r1 != (CCObject *)0x0) {
    (**(code **)(*(int *)in_r1 + 0x1c0))(asStack_24,in_r1);
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(param_1 + 0x1c),in_r1,asStack_24);
    cocos2d::CCDictionary::setObject(activeEnemies,in_r1,asStack_24);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(param_1 + 0x28),asStack_24);
    (**(code **)(*(int *)in_r1 + 0x214))(in_r1,0x241);
    in_r1[0x16c] = (CCObject)0x1;
    (**(code **)(*(int *)in_r1 + 0x1cc))(in_r1);
    (**(code **)(*(int *)in_r1 + 0x1e8))(in_r1,0x4b);
    pcVar1 = *(code **)(*(int *)in_r1 + 0x218);
    FUN_00327e44(0,in_s1,0,&local_20);
    (*pcVar1)(in_r1,uStack_14,local_20,uStack_1c);
    FUN_007c5914(asStack_24);
  }
  return;
}

// ---- EnemyManager::spawnHawkDrone  @ 0x329b20
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00329bc4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EnemyManager::spawnHawkDrone(HawkDrone*) */

void EnemyManager::spawnHawkDrone(HawkDrone *param_1)

{
  CCObject *in_r1;
  code *pcVar1;
  undefined4 in_s1;
  string asStack_24 [4];
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  if (in_r1 != (CCObject *)0x0) {
    (**(code **)(*(int *)in_r1 + 0x1c0))(asStack_24,in_r1);
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(param_1 + 0x14),in_r1,asStack_24);
    cocos2d::CCDictionary::setObject(activeEnemies,in_r1,asStack_24);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(param_1 + 0x20),asStack_24);
    (**(code **)(*(int *)in_r1 + 0x214))(in_r1,0x241);
    in_r1[0x16c] = (CCObject)0x1;
    (**(code **)(*(int *)in_r1 + 0x1cc))(in_r1);
    (**(code **)(*(int *)in_r1 + 0x1e8))(in_r1,0x32);
    pcVar1 = *(code **)(*(int *)in_r1 + 0x218);
    FUN_00327e44(0,in_s1,0,&local_20);
    (*pcVar1)(in_r1,uStack_14,local_20,uStack_1c);
    FUN_007c5914(asStack_24);
  }
  return;
}

// ---- EnemyManager::spawnHumanoidDrone  @ 0x329c08
/* EnemyManager::spawnHumanoidDrone(HumanoidDrone*) */

void __thiscall EnemyManager::spawnHumanoidDrone(EnemyManager *this,HumanoidDrone *param_1)

{
  SoldierView *pSVar1;
  string asStack_c [4];
  
  if (param_1 != (HumanoidDrone *)0x0) {
    (**(code **)(*(int *)param_1 + 0x1c0))(asStack_c,param_1);
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0x18),(CCObject *)param_1,asStack_c);
    cocos2d::CCDictionary::setObject(activeEnemies,(CCObject *)param_1,asStack_c);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(this + 0x24),asStack_c);
    pSVar1 = (SoldierView *)
             (**(code **)(**(int **)(param_1 + 0x1ac) + 0x1d8))(*(undefined4 *)(param_1 + 0x1ac));
    SoldierView::setIsVisible(pSVar1,true);
    (**(code **)(*(int *)param_1 + 0x214))(param_1,0x241);
    (**(code **)(*(int *)param_1 + 0x1cc))(param_1);
    (**(code **)(*(int *)param_1 + 0x1e8))(param_1,100);
    *(undefined1 *)(*(int *)(param_1 + 0x1ac) + 0x159) = 0;
    pSVar1 = (SoldierView *)
             (**(code **)(**(int **)(param_1 + 0x1ac) + 0x1d8))(*(undefined4 *)(param_1 + 0x1ac));
    SoldierView::resetStreak(pSVar1);
    FUN_007c5914(asStack_c);
  }
  return;
}

// ---- EnemyManager::removeWormDrone  @ 0x329cfc
/* EnemyManager::removeWormDrone(std::string) */

void __thiscall EnemyManager::removeWormDrone(EnemyManager *this,string *param_2)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  undefined8 uVar7;
  CCPoint aCStack_18 [12];
  
  pCVar1 = (CCObject *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x1c),param_2);
  if (pCVar1 != (CCObject *)0x0) {
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0x28),pCVar1,param_2);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(this + 0x1c),param_2);
    cocos2d::CCDictionary::removeObjectForKey(activeEnemies,param_2);
    (**(code **)(*(int *)pCVar1 + 0x214))(pCVar1,0);
    uVar7 = (**(code **)(*(int *)pCVar1 + 0x218))(pCVar1,0,0,0,0,0);
    pCVar1[0x16c] = (CCObject)0x0;
    iVar3 = *(int *)(pCVar1 + 0x1c0);
    uVar2 = *(undefined4 *)(this + 0x44);
    uVar4 = *(undefined4 *)(this + 0x48);
    uVar5 = *(undefined4 *)(this + 0x4c);
    *(undefined4 *)(iVar3 + 0x28) = *(undefined4 *)(this + 0x40);
    *(undefined4 *)(iVar3 + 0x2c) = uVar2;
    *(undefined4 *)(iVar3 + 0x30) = uVar4;
    *(undefined4 *)(iVar3 + 0x34) = uVar5;
    pcVar6 = *(code **)(*(int *)pCVar1 + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    (*pcVar6)(pCVar1,aCStack_18);
  }
  return;
}

// ---- EnemyManager::removeHawkDrone  @ 0x329de0
/* EnemyManager::removeHawkDrone(std::string) */

void __thiscall EnemyManager::removeHawkDrone(EnemyManager *this,string *param_2)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  code *pcVar6;
  undefined8 uVar7;
  CCPoint aCStack_18 [12];
  
  pCVar1 = (CCObject *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x14),param_2);
  if (pCVar1 != (CCObject *)0x0) {
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0x20),pCVar1,param_2);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(this + 0x14),param_2);
    cocos2d::CCDictionary::removeObjectForKey(activeEnemies,param_2);
    (**(code **)(*(int *)pCVar1 + 0x214))(pCVar1,0);
    uVar7 = (**(code **)(*(int *)pCVar1 + 0x218))(pCVar1,0,0,0,0,0);
    pCVar1[0x16c] = (CCObject)0x0;
    iVar3 = *(int *)(pCVar1 + 0x1c8);
    uVar2 = *(undefined4 *)(this + 0x44);
    uVar4 = *(undefined4 *)(this + 0x48);
    uVar5 = *(undefined4 *)(this + 0x4c);
    *(undefined4 *)(iVar3 + 0x28) = *(undefined4 *)(this + 0x40);
    *(undefined4 *)(iVar3 + 0x2c) = uVar2;
    *(undefined4 *)(iVar3 + 0x30) = uVar4;
    *(undefined4 *)(iVar3 + 0x34) = uVar5;
    pcVar6 = *(code **)(*(int *)pCVar1 + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    (*pcVar6)(pCVar1,aCStack_18);
    cocos2d::CCParticleSystem::stopSystem(*(CCParticleSystem **)(pCVar1 + 0x1bc));
  }
  return;
}

// ---- EnemyManager::removeHumanoidDrone  @ 0x329ed0
/* EnemyManager::removeHumanoidDrone(std::string) */

void __thiscall EnemyManager::removeHumanoidDrone(EnemyManager *this,string *param_2)

{
  CCObject *pCVar1;
  int *piVar2;
  SoldierView *this_00;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  code *pcVar7;
  float extraout_s0;
  float extraout_s1;
  CCPoint aCStack_18 [12];
  
  pCVar1 = (CCObject *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x18),param_2);
  if (pCVar1 != (CCObject *)0x0) {
    cocos2d::CCDictionary::setObject(*(CCDictionary **)(this + 0x24),pCVar1,param_2);
    cocos2d::CCDictionary::removeObjectForKey(*(CCDictionary **)(this + 0x18),param_2);
    cocos2d::CCDictionary::removeObjectForKey(activeEnemies,param_2);
    (**(code **)(*(int *)pCVar1 + 0x214))(pCVar1,0);
    (**(code **)(*(int *)pCVar1 + 0x218))(pCVar1,0,0,0,0,0);
    iVar4 = *(int *)(*(int *)(pCVar1 + 0x1ac) + 0x138);
    uVar3 = *(undefined4 *)(this + 0x44);
    uVar5 = *(undefined4 *)(this + 0x48);
    uVar6 = *(undefined4 *)(this + 0x4c);
    *(undefined4 *)(iVar4 + 0x28) = *(undefined4 *)(this + 0x40);
    *(undefined4 *)(iVar4 + 0x2c) = uVar3;
    *(undefined4 *)(iVar4 + 0x30) = uVar5;
    *(undefined4 *)(iVar4 + 0x34) = uVar6;
    piVar2 = (int *)(**(code **)(**(int **)(pCVar1 + 0x1ac) + 0x1d8))
                              (*(undefined4 *)(pCVar1 + 0x1ac));
    pcVar7 = *(code **)(*piVar2 + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_18,extraout_s0,extraout_s1);
    (*pcVar7)(piVar2,aCStack_18);
    this_00 = (SoldierView *)
              (**(code **)(**(int **)(pCVar1 + 0x1ac) + 0x1d8))(*(undefined4 *)(pCVar1 + 0x1ac));
    SoldierView::setIsVisible(this_00,false);
  }
  return;
}

// ---- EnemyManager::createHawkDrone  @ 0x329fe8
/* EnemyManager::createHawkDrone(cpVect) */

CCObject *
EnemyManager::createHawkDrone
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  undefined4 uVar1;
  CCNotificationCenter *this;
  int iVar2;
  CCDictionary *pCVar3;
  code *pcVar4;
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  CCObject *local_20;
  CCString *local_1c;
  
  *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + 1;
  local_20 = (CCObject *)HawkDrone::create();
  local_1c = (CCString *)
             cocos2d::CCString::createWithFormat("enemy%d",*(undefined4 *)(param_1 + 0x2c));
  pCVar3 = *(CCDictionary **)(param_1 + 0x20);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  cocos2d::CCDictionary::setObject(pCVar3,local_20,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  pCVar3 = allEnemies;
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  cocos2d::CCDictionary::setObject(pCVar3,local_20,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  pcVar4 = *(code **)(*(int *)local_20 + 0x21c);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  (*pcVar4)(local_20,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_20,3);
  (**(code **)(*(int *)local_20 + 0x1d8))(local_20);
  iVar2 = *(int *)(local_20 + 0x1c8);
  *(undefined4 *)(iVar2 + 0x28) = param_3;
  *(undefined4 *)(iVar2 + 0x2c) = param_4;
  *(undefined4 *)(iVar2 + 0x30) = param_5;
  *(undefined4 *)(iVar2 + 0x34) = param_6;
  (**(code **)(*(int *)local_20 + 0x90))(local_20,0);
  (**(code **)(*(int *)local_20 + 0x214))(local_20,0);
  (**(code **)(*(int *)local_20 + 0x218))(local_20,0,0,0,0,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"EnemyAdded",(CCObject *)local_1c);
  return local_20;
}

// ---- EnemyManager::createHumanoidDrone  @ 0x32a1d8
/* EnemyManager::createHumanoidDrone(cpVect) */

CCObject *
EnemyManager::createHumanoidDrone
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  undefined4 uVar1;
  int *piVar2;
  CCNotificationCenter *this;
  int iVar3;
  CCDictionary *pCVar4;
  code *pcVar5;
  float extraout_s0;
  float extraout_s1;
  undefined1 auStack_2c [4];
  CCObject *local_28;
  CCString *local_24;
  string asStack_20 [8];
  
  *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + 1;
  local_28 = (CCObject *)HumanoidDrone::create();
  local_24 = (CCString *)
             cocos2d::CCString::createWithFormat("enemy%d",*(undefined4 *)(param_1 + 0x2c));
  pCVar4 = *(CCDictionary **)(param_1 + 0x24);
  uVar1 = cocos2d::CCString::getCString(local_24);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(asStack_20,uVar1,auStack_2c);
  cocos2d::CCDictionary::setObject(pCVar4,local_28,asStack_20);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_2c);
  pCVar4 = allEnemies;
  uVar1 = cocos2d::CCString::getCString(local_24);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(asStack_20,uVar1,auStack_2c);
  cocos2d::CCDictionary::setObject(pCVar4,local_28,asStack_20);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_2c);
  pcVar5 = *(code **)(*(int *)local_28 + 0x21c);
  uVar1 = cocos2d::CCString::getCString(local_24);
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(asStack_20,uVar1,auStack_2c);
  (*pcVar5)(local_28,asStack_20);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_2c);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,*(int *)(local_28 + 0x1a8),3);
  (**(code **)(*(int *)local_28 + 0x1d8))(local_28);
  iVar3 = *(int *)(*(int *)(local_28 + 0x1ac) + 0x138);
  *(undefined4 *)(iVar3 + 0x28) = param_3;
  *(undefined4 *)(iVar3 + 0x2c) = param_4;
  *(undefined4 *)(iVar3 + 0x30) = param_5;
  *(undefined4 *)(iVar3 + 0x34) = param_6;
  piVar2 = (int *)(**(code **)(**(int **)(local_28 + 0x1ac) + 0x1d8))(*(int *)(local_28 + 0x1ac));
  (**(code **)(*piVar2 + 0x90))(piVar2,0);
  piVar2 = (int *)(**(code **)(**(int **)(local_28 + 0x1ac) + 0x1d8))(*(int *)(local_28 + 0x1ac));
  pcVar5 = *(code **)(*piVar2 + 0x4c);
  cocos2d::CCPoint::CCPoint((CCPoint *)asStack_20,extraout_s0,extraout_s1);
  (*pcVar5)(piVar2,asStack_20);
  (**(code **)(*(int *)local_28 + 0x214))(local_28,0);
  (**(code **)(*(int *)local_28 + 0x218))(local_28,0,0,0,0,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"EnemyAdded",(CCObject *)local_24);
  return local_28;
}

// ---- EnemyManager::createWormDrone  @ 0x32a434
/* EnemyManager::createWormDrone(cpVect) */

CCObject *
EnemyManager::createWormDrone
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  undefined4 uVar1;
  CCNotificationCenter *this;
  int iVar2;
  CCDictionary *pCVar3;
  code *pcVar4;
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  CCObject *local_20;
  CCString *local_1c;
  
  *(int *)(param_1 + 0x2c) = *(int *)(param_1 + 0x2c) + 1;
  local_20 = (CCObject *)WormDrone::create();
  local_1c = (CCString *)
             cocos2d::CCString::createWithFormat("enemy%d",*(undefined4 *)(param_1 + 0x2c));
  pCVar3 = *(CCDictionary **)(param_1 + 0x28);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  cocos2d::CCDictionary::setObject(pCVar3,local_20,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  pCVar3 = allEnemies;
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  cocos2d::CCDictionary::setObject(pCVar3,local_20,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  pcVar4 = *(code **)(*(int *)local_20 + 0x21c);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  (*pcVar4)(local_20,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_20,3);
  (**(code **)(*(int *)local_20 + 0x1d8))(local_20);
  iVar2 = *(int *)(local_20 + 0x1c0);
  *(undefined4 *)(iVar2 + 0x28) = param_3;
  *(undefined4 *)(iVar2 + 0x2c) = param_4;
  *(undefined4 *)(iVar2 + 0x30) = param_5;
  *(undefined4 *)(iVar2 + 0x34) = param_6;
  (**(code **)(*(int *)local_20 + 0x90))(local_20,0);
  (**(code **)(*(int *)local_20 + 0x214))(local_20,0);
  (**(code **)(*(int *)local_20 + 0x218))(local_20,0,0,0,0,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"EnemyAdded",(CCObject *)local_1c);
  return local_20;
}

// ---- EnemyManager::addWormDrone  @ 0x32a624
/* EnemyManager::addWormDrone(cpVect) */

int * EnemyManager::addWormDrone
                (WormDrone *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  CCArray *this;
  undefined4 uVar2;
  CCObject *pCVar3;
  CCNotificationCenter *this_00;
  CCDictionary *this_01;
  float extraout_s0;
  undefined1 auStack_2c [4];
  string asStack_28 [4];
  CCString *local_24;
  int *local_20;
  CCObject *local_1c;
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(param_1 + 0x28));
  if (iVar1 == 0) {
    local_20 = (int *)0x0;
  }
  else {
    this = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(param_1 + 0x28));
    local_24 = (CCString *)cocos2d::CCArray::lastObject(this);
    this_01 = *(CCDictionary **)(param_1 + 0x28);
    uVar2 = cocos2d::CCString::getCString(local_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_28,uVar2,auStack_2c);
    local_20 = (int *)cocos2d::CCDictionary::objectForKey(this_01,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_0079a3fc(auStack_2c);
    spawnWormDrone(param_1);
    iVar1 = local_20[0x70];
    *(undefined4 *)(iVar1 + 0x28) = param_3;
    *(undefined4 *)(iVar1 + 0x2c) = param_4;
    *(undefined4 *)(iVar1 + 0x30) = param_5;
    *(undefined4 *)(iVar1 + 0x34) = param_6;
    (**(code **)(*local_20 + 0x1c0))(asStack_28,local_20);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_28);
    uVar2 = cocos2d::CCFloat::create(extraout_s0);
    local_1c = (CCObject *)cocos2d::CCArray::create(pCVar3,uVar2,0);
    FUN_007c5914(asStack_28);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"SpawnEnemy",local_1c);
  }
  return local_20;
}

// ---- EnemyManager::addHawkDrone  @ 0x32a748
/* EnemyManager::addHawkDrone(cpVect) */

int * EnemyManager::addHawkDrone
                (HawkDrone *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  CCArray *this;
  undefined4 uVar2;
  CCObject *pCVar3;
  CCNotificationCenter *this_00;
  CCDictionary *this_01;
  float extraout_s0;
  undefined1 auStack_2c [4];
  string asStack_28 [4];
  CCString *local_24;
  int *local_20;
  CCObject *local_1c;
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(param_1 + 0x20));
  if (iVar1 == 0) {
    local_20 = (int *)0x0;
  }
  else {
    this = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(param_1 + 0x20));
    local_24 = (CCString *)cocos2d::CCArray::lastObject(this);
    this_01 = *(CCDictionary **)(param_1 + 0x20);
    uVar2 = cocos2d::CCString::getCString(local_24);
    FUN_0079a3f4(auStack_2c);
    FUN_007c6a60(asStack_28,uVar2,auStack_2c);
    local_20 = (int *)cocos2d::CCDictionary::objectForKey(this_01,asStack_28);
    FUN_007c5914(asStack_28);
    FUN_0079a3fc(auStack_2c);
    spawnHawkDrone(param_1);
    iVar1 = local_20[0x72];
    *(undefined4 *)(iVar1 + 0x28) = param_3;
    *(undefined4 *)(iVar1 + 0x2c) = param_4;
    *(undefined4 *)(iVar1 + 0x30) = param_5;
    *(undefined4 *)(iVar1 + 0x34) = param_6;
    (**(code **)(*local_20 + 0x1c0))(asStack_28,local_20);
    pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_28);
    uVar2 = cocos2d::CCFloat::create(extraout_s0);
    local_1c = (CCObject *)cocos2d::CCArray::create(pCVar3,uVar2,0);
    FUN_007c5914(asStack_28);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"SpawnEnemy",local_1c);
  }
  return local_20;
}

// ---- EnemyManager::addHumanoidDrone  @ 0x32a86c
/* EnemyManager::addHumanoidDrone(cpVect) */

HumanoidDrone *
EnemyManager::addHumanoidDrone
          (EnemyManager *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  CCArray *this;
  undefined4 uVar2;
  int *piVar3;
  WeaponFactory *this_00;
  CCObject *pCVar4;
  CCNotificationCenter *this_01;
  CCDictionary *this_02;
  code *pcVar5;
  float extraout_s0;
  float extraout_s1;
  undefined1 auStack_30 [4];
  CCString *local_2c;
  HumanoidDrone *local_28;
  CCObject *local_24;
  string asStack_20 [12];
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(param_1 + 0x24));
  if (iVar1 == 0) {
    local_28 = (HumanoidDrone *)0x0;
  }
  else {
    this = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(param_1 + 0x24));
    local_2c = (CCString *)cocos2d::CCArray::lastObject(this);
    this_02 = *(CCDictionary **)(param_1 + 0x24);
    uVar2 = cocos2d::CCString::getCString(local_2c);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_20,uVar2,auStack_30);
    local_28 = (HumanoidDrone *)cocos2d::CCDictionary::objectForKey(this_02,asStack_20);
    FUN_007c5914(asStack_20);
    FUN_0079a3fc(auStack_30);
    spawnHumanoidDrone(param_1,local_28);
    iVar1 = *(int *)(*(int *)(local_28 + 0x1ac) + 0x138);
    *(undefined4 *)(iVar1 + 0x28) = param_3;
    *(undefined4 *)(iVar1 + 0x2c) = param_4;
    *(undefined4 *)(iVar1 + 0x30) = param_5;
    *(undefined4 *)(iVar1 + 0x34) = param_6;
    piVar3 = (int *)(**(code **)(**(int **)(local_28 + 0x1ac) + 0x1d8))(*(int *)(local_28 + 0x1ac));
    pcVar5 = *(code **)(*piVar3 + 0x4c);
    cocos2d::CCPoint::CCPoint((CCPoint *)asStack_20,extraout_s0,extraout_s1);
    (*pcVar5)(piVar3,asStack_20);
    pcVar5 = *(code **)(**(int **)(local_28 + 0x1ac) + 0x214);
    iVar1 = *(int *)(local_28 + 0x1ac);
    this_00 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    uVar2 = WeaponFactory::createRandomPrimaryWeapon(this_00);
    (*pcVar5)(iVar1,uVar2);
    (**(code **)(*(int *)local_28 + 0x1c0))(asStack_20,local_28);
    pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_20);
    iVar1 = (**(code **)(**(int **)(*(int *)(local_28 + 0x1ac) + 0x148) + 0x27c))
                      (*(undefined4 *)(*(int *)(local_28 + 0x1ac) + 0x148));
    uVar2 = cocos2d::CCInteger::create(iVar1);
    local_24 = (CCObject *)cocos2d::CCArray::create(pCVar4,uVar2,0);
    FUN_007c5914(asStack_20);
    this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_01,"SpawnEnemy",local_24);
  }
  return local_28;
}

// ---- EnemyManager::onEnemyDamaged  @ 0x32aa28
/* EnemyManager::onEnemyDamaged(cocos2d::CCObject*) */

void __thiscall EnemyManager::onEnemyDamaged(EnemyManager *this,CCObject *param_1)

{
  CCDictionary *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined1 auStack_30 [4];
  string asStack_2c [4];
  CCArray *local_28;
  CCInteger *local_24;
  CCInteger *local_20;
  CCString *local_1c;
  CCString *local_18;
  int *local_14;
  
  local_28 = (CCArray *)param_1;
  local_24 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,4);
  local_20 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_28,5);
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex(local_28,8);
  local_18 = (CCString *)cocos2d::CCArray::objectAtIndex(local_28,9);
  this_00 = allEnemies;
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(asStack_2c,uVar1,auStack_30);
  local_14 = (int *)cocos2d::CCDictionary::objectForKey(this_00,asStack_2c);
  FUN_007c5914(asStack_2c);
  FUN_0079a3fc(auStack_30);
  if (local_14 != (int *)0x0) {
    pcVar3 = *(code **)(*local_14 + 0x1e0);
    uVar1 = cocos2d::CCInteger::getValue(local_20);
    uVar2 = cocos2d::CCString::getCString(local_18);
    FUN_0079a3f4(auStack_30);
    FUN_007c6a60(asStack_2c,uVar2,auStack_30);
    uVar2 = cocos2d::CCInteger::getValue(local_24);
    (*pcVar3)(local_14,uVar1,asStack_2c,uVar2);
    FUN_007c5914(asStack_2c);
    FUN_0079a3fc(auStack_30);
  }
  return;
}

// ---- EnemyManager::onExplosion  @ 0x32ab40
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032abac */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EnemyManager::onExplosion(cocos2d::CCObject*) */

void EnemyManager::onExplosion(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  int iVar3;
  undefined4 uVar4;
  CCArray *in_r1;
  bool bVar5;
  code *pcVar6;
  uint in_fpscr;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar7;
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  CCDictElement *local_70;
  CCDictElement *local_6c;
  CCArray *local_68;
  CCFloat *local_64;
  CCFloat *local_60;
  CCInteger *local_5c;
  CCString *local_58;
  int *local_54;
  undefined8 local_50;
  undefined1 local_48 [16];
  undefined1 local_38 [16];
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  local_68 = in_r1;
  local_64 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_60 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_68,1);
  local_5c = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_68,4);
  local_58 = (CCString *)cocos2d::CCArray::objectAtIndex(local_68,7);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_64);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_60);
  FUN_00327e44(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_48);
  local_70 = (CCDictElement *)0x0;
  local_6c = (CCDictElement *)0x0;
  if ((activeEnemies == (CCDictionary *)0x0) ||
     (iVar3 = cocos2d::CCDictionary::count(activeEnemies), iVar3 == 0)) {
    bVar5 = false;
  }
  else {
    bVar5 = true;
  }
  if (bVar5) {
    local_70 = *(CCDictElement **)(activeEnemies + 0x14);
    if (*(int *)(activeEnemies + 0x14) == 0) {
      local_6c = (CCDictElement *)0x0;
    }
    else {
      local_6c = *(CCDictElement **)(*(int *)(activeEnemies + 0x14) + 0x110);
      local_50 = (double)CONCAT44(local_50._4_4_,(undefined4)local_50);
    }
    while (local_70 != (CCDictElement *)0x0) {
      local_54 = (int *)cocos2d::CCDictElement::getObject(local_70);
      (**(code **)(*local_54 + 0x1ac))(local_38,local_54);
      FUN_00327e6c((int)local_48._0_8_,in_s1,(int)local_48._8_8_,in_s3,(int)local_38._0_8_,in_s5,
                   (int)local_38._8_8_,&local_28);
      dVar7 = (double)cpvlength(local_28,uStack_24,uStack_20,uStack_1c);
      in_fpscr = in_fpscr & 0xfffffff | (uint)(dVar7 < 125.0) << 0x1f |
                 (uint)(dVar7 == 125.0) << 0x1e | (uint)(125.0 <= dVar7) << 0x1d;
      local_50 = dVar7;
      if ((int)in_fpscr < 0) {
        pcVar6 = *(code **)(*local_54 + 0x1e0);
        uVar4 = cocos2d::CCString::getCString(local_58);
        FUN_0079a3f4(auStack_78);
        FUN_007c6a60(auStack_74,uVar4,auStack_78);
        uVar4 = cocos2d::CCInteger::getValue(local_5c);
        (*pcVar6)(local_54,(int)(longlong)(dVar7 * -0.8 + 125.0),auStack_74,uVar4);
        FUN_007c5914(auStack_74);
        FUN_0079a3fc(auStack_78);
      }
      local_70 = local_6c;
      if (local_6c == (CCDictElement *)0x0) {
        local_6c = (CCDictElement *)0x0;
      }
      else {
        local_6c = *(CCDictElement **)(local_6c + 0x110);
      }
    }
  }
  return;
}

// ---- EnemyManager::getNextHawk  @ 0x32ad28
/* EnemyManager::getNextHawk() */

undefined4 __thiscall EnemyManager::getNextHawk(EnemyManager *this)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  CCDictionary *this_00;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCArray *local_18;
  CCString *local_14;
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x14));
  if (iVar1 == 0) {
    uVar4 = 0;
  }
  else {
    *(int *)(this + 0x30) = *(int *)(this + 0x30) + 1;
    uVar3 = *(uint *)(this + 0x30);
    uVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x14));
    if (uVar2 <= uVar3) {
      *(undefined4 *)(this + 0x30) = 0;
    }
    local_18 = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(this + 0x14));
    local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_18,*(uint *)(this + 0x30));
    this_00 = *(CCDictionary **)(this + 0x14);
    uVar4 = cocos2d::CCString::getCString(local_14);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar4,auStack_20);
    uVar4 = cocos2d::CCDictionary::objectForKey(this_00,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  return uVar4;
}

// ---- EnemyManager::getNextHumanoid  @ 0x32adf8
/* EnemyManager::getNextHumanoid() */

undefined4 __thiscall EnemyManager::getNextHumanoid(EnemyManager *this)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  CCDictionary *this_00;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCArray *local_18;
  CCString *local_14;
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x18));
  if (iVar1 == 0) {
    uVar4 = 0;
  }
  else {
    *(int *)(this + 0x38) = *(int *)(this + 0x38) + 1;
    uVar3 = *(uint *)(this + 0x38);
    uVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x18));
    if (uVar2 <= uVar3) {
      *(undefined4 *)(this + 0x38) = 0;
    }
    local_18 = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(this + 0x18));
    local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_18,*(uint *)(this + 0x38));
    this_00 = *(CCDictionary **)(this + 0x18);
    uVar4 = cocos2d::CCString::getCString(local_14);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar4,auStack_20);
    uVar4 = cocos2d::CCDictionary::objectForKey(this_00,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  return uVar4;
}

// ---- EnemyManager::getNextWorm  @ 0x32aec8
/* EnemyManager::getNextWorm() */

undefined4 __thiscall EnemyManager::getNextWorm(EnemyManager *this)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  CCDictionary *this_00;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCArray *local_18;
  CCString *local_14;
  
  iVar1 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x1c));
  if (iVar1 == 0) {
    uVar4 = 0;
  }
  else {
    *(int *)(this + 0x34) = *(int *)(this + 0x34) + 1;
    uVar3 = *(uint *)(this + 0x34);
    uVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x1c));
    if (uVar2 <= uVar3) {
      *(undefined4 *)(this + 0x34) = 0;
    }
    local_18 = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(this + 0x1c));
    local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_18,*(uint *)(this + 0x34));
    this_00 = *(CCDictionary **)(this + 0x1c);
    uVar4 = cocos2d::CCString::getCString(local_14);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar4,auStack_20);
    uVar4 = cocos2d::CCDictionary::objectForKey(this_00,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  return uVar4;
}

// ---- EnemyManager::getNextEnemy  @ 0x32af98
/* EnemyManager::getNextEnemy() */

undefined4 __thiscall EnemyManager::getNextEnemy(EnemyManager *this)

{
  CCDictionary *this_00;
  int iVar1;
  uint uVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCArray *local_18;
  CCString *local_14;
  
  iVar1 = cocos2d::CCDictionary::count(activeEnemies);
  if (iVar1 == 0) {
    uVar4 = 0;
  }
  else {
    *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + 1;
    uVar3 = *(uint *)(this + 0x3c);
    uVar2 = cocos2d::CCDictionary::count(activeEnemies);
    if (uVar2 <= uVar3) {
      *(undefined4 *)(this + 0x3c) = 0;
    }
    local_18 = (CCArray *)cocos2d::CCDictionary::allKeys(activeEnemies);
    local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(local_18,*(uint *)(this + 0x3c));
    this_00 = activeEnemies;
    uVar4 = cocos2d::CCString::getCString(local_14);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar4,auStack_20);
    uVar4 = cocos2d::CCDictionary::objectForKey(this_00,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  return uVar4;
}

// ---- EnemyManager::killAllEnemies  @ 0x32b07c
/* EnemyManager::killAllEnemies() */

void __thiscall EnemyManager::killAllEnemies(EnemyManager *this)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  CCDictElement *local_24;
  CCDictElement *local_20;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  
  if ((*(int *)(this + 0x14) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x14)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x14) + 0x14);
    if (*(int *)(*(int *)(this + 0x14) + 0x14) == 0) {
      local_20 = (CCDictElement *)0x0;
    }
    else {
      local_20 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x14) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*piVar3 + 0x1e8))(piVar3,0);
      local_24 = local_20;
      if (local_20 == (CCDictElement *)0x0) {
        local_20 = (CCDictElement *)0x0;
      }
      else {
        local_20 = *(CCDictElement **)(local_20 + 0x110);
      }
    }
  }
  if ((*(int *)(this + 0x1c) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x1c)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x1c) + 0x14);
    if (*(int *)(*(int *)(this + 0x1c) + 0x14) == 0) {
      local_1c = (CCDictElement *)0x0;
    }
    else {
      local_1c = *(CCDictElement **)(*(int *)(*(int *)(this + 0x1c) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*piVar3 + 0x1e8))(piVar3,0);
      local_24 = local_1c;
      if (local_1c == (CCDictElement *)0x0) {
        local_1c = (CCDictElement *)0x0;
      }
      else {
        local_1c = *(CCDictElement **)(local_1c + 0x110);
      }
    }
  }
  if ((*(int *)(this + 0x18) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0x18)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_24 = *(CCDictElement **)(*(int *)(this + 0x18) + 0x14);
    if (*(int *)(*(int *)(this + 0x18) + 0x14) == 0) {
      local_18 = (CCDictElement *)0x0;
    }
    else {
      local_18 = *(CCDictElement **)(*(int *)(*(int *)(this + 0x18) + 0x14) + 0x110);
    }
    while (local_24 != (CCDictElement *)0x0) {
      piVar3 = (int *)cocos2d::CCDictElement::getObject(local_24);
      (**(code **)(*piVar3 + 0x1e8))(piVar3,0);
      local_24 = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  return;
}

// ---- EnemyManager::addHawkDroneById  @ 0x32b20c
/* EnemyManager::addHawkDroneById(std::string) */

undefined4 __thiscall EnemyManager::addHawkDroneById(EnemyManager *this,string *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x20),param_2);
  spawnHawkDrone((HawkDrone *)this);
  return uVar1;
}

// ---- EnemyManager::addWormDroneById  @ 0x32b238
/* EnemyManager::addWormDroneById(std::string) */

undefined4 __thiscall EnemyManager::addWormDroneById(EnemyManager *this,string *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x28),param_2);
  spawnWormDrone((WormDrone *)this);
  return uVar1;
}

// ---- EnemyManager::addHumanoidDroneById  @ 0x32b264
/* EnemyManager::addHumanoidDroneById(std::string) */

HumanoidDrone * __thiscall EnemyManager::addHumanoidDroneById(EnemyManager *this,string *param_2)

{
  HumanoidDrone *pHVar1;
  
  pHVar1 = (HumanoidDrone *)
           cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x24),param_2);
  spawnHumanoidDrone(this,pHVar1);
  return pHVar1;
}

// ---- EnemyManager::onEnemySpawned  @ 0x32b290
/* EnemyManager::onEnemySpawned(cocos2d::CCObject*) */

void __thiscall EnemyManager::onEnemySpawned(EnemyManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  int iVar2;
  WeaponFactory *pWVar3;
  CCDictionary *pCVar4;
  code *pcVar5;
  undefined4 uVar6;
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  CCArray *local_20;
  CCString *local_1c;
  CCInteger *local_18;
  int local_14;
  
  local_20 = (CCArray *)param_1;
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_18 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_20,1);
  pCVar4 = *(CCDictionary **)(this + 0x20);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  iVar2 = cocos2d::CCDictionary::objectForKey(pCVar4,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  if (iVar2 != 0) {
    uVar1 = cocos2d::CCString::getCString(local_1c);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_24,uVar1,auStack_28);
    addHawkDroneById(this,asStack_24);
    FUN_007c5914(asStack_24);
    FUN_0079a3fc(auStack_28);
  }
  pCVar4 = *(CCDictionary **)(this + 0x28);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  iVar2 = cocos2d::CCDictionary::objectForKey(pCVar4,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  if (iVar2 != 0) {
    uVar1 = cocos2d::CCString::getCString(local_1c);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_24,uVar1,auStack_28);
    addWormDroneById(this,asStack_24);
    FUN_007c5914(asStack_24);
    FUN_0079a3fc(auStack_28);
  }
  pCVar4 = *(CCDictionary **)(this + 0x24);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar1,auStack_28);
  iVar2 = cocos2d::CCDictionary::objectForKey(pCVar4,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  if (iVar2 != 0) {
    uVar1 = cocos2d::CCString::getCString(local_1c);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(asStack_24,uVar1,auStack_28);
    local_14 = addHumanoidDroneById(this,asStack_24);
    FUN_007c5914(asStack_24);
    FUN_0079a3fc(auStack_28);
    pcVar5 = *(code **)(**(int **)(local_14 + 0x1ac) + 0x214);
    uVar6 = *(undefined4 *)(local_14 + 0x1ac);
    pWVar3 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    uVar1 = cocos2d::CCInteger::getValue(local_18);
    uVar1 = WeaponFactory::createWeaponFromAmmoType(pWVar3,uVar1);
    (*pcVar5)(uVar6,uVar1);
  }
  return;
}

// ---- EnemyManager::onEnemyDestroyed  @ 0x32b500
/* EnemyManager::onEnemyDestroyed(cocos2d::CCObject*) */

void __thiscall EnemyManager::onEnemyDestroyed(EnemyManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  int iVar2;
  CCDictionary *pCVar3;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  CCObject *local_18;
  int local_14;
  
  pCVar3 = *(CCDictionary **)(this + 0x14);
  local_18 = param_1;
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar1,auStack_20);
  iVar2 = cocos2d::CCDictionary::objectForKey(pCVar3,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  if (iVar2 != 0) {
    pCVar3 = *(CCDictionary **)(this + 0x14);
    uVar1 = cocos2d::CCString::getCString((CCString *)local_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar1,auStack_20);
    cocos2d::CCDictionary::objectForKey(pCVar3,asStack_1c);
    destroyHawk((HawkDrone *)this);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  pCVar3 = *(CCDictionary **)(this + 0x1c);
  uVar1 = cocos2d::CCString::getCString((CCString *)local_18);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar1,auStack_20);
  iVar2 = cocos2d::CCDictionary::objectForKey(pCVar3,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  if (iVar2 != 0) {
    pCVar3 = *(CCDictionary **)(this + 0x1c);
    uVar1 = cocos2d::CCString::getCString((CCString *)local_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar1,auStack_20);
    cocos2d::CCDictionary::objectForKey(pCVar3,asStack_1c);
    destroyWorm((WormDrone *)this);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
  }
  pCVar3 = *(CCDictionary **)(this + 0x18);
  uVar1 = cocos2d::CCString::getCString((CCString *)local_18);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar1,auStack_20);
  iVar2 = cocos2d::CCDictionary::objectForKey(pCVar3,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  if (iVar2 != 0) {
    pCVar3 = *(CCDictionary **)(this + 0x18);
    uVar1 = cocos2d::CCString::getCString((CCString *)local_18);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar1,auStack_20);
    local_14 = cocos2d::CCDictionary::objectForKey(pCVar3,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
    destroyHumanoid((HumanoidDrone *)this);
    (**(code **)(**(int **)(local_14 + 0x1ac) + 0x2d8))(*(undefined4 *)(local_14 + 0x1ac));
  }
  return;
}

// ---- EnemyManager::onEnemyPositionUpdate  @ 0x32b768
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032b80a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*) */

void EnemyManager::onEnemyPositionUpdate(CCObject *param_1)

{
  CCDictionary *this;
  undefined1 uVar1;
  CCString *this_00;
  undefined4 uVar2;
  int *piVar3;
  CCFloat *pCVar4;
  float fVar5;
  float fVar6;
  undefined4 uVar7;
  CCInteger *this_01;
  float fVar8;
  float fVar9;
  undefined4 uVar10;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  this = allEnemies;
  uVar2 = cocos2d::CCString::getCString(this_00);
  FUN_0079a3f4(&local_30);
  FUN_007c6a60(&local_20,uVar2,&local_30);
  piVar3 = (int *)cocos2d::CCDictionary::objectForKey(this,(string *)&local_20);
  FUN_007c5914(&local_20);
  FUN_0079a3fc(&local_30);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,1);
  fVar5 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,2);
  fVar6 = (float)cocos2d::CCFloat::getValue(pCVar4);
  FUN_00327e44(SUB84((double)fVar5,0),in_s1,SUB84((double)fVar6,0),&local_40);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,3);
  uVar2 = cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,4);
  uVar7 = cocos2d::CCFloat::getValue(pCVar4);
  this_01 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,5);
  uVar1 = cocos2d::CCInteger::getValue(this_01);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,6);
  fVar5 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,7);
  fVar6 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,8);
  fVar8 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,9);
  fVar9 = (float)cocos2d::CCFloat::getValue(pCVar4);
  FUN_00327e44(SUB84((double)fVar5,0),in_s1,SUB84((double)fVar6,0),&local_30);
  FUN_00327e44(SUB84((double)fVar8,0),in_s1,SUB84((double)fVar9,0),&local_20);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,10);
  uVar10 = cocos2d::CCFloat::getValue(pCVar4);
  (**(code **)(*piVar3 + 0x224))(piVar3,uStack_34,local_40,uStack_3c);
  (**(code **)(*piVar3 + 0x22c))(piVar3,uVar2);
  (**(code **)(*piVar3 + 0x230))(piVar3,uVar7);
  (**(code **)(*piVar3 + 0x228))(piVar3,uStack_24,local_30,uStack_2c);
  (**(code **)(*piVar3 + 0x23c))(piVar3,uStack_14,local_20,uStack_1c);
  (**(code **)(*piVar3 + 0x238))(piVar3,uVar10);
  piVar3 = (int *)(**(code **)(*piVar3 + 0x20c))(piVar3);
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x248))(piVar3,uVar1);
  }
  return;
}
