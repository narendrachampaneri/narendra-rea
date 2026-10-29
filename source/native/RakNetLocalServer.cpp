// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- RakNetLocalServer::RakNetLocalServer  @ 0x3d7dac
/* RakNetLocalServer::RakNetLocalServer() */

RakNetLocalServer * __thiscall RakNetLocalServer::RakNetLocalServer(RakNetLocalServer *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00919718;
  FUN_007c51b0(this + 0xe4);
  DataStructures::
  Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
  ::Map((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
         *)(this + 0xf0));
  *(undefined4 *)(this + 0xe8) = 0;
  FUN_007c5e70(this + 0xe4,"60000");
  return this;
}

// ---- RakNetLocalServer::~RakNetLocalServer  @ 0x3d7e30
/* WARNING: Removing unreachable block (ram,0x003d7e66) */
/* RakNetLocalServer::~RakNetLocalServer() */

RakNetLocalServer * __thiscall RakNetLocalServer::~RakNetLocalServer(RakNetLocalServer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00919718;
  DataStructures::
  Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
  ::~Map((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
          *)(this + 0xf0));
  FUN_007c5914(this + 0xe4);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- RakNetLocalServer::~RakNetLocalServer  @ 0x3d7e80
/* RakNetLocalServer::~RakNetLocalServer() */

RakNetLocalServer * __thiscall RakNetLocalServer::~RakNetLocalServer(RakNetLocalServer *this)

{
  ~RakNetLocalServer(this);
  operator_delete(this);
  return this;
}

// ---- RakNetLocalServer::stopServer  @ 0x3d7e9c
/* RakNetLocalServer::stopServer() */

void __thiscall RakNetLocalServer::stopServer(RakNetLocalServer *this)

{
  if (*(int *)(this + 0xe8) != 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),500,0,1);
    RakNet::RakPeerInterface::DestroyInstance(*(RakPeerInterface **)(this + 0xe8));
  }
  return;
}

// ---- RakNetLocalServer::startServer  @ 0x3d7edc
/* RakNetLocalServer::startServer(std::string, int, std::string) */

void __thiscall
RakNetLocalServer::startServer
          (RakNetLocalServer *this,undefined4 param_2,uint param_3,undefined4 param_4)

{
  undefined4 uVar1;
  char *pcVar2;
  int iVar3;
  size_t sVar4;
  code *pcVar5;
  undefined4 uVar6;
  SocketDescriptor aSStack_50 [34];
  undefined2 local_2e;
  int local_1c;
  
  local_1c = __stack_chk_guard;
  thunk_FUN_007c653c(this + 0xe4,param_2);
  uVar1 = RakNet::RakPeerInterface::GetInstance();
  *(undefined4 *)(this + 0xe8) = uVar1;
  (**(code **)(**(int **)(this + 0xe8) + 0x30))
            (*(undefined4 *)(this + 0xe8),"socketDescriptor*",0x11);
  (**(code **)(**(int **)(this + 0xe8) + 0xe4))
            (*(undefined4 *)(this + 0xe8),30000,DAT_00952134,DAT_00952138,DAT_0095213c,DAT_00952140,
             DAT_00952144);
  pcVar2 = (char *)FUN_007c5300(this + 0xe4);
  iVar3 = atoi(pcVar2);
  RakNet::SocketDescriptor::SocketDescriptor(aSStack_50,(ushort)iVar3,(char *)0x0);
  local_2e = 2;
  (**(code **)(**(int **)(this + 0xe8) + 8))(*(undefined4 *)(this + 0xe8),0);
  iVar3 = (**(code **)(**(int **)(this + 0xe8) + 0xc))
                    (*(undefined4 *)(this + 0xe8),param_3,aSStack_50,1,0xfffe7961);
  printf("Starting the server with max connections:%d \n",param_3);
  (**(code **)(**(int **)(this + 0xe8) + 0x24))(*(undefined4 *)(this + 0xe8),param_3 & 0xffff);
  (**(code **)(**(int **)(this + 0xe8) + 0xb4))(*(undefined4 *)(this + 0xe8),1);
  (**(code **)(**(int **)(this + 0xe8) + 0x10c))(*(undefined4 *)(this + 0xe8),1000);
  pcVar5 = *(code **)(**(int **)(this + 0xe8) + 0xbc);
  uVar6 = *(undefined4 *)(this + 0xe8);
  uVar1 = FUN_007c5300(param_4);
  pcVar2 = (char *)FUN_007c5300(param_4);
  sVar4 = strlen(pcVar2);
  (*pcVar5)(uVar6,uVar1,sVar4 + 1);
  if (iVar3 == 0) {
    puts("Server started, waiting for connections.");
  }
  else {
    puts("Server failed to start.  Terminating.");
    stopServer(this);
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- RakNetLocalServer::getMaxPeerID  @ 0x3d80ac
/* RakNetLocalServer::getMaxPeerID() */

byte __thiscall RakNetLocalServer::getMaxPeerID(RakNetLocalServer *this)

{
  byte bVar1;
  int *piVar2;
  uint uVar3;
  uint local_c;
  
  bVar1 = 1;
  for (local_c = 0;
      uVar3 = DataStructures::
              Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
              ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                      *)(this + 0xf0)), local_c < uVar3; local_c = local_c + 1) {
    piVar2 = (int *)DataStructures::
                    Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                    ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                                  *)(this + 0xf0),local_c);
    if (bVar1 < *(byte *)(*piVar2 + 0x10)) {
      piVar2 = (int *)DataStructures::
                      Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                      ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                                    *)(this + 0xf0),local_c);
      bVar1 = *(byte *)(*piVar2 + 0x10);
    }
  }
  return bVar1;
}

