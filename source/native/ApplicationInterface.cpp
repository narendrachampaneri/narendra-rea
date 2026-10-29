// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 62 functions

// ---- ApplicationInterface::isBigEndian  @ 0x4321b4
/* WARNING: Removing unreachable block (ram,0x004321e2) */
/* ApplicationInterface::isBigEndian() */

undefined1 ApplicationInterface::isBigEndian(void)

{
  return 0;
}

// ---- ApplicationInterface::getClaimedIdentity  @ 0x4321ec
/* ApplicationInterface::getClaimedIdentity() */

ApplicationInterface * __thiscall
ApplicationInterface::getClaimedIdentity(ApplicationInterface *this)

{
  int iVar1;
  char *pcVar2;
  CCUserDefault aCStack_c [4];
  
  iVar1 = FUN_007c505c(&m_claimedIdentity);
  if (iVar1 == 0) {
    pcVar2 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::getStringForKey(aCStack_c,pcVar2);
    iVar1 = FUN_007c505c(aCStack_c);
    if (iVar1 != 0) {
      thunk_FUN_007c653c(&m_claimedIdentity,aCStack_c);
    }
    FUN_007c5914(aCStack_c);
  }
  FUN_007c64e8(this,&m_claimedIdentity);
  return this;
}

// ---- ApplicationInterface::getClaimedAvatarName  @ 0x432280
/* ApplicationInterface::getClaimedAvatarName() */

ApplicationInterface * __thiscall
ApplicationInterface::getClaimedAvatarName(ApplicationInterface *this)

{
  string *psVar1;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  psVar1 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"NOOBIE",auStack_10);
  cocos2d::CCUserDefault::getStringForKey((char *)this,psVar1);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return this;
}

// ---- ApplicationInterface::getDeviceIdentity  @ 0x4322ec
/* ApplicationInterface::getDeviceIdentity() */

ApplicationInterface * __thiscall
ApplicationInterface::getDeviceIdentity(ApplicationInterface *this)

{
  int iVar1;
  char *pcVar2;
  CCUserDefault aCStack_c [4];
  
  iVar1 = FUN_007c505c(&m_deviceIdentity);
  if (iVar1 == 0) {
    pcVar2 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::getStringForKey(aCStack_c,pcVar2);
    iVar1 = FUN_007c505c(aCStack_c);
    if (iVar1 != 0) {
      thunk_FUN_007c653c(&m_deviceIdentity,aCStack_c);
    }
    FUN_007c5914(aCStack_c);
  }
  FUN_007c64e8(this,&m_deviceIdentity);
  return this;
}

// ---- ApplicationInterface::setClaimedIdentity  @ 0x432380
/* ApplicationInterface::setClaimedIdentity(std::string) */

void ApplicationInterface::setClaimedIdentity(string *param_1)

{
  int iVar1;
  CCUserDefault *this;
  
  iVar1 = FUN_007c567c(&m_claimedIdentity,param_1);
  if (iVar1 != 0) {
    this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setStringForKey(this,"ClaimedIdentityClear",param_1);
    thunk_FUN_007c653c(&m_claimedIdentity,param_1);
  }
  return;
}

// ---- ApplicationInterface::setDeviceIdentity  @ 0x4323d8
/* ApplicationInterface::setDeviceIdentity(std::string) */

void ApplicationInterface::setDeviceIdentity(string *param_1)

{
  int iVar1;
  CCUserDefault *this;
  
  iVar1 = FUN_007c567c(&m_deviceIdentity,param_1);
  if (iVar1 != 0) {
    this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    cocos2d::CCUserDefault::setStringForKey(this,"DeviceIdentityClear",param_1);
    thunk_FUN_007c653c(&m_deviceIdentity,param_1);
  }
  return;
}

// ---- ApplicationInterface::hasClaimedIdentity  @ 0x432430
/* ApplicationInterface::hasClaimedIdentity() */

bool ApplicationInterface::hasClaimedIdentity(void)

{
  int iVar1;
  ApplicationInterface aAStack_c [4];
  
  getClaimedIdentity(aAStack_c);
  iVar1 = FUN_007c505c(aAStack_c);
  FUN_007c5914(aAStack_c);
  return iVar1 != 0;
}

// ---- ApplicationInterface::hasDeviceIdentity  @ 0x432460
/* ApplicationInterface::hasDeviceIdentity() */

bool ApplicationInterface::hasDeviceIdentity(void)

