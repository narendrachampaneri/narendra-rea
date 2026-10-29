// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 181 functions

// ---- FUN_00330034  @ 0x330034
undefined4 FUN_00330034(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_009432fc <= param_2)) {
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

// ---- FUN_00330504  @ 0x330504
undefined4 FUN_00330504(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d771c,0x54);
  if ((param_1 < 0) || (DAT_009432fc <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00331284  @ 0x331284
void FUN_00331284(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950258,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950260,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950268,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950278);
    FUN_007985bc(&DAT_00950278,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_0095027c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_0095027c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00331390  @ 0x331390
long FUN_00331390(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_0033139c  @ 0x33139c
uint FUN_0033139c(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003313f8  @ 0x3313f8
undefined4 FUN_003313f8(void)

{
  double in_d0;
  double in_d1;
  undefined4 local_10;
  undefined4 local_8;
  
  if (in_d0 <= in_d1) {
    local_10 = SUB84(in_d1,0);
    local_8 = local_10;
  }
  else {
    local_8 = SUB84(in_d0,0);
  }
  return local_8;
}

// ---- FUN_0033142c  @ 0x33142c
undefined4 FUN_0033142c(void)

{
  double in_d0;
  double in_d1;
  undefined4 local_10;
  undefined4 local_8;
  
  if ((int)((uint)(in_d0 < in_d1) << 0x1f) < 0) {
    local_8 = SUB84(in_d0,0);
  }
  else {
    local_10 = SUB84(in_d1,0);
    local_8 = local_10;
  }
  return local_8;
}

// ---- FUN_00331460  @ 0x331460
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00331478 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_00331460(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_003313f8(param_1,param_2,param_3);
  uVar1 = FUN_0033142c(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_0033149c  @ 0x33149c
undefined4 * FUN_0033149c(undefined4 *param_1)

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

// ---- FUN_003314c4  @ 0x3314c4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0033150e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003314c4(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0033149c(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0033151c  @ 0x33151c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0033155a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0033151c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_0033149c(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_00331568  @ 0x331568
undefined4 FUN_00331568(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_003315b0  @ 0x3315b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003315f2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003315b0(undefined4 param_1)

{
  undefined8 in_d0;
  undefined4 uVar1;
  undefined8 in_d1;
  undefined4 uVar2;
  double dVar3;
  undefined4 local_20;
  undefined4 local_18;
  
  uVar2 = (undefined4)((ulonglong)in_d1 >> 0x20);
  uVar1 = (undefined4)((ulonglong)in_d0 >> 0x20);
  local_20 = (undefined4)in_d0;
  local_18 = (undefined4)in_d1;
  dVar3 = (double)cpvlength(local_20,uVar1,local_18,uVar2);
  FUN_0033151c(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_00331600  @ 0x331600
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0033163a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_00331600(undefined4 *param_1)

{
  undefined4 uVar1;
  double in_d0;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined8 in_d1;
  undefined4 uVar4;
  double in_d2;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  uVar4 = (undefined4)((ulonglong)in_d1 >> 0x20);
  uVar2 = (undefined4)((ulonglong)in_d0 >> 0x20);
  uVar1 = SUB84(in_d0,0);
  uVar3 = (undefined4)in_d1;
  FUN_00331568(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_003315b0(uVar1,uVar2,uVar3,local_18);
    FUN_0033151c(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_003316a4  @ 0x3316a4
void FUN_003316a4(int param_1)

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

// ---- FUN_003316d0  @ 0x3316d0
CCRect * FUN_003316d0(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00331730  @ 0x331730
float FUN_00331730(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003317f0  @ 0x3317f0
float FUN_003317f0(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00331b78  @ 0x331b78
uint FUN_00331b78(float param_1,float param_2,float param_3)

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
    local_2c = FUN_0033139c((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_0033139c((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00331d7c  @ 0x331d7c
vector<std::string,std::allocator<std::string>> *
FUN_00331d7c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_00331e3c  @ 0x331e3c
undefined4 FUN_00331e3c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_0094330c <= param_2)) {
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

// ---- FUN_0033230c  @ 0x33230c
undefined4 FUN_0033230c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d7974,0x54);
  if ((param_1 < 0) || (DAT_0094330c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00332424  @ 0x332424
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0033248c */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_00332424(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                 double param_9)

{
  int iVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  undefined4 uVar2;
  double in_d0;
  undefined4 uVar3;
  double in_d1;
  undefined4 uVar4;
  undefined4 in_s5;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  int local_74;
  int local_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  undefined4 local_8;
  
  uVar4 = (undefined4)((ulonglong)in_d1 >> 0x20);
  local_6c = *(int *)(param_1 + 0x90);
  local_74 = param_1;
  local_8 = param_3;
  if (local_6c != 0) {
    pow(in_d0,in_d1);
    local_8 = *(undefined4 *)(local_6c + 0xf8);
    param_5 = *(undefined4 *)(local_6c + 0x100);
    param_7 = extraout_r0;
    param_8 = extraout_r1;
  }
  uVar3 = (undefined4)((ulonglong)in_d0 >> 0x20);
  FUN_0033151c((int)*(undefined8 *)(local_74 + 0x38),uVar3,(int)*(undefined8 *)(local_74 + 0x40),
               uVar4,param_7,local_60);
  FUN_0033151c((int)*(undefined8 *)(local_74 + 0x48),uVar3,(int)*(undefined8 *)(local_74 + 0x50),
               uVar4,(int)*(undefined8 *)(local_74 + 0x10),local_50);
  FUN_003314c4(local_8,uVar3,param_5,uVar4,local_50[0],in_s5,local_48,local_40);
  FUN_0033151c(local_40[0],uVar3,local_38,uVar4,SUB84(param_9,0),local_30);
  FUN_003314c4(local_60[0],uVar3,local_58,uVar4,local_30[0],in_s5,local_28,local_20);
  iVar1 = local_74;
  FUN_00331600(local_20[0],uVar3,local_18,uVar4,(int)*(undefined8 *)(local_74 + 0x80),&local_88);
  *(undefined4 *)(iVar1 + 0x38) = local_88;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_84;
  *(undefined4 *)(iVar1 + 0x40) = uStack_80;
  *(undefined4 *)(iVar1 + 0x44) = uStack_7c;
  local_68 = *(undefined4 *)(local_74 + 0x88);
  uStack_64 = *(undefined4 *)(local_74 + 0x8c);
  uVar2 = SUB84(*(double *)(local_74 + 0x60) * (double)CONCAT44(param_8,param_7) +
                *(double *)(local_74 + 0x68) * *(double *)(local_74 + 0x20) * param_9,0);
  FUN_00331460(uVar2,uVar3,SUB84(-*(double *)(local_74 + 0x88),0),uVar4,local_68);
  *(ulonglong *)(local_74 + 0x60) = CONCAT44(uVar3,uVar2);
  return;
}

// ---- FUN_00332f88  @ 0x332f88
void FUN_00332f88(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950280,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950288,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950290,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009502a0);
    FUN_007985bc(&DAT_009502a0,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_009502a4,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_009502a4,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00333094  @ 0x333094
uint FUN_00333094(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003330f0  @ 0x3330f0
CCPoint * FUN_003330f0(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00333110  @ 0x333110
undefined4 * FUN_00333110(undefined4 *param_1)

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

// ---- FUN_00333138  @ 0x333138
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00333182 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00333138(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_00333110(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_00333190  @ 0x333190
CCRect * FUN_00333190(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003331f0  @ 0x3331f0
float FUN_003331f0(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003332b0  @ 0x3332b0
float FUN_003332b0(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00333638  @ 0x333638
uint FUN_00333638(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00333094((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00333094((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0033383c  @ 0x33383c
vector<std::string,std::allocator<std::string>> *
FUN_0033383c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003338fc  @ 0x3338fc
undefined4 FUN_003338fc(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943314 <= param_2)) {
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

// ---- FUN_00333dcc  @ 0x333dcc
undefined4 FUN_00333dcc(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d7bfc,0x54);
  if ((param_1 < 0) || (DAT_00943314 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00333e74  @ 0x333e74
undefined4 FUN_00333e74(undefined4 param_1,undefined4 param_2)

{
  byte *pbVar1;
  uint uVar2;
  undefined2 local_a;
  
  FUN_007c51b0(param_1);
  for (local_a = 0; uVar2 = FUN_007c521c(param_2), (uint)(int)local_a < uVar2; local_a = local_a + 1
      ) {
    pbVar1 = (byte *)FUN_007c5ac8(param_2,(int)local_a);
    uVar2 = toupper((uint)*pbVar1);
    FUN_007c645c(param_1,uVar2 & 0xff);
  }
  return param_1;
}

// ---- FUN_00335908  @ 0x335908
void FUN_00335908(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009502a8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009502b0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009502b8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_009502c8);
    FUN_007985bc(&DAT_009502c8,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_009502cc,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_009502cc,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_009502d0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_009502e8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00335a38  @ 0x335a38
long FUN_00335a38(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_00335a44  @ 0x335a44
uint FUN_00335a44(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00335aa0  @ 0x335aa0
undefined4 FUN_00335aa0(void)

{
  double in_d0;
  double in_d1;
  undefined4 local_10;
  undefined4 local_8;
  
  if (in_d0 <= in_d1) {
    local_10 = SUB84(in_d1,0);
    local_8 = local_10;
  }
  else {
    local_8 = SUB84(in_d0,0);
  }
  return local_8;
}

// ---- FUN_00335ad4  @ 0x335ad4
undefined4 FUN_00335ad4(void)

{
  double in_d0;
  double in_d1;
  undefined4 local_10;
  undefined4 local_8;
  
  if ((int)((uint)(in_d0 < in_d1) << 0x1f) < 0) {
    local_8 = SUB84(in_d0,0);
  }
  else {
    local_10 = SUB84(in_d1,0);
    local_8 = local_10;
  }
  return local_8;
}

// ---- FUN_00335b08  @ 0x335b08
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00335b20 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_00335b08(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00335aa0(param_1,param_2,param_3);
  uVar1 = FUN_00335ad4(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_00335b44  @ 0x335b44
undefined4 * FUN_00335b44(undefined4 *param_1)

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

// ---- FUN_00335b6c  @ 0x335b6c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00335bb6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00335b6c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_00335b44(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_00335bc4  @ 0x335bc4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00335c02 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00335bc4(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_00335b44(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_00335c10  @ 0x335c10
undefined4 FUN_00335c10(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_00335c58  @ 0x335c58
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00335c9a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00335c58(undefined4 param_1)

{
  undefined8 in_d0;
  undefined4 uVar1;
  undefined8 in_d1;
  undefined4 uVar2;
  double dVar3;
  undefined4 local_20;
  undefined4 local_18;
  
  uVar2 = (undefined4)((ulonglong)in_d1 >> 0x20);
  uVar1 = (undefined4)((ulonglong)in_d0 >> 0x20);
  local_20 = (undefined4)in_d0;
  local_18 = (undefined4)in_d1;
  dVar3 = (double)cpvlength(local_20,uVar1,local_18,uVar2);
  FUN_00335bc4(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_00335ca8  @ 0x335ca8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00335ce2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_00335ca8(undefined4 *param_1)

{
  undefined4 uVar1;
  double in_d0;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined8 in_d1;
  undefined4 uVar4;
  double in_d2;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  uVar4 = (undefined4)((ulonglong)in_d1 >> 0x20);
  uVar2 = (undefined4)((ulonglong)in_d0 >> 0x20);
  uVar1 = SUB84(in_d0,0);
  uVar3 = (undefined4)in_d1;
  FUN_00335c10(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_00335c58(uVar1,uVar2,uVar3,local_18);
    FUN_00335bc4(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_00335d4c  @ 0x335d4c
void FUN_00335d4c(int param_1)

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

// ---- FUN_00335d78  @ 0x335d78
CCRect * FUN_00335d78(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00335dd8  @ 0x335dd8
float FUN_00335dd8(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00335e98  @ 0x335e98
float FUN_00335e98(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00336220  @ 0x336220
uint FUN_00336220(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00335a44((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00335a44((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00336424  @ 0x336424
vector<std::string,std::allocator<std::string>> *
FUN_00336424(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003364e4  @ 0x3364e4
undefined4 FUN_003364e4(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_0094331c <= param_2)) {
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

// ---- FUN_003369b4  @ 0x3369b4
undefined4 FUN_003369b4(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d7f64,0x54);
  if ((param_1 < 0) || (DAT_0094331c <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00336acc  @ 0x336acc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00336b34 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_00336acc(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                 double param_9)

{
  int iVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r1;
  undefined4 uVar2;
  double in_d0;
  undefined4 uVar3;
  double in_d1;
  undefined4 uVar4;
  undefined4 in_s5;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  int local_74;
  int local_6c;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  undefined4 local_8;
  
  uVar4 = (undefined4)((ulonglong)in_d1 >> 0x20);
  local_6c = *(int *)(param_1 + 0x90);
  local_74 = param_1;
  local_8 = param_3;
  if (local_6c != 0) {
    pow(in_d0,in_d1);
    local_8 = *(undefined4 *)(local_6c + 0xf8);
    param_5 = *(undefined4 *)(local_6c + 0x100);
    param_7 = extraout_r0;
    param_8 = extraout_r1;
  }
  uVar3 = (undefined4)((ulonglong)in_d0 >> 0x20);
  FUN_00335bc4((int)*(undefined8 *)(local_74 + 0x38),uVar3,(int)*(undefined8 *)(local_74 + 0x40),
               uVar4,param_7,local_60);
  FUN_00335bc4((int)*(undefined8 *)(local_74 + 0x48),uVar3,(int)*(undefined8 *)(local_74 + 0x50),
               uVar4,(int)*(undefined8 *)(local_74 + 0x10),local_50);
  FUN_00335b6c(local_8,uVar3,param_5,uVar4,local_50[0],in_s5,local_48,local_40);
  FUN_00335bc4(local_40[0],uVar3,local_38,uVar4,SUB84(param_9,0),local_30);
  FUN_00335b6c(local_60[0],uVar3,local_58,uVar4,local_30[0],in_s5,local_28,local_20);
  iVar1 = local_74;
  FUN_00335ca8(local_20[0],uVar3,local_18,uVar4,(int)*(undefined8 *)(local_74 + 0x80),&local_88);
  *(undefined4 *)(iVar1 + 0x38) = local_88;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_84;
  *(undefined4 *)(iVar1 + 0x40) = uStack_80;
  *(undefined4 *)(iVar1 + 0x44) = uStack_7c;
  local_68 = *(undefined4 *)(local_74 + 0x88);
  uStack_64 = *(undefined4 *)(local_74 + 0x8c);
  uVar2 = SUB84(*(double *)(local_74 + 0x60) * (double)CONCAT44(param_8,param_7) +
                *(double *)(local_74 + 0x68) * *(double *)(local_74 + 0x20) * param_9,0);
  FUN_00335b08(uVar2,uVar3,SUB84(-*(double *)(local_74 + 0x88),0),uVar4,local_68);
  *(ulonglong *)(local_74 + 0x60) = CONCAT44(uVar3,uVar2);
  return;
}

// ---- FUN_00337638  @ 0x337638
void FUN_00337638(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009502f8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950300,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950308,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950318);
    FUN_007985bc(&DAT_00950318,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_0095031c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_0095031c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00337744  @ 0x337744
uint FUN_00337744(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003377a0  @ 0x3377a0
CCPoint * FUN_003377a0(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_003377c0  @ 0x3377c0
undefined4 * FUN_003377c0(undefined4 *param_1)

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

// ---- FUN_003377e8  @ 0x3377e8
void FUN_003377e8(int param_1)

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

// ---- FUN_00337814  @ 0x337814
CCRect * FUN_00337814(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00337cc0  @ 0x337cc0
uint FUN_00337cc0(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00337744((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00337744((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00337ec4  @ 0x337ec4
vector<std::string,std::allocator<std::string>> *
FUN_00337ec4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_00337f84  @ 0x337f84
undefined4 FUN_00337f84(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943324 <= param_2)) {
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

// ---- FUN_00338454  @ 0x338454
undefined4 FUN_00338454(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d81ec,0x54);
  if ((param_1 < 0) || (DAT_00943324 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0033934c  @ 0x33934c
void FUN_0033934c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950320,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950328,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950330,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950340);
    FUN_007985bc(&DAT_00950340,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950344,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950344,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_003394f8  @ 0x3394f8
undefined4 FUN_003394f8(void)

{
  return 1;
}

// ---- FUN_00339500  @ 0x339500
int FUN_00339500(pthread_mutex_t *param_1)

{
  int iVar1;
  
  iVar1 = FUN_003394f8();
  if (iVar1 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = pthread_mutex_lock(param_1);
  }
  return iVar1;
}

// ---- FUN_00339530  @ 0x339530
int FUN_00339530(pthread_mutex_t *param_1)

{
  int iVar1;
  
  iVar1 = FUN_003394f8();
  if (iVar1 == 0) {
    iVar1 = 0;
  }
  else {
    iVar1 = pthread_mutex_unlock(param_1);
  }
  return iVar1;
}

// ---- FUN_00339560  @ 0x339560
int FUN_00339560(int *param_1,int param_2)

{
  bool bVar1;
  int iVar2;
  
  DataMemoryBarrier(0x1f);
  do {
    ExclusiveAccess(param_1);
    iVar2 = *param_1;
    bVar1 = (bool)hasExclusiveAccess(param_1);
  } while (!bVar1);
  *param_1 = iVar2 + param_2;
  DataMemoryBarrier(0x1f);
  return iVar2;
}

// ---- FUN_0033958c  @ 0x33958c
int FUN_0033958c(int *param_1,int param_2)

{
  int iVar1;
  
  iVar1 = *param_1;
  *param_1 = *param_1 + param_2;
  return iVar1;
}

// ---- FUN_003395ac  @ 0x3395ac
undefined4 FUN_003395ac(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_003394f8();
  if (iVar1 == 0) {
    uVar2 = FUN_0033958c(param_1,param_2);
  }
  else {
    uVar2 = FUN_00339560(param_1,param_2);
  }
  return uVar2;
}

// ---- FUN_003396a8  @ 0x3396a8
uint FUN_003396a8(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00339904  @ 0x339904
CCRect * FUN_00339904(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00339964  @ 0x339964
float FUN_00339964(float param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_3,param_2);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  local_10 = (float)std::atan(param_1);
  local_10 = local_10 * 57.29578;
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_00339a18  @ 0x339a18
float FUN_00339a18(float param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 local_14;
  undefined4 local_10;
  
  local_14 = (float)(double)CONCAT44(param_3,param_2);
  if (local_14 == 0.0) {
    local_14 = 1e-08;
  }
  local_10 = (float)std::atan(param_1);
  local_10 = local_10 * 57.29578;
  if ((int)((uint)(local_14 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 180.0;
  }
  if ((int)((uint)(local_10 < 0.0) << 0x1f) < 0) {
    local_10 = local_10 + 360.0;
  }
  return local_10;
}

// ---- FUN_00339d78  @ 0x339d78
uint FUN_00339d78(float param_1,float param_2,float param_3,float param_4)

{
  float fVar1;
  uint in_fpscr;
  uint uVar2;
  float fVar3;
  float fVar4;
  uint3 local_2c;
  float local_28;
  float local_24;
  float local_20;
  
  uVar2 = in_fpscr & 0xfffffff | (uint)(param_3 == 0.0) << 0x1e;
  if ((byte)(uVar2 >> 0x1e) == 0) {
    fVar1 = (float)std::floor(param_1);
    fVar3 = (float)VectorSignedToFloat((int)fVar1,(byte)(uVar2 >> 0x16) & 3);
    fVar3 = param_2 / 60.0 - fVar3;
    fVar4 = (1.0 - param_3) * param_4;
    local_20 = (1.0 - param_3 * fVar3) * param_4;
    fVar3 = (1.0 - (1.0 - fVar3) * param_3) * param_4;
    local_28 = param_4;
    local_24 = fVar4;
    switch((int)fVar1) {
    case 0:
      local_24 = fVar3;
      local_20 = fVar4;
      break;
    case 1:
      local_28 = local_20;
      local_24 = param_4;
      local_20 = fVar4;
      break;
    case 2:
      local_28 = fVar4;
      local_24 = param_4;
      local_20 = fVar3;
      break;
    case 3:
      local_28 = fVar4;
      local_24 = local_20;
      local_20 = param_4;
      break;
    case 4:
      local_28 = fVar3;
      local_20 = param_4;
    }
    local_2c = FUN_003396a8((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003396a8((uint)(0.0 < param_4) * (int)param_4 & 0xff,
                            (uint)(0.0 < param_4) * (int)param_4 & 0xff,
                            (uint)(0.0 < param_4) * (int)param_4 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00339f70  @ 0x339f70
vector<std::string,std::allocator<std::string>> *
FUN_00339f70(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0033a030  @ 0x33a030
undefined4 FUN_0033a030(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943334 <= param_2)) {
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

// ---- FUN_0033a500  @ 0x33a500
undefined4 FUN_0033a500(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007d8450,0x54);
  if ((param_1 < 0) || (DAT_00943334 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0033a7dc  @ 0x33a7dc
void FUN_0033a7dc(int *param_1,PlayerSelectUIResponse *param_2)

{
  int iVar1;
  Builder *this;
  GameServices *this_00;
  IRealTimeEventListener *pIVar2;
  RealTimeRoomConfig aRStack_1c [8];
  undefined4 local_14;
  RealTimeRoom aRStack_10 [12];
  
  iVar1 = gpg::IsSuccess(*(undefined4 *)param_2);
  if (iVar1 == 0) {
    *(undefined1 *)(*param_1 + 0xd) = 0;
    *(undefined1 *)(*param_1 + 0xe) = 1;
  }
  else {
    gpg::RealTimeRoomConfig::Builder::Builder((Builder *)&local_14);
    this = (Builder *)
           gpg::RealTimeRoomConfig::Builder::PopulateFromPlayerSelectUIResponse
                     ((Builder *)&local_14,param_2);
    gpg::RealTimeRoomConfig::Builder::SetVariant(this,param_1[2]);
    gpg::RealTimeRoomConfig::Builder::Create();
    gpg::RealTimeRoomConfig::Builder::~Builder((Builder *)&local_14);
    *(undefined1 *)(*param_1 + 0xf) = 1;
    this_00 = (GameServices *)GPGSStateManager::GetGameServices();
    pIVar2 = (IRealTimeEventListener *)gpg::GameServices::RealTimeMultiplayer(this_00);
    gpg::RealTimeMultiplayerManager::CreateRealTimeRoomBlocking
              ((RealTimeRoomConfig *)&local_14,pIVar2);
    iVar1 = gpg::IsSuccess(local_14);
    if (iVar1 == 0) {
      GPGSRealtimeMultiplayerManager::disconnect((GPGSRealtimeMultiplayerManager *)*param_1);
    }
    else {
      gpg::RealTimeRoom::operator=((RealTimeRoom *)(*param_1 + 0x14),aRStack_10);
      GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame
                ((GPGSRealtimeMultiplayerManager *)*param_1,param_1[1],false);
    }
    gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::~RealTimeRoomResponse
              ((RealTimeRoomResponse *)&local_14);
    gpg::RealTimeRoomConfig::~RealTimeRoomConfig(aRStack_1c);
  }
  return;
}

// ---- FUN_0033a9c4  @ 0x33a9c4
void FUN_0033a9c4(int *param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = gpg::IsSuccess(*param_2);
  if (iVar1 == 0) {
    GPGSRealtimeMultiplayerManager::disconnect((GPGSRealtimeMultiplayerManager *)*param_1);
  }
  else {
    gpg::RealTimeRoom::operator=((RealTimeRoom *)(*param_1 + 0x14),(RealTimeRoom *)(param_2 + 1));
    GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame
              ((GPGSRealtimeMultiplayerManager *)*param_1,param_1[1],false);
  }
  return;
}

// ---- FUN_0033ac0c  @ 0x33ac0c
void FUN_0033ac0c(undefined4 *param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = gpg::IsSuccess(*param_2);
  if (iVar1 == 0) {
    GPGSRealtimeMultiplayerManager::disconnect((GPGSRealtimeMultiplayerManager *)*param_1);
  }
  else {
    GPGSRealtimeMultiplayerManager::playGame();
  }
  return;
}

// ---- FUN_0033af3c  @ 0x33af3c
void FUN_0033af3c(undefined4 param_1,undefined4 *param_2)

{
  gpg::IsSuccess(*param_2);
  return;
}

// ---- FUN_0033b3f8  @ 0x33b3f8
void FUN_0033b3f8(void)

{
  return;
}

// ---- FUN_0033b5f4  @ 0x33b5f4
void FUN_0033b5f4(void)

{
  return;
}

// ---- FUN_0033b968  @ 0x33b968
void FUN_0033b968(undefined4 param_1,undefined4 *param_2)

{
  int iVar1;
  
  iVar1 = gpg::IsSuccess(*param_2);
  if (iVar1 != 0) {
    GPGSRealtimeMultiplayerManager::playGame();
  }
  return;
}

// ---- FUN_0033b9cc  @ 0x33b9cc
void FUN_0033b9cc(int *param_1,undefined4 *param_2)

{
  int iVar1;
  IRealTimeEventListener *pIVar2;
  undefined4 local_14;
  RealTimeRoom aRStack_10 [12];
  
  iVar1 = gpg::IsSuccess(*param_2);
  if (iVar1 != 0) {
    pIVar2 = (IRealTimeEventListener *)
             gpg::GameServices::RealTimeMultiplayer((GameServices *)param_1[1]);
    gpg::RealTimeMultiplayerManager::AcceptInvitationBlocking
              ((MultiplayerInvitation *)&local_14,pIVar2);
    iVar1 = gpg::IsSuccess(local_14);
    if (iVar1 != 0) {
      gpg::RealTimeRoom::operator=((RealTimeRoom *)(*param_1 + 0x14),aRStack_10);
      GPGSRealtimeMultiplayerManager::showWaitingRoomAndPlayGame
                ((GPGSRealtimeMultiplayerManager *)*param_1,1,false);
    }
    gpg::RealTimeMultiplayerManager::RealTimeRoomResponse::~RealTimeRoomResponse
              ((RealTimeRoomResponse *)&local_14);
  }
  return;
}

// ---- FUN_0033c038  @ 0x33c038
undefined4 FUN_0033c038(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033c044  @ 0x33c044
_Function_base *
FUN_0033c044(_Maybe_unary_or_binary_function<void,gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&>
             *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  _Function_base *local_c;
  
  local_18 = param_2;
  uStack_14 = param_3;
  uStack_10 = param_4;
  local_c = (_Function_base *)param_1;
  std::
  _Maybe_unary_or_binary_function<void,gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&>
  ::_Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033d07c(&local_18);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033c038(&local_18);
    FUN_0033d088(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33d0b5;
    *(undefined4 *)(local_c + 8) = 0x33d0d9;
  }
  return local_c;
}

// ---- FUN_0033c0d4  @ 0x33c0d4
undefined4 FUN_0033c0d4(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033c0e0  @ 0x33c0e0
_Function_base *
FUN_0033c0e0(_Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&>
             *param_1,undefined4 param_2,undefined4 param_3)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_14;
  undefined4 uStack_10;
  _Function_base *local_c;
  
  local_14 = param_2;
  uStack_10 = param_3;
  local_c = (_Function_base *)param_1;
  std::
  _Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&>
  ::_Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033d14c(&local_14);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033c0d4(&local_14);
    FUN_0033d158(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33d185;
    *(undefined4 *)(local_c + 8) = 0x33d1a9;
  }
  return local_c;
}

// ---- FUN_0033c350  @ 0x33c350
undefined4 FUN_0033c350(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033c35c  @ 0x33c35c
_Function_base *
FUN_0033c35c(_Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&>
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
  _Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&>
  ::_Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033d4c0(&local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033c350(&local_10);
    FUN_0033d4cc(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33d4f9;
    *(undefined4 *)(local_c + 8) = 0x33d51d;
  }
  return local_c;
}

// ---- FUN_0033c50c  @ 0x33c50c
undefined4 FUN_0033c50c(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033c518  @ 0x33c518
_Function_base *
FUN_0033c518(_Maybe_unary_or_binary_function<void,gpg::ResponseStatus_const&> *param_1,
            undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::ResponseStatus_const&>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033d710(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033c50c(local_10);
    FUN_0033d71c(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33d749;
    *(undefined4 *)(local_c + 8) = 0x33d76d;
  }
  return local_c;
}

// ---- FUN_0033c768  @ 0x33c768
undefined4 FUN_0033c768(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033c774  @ 0x33c774
_Function_base *
FUN_0033c774(_Maybe_unary_or_binary_function<void,gpg::MultiplayerStatus_const&> *param_1,
            undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::MultiplayerStatus_const&>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033d9a4(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033c768(local_10);
    FUN_0033d9b0(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33d9dd;
    *(undefined4 *)(local_c + 8) = 0x33da01;
  }
  return local_c;
}

// ---- FUN_0033c864  @ 0x33c864
undefined4 FUN_0033c864(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033c870  @ 0x33c870
_Function_base *
FUN_0033c870(_Maybe_unary_or_binary_function<void,gpg::MultiplayerStatus_const&> *param_1,
            undefined1 param_2)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_10 [4];
  _Function_base *local_c;
  
  local_10[0] = param_2;
  local_c = (_Function_base *)param_1;
  std::_Maybe_unary_or_binary_function<void,gpg::MultiplayerStatus_const&>::
  _Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033da94(local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033c864(local_10);
    FUN_0033daa0(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33dac1;
    *(undefined4 *)(local_c + 8) = 0x33dae5;
  }
  return local_c;
}

// ---- FUN_0033ca90  @ 0x33ca90
undefined4 FUN_0033ca90(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033ca9c  @ 0x33ca9c
_Function_base *
FUN_0033ca9c(_Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&>
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
  _Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&>
  ::_Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033df78(&local_10);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033ca90(&local_10);
    FUN_0033df84(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33dfa5;
    *(undefined4 *)(local_c + 8) = 0x33dfc9;
  }
  return local_c;
}

// ---- FUN_0033cb28  @ 0x33cb28
undefined4 FUN_0033cb28(undefined4 param_1)

{
  return param_1;
}

// ---- FUN_0033cb34  @ 0x33cb34
_Function_base *
FUN_0033cb34(_Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&>
             *param_1,undefined4 param_2,undefined4 param_3)

{
  _Function_base *p_Var1;
  int iVar2;
  undefined4 uVar3;
  undefined4 local_14;
  undefined4 uStack_10;
  _Function_base *local_c;
  
  local_14 = param_2;
  uStack_10 = param_3;
  local_c = (_Function_base *)param_1;
  std::
  _Maybe_unary_or_binary_function<void,gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&>
  ::_Maybe_unary_or_binary_function(param_1);
  std::_Function_base::_Function_base(local_c);
  iVar2 = FUN_0033e03c(&local_14);
  p_Var1 = local_c;
  if (iVar2 != 0) {
    uVar3 = FUN_0033cb28(&local_14);
    FUN_0033e048(p_Var1,uVar3);
    *(undefined4 *)(local_c + 0xc) = 0x33e075;
    *(undefined4 *)(local_c + 8) = 0x33e099;
  }
  return local_c;
}

// ---- FUN_0033ce90  @ 0x33ce90
void FUN_0033ce90(int *param_1)

{
  int iVar1;
  
  iVar1 = FUN_003395ac(param_1 + 1,0xffffffff);
  if (iVar1 == 1) {
    (**(code **)(*param_1 + 8))(param_1);
    iVar1 = FUN_003395ac(param_1 + 2,0xffffffff);
    if (iVar1 == 1) {
      (**(code **)(*param_1 + 0xc))(param_1);
    }
  }
  return;
}

// ---- FUN_0033d07c  @ 0x33d07c
undefined4 FUN_0033d07c(void)

{
  return 1;
}

// ---- FUN_0033d088  @ 0x33d088
void FUN_0033d088(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033c038(param_2);
  FUN_0033e664(param_1,uVar1);
  return;
}

// ---- FUN_0033d0b4  @ 0x33d0b4
void FUN_0033d0b4(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  PlayerSelectUIResponse *pPVar2;
  
  uVar1 = FUN_0033e698(param_1);
  pPVar2 = std::forward<gpg::TurnBasedMultiplayerManager::PlayerSelectUIResponse_const&>(param_2);
  FUN_0033a7dc(uVar1,pPVar2);
  return;
}

// ---- FUN_0033d0d8  @ 0x33d0d8
undefined4 FUN_0033d0d8(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_0091206c;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033e6b4(param_1);
    uVar3 = FUN_0033e698(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033e6cc(param_1,param_2);
    break;
  case 3:
    FUN_0033e704(param_1);
  }
  return 0;
}

// ---- FUN_0033d14c  @ 0x33d14c
undefined4 FUN_0033d14c(void)

{
  return 1;
}

// ---- FUN_0033d158  @ 0x33d158
void FUN_0033d158(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033c0d4(param_2);
  FUN_0033e724(param_1,uVar1);
  return;
}

// ---- FUN_0033d184  @ 0x33d184
void FUN_0033d184(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  RealTimeRoomResponse *pRVar2;
  
  uVar1 = FUN_0033e75c(param_1);
  pRVar2 = std::forward<gpg::RealTimeMultiplayerManager::RealTimeRoomResponse_const&>(param_2);
  FUN_0033a9c4(uVar1,pRVar2);
  return;
}

// ---- FUN_0033d1a8  @ 0x33d1a8
undefined4 FUN_0033d1a8(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_00912074;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033e778(param_1);
    uVar3 = FUN_0033e75c(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033e790(param_1,param_2);
    break;
  case 3:
    FUN_0033e7c8(param_1);
  }
  return 0;
}

// ---- FUN_0033d4c0  @ 0x33d4c0
undefined4 FUN_0033d4c0(void)

{
  return 1;
}

// ---- FUN_0033d4cc  @ 0x33d4cc
void FUN_0033d4cc(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033c350(param_2);
  FUN_0033ed44(param_1,uVar1);
  return;
}

// ---- FUN_0033d4f8  @ 0x33d4f8
void FUN_0033d4f8(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  WaitingRoomUIResponse *pWVar2;
  
  uVar1 = FUN_0033ed74(param_1);
  pWVar2 = std::forward<gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&>(param_2);
  FUN_0033ac0c(uVar1,pWVar2);
  return;
}

// ---- FUN_0033d51c  @ 0x33d51c
undefined4 FUN_0033d51c(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_0091207c;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033ed90(param_1);
    uVar3 = FUN_0033ed74(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033eda8(param_1,param_2);
    break;
  case 3:
    FUN_0033edd8(param_1);
  }
  return 0;
}

// ---- FUN_0033d710  @ 0x33d710
undefined4 FUN_0033d710(void)

{
  return 1;
}

// ---- FUN_0033d71c  @ 0x33d71c
void FUN_0033d71c(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033c50c(param_2);
  FUN_0033ef44(param_1,uVar1);
  return;
}

// ---- FUN_0033d748  @ 0x33d748
void FUN_0033d748(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  ResponseStatus *pRVar2;
  
  uVar1 = FUN_0033ef6c(param_1);
  pRVar2 = std::forward<gpg::ResponseStatus_const&>(param_2);
  FUN_0033af3c(uVar1,pRVar2);
  return;
}

// ---- FUN_0033d76c  @ 0x33d76c
undefined4 FUN_0033d76c(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_00912084;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033ef88(param_1);
    uVar3 = FUN_0033ef6c(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033efa0(param_1,param_2);
    break;
  case 3:
    FUN_0033efc8(param_1);
  }
  return 0;
}

// ---- FUN_0033d9a4  @ 0x33d9a4
undefined4 FUN_0033d9a4(void)

{
  return 1;
}

// ---- FUN_0033d9b0  @ 0x33d9b0
void FUN_0033d9b0(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033c768(param_2);
  FUN_0033f148(param_1,uVar1);
  return;
}

// ---- FUN_0033d9dc  @ 0x33d9dc
void FUN_0033d9dc(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  MultiplayerStatus *pMVar2;
  
  uVar1 = FUN_0033f170(param_1);
  pMVar2 = std::forward<gpg::MultiplayerStatus_const&>(param_2);
  FUN_0033b3f8(uVar1,pMVar2);
  return;
}

// ---- FUN_0033da00  @ 0x33da00
undefined4 FUN_0033da00(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_0091208c;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033f18c(param_1);
    uVar3 = FUN_0033f170(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033f1a4(param_1,param_2);
    break;
  case 3:
    FUN_0033f1cc(param_1);
  }
  return 0;
}

// ---- FUN_0033da94  @ 0x33da94
undefined4 FUN_0033da94(void)

{
  return 1;
}

// ---- FUN_0033daa0  @ 0x33daa0
void FUN_0033daa0(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033c864(param_2);
  FUN_0033f244(param_1,uVar1);
  return;
}

// ---- FUN_0033dac0  @ 0x33dac0
void FUN_0033dac0(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  MultiplayerStatus *pMVar2;
  
  uVar1 = FUN_0033f26c(param_1);
  pMVar2 = std::forward<gpg::MultiplayerStatus_const&>(param_2);
  FUN_0033b5f4(uVar1,pMVar2);
  return;
}

// ---- FUN_0033dae4  @ 0x33dae4
undefined4 FUN_0033dae4(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_00912094;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033f288(param_1);
    uVar3 = FUN_0033f26c(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033f2a0(param_1,param_2);
    break;
  case 3:
    FUN_0033f2c8(param_1);
  }
  return 0;
}

// ---- FUN_0033df78  @ 0x33df78
undefined4 FUN_0033df78(void)

{
  return 1;
}

// ---- FUN_0033df84  @ 0x33df84
void FUN_0033df84(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033ca90(param_2);
  FUN_0033f95c(param_1,uVar1);
  return;
}

// ---- FUN_0033dfa4  @ 0x33dfa4
void FUN_0033dfa4(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  WaitingRoomUIResponse *pWVar2;
  
  uVar1 = FUN_0033f98c(param_1);
  pWVar2 = std::forward<gpg::RealTimeMultiplayerManager::WaitingRoomUIResponse_const&>(param_2);
  FUN_0033b968(uVar1,pWVar2);
  return;
}

// ---- FUN_0033dfc8  @ 0x33dfc8
undefined4 FUN_0033dfc8(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_0091209c;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033f9a8(param_1);
    uVar3 = FUN_0033f98c(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033f9c0(param_1,param_2);
    break;
  case 3:
    FUN_0033f9f0(param_1);
  }
  return 0;
}

// ---- FUN_0033e03c  @ 0x33e03c
undefined4 FUN_0033e03c(void)

{
  return 1;
}

// ---- FUN_0033e048  @ 0x33e048
void FUN_0033e048(undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0033cb28(param_2);
  FUN_0033fa10(param_1,uVar1);
  return;
}

// ---- FUN_0033e074  @ 0x33e074
void FUN_0033e074(undefined4 param_1,type *param_2)

{
  undefined4 uVar1;
  RoomInboxUIResponse *pRVar2;
  
  uVar1 = FUN_0033fa48(param_1);
  pRVar2 = std::forward<gpg::RealTimeMultiplayerManager::RoomInboxUIResponse_const&>(param_2);
  FUN_0033b9cc(uVar1,pRVar2);
  return;
}

// ---- FUN_0033e098  @ 0x33e098
undefined4 FUN_0033e098(_Any_data *param_1,undefined4 param_2,undefined4 param_3)

{
  type_info **pptVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  switch(param_3) {
  case 0:
    pptVar1 = std::_Any_data::_M_access<std::type_info_const*>(param_1);
    *pptVar1 = (type_info *)&DAT_009120a4;
    break;
  case 1:
    puVar2 = (undefined4 *)FUN_0033fa64(param_1);
    uVar3 = FUN_0033fa48(param_2);
    *puVar2 = uVar3;
    break;
  case 2:
    FUN_0033fa7c(param_1,param_2);
    break;
  case 3:
    FUN_0033fab4(param_1);
  }
  return 0;
}

// ---- FUN_0033e664  @ 0x33e664
void FUN_0033e664(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = (undefined4 *)FUN_0033c038(param_2);
  puVar2 = operator_new(0xc);
  uVar3 = puVar1[1];
  uVar4 = puVar1[2];
  *puVar2 = *puVar1;
  puVar2[1] = uVar3;
  puVar2[2] = uVar4;
  puVar1 = (undefined4 *)FUN_0033e6b4(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033e698  @ 0x33e698
undefined4 FUN_0033e698(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033ffb4(param_1);
  return *puVar1;
}

// ---- FUN_0033e6b4  @ 0x33e6b4
undefined4 FUN_0033e6b4(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033e6cc  @ 0x33e6cc
void FUN_0033e6cc(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = (undefined4 *)FUN_0033ffb4(param_2);
  puVar1 = (undefined4 *)*puVar1;
  puVar2 = operator_new(0xc);
  uVar3 = puVar1[1];
  uVar4 = puVar1[2];
  *puVar2 = *puVar1;
  puVar2[1] = uVar3;
  puVar2[2] = uVar4;
  puVar1 = (undefined4 *)FUN_0033e6b4(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033e704  @ 0x33e704
void FUN_0033e704(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033e6b4(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033e724  @ 0x33e724
void FUN_0033e724(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_0033c0d4(param_2);
  puVar2 = operator_new(8);
  uVar3 = puVar1[1];
  *puVar2 = *puVar1;
  puVar2[1] = uVar3;
  puVar1 = (undefined4 *)FUN_0033e778(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033e75c  @ 0x33e75c
undefined4 FUN_0033e75c(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033ffcc(param_1);
  return *puVar1;
}

// ---- FUN_0033e778  @ 0x33e778
undefined4 FUN_0033e778(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033e790  @ 0x33e790
void FUN_0033e790(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_0033ffcc(param_2);
  puVar1 = (undefined4 *)*puVar1;
  puVar2 = operator_new(8);
  uVar3 = puVar1[1];
  *puVar2 = *puVar1;
  puVar2[1] = uVar3;
  puVar1 = (undefined4 *)FUN_0033e778(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033e7c8  @ 0x33e7c8
void FUN_0033e7c8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033e778(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033ed44  @ 0x33ed44
void FUN_0033ed44(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)FUN_0033c350(param_2);
  puVar2 = operator_new(4);
  *puVar2 = *puVar1;
  puVar1 = (undefined4 *)FUN_0033ed90(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033ed74  @ 0x33ed74
undefined4 FUN_0033ed74(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0034033c(param_1);
  return *puVar1;
}

// ---- FUN_0033ed90  @ 0x33ed90
undefined4 FUN_0033ed90(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033eda8  @ 0x33eda8
void FUN_0033eda8(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)FUN_0034033c(param_2);
  puVar1 = (undefined4 *)*puVar1;
  puVar2 = operator_new(4);
  *puVar2 = *puVar1;
  puVar1 = (undefined4 *)FUN_0033ed90(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033edd8  @ 0x33edd8
void FUN_0033edd8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033ed90(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033ef44  @ 0x33ef44
void FUN_0033ef44(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_0033c50c(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_0033ef88(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_0033ef6c  @ 0x33ef6c
undefined4 FUN_0033ef6c(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0034045c(param_1);
  return *puVar1;
}

// ---- FUN_0033ef88  @ 0x33ef88
undefined4 FUN_0033ef88(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033efa0  @ 0x33efa0
void FUN_0033efa0(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_0034045c(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_0033ef88(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_0033efc8  @ 0x33efc8
void FUN_0033efc8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033ef88(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033f148  @ 0x33f148
void FUN_0033f148(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_0033c768(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_0033f18c(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_0033f170  @ 0x33f170
undefined4 FUN_0033f170(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0034054c(param_1);
  return *puVar1;
}

// ---- FUN_0033f18c  @ 0x33f18c
undefined4 FUN_0033f18c(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033f1a4  @ 0x33f1a4
void FUN_0033f1a4(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_0034054c(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_0033f18c(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_0033f1cc  @ 0x33f1cc
void FUN_0033f1cc(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033f18c(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033f244  @ 0x33f244
void FUN_0033f244(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_0033c864(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_0033f288(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_0033f26c  @ 0x33f26c
undefined4 FUN_0033f26c(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_003405a8(param_1);
  return *puVar1;
}

// ---- FUN_0033f288  @ 0x33f288
undefined4 FUN_0033f288(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033f2a0  @ 0x33f2a0
void FUN_0033f2a0(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  undefined4 *puVar2;
  
  FUN_003405a8(param_2);
  pvVar1 = operator_new(1);
  puVar2 = (undefined4 *)FUN_0033f288(param_1);
  *puVar2 = pvVar1;
  return;
}

// ---- FUN_0033f2c8  @ 0x33f2c8
void FUN_0033f2c8(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033f288(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033f95c  @ 0x33f95c
void FUN_0033f95c(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)FUN_0033ca90(param_2);
  puVar2 = operator_new(4);
  *puVar2 = *puVar1;
  puVar1 = (undefined4 *)FUN_0033f9a8(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033f98c  @ 0x33f98c
undefined4 FUN_0033f98c(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00340b74(param_1);
  return *puVar1;
}

// ---- FUN_0033f9a8  @ 0x33f9a8
undefined4 FUN_0033f9a8(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033f9c0  @ 0x33f9c0
void FUN_0033f9c0(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  
  puVar1 = (undefined4 *)FUN_00340b74(param_2);
  puVar1 = (undefined4 *)*puVar1;
  puVar2 = operator_new(4);
  *puVar2 = *puVar1;
  puVar1 = (undefined4 *)FUN_0033f9a8(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033f9f0  @ 0x33f9f0
void FUN_0033f9f0(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033f9a8(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033fa10  @ 0x33fa10
void FUN_0033fa10(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_0033cb28(param_2);
  puVar2 = operator_new(8);
  uVar3 = puVar1[1];
  *puVar2 = *puVar1;
  puVar2[1] = uVar3;
  puVar1 = (undefined4 *)FUN_0033fa64(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033fa48  @ 0x33fa48
undefined4 FUN_0033fa48(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_00340b8c(param_1);
  return *puVar1;
}

// ---- FUN_0033fa64  @ 0x33fa64
undefined4 FUN_0033fa64(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033fa7c  @ 0x33fa7c
void FUN_0033fa7c(undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  puVar1 = (undefined4 *)FUN_00340b8c(param_2);
  puVar1 = (undefined4 *)*puVar1;
  puVar2 = operator_new(8);
  uVar3 = puVar1[1];
  *puVar2 = *puVar1;
  puVar2[1] = uVar3;
  puVar1 = (undefined4 *)FUN_0033fa64(param_1);
  *puVar1 = puVar2;
  return;
}

// ---- FUN_0033fab4  @ 0x33fab4
void FUN_0033fab4(undefined4 param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_0033fa64(param_1);
  operator_delete((void *)*puVar1);
  return;
}

// ---- FUN_0033ffb4  @ 0x33ffb4
undefined4 FUN_0033ffb4(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}

// ---- FUN_0033ffcc  @ 0x33ffcc
undefined4 FUN_0033ffcc(_Any_data *param_1)

{
  undefined4 uVar1;
  
  uVar1 = std::_Any_data::_M_access(param_1);
  return uVar1;
}
