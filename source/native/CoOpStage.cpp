// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 19 functions

// ---- CoOpStage::CoOpStage  @ 0x30f41c
/* CoOpStage::CoOpStage() */

CoOpStage * __thiscall CoOpStage::CoOpStage(CoOpStage *this)

{
  Stage::Stage((Stage *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0090f248;
  *(undefined ***)(this + 0xe4) = &PTR__CoOpStage_1_0090f4ac;
  *(undefined **)(this + 0xe8) = &DAT_0090f4dc;
  *(undefined **)(this + 0xec) = &DAT_0090f4e8;
  return this;
}

// ---- CoOpStage::init  @ 0x30f474
/* CoOpStage::init() */

bool __thiscall CoOpStage::init(CoOpStage *this)

{
  char cVar1;
  CCNotificationCenter *this_00;
  
  cVar1 = Stage::init((Stage *)this);
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x180) = 0;
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (this_00,(CCObject *)this,(_func_void_CCObject_ptr *)0x310281,(char *)0x0,
               (CCObject *)"AfterPeerDisconnected");
  }
  return cVar1 == '\x01';
}

// ---- CoOpStage::~CoOpStage  @ 0x30f4e4
/* WARNING: Removing unreachable block (ram,0x0030f560) */
/* CoOpStage::~CoOpStage() */

CoOpStage * __thiscall CoOpStage::~CoOpStage(CoOpStage *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0090f248;
  *(undefined ***)(this + 0xe4) = &PTR__CoOpStage_1_0090f4ac;
  *(undefined **)(this + 0xe8) = &DAT_0090f4dc;
  *(undefined **)(this + 0xec) = &DAT_0090f4e8;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  if (*(int *)(this + 0x16c) != 0) {
    (**(code **)(**(int **)(this + 0x16c) + 8))(*(undefined4 *)(this + 0x16c));
  }
  Stage::~Stage((Stage *)this);
  return this;
}

// ---- CoOpStage::~CoOpStage  @ 0x30f578
/* non-virtual thunk to CoOpStage::~CoOpStage() */

void __thiscall CoOpStage::~CoOpStage(CoOpStage *this)

{
  ~CoOpStage(this + -0xe4);
  return;
}

// ---- CoOpStage::~CoOpStage  @ 0x30f580
/* CoOpStage::~CoOpStage() */

CoOpStage * __thiscall CoOpStage::~CoOpStage(CoOpStage *this)

{
  ~CoOpStage(this);
  operator_delete(this);
  return this;
}

// ---- CoOpStage::~CoOpStage  @ 0x30f59c
/* non-virtual thunk to CoOpStage::~CoOpStage() */

void __thiscall CoOpStage::~CoOpStage(CoOpStage *this)

{
  ~CoOpStage(this + -0xe4);
  return;
}

// ---- CoOpStage::setupStage  @ 0x30f5a4
/* CoOpStage::setupStage() */

void __thiscall CoOpStage::setupStage(CoOpStage *this)

{
  EnemyManager *this_00;
  CCNotificationCenter *pCVar1;
  
  Stage::setupStage((Stage *)this);
  *(undefined1 *)(*(int *)(this + 0x110) + 0x44) = 0;
  *(undefined1 *)(soldierManager + 0x35) = 0;
  *(undefined4 *)(soldierManager + 0x24) = 4;
  HUD::updateLifeCount(*(HUD **)(this + 0x10c),*(int *)(soldierManager + 0x24));
  *(undefined1 *)(*(int *)(this + 0x10c) + 0x1c4) = 0;
  this_00 = operator_new(0x50);
  EnemyManager::EnemyManager(this_00);
  *(EnemyManager **)(this + 0x16c) = this_00;
  *(undefined4 *)(this + 0x174) = 0x41000000;
  *(undefined4 *)(this + 0x170) = 0;
  *(undefined4 *)(this + 0x17c) = 0;
  Sound::stopMusic();
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)this,(_func_void_CCObject_ptr *)0x3104c1,(char *)0x0,
             (CCObject *)"RetryGame");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)this,(_func_void_CCObject_ptr *)0x310439,(char *)0x0,
             (CCObject *)"EnemyAdded");
  pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::addObserver
            (pCVar1,(CCObject *)this,(_func_void_CCObject_ptr *)0x30fda1,(char *)0x0,
             (CCObject *)"PlayerScored");
  EnemyManager::initEnemies(*(EnemyManager **)(this + 0x16c));
  return;
}