{
  int iVar1;
  ApplicationInterface aAStack_c [4];
  
  getDeviceIdentity(aAStack_c);
  iVar1 = FUN_007c505c(aAStack_c);
  FUN_007c5914(aAStack_c);
  return iVar1 != 0;
}

// ---- ApplicationInterface::isTabletDisplay  @ 0x432490
/* ApplicationInterface::isTabletDisplay() */

bool ApplicationInterface::isTabletDisplay(void)

{
  int *piVar1;
  CCSize *pCVar2;
  float local_10;
  float local_c;
  
  piVar1 = (int *)cocos2d::CCEGLView::sharedOpenGLView();
  pCVar2 = (CCSize *)(**(code **)(*piVar1 + 0x18))(piVar1);
  cocos2d::CCSize::CCSize((CCSize *)&local_10,pCVar2);
  return (int)((uint)(local_10 / local_c < 1.5) << 0x1f) < 0;
}

// ---- ApplicationInterface::aspectCorrection  @ 0x4324e0
/* ApplicationInterface::aspectCorrection() */

float ApplicationInterface::aspectCorrection(void)

{
  int *piVar1;
  CCSize *pCVar2;
  float local_10;
  float local_c;
  
  piVar1 = (int *)cocos2d::CCEGLView::sharedOpenGLView();
  pCVar2 = (CCSize *)(**(code **)(*piVar1 + 0x18))(piVar1);
  cocos2d::CCSize::CCSize((CCSize *)&local_10,pCVar2);
  return (local_10 / local_c) / 1.7777778;
}

// ---- ApplicationInterface::viewFactor  @ 0x432530
/* ApplicationInterface::viewFactor() */

undefined4 ApplicationInterface::viewFactor(void)

{
  undefined4 uVar1;
  
  if (VIEW_2X_MODE == '\0') {
    uVar1 = 0x3f800000;
  }
  else {
    uVar1 = 0x3f400000;
  }
  return uVar1;
}

// ---- ApplicationInterface::getPlatformId  @ 0x432554
/* ApplicationInterface::getPlatformId() */

undefined4 ApplicationInterface::getPlatformId(void)

{
  return 10;
}

// ---- ApplicationInterface::getDiagnosticProperties  @ 0x432590
/* ApplicationInterface::getDiagnosticProperties() */

