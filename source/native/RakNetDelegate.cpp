// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 29 functions

// ---- RakNetDelegate::create  @ 0x387460
/* RakNetDelegate::create() */

RakNetDelegate * RakNetDelegate::create(void)

{
  bool bVar1;
  RakNetDelegate *this;
  int iVar2;
  
  this = operator_new(0xe8);
  RakNetDelegate(this);
  if ((this == (RakNetDelegate *)0x0) ||
     (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (RakNetDelegate *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (RakNetDelegate *)0x0;
  }
  return this;
}

// ---- RakNetDelegate::RakNetDelegate  @ 0x3cf8d0
/* RakNetDelegate::RakNetDelegate() */

RakNetDelegate * __thiscall RakNetDelegate::RakNetDelegate(RakNetDelegate *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00919358;
  return this;
}

// ---- RakNetDelegate::init  @ 0x3cf8fc
/* RakNetDelegate::init() */

bool RakNetDelegate::init(void)

{
  char cVar1;
  
  cVar1 = cocos2d::CCNode::init();
  return cVar1 == '\x01';
}

// ---- RakNetDelegate::~RakNetDelegate  @ 0x3cf92c
/* WARNING: Removing unreachable block (ram,0x003cf954) */
/* RakNetDelegate::~RakNetDelegate() */

RakNetDelegate * __thiscall RakNetDelegate::~RakNetDelegate(RakNetDelegate *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00919358;
  shutdown();
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- RakNetDelegate::~RakNetDelegate  @ 0x3cf96c
/* RakNetDelegate::~RakNetDelegate() */

RakNetDelegate * __thiscall RakNetDelegate::~RakNetDelegate(RakNetDelegate *this)

{
  ~RakNetDelegate(this);
  operator_delete(this);
  return this;
}

// ---- RakNetDelegate::setHostPeerID  @ 0x3cf988
/* RakNetDelegate::setHostPeerID(int) */

void __thiscall RakNetDelegate::setHostPeerID(RakNetDelegate *this,int param_1)

{
  DAT_009435fc = param_1;
  return;
}

// ---- RakNetDelegate::msgTicLoop  @ 0x3cf9a0
/* RakNetDelegate::msgTicLoop(cocos2d::CCObject) */

void RakNetDelegate::msgTicLoop(_func_void_float *param_1)

{
  int *piVar1;
  code *pcVar2;
  float fVar3;
  undefined1 local_49;
  undefined *local_48;
  undefined4 local_44;
  AddressOrGUID aAStack_40 [44];
  int local_14;
  
  piVar1 = DAT_00951408;
  local_14 = __stack_chk_guard;
  local_49 = 0x86;
  pcVar2 = *(code **)(*DAT_00951408 + 0x54);
  RakNet::AddressOrGUID::AddressOrGUID(aAStack_40,(SystemAddress *)&DAT_009513c4);
  fVar3 = (float)(*pcVar2)(piVar1,&local_49,1,1,3,0,aAStack_40,1,0);
  local_48 = (undefined *)0x3cf9a1;
  local_44 = 0;
  cocos2d::CCNode::schedule(param_1,fVar3);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::conditionalInitRakPeer  @ 0x3cfa48
/* RakNetDelegate::conditionalInitRakPeer(bool) */

void __thiscall RakNetDelegate::conditionalInitRakPeer(RakNetDelegate *this,bool param_1)

{
  int iVar1;
  NatPunchthroughClient *this_00;
  UDPProxyClient *this_01;
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  ServerListObject aSStack_58 [4];
  undefined1 auStack_54 [4];
  SocketDescriptor aSStack_50 [34];
  undefined2 local_2e;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if (DAT_00951408 == (int *)0x0) {
    iVar1 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                      ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
    if (iVar1 == 0) {
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"doodlearmy1.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"EPSILON",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"doodlearmy3.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"GAMMA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"doodlearmy4.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"DELTA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"doodlearmy5.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"OMICRON",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"doodlearmy6.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e52d0,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs1.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"SIGMA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs2.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"THETA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs3.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"LAMBDA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs4.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e5360,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs5.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e5380,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs6.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e52d0,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs7.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e53bc,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs8.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e53dc,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs9.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e53fc,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs10.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e5420,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs11.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"OMEGA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs12.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e5380,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"appsomniacs13.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,&DAT_007e548c,auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      FUN_0079a3f4(auStack_60);
      FUN_007c6a60(aSStack_58,"doodlearmy2.kryptcloud.com",auStack_60);
      FUN_0079a3f4(auStack_5c);
      FUN_007c6a60(auStack_54,"KAPPA",auStack_5c);
      addServerIP(this,aSStack_58);
      ServerListObject::~ServerListObject(aSStack_58);
      FUN_0079a3fc(auStack_5c);
      FUN_0079a3fc(auStack_60);
      shuffleServerList();
      updateServerList();
      setServerIndex(this,0);
    }
    DAT_00951408 = (int *)RakNet::RakPeerInterface::GetInstance();
    (**(code **)(*DAT_00951408 + 0x30))(DAT_00951408,"withObject:TextureResource",0x1a);
    (**(code **)(*DAT_00951408 + 0xe4))
              (DAT_00951408,30000,DAT_009513c4,DAT_009513c8,DAT_009513cc,DAT_009513d0,DAT_009513d4);
    RakNet::SocketDescriptor::SocketDescriptor(aSStack_50,0x10e1,(char *)0x0);
    local_2e = 2;
    (**(code **)(*DAT_00951408 + 8))(DAT_00951408,param_1);
    (**(code **)(*DAT_00951408 + 0xc))(DAT_00951408,0x18,aSStack_50,1,0xfffe7961);
    (**(code **)(*DAT_00951408 + 0xb4))(DAT_00951408,1);
    (**(code **)(*DAT_00951408 + 0x24))(DAT_00951408,0x18);
    (**(code **)(*DAT_00951408 + 0x10c))(DAT_00951408,700);
    this_00 = operator_new(0x1a0);
    RakNet::NatPunchthroughClient::NatPunchthroughClient(this_00);
    DAT_00951410 = this_00;
    (**(code **)(*DAT_00951408 + 0x114))(DAT_00951408,this_00);
    RakNet::NatPunchthroughClient::SetDebugInterface
              (DAT_00951410,(NatPunchthroughDebugInterface *)&DAT_009514d4);
    this_01 = operator_new(0x1c);
    RakNet::UDPProxyClient::UDPProxyClient(this_01);
    DAT_00951414 = this_01;
    (**(code **)(*DAT_00951408 + 0x114))(DAT_00951408,this_01);
    RakNet::UDPProxyClient::SetResultHandler
              (DAT_00951414,(UDPProxyClientResultHandler *)&DAT_009514d8);
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- RakNetDelegate::connectToLANServer  @ 0x3d07e8
/* RakNetDelegate::connectToLANServer(std::string, int) */

void __thiscall
RakNetDelegate::connectToLANServer(RakNetDelegate *this,undefined4 param_2,ushort param_3)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  char *pcVar4;
  undefined4 uVar5;
  code *pcVar6;
  SystemAddress aSStack_28 [20];
  int local_14;
  
  local_14 = __stack_chk_guard;
  conditionalInitRakPeer(this,false);
  piVar1 = DAT_00951408;
  DAT_00951407 = 1;
  pcVar6 = *(code **)(*DAT_00951408 + 0x38);
  uVar2 = FUN_007c5300(param_2);
  iVar3 = (*pcVar6)(piVar1,uVar2,param_3,"socketDescriptor*",0x11,0,0,0xc,500,0);
  pcVar4 = (char *)FUN_007c5300(param_2);
  RakNet::SystemAddress::SystemAddress(aSStack_28,pcVar4,param_3);
  RakNet::SystemAddress::operator=((SystemAddress *)&DAT_00951428,aSStack_28);
  uVar2 = RakNet::SystemAddress::ToString((SystemAddress *)&DAT_00951428,true,'|');
  uVar5 = FUN_007c5300(param_2);
  printf("Attempting to connect to lobby at %s (%s)\n",uVar2,uVar5);
  if ((iVar3 != 0) && (iVar3 != 4)) {
    printf("This may be a problem");
    shutdown();
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::connectToServer  @ 0x3d08fc
/* RakNetDelegate::connectToServer(bool) */

void __thiscall RakNetDelegate::connectToServer(RakNetDelegate *this,bool param_1)

{
  int *piVar1;
  uint uVar2;
  CCNotificationCenter *pCVar3;
  char *pcVar4;
  int iVar5;
  undefined4 uVar6;
  CCObject *pCVar7;
  uint uVar8;
  code *pcVar9;
  int iVar10;
  SystemAddress aSStack_28 [20];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (param_1) {
    std::vector<ServerListObject,std::allocator<ServerListObject>>::clear
              ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
    DAT_009513f0 = 0;
  }
  conditionalInitRakPeer(this,true);
  if (DAT_009513f2 == '\0') {
    DAT_009513f0 = DAT_009513f0 + 1;
    uVar8 = (uint)DAT_009513f0;
    uVar2 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                      ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
    piVar1 = DAT_00951408;
    if (uVar2 < uVar8) {
      pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification
                (pCVar3,"AllServerConnectionsFailed",(CCObject *)0x0);
    }
    else {
      DAT_00951407 = 0;
      DAT_009513f2 = '\x01';
      pcVar9 = *(code **)(*DAT_00951408 + 0x38);
      pcVar4 = RakNet::RakString::operator_cast_to_char_((RakString *)&DAT_00951400);
      iVar5 = (*pcVar9)(piVar1,pcVar4,0x11ca,"socketDescriptor*",0x11,0,0,0xc,500,0);
      pcVar4 = RakNet::RakString::operator_cast_to_char_((RakString *)&DAT_00951400);
      RakNet::SystemAddress::SystemAddress(aSStack_28,pcVar4,0x11ca);
      RakNet::SystemAddress::operator=((SystemAddress *)&DAT_00951428,aSStack_28);
      iVar10 = (int)DAT_009513f0;
      uVar6 = RakNet::SystemAddress::ToString((SystemAddress *)&DAT_00951428,true,'|');
      pcVar4 = RakNet::RakString::operator_cast_to_char_((RakString *)&DAT_00951400);
      printf("Attempt %d connecting to lobby at %s (%s)\n",iVar10,uVar6,pcVar4);
      pCVar3 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      iVar10 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                         ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4
                          ,DAT_009513ec);
      uVar6 = FUN_007c5300(iVar10 + 4);
      pCVar7 = (CCObject *)cocos2d::CCString::createWithFormat("TRYING SERVER: %s",uVar6);
      cocos2d::CCNotificationCenter::postNotification(pCVar3,"ServerStatusUpdate",pCVar7);
      (**(code **)(*DAT_00951408 + 0x2c))(DAT_00951408);
      if ((iVar5 != 0) && (iVar5 != 4)) {
        shutdown();
      }
    }
  }
  if (local_14 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- RakNetDelegate::connectToPeer  @ 0x3d0b30
/* RakNetDelegate::connectToPeer(char*, char*, int, bool) */

void RakNetDelegate::connectToPeer(char *param_1,char *param_2,int param_3,bool param_4)

{
  char cVar1;
  undefined4 uVar2;
  char *pcVar3;
  uint local_60;
  char *local_5c;
  char *local_58;
  char *local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  SystemAddress aSStack_3c [20];
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  int local_14;
  
  local_60 = (uint)param_4;
  local_14 = __stack_chk_guard;
  local_5c = (char *)param_3;
  local_58 = param_2;
  local_54 = param_1;
  RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&local_50);
  RakNet::RakNetGUID::FromString((RakNetGUID *)&local_50,local_58);
  RakNet::SystemAddress::SystemAddress(aSStack_3c,local_5c);
  cVar1 = DataStructures::
          Map<RakNet::RakNetGUID,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
          ::Has((Map<RakNet::RakNetGUID,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                 *)&DAT_00951480,(RakNetGUID *)&local_50);
  if (cVar1 != '\x01') {
    uVar2 = RakNet::SystemAddress::ToString(aSStack_3c,true,'|');
    printf("Connecting to %s via NAT Punch\n",uVar2);
    pcVar3 = RakNet::RakString::operator_cast_to_char_((RakString *)&DAT_00951400);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&local_28,pcVar3,0x11ca);
    natPunch(local_50,uStack_4c,uStack_48,uStack_44,local_28,uStack_24,uStack_20,uStack_1c,local_18)
    ;
    DataStructures::
    Map<RakNet::RakNetGUID,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
    ::Set((Map<RakNet::RakNetGUID,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
           *)&DAT_00951480,(RakNetGUID *)&local_50,(int *)&local_60);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::removePeer  @ 0x3d0c04
/* RakNetDelegate::removePeer(int) */

void __thiscall RakNetDelegate::removePeer(RakNetDelegate *this,int param_1)

{
  uint uVar1;
  int iVar2;
  RakNetGUID *pRVar3;
  int *piVar4;
  uint uVar5;
  int local_28;
  RakNetDelegate *local_24;
  uint local_1c;
  RakNetGUID aRStack_18 [16];
  
  local_28 = param_1;
  local_24 = this;
  RakNet::RakNetGUID::RakNetGUID(aRStack_18);
  iVar2 = DataStructures::
          Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
          ::Has((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                 *)&DAT_0095143c,&local_28);
  if (iVar2 != 0) {
    pRVar3 = (RakNetGUID *)
             DataStructures::
             Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
             ::Get((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                    *)&DAT_0095143c,&local_28);
    RakNet::RakNetGUID::operator=(aRStack_18,pRVar3);
    DataStructures::
    Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
    ::Delete((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
              *)&DAT_0095143c,&local_28);
  }
  for (local_1c = 0; uVar1 = local_1c,
      uVar5 = DataStructures::
              Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
              ::Size((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                      *)&DAT_00951454), uVar1 < uVar5; local_1c = local_1c + 1) {
    piVar4 = (int *)DataStructures::
                    Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                    ::operator[]((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                                  *)&DAT_00951454,local_1c);
    uVar1 = local_1c;
    if (*piVar4 == local_28) {
      local_1c = local_1c - 1;
      DataStructures::
      Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
      ::RemoveAtIndex((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                       *)&DAT_00951454,uVar1);
    }
  }
  return;
}

// ---- RakNetDelegate::detectNATType  @ 0x3d0cc8
/* RakNetDelegate::detectNATType() */

void __thiscall RakNetDelegate::detectNATType(RakNetDelegate *this)

{
  NatTypeDetectionClient *this_00;
  SystemAddress aSStack_28 [20];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (DAT_00951404 != '\0') {
    conditionalInitRakPeer(this,true);
    this_00 = operator_new(0x3c);
    RakNet::NatTypeDetectionClient::NatTypeDetectionClient(this_00);
    DAT_0095140c = this_00;
    (**(code **)(*DAT_00951408 + 0x114))(DAT_00951408,this_00);
    RakNet::SystemAddress::SystemAddress(aSStack_28,"94.198.81.195",0xeeb7);
    (**(code **)(*DAT_00951408 + 0x38))(DAT_00951408,"94.198.81.195",0xeeb7,0,0,0,0,0xc,500,0);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::processMessage  @ 0x3d0dbc
/* RakNetDelegate::processMessage(RakNet::Packet*, int) */

void RakNetDelegate::processMessage(Packet *param_1,int param_2)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  uint local_50;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  CCString *local_44;
  AddressOrGUID aAStack_40 [44];
  int local_14;
  
  piVar1 = DAT_00951408;
  local_14 = __stack_chk_guard;
  if (((**(char **)(param_2 + 0x30) == -0x79) || (**(char **)(param_2 + 0x30) == -0x74)) &&
     (*(char *)(*(int *)(param_2 + 0x30) + 1) == '\x03')) {
    local_50 = (uint)*(byte *)(*(int *)(param_2 + 0x30) + 2);
    printf("Got MID_P2P_PEERID from %d!\n",local_50);
    local_44 = (CCString *)cocos2d::CCString::createWithFormat("%d",local_50);
    uVar2 = NetworkManager::sharedNetworkManager();
    uVar3 = cocos2d::CCString::getCString(local_44);
    FUN_0079a3f4(auStack_58);
    FUN_007c6a60(auStack_4c,uVar3,auStack_58);
    FUN_0079a3f4(auStack_54);
    FUN_007c6a60(auStack_48,&DAT_007e5610,auStack_54);
    NetworkManager::addPlayer(uVar2,auStack_4c,auStack_48);
    FUN_007c5914(auStack_48);
    FUN_0079a3fc(auStack_54);
    FUN_007c5914(auStack_4c);
    FUN_0079a3fc(auStack_58);
    DataStructures::
    Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
    ::Set((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
           *)&DAT_0095143c,(int *)&local_50,(RakNetGUID *)(param_2 + 0x18));
    uVar2 = 0;
  }
  else {
    if ((**(char **)(param_2 + 0x30) == -0x78) && (*(char *)(*(int *)(param_2 + 0x30) + 1) == '\0'))
    {
      pcVar4 = *(code **)(*DAT_00951408 + 0x70);
      RakNet::AddressOrGUID::AddressOrGUID(aAStack_40,(RakNetGUID *)(param_2 + 0x18));
      (*pcVar4)(piVar1,aAStack_40,1,0,3);
    }
    uVar2 = 1;
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

// ---- RakNetDelegate::connectToNextServer  @ 0x3d1074
/* RakNetDelegate::connectToNextServer() */

void __thiscall RakNetDelegate::connectToNextServer(RakNetDelegate *this)

{
  if (DAT_00951407 != '\x01') {
    updateServerList();
    nextServerIndex(this);
    connectToServer(this,false);
  }
  return;
}

// ---- RakNetDelegate::updateLoop  @ 0x3d10a8
/* RakNetDelegate::updateLoop(float) */

void RakNetDelegate::updateLoop(float param_1)

{
  uint uVar1;
  byte bVar2;
  char cVar3;
  RakNetDelegate *in_r0;
  char *pcVar4;
  void *pvVar5;
  undefined4 uVar6;
  undefined4 *puVar7;
  CCObject *pCVar8;
  CCNotificationCenter *pCVar9;
  int *piVar10;
  RakNetGUID *this;
  uint uVar11;
  int iVar12;
  CCData *pCVar13;
  NetworkManager *pNVar14;
  undefined4 uVar15;
  code *pcVar16;
  float extraout_s0;
  undefined1 local_88;
  undefined1 uStack_87;
  undefined1 local_86;
  int local_84;
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 local_78;
  undefined1 uStack_77;
  undefined4 local_74;
  Packet *local_70;
  int local_6c;
  int local_68;
  uint local_64;
  uint local_60;
  int local_5c;
  uint local_58;
  int local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  int local_44;
  CCString *local_40;
  CCString *local_3c;
  CCData *local_38;
  CCData *local_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 local_24;
  undefined4 local_20;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if (DAT_00951408 != (int *)0x0) {
    local_70 = (Packet *)0x0;
    local_6c = 0;
    local_70 = (Packet *)(**(code **)(*DAT_00951408 + 100))(DAT_00951408);
    param_1 = extraout_s0;
    while ((local_70 != (Packet *)0x0 && (DAT_00951408 != (int *)0x0))) {
      local_6c = local_6c + 1;
      bVar2 = FUN_003cf8a0(local_70);
      switch(bVar2) {
      case 0x10:
        local_44 = DetermineConnectionIdentity(local_70);
        uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)local_70,true,'|');
        uVar6 = RakNet::RakNetGUID::ToString((RakNetGUID *)(local_70 + 0x18));
        printf("ID_CONNECTION_REQUEST_ACCEPTED to %s with GUID %s (cid: %d)\n",uVar15,uVar6,local_44
              );
        (**(code **)(*DAT_00951408 + 0xcc))
                  (&local_30,DAT_00951408,*(undefined4 *)local_70,*(undefined4 *)(local_70 + 4),
                   *(undefined4 *)(local_70 + 8),*(undefined4 *)(local_70 + 0xc),
                   *(undefined4 *)(local_70 + 0x10));
        uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)&local_30,true,'|');
        printf("  (My external address is %s)\n",uVar15);
        pCVar9 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        iVar12 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                           ((vector<ServerListObject,std::allocator<ServerListObject>> *)
                            &DAT_009513f4,DAT_009513ec);
        uVar15 = FUN_007c5300(iVar12 + 4);
        pCVar8 = (CCObject *)cocos2d::CCString::createWithFormat("CONNECTED: %s",uVar15);
        cocos2d::CCNotificationCenter::postNotification(pCVar9,"ServerStatusUpdate",pCVar8);
        uVar15 = DAT_0095140c;
        if (local_44 == 1) {
          RakNet::SystemAddress::SystemAddress((SystemAddress *)&local_30,"94.198.81.195",0xeeb7);
          RakNet::NatTypeDetectionClient::DetectNATType
                    (uVar15,local_30,uStack_2c,uStack_28,local_24,local_20);
          puts("We just connected to the NAT server!");
        }
        else if (local_44 == 0) {
          DAT_00951405 = '\x01';
          RakNet::RakNetGUID::operator=((RakNetGUID *)&DAT_00951418,(RakNetGUID *)(local_70 + 0x18))
          ;
          puts("We just connected to the lobby server!");
          if (DAT_00951406 != '\0') {
            DAT_009514d0 = openUPNP();
            printf("openUPNP result: %d\n",(uint)DAT_009514d0);
            local_74._0_2_ = CONCAT11(DAT_009514d0,4);
            sendDataToServer(in_r0,&local_74,2,true);
          }
        }
        else if (local_44 == 3) {
          piVar10 = (int *)DataStructures::
                           Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                           ::Get((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                                  *)&DAT_00951454,(SystemAddress *)local_70);
          local_84 = *piVar10;
          local_40 = (CCString *)cocos2d::CCString::createWithFormat("%d",local_84);
          uVar15 = cocos2d::CCString::getCString(local_40);
          FUN_0079a3f4(&local_74);
          FUN_007c6a60(auStack_80,uVar15,&local_74);
          FUN_0079a3fc(&local_74);
          uVar15 = NetworkManager::sharedNetworkManager();
          FUN_007c64e8(auStack_7c,auStack_80);
          FUN_0079a3f4(&local_74);
          FUN_007c6a60(&local_78,&DAT_007e5610,&local_74);
          NetworkManager::addPlayer(uVar15,auStack_7c,&local_78);
          FUN_007c5914(&local_78);
          FUN_0079a3fc(&local_74);
          FUN_007c5914(auStack_7c);
          DataStructures::
          Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
          ::Set((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                 *)&DAT_0095143c,&local_84,(RakNetGUID *)(local_70 + 0x18));
          printf("We just connected to peer: %d, sending our ID: %d\n",local_84,DAT_009435fc);
          local_86 = 0;
          _local_88 = CONCAT11((char)DAT_009435fc,3);
          uVar15 = cocos2d::CCString::getCString(local_40);
          FUN_0079a3f4(&local_78);
          FUN_007c6a60(&local_74,uVar15,&local_78);
          sendDataToPeer(in_r0,&local_88,2,&local_74,1);
          FUN_007c5914(&local_74);
          FUN_0079a3fc(&local_78);
          FUN_007c5914(auStack_80);
        }
        else {
          puts("--Turns out we have no idea who this is...");
        }
        break;
      case 0x11:
        local_54 = DetermineConnectionIdentity(local_70);
        if (local_54 == 1) {
          puts("Connection to NATTypeDetectionServer attempt failed");
        }
        else if (local_54 == 0) {
          DAT_00951405 = '\0';
          DAT_009513f2 = 0;
          uVar15 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                             ((vector<ServerListObject,std::allocator<ServerListObject>> *)
                              &DAT_009513f4,DAT_009513ec);
          uVar15 = FUN_007c5300(uVar15);
          printf("Connection to server %s attempt failed\n",uVar15);
          pCVar9 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter()
          ;
          iVar12 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                             ((vector<ServerListObject,std::allocator<ServerListObject>> *)
                              &DAT_009513f4,DAT_009513ec);
          uVar15 = FUN_007c5300(iVar12 + 4);
          pCVar8 = (CCObject *)cocos2d::CCString::createWithFormat("CONNECTION FAILED: %s",uVar15);
          cocos2d::CCNotificationCenter::postNotification(pCVar9,"ServerStatusUpdate",pCVar8);
          connectToNextServer(in_r0);
        }
        else if (local_54 == 3) {
          puVar7 = (undefined4 *)
                   DataStructures::
                   Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                   ::Get((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                          *)&DAT_00951454,(SystemAddress *)local_70);
          local_50 = *puVar7;
          uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)local_70,true,'|');
          printf("Connection to peer %d at ip %s failed :(\n",local_50,uVar15);
          DataStructures::
          Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
          ::Delete((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                    *)&DAT_00951454,(SystemAddress *)local_70);
          local_74._0_2_ = CONCAT11((char)local_50,5);
          pvVar5 = (void *)NetworkManager::sharedNetworkManager();
          NetworkManager::sendDataToServer(pvVar5,(int)&local_74,true);
        }
        else {
          printf("Connection to unknown failed (cid: %d)...\n",local_54);
        }
        break;
      case 0x12:
        puts("ID_ALREADY_CONNECTED");
        iVar12 = isOnline();
        if (iVar12 != 0) {
          shutdown();
          connectToNextServer(in_r0);
        }
        break;
      case 0x13:
        uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)local_70,true,'|');
        uVar6 = RakNet::RakNetGUID::ToString((RakNetGUID *)(local_70 + 0x18));
        printf("ID_NEW_INCOMING_CONNECTION from %s with GUID %s\n",uVar15,uVar6);
        break;
      case 0x14:
        uVar15 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                           ((vector<ServerListObject,std::allocator<ServerListObject>> *)
                            &DAT_009513f4,DAT_009513ec);
        uVar15 = FUN_007c5300(uVar15);
        printf("ID_NO_FREE_INCOMING_CONNECTIONS on %s \n",uVar15);
        DAT_00951405 = '\0';
        DAT_009513f2 = 0;
        uVar15 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                           ((vector<ServerListObject,std::allocator<ServerListObject>> *)
                            &DAT_009513f4,DAT_009513ec);
        uVar15 = FUN_007c5300(uVar15);
        printf("Connection to server %s attempt failed\n",uVar15);
        pCVar9 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        iVar12 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                           ((vector<ServerListObject,std::allocator<ServerListObject>> *)
                            &DAT_009513f4,DAT_009513ec);
        uVar15 = FUN_007c5300(iVar12 + 4);
        pCVar8 = (CCObject *)cocos2d::CCString::createWithFormat("CONNECTION FAILED: %s",uVar15);
        cocos2d::CCNotificationCenter::postNotification(pCVar9,"ServerStatusUpdate",pCVar8);
        connectToNextServer(in_r0);
        break;
      case 0x15:
        DAT_00951405 = '\0';
        DAT_009513f2 = 0;
        puts("ID_DISCONNECTION_NOTIFICATION");
        break;
      case 0x16:
        local_48 = DetermineConnectionIdentity(local_70);
        printf("ID_CONNECTION_LOST, cid: %d\n",local_48);
        uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)local_70,true,'|');
        printf("  More info: address: %s",uVar15);
        if (DAT_00951405 != '\0') {
          pCVar9 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter()
          ;
          cocos2d::CCNotificationCenter::postNotification(pCVar9,"ConnectionLost",(CCObject *)0x0);
          DAT_00951405 = '\0';
          DAT_009513f2 = 0;
        }
        break;
      case 0x17:
        puts("We are banned from this server.");
        break;
      case 0x18:
        local_4c = DetermineConnectionIdentity(local_70);
        printf("ID_INVALID_PASSWORD, cid: %d\n",local_4c);
        break;
      case 0x19:
        puts("ID_INCOMPATIBLE_PROTOCOL_VERSION");
        break;
      default:
        printf("Unknown message id: %d\n",(uint)bVar2);
        break;
      case 0x1f:
        puts("ID_REMOTE_DISCONNECTION_NOTIFICATION");
        break;
      case 0x20:
        puts("ID_REMOTE_CONNECTION_LOST");
        break;
      case 0x21:
        puts("ID_REMOTE_NEW_INCOMING_CONNECTION");
        break;
      case 0x3e:
        puts("ID_NAT_TARGET_NOT_CONNECTED...");
        UpdatePendingNATPeers
                  (*(undefined4 *)(local_70 + 0x18),*(undefined4 *)(local_70 + 0x1c),
                   *(undefined4 *)(local_70 + 0x20),*(undefined4 *)(local_70 + 0x24),1);
        break;
      case 0x3f:
        puts("ID_NAT_TARGET_UNRESPONSIVE...");
        UpdatePendingNATPeers
                  (*(undefined4 *)(local_70 + 0x18),*(undefined4 *)(local_70 + 0x1c),
                   *(undefined4 *)(local_70 + 0x20),*(undefined4 *)(local_70 + 0x24),1);
        break;
      case 0x40:
        puts("ID_NAT_CONNECTION_TO_TARGET_LOST...");
        UpdatePendingNATPeers
                  (*(undefined4 *)(local_70 + 0x18),*(undefined4 *)(local_70 + 0x1c),
                   *(undefined4 *)(local_70 + 0x20),*(undefined4 *)(local_70 + 0x24),1);
        break;
      case 0x41:
        puts("ID_NAT_ALREADY_IN_PROGRESS");
        break;
      case 0x42:
        puts("ID_NAT_PUNCHTHROUGH_FAILED...");
        iVar12 = UpdatePendingNATPeers
                           (*(undefined4 *)(local_70 + 0x18),*(undefined4 *)(local_70 + 0x1c),
                            *(undefined4 *)(local_70 + 0x20),*(undefined4 *)(local_70 + 0x24),1);
        local_74 = iVar12;
        if (*(char *)(*(int *)(local_70 + 0x30) + 1) != '\0') {
          if ((DAT_009435f8 == '\0') || (DAT_00951414 == 0)) {
            _local_78 = CONCAT11((char)iVar12,5);
            pvVar5 = (void *)NetworkManager::sharedNetworkManager();
            NetworkManager::sendDataToServer(pvVar5,(int)&local_78,true);
          }
          else {
            uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)local_70,true,'|');
            printf("--Requesting forwarding to peer %d (%s)\n",iVar12,uVar15);
            iVar12 = DAT_00951414;
            pcVar4 = RakNet::RakString::operator_cast_to_char_((RakString *)&DAT_00951400);
            RakNet::SystemAddress::SystemAddress((SystemAddress *)&local_30,pcVar4,0x11ca);
            RakNet::UDPProxyClient::RequestForwarding
                      (iVar12,local_30,uStack_2c,uStack_28,local_24,local_20,DAT_009513c4,
                       DAT_009513c8,DAT_009513cc,DAT_009513d0,DAT_009513d4,*(undefined4 *)local_70,
                       *(undefined4 *)(local_70 + 4),*(undefined4 *)(local_70 + 8),
                       *(undefined4 *)(local_70 + 0xc),*(undefined4 *)(local_70 + 0x10),7000,0);
            cVar3 = DataStructures::
                    Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                    ::Has((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                           *)&DAT_009514a8,(SystemAddress *)local_70);
            if (cVar3 != '\x01') {
              DataStructures::
              Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
              ::Set((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                     *)&DAT_009514a8,(SystemAddress *)local_70,&local_74);
            }
          }
        }
        break;
      case 0x43:
        puts("ID_NAT_PUNCHTHROUGH_SUCCEEDED!!!");
        local_74 = UpdatePendingNATPeers
                             (*(undefined4 *)(local_70 + 0x18),*(undefined4 *)(local_70 + 0x1c),
                              *(undefined4 *)(local_70 + 0x20),*(undefined4 *)(local_70 + 0x24),0);
        if (*(char *)(*(int *)(local_70 + 0x30) + 1) != '\0') {
          local_30 = *(undefined4 *)local_70;
          uStack_2c = *(undefined4 *)(local_70 + 4);
          uStack_28 = *(undefined4 *)(local_70 + 8);
          local_24 = *(undefined4 *)(local_70 + 0xc);
          local_20 = *(undefined4 *)(local_70 + 0x10);
          uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)&local_30,true,'|');
          printf("Connecting to peer address: %s\n",uVar15);
          piVar10 = DAT_00951408;
          pcVar16 = *(code **)(*DAT_00951408 + 0x38);
          uVar15 = RakNet::SystemAddress::ToString((SystemAddress *)&local_30,false,'|');
          uVar6 = RakNet::SystemAddress::GetPort((SystemAddress *)&local_30);
          local_5c = (*pcVar16)(piVar10,uVar15,uVar6,"withObject:TextureResource",0x1a,0,0,0xc,500,0
                               );
          if (local_5c != 0) {
            puts("FAILED TO START CONNECTING TO PEER, AHHH!");
          }
          DataStructures::
          Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
          ::Set((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                 *)&DAT_00951454,(SystemAddress *)&local_30,&local_74);
        }
        break;
      case 0x52:
        printf("ID_FCM2_NEW_HOST:");
        break;
      case 0x61:
        local_58 = (uint)*(byte *)(*(int *)(local_70 + 0x30) + 1);
        uVar15 = RakNet::NATTypeDetectionResultToString(local_58);
        uVar6 = RakNet::NATTypeDetectionResultToStringFriendly(local_58);
        printf("NAT Type is %s (%s)\n",uVar15,uVar6);
        puts("Using NATPunchthrough can connect to systems using:");
        for (local_68 = 0; local_68 < 8; local_68 = local_68 + 1) {
          iVar12 = RakNet::CanConnect(local_58,local_68);
          if (iVar12 != 0) {
            uVar15 = RakNet::NATTypeDetectionResultToString(local_68);
            printf("%s",uVar15);
          }
        }
        if ((local_58 == 3) || (local_58 == 4)) {
          puts("Note: Your router must support UPNP or have the user manually forward ports.");
          puts("Otherwise not all connections may complete.");
        }
        break;
      case 0x86:
      case 0x87:
      case 0x89:
      case 0x8a:
      case 0x8c:
      case 0x8d:
        local_64 = 0xffffffff;
        if ((bVar2 == 0x8c) || (bVar2 == 0x8d)) {
          for (local_60 = 0; uVar1 = local_60,
              uVar11 = DataStructures::
                       Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                       ::Size((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                               *)&DAT_0095143c), uVar1 < uVar11; local_60 = local_60 + 1) {
            this = (RakNetGUID *)
                   DataStructures::
                   Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                   ::operator[]((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                                 *)&DAT_0095143c,local_60);
            iVar12 = RakNet::RakNetGUID::operator==(this,(RakNetGUID *)(local_70 + 0x18));
            if (iVar12 != 0) {
              local_64 = DataStructures::
                         Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                         ::GetKeyAtIndex((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                                          *)&DAT_0095143c,local_60);
              break;
            }
          }
        }
        iVar12 = processMessage((Packet *)in_r0,(int)local_70);
        if (iVar12 != 0) {
          if ((bVar2 != 0x8c) && (bVar2 != 0x8d)) {
            local_64 = (uint)*(byte *)(*(int *)(local_70 + 0x30) + 1);
          }
          if ((int)local_64 < 0) {
            puts("Got peer message from a peer we don\'t know about :(");
          }
          local_3c = (CCString *)cocos2d::CCString::createWithFormat("%d",local_64);
          pCVar13 = operator_new(0x1c);
          cocos2d::extension::CCData::CCData
                    (pCVar13,(uchar *)(*(int *)(local_70 + 0x30) + 2),*(int *)(local_70 + 0x28) - 2)
          ;
          local_38 = pCVar13;
          cocos2d::CCObject::autorelease((CCObject *)pCVar13);
          pNVar14 = (NetworkManager *)NetworkManager::sharedNetworkManager();
          uVar15 = cocos2d::CCString::getCString(local_3c);
          FUN_0079a3f4(&local_78);
          FUN_007c6a60(&local_74,uVar15,&local_78);
          NetworkManager::readMessage(pNVar14,local_38,&local_74);
          FUN_007c5914(&local_74);
          FUN_0079a3fc(&local_78);
        }
        break;
      case 0x88:
      case 0x8b:
        iVar12 = processMessage((Packet *)in_r0,(int)local_70);
        if (iVar12 != 0) {
          pCVar13 = operator_new(0x1c);
          cocos2d::extension::CCData::CCData
                    (pCVar13,(uchar *)(*(int *)(local_70 + 0x30) + 1),*(int *)(local_70 + 0x28) - 1)
          ;
          local_34 = pCVar13;
          cocos2d::CCObject::autorelease((CCObject *)pCVar13);
          pNVar14 = (NetworkManager *)NetworkManager::sharedNetworkManager();
          FUN_0079a3f4(&local_78);
          FUN_007c6a60(&local_74,&DAT_007e5bc8,&local_78);
          NetworkManager::readMessage(pNVar14,local_34,&local_74);
          FUN_007c5914(&local_74);
          FUN_0079a3fc(&local_78);
        }
      }
      if (DAT_00951408 == (int *)0x0) {
        local_70 = (Packet *)0x0;
      }
      else {
        (**(code **)(*DAT_00951408 + 0x68))(DAT_00951408,local_70);
        local_70 = (Packet *)(**(code **)(*DAT_00951408 + 100))(DAT_00951408);
      }
      param_1 = (float)RakSleep(0);
    }
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(param_1);
  }
  return;
}

