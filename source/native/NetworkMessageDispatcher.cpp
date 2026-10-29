// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 66 functions

// ---- NetworkMessageDispatcher::NetworkMessageDispatcher  @ 0x391dec
/* NetworkMessageDispatcher::NetworkMessageDispatcher() */

NetworkMessageDispatcher * __thiscall
NetworkMessageDispatcher::NetworkMessageDispatcher(NetworkMessageDispatcher *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00915ce8;
  init(this);
  return this;
}

// ---- NetworkMessageDispatcher::init  @ 0x391e2c
/* NetworkMessageDispatcher::init() */

undefined4 __thiscall NetworkMessageDispatcher::init(NetworkMessageDispatcher *this)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCDictionary::create();
  *(undefined4 *)(this + 0x14) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  return 1;
}

// ---- NetworkMessageDispatcher::~NetworkMessageDispatcher  @ 0x391e60
/* WARNING: Removing unreachable block (ram,0x00391e8c) */
/* NetworkMessageDispatcher::~NetworkMessageDispatcher() */

NetworkMessageDispatcher * __thiscall
NetworkMessageDispatcher::~NetworkMessageDispatcher(NetworkMessageDispatcher *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00915ce8;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::~NetworkMessageDispatcher  @ 0x391ea4
/* NetworkMessageDispatcher::~NetworkMessageDispatcher() */

NetworkMessageDispatcher * __thiscall
NetworkMessageDispatcher::~NetworkMessageDispatcher(NetworkMessageDispatcher *this)

{
  ~NetworkMessageDispatcher(this);
  operator_delete(this);
  return this;
}

// ---- NetworkMessageDispatcher::updateNetworkObjects  @ 0x391ec0
/* NetworkMessageDispatcher::updateNetworkObjects(cocos2d::CCArray*, cocos2d::CCArray*) */

void __thiscall
NetworkMessageDispatcher::updateNetworkObjects
          (NetworkMessageDispatcher *this,CCArray *param_1,CCArray *param_2)

{
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  short sVar4;
  bool bVar5;
  uint uVar6;
  int iVar7;
  CCString *this_00;
  undefined4 uVar8;
  undefined1 *puVar9;
  CCNotificationCenter *pCVar10;
  undefined4 uVar11;
  NetworkManager *pNVar12;
  uchar *puVar13;
  ulong uVar14;
  CCObject *pCVar15;
  uint uVar16;
  undefined1 auStack_d4 [4];
  undefined1 auStack_d0 [4];
  undefined1 auStack_cc [4];
  undefined1 auStack_c8 [4];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [4];
  undefined1 auStack_bc [4];
  string asStack_b8 [4];
  undefined1 auStack_b4 [4];
  undefined1 auStack_b0 [4];
  undefined1 auStack_ac [4];
  undefined1 auStack_a8 [4];
  undefined1 auStack_a4 [4];
  undefined1 auStack_a0 [4];
  undefined1 auStack_9c [4];
  undefined1 auStack_98 [4];
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  undefined1 auStack_70 [4];
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  uint local_4c;
  CCData *local_48;
  CCString *local_44;
  int local_40;
  undefined4 local_3c;
  CCObject *local_38;
  undefined4 local_34;
  CCObject *local_30;
  int local_2c;
  char *local_28;
  size_t local_24;
  int local_20;
  CCString *local_1c;
  CCString *local_18;
  CCString *local_14;
  
  local_4c = 0;
  while( true ) {
    uVar6 = local_4c;
    uVar16 = cocos2d::CCArray::count(param_1);
    if (uVar16 <= uVar6) {
      return;
    }
    local_48 = (CCData *)cocos2d::CCArray::objectAtIndex(param_1,local_4c);
    if (((local_48 == (CCData *)0x0) ||
        (iVar7 = cocos2d::extension::CCData::getSize(local_48), iVar7 == 0)) ||
       (iVar7 = cocos2d::extension::CCData::getBytes(local_48), iVar7 == 0)) {
      bVar5 = true;
    }
    else {
      bVar5 = false;
    }
    if (bVar5) break;
    this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(param_2,local_4c);
    uVar8 = cocos2d::CCString::getCString(this_00);
    FUN_0079a3f4(auStack_50);
    FUN_007c6a60(auStack_d4,uVar8,auStack_50);
    FUN_0079a3fc(auStack_50);
    puVar9 = (undefined1 *)cocos2d::extension::CCData::getBytes(local_48);
    uVar1 = *puVar9;
    switch(uVar1) {
    case 0:
      puts("MID_CSSERVERFULL : Server was full :(");
      pNVar12 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::nextServerIndex(pNVar12);
      pNVar12 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::connectToServer(pNVar12,false);
      break;
    case 1:
      iVar7 = cocos2d::extension::CCData::getBytes(local_48);
      local_44 = (CCString *)cocos2d::CCString::createWithFormat("%d",(uint)*(byte *)(iVar7 + 1));
      pNVar12 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      uVar8 = cocos2d::CCString::getCString(local_44);
      FUN_0079a3f4(auStack_50);
      FUN_007c6a60(auStack_d0,uVar8,auStack_50);
      NetworkManager::setHostPeerID(pNVar12,auStack_d0);
      FUN_007c5914(auStack_d0);
      FUN_0079a3fc(auStack_50);
      break;
    case 2:
      local_2c = cocos2d::extension::CCData::getBytes(local_48);
      bVar2 = *(byte *)(local_2c + 1);
      if (*(char *)(local_2c + 2) == '\0') {
        local_1c = (CCString *)cocos2d::CCString::createWithFormat("%d",(uint)bVar2);
        uVar8 = NetworkManager::sharedNetworkManager();
        uVar11 = cocos2d::CCString::getCString(local_1c);
        FUN_0079a3f4(auStack_54);
        FUN_007c6a60(auStack_c4,uVar11,auStack_54);
        FUN_0079a3f4(auStack_50);
        FUN_007c6a60(auStack_c0,&DAT_007e05c8,auStack_50);
        NetworkManager::addPlayer(uVar8,auStack_c4,auStack_c0);
        FUN_007c5914(auStack_c0);
        FUN_0079a3fc(auStack_50);
        FUN_007c5914(auStack_c4);
        FUN_0079a3fc(auStack_54);
      }
      else {
        iVar7 = cocos2d::extension::CCData::getBytes(local_48);
        cVar3 = *(char *)(iVar7 + 3);
        iVar7 = cocos2d::extension::CCData::getBytes(local_48);
        local_28 = (char *)(iVar7 + 4);
        local_24 = strlen(local_28);
        local_20 = cocos2d::extension::CCData::getBytes(local_48);
        local_20 = local_24 + 5 + local_20;
        uVar8 = NetworkManager::sharedNetworkManager();
        FUN_0079a3f4(auStack_54);
        FUN_007c6a60(auStack_cc,local_28,auStack_54);
        FUN_0079a3f4(auStack_50);
        FUN_007c6a60(auStack_c8,local_20,auStack_50);
        NetworkManager::connectToPeer(uVar8,auStack_cc,auStack_c8,bVar2,cVar3 != '\0');
        FUN_007c5914(auStack_c8);
        FUN_0079a3fc(auStack_50);
        FUN_007c5914(auStack_cc);
        FUN_0079a3fc(auStack_54);
      }
      break;
    case 6:
      iVar7 = cocos2d::extension::CCData::getBytes(local_48);
      local_18 = (CCString *)cocos2d::CCString::createWithFormat("%d",(uint)*(byte *)(iVar7 + 1));
      pNVar12 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      uVar8 = cocos2d::CCString::getCString(local_18);
      FUN_0079a3f4(auStack_50);
      FUN_007c6a60(auStack_bc,uVar8,auStack_50);
      NetworkManager::removePlayer(pNVar12,auStack_bc);
      FUN_007c5914(auStack_bc);
      FUN_0079a3fc(auStack_50);
      break;
    case 7:
      updateServerPingTime(this);
      break;
    case 8:
      iVar7 = cocos2d::extension::CCData::getBytes(local_48);
      sVar4 = *(short *)(iVar7 + 1);
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      pCVar15 = (CCObject *)cocos2d::CCInteger::create((int)sVar4);
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"ServerPlayerCount",pCVar15);
      break;
    case 9:
      puVar13 = (uchar *)cocos2d::extension::CCData::getBytes(local_48);
      uVar14 = cocos2d::extension::CCData::getSize(local_48);
      local_14 = (CCString *)cocos2d::CCString::createWithData(puVar13,uVar14);
      FUN_0079a3f4(auStack_54);
      FUN_007c6a60(auStack_b4,"Server Notification",auStack_54);
      uVar8 = cocos2d::CCString::getCString(local_14);
      FUN_0079a3f4(auStack_50);
      FUN_007c6a60(auStack_b0,uVar8,auStack_50);
      FUN_0079a3f4(auStack_58);
      FUN_007c6a60(asStack_b8,"CLOSE",auStack_58);
      pCVar15 = (CCObject *)cocos2d::CCString::create(asStack_b8);
      uVar8 = cocos2d::CCArray::create(pCVar15,0);
      AMessageBox::showAlert(0,auStack_b4,auStack_b0,uVar8,0,0);
      FUN_007c5914(asStack_b8);
      FUN_0079a3fc(auStack_58);
      FUN_007c5914(auStack_b0);
      FUN_0079a3fc(auStack_50);
      FUN_007c5914(auStack_b4);
      FUN_0079a3fc(auStack_54);
      break;
    case 10:
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"HostedGameClosed",(CCObject *)0x0);
      break;
    case 0xc:
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"StartCountDown",(CCObject *)0x0);
      break;
    case 0xd:
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"CancelCountDown",(CCObject *)0x0);
      break;
    case 0xe:
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"StartHostedGame",(CCObject *)0x0);
      break;
    case 0xf:
    case 0x10:
    case 0x11:
    case 0x12:
      FUN_007c64e8(auStack_ac,auStack_d4);
      updatePeerLocation(this,local_48,auStack_ac,uVar1);
      FUN_007c5914(auStack_ac);
      break;
    case 0x13:
      FUN_007c64e8(auStack_a8,auStack_d4);
      updatePeerWeaponUpdate(this,local_48,auStack_a8);
      FUN_007c5914(auStack_a8);
      break;
    case 0x14:
    case 0x15:
    case 0x16:
      FUN_007c64e8(auStack_a4,auStack_d4);
      updatePeerMotion(this,local_48,auStack_a4,uVar1);
      FUN_007c5914(auStack_a4);
      break;
    case 0x17:
      FUN_007c64e8(auStack_a0,auStack_d4);
      updatePeerDamage(this,local_48,auStack_a0);
      FUN_007c5914(auStack_a0);
      break;
    case 0x18:
      FUN_007c64e8(auStack_9c,auStack_d4);
      peerExplosionCreate(this,local_48,auStack_9c);
      FUN_007c5914(auStack_9c);
      break;
    case 0x19:
      FUN_007c64e8(auStack_98,auStack_d4);
      updatePeerWeaponChange(this,local_48,auStack_98);
      FUN_007c5914(auStack_98);
      break;
    case 0x1a:
      FUN_007c64e8(auStack_94,auStack_d4);
      updatePeerWeaponCreate(this,local_48,auStack_94);
      FUN_007c5914(auStack_94);
      break;
    case 0x1b:
      FUN_007c64e8(auStack_90,auStack_d4);
      updatePeerWeaponRemove(this,local_48,auStack_90);
      FUN_007c5914(auStack_90);
      break;
    case 0x1c:
      FUN_007c64e8(auStack_8c,auStack_d4);
      peerWeaponLockQuery(this,local_48,auStack_8c);
      FUN_007c5914(auStack_8c);
      break;
    case 0x1d:
      FUN_007c64e8(auStack_88,auStack_d4);
      peerWeaponLockReply(this,local_48,auStack_88);
      FUN_007c5914(auStack_88);
      break;
    case 0x1e:
      FUN_007c64e8(auStack_84,auStack_d4);
      updatePeerPunch(this,local_48,auStack_84);
      FUN_007c5914(auStack_84);
      break;
    case 0x1f:
      FUN_007c64e8(auStack_80,auStack_d4);
      updatePeerThrow(this,local_48,auStack_80);
      FUN_007c5914(auStack_80);
      break;
    case 0x20:
      FUN_007c64e8(auStack_7c,auStack_d4);
      updatePeerDied(this,local_48,auStack_7c);
      FUN_007c5914(auStack_7c);
      break;
    case 0x21:
      FUN_007c64e8(auStack_78,auStack_d4);
      updatePeerSetup(this,local_48,auStack_78);
      FUN_007c5914(auStack_78);
      break;
    case 0x22:
      FUN_007c64e8(auStack_74,auStack_d4);
      updatePeerPowerUp(this,local_48,auStack_74);
      FUN_007c5914(auStack_74);
      break;
    case 0x23:
      FUN_007c64e8(auStack_6c,auStack_d4);
      updatePeerEnteredGame(this,local_48,auStack_6c);
      FUN_007c5914(auStack_6c);
      break;
    case 0x25:
      FUN_007c64e8(auStack_68,auStack_d4);
      updatePeerPingTime(this,local_48,auStack_68);
      FUN_007c5914(auStack_68);
      break;
    case 0x26:
      FUN_007c64e8(auStack_64,auStack_d4);
      peerIM(this,local_48,auStack_64);
      FUN_007c5914(auStack_64);
      break;
    case 0x27:
      FUN_007c64e8(auStack_54,auStack_d4);
      peerLobbyStatus(this,local_48,auStack_54);
      FUN_007c5914(auStack_54);
      break;
    case 0x28:
      FUN_007c64e8(auStack_60,auStack_d4);
      updatePeerEnemySpawn(this,local_48,auStack_60);
      FUN_007c5914(auStack_60);
      break;
    case 0x29:
      FUN_007c64e8(auStack_5c,auStack_d4);
      updatePeerEnemyPosition(this,local_48,auStack_5c);
      FUN_007c5914(auStack_5c);
      break;
    case 0x2a:
      FUN_007c64e8(auStack_58,auStack_d4);
      updatePeerEnemyDestroy(this,local_48,auStack_58);
      FUN_007c5914(auStack_58);
      break;
    case 0x2b:
      FUN_007c64e8(auStack_50,auStack_d4);
      peerRequestSetupData(this,local_48,auStack_50);
      FUN_007c5914(auStack_50);
      break;
    case 0x2c:
      FUN_007c64e8(auStack_70,auStack_d4);
      peerExplosionRemove(this,local_48,auStack_70);
      FUN_007c5914(auStack_70);
      break;
    case 0x2d:
      serverSetMap(this,local_48);
      break;
    case 0x2f:
      iVar7 = cocos2d::extension::CCData::getBytes(local_48);
      local_3c = *(undefined4 *)(iVar7 + 2);
      local_40 = iVar7 + 6;
      local_38 = (CCObject *)cocos2d::CCString::createWithFormat("%d",(uint)*(byte *)(iVar7 + 1));
      local_34 = cocos2d::CCString::createWithFormat("%d",local_3c);
      local_30 = (CCObject *)cocos2d::CCArray::create(local_38,local_34,0);
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"PlayerIdentified",local_30);
    }
    FUN_007c5914(auStack_d4);
    local_4c = local_4c + 1;
  }
  return;
}

// ---- NetworkMessageDispatcher::createWeaponFromType  @ 0x39299c
/* NetworkMessageDispatcher::createWeaponFromType(int) */

undefined4 __thiscall
NetworkMessageDispatcher::createWeaponFromType(NetworkMessageDispatcher *this,int param_1)

{
  WeaponFactory *pWVar1;
  undefined4 uVar2;
  
  pWVar1 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar2 = WeaponFactory::createWeaponFromAmmoType(pWVar1,param_1);
  return uVar2;
}

// ---- NetworkMessageDispatcher::getLocationData  @ 0x3929c0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00392c52 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::getLocationData(bool) */

CCData * NetworkMessageDispatcher::getLocationData(bool param_1)

