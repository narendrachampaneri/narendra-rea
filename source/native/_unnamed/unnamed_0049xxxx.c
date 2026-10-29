// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 10 functions

// ---- FUN_00491d00  @ 0x491d00
void FUN_00491d00(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00953e08);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953e20,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004920ac  @ 0x4920ac
void FUN_004920ac(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00953e30);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953e48,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004973a8  @ 0x4973a8
void FUN_004973a8(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095bce0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095bcf8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004975cc  @ 0x4975cc
int FUN_004975cc(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = ioctl(param_1,0x5401,param_2);
  return iVar1;
}

// ---- FUN_004975ec  @ 0x4975ec
int FUN_004975ec(int param_1,ulong param_2,undefined4 param_3)

{
  int iVar1;
  
  iVar1 = ioctl(param_1,param_2,param_3);
  return iVar1;
}

// ---- FUN_00499234  @ 0x499234
void FUN_00499234(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095bd18);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095bd30,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0049a9f4  @ 0x49a9f4
void FUN_0049a9f4(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095bd40);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095bd58,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0049aaf0  @ 0x49aaf0
void FUN_0049aaf0(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095bd68);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095bd80,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0049b95c  @ 0x49b95c
void FUN_0049b95c(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095bd90);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095bda8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0049df28  @ 0x49df28
void FUN_0049df28(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095bdb8);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0095bdd0,0xffffffffffffffff);
  }
  return;
}