// ---- RakNetLocalServer::addClient  @ 0x3d8128
/* RakNetLocalServer::addClient(RakNet::RakNetGUID) */

void RakNetLocalServer::addClient
               (RakNetLocalServer *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  char cVar1;
  FClientEntry *pFVar2;
  undefined2 local_24;
  FClientEntry local_22;
  FClientEntry *local_20;
  undefined4 local_1c;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  pFVar2 = operator_new(0x18);
  FClientEntry::FClientEntry(pFVar2);
  local_20 = pFVar2;
  RakNet::RakNetGUID::operator=((RakNetGUID *)pFVar2,(RakNetGUID *)&local_8);
  pFVar2 = local_20;
  cVar1 = getMaxPeerID(param_1);
  pFVar2[0x10] = (FClientEntry)(cVar1 + '\x01');
  DataStructures::
  Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
  ::Set((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
         *)(param_1 + 0xf0),(RakNetGUID *)&local_8,&local_20);
  local_24 = 0x188;
  local_22 = local_20[0x10];
  sendToClient(param_1,&local_24,3,*(undefined4 *)(local_20 + 0xc),*(undefined4 *)local_20,
               *(undefined4 *)(local_20 + 4),*(undefined4 *)(local_20 + 8),
               *(undefined4 *)(local_20 + 0xc));
  local_1c = (uint)CONCAT12(local_20[0x10],0x288);
  broadcast(param_1,&local_1c,4,*(undefined4 *)(local_20 + 0xc),*(undefined4 *)local_20,
            *(undefined4 *)(local_20 + 4),*(undefined4 *)(local_20 + 8),
            *(undefined4 *)(local_20 + 0xc));
  return;
}

// ---- RakNetLocalServer::removeClient  @ 0x3d8200
/* RakNetLocalServer::removeClient(RakNet::RakNetGUID, bool) */

void RakNetLocalServer::removeClient
               (RakNetLocalServer *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 local_18;
  void *local_14;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  cVar2 = DataStructures::
          Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
          ::Has((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                 *)(param_1 + 0xf0),(RakNetGUID *)&local_8);
  if (cVar2 == '\x01') {
    piVar3 = (int *)DataStructures::
                    Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                    ::Get((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                           *)(param_1 + 0xf0),(RakNetGUID *)&local_8);
    local_14 = (void *)*piVar3;
    if (local_14 != (void *)0x0) {
      DataStructures::
      Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
      ::Delete((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                *)(param_1 + 0xf0),(RakNetGUID *)&local_8);
      iVar4 = DataStructures::
              Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
              ::Has((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                     *)(param_1 + 0xf0),(RakNetGUID *)&local_8);
      if (iVar4 != 0) {
        puts("ERROR, we have a problem with how the MAP works");
        local_18 = (FClientEntry *)0x0;
        DataStructures::
        Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
        ::Set((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
               *)(param_1 + 0xf0),(RakNetGUID *)&local_8,(FClientEntry **)&local_18);
      }
      uVar1 = (uint)local_18 >> 0x18;
      local_18._0_3_ = CONCAT12(*(undefined1 *)((int)local_14 + 0x10),0x688);
      local_18 = (FClientEntry *)CONCAT13((char)uVar1,(undefined3)local_18);
      broadcast(param_1,(uchar *)&local_18,3);
      uVar5 = DataStructures::
              Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
              ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                      *)(param_1 + 0xf0));
      printf("Client left, %d remain.\n",uVar5);
      operator_delete(local_14);
    }
  }
  return;
}

