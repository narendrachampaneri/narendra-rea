// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 58 functions

// ---- FUN_00400ac8  @ 0x400ac8
void FUN_00400ac8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952be0,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952be8,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952bf0,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952c00);
    FUN_007985bc(&DAT_00952c00,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952c04,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952c04,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00400bd4  @ 0x400bd4
uint FUN_00400bd4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00400c30  @ 0x400c30
float * FUN_00400c30(float *param_1,uint param_2)

{
  uint in_fpscr;
  float fVar1;
  
  fVar1 = (float)VectorSignedToFloat(param_2 & 0xff,(byte)(in_fpscr >> 0x16) & 3);
  *param_1 = fVar1 / 255.0;
  fVar1 = (float)VectorSignedToFloat(param_2 >> 8 & 0xff,(byte)(in_fpscr >> 0x16) & 3);
  param_1[1] = fVar1 / 255.0;
  fVar1 = (float)VectorSignedToFloat(param_2 >> 0x10 & 0xff,(byte)(in_fpscr >> 0x16) & 3);
  param_1[2] = fVar1 / 255.0;
  fVar1 = (float)VectorSignedToFloat(param_2 >> 0x18,(byte)(in_fpscr >> 0x16) & 3);
  param_1[3] = fVar1 / 255.0;
  return param_1;
}

// ---- FUN_00400cac  @ 0x400cac
undefined4 * FUN_00400cac(undefined4 *param_1)

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

// ---- FUN_00400cd4  @ 0x400cd4
undefined4 FUN_00400cd4(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_00400d1c  @ 0x400d1c
CCRect * FUN_00400d1c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00400d80  @ 0x400d80
float FUN_00400d80(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00400e40  @ 0x400e40
float FUN_00400e40(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00401010  @ 0x401010
undefined4
FUN_00401010(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            double param_5,double param_6)

{
  float fVar1;
  undefined4 uVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  
  fVar1 = (float)(**(code **)(*scaleLayer + 0x34))(scaleLayer);
  fVar3 = (float)(param_5 * (double)fVar1 + 10.0);
  fVar1 = (float)(**(code **)(*scaleLayer + 0x3c))(scaleLayer);
  fVar4 = (float)(param_6 * (double)fVar1 + 10.0);
  fVar5 = (float)screenSize / 2.0;
  fVar1 = (float)(**(code **)(*scaleLayer + 0x34))(scaleLayer);
  fVar5 = fVar5 / fVar1;
  fVar6 = screenSize._4_4_ / 2.0;
  fVar1 = (float)(**(code **)(*scaleLayer + 0x3c))(scaleLayer);
  fVar6 = fVar6 / fVar1;
  if ((double)CONCAT44(param_2,param_1) <= (double)((float)centerPoint + fVar5 + fVar3)) {
    if ((int)((uint)((double)CONCAT44(param_2,param_1) <
                    (double)(((float)centerPoint - fVar5) - fVar3)) << 0x1f) < 0) {
      uVar2 = 0;
    }
    else if ((double)CONCAT44(param_4,param_3) <= (double)(centerPoint._4_4_ + fVar6 + fVar4)) {
      if ((int)((uint)((double)CONCAT44(param_4,param_3) <
                      (double)((centerPoint._4_4_ - fVar6) - fVar4)) << 0x1f) < 0) {
        uVar2 = 0;
      }
      else {
        uVar2 = 1;
      }
    }
    else {
      uVar2 = 0;
    }
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- FUN_004011c8  @ 0x4011c8
uint FUN_004011c8(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00400bd4((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00400bd4((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_004013cc  @ 0x4013cc
vector<std::string,std::allocator<std::string>> *
FUN_004013cc(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0040148c  @ 0x40148c
undefined4 FUN_0040148c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943680 <= param_2)) {
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

// ---- FUN_0040195c  @ 0x40195c
undefined4 FUN_0040195c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e8bdc,0x54);
  if ((param_1 < 0) || (DAT_00943680 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00404760  @ 0x404760
void FUN_00404760(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952c08,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952c10,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952c18,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952c28);
    FUN_007985bc(&DAT_00952c28,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952c2c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952c2c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_0040486c  @ 0x40486c
int FUN_0040486c(int param_1)

{
  if (param_1 < 0) {
    param_1 = -param_1;
  }
  return param_1;
}

// ---- FUN_00404880  @ 0x404880
long FUN_00404880(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_004048a0  @ 0x4048a0
undefined4 * FUN_004048a0(undefined4 *param_1)

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

// ---- FUN_004048c8  @ 0x4048c8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00404912 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_004048c8(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_004048a0(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_00408634  @ 0x408634
void FUN_00408634(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952c30,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952c38,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952c40,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952c50);
    FUN_007985bc(&DAT_00952c50,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_004086e4  @ 0x4086e4
uint FUN_004086e4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00408740  @ 0x408740
undefined4 * FUN_00408740(undefined4 *param_1)

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

// ---- FUN_00408768  @ 0x408768
CCRect * FUN_00408768(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_004087c8  @ 0x4087c8
float FUN_004087c8(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00408888  @ 0x408888
float FUN_00408888(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00408c10  @ 0x408c10
uint FUN_00408c10(float param_1,float param_2,float param_3)

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
    local_2c = FUN_004086e4((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_004086e4((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00408e14  @ 0x408e14
vector<std::string,std::allocator<std::string>> *
FUN_00408e14(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_00408ed4  @ 0x408ed4
undefined4 FUN_00408ed4(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943688 <= param_2)) {
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

// ---- FUN_004093a4  @ 0x4093a4
undefined4 FUN_004093a4(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e91f4,0x54);
  if ((param_1 < 0) || (DAT_00943688 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00409e10  @ 0x409e10
void FUN_00409e10(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952c58,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952c60,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952c68,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952c78);
    FUN_007985bc(&DAT_00952c78,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952c7c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952c7c,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00952c80);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00952c98,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00409f40  @ 0x409f40
uint FUN_00409f40(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00409f9c  @ 0x409f9c
CCPoint * FUN_00409f9c(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00409fbc  @ 0x409fbc
CCPoint * FUN_00409fbc(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator-(param_1,param_2);
  return param_1;
}

// ---- FUN_00409fdc  @ 0x409fdc
CCPoint * FUN_00409fdc(float param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator*(param_2,param_1);
  return param_2;
}

// ---- FUN_00409ffc  @ 0x409ffc
undefined4 * FUN_00409ffc(undefined4 *param_1)

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

// ---- FUN_0040a024  @ 0x40a024
CCRect * FUN_0040a024(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_0040a4d0  @ 0x40a4d0
uint FUN_0040a4d0(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00409f40((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00409f40((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0040a6d4  @ 0x40a6d4
vector<std::string,std::allocator<std::string>> *
FUN_0040a6d4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0040a794  @ 0x40a794
undefined4 FUN_0040a794(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943690 <= param_2)) {
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

// ---- FUN_0040ac64  @ 0x40ac64
undefined4 FUN_0040ac64(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e94ac,0x54);
  if ((param_1 < 0) || (DAT_00943690 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0040d584  @ 0x40d584
void FUN_0040d584(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952ca8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952cb0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952cb8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952cc8);
    FUN_007985bc(&DAT_00952cc8,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952ccc,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952ccc,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00952cd0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00952ce8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0040d6b4  @ 0x40d6b4
uint FUN_0040d6b4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_0040d738  @ 0x40d738
CCRect * FUN_0040d738(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_0040d798  @ 0x40d798
float FUN_0040d798(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_0040d858  @ 0x40d858
float FUN_0040d858(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_0040dbe0  @ 0x40dbe0
uint FUN_0040dbe0(float param_1,float param_2,float param_3)

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
    local_2c = FUN_0040d6b4((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_0040d6b4((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0040dde4  @ 0x40dde4
vector<std::string,std::allocator<std::string>> *
FUN_0040dde4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0040dea4  @ 0x40dea4
undefined4 FUN_0040dea4(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943698 <= param_2)) {
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

// ---- FUN_0040e374  @ 0x40e374
undefined4 FUN_0040e374(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e98c4,0x54);
  if ((param_1 < 0) || (DAT_00943698 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0040f32c  @ 0x40f32c
void FUN_0040f32c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00952cf8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00952d00,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00952d08,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00952d18);
    FUN_007985bc(&DAT_00952d18,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00952d1c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00952d1c,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00952d20);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00952d38,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_0040f45c  @ 0x40f45c
uint FUN_0040f45c(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_0040f4b8  @ 0x40f4b8
CCPoint * FUN_0040f4b8(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_0040f4d8  @ 0x40f4d8
undefined4 * FUN_0040f4d8(undefined4 *param_1)

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

// ---- FUN_0040f500  @ 0x40f500
CCRect * FUN_0040f500(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_0040f560  @ 0x40f560
float FUN_0040f560(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_0040f620  @ 0x40f620
float FUN_0040f620(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_0040f9a8  @ 0x40f9a8
uint FUN_0040f9a8(float param_1,float param_2,float param_3)

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
    local_2c = FUN_0040f45c((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_0040f45c((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0040fbac  @ 0x40fbac
vector<std::string,std::allocator<std::string>> *
FUN_0040fbac(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0040fc6c  @ 0x40fc6c
undefined4 FUN_0040fc6c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_009436a0 <= param_2)) {
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
