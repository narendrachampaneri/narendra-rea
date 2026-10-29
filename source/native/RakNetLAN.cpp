// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- RakNetLAN::RakNetLAN  @ 0x3d54e8
/* RakNetLAN::RakNetLAN() */

RakNetLAN * __thiscall RakNetLAN::RakNetLAN(RakNetLAN *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00919568;
  *(undefined4 *)(this + 0xec) = 0x2473;
  *(undefined4 *)(this + 0xf0) = 0x2473;
  *(undefined4 *)(this + 0xf4) = 0x2473;
  *(undefined4 *)(this + 0xf8) = 0x247d;
  *(undefined4 *)(this + 0xfc) = 0x2472;
  std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::map
            ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)(this + 0x100))
  ;
  std::map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>>::map
            ((map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>> *
             )(this + 0x118));
  return this;
}

// ---- RakNetLAN::~RakNetLAN  @ 0x3d557c
/* WARNING: Removing unreachable block (ram,0x003d55b6) */
/* RakNetLAN::~RakNetLAN() */

RakNetLAN * __thiscall RakNetLAN::~RakNetLAN(RakNetLAN *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00919568;
  std::map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>>::~map
            ((map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>> *
             )(this + 0x118));
  std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::~map
            ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)(this + 0x100))
  ;
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- RakNetLAN::~RakNetLAN  @ 0x3d55d0
/* RakNetLAN::~RakNetLAN() */

RakNetLAN * __thiscall RakNetLAN::~RakNetLAN(RakNetLAN *this)

{
  ~RakNetLAN(this);
  operator_delete(this);
  return this;
}

// ---- RakNetLAN::init  @ 0x3d55ec
/* RakNetLAN::init() */

bool __thiscall RakNetLAN::init(RakNetLAN *this)

{
  char cVar1;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0xe4) = 0;
    *(undefined4 *)(this + 0xe8) = 0;
  }
  return cVar1 == '\x01';
}

// ---- RakNetLAN::hostSession  @ 0x3d5624
/* RakNetLAN::hostSession(int, std::string) */

void __thiscall RakNetLAN::hostSession(RakNetLAN *this,undefined4 param_1,undefined4 param_3)

{
  RakNetLocalServer *pRVar1;
  CCString *this_00;
  undefined4 uVar2;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  shutdown(this);
  pRVar1 = operator_new(0x118);
  RakNetLocalServer::RakNetLocalServer(pRVar1);
  *(RakNetLocalServer **)(this + 0xe4) = pRVar1;
  pRVar1 = *(RakNetLocalServer **)(this + 0xe4);
  this_00 = (CCString *)cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(this + 0xec));
  uVar2 = cocos2d::CCString::getCString(this_00);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_18,uVar2,auStack_1c);
  FUN_007c64e8(auStack_14,param_3);
  RakNetLocalServer::startServer(pRVar1,auStack_18,param_1,auStack_14);
  FUN_007c5914(auStack_14);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_1c);
  return;
}

// ---- RakNetLAN::findSessions  @ 0x3d56e8
/* RakNetLAN::findSessions() */

void __thiscall RakNetLAN::findSessions(RakNetLAN *this)