// ---- RakNetDelegate::sendData  @ 0x3d20c4
/* RakNetDelegate::sendData(void const*, int, bool) */

void __thiscall
RakNetDelegate::sendData(RakNetDelegate *this,void *param_1,int param_2,bool param_3)

{
  char cVar1;
  bool bVar2;
  int *piVar3;
  int iVar4;
  code *pcVar5;
  undefined4 local_4c;
  AddressOrGUID aAStack_48 [44];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if (DAT_00951408 != (int *)0x0) {
    DAT_009514dc = 0x86;
    memcpy(&DAT_009514dd,param_1,param_2);
    local_4c = 3;
    if (!param_3) {
      local_4c = 1;
      DAT_009514dc = 0x89;
    }
    cVar1 = *(char *)param_1;
    iVar4 = ShouldSendToServer();
    piVar3 = DAT_00951408;
    if ((((iVar4 == 0) && (cVar1 != '!')) && (cVar1 != '\'')) && ((cVar1 != '&' && (cVar1 != '\a')))
       ) {
      bVar2 = false;
    }
    else {
      bVar2 = true;
    }
    if (bVar2) {
      pcVar5 = *(code **)(*DAT_00951408 + 0x54);
      RakNet::AddressOrGUID::AddressOrGUID(aAStack_48,(RakNetGUID *)&DAT_00951418);
      (*pcVar5)(piVar3,&DAT_009514dc,param_2 + 1,1,local_4c,0,aAStack_48,0,0);
    }
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::sendDataToPeers  @ 0x3d21dc
/* RakNetDelegate::sendDataToPeers(void const*, int, cocos2d::CCArray, bool) */

void RakNetDelegate::sendDataToPeers(void)

{
  return;
}

// ---- RakNetDelegate::sendDataToPeer  @ 0x3d21ec
/* RakNetDelegate::sendDataToPeer(void const*, int, std::string, bool) */

void __thiscall
RakNetDelegate::sendDataToPeer
          (undefined4 param_1_00,void *param_1,size_t param_2,undefined4 param_4,char param_5)

{
  int *piVar1;
  char cVar2;
  char *pcVar3;
  int iVar4;
  code *pcVar5;
  int local_5c;
  undefined4 local_58;
  int local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  AddressOrGUID aAStack_40 [44];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (DAT_00951408 != (int *)0x0) {
    local_58 = 3;
    local_50 = DAT_00951418;
    uStack_4c = DAT_0095141c;
    uStack_48 = DAT_00951420;
    uStack_44 = DAT_00951424;
    pcVar3 = (char *)FUN_007c5300(param_4);
    local_5c = atoi(pcVar3);
    local_54 = 0;
    cVar2 = DataStructures::
            Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
            ::Has((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
                   *)&DAT_0095143c,&local_5c);
    if (cVar2 == '\x01') {
      DAT_009518dc = 0x8c;
      memcpy(&DAT_009518dd,param_1,param_2);
      local_54 = param_2 + 1;
      if (param_5 != '\x01') {
        local_58 = 1;
        DAT_009518dc = 0x8d;
      }
    }
    else {
      DAT_009518dc = 0x87;
      pcVar3 = (char *)FUN_007c5300(param_4);
      iVar4 = atoi(pcVar3);
      DAT_009518dd = (undefined1)iVar4;
      memcpy(&DAT_009518de,param_1,param_2);
      local_54 = param_2 + 2;
      if (param_5 != '\x01') {
        local_58 = 1;
        DAT_009518dc = 0x8a;
      }
    }
    piVar1 = DAT_00951408;
    pcVar5 = *(code **)(*DAT_00951408 + 0x54);
    RakNet::AddressOrGUID::AddressOrGUID(aAStack_40,(RakNetGUID *)&local_50);
    (*pcVar5)(piVar1,&DAT_009518dc,local_54,1,local_58,0,aAStack_40,0,0);
  }
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::sendDataToServer  @ 0x3d236c
/* RakNetDelegate::sendDataToServer(void const*, int, bool) */

void __thiscall
RakNetDelegate::sendDataToServer(RakNetDelegate *this,void *param_1,int param_2,bool param_3)

{
  int *piVar1;
  code *pcVar2;
  undefined4 local_4c;
  AddressOrGUID aAStack_48 [44];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if (DAT_00951408 != (int *)0x0) {
    DAT_00951cdc = 0x86;
    memcpy(&DAT_00951cdd,param_1,param_2);
    piVar1 = DAT_00951408;
    local_4c = 3;
    if (!param_3) {
      local_4c = 1;
      DAT_00951cdc = 0x89;
    }
    pcVar2 = *(code **)(*DAT_00951408 + 0x54);
    RakNet::AddressOrGUID::AddressOrGUID(aAStack_48,(RakNetGUID *)&DAT_00951418);
    (*pcVar2)(piVar1,&DAT_00951cdc,param_2 + 1,1,local_4c,0,aAStack_48,0,0);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetDelegate::sendRequestNumPlayers  @ 0x3d2448
/* RakNetDelegate::sendRequestNumPlayers() */

void __thiscall RakNetDelegate::sendRequestNumPlayers(RakNetDelegate *this)

{
  undefined1 local_9 [5];
  
  local_9[0] = 8;
  sendDataToServer(this,local_9,1,true);
  return;
}

// ---- RakNetDelegate::shutdown  @ 0x3d246c
/* RakNetDelegate::shutdown() */

void RakNetDelegate::shutdown(void)

{
  if (DAT_00951408 != (RakPeerInterface *)0x0) {
    (**(code **)(*(int *)DAT_00951408 + 0x40))(DAT_00951408,300,0,3);
    DataStructures::
    Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
    ::Clear((Map<int,RakNet::RakNetGUID,&(int_DataStructures::defaultMapKeyComparison<int>(int_const&,int_const&))>
             *)&DAT_0095143c);
    DataStructures::
    Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
    ::Clear((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
             *)&DAT_00951454);
    DataStructures::
    Map<RakNet::RakNetGUID,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
    ::Clear((Map<RakNet::RakNetGUID,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
             *)&DAT_00951480);
    DataStructures::
    Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
    ::Clear((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
             *)&DAT_009514a8);
    RakNet::RakPeerInterface::DestroyInstance(DAT_00951408);
    DAT_00951408 = (RakPeerInterface *)0x0;
    DAT_009513f0 = 0;
    DAT_009513f2 = 0;
    DAT_00951405 = 0;
    if (DAT_00951414 != (int *)0x0) {
      (**(code **)(*DAT_00951414 + 4))(DAT_00951414);
    }
    DAT_00951414 = (int *)0x0;
    if (DAT_0095140c != (int *)0x0) {
      (**(code **)(*DAT_0095140c + 4))(DAT_0095140c);
    }
    DAT_0095140c = (int *)0x0;
    if (DAT_00951410 != (int *)0x0) {
      (**(code **)(*DAT_00951410 + 4))(DAT_00951410);
    }
    DAT_00951410 = (int *)0x0;
  }
  return;
}

// ---- RakNetDelegate::addServerIP  @ 0x3d25cc
/* RakNetDelegate::addServerIP(ServerListObject) */

void __thiscall RakNetDelegate::addServerIP(RakNetDelegate *this,ServerListObject *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  ServerListObject *pSVar3;
  int iVar4;
  uint uVar5;
  uint local_14;
  ServerListObject aSStack_10 [8];
  
  uVar1 = FUN_007c5300(param_2);
  uVar2 = FUN_007c5300(param_2 + 4);
  printf("addServerIP: %s : %s\n",uVar1,uVar2,uVar2,param_2,this);
  local_14 = 0;
  while( true ) {
    uVar5 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                      ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
    if (uVar5 <= local_14) {
      std::vector<ServerListObject,std::allocator<ServerListObject>>::push_back
                ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4,param_2)
      ;
      return;
    }
    pSVar3 = (ServerListObject *)
             std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                       ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4,
                        local_14);
    ServerListObject::ServerListObject(aSStack_10,pSVar3);
    iVar4 = FUN_007c567c(aSStack_10,param_2);
    ServerListObject::~ServerListObject(aSStack_10);
    if (iVar4 == 0) break;
    local_14 = local_14 + 1;
  }
  return;
}

// ---- RakNetDelegate::shuffleServerList  @ 0x3d2698
/* RakNetDelegate::shuffleServerList() */

void RakNetDelegate::shuffleServerList(void)

{
  time_t tVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  ServerListObject *pSVar4;
  uint uVar5;
  uint local_1c;
  ServerListObject aSStack_18 [12];
  
  tVar1 = time((time_t *)0x0);
  FUN_003ce3d8(tVar1);
  uVar2 = std::vector<ServerListObject,std::allocator<ServerListObject>>::begin
                    ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
  uVar3 = std::vector<ServerListObject,std::allocator<ServerListObject>>::end
                    ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
  std::
  random_shuffle<__gnu_cxx::__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>,int(&)(int)>
            (uVar2,uVar3,0x3cf37d);
  for (local_1c = 0;
      uVar5 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                        ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4)
      , local_1c < uVar5; local_1c = local_1c + 1) {
    pSVar4 = (ServerListObject *)
             std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                       ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4,
                        local_1c);
    ServerListObject::ServerListObject(aSStack_18,pSVar4);
    ServerListObject::~ServerListObject(aSStack_18);
  }
  return;
}

// ---- RakNetDelegate::updateServerList  @ 0x3d273c
/* RakNetDelegate::updateServerList() */

void RakNetDelegate::updateServerList(void)

{
  int iVar1;
  NetworkManager aNStack_14 [16];
  
  NetworkManager::sharedNetworkManager();
  NetworkManager::getServerList(aNStack_14);
  iVar1 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                    ((vector<ServerListObject,std::allocator<ServerListObject>> *)aNStack_14);
  if (iVar1 != 0) {
    std::vector<ServerListObject,std::allocator<ServerListObject>>::clear
              ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
    std::vector<ServerListObject,std::allocator<ServerListObject>>::operator=
              ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4,aNStack_14
              );
  }
  std::vector<ServerListObject,std::allocator<ServerListObject>>::~vector
            ((vector<ServerListObject,std::allocator<ServerListObject>> *)aNStack_14);
  return;
}