// ---- CoOpStage::sendEnemyPositionData  @ 0x30f6f0
/* CoOpStage::sendEnemyPositionData(float) */

void CoOpStage::sendEnemyPositionData(float param_1)

{
  bool bVar1;
  int in_r0;
  int iVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  int *piVar14;
  undefined4 uVar15;
  CCNotificationCenter *pCVar16;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float fVar17;
  float extraout_s0_07;
  float extraout_s0_08;
  string asStack_a0 [4];
  CCDictElement *local_9c;
  CCDictElement *local_98;
  CCDictElement *local_94;
  CCDictElement *local_90;
  CCDictElement *local_8c;
  CCDictElement *local_88;
  CCDictionary *local_84;
  int *local_80;
  CCObject *local_7c;
  int *local_78;
  CCObject *local_74;
  int *local_70;
  CCObject *local_6c;
  undefined1 local_68 [16];
  undefined1 auStack_58 [16];
  undefined1 local_48 [16];
  undefined1 auStack_38 [20];
  
  local_9c = (CCDictElement *)0x0;
  local_84 = *(CCDictionary **)(*(int *)(in_r0 + 0x16c) + 0x14);
  local_98 = (CCDictElement *)0x0;
  if ((local_84 == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(local_84), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_9c = *(CCDictElement **)(local_84 + 0x14);
    if (*(int *)(local_84 + 0x14) == 0) {
      local_98 = (CCDictElement *)0x0;
    }
    else {
      local_98 = *(CCDictElement **)(*(int *)(local_84 + 0x14) + 0x110);
    }
    while (local_9c != (CCDictElement *)0x0) {
      local_80 = (int *)cocos2d::CCDictElement::getObject(local_9c);
      (**(code **)(*local_80 + 0x1c0))(asStack_a0,local_80);
      pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_a0);
      fVar17 = (float)(**(code **)(*local_80 + 0x1ac))(local_68,local_80);
      uVar4 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_80 + 0x1ac))(auStack_58,local_80);
      uVar5 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_80 + 500))(local_80);
      uVar6 = cocos2d::CCFloat::create(fVar17);
      uVar7 = cocos2d::CCFloat::create(extraout_s0);
      uVar8 = cocos2d::CCInteger::create((uint)((char)local_80[0x67] != '\0'));
      fVar17 = (float)(**(code **)(*local_80 + 0x1b0))(local_48,local_80);
      uVar9 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_80 + 0x1b0))(auStack_38,local_80);
      uVar10 = cocos2d::CCFloat::create(fVar17);
      uVar11 = cocos2d::CCFloat::create(extraout_s0_00);
      uVar12 = cocos2d::CCFloat::create(extraout_s0_01);
      uVar13 = cocos2d::CCFloat::create(extraout_s0_02);
      piVar14 = (int *)(**(code **)(*local_80 + 0x20c))(local_80);
      iVar2 = (**(code **)(*piVar14 + 0x240))(piVar14);
      uVar15 = cocos2d::CCInteger::create(iVar2);
      local_7c = (CCObject *)
                 cocos2d::CCArray::create
                           (pCVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,
                            uVar15,0);
      FUN_007c5914(asStack_a0);
      pCVar16 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar16,"SendEnemyPosition",local_7c);
      local_9c = local_98;
      if (local_98 == (CCDictElement *)0x0) {
        local_98 = (CCDictElement *)0x0;
      }
      else {
        local_98 = *(CCDictElement **)(local_98 + 0x110);
      }
    }
  }
  local_94 = (CCDictElement *)0x0;
  local_84 = *(CCDictionary **)(*(int *)(in_r0 + 0x16c) + 0x1c);
  local_90 = (CCDictElement *)0x0;
  if ((local_84 == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(local_84), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_94 = *(CCDictElement **)(local_84 + 0x14);
    if (*(int *)(local_84 + 0x14) == 0) {
      local_90 = (CCDictElement *)0x0;
    }
    else {
      local_90 = *(CCDictElement **)(*(int *)(local_84 + 0x14) + 0x110);
    }
    while (local_94 != (CCDictElement *)0x0) {
      local_78 = (int *)cocos2d::CCDictElement::getObject(local_94);
      (**(code **)(*local_78 + 0x1c0))(asStack_a0,local_78);
      pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_a0);
      fVar17 = (float)(**(code **)(*local_78 + 0x1ac))(local_68,local_78);
      uVar4 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_78 + 0x1ac))(auStack_58,local_78);
      uVar5 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_78 + 500))(local_78);
      uVar6 = cocos2d::CCFloat::create(fVar17);
      uVar7 = cocos2d::CCFloat::create(extraout_s0_03);
      uVar8 = cocos2d::CCInteger::create((uint)((char)local_78[0x67] != '\0'));
      fVar17 = (float)(**(code **)(*local_78 + 0x1b0))(local_48,local_78);
      uVar9 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_78 + 0x1b0))(auStack_38,local_78);
      uVar10 = cocos2d::CCFloat::create(fVar17);
      uVar11 = cocos2d::CCFloat::create(extraout_s0_04);
      uVar12 = cocos2d::CCFloat::create(extraout_s0_05);
      uVar13 = cocos2d::CCFloat::create(extraout_s0_06);
      uVar15 = cocos2d::CCInteger::create(0);
      local_74 = (CCObject *)
                 cocos2d::CCArray::create
                           (pCVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,
                            uVar15,0);
      FUN_007c5914(asStack_a0);
      pCVar16 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar16,"SendEnemyPosition",local_74);
      local_94 = local_90;
      if (local_90 == (CCDictElement *)0x0) {
        local_90 = (CCDictElement *)0x0;
      }
      else {
        local_90 = *(CCDictElement **)(local_90 + 0x110);
      }
    }
  }
  local_8c = (CCDictElement *)0x0;
  local_84 = *(CCDictionary **)(*(int *)(in_r0 + 0x16c) + 0x18);
  local_88 = (CCDictElement *)0x0;
  if ((local_84 == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(local_84), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_8c = *(CCDictElement **)(local_84 + 0x14);
    if (*(int *)(local_84 + 0x14) == 0) {
      local_88 = (CCDictElement *)0x0;
    }
    else {
      local_88 = *(CCDictElement **)(*(int *)(local_84 + 0x14) + 0x110);
    }
    while (local_8c != (CCDictElement *)0x0) {
      local_70 = (int *)cocos2d::CCDictElement::getObject(local_8c);
      (**(code **)(*local_70 + 0x1c0))(asStack_a0,local_70);
      pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_a0);
      fVar17 = (float)(**(code **)(*local_70 + 0x1ac))(local_68,local_70);
      uVar4 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_70 + 0x1ac))(auStack_58,local_70);
      uVar5 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_70 + 500))(local_70);
      uVar6 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_70 + 0x208))(local_70);
      uVar7 = cocos2d::CCFloat::create(fVar17);
      uVar8 = cocos2d::CCInteger::create((uint)((char)local_70[0x67] != '\0'));
      fVar17 = (float)(**(code **)(*local_70 + 0x1b0))(local_48,local_70);
      uVar9 = cocos2d::CCFloat::create(fVar17);
      fVar17 = (float)(**(code **)(*local_70 + 0x1b0))(auStack_38,local_70);
      uVar10 = cocos2d::CCFloat::create(fVar17);
      uVar11 = cocos2d::CCFloat::create(extraout_s0_07);
      uVar12 = cocos2d::CCFloat::create(extraout_s0_08);
      fVar17 = (float)(**(code **)(*(int *)local_70[0x6b] + 0x1e8))(local_70[0x6b]);
      uVar13 = cocos2d::CCFloat::create(fVar17);
      piVar14 = (int *)(**(code **)(*(int *)local_70[0x6b] + 500))(local_70[0x6b]);
      iVar2 = (**(code **)(*piVar14 + 0x240))(piVar14);
      uVar15 = cocos2d::CCInteger::create(iVar2);
      local_6c = (CCObject *)
                 cocos2d::CCArray::create
                           (pCVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,
                            uVar15,0);
      FUN_007c5914(asStack_a0);
      pCVar16 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar16,"SendEnemyPosition",local_6c);
      local_8c = local_88;
      if (local_88 == (CCDictElement *)0x0) {
        local_88 = (CCDictElement *)0x0;
      }
      else {
        local_88 = *(CCDictElement **)(local_88 + 0x110);
      }
    }
  }
  return;
}