{
  undefined4 uVar1;
  int *piVar2;
  _func_void_float *p_Var3;
  float extraout_s0;
  SocketDescriptor aSStack_48 [34];
  undefined2 local_26;
  int local_14;
  
  local_14 = __stack_chk_guard;
  shutdown(this);
  uVar1 = RakNet::RakPeerInterface::GetInstance();
  *(undefined4 *)(this + 0xe8) = uVar1;
  RakNet::SocketDescriptor::SocketDescriptor
            (aSStack_48,(ushort)*(undefined4 *)(this + 0xfc),(char *)0x0);
  local_26 = 2;
  (**(code **)(**(int **)(this + 0xe8) + 8))(*(undefined4 *)(this + 0xe8),0);
  (**(code **)(**(int **)(this + 0xe8) + 0xc))
            (*(undefined4 *)(this + 0xe8),1,aSStack_48,1,0xfffe7961);
  piVar2 = (int *)cocos2d::CCDirector::sharedDirector();
  p_Var3 = (_func_void_float *)(**(code **)(*piVar2 + 0x30))(piVar2);
  cocos2d::CCScheduler::scheduleSelector(p_Var3,(CCObject *)0x3d57b9,extraout_s0,false);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- RakNetLAN::pingForServer  @ 0x3d57b8
/* RakNetLAN::pingForServer(float) */

void RakNetLAN::pingForServer(float param_1)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  CCNotificationCenter *this;
  CCObject *pCVar5;
  code *pcVar6;
  undefined4 uVar7;
  float extraout_s0;
  float extraout_s0_00;
  float fVar8;
  undefined1 auStack_1c [4];
  undefined4 local_18;
  undefined4 local_14 [2];
  
  FUN_0079a3f4(local_14);
  FUN_007c6a60(auStack_1c,"255.255.255.255",local_14);
  FUN_0079a3fc(local_14);
  pcVar6 = *(code **)(**(int **)(in_r0 + 0xe8) + 0xa4);
  uVar7 = *(undefined4 *)(in_r0 + 0xe8);
  uVar1 = FUN_007c5300(auStack_1c);
  (*pcVar6)(uVar7,uVar1,*(uint *)(in_r0 + 0xf0) & 0xffff,1,0);
  local_18 = std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::find
                       ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                        (in_r0 + 0x100),(int *)(in_r0 + 0xf0));
  local_14[0] = std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::end
                          ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                           (in_r0 + 0x100));
  iVar2 = std::_Rb_tree_iterator<std::pair<int_const,int>>::operator!=
                    ((_Rb_tree_iterator<std::pair<int_const,int>> *)&local_18,
                     (_Rb_tree_iterator *)local_14);
  fVar8 = extraout_s0;
  if (iVar2 != 0) {
    piVar3 = (int *)std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::
                    operator[]((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>
                                *)(in_r0 + 0x100),(int *)(in_r0 + 0xf0));
    piVar4 = (int *)std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::
                    operator[]((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>
                                *)(in_r0 + 0x100),(int *)(in_r0 + 0xf0));
    *piVar3 = *piVar4 + 1;
    piVar3 = (int *)std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::
                    operator[]((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>
                                *)(in_r0 + 0x100),(int *)(in_r0 + 0xf0));
    fVar8 = extraout_s0_00;
    if (3 < *piVar3) {
      std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::erase
                ((int *)(in_r0 + 0x100));
      this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      uVar1 = std::
              map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>>::
              operator[]((map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>>
                          *)(in_r0 + 0x118),(int *)(in_r0 + 0xf0));
      uVar1 = FUN_007c5300(uVar1);
      FUN_0079a3f4(&local_18);
      FUN_007c6a60(local_14,uVar1,&local_18);
      pCVar5 = (CCObject *)cocos2d::CCString::create((string *)local_14);
      cocos2d::CCNotificationCenter::postNotification(this,"REMOVE_LOCAL_SESSION",pCVar5);
      FUN_007c5914(local_14);
      fVar8 = (float)FUN_0079a3fc(&local_18);
    }
  }
  *(int *)(in_r0 + 0xf0) = *(int *)(in_r0 + 0xf0) + 1;
  if (*(int *)(in_r0 + 0xf8) < *(int *)(in_r0 + 0xf0)) {
    *(undefined4 *)(in_r0 + 0xf0) = *(undefined4 *)(in_r0 + 0xf4);
  }
  updateNetwork(fVar8);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- RakNetLAN::getUnusedPort  @ 0x3d5988
/* RakNetLAN::getUnusedPort() */

int __thiscall RakNetLAN::getUnusedPort(RakNetLAN *this)

{
  int iVar1;
  int local_14;
  undefined4 local_10;
  undefined4 local_c [2];
  
  local_14 = *(int *)(this + 0xf4);
  while( true ) {
    if (*(int *)(this + 0xf8) <= local_14) {
      return *(int *)(this + 0xf4);
    }
    local_10 = std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::find
                         ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                          (this + 0x100),&local_14);
    local_c[0] = std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::end
                           ((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>> *)
                            (this + 0x100));
    iVar1 = std::_Rb_tree_iterator<std::pair<int_const,int>>::operator==
                      ((_Rb_tree_iterator<std::pair<int_const,int>> *)&local_10,
                       (_Rb_tree_iterator *)local_c);
    if (iVar1 != 0) break;
    local_14 = local_14 + 1;
  }
  return local_14;
}

// ---- RakNetLAN::updateNetwork  @ 0x3d59f4
/* RakNetLAN::updateNetwork(float) */

void RakNetLAN::updateNetwork(float param_1)

