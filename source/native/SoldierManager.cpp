// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 15 functions

// ---- SoldierManager::SoldierManager  @ 0x3fba08
/* SoldierManager::SoldierManager() */

SoldierManager * __thiscall SoldierManager::SoldierManager(SoldierManager *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091b8d8;
  FUN_007c51b0(this + 0x20);
  init(this);
  return this;
}

// ---- SoldierManager::init  @ 0x3fba60
/* SoldierManager::init() */

undefined4 __thiscall SoldierManager::init(SoldierManager *this)

{
  int *piVar1;
  undefined4 uVar2;
  SoldierView *this_00;
  CCUserDefault *this_01;
  string *psVar3;
  CCNotificationCenter *this_02;
  code *pcVar4;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  code *local_18;
  undefined4 local_14;
  
  this[0x34] = (SoldierManager)0x0;
  *(undefined4 *)(this + 0x24) = 0;
  this[0x35] = (SoldierManager)0x0;
  this[0x14] = (SoldierManager)0x0;
  this[0x15] = (SoldierManager)0x0;
  this[0x16] = (SoldierManager)0x0;
  this[0x34] = (SoldierManager)0x1;
  peerSoldiers = (CCObject *)cocos2d::CCDictionary::create();
  cocos2d::CCObject::retain(peerSoldiers);
  uVar2 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x28) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x28));
  hostSoldier = (SoldierHostController *)SoldierHostController::create();
  cocos2d::CCObject::retain((CCObject *)hostSoldier);
  uVar2 = SoldierView::create();
  *(undefined4 *)(this + 0x30) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x30));
  (**(code **)(*(int *)hostSoldier + 0x228))(hostSoldier);
  (**(code **)(*(int *)hostSoldier + 0x1d4))(hostSoldier,*(undefined4 *)(this + 0x30));
  (**(code **)(*(int *)hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::showSight();
  this_00 = (SoldierView *)(**(code **)(*(int *)hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::hidePlayerLabel(this_00,true);
  (**(code **)(*(int *)hostSoldier + 0x1c8))(hostSoldier,playerTeam);
  ItemLibrary::applyItems(hostSoldier);
  piVar1 = worldLayer;
  pcVar4 = *(code **)(*worldLayer + 0xcc);
  uVar2 = (**(code **)(*(int *)hostSoldier + 0x1d8))(hostSoldier);
  (*pcVar4)(piVar1,uVar2,3);
  this_01 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar2 = cocos2d::CCUserDefault::getIntegerForKey(this_01,"PlayerSkin",0);
  *(undefined4 *)(this + 0x1c) = uVar2;
  psVar3 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_1c,"NOOBIE",auStack_20);
  cocos2d::CCUserDefault::getStringForKey((char *)&local_18,psVar3);
  FUN_007c52e8(this + 0x20,&local_18);
  FUN_007c5914(&local_18);
  FUN_007c5914(auStack_1c);
  FUN_0079a3fc(auStack_20);
  *(undefined4 *)(this + 0x24) = 0xffffffff;
  this[0x35] = (SoldierManager)0x1;
  this_02 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_18 = (code *)0x3fc479;
  local_14 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (this_02,(CCObject *)this,(_func_void_CCObject_ptr *)0x3fc479,(char *)0x0,
             (CCObject *)"PlayerDead");
  return 1;
}

// ---- SoldierManager::~SoldierManager  @ 0x3fbcd0
/* WARNING: Removing unreachable block (ram,0x003fbd58) */
/* SoldierManager::~SoldierManager() */

SoldierManager * __thiscall SoldierManager::~SoldierManager(SoldierManager *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091b8d8;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  (**(code **)(*(int *)hostSoldier + 0x294))(hostSoldier);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x30));
  cocos2d::CCObject::release(hostSoldier);
  hostSoldier = (CCObject *)0x0;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x28));
  cocos2d::CCObject::release(peerSoldiers);
  FUN_007c5914(this + 0x20);
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- SoldierManager::~SoldierManager  @ 0x3fbd78
/* SoldierManager::~SoldierManager() */

