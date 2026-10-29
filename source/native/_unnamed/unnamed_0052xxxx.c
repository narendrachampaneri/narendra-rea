// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 192 functions

// ---- FUN_0052022c  @ 0x52022c
function<void(std::function<void()>)> *
FUN_0052022c(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x51fcd7;
  local_38 = 0;
  local_48 = (code *)0x51fab5;
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_0051f8b6(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005202f0  @ 0x5202f0
function<void(std::function<void()>)> *
FUN_005202f0(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::ResponseStatus_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051fd1c_1;
  local_38 = 0;
  local_48 = (code *)0x51fbcd;
  local_28 = 0;
  std::function<void(gpg::ResponseStatus_const&)>::swap
            ((function<void(gpg::ResponseStatus_const&)> *)local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::ResponseStatus_const&)>::swap(afStack_30,(function *)(param_1 + 0x10));
  FUN_0051f9a4(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005203bc  @ 0x5203bc
function<void(std::function<void()>)> *
FUN_005203bc(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::MultiplayerStatus_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051fd4c_1;
  local_38 = 0;
  local_48 = (code *)0x51fb41;
  local_28 = 0;
  std::function<void(gpg::MultiplayerStatus_const&)>::swap
            ((function<void(gpg::MultiplayerStatus_const&)> *)local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::MultiplayerStatus_const&)>::swap(afStack_30,(function *)(param_1 + 0x10));
  FUN_0051f9b8(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00520494  @ 0x520494
function<void(std::function<void()>)> *
FUN_00520494(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051fd7c_1;
  local_38 = 0;
  local_48 = (code *)0x51fc59;
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_0051f9cc(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00520558  @ 0x520558
function<void(std::function<void()>)> *
FUN_00520558(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x521411;
  local_38 = 0;
  local_48 = (code *)0x51fafb;
  local_28 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
            ((function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> *)
             local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_0051f9f4(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00520630  @ 0x520630
function<void(std::function<void()>)> *
FUN_00520630(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0051fdc2_1;
  local_38 = 0;
  local_48 = (code *)0x51fc13;
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_0051fa36(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005206f4  @ 0x5206f4
function<void(std::function<void()>)> *
FUN_005206f4(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x521d63;
  local_38 = 0;
  local_48 = (code *)0x51fb87;
  local_28 = 0;
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::swap
            ((function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> *)
             local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_0051fa5e(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005207a4  @ 0x5207a4
function<void(std::function<void()>)> *
FUN_005207a4(function<void(std::function<void()>)> *param_1,function *param_2,_Any_data *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> afStack_28 [16];
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::swap<std::_Any_data>(param_3,(_Any_data *)a_Stack_48);
    uVar1 = *(undefined4 *)(param_3 + 8);
    *(undefined4 *)(param_3 + 8) = local_40;
    uVar2 = *(undefined4 *)(param_3 + 0xc);
    *(undefined4 *)(param_3 + 0xc) = local_3c;
    local_40 = uVar1;
    local_3c = uVar2;
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            (afStack_28,(function *)a_Stack_48);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
            ((function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_28);
  FUN_0051f8b6(afStack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  return param_1;
}

// ---- FUN_00520830  @ 0x520830
void FUN_00520830(function<void(std::function<void()>)> *param_1,RealTimeRoomResponse *param_2)

{
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *this;
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  RealTimeRoom aRStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::operator()
                ((function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::RealTimeRoom::RealTimeRoom(aRStack_20,(RealTimeRoom *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse
                ((RealTimeRoomResponse *)(this + 0x10),(RealTimeRoomResponse *)&local_24);
      local_38 = (code *)0x520b55;
      local_3c = (code *)0x51fe57;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_00520f48  @ 0x520f48
void FUN_00520f48(function<void(std::function<void()>)> *param_1,RoomInboxUIResponse *param_2)

{
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> *this;
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> *local_4c [2];
  code *local_44;
  code *local_40;
  function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> afStack_3c [16];
  undefined4 local_2c;
  MultiplayerInvitation aMStack_28 [20];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::operator()
                ((function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
                (afStack_3c,(function *)(param_1 + 0x10));
      local_2c = *(undefined4 *)param_2;
      gpg::MultiplayerInvitation::MultiplayerInvitation
                (aMStack_28,(MultiplayerInvitation *)(param_2 + 4));
      local_44 = (code *)0x0;
      this = operator_new(0x24);
      std::function<void(gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&)>::function
                (this,(function *)afStack_3c);
      gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse
                ((RoomInboxUIResponse *)(this + 0x10),(RoomInboxUIResponse *)&local_2c);
      local_40 = (code *)0x52114b;
      local_44 = (code *)0x51ffd5;
      local_4c[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_4c);
      std::_Function_base::~_Function_base((_Function_base *)local_4c);
      gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_28);
      std::_Function_base::~_Function_base((_Function_base *)afStack_3c);
    }
  }
  return;
}

// ---- FUN_00521180  @ 0x521180
void FUN_00521180(function<void(std::function<void()>)> *param_1,WaitingRoomUIResponse *param_2)

{
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> *this;
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  RealTimeRoom aRStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::operator()
                ((function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::RealTimeRoom::RealTimeRoom(aRStack_20,(RealTimeRoom *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse
                ((WaitingRoomUIResponse *)(this + 0x10),(WaitingRoomUIResponse *)&local_24);
      local_38 = (code *)0x521397;
      local_3c = (code *)0x520091;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_005213ba  @ 0x5213ba
void FUN_005213ba(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_005213d6  @ 0x5213d6
int FUN_005213d6(int param_1,int param_2,int param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 4) {
    if (param_3 != 0) {
      FUN_007c64e8(param_3,param_1);
    }
    param_3 = param_3 + 4;
  }
  return param_3;
}

// ---- FUN_00521410  @ 0x521410
void FUN_00521410(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  mutex *local_1c;
  undefined4 uStack_18;
  
  piVar1 = (int *)*param_1;
  local_1c = (mutex *)*piVar1;
  uStack_18 = param_3;
  std::mutex::lock(local_1c);
  iVar2 = *piVar1;
  *(undefined4 *)(iVar2 + 0xc) = *param_2;
  std::vector<std::string,std::allocator<std::string>>::operator=
            ((vector<std::string,std::allocator<std::string>> *)(iVar2 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined4 *)(iVar2 + 0x1c) = param_2[4];
  *(undefined4 *)(iVar2 + 0x20) = param_2[5];
  *(undefined1 *)(*piVar1 + 8) = 1;
  FUN_007be0e0(*piVar1 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return;
}

// ---- FUN_00521520  @ 0x521520
undefined4 *
FUN_00521520(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_14;
  undefined4 uStack_10;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  uStack_10 = param_3;
  pvVar1 = operator_new(0x60);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    FUN_0051f77c(pvVar1,*param_4);
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_0051f194_1_00924a30;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00521690  @ 0x521690
void FUN_00521690(function<void(std::function<void()>)> *param_1,PlayerSelectUIResponse *param_2)

{
  function *pfVar1;
  function *local_50 [2];
  code *local_48;
  code *local_44;
  function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> afStack_40 [16];
  undefined4 local_30;
  vector<std::string,std::allocator<std::string>> avStack_2c [12];
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::
      operator()((function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::function
                (afStack_40,(function *)(param_1 + 0x10));
      local_30 = *(undefined4 *)param_2;
      std::vector<std::string,std::allocator<std::string>>::vector(avStack_2c,param_2 + 4);
      local_20 = *(undefined4 *)(param_2 + 0x10);
      local_1c = *(undefined4 *)(param_2 + 0x14);
      local_48 = (code *)0x0;
      pfVar1 = operator_new(0x28);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&)>::swap
                (afStack_40,pfVar1);
      gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
                ((PlayerSelectUIResponse *)(pfVar1 + 0x10),(PlayerSelectUIResponse *)&local_30);
      local_44 = (code *)0x521165;
      local_48 = (code *)0x52189f;
      local_50[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_50);
      std::_Function_base::~_Function_base((_Function_base *)local_50);
      std::vector<std::string,std::allocator<std::string>>::~vector(avStack_2c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_40);
    }
  }
  return;
}

// ---- FUN_0052193a  @ 0x52193a
void FUN_0052193a(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             ((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00521956  @ 0x521956
MultiplayerInvitation *
FUN_00521956(MultiplayerInvitation *param_1,MultiplayerInvitation *param_2,
            MultiplayerInvitation *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 0x10) {
    if (param_3 != (MultiplayerInvitation *)0x0) {
      gpg::MultiplayerInvitation::MultiplayerInvitation(param_3,param_1);
    }
    param_3 = param_3 + 0x10;
  }
  return param_3;
}

// ---- FUN_00521a48  @ 0x521a48
void FUN_00521a48(function<void(std::function<void()>)> *param_1,FetchInvitationsResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> afStack_38 [16];
  FetchInvitationsResponse aFStack_28 [4];
  vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::
      operator()((function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)> *
                 )(param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::
      function(afStack_38,(function *)(param_1 + 0x10));
      gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
                (aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::RealTimeMultiplayerManager::FetchInvitationsResponse_const&)>::swap
                (afStack_38,pfVar1);
      gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
                ((FetchInvitationsResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x5213b1;
      local_40 = (code *)0x5219e5;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
                (avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_00521d62  @ 0x521d62
void FUN_00521d62(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::operator=
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             (iVar1 + 0x10),(vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00521da8  @ 0x521da8
undefined4 * FUN_00521da8(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f4c8_1_00924a50;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00521e68  @ 0x521e68
undefined4 * FUN_00521e68(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x10);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f4b4_1_00924a70;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00521ef0  @ 0x521ef0
undefined4 * FUN_00521ef0(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x10);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f4a0_1_00924a90;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00521f78  @ 0x521f78
RealTimeRoomResponse *
FUN_00521f78(RealTimeRoomResponse *param_1,int *param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  RealTimeRoomResponse *pRVar3;
  uint uVar4;
  uint local_68;
  int iStack_64;
  int local_60;
  int iStack_5c;
  unique_lock<std::mutex> auStack_54 [8];
  undefined4 local_4c;
  RealTimeRoom aRStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  RealTimeRoom aRStack_3c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_38 [4];
  RealTimeRoomResponse aRStack_34 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  pRVar3 = (RealTimeRoomResponse *)&local_40;
  gpg::RealTimeRoom::RealTimeRoom(aRStack_48);
  gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
  local_4c = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse
              (aRStack_34,(RealTimeRoomResponse *)&local_4c);
    goto LAB_00522020;
  }
  std::unique_lock<std::mutex>::unique_lock(auStack_54,(mutex *)*param_2);
  iVar1 = *param_2;
  if (*(char *)(iVar1 + 8) == '\0') {
    FUN_007bfd24(&local_68);
    uVar4 = (uint)((ulonglong)param_3 * 1000000);
    local_60 = uVar4 + local_68;
    iStack_5c = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_64 + (uint)CARRY4(uVar4,local_68);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522010;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar1 + 4),(time_point *)auStack_54);
    } while (iVar2 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522010;
  }
  else {
LAB_00522010:
    pRVar3 = (RealTimeRoomResponse *)(*param_2 + 0xc);
  }
  gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse(aRStack_34,pRVar3);
  std::unique_lock<std::mutex>::~unique_lock(auStack_54);
LAB_00522020:
  gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::RealTimeRoomResponse(param_1,aRStack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  return param_1;
}

// ---- FUN_005225a0  @ 0x5225a0
undefined4 FUN_005225a0(int *param_1,undefined4 param_2,uint param_3,int param_4)

{
  longlong lVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 local_38;
  int iStack_34;
  undefined4 local_30;
  int iStack_2c;
  unique_lock<std::mutex> auStack_28 [8];
  
  uVar2 = FUN_00529dec(0xfffffffe);
  uVar3 = FUN_00529dec(0xfffffffb);
  iVar4 = FUN_00553a80();
  if (iVar4 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    return uVar2;
  }
  std::unique_lock<std::mutex>::unique_lock(auStack_28,(mutex *)*param_1);
  iVar4 = *param_1;
  if (*(char *)(iVar4 + 8) == '\0') {
    FUN_007bfd24(&local_38);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_38);
    local_30 = (undefined4)lVar1;
    iStack_2c = iStack_34 + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_1 + 8) != '\0') goto LAB_00522626;
      iVar5 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar4 + 4),(time_point *)auStack_28);
    } while (iVar5 != 1);
    if (*(char *)(*param_1 + 8) == '\0') goto LAB_0052262a;
  }
LAB_00522626:
  uVar3 = *(undefined4 *)(*param_1 + 0xc);
LAB_0052262a:
  std::unique_lock<std::mutex>::~unique_lock(auStack_28);
  return uVar3;
}

// ---- FUN_005228e8  @ 0x5228e8
RoomInboxUIResponse *
FUN_005228e8(RoomInboxUIResponse *param_1,int *param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  RoomInboxUIResponse *pRVar3;
  uint uVar4;
  uint local_80;
  int iStack_7c;
  int local_78;
  int iStack_74;
  unique_lock<std::mutex> auStack_6c [8];
  undefined4 local_64;
  MultiplayerInvitation aMStack_60 [16];
  undefined4 local_50;
  MultiplayerInvitation aMStack_4c [16];
  RoomInboxUIResponse aRStack_3c [4];
  MultiplayerInvitation aMStack_38 [20];
  
  pRVar3 = (RoomInboxUIResponse *)&local_50;
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_60);
  gpg::MultiplayerInvitation::MultiplayerInvitation(aMStack_4c);
  local_64 = 0xfffffffe;
  local_50 = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse
              (aRStack_3c,(RoomInboxUIResponse *)&local_64);
    goto LAB_00522990;
  }
  std::unique_lock<std::mutex>::unique_lock(auStack_6c,(mutex *)*param_2);
  iVar1 = *param_2;
  if (*(char *)(iVar1 + 8) == '\0') {
    FUN_007bfd24(&local_80);
    uVar4 = (uint)((ulonglong)param_3 * 1000000);
    local_78 = uVar4 + local_80;
    iStack_74 = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_7c + (uint)CARRY4(uVar4,local_80);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522980;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar1 + 4),(time_point *)auStack_6c);
    } while (iVar2 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522980;
  }
  else {
LAB_00522980:
    pRVar3 = (RoomInboxUIResponse *)(*param_2 + 0xc);
  }
  gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse(aRStack_3c,pRVar3);
  std::unique_lock<std::mutex>::~unique_lock(auStack_6c);
LAB_00522990:
  gpg::RealTimeMultiplayerManager::RoomInboxUIResponse::RoomInboxUIResponse(param_1,aRStack_3c);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_38);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_4c);
  gpg::MultiplayerInvitation::~MultiplayerInvitation(aMStack_60);
  return param_1;
}

// ---- FUN_005229e8  @ 0x5229e8
PlayerSelectUIResponse *
FUN_005229e8(PlayerSelectUIResponse *param_1,int *param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  PlayerSelectUIResponse *pPVar4;
  undefined4 local_78;
  int iStack_74;
  unique_lock<std::mutex> auStack_70 [8];
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_38;
  int aiStack_34 [5];
  
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_68 = 0xfffffffe;
  local_50 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
              ((PlayerSelectUIResponse *)&local_38,(PlayerSelectUIResponse *)&local_68);
    goto LAB_00522aaa;
  }
  std::unique_lock<std::mutex>::unique_lock(auStack_70,(mutex *)*param_2);
  iVar2 = *param_2;
  if (*(char *)(iVar2 + 8) == '\0') {
    FUN_007bfd24(&local_78);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_78);
    local_38 = (undefined4)lVar1;
    aiStack_34[0] = iStack_74 + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522a94;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar2 + 4),(time_point *)auStack_70);
    } while (iVar3 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522a94;
    pPVar4 = (PlayerSelectUIResponse *)&local_50;
  }
  else {
LAB_00522a94:
    pPVar4 = (PlayerSelectUIResponse *)(*param_2 + 0xc);
  }
  gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
            ((PlayerSelectUIResponse *)&local_38,pPVar4);
  std::unique_lock<std::mutex>::~unique_lock(auStack_70);
LAB_00522aaa:
  gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse::PlayerSelectUIResponse
            (param_1,(PlayerSelectUIResponse *)&local_38);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)aiStack_34);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_4c);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_64);
  return param_1;
}

// ---- FUN_00522ad4  @ 0x522ad4
WaitingRoomUIResponse *
FUN_00522ad4(WaitingRoomUIResponse *param_1,int *param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  WaitingRoomUIResponse *pWVar3;
  uint uVar4;
  uint local_68;
  int iStack_64;
  int local_60;
  int iStack_5c;
  unique_lock<std::mutex> auStack_54 [8];
  undefined4 local_4c;
  RealTimeRoom aRStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  RealTimeRoom aRStack_3c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_38 [4];
  WaitingRoomUIResponse aWStack_34 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  pWVar3 = (WaitingRoomUIResponse *)&local_40;
  gpg::RealTimeRoom::RealTimeRoom(aRStack_48);
  gpg::RealTimeRoom::RealTimeRoom(aRStack_3c);
  local_4c = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse
              (aWStack_34,(WaitingRoomUIResponse *)&local_4c);
    goto LAB_00522b7c;
  }
  std::unique_lock<std::mutex>::unique_lock(auStack_54,(mutex *)*param_2);
  iVar1 = *param_2;
  if (*(char *)(iVar1 + 8) == '\0') {
    FUN_007bfd24(&local_68);
    uVar4 = (uint)((ulonglong)param_3 * 1000000);
    local_60 = uVar4 + local_68;
    iStack_5c = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_64 + (uint)CARRY4(uVar4,local_68);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522b6c;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar1 + 4),(time_point *)auStack_54);
    } while (iVar2 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522b6c;
  }
  else {
LAB_00522b6c:
    pWVar3 = (WaitingRoomUIResponse *)(*param_2 + 0xc);
  }
  gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse(aWStack_34,pWVar3);
  std::unique_lock<std::mutex>::~unique_lock(auStack_54);
LAB_00522b7c:
  gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse::WaitingRoomUIResponse(param_1,aWStack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  return param_1;
}

// ---- FUN_00522bdc  @ 0x522bdc
FetchInvitationsResponse *
FUN_00522bdc(FetchInvitationsResponse *param_1,int *param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  FetchInvitationsResponse *pFVar4;
  undefined4 local_60;
  int iStack_5c;
  unique_lock<std::mutex> auStack_58 [8];
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  int aiStack_2c [3];
  
  local_4c = 0;
  local_48 = 0;
  local_44 = 0;
  local_3c = 0;
  local_38 = 0;
  local_34 = 0;
  local_50 = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
              ((FetchInvitationsResponse *)&local_30,(FetchInvitationsResponse *)&local_50);
    goto LAB_00522c9e;
  }
  std::unique_lock<std::mutex>::unique_lock(auStack_58,(mutex *)*param_2);
  iVar2 = *param_2;
  if (*(char *)(iVar2 + 8) == '\0') {
    FUN_007bfd24(&local_60);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_60);
    local_30 = (undefined4)lVar1;
    aiStack_2c[0] = iStack_5c + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522c88;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar2 + 4),(time_point *)auStack_58);
    } while (iVar3 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_00522c88;
    pFVar4 = (FetchInvitationsResponse *)&local_40;
  }
  else {
LAB_00522c88:
    pFVar4 = (FetchInvitationsResponse *)(*param_2 + 0xc);
  }
  gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
            ((FetchInvitationsResponse *)&local_30,pFVar4);
  std::unique_lock<std::mutex>::~unique_lock(auStack_58);
LAB_00522c9e:
  gpg::RealTimeMultiplayerManager::FetchInvitationsResponse::FetchInvitationsResponse
            (param_1,(FetchInvitationsResponse *)&local_30);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             aiStack_2c);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             &local_3c);
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::~vector
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             &local_4c);
  return param_1;
}

// ---- FUN_00522cc8  @ 0x522cc8
undefined4 * FUN_00522cc8(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x20);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x14);
    gpg::MultiplayerInvitation::MultiplayerInvitation((MultiplayerInvitation *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f48c_1_00924ab0;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00522ebc  @ 0x522ebc
undefined4 * FUN_00522ebc(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x24);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x18);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f478_1_00924ad0;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00523084  @ 0x523084
undefined4 * FUN_00523084(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::RealTimeRoom::RealTimeRoom((RealTimeRoom *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f464_1_00924af0;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00523280  @ 0x523280
undefined4 * FUN_00523280(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0051f450_1_00924b10;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_005238f0  @ 0x5238f0
undefined4 * FUN_005238f0(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00523914  @ 0x523914
undefined4 * FUN_00523914(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00523944  @ 0x523944
void FUN_00523944(void *param_1)

{
  if (param_1 != (void *)0x0) {
    operator_delete(param_1);
    return;
  }
  return;
}

// ---- FUN_00523954  @ 0x523954
void FUN_00523954(uint param_1)

{
  if (0x3fffffff < param_1) {
    param_1 = FUN_007c4844();
  }
  operator_new(param_1 << 2);
  return;
}

// ---- FUN_00523980  @ 0x523980
int FUN_00523980(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  for (iVar1 = 0; param_2 != iVar1 + param_1; iVar1 = iVar1 + 4) {
    if (param_3 + iVar1 != 0) {
      *(undefined4 *)(param_3 + iVar1) = *(undefined4 *)(param_1 + iVar1);
      *(undefined1 **)(param_1 + iVar1) = &DAT_00972528;
    }
  }
  return (param_2 - param_1 & 0xfffffffcU) + param_3;
}

// ---- FUN_005239fa  @ 0x5239fa
void FUN_005239fa(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  if (pvVar1 != (void *)0x0) {
    std::vector<std::string,std::allocator<std::string>>::~vector
              ((vector<std::string,std::allocator<std::string>> *)((int)pvVar1 + 0x14));
    operator_delete(pvVar1);
    return;
  }
  return;
}

// ---- FUN_00523a14  @ 0x523a14
undefined4 * FUN_00523a14(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  *param_1 = param_2;
  param_1[1] = 0;
  puVar1 = operator_new(0x10);
  puVar1[1] = 1;
  puVar1[2] = 1;
  puVar1[3] = param_2;
  *puVar1 = &PTR_LAB_005238c8_1_00924b30;
  param_1[1] = puVar1;
  return param_1;
}

// ---- FUN_00523ac4  @ 0x523ac4
void FUN_00523ac4(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)((int)pvVar1 + 0x14));
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00523ada  @ 0x523ada
int FUN_00523ada(int param_1,int param_2,int param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 4) {
    if (param_3 != 0) {
      FUN_007c64e8(param_3,param_1);
    }
    param_3 = param_3 + 4;
  }
  return param_3;
}

// ---- FUN_00523b14  @ 0x523b14
int FUN_00523b14(int param_1,int param_2,int param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 4) {
    if (param_3 != 0) {
      FUN_007c64e8(param_3,param_1);
    }
    param_3 = param_3 + 4;
  }
  return param_3;
}

// ---- FUN_00523d18  @ 0x523d18
undefined4 *
FUN_00523d18(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,undefined4 *param_6,undefined4 *param_7,vector *param_8)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar1 = operator_new(0x20);
  *param_1 = puVar1;
  uVar6 = *param_5;
  uVar2 = *param_4;
  uVar3 = param_4[1];
  uVar5 = *param_6;
  uVar4 = *param_7;
  std::vector<std::string,std::allocator<std::string>>::vector
            ((vector<std::string,std::allocator<std::string>> *)&local_34,param_8);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = uVar2;
    puVar1[1] = uVar3;
    puVar1[2] = uVar6;
    puVar1[5] = 0;
    puVar1[6] = 0;
    puVar1[7] = 0;
    puVar1[3] = uVar5;
    puVar1[4] = uVar4;
    puVar1[5] = local_34;
    local_34 = 0;
    puVar1[6] = local_30;
    local_30 = 0;
    puVar1[7] = local_2c;
    local_2c = 0;
  }
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_34);
  uVar2 = *param_1;
  local_34 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_005238d8_1_00924b50;
  }
  local_34 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_005246ce  @ 0x5246ce
bool FUN_005246ce(uint *param_1,uint *param_2)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = param_2[1];
  uVar1 = param_1[1];
  return (int)((uVar2 - uVar1) - (uint)(*param_2 < *param_1)) < 0 !=
         (SBORROW4(uVar2,uVar1) != SBORROW4(uVar2 - uVar1,(uint)(*param_2 < *param_1)));
}

// ---- FUN_005248dc  @ 0x5248dc
void FUN_005248dc(int param_1,function<void()> *param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  int local_28;
  uint local_24;
  undefined4 uStack_20;
  
  local_28 = param_1 + 0xc;
  local_24 = (uint)param_2 & 0xffffff00;
  uStack_20 = param_3;
  std::unique_lock<std::recursive_mutex>::lock((unique_lock<std::recursive_mutex> *)&local_28);
  local_24 = CONCAT31(local_24._1_3_,1);
  puVar1 = operator_new(0x18);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[4] = 0;
    std::function<void()>::swap(param_2,(function *)(puVar1 + 2));
  }
  FUN_00799b9c(puVar1,param_1 + 0x18);
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&local_28);
  std::condition_variable_any::notify_one((condition_variable_any *)(param_1 + 0x30));
  return;
}

// ---- FUN_00524940  @ 0x524940
void FUN_00524940(int param_1,function<void()> *param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int local_28;
  uint local_24;
  undefined4 uStack_20;
  
  local_28 = param_1 + 0xc;
  local_24 = (uint)param_2 & 0xffffff00;
  uStack_20 = param_3;
  std::unique_lock<std::recursive_mutex>::lock((unique_lock<std::recursive_mutex> *)&local_28);
  uVar2 = *(undefined4 *)(param_1 + 0x18);
  local_24 = CONCAT31(local_24._1_3_,1);
  puVar1 = operator_new(0x18);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[4] = 0;
    std::function<void()>::swap(param_2,(function *)(puVar1 + 2));
  }
  FUN_00799b9c(puVar1,uVar2);
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&local_28);
  std::condition_variable_any::notify_one((condition_variable_any *)(param_1 + 0x30));
  return;
}

// ---- FUN_00524c40  @ 0x524c40
void FUN_00524c40(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 function<void()> *param_5)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 local_60;
  undefined4 uStack_5c;
  int local_58;
  undefined1 local_54;
  pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>> apStack_50 [8]
  ;
  _Function_base a_Stack_48 [16];
  pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>> apStack_38 [8]
  ;
  _Function_base a_Stack_30 [16];
  
  local_58 = param_1 + 0xc;
  local_54 = 0;
  local_60 = param_3;
  uStack_5c = param_4;
  std::unique_lock<std::recursive_mutex>::lock((unique_lock<std::recursive_mutex> *)&local_58);
  puVar1 = *(undefined4 **)(param_1 + 0x24);
  local_54 = 1;
  if (puVar1 == *(undefined4 **)(param_1 + 0x28)) {
    std::
    vector<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>,std::allocator<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>>>
    ::
    _M_emplace_back_aux<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>&,std::function<void()>>
              ((vector<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>,std::allocator<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>>>
                *)(param_1 + 0x20),(duration *)&local_60,(function *)param_5);
  }
  else {
    if (puVar1 != (undefined4 *)0x0) {
      puVar1[4] = 0;
      *puVar1 = local_60;
      puVar1[1] = uStack_5c;
      std::function<void()>::swap(param_5,(function *)(puVar1 + 2));
    }
    *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) + 0x18;
  }
  iVar3 = *(int *)(param_1 + 0x24);
  iVar2 = *(int *)(param_1 + 0x20);
  uVar4 = *(undefined4 *)(param_1 + 0x2c);
  std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>::pair
            (apStack_50,(pair *)(iVar3 + -0x18));
  std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>::pair
            (apStack_38,(pair *)apStack_50);
  std::
  __push_heap<__gnu_cxx::__normal_iterator<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>*,std::vector<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>,std::allocator<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>>>>,int,std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>,bool(*)(std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>const&,std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>const&)>
            (iVar2,(iVar3 - iVar2 >> 3) * -0x55555555 + -1,0,apStack_38,uVar4);
  std::_Function_base::~_Function_base(a_Stack_30);
  std::_Function_base::~_Function_base(a_Stack_48);
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&local_58);
  std::condition_variable_any::notify_one((condition_variable_any *)(param_1 + 0x30));
  return;
}