// ---- CoOpStage::sendNetworkData  @ 0x30fd30
/* CoOpStage::sendNetworkData(float) */

void CoOpStage::sendNetworkData(float param_1)

{
  Stage *in_r0;
  NetworkManager *this;
  int iVar1;
  float in_r1;
  float extraout_s0;
  
  Stage::sendNetworkData(in_r0,param_1);
  *(float *)(in_r0 + 0x180) = *(float *)(in_r0 + 0x180) + in_r1;
  if (0.09 < *(float *)(in_r0 + 0x180)) {
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar1 = NetworkManager::isHostLeader(this);
    if (iVar1 != 0) {
      sendEnemyPositionData(extraout_s0);
    }
    *(undefined4 *)(in_r0 + 0x180) = 0;
  }
  return;
}

// ---- CoOpStage::playerScored  @ 0x30fda0
/* CoOpStage::playerScored(cocos2d::CCObject*) */

void __thiscall CoOpStage::playerScored(CoOpStage *this,CCObject *param_1)

{
  undefined3 uVar1;
  CCString *pCVar2;
  undefined4 uVar3;
  int iVar4;
  NetworkManager *pNVar5;
  CCDictionary *pCVar6;
  CCInteger *pCVar7;
  uint uVar8;
  HUD *pHVar9;
  undefined4 local_44;
  string asStack_40 [4];
  string asStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  int local_20;
  int local_1c;
  CCObject *local_18;
  CCArray *local_14;
  
  local_18 = param_1;
  pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(asStack_40,uVar3,auStack_24);
  FUN_0079a3fc(auStack_24);
  pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)local_18,1);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(asStack_3c,uVar3,auStack_24);
  FUN_0079a3fc(auStack_24);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_38,&DAT_007d4edc,auStack_24);
  FUN_0079a3fc(auStack_24);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_34,&DAT_007d4edc,auStack_24);
  FUN_0079a3fc(auStack_24);
  local_20 = 0;
  local_1c = 0;
  local_14 = (CCArray *)0x0;
  uVar1 = FUN_0030e5d8(0xff,0x32,0x32);
  local_44 = CONCAT13(local_44._3_1_,uVar1);
  (**(code **)(*hostSoldier + 0x1c0))(auStack_30,hostSoldier);
  iVar4 = FUN_007c567c(asStack_40,auStack_30);
  FUN_007c5914(auStack_30);
  if (iVar4 == 0) {
    FUN_007c5e70(auStack_38,&DAT_007d4ee0);
    uVar1 = FUN_0030e5d8(0x32,200,0x32);
    local_44 = CONCAT13(local_44._3_1_,uVar1);
    local_20 = (**(code **)(*hostSoldier + 0x1c4))(hostSoldier);
  }
  else {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
    local_14 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar6,asStack_40);
    if (local_14 != (CCArray *)0x0) {
      pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(local_14,1);
      uVar3 = cocos2d::CCString::getCString(pCVar2);
      FUN_007c5e70(auStack_38,uVar3);
      pCVar7 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_14,4);
      local_20 = cocos2d::CCInteger::getValue(pCVar7);
    }
  }
  (**(code **)(*hostSoldier + 0x1c0))(auStack_2c,hostSoldier);
  iVar4 = FUN_007c567c(asStack_3c,auStack_2c);
  FUN_007c5914(auStack_2c);
  if (iVar4 == 0) {
    FUN_007c5e70(auStack_34,&DAT_007d4ee0);
    uVar1 = FUN_0030e5d8(0xff,0x32,0x32);
    local_44 = CONCAT13(local_44._3_1_,uVar1);
    local_1c = (**(code **)(*hostSoldier + 0x1c4))(hostSoldier);
  }
  else {
    pNVar5 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    pCVar6 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar5);
    local_14 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar6,asStack_3c);
    if (local_14 == (CCArray *)0x0) goto LAB_0031017e;
    uVar8 = *(int *)(soldierManager + 0x24) - 1;
    *(uint *)(soldierManager + 0x24) = uVar8 & ~((int)uVar8 >> 0x1f);
    HUD::updateLifeCount(*(HUD **)(this + 0x10c),*(int *)(soldierManager + 0x24));
    pCVar2 = (CCString *)cocos2d::CCArray::objectAtIndex(local_14,1);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_007c5e70(auStack_34,uVar3);
    pCVar7 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_14,4);
    local_1c = cocos2d::CCInteger::getValue(pCVar7);
  }
  iVar4 = FUN_007c567c(asStack_40,asStack_3c);
  if (iVar4 == 0) {
    pHVar9 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_38);
    pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("%s COMMITTED SUICIDE",uVar3);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_28,uVar3,auStack_24);
    HUD::addMessage(pHVar9,auStack_28,local_44,5);
    FUN_007c5914(auStack_28);
    FUN_0079a3fc(auStack_24);
  }
  else if ((local_20 != 0) && (local_20 == local_1c)) {
    uVar1 = FUN_0030e5d8(0xff,0x32,0x32);
    local_44 = CONCAT13(local_44._3_1_,uVar1);
    pHVar9 = *(HUD **)(this + 0x10c);
    uVar3 = FUN_007c5300(auStack_34);
    pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("%s DIED",uVar3);
    uVar3 = cocos2d::CCString::getCString(pCVar2);
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,uVar3,auStack_28);
    HUD::addMessage(pHVar9,auStack_24,local_44,5);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
  }