SoldierManager * __thiscall SoldierManager::~SoldierManager(SoldierManager *this)

{
  ~SoldierManager(this);
  operator_delete(this);
  return this;
}

// ---- SoldierManager::removeRemotePlayers  @ 0x3fbd94
/* SoldierManager::removeRemotePlayers() */

void __thiscall SoldierManager::removeRemotePlayers(SoldierManager *this)

{
  bool bVar1;
  int iVar2;
  undefined1 auStack_18 [4];
  CCDictElement *local_14;
  CCDictElement *local_10;
  int *local_c;
  
  local_14 = (CCDictElement *)0x0;
  local_10 = (CCDictElement *)0x0;
  if ((peerSoldiers == (CCDictionary *)0x0) ||
     (iVar2 = cocos2d::CCDictionary::count(peerSoldiers), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_14 = *(CCDictElement **)(peerSoldiers + 0x14);
    if (*(int *)(peerSoldiers + 0x14) == 0) {
      local_10 = (CCDictElement *)0x0;
    }
    else {
      local_10 = *(CCDictElement **)(*(int *)(peerSoldiers + 0x14) + 0x110);
    }
    while (local_14 != (CCDictElement *)0x0) {
      local_c = (int *)cocos2d::CCDictElement::getObject(local_14);
      (**(code **)(*local_c + 0x1c0))(auStack_18,local_c);
      removeRemotePlayer(this,auStack_18);
      FUN_007c5914(auStack_18);
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

// ---- SoldierManager::updateStep  @ 0x3fbe5c
/* SoldierManager::updateStep(float) */

float __thiscall SoldierManager::updateStep(SoldierManager *this,float param_1)

{
  uint uVar1;
  byte bVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  NetworkManager *pNVar6;
  CCNotificationCenter *pCVar7;
  CCDictionary *pCVar8;
  undefined4 uVar9;
  CCObject *pCVar10;
  float in_r1;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  double dVar11;
  double dVar12;
  undefined1 auStack_44 [4];
  string asStack_40 [4];
  CCDictElement *local_3c;
  CCDictElement *local_38;
  int *local_34;
  CCArray *local_30;
  CCString *local_2c;
  CCObject *local_28;
  CCArray *local_24;
  CCString *local_20;
  CCObject *local_1c;
  
  *(float *)(this + 0x18) = *(float *)(this + 0x18) - in_r1;
  if ((this[0x14] != (SoldierManager)0x0) &&
     (in_fpscr = in_fpscr & 0xfffffff | (uint)(*(float *)(this + 0x18) == 0.0) << 0x1e |
                 (uint)(0.0 <= *(float *)(this + 0x18)) << 0x1d, bVar2 = (byte)(in_fpscr >> 0x18),
     !(bool)(bVar2 >> 5 & 1) || (bool)(bVar2 >> 6))) {
    this[0x14] = (SoldierManager)0x0;
    (**(code **)(*hostSoldier + 0x2c0))(hostSoldier);
    param_1 = (float)spawnPlayer();
  }
  local_3c = (CCDictElement *)0x0;
  local_38 = (CCDictElement *)0x0;
  if ((peerSoldiers == (CCDictionary *)0x0) ||
     (iVar5 = cocos2d::CCDictionary::count(peerSoldiers), param_1 = extraout_s0, iVar5 == 0)) {
    bVar3 = false;
  }
  else {
    bVar3 = true;
  }
  if (bVar3) {
    local_3c = *(CCDictElement **)(peerSoldiers + 0x14);
    if (*(int *)(peerSoldiers + 0x14) == 0) {
      local_38 = (CCDictElement *)0x0;
    }
    else {
      local_38 = *(CCDictElement **)(*(int *)(peerSoldiers + 0x14) + 0x110);
    }
    while (local_3c != (CCDictElement *)0x0) {
      local_34 = (int *)cocos2d::CCDictElement::getObject(local_3c);
      (**(code **)(*local_34 + 0x1dc))(local_34,in_r1);
      pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      (**(code **)(*local_34 + 0x1c0))(auStack_44,local_34);
      dVar12 = (double)NetworkManager::getPingTimeFor(pNVar6,auStack_44);
      pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      iVar5 = NetworkManager::getPlayerTimeout(pNVar6);
      dVar11 = (double)VectorSignedToFloat(iVar5 * 3,(byte)(in_fpscr >> 0x16) & 3);
      uVar1 = in_fpscr & 0xfffffff | (uint)(dVar12 < dVar11) << 0x1f |
              (uint)(dVar12 == dVar11) << 0x1e;
      in_fpscr = uVar1 | (uint)(NAN(dVar12) || NAN(dVar11)) << 0x1c;
      bVar2 = (byte)(uVar1 >> 0x18);
      if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
LAB_003fbfae:
        bVar3 = false;
      }
      else {
        pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        cVar4 = NetworkManager::isUsingHostedServer(pNVar6);
        if ((cVar4 == '\x01') || (this[0x15] == (SoldierManager)0x1)) goto LAB_003fbfae;
        bVar3 = true;
      }
      FUN_007c5914(auStack_44);
      if (bVar3) {
        pCVar7 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        param_1 = (float)cocos2d::CCNotificationCenter::postNotification
                                   (pCVar7,"ConnectionLost",(CCObject *)0x0);
        this[0x15] = (SoldierManager)0x1;
      }
      else {
        pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        (**(code **)(*local_34 + 0x1c0))(asStack_40,local_34);
        dVar12 = (double)NetworkManager::getPingTimeFor(pNVar6,asStack_40);
        pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
        iVar5 = NetworkManager::getPlayerTimeout(pNVar6);
        dVar11 = (double)VectorSignedToFloat(iVar5 / 2,(byte)(in_fpscr >> 0x16) & 3);
        uVar1 = in_fpscr & 0xfffffff | (uint)(dVar12 < dVar11) << 0x1f |
                (uint)(dVar12 == dVar11) << 0x1e;
        in_fpscr = uVar1 | (uint)(NAN(dVar12) || NAN(dVar11)) << 0x1c;
        bVar2 = (byte)(uVar1 >> 0x18);
        uVar1 = in_fpscr >> 0x1c;
        FUN_007c5914(asStack_40);
        if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)uVar1 & 1)) {
          cVar4 = (**(code **)(*local_34 + 0x27c))(local_34);
          param_1 = extraout_s0_00;
          if (cVar4 != '\x01') {
            pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
            pCVar8 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar6);
            (**(code **)(*local_34 + 0x1c0))(asStack_40,local_34);
            local_24 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar8,asStack_40);
            FUN_007c5914(asStack_40);
            if (local_24 != (CCArray *)0x0) {
              local_20 = (CCString *)cocos2d::CCArray::objectAtIndex(local_24,1);
              uVar9 = cocos2d::CCString::getCString(local_20);
              local_1c = (CCObject *)
                         cocos2d::CCString::createWithFormat("%s RETURNED TO THE GAME",uVar9);
              pCVar7 = (CCNotificationCenter *)
                       cocos2d::CCNotificationCenter::sharedNotificationCenter();
              cocos2d::CCNotificationCenter::postNotification
                        (pCVar7,"DisplayInstantMessage",local_1c);
            }
            pCVar7 = (CCNotificationCenter *)
                     cocos2d::CCNotificationCenter::sharedNotificationCenter();
            (**(code **)(*local_34 + 0x1c0))(asStack_40,local_34);
            pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_40);
            cocos2d::CCNotificationCenter::postNotification(pCVar7,"ActivateScoreRow",pCVar10);
            FUN_007c5914(asStack_40);
            param_1 = (float)(**(code **)(*local_34 + 0x280))(local_34,1);
          }
        }
        else {
          iVar5 = (**(code **)(*local_34 + 0x27c))(local_34);
          if (iVar5 != 0) {
            pNVar6 = (NetworkManager *)NetworkManager::sharedNetworkManager();
            pCVar8 = (CCDictionary *)NetworkManager::getPeerPlayers(pNVar6);
            (**(code **)(*local_34 + 0x1c0))(asStack_40,local_34);
            local_30 = (CCArray *)cocos2d::CCDictionary::objectForKey(pCVar8,asStack_40);
            FUN_007c5914(asStack_40);
            if (local_30 != (CCArray *)0x0) {
              local_2c = (CCString *)cocos2d::CCArray::objectAtIndex(local_30,1);
              uVar9 = cocos2d::CCString::getCString(local_2c);
              local_28 = (CCObject *)cocos2d::CCString::createWithFormat("%s HAS BECOME IDLE",uVar9)
              ;
              pCVar7 = (CCNotificationCenter *)
                       cocos2d::CCNotificationCenter::sharedNotificationCenter();
              cocos2d::CCNotificationCenter::postNotification
                        (pCVar7,"DisplayInstantMessage",local_28);
            }
            pCVar7 = (CCNotificationCenter *)
                     cocos2d::CCNotificationCenter::sharedNotificationCenter();
            (**(code **)(*local_34 + 0x1c0))(asStack_40,local_34);
            pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_40);
            cocos2d::CCNotificationCenter::postNotification(pCVar7,"DeactivateScoreRow",pCVar10);
            FUN_007c5914(asStack_40);
          }
          param_1 = (float)(**(code **)(*local_34 + 0x280))(local_34,0);
        }
      }
      local_3c = local_38;
      if (local_38 == (CCDictElement *)0x0) {
        local_38 = (CCDictElement *)0x0;
      }
      else {
        local_38 = *(CCDictElement **)(local_38 + 0x110);
      }
    }
  }
  return param_1;
}