// ---- FUN_00524d1c  @ 0x524d1c
void FUN_00524d1c(undefined4 param_1,undefined4 param_2,uint param_3,int param_4,
                 function<void()> *param_5)

{
  undefined4 extraout_r1;
  uint local_30;
  int iStack_2c;
  function afStack_28 [8];
  undefined4 local_20;
  
  FUN_0052a2b0(&local_30);
  local_20 = 0;
  std::function<void()>::swap(param_5,afStack_28);
  FUN_00524c40(param_1,extraout_r1,local_30 + param_3,
               iStack_2c + param_4 + (uint)CARRY4(local_30,param_3),afStack_28);
  std::_Function_base::~_Function_base((_Function_base *)afStack_28);
  return;
}

// ---- FUN_00524eac  @ 0x524eac
int * FUN_00524eac(int *param_1,int param_2)

{
  uint *puVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  pair *ppVar6;
  pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>> *this;
  undefined4 uVar7;
  uint local_60;
  int iStack_5c;
  pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>> apStack_58 [8]
  ;
  _Function_base a_Stack_50 [16];
  pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>> apStack_40 [8]
  ;
  _Function_base a_Stack_38 [20];
  
  do {
    if (*(int *)(param_2 + 0x20) == *(int *)(param_2 + 0x24)) {
      iVar2 = 300000;
      iVar3 = 0;
LAB_00524f74:
      *param_1 = iVar2;
      param_1[1] = iVar3;
      return param_1;
    }
    FUN_0052a2b0(&local_60);
    puVar1 = *(uint **)(param_2 + 0x20);
    uVar4 = *puVar1;
    uVar5 = puVar1[1];
    if ((int)((iStack_5c - uVar5) - (uint)(local_60 < uVar4)) < 0 !=
        (SBORROW4(iStack_5c,uVar5) != SBORROW4(iStack_5c - uVar5,(uint)(local_60 < uVar4)))) {
      iVar2 = uVar4 - local_60;
      iVar3 = (uVar5 - iStack_5c) - (uint)(uVar4 < local_60);
      goto LAB_00524f74;
    }
    std::list<std::function<void()>,std::allocator<std::function<void()>>>::push_back
              ((list<std::function<void()>,std::allocator<std::function<void()>>> *)(param_2 + 0x18)
               ,(function *)(puVar1 + 2));
    ppVar6 = *(pair **)(param_2 + 0x20);
    uVar7 = *(undefined4 *)(param_2 + 0x2c);
    if (0x2f < *(int *)(param_2 + 0x24) - (int)ppVar6) {
      this = (pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>> *)
             (*(int *)(param_2 + 0x24) + -0x18);
      std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>::pair
                (apStack_58,(pair *)this);
      std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>::
      operator=(this,ppVar6);
      std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>::pair
                (apStack_40,(pair *)apStack_58);
      std::
      __adjust_heap<__gnu_cxx::__normal_iterator<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>*,std::vector<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>,std::allocator<std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>>>>,int,std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>,bool(*)(std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>const&,std::pair<std::chrono::duration<long_long,std::ratio<1ll,1000ll>>,std::function<void()>>const&)>
                (ppVar6,0,((int)this - (int)ppVar6 >> 3) * -0x55555555,apStack_40,uVar7);
      std::_Function_base::~_Function_base(a_Stack_38);
      std::_Function_base::~_Function_base(a_Stack_50);
    }
    iVar2 = *(int *)(param_2 + 0x24);
    *(int *)(param_2 + 0x24) = iVar2 + -0x18;
    std::_Function_base::~_Function_base((_Function_base *)(iVar2 + -0x10));
  } while( true );
}

// ---- FUN_00524f88  @ 0x524f88
void FUN_00524f88(int param_1)

{
  bool bVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  void *pvVar6;
  uint uVar7;
  uint local_48;
  int iStack_44;
  undefined4 local_40;
  int local_3c;
  int local_38;
  undefined1 local_34;
  int local_30;
  int local_2c;
  int local_28;
  code *local_24;
  
  FUN_0052a16c(param_1 + 8);
  local_38 = param_1 + 0xc;
  local_40 = 0;
  local_3c = 0;
  local_34 = 0;
  std::unique_lock<std::recursive_mutex>::lock((unique_lock<std::recursive_mutex> *)&local_38);
  local_34 = 1;
  local_40 = *(undefined4 *)(param_1 + 0x10);
  iVar5 = *(int *)(param_1 + 0x14);
  iVar4 = local_3c;
  if (iVar5 != local_3c) {
    if (iVar5 != 0) {
      piVar3 = (int *)(iVar5 + 4);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar3);
        bVar1 = (bool)hasExclusiveAccess(piVar3);
      } while (!bVar1);
      *piVar3 = *piVar3 + 1;
      DataMemoryBarrier(0x1f);
    }
    iVar4 = iVar5;
    if (local_3c != 0) {
      FUN_0033ce90();
    }
  }
  local_3c = iVar4;
  while ((((*(int *)(param_1 + 0x18) != param_1 + 0x18 ||
           (*(int *)(param_1 + 0x20) != *(int *)(param_1 + 0x24))) ||
          (iVar4 = *(int *)(param_1 + 0x14), iVar4 == 0)) || (*(int *)(iVar4 + 4) != 1))) {
    while( true ) {
      FUN_00524eac(&local_48,param_1);
      iVar4 = iStack_44;
      uVar2 = local_48;
      if (*(int *)(param_1 + 0x18) == param_1 + 0x18) break;
      std::function<void()>::function
                ((function<void()> *)&local_30,(function *)(*(int *)(param_1 + 0x18) + 8));
      pvVar6 = *(void **)(param_1 + 0x18);
      FUN_00799bac(pvVar6);
      std::_Function_base::~_Function_base((_Function_base *)((int)pvVar6 + 8));
      operator_delete(pvVar6);
      std::unique_lock<std::recursive_mutex>::unlock((unique_lock<std::recursive_mutex> *)&local_38)
      ;
      if (local_28 == 0) {
        FUN_007c4d54();
      }
      (*local_24)((function<void()> *)&local_30);
      std::unique_lock<std::recursive_mutex>::lock((unique_lock<std::recursive_mutex> *)&local_38);
      std::_Function_base::~_Function_base((_Function_base *)&local_30);
    }
    FUN_007bfd24(&local_48);
    uVar7 = (uint)((ulonglong)uVar2 * 1000000);
    local_30 = uVar7 + local_48;
    local_2c = iVar4 * 1000000 + (int)((ulonglong)uVar2 * 1000000 >> 0x20) +
               iStack_44 + (uint)CARRY4(uVar7,local_48);
    std::condition_variable_any::
    wait_until<std::unique_lock<std::recursive_mutex>,std::chrono::_V2::system_clock,std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
              ((condition_variable_any *)(param_1 + 0x30),(unique_lock *)&local_38,
               (time_point *)&local_30);
  }
  local_30 = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  local_2c = iVar4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_2c);
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&local_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_3c);
  return;
}

// ---- FUN_0052516c  @ 0x52516c
void FUN_0052516c(__shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
                  *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int *extraout_r2;
  int extraout_r3;
  int iVar4;
  thread *unaff_r5;
  undefined4 unaff_r6;
  undefined4 *unaff_r7;
  undefined1 auStack_4c [4];
  int local_48;
  __shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
  *local_44;
  undefined1 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  int local_30;
  __shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
  *local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  local_44 = param_1 + 0xc;
  local_40 = 0;
  std::unique_lock<std::recursive_mutex>::lock((unique_lock<std::recursive_mutex> *)&local_44);
  local_40 = 1;
  if (*(int *)(param_1 + 0x10) == 0) {
    local_30 = *(int *)(param_1 + 4);
    if (local_30 == 0) {
      std::__throw_bad_weak_ptr();
    }
    else {
      piVar3 = (int *)(local_30 + 4);
      unaff_r5 = (thread *)&local_48;
      iVar2 = *(int *)(local_30 + 4);
      do {
        local_48 = iVar2;
        iVar4 = local_48;
        if (local_48 == 0) {
          std::__throw_bad_weak_ptr();
          piVar3 = extraout_r2;
          iVar4 = extraout_r3;
        }
        DataMemoryBarrier(0x1f);
        ExclusiveAccess(piVar3);
        iVar2 = *piVar3;
        bVar1 = false;
        if (iVar2 == local_48) {
          bVar1 = (bool)hasExclusiveAccess(piVar3);
          if (bVar1) {
            *piVar3 = iVar4 + 1;
          }
          DataMemoryBarrier(0x1f);
        }
      } while (!bVar1);
      unaff_r7 = &local_34;
      local_2c = *(__shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
                   **)(param_1 + 0x10);
      unaff_r6 = 0;
      *(undefined4 *)(param_1 + 0x10) = *(undefined4 *)param_1;
      local_28 = *(undefined4 *)(param_1 + 0x14);
      *(int *)(param_1 + 0x14) = local_30;
      local_30 = 0;
      local_34 = 0;
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_28);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
                ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_30);
      local_28 = 0x524f89;
      local_48 = 0;
      local_24 = 0;
      local_2c = param_1;
      std::
      __shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
      ::
      __shared_ptr<std::allocator<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>>,std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>
                ((__shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
                  *)&local_3c,0,auStack_4c,&local_2c);
      param_1 = (__shared_ptr<std::thread::_Impl<std::_Bind_simple<std::_Mem_fn<void(gpg::SimpleOperationQueue::*)()>(gpg::SimpleOperationQueue*)>>,(__gnu_cxx::_Lock_policy)2>
                 *)&local_3c;
    }
    local_34 = local_3c;
    local_30 = local_38;
    local_3c = unaff_r6;
    local_38 = unaff_r6;
    FUN_007bfe74(unaff_r5,unaff_r7);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(unaff_r7 + 1));
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 4));
    FUN_007bfda0(unaff_r5);
    std::thread::~thread(unaff_r5);
  }
  std::unique_lock<std::recursive_mutex>::~unique_lock
            ((unique_lock<std::recursive_mutex> *)&local_44);
  return;
}