// ---- RakNetDelegate::getCurrentServerName  @ 0x3d27a8
/* RakNetDelegate::getCurrentServerName() */

undefined4 RakNetDelegate::getCurrentServerName(void)

{
  uint uVar1;
  undefined4 in_r0;
  uint uVar2;
  int iVar3;
  undefined4 uVar4;
  undefined1 auStack_c [4];
  
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(in_r0,"DEFAULT",auStack_c);
  FUN_0079a3fc(auStack_c);
  uVar1 = DAT_009513ec;
  uVar2 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                    ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
  if (uVar1 < uVar2) {
    iVar3 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                      ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4,
                       DAT_009513ec);
    uVar4 = FUN_007c5300(iVar3 + 4);
    FUN_007c5e70(in_r0,uVar4);
  }
  return in_r0;
}

// ---- RakNetDelegate::nextServerIndex  @ 0x3d284c
/* RakNetDelegate::nextServerIndex() */

void __thiscall RakNetDelegate::nextServerIndex(RakNetDelegate *this)

{
  undefined4 uVar1;
  
  setServerIndex(this,DAT_009513ec + 1);
  uVar1 = RakNet::RakString::C_String((RakString *)&DAT_00951400);
  printf("Choosing New Server: %s\n",uVar1);
  return;
}

// ---- RakNetDelegate::setServerIndex  @ 0x3d288c
/* RakNetDelegate::setServerIndex(int) */