// ---- SoldierManager::addRemotePlayer  @ 0x3fc29c
/* SoldierManager::addRemotePlayer(std::string) */

CCObject * __thiscall SoldierManager::addRemotePlayer(undefined4 param_1,undefined4 param_2)

{
  CCDictionary *this;
  CCObject *pCVar1;
  code *pcVar2;
  string asStack_1c [4];
  CCObject *local_18;
  CCObject *local_14;
  
  local_18 = (CCObject *)SoldierView::create();
  cocos2d::CCObject::retain(local_18);
  local_14 = (CCObject *)SoldierRemoteController::create();
  (**(code **)(*(int *)local_14 + 0x228))(local_14);
  (**(code **)(*(int *)local_14 + 0x1d4))(local_14,local_18);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_18,3);
  pCVar1 = local_14;
  pcVar2 = *(code **)(*(int *)local_14 + 0x24c);
  FUN_007c64e8(asStack_1c,param_2);
  (*pcVar2)(pCVar1,asStack_1c);
  FUN_007c5914(asStack_1c);
  this = peerSoldiers;
  (**(code **)(*(int *)local_14 + 0x1c0))(asStack_1c,local_14);
  cocos2d::CCDictionary::setObject(this,local_14,asStack_1c);
  FUN_007c5914(asStack_1c);
  return local_14;
}