{
  double dVar1;
  int iVar2;
  float fVar3;
  int *piVar4;
  int *piVar5;
  undefined4 uVar6;
  float fVar7;
  CCData *this;
  char in_r1;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 in_s1;
  double dVar11;
  double dVar12;
  undefined1 local_a4;
  undefined1 local_a3;
  undefined1 local_a2;
  undefined1 local_a1;
  undefined1 *local_98;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if (in_r1 == '\0') {
    local_a4 = 0xf;
  }
  else {
    local_a4 = 0x12;
  }
  iVar2 = (**(code **)(*hostSoldier + 0x26c))(hostSoldier);
  if (iVar2 != 0) {
    if (in_r1 == '\0') {
      local_a4 = 0x10;
    }
    else {
      local_a4 = 0x11;
    }
  }
  dVar11 = *(double *)(hostSoldier[0x4e] + 0x28);
  dVar12 = *(double *)(hostSoldier[0x4e] + 0x30);
  fVar3 = (float)(**(code **)(*hostSoldier + 0x23c))(hostSoldier);
  dVar1 = *(double *)(hostSoldier[0x4e] + 0x58);
  local_a3 = 0;
  local_a2 = 0;
  piVar4 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  piVar5 = (int *)(**(code **)(*hostSoldier + 0x1fc))(hostSoldier);
  if (piVar4 != (int *)0x0) {
    local_a3 = (**(code **)(*piVar4 + 0x240))(piVar4);
  }
  if (piVar5 != (int *)0x0) {
    local_a2 = (**(code **)(*piVar5 + 0x240))(piVar5);
  }
  DAT_00950aed = (ushort)(0.0 < angle2uShort * fVar3) * (short)(longlong)(angle2uShort * fVar3);
  DAT_00950aef = (undefined1)(longlong)((double)rad2Char * dVar1);
  DAT_00950ae8 = local_a4;
  DAT_00950ae9 = (undefined2)(longlong)dVar11;
  DAT_00950aeb = (undefined2)(longlong)dVar12;
  DAT_00950af0 = local_a3;
  DAT_00950af1 = local_a2;
  local_98 = &DAT_00950af2;
  if (in_r1 != '\0') {
    local_a1 = 0x14;
    iVar2 = (**(code **)(*hostSoldier + 0x1a0))(hostSoldier);
    if (iVar2 != 0) {
      local_a1 = 0x16;
    }
    iVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier);
    if (iVar2 != 0) {
      local_a1 = 0x15;
    }
    iVar2 = hostSoldier[0x4e];
    uVar6 = *(undefined4 *)(iVar2 + 0x38);
    uVar8 = *(undefined4 *)(iVar2 + 0x3c);
    uVar9 = *(undefined4 *)(iVar2 + 0x40);
    uVar10 = *(undefined4 *)(iVar2 + 0x44);
    (**(code **)(*hostSoldier + 0x234))(&local_40,hostSoldier);
    dVar1 = (double)(**(code **)(*hostSoldier + 0x1e8))(hostSoldier);
    FUN_00390e6c(uVar6,in_s1,uVar9,&local_30);
    dVar11 = (double)cpvlength(local_30,uStack_2c,uStack_28,uStack_24);
    fVar3 = (float)FUN_003910d8(uVar6,uVar8,uVar9,uVar10);
    fVar3 = angle2Char * fVar3;
    FUN_00390e6c(local_40,in_s1,local_38,&local_20);
    dVar12 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
    fVar7 = (float)FUN_003910d8(local_40,uStack_3c,local_38,uStack_34);
    DAT_00950af5 = (undefined1)(int)((float)dVar12 * 255.0);
    DAT_00950af6 = (undefined1)(int)(angle2Char * fVar7);
    DAT_00950af7 = (undefined1)(longlong)(dVar1 * 255.0);
    DAT_00950af2 = local_a1;
    local_98 = &DAT_00950af8;
    DAT_00950af3 = (char)(longlong)((float)dVar11 * 0.51);
    DAT_00950af4 = (char)(int)fVar3;
  }
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,(ulong)(local_98 + -0x950ae8));
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::updatePeerLocation  @ 0x392df8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00392f8c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::updatePeerLocation(cocos2d::extension::CCData*, std::string, int) */