ApplicationInterface * __thiscall
ApplicationInterface::getDiagnosticProperties(ApplicationInterface *this)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  string *psVar7;
  char *pcVar8;
  undefined4 extraout_s1;
  undefined1 auStack_cc [4];
  string asStack_c8 [4];
  undefined1 auStack_c4 [4];
  string asStack_c0 [4];
  ApplicationInterface aAStack_bc [4];
  ApplicationInterface aAStack_b8 [4];
  ApplicationInterface aAStack_b4 [4];
  ApplicationInterface aAStack_b0 [4];
  undefined1 auStack_ac [4];
  undefined1 auStack_a8 [4];
  InAppPurchaseBridge aIStack_a4 [4];
  undefined1 auStack_a0 [4];
  undefined1 auStack_9c [4];
  undefined4 local_98;
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [4];
  ApplicationInterface aAStack_8c [4];
  CCString *local_88;
  undefined4 local_84;
  undefined4 local_80;
  ApplicationInterface aAStack_7c [24];
  ApplicationInterface aAStack_64 [28];
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_48 [52];
  
  getAppVersion(aAStack_8c);
  uVar2 = FUN_007c5300(aAStack_8c);
  uVar3 = getOSType();
  getClaimedIdentity(aAStack_7c);
  uVar4 = FUN_007c5300(aAStack_7c);
  getClaimedAvatarName(aAStack_64);
  uVar5 = FUN_007c5300(aAStack_64);
  FUN_0079a3f4(auStack_90);
  FUN_007c6a60(aGStack_48,"com.chadtowns.da2.propack",auStack_90);
  iVar6 = InAppPurchaseBridge::isProductPurchased(aGStack_48);
  local_88 = (CCString *)
             cocos2d::CCString::createWithFormat
                       ("VER:%s OST:%d CID:%s CAV:%s HPP:%d",uVar2,uVar3,uVar4,uVar5,
                        (uint)(iVar6 != 0));
  FUN_007c5914(aGStack_48);
  FUN_0079a3fc(auStack_90);
  FUN_007c5914(aAStack_64);
  FUN_007c5914(aAStack_7c);
  FUN_007c5914(aAStack_8c);
  FUN_007c51b0(this);
  psVar7 = (string *)cocos2d::CCString::getCString(local_88);
  FUN_0079a3f4(aAStack_64);
  FUN_007c6a60(auStack_cc,&DAT_007ec2a0,aAStack_64);
  std::operator+((char *)asStack_c8,psVar7);
  FUN_0079a3f4(aGStack_48);
  FUN_007c6a60(auStack_c4,&DAT_007ec2a0,aGStack_48);
  std::operator+(asStack_c0,asStack_c8);
  FUN_007c6120(this,asStack_c0);
  FUN_007c5914(asStack_c0);
  FUN_007c5914(auStack_c4);
  FUN_0079a3fc(aGStack_48);
  FUN_007c5914(asStack_c8);
  FUN_007c5914(auStack_cc);
  FUN_0079a3fc(aAStack_64);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  GenericDocument(aGStack_48,(MemoryPoolAllocator *)0x0,0x400);
  rapidjson::
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  SetObject((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *)aGStack_48);
  rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GenericStringBuffer
            ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)aAStack_7c,
             (CrtAllocator *)0x0,0x100);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Writer((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,(GenericStringBuffer *)aAStack_7c,(MemoryPoolAllocator *)0x0,0x20);
  rapidjson::
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
            ((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)aGStack_48,(Writer *)aAStack_64);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::StartObject((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)aAStack_64);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"VER");
  getAppVersion(aAStack_bc);
  pcVar8 = (char *)FUN_007c5300(aAStack_bc);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,pcVar8);
  FUN_007c5914(aAStack_bc);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"CAV");
  getClaimedAvatarName(aAStack_b8);
  pcVar8 = (char *)FUN_007c5300(aAStack_b8);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,pcVar8);
  FUN_007c5914(aAStack_b8);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"CID");
  getClaimedIdentity(aAStack_b4);
  pcVar8 = (char *)FUN_007c5300(aAStack_b4);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,pcVar8);
  FUN_007c5914(aAStack_b4);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"DID");
  getDeviceIdentity(aAStack_b0);
  pcVar8 = (char *)FUN_007c5300(aAStack_b0);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,pcVar8);
  FUN_007c5914(aAStack_b0);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"OST");
  iVar6 = getOSType();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Int((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *)aAStack_64,iVar6);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"PID");
  iVar6 = getPlatformId();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Int((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *)aAStack_64,iVar6);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"PCT");
  NetworkManager::sharedNetworkManager();
  NetworkManager::getPrivateClientToken();
  pcVar8 = (char *)FUN_007c5300(auStack_ac);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,pcVar8);
  FUN_007c5914(auStack_ac);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"HSR");
  NetworkManager::sharedNetworkManager();
  bVar1 = (bool)NetworkManager::hasCompletedSessionRequest();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"IIR");
  NetworkManager::sharedNetworkManager();
  bVar1 = (bool)NetworkManagerBridge::isInternetReachable();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"GPG");
  bVar1 = (bool)isGpgsInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"TAB");
  bVar1 = (bool)isGpgsInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"BIG");
  bVar1 = (bool)isGpgsInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"ASC");
  uVar2 = aspectCorrection();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Double((double)CONCAT44(extraout_s1,uVar2));
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"HCC");
  bVar1 = (bool)hasCrashCartInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"HBC");
  bVar1 = (bool)hasDoodleArmyBCInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"HDA");
  bVar1 = (bool)hasDoodleArmyInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"HZR");
  bVar1 = (bool)hasZombieRoadRageInstalled();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"IPR");
  bVar1 = (bool)InAppPurchaseBridge::canMakePurchases();
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"PPP");
  FUN_0079a3f4(aAStack_8c);
  FUN_007c6a60(auStack_a8,"com.chadtowns.da2.propack",aAStack_8c);
  InAppPurchaseBridge::getProductPrice(aIStack_a4,auStack_a8);
  pcVar8 = (char *)FUN_007c5300(aIStack_a4);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,pcVar8);
  FUN_007c5914(aIStack_a4);
  FUN_007c5914(auStack_a8);
  FUN_0079a3fc(aAStack_8c);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::String((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)aAStack_64,"HPP");
  FUN_0079a3f4(aAStack_8c);
  FUN_007c6a60(auStack_a0,"com.chadtowns.da2.propack",aAStack_8c);
  bVar1 = (bool)InAppPurchaseBridge::isProductPurchased(auStack_a0);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)aAStack_64,bVar1);
  FUN_007c5914(auStack_a0);
  FUN_0079a3fc(aAStack_8c);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::EndObject((uint)aAStack_64);
  uVar2 = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GetString
                    ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)
                     aAStack_7c);
  FUN_0079a3f4(aAStack_8c);
  FUN_007c6a60(auStack_9c,uVar2,aAStack_8c);
  FUN_0079a3fc(aAStack_8c);
  local_84 = FUN_007c5300(auStack_9c);
  local_80 = FUN_007c505c(auStack_9c);
  base64Encode(local_84,local_80,&local_98);
  uVar2 = NetworkManager::sharedNetworkManager();
  FUN_0079a3f4(aAStack_8c);
  FUN_007c6a60(auStack_94,local_98,aAStack_8c);
  NetworkManager::urlEncode(auStack_90,uVar2,auStack_94);
  FUN_007c6120(this,auStack_90);
  FUN_007c5914(auStack_90);
  FUN_007c5914(auStack_94);
  FUN_0079a3fc(aAStack_8c);
  getEncodedPlatformSpecificDiagnosticMessageBody(aAStack_8c);
  FUN_007c6120(this,aAStack_8c);
  FUN_007c5914(aAStack_8c);
  FUN_007c62f0(this,&DAT_007ec2a0);
  FUN_007c5914(auStack_9c);
  rapidjson::
  Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  ::~Writer((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *)aAStack_64);
  rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::
  ~GenericStringBuffer
            ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)aAStack_7c);
  rapidjson::
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  ~GenericDocument(aGStack_48);
  return this;
}