// ---- FUN_005252b8  @ 0x5252b8
undefined4 * FUN_005252b8(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00525348  @ 0x525348
void FUN_00525348(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00525364  @ 0x525364
_Function_base * FUN_00525364(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00525378  @ 0x525378
undefined4 * FUN_00525378(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_00525378_1_00924c08;
  FUN_00525364(param_1 + 10);
  FUN_007c5914(param_1 + 8);
  FUN_005127a4(param_1);
  return param_1;
}

// ---- FUN_005253a0  @ 0x5253a0
void * FUN_005253a0(void *param_1)

{
  FUN_00525378();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005253b2  @ 0x5253b2
void FUN_005253b2(undefined4 *param_1,undefined4 *param_2)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  *param_1 = *param_2;
  iVar2 = param_2[1];
  param_1[1] = iVar2;
  if (iVar2 != 0) {
    piVar3 = (int *)(iVar2 + 4);
    DataMemoryBarrier(0x1f);
    do {
      ExclusiveAccess(piVar3);
      bVar1 = (bool)hasExclusiveAccess(piVar3);
    } while (!bVar1);
    *piVar3 = *piVar3 + 1;
    DataMemoryBarrier(0x1f);
  }
  return;
}

// ---- FUN_005253fa  @ 0x5253fa
void FUN_005253fa(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)((int)pvVar1 + 0xc));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00525568  @ 0x525568
void FUN_00525568(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  mutex *local_1c;
  undefined4 uStack_18;
  
  piVar2 = (int *)*param_1;
  local_1c = (mutex *)*piVar2;
  uStack_18 = param_3;
  std::mutex::lock(local_1c);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::SnapshotMetadata::operator=
            ((SnapshotMetadata *)(iVar1 + 0x10),(SnapshotMetadata *)(param_2 + 1));
  thunk_FUN_007c653c(iVar1 + 0x18,param_2 + 3);
  gpg::SnapshotMetadata::operator=
            ((SnapshotMetadata *)(iVar1 + 0x1c),(SnapshotMetadata *)(param_2 + 4));
  gpg::SnapshotMetadata::operator=
            ((SnapshotMetadata *)(iVar1 + 0x24),(SnapshotMetadata *)(param_2 + 6));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return;
}

// ---- FUN_00525678  @ 0x525678
void FUN_00525678(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00525710  @ 0x525710
undefined4 *
FUN_00525710(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            function<void(std::function<void()>)> *param_9)

{
  param_1[4] = param_3;
  *param_1 = &PTR_FUN_00525378_1_00924c08;
  param_1[3] = param_2;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[6] = param_5;
  param_1[7] = param_6;
  FUN_007c64e8(param_1 + 8,param_7);
  param_1[0xc] = 0;
  param_1[9] = param_8;
  std::function<void(std::function<void()>)>::swap(param_9,(function *)(param_1 + 10));
  param_1[0x10] = 0;
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::swap
            ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)(param_9 + 0x10),
             (function *)(param_1 + 0xe));
  return param_1;
}

// ---- FUN_0052576c  @ 0x52576c
function * FUN_0052576c(function *param_1,undefined4 *param_2)

{
  code *pcVar1;
  undefined1 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  _Any_data a_Stack_30 [8];
  code *local_28;
  undefined1 *local_24;
  
  uVar3 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar4 = local_64;
  *local_50[0] = uVar3;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar4;
  local_44 = &LAB_005255d2_1;
  local_38 = 0;
  local_48 = (code *)0x525523;
  local_28 = (code *)0x0;
  std::swap<std::_Any_data>((_Any_data *)local_50,a_Stack_30);
  puVar2 = local_24;
  pcVar1 = local_28;
  *(undefined4 *)(param_1 + 8) = 0;
  local_28 = local_48;
  local_48 = pcVar1;
  local_24 = local_44;
  local_44 = puVar2;
  std::function<void(std::function<void()>)>::swap(afStack_40,param_1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::swap<std::_Any_data>(a_Stack_30,(_Any_data *)(param_1 + 0x10));
  uVar4 = *(undefined4 *)(param_1 + 0x18);
  *(code **)(param_1 + 0x18) = local_28;
  uVar3 = *(undefined4 *)(param_1 + 0x1c);
  *(undefined1 **)(param_1 + 0x1c) = local_24;
  local_28 = (code *)uVar4;
  local_24 = (undefined1 *)uVar3;
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00525844  @ 0x525844
function * FUN_00525844(function *param_1)

{
  undefined4 uVar1;
  undefined4 local_68;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  local_58 = 0;
  FUN_005253b2(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x525569;
  local_68 = 0;
  local_38 = 0;
  local_48 = (code *)0x52549f;
  local_28 = 0;
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::swap
            ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)local_50,
             (function *)afStack_30);
  *(undefined4 *)(param_1 + 8) = 0;
  std::function<void(std::function<void()>)>::swap(afStack_40,param_1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::swap(afStack_30,param_1 + 0x10);
  FUN_00525364(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_005258ec  @ 0x5258ec
function * FUN_005258ec(function *param_1,undefined4 *param_2)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function<void(std::function<void()>)> afStack_40 [8];
  undefined4 local_38;
  _Any_data a_Stack_30 [8];
  code *local_28;
  undefined4 local_24;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar3 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar3;
  local_44 = 0x526597;
  local_38 = 0;
  local_48 = (code *)0x5254dd;
  local_28 = (code *)0x0;
  std::swap<std::_Any_data>((_Any_data *)local_50,a_Stack_30);
  uVar3 = local_24;
  pcVar1 = local_28;
  *(undefined4 *)(param_1 + 8) = 0;
  local_28 = local_48;
  local_48 = pcVar1;
  local_24 = local_44;
  local_44 = uVar3;
  std::function<void(std::function<void()>)>::swap(afStack_40,param_1);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::swap<std::_Any_data>(a_Stack_30,(_Any_data *)(param_1 + 0x10));
  uVar3 = *(undefined4 *)(param_1 + 0x18);
  *(code **)(param_1 + 0x18) = local_28;
  uVar2 = *(undefined4 *)(param_1 + 0x1c);
  *(undefined4 *)(param_1 + 0x1c) = local_24;
  local_28 = (code *)uVar3;
  local_24 = uVar2;
  std::_Function_base::~_Function_base((_Function_base *)a_Stack_30);
  std::_Function_base::~_Function_base((_Function_base *)afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00525a8a  @ 0x525a8a
void FUN_00525a8a(function<void(std::function<void()>)> *param_1,OpenResponse *param_2)

{
  _Function_base a_Stack_50 [16];
  _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
  a_Stack_40 [48];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::operator()
                ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::
      _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
      ::_Bind<gpg::SnapshotManager::OpenResponse&>(a_Stack_40,(function *)(param_1 + 0x10),param_2);
      std::function<void()>::
      function<std::_Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>,void>
                ((function<void()> *)a_Stack_50,a_Stack_40);
      std::function<void(std::function<void()>)>::operator()(param_1,a_Stack_50);
      std::_Function_base::~_Function_base(a_Stack_50);
      std::
      _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
      ::~_Bind(a_Stack_40);
    }
  }
  return;
}

// ---- FUN_00525ae4  @ 0x525ae4
void FUN_00525ae4(int param_1)

{
  undefined4 local_30;
  SnapshotMetadata aSStack_2c [8];
  undefined1 *local_24;
  SnapshotMetadata aSStack_20 [8];
  SnapshotMetadata aSStack_18 [12];
  
  local_30 = 0xfffffffd;
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_2c);
  local_24 = &DAT_00972528;
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20);
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_18);
  FUN_00525a8a(param_1 + 0x28,&local_30);
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)&local_30);
  return;
}

// ---- FUN_00525b38  @ 0x525b38
void FUN_00525b38(int param_1)

{
  undefined4 local_30;
  SnapshotMetadata aSStack_2c [8];
  undefined1 *local_24;
  SnapshotMetadata aSStack_20 [8];
  SnapshotMetadata aSStack_18 [12];
  
  local_30 = 0xfffffffe;
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_2c);
  local_24 = &DAT_00972528;
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20);
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_18);
  FUN_00525a8a(param_1 + 0x28,&local_30);
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)&local_30);
  return;
}

// ---- FUN_00525be8  @ 0x525be8
void FUN_00525be8(function<void(std::function<void()>)> *param_1,OpenResponse *param_2)

{
  _Function_base a_Stack_50 [16];
  function<void(gpg::SnapshotManager::OpenResponse_const&)> afStack_40 [16];
  OpenResponse aOStack_30 [32];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::operator()
                ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::function
                (afStack_40,(function *)(param_1 + 0x10));
      gpg::SnapshotManager::OpenResponse::OpenResponse(aOStack_30,param_2);
      std::function<void()>::
      function<std::_Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>,void>
                ((function<void()> *)a_Stack_50,afStack_40);
      std::function<void(std::function<void()>)>::operator()(param_1,a_Stack_50);
      std::_Function_base::~_Function_base(a_Stack_50);
      std::
      _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
      ::~_Bind((_Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
                *)afStack_40);
    }
  }
  return;
}

// ---- FUN_00525c58  @ 0x525c58
undefined4 * FUN_00525c58(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x2c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset((OpenResponse *)(puVar1 + 3),0,0x20);
    gpg::SnapshotManager::OpenResponse::OpenResponse((OpenResponse *)(puVar1 + 3));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_005252a4_1_00924ba8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00525d1c  @ 0x525d1c
undefined4 * FUN_00525d1c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_00525290_1_00924bc8;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00525db4  @ 0x525db4
undefined4 * FUN_00525db4(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0052527c_1_00924be8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_00526238  @ 0x526238
int FUN_00526238(uint param_1,int param_2,undefined4 param_3)

{
  longlong lVar1;
  int iVar2;
  ReadResponse *pRVar3;
  SnapshotMetadata *pSVar4;
  int *piVar5;
  code *pcVar6;
  int iVar7;
  unique_lock *puVar8;
  uint uVar9;
  bool bVar10;
  undefined8 uVar11;
  undefined8 uVar12;
  int local_124;
  undefined4 local_118;
  int iStack_114;
  undefined1 auStack_10c [4];
  undefined4 local_108;
  int iStack_104;
  undefined4 local_100;
  int iStack_fc;
  mutex *local_f8;
  __shared_count a_Stack_f4 [4];
  mutex *local_f0;
  __shared_count a_Stack_ec [4];
  Builder aBStack_e8 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_e4 [4];
  SnapshotMetadataChange aSStack_e0 [8];
  mutex *local_d8;
  undefined1 local_d4;
  mutex *local_d0;
  undefined1 local_cc;
  undefined4 local_c8;
  SnapshotMetadata aSStack_c4 [8];
  undefined4 local_bc;
  SnapshotMetadata aSStack_b8 [8];
  undefined4 local_b0;
  SnapshotMetadata aSStack_ac [8];
  undefined4 local_a4;
  SnapshotMetadata aSStack_a0 [8];
  undefined4 local_98;
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_94 [12];
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  mutex *local_68;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_64 [12];
  _Function_base a_Stack_58 [16];
  mutex *local_48;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [12];
  _Function_base a_Stack_38 [8];
  uint local_30;
  int iStack_2c;
  undefined4 uStack_28;
  
  local_30 = param_1;
  iStack_2c = param_2;
  uStack_28 = param_3;
  switch(*(undefined4 *)(param_1 + 0x24)) {
  case 1:
    FUN_00525be8(param_1 + 0x28,param_2);
    return 0;
  case 2:
    pSVar4 = (SnapshotMetadata *)(param_2 + 0x18);
    gpg::SnapshotMetadata::PlayedTime();
    iVar2 = iStack_2c;
    uVar9 = local_30;
    gpg::SnapshotMetadata::PlayedTime();
    if ((int)((iStack_2c - iVar2) - (uint)(local_30 < uVar9)) < 0 !=
        (SBORROW4(iStack_2c,iVar2) != SBORROW4(iStack_2c - iVar2,(uint)(local_30 < uVar9)))) {
      pSVar4 = (SnapshotMetadata *)(param_2 + 0x10);
    }
    break;
  case 3:
    pSVar4 = (SnapshotMetadata *)(param_2 + 0x10);
    break;
  case 4:
    pSVar4 = (SnapshotMetadata *)(param_2 + 0x18);
    break;
  case 5:
    uVar11 = gpg::SnapshotMetadata::ProgressValue((SnapshotMetadata *)(param_2 + 0x10));
    iVar2 = (int)((ulonglong)uVar11 >> 0x20);
    uVar12 = gpg::SnapshotMetadata::ProgressValue((SnapshotMetadata *)(param_2 + 0x18));
    iVar7 = (int)((ulonglong)uVar12 >> 0x20);
    bVar10 = (uint)uVar11 < (uint)uVar12;
    pSVar4 = (SnapshotMetadata *)(param_2 + 0x10);
    if ((int)((iVar2 - iVar7) - (uint)bVar10) < 0 !=
        (SBORROW4(iVar2,iVar7) != SBORROW4(iVar2 - iVar7,(uint)bVar10))) {
      pSVar4 = (SnapshotMetadata *)(param_2 + 0x18);
    }
    break;
  default:
    FUN_005166ae(4,"Unable to apply invalid policy %d. Not opening snapshot.");
    FUN_00525b38(param_1);
    return 0;
  }
  FUN_00525d1c(&local_f8,0,(ReadResponse *)&local_48);
  piVar5 = *(int **)(param_1 + 0xc);
  pcVar6 = *(code **)(*piVar5 + 0x98);
  local_48 = local_f8;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_44,a_Stack_f4);
  FUN_005258ec((_Function_base *)&local_68,(ReadResponse *)&local_48);
  iVar2 = (*pcVar6)(piVar5,pSVar4,(_Function_base *)&local_68);
  std::_Function_base::~_Function_base(a_Stack_58);
  std::_Function_base::~_Function_base((_Function_base *)&local_68);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  if (iVar2 == 0) {
    FUN_00525ae4(param_1);
    local_124 = 0;
    goto LAB_00526228;
  }
  uVar9 = *(uint *)(param_1 + 0x18);
  local_84 = 0;
  local_80 = 0;
  local_7c = 0;
  local_74 = 0;
  local_70 = 0;
  local_6c = 0;
  iVar7 = *(int *)(param_1 + 0x1c);
  local_88 = 0xfffffffe;
  local_78 = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_d4 = 0;
    local_d8 = local_f8;
    if (local_f8 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_f8);
    local_d4 = 1;
    if (local_f8[8] == (mutex)0x0) {
      puVar8 = (unique_lock *)(local_f8 + 4);
      FUN_007bfd24(&local_118);
      lVar1 = (ulonglong)uVar9 * 1000000 + CONCAT44(iVar7 * 1000000,local_118);
      local_108 = (undefined4)lVar1;
      iStack_104 = iStack_114 + (int)((ulonglong)lVar1 >> 0x20);
      do {
        if (local_f8[8] != (mutex)0x0) goto LAB_00525f7c;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar8,(time_point *)&local_d8);
      } while (iVar2 != 1);
      if (local_f8[8] != (mutex)0x0) goto LAB_00525f7c;
      pRVar3 = (ReadResponse *)&local_78;
    }
    else {
LAB_00525f7c:
      pRVar3 = (ReadResponse *)(local_f8 + 0xc);
    }
    gpg::SnapshotManager::ReadResponse::ReadResponse((ReadResponse *)&local_48,pRVar3);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_d8);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::SnapshotManager::ReadResponse::ReadResponse
              ((ReadResponse *)&local_48,(ReadResponse *)&local_88);
  }
  gpg::SnapshotManager::ReadResponse::ReadResponse
            ((ReadResponse *)&local_98,(ReadResponse *)&local_48);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)a_Stack_44);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_74);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_84);
  iVar2 = gpg::IsError(local_98);
  if (iVar2 == 0) {
    FUN_00525db4(&local_f0,0,auStack_10c);
    piVar5 = *(int **)(param_1 + 0xc);
    pcVar6 = *(code **)(*piVar5 + 0x84);
    gpg::SnapshotMetadataChange::Builder::Builder(aBStack_e8);
    gpg::SnapshotMetadataChange::Builder::Create();
    local_68 = local_f0;
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count(a_Stack_64,a_Stack_ec);
    FUN_0052576c((ReadResponse *)&local_48,(_Function_base *)&local_68);
    local_124 = (*pcVar6)(piVar5,pSVar4,aSStack_e0,param_2 + 0xc,(ReadResponse *)&local_48);
    std::_Function_base::~_Function_base(a_Stack_38);
    std::_Function_base::~_Function_base((_Function_base *)&local_48);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_64);
    gpg::SnapshotMetadataChange::~SnapshotMetadataChange(aSStack_e0);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_e4);
    if (local_124 == 0) {
      FUN_00525ae4(param_1);
    }
    else {
      uVar9 = *(uint *)(param_1 + 0x18);
      iVar7 = *(int *)(param_1 + 0x1c);
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_b8);
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_ac);
      local_bc = 0xfffffffe;
      local_b0 = 0xfffffffb;
      iVar2 = FUN_00553a80();
      if (iVar2 == 0) {
        local_cc = 0;
        local_d0 = local_f0;
        if (local_f0 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
          FUN_007c4c60(1);
        }
        std::mutex::lock(local_f0);
        local_cc = 1;
        if (local_f0[8] == (mutex)0x0) {
          puVar8 = (unique_lock *)(local_f0 + 4);
          FUN_007bfd24(&local_118);
          lVar1 = (ulonglong)uVar9 * 1000000 + CONCAT44(iVar7 * 1000000,local_118);
          local_100 = (undefined4)lVar1;
          iStack_fc = iStack_114 + (int)((ulonglong)lVar1 >> 0x20);
          do {
            if (local_f0[8] != (mutex)0x0) goto LAB_0052610a;
            iVar2 = std::condition_variable::
                    __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                              (puVar8,(time_point *)&local_d0);
          } while (iVar2 != 1);
          if (local_f0[8] != (mutex)0x0) goto LAB_0052610a;
          pSVar4 = aSStack_ac;
          local_a4 = local_b0;
        }
        else {
LAB_0052610a:
          pSVar4 = (SnapshotMetadata *)(local_f0 + 0x10);
          local_a4 = *(undefined4 *)(local_f0 + 0xc);
        }
        gpg::SnapshotMetadata::SnapshotMetadata(aSStack_a0,pSVar4);
        std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_d0);
      }
      else {
        FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
        local_a4 = local_bc;
        gpg::SnapshotMetadata::SnapshotMetadata(aSStack_a0,aSStack_b8);
      }
      local_c8 = local_a4;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_c4,aSStack_a0);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_a0);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_ac);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_b8);
      iVar2 = gpg::IsError(local_98);
      if (iVar2 != 0) {
        FUN_00525b38(param_1);
        local_124 = 0;
      }
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_c4);
    }
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_ec);
  }
  else {
    FUN_00525b38(param_1);
    local_124 = 0;
  }
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_94);
LAB_00526228:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)a_Stack_f4);
  return local_124;
}