LAB_0031017e:
  FUN_007c5914(auStack_34);
  FUN_007c5914(auStack_38);
  FUN_007c5914(asStack_3c);
  FUN_007c5914(asStack_40);
  return;
}

// ---- CoOpStage::onPlayerDisconnected  @ 0x310280
/* CoOpStage::onPlayerDisconnected(cocos2d::CCObject*) */

void CoOpStage::onPlayerDisconnected(CCObject *param_1)

{
  return;
}

// ---- CoOpStage::spawnEnemy  @ 0x310290
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00310310 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* CoOpStage::spawnEnemy() */

void CoOpStage::spawnEnemy(void)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar5;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 uStack_c;
  
  uVar1 = FUN_0030e5cc();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  iVar3 = (int)(longlong)ABS((fVar5 / 1.0737418e+09 - 1.0) * 2.99);
  uVar1 = FUN_0030e5cc();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  FUN_0030e644(SUB84((double)ABS((fVar5 / 1.0737418e+09 - 1.0) * 2500.0) + 250.0,0),in_s1,0,
               &local_18);
  if ((iVar3 == 0) &&
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(*(int *)(in_r0 + 0x16c) + 0x20)),
     iVar2 != 0)) {
    bVar4 = true;
  }
  else {
    bVar4 = false;
  }
  if (bVar4) {
    iVar3 = EnemyManager::addHawkDrone(*(undefined4 *)(in_r0 + 0x16c),uStack_c,local_18,uStack_14);
    if (iVar3 != 0) {
      *(undefined4 *)(iVar3 + 0x15c) = 2;
    }
  }
  else {
    if ((iVar3 == 1) &&
       (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(*(int *)(in_r0 + 0x16c) + 0x24)),
       iVar2 != 0)) {
      bVar4 = true;
    }
    else {
      bVar4 = false;
    }
    if (bVar4) {
      iVar3 = EnemyManager::addHumanoidDrone
                        (*(undefined4 *)(in_r0 + 0x16c),uStack_c,local_18,uStack_14);
      if (iVar3 != 0) {
        *(undefined4 *)(iVar3 + 0x15c) = 2;
      }
    }
    else {
      if ((iVar3 == 2) &&
         (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(*(int *)(in_r0 + 0x16c) + 0x28)),
         iVar3 != 0)) {
        bVar4 = true;
      }
      else {
        bVar4 = false;
      }
      if ((bVar4) &&
         (iVar3 = EnemyManager::addWormDrone
                            (*(undefined4 *)(in_r0 + 0x16c),uStack_c,local_18,uStack_14), iVar3 != 0
         )) {
        *(undefined4 *)(iVar3 + 0x15c) = 2;
      }
    }
  }
  return;
}

