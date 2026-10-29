// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 74 functions

// ---- FUN_002e7024  @ 0x2e7024
/* WARNING: Control flow encountered bad instruction data */

void FUN_002e7024(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *unaff_r6;
  char in_OV;
  undefined8 unaff_d14;
  undefined8 uVar1;
  undefined8 in_d28;
  
  uVar1 = VectorShiftLeftInsert(unaff_d14,in_d28,0x2c);
  *unaff_r6 = param_2;
  unaff_r6[1] = param_3;
  VectorShiftLeftInsert(uVar1,in_d28,0xc);
  unaff_r6[2] = param_2;
  unaff_r6[3] = param_3;
  if (in_OV != '\0') {
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  FUN_007985bc();
  return;
}

// ---- FUN_002e7054  @ 0x2e7054
/* WARNING: Control flow encountered bad instruction data */

void FUN_002e7054(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *unaff_r6;
  char in_OV;
  undefined8 unaff_d14;
  undefined8 in_d28;
  
  VectorShiftLeftInsert(unaff_d14,in_d28,0xc);
  *unaff_r6 = param_2;
  unaff_r6[1] = param_3;
  if (in_OV != '\0') {
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  FUN_007985bc();
  return;
}

// ---- FUN_002e7060  @ 0x2e7060
/* WARNING: Control flow encountered bad instruction data */

void FUN_002e7060(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *unaff_r6;
  char in_OV;
  
  *unaff_r6 = param_2;
  unaff_r6[1] = param_3;
  if (in_OV != '\0') {
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  FUN_007985bc();
  return;
}

// ---- FUN_002e70a0  @ 0x2e70a0
undefined4 FUN_002e70a0(int param_1,int param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  uVar2 = 0;
  if (((*(uint *)(*(int *)(param_2 + 0x1e4) + 0x3c) & 1) != 0) &&
     (uVar2 = 0, *(int *)(param_1 + 8) != 0)) {
    iVar1 = Curl_multi_canPipeline();
    uVar2 = 0;
    if ((iVar1 != 0) &&
       ((uVar2 = 0, *(int *)(param_1 + 0x22c) == 5 || *(int *)(param_1 + 0x22c) == 1 &&
        (uVar2 = 0, *(int *)(param_1 + 0x230) != 1)))) {
      uVar2 = 1;
    }
  }
  return uVar2;
}

// ---- FUN_002e70e0  @ 0x2e70e0
void FUN_002e70e0(undefined4 param_1,int param_2)

{
  byte bVar1;
  byte *pbVar2;
  
  *(byte **)(param_2 + 0xc) = *(byte **)(param_2 + 8);
  pbVar2 = *(byte **)(param_2 + 8);
  do {
    bVar1 = *pbVar2;
    if (bVar1 == 0) {
      return;
    }
    pbVar2 = pbVar2 + 1;
  } while (-1 < (int)((uint)bVar1 << 0x18));
  Curl_infof(param_1,"IDN support not present, can\'t parse Unicode domains\n");
  return;
}

// ---- FUN_002e7100  @ 0x2e7100
void FUN_002e7100(int *param_1)

{
  (**(code **)(*param_1 + 0x28))();
  return;
}

// ---- FUN_002e710c  @ 0x2e710c
void FUN_002e710c(int *param_1)

{
  (**(code **)(*param_1 + 0x24))();
  return;
}

// ---- FUN_002e7118  @ 0x2e7118
void FUN_002e7118(int *param_1)

{
  (**(code **)(*param_1 + 0x28))();
  return;
}

// ---- FUN_002e7124  @ 0x2e7124
void FUN_002e7124(int *param_1)

{
  (**(code **)(*param_1 + 0x24))();
  return;
}

// ---- FUN_002e7130  @ 0x2e7130
void FUN_002e7130(int *param_1)

{
  (**(code **)(*param_1 + 0x24))();
  return;
}

// ---- FUN_002e713c  @ 0x2e713c
void FUN_002e713c(int *param_1)

{
  (**(code **)(*param_1 + 0x28))();
  return;
}

// ---- FUN_002e7148  @ 0x2e7148
void FUN_002e7148(int *param_1)

{
  (**(code **)(*param_1 + 0x24))();
  return;
}

// ---- FUN_002e7154  @ 0x2e7154
void FUN_002e7154(int *param_1)

{
  (**(code **)(*param_1 + 0x28))();
  return;
}

// ---- FUN_002e7160  @ 0x2e7160
void FUN_002e7160(int *param_1)

{
  (**(code **)(*param_1 + 0x34))();
  return;
}

// ---- FUN_002e716c  @ 0x2e716c
void FUN_002e716c(int *param_1)

{
  (**(code **)(*param_1 + 0x34))();
  return;
}

// ---- FUN_002e7178  @ 0x2e7178
void FUN_002e7178(int *param_1,int param_2)

{
  *param_1 = param_2;
  param_1[2] = 0;
  param_1[param_2 + 3] = 0;
  return;
}

// ---- FUN_002e7188  @ 0x2e7188
void FUN_002e7188(void *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  piVar3 = (int *)((int)param_1 + 8);
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar3);
    iVar2 = *piVar3;
    bVar1 = (bool)hasExclusiveAccess(piVar3);
  } while (!bVar1);
  *piVar3 = iVar2 + -1;
  DataMemoryBarrier(0x1f);
  if (0 < iVar2) {
    return;
  }
  operator_delete(param_1);
  return;
}

// ---- FUN_002e71b4  @ 0x2e71b4
void FUN_002e71b4(void *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  piVar3 = (int *)((int)param_1 + 8);
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(piVar3);
    iVar2 = *piVar3;
    bVar1 = (bool)hasExclusiveAccess(piVar3);
  } while (!bVar1);
  *piVar3 = iVar2 + -1;
  DataMemoryBarrier(0x1f);
  if (0 < iVar2) {
    return;
  }
  operator_delete(param_1);
  return;
}