void NetworkMessageDispatcher::updatePeerLocation
               (undefined4 param_1_00,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               NetworkMessageDispatcher *param_1,CCData *param_6,undefined4 param_7,int param_8)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  short sVar7;
  short sVar8;
  ushort uVar9;
  char cVar10;
  NetworkManager *this;
  int *piVar11;
  int iVar12;
  float fVar13;
  float fVar14;
  int *piVar15;
  undefined4 uVar16;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined8 uVar17;
  float fVar19;
  undefined8 uVar18;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 uStack_3c;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar10 = NetworkManager::isInGame(this);
  if (cVar10 == '\x01') {
    FUN_007c64e8(local_28,param_7);
    piVar11 = (int *)getPeerSoldier(param_1,local_28);
    FUN_007c5914(local_28);
    if (piVar11 != (int *)0x0) {
      iVar12 = cocos2d::extension::CCData::getBytes(param_6);
      sVar7 = *(short *)(iVar12 + 1);
      sVar8 = *(short *)(iVar12 + 3);
      uVar9 = *(ushort *)(iVar12 + 5);
      bVar1 = *(byte *)(iVar12 + 7);
      uVar2 = *(undefined1 *)(iVar12 + 8);
      uVar3 = *(undefined1 *)(iVar12 + 9);
      if ((param_8 == 0x11) || (param_8 == 0x12)) {
        cVar10 = *(char *)(iVar12 + 10);
        bVar4 = *(byte *)(iVar12 + 0xd);
        bVar5 = *(byte *)(iVar12 + 0xe);
        bVar6 = *(byte *)(iVar12 + 0xf);
        fVar19 = (float)VectorUnsignedToFloat
                                  ((uint)*(byte *)(iVar12 + 0xb),(byte)(in_fpscr >> 0x16) & 3);
        VectorUnsignedToFloat((uint)*(byte *)(iVar12 + 0xc),(byte)(in_fpscr >> 0x16) & 3);
        fVar13 = (float)std::cos(extraout_s0);
        fVar14 = (float)std::sin(extraout_s0_00);
        FUN_00390e6c(SUB84((double)fVar13,0),param_2,SUB84((double)fVar14,0),local_38);
        fVar13 = (float)FUN_00390eec(local_38[0],param_2,local_30,param_4,
                                     SUB84((double)(fVar19 * 1.96078),0),&local_58);
        fVar19 = (float)VectorUnsignedToFloat((uint)bVar4,(byte)(in_fpscr >> 0x16) & 3);
        VectorUnsignedToFloat((uint)bVar5,(byte)(in_fpscr >> 0x16) & 3);
        fVar13 = (float)std::cos(fVar13);
        fVar14 = (float)std::sin(extraout_s0_01);
        FUN_00390e6c(SUB84((double)fVar13,0),param_2,SUB84((double)fVar14,0),local_28);
        FUN_00390eec(local_28[0],param_2,local_20,param_4,SUB84((double)(fVar19 / 255.0),0),
                     &local_48);
        fVar13 = (float)VectorUnsignedToFloat((uint)bVar6,(byte)(in_fpscr >> 0x16) & 3);
        (**(code **)(*piVar11 + 0x2a8))(piVar11,uStack_4c,local_58,uStack_54);
        (**(code **)(*piVar11 + 0x230))(piVar11,uStack_3c,local_48,uStack_44);
        (**(code **)(*piVar11 + 0x2a0))
                  (piVar11,*(code **)(*piVar11 + 0x2a0),SUB84((double)(fVar13 / 255.0),0),
                   (int)((ulonglong)(double)(fVar13 / 255.0) >> 0x20));
        (**(code **)(*piVar11 + 0x268))(piVar11,cVar10 == '\x15');
        (**(code **)(*piVar11 + 0x19c))(piVar11,cVar10 == '\x16');
      }
      fVar13 = (float)VectorSignedToFloat((uint)uVar9,(byte)(in_fpscr >> 0x16) & 3);
      fVar13 = fVar13 * uShort2Angle;
      fVar14 = (float)VectorUnsignedToFloat((uint)bVar1,(byte)(in_fpscr >> 0x16) & 3);
      fVar14 = fVar14 * char2Rad;
      uVar17 = VectorSignedToFloat((int)sVar7,(byte)(in_fpscr >> 0x16) & 3);
      uVar18 = VectorSignedToFloat((int)sVar8,(byte)(in_fpscr >> 0x16) & 3);
      FUN_00390e6c((int)uVar17,param_2,(int)uVar18,&local_48);
      (**(code **)(*piVar11 + 0x2ac))(piVar11,uStack_3c,local_48,uStack_44);
      (**(code **)(*piVar11 + 0x238))(piVar11,fVar13);
      (**(code **)(*piVar11 + 0x2a4))(piVar11,fVar14);
      if ((param_8 == 0x10) || (param_8 == 0x11)) {
        uVar16 = 1;
      }
      else {
        uVar16 = 0;
      }
      (**(code **)(*piVar11 + 0x270))(piVar11,uVar16);
      cVar10 = (**(code **)(*piVar11 + 0x264))(piVar11);
      if (cVar10 != '\x01') {
        piVar15 = (int *)(**(code **)(*piVar11 + 500))(piVar11);
        piVar11 = (int *)(**(code **)(*piVar11 + 0x1fc))(piVar11);
        if (piVar15 != (int *)0x0) {
          (**(code **)(*piVar15 + 0x248))(piVar15,uVar2);
        }
        if (piVar11 != (int *)0x0) {
          (**(code **)(*piVar11 + 0x248))(piVar11,uVar3);
        }
      }
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::getMotionData  @ 0x393270
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039332c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::getMotionData() */

CCData * NetworkMessageDispatcher::getMotionData(void)

{
  double dVar1;
  int iVar2;
  undefined4 uVar3;
  float fVar4;
  float fVar5;
  CCData *this;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 in_s1;
  double dVar9;
  double dVar10;
  undefined1 local_76;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  local_76 = 0x14;
  iVar2 = (**(code **)(*hostSoldier + 0x1a0))(hostSoldier);
  if (iVar2 != 0) {
    local_76 = 0x16;
  }
  iVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier);
  if (iVar2 != 0) {
    local_76 = 0x15;
  }
  iVar2 = hostSoldier[0x4e];
  uVar3 = *(undefined4 *)(iVar2 + 0x38);
  uVar6 = *(undefined4 *)(iVar2 + 0x3c);
  uVar7 = *(undefined4 *)(iVar2 + 0x40);
  uVar8 = *(undefined4 *)(iVar2 + 0x44);
  (**(code **)(*hostSoldier + 0x234))(&local_40,hostSoldier);
  dVar1 = (double)(**(code **)(*hostSoldier + 0x1e8))(hostSoldier);
  FUN_00390e6c(uVar3,in_s1,uVar7,&local_30);
  dVar9 = (double)cpvlength(local_30,uStack_2c,uStack_28,uStack_24);
  fVar4 = (float)FUN_003910d8(uVar3,uVar6,uVar7,uVar8);
  fVar4 = angle2Char * fVar4;
  FUN_00390e6c(local_40,in_s1,local_38,&local_20);
  dVar10 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
  fVar5 = (float)FUN_003910d8(local_40,uStack_3c,local_38,uStack_34);
  DAT_00950aeb._0_1_ = (undefined1)(int)((float)dVar10 * 255.0);
  DAT_00950aeb._1_1_ = (undefined1)(int)(angle2Char * fVar5);
  DAT_00950aed._0_1_ = (undefined1)(longlong)(dVar1 * 255.0);
  DAT_00950ae8 = local_76;
  DAT_00950ae9._0_1_ = (char)(longlong)((float)dVar9 * 0.51);
  DAT_00950ae9._1_1_ = (char)(int)fVar4;
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,6);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::updatePeerMotion  @ 0x3934d0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003935f4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::updatePeerMotion(cocos2d::extension::CCData*, std::string, int) */

void NetworkMessageDispatcher::updatePeerMotion
               (undefined4 param_1_00,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               NetworkMessageDispatcher *param_1,CCData *param_6,undefined4 param_7,int param_8)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  char cVar4;
  NetworkManager *this;
  int *piVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float fVar9;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar4 = NetworkManager::isInGame(this);
  if (cVar4 == '\x01') {
    FUN_007c64e8(local_20,param_7);
    piVar5 = (int *)getPeerSoldier(param_1,local_20);
    FUN_007c5914(local_20);
    if (piVar5 != (int *)0x0) {
      iVar6 = cocos2d::extension::CCData::getBytes(param_6);
      bVar1 = *(byte *)(iVar6 + 3);
      bVar2 = *(byte *)(iVar6 + 4);
      bVar3 = *(byte *)(iVar6 + 5);
      fVar9 = (float)VectorUnsignedToFloat((uint)*(byte *)(iVar6 + 1),(byte)(in_fpscr >> 0x16) & 3);
      VectorUnsignedToFloat((uint)*(byte *)(iVar6 + 2),(byte)(in_fpscr >> 0x16) & 3);
      fVar7 = (float)std::cos(extraout_s0);
      fVar8 = (float)std::sin(extraout_s0_00);
      FUN_00390e6c(SUB84((double)fVar7,0),param_2,SUB84((double)fVar8,0),local_30);
      fVar7 = (float)FUN_00390eec(local_30[0],param_2,local_28,param_4,
                                  SUB84((double)(fVar9 * 1.96078),0),&local_50);
      fVar9 = (float)VectorUnsignedToFloat((uint)bVar1,(byte)(in_fpscr >> 0x16) & 3);
      VectorUnsignedToFloat((uint)bVar2,(byte)(in_fpscr >> 0x16) & 3);
      fVar7 = (float)std::cos(fVar7);
      fVar8 = (float)std::sin(extraout_s0_01);
      FUN_00390e6c(SUB84((double)fVar7,0),param_2,SUB84((double)fVar8,0),local_20);
      FUN_00390eec(local_20[0],param_2,local_18,param_4,SUB84((double)(fVar9 / 255.0),0),&local_40);
      fVar7 = (float)VectorUnsignedToFloat((uint)bVar3,(byte)(in_fpscr >> 0x16) & 3);
      (**(code **)(*piVar5 + 0x2a8))(piVar5,uStack_44,local_50,uStack_4c);
      (**(code **)(*piVar5 + 0x230))(piVar5,uStack_34,local_40,uStack_3c);
      (**(code **)(*piVar5 + 0x2a0))
                (piVar5,*(code **)(*piVar5 + 0x2a0),SUB84((double)(fVar7 / 255.0),0),
                 (int)((ulonglong)(double)(fVar7 / 255.0) >> 0x20));
      (**(code **)(*piVar5 + 0x268))(piVar5,param_8 == 0x15);
      (**(code **)(*piVar5 + 0x19c))(piVar5,param_8 == 0x16);
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerWeaponChange  @ 0x393790
/* NetworkMessageDispatcher::updatePeerWeaponChange(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerWeaponChange
          (NetworkMessageDispatcher *this,CCData *param_1,undefined4 param_3)

{
  short sVar1;
  short sVar2;
  short sVar3;
  short sVar4;
  bool bVar5;
  char cVar6;
  NetworkManager *this_00;
  int iVar7;
  undefined4 uVar8;
  code *pcVar9;
  undefined1 auStack_24 [4];
  int *local_20;
  int local_1c;
  int *local_18;
  int *local_14;
  int *local_10;
  int *local_c;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar6 = NetworkManager::isInGame(this_00);
  if (cVar6 == '\x01') {
    FUN_007c64e8(auStack_24,param_3);
    local_20 = (int *)getPeerSoldier(this,auStack_24);
    FUN_007c5914(auStack_24);
    if (local_20 != (int *)0x0) {
      local_1c = cocos2d::extension::CCData::getBytes(param_1);
      sVar1 = *(short *)(local_1c + 1);
      sVar2 = *(short *)(local_1c + 3);
      sVar3 = *(short *)(local_1c + 5);
      sVar4 = *(short *)(local_1c + 7);
      local_1c = local_1c + 9;
      local_18 = (int *)(**(code **)(*local_20 + 500))(local_20);
      local_14 = (int *)(**(code **)(*local_20 + 0x1f8))(local_20);
      local_10 = (int *)(**(code **)(*local_20 + 0x200))(local_20);
      local_c = (int *)(**(code **)(*local_20 + 0x1fc))(local_20);
      if ((local_18 == (int *)0x0) ||
         (iVar7 = (**(code **)(*local_18 + 0x27c))(local_18), iVar7 != sVar1)) {
        bVar5 = true;
      }
      else {
        bVar5 = false;
      }
      if ((bVar5) && ((**(code **)(*local_20 + 0x208))(local_20), 0 < sVar1)) {
        pcVar9 = *(code **)(*local_20 + 0x214);
        uVar8 = createWeaponFromType(this,(int)sVar1);
        (*pcVar9)(local_20,uVar8);
      }
      if ((local_14 == (int *)0x0) ||
         (iVar7 = (**(code **)(*local_14 + 0x27c))(local_14), iVar7 != sVar2)) {
        bVar5 = true;
      }
      else {
        bVar5 = false;
      }
      if ((bVar5) && ((**(code **)(*local_20 + 0x204))(local_20), 0 < sVar2)) {
        pcVar9 = *(code **)(*local_20 + 0x218);
        uVar8 = createWeaponFromType(this,(int)sVar2);
        (*pcVar9)(local_20,uVar8);
      }
      if ((local_10 == (int *)0x0) ||
         (iVar7 = (**(code **)(*local_10 + 0x27c))(local_10), iVar7 != sVar3)) {
        bVar5 = true;
      }
      else {
        bVar5 = false;
      }
      if ((bVar5) && ((**(code **)(*local_20 + 0x210))(local_20), 0 < sVar3)) {
        pcVar9 = *(code **)(*local_20 + 0x220);
        uVar8 = createWeaponFromType(this,(int)sVar3);
        (*pcVar9)(local_20,uVar8);
      }
      if ((local_c == (int *)0x0) ||
         (iVar7 = (**(code **)(*local_c + 0x27c))(local_c), iVar7 != sVar4)) {
        bVar5 = true;
      }
      else {
        bVar5 = false;
      }
      if ((bVar5) && ((**(code **)(*local_20 + 0x20c))(local_20), 0 < sVar4)) {
        pcVar9 = *(code **)(*local_20 + 0x21c);
        uVar8 = createWeaponFromType(this,(int)sVar4);
        (*pcVar9)(local_20,uVar8);
      }
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerWeaponCreate  @ 0x3939f4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00393aae */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::updatePeerWeaponCreate(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerWeaponCreate
               (undefined4 param_1_00,undefined4 param_2,NetworkMessageDispatcher *param_1,
               CCData *param_4,undefined4 param_5)

{
  char cVar1;
  NetworkManager *this;
  int iVar2;
  int iVar3;
  CCObject *pCVar4;
  undefined4 uVar5;
  CCNotificationCenter *this_00;
  code *pcVar6;
  uint in_fpscr;
  float fVar7;
  float extraout_s1;
  undefined8 uVar8;
  undefined8 uVar9;
  undefined1 auStack_44 [4];
  undefined1 local_40;
  undefined1 local_3f;
  short local_3e;
  short local_3c;
  short local_3a;
  short local_38;
  short local_36;
  uchar *local_34;
  CCString *local_30;
  CCObject *local_2c;
  CCPoint aCStack_28 [8];
  undefined1 local_20 [16];
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isInGame(this);
  if (cVar1 == '\x01') {
    iVar2 = cocos2d::extension::CCData::getBytes(param_4);
    local_3e = *(short *)(iVar2 + 1);
    local_3c = *(short *)(iVar2 + 3);
    local_3a = *(short *)(iVar2 + 5);
    local_40 = *(undefined1 *)(iVar2 + 7);
    local_3f = *(undefined1 *)(iVar2 + 8);
    local_38 = *(short *)(iVar2 + 9);
    local_36 = *(short *)(iVar2 + 0xb);
    local_34 = (uchar *)(iVar2 + 0xd);
    uVar8 = VectorSignedToFloat((int)local_38,(byte)(in_fpscr >> 0x16) & 3);
    uVar9 = VectorSignedToFloat((int)local_36,(byte)(in_fpscr >> 0x16) & 3);
    FUN_00390e6c((int)uVar8,param_2,(int)uVar9,local_20);
    iVar2 = cocos2d::extension::CCData::getSize(param_4);
    iVar3 = cocos2d::extension::CCData::getBytes(param_4);
    local_30 = (CCString *)
               cocos2d::CCString::createWithData(local_34,(iVar3 - (int)local_34) + iVar2);
    iVar2 = cocos2d::extension::CCData::getSize(param_4);
    iVar3 = cocos2d::extension::CCData::getBytes(param_4);
    local_34 = (uchar *)(iVar3 + iVar2);
    pCVar4 = (CCObject *)createWeaponFromType(param_1,(int)local_3e);
    pcVar6 = *(code **)(*(int *)pCVar4 + 0x1f8);
    local_2c = pCVar4;
    uVar5 = cocos2d::CCString::getCString(local_30);
    FUN_0079a3f4(auStack_44);
    FUN_007c6a60(aCStack_28,uVar5,auStack_44);
    (*pcVar6)(pCVar4,aCStack_28);
    FUN_007c5914(aCStack_28);
    FUN_0079a3fc(auStack_44);
    pcVar6 = *(code **)(*(int *)local_2c + 0x200);
    FUN_007c64e8(aCStack_28,param_5);
    (*pcVar6)(local_2c,aCStack_28);
    FUN_007c5914(aCStack_28);
    (**(code **)(*(int *)local_2c + 0x278))(local_2c,(int)local_3c);
    fVar7 = (float)(**(code **)(*(int *)local_2c + 0x288))(local_2c,(int)local_3a);
    pCVar4 = local_2c;
    pcVar6 = *(code **)(*(int *)local_2c + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar7,extraout_s1);
    (*pcVar6)(pCVar4,aCStack_28);
    (**(code **)(*(int *)local_2c + 0x20c))(local_2c,local_40);
    (**(code **)(*(int *)local_2c + 0x1a4))(local_2c,local_3f);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PeerWeaponCreated",local_2c);
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerWeaponRemove  @ 0x393c30
/* NetworkMessageDispatcher::updatePeerWeaponRemove(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerWeaponRemove(undefined4 param_1,CCData *param_2)

{
  char cVar1;
  NetworkManager *this;
  int iVar2;
  int iVar3;
  int iVar4;
  CCObject *pCVar5;
  CCNotificationCenter *this_00;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isInGame(this);
  if (cVar1 == '\x01') {
    iVar2 = cocos2d::extension::CCData::getBytes(param_2);
    iVar3 = cocos2d::extension::CCData::getSize(param_2);
    iVar4 = cocos2d::extension::CCData::getBytes(param_2);
    pCVar5 = (CCObject *)
             cocos2d::CCString::createWithData((uchar *)(iVar2 + 1),(iVar4 - (iVar2 + 1)) + iVar3);
    cocos2d::extension::CCData::getSize(param_2);
    cocos2d::extension::CCData::getBytes(param_2);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PeerWeaponRemoved",pCVar5);
  }
  return;
}

// ---- NetworkMessageDispatcher::getWeaponUpdateData  @ 0x393cc4
/* NetworkMessageDispatcher::getWeaponUpdateData(Weapon*) */

CCData * __thiscall
NetworkMessageDispatcher::getWeaponUpdateData(NetworkMessageDispatcher *this,Weapon *param_1)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  void *__src;
  size_t __n;
  int iVar4;
  float fVar5;
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  float local_38;
  CCData *local_34;
  void *local_30;
  CCData *local_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  iVar4 = *(int *)(param_1 + 0xe8);
  local_28 = *(undefined4 *)(iVar4 + 0x28);
  uStack_24 = *(undefined4 *)(iVar4 + 0x2c);
  local_20 = *(undefined4 *)(iVar4 + 0x30);
  uStack_1c = *(undefined4 *)(iVar4 + 0x34);
  local_38 = (float)*(double *)(*(int *)(param_1 + 0xe8) + 0x58);
  (**(code **)(*(int *)param_1 + 0x1fc))(auStack_40,param_1);
  puVar1 = (uchar *)FUN_007c5300(auStack_40);
  (**(code **)(*(int *)param_1 + 0x1fc))(auStack_3c,param_1);
  uVar2 = FUN_007c505c(auStack_3c);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  local_34 = pCVar3;
  FUN_007c5914(auStack_3c);
  FUN_007c5914(auStack_40);
  cocos2d::CCObject::autorelease((CCObject *)local_34);
  fVar5 = rad2Char * local_38;
  iVar4 = (**(code **)(*(int *)param_1 + 0x27c))(param_1);
  if (iVar4 != 0xc) {
    (**(code **)(*(int *)param_1 + 0x27c))(param_1);
  }
  DAT_00950ae8 = 0x13;
  DAT_00950ae9 = (undefined2)(longlong)(double)CONCAT44(uStack_24,local_28);
  DAT_00950aeb = (undefined2)(longlong)(double)CONCAT44(uStack_1c,local_20);
  local_30 = (void *)((int)&DAT_00950aed + 1);
  DAT_00950aed._0_1_ = (char)(int)fVar5;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_34);
  __n = cocos2d::extension::CCData::getSize(local_34);
  memcpy(local_30,__src,__n);
  iVar4 = cocos2d::extension::CCData::getSize(local_34);
  local_30 = (void *)(iVar4 + (int)local_30);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,(int)local_30 - 0x950ae8);
  local_2c = pCVar3;
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return local_2c;
}

// ---- NetworkMessageDispatcher::updatePeerWeaponUpdate  @ 0x393e9c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00393f64 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::updatePeerWeaponUpdate(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerWeaponUpdate
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,CCData *param_4)

{
  CCDictionary *this;
  char cVar1;
  NetworkManager *this_00;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  CCNotificationCenter *this_01;
  undefined4 extraout_r1;
  uint in_fpscr;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined1 auStack_3c [3];
  byte local_39;
  short local_38;
  short local_36;
  string asStack_34 [4];
  uchar *local_30;
  CCString *local_2c;
  float local_28;
  CCObject *local_24;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isInGame(this_00);
  if (cVar1 == '\x01') {
    iVar2 = cocos2d::extension::CCData::getBytes(param_4);
    local_38 = *(short *)(iVar2 + 1);
    local_36 = *(short *)(iVar2 + 3);
    local_39 = *(byte *)(iVar2 + 5);
    local_30 = (uchar *)(iVar2 + 6);
    iVar2 = cocos2d::extension::CCData::getSize(param_4);
    iVar3 = cocos2d::extension::CCData::getBytes(param_4);
    local_2c = (CCString *)
               cocos2d::CCString::createWithData(local_30,(iVar3 - (int)local_30) + iVar2);
    iVar2 = cocos2d::extension::CCData::getSize(param_4);
    iVar3 = cocos2d::extension::CCData::getBytes(param_4);
    local_30 = (uchar *)(iVar3 + iVar2);
    uVar5 = VectorSignedToFloat((int)local_38,(byte)(in_fpscr >> 0x16) & 3);
    uVar6 = VectorSignedToFloat((int)local_36,(byte)(in_fpscr >> 0x16) & 3);
    FUN_00390e6c((int)uVar5,param_2,(int)uVar6,local_20);
    this = weapons;
    local_28 = (float)VectorUnsignedToFloat((uint)local_39,(byte)(in_fpscr >> 0x16) & 3);
    local_28 = local_28 * char2Rad;
    uVar4 = cocos2d::CCString::getCString(local_2c);
    FUN_0079a3f4(auStack_3c);
    FUN_007c6a60(asStack_34,uVar4,auStack_3c);
    local_24 = (CCObject *)cocos2d::CCDictionary::objectForKey(this,asStack_34);
    FUN_007c5914(asStack_34);
    FUN_0079a3fc(auStack_3c);
    if (local_24 != (CCObject *)0x0) {
      (**(code **)(*(int *)local_24 + 0x27c))(local_24);
      (**(code **)(*(int *)local_24 + 0x214))(local_24,0);
      FUN_00390f80(local_20[0],param_2,local_18,*(int *)(local_24 + 0xe8));
      cpBodySetAngle(*(int *)(local_24 + 0xe8),extraout_r1,SUB84((double)local_28,0),
                     (int)((ulonglong)(double)local_28 >> 0x20));
      this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(this_01,"PeerWeaponUpdated",local_24);
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::getPeerDamageData  @ 0x394068
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00394136 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::getPeerDamageData(cocos2d::CCArray*) */

CCData * NetworkMessageDispatcher::getPeerDamageData(CCArray *param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  CCString *this;
  undefined4 uVar4;
  float fVar5;
  float fVar6;
  int iVar7;
  int iVar8;
  CCNotificationCenter *this_00;
  uchar *puVar9;
  ulong uVar10;
  CCData *pCVar11;
  void *__src;
  size_t __n;
  CCArray *in_r1;
  float extraout_s0;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined1 auStack_a0 [4];
  undefined1 auStack_9c [4];
  int *local_98;
  CCFloat *local_94;
  CCFloat *local_90;
  CCFloat *local_8c;
  CCFloat *local_88;
  CCInteger *local_84;
  CCInteger *local_80;
  CCInteger *local_7c;
  CCInteger *local_78;
  CCObject *local_74;
  undefined4 local_70;
  undefined4 local_6c;
  CCObject *local_68;
  CCData *local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined1 *local_58;
  CCData *local_54;
  double local_50;
  double local_48;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined1 local_30 [20];
  
  local_94 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_90 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,1);
  local_8c = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,2);
  local_88 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,3);
  local_84 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,4);
  local_80 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,5);
  local_7c = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,6);
  local_78 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,7);
  this = (CCString *)cocos2d::CCArray::objectAtIndex(in_r1,8);
  uVar4 = cocos2d::CCString::getCString(this);
  FUN_0079a3f4(local_30);
  FUN_007c6a60(auStack_a0,uVar4,local_30);
  FUN_0079a3fc(local_30);
  fVar5 = (float)cocos2d::CCFloat::getValue(local_94);
  fVar6 = (float)cocos2d::CCFloat::getValue(local_90);
  FUN_00390e6c(SUB84((double)fVar5,0),in_s1,SUB84((double)fVar6,0),&local_50);
  fVar5 = (float)cocos2d::CCFloat::getValue(local_8c);
  fVar6 = (float)cocos2d::CCFloat::getValue(local_88);
  FUN_00390e6c(SUB84((double)fVar5,0),in_s1,SUB84((double)fVar6,0),&local_40);
  uVar1 = cocos2d::CCInteger::getValue(local_84);
  uVar2 = cocos2d::CCInteger::getValue(local_80);
  uVar3 = cocos2d::CCInteger::getValue(local_7c);
  iVar7 = cocos2d::CCInteger::getValue(local_78);
  local_98 = (int *)0x0;
  (**(code **)(*hostSoldier + 0x1c0))(auStack_9c,hostSoldier);
  iVar8 = FUN_007c567c(auStack_9c,auStack_a0);
  FUN_007c5914(auStack_9c);
  if (iVar8 == 0) {
    local_98 = hostSoldier;
  }
  else {
    FUN_007c64e8(local_30,auStack_a0);
    local_98 = (int *)getPeerSoldier((NetworkMessageDispatcher *)param_1,local_30);
    FUN_007c5914(local_30);
  }
  if (local_98 != (int *)0x0) {
    fVar5 = (float)FUN_00390e94(SUB84(local_50,0),in_s1,SUB84(local_48,0),in_s3,
                                (int)*(undefined8 *)(local_98[0x4e] + 0x28),in_s5,
                                (int)*(undefined8 *)(local_98[0x4e] + 0x30),local_30);
    local_74 = (CCObject *)cocos2d::CCFloat::create(fVar5);
    local_70 = cocos2d::CCFloat::create(extraout_s0);
    fVar5 = (float)FUN_003910d8(local_40,uStack_3c,uStack_38,uStack_34);
    local_6c = cocos2d::CCFloat::create(fVar5);
    local_68 = (CCObject *)cocos2d::CCArray::create(local_74,local_70,local_6c,0);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"Blood",local_68);
  }
  puVar9 = (uchar *)FUN_007c5300(auStack_a0);
  uVar10 = FUN_007c505c(auStack_a0);
  pCVar11 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar11,puVar9,uVar10);
  local_64 = pCVar11;
  cocos2d::CCObject::autorelease((CCObject *)pCVar11);
  local_60 = (undefined4)(longlong)local_50;
  local_5c = (undefined4)(longlong)local_48;
  fVar5 = (float)FUN_003910d8(local_40,uStack_3c,uStack_38,uStack_34);
  DAT_00950aeb._0_1_ = (undefined1)(int)(fVar5 * angle2Char);
  DAT_00950ae8 = 0x17;
  DAT_00950ae9._0_1_ = (undefined1)local_60;
  DAT_00950ae9._1_1_ = (undefined1)local_5c;
  local_58 = &DAT_00950af0;
  DAT_00950aeb._1_1_ = uVar2;
  DAT_00950aed._0_1_ = uVar1;
  DAT_00950aed._1_1_ = uVar3;
  DAT_00950aef = 0 < iVar7;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_64);
  __n = cocos2d::extension::CCData::getSize(local_64);
  memcpy(local_58,__src,__n);
  iVar7 = cocos2d::extension::CCData::getSize(local_64);
  local_58 = local_58 + iVar7;
  pCVar11 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar11,&DAT_00950ae8,(ulong)(local_58 + -0x950ae8));
  local_54 = pCVar11;
  cocos2d::CCObject::autorelease((CCObject *)pCVar11);
  pCVar11 = local_54;
  FUN_007c5914(auStack_a0);
  return pCVar11;
}