// ---- ApplicationInterface::startVideoRecording  @ 0x432d1c
/* ApplicationInterface::startVideoRecording() */

void ApplicationInterface::startVideoRecording(void)

{
  time_t tVar1;
  int iVar2;
  string *psVar3;
  uint in_fpscr;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  char acStack_14 [8];
  
  if (m_initializedVideoRecording != '\x01') {
    initVideoRecording();
    m_initializedVideoRecording = '\x01';
  }
  tVar1 = time((time_t *)0x0);
  m_recordStartTime = VectorSignedToFloat(tVar1,(byte)(in_fpscr >> 0x16) & 3);
  m_hasUnviewedVideo = 1;
  iVar2 = ApplicationManager::sharedApplicationManager();
  *(undefined1 *)(iVar2 + 0xe4) = 0;
  FUN_0079a3f4(acStack_14);
  FUN_007c6a60(auStack_1c,&DAT_007ec2f4,acStack_14);
  FUN_0079a3fc(acStack_14);
  psVar3 = (string *)cocos2d::CCUserDefault::sharedUserDefault();
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_18,"Doodle Army 2",auStack_20);
  cocos2d::CCUserDefault::getStringForKey(acStack_14,psVar3);
  FUN_007c6120(auStack_1c,acStack_14);
  FUN_007c5914(acStack_14);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_20);
  switch(gameType) {
  case 0:
    FUN_007c62f0(auStack_1c," TRAINING");
    break;
  case 1:
    FUN_007c62f0(auStack_1c," SURVIVAL");
    break;
  case 2:
    FUN_007c62f0(auStack_1c," ONLINE COOP");
    break;
  case 3:
    FUN_007c62f0(auStack_1c," LOCAL MULTIPLAYER");
    break;
  case 4:
    FUN_007c62f0(auStack_1c," ONLINE MULTIPLAYER");
    break;
  case 5:
    FUN_007c62f0(auStack_1c," LOCAL COOP");
  }
  FUN_007c5914(auStack_1c);
  return;
}

// ---- ApplicationInterface::stopVideoRecording  @ 0x432eec
/* ApplicationInterface::stopVideoRecording() */

void ApplicationInterface::stopVideoRecording(void)

{
  int iVar1;
  float fVar2;
  char extraout_r3;
  char cVar3;
  
  if (m_initializedVideoRecording == '\x01') {
    fVar2 = (float)getVideoRecordingElapsedTimeInSeconds();
    iVar1 = (uint)(fVar2 < 1.0) << 0x1f;
    cVar3 = extraout_r3;
    if (-1 < iVar1) {
      cVar3 = '\0';
    }
    if (iVar1 < 0) {
      cVar3 = '\x01';
    }
    if (cVar3 != '\0') {
      m_hasUnviewedVideo = 0;
    }
  }
  return;
}