// ---- FUN_005262f4  @ 0x5262f4
undefined4 FUN_005262f4(int param_1)

{
  longlong lVar1;
  int iVar2;
  uint uVar3;
  OpenResponse *pOVar4;
  int *piVar5;
  code *pcVar6;
  int iVar7;
  undefined4 uVar8;
  unique_lock *puVar9;
  uint local_128;
  int iStack_124;
  int local_120;
  int iStack_11c;
  mutex *local_118;
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_114 [4];
  mutex *local_110;
  undefined1 local_10c;
  _Function_base a_Stack_108 [16];
  undefined1 auStack_f8 [32];
  int local_d8 [8];
  undefined4 local_b8 [8];
  undefined4 local_98 [8];
  OpenResponse aOStack_78 [32];
  _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
  a_Stack_58 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_54 [48];
  
  FUN_00525c58(&local_118,0,a_Stack_58);
  piVar5 = *(int **)(param_1 + 0xc);
  uVar8 = *(undefined4 *)(param_1 + 0x10);
  pcVar6 = *(code **)(*piVar5 + 0x94);
  FUN_005253b2(a_Stack_58,&local_118);
  FUN_00525844(auStack_f8,a_Stack_58);
  iVar2 = (*pcVar6)(piVar5,uVar8,param_1 + 0x20,auStack_f8);
  FUN_00525364(auStack_f8);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_54);
  if (iVar2 == 0) {
    FUN_00525ae4(param_1);
    uVar8 = 0;
    goto LAB_005264fc;
  }
  uVar3 = *(uint *)(param_1 + 0x18);
  iVar7 = *(int *)(param_1 + 0x1c);
  gpg::SnapshotManager::OpenResponse::OpenResponse((OpenResponse *)local_b8);
  gpg::SnapshotManager::OpenResponse::OpenResponse((OpenResponse *)local_98);
  local_b8[0] = 0xfffffffe;
  local_98[0] = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 == 0) {
    local_10c = 0;
    local_110 = local_118;
    if (local_118 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
      FUN_007c4c60(1);
    }
    std::mutex::lock(local_118);
    local_10c = 1;
    if (local_118[8] == (mutex)0x0) {
      puVar9 = (unique_lock *)(local_118 + 4);
      FUN_007bfd24(&local_128);
      lVar1 = (ulonglong)uVar3 * 1000000;
      uVar3 = (uint)lVar1;
      local_120 = uVar3 + local_128;
      iStack_11c = iVar7 * 1000000 + (int)((ulonglong)lVar1 >> 0x20) +
                   iStack_124 + (uint)CARRY4(uVar3,local_128);
      do {
        if (local_118[8] != (mutex)0x0) goto LAB_0052640c;
        iVar2 = std::condition_variable::
                __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                          (puVar9,(time_point *)&local_110);
      } while (iVar2 != 1);
      pOVar4 = (OpenResponse *)local_98;
      if (local_118[8] != (mutex)0x0) goto LAB_0052640c;
    }
    else {
LAB_0052640c:
      pOVar4 = (OpenResponse *)(local_118 + 0xc);
    }
    gpg::SnapshotManager::OpenResponse::OpenResponse(aOStack_78,pOVar4);
    std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_110);
  }
  else {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::SnapshotManager::OpenResponse::OpenResponse(aOStack_78,(OpenResponse *)local_b8);
  }
  gpg::SnapshotManager::OpenResponse::OpenResponse((OpenResponse *)local_d8,aOStack_78);
  gpg::SnapshotManager::OpenResponse::~OpenResponse(aOStack_78);
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)local_98);
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)local_b8);
  if (local_d8[0] == 3) {
    uVar8 = FUN_00526238(param_1,(OpenResponse *)local_d8);
  }
  else {
    if (local_d8[0] == -5) {
      local_d8[0] = -2;
    }
    if (*(int *)(param_1 + 0x40) != 0) {
      if (*(int *)(param_1 + 0x30) == 0) {
        std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::operator()
                  ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)(param_1 + 0x38),
                   (OpenResponse *)local_d8);
      }
      else {
        std::
        _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
        ::_Bind<gpg::SnapshotManager::OpenResponse&>
                  (a_Stack_58,(function *)(param_1 + 0x38),(OpenResponse *)local_d8);
        std::function<void()>::
        function<std::_Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>,void>
                  ((function<void()> *)a_Stack_108,a_Stack_58);
        std::function<void(std::function<void()>)>::operator()
                  ((function<void(std::function<void()>)> *)(param_1 + 0x28),a_Stack_108);
        std::_Function_base::~_Function_base(a_Stack_108);
        std::
        _Bind<std::function<void(gpg::SnapshotManager::OpenResponse_const&)>(gpg::SnapshotManager::OpenResponse)>
        ::~_Bind(a_Stack_58);
      }
    }
    uVar8 = 0;
  }
  gpg::SnapshotManager::OpenResponse::~OpenResponse((OpenResponse *)local_d8);
LAB_005264fc:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_114);
  return uVar8;
}

// ---- FUN_00526514  @ 0x526514
undefined4 FUN_00526514(undefined4 param_1)

{
  int iVar1;
  
  do {
    iVar1 = FUN_005262f4(param_1);
  } while (iVar1 != 0);
  return 1;
}

