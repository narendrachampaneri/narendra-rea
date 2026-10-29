// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- FUN_004c2d60  @ 0x4c2d60
void FUN_004c2d60(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095d0f8);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095d110,0xffffffffffffffff);
    RakNet::RakNetRandom::RakNetRandom((RakNetRandom *)&DAT_0095d120);
    FUN_007985bc(&DAT_0095d120,0x4c69e9,&DAT_00943000);
  }
  return;
}

// ---- FUN_004c5b1c  @ 0x4c5b1c
void FUN_004c5b1c(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095dc64);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095dc78,0xffffffffffffffff);
    DataStructures::List<RakNet::RakString::SharedString*>::List
              ((List<RakNet::RakString::SharedString*> *)RakNet::RakString::freeList);
    FUN_007985bc(RakNet::RakString::freeList,0x4c5bb5,&DAT_00943000);
    FUN_007985bc(&DAT_0095dc88,0x4c2ec5,&DAT_00943000);
  }
  return;
}

// ---- FUN_004c65dc  @ 0x4c65dc
void FUN_004c65dc(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095fca0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095fcb8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004c708c  @ 0x4c708c
void FUN_004c708c(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960690);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009606a8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004c9244  @ 0x4c9244
void FUN_004c9244(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009606b8);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009606d0,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004cbe8c  @ 0x4cbe8c
void FUN_004cbe8c(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009606e0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009606f8,0xffffffffffffffff);
  }
  return;
}