void __thiscall RakNetDelegate::setServerIndex(RakNetDelegate *this,int param_1)

{
  uint uVar1;
  undefined4 uVar2;
  char *pcVar3;
  uint local_18;
  RakString aRStack_c [4];
  
  uVar1 = std::vector<ServerListObject,std::allocator<ServerListObject>>::size
                    ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4);
  local_18 = param_1;
  if (uVar1 <= (uint)param_1) {
    local_18 = 0;
  }
  DAT_009513ec = local_18;
  uVar2 = std::vector<ServerListObject,std::allocator<ServerListObject>>::operator[]
                    ((vector<ServerListObject,std::allocator<ServerListObject>> *)&DAT_009513f4,
                     local_18);
  pcVar3 = (char *)FUN_007c5300(uVar2);
  RakNet::RakString::RakString(aRStack_c,pcVar3);
  RakNet::RakString::operator=((RakString *)&DAT_00951400,aRStack_c);
  RakNet::RakString::~RakString(aRStack_c);
  return;
}

// ---- RakNetDelegate::isOnline  @ 0x3d2920
/* RakNetDelegate::isOnline() */

undefined1 RakNetDelegate::isOnline(void)

{
  undefined1 uVar1;
  
  uVar1 = DAT_00951405;
  if (DAT_00951408 == 0) {
    uVar1 = 0;
  }
  return uVar1;
}