// ---- FUN_00526596  @ 0x526596
void FUN_00526596(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<unsigned_char,std::allocator<unsigned_char>>::operator=
            ((vector<unsigned_char,std::allocator<unsigned_char>> *)(iVar1 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00526618  @ 0x526618
undefined4 * FUN_00526618(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_005266a8  @ 0x5266a8
undefined4 FUN_005266a8(int *param_1,undefined4 param_2)

{
  byte bVar1;
  undefined4 uVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  undefined4 uStack_1c;
  
  if (*(int *)(*param_1 + -0xc) - 1U < 100) {
    piVar5 = param_1;
    uStack_1c = param_2;
    for (uVar4 = 0; uVar4 < *(uint *)(*param_1 + -0xc); uVar4 = uVar4 + 1) {
      if ((-1 < DAT_00960bf8 << 0x1f) && (iVar3 = __cxa_guard_acquire(&DAT_00960bf8), iVar3 != 0)) {
        FUN_007c6a60(&DAT_00960bf4,&DAT_00803924,&uStack_1c);
        __cxa_guard_release(&DAT_00960bf8);
        FUN_007985bc(&DAT_00960bf4,0x7c5915,&DAT_00943000);
      }
      iVar3 = *param_1;
      bVar1 = *(byte *)(iVar3 + uVar4);
      if ((((char)bVar1 == -1) || (iVar3 = 0, (*(byte *)(_ctype_ + (uint)bVar1 + 1) & 7) == 0)) &&
         (iVar3 = FUN_007c53a0(&DAT_00960bf4,(int)(char)bVar1,0,iVar3,piVar5), iVar3 == -1))
      goto LAB_005266ba;
    }
    uVar2 = 1;
  }
  else {
LAB_005266ba:
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_0052678e  @ 0x52678e
void FUN_0052678e(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::SnapshotMetadata::~SnapshotMetadata((SnapshotMetadata *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_005267b0  @ 0x5267b0
_Function_base * FUN_005267b0(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_005267ea  @ 0x5267ea
_Function_base * FUN_005267ea(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00526878  @ 0x526878
_Function_base * FUN_00526878(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0052688c  @ 0x52688c
_Function_base * FUN_0052688c(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_00526940  @ 0x526940
int FUN_00526940(int *param_1,mutex *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  mutex *local_1c;
  int local_18;
  undefined4 uStack_14;
  
  local_18 = *param_1;
  local_1c = param_2;
  uStack_14 = param_4;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14,
             (__shared_count *)(param_1 + 1));
  iVar2 = 0;
  if (local_18 == 0) goto LAB_005269a8;
  local_1c = (mutex *)(local_18 + 0x40);
  std::mutex::lock(local_1c);
  if (*(char *)(local_18 + 0x44) == '\0') {
    if (*(int *)(local_18 + 0x4c) == 0) {
      piVar1 = *(int **)(local_18 + 0x48);
    }
    else {
      piVar1 = (int *)(*(int *)(local_18 + 0x4c) + 0x20);
    }
    iVar2 = (**(code **)(*piVar1 + 0xc))();
    if (iVar2 == 0) goto LAB_005269a4;
    *(undefined1 *)(local_18 + 0x44) = 1;
  }
  else {
LAB_005269a4:
    iVar2 = 0;
  }
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
LAB_005269a8:
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&uStack_14);
  return iVar2;
}

// ---- FUN_005269b4  @ 0x5269b4
void FUN_005269b4(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::SnapshotMetadata::operator=
            ((SnapshotMetadata *)(iVar1 + 0x10),(SnapshotMetadata *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_00526a4e  @ 0x526a4e
function<void(std::function<void()>)> *
FUN_00526a4e(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::CommitResponse_const&)> *)(param_1 + 0x10),
             param_2 + 0x10);
  return param_1;
}

// ---- FUN_00526c1a  @ 0x526c1a
function<void(std::function<void()>)> *
FUN_00526c1a(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::SnapshotManager::OpenResponse_const&)>::swap
            ((function<void(gpg::SnapshotManager::OpenResponse_const&)> *)(param_2 + 0x10),
             (function *)(param_1 + 0x10));
  return param_1;
}

// ---- FUN_00526c38  @ 0x526c38
function<void(std::function<void()>)> *
FUN_00526c38(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x527993;
  local_38 = 0;
  local_48 = (code *)0x5268fb;
  local_28 = 0;
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::swap
            ((function<void(gpg::SnapshotManager::FetchAllResponse_const&)> *)local_50,
             (function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_005267b0(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00526ce8  @ 0x526ce8
function<void(std::function<void()>)> *
FUN_00526ce8(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x5269b5;
  local_38 = 0;
  local_48 = (code *)0x5268b5;
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_0052688c(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_00526d90  @ 0x526d90
function<void(std::function<void()>)> *
FUN_00526d90(function<void(std::function<void()>)> *param_1,function *param_2,_Any_data *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::SnapshotManager::CommitResponse_const&)> afStack_28 [16];
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::swap<std::_Any_data>(param_3,(_Any_data *)a_Stack_48);
    uVar1 = *(undefined4 *)(param_3 + 8);
    *(undefined4 *)(param_3 + 8) = local_40;
    uVar2 = *(undefined4 *)(param_3 + 0xc);
    *(undefined4 *)(param_3 + 0xc) = local_3c;
    local_40 = uVar1;
    local_3c = uVar2;
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function
            (afStack_28,(function *)a_Stack_48);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function
            ((function<void(gpg::SnapshotManager::CommitResponse_const&)> *)(param_1 + 0x10),
             (function *)afStack_28);
  FUN_005267ea(afStack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  return param_1;
}

// ---- FUN_00526e34  @ 0x526e34
void FUN_00526e34(function<void(std::function<void()>)> *param_1,CommitResponse *param_2)

{
  function<void(gpg::SnapshotManager::CommitResponse_const&)> *this;
  function<void(gpg::SnapshotManager::CommitResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::SnapshotManager::CommitResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  SnapshotMetadata aSStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::operator()
                ((function<void(gpg::SnapshotManager::CommitResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20,(SnapshotMetadata *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::SnapshotManager::CommitResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::SnapshotManager::CommitResponse::CommitResponse
                ((CommitResponse *)(this + 0x10),(CommitResponse *)&local_24);
      local_38 = (code *)0x5272bd;
      local_3c = (code *)0x526a73;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_005272f0  @ 0x5272f0
void FUN_005272f0(function<void(std::function<void()>)> *param_1,SnapshotSelectUIResponse *param_2)

{
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> *this;
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  SnapshotMetadata aSStack_20 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::operator()
                ((function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::SnapshotMetadata::SnapshotMetadata(aSStack_20,(SnapshotMetadata *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::SnapshotManager::SnapshotSelectUIResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::SnapshotManager::SnapshotSelectUIResponse::SnapshotSelectUIResponse
                ((SnapshotSelectUIResponse *)(this + 0x10),(SnapshotSelectUIResponse *)&local_24);
      local_38 = (code *)0x527509;
      local_3c = (code *)0x526b2f;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_20);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0052753e  @ 0x52753e
void FUN_0052753e(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)
             ((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0052755a  @ 0x52755a
SnapshotMetadata *
FUN_0052755a(SnapshotMetadata *param_1,SnapshotMetadata *param_2,SnapshotMetadata *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (SnapshotMetadata *)0x0) {
      gpg::SnapshotMetadata::SnapshotMetadata(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_0052764c  @ 0x52764c
void FUN_0052764c(function<void(std::function<void()>)> *param_1,FetchAllResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::SnapshotManager::FetchAllResponse_const&)> afStack_38 [16];
  FetchAllResponse aFStack_28 [4];
  vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> avStack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::operator()
                ((function<void(gpg::SnapshotManager::FetchAllResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::function
                (afStack_38,(function *)(param_1 + 0x10));
      gpg::SnapshotManager::FetchAllResponse::FetchAllResponse(aFStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::SnapshotManager::FetchAllResponse_const&)>::swap(afStack_38,pfVar1);
      gpg::SnapshotManager::FetchAllResponse::FetchAllResponse
                ((FetchAllResponse *)(pfVar1 + 0x10),aFStack_28);
      local_3c = (code *)0x526e1b;
      local_40 = (code *)0x5275e9;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::~vector(avStack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_00527992  @ 0x527992
void FUN_00527992(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>>::operator=
            ((vector<gpg::SnapshotMetadata,std::allocator<gpg::SnapshotMetadata>> *)(iVar1 + 0x10),
             (vector *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_005279d8  @ 0x5279d8
undefined4 * FUN_005279d8(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x1c);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x10);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_005265f0_1_00924c78;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00527abc  @ 0x527abc
void FUN_00527abc(int *param_1,undefined4 *param_2,undefined4 param_3)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  
  if (param_2 != (undefined4 *)0x0) {
    *param_2 = param_3;
    iVar5 = *param_1;
    if (iVar5 != 0) {
      piVar3 = (int *)(iVar5 + 8);
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar3);
        bVar1 = (bool)hasExclusiveAccess(piVar3);
      } while (!bVar1);
      *piVar3 = *piVar3 + 1;
      DataMemoryBarrier(0x1f);
    }
    piVar3 = (int *)param_2[1];
    if (piVar3 != (int *)0x0) {
      piVar4 = piVar3 + 2;
      DataMemoryBarrier(0x1f);
      do {
        ExclusiveAccess(piVar4);
        iVar2 = *piVar4;
        bVar1 = (bool)hasExclusiveAccess(piVar4);
      } while (!bVar1);
      *piVar4 = iVar2 + -1;
      DataMemoryBarrier(0x1f);
      if (iVar2 == 1) {
        (**(code **)(*piVar3 + 0xc))();
      }
    }
    param_2[1] = iVar5;
  }
  return;
}

// ---- FUN_00527d48  @ 0x527d48
undefined4 * FUN_00527d48(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::SnapshotMetadata::SnapshotMetadata((SnapshotMetadata *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_005265dc_1_00924c98;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_005283ec  @ 0x5283ec
CommitResponse * FUN_005283ec(CommitResponse *param_1,int *param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  CommitResponse *pCVar3;
  uint uVar4;
  uint local_68;
  int iStack_64;
  int local_60;
  int iStack_5c;
  mutex *local_54;
  undefined1 local_50;
  undefined4 local_4c;
  SnapshotMetadata aSStack_48 [8];
  undefined4 local_40;
  SnapshotMetadata aSStack_3c [8];
  CommitResponse aCStack_34 [4];
  SnapshotMetadata aSStack_30 [12];
  
  pCVar3 = (CommitResponse *)&local_40;
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_48);
  gpg::SnapshotMetadata::SnapshotMetadata(aSStack_3c);
  local_4c = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::SnapshotManager::CommitResponse::CommitResponse(aCStack_34,(CommitResponse *)&local_4c);
    goto LAB_005284a8;
  }
  local_54 = (mutex *)*param_2;
  local_50 = 0;
  if (local_54 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_54);
  local_50 = 1;
  iVar1 = *param_2;
  if (*(char *)(iVar1 + 8) == '\0') {
    FUN_007bfd24(&local_68);
    uVar4 = (uint)((ulonglong)param_3 * 1000000);
    local_60 = uVar4 + local_68;
    iStack_5c = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_64 + (uint)CARRY4(uVar4,local_68);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_00528498;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar1 + 4),(time_point *)&local_54);
    } while (iVar2 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_00528498;
  }
  else {
LAB_00528498:
    pCVar3 = (CommitResponse *)(*param_2 + 0xc);
  }
  gpg::SnapshotManager::CommitResponse::CommitResponse(aCStack_34,pCVar3);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_54);
LAB_005284a8:
  gpg::SnapshotManager::CommitResponse::CommitResponse(param_1,aCStack_34);
  gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_30);
  gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_3c);
  gpg::SnapshotMetadata::~SnapshotMetadata(aSStack_48);
  return param_1;
}

// ---- FUN_00528f28  @ 0x528f28
void FUN_00528f28(function<void(std::function<void()>)> *param_1,ReadResponse *param_2)

{
  function *pfVar1;
  function *local_48 [2];
  code *local_40;
  code *local_3c;
  function<void(gpg::SnapshotManager::ReadResponse_const&)> afStack_38 [16];
  ReadResponse aRStack_28 [4];
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> a_Stack_24 [12];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::operator()
                ((function<void(gpg::SnapshotManager::ReadResponse_const&)> *)(param_1 + 0x10),
                 param_2);
    }
    else {
      std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::function
                (afStack_38,(function *)(param_1 + 0x10));
      gpg::SnapshotManager::ReadResponse::ReadResponse(aRStack_28,param_2);
      local_40 = (code *)0x0;
      pfVar1 = operator_new(0x20);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::SnapshotManager::ReadResponse_const&)>::swap(afStack_38,pfVar1);
      gpg::SnapshotManager::ReadResponse::ReadResponse((ReadResponse *)(pfVar1 + 0x10),aRStack_28);
      local_3c = (code *)0x5272d7;
      local_40 = (code *)0x528ec5;
      local_48[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,local_48);
      std::_Function_base::~_Function_base((_Function_base *)local_48);
      std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(a_Stack_24);
      std::_Function_base::~_Function_base((_Function_base *)afStack_38);
    }
  }
  return;
}

// ---- FUN_00529624  @ 0x529624
undefined4 * FUN_00529624(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_00529648  @ 0x529648
undefined4 * FUN_00529648(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0052985c  @ 0x52985c
void FUN_0052985c(int param_1)

{
  _Vector_base<unsigned_char,std::allocator<unsigned_char>> *this;
  
  this = *(_Vector_base<unsigned_char,std::allocator<unsigned_char>> **)(param_1 + 0xc);
  FUN_007c5914(this + 0xc);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base(this);
  operator_delete(this);
  return;
}

// ---- FUN_00529878  @ 0x529878
int FUN_00529878(int param_1)

{
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 0x1c));
  FUN_007c5914(param_1);
  return param_1;
}

// ---- FUN_0052988c  @ 0x52988c
void FUN_0052988c(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  if (pvVar1 != (void *)0x0) {
    FUN_00529878(pvVar1);
    operator_delete(pvVar1);
    return;
  }
  return;
}

// ---- FUN_005298a4  @ 0x5298a4
undefined4 * FUN_005298a4(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  *param_1 = param_2;
  param_1[1] = 0;
  puVar1 = operator_new(0x10);
  puVar1[1] = 1;
  puVar1[2] = 1;
  puVar1[3] = param_2;
  *puVar1 = &PTR_LAB_005295e8_1_00924cb8;
  param_1[1] = puVar1;
  return param_1;
}

// ---- FUN_005298f0  @ 0x5298f0
void FUN_005298f0(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  FUN_00529878(pvVar1);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_00529904  @ 0x529904
undefined4 *
FUN_00529904(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int *param_4,
            undefined4 param_5,undefined4 *param_6,undefined4 *param_7)

{
  undefined4 *puVar1;
  void *__dest;
  undefined4 uVar2;
  undefined4 uVar3;
  size_t __n;
  uint uVar4;
  undefined4 *local_28;
  void *local_24;
  void *local_20;
  int *local_1c;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_28 = param_1;
  local_24 = (void *)param_2;
  local_20 = (void *)param_3;
  local_1c = param_4;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  local_24 = (void *)0x0;
  uVar4 = param_4[1] - *param_4;
  local_20 = (void *)0x0;
  local_1c = (int *)0x0;
  if (uVar4 == 0) {
    __dest = (void *)0x0;
  }
  else {
    __dest = operator_new(uVar4);
  }
  local_1c = (int *)((int)__dest + uVar4);
  __n = param_4[1] - *param_4;
  local_24 = __dest;
  if (__n != 0) {
    local_20 = __dest;
    memmove(__dest,(void *)*param_4,__n);
  }
  local_20 = (void *)((int)__dest + __n);
  FUN_007c64e8(&local_28,param_5);
  uVar2 = *param_6;
  uVar3 = *param_7;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    *puVar1 = local_24;
    local_24 = (void *)0x0;
    puVar1[1] = local_20;
    local_20 = (void *)0x0;
    puVar1[2] = local_1c;
    local_1c = (int *)0x0;
    puVar1[4] = uVar2;
    puVar1[5] = uVar3;
    puVar1[3] = local_28;
    local_28 = (undefined4 *)&DAT_00972528;
  }
  FUN_007c5914(&local_28);
  std::_Vector_base<unsigned_char,std::allocator<unsigned_char>>::~_Vector_base
            ((_Vector_base<unsigned_char,std::allocator<unsigned_char>> *)&local_24);
  uVar2 = *param_1;
  local_24 = (void *)0x0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0052960c_1_00924cd8;
  }
  local_24 = (void *)param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_24);
  return param_1;
}

// ---- FUN_00529aec  @ 0x529aec
undefined4 * FUN_00529aec(undefined4 *param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  pvVar1 = operator_new(0x20);
  *param_1 = pvVar1;
  if (pvVar1 != (void *)0x0) {
    FUN_007c64e8(pvVar1,param_4);
    uVar3 = *(undefined4 *)(param_4 + 0xc);
    *(undefined4 *)((int)pvVar1 + 8) = *(undefined4 *)(param_4 + 8);
    *(undefined4 *)((int)pvVar1 + 0xc) = uVar3;
    uVar3 = *(undefined4 *)(param_4 + 0x14);
    *(undefined4 *)((int)pvVar1 + 0x10) = *(undefined4 *)(param_4 + 0x10);
    *(undefined4 *)((int)pvVar1 + 0x14) = uVar3;
    *(undefined4 *)((int)pvVar1 + 0x18) = *(undefined4 *)(param_4 + 0x18);
    std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
              ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 0x1c),
               (__shared_count *)(param_4 + 0x1c));
  }
  uVar3 = *param_1;
  local_14 = 0;
  puVar2 = operator_new(0x14);
  if (puVar2 != (undefined4 *)0x0) {
    puVar2[1] = 1;
    puVar2[2] = 1;
    puVar2[3] = uVar3;
    *puVar2 = &PTR_LAB_005295f8_1_00924cf8;
  }
  local_14 = param_1[1];
  param_1[1] = puVar2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_00529dc4  @ 0x529dc4
int FUN_00529dc4(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 5;
  if (uVar1 < 10) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x20f) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a FlushStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- FUN_00529dec  @ 0x529dec
int FUN_00529dec(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 5;
  if (uVar1 < 8) {
    param_3 = 1;
    uVar1 = 1 << (uVar1 & 0xff);
    if ((uVar1 & 0xdf) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a ResponseStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- FUN_00529e14  @ 0x529e14
int FUN_00529e14(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x11;
  if (uVar1 < 0x14) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0xcf7c1) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a MultiplayerStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- FUN_00529e40  @ 0x529e40
int FUN_00529e40(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0xe;
  if (uVar1 < 0x10) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x9a03) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a QuestAcceptStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- FUN_00529e6c  @ 0x529e6c
int FUN_00529e6c(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x10;
  if (uVar1 < 0x12) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x26803) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a QuestClaimMilestoneStatus.",param_3,uVar1,
               param_4);
  return -2;
}

// ---- FUN_00529e98  @ 0x529e98
int FUN_00529e98(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 5;
  if (uVar1 < 9) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x14d) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a SnapshotOpenStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- FUN_00529ec0  @ 0x529ec0
int FUN_00529ec0(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x12;
  if (uVar1 < 0x14) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x9f041) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a UIStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- thunk_FUN_00529ec0  @ 0x529f14
int thunk_FUN_00529ec0(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x12;
  if (uVar1 < 0x14) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x9f041) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a UIStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- thunk_FUN_00529dc4  @ 0x529f18
int thunk_FUN_00529dc4(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 5;
  if (uVar1 < 10) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x20f) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a FlushStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- thunk_FUN_00529dec  @ 0x529f1c
int thunk_FUN_00529dec(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 5;
  if (uVar1 < 8) {
    param_3 = 1;
    uVar1 = 1 << (uVar1 & 0xff);
    if ((uVar1 & 0xdf) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a ResponseStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- thunk_FUN_00529e14  @ 0x529f20
int thunk_FUN_00529e14(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x11;
  if (uVar1 < 0x14) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0xcf7c1) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a MultiplayerStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- thunk_FUN_00529e40  @ 0x529f24
int thunk_FUN_00529e40(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0xe;
  if (uVar1 < 0x10) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x9a03) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a QuestAcceptStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- thunk_FUN_00529e6c  @ 0x529f28
int thunk_FUN_00529e6c(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 0x10;
  if (uVar1 < 0x12) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x26803) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a QuestClaimMilestoneStatus.",param_3,uVar1,
               param_4);
  return -2;
}

// ---- thunk_FUN_00529e98  @ 0x529f2c
int thunk_FUN_00529e98(int param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  uint uVar1;
  
  uVar1 = param_1 + 5;
  if (uVar1 < 9) {
    param_3 = 1 << (uVar1 & 0xff);
    uVar1 = 0;
    if ((param_3 & 0x14d) != 0) {
      return param_1;
    }
  }
  FUN_005166ae(3,"Converting an invalid BaseStatus to a SnapshotOpenStatus.",param_3,uVar1,param_4);
  return -2;
}

// ---- FUN_00529f30  @ 0x529f30
undefined4 FUN_00529f30(undefined4 param_1)

{
  pthread_t pVar1;
  int iVar2;
  undefined *puVar3;
  undefined *puVar4;
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [176];
  
  pVar1 = pthread_self();
  puVar3 = &DAT_00960c04;
  puVar4 = DAT_00960c08;
  while (puVar4 != (undefined *)0x0) {
    if (*(int *)(puVar4 + 0x10) < (int)pVar1) {
      puVar4 = *(undefined **)(puVar4 + 0xc);
    }
    else {
      puVar3 = puVar4;
      puVar4 = *(undefined **)(puVar4 + 8);
    }
  }
  if ((puVar3 != &DAT_00960c04) && ((int)pVar1 < *(int *)(puVar3 + 0x10))) {
    puVar3 = &DAT_00960c04;
  }
  if (puVar3 == &DAT_00960c04) {
    FUN_007aa500(auStack_c4,0x10);
    pVar1 = pthread_self();
    iVar2 = pthread_equal(pVar1,0);
    if (iVar2 == 0) {
      FUN_007bbd6c(auStack_c4,pVar1);
    }
    else {
      FUN_007bbcd0(auStack_c4,"thread::id of a non-executing thread");
    }
    FUN_007a9920(param_1,auStack_c0);
    FUN_007a90d4(auStack_c4);
  }
  else {
    FUN_007c64e8(param_1,puVar3 + 0x14);
  }
  return param_1;
}

// ---- FUN_0052a16c  @ 0x52a16c
void FUN_0052a16c(int *param_1)

{
  pthread_t __target_thread;
  undefined *puVar1;
  undefined *puVar2;
  undefined1 auStack_20 [4];
  char *local_1c;
  pthread_t local_18;
  pthread_t *local_14 [2];
  
  if (*(uint *)(*param_1 + -0xc) < 0x10) {
    FUN_007c64e8();
  }
  else {
    FUN_007c6728(&local_1c,param_1,0,0xf);
  }
  __target_thread = pthread_self();
  pthread_setname_np(__target_thread,local_1c);
  local_18 = pthread_self();
  puVar1 = &DAT_00960c04;
  puVar2 = DAT_00960c08;
  while (puVar2 != (undefined *)0x0) {
    if (*(int *)(puVar2 + 0x10) < (int)local_18) {
      puVar2 = *(undefined **)(puVar2 + 0xc);
    }
    else {
      puVar1 = puVar2;
      puVar2 = *(undefined **)(puVar2 + 8);
    }
  }
  if ((puVar1 == &DAT_00960c04) || ((int)local_18 < *(int *)(puVar1 + 0x10))) {
    local_14[0] = &local_18;
    puVar1 = (undefined *)
             std::
             _Rb_tree<std::thread::id,std::pair<std::thread::id_const,std::string>,std::_Select1st<std::pair<std::thread::id_const,std::string>>,std::less<std::thread::id>,std::allocator<std::pair<std::thread::id_const,std::string>>>
             ::
             _M_emplace_hint_unique<std::piecewise_construct_t_const&,std::tuple<std::thread::id&&>,std::tuple<>>
                       (&DAT_00960c00,puVar1,&DAT_00831301,local_14,auStack_20);
  }
  thunk_FUN_007c653c(puVar1 + 0x14,param_1);
  FUN_007c5914(&local_1c);
  return;
}

// ---- FUN_0052a218  @ 0x52a218
undefined4 FUN_0052a218(undefined4 param_1)

{
  size_t sVar1;
  undefined4 extraout_r2;
  undefined8 uVar2;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined1 auStack_94 [4];
  time_t local_90;
  tm tStack_8c;
  char acStack_60 [68];
  
  FUN_007bfd24(&local_a0);
  local_90 = __aeabi_ldivmod(local_a0,uStack_9c,1000000000,0);
  localtime_r(&local_90,&tStack_8c);
  sVar1 = strftime(acStack_60,0x3c,"%F %T.",&tStack_8c);
  uVar2 = __aeabi_ldivmod(local_a0,uStack_9c,
                          "NS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES3_EESA_S4_E5LevelEEEPT_j"
                          ,0);
  __aeabi_ldivmod((int)uVar2,(int)((ulonglong)uVar2 >> 0x20),1000,0);
  snprintf(acStack_60 + sVar1,0x40 - sVar1,"%03u",extraout_r2);
  FUN_007c6a60(param_1,acStack_60,auStack_94);
  return param_1;
}

// ---- FUN_0052a2b0  @ 0x52a2b0
longlong * FUN_0052a2b0(longlong *param_1,__suseconds_t param_2,undefined4 param_3)

{
  __time_t _Var1;
  int iVar2;
  timeval local_18;
  undefined4 uStack_10;
  
  local_18.tv_sec = (__time_t)param_1;
  local_18.tv_usec = param_2;
  uStack_10 = param_3;
  gettimeofday(&local_18,(__timezone_ptr_t)0x0);
  _Var1 = local_18.tv_sec;
  iVar2 = __divsi3(local_18.tv_usec,1000);
  *param_1 = (longlong)_Var1 * 1000 + (longlong)iVar2;
  return param_1;
}

// ---- FUN_0052a2de  @ 0x52a2de
undefined4 FUN_0052a2de(undefined4 param_1)

{
  FUN_0052a2b0();
  return param_1;
}

// ---- FUN_0052aa5c  @ 0x52aa5c
undefined4 * FUN_0052aa5c(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0052aa80  @ 0x52aa80
undefined4 * FUN_0052aa80(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0052aaca  @ 0x52aaca
void FUN_0052aaca(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  if (pvVar1 != (void *)0x0) {
    std::vector<std::string,std::allocator<std::string>>::~vector
              ((vector<std::string,std::allocator<std::string>> *)((int)pvVar1 + 0x14));
    operator_delete(pvVar1);
    return;
  }
  return;
}

// ---- FUN_0052aae4  @ 0x52aae4
undefined4 * FUN_0052aae4(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  
  *param_1 = param_2;
  param_1[1] = 0;
  puVar1 = operator_new(0x10);
  puVar1[1] = 1;
  puVar1[2] = 1;
  puVar1[3] = param_2;
  *puVar1 = &PTR_LAB_0052aa34_1_00924d18;
  param_1[1] = puVar1;
  return param_1;
}

// ---- FUN_0052ab94  @ 0x52ab94
void FUN_0052ab94(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)((int)pvVar1 + 0x14));
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0052ac2c  @ 0x52ac2c
undefined4 *
FUN_0052ac2c(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4,
            undefined4 *param_5,undefined4 *param_6,undefined4 *param_7,vector *param_8)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar1 = operator_new(0x20);
  *param_1 = puVar1;
  uVar6 = *param_5;
  uVar2 = *param_4;
  uVar3 = param_4[1];
  uVar5 = *param_6;
  uVar4 = *param_7;
  std::vector<std::string,std::allocator<std::string>>::vector
            ((vector<std::string,std::allocator<std::string>> *)&local_34,param_8);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = uVar2;
    puVar1[1] = uVar3;
    puVar1[2] = uVar6;
    puVar1[5] = 0;
    puVar1[6] = 0;
    puVar1[7] = 0;
    puVar1[3] = uVar5;
    puVar1[4] = uVar4;
    puVar1[5] = local_34;
    local_34 = 0;
    puVar1[6] = local_30;
    local_30 = 0;
    puVar1[7] = local_2c;
    local_2c = 0;
  }
  std::vector<std::string,std::allocator<std::string>>::~vector
            ((vector<std::string,std::allocator<std::string>> *)&local_34);
  uVar2 = *param_1;
  local_34 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0052aa44_1_00924d38;
  }
  local_34 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_34);
  return param_1;
}

// ---- FUN_0052ae54  @ 0x52ae54
undefined4 * FUN_0052ae54(undefined4 *param_1)

{
  *param_1 = &PTR___Sp_counted_base_1_009242b8;
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0052af58  @ 0x52af58
_Function_base * FUN_0052af58(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0052b0c4  @ 0x52b0c4
_Function_base * FUN_0052b0c4(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0052b0d8  @ 0x52b0d8
_Function_base * FUN_0052b0d8(_Function_base *param_1)

{
  std::_Function_base::~_Function_base(param_1 + 0x10);
  std::_Function_base::~_Function_base(param_1);
  return param_1;
}

// ---- FUN_0052b146  @ 0x52b146
undefined4 * FUN_0052b146(undefined4 *param_1,undefined4 *param_2)

{
  *param_1 = *param_2;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)(param_1 + 1),
             (__shared_count *)(param_2 + 1));
  return param_1;
}

// ---- FUN_0052b224  @ 0x52b224
void FUN_0052b224(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 0x14));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0052b240  @ 0x52b240
void FUN_0052b240(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)((int)pvVar1 + 0x14));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0052b25c  @ 0x52b25c
void FUN_0052b25c(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  int *piVar2;
  mutex *local_14;
  
  piVar2 = (int *)*param_1;
  local_14 = (mutex *)*piVar2;
  std::mutex::lock(local_14);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  gpg::TurnBasedMatch::operator=((TurnBasedMatch *)(iVar1 + 0x10),(TurnBasedMatch *)(param_2 + 1));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_14);
  return;
}

// ---- FUN_0052b37a  @ 0x52b37a
function<void(std::function<void()>)> *
FUN_0052b37a(function<void(std::function<void()>)> *param_1,function *param_2)

{
  std::function<void(std::function<void()>)>::function(param_1,param_2);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> *)
             (param_1 + 0x10),param_2 + 0x10);
  return param_1;
}

// ---- FUN_0052b694  @ 0x52b694
function<void(std::function<void()>)> *
FUN_0052b694(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> afStack_30 [8];
  undefined4 local_28;
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x52ccbf;
  local_38 = 0;
  local_48 = (code *)0x52b199;
  local_28 = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::swap
            ((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> *)
             local_50,(function *)afStack_30);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  *(undefined4 *)(param_1 + 0x18) = 0;
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::swap
            (afStack_30,(function *)(param_1 + 0x10));
  FUN_0052b0c4(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0052b744  @ 0x52b744
function<void(std::function<void()>)> *
FUN_0052b744(function<void(std::function<void()>)> *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined1 *local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_30 [20];
  
  uVar2 = *param_2;
  local_58 = 0;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64,(__shared_count *)(param_2 + 1)
            );
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = uVar2;
  local_50[0][1] = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = &LAB_0052b2a2_1;
  local_38 = 0;
  local_48 = (code *)0x52b1df;
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_0052b0d8(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0052b7ec  @ 0x52b7ec
function<void(std::function<void()>)> * FUN_0052b7ec(function<void(std::function<void()>)> *param_1)

{
  undefined4 uVar1;
  undefined4 local_68;
  undefined4 local_64;
  _Function_base a_Stack_60 [8];
  undefined4 local_58;
  undefined4 *local_50 [2];
  code *local_48;
  undefined4 local_44;
  function afStack_40 [8];
  undefined4 local_38;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_30 [20];
  
  local_58 = 0;
  FUN_0052b146(&local_68);
  local_48 = (code *)0x0;
  local_50[0] = operator_new(8);
  uVar1 = local_64;
  *local_50[0] = local_68;
  local_50[0][1] = 0;
  local_68 = 0;
  local_64 = 0;
  local_50[0][1] = uVar1;
  local_44 = 0x52b25d;
  local_38 = 0;
  local_48 = (code *)0x52b15b;
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_30,(function *)local_50);
  std::function<void(std::function<void()>)>::function(param_1,afStack_40);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_30);
  FUN_0052af58(afStack_40);
  std::_Function_base::~_Function_base((_Function_base *)local_50);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_64);
  std::_Function_base::~_Function_base(a_Stack_60);
  return param_1;
}

// ---- FUN_0052b88c  @ 0x52b88c
function<void(std::function<void()>)> *
FUN_0052b88c(function<void(std::function<void()>)> *param_1,function *param_2,_Any_data *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  _Function_base a_Stack_48 [8];
  undefined4 local_40;
  undefined4 local_3c;
  function<void(std::function<void()>)> afStack_38 [8];
  undefined4 local_30;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_28 [16];
  
  if (*(int *)(param_3 + 8) == 0) {
    local_40 = 0;
    local_30 = 0;
  }
  else {
    local_40 = 0;
    std::swap<std::_Any_data>(param_3,(_Any_data *)a_Stack_48);
    uVar1 = *(undefined4 *)(param_3 + 8);
    *(undefined4 *)(param_3 + 8) = local_40;
    uVar2 = *(undefined4 *)(param_3 + 0xc);
    *(undefined4 *)(param_3 + 0xc) = local_3c;
    local_40 = uVar1;
    local_3c = uVar2;
    std::function<void(std::function<void()>)>::function(afStack_38,param_2);
  }
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            (afStack_28,(function *)a_Stack_48);
  std::function<void(std::function<void()>)>::function(param_1,(function *)afStack_38);
  std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
            ((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> *)
             (param_1 + 0x10),(function *)afStack_28);
  FUN_0052af58(afStack_38);
  std::_Function_base::~_Function_base(a_Stack_48);
  return param_1;
}

// ---- FUN_0052b918  @ 0x52b918
void FUN_0052b918(function<void(std::function<void()>)> *param_1,TurnBasedMatchResponse *param_2)

{
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> *this;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  TurnBasedMatch aTStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::
      operator()((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_20,(TurnBasedMatch *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse
                ((TurnBasedMatchResponse *)(this + 0x10),(TurnBasedMatchResponse *)&local_24);
      local_38 = (code *)0x52c655;
      local_3c = (code *)0x52b313;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0052c688  @ 0x52c688
void FUN_0052c688(function<void(std::function<void()>)> *param_1,MatchInboxUIResponse *param_2)

{
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> *this;
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> *local_44 [2];
  code *local_3c;
  code *local_38;
  function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> afStack_34 [16];
  undefined4 local_24;
  TurnBasedMatch aTStack_20 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_1c [8];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::operator()
                ((function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)> *)
                 (param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
                (afStack_34,(function *)(param_1 + 0x10));
      local_24 = *(undefined4 *)param_2;
      gpg::TurnBasedMatch::TurnBasedMatch(aTStack_20,(TurnBasedMatch *)(param_2 + 4));
      local_3c = (code *)0x0;
      this = operator_new(0x1c);
      std::function<void(gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse_const&)>::function
                (this,(function *)afStack_34);
      gpg::TurnBasedMultiplayerManager::MatchInboxUIResponse::MatchInboxUIResponse
                ((MatchInboxUIResponse *)(this + 0x10),(MatchInboxUIResponse *)&local_24);
      local_38 = (code *)0x52c88f;
      local_3c = (code *)0x52b51d;
      local_44[0] = this;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_44);
      std::_Function_base::~_Function_base((_Function_base *)local_44);
      std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_1c);
      std::_Function_base::~_Function_base((_Function_base *)afStack_34);
    }
  }
  return;
}

// ---- FUN_0052c898  @ 0x52c898
int FUN_0052c898(int param_1,int param_2,int param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 4) {
    if (param_3 != 0) {
      FUN_007c64e8(param_3,param_1);
    }
    param_3 = param_3 + 4;
  }
  return param_3;
}

// ---- FUN_0052c8d4  @ 0x52c8d4
undefined4 *
FUN_0052c8d4(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,Player *param_8,
            undefined4 *param_9,undefined4 *param_10,undefined4 *param_11,undefined1 *param_12,
            undefined4 param_13,undefined4 *param_14,undefined1 *param_15)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 *local_44;
  undefined1 *local_40;
  undefined1 *local_3c;
  undefined1 *local_38;
  undefined1 *local_34;
  undefined4 local_30 [3];
  
  *param_1 = 0;
  param_1[1] = 0;
  puVar3 = operator_new(0x34);
  *param_1 = puVar3;
  FUN_007c6a60(&local_34,param_4,auStack_48);
  FUN_007c6a60(&local_38,param_5,auStack_4c);
  FUN_007c6a60(&local_3c,param_6,auStack_50);
  FUN_007c6a60(&local_40,param_7,auStack_54);
  gpg::Player::Player((Player *)local_30,param_8);
  uVar4 = *param_9;
  uVar5 = *param_10;
  uVar6 = *param_11;
  uVar1 = *param_12;
  FUN_007c6a60(&local_44,param_13,auStack_58);
  uVar7 = *param_14;
  uVar2 = *param_15;
  if (puVar3 != (undefined4 *)0x0) {
    *puVar3 = local_34;
    local_34 = &DAT_00972528;
    puVar3[1] = local_38;
    puVar3[2] = local_3c;
    puVar3[3] = local_40;
    local_40 = local_34;
    local_3c = local_34;
    local_38 = local_34;
    gpg::Player::Player((Player *)(puVar3 + 4),(Player *)local_30);
    puVar3[6] = uVar4;
    puVar3[7] = uVar5;
    puVar3[8] = uVar6;
    *(undefined1 *)(puVar3 + 9) = uVar1;
    puVar3[10] = local_44;
    local_44 = &DAT_00972528;
    puVar3[0xb] = uVar7;
    *(undefined1 *)(puVar3 + 0xc) = uVar2;
  }
  FUN_007c5914(&local_44);
  gpg::Player::~Player((Player *)local_30);
  FUN_007c5914(&local_40);
  FUN_007c5914(&local_3c);
  FUN_007c5914(&local_38);
  FUN_007c5914(&local_34);
  uVar4 = *param_1;
  local_30[0] = 0;
  puVar3 = operator_new(0x14);
  if (puVar3 != (undefined4 *)0x0) {
    puVar3[1] = 1;
    puVar3[2] = 1;
    puVar3[3] = uVar4;
    *puVar3 = &PTR_LAB_0052ae40_1_00924d58;
  }
  local_30[0] = param_1[1];
  param_1[1] = puVar3;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)local_30);
  return param_1;
}

// ---- FUN_0052caac  @ 0x52caac
MultiplayerInvitation *
FUN_0052caac(MultiplayerInvitation *param_1,MultiplayerInvitation *param_2,
            MultiplayerInvitation *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 0x10) {
    if (param_3 != (MultiplayerInvitation *)0x0) {
      gpg::MultiplayerInvitation::MultiplayerInvitation(param_3,param_1);
    }
    param_3 = param_3 + 0x10;
  }
  return param_3;
}

// ---- FUN_0052cb40  @ 0x52cb40
void FUN_0052cb40(int param_1)

{
  void *pvVar1;
  
  pvVar1 = *(void **)(param_1 + 0xc);
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)((int)pvVar1 + 0x10));
  FUN_007be0b4((int)pvVar1 + 4);
  operator_delete(pvVar1);
  return;
}

// ---- FUN_0052cb5c  @ 0x52cb5c
TurnBasedMatch *
FUN_0052cb5c(TurnBasedMatch *param_1,TurnBasedMatch *param_2,TurnBasedMatch *param_3)

{
  for (; param_1 != param_2; param_1 = param_1 + 8) {
    if (param_3 != (TurnBasedMatch *)0x0) {
      gpg::TurnBasedMatch::TurnBasedMatch(param_3,param_1);
    }
    param_3 = param_3 + 8;
  }
  return param_3;
}

// ---- FUN_0052ccbe  @ 0x52ccbe
void FUN_0052ccbe(undefined4 *param_1,undefined4 *param_2,undefined4 param_3)

{
  int iVar1;
  int *piVar2;
  mutex *local_1c;
  undefined4 uStack_18;
  
  piVar2 = (int *)*param_1;
  local_1c = (mutex *)*piVar2;
  uStack_18 = param_3;
  std::mutex::lock(local_1c);
  iVar1 = *piVar2;
  *(undefined4 *)(iVar1 + 0xc) = *param_2;
  std::vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>>::operator=
            ((vector<gpg::MultiplayerInvitation,std::allocator<gpg::MultiplayerInvitation>> *)
             (iVar1 + 0x10),(vector *)(param_2 + 1));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::operator=
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(iVar1 + 0x1c),
             (vector *)(param_2 + 4));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::operator=
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(iVar1 + 0x28),
             (vector *)(param_2 + 7));
  std::vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>>::operator=
            ((vector<gpg::TurnBasedMatch,std::allocator<gpg::TurnBasedMatch>> *)(iVar1 + 0x34),
             (vector *)(param_2 + 10));
  *(undefined1 *)(*piVar2 + 8) = 1;
  FUN_007be0e0(*piVar2 + 4);
  std::lock_guard<std::mutex>::~lock_guard((lock_guard<std::mutex> *)&local_1c);
  return;
}

// ---- FUN_0052ce74  @ 0x52ce74
void FUN_0052ce74(function<void(std::function<void()>)> *param_1,TurnBasedMatchesResponse *param_2)

{
  function *pfVar1;
  function *local_6c [2];
  code *local_64;
  code *local_60;
  function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)> afStack_5c [16];
  undefined4 local_4c;
  _unnamed a_Stack_48 [48];
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (*(int *)(param_1 + 8) == 0) {
      std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::
      operator()((function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>
                  *)(param_1 + 0x10),param_2);
    }
    else {
      std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::
      function(afStack_5c,(function *)(param_1 + 0x10));
      local_4c = *(undefined4 *)param_2;
      gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
      TurnBasedMatchesResponse(a_Stack_48);
      local_64 = (code *)0x0;
      pfVar1 = operator_new(0x44);
      *(undefined4 *)(pfVar1 + 8) = 0;
      std::function<void(gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse_const&)>::swap
                (afStack_5c,pfVar1);
      gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
                ((TurnBasedMatchesResponse *)(pfVar1 + 0x10),(TurnBasedMatchesResponse *)&local_4c);
      local_60 = (code *)0x52c66f;
      local_64 = (code *)0x52ce0d;
      local_6c[0] = pfVar1;
      std::function<void(std::function<void()>)>::operator()(param_1,(_Function_base *)local_6c);
      std::_Function_base::~_Function_base((_Function_base *)local_6c);
      gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
      ~TurnBasedMatchesResponse((_unnamed_type_1_ *)a_Stack_48);
      std::_Function_base::~_Function_base((_Function_base *)afStack_5c);
    }
  }
  return;
}

// ---- FUN_0052d1c8  @ 0x52d1c8
undefined4 * FUN_0052d1c8(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0052ae2c_1_00924d78;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0052d288  @ 0x52d288
undefined4 FUN_0052d288(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uStack_c;
  
  uStack_c = param_2;
  FUN_0052d1c8(param_1,0,&uStack_c,param_4,param_1);
  return param_1;
}

// ---- FUN_0052d29c  @ 0x52d29c
undefined4 * FUN_0052d29c(undefined4 *param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_14;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_14 = param_2;
  puVar1 = operator_new(0x40);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    memset(puVar1 + 3,0,0x34);
  }
  uVar2 = *param_1;
  local_14 = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0052ae18_1_00924d98;
  }
  local_14 = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_14);
  return param_1;
}

// ---- FUN_0052d334  @ 0x52d334
undefined4 * FUN_0052d334(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_1c;
  undefined4 uStack_18;
  
  *param_1 = 0;
  param_1[1] = 0;
  local_1c = param_2;
  uStack_18 = param_3;
  puVar1 = operator_new(0x18);
  *param_1 = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = 0;
    *puVar1 = 0;
    puVar1[1] = 0;
    FUN_007be0ac(puVar1 + 1);
    *(undefined1 *)(puVar1 + 2) = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    gpg::TurnBasedMatch::TurnBasedMatch((TurnBasedMatch *)(puVar1 + 4));
  }
  uVar2 = *param_1;
  local_1c = 0;
  puVar1 = operator_new(0x14);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = 1;
    puVar1[2] = 1;
    puVar1[3] = uVar2;
    *puVar1 = &PTR_LAB_0052ae04_1_00924db8;
  }
  local_1c = param_1[1];
  param_1[1] = puVar1;
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_1c);
  return param_1;
}

// ---- FUN_0052d3f4  @ 0x52d3f4
TurnBasedMatchResponse *
FUN_0052d3f4(TurnBasedMatchResponse *param_1,int *param_2,uint param_3,int param_4)

{
  int iVar1;
  int iVar2;
  TurnBasedMatchResponse *pTVar3;
  uint uVar4;
  uint local_68;
  int iStack_64;
  int local_60;
  int iStack_5c;
  mutex *local_54;
  undefined1 local_50;
  undefined4 local_4c;
  TurnBasedMatch aTStack_48 [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_44 [4];
  undefined4 local_40;
  TurnBasedMatch aTStack_3c [4];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_38 [4];
  TurnBasedMatchResponse aTStack_34 [8];
  __shared_count<(__gnu_cxx::_Lock_policy)2> a_Stack_2c [8];
  
  pTVar3 = (TurnBasedMatchResponse *)&local_40;
  gpg::TurnBasedMatch::TurnBasedMatch(aTStack_48);
  gpg::TurnBasedMatch::TurnBasedMatch(aTStack_3c);
  local_4c = 0xfffffffe;
  local_40 = 0xfffffffb;
  iVar1 = FUN_00553a80();
  if (iVar1 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse
              (aTStack_34,(TurnBasedMatchResponse *)&local_4c);
    goto LAB_0052d4b0;
  }
  local_54 = (mutex *)*param_2;
  local_50 = 0;
  if (local_54 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_54);
  local_50 = 1;
  iVar1 = *param_2;
  if (*(char *)(iVar1 + 8) == '\0') {
    FUN_007bfd24(&local_68);
    uVar4 = (uint)((ulonglong)param_3 * 1000000);
    local_60 = uVar4 + local_68;
    iStack_5c = param_4 * 1000000 + (int)((ulonglong)param_3 * 1000000 >> 0x20) +
                iStack_64 + (uint)CARRY4(uVar4,local_68);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_0052d4a0;
      iVar2 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar1 + 4),(time_point *)&local_54);
    } while (iVar2 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_0052d4a0;
  }
  else {
LAB_0052d4a0:
    pTVar3 = (TurnBasedMatchResponse *)(*param_2 + 0xc);
  }
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse
            (aTStack_34,pTVar3);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_54);
LAB_0052d4b0:
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchResponse::TurnBasedMatchResponse
            (param_1,aTStack_34);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_2c);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_38);
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count(a_Stack_44);
  return param_1;
}