// ---- RakNetLocalServer::GetReliability  @ 0x3d82dc
/* RakNetLocalServer::GetReliability(unsigned char*) */

undefined4 __thiscall RakNetLocalServer::GetReliability(RakNetLocalServer *this,uchar *param_1)

{
  undefined4 uVar1;
  
  if (((*param_1 == 0x89) || (*param_1 == 0x8a)) || (*param_1 == 0x8b)) {
    uVar1 = 1;
  }
  else {
    uVar1 = 3;
  }
  return uVar1;
}

// ---- RakNetLocalServer::sendToClient  @ 0x3d8308
/* RakNetLocalServer::sendToClient(unsigned char*, int, RakNet::RakNetGUID) */

void RakNetLocalServer::sendToClient(RakNetLocalServer *param_1,uchar *param_2,int param_3)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  AddressOrGUID aAStack_48 [44];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if ((param_2 != (uchar *)0x0) && (0 < param_3)) {
    pcVar2 = *(code **)(**(int **)(param_1 + 0xe8) + 0x54);
    uVar3 = *(undefined4 *)(param_1 + 0xe8);
    uVar1 = GetReliability(param_1,param_2);
    RakNet::AddressOrGUID::AddressOrGUID(aAStack_48,(RakNetGUID *)&stack0x00000000);
    (*pcVar2)(uVar3,param_2,param_3,1,uVar1,0,aAStack_48,0,0);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetLocalServer::broadcast  @ 0x3d8388
/* RakNetLocalServer::broadcast(unsigned char*, int) */

void __thiscall RakNetLocalServer::broadcast(RakNetLocalServer *this,uchar *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  uint uVar3;
  code *pcVar4;
  undefined4 uVar5;
  uint local_4c;
  AddressOrGUID aAStack_48 [44];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if ((param_1 != (uchar *)0x0) && (0 < param_2)) {
    for (local_4c = 0;
        uVar3 = DataStructures::
                Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                        *)(this + 0xf0)), local_4c < uVar3; local_4c = local_4c + 1) {
      pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x54);
      uVar5 = *(undefined4 *)(this + 0xe8);
      uVar1 = GetReliability(this,param_1);
      puVar2 = (undefined4 *)
               DataStructures::
               Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
               ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                             *)(this + 0xf0),local_4c);
      RakNet::AddressOrGUID::AddressOrGUID(aAStack_48,(RakNetGUID *)*puVar2);
      (*pcVar4)(uVar5,param_1,param_2,1,uVar1,0,aAStack_48,0,0);
    }
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- RakNetLocalServer::broadcast  @ 0x3d8440
/* RakNetLocalServer::broadcast(unsigned char*, int, RakNet::RakNetGUID) */