// ---- SoldierManager::removeRemotePlayer  @ 0x3fc37c
/* SoldierManager::removeRemotePlayer(std::string) */

void __thiscall SoldierManager::removeRemotePlayer(SoldierManager *this,string *param_2)

{
  CCDictionary *this_00;
  undefined4 uVar1;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  int *local_18;
  CCObject *local_14;
  
  this_00 = peerSoldiers;
  uVar1 = FUN_007c5300(param_2);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar1,auStack_20,auStack_20,param_2,this);
  local_18 = (int *)cocos2d::CCDictionary::objectForKey(this_00,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  if (local_18 != (int *)0x0) {
    (**(code **)(*local_18 + 0x290))(local_18);
    local_14 = (CCObject *)(**(code **)(*local_18 + 0x1d8))(local_18);
    (**(code **)(*worldLayer + 0xf4))(worldLayer,local_14,0);
    (**(code **)(*local_18 + 0x1d4))(local_18,0);
    cocos2d::CCObject::release(local_14);
    cocos2d::CCDictionary::removeObjectForKey(peerSoldiers,param_2);
  }
  return;
}

// ---- SoldierManager::getHostController  @ 0x3fc45c
/* SoldierManager::getHostController() */

undefined4 SoldierManager::getHostController(void)

{
  return hostSoldier;
}