// ---- FUN_002e7534  @ 0x2e7534
/* WARNING: Control flow encountered bad instruction data */

void FUN_002e7534(int param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 *unaff_r6;
  char in_OV;
  undefined8 uVar1;
  undefined8 unaff_d14;
  undefined8 in_d28;
  
  if (param_1 != 0) {
    FUN_007985bc();
    return;
  }
  uVar1 = VectorShiftLeftInsert(unaff_d14,in_d28,0x2c);
  *unaff_r6 = param_2;
  unaff_r6[1] = param_3;
  VectorShiftLeftInsert(uVar1,in_d28,0xc);
  unaff_r6[2] = param_2;
  unaff_r6[3] = param_3;
  if (in_OV != '\0') {
                    /* WARNING: Bad instruction - Truncating control flow here */
    halt_baddata();
  }
  FUN_007985bc();
  return;
}

// ---- FUN_002ea61c  @ 0x2ea61c
uint FUN_002ea61c(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_002ea704  @ 0x2ea704
CCRect * FUN_002ea704(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_002eabb0  @ 0x2eabb0
uint FUN_002eabb0(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_002ea61c((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_002ea61c((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_002eadb4  @ 0x2eadb4
vector<std::string,std::allocator<std::string>> *
FUN_002eadb4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_002eae74  @ 0x2eae74
undefined4 FUN_002eae74(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_00943004 <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_002eb344  @ 0x2eb344
undefined4 FUN_002eb344(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d11ec,0x54);
  if ((param_1 < 0) || (DAT_00943004 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_002eb49c  @ 0x2eb49c
void FUN_002eb49c(int *param_1,undefined4 param_2)

{
  (**(code **)(*param_1 + 0x5c))(param_1,param_2);
  return;
}

// ---- FUN_002eb4d8  @ 0x2eb4d8
undefined4 FUN_002eb4d8(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*param_1 + 0x84))(param_1,param_2,param_3,param_4);
  return uVar1;
}

// ---- FUN_002eb500  @ 0x2eb500
undefined4 FUN_002eb500(int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uStack_4;
  
  uStack_4 = param_4;
  uVar1 = (**(code **)(*param_1 + 0x8c))(param_1,param_2,param_3,&uStack_4);
  return uVar1;
}

// ---- FUN_002eb768  @ 0x2eb768
void FUN_002eb768(undefined4 param_1,int param_2)

{
  __android_log_print(3,&DAT_007d1300,"GPGS Start oauth action","GPGS Start oauth action",param_2,
                      param_1);
  if (param_2 == 1) {
    __android_log_print(3,&DAT_007d1300,"Signing In...","Signing In...",1,param_1);
  }
  else {
    __android_log_print(3,&DAT_007d1300,"Signing Out...","Signing Out...",param_2,param_1);
  }
  return;
}

// ---- FUN_002eb7cc  @ 0x2eb7cc
void FUN_002eb7cc(undefined4 param_1,int param_2,undefined4 param_3)

{
  __android_log_print(3,&DAT_007d1300,"GPGS Finished oauth action");
  if (param_2 == 1) {
    __android_log_print(4,&DAT_007d1300,"GPGS Signing In.");
  }
  else {
    __android_log_print(3,&DAT_007d1300,"GPGS Signing Out.");
  }
  __android_log_print(3,&DAT_007d1300,"RAW gpg::AuthStatus %d",param_3);
  switch(param_3) {
  case 1:
    __android_log_print(3,&DAT_007d1300,"GPGS Signed in!!");
    break;
  case 0xfffffffb:
    __android_log_print(3,&DAT_007d1300,"GPGS Sign-in failure [ERROR_TIMEOUT]");
    break;
  case 0xfffffffc:
    __android_log_print(3,&DAT_007d1300,"GPGS Sign-in failure [ERROR_VERSION_UPDATE_REQUIRED]");
    break;
  case 0xfffffffd:
    __android_log_print(3,&DAT_007d1300,"GPGS Sign-in failure [ERROR_NOT_AUTHORIZED]");
    break;
  case 0xfffffffe:
    __android_log_print(3,&DAT_007d1300,"GPGS Sign-in failure [ERROR_INTERNAL]");
    break;
  default:
    __android_log_print(3,&DAT_007d1300,"GPGS Sign-in failure [UNKNOWN]");
  }
  return;
}

// ---- FUN_002ebefc  @ 0x2ebefc
undefined4 FUN_002ebefc(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_002ebf08  @ 0x2ebf08
_Function_base *
FUN_002ebf08(_Maybe_unary_or_binary_function<void,gpg::AuthOperation> *param_1,undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::AuthOperation>::_Maybe_unary_or_binary_function
            (param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_002ec174(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_002ebefc(local_10);
    FUN_002ec180(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x2ec1ad;
    *(undefined4 *)(local_c + 8) = 0x2ec1d5;
  }
  return local_c;
}

// ---- FUN_002ebf94  @ 0x2ebf94
undefined4 FUN_002ebf94(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_002ebfa0  @ 0x2ebfa0
_Function_base *
FUN_002ebfa0(_Maybe_unary_or_binary_function<void,gpg::AuthOperation,gpg::AuthStatus> *param_1,
            undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::AuthOperation,gpg::AuthStatus>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_002ec248(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_002ebf94(local_10);
    FUN_002ec254(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x2ec281;
    *(undefined4 *)(local_c + 8) = 0x2ec2b9;
  }
  return local_c;
}

// ---- FUN_002ec174  @ 0x2ec174
undefined4 FUN_002ec174(void)

{
  return 1;
}

// ---- FUN_002ec180  @ 0x2ec180
void FUN_002ec180(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_002ebefc(param_2);
  FUN_002ec504(param_1,uVar1);
  return;
}

// ---- FUN_002ec1ac  @ 0x2ec1ac
void FUN_002ec1ac(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  AuthOperation *pAVar2;
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = param_2;
  local_c = param_1;
  uVar1 = FUN_002ec52c(param_1);
  pAVar2 = std::forward<gpg::AuthOperation>((type *)&local_10);
  FUN_002eb768(uVar1,*(undefined4 *)pAVar2);
  return;
}

// ---- FUN_002ec1d4  @ 0x2ec1d4
undefined4 FUN_002ec1d4(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_00909f90;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_002ec560(param_1);
    uVar3 = FUN_002ec52c(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_002ec578(param_1,param_2);
    break;
  case 3:
    FUN_002ec5a0(param_1);
  }
  return 0;
}

// ---- FUN_002ec248  @ 0x2ec248
undefined4 FUN_002ec248(void)

{
  return 1;
}

// ---- FUN_002ec254  @ 0x2ec254
void FUN_002ec254(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_002ebf94(param_2);
  FUN_002ec5c0(param_1,uVar1);
  return;
}

// ---- FUN_002ec280  @ 0x2ec280
void FUN_002ec280(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  AuthOperation *pAVar2;
  AuthStatus *pAVar3;
  undefined4 uVar4;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = param_3;
  local_18 = param_2;
  local_14 = param_1;
  uVar1 = FUN_002ec5e8(param_1);
  pAVar2 = std::forward<gpg::AuthOperation>((type *)&local_18);
  uVar4 = *(undefined4 *)pAVar2;
  pAVar3 = std::forward<gpg::AuthStatus>((type *)&local_1c);
  FUN_002eb7cc(uVar1,uVar4,*(undefined4 *)pAVar3);
  return;
}

// ---- FUN_002ec2b8  @ 0x2ec2b8
undefined4 FUN_002ec2b8(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_00909f98;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_002ec604(param_1);
    uVar3 = FUN_002ec5e8(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_002ec61c(param_1,param_2);
    break;
  case 3:
    FUN_002ec644(param_1);
  }
  return 0;
}

// ---- FUN_002ec504  @ 0x2ec504
void FUN_002ec504(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_002ebefc(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_002ec560(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_002ec52c  @ 0x2ec52c
undefined4 FUN_002ec52c(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_002ec7d8(param_1);
  return *puVar1;
}

// ---- FUN_002ec560  @ 0x2ec560
undefined4 FUN_002ec560(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_002ec578  @ 0x2ec578
void FUN_002ec578(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_002ec7d8(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_002ec560(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_002ec5a0  @ 0x2ec5a0
void FUN_002ec5a0(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_002ec560(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_002ec5c0  @ 0x2ec5c0
void FUN_002ec5c0(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_002ebf94(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_002ec604(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_002ec5e8  @ 0x2ec5e8
undefined4 FUN_002ec5e8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_002ec7f0(param_1);
  return *puVar1;
}

// ---- FUN_002ec604  @ 0x2ec604
undefined4 FUN_002ec604(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_002ec61c  @ 0x2ec61c
void FUN_002ec61c(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_002ec7f0(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_002ec604(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_002ec644  @ 0x2ec644
void FUN_002ec644(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_002ec604(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_002ec7d8  @ 0x2ec7d8
undefined4 FUN_002ec7d8(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_002ec7f0  @ 0x2ec7f0
undefined4 FUN_002ec7f0(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_002ecaa8  @ 0x2ecaa8
void FUN_002ecaa8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0094f5f0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0094f5f8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0094f600,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0094f610);
    FUN_007985bc(&DAT_0094f610,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_0094f614,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_0094f614,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0094f618);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_0094f630,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_002ecbe4  @ 0x2ecbe4
uint FUN_002ecbe4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_002eccec  @ 0x2eccec
CCPoint * FUN_002eccec(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_002ecd0c  @ 0x2ecd0c
undefined4 * FUN_002ecd0c(undefined4 *param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = (undefined4)in_d0;
  uStack_c = (undefined4)((ulonglong)in_d0 >> 0x20);
  *param_1 = local_10;
  param_1[1] = uStack_c;
  local_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  param_1[2] = local_18;
  param_1[3] = uStack_14;
  return param_1;
}

// ---- FUN_002ecd34  @ 0x2ecd34
void FUN_002ecd34(int param_1)

{
  undefined8 in_d0;
  undefined8 in_d1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  local_20 = (undefined4)in_d0;
  uStack_1c = (undefined4)((ulonglong)in_d0 >> 0x20);
  local_18 = (undefined4)in_d1;
  uStack_14 = (undefined4)((ulonglong)in_d1 >> 0x20);
  *(undefined4 *)(param_1 + 0x28) = local_20;
  *(undefined4 *)(param_1 + 0x2c) = uStack_1c;
  *(undefined4 *)(param_1 + 0x30) = local_18;
  *(undefined4 *)(param_1 + 0x34) = uStack_14;
  return;
}

// ---- FUN_002ecd60  @ 0x2ecd60
CCRect * FUN_002ecd60(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_002ecdc0  @ 0x2ecdc0
float FUN_002ecdc0(undefined4 param_1,undefined4 param_2)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  double in_d0;
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_2,param_1);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  atan(in_d0);
  local_10 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 57.295780181884766);
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_002ece80  @ 0x2ece80
float FUN_002ece80(undefined4 param_1,undefined4 param_2)

{
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  double in_d0;
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_2,param_1);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  atan(in_d0);
  local_10 = (float)((double)CONCAT44(extraout_r1,extraout_r0) * 57.295780181884766);
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_002ed208  @ 0x2ed208
uint FUN_002ed208(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_002ecbe4((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_002ecbe4((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_002ed40c  @ 0x2ed40c
vector<std::string,std::allocator<std::string>> *
FUN_002ed40c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_002ed4cc  @ 0x2ed4cc
undefined4 FUN_002ed4cc(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_0094300c <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_002ed99c  @ 0x2ed99c
undefined4 FUN_002ed99c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d178c,0x54);
  if ((param_1 < 0) || (DAT_0094300c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_002ee86c  @ 0x2ee86c
void FUN_002ee86c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0094f640,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0094f648,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0094f650,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0094f660);
    FUN_007985bc(&DAT_0094f660,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_0094f664,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_0094f664,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_002ee978  @ 0x2ee978
uint FUN_002ee978(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_002ee9e4  @ 0x2ee9e4
CCPoint * FUN_002ee9e4(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_002eea9c  @ 0x2eea9c
CCRect * FUN_002eea9c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_002eef48  @ 0x2eef48
uint FUN_002eef48(float param_1,float param_2,float param_3)

{
  undefined4 uVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  uint in_fpscr;
  uint uVar2;
  double in_d0;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_2 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    floor(in_d0);
    uVar1 = (undefined4)(longlong)(double)CONCAT44(extraout_r1,extraout_r0);
    fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_1 / 60.0 - fVar3;
    fVar4 = (1.0 - param_2) * param_3;
    local_20 = (1.0 - param_2 * fVar3) * param_3;
    fVar3 = (1.0 - (1.0 - fVar3) * param_2) * param_3;
    local_28 = param_3;
    local_24 = fVar4;
    switch(uVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_3;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_3;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_3;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_3;
    }
    local_2c = FUN_002ee978((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_002ee978((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_002ef14c  @ 0x2ef14c
vector<std::string,std::allocator<std::string>> *
FUN_002ef14c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
            char *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_18 [4];
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  std::vector<std::string,std::allocator<std::string>>::vector(param_1);
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_2,param_3,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_2);
      FUN_007c6728(asStack_18,param_2,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_18);
      FUN_007c5914(asStack_18);
    }
    else {
      FUN_007c6728(asStack_14,param_2,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_1,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_3);
    local_c = local_10 + sVar3;
  }
  return param_1;
}

// ---- FUN_002ef20c  @ 0x2ef20c
undefined4 FUN_002ef20c(undefined4 param_1,int param_2)

{
  undefined1 *puVar1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  puVar1 = &stack0xfffffff0;
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_64,"PRIVATE",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_60,"PRIVATE 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_5c,"CORPORAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_58,"SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_54,"STAFF SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_50,"SERGEANT 1ST CLASS",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_4c,"MASTER SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_48,"1ST SERGEANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_44,"SERGEANT MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_40,"2ND LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_3c,"1ST LIEUTENANT",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_38,"CAPTAIN",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_34,"MAJOR",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_30,"LIEUTENANT COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_2c,"COLONEL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_28,"BRIGADIER GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_24,"MAJOR GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_20,"LIEUTENANT GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_1c,"GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_18,"ARMY GENERAL",auStack_68);
  FUN_0079a3fc(auStack_68);
  FUN_0079a3f4(auStack_68);
  FUN_007c6a60(auStack_14,"COMMANDER IN CHIEF",auStack_68);
  FUN_0079a3fc(auStack_68);
  if ((param_2 < 0) || (DAT_0094301c <= param_2)) {
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(param_1,"INVALID",auStack_68);
    FUN_0079a3fc(auStack_68);
  }
  else {
    FUN_007c64e8(param_1,auStack_64 + param_2 * 4);
  }
  while (puVar1 != auStack_64) {
    puVar1 = puVar1 + -4;
    FUN_007c5914(puVar1);
  }
  return param_1;
}

// ---- FUN_002ef6dc  @ 0x2ef6dc
undefined4 FUN_002ef6dc(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d19f4,0x54);
  if ((param_1 < 0) || (DAT_0094301c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}