// ---- ApplicationInterface::isVideoRecording  @ 0x432f3c
/* ApplicationInterface::isVideoRecording() */

undefined4 ApplicationInterface::isVideoRecording(void)

{
  return 0;
}

// ---- ApplicationInterface::getVideoRecordingElapsedTimeInSeconds  @ 0x432f64
/* ApplicationInterface::getVideoRecordingElapsedTimeInSeconds() */

float ApplicationInterface::getVideoRecordingElapsedTimeInSeconds(void)

{
  bool bVar1;
  char cVar2;
  time_t tVar3;
  uint in_fpscr;
  float fVar4;
  
  if ((m_initializedVideoRecording == '\x01') && (cVar2 = isVideoRecording(), cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    fVar4 = 0.0;
  }
  else {
    tVar3 = time((time_t *)0x0);
    fVar4 = (float)VectorSignedToFloat(tVar3,(byte)(in_fpscr >> 0x16) & 3);
    fVar4 = fVar4 - m_recordStartTime;
  }
  return fVar4;
}

// ---- ApplicationInterface::hasUnViewedVideo  @ 0x432fd0
/* ApplicationInterface::hasUnViewedVideo() */

undefined1 ApplicationInterface::hasUnViewedVideo(void)

{
  return m_hasUnviewedVideo;
}

// ---- ApplicationInterface::showVideoRecordingInterface  @ 0x432fe8
/* ApplicationInterface::showVideoRecordingInterface() */

void ApplicationInterface::showVideoRecordingInterface(void)

{
  if (m_initializedVideoRecording != '\x01') {
    initVideoRecording();
    m_initializedVideoRecording = '\x01';
  }
  m_hasUnviewedVideo = 0;
  return;
}

// ---- ApplicationInterface::setVideoTitle  @ 0x433020
/* ApplicationInterface::setVideoTitle(std::string) */

void ApplicationInterface::setVideoTitle(void)

{
  if (m_initializedVideoRecording == '\0') {
    isVideoRecording();
  }
  return;
}

// ---- ApplicationInterface::initVideoRecording  @ 0x433060
/* ApplicationInterface::initVideoRecording() */

void ApplicationInterface::initVideoRecording(void)

{
  int *piVar1;
  _func_void_float *p_Var2;
  float extraout_s0;
  
  ApplicationManager::sharedApplicationManager();
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  p_Var2 = (_func_void_float *)(**(code **)(*piVar1 + 0x30))(piVar1);
  cocos2d::CCScheduler::scheduleSelector(p_Var2,(CCObject *)0x433155,extraout_s0,false);
  initVideoRecordingForPlatform();
  return;
}

// ---- ApplicationInterface::canOpenApp  @ 0x43bf4c
/* ApplicationInterface::canOpenApp(std::string) */

bool ApplicationInterface::canOpenApp(undefined4 param_1)

{
  _JNIEnv *this;
  char cVar1;
  char *pcVar2;
  undefined4 uVar3;
  bool bVar4;
  _JNIEnv *local_24;
  _jmethodID *local_20;
  undefined4 local_1c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_24,"com/appsomniacs/da2/DA2Activity","isAppInstalled",
                     "(Ljava/lang/String;)Z");
  this = local_24;
  if (cVar1 == '\x01') {
    pcVar2 = (char *)FUN_007c5300(param_1);
    uVar3 = _JNIEnv::NewStringUTF(this,pcVar2);
    cVar1 = _JNIEnv::CallStaticBooleanMethod((_jclass *)this,local_20,local_1c,uVar3);
    cocos2d::JniHelper::logAndClearExceptions(local_24);
    bVar4 = cVar1 != '\0';
  }
  else {
    bVar4 = false;
  }
  return bVar4;
}

// ---- ApplicationInterface::openURL  @ 0x43bfdc
/* ApplicationInterface::openURL(std::string) */

void ApplicationInterface::openURL(undefined4 param_1)

{
  _JNIEnv *this;
  char cVar1;
  char *pcVar2;
  undefined4 uVar3;
  _JNIEnv *local_24;
  _jmethodID *local_20;
  undefined4 local_1c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_24,"com/appsomniacs/da2/DA2Activity","openUri",
                     "(Ljava/lang/String;)V");
  this = local_24;
  if (cVar1 == '\x01') {
    pcVar2 = (char *)FUN_007c5300(param_1);
    uVar3 = _JNIEnv::NewStringUTF(this,pcVar2);
    _JNIEnv::CallStaticVoidMethod((_jclass *)this,local_20,local_1c,uVar3);
    cocos2d::JniHelper::logAndClearExceptions(local_24);
  }
  return;
}