// ---- SoldierManager::respawnPlayer  @ 0x3fc478
/* SoldierManager::respawnPlayer(cocos2d::CCObject*) */

void SoldierManager::respawnPlayer(CCObject *param_1)

{
  *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) + -1;
  if ((param_1[0x35] != (CCObject)0x0) || (0 < *(int *)(param_1 + 0x24))) {
    param_1[0x14] = (CCObject)0x1;
    *(undefined4 *)(param_1 + 0x18) = 0x41100000;
  }
  return;
}

// ---- SoldierManager::scoreSpawnPoint  @ 0x3fc4b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003fc55e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierManager::scoreSpawnPoint(cpVect) */

int SoldierManager::scoreSpawnPoint
              (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
              undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
              undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  int iVar1;
  int *piVar2;
  bool bVar3;
  double dVar4;
  int local_40;
  CCDictElement *local_3c;
  CCDictElement *local_38;
  undefined1 local_30 [16];
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_40 = 0;
  if ((peerSoldiers == (CCDictionary *)0x0) ||
     (iVar1 = cocos2d::CCDictionary::count(peerSoldiers), iVar1 == 0)) {
    bVar3 = false;
  }
  else {
    bVar3 = true;
  }
  if (bVar3) {
    local_3c = *(CCDictElement **)(peerSoldiers + 0x14);
    if (*(int *)(peerSoldiers + 0x14) == 0) {
      local_38 = (CCDictElement *)0x0;
    }
    else {
      local_38 = *(CCDictElement **)(*(int *)(peerSoldiers + 0x14) + 0x110);
    }
    while (local_3c != (CCDictElement *)0x0) {
      piVar2 = (int *)cocos2d::CCDictElement::getObject(local_3c);
      (**(code **)(*piVar2 + 0x1ac))(local_30,piVar2);
      FUN_003faaa8(param_9,param_2,param_11,param_4,(int)local_30._0_8_,param_6,(int)local_30._8_8_,
                   &local_20);
      dVar4 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
      local_40 = local_40 + (int)(longlong)dVar4;
      local_3c = local_38;
      if (local_38 == (CCDictElement *)0x0) {
        local_38 = (CCDictElement *)0x0;
      }
      else {
        local_38 = *(CCDictElement **)(local_38 + 0x110);
      }
    }
  }
  return local_40;
}

// ---- SoldierManager::getRandomSafeSpawnPoint  @ 0x3fc5d0
/* SoldierManager::getRandomSafeSpawnPoint() */

undefined4 * SoldierManager::getRandomSafeSpawnPoint(void)

