// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 53 functions

// ---- FUN_00440690  @ 0x440690
void FUN_00440690(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953204,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0095320c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953214,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953224);
    FUN_007985bc(&DAT_00953224,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00953228,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00953228,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_0095322c);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953240,0xffffffffffffffff);
    std::
    map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>::
    map((map<std::string,bool,std::less<std::string>,std::allocator<std::pair<std::string_const,bool>>>
         *)m_purchasedSkus);
    FUN_007985bc(m_purchasedSkus,0x440679,&DAT_00943000);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&m_hasPreviousValidatedPurchaseStringKey,
                 "tTBPzlDK5MKxtRLpWMkwNG0iLy6cJI8vNAtNYS4gXUBzOh6cP00lkB0xCy5EXQaN",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&m_hasPreviousValidatedPurchaseStringKey,0x7c5915,&DAT_00943000);
    m_elapsedDeltaSinceLastSessionConnectReAttempt = m_minWebSessionRequestReAttemptWaitTime;
  }
  return;
}

// ---- FUN_00440858  @ 0x440858
uint FUN_00440858(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_004408dc  @ 0x4408dc
CCRect * FUN_004408dc(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00440d88  @ 0x440d88
uint FUN_00440d88(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00440858((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00440858((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00440f8c  @ 0x440f8c
vector<std::string,std::allocator<std::string>> *
FUN_00440f8c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0044104c  @ 0x44104c
undefined4 FUN_0044104c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_0094374c <= param_2)) {
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

// ---- FUN_0044151c  @ 0x44151c
undefined4 FUN_0044151c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007ee2ac,0x54);
  if ((param_1 < 0) || (DAT_0094374c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00441c5c  @ 0x441c5c
void FUN_00441c5c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953250,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953258,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953260,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953270);
    FUN_007985bc(&DAT_00953270,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00953274,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00953274,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00953278);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00953290,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00441d8c  @ 0x441d8c
uint FUN_00441d8c(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00441e10  @ 0x441e10
CCRect * FUN_00441e10(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00441e70  @ 0x441e70
float FUN_00441e70(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00441f30  @ 0x441f30
float FUN_00441f30(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_004422b8  @ 0x4422b8
uint FUN_004422b8(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00441d8c((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00441d8c((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_004424bc  @ 0x4424bc
vector<std::string,std::allocator<std::string>> *
FUN_004424bc(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0044257c  @ 0x44257c
undefined4 FUN_0044257c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943754 <= param_2)) {
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

// ---- FUN_00442a4c  @ 0x442a4c
undefined4 FUN_00442a4c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007ee65c,0x54);
  if ((param_1 < 0) || (DAT_00943754 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_004435fc  @ 0x4435fc
void FUN_004435fc(int *param_1,int *param_2)

{
  char cVar1;
  int iVar2;
  ScoreSummary aSStack_10 [8];
  
  if (*param_2 == 1) {
    iVar2 = *param_1;
    gpg::ScoreSummary::ScoreSummary(aSStack_10,(ScoreSummary *)(param_2 + 1));
    cVar1 = setLocalLeaderboardServerValue(iVar2,aSStack_10);
    gpg::ScoreSummary::~ScoreSummary(aSStack_10);
    if (cVar1 != '\x01') {
      *(undefined1 *)(*param_1 + 0xec) = 1;
    }
  }
  else {
    *(undefined1 *)(*param_1 + 0xec) = 1;
  }
  return;
}

// ---- FUN_004437d4  @ 0x4437d4
undefined4 FUN_004437d4(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_004437e0  @ 0x4437e0
_Function_base *
FUN_004437e0(_Maybe_unary_or_binary_function<void,gpg::LeaderboardManager::FetchScoreSummaryResponse_const&>
             *param_1,undefined4 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_10;
  _Function_base *local_c;
  
  local_10 = param_2;
  local_c = (_Function_base *)param_1;
  std::
  _Maybe_unary_or_binary_function<void,gpg::LeaderboardManager::FetchScoreSummaryResponse_const&>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_00443848(&local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_004437d4(&local_10);
    FUN_00443854(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x443881;
    *(undefined4 *)(local_c + 8) = 0x4438a5;
  }
  return local_c;
}

// ---- FUN_00443848  @ 0x443848
undefined4 FUN_00443848(void)

{
  return 1;
}

// ---- FUN_00443854  @ 0x443854
void FUN_00443854(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_004437d4(param_2);
  FUN_00443918(param_1,uVar1);
  return;
}

// ---- FUN_00443880  @ 0x443880
void FUN_00443880(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  FetchScoreSummaryResponse *pFVar2;
  
  uVar1 = FUN_00443948(param_1);
  pFVar2 = std::forward<gpg::LeaderboardManager::FetchScoreSummaryResponse_const&>(param_2);
  FUN_004435fc(uVar1,pFVar2);
  return;
}

// ---- FUN_004438a4  @ 0x4438a4
undefined4 FUN_004438a4(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_0091e288;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_00443964(param_1);
    uVar3 = FUN_00443948(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0044397c(param_1,param_2);
    break;
  case 3:
    FUN_004439ac(param_1);
  }
  return 0;
}

// ---- FUN_00443918  @ 0x443918
void FUN_00443918(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)FUN_004437d4(param_2);
  puVar2 = operator_new(4);
  *puVar2 = *puVar1;
  puVar1 = (undefined4 *)FUN_00443964(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_00443948  @ 0x443948
undefined4 FUN_00443948(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_004439cc(param_1);
  return *puVar1;
}

// ---- FUN_00443964  @ 0x443964
undefined4 FUN_00443964(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0044397c  @ 0x44397c
void FUN_0044397c(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)FUN_004439cc(param_2);
  puVar1 = (undefined4 *)*puVar1;
  puVar2 = operator_new(4);
  *puVar2 = *puVar1;
  puVar1 = (undefined4 *)FUN_00443964(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_004439ac  @ 0x4439ac
void FUN_004439ac(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00443964(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_004439cc  @ 0x4439cc
undefined4 FUN_004439cc(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_004439e4  @ 0x4439e4
void FUN_004439e4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009532a0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009532a8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009532b0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009532c0);
    FUN_007985bc(&DAT_009532c0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_009532c4,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_009532c4,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009532c8);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009532e0,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00443b7c  @ 0x443b7c
void FUN_00443b7c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009532f0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009532f8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953300,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953310);
    FUN_007985bc(&DAT_00953310,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00443d8c  @ 0x443d8c
void FUN_00443d8c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953314,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0095331c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953324,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953334);
    FUN_007985bc(&DAT_00953334,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044412c  @ 0x44412c
void FUN_0044412c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953338,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953340,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953348,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953358);
    FUN_007985bc(&DAT_00953358,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044446c  @ 0x44446c
int FUN_0044446c(undefined4 param_1,int param_2,int param_3,undefined4 param_4)

{
  FUN_007c6234(param_4,param_1,param_3 * param_2);
  return param_3 * param_2;
}

// ---- FUN_00444b68  @ 0x444b68
size_t FUN_00444b68(void *param_1,size_t param_2,size_t param_3,FILE *param_4)

{
  size_t sVar1;
  
  sVar1 = fwrite(param_1,param_2,param_3,param_4);
  return sVar1;
}

// ---- FUN_00445d9c  @ 0x445d9c
void FUN_00445d9c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095335c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953364,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095336c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095337c);
    FUN_007985bc(&DAT_0095337c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00445f04  @ 0x445f04
void FUN_00445f04(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953380,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953388,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953390,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009533a0);
    FUN_007985bc(&DAT_009533a0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00445fb4  @ 0x445fb4
uint FUN_00445fb4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_004486a8  @ 0x4486a8
undefined4 FUN_004486a8(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  FUN_007c64e8(param_1,param_2);
  FUN_007c6120(param_1,param_3);
  return param_1;
}

// ---- FUN_00449534  @ 0x449534
void FUN_00449534(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009533a4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009533ac,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009533b4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009533c4);
    FUN_007985bc(&DAT_009533c4,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00449c00  @ 0x449c00
void FUN_00449c00(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009533c8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009533d0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009533d8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009533e8);
    FUN_007985bc(&DAT_009533e8,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_00449d94  @ 0x449d94
void FUN_00449d94(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009533ec,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009533f4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009533fc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095340c);
    FUN_007985bc(&DAT_0095340c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044a060  @ 0x44a060
void FUN_0044a060(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953410,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953418,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953420,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953430);
    FUN_007985bc(&DAT_00953430,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044a440  @ 0x44a440
void FUN_0044a440(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953434,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0095343c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953444,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953454);
    FUN_007985bc(&DAT_00953454,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044a6c8  @ 0x44a6c8
void FUN_0044a6c8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953458,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953460,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953468,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953478);
    FUN_007985bc(&DAT_00953478,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044a9a8  @ 0x44a9a8
void FUN_0044a9a8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095347c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953484,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095348c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095349c);
    FUN_007985bc(&DAT_0095349c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044ab20  @ 0x44ab20
void FUN_0044ab20(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009534a0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009534a8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009534b0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009534c0);
    FUN_007985bc(&DAT_009534c0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044ad34  @ 0x44ad34
void FUN_0044ad34(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009534c4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009534cc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009534d4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009534e4);
    FUN_007985bc(&DAT_009534e4,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044ae94  @ 0x44ae94
void FUN_0044ae94(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009534e8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009534f0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009534f8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953508);
    FUN_007985bc(&DAT_00953508,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044da5c  @ 0x44da5c
void FUN_0044da5c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095350c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953514,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095351c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095352c);
    FUN_007985bc(&DAT_0095352c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044f48c  @ 0x44f48c
void FUN_0044f48c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953530,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953538,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953540,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953550);
    FUN_007985bc(&DAT_00953550,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044fc1c  @ 0x44fc1c
void FUN_0044fc1c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00953558,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953560,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00953568,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00953578);
    FUN_007985bc(&DAT_00953578,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_0044ffc8  @ 0x44ffc8
void FUN_0044ffc8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0095357c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00953584,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0095358c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0095359c);
    FUN_007985bc(&DAT_0095359c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}