// ---- CoOpStage::onEnemyAdded  @ 0x310438
/* CoOpStage::onEnemyAdded(cocos2d::CCObject*) */

void __thiscall CoOpStage::onEnemyAdded(CoOpStage *this,CCObject *param_1)

{
  undefined4 uVar1;
  Radar *pRVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_10,uVar1,auStack_c);
  FUN_0079a3fc(auStack_c);
  pRVar2 = *(Radar **)(*(int *)(this + 0x10c) + 0x100);
  FUN_007c64e8(auStack_c,auStack_10);
  Radar::addAlert(pRVar2,auStack_c);
  FUN_007c5914(auStack_c);
  FUN_007c5914(auStack_10);
  return;
}

// ---- CoOpStage::onRetryGame  @ 0x3104c0
/* CoOpStage::onRetryGame(cocos2d::CCObject*) */

void CoOpStage::onRetryGame(CCObject *param_1)

{
  return;
}

// ---- CoOpStage::onPlayerDead  @ 0x3104cc
/* CoOpStage::onPlayerDead(cocos2d::CCObject*) */

void __thiscall CoOpStage::onPlayerDead(CoOpStage *this,CCObject *param_1)

{
  Stage::onPlayerDead((Stage *)this,param_1);
  if (0 < *(int *)(soldierManager + 0x24)) {
    MenuScreen::endCoopRound(*(MenuScreen **)(*(int *)(this + 0x10c) + 0xec));
  }
  return;
}

