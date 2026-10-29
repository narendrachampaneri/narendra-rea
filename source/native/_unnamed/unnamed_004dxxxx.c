// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 2 functions

// ---- FUN_004d64fc  @ 0x4d64fc
void FUN_004d64fc(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960708);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00960720,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_004dd784  @ 0x4dd784
void FUN_004dd784(int param_1,int param_2)

{
  if ((param_1 == 1) && (param_2 == 0xffff)) {
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00960730);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00960748,0xffffffffffffffff);
  }
  return;
}