{
  bool bVar1;
  undefined4 *in_r0;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  int *piVar6;
  float fVar7;
  int in_r1;
  uint extraout_r1;
  uint extraout_r1_00;
  uint extraout_r1_01;
  undefined4 uVar8;
  SpawnRow *local_44;
  CCDictElement *local_40;
  CCDictElement *local_3c;
  uint local_38;
  int local_34;
  uint local_30;
  undefined4 local_2c;
  double local_28;
  vector<SpawnRow*,std::allocator<SpawnRow*>> avStack_1c [16];
  
  std::vector<SpawnRow*,std::allocator<SpawnRow*>>::vector(avStack_1c);
  local_40 = (CCDictElement *)0x0;
  local_3c = (CCDictElement *)0x0;
  if ((*(int *)(in_r1 + 0x28) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(in_r1 + 0x28)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_40 = *(CCDictElement **)(*(int *)(in_r1 + 0x28) + 0x14);
    if (*(int *)(*(int *)(in_r1 + 0x28) + 0x14) == 0) {
      local_3c = (CCDictElement *)0x0;
    }
    else {
      local_3c = *(CCDictElement **)(*(int *)(*(int *)(in_r1 + 0x28) + 0x14) + 0x110);
    }
    while (local_40 != (CCDictElement *)0x0) {
      local_44 = (SpawnRow *)cocos2d::CCDictElement::getObject(local_40);
      std::vector<SpawnRow*,std::allocator<SpawnRow*>>::push_back(avStack_1c,&local_44);
      local_40 = local_3c;
      if (local_3c == (CCDictElement *)0x0) {
        local_3c = (CCDictElement *)0x0;
      }
      else {
        local_3c = *(CCDictElement **)(local_3c + 0x110);
      }
    }
  }
  uVar3 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::begin(avStack_1c);
  uVar4 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::end(avStack_1c);
  std::
  sort<__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>,bool(*)(SpawnRow*,SpawnRow*)>
            (uVar3,uVar4,0x3fc5b1);
  uVar5 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::size(avStack_1c);
  if (uVar5 < 2) {
    local_30 = 1;
  }
  else {
    local_30 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::size(avStack_1c);
    local_30 = local_30 >> 1;
  }
  piVar6 = (int *)cocos2d::CCDirector::sharedDirector();
  fVar7 = (float)(**(code **)(*piVar6 + 0x58))(piVar6);
  local_28 = (double)fVar7;
  local_2c = (undefined4)(longlong)(local_28 * 1000.0);
  __aeabi_idivmod(local_2c,local_30);
  local_38 = extraout_r1;
  if ((int)local_30 <= (int)extraout_r1) {
    local_38 = 0;
  }
  piVar6 = (int *)std::vector<SpawnRow*,std::allocator<SpawnRow*>>::operator[](avStack_1c,local_38);
  uVar4 = local_2c;
  uVar3 = lobbyPosition;
  local_34 = *piVar6;
  if (*(char *)(in_r1 + 0x16) == '\x01') {
    if (*(int *)(local_34 + 0x14) == 0) {
      uVar3 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::size(avStack_1c);
      __aeabi_uidivmod(uVar4,uVar3);
      local_38 = extraout_r1_01;
      uVar5 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::size(avStack_1c);
      if (uVar5 <= extraout_r1_01) {
        local_38 = 0;
      }
      piVar6 = (int *)std::vector<SpawnRow*,std::allocator<SpawnRow*>>::operator[]
                                (avStack_1c,local_38);
      local_34 = *piVar6;
    }
    else {
      piVar6 = (int *)std::vector<SpawnRow*,std::allocator<SpawnRow*>>::operator[]
                                (avStack_1c,local_38);
      local_34 = *piVar6;
    }
  }
  else {
    uVar4 = std::vector<SpawnRow*,std::allocator<SpawnRow*>>::size(avStack_1c);
    __aeabi_uidivmod(uVar3,uVar4);
    local_38 = extraout_r1_00;
    piVar6 = (int *)std::vector<SpawnRow*,std::allocator<SpawnRow*>>::operator[]
                              (avStack_1c,extraout_r1_00);
    local_34 = *piVar6;
    *(undefined1 *)(in_r1 + 0x16) = 1;
  }
  uVar3 = *(undefined4 *)(local_34 + 0x1c);
  uVar4 = *(undefined4 *)(local_34 + 0x20);
  uVar8 = *(undefined4 *)(local_34 + 0x24);
  *in_r0 = *(undefined4 *)(local_34 + 0x18);
  in_r0[1] = uVar3;
  in_r0[2] = uVar4;
  in_r0[3] = uVar8;
  cocos2d::CCDictionary::removeAllObjects(*(CCDictionary **)(in_r1 + 0x28));
  std::vector<SpawnRow*,std::allocator<SpawnRow*>>::~vector(avStack_1c);
  return in_r0;
}

// ---- SoldierManager::spawnPlayer  @ 0x3fc800
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003fc848 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierManager::spawnPlayer() */

void SoldierManager::spawnPlayer(void)

{
  int *piVar1;
  int in_r0;
  undefined4 uVar2;
  int iVar3;
  SpawnRow *this;
  CCString *this_00;
  uint uVar4;
  WeaponFactory *pWVar5;
  AvatarRenderer *pAVar6;
  SoldierView *pSVar7;
  CCNotificationCenter *this_01;
  CCObject *pCVar8;
  CCDictionary *this_02;
  code *pcVar9;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar10;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  undefined1 auStack_74 [4];
  string asStack_70 [4];
  uint local_6c;
  CCArray *local_68;
  undefined4 local_64;
  undefined4 local_60;
  SpawnRow *local_5c;
  int *local_58;
  int *local_54;
  CCArray *local_50;
  CCTexture2D *local_4c;
  CCTexture2D *local_48;
  CCTexture2D *local_44;
  CCTexture2D *local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  uVar2 = FUN_003faa18();
  fVar10 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
  FUN_003faa80(SUB84((double)((fVar10 / 1.0737418e+09 - 1.0) * 1500.0 + 1600.0),0),in_s1,0,&local_38
              );
  local_68 = (CCArray *)MapManager::getPlayerSpawnPoints(mapManager);
  iVar3 = cocos2d::CCArray::count(local_68);
  if (iVar3 != 0) {
    local_6c = 0;
    while (uVar4 = cocos2d::CCArray::count(local_68), local_6c < uVar4) {
      local_64 = cocos2d::CCArray::objectAtIndex(local_68,local_6c);
      MapManager::objectLocation((CCDictionary *)&local_28);
      local_60 = scoreSpawnPoint(in_r0,uStack_1c,local_28,uStack_24);
      this = operator_new(0x28);
      SpawnRow::SpawnRow(this);
      local_5c = this;
      cocos2d::CCObject::autorelease((CCObject *)this);
      *(undefined4 *)(local_5c + 0x14) = local_60;
      *(undefined4 *)(local_5c + 0x18) = local_28;
      *(undefined4 *)(local_5c + 0x1c) = uStack_24;
      *(undefined4 *)(local_5c + 0x20) = local_20;
      *(undefined4 *)(local_5c + 0x24) = uStack_1c;
      this_02 = *(CCDictionary **)(in_r0 + 0x28);
      this_00 = (CCString *)cocos2d::CCString::createWithFormat("%d",local_6c);
      uVar2 = cocos2d::CCString::getCString(this_00);
      FUN_0079a3f4(auStack_74);
      FUN_007c6a60(asStack_70,uVar2,auStack_74);
      cocos2d::CCDictionary::setObject(this_02,(CCObject *)local_5c,asStack_70);
      FUN_007c5914(asStack_70);
      FUN_0079a3fc(auStack_74);
      local_6c = local_6c + 1;
    }
    getRandomSafeSpawnPoint();
    local_38 = local_90;
    uStack_34 = uStack_8c;
    uStack_30 = uStack_88;
    uStack_2c = uStack_84;
  }
  iVar3 = hostSoldier[0x4e];
  *(undefined4 *)(iVar3 + 0x28) = local_38;
  *(undefined4 *)(iVar3 + 0x2c) = uStack_34;
  *(undefined4 *)(iVar3 + 0x30) = uStack_30;
  *(undefined4 *)(iVar3 + 0x34) = uStack_2c;
  piVar1 = hostSoldier;
  if (*(char *)(in_r0 + 0x34) != '\0') {
    pcVar9 = *(code **)(*hostSoldier + 0x2a8);
    pWVar5 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    uVar2 = (**(code **)(*hostSoldier + 0x318))(hostSoldier);
    uVar2 = WeaponFactory::createWeaponFromAmmoType(pWVar5,uVar2);
    (*pcVar9)(piVar1,uVar2);
    piVar1 = hostSoldier;
    pcVar9 = *(code **)(*hostSoldier + 0x2a8);
    pWVar5 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    uVar2 = WeaponFactory::createRandomStartWeapon(pWVar5);
    (*pcVar9)(piVar1,uVar2);
    pWVar5 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    local_58 = (int *)WeaponFactory::createWeaponFromAmmoType(pWVar5,2);
    (**(code **)(*local_58 + 0x278))(local_58,3);
    (**(code **)(*hostSoldier + 0x220))(hostSoldier,local_58);
    iVar3 = (**(code **)(*hostSoldier + 0x31c))(hostSoldier);
    if (iVar3 != -1) {
      pWVar5 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
      uVar2 = (**(code **)(*hostSoldier + 0x31c))(hostSoldier);
      local_54 = (int *)WeaponFactory::createWeaponFromAmmoType(pWVar5,uVar2);
      (**(code **)(*local_54 + 0x278))(local_54,1);
      (**(code **)(*hostSoldier + 0x220))(hostSoldier,local_54);
    }
  }
  iVar3 = hostSoldier[0x4e];
  *(undefined4 *)(iVar3 + 0x38) = 0;
  *(undefined4 *)(iVar3 + 0x3c) = 0;
  *(undefined4 *)(iVar3 + 0x40) = 0;
  *(undefined4 *)(iVar3 + 0x44) = 0;
  iVar3 = hostSoldier[0x4e];
  *(undefined4 *)(iVar3 + 0x48) = 0;
  *(undefined4 *)(iVar3 + 0x4c) = 0;
  *(undefined4 *)(iVar3 + 0x50) = 0;
  *(undefined4 *)(iVar3 + 0x54) = 0;
  piVar1 = hostSoldier;
  pcVar9 = *(code **)(*hostSoldier + 0x1bc);
  (**(code **)(*hostSoldier + 0x1c0))(&local_28,hostSoldier);
  (*pcVar9)(piVar1,&local_28);
  FUN_007c5914(&local_28);
  (**(code **)(*hostSoldier + 0x2b8))(hostSoldier,0);
  AvatarRenderer::sharedAvatarRenderer();
  local_50 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
  pAVar6 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_4c = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar6,local_50,*(int *)(in_r0 + 0x1c));
  pAVar6 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_48 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar6,local_50,*(int *)(in_r0 + 0x1c));
  pAVar6 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_44 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar6,local_50,*(int *)(in_r0 + 0x1c));
  pAVar6 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_40 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar6,local_50,*(int *)(in_r0 + 0x1c));
  pAVar6 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_3c = AvatarRenderer::getBodyType(pAVar6,local_50,*(int *)(in_r0 + 0x1c));
  pSVar7 = (SoldierView *)(**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::setPlayerSkin(pSVar7,local_3c,local_4c,local_48,local_44,local_40);
  pSVar7 = (SoldierView *)(**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  FUN_007c64e8(&local_28,in_r0 + 0x20);
  SoldierView::setPlayerName(pSVar7,&local_28);
  FUN_007c5914(&local_28);
  this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  pCVar8 = (CCObject *)cocos2d::CCInteger::create(*(int *)(in_r0 + 0x24));
  cocos2d::CCNotificationCenter::postNotification(this_01,"PlayerSpawn",pCVar8);
  return;
}

// ---- SoldierManager::getRespawnTime  @ 0x3fccd0
/* SoldierManager::getRespawnTime() */

undefined4 __thiscall SoldierManager::getRespawnTime(SoldierManager *this)

{
  return *(undefined4 *)(this + 0x18);
}

// ---- SoldierManager::isRespawning  @ 0x3fcce0
/* SoldierManager::isRespawning() */

SoldierManager __thiscall SoldierManager::isRespawning(SoldierManager *this)

{
  return this[0x14];
}