{
  RakNetLAN *in_r0;
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  CCNotificationCenter *this;
  CCObject *pCVar4;
  undefined1 auStack_148 [4];
  uint uStack_144;
  string asStack_140 [4];
  int local_13c;
  string asStack_138 [4];
  SystemAddress *local_134;
  int local_130;
  int local_12c;
  BitStream aBStack_128 [276];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if (*(int *)(in_r0 + 0xe4) != 0) {
    RakNetLocalServer::updateServer(param_1);
  }
  if (*(int *)(in_r0 + 0xe8) != 0) {
    local_134 = (SystemAddress *)0x0;
    local_134 = (SystemAddress *)
                (**(code **)(**(int **)(in_r0 + 0xe8) + 100))(*(undefined4 *)(in_r0 + 0xe8));
    while (local_134 != (SystemAddress *)0x0) {
      if (local_134 == (SystemAddress *)0x0) {
        RakSleep(0x1e);
        goto LAB_003d5c7e;
      }
      if (**(char **)(local_134 + 0x30) == '\x1c') {
        RakNet::BitStream::BitStream
                  (aBStack_128,*(uchar **)(local_134 + 0x30),*(uint *)(local_134 + 0x28),false);
        RakNet::BitStream::IgnoreBytes(aBStack_128,1);
        RakNet::BitStream::Read<unsigned_int>(aBStack_128,&uStack_144);
        local_130 = *(int *)(local_134 + 0x28) + -5;
        if (local_130 != 0) {
          local_12c = *(int *)(local_134 + 0x30) + 5;
          FUN_0079a3f4(asStack_138);
          FUN_007c6a60(asStack_140,local_12c,asStack_138);
          FUN_0079a3fc(asStack_138);
          local_13c = RakNet::SystemAddress::GetPort(local_134);
          puVar1 = (undefined4 *)
                   std::map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>::
                   operator[]((map<int,int,std::less<int>,std::allocator<std::pair<int_const,int>>>
                               *)(in_r0 + 0x100),&local_13c);
          *puVar1 = 0;
          uVar2 = std::
                  map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>>
                  ::operator[]((map<int,std::string,std::less<int>,std::allocator<std::pair<int_const,std::string>>>
                                *)(in_r0 + 0x118),&local_13c);
          uVar3 = RakNet::SystemAddress::ToString(local_134,true,'|');
          FUN_007c5e70(uVar2,uVar3);
          uVar2 = getUnusedPort(in_r0);
          *(undefined4 *)(in_r0 + 0xec) = uVar2;
          this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
          uVar2 = RakNet::SystemAddress::ToString(local_134,true,'|');
          FUN_0079a3f4(auStack_148);
          FUN_007c6a60(asStack_138,uVar2,auStack_148);
          pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_138);
          uVar2 = cocos2d::CCString::create(asStack_140);
          pCVar4 = (CCObject *)cocos2d::CCArray::create(pCVar4,uVar2,0);
          cocos2d::CCNotificationCenter::postNotification(this,"ADD_LOCAL_SESSION",pCVar4);
          FUN_007c5914(asStack_138);
          FUN_0079a3fc(auStack_148);
          FUN_007c5914(asStack_140);
        }
        RakNet::BitStream::~BitStream(aBStack_128);
      }
      (**(code **)(**(int **)(in_r0 + 0xe8) + 0x68))(*(undefined4 *)(in_r0 + 0xe8),local_134);
      local_134 = (SystemAddress *)
                  (**(code **)(**(int **)(in_r0 + 0xe8) + 100))(*(undefined4 *)(in_r0 + 0xe8));
    }
  }
  RakSleep(0);
LAB_003d5c7e:
  if (local_14 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- RakNetLAN::shutdown  @ 0x3d5ca0
/* RakNetLAN::shutdown() */

void __thiscall RakNetLAN::shutdown(RakNetLAN *this)

{
  int *piVar1;
  CCScheduler *this_00;
  CCNotificationCenter *this_01;
  
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  this_00 = (CCScheduler *)(**(code **)(*piVar1 + 0x30))(piVar1);
  cocos2d::CCScheduler::unscheduleAllForTarget(this_00,(CCObject *)this);
  this_01 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_01,"REMOVE_ALL_LOCAL_SESSIONS");
  if (*(int *)(this + 0xe4) != 0) {
    RakNetLocalServer::stopServer(*(RakNetLocalServer **)(this + 0xe4));
    if (*(int *)(this + 0xe4) != 0) {
      (**(code **)(**(int **)(this + 0xe4) + 8))(*(undefined4 *)(this + 0xe4));
    }
    *(undefined4 *)(this + 0xe4) = 0;
  }
  if (*(int *)(this + 0xe8) != 0) {
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),500,0,3);
    RakNet::RakPeerInterface::DestroyInstance(*(RakPeerInterface **)(this + 0xe8));
    *(undefined4 *)(this + 0xe8) = 0;
  }
  return;
}

// ---- RakNetLAN::isSearching  @ 0x3d5d58
/* RakNetLAN::isSearching() */

undefined4 RakNetLAN::isSearching(void)

{
  return 0;
}

// ---- RakNetLAN::canSearch  @ 0x3d5d64
/* RakNetLAN::canSearch() */

undefined4 RakNetLAN::canSearch(void)

{
  return 0;
}

// ---- RakNetLAN::cancelSearch  @ 0x3d5d70
/* RakNetLAN::cancelSearch() */

void RakNetLAN::cancelSearch(void)

{
  return;
}

// ---- RakNetLAN::create  @ 0x4377e0
/* RakNetLAN::create() */

RakNetLAN * RakNetLAN::create(void)

{
  bool bVar1;
  RakNetLAN *this;
  int iVar2;
  
  this = operator_new(0x130);
  RakNetLAN(this);
  if ((this == (RakNetLAN *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (RakNetLAN *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (RakNetLAN *)0x0;
  }
  return this;
}
