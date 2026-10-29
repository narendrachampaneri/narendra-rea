// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 9 functions

// ---- UDPProxyHandler::OnForwardingSuccess  @ 0x3cf3c8
/* UDPProxyHandler::OnForwardingSuccess(char const*, unsigned short, RakNet::SystemAddress,
   RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*) */

void UDPProxyHandler::OnForwardingSuccess(undefined4 param_1,char *param_2,ushort param_3)

{
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  undefined4 in_stack_00000048;
  int local_38;
  int local_34;
  SystemAddress aSStack_30 [20];
  int local_1c;
  
  local_1c = __stack_chk_guard;
  uVar1 = RakNet::SystemAddress::ToString((SystemAddress *)&stack0x00000024,false,'|');
  printf("Datagrams forwarded by proxy %s:%i to target %s.\n",param_2,(uint)param_3,uVar1);
  puts("Connecting to proxy, which will be received by target.");
  RakNet::SystemAddress::SystemAddress(aSStack_30,param_2,param_3);
  uVar1 = RakNet::SystemAddress::ToString(aSStack_30,true,'|');
  printf("Connecting to peer address: %s\n",uVar1);
  local_34 = (**(code **)(*DAT_00951408 + 0x38))
                       (DAT_00951408,param_2,param_3,"withObject:TextureResource",0x1a,0,0,0xc,500,0
                       );
  if (local_34 != 0) {
    puts("FAILED TO START CONNECTING TO PEER, AHHH!");
  }
  iVar2 = DataStructures::
          Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
          ::Has((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                 *)&DAT_009514a8,(SystemAddress *)&stack0x00000024);
  if (iVar2 == 0) {
    puts("CRAP!  WE DON\'T HAVE THEIR PID!!!");
  }
  else {
    piVar3 = (int *)DataStructures::
                    Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                    ::Get((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
                           *)&DAT_009514a8,(SystemAddress *)&stack0x00000024);
    local_38 = *piVar3;
    printf("--Their pid is %d btw\n",local_38);
    DataStructures::
    Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
    ::Set((Map<RakNet::SystemAddress,int,&(int_DataStructures::defaultMapKeyComparison<RakNet::SystemAddress>(RakNet::SystemAddress_const&,RakNet::SystemAddress_const&))>
           *)&DAT_00951454,aSStack_30,&local_38);
  }
  if (local_1c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- UDPProxyHandler::OnForwardingNotification  @ 0x3cf534
/* UDPProxyHandler::OnForwardingNotification(char const*, unsigned short, RakNet::SystemAddress,
   RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*) */

void UDPProxyHandler::OnForwardingNotification(undefined4 param_1,undefined4 param_2,ushort param_3)

{
  undefined4 uVar1;
  
  uVar1 = RakNet::SystemAddress::ToString((SystemAddress *)&stack0x00000010,false,'|');
  printf("Source %s has setup forwarding to us through proxy %s:%i.\n",uVar1,param_2,(uint)param_3);
  return;
}

// ---- UDPProxyHandler::OnNoServersOnline  @ 0x3cf574
/* UDPProxyHandler::OnNoServersOnline(RakNet::SystemAddress, RakNet::SystemAddress,
   RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*) */

void UDPProxyHandler::OnNoServersOnline(void)

{
  puts("Failure: No servers logged into coordinator.");
  return;
}

// ---- UDPProxyHandler::OnRecipientNotConnected  @ 0x3cf59c
/* UDPProxyHandler::OnRecipientNotConnected(RakNet::SystemAddress, RakNet::SystemAddress,
   RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*) */

void UDPProxyHandler::OnRecipientNotConnected(void)

{
  puts("Failure: Recipient not connected to coordinator.");
  return;
}

// ---- UDPProxyHandler::OnAllServersBusy  @ 0x3cf5c4
/* UDPProxyHandler::OnAllServersBusy(RakNet::SystemAddress, RakNet::SystemAddress,
   RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*) */

void UDPProxyHandler::OnAllServersBusy(void)

{
  puts("Failure: No servers have available forwarding ports.");
  return;
}

// ---- UDPProxyHandler::OnForwardingInProgress  @ 0x3cf5ec
/* UDPProxyHandler::OnForwardingInProgress(char const*, unsigned short, RakNet::SystemAddress,
   RakNet::SystemAddress, RakNet::SystemAddress, RakNet::RakNetGUID, RakNet::UDPProxyClient*) */

void UDPProxyHandler::OnForwardingInProgress(void)

{
  puts("Notification: Forwarding already in progress.");
  return;
}

// ---- UDPProxyHandler::UDPProxyHandler  @ 0x3cf618
/* UDPProxyHandler::UDPProxyHandler() */

UDPProxyHandler * __thiscall UDPProxyHandler::UDPProxyHandler(UDPProxyHandler *this)

{
  RakNet::UDPProxyClientResultHandler::UDPProxyClientResultHandler
            ((UDPProxyClientResultHandler *)this);
  *(undefined ***)this = &PTR__UDPProxyHandler_1_00919330;
  return this;
}

// ---- UDPProxyHandler::~UDPProxyHandler  @ 0x3d50ac
/* WARNING: Removing unreachable block (ram,0x003d50ce) */
/* UDPProxyHandler::~UDPProxyHandler() */

UDPProxyHandler * __thiscall UDPProxyHandler::~UDPProxyHandler(UDPProxyHandler *this)

{
  *(undefined ***)this = &PTR__UDPProxyHandler_1_00919330;
  RakNet::UDPProxyClientResultHandler::~UDPProxyClientResultHandler
            ((UDPProxyClientResultHandler *)this);
  return this;
}

// ---- UDPProxyHandler::~UDPProxyHandler  @ 0x3d50e8
/* UDPProxyHandler::~UDPProxyHandler() */

UDPProxyHandler * __thiscall UDPProxyHandler::~UDPProxyHandler(UDPProxyHandler *this)

{
  ~UDPProxyHandler(this);
  operator_delete(this);
  return this;
}