// ---- ApplicationInterface::createAdBanner  @ 0x43c04c
/* ApplicationInterface::createAdBanner() */

void ApplicationInterface::createAdBanner(void)

{
  char cVar1;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","createAdBanner",
                     "()V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}

// ---- ApplicationInterface::removeAdBanner  @ 0x43c0a8
/* ApplicationInterface::removeAdBanner() */

void ApplicationInterface::removeAdBanner(void)

{
  char cVar1;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","removeAdBanner",
                     "()V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}

// ---- ApplicationInterface::prepareInterstitial  @ 0x43c104
/* ApplicationInterface::prepareInterstitial() */

void ApplicationInterface::prepareInterstitial(void)

{
  char cVar1;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "prepareInterstitial","()V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}

// ---- ApplicationInterface::showInterstitial  @ 0x43c160
/* ApplicationInterface::showInterstitial() */

void ApplicationInterface::showInterstitial(void)

{
  char cVar1;
  CCUserDefault *this;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  this = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  cocos2d::CCUserDefault::setIntegerForKey(this,"QuitCount",0);
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "showInterstitial","()V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}

// ---- ApplicationInterface::getAppVersion  @ 0x43c1dc
/* ApplicationInterface::getAppVersion() */

ApplicationInterface * __thiscall ApplicationInterface::getAppVersion(ApplicationInterface *this)

{
  char cVar1;
  JniHelper aJStack_1c [4];
  _jstring *local_18;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "getApplicationVersion","()Ljava/lang/String;");
  if (cVar1 == '\x01') {
    local_18 = (_jstring *)_JNIEnv::CallStaticObjectMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::jstring2string(aJStack_1c,local_18);
    FUN_002eb49c(local_14,local_18);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
    FUN_007c51c0(this,aJStack_1c);
    FUN_007c5914(aJStack_1c);
  }
  return this;
}

// ---- ApplicationInterface::hasCrashCartInstalled  @ 0x43c274
/* ApplicationInterface::hasCrashCartInstalled() */

undefined4 ApplicationInterface::hasCrashCartInstalled(void)

{
  undefined4 uVar1;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"com.appsomniacs.cc",auStack_10);
  uVar1 = canOpenApp(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return uVar1;
}

// ---- ApplicationInterface::hasZombieRoadRageInstalled  @ 0x43c2d4
/* ApplicationInterface::hasZombieRoadRageInstalled() */

undefined4 ApplicationInterface::hasZombieRoadRageInstalled(void)

{
  undefined4 uVar1;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"com.appsomniacs.zrr",auStack_10);
  uVar1 = canOpenApp(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return uVar1;
}

// ---- ApplicationInterface::hasDoodleArmyInstalled  @ 0x43c334
/* ApplicationInterface::hasDoodleArmyInstalled() */

undefined4 ApplicationInterface::hasDoodleArmyInstalled(void)

{
  undefined4 uVar1;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"com.chadtowns.dax",auStack_10);
  uVar1 = canOpenApp(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return uVar1;
}

// ---- ApplicationInterface::hasDoodleArmyBCInstalled  @ 0x43c394
/* ApplicationInterface::hasDoodleArmyBCInstalled() */

undefined4 ApplicationInterface::hasDoodleArmyBCInstalled(void)

{
  undefined4 uVar1;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"com.chadtowns.daxfree",auStack_10);
  uVar1 = canOpenApp(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return uVar1;
}

// ---- ApplicationInterface::openDoodleArmyAppLink  @ 0x43c3f4
/* ApplicationInterface::openDoodleArmyAppLink() */

void ApplicationInterface::openDoodleArmyAppLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://details?id=com.chadtowns.dax",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openDoodleArmyBCAppLink  @ 0x43c44c
/* ApplicationInterface::openDoodleArmyBCAppLink() */

void ApplicationInterface::openDoodleArmyBCAppLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://details?id=com.chadtowns.daxfree",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openCrashCartLink  @ 0x43c4a4
/* ApplicationInterface::openCrashCartLink() */

void ApplicationInterface::openCrashCartLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://details?id=com.appsomniacs.crashcart",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openZombieRoadRageLink  @ 0x43c4fc
/* ApplicationInterface::openZombieRoadRageLink() */

void ApplicationInterface::openZombieRoadRageLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://search?q=pub:Appsomniacs+LLC",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openPocketKiteLink  @ 0x43c554
/* ApplicationInterface::openPocketKiteLink() */

void ApplicationInterface::openPocketKiteLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://search?q=pub:Appsomniacs+LLC",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openCannonSiegeLink  @ 0x43c5ac
/* ApplicationInterface::openCannonSiegeLink() */

void ApplicationInterface::openCannonSiegeLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://search?q=pub:Appsomniacs+LLC",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openFlipTheBirdLink  @ 0x43c604
/* ApplicationInterface::openFlipTheBirdLink() */

void ApplicationInterface::openFlipTheBirdLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://search?q=pub:Appsomniacs+LLC",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openJonahLink  @ 0x43c65c
/* ApplicationInterface::openJonahLink() */

void ApplicationInterface::openJonahLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://search?q=pub:Appsomniacs+LLC",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::openMiniMilitiaLink  @ 0x43c6b4
/* ApplicationInterface::openMiniMilitiaLink() */

void ApplicationInterface::openMiniMilitiaLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://details?id=com.appsomniacs.da2",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::getRandomAdNumber  @ 0x43c70c
/* ApplicationInterface::getRandomAdNumber() */

undefined4 ApplicationInterface::getRandomAdNumber(void)

{
  return 1;
}

// ---- ApplicationInterface::getAdSpriteName  @ 0x43c714
/* ApplicationInterface::getAdSpriteName(int) */

ApplicationInterface * __thiscall
ApplicationInterface::getAdSpriteName(ApplicationInterface *this,int param_1)

{
  undefined1 auStack_c [8];
  
  if (param_1 == 1) {
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(this,"daoAd.png",auStack_c);
    FUN_0079a3fc(auStack_c);
  }
  else {
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(this,"daoAd.png",auStack_c);
    FUN_0079a3fc(auStack_c);
  }
  return this;
}

// ---- ApplicationInterface::adClicked  @ 0x43c790
/* ApplicationInterface::adClicked(int) */

void ApplicationInterface::adClicked(int param_1)

{
  if (param_1 == 1) {
    openDoodleArmyAppLink();
  }
  else {
    openDeveloperLink();
  }
  return;
}

// ---- ApplicationInterface::zombieRoadRageIsAvailable  @ 0x43c7b0
/* ApplicationInterface::zombieRoadRageIsAvailable() */

undefined4 ApplicationInterface::zombieRoadRageIsAvailable(void)

{
  return 0;
}

// ---- ApplicationInterface::crashCartIsAvailable  @ 0x43c7b8
/* ApplicationInterface::crashCartIsAvailable() */

undefined4 ApplicationInterface::crashCartIsAvailable(void)

{
  return 0;
}

// ---- ApplicationInterface::doodleArmyIsAvailable  @ 0x43c7c0
/* ApplicationInterface::doodleArmyIsAvailable() */

undefined4 ApplicationInterface::doodleArmyIsAvailable(void)

{
  return 1;
}

// ---- ApplicationInterface::doodleArmyBCIsAvailable  @ 0x43c7c8
/* ApplicationInterface::doodleArmyBCIsAvailable() */

undefined4 ApplicationInterface::doodleArmyBCIsAvailable(void)

{
  return 1;
}

// ---- ApplicationInterface::openDeveloperLink  @ 0x43c7d0
/* ApplicationInterface::openDeveloperLink() */

void ApplicationInterface::openDeveloperLink(void)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_10);
  FUN_007c6a60(auStack_c,"market://search?q=pub:Appsomniacs+LLC",auStack_10);
  openURL(auStack_c);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_10);
  return;
}