// ---- CoOpStage::getClosestPlayerLocation  @ 0x31050c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0031055e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* CoOpStage::getClosestPlayerLocation(cpVect) */

undefined4
CoOpStage::getClosestPlayerLocation
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
          undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  int iVar1;
  int *piVar2;
  bool bVar3;
  uint extraout_r3;
  uint uVar4;
  uint in_fpscr;
  double dVar5;
  double dVar6;
  double dVar7;
  int *local_64;
  CCDictElement *local_60;
  CCDictElement *local_5c;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined1 local_30 [16];
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_64 = hostSoldier;
  (**(code **)(*hostSoldier + 0x1ac))
            (local_50,hostSoldier,local_50,*(code **)(*hostSoldier + 0x1ac),param_8);
  FUN_0030e66c(param_9,param_2,param_11,param_4,local_50[0],param_6,local_48,&local_40);
  dVar6 = (double)cpvlength(local_40,uStack_3c,uStack_38,uStack_34);
  if ((peerSoldiers == (CCDictionary *)0x0) ||
     (iVar1 = cocos2d::CCDictionary::count(peerSoldiers), iVar1 == 0)) {
    bVar3 = false;
  }
  else {
    bVar3 = true;
  }
  if (bVar3) {
    local_60 = *(CCDictElement **)(peerSoldiers + 0x14);
    if (*(int *)(peerSoldiers + 0x14) == 0) {
      local_5c = (CCDictElement *)0x0;
    }
    else {
      local_5c = *(CCDictElement **)(*(int *)(peerSoldiers + 0x14) + 0x110);
    }
    while (local_60 != (CCDictElement *)0x0) {
      piVar2 = (int *)cocos2d::CCDictElement::getObject(local_60);
      (**(code **)(*piVar2 + 0x1ac))(local_30,piVar2);
      FUN_0030e66c(param_9,param_2,param_11,param_4,(int)local_30._0_8_,param_6,(int)local_30._8_8_,
                   &local_20);
      dVar5 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
      dVar7 = (double)(float)dVar6;
      in_fpscr = in_fpscr & 0xfffffff | (uint)(dVar5 < dVar7) << 0x1f |
                 (uint)(dVar5 == dVar7) << 0x1e | (uint)(dVar7 <= dVar5) << 0x1d;
      uVar4 = extraout_r3;
      if (-1 < (int)in_fpscr) {
        uVar4 = 0;
      }
      if ((int)in_fpscr < 0) {
        uVar4 = 1;
      }
      if ((uVar4 & 0xff) != 0) {
        local_64 = piVar2;
      }
      local_60 = local_5c;
      if (local_5c == (CCDictElement *)0x0) {
        local_5c = (CCDictElement *)0x0;
      }
      else {
        local_5c = *(CCDictElement **)(local_5c + 0x110);
      }
    }
  }
  (**(code **)(*local_64 + 0x1ac))(param_7,local_64);
  return param_7;
}