// ---- FUN_0052e3c4  @ 0x52e3c4
TurnBasedMatchesResponse *
FUN_0052e3c4(TurnBasedMatchesResponse *param_1,int *param_2,uint param_3,int param_4)

{
  longlong lVar1;
  int iVar2;
  int iVar3;
  TurnBasedMatchesResponse *pTVar4;
  undefined4 local_d0;
  int iStack_cc;
  mutex *local_c8;
  undefined1 local_c4;
  undefined4 local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  undefined4 local_88;
  undefined4 local_84;
  undefined4 local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  int aiStack_54 [13];
  
  local_bc = 0;
  local_b8 = 0;
  local_b4 = 0;
  local_b0 = 0;
  local_ac = 0;
  local_a8 = 0;
  local_a4 = 0;
  local_a0 = 0;
  local_9c = 0;
  local_98 = 0;
  local_94 = 0;
  local_90 = 0;
  local_88 = 0;
  local_84 = 0;
  local_80 = 0;
  local_7c = 0;
  local_78 = 0;
  local_74 = 0;
  local_70 = 0;
  local_6c = 0;
  local_68 = 0;
  local_64 = 0;
  local_60 = 0;
  local_5c = 0;
  local_c0 = 0xfffffffe;
  local_8c = 0xfffffffb;
  iVar2 = FUN_00553a80();
  if (iVar2 != 0) {
    FUN_005166ae(4,"Blocking calls are not allowed from the UI thread.");
    gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
              ((TurnBasedMatchesResponse *)&local_58,(TurnBasedMatchesResponse *)&local_c0);
    goto LAB_0052e4be;
  }
  local_c8 = (mutex *)*param_2;
  local_c4 = 0;
  if (local_c8 == (mutex *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_007c4c60(1);
  }
  std::mutex::lock(local_c8);
  local_c4 = 1;
  iVar2 = *param_2;
  if (*(char *)(iVar2 + 8) == '\0') {
    FUN_007bfd24(&local_d0);
    lVar1 = (ulonglong)param_3 * 1000000 + CONCAT44(param_4 * 1000000,local_d0);
    local_58 = (undefined4)lVar1;
    aiStack_54[0] = iStack_cc + (int)((ulonglong)lVar1 >> 0x20);
    do {
      if (*(char *)(*param_2 + 8) != '\0') goto LAB_0052e4a8;
      iVar3 = std::condition_variable::
              __wait_until_impl<std::chrono::duration<long_long,std::ratio<1ll,1000000000ll>>>
                        ((unique_lock *)(iVar2 + 4),(time_point *)&local_c8);
    } while (iVar3 != 1);
    if (*(char *)(*param_2 + 8) != '\0') goto LAB_0052e4a8;
    pTVar4 = (TurnBasedMatchesResponse *)&local_8c;
  }
  else {
LAB_0052e4a8:
    pTVar4 = (TurnBasedMatchesResponse *)(*param_2 + 0xc);
  }
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
            ((TurnBasedMatchesResponse *)&local_58,pTVar4);
  std::unique_lock<std::mutex>::~unique_lock((unique_lock<std::mutex> *)&local_c8);
LAB_0052e4be:
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::TurnBasedMatchesResponse
            (param_1,(TurnBasedMatchesResponse *)&local_58);
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)aiStack_54);
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)&local_88);
  gpg::TurnBasedMultiplayerManager::TurnBasedMatchesResponse::{unnamed_type#1}::
  ~TurnBasedMatchesResponse((_unnamed_type_1_ *)&local_bc);
  return param_1;
}

// ---- FUN_0052ea54  @ 0x52ea54
byte * FUN_0052ea54(int param_1,byte *param_2,int param_3)