// ---- ApplicationInterface::pickClaimedIdentity  @ 0x43c828
/* ApplicationInterface::pickClaimedIdentity() */

void ApplicationInterface::pickClaimedIdentity(void)

{
  char cVar1;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","requestIdentity"
                     ,"()V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}

// ---- ApplicationInterface::requiresClaimedIdentity  @ 0x43c884
/* ApplicationInterface::requiresClaimedIdentity() */

undefined4 ApplicationInterface::requiresClaimedIdentity(void)

{
  return 1;
}

// ---- ApplicationInterface::exit  @ 0x43c88c
/* ApplicationInterface::exit() */

void ApplicationInterface::exit(void)

{
  char cVar1;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","requestExit",
                     "()V");
  if (cVar1 == '\x01') {
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c);
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  return;
}

// ---- ApplicationInterface::setShowNavBar  @ 0x43c8e8
/* ApplicationInterface::setShowNavBar(bool) */

void ApplicationInterface::setShowNavBar(bool param_1)

{
  return;
}

// ---- ApplicationInterface::getOSType  @ 0x43c8f4
/* ApplicationInterface::getOSType() */

undefined4 ApplicationInterface::getOSType(void)

{
  return 1;
}

// ---- ApplicationInterface::isGpgsInstalled  @ 0x43c8fc
/* ApplicationInterface::isGpgsInstalled() */