// ---- NetworkMessageDispatcher::updatePeerDamage  @ 0x394458
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039455e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::updatePeerDamage(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerDamage
               (NetworkMessageDispatcher *param_1,CCData *param_2,undefined4 param_3)

{
  int *piVar1;
  char cVar2;
  NetworkManager *this;
  int iVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  undefined4 uVar7;
  CCNotificationCenter *pCVar8;
  undefined4 uVar9;
  CCObject *pCVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  code *pcVar16;
  uint in_fpscr;
  undefined8 in_d0;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined8 uVar17;
  double dVar18;
  undefined8 uVar19;
  double dVar20;
  undefined1 uStack_ac;
  byte local_ab;
  byte local_aa;
  byte local_a9;
  byte local_a8;
  byte local_a7;
  undefined1 local_a6;
  char local_a5;
  uint local_a4;
  int *local_a0;
  uchar *local_9c;
  CCString *local_98;
  float local_94;
  float local_90;
  uint local_8c;
  CCObject *local_88;
  undefined4 local_84;
  undefined4 local_80;
  CCObject *local_7c;
  int *local_78;
  CCObject *local_74;
  int local_70;
  undefined4 local_6c;
  undefined4 local_68 [2];
  undefined4 local_60;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined8 local_48;
  undefined8 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar2 = NetworkManager::isInGame(this);
  if (cVar2 == '\x01') {
    iVar3 = cocos2d::extension::CCData::getBytes(param_2);
    local_ab = *(byte *)(iVar3 + 1);
    local_aa = *(byte *)(iVar3 + 2);
    local_a9 = *(byte *)(iVar3 + 3);
    local_a8 = *(byte *)(iVar3 + 4);
    local_a7 = *(byte *)(iVar3 + 5);
    local_a6 = *(undefined1 *)(iVar3 + 6);
    local_a5 = *(char *)(iVar3 + 7);
    local_9c = (uchar *)(iVar3 + 8);
    iVar3 = cocos2d::extension::CCData::getSize(param_2);
    iVar4 = cocos2d::extension::CCData::getBytes(param_2);
    local_98 = (CCString *)
               cocos2d::CCString::createWithData(local_9c,(iVar4 - (int)local_9c) + iVar3);
    iVar3 = cocos2d::extension::CCData::getSize(param_2);
    iVar4 = cocos2d::extension::CCData::getBytes(param_2);
    local_9c = (uchar *)(iVar4 + iVar3);
    uVar17 = VectorUnsignedToFloat((uint)local_ab,(byte)(in_fpscr >> 0x16) & 3);
    uVar19 = VectorUnsignedToFloat((uint)local_aa,(byte)(in_fpscr >> 0x16) & 3);
    uVar9 = (undefined4)((ulonglong)in_d0 >> 0x20);
    fVar6 = (float)uVar17;
    FUN_00390e6c(fVar6,uVar9,(int)uVar19,local_68);
    local_94 = (float)VectorUnsignedToFloat((uint)local_a9,(byte)(in_fpscr >> 0x16) & 3);
    local_94 = local_94 * char2Angle;
    local_90 = -(local_94 * 0.017453292);
    fVar5 = (float)std::cos(fVar6);
    fVar6 = (float)std::sin(fVar6);
    fVar5 = SUB84((double)fVar5,0);
    FUN_00390e6c(fVar5,uVar9,SUB84((double)fVar6,0),local_58);
    if (local_98 != (CCString *)0x0) {
      local_a4 = (uint)local_a8;
      local_8c = (uint)local_a7;
      uVar7 = WeaponFactory::sharedWeaponFactory();
      WeaponFactory::getWeaponInfoFromAmmoType(&local_70,uVar7,local_a7);
      if (0 < local_70) {
        dVar20 = (double)VectorSignedToFloat(local_70,(byte)(in_fpscr >> 0x16) & 3);
        iVar3 = __divsi3(local_a6,local_6c);
        dVar18 = (double)VectorSignedToFloat(1U - iVar3 & ~((int)(1U - iVar3) >> 0x1f),
                                             (byte)(in_fpscr >> 0x16) & 3);
        local_a4 = (uint)(longlong)(dVar20 * (dVar18 * 0.5 + 0.5));
        if (local_a5 != '\0') {
          dVar18 = (double)VectorSignedToFloat(local_a4,(byte)(in_fpscr >> 0x16) & 3);
          local_a4 = (uint)(longlong)(dVar18 * 1.5);
        }
      }
      uVar7 = cocos2d::CCString::getCString(local_98);
      FUN_0079a3f4(&local_48);
      FUN_007c6a60(local_38,uVar7,&local_48);
      local_a0 = (int *)getPeerSoldier(param_1,local_38);
      FUN_007c5914(local_38);
      FUN_0079a3fc(&local_48);
      if (local_a0 == (int *)0x0) {
        (**(code **)(*hostSoldier + 0x1c0))(local_38,hostSoldier);
        uVar7 = cocos2d::CCString::getCString(local_98);
        iVar3 = FUN_007c5724(local_38,uVar7);
        FUN_007c5914(local_38);
        piVar1 = hostSoldier;
        if (iVar3 == 0) {
          local_a0 = hostSoldier;
          pcVar16 = *(code **)(*hostSoldier + 600);
          uVar7 = VectorSignedToFloat(local_a4,(byte)(in_fpscr >> 0x16) & 3);
          FUN_007c64e8(local_38,param_3);
          (*pcVar16)(piVar1,uVar7,local_38,local_a7,1);
          FUN_007c5914(local_38);
          dVar18 = (double)VectorSignedToFloat(local_a4,(byte)(in_fpscr >> 0x16) & 3);
          FUN_00390eec(local_58[0],uVar9,local_50,in_s3,SUB84(dVar18 * 0.025,0),&local_48);
          FUN_00390e30((undefined4)local_40,uVar9,0,in_s3,0);
          local_40 = CONCAT44(uVar9,fVar5);
          FUN_00390e30((undefined4)local_48,uVar9,0,in_s3,0);
          local_48 = CONCAT44(uVar9,fVar5);
          iVar3 = hostSoldier[0x4e];
          FUN_00390e94(local_68[0],uVar9,local_60,in_s3,
                       (int)*(undefined8 *)(hostSoldier[0x4e] + 0x28),in_s5,
                       (int)*(undefined8 *)(hostSoldier[0x4e] + 0x30),local_38);
          fVar5 = (float)local_48;
          FUN_00390fac(fVar5,uVar9,(int)local_40,in_s3,local_38[0],in_s5,local_30,iVar3);
        }
      }
      else {
        pcVar16 = *(code **)(*local_a0 + 600);
        uVar7 = VectorSignedToFloat(local_a4,(byte)(in_fpscr >> 0x16) & 3);
        FUN_007c64e8(local_38,param_3);
        (*pcVar16)(local_a0,uVar7,local_38,local_8c,1);
        FUN_007c5914(local_38);
      }
      if (local_a0 == (int *)0x0) {
        uVar9 = cocos2d::CCString::getCString(local_98);
        FUN_0079a3f4(&uStack_ac);
        FUN_007c6a60(&local_48,uVar9,&uStack_ac);
        local_78 = (int *)getEnemy(param_1,&local_48);
        FUN_007c5914(&local_48);
        FUN_0079a3fc(&uStack_ac);
        if (local_78 != (int *)0x0) {
          pcVar16 = *(code **)(*local_78 + 0x1e0);
          FUN_007c64e8(&local_48,param_3);
          (*pcVar16)(local_78,local_a4,&local_48,local_8c);
          FUN_007c5914(&local_48);
          pCVar10 = (CCObject *)cocos2d::CCFloat::create(fVar5);
          uVar9 = cocos2d::CCFloat::create(fVar5);
          uVar7 = cocos2d::CCFloat::create(fVar5);
          uVar11 = cocos2d::CCFloat::create(fVar5);
          uVar12 = cocos2d::CCInteger::create(0xff);
          uVar13 = cocos2d::CCInteger::create(0xff);
          uVar14 = cocos2d::CCInteger::create(0xff);
          uVar15 = cocos2d::CCInteger::create(1);
          local_74 = (CCObject *)
                     cocos2d::CCArray::create
                               (pCVar10,uVar9,uVar7,uVar11,uVar12,uVar13,uVar14,uVar15,0);
          pCVar8 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter()
          ;
          cocos2d::CCNotificationCenter::postNotification(pCVar8,"Spark",local_74);
        }
      }
      else {
        FUN_00390e94(local_68[0],uVar9,local_60,in_s3,(int)*(undefined8 *)(local_a0[0x4e] + 0x28),
                     in_s5,(int)*(undefined8 *)(local_a0[0x4e] + 0x30),&local_48);
        local_88 = (CCObject *)cocos2d::CCFloat::create(fVar5);
        local_84 = cocos2d::CCFloat::create(fVar5);
        local_80 = cocos2d::CCFloat::create(fVar5);
        local_7c = (CCObject *)cocos2d::CCArray::create(local_88,local_84,local_80,0);
        pCVar8 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification(pCVar8,"Blood",local_7c);
      }
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::getPlayerSetupDataRequest  @ 0x394a58
/* NetworkMessageDispatcher::getPlayerSetupDataRequest(std::string) */

CCData * NetworkMessageDispatcher::getPlayerSetupDataRequest(void)

{
  CCData *this;
  
  DAT_00950ae8 = 0x2b;
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,1);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::peerRequestSetupData  @ 0x394ac4
/* NetworkMessageDispatcher::peerRequestSetupData(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::peerRequestSetupData
          (undefined4 param_1,undefined4 param_2,string *param_3)

{
  CCNotificationCenter *this;
  CCObject *pCVar1;
  
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  pCVar1 = (CCObject *)cocos2d::CCString::create(param_3);
  cocos2d::CCNotificationCenter::postNotification(this,"PeerRequestedSetupData",pCVar1);
  return;
}

// ---- NetworkMessageDispatcher::getMapVote  @ 0x394af4
/* NetworkMessageDispatcher::getMapVote(int) */

CCData * __thiscall NetworkMessageDispatcher::getMapVote(NetworkMessageDispatcher *this,int param_1)

{
  CCData *this_00;
  
  DAT_00950ae8 = 0x2e;
  DAT_00950ae9._0_1_ = (undefined1)param_1;
  this_00 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this_00,&DAT_00950ae8,2);
  cocos2d::CCObject::autorelease((CCObject *)this_00);
  return this_00;
}

// ---- NetworkMessageDispatcher::serverSetMap  @ 0x394b70
/* NetworkMessageDispatcher::serverSetMap(cocos2d::extension::CCData*) */

void __thiscall
NetworkMessageDispatcher::serverSetMap(NetworkMessageDispatcher *this,CCData *param_1)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  int iVar7;
  CCObject *pCVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  CCNotificationCenter *this_00;
  
  iVar7 = cocos2d::extension::CCData::getBytes(param_1);
  bVar1 = *(byte *)(iVar7 + 2);
  bVar2 = *(byte *)(iVar7 + 3);
  bVar3 = *(byte *)(iVar7 + 4);
  bVar4 = *(byte *)(iVar7 + 5);
  bVar5 = *(byte *)(iVar7 + 6);
  bVar6 = *(byte *)(iVar7 + 7);
  pCVar8 = (CCObject *)cocos2d::CCInteger::create((uint)*(byte *)(iVar7 + 1));
  uVar9 = cocos2d::CCInteger::create((uint)bVar1);
  uVar10 = cocos2d::CCInteger::create((uint)bVar2);
  uVar11 = cocos2d::CCInteger::create((uint)bVar3);
  uVar12 = cocos2d::CCInteger::create((uint)bVar4);
  uVar13 = cocos2d::CCInteger::create((uint)bVar5);
  uVar14 = cocos2d::CCInteger::create((uint)bVar6);
  pCVar8 = (CCObject *)cocos2d::CCArray::create(pCVar8,uVar9,uVar10,uVar11,uVar12,uVar13,uVar14,0);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"SetServerMap",pCVar8);
  return;
}

// ---- NetworkMessageDispatcher::getPlayerSetupData  @ 0x394c7c
/* NetworkMessageDispatcher::getPlayerSetupData(std::string, short, short, short, short) */

CCData * __thiscall
NetworkMessageDispatcher::getPlayerSetupData
          (undefined4 param_1,undefined4 param_2,undefined1 param_3,undefined1 param_4,
          undefined1 param_5,undefined1 param_6)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  uchar *puVar4;
  ulong uVar5;
  CCData *pCVar6;
  CCData *this;
  void *pvVar7;
  size_t sVar8;
  int iVar9;
  CCArray *this_00;
  CCString *this_01;
  uint uVar10;
  undefined1 *puVar11;
  undefined1 *local_34;
  uint local_30;
  
  puVar4 = (uchar *)FUN_007c5300(param_2);
  uVar5 = FUN_007c505c(param_2);
  pCVar6 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar6,puVar4,uVar5);
  cocos2d::CCObject::autorelease((CCObject *)pCVar6);
  uVar1 = FUN_007c505c(param_2);
  puVar4 = (uchar *)FUN_007c5300(&hostMapName);
  uVar5 = FUN_007c505c(&hostMapName);
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,puVar4,uVar5);
  cocos2d::CCObject::autorelease((CCObject *)this);
  uVar2 = FUN_007c505c(&hostMapName);
  uVar3 = ApplicationInterface::getOSType();
  DAT_00950ae8 = 0x21;
  DAT_00950aeb._0_1_ = param_5;
  DAT_00950aeb._1_1_ = param_6;
  DAT_00950ae9._0_1_ = param_3;
  DAT_00950ae9._1_1_ = param_4;
  DAT_00950aed._0_1_ = uVar1;
  pvVar7 = (void *)cocos2d::extension::CCData::getBytes(pCVar6);
  sVar8 = cocos2d::extension::CCData::getSize(pCVar6);
  memcpy((void *)((int)&DAT_00950aed + 1),pvVar7,sVar8);
  iVar9 = cocos2d::extension::CCData::getSize(pCVar6);
  *(undefined1 *)((int)&DAT_00950aed + iVar9 + 1) = uVar2;
  puVar11 = &DAT_00950aef + iVar9;
  pvVar7 = (void *)cocos2d::extension::CCData::getBytes(this);
  sVar8 = cocos2d::extension::CCData::getSize(this);
  memcpy(puVar11,pvVar7,sVar8);
  iVar9 = cocos2d::extension::CCData::getSize(this);
  AvatarRenderer::sharedAvatarRenderer();
  this_00 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
  uVar1 = cocos2d::CCArray::count(this_00);
  puVar11[iVar9] = uVar1;
  local_30 = 0;
  puVar11 = puVar11 + iVar9;
  while( true ) {
    local_34 = puVar11 + 1;
    uVar10 = cocos2d::CCArray::count(this_00);
    if (uVar10 <= local_30) break;
    this_01 = (CCString *)cocos2d::CCArray::objectAtIndex(this_00,local_30);
    uVar1 = cocos2d::CCString::intValue(this_01);
    *local_34 = uVar1;
    local_30 = local_30 + 1;
    puVar11 = local_34;
  }
  *local_34 = uVar3;
  pCVar6 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar6,&DAT_00950ae8,(ulong)(puVar11 + -0x950ae6));
  cocos2d::CCObject::autorelease((CCObject *)pCVar6);
  return pCVar6;
}