{
  byte *pbVar1;
  byte *pbVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  uint uVar19;
  uint uVar20;
  uint uVar21;
  uint uVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  uint local_68;
  uint local_64;
  int local_30;
  
  local_30 = *(int *)(param_1 + 8);
  local_68 = *(uint *)(param_1 + 0x10);
  local_64 = *(uint *)(param_1 + 0x14);
  uVar3 = *(uint *)(param_1 + 0xc);
  pbVar1 = param_2;
  do {
    pbVar2 = pbVar1 + 0x40;
    uVar4 = (uint)pbVar1[2] << 0x10 | (uint)pbVar1[1] << 8 | (uint)*pbVar1 | (uint)pbVar1[3] << 0x18
    ;
    *(uint *)(param_1 + 0x58) = uVar4;
    uVar5 = ((local_64 ^ local_68) & uVar3 ^ local_64) + local_30 + -0x28955b88 + uVar4;
    uVar6 = uVar3 + (uVar5 >> 0x19 | uVar5 * 0x80);
    uVar7 = (uint)pbVar1[6] << 0x10 | (uint)pbVar1[5] << 8 | (uint)pbVar1[4] |
            (uint)pbVar1[7] << 0x18;
    *(uint *)(param_1 + 0x5c) = uVar7;
    uVar5 = local_64 + 0xe8c7b756 + uVar7 + ((local_68 ^ uVar3) & uVar6 ^ local_68);
    uVar5 = uVar6 + (uVar5 >> 0x14 | uVar5 * 0x1000);
    uVar8 = (uint)pbVar1[10] << 0x10 | (uint)pbVar1[9] << 8 | (uint)pbVar1[8] |
            (uint)pbVar1[0xb] << 0x18;
    *(uint *)(param_1 + 0x60) = uVar8;
    uVar9 = local_68 + 0x242070db + uVar8 + ((uVar6 ^ uVar3) & uVar5 ^ uVar3);
    uVar10 = uVar5 + (uVar9 >> 0xf | uVar9 * 0x20000);
    uVar11 = (uint)pbVar1[0xe] << 0x10 | (uint)pbVar1[0xd] << 8 | (uint)pbVar1[0xc] |
             (uint)pbVar1[0xf] << 0x18;
    *(uint *)(param_1 + 100) = uVar11;
    uVar9 = ((uVar5 ^ uVar6) & uVar10 ^ uVar6) + uVar3 + 0xc1bdceee + uVar11;
    uVar9 = uVar10 + (uVar9 >> 10 | uVar9 * 0x400000);
    uVar12 = (uint)pbVar1[0x12] << 0x10 | (uint)pbVar1[0x11] << 8 | (uint)pbVar1[0x10] |
             (uint)pbVar1[0x13] << 0x18;
    *(uint *)(param_1 + 0x68) = uVar12;
    uVar6 = uVar6 + uVar12 + 0xf57c0faf + (uVar9 & (uVar10 ^ uVar5) ^ uVar5);
    uVar6 = uVar9 + (uVar6 >> 0x19 | uVar6 * 0x80);
    uVar13 = (uint)pbVar1[0x16] << 0x10 | (uint)pbVar1[0x15] << 8 | (uint)pbVar1[0x14] |
             (uint)pbVar1[0x17] << 0x18;
    *(uint *)(param_1 + 0x6c) = uVar13;
    uVar5 = uVar5 + uVar13 + 0x4787c62a + (uVar6 & (uVar9 ^ uVar10) ^ uVar10);
    uVar5 = uVar6 + (uVar5 >> 0x14 | uVar5 * 0x1000);
    uVar14 = (uint)pbVar1[0x1a] << 0x10 | (uint)pbVar1[0x19] << 8 | (uint)pbVar1[0x18] |
             (uint)pbVar1[0x1b] << 0x18;
    *(uint *)(param_1 + 0x70) = uVar14;
    uVar10 = uVar10 + uVar14 + 0xa8304613 + (uVar5 & (uVar6 ^ uVar9) ^ uVar9);
    uVar10 = uVar5 + (uVar10 >> 0xf | uVar10 * 0x20000);
    uVar15 = (uint)pbVar1[0x1e] << 0x10 | (uint)pbVar1[0x1d] << 8 | (uint)pbVar1[0x1c] |
             (uint)pbVar1[0x1f] << 0x18;
    *(uint *)(param_1 + 0x74) = uVar15;
    uVar9 = uVar9 + uVar15 + 0xfd469501 + (uVar10 & (uVar5 ^ uVar6) ^ uVar6);
    uVar9 = uVar10 + (uVar9 >> 10 | uVar9 * 0x400000);
    uVar16 = (uint)pbVar1[0x22] << 0x10 | (uint)pbVar1[0x21] << 8 | (uint)pbVar1[0x20] |
             (uint)pbVar1[0x23] << 0x18;
    *(uint *)(param_1 + 0x78) = uVar16;
    uVar6 = uVar6 + uVar16 + 0x698098d8 + (uVar9 & (uVar10 ^ uVar5) ^ uVar5);
    uVar6 = uVar9 + (uVar6 >> 0x19 | uVar6 * 0x80);
    uVar17 = (uint)pbVar1[0x26] << 0x10 | (uint)pbVar1[0x25] << 8 | (uint)pbVar1[0x24] |
             (uint)pbVar1[0x27] << 0x18;
    *(uint *)(param_1 + 0x7c) = uVar17;
    uVar5 = uVar5 + uVar17 + 0x8b44f7af + (uVar6 & (uVar9 ^ uVar10) ^ uVar10);
    uVar5 = uVar6 + (uVar5 >> 0x14 | uVar5 * 0x1000);
    uVar18 = (uint)pbVar1[0x2a] << 0x10 | (uint)pbVar1[0x29] << 8 | (uint)pbVar1[0x28] |
             (uint)pbVar1[0x2b] << 0x18;
    *(uint *)(param_1 + 0x80) = uVar18;
    uVar10 = uVar10 + (uVar18 - 0xa44f) + (uVar5 & (uVar6 ^ uVar9) ^ uVar9);
    uVar10 = uVar5 + (uVar10 >> 0xf | uVar10 * 0x20000);
    uVar19 = (uint)pbVar1[0x2e] << 0x10 | (uint)pbVar1[0x2d] << 8 | (uint)pbVar1[0x2c] |
             (uint)pbVar1[0x2f] << 0x18;
    *(uint *)(param_1 + 0x84) = uVar19;
    uVar9 = uVar9 + uVar19 + 0x895cd7be + (uVar10 & (uVar5 ^ uVar6) ^ uVar6);
    uVar21 = uVar10 + (uVar9 >> 10 | uVar9 * 0x400000);
    uVar20 = (uint)pbVar1[0x32] << 0x10 | (uint)pbVar1[0x31] << 8 | (uint)pbVar1[0x30] |
             (uint)pbVar1[0x33] << 0x18;
    *(uint *)(param_1 + 0x88) = uVar20;
    uVar6 = uVar6 + uVar20 + 0x6b901122 + (uVar21 & (uVar10 ^ uVar5) ^ uVar5);
    uVar6 = uVar21 + (uVar6 >> 0x19 | uVar6 * 0x80);
    uVar9 = (uint)pbVar1[0x36] << 0x10 | (uint)pbVar1[0x35] << 8 | (uint)pbVar1[0x34] |
            (uint)pbVar1[0x37] << 0x18;
    *(uint *)(param_1 + 0x8c) = uVar9;
    uVar5 = uVar5 + uVar9 + 0xfd987193 + (uVar6 & (uVar21 ^ uVar10) ^ uVar10);
    uVar5 = uVar6 + (uVar5 >> 0x14 | uVar5 * 0x1000);
    uVar25 = (uint)pbVar1[0x3a] << 0x10 | (uint)pbVar1[0x39] << 8 | (uint)pbVar1[0x38] |
             (uint)pbVar1[0x3b] << 0x18;
    *(uint *)(param_1 + 0x90) = uVar25;
    uVar10 = uVar25 + 0xa679438e + uVar10 + (uVar5 & (uVar6 ^ uVar21) ^ uVar21);
    uVar22 = uVar5 + (uVar10 >> 0xf | uVar10 * 0x20000);
    uVar10 = (uint)pbVar1[0x3e] << 0x10 | (uint)pbVar1[0x3d] << 8 | (uint)pbVar1[0x3c] |
             (uint)pbVar1[0x3f] << 0x18;
    *(uint *)(param_1 + 0x94) = uVar10;
    uVar21 = uVar21 + uVar10 + 0x49b40821 + (uVar22 & (uVar5 ^ uVar6) ^ uVar6);
    uVar21 = uVar22 + (uVar21 >> 10 | uVar21 * 0x400000);
    uVar6 = uVar6 + uVar7 + 0xf61e2562 + ((uVar21 ^ uVar22) & uVar5 ^ uVar22);
    uVar6 = uVar21 + (uVar6 >> 0x1b | uVar6 * 0x20);
    uVar5 = uVar5 + uVar14 + 0xc040b340 + ((uVar6 ^ uVar21) & uVar22 ^ uVar21);
    uVar5 = uVar6 + (uVar5 >> 0x17 | uVar5 * 0x200);
    uVar22 = uVar22 + uVar19 + 0x265e5a51 + ((uVar5 ^ uVar6) & uVar21 ^ uVar6);
    uVar22 = uVar5 + (uVar22 >> 0x12 | uVar22 * 0x4000);
    uVar21 = uVar21 + uVar4 + 0xe9b6c7aa + ((uVar22 ^ uVar5) & uVar6 ^ uVar5);
    uVar21 = uVar22 + (uVar21 >> 0xc | uVar21 * 0x100000);
    uVar6 = uVar6 + uVar13 + 0xd62f105d + ((uVar21 ^ uVar22) & uVar5 ^ uVar22);
    uVar6 = uVar21 + (uVar6 >> 0x1b | uVar6 * 0x20);
    uVar5 = uVar5 + uVar18 + 0x2441453 + ((uVar6 ^ uVar21) & uVar22 ^ uVar21);
    uVar5 = uVar6 + (uVar5 >> 0x17 | uVar5 * 0x200);
    uVar22 = uVar22 + uVar10 + 0xd8a1e681 + ((uVar5 ^ uVar6) & uVar21 ^ uVar6);
    uVar22 = uVar5 + (uVar22 >> 0x12 | uVar22 * 0x4000);
    uVar21 = uVar21 + uVar12 + 0xe7d3fbc8 + ((uVar22 ^ uVar5) & uVar6 ^ uVar5);
    uVar21 = uVar22 + (uVar21 >> 0xc | uVar21 * 0x100000);
    uVar6 = uVar6 + uVar17 + 0x21e1cde6 + ((uVar21 ^ uVar22) & uVar5 ^ uVar22);
    uVar6 = uVar21 + (uVar6 >> 0x1b | uVar6 * 0x20);
    uVar5 = uVar5 + uVar25 + 0xc33707d6 + ((uVar6 ^ uVar21) & uVar22 ^ uVar21);
    uVar5 = uVar6 + (uVar5 >> 0x17 | uVar5 * 0x200);
    uVar22 = uVar22 + uVar11 + 0xf4d50d87 + ((uVar5 ^ uVar6) & uVar21 ^ uVar6);
    uVar22 = uVar5 + (uVar22 >> 0x12 | uVar22 * 0x4000);
    uVar21 = uVar21 + uVar16 + 0x455a14ed + ((uVar22 ^ uVar5) & uVar6 ^ uVar5);
    uVar21 = uVar22 + (uVar21 >> 0xc | uVar21 * 0x100000);
    uVar6 = uVar6 + uVar9 + 0xa9e3e905 + ((uVar21 ^ uVar22) & uVar5 ^ uVar22);
    uVar6 = uVar21 + (uVar6 >> 0x1b | uVar6 * 0x20);
    uVar5 = uVar5 + uVar8 + 0xfcefa3f8 + ((uVar6 ^ uVar21) & uVar22 ^ uVar21);
    uVar5 = uVar6 + (uVar5 >> 0x17 | uVar5 * 0x200);
    uVar22 = uVar15 + 0x676f02d9 + uVar22 + ((uVar5 ^ uVar6) & uVar21 ^ uVar6);
    uVar22 = uVar5 + (uVar22 >> 0x12 | uVar22 * 0x4000);
    uVar21 = uVar20 + 0x8d2a4c8a + uVar21 + ((uVar22 ^ uVar5) & uVar6 ^ uVar5);
    uVar24 = uVar22 + (uVar21 >> 0xc | uVar21 * 0x100000);
    uVar6 = (uVar24 ^ uVar22 ^ uVar5) + uVar6 + (uVar13 - 0x5c6be);
    uVar6 = uVar24 + (uVar6 >> 0x1c | uVar6 * 0x10);
    uVar5 = uVar5 + uVar16 + 0x8771f681 + (uVar6 ^ uVar24 ^ uVar22);
    uVar5 = uVar6 + (uVar5 >> 0x15 | uVar5 * 0x800);
    uVar21 = uVar22 + uVar19 + 0x6d9d6122 + (uVar5 ^ uVar6 ^ uVar24);
    uVar23 = uVar5 + (uVar21 >> 0x10 | uVar21 * 0x10000);
    uVar21 = uVar24 + uVar25 + 0xfde5380c + (uVar23 ^ uVar5 ^ uVar6);
    uVar22 = uVar23 + (uVar21 >> 9 | uVar21 * 0x800000);
    uVar6 = uVar6 + uVar7 + 0xa4beea44 + (uVar22 ^ uVar23 ^ uVar5);
    uVar21 = uVar22 + (uVar6 >> 0x1c | uVar6 * 0x10);
    uVar5 = uVar5 + uVar12 + 0x4bdecfa9 + (uVar21 ^ uVar22 ^ uVar23);
    uVar6 = uVar21 + (uVar5 >> 0x15 | uVar5 * 0x800);
    uVar5 = (uVar6 ^ uVar21 ^ uVar22) + uVar23 + uVar15 + 0xf6bb4b60;
    uVar5 = uVar6 + (uVar5 >> 0x10 | uVar5 * 0x10000);
    uVar22 = (uVar5 ^ uVar6 ^ uVar21) + uVar22 + uVar18 + 0xbebfbc70;
    uVar22 = uVar5 + (uVar22 >> 9 | uVar22 * 0x800000);
    uVar21 = uVar21 + uVar9 + 0x289b7ec6 + (uVar22 ^ uVar5 ^ uVar6);
    uVar21 = uVar22 + (uVar21 >> 0x1c | uVar21 * 0x10);
    uVar6 = uVar6 + uVar4 + 0xeaa127fa + (uVar21 ^ uVar22 ^ uVar5);
    uVar23 = uVar21 + (uVar6 >> 0x15 | uVar6 * 0x800);
    uVar5 = uVar5 + uVar11 + 0xd4ef3085 + (uVar23 ^ uVar21 ^ uVar22);
    uVar5 = uVar23 + (uVar5 >> 0x10 | uVar5 * 0x10000);
    uVar6 = uVar22 + uVar14 + 0x4881d05 + (uVar23 ^ uVar21 ^ uVar5);
    uVar22 = uVar5 + (uVar6 >> 9 | uVar6 * 0x800000);
    uVar6 = uVar21 + uVar17 + 0xd9d4d039 + (uVar22 ^ uVar5 ^ uVar23);
    uVar21 = uVar22 + (uVar6 >> 0x1c | uVar6 * 0x10);
    uVar6 = uVar23 + uVar20 + 0xe6db99e5 + (uVar21 ^ uVar22 ^ uVar5);
    uVar6 = uVar21 + (uVar6 >> 0x15 | uVar6 * 0x800);
    uVar5 = uVar5 + uVar10 + 0x1fa27cf8 + (uVar6 ^ uVar21 ^ uVar22);
    uVar5 = uVar6 + (uVar5 >> 0x10 | uVar5 * 0x10000);
    uVar22 = uVar22 + uVar8 + 0xc4ac5665 + (uVar5 ^ uVar6 ^ uVar21);
    uVar22 = uVar5 + (uVar22 >> 9 | uVar22 * 0x800000);
    uVar4 = uVar21 + uVar4 + 0xf4292244 + ((uVar22 | ~uVar6) ^ uVar5);
    uVar21 = uVar22 + (uVar4 >> 0x1a | uVar4 * 0x40);
    uVar4 = uVar6 + uVar15 + 0x432aff97 + ((uVar21 | ~uVar5) ^ uVar22);
    uVar4 = uVar21 + (uVar4 >> 0x16 | uVar4 * 0x400);
    uVar5 = uVar5 + uVar25 + 0xab9423a7 + ((uVar4 | ~uVar22) ^ uVar21);
    uVar5 = uVar4 + (uVar5 >> 0x11 | uVar5 * 0x8000);
    uVar6 = uVar22 + uVar13 + 0xfc93a039 + ((uVar5 | ~uVar21) ^ uVar4);
    uVar6 = uVar5 + (uVar6 >> 0xb | uVar6 * 0x200000);
    uVar13 = uVar20 + 0x655b59c3 + uVar21 + ((uVar6 | ~uVar4) ^ uVar5);
    uVar13 = uVar6 + (uVar13 >> 0x1a | uVar13 * 0x40);
    uVar4 = uVar4 + uVar11 + 0x8f0ccc92 + ((uVar13 | ~uVar5) ^ uVar6);
    uVar4 = uVar13 + (uVar4 >> 0x16 | uVar4 * 0x400);
    uVar5 = uVar5 + (uVar18 - 0x100b83) + ((uVar4 | ~uVar6) ^ uVar13);
    uVar5 = uVar4 + (uVar5 >> 0x11 | uVar5 * 0x8000);
    uVar6 = uVar6 + uVar7 + 0x85845dd1 + ((uVar5 | ~uVar13) ^ uVar4);
    uVar6 = uVar5 + (uVar6 >> 0xb | uVar6 * 0x200000);
    uVar7 = uVar13 + uVar16 + 0x6fa87e4f + ((uVar6 | ~uVar4) ^ uVar5);
    uVar11 = uVar6 + (uVar7 >> 0x1a | uVar7 * 0x40);
    uVar4 = uVar4 + uVar10 + 0xfe2ce6e0 + ((uVar11 | ~uVar5) ^ uVar6);
    uVar4 = uVar11 + (uVar4 >> 0x16 | uVar4 * 0x400);
    uVar5 = uVar5 + uVar14 + 0xa3014314 + ((uVar4 | ~uVar6) ^ uVar11);
    uVar5 = uVar4 + (uVar5 >> 0x11 | uVar5 * 0x8000);
    uVar6 = uVar6 + uVar9 + 0x4e0811a1 + ((uVar5 | ~uVar11) ^ uVar4);
    uVar7 = uVar5 + (uVar6 >> 0xb | uVar6 * 0x200000);
    uVar6 = uVar12 + 0xf7537e82 + uVar11 + ((uVar7 | ~uVar4) ^ uVar5);
    uVar6 = uVar7 + (uVar6 >> 0x1a | uVar6 * 0x40);
    uVar4 = uVar4 + uVar19 + 0xbd3af235 + ((uVar6 | ~uVar5) ^ uVar7);
    uVar4 = uVar6 + (uVar4 >> 0x16 | uVar4 * 0x400);
    uVar5 = uVar5 + uVar8 + 0x2ad7d2bb + ((uVar4 | ~uVar7) ^ uVar6);
    uVar5 = uVar4 + (uVar5 >> 0x11 | uVar5 * 0x8000);
    uVar7 = uVar17 + 0xeb86d391 + uVar7 + ((uVar5 | ~uVar6) ^ uVar4);
    local_30 = local_30 + uVar6;
    uVar3 = uVar3 + uVar5 + (uVar7 >> 0xb | uVar7 * 0x200000);
    local_68 = local_68 + uVar5;
    local_64 = local_64 + uVar4;
    pbVar1 = pbVar2;
  } while (pbVar2 != param_2 + param_3);
  *(uint *)(param_1 + 0xc) = uVar3;
  *(uint *)(param_1 + 0x10) = local_68;
  *(int *)(param_1 + 8) = local_30;
  *(uint *)(param_1 + 0x14) = local_64;
  return pbVar2;
}