bool ApplicationInterface::isGpgsInstalled(void)

{
  char cVar1;
  bool bVar2;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity",
                     "isGooglePlayInstalled","()Z");
  if (cVar1 == '\x01') {
    cVar1 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
    bVar2 = cVar1 != '\0';
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  else {
    bVar2 = false;
  }
  return bVar2;
}

// ---- ApplicationInterface::isGpgsReady  @ 0x43c978
/* ApplicationInterface::isGpgsReady() */

bool ApplicationInterface::isGpgsReady(void)

{
  char cVar1;
  bool bVar2;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","isGpgReady",
                     "()Z");
  if (cVar1 == '\x01') {
    cVar1 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
    bVar2 = cVar1 != '\0';
    cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
  }
  else {
    bVar2 = false;
  }
  return bVar2;
}

// ---- ApplicationInterface::getEncodedPlatformSpecificDiagnosticMessageBody  @ 0x43c9f4
/* ApplicationInterface::getEncodedPlatformSpecificDiagnosticMessageBody() */

ApplicationInterface * __thiscall
ApplicationInterface::getEncodedPlatformSpecificDiagnosticMessageBody(ApplicationInterface *this)

{
  FUN_007c51b0(this);
  return this;
}

// ---- ApplicationInterface::isVideoRecordingAvaliable  @ 0x43ca0c
/* ApplicationInterface::isVideoRecordingAvaliable() */

undefined4 ApplicationInterface::isVideoRecordingAvaliable(void)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_10,"Kamcord has been discontinued.",auStack_1c);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_c,
               "Video recording using Kamcord has been disabled until a replacement can be found.",
               auStack_18);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_14,&DAT_007ed928,auStack_20);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_14);
  uVar2 = cocos2d::CCArray::create(pCVar1,0);
  AMessageBox::showAlert(0,auStack_10,auStack_c,uVar2,0,0);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_20);
  FUN_007c5914(auStack_c);
  FUN_0079a3fc(auStack_18);
  FUN_007c5914(auStack_10);
  FUN_0079a3fc(auStack_1c);
  return 0;
}

// ---- ApplicationInterface::initVideoRecordingForPlatform  @ 0x43cb10
/* ApplicationInterface::initVideoRecordingForPlatform() */

void ApplicationInterface::initVideoRecordingForPlatform(void)

{
  return;
}

// ---- ApplicationInterface::enableBlueToothMonitor  @ 0x43cb14
/* ApplicationInterface::enableBlueToothMonitor() */

void ApplicationInterface::enableBlueToothMonitor(void)

{
  return;
}

// ---- ApplicationInterface::isBlueToothEnabled  @ 0x43cb18
/* ApplicationInterface::isBlueToothEnabled() */

undefined4 ApplicationInterface::isBlueToothEnabled(void)

{
  return 0;
}

// ---- ApplicationInterface::initGPGS  @ 0x43cb20
/* ApplicationInterface::initGPGS() */

bool ApplicationInterface::initGPGS(void)

{
  char cVar1;
  int iVar2;
  bool bVar3;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  iVar2 = GPGSStateManager::isServiceInitialized();
  if (iVar2 == 0) {
    cVar1 = cocos2d::JniHelper::getStaticMethodInfo
                      ((JniMethodInfo_ *)&local_14,"com/appsomniacs/da2/DA2Activity","initGPGS",
                       "()Z");
    if (cVar1 == '\x01') {
      cVar1 = _JNIEnv::CallStaticBooleanMethod(local_14,local_10,local_c);
      bVar3 = cVar1 != '\0';
      cocos2d::JniHelper::logAndClearExceptions((_JNIEnv *)local_14);
    }
    else {
      bVar3 = false;
    }
  }
  else {
    bVar3 = true;
  }
  return bVar3;
}