void RakNetLocalServer::broadcast(RakNetLocalServer *param_1,uchar *param_2,int param_3)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  code *pcVar5;
  undefined4 uVar6;
  uint local_4c;
  AddressOrGUID aAStack_48 [44];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  if ((param_2 != (uchar *)0x0) && (0 < param_3)) {
    for (local_4c = 0;
        uVar4 = DataStructures::
                Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                        *)(param_1 + 0xf0)), local_4c < uVar4; local_4c = local_4c + 1) {
      puVar1 = (undefined4 *)
               DataStructures::
               Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
               ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                             *)(param_1 + 0xf0),local_4c);
      iVar2 = RakNet::RakNetGUID::operator!=((RakNetGUID *)*puVar1,(RakNetGUID *)&stack0x00000000);
      if (iVar2 != 0) {
        pcVar5 = *(code **)(**(int **)(param_1 + 0xe8) + 0x54);
        uVar6 = *(undefined4 *)(param_1 + 0xe8);
        uVar3 = GetReliability(param_1,param_2);
        puVar1 = (undefined4 *)
                 DataStructures::
                 Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                 ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                               *)(param_1 + 0xf0),local_4c);
        RakNet::AddressOrGUID::AddressOrGUID(aAStack_48,(RakNetGUID *)*puVar1);
        (*pcVar5)(uVar6,param_2,param_3,1,uVar3,0,aAStack_48,0,0);
      }
    }
  }
  if (local_1c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- RakNetLocalServer::sendClientPeerMessage  @ 0x3d8518
/* RakNetLocalServer::sendClientPeerMessage(RakNet::Packet*) */

void __thiscall RakNetLocalServer::sendClientPeerMessage(RakNetLocalServer *this,Packet *param_1)

{
  char cVar1;
  undefined4 *puVar2;
  int *piVar3;
  uint uVar4;
  FClientEntry *pFVar5;
  uint local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  cVar1 = DataStructures::
          Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
          ::Has((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                 *)(this + 0xf0),(RakNetGUID *)(param_1 + 0x18));
  if (cVar1 == '\x01') {
    puVar2 = (undefined4 *)
             DataStructures::
             Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
             ::Get((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                    *)(this + 0xf0),(RakNetGUID *)(param_1 + 0x18));
    pFVar5 = (FClientEntry *)*puVar2;
    if ((pFVar5 == (FClientEntry *)0x0) || (*(uint *)(param_1 + 0x28) < 2)) {
      printf("Got bad data or client did not exist from peer message, len: %d\n",
             *(undefined4 *)(param_1 + 0x28));
    }
    else {
      cVar1 = processMessage(this,param_1,pFVar5,true);
      if (cVar1 == '\x01') {
        cVar1 = *(char *)(*(int *)(param_1 + 0x30) + 1);
        local_20 = DAT_00952148;
        uStack_1c = DAT_0095214c;
        uStack_18 = DAT_00952150;
        uStack_14 = DAT_00952154;
        for (local_28 = 0;
            uVar4 = DataStructures::
                    Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                    ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                            *)(this + 0xf0)), local_28 < uVar4; local_28 = local_28 + 1) {
          piVar3 = (int *)DataStructures::
                          Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                          ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                                        *)(this + 0xf0),local_28);
          if (cVar1 == *(char *)(*piVar3 + 0x10)) {
            puVar2 = (undefined4 *)
                     DataStructures::
                     Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                     ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                                   *)(this + 0xf0),local_28);
            RakNet::RakNetGUID::operator=((RakNetGUID *)&local_20,(RakNetGUID *)*puVar2);
            break;
          }
        }
        if (**(char **)(param_1 + 0x30) == -0x76) {
          DAT_00952178 = 0x89;
        }
        else {
          DAT_00952178 = 0x86;
        }
        DAT_00952179 = pFVar5[0x10];
        memcpy(&DAT_0095217a,(void *)(*(int *)(param_1 + 0x30) + 2),*(int *)(param_1 + 0x28) - 2);
        sendToClient(this,&DAT_00952178,*(undefined4 *)(param_1 + 0x28),&DAT_00952178,local_20,
                     uStack_1c,uStack_18,uStack_14);
      }
      else {
        printf("Server intercepted peer message: %d\n",(uint)*(byte *)(*(int *)(param_1 + 0x30) + 3)
              );
      }
    }
  }
  return;
}

// ---- RakNetLocalServer::sendClientMessage  @ 0x3d86a0
/* RakNetLocalServer::sendClientMessage(RakNet::Packet*) */

void __thiscall RakNetLocalServer::sendClientMessage(RakNetLocalServer *this,Packet *param_1)

