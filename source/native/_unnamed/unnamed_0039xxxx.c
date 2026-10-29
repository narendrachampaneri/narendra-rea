// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 87 functions

// ---- FUN_003909d8  @ 0x3909d8
void FUN_003909d8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950a34,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950a3c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950a44,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950a54);
    FUN_007985bc(&DAT_00950a54,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950a58,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950a58,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00950a5c);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00950a70,0xffffffffffffffff);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&m_baseUrl,"https://appsomniacs.azurewebsites.net",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&m_baseUrl,0x7c5915,&DAT_00943000);
    std::vector<ServerListObject,std::allocator<ServerListObject>>::vector
              ((vector<ServerListObject,std::allocator<ServerListObject>> *)m_currentServerList);
    FUN_007985bc(m_currentServerList,0x38c2a1,&DAT_00943000);
    FUN_007c51b0(&m_sessionToken);
    FUN_007985bc(&m_sessionToken,0x7c5915,&DAT_00943000);
    FUN_007c51b0(&m_privateClientToken);
    FUN_007985bc(&m_privateClientToken,0x7c5915,&DAT_00943000);
    FUN_007c51b0(&m_sharedClientToken);
    FUN_007985bc(&m_sharedClientToken,0x7c5915,&DAT_00943000);
    FUN_007c51b0(&basicAuthHttpHeader);
    FUN_007985bc(&basicAuthHttpHeader,0x7c5915,&DAT_00943000);
    FUN_007c51b0(&sessionTokenHttpHeader);
    FUN_007985bc(&sessionTokenHttpHeader,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00390c54  @ 0x390c54
long FUN_00390c54(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_00390c60  @ 0x390c60
uint FUN_00390c60(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00390cbc  @ 0x390cbc
undefined4 FUN_00390cbc(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4)

{
  undefined1 local_8 [2];
  undefined1 uStack_6;
  
  _local_8 = CONCAT12(param_3,CONCAT11(param_2,param_1));
  return CONCAT13(param_4,_local_8);
}

// ---- FUN_00390dc8  @ 0x390dc8
undefined4 FUN_00390dc8(void)

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

// ---- FUN_00390dfc  @ 0x390dfc
undefined4 FUN_00390dfc(void)

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

// ---- FUN_00390e30  @ 0x390e30
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00390e48 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_00390e30(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_00390dc8(param_1,param_2,param_3);
  uVar1 = FUN_00390dfc(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_00390e6c  @ 0x390e6c
undefined4 * FUN_00390e6c(undefined4 *param_1)

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

// ---- FUN_00390e94  @ 0x390e94
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00390ede */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00390e94(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_00390e6c(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_00390eec  @ 0x390eec
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00390f2a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00390eec(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_00390e6c(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_00390f38  @ 0x390f38
undefined4 FUN_00390f38(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d3 - in_d1 * in_d2,0);
}

// ---- FUN_00390f80  @ 0x390f80
void FUN_00390f80(int param_1)

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

// ---- FUN_00390fac  @ 0x390fac
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00390ff4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_00390fac(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_00390eec(param_1,param_2,param_3,param_4,(int)*(undefined8 *)(param_8 + 0x10),local_20);
  iVar1 = local_24;
  uVar2 = (undefined4)*(undefined8 *)(local_24 + 0x38);
  FUN_00390e94(uVar2,param_2,(int)*(undefined8 *)(local_24 + 0x40),param_4,local_20[0],param_6,
               local_18,&local_58);
  *(undefined4 *)(iVar1 + 0x38) = local_58;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_54;
  *(undefined4 *)(iVar1 + 0x40) = uStack_50;
  *(undefined4 *)(iVar1 + 0x44) = uStack_4c;
  dVar3 = *(double *)(local_24 + 0x20);
  FUN_00390f38(local_48,param_2,local_40,param_4,local_38,param_6,local_30);
  *(double *)(local_24 + 0x60) =
       *(double *)(local_24 + 0x60) + dVar3 * (double)CONCAT44(param_2,uVar2);
  return;
}

// ---- FUN_00391078  @ 0x391078
CCRect * FUN_00391078(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003910d8  @ 0x3910d8
float FUN_003910d8(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00391198  @ 0x391198
float FUN_00391198(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_00391520  @ 0x391520
uint FUN_00391520(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00390c60((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00390c60((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00391724  @ 0x391724
vector<std::string,std::allocator<std::string>> *
FUN_00391724(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003917e4  @ 0x3917e4
undefined4 FUN_003917e4(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943510 <= param_2)) {
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

// ---- FUN_00391cb4  @ 0x391cb4
undefined4 FUN_00391cb4(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e0534,0x54);
  if ((param_1 < 0) || (DAT_00943510 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00397e68  @ 0x397e68
void FUN_00397e68(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950a98,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950aa0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950aa8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950ab8);
    FUN_007985bc(&DAT_00950ab8,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950abc,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950abc,0x7c5915,&DAT_00943000);
    RakNet::SystemAddress::SystemAddress((SystemAddress *)&DAT_00950ac0);
    RakNet::RakNetGUID::RakNetGUID((RakNetGUID *)&DAT_00950ad8,0xffffffffffffffff);
  }
  return;
}

// ---- FUN_00397f98  @ 0x397f98
uint FUN_00397f98(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_00397ff4  @ 0x397ff4
CCPoint * FUN_00397ff4(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_00398014  @ 0x398014
undefined4 * FUN_00398014(undefined4 *param_1)

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

// ---- FUN_0039803c  @ 0x39803c
CCRect * FUN_0039803c(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_003984e8  @ 0x3984e8
uint FUN_003984e8(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00397f98((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00397f98((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_003986ec  @ 0x3986ec
vector<std::string,std::allocator<std::string>> *
FUN_003986ec(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_003987ac  @ 0x3987ac
undefined4 FUN_003987ac(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943538 <= param_2)) {
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

// ---- FUN_00398c7c  @ 0x398c7c
undefined4 FUN_00398c7c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e0a4c,0x54);
  if ((param_1 < 0) || (DAT_00943538 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_00399364  @ 0x399364
void FUN_00399364(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950ee8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950ef0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950ef8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950f08);
    FUN_007985bc(&DAT_00950f08,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950f0c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950f0c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_00399470  @ 0x399470
uint FUN_00399470(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_003994cc  @ 0x3994cc
CCPoint * FUN_003994cc(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_003994ec  @ 0x3994ec
undefined4 * FUN_003994ec(undefined4 *param_1)

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

// ---- FUN_00399514  @ 0x399514
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039955e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_00399514(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003994ec(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0039956c  @ 0x39956c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003995b6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039956c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_003994ec(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_003995c4  @ 0x3995c4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00399602 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_003995c4(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_003994ec(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_00399610  @ 0x399610
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039965a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_00399610(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  double in_d4;
  undefined4 local_28 [2];
  undefined4 local_20;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  FUN_003995c4(param_1,param_2,param_3,param_4,SUB84(1.0 - in_d4,0),local_28);
  FUN_003995c4(param_5,param_2,param_7,param_4,SUB84(in_d4,0),local_18);
  FUN_00399514(local_28[0],param_2,local_20,param_4,local_18[0],param_6,local_10,param_8);
  return param_8;
}

// ---- FUN_003996ac  @ 0x3996ac
void FUN_003996ac(int param_1)

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

// ---- FUN_003996d8  @ 0x3996d8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00399732 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_003996d8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
            undefined4 param_9)

{
  undefined4 in_stack_00000000;
  
  FUN_00399610(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,in_stack_00000000,
               param_9);
  return param_9;
}

// ---- FUN_00399744  @ 0x399744
CCRect * FUN_00399744(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_00399bf0  @ 0x399bf0
uint FUN_00399bf0(float param_1,float param_2,float param_3)

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
    local_2c = FUN_00399470((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_00399470((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_00399df4  @ 0x399df4
vector<std::string,std::allocator<std::string>> *
FUN_00399df4(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_00399eb4  @ 0x399eb4
undefined4 FUN_00399eb4(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943540 <= param_2)) {
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

// ---- FUN_0039a384  @ 0x39a384
undefined4 FUN_0039a384(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e0ce4,0x54);
  if ((param_1 < 0) || (DAT_00943540 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0039c078  @ 0x39c078
void FUN_0039c078(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950f10,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950f18,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950f20,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950f30);
    FUN_007985bc(&DAT_00950f30,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950f34,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950f34,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_0039c184  @ 0x39c184
uint FUN_0039c184(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_0039c1e0  @ 0x39c1e0
undefined4 FUN_0039c1e0(undefined1 param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4)

{
  undefined1 local_8 [2];
  undefined1 uStack_6;
  
  _local_8 = CONCAT12(param_3,CONCAT11(param_2,param_1));
  return CONCAT13(param_4,_local_8);
}

// ---- FUN_0039c240  @ 0x39c240
undefined4 FUN_0039c240(void)

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

// ---- FUN_0039c274  @ 0x39c274
undefined4 FUN_0039c274(void)

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

// ---- FUN_0039c2a8  @ 0x39c2a8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039c2c0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_0039c2a8(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0039c240(param_1,param_2,param_3);
  uVar1 = FUN_0039c274(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_0039c2e4  @ 0x39c2e4
undefined4 * FUN_0039c2e4(undefined4 *param_1)

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

// ---- FUN_0039c30c  @ 0x39c30c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039c356 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039c30c(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0039c2e4(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0039c364  @ 0x39c364
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039c3a2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039c364(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_0039c2e4(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_0039c3b0  @ 0x39c3b0
undefined4 FUN_0039c3b0(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_0039c3f8  @ 0x39c3f8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039c43a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039c3f8(undefined4 param_1)

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
  FUN_0039c364(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_0039c448  @ 0x39c448
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039c482 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_0039c448(undefined4 *param_1)

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
  FUN_0039c3b0(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_0039c3f8(uVar1,uVar2,uVar3,local_18);
    FUN_0039c364(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_0039c4ec  @ 0x39c4ec
CCRect * FUN_0039c4ec(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_0039c998  @ 0x39c998
uint FUN_0039c998(float param_1,float param_2,float param_3)

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
    local_2c = FUN_0039c184((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_0039c184((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0039cb9c  @ 0x39cb9c
vector<std::string,std::allocator<std::string>> *
FUN_0039cb9c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0039cc5c  @ 0x39cc5c
undefined4 FUN_0039cc5c(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943550 <= param_2)) {
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

// ---- FUN_0039d12c  @ 0x39d12c
undefined4 FUN_0039d12c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e0f54,0x54);
  if ((param_1 < 0) || (DAT_00943550 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0039d244  @ 0x39d244
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039d2ac */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_0039d244(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_0039c364((int)*(undefined8 *)(local_74 + 0x38),uVar3,(int)*(undefined8 *)(local_74 + 0x40),
               uVar4,param_7,local_60);
  FUN_0039c364((int)*(undefined8 *)(local_74 + 0x48),uVar3,(int)*(undefined8 *)(local_74 + 0x50),
               uVar4,(int)*(undefined8 *)(local_74 + 0x10),local_50);
  FUN_0039c30c(local_8,uVar3,param_5,uVar4,local_50[0],in_s5,local_48,local_40);
  FUN_0039c364(local_40[0],uVar3,local_38,uVar4,SUB84(param_9,0),local_30);
  FUN_0039c30c(local_60[0],uVar3,local_58,uVar4,local_30[0],in_s5,local_28,local_20);
  iVar1 = local_74;
  FUN_0039c448(local_20[0],uVar3,local_18,uVar4,(int)*(undefined8 *)(local_74 + 0x80),&local_88);
  *(undefined4 *)(iVar1 + 0x38) = local_88;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_84;
  *(undefined4 *)(iVar1 + 0x40) = uStack_80;
  *(undefined4 *)(iVar1 + 0x44) = uStack_7c;
  local_68 = *(undefined4 *)(local_74 + 0x88);
  uStack_64 = *(undefined4 *)(local_74 + 0x8c);
  uVar2 = SUB84(*(double *)(local_74 + 0x60) * (double)CONCAT44(param_8,param_7) +
                *(double *)(local_74 + 0x68) * *(double *)(local_74 + 0x20) * param_9,0);
  FUN_0039c2a8(uVar2,uVar3,SUB84(-*(double *)(local_74 + 0x88),0),uVar4,local_68);
  *(ulonglong *)(local_74 + 0x60) = CONCAT44(uVar3,uVar2);
  return;
}

// ---- FUN_0039de20  @ 0x39de20
void FUN_0039de20(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950f38,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950f40,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950f48,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950f58);
    FUN_007985bc(&DAT_00950f58,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950f5c,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950f5c,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_0039df2c  @ 0x39df2c
uint FUN_0039df2c(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_0039df88  @ 0x39df88
undefined4 FUN_0039df88(void)

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

// ---- FUN_0039dfbc  @ 0x39dfbc
undefined4 FUN_0039dfbc(void)

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

// ---- FUN_0039dff0  @ 0x39dff0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039e008 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4
FUN_0039dff0(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  undefined4 uVar1;
  
  uVar1 = FUN_0039df88(param_1,param_2,param_3);
  uVar1 = FUN_0039dfbc(uVar1,param_2,param_5);
  return uVar1;
}

// ---- FUN_0039e02c  @ 0x39e02c
undefined4 * FUN_0039e02c(undefined4 *param_1)

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

// ---- FUN_0039e054  @ 0x39e054
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039e09e */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039e054(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0039e02c(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0039e0ac  @ 0x39e0ac
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039e0ea */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039e0ac(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  
  FUN_0039e02c(SUB84(in_d0 * in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 * in_d2,0),param_1
              );
  return param_1;
}

// ---- FUN_0039e0f8  @ 0x39e0f8
undefined4 FUN_0039e0f8(void)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  return SUB84(in_d0 * in_d2 + in_d1 * in_d3,0);
}

// ---- FUN_0039e140  @ 0x39e140
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039e182 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039e140(undefined4 param_1)

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
  FUN_0039e0ac(local_20,uVar1,local_18,uVar2,SUB84(1.0 / dVar3,0),param_1);
  return param_1;
}

// ---- FUN_0039e190  @ 0x39e190
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039e1ca */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 * FUN_0039e190(undefined4 *param_1)

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
  FUN_0039e0f8(uVar1,uVar2,uVar3,uVar4,uVar1,(int)((ulonglong)in_d2 >> 0x20),uVar3);
  if (in_d0 <= in_d2 * in_d2) {
    *param_1 = uVar1;
    param_1[1] = uVar2;
    param_1[2] = uVar3;
    param_1[3] = uVar4;
  }
  else {
    FUN_0039e140(uVar1,uVar2,uVar3,local_18);
    FUN_0039e0ac(local_18[0],uVar2,local_10,uVar4,SUB84(in_d2,0),param_1);
  }
  return param_1;
}

// ---- FUN_0039e234  @ 0x39e234
void FUN_0039e234(int param_1)

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

// ---- FUN_0039e260  @ 0x39e260
CCRect * FUN_0039e260(float param_1,float param_2,float param_3,float param_4,CCRect *param_5)

{
  cocos2d::CCRect::CCRect(param_5,param_1,param_2,param_3,param_4);
  return param_5;
}

// ---- FUN_0039e2c0  @ 0x39e2c0
float FUN_0039e2c0(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_0039e380  @ 0x39e380
float FUN_0039e380(undefined4 param_1,undefined4 param_2)

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

// ---- FUN_0039e708  @ 0x39e708
uint FUN_0039e708(float param_1,float param_2,float param_3)

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
    local_2c = FUN_0039df2c((uint)(0.0 < local_28) * (int)local_28 & 0xff,
                            (uint)(0.0 < local_24) * (int)local_24 & 0xff,
                            (uint)(0.0 < local_20) * (int)local_20 & 0xff);
  }
  else {
    local_2c = FUN_0039df2c((uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff,
                            (uint)(0.0 < param_3) * (int)param_3 & 0xff);
  }
  return (uint)local_2c;
}

// ---- FUN_0039e90c  @ 0x39e90c
vector<std::string,std::allocator<std::string>> *
FUN_0039e90c(vector<std::string,std::allocator<std::string>> *param_1,undefined4 param_2,
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

// ---- FUN_0039e9cc  @ 0x39e9cc
undefined4 FUN_0039e9cc(undefined4 param_1,int param_2)

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
  if ((param_2 < 0) || (DAT_00943558 <= param_2)) {
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

// ---- FUN_0039ee9c  @ 0x39ee9c
undefined4 FUN_0039ee9c(int param_1)

{
  undefined4 uVar1;
  undefined4 auStack_5c [22];
  
  memcpy(auStack_5c,&DAT_007e11e4,0x54);
  if ((param_1 < 0) || (DAT_00943558 <= param_1)) {
    uVar1 = 0xffffffff;
  }
  else {
    uVar1 = auStack_5c[param_1];
  }
  return uVar1;
}

// ---- FUN_0039efb4  @ 0x39efb4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039f01c */
/* WARNING: Restarted to delay deadcode elimination for space: register */

void FUN_0039efb4(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
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
  FUN_0039e0ac((int)*(undefined8 *)(local_74 + 0x38),uVar3,(int)*(undefined8 *)(local_74 + 0x40),
               uVar4,param_7,local_60);
  FUN_0039e0ac((int)*(undefined8 *)(local_74 + 0x48),uVar3,(int)*(undefined8 *)(local_74 + 0x50),
               uVar4,(int)*(undefined8 *)(local_74 + 0x10),local_50);
  FUN_0039e054(local_8,uVar3,param_5,uVar4,local_50[0],in_s5,local_48,local_40);
  FUN_0039e0ac(local_40[0],uVar3,local_38,uVar4,SUB84(param_9,0),local_30);
  FUN_0039e054(local_60[0],uVar3,local_58,uVar4,local_30[0],in_s5,local_28,local_20);
  iVar1 = local_74;
  FUN_0039e190(local_20[0],uVar3,local_18,uVar4,(int)*(undefined8 *)(local_74 + 0x80),&local_88);
  *(undefined4 *)(iVar1 + 0x38) = local_88;
  *(undefined4 *)(iVar1 + 0x3c) = uStack_84;
  *(undefined4 *)(iVar1 + 0x40) = uStack_80;
  *(undefined4 *)(iVar1 + 0x44) = uStack_7c;
  local_68 = *(undefined4 *)(local_74 + 0x88);
  uStack_64 = *(undefined4 *)(local_74 + 0x8c);
  uVar2 = SUB84(*(double *)(local_74 + 0x60) * (double)CONCAT44(param_8,param_7) +
                *(double *)(local_74 + 0x68) * *(double *)(local_74 + 0x20) * param_9,0);
  FUN_0039dff0(uVar2,uVar3,SUB84(-*(double *)(local_74 + 0x88),0),uVar4,local_68);
  *(ulonglong *)(local_74 + 0x60) = CONCAT44(uVar3,uVar2);
  return;
}

// ---- FUN_0039fde8  @ 0x39fde8
void FUN_0039fde8(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  undefined1 auStack_c [4];
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00950f60,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00950f68,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00950f70,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00950f80);
    FUN_007985bc(&DAT_00950f80,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
    FUN_0079a3f4(auStack_c);
    FUN_007c6a60(&DAT_00950f84,"font02_new.png",auStack_c);
    FUN_0079a3fc(auStack_c);
    FUN_007985bc(&DAT_00950f84,0x7c5915,&DAT_00943000);
  }
  return;
}

// ---- FUN_0039fef4  @ 0x39fef4
uint FUN_0039fef4(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  undefined2 local_8;
  undefined1 local_4 [4];
  
  local_8 = CONCAT11(param_2,param_1);
  local_4._0_3_ = CONCAT12(param_3,local_8);
  return CONCAT13(0,local_4._0_3_);
}

// ---- FUN_0039ff50  @ 0x39ff50
undefined4 * FUN_0039ff50(undefined4 *param_1)

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

// ---- FUN_0039ff78  @ 0x39ff78
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039ffc2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039ff78(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0039ff50(SUB84(in_d0 + in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 + in_d3,0),param_1
              );
  return param_1;
}

// ---- FUN_0039ffd0  @ 0x39ffd0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a001a */
/* WARNING: Restarted to delay deadcode elimination for space: register */

undefined4 FUN_0039ffd0(undefined4 param_1)

{
  double in_d0;
  double in_d1;
  double in_d2;
  double in_d3;
  
  FUN_0039ff50(SUB84(in_d0 - in_d2,0),(int)((ulonglong)in_d0 >> 0x20),SUB84(in_d1 - in_d3,0),param_1
              );
  return param_1;
}