// ---- FUN_0052f3b4  @ 0x52f3b4
void FUN_0052f3b4(undefined4 *param_1)

{
  param_1[2] = 0x67452301;
  param_1[3] = 0xefcdab89;
  param_1[4] = 0x98badcfe;
  param_1[5] = 0x10325476;
  *param_1 = 0;
  param_1[1] = 0;
  return;
}

// ---- FUN_0052f3d8  @ 0x52f3d8
void FUN_0052f3d8(uint *param_1,void *param_2,uint param_3)

{
  uint uVar1;
  uint *__dest;
  uint uVar2;
  
  uVar1 = *param_1;
  uVar2 = param_3 + uVar1 & 0x1fffffff;
  *param_1 = uVar2;
  if (uVar2 < uVar1) {
    param_1[1] = param_1[1] + 1;
  }
  uVar1 = uVar1 & 0x3f;
  param_1[1] = param_1[1] + (param_3 >> 0x1d);
  if (uVar1 != 0) {
    uVar2 = 0x40 - uVar1;
    __dest = (uint *)(uVar1 + 0x18 + (int)param_1);
    if (param_3 < uVar2) goto LAB_0052f442;
    memcpy(__dest,param_2,uVar2);
    param_3 = param_3 - uVar2;
    FUN_0052ea54(param_1,param_1 + 6,0x40);
    param_2 = (void *)((int)param_2 + uVar2);
  }
  if (0x3f < param_3) {
    uVar1 = param_3 & 0xffffffc0;
    param_3 = param_3 & 0x3f;
    param_2 = (void *)FUN_0052ea54(param_1,param_2,uVar1);
  }
  __dest = param_1 + 6;
LAB_0052f442:
  memcpy(__dest,param_2,param_3);
  return;
}

// ---- FUN_0052f44c  @ 0x52f44c
void FUN_0052f44c(undefined1 *param_1,uint *param_2)

{
  int iVar1;
  size_t __n;
  uint uVar2;
  uint uVar3;
  
  uVar2 = *param_2 & 0x3f;
  iVar1 = uVar2 + 1;
  *(undefined1 *)((int)param_2 + uVar2 + 0x18) = 0x80;
  __n = 0x3f - uVar2;
  if (__n < 8) {
    memset((void *)(uVar2 + 0x19 + (int)param_2),0,__n);
    FUN_0052ea54(param_2,param_2 + 6,0x40);
    __n = 0x40;
    iVar1 = 0;
  }
  memset((void *)(iVar1 + 0x18 + (int)param_2),0,__n - 8);
  uVar2 = *param_2;
  *param_2 = uVar2 << 3;
  *(char *)(param_2 + 0x14) = (char)(uVar2 << 3);
  *(char *)((int)param_2 + 0x51) = (char)((uVar2 & 0x1fffffff) >> 5);
  *(char *)((int)param_2 + 0x53) = (char)((uVar2 & 0x1fffffff) >> 0x15);
  uVar3 = param_2[1];
  *(char *)((int)param_2 + 0x52) = (char)((uVar2 & 0x1fffffff) >> 0xd);
  *(char *)(param_2 + 0x15) = (char)uVar3;
  *(char *)((int)param_2 + 0x55) = (char)(uVar3 >> 8);
  *(char *)((int)param_2 + 0x56) = (char)(uVar3 >> 0x10);
  *(char *)((int)param_2 + 0x57) = (char)(uVar3 >> 0x18);
  FUN_0052ea54(param_2,param_2 + 6,0x40);
  *param_1 = (char)param_2[2];
  param_1[1] = (char)(param_2[2] >> 8);
  param_1[2] = (char)*(undefined2 *)((int)param_2 + 10);
  param_1[3] = *(undefined1 *)((int)param_2 + 0xb);
  param_1[4] = (char)param_2[3];
  param_1[5] = (char)(param_2[3] >> 8);
  param_1[6] = (char)*(undefined2 *)((int)param_2 + 0xe);
  param_1[7] = *(undefined1 *)((int)param_2 + 0xf);
  param_1[8] = (char)param_2[4];
  param_1[9] = (char)(param_2[4] >> 8);
  param_1[10] = (char)*(undefined2 *)((int)param_2 + 0x12);
  param_1[0xb] = *(undefined1 *)((int)param_2 + 0x13);
  param_1[0xc] = (char)param_2[5];
  param_1[0xd] = (char)(param_2[5] >> 8);
  param_1[0xe] = (char)*(undefined2 *)((int)param_2 + 0x16);
  param_1[0xf] = *(undefined1 *)((int)param_2 + 0x17);
  memset(param_2,0,0x98);
  return;
}

// ---- FUN_0052f54c  @ 0x52f54c
void FUN_0052f54c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 *param_4)

{
  fprintf((FILE *)recv,"[libprotobuf %s %s:%d] %s\n",(&PTR_DAT_008fe560)[param_1],param_2,param_3,
          *param_4);
  fflush((FILE *)recv);
  return;
}

// ---- FUN_0052f5bc  @ 0x52f5bc
exception * FUN_0052f5bc(exception *param_1)

{
  *(undefined **)param_1 = &DAT_00924e00;
  FUN_007c5914(param_1 + 0xc);
  std::exception::~exception(param_1);
  return param_1;
}

// ---- FUN_0052f5dc  @ 0x52f5dc
void * FUN_0052f5dc(void *param_1)

{
  FUN_0052f5bc();
  operator_delete(param_1);
  return param_1;
}

// ---- FUN_0052f604  @ 0x52f604
void FUN_0052f604(int *param_1,undefined *param_2,undefined4 param_3,uint param_4)

{
  int iVar1;
  undefined *local_1c;
  undefined *local_18;
  uint local_14;
  
  iVar1 = *param_1;
  local_1c = param_2;
  local_18 = (undefined *)param_3;
  local_14 = param_4;
  (*DAT_00943f88)();
  if (iVar1 != 2) {
    local_1c = &DAT_00924e18;
    local_14 = local_14 & 0xffffff00;
    local_18 = param_2;
    FUN_0052fe04(param_1,&local_1c);
  }
  return;
}

// ---- FUN_0052f63c  @ 0x52f63c
undefined4 FUN_0052f63c(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined1 auStack_94 [4];
  char acStack_90 [127];
  undefined1 local_11;
  
  uVar1 = __divsi3(param_2,
                   "NS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES3_EESA_S4_E5LevelEEEPT_j");
  uVar2 = __divsi3(param_2,1000);
  __aeabi_idivmod(uVar2,1000);
  uVar2 = extraout_r1;
  __aeabi_idivmod(param_2,1000);
  snprintf(acStack_90,0x80,"%d.%d.%d",uVar1,uVar2,extraout_r1_00);
  local_11 = 0;
  FUN_007c6a60(param_1,acStack_90,auStack_94);
  return param_1;
}

// ---- FUN_0052f69c  @ 0x52f69c
void FUN_0052f69c(void)

{
  FUN_0052f604(&DAT_00960c20,&DAT_0052fdc1);
  return;
}

// ---- FUN_0052f6b0  @ 0x52f6b0
int FUN_0052f6b0(int param_1)

{
  thunk_FUN_007c6120(param_1 + 0xc);
  return param_1;
}

// ---- FUN_0052f6be  @ 0x52f6be
int FUN_0052f6be(int param_1)

{
  FUN_007c6320(param_1 + 0xc);
  return param_1;
}

// ---- FUN_0052f6cc  @ 0x52f6cc
int FUN_0052f6cc(int param_1,undefined4 param_2)

{
  char acStack_90 [127];
  undefined1 local_11;
  
  snprintf(acStack_90,0x80,"%c",param_2);
  local_11 = 0;
  FUN_007c6320(param_1 + 0xc,acStack_90);
  return param_1;
}

// ---- FUN_0052f6fc  @ 0x52f6fc
int FUN_0052f6fc(int param_1,undefined4 param_2)

{
  char acStack_90 [127];
  undefined1 local_11;
  
  snprintf(acStack_90,0x80,"%d",param_2);
  local_11 = 0;
  FUN_007c6320(param_1 + 0xc,acStack_90);
  return param_1;
}

// ---- FUN_0052f72c  @ 0x52f72c
int FUN_0052f72c(int param_1,undefined4 param_2)

{
  char acStack_90 [127];
  undefined1 local_11;
  
  snprintf(acStack_90,0x80,"%u",param_2);
  local_11 = 0;
  FUN_007c6320(param_1 + 0xc,acStack_90);
  return param_1;
}

// ---- FUN_0052f7f0  @ 0x52f7f0
void FUN_0052f7f0(undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  *param_1 = param_2;
  param_1[1] = param_3;
  param_1[2] = param_4;
  param_1[3] = &DAT_00972528;
  return;
}

// ---- FUN_0052f808  @ 0x52f808
int FUN_0052f808(int param_1)

{
  FUN_007c5914(param_1 + 0xc);
  return param_1;
}

// ---- FUN_0052f83e  @ 0x52f83e
undefined4 * FUN_0052f83e(undefined4 *param_1)

{
  pthread_mutex_t *__mutex;
  
  __mutex = operator_new(4);
  *param_1 = __mutex;
  pthread_mutex_init(__mutex,(pthread_mutexattr_t *)0x0);
  return param_1;
}

// ---- FUN_0052f854  @ 0x52f854
void FUN_0052f854(void)

{
  void *pvVar1;
  
  DAT_00960c2c = operator_new(0xc);
  *DAT_00960c2c = 0;
  DAT_00960c2c[1] = 0;
  DAT_00960c2c[2] = 0;
  pvVar1 = operator_new(4);
  FUN_0052f83e();
  DAT_00960c30 = pvVar1;
  return;
}

// ---- FUN_0052f8cc  @ 0x52f8cc
void FUN_0052f8cc(undefined4 *param_1)

{
  int __errnum;
  char *pcVar1;
  undefined4 local_20;
  char *local_1c;
  undefined4 local_18;
  undefined1 *local_14 [2];
  
  __errnum = pthread_mutex_unlock((pthread_mutex_t *)*param_1);
  if (__errnum != 0) {
    local_20 = 3;
    local_1c = 
    "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/stubs/common.cc"
    ;
    local_18 = 0x137;
    local_14[0] = &DAT_00972528;
    FUN_007c6320(local_14,"pthread_mutex_unlock: ");
    pcVar1 = strerror(__errnum);
    FUN_007c6320(local_14,pcVar1);
    FUN_0052f938(&local_20);
    FUN_007c5914(local_14);
  }
  return;
}

// ---- FUN_0052f938  @ 0x52f938
void FUN_0052f938(int *param_1)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  
  if (*param_1 != 3) {
    FUN_0052f69c();
    uVar1 = DAT_00960c34;
    FUN_0052fb80(DAT_00960c34);
    iVar3 = DAT_00960c28;
    FUN_0052f8cc(uVar1);
    if (0 < iVar3) goto LAB_0052f974;
  }
  (*DAT_00943fd4)(*param_1,param_1[1],param_1[2],param_1 + 3);
LAB_0052f974:
  if (*param_1 == 3) {
    puVar2 = (undefined4 *)__cxa_allocate_exception(0x10);
    iVar3 = param_1[1];
    iVar4 = param_1[2];
    *puVar2 = &DAT_00924e00;
    puVar2[1] = iVar3;
    puVar2[2] = iVar4;
    FUN_007c64e8(puVar2 + 3,param_1 + 3);
                    /* WARNING: Subroutine does not return */
    __cxa_throw(puVar2,&DAT_00924dd0,0x52f5bd);
  }
  return;
}

// ---- FUN_0052f9d4  @ 0x52f9d4
void FUN_0052f9d4(undefined4 param_1,undefined4 param_2)

{
  FUN_0052f938(param_2);
  return;
}

// ---- FUN_0052f9dc  @ 0x52f9dc
void FUN_0052f9dc(int param_1,int param_2,undefined4 param_3)

{
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined4 local_28;
  char *local_24;
  undefined4 local_20;
  undefined1 *local_1c;
  
  if (0x1e9808 < param_2) {
    local_28 = 3;
    local_24 = 
    "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/stubs/common.cc"
    ;
    local_20 = 0x3d;
    local_1c = &DAT_00972528;
    FUN_007c6320(&local_1c,"This program requires version ");
    FUN_0052f63c(auStack_30,param_2);
    thunk_FUN_007c6120(&local_1c,auStack_30);
    FUN_007c6320(&local_1c," of the Protocol Buffer runtime library, but the installed version is ")
    ;
    FUN_0052f63c(auStack_2c,"asD0Ev");
    thunk_FUN_007c6120(&local_1c,auStack_2c);
    FUN_007c6320(&local_1c,
                 ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in \""
                );
    FUN_007c6320(&local_1c,param_3);
    FUN_007c6320(&local_1c,&DAT_00804aa9);
    FUN_0052f938(&local_28);
    FUN_007c5914(auStack_2c);
    FUN_007c5914(auStack_30);
    FUN_007c5914(&local_1c);
  }
  if (param_1 < 0x1e9808) {
    local_28 = 3;
    local_24 = 
    "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/stubs/common.cc"
    ;
    local_20 = 0x48;
    local_1c = &DAT_00972528;
    FUN_007c6320(&local_1c,"This program was compiled against version ");
    FUN_0052f63c(auStack_30,param_1);
    thunk_FUN_007c6120(&local_1c,auStack_30);
    FUN_007c6320(&local_1c,
                 " of the Protocol Buffer runtime library, which is not compatible with the installed version ("
                );
    FUN_0052f63c(auStack_2c,"asD0Ev");
    thunk_FUN_007c6120(&local_1c,auStack_2c);
    FUN_007c6320(&local_1c,
                 ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in \""
                );
    FUN_007c6320(&local_1c,param_3);
    FUN_007c6320(&local_1c,&DAT_00804aa9);
    FUN_0052f938(&local_28);
    FUN_007c5914(auStack_2c);
    FUN_007c5914(auStack_30);
    FUN_007c5914(&local_1c);
  }
  return;
}

// ---- FUN_0052fb80  @ 0x52fb80
void FUN_0052fb80(undefined4 *param_1)

{
  int __errnum;
  char *pcVar1;
  undefined4 local_20;
  char *local_1c;
  undefined4 local_18;
  undefined1 *local_14 [2];
  
  __errnum = pthread_mutex_lock((pthread_mutex_t *)*param_1);
  if (__errnum != 0) {
    local_20 = 3;
    local_1c = 
    "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/stubs/common.cc"
    ;
    local_18 = 0x130;
    local_14[0] = &DAT_00972528;
    FUN_007c6320(local_14,"pthread_mutex_lock: ");
    pcVar1 = strerror(__errnum);
    FUN_007c6320(local_14,pcVar1);
    FUN_0052f938(&local_20);
    FUN_007c5914(local_14);
  }
  return;
}

// ---- FUN_0052fdf4  @ 0x52fdf4
void FUN_0052fdf4(void)

{
  (*DAT_00943f8c)();
  return;
}

// ---- FUN_0052fe04  @ 0x52fe04
void FUN_0052fe04(int *param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  
  iVar1 = *param_1;
  FUN_0052fdf4();
  if (iVar1 != 2) {
    while (iVar1 = (*DAT_00943f40)(0,1,param_1,DAT_00943f40,param_4), iVar1 != 0) {
      iVar1 = *param_1;
      if (iVar1 != 0) {
        while (iVar1 == 1) {
          sched_yield();
          iVar1 = *param_1;
          FUN_0052fdf4();
        }
        return;
      }
    }
    (**(code **)(*param_2 + 8))(param_2);
    FUN_0052fdf4();
    *param_1 = 2;
  }
  return;
}

// ---- FUN_0052fe6c  @ 0x52fe6c
void FUN_0052fe6c(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_0052fe6c_1_00924e30;
  return;
}

// ---- FUN_0052feac  @ 0x52feac
void FUN_0052feac(int param_1,int param_2,int param_3)

{
  undefined4 uVar1;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [20];
  
  if (param_1 != param_2) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
                 ,0x3f);
    uVar1 = FUN_0052f6be(auStack_28,
                         "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): "
                        );
    uVar1 = FUN_0052f6be(uVar1,"Protocol message was modified concurrently during serialization.");
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  if (param_3 != param_1) {
    FUN_0052f7f0(auStack_28,3,
                 "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
                 ,0x41);
    uVar1 = FUN_0052f6be(auStack_28,
                         "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): "
                        );
    uVar1 = FUN_0052f6be(uVar1,
                         "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of the message."
                        );
    FUN_0052f9d4(auStack_2c,uVar1);
    FUN_0052f808(auStack_28);
  }
  FUN_0052f7f0(auStack_28,3,
               "/builddata/pulse-data/agents/hpya5.eem/recipes/816348608/base/googleclient/third_party/protobuf/files/src/google/protobuf/message_lite.cc"
               ,0x45);
  uVar1 = FUN_0052f6be(auStack_28,"This shouldn\'t be called if all the sizes are equal.");
  FUN_0052f9d4(auStack_2c,uVar1);
  FUN_0052f808(auStack_28);
  return;
}

// ---- FUN_0052ff74  @ 0x52ff74
undefined4 * FUN_0052ff74(undefined4 *param_1,int *param_2)

{
  undefined4 *puStack_18;
  int *piStack_14;
  
  *param_1 = &DAT_00972528;
  puStack_18 = param_1;
  piStack_14 = param_2;
  FUN_007c6320(param_1,"Can\'t ");
  FUN_007c6320(param_1,"parse");
  FUN_007c6320(param_1," message of type \"");
  (**(code **)(*param_2 + 8))(&piStack_14,param_2);
  thunk_FUN_007c6120(param_1,&piStack_14);
  FUN_007c5914(&piStack_14);
  FUN_007c6320(param_1,"\" because it is missing required fields: ");
  (**(code **)(*param_2 + 0x18))(&puStack_18,param_2);
  thunk_FUN_007c6120(param_1,&puStack_18);
  FUN_007c5914(&puStack_18);
  return param_1;
}