{
  char cVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  FClientEntry *pFVar4;
  
  cVar1 = DataStructures::
          Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
          ::Has((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                 *)(this + 0xf0),(RakNetGUID *)(param_1 + 0x18));
  if (cVar1 == '\x01') {
    puVar3 = (undefined4 *)
             DataStructures::
             Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
             ::Get((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                    *)(this + 0xf0),(RakNetGUID *)(param_1 + 0x18));
    pFVar4 = (FClientEntry *)*puVar3;
    if ((pFVar4 == (FClientEntry *)0x0) || (*(uint *)(param_1 + 0x28) < 2)) {
      printf("Got bad data or client did not exist, len: %d\n",*(undefined4 *)(param_1 + 0x28));
    }
    else {
      cVar1 = processMessage(this,param_1,pFVar4,false);
      if (cVar1 == '\x01') {
        if (**(char **)(param_1 + 0x30) == -0x77) {
          DAT_00952178 = 0x89;
        }
        else {
          DAT_00952178 = 0x86;
        }
        DAT_00952179 = pFVar4[0x10];
        memcpy(&DAT_0095217a,(void *)(*(int *)(param_1 + 0x30) + 1),*(int *)(param_1 + 0x28) - 1);
        broadcast(this,&DAT_00952178,*(int *)(param_1 + 0x28) + 1,&DAT_00952178,
                  *(undefined4 *)pFVar4,*(undefined4 *)(pFVar4 + 4),*(undefined4 *)(pFVar4 + 8),
                  *(undefined4 *)(pFVar4 + 0xc));
      }
    }
  }
  else {
    uVar2 = RakNet::RakNetGUID::ToString((RakNetGUID *)(param_1 + 0x18));
    printf("Client not found:%s\n",uVar2);
  }
  return;
}

// ---- RakNetLocalServer::updateServer  @ 0x3d87a8
/* RakNetLocalServer::updateServer(float) */

void RakNetLocalServer::updateServer(float param_1)