// ---- NetworkMessageDispatcher::updatePeerSetup  @ 0x394ed4
/* NetworkMessageDispatcher::updatePeerSetup(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerSetup
          (NetworkMessageDispatcher *this,CCData *param_1,string *param_3)

{
  int iVar1;
  NetworkManager *this_00;
  AvatarRenderer *pAVar2;
  SoldierView *pSVar3;
  undefined4 uVar4;
  CCObject *pCVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  uint uVar9;
  CCNotificationCenter *this_01;
  CCString *pCVar10;
  undefined1 auStack_5c [3];
  byte local_59;
  byte local_58;
  byte local_57;
  byte local_56;
  byte local_55;
  byte local_54;
  byte local_53;
  byte local_52;
  byte local_51;
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  byte *local_48;
  int local_44;
  CCString *local_40;
  undefined4 local_3c;
  CCArray *local_38;
  int *local_34;
  CCTexture2D *local_30;
  CCTexture2D *local_2c;
  CCTexture2D *local_28;
  CCTexture2D *local_24;
  int local_20;
  CCArray *local_1c;
  
  iVar1 = cocos2d::extension::CCData::getBytes(param_1);
  local_59 = *(byte *)(iVar1 + 1);
  local_58 = *(byte *)(iVar1 + 2);
  local_57 = *(byte *)(iVar1 + 3);
  local_56 = *(byte *)(iVar1 + 4);
  local_55 = *(byte *)(iVar1 + 5);
  local_48 = (byte *)(iVar1 + 6);
  local_40 = (CCString *)cocos2d::CCString::createWithData(local_48,(uint)local_55);
  local_54 = local_48[local_55];
  local_48 = local_48 + local_55 + 1;
  local_3c = cocos2d::CCString::createWithData(local_48,(uint)local_54);
  local_53 = local_48[local_54];
  local_48 = local_48 + local_54 + 1;
  local_38 = (CCArray *)cocos2d::CCArray::create();
  for (local_44 = 0; local_44 < (int)(uint)local_53; local_44 = local_44 + 1) {
    local_52 = *local_48;
    local_48 = local_48 + 1;
    pCVar5 = (CCObject *)cocos2d::CCString::createWithFormat("%hd",(uint)local_52);
    cocos2d::CCArray::addObject(local_38,pCVar5);
  }
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar1 = NetworkManager::isInGame(this_00);
  if (iVar1 != 0) {
    FUN_007c64e8(auStack_4c,param_3);
    local_34 = (int *)getPeerSoldier(this,auStack_4c);
    FUN_007c5914(auStack_4c);
    if (local_34 != (int *)0x0) {
      pAVar2 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
      local_30 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar2,local_38,(uint)local_59);
      pAVar2 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
      local_2c = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar2,local_38,(uint)local_59);
      pAVar2 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
      local_28 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar2,local_38,(uint)local_59);
      pAVar2 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
      local_24 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar2,local_38,(uint)local_59);
      pAVar2 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
      local_20 = AvatarRenderer::getBodyType(pAVar2,local_38,(uint)local_59);
      pSVar3 = (SoldierView *)(**(code **)(*local_34 + 0x1d8))(local_34);
      SoldierView::setPlayerSkin(pSVar3,local_20,local_30,local_2c,local_28,local_24);
      pSVar3 = (SoldierView *)(**(code **)(*local_34 + 0x1d8))(local_34);
      uVar4 = cocos2d::CCString::getCString(local_40);
      FUN_0079a3f4(auStack_50);
      FUN_007c6a60(auStack_4c,uVar4,auStack_50);
      SoldierView::setPlayerName(pSVar3,auStack_4c);
      FUN_007c5914(auStack_4c);
      FUN_0079a3fc(auStack_50);
    }
  }
  pCVar10 = local_40 + 0x14;
  uVar4 = cocos2d::CCString::getCString(local_40);
  FUN_0079a3f4(auStack_5c);
  FUN_007c6a60(auStack_50,uVar4,auStack_5c);
  filterText(auStack_4c,this,auStack_50);
  FUN_007c52e8(pCVar10,auStack_4c);
  FUN_007c5914(auStack_4c);
  FUN_007c5914(auStack_50);
  FUN_0079a3fc(auStack_5c);
  pCVar5 = (CCObject *)cocos2d::CCString::create(param_3);
  uVar4 = cocos2d::CCInteger::create((uint)local_59);
  uVar6 = cocos2d::CCInteger::create((uint)local_58);
  uVar7 = cocos2d::CCInteger::create((uint)local_57);
  uVar8 = cocos2d::CCInteger::create((uint)local_56);
  local_1c = (CCArray *)
             cocos2d::CCArray::create(pCVar5,local_40,uVar4,local_3c,uVar6,uVar7,uVar8,local_38,0);
  uVar9 = cocos2d::extension::CCData::getSize(param_1);
  if ((uint)local_53 + local_55 + 8 + (uint)local_54 < uVar9) {
    local_51 = *local_48;
    local_48 = local_48 + 1;
    pCVar5 = (CCObject *)cocos2d::CCInteger::create((uint)local_51);
    cocos2d::CCArray::addObject(local_1c,pCVar5);
  }
  this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_01,"PlayerSetup",(CCObject *)local_1c);
  return;
}

// ---- NetworkMessageDispatcher::peerWeaponLockQuery  @ 0x395244
/* NetworkMessageDispatcher::peerWeaponLockQuery(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::peerWeaponLockQuery(undefined4 param_1_00,CCData *param_1,string *param_3)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  CCDictionary *this;
  char cVar4;
  NetworkManager *this_00;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  CCNotificationCenter *pCVar8;
  undefined1 auStack_28 [4];
  string asStack_24 [4];
  uchar *local_20;
  CCString *local_1c;
  int *local_18;
  CCObject *local_14;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar4 = NetworkManager::isInGame(this_00);
  if (cVar4 != '\x01') {
    return;
  }
  iVar5 = cocos2d::extension::CCData::getBytes(param_1);
  local_20 = (uchar *)(iVar5 + 1);
  iVar5 = cocos2d::extension::CCData::getSize(param_1);
  iVar6 = cocos2d::extension::CCData::getBytes(param_1);
  local_1c = (CCString *)cocos2d::CCString::createWithData(local_20,(iVar6 - (int)local_20) + iVar5)
  ;
  iVar5 = cocos2d::extension::CCData::getSize(param_1);
  iVar6 = cocos2d::extension::CCData::getBytes(param_1);
  this = weapons;
  local_20 = (uchar *)(iVar6 + iVar5);
  uVar7 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_24,uVar7,auStack_28);
  local_18 = (int *)cocos2d::CCDictionary::objectForKey(this,asStack_24);
  FUN_007c5914(asStack_24);
  FUN_0079a3fc(auStack_28);
  bVar2 = false;
  bVar1 = false;
  if (local_18 != (int *)0x0) {
    (**(code **)(*local_18 + 0x204))(auStack_28,local_18);
    bVar2 = true;
    (**(code **)(*hostSoldier + 0x1c0))(asStack_24,hostSoldier);
    bVar1 = true;
    iVar5 = FUN_007c567c(auStack_28,asStack_24);
    if (iVar5 == 0) {
      bVar3 = true;
      goto LAB_00395356;
    }
  }
  bVar3 = false;
LAB_00395356:
  if (bVar1) {
    FUN_007c5914(asStack_24);
  }
  if (bVar2) {
    FUN_007c5914(auStack_28);
  }
  if (bVar3) {
    uVar7 = cocos2d::CCString::create(param_3);
    local_14 = (CCObject *)cocos2d::CCArray::create((CCObject *)local_1c,uVar7,0);
    if ((local_18 == (int *)0x0) ||
       (cVar4 = (**(code **)(*local_18 + 0x2a8))(local_18), cVar4 == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(*local_18 + 0x2ac))(local_18,1);
      pCVar8 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar8,"WeaponLockAllow",local_14);
    }
    else {
      pCVar8 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar8,"WeaponLockDeny",local_14);
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::peerWeaponLockReply  @ 0x395444
/* NetworkMessageDispatcher::peerWeaponLockReply(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::peerWeaponLockReply
          (undefined4 param_1_00,CCData *param_1,undefined4 param_3)

{
  short sVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  NetworkManager *this;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  CCNotificationCenter *pCVar8;
  undefined1 auStack_20 [4];
  uchar *local_1c;
  CCObject *local_18;
  CCString *local_14;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar4 = NetworkManager::isInGame(this);
  if (cVar4 != '\x01') {
    return;
  }
  iVar5 = cocos2d::extension::CCData::getBytes(param_1);
  cVar4 = *(char *)(iVar5 + 1);
  sVar1 = *(short *)(iVar5 + 2);
  local_1c = (uchar *)(iVar5 + 4);
  local_18 = (CCObject *)cocos2d::CCString::createWithData(local_1c,(int)sVar1);
  local_1c = local_1c + sVar1;
  iVar5 = cocos2d::extension::CCData::getSize(param_1);
  iVar6 = cocos2d::extension::CCData::getBytes(param_1);
  local_14 = (CCString *)cocos2d::CCString::createWithData(local_1c,(iVar6 - (int)local_1c) + iVar5)
  ;
  iVar5 = cocos2d::extension::CCData::getSize(param_1);
  iVar6 = cocos2d::extension::CCData::getBytes(param_1);
  local_1c = (uchar *)(iVar6 + iVar5);
  bVar2 = false;
  iVar5 = FUN_007c505c(param_3);
  if (iVar5 != 0) {
    (**(code **)(*hostSoldier + 0x1c0))(auStack_20,hostSoldier);
    bVar2 = true;
    uVar7 = cocos2d::CCString::getCString(local_14);
    iVar5 = FUN_007c5724(auStack_20,uVar7);
    if (iVar5 == 0) {
      bVar3 = true;
      goto LAB_0039553e;
    }
  }
  bVar3 = false;
LAB_0039553e:
  if (bVar2) {
    FUN_007c5914(auStack_20);
  }
  if (bVar3) {
    if (cVar4 == '\0') {
      pCVar8 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar8,"WeaponLockDenied",local_18);
    }
    else {
      pCVar8 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar8,"WeaponLockAllowed",local_18);
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::peerExplosionRemove  @ 0x3955b4
/* NetworkMessageDispatcher::peerExplosionRemove(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::peerExplosionRemove(undefined4 param_1,CCData *param_2)

{
  short sVar1;
  short sVar2;
  char cVar3;
  NetworkManager *this;
  int iVar4;
  int iVar5;
  int iVar6;
  undefined4 uVar7;
  CCObject *pCVar8;
  undefined4 uVar9;
  CCNotificationCenter *this_00;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar3 = NetworkManager::isInGame(this);
  if (cVar3 == '\x01') {
    iVar4 = cocos2d::extension::CCData::getBytes(param_2);
    sVar1 = *(short *)(iVar4 + 1);
    sVar2 = *(short *)(iVar4 + 3);
    iVar5 = cocos2d::extension::CCData::getSize(param_2);
    iVar6 = cocos2d::extension::CCData::getBytes(param_2);
    uVar7 = cocos2d::CCString::createWithData((uchar *)(iVar4 + 5),(iVar6 - (iVar4 + 5)) + iVar5);
    cocos2d::extension::CCData::getSize(param_2);
    cocos2d::extension::CCData::getBytes(param_2);
    pCVar8 = (CCObject *)cocos2d::CCInteger::create((int)sVar1);
    uVar9 = cocos2d::CCInteger::create((int)sVar2);
    pCVar8 = (CCObject *)cocos2d::CCArray::create(pCVar8,uVar9,uVar7,0);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PeerExplosiveRemove",pCVar8);
  }
  return;
}

// ---- NetworkMessageDispatcher::peerExplosionCreate  @ 0x39568c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039571e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::peerExplosionCreate(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::peerExplosionCreate
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,CCData *param_4)

{
  short sVar1;
  short sVar2;
  short sVar3;
  char cVar4;
  NetworkManager *this;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  CCObject *pCVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  CCNotificationCenter *this_00;
  uint in_fpscr;
  float fVar16;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  undefined8 uVar17;
  undefined8 uVar18;
  undefined1 local_40 [16];
  undefined1 local_30 [20];
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar4 = NetworkManager::isInGame(this);
  if (cVar4 == '\x01') {
    iVar5 = cocos2d::extension::CCData::getBytes(param_4);
    sVar1 = *(short *)(iVar5 + 5);
    sVar2 = *(short *)(iVar5 + 7);
    uVar17 = VectorSignedToFloat((int)*(short *)(iVar5 + 1),(byte)(in_fpscr >> 0x16) & 3);
    uVar18 = VectorSignedToFloat((int)*(short *)(iVar5 + 3),(byte)(in_fpscr >> 0x16) & 3);
    FUN_00390e6c((int)uVar17,param_2,(int)uVar18,local_40);
    uVar17 = VectorSignedToFloat((int)sVar1,(byte)(in_fpscr >> 0x16) & 3);
    uVar18 = VectorSignedToFloat((int)sVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_00390e6c((int)uVar17,param_2,(int)uVar18,local_30);
    sVar1 = *(short *)(iVar5 + 9);
    sVar2 = *(short *)(iVar5 + 0xb);
    sVar3 = *(short *)(iVar5 + 0xd);
    iVar6 = cocos2d::extension::CCData::getSize(param_4);
    iVar7 = cocos2d::extension::CCData::getBytes(param_4);
    uVar8 = cocos2d::CCString::createWithData
                      ((uchar *)(iVar5 + 0xf),(iVar7 - (iVar5 + 0xf)) + iVar6);
    cocos2d::extension::CCData::getSize(param_4);
    fVar16 = (float)cocos2d::extension::CCData::getBytes(param_4);
    pCVar9 = (CCObject *)cocos2d::CCFloat::create(fVar16);
    uVar10 = cocos2d::CCFloat::create(extraout_s0);
    uVar11 = cocos2d::CCFloat::create(extraout_s0_00);
    uVar12 = cocos2d::CCFloat::create(extraout_s0_01);
    uVar13 = cocos2d::CCInteger::create((int)sVar1);
    VectorSignedToFloat((int)sVar2,(byte)(in_fpscr >> 0x16) & 3);
    uVar14 = cocos2d::CCFloat::create(extraout_s0_02);
    uVar15 = cocos2d::CCInteger::create((int)sVar3);
    pCVar9 = (CCObject *)
             cocos2d::CCArray::create(pCVar9,uVar10,uVar11,uVar12,uVar13,uVar14,uVar15,uVar8,0);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"Explosive",pCVar9);
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerDied  @ 0x39586c
/* NetworkMessageDispatcher::updatePeerDied(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerDied
          (NetworkMessageDispatcher *this,CCData *param_1,string *param_3)

{
  short sVar1;
  short sVar2;
  char cVar3;
  NetworkManager *this_00;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  CCNotificationCenter *this_01;
  undefined1 auStack_2c [4];
  uchar *local_28;
  CCObject *local_24;
  CCObject *local_20;
  int local_1c;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar3 = NetworkManager::isInGame(this_00);
  if (cVar3 == '\x01') {
    iVar4 = cocos2d::extension::CCData::getBytes(param_1);
    sVar1 = *(short *)(iVar4 + 1);
    sVar2 = *(short *)(iVar4 + 3);
    cVar3 = *(char *)(iVar4 + 5);
    local_28 = (uchar *)(iVar4 + 6);
    iVar4 = cocos2d::extension::CCData::getSize(param_1);
    iVar5 = cocos2d::extension::CCData::getBytes(param_1);
    local_24 = (CCObject *)
               cocos2d::CCString::createWithData(local_28,(iVar5 - (int)local_28) + iVar4);
    iVar4 = cocos2d::extension::CCData::getSize(param_1);
    iVar5 = cocos2d::extension::CCData::getBytes(param_1);
    local_28 = (uchar *)(iVar5 + iVar4);
    uVar6 = cocos2d::CCString::create(param_3);
    uVar7 = cocos2d::CCInteger::create(1);
    uVar8 = cocos2d::CCInteger::create((int)sVar1);
    uVar9 = cocos2d::CCInteger::create((uint)(cVar3 != '\0'));
    local_20 = (CCObject *)cocos2d::CCArray::create(local_24,uVar6,uVar7,uVar8,uVar9,0);
    FUN_007c64e8(auStack_2c,param_3);
    local_1c = getPeerSoldier(this,auStack_2c);
    FUN_007c5914(auStack_2c);
    if (local_1c != 0) {
      iVar4 = *(int *)(local_1c + 0x138);
      Sound::playSoundPosition
                (sndEng,(int)sVar2,*(undefined4 *)(iVar4 + 0x28),*(undefined4 *)(iVar4 + 0x2c),
                 *(undefined4 *)(iVar4 + 0x30),*(undefined4 *)(iVar4 + 0x34));
    }
    this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_01,"PlayerScored",local_20);
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerPunch  @ 0x3959d8
/* NetworkMessageDispatcher::updatePeerPunch(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerPunch
          (NetworkMessageDispatcher *this,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  NetworkManager *this_00;
  undefined1 auStack_10 [4];
  int *local_c;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isInGame(this_00);
  if (cVar1 == '\x01') {
    FUN_007c64e8(auStack_10,param_3);
    local_c = (int *)getPeerSoldier(this,auStack_10);
    FUN_007c5914(auStack_10);
    if (local_c != (int *)0x0) {
      (**(code **)(*local_c + 0x2b8))(local_c);
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerThrow  @ 0x395a48
/* NetworkMessageDispatcher::updatePeerThrow(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerThrow
          (NetworkMessageDispatcher *this,undefined4 param_2,undefined4 param_3)

{
  char cVar1;
  NetworkManager *this_00;
  undefined1 auStack_10 [4];
  int *local_c;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isInGame(this_00);
  if (cVar1 == '\x01') {
    FUN_007c64e8(auStack_10,param_3);
    local_c = (int *)getPeerSoldier(this,auStack_10);
    FUN_007c5914(auStack_10);
    if (local_c != (int *)0x0) {
      (**(code **)(*local_c + 0x274))(local_c);
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerPowerUp  @ 0x395ab8
/* NetworkMessageDispatcher::updatePeerPowerUp(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerPowerUp
          (NetworkMessageDispatcher *this,CCData *param_1,undefined4 param_3)

{
  short sVar1;
  char cVar2;
  NetworkManager *this_00;
  SoldierView *pSVar3;
  undefined4 uVar4;
  undefined4 local_14;
  int local_10;
  int *local_c;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar2 = NetworkManager::isInGame(this_00);
  if (cVar2 == '\x01') {
    local_10 = cocos2d::extension::CCData::getBytes(param_1);
    sVar1 = *(short *)(local_10 + 1);
    cVar2 = *(char *)(local_10 + 3);
    local_10 = local_10 + 4;
    FUN_007c64e8(&local_14,param_3);
    local_c = (int *)getPeerSoldier(this,&local_14);
    FUN_007c5914(&local_14);
    if ((local_c != (int *)0x0) && (sVar1 == 0xf)) {
      if (cVar2 == '\0') {
        pSVar3 = (SoldierView *)(**(code **)(*local_c + 0x1d8))(local_c);
        local_14 = FUN_00390cbc(0xff,0xff,0xff,0xff);
        SoldierView::setBoostColor(pSVar3,local_14);
      }
      else {
        pSVar3 = (SoldierView *)(**(code **)(*local_c + 0x1d8))(local_c);
        uVar4 = FUN_00390cbc(0xff,0,0,0xff);
        SoldierView::setBoostColor(pSVar3,uVar4);
      }
    }
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerEnteredGame  @ 0x395ba4
/* NetworkMessageDispatcher::updatePeerEnteredGame(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerEnteredGame
          (undefined4 param_1,undefined4 param_2,string *param_3)

{
  char cVar1;
  NetworkManager *this;
  CCNotificationCenter *this_00;
  CCObject *pCVar2;
  
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  cVar1 = NetworkManager::isInGame(this);
  if (cVar1 == '\x01') {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    pCVar2 = (CCObject *)cocos2d::CCString::create(param_3);
    cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerEnteredGame",pCVar2);
  }
  return;
}

// ---- NetworkMessageDispatcher::updatePeerEnteredLobby  @ 0x395bec
/* NetworkMessageDispatcher::updatePeerEnteredLobby(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerEnteredLobby
          (undefined4 param_1,undefined4 param_2,string *param_3)

{
  CCNotificationCenter *this;
  CCObject *pCVar1;
  
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  pCVar1 = (CCObject *)cocos2d::CCString::create(param_3);
  cocos2d::CCNotificationCenter::postNotification(this,"PlayerEnteredLobby",pCVar1);
  return;
}

// ---- NetworkMessageDispatcher::updatePeerEnteredLobbyResponse  @ 0x395c1c
/* NetworkMessageDispatcher::updatePeerEnteredLobbyResponse(cocos2d::extension::CCData*,
   std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerEnteredLobbyResponse
          (undefined4 param_1,undefined4 param_2,string *param_3)

{
  CCNotificationCenter *this;
  CCObject *pCVar1;
  
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  pCVar1 = (CCObject *)cocos2d::CCString::create(param_3);
  cocos2d::CCNotificationCenter::postNotification(this,"PlayerEnteredLobbyResponse",pCVar1);
  return;
}

// ---- NetworkMessageDispatcher::updateServerPingTime  @ 0x395c50
/* NetworkMessageDispatcher::updateServerPingTime() */

