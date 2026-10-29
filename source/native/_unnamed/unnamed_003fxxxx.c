// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 68 functions

// ---- FUN_003f2b14  @ 0x3f2b14
void FUN_003f2b14(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952b08,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952b10,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952b18,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952b28);
    FUN_007985bc(&DAT_00952b28,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952b2c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952b2c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_003f2c20  @ 0x3f2c20
long FUN_003f2c20(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_003f2c2c  @ 0x3f2c2c
uint FUN_003f2c2c(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003f2c88  @ 0x3f2c88
undefined4 FUN_003f2c88(void)

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

// ---- FUN_003f2cbc  @ 0x3f2cbc
undefined4 FUN_003f2cbc(void)

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

// ---- FUN_003f2cf0  @ 0x3f2cf0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f2d08 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_003f2cf0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_003f2c88(param_1,param_2,param_3);
  uVar1 = FUN_003f2cbc(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_003f2d2c  @ 0x3f2d2c
undefined4 * FUN_003f2d2c(undefined4 *param_1)

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

// ---- FUN_003f2d54  @ 0x3f2d54
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f2d9e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f2d54(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003f2d2c(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003f2dac  @ 0x3f2dac
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f2dea */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f2dac(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_003f2d2c(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_003f2df8  @ 0x3f2df8
undefined4 FUN_003f2df8(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_003f2e40  @ 0x3f2e40
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f2e82 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f2e40(undefined4 param_1)

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
  FUN_003f2dac(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_003f2e90  @ 0x3f2e90
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f2eca */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_003f2e90(undefined4 *param_1)

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
  FUN_003f2df8(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_003f2e40(uVar1,uVar2,uVar3,local_18);
    FUN_003f2dac(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_003f2f34  @ 0x3f2f34
CCRect * FUN_003f2f34(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003f33e0  @ 0x3f33e0
uint FUN_003f33e0(float param_1,float param_2,float param_3)

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
    local_2c = FUN_003f2c2c((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003f2c2c((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_003f35e4  @ 0x3f35e4
vector<std::string,std::allocator<std::string>> *
FUN_003f35e4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003f36a4  @ 0x3f36a4
undefined4 FUN_003f36a4(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943660 <= param_2)) {
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

// ---- FUN_003f3b74  @ 0x3f3b74
undefined4 FUN_003f3b74(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e8144,0x54);
  if ((param_1 < 0) || (DAT_00943660 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_003f3c8c  @ 0x3f3c8c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f3cfa */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_003f3c8c(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
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
    local_8 = *(undefined4 *)(local_6c + 0x128);
    param_5 = *(undefined4 *)(local_6c + 0x130);
    param_7 = extraout_r0;
    param_8 = extraout_r1;
  }
  uVar3 = (undefined4)((ulonglong)in_d0 >> 0x20);
  FUN_003f2dac((int)*(undefined8 *)(local_74 + 0x38),uVar3,(int)*(undefined8 *)(local_74 + 0x40),
               uVar4,param_7,local_60);
  FUN_003f2dac((int)*(undefined8 *)(local_74 + 0x48),uVar3,(int)*(undefined8 *)(local_74 + 0x50),
               uVar4,(int)*(undefined8 *)(local_74 + 0x10),local_50);
  FUN_003f2d54(local_8,uVar3,param_5,uVar4,local_50[0],in_s5,local_48,local_40);
  FUN_003f2dac(local_40[0],uVar3,local_38,uVar4,SUB84(param_9,0),local_30);
  FUN_003f2d54(local_60[0],uVar3,local_58,uVar4,local_30[0],in_s5,local_28,local_20);
  iVar1 = local_74;
  FUN_003f2e90(local_20[0],uVar3,local_18,uVar4,(int)*(undefined8 *)(local_74 + 0x80),&local_88);
  *(undefined4 *)(iVar1 + 0x38) = local_88;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_84;
  *(undefined4 *)(iVar1 + 0x40) = uStack_80;
  *(undefined4 *)(iVar1 + 0x44) = uStack_7c;
  local_68 = *(undefined4 *)(local_74 + 0x88);
  uStack_64 = *(undefined4 *)(local_74 + 0x8c);
  uVar2 = SUB84(*(double *)(local_74 + 0x60) * (double)CONCAT44(param_8,param_7) +
                *(double *)(local_74 + 0x68) * *(double *)(local_74 + 0x20) * param_9,0);
  FUN_003f2cf0(uVar2,uVar3,SUB84(-*(double *)(local_74 + 0x88),0),uVar4,local_68);
  *(ulonglong *)(local_74 + 0x60) = CONCAT44(uVar3,uVar2);
  return;
}

// ---- FUN_003f49a0  @ 0x3f49a0
void FUN_003f49a0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952b30,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952b38,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952b40,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952b50);
    FUN_007985bc(&DAT_00952b50,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952b54,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952b54,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_003f4aac  @ 0x3f4aac
long FUN_003f4aac(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_003f4ab8  @ 0x3f4ab8
uint FUN_003f4ab8(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003f4b14  @ 0x3f4b14
undefined4 FUN_003f4b14(void)

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

// ---- FUN_003f4b48  @ 0x3f4b48
undefined4 FUN_003f4b48(void)

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

// ---- FUN_003f4b7c  @ 0x3f4b7c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4b94 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_003f4b7c(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_003f4b14(param_1,param_2,param_3);
  uVar1 = FUN_003f4b48(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_003f4bb8  @ 0x3f4bb8
undefined4 * FUN_003f4bb8(undefined4 *param_1)

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

// ---- FUN_003f4be0  @ 0x3f4be0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4c2a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f4be0(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003f4bb8(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003f4c38  @ 0x3f4c38
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4c82 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f4c38(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003f4bb8(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003f4c90  @ 0x3f4c90
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4cce */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f4c90(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_003f4bb8(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_003f4cdc  @ 0x3f4cdc
undefined4 FUN_003f4cdc(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_003f4d24  @ 0x3f4d24
undefined4 FUN_003f4d24(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d3 - in_d1 * in_d2,0);
}

// ---- FUN_003f4d6c  @ 0x3f4d6c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4dae */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003f4d6c(undefined4 param_1)

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
  FUN_003f4c90(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_003f4dbc  @ 0x3f4dbc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4df6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_003f4dbc(undefined4 *param_1)

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
  FUN_003f4cdc(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_003f4d6c(uVar1,uVar2,uVar3,local_18);
    FUN_003f4c90(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_003f4e60  @ 0x3f4e60
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f4ea8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_003f4e60(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                 undefined4 param_5,undefined4 param_6,undefined4 param_7,int param_8)

{
  int iVar1;
  undefined4 uVar2;
  double dVar3;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 local_48;
  undefined4 local_40;
  undefined4 local_38;
  undefined4 local_30;
  int local_24;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  local_24 = param_8;
  local_48 = param_5;
  local_40 = param_7;
  local_38 = param_1;
  local_30 = param_3;
  FUN_003f4c90(param_1,param_2,param_3,param_4,(int)*(undefined8 *)(param_8 + 0x10),local_20);
  iVar1 = local_24;
  uVar2 = (undefined4)*(undefined8 *)(local_24 + 0x38);
  FUN_003f4be0(uVar2,param_2,(int)*(undefined8 *)(local_24 + 0x40),param_4,local_20[0],param_6,
               local_18,&local_58);
  *(undefined4 *)(iVar1 + 0x38) = local_58;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_54;
  *(undefined4 *)(iVar1 + 0x40) = uStack_50;
  *(undefined4 *)(iVar1 + 0x44) = uStack_4c;
  dVar3 = *(double *)(local_24 + 0x20);
  FUN_003f4d24(local_48,param_2,local_40,param_4,local_38,param_6,local_30);
  *(double *)(local_24 + 0x60) =
       *(double *)(local_24 + 0x60) + dVar3 * (double)CONCAT44(param_2,uVar2);
  return;
}

// ---- FUN_003f4f2c  @ 0x3f4f2c
CCRect * FUN_003f4f2c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003f4f90  @ 0x3f4f90
float FUN_003f4f90(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003f5050  @ 0x3f5050
float FUN_003f5050(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003f5110  @ 0x3f5110
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f51c6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_003f5110(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            double param_5)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  undefined4 extraout_r0_02;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 extraout_r1_01;
  undefined4 extraout_r1_02;
  double in_d0;
  double dVar1;
  
  dVar1 = cos(in_d0);
  dVar1 = sin(dVar1);
  dVar1 = sin(dVar1);
  cos(dVar1);
  FUN_003f4bb8(SUB84((double)(float)((double)CONCAT44(param_4,param_3) *
                                     (double)CONCAT44(extraout_r1,extraout_r0) -
                                    param_5 * (double)CONCAT44(extraout_r1_00,extraout_r0_00)),0),
               (int)((ulonglong)dVar1 >> 0x20),
               SUB84((double)(float)((double)CONCAT44(param_4,param_3) *
                                     (double)CONCAT44(extraout_r1_01,extraout_r0_01) +
                                    param_5 * (double)CONCAT44(extraout_r1_02,extraout_r0_02)),0),
               param_1);
  return param_1;
}

// ---- FUN_003f53d8  @ 0x3f53d8
uint FUN_003f53d8(float param_1,float param_2,float param_3)

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
    local_2c = FUN_003f4ab8((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003f4ab8((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_003f55dc  @ 0x3f55dc
vector<std::string,std::allocator<std::string>> *
FUN_003f55dc(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003f569c  @ 0x3f569c
undefined4 FUN_003f569c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943668 <= param_2)) {
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

// ---- FUN_003f5b6c  @ 0x3f5b6c
undefined4 FUN_003f5b6c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e837c,0x54);
  if ((param_1 < 0) || (DAT_00943668 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_003fa90c  @ 0x3fa90c
void FUN_003fa90c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952b58,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952b60,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952b68,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952b78);
    FUN_007985bc(&DAT_00952b78,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952b7c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952b7c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_003faa18  @ 0x3faa18
long FUN_003faa18(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_003faa24  @ 0x3faa24
uint FUN_003faa24(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003faa80  @ 0x3faa80
undefined4 * FUN_003faa80(undefined4 *param_1)

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

// ---- FUN_003faaa8  @ 0x3faaa8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003faaf2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003faaa8(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003faa80(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003fab00  @ 0x3fab00
CCRect * FUN_003fab00(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003fab60  @ 0x3fab60
float FUN_003fab60(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003fac20  @ 0x3fac20
float FUN_003fac20(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003fafa8  @ 0x3fafa8
uint FUN_003fafa8(float param_1,float param_2,float param_3)

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
    local_2c = FUN_003faa24((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003faa24((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_003fb1ac  @ 0x3fb1ac
vector<std::string,std::allocator<std::string>> *
FUN_003fb1ac(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003fb26c  @ 0x3fb26c
undefined4 FUN_003fb26c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943670 <= param_2)) {
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

// ---- FUN_003fb73c  @ 0x3fb73c
undefined4 FUN_003fb73c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e863c,0x54);
  if ((param_1 < 0) || (DAT_00943670 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_003fe074  @ 0x3fe074
void FUN_003fe074(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952b94,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952b9c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952ba4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952bb4);
    FUN_007985bc(&DAT_00952bb4,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952bb8,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952bb8,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00952bbc);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00952bd0,0xffffffffffffffff);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&sargePeerId,&DAT_007e8794,auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&sargePeerId,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_003fe1fc  @ 0x3fe1fc
long FUN_003fe1fc(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_003fe208  @ 0x3fe208
uint FUN_003fe208(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003fe264  @ 0x3fe264
undefined4 * FUN_003fe264(undefined4 *param_1)

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

// ---- FUN_003fe28c  @ 0x3fe28c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003fe2d6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003fe28c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003fe264(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003fe2e4  @ 0x3fe2e4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003fe32e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003fe2e4(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003fe264(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003fe33c  @ 0x3fe33c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003fe37a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003fe33c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_003fe264(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_003fe388  @ 0x3fe388
void FUN_003fe388(int param_1)

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

// ---- FUN_003fe3b4  @ 0x3fe3b4
CCRect * FUN_003fe3b4(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003fe418  @ 0x3fe418
float FUN_003fe418(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003fe4d8  @ 0x3fe4d8
float FUN_003fe4d8(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_003fe860  @ 0x3fe860
uint FUN_003fe860(float param_1,float param_2,float param_3)

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
    local_2c = FUN_003fe208((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_003fe208((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_003fea64  @ 0x3fea64
vector<std::string,std::allocator<std::string>> *
FUN_003fea64(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003feb24  @ 0x3feb24
undefined4 FUN_003feb24(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943678 <= param_2)) {
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

// ---- FUN_003feff4  @ 0x3feff4
undefined4 FUN_003feff4(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e897c,0x54);
  if ((param_1 < 0) || (DAT_00943678 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}