// ---- CoOpStage::playRound  @ 0x310684
/* CoOpStage::playRound(float) */

void __thiscall CoOpStage::playRound(CoOpStage *this,float param_1)

{
  WeaponFactory *pWVar1;
  Item *pIVar2;
  HawkDrone *this_00;
  WormDrone *this_01;
  HumanoidDrone *this_02;
  float in_r1;
  code *pcVar3;
  undefined8 uVar4;
  float fVar5;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  *(float *)(this + 0x178) = *(float *)(this + 0x178) + in_r1;
  *(float *)(this + 0x17c) = *(float *)(this + 0x17c) + in_r1;
  if (60.0 < *(float *)(this + 0x17c)) {
    *(undefined4 *)(this + 0x17c) = 0;
    pWVar1 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    pIVar2 = (Item *)WeaponFactory::createWeaponFromAmmoType(pWVar1,2);
    pcVar3 = *(code **)(*(int *)pIVar2 + 0x200);
    (**(code **)(*hostSoldier + 0x1c0))(&local_20,hostSoldier);
    (*pcVar3)(pIVar2,&local_20);
    uVar4 = FUN_007c5914(&local_20);
    pcVar3 = *(code **)(*(int *)pIVar2 + 0x4c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(pIVar2,&local_20);
    WeaponManager::addItem(*(WeaponManager **)(this + 0x110),pIVar2);
  }
  if (20.0 < *(float *)(this + 0x178)) {
    *(undefined4 *)(this + 0x178) = 0;
    *(float *)(this + 0x174) = *(float *)(this + 0x174) - 0.5;
  }
  *(float *)(this + 0x170) = *(float *)(this + 0x170) + in_r1;
  if (*(float *)(this + 0x174) <= 1.0) {
    fVar5 = 1.0;
  }
  else {
    fVar5 = *(float *)(this + 0x174);
  }
  if (fVar5 < *(float *)(this + 0x170)) {
    spawnEnemy();
    *(undefined4 *)(this + 0x170) = 0;
  }
  this_00 = (HawkDrone *)EnemyManager::getNextHawk(*(EnemyManager **)(this + 0x16c));
  if (this_00 != (HawkDrone *)0x0) {
    pcVar3 = *(code **)(*(int *)this_00 + 0x1ec);
    (**(code **)(*(int *)this_00 + 0x1ac))(&local_70,this_00);
    getClosestPlayerLocation(&local_60,this,local_70,uStack_6c,local_68,uStack_64);
    (*pcVar3)(this_00,uStack_54,local_60,uStack_5c,local_58,uStack_54);
    HawkDrone::lookForTarget(this_00);
  }
  this_01 = (WormDrone *)EnemyManager::getNextWorm(*(EnemyManager **)(this + 0x16c));
  if (this_01 != (WormDrone *)0x0) {
    pcVar3 = *(code **)(*(int *)this_01 + 0x1ec);
    (**(code **)(*(int *)this_01 + 0x1ac))(&local_50,this_01);
    getClosestPlayerLocation(&local_40,this,local_50,uStack_4c,local_48,uStack_44);
    (*pcVar3)(this_01,uStack_34,local_40,uStack_3c,local_38,uStack_34);
    WormDrone::lookForTarget(this_01);
  }
  this_02 = (HumanoidDrone *)EnemyManager::getNextHumanoid(*(EnemyManager **)(this + 0x16c));
  if (this_02 != (HumanoidDrone *)0x0) {
    pcVar3 = *(code **)(*(int *)this_02 + 0x1ec);
    (**(code **)(*(int *)this_02 + 0x1ac))(&local_30,this_02);
    getClosestPlayerLocation(&local_20,this,local_30,uStack_2c,local_28,uStack_24);
    (*pcVar3)(this_02,uStack_14,local_20,uStack_1c,local_18,uStack_14);
    HumanoidDrone::lookForTarget(this_02);
  }
  return;
}

// ---- CoOpStage::updateStep  @ 0x310938
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0031098e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* CoOpStage::updateStep(float) */

void CoOpStage::updateStep(float param_1)

{
  CoOpStage *in_r0;
  NetworkManager *this;
  int iVar1;
  undefined4 in_fpscr;
  byte bVar2;
  float extraout_s0;
  float fVar3;
  undefined4 in_s1;
  double dVar4;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  CoOpStage *local_14;
  
  bVar2 = (byte)((uint)in_fpscr >> 0x18);
  local_14 = in_r0;
  Stage::updateStep(param_1);
  dVar4 = *(double *)(*(int *)(hostSoldier + 0x138) + 0x28);
  if ((char)(bVar2 & 0xf | (byte)(((uint)(dVar4 < 100.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(dVar4 == 100.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(100.0 <= dVar4) << 0x1d) >> 0x18)) < '\0') {
    iVar1 = *(int *)(hostSoldier + 0x138);
    FUN_0030e644(0,in_s1,(int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x30),&local_28);
    *(undefined4 *)(iVar1 + 0x28) = local_28;
    *(undefined4 *)(iVar1 + 0x2c) = uStack_24;
    *(undefined4 *)(iVar1 + 0x30) = uStack_20;
    *(undefined4 *)(iVar1 + 0x34) = uStack_1c;
  }
  if (3090.0 < *(double *)(*(int *)(hostSoldier + 0x138) + 0x28)) {
    iVar1 = *(int *)(hostSoldier + 0x138);
    FUN_0030e644(0,in_s1,(int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x30),&local_28);
    *(undefined4 *)(iVar1 + 0x28) = local_28;
    *(undefined4 *)(iVar1 + 0x2c) = uStack_24;
    *(undefined4 *)(iVar1 + 0x30) = uStack_20;
    *(undefined4 *)(iVar1 + 0x34) = uStack_1c;
  }
  if (*(int *)(soldierManager + 0x24) < 1) {
    if (local_14[0x150] != (CoOpStage)0x1) {
      soldierManager[0x14] = (SoldierManager)0x0;
      local_14[0x150] = (CoOpStage)0x1;
      *(undefined1 *)(*(int *)(local_14 + 0x10c) + 0x1c5) = 1;
      MenuScreen::endCoopSurvival(*(MenuScreen **)(*(int *)(local_14 + 0x10c) + 0xec));
      SoldierManager::removeRemotePlayers(soldierManager);
    }
    MenuScreen::showScreen(*(MenuScreen **)(*(int *)(local_14 + 0x10c) + 0xec),true);
  }
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar1 = NetworkManager::isHostLeader(this);
  if (iVar1 == 0) {
    EnemyManager::updateRemoteStep(*(EnemyManager **)(local_14 + 0x16c),extraout_s0);
  }
  else {
    fVar3 = (float)EnemyManager::updateStep(*(EnemyManager **)(local_14 + 0x16c),extraout_s0);
    playRound(local_14,fVar3);
  }
  return;
}

// ---- CoOpStage::create  @ 0x40e6bc
/* CoOpStage::create() */

CoOpStage * CoOpStage::create(void)

{
  bool bVar1;
  CoOpStage *this;
  int iVar2;
  
  this = operator_new(0x184);
  CoOpStage(this);
  if ((this == (CoOpStage *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (CoOpStage *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (CoOpStage *)0x0;
  }
  return this;
}