void __thiscall NetworkMessageDispatcher::updateServerPingTime(NetworkMessageDispatcher *this)

{
  int *piVar1;
  float fVar2;
  
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  fVar2 = (float)(**(code **)(*piVar1 + 0x58))(piVar1);
  *(float *)(this + 0x1c) = *(float *)(this + 0x1c) * 0.3 + (fVar2 - *(float *)(this + 0x18)) * 0.7;
  return;
}

// ---- NetworkMessageDispatcher::updatePeerPingTime  @ 0x395cc8
/* NetworkMessageDispatcher::updatePeerPingTime(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::updatePeerPingTime
          (NetworkMessageDispatcher *this,undefined4 param_2,string *param_3)

{
  int *piVar1;
  float fVar2;
  CCObject *pCVar3;
  CCDictionary *this_00;
  undefined4 uVar4;
  undefined4 extraout_s1;
  double dVar5;
  undefined1 auStack_1c [4];
  double local_18;
  
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  fVar2 = (float)(**(code **)(*piVar1 + 0x58))(piVar1);
  local_18 = (double)fVar2;
  fVar2 = *(float *)(this + 0x1c);
  FUN_007c64e8(auStack_1c,param_3);
  dVar5 = (double)getPingTimeFor(this,auStack_1c);
  *(float *)(this + 0x1c) = (float)((double)(fVar2 * 0.3) + dVar5 * 0.699999988079071);
  uVar4 = FUN_007c5914(auStack_1c);
  this_00 = *(CCDictionary **)(this + 0x14);
  pCVar3 = (CCObject *)cocos2d::CCDouble::create((double)CONCAT44(extraout_s1,uVar4));
  cocos2d::CCDictionary::setObject(this_00,pCVar3,param_3);
  return;
}

// ---- NetworkMessageDispatcher::getLobbyStatusData  @ 0x395d78
/* NetworkMessageDispatcher::getLobbyStatusData(std::string, int) */

CCData * __thiscall
NetworkMessageDispatcher::getLobbyStatusData
          (undefined4 param_1,undefined4 param_2,undefined1 param_3)

{
  undefined1 uVar1;
  undefined1 *puVar2;
  uchar *puVar3;
  ulong uVar4;
  CCData *pCVar5;
  void *__src;
  size_t __n;
  int iVar6;
  
  puVar2 = (undefined1 *)FUN_007c5b1c(param_2,0);
  uVar1 = *puVar2;
  puVar3 = (uchar *)FUN_007c5300(&hostMapName);
  uVar4 = FUN_007c505c(&hostMapName);
  pCVar5 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar5,puVar3,uVar4);
  cocos2d::CCObject::autorelease((CCObject *)pCVar5);
  DAT_00950aeb._0_1_ = FUN_007c505c(&hostMapName);
  DAT_00950ae8 = 0x27;
  DAT_00950ae9._0_1_ = param_3;
  DAT_00950ae9._1_1_ = uVar1;
  __src = (void *)cocos2d::extension::CCData::getBytes(pCVar5);
  __n = cocos2d::extension::CCData::getSize(pCVar5);
  memcpy((void *)((int)&DAT_00950aeb + 1),__src,__n);
  iVar6 = cocos2d::extension::CCData::getSize(pCVar5);
  pCVar5 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar5,&DAT_00950ae8,iVar6 + 4);
  cocos2d::CCObject::autorelease((CCObject *)pCVar5);
  return pCVar5;
}

// ---- NetworkMessageDispatcher::peerLobbyStatus  @ 0x395ea8
/* NetworkMessageDispatcher::peerLobbyStatus(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::peerLobbyStatus(undefined4 param_1_00,CCData *param_1,string *param_3)

{
  byte bVar1;
  byte bVar2;
  int iVar3;
  undefined4 uVar4;
  CCObject *pCVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  CCNotificationCenter *this;
  
  iVar3 = cocos2d::extension::CCData::getBytes(param_1);
  bVar1 = *(byte *)(iVar3 + 1);
  bVar2 = *(byte *)(iVar3 + 2);
  uVar4 = cocos2d::CCString::createWithData((uchar *)(iVar3 + 4),(uint)*(byte *)(iVar3 + 3));
  pCVar5 = (CCObject *)cocos2d::CCString::createWithFormat("%c",(uint)bVar2);
  uVar6 = cocos2d::CCString::create(param_3);
  uVar7 = cocos2d::CCInteger::create((uint)bVar1);
  pCVar5 = (CCObject *)cocos2d::CCArray::create(pCVar5,uVar6,uVar7,uVar4,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"ReceivedLobbyStatus",pCVar5);
  return;
}

// ---- NetworkMessageDispatcher::peerIM  @ 0x395f60
/* NetworkMessageDispatcher::peerIM(cocos2d::extension::CCData*, std::string) */

void __thiscall
NetworkMessageDispatcher::peerIM(NetworkMessageDispatcher *this,CCData *param_1,undefined4 param_3)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  undefined4 uVar4;
  CCObject *pCVar5;
  CCNotificationCenter *this_00;
  CCString *pCVar6;
  bool bVar7;
  undefined1 auStack_28 [3];
  char local_25;
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  uchar *local_1c;
  CCString *local_18;
  CCObject *local_14;
  
  iVar1 = cocos2d::extension::CCData::getBytes(param_1);
  local_25 = *(char *)(iVar1 + 1) == '\x01';
  local_1c = (uchar *)(iVar1 + 2);
  iVar1 = cocos2d::extension::CCData::getSize(param_1);
  iVar2 = cocos2d::extension::CCData::getBytes(param_1);
  local_18 = (CCString *)cocos2d::CCString::createWithData(local_1c,(iVar2 - (int)local_1c) + iVar1)
  ;
  iVar1 = cocos2d::extension::CCData::getSize(param_1);
  iVar2 = cocos2d::extension::CCData::getBytes(param_1);
  local_1c = (uchar *)(iVar2 + iVar1);
  pCVar6 = local_18 + 0x14;
  if (local_18 == (CCString *)0x0) {
    puVar3 = &DAT_007e05c8;
  }
  else {
    puVar3 = (undefined *)cocos2d::CCString::getCString(local_18);
  }
  FUN_007c5e70(pCVar6,puVar3);
  pCVar6 = local_18 + 0x14;
  uVar4 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_24,uVar4,auStack_28);
  filterText(asStack_20,this,auStack_24);
  FUN_007c52e8(pCVar6,asStack_20);
  FUN_007c5914(asStack_20);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_28);
  bVar7 = local_25 == '\0';
  if (bVar7) {
    FUN_007c64e8(asStack_20,param_3);
  }
  else {
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(asStack_20,"Server",auStack_24);
  }
  pCVar5 = (CCObject *)cocos2d::CCString::create(asStack_20);
  local_14 = (CCObject *)cocos2d::CCArray::create(pCVar5,local_18,0);
  FUN_007c5914(asStack_20);
  if (!bVar7) {
    FUN_0079a3fc(auStack_24);
  }
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"ReceivedInstantMessage",local_14);
  return;
}

// ---- NetworkMessageDispatcher::updatePeerEnemySpawn  @ 0x396114
/* NetworkMessageDispatcher::updatePeerEnemySpawn(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerEnemySpawn(undefined4 param_1,CCData *param_2)

{
  short sVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  CCObject *pCVar5;
  undefined4 uVar6;
  CCNotificationCenter *this;
  
  iVar2 = cocos2d::extension::CCData::getBytes(param_2);
  sVar1 = *(short *)(iVar2 + 1);
  iVar3 = cocos2d::extension::CCData::getSize(param_2);
  iVar4 = cocos2d::extension::CCData::getBytes(param_2);
  pCVar5 = (CCObject *)
           cocos2d::CCString::createWithData((uchar *)(iVar2 + 3),(iVar4 - (iVar2 + 3)) + iVar3);
  cocos2d::extension::CCData::getSize(param_2);
  cocos2d::extension::CCData::getBytes(param_2);
  uVar6 = cocos2d::CCInteger::create((int)sVar1);
  pCVar5 = (CCObject *)cocos2d::CCArray::create(pCVar5,uVar6,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"EnemySpawned",pCVar5);
  return;
}

// ---- NetworkMessageDispatcher::updatePeerEnemyDestroy  @ 0x3961b4
/* NetworkMessageDispatcher::updatePeerEnemyDestroy(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerEnemyDestroy(undefined4 param_1,CCData *param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  CCObject *pCVar4;
  CCNotificationCenter *this;
  
  iVar1 = cocos2d::extension::CCData::getBytes(param_2);
  iVar2 = cocos2d::extension::CCData::getSize(param_2);
  iVar3 = cocos2d::extension::CCData::getBytes(param_2);
  pCVar4 = (CCObject *)
           cocos2d::CCString::createWithData((uchar *)(iVar1 + 1),(iVar3 - (iVar1 + 1)) + iVar2);
  cocos2d::extension::CCData::getSize(param_2);
  cocos2d::extension::CCData::getBytes(param_2);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"EnemyDestroyed",pCVar4);
  return;
}

// ---- NetworkMessageDispatcher::getEnemyPositionData  @ 0x396230
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003962e4 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::getEnemyPositionData(std::string, cpVect, float, float, bool, cpVect,
   cpVect, float, unsigned char) */