{
  RakNetLocalServer *in_r0;
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  code *pcVar4;
  undefined4 uVar5;
  uint local_54;
  Packet *local_50;
  AddressOrGUID aAStack_48 [44];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  for (local_54 = 0;
      uVar3 = DataStructures::
              Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
              ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                      *)(in_r0 + 0xf0)), local_54 < uVar3; local_54 = local_54 + 1) {
    pcVar4 = *(code **)(**(int **)(in_r0 + 0xe8) + 0x74);
    uVar5 = *(undefined4 *)(in_r0 + 0xe8);
    puVar1 = (undefined4 *)
             DataStructures::
             Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
             ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                           *)(in_r0 + 0xf0),local_54);
    RakNet::AddressOrGUID::AddressOrGUID(aAStack_48,(RakNetGUID *)*puVar1);
    iVar2 = (*pcVar4)(uVar5,aAStack_48);
    if (((iVar2 != 0) && (iVar2 != 1)) && (iVar2 != 2)) {
      printf("Trying to remove client %d with bad connection state %d\n",local_54,iVar2);
      puVar1 = (undefined4 *)
               DataStructures::
               Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
               ::operator[]((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                             *)(in_r0 + 0xf0),local_54);
      puVar1 = (undefined4 *)*puVar1;
      removeClient(in_r0,puVar1[3],*puVar1,puVar1[1],puVar1[2],puVar1[3],1);
      local_54 = local_54 - 1;
    }
  }
  local_50 = (Packet *)(**(code **)(**(int **)(in_r0 + 0xe8) + 100))(*(undefined4 *)(in_r0 + 0xe8));
  while (local_50 != (Packet *)0x0) {
    switch(**(undefined1 **)(local_50 + 0x30)) {
    case 1:
    case 2:
      break;
    default:
      printf("Local Server: Unknown message id: %d\n",(uint)**(byte **)(local_50 + 0x30));
      break;
    case 0x10:
      puts("Local Server: Our connection request has been accepted.");
      break;
    case 0x13:
      puts("Local Server: A connection is incoming.");
      addClient(in_r0,*(undefined4 *)(local_50 + 0x24),*(undefined4 *)(local_50 + 0x18),
                *(undefined4 *)(local_50 + 0x1c),*(undefined4 *)(local_50 + 0x20),
                *(undefined4 *)(local_50 + 0x24));
      (**(code **)(**(int **)(in_r0 + 0xe8) + 0xc4))
                (aAStack_48,*(undefined4 *)(in_r0 + 0xe8),*(undefined4 *)local_50,
                 *(undefined4 *)(local_50 + 4),*(undefined4 *)(local_50 + 8),
                 *(undefined4 *)(local_50 + 0xc),*(undefined4 *)(local_50 + 0x10),0);
      uVar5 = RakNet::SystemAddress::ToString((SystemAddress *)aAStack_48,true,'|');
      printf("--Their internal id is: %s\n",uVar5);
      break;
    case 0x14:
      puts("Local Server: The server is full.");
      break;
    case 0x15:
      puts("Local Server: A client has disconnected.");
      removeClient(in_r0,*(undefined4 *)(local_50 + 0x24),*(undefined4 *)(local_50 + 0x18),
                   *(undefined4 *)(local_50 + 0x1c),*(undefined4 *)(local_50 + 0x20),
                   *(undefined4 *)(local_50 + 0x24),0);
      break;
    case 0x16:
      puts("Local Server: A client lost the connection.");
      removeClient(in_r0,*(undefined4 *)(local_50 + 0x24),*(undefined4 *)(local_50 + 0x18),
                   *(undefined4 *)(local_50 + 0x1c),*(undefined4 *)(local_50 + 0x20),
                   *(undefined4 *)(local_50 + 0x24),1);
      break;
    case 0x1f:
      puts("Local Server: Another client has disconnected.");
      break;
    case 0x20:
      puts("Local Server: Another client has lost the connection.");
      break;
    case 0x21:
      puts("Local Server: Another client has connected.");
      break;
    case 0x86:
    case 0x89:
      sendClientMessage(in_r0,local_50);
      break;
    case 0x87:
    case 0x8a:
      sendClientPeerMessage(in_r0,local_50);
    }
    RakSleep(0);
    (**(code **)(**(int **)(in_r0 + 0xe8) + 0x68))(*(undefined4 *)(in_r0 + 0xe8),local_50);
    local_50 = (Packet *)
               (**(code **)(**(int **)(in_r0 + 0xe8) + 100))(*(undefined4 *)(in_r0 + 0xe8));
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetLocalServer::processMessage  @ 0x3d8c80
/* RakNetLocalServer::processMessage(RakNet::Packet*, FClientEntry*, bool) */

undefined4 __thiscall
RakNetLocalServer::processMessage
          (RakNetLocalServer *this,Packet *param_1,FClientEntry *param_2,bool param_3)

{
  undefined2 uVar1;
  undefined4 uVar2;
  undefined1 local_1e;
  undefined4 local_1c;
  byte *local_18;
  int local_14;
  
  if (param_3) {
    local_1e = *(undefined1 *)(*(int *)(param_1 + 0x30) + 1);
    local_18 = (byte *)(*(int *)(param_1 + 0x30) + 3);
    local_14 = *(int *)(param_1 + 0x28) + -3;
  }
  else {
    local_1e = *(undefined1 *)(*(int *)(param_1 + 0x30) + 1);
    local_18 = (byte *)(*(int *)(param_1 + 0x30) + 2);
    local_14 = *(int *)(param_1 + 0x28) + -2;
  }
  switch(local_1e) {
  case 5:
    printf("Peer %d failed to connect to %d :(\n",(uint)(byte)param_2[0x10],(uint)*local_18);
  default:
    uVar2 = 1;
    break;
  case 7:
    local_1c = CONCAT22(local_1c._2_2_,0x788);
    sendToClient(this,&local_1c,2,*(undefined4 *)(param_2 + 0xc),*(undefined4 *)param_2,
                 *(undefined4 *)(param_2 + 4),*(undefined4 *)(param_2 + 8),
                 *(undefined4 *)(param_2 + 0xc));
    uVar2 = 0;
    break;
  case 8:
    local_1c = 0x888;
    uVar1 = DataStructures::
            Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
            ::Size((Map<RakNet::RakNetGUID,FClientEntry*,&(int_DataStructures::defaultMapKeyComparison<RakNet::RakNetGUID>(RakNet::RakNetGUID_const&,RakNet::RakNetGUID_const&))>
                    *)(this + 0xf0));
    local_1c = CONCAT22(uVar1,(undefined2)local_1c);
    sendToClient(this,&local_1c,4,*(undefined4 *)(param_2 + 0xc),*(undefined4 *)param_2,
                 *(undefined4 *)(param_2 + 4),*(undefined4 *)(param_2 + 8),
                 *(undefined4 *)(param_2 + 0xc));
    uVar2 = 0;
  }
  return uVar2;
}