CCData * NetworkMessageDispatcher::getEnemyPositionData
                   (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                   undefined4 param_5,undefined4 param_6,double param_7,float param_8,float param_9,
                   undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13,
                   undefined4 param_14,undefined4 param_15,undefined4 param_16,undefined4 param_17,
                   undefined4 param_18,undefined4 param_19,float param_20,undefined1 param_21)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  float fVar4;
  float fVar5;
  void *__src;
  size_t __n;
  int iVar6;
  double dVar7;
  double dVar8;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  
  puVar1 = (uchar *)FUN_007c5300(param_4);
  uVar2 = FUN_007c505c(param_4);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  param_9 = angle2uShort * param_9;
  param_8 = rad2Char * param_8;
  FUN_00390e6c(param_12,param_2,param_14,&local_40);
  dVar7 = (double)cpvlength(local_40,uStack_3c,uStack_38,uStack_34);
  fVar4 = (float)FUN_003910d8(param_12,param_13,param_14,param_15);
  fVar4 = angle2Char * fVar4;
  FUN_00390e6c(param_16,param_2,param_18,&local_30);
  dVar8 = (double)cpvlength(local_30,uStack_2c,uStack_28,uStack_24);
  fVar5 = (float)FUN_003910d8(param_16,param_17,param_18,param_19);
  DAT_00950af3 = (undefined1)(int)((float)dVar8 * 255.0);
  DAT_00950af4 = (undefined1)(int)(angle2Char * fVar5);
  DAT_00950af5 = (undefined1)(int)(param_20 * 255.0);
  DAT_00950ae8 = 0x29;
  DAT_00950af0 = param_21;
  DAT_00950ae9 = (short)(longlong)(double)CONCAT44(param_6,param_5);
  DAT_00950aeb = (short)(longlong)param_7;
  DAT_00950aed._0_1_ = (char)(int)param_8;
  unique0x100000c7 = (ushort)(0.0 < param_9) * (short)(int)param_9;
  DAT_00950af1 = (char)(longlong)((float)dVar7 * 0.51);
  DAT_00950af2 = (char)(int)fVar4;
  __src = (void *)cocos2d::extension::CCData::getBytes(pCVar3);
  __n = cocos2d::extension::CCData::getSize(pCVar3);
  memcpy(&DAT_00950af6,__src,__n);
  iVar6 = cocos2d::extension::CCData::getSize(pCVar3);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,iVar6 + 0xe);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return pCVar3;
}

// ---- NetworkMessageDispatcher::updatePeerEnemyPosition  @ 0x396500
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039666a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::updatePeerEnemyPosition(cocos2d::extension::CCData*, std::string) */

void NetworkMessageDispatcher::updatePeerEnemyPosition
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,CCData *param_6)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  byte bVar7;
  short sVar8;
  short sVar9;
  ushort uVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  CCObject *pCVar14;
  float fVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  undefined4 uVar23;
  undefined4 uVar24;
  undefined4 uVar25;
  CCNotificationCenter *this;
  uint in_fpscr;
  float fVar26;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float extraout_s0_07;
  float extraout_s0_08;
  undefined8 uVar27;
  float fVar29;
  undefined8 uVar28;
  undefined1 local_80 [16];
  undefined1 local_70 [16];
  undefined1 local_60 [16];
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  
  iVar11 = cocos2d::extension::CCData::getBytes(param_6);
  sVar8 = *(short *)(iVar11 + 1);
  sVar9 = *(short *)(iVar11 + 3);
  bVar1 = *(byte *)(iVar11 + 5);
  uVar10 = *(ushort *)(iVar11 + 6);
  bVar2 = *(byte *)(iVar11 + 8);
  bVar3 = *(byte *)(iVar11 + 9);
  bVar4 = *(byte *)(iVar11 + 10);
  bVar5 = *(byte *)(iVar11 + 0xb);
  bVar6 = *(byte *)(iVar11 + 0xc);
  bVar7 = *(byte *)(iVar11 + 0xd);
  iVar12 = cocos2d::extension::CCData::getSize(param_6);
  iVar13 = cocos2d::extension::CCData::getBytes(param_6);
  pCVar14 = (CCObject *)
            cocos2d::CCString::createWithData
                      ((uchar *)(iVar11 + 0xe),(iVar13 - (iVar11 + 0xe)) + iVar12);
  cocos2d::extension::CCData::getSize(param_6);
  fVar26 = (float)cocos2d::extension::CCData::getBytes(param_6);
  fVar29 = (float)VectorUnsignedToFloat((uint)bVar3,(byte)(in_fpscr >> 0x16) & 3);
  VectorUnsignedToFloat((uint)bVar4,(byte)(in_fpscr >> 0x16) & 3);
  fVar26 = (float)std::cos(fVar26);
  fVar15 = (float)std::sin(extraout_s0);
  FUN_00390e6c(SUB84((double)fVar26,0),param_2,SUB84((double)fVar15,0),local_50);
  fVar26 = (float)FUN_00390eec(local_50[0],param_2,local_48,param_4,
                               SUB84((double)(fVar29 * 1.96078),0),local_80);
  fVar29 = (float)VectorUnsignedToFloat((uint)bVar5,(byte)(in_fpscr >> 0x16) & 3);
  VectorUnsignedToFloat((uint)bVar6,(byte)(in_fpscr >> 0x16) & 3);
  fVar26 = (float)std::cos(fVar26);
  fVar15 = (float)std::sin(extraout_s0_00);
  FUN_00390e6c(SUB84((double)fVar26,0),param_2,SUB84((double)fVar15,0),local_40);
  FUN_00390eec(local_40[0],param_2,local_38,param_4,SUB84((double)(fVar29 / 255.0),0),local_70);
  VectorUnsignedToFloat((uint)bVar7,(byte)(in_fpscr >> 0x16) & 3);
  uVar27 = VectorSignedToFloat((int)sVar8,(byte)(in_fpscr >> 0x16) & 3);
  uVar28 = VectorSignedToFloat((int)sVar9,(byte)(in_fpscr >> 0x16) & 3);
  fVar26 = (float)FUN_00390e6c((int)uVar27,param_2,(int)uVar28,local_60);
  VectorSignedToFloat((uint)uVar10,(byte)(in_fpscr >> 0x16) & 3);
  VectorUnsignedToFloat((uint)bVar1,(byte)(in_fpscr >> 0x16) & 3);
  uVar16 = cocos2d::CCFloat::create(fVar26);
  uVar17 = cocos2d::CCFloat::create(extraout_s0_01);
  uVar18 = cocos2d::CCFloat::create(extraout_s0_02);
  uVar19 = cocos2d::CCFloat::create(extraout_s0_03);
  uVar20 = cocos2d::CCInteger::create((uint)bVar2);
  uVar21 = cocos2d::CCFloat::create(extraout_s0_04);
  uVar22 = cocos2d::CCFloat::create(extraout_s0_05);
  uVar23 = cocos2d::CCFloat::create(extraout_s0_06);
  uVar24 = cocos2d::CCFloat::create(extraout_s0_07);
  uVar25 = cocos2d::CCFloat::create(extraout_s0_08);
  pCVar14 = (CCObject *)
            cocos2d::CCArray::create
                      (pCVar14,uVar16,uVar17,uVar18,uVar19,uVar20,uVar21,uVar22,uVar23,uVar24,uVar25
                       ,0);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"EnemyPositionUpdated",pCVar14);
  return;
}

// ---- NetworkMessageDispatcher::getWeaponChangeData  @ 0x3968a8
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* NetworkMessageDispatcher::getWeaponChangeData() */

CCData * NetworkMessageDispatcher::getWeaponChangeData(void)

{
  undefined2 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  int *piVar4;
  int *piVar5;
  int *piVar6;
  int *piVar7;
  CCData *this;
  
  piVar4 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  piVar5 = (int *)(**(code **)(*hostSoldier + 0x1f8))(hostSoldier);
  piVar6 = (int *)(**(code **)(*hostSoldier + 0x200))(hostSoldier);
  piVar7 = (int *)(**(code **)(*hostSoldier + 0x1fc))(hostSoldier);
  if (piVar4 == (int *)0x0) {
    uVar1 = 0;
  }
  else {
    uVar1 = (**(code **)(*piVar4 + 0x27c))(piVar4);
  }
  if (piVar5 == (int *)0x0) {
    uVar2 = 0;
  }
  else {
    uVar2 = (**(code **)(*piVar5 + 0x27c))(piVar5);
  }
  if (piVar6 == (int *)0x0) {
    uVar3 = 0;
  }
  else {
    uVar3 = (**(code **)(*piVar6 + 0x27c))(piVar6);
  }
  if (piVar7 == (int *)0x0) {
    _DAT_00950aef = 0;
  }
  else {
    _DAT_00950aef = (**(code **)(*piVar7 + 0x27c))(piVar7);
  }
  DAT_00950ae8 = 0x19;
  DAT_00950ae9 = uVar1;
  DAT_00950aeb = uVar2;
  DAT_00950aed = uVar3;
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,9);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::getWeaponCreateData  @ 0x396a48
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00396b18 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::getWeaponCreateData(Weapon*) */

CCData * NetworkMessageDispatcher::getWeaponCreateData(Weapon *param_1)

{
  undefined1 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  uchar *puVar5;
  ulong uVar6;
  CCData *pCVar7;
  float *pfVar8;
  int iVar9;
  void *__src;
  size_t __n;
  int *in_r1;
  undefined4 in_s1;
  float fVar10;
  undefined1 auStack_38 [4];
  CCData *local_34;
  undefined1 *local_30;
  CCData *local_2c;
  double local_28;
  double local_20;
  
  (**(code **)(*in_r1 + 0x1fc))(auStack_38,in_r1);
  puVar5 = (uchar *)FUN_007c5300(auStack_38);
  uVar6 = FUN_007c505c(auStack_38);
  pCVar7 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar7,puVar5,uVar6);
  local_34 = pCVar7;
  cocos2d::CCObject::autorelease((CCObject *)pCVar7);
  uVar2 = (**(code **)(*in_r1 + 0x27c))(in_r1);
  uVar3 = (**(code **)(*in_r1 + 0x274))(in_r1);
  uVar4 = (**(code **)(*in_r1 + 0x284))(in_r1);
  pfVar8 = (float *)(**(code **)(*in_r1 + 0x50))(in_r1);
  fVar10 = *pfVar8;
  iVar9 = (**(code **)(*in_r1 + 0x50))(in_r1);
  FUN_00390e6c(SUB84((double)fVar10,0),in_s1,SUB84((double)*(float *)(iVar9 + 4),0),&local_28);
  uVar1 = (**(code **)(*in_r1 + 0x208))(in_r1);
  DAT_00950af0 = (**(code **)(*in_r1 + 0x19c))(in_r1);
  DAT_00950ae8 = 0x1a;
  _DAT_00950af1 = (undefined2)(longlong)local_28;
  _DAT_00950af3 = (undefined2)(longlong)local_20;
  local_30 = &DAT_00950af5;
  DAT_00950ae9 = uVar2;
  DAT_00950aeb = uVar3;
  DAT_00950aed = uVar4;
  DAT_00950aef = uVar1;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_34);
  __n = cocos2d::extension::CCData::getSize(local_34);
  memcpy(local_30,__src,__n);
  iVar9 = cocos2d::extension::CCData::getSize(local_34);
  local_30 = local_30 + iVar9;
  pCVar7 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar7,&DAT_00950ae8,(ulong)(local_30 + -0x950ae8));
  local_2c = pCVar7;
  cocos2d::CCObject::autorelease((CCObject *)pCVar7);
  pCVar7 = local_2c;
  FUN_007c5914(auStack_38);
  return pCVar7;
}

// ---- NetworkMessageDispatcher::getWeaponRemoveData  @ 0x396c64
/* NetworkMessageDispatcher::getWeaponRemoveData(std::string) */

CCData * __thiscall
NetworkMessageDispatcher::getWeaponRemoveData(undefined4 param_1,undefined4 param_2)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  void *__src;
  size_t __n;
  int iVar4;
  
  puVar1 = (uchar *)FUN_007c5300(param_2);
  uVar2 = FUN_007c505c(param_2);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  DAT_00950ae8 = 0x1b;
  __src = (void *)cocos2d::extension::CCData::getBytes(pCVar3);
  __n = cocos2d::extension::CCData::getSize(pCVar3);
  memcpy(&DAT_00950ae9,__src,__n);
  iVar4 = cocos2d::extension::CCData::getSize(pCVar3);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,iVar4 + 1);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return pCVar3;
}

// ---- NetworkMessageDispatcher::getWeaponLockQueryData  @ 0x396d30
/* NetworkMessageDispatcher::getWeaponLockQueryData(Weapon*) */

CCData * __thiscall
NetworkMessageDispatcher::getWeaponLockQueryData(NetworkMessageDispatcher *this,Weapon *param_1)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  void *__src;
  size_t __n;
  int iVar4;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  CCData *local_1c;
  undefined2 *local_18;
  CCData *local_14;
  
  (**(code **)(*(int *)param_1 + 0x1fc))(auStack_24,param_1);
  puVar1 = (uchar *)FUN_007c5300(auStack_24);
  (**(code **)(*(int *)param_1 + 0x1fc))(auStack_20,param_1);
  uVar2 = FUN_007c505c(auStack_20);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  local_1c = pCVar3;
  FUN_007c5914(auStack_20);
  FUN_007c5914(auStack_24);
  cocos2d::CCObject::autorelease((CCObject *)local_1c);
  DAT_00950ae8 = 0x1c;
  local_18 = &DAT_00950ae9;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_1c);
  __n = cocos2d::extension::CCData::getSize(local_1c);
  memcpy(local_18,__src,__n);
  iVar4 = cocos2d::extension::CCData::getSize(local_1c);
  local_18 = (undefined2 *)(iVar4 + (int)local_18);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,(int)local_18 - 0x950ae8);
  local_14 = pCVar3;
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return local_14;
}

// ---- NetworkMessageDispatcher::getWeaponLockReplyData  @ 0x396e4c
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* NetworkMessageDispatcher::getWeaponLockReplyData(bool, std::string, std::string) */

CCData * __thiscall
NetworkMessageDispatcher::getWeaponLockReplyData
          (undefined4 param_1_00,undefined1 param_1,undefined4 param_3,undefined4 param_4)

{
  undefined2 uVar1;
  uchar *puVar2;
  ulong uVar3;
  CCData *pCVar4;
  CCData *this;
  void *pvVar5;
  size_t sVar6;
  int iVar7;
  void *__dest;
  
  puVar2 = (uchar *)FUN_007c5300(param_3);
  uVar3 = FUN_007c505c(param_3);
  pCVar4 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar4,puVar2,uVar3);
  cocos2d::CCObject::autorelease((CCObject *)pCVar4);
  uVar1 = FUN_007c505c(param_3);
  puVar2 = (uchar *)FUN_007c5300(param_4);
  uVar3 = FUN_007c505c(param_4);
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,puVar2,uVar3);
  cocos2d::CCObject::autorelease((CCObject *)this);
  DAT_00950ae8 = 0x1d;
  DAT_00950ae9._0_1_ = param_1;
  unique0x100000a7 = uVar1;
  pvVar5 = (void *)cocos2d::extension::CCData::getBytes(pCVar4);
  sVar6 = cocos2d::extension::CCData::getSize(pCVar4);
  memcpy((void *)((int)&DAT_00950aeb + 1),pvVar5,sVar6);
  iVar7 = cocos2d::extension::CCData::getSize(pCVar4);
  __dest = (void *)((int)&DAT_00950aeb + iVar7 + 1);
  pvVar5 = (void *)cocos2d::extension::CCData::getBytes(this);
  sVar6 = cocos2d::extension::CCData::getSize(this);
  memcpy(__dest,pvVar5,sVar6);
  iVar7 = cocos2d::extension::CCData::getSize(this);
  pCVar4 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar4,&DAT_00950ae8,(int)__dest + iVar7 + -0x950ae8);
  cocos2d::CCObject::autorelease((CCObject *)pCVar4);
  return pCVar4;
}

// ---- NetworkMessageDispatcher::getExplosionRemoveData  @ 0x396fa8
/* NetworkMessageDispatcher::getExplosionRemoveData(cocos2d::CCArray*) */

CCData * __thiscall
NetworkMessageDispatcher::getExplosionRemoveData(NetworkMessageDispatcher *this,CCArray *param_1)

{
  CCString *this_00;
  undefined4 uVar1;
  uchar *puVar2;
  ulong uVar3;
  CCData *pCVar4;
  void *__src;
  size_t __n;
  int iVar5;
  undefined1 auStack_30 [3];
  undefined1 local_2d;
  undefined2 local_2c;
  undefined2 local_2a;
  undefined1 auStack_28 [4];
  CCInteger *local_24;
  CCInteger *local_20;
  CCData *local_1c;
  undefined2 *local_18;
  CCData *local_14;
  
  local_2d = 0x2c;
  local_24 = (CCInteger *)cocos2d::CCArray::objectAtIndex(param_1,0);
  local_20 = (CCInteger *)cocos2d::CCArray::objectAtIndex(param_1,1);
  this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(param_1,2);
  uVar1 = cocos2d::CCString::getCString(this_00);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(auStack_28,uVar1,auStack_30);
  FUN_0079a3fc(auStack_30);
  local_2c = cocos2d::CCInteger::getValue(local_24);
  local_2a = cocos2d::CCInteger::getValue(local_20);
  puVar2 = (uchar *)FUN_007c5300(auStack_28);
  uVar3 = FUN_007c505c(auStack_28);
  pCVar4 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar4,puVar2,uVar3);
  local_1c = pCVar4;
  cocos2d::CCObject::autorelease((CCObject *)pCVar4);
  DAT_00950ae8 = local_2d;
  DAT_00950ae9 = local_2c;
  DAT_00950aeb = local_2a;
  local_18 = &DAT_00950aed;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_1c);
  __n = cocos2d::extension::CCData::getSize(local_1c);
  memcpy(local_18,__src,__n);
  iVar5 = cocos2d::extension::CCData::getSize(local_1c);
  local_18 = (undefined2 *)(iVar5 + (int)local_18);
  pCVar4 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar4,&DAT_00950ae8,(int)local_18 - 0x950ae8);
  local_14 = pCVar4;
  cocos2d::CCObject::autorelease((CCObject *)pCVar4);
  pCVar4 = local_14;
  FUN_007c5914(auStack_28);
  return pCVar4;
}

// ---- NetworkMessageDispatcher::getExplosionData  @ 0x397114
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00397232 */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* NetworkMessageDispatcher::getExplosionData(cocos2d::CCArray*) */

CCData * NetworkMessageDispatcher::getExplosionData(CCArray *param_1)

{
  undefined2 uVar1;
  undefined2 uVar2;
  CCString *this;
  undefined4 uVar3;
  float fVar4;
  uchar *puVar5;
  ulong uVar6;
  CCData *pCVar7;
  float fVar8;
  float fVar9;
  void *__src;
  size_t __n;
  int iVar10;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_64 [4];
  CCFloat *local_60;
  CCFloat *local_5c;
  CCFloat *local_58;
  CCFloat *local_54;
  CCInteger *local_50;
  CCFloat *local_4c;
  CCInteger *local_48;
  CCData *local_44;
  undefined1 *local_40;
  CCData *local_3c;
  double local_38;
  double local_30;
  double local_28;
  double local_20;
  
  local_60 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_5c = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,1);
  local_58 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,2);
  local_54 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,3);
  local_50 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,4);
  local_4c = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,5);
  local_48 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,6);
  this = (CCString *)cocos2d::CCArray::objectAtIndex(in_r1,7);
  uVar3 = cocos2d::CCString::getCString(this);
  FUN_0079a3f4(&local_28);
  FUN_007c6a60(auStack_64,uVar3,&local_28);
  FUN_0079a3fc(&local_28);
  uVar1 = cocos2d::CCInteger::getValue(local_50);
  fVar4 = (float)cocos2d::CCFloat::getValue(local_4c);
  uVar2 = cocos2d::CCInteger::getValue(local_48);
  puVar5 = (uchar *)FUN_007c5300(auStack_64);
  uVar6 = FUN_007c505c(auStack_64);
  pCVar7 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar7,puVar5,uVar6);
  local_44 = pCVar7;
  cocos2d::CCObject::autorelease((CCObject *)pCVar7);
  fVar8 = (float)cocos2d::CCFloat::getValue(local_60);
  fVar9 = (float)cocos2d::CCFloat::getValue(local_5c);
  FUN_00390e6c(SUB84((double)fVar8,0),in_s1,SUB84((double)fVar9,0),&local_38);
  fVar8 = (float)cocos2d::CCFloat::getValue(local_58);
  fVar9 = (float)cocos2d::CCFloat::getValue(local_54);
  FUN_00390e6c(SUB84((double)fVar8,0),in_s1,SUB84((double)fVar9,0),&local_28);
  DAT_00950ae8 = 0x18;
  DAT_00950ae9 = (undefined2)(longlong)local_38;
  DAT_00950aeb = (undefined2)(longlong)local_30;
  DAT_00950aed = (undefined2)(longlong)local_28;
  _DAT_00950aef = (undefined2)(longlong)local_20;
  local_40 = &DAT_00950af7;
  _DAT_00950af1 = uVar1;
  _DAT_00950af3 = (short)(int)fVar4;
  _DAT_00950af5 = uVar2;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_44);
  __n = cocos2d::extension::CCData::getSize(local_44);
  memcpy(local_40,__src,__n);
  iVar10 = cocos2d::extension::CCData::getSize(local_44);
  local_40 = local_40 + iVar10;
  pCVar7 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar7,&DAT_00950ae8,(ulong)(local_40 + -0x950ae8));
  local_3c = pCVar7;
  cocos2d::CCObject::autorelease((CCObject *)pCVar7);
  pCVar7 = local_3c;
  FUN_007c5914(auStack_64);
  return pCVar7;
}

// ---- NetworkMessageDispatcher::getPlayerPunchData  @ 0x3973a0
/* NetworkMessageDispatcher::getPlayerPunchData() */

CCData * NetworkMessageDispatcher::getPlayerPunchData(void)

{
  CCData *this;
  
  DAT_00950ae8 = 0x1e;
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,1);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::getPlayerThrowData  @ 0x39740c
/* NetworkMessageDispatcher::getPlayerThrowData() */

CCData * NetworkMessageDispatcher::getPlayerThrowData(void)

{
  CCData *this;
  
  DAT_00950ae8 = 0x1f;
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,1);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::getPlayerDiedData  @ 0x397478
/* NetworkMessageDispatcher::getPlayerDiedData() */

CCData * NetworkMessageDispatcher::getPlayerDiedData(void)

{
  short sVar1;
  undefined1 uVar2;
  undefined2 uVar3;
  undefined4 uVar4;
  float fVar5;
  uchar *puVar6;
  ulong uVar7;
  CCData *pCVar8;
  void *__src;
  size_t __n;
  int iVar9;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s1;
  undefined1 auStack_20 [4];
  CCData *local_1c;
  void *local_18;
  CCData *local_14;
  
  uVar3 = (**(code **)(*hostSoldier + 0x1b4))(hostSoldier);
  (**(code **)(*hostSoldier + 0x1b8))(auStack_20,hostSoldier);
  uVar2 = (**(code **)(*hostSoldier + 0x310))(hostSoldier);
  uVar4 = FUN_00390c54();
  VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)std::fabs(extraout_s0);
  sVar1 = (short)(longlong)(fVar5 * 7.99 + 24.0);
  Sound::playSoundVP(sndEng,(int)sVar1,extraout_s0_00,extraout_s1);
  puVar6 = (uchar *)FUN_007c5300(auStack_20);
  uVar7 = FUN_007c505c(auStack_20);
  pCVar8 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar8,puVar6,uVar7);
  local_1c = pCVar8;
  cocos2d::CCObject::autorelease((CCObject *)pCVar8);
  DAT_00950ae8 = 0x20;
  local_18 = (void *)((int)&DAT_00950aed + 1);
  DAT_00950ae9 = uVar3;
  DAT_00950aeb = sVar1;
  DAT_00950aed._0_1_ = uVar2;
  __src = (void *)cocos2d::extension::CCData::getBytes(local_1c);
  __n = cocos2d::extension::CCData::getSize(local_1c);
  memcpy(local_18,__src,__n);
  iVar9 = cocos2d::extension::CCData::getSize(local_1c);
  local_18 = (void *)(iVar9 + (int)local_18);
  pCVar8 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar8,&DAT_00950ae8,(int)local_18 - 0x950ae8);
  local_14 = pCVar8;
  cocos2d::CCObject::autorelease((CCObject *)pCVar8);
  pCVar8 = local_14;
  FUN_007c5914(auStack_20);
  return pCVar8;
}

// ---- NetworkMessageDispatcher::getPlayerEnteredGameData  @ 0x397660
/* NetworkMessageDispatcher::getPlayerEnteredGameData(bool) */

CCData * __thiscall
NetworkMessageDispatcher::getPlayerEnteredGameData(NetworkMessageDispatcher *this,bool param_1)

{
  CCData *this_00;
  
  if (param_1) {
    DAT_00950ae8 = 0x24;
  }
  else {
    DAT_00950ae8 = 0x23;
  }
  this_00 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this_00,&DAT_00950ae8,1);
  cocos2d::CCObject::autorelease((CCObject *)this_00);
  return this_00;
}

// ---- NetworkMessageDispatcher::getPingData  @ 0x3976dc
/* NetworkMessageDispatcher::getPingData() */

CCData * __thiscall NetworkMessageDispatcher::getPingData(NetworkMessageDispatcher *this)

{
  NetworkManager *this_00;
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  CCData *this_01;
  undefined1 local_11;
  
  local_11 = 0x25;
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar1 = NetworkManager::isUsingHostedServer(this_00);
  if (iVar1 != 0) {
    piVar2 = (int *)cocos2d::CCDirector::sharedDirector();
    uVar3 = (**(code **)(*piVar2 + 0x58))(piVar2);
    *(undefined4 *)(this + 0x18) = uVar3;
    local_11 = 7;
  }
  DAT_00950ae8 = local_11;
  this_01 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this_01,&DAT_00950ae8,1);
  cocos2d::CCObject::autorelease((CCObject *)this_01);
  return this_01;
}

// ---- NetworkMessageDispatcher::getPeerSoldier  @ 0x397774
/* NetworkMessageDispatcher::getPeerSoldier(std::string) */

undefined4 __thiscall NetworkMessageDispatcher::getPeerSoldier(undefined4 param_1,string *param_2)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCDictionary::objectForKey(peerSoldiers,param_2);
  return uVar1;
}

// ---- NetworkMessageDispatcher::getEnemy  @ 0x3977a0
/* NetworkMessageDispatcher::getEnemy(std::string) */

undefined4 __thiscall NetworkMessageDispatcher::getEnemy(undefined4 param_1,string *param_2)

{
  undefined4 uVar1;
  
  if (allEnemies == (CCDictionary *)0x0) {
    uVar1 = 0;
  }
  else {
    uVar1 = cocos2d::CCDictionary::objectForKey(allEnemies,param_2);
  }
  return uVar1;
}

// ---- NetworkMessageDispatcher::getPeerSoldiers  @ 0x3977dc
/* NetworkMessageDispatcher::getPeerSoldiers() */

undefined4 NetworkMessageDispatcher::getPeerSoldiers(void)

{
  return peerSoldiers;
}

// ---- NetworkMessageDispatcher::getPeerKeys  @ 0x3977f8
/* NetworkMessageDispatcher::getPeerKeys() */

undefined4 NetworkMessageDispatcher::getPeerKeys(void)

{
  undefined4 uVar1;
  
  uVar1 = cocos2d::CCDictionary::allKeys(peerSoldiers);
  return uVar1;
}

// ---- NetworkMessageDispatcher::getPingTimeFor  @ 0x397820
/* NetworkMessageDispatcher::getPingTimeFor(std::string) */

double __thiscall
NetworkMessageDispatcher::getPingTimeFor(NetworkMessageDispatcher *this,string *param_2)

{
  CCDouble *this_00;
  int *piVar1;
  float fVar2;
  double dVar3;
  
  this_00 = (CCDouble *)cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0x14),param_2)
  ;
  if (this_00 == (CCDouble *)0x0) {
    dVar3 = (double)*(float *)(this + 0x1c);
  }
  else {
    piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
    fVar2 = (float)(**(code **)(*piVar1 + 0x58))(piVar1);
    dVar3 = (double)cocos2d::CCDouble::getValue(this_00);
    dVar3 = (double)fVar2 - dVar3;
  }
  return dVar3;
}

// ---- NetworkMessageDispatcher::getIMData  @ 0x397890
/* NetworkMessageDispatcher::getIMData(std::string) */

CCData * __thiscall NetworkMessageDispatcher::getIMData(undefined4 param_1,undefined4 param_2)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  void *__src;
  size_t __n;
  int iVar4;
  
  puVar1 = (uchar *)FUN_007c5300(param_2);
  uVar2 = FUN_007c505c(param_2);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  DAT_00950ae8 = 0x26;
  DAT_00950ae9._0_1_ = 0;
  __src = (void *)cocos2d::extension::CCData::getBytes(pCVar3);
  __n = cocos2d::extension::CCData::getSize(pCVar3);
  memcpy((void *)((int)&DAT_00950ae9 + 1),__src,__n);
  iVar4 = cocos2d::extension::CCData::getSize(pCVar3);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,iVar4 + 2);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return pCVar3;
}

// ---- NetworkMessageDispatcher::getPlayerPowerUpData  @ 0x397968
/* NetworkMessageDispatcher::getPlayerPowerUpData(ItemType, bool) */

CCData * __thiscall
NetworkMessageDispatcher::getPlayerPowerUpData
          (undefined4 param_1,undefined2 param_2,undefined1 param_3)

{
  CCData *this;
  
  DAT_00950ae8 = 0x22;
  DAT_00950ae9 = param_2;
  DAT_00950aeb._0_1_ = param_3;
  this = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(this,&DAT_00950ae8,4);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return this;
}

// ---- NetworkMessageDispatcher::getPlayerListData  @ 0x3979fc
/* NetworkMessageDispatcher::getPlayerListData(cocos2d::CCArray*) */

undefined4 NetworkMessageDispatcher::getPlayerListData(CCArray *param_1)

{
  return 0;
}

// ---- NetworkMessageDispatcher::getEnemySpawnData  @ 0x397a0c
/* NetworkMessageDispatcher::getEnemySpawnData(std::string, short) */

CCData * __thiscall
NetworkMessageDispatcher::getEnemySpawnData
          (undefined4 param_1,undefined4 param_2,undefined2 param_3)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  void *__src;
  size_t __n;
  int iVar4;
  
  puVar1 = (uchar *)FUN_007c5300(param_2);
  uVar2 = FUN_007c505c(param_2);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  DAT_00950ae8 = 0x28;
  DAT_00950ae9 = param_3;
  __src = (void *)cocos2d::extension::CCData::getBytes(pCVar3);
  __n = cocos2d::extension::CCData::getSize(pCVar3);
  memcpy(&DAT_00950aeb,__src,__n);
  iVar4 = cocos2d::extension::CCData::getSize(pCVar3);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,iVar4 + 3);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return pCVar3;
}

// ---- NetworkMessageDispatcher::getEnemyDestroyData  @ 0x397aec
/* NetworkMessageDispatcher::getEnemyDestroyData(std::string) */

CCData * __thiscall
NetworkMessageDispatcher::getEnemyDestroyData(undefined4 param_1,undefined4 param_2)

{
  uchar *puVar1;
  ulong uVar2;
  CCData *pCVar3;
  void *__src;
  size_t __n;
  int iVar4;
  
  puVar1 = (uchar *)FUN_007c5300(param_2);
  uVar2 = FUN_007c505c(param_2);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,puVar1,uVar2);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  DAT_00950ae8 = 0x2a;
  __src = (void *)cocos2d::extension::CCData::getBytes(pCVar3);
  __n = cocos2d::extension::CCData::getSize(pCVar3);
  memcpy(&DAT_00950ae9,__src,__n);
  iVar4 = cocos2d::extension::CCData::getSize(pCVar3);
  pCVar3 = operator_new(0x1c);
  cocos2d::extension::CCData::CCData(pCVar3,&DAT_00950ae8,iVar4 + 1);
  cocos2d::CCObject::autorelease((CCObject *)pCVar3);
  return pCVar3;
}

// ---- NetworkMessageDispatcher::filterText  @ 0x397bb8
/* NetworkMessageDispatcher::filterText(std::string) */

undefined4
NetworkMessageDispatcher::filterText(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined1 local_a;
  undefined1 local_9;
  
  if (chatMask == 1) {
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x61;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x65;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x69;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x75;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x41;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x45;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x49;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
    uVar1 = FUN_007c5a74(param_3);
    uVar2 = FUN_007c5aac(param_3);
    local_a = 0x55;
    local_9 = 0x5f;
    std::replace<__gnu_cxx::__normal_iterator<char*,std::string>,char>
              (uVar1,uVar2,&local_a,&local_9);
  }
  else if (chatMask == 2) {
    FUN_007c5e70(param_3,"___ FULL CHAT FILTER ON ___");
  }
  FUN_007c51c0(param_1,param_3);
  return param_1;
}
