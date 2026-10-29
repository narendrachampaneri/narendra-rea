// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 33 functions

// ---- FUN_005a2270  @ 0x5a2270
void FUN_005a2270(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096470c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964714,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096471c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005a2ac4  @ 0x5a2ac4
void FUN_005a2ac4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964744,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0096474c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964754,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    cocos2d::CCAffineTransformMakeIdentity();
  }
  return;
}

// ---- FUN_005a3624  @ 0x5a3624
void FUN_005a3624(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964764,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0096476c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964774,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005a7518  @ 0x5a7518
void FUN_005a7518(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964788,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964790,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964798,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005a7594  @ 0x5a7594
undefined4 FUN_005a7594(char *param_1)

{
  undefined4 extraout_r0;
  
  strtod(param_1,(char **)0x0);
  return extraout_r0;
}

// ---- FUN_005a75b0  @ 0x5a75b0
void FUN_005a75b0(undefined4 param_1,char *param_2,
                 vector<std::string,std::allocator<std::string>> *param_3)

{
  int iVar1;
  int iVar2;
  size_t sVar3;
  string asStack_14 [4];
  int local_10;
  int local_c;
  
  local_10 = 0;
  local_c = 0;
  while (local_10 != -1) {
    local_10 = FUN_007c5380(param_1,param_2,local_c);
    iVar1 = local_c;
    if (local_10 == -1) {
      iVar2 = FUN_007c505c(param_1);
      FUN_007c6728(asStack_14,param_1,iVar1,iVar2 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_3,asStack_14);
      FUN_007c5914(asStack_14);
    }
    else {
      FUN_007c6728(asStack_14,param_1,local_c,local_10 - local_c);
      std::vector<std::string,std::allocator<std::string>>::push_back(param_3,asStack_14);
      FUN_007c5914(asStack_14);
    }
    sVar3 = strlen(param_2);
    local_c = local_10 + sVar3;
  }
  return;
}

// ---- FUN_005a7664  @ 0x5a7664
undefined1 FUN_005a7664(int param_1,vector<std::string,std::allocator<std::string>> *param_2)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_25;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  int local_18;
  int local_14;
  int local_10;
  int local_c;
  
  local_25 = 0;
  if (param_1 == 0) {
    return 0;
  }
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_24,param_1,auStack_1c);
  FUN_0079a3fc(auStack_1c);
  iVar2 = FUN_007c505c(auStack_24);
  if (iVar2 == 0) goto LAB_005a77ee;
  local_18 = FUN_007c53a0(auStack_24,0x7b,0);
  local_14 = FUN_007c53a0(auStack_24,0x7d,0);
  if (((local_18 == -1) || (local_14 == -1)) || (local_14 < local_18)) goto LAB_005a77ee;
  FUN_007c6728(auStack_20,auStack_24,local_18 + 1,(local_14 - local_18) + -1);
  iVar2 = FUN_007c505c(auStack_20);
  if (iVar2 != 0) {
    local_10 = FUN_007c53a0(auStack_20,0x7b,0);
    local_c = FUN_007c53a0(auStack_20,0x7d,0);
    if ((local_10 == -1) && (local_c == -1)) {
      FUN_007c64e8(auStack_1c,auStack_20);
      FUN_005a75b0(auStack_1c,&DAT_00832a84,param_2);
      FUN_007c5914(auStack_1c);
      iVar2 = std::vector<std::string,std::allocator<std::string>>::size(param_2);
      if (iVar2 == 2) {
        uVar3 = std::vector<std::string,std::allocator<std::string>>::operator[](param_2,0);
        iVar2 = FUN_007c505c(uVar3);
        if (iVar2 == 0) goto LAB_005a77be;
        uVar3 = std::vector<std::string,std::allocator<std::string>>::operator[](param_2,1);
        iVar2 = FUN_007c505c(uVar3);
        if (iVar2 == 0) goto LAB_005a77be;
        bVar1 = false;
      }
      else {
LAB_005a77be:
        bVar1 = true;
      }
      if (bVar1) {
        std::vector<std::string,std::allocator<std::string>>::clear(param_2);
      }
      else {
        local_25 = 1;
      }
    }
  }
  FUN_007c5914(auStack_20);
LAB_005a77ee:
  FUN_007c5914(auStack_24);
  return local_25;
}

// ---- FUN_005a7cbc  @ 0x5a7cbc
void FUN_005a7cbc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009647a8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009647b0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009647b8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005a7f7c  @ 0x5a7f7c
void FUN_005a7f7c(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009647c8,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009647d0,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009647d8,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005a94d8  @ 0x5a94d8
undefined4 FUN_005a94d8(char *param_1)

{
  undefined4 extraout_r0;
  
  strtod(param_1,(char **)0x0);
  return extraout_r0;
}

// ---- FUN_005a9c04  @ 0x5a9c04
void FUN_005a9c04(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009647ec,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009647f4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009647fc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005a9c94  @ 0x5a9c94
long FUN_005a9c94(void)

{
  long lVar1;
  
  lVar1 = lrand48();
  return lVar1;
}

// ---- FUN_005aa628  @ 0x5aa628
void FUN_005aa628(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096480c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964814,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096481c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ab1fc  @ 0x5ab1fc
void FUN_005ab1fc(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_0096482c,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_00964834,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_0096483c,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_0096484c);
    FUN_007985bc(&DAT_0096484c,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_005ab374  @ 0x5ab374
uint FUN_005ab374(byte *param_1)

{
  size_t sVar1;
  uint uVar2;
  byte *local_1c;
  uint local_14;
  
  sVar1 = strlen((char *)param_1);
  local_14 = 0;
  for (local_1c = param_1; local_1c < param_1 + sVar1; local_1c = local_1c + 1) {
    uVar2 = toupper((uint)*local_1c);
    local_14 = uVar2 & 0xff ^ local_14 * 0x1000193;
  }
  return local_14;
}

// ---- FUN_005ab554  @ 0x5ab554
CCPoint * FUN_005ab554(CCPoint *param_1,CCPoint *param_2)

{
  cocos2d::CCPoint::operator+(param_1,param_2);
  return param_1;
}

// ---- FUN_005ac0a8  @ 0x5ac0a8
void FUN_005ac0a8(undefined4 param_1)

{
  undefined1 auStack_88 [64];
  undefined1 auStack_48 [68];
  
  kmGLGetMatrix(0x1701,auStack_88);
  kmGLGetMatrix(0x1700,auStack_48);
  kmMat4Multiply(param_1,auStack_88,auStack_48);
  return;
}

// ---- FUN_005ad0ec  @ 0x5ad0ec
void FUN_005ad0ec(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  undefined4 uVar2;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964854,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0096485c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    uVar2 = 0;
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964864,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
    FUN_00798644(&DAT_00964874);
    FUN_007985bc(&DAT_00964874,0x798b71,&DAT_00943000,&DAT_00943000,uVar2);
  }
  return;
}

// ---- FUN_005ad19c  @ 0x5ad19c
void FUN_005ad19c(void)

{
  CCShaderCache *this;
  undefined4 uVar1;
  
  if (DAT_009648a4 != '\x01') {
    this = (CCShaderCache *)cocos2d::CCShaderCache::sharedShaderCache();
    DAT_009648a8 = (CCGLProgram *)
                   cocos2d::CCShaderCache::programForKey(this,"ShaderPosition_uColor");
    cocos2d::CCObject::retain((CCObject *)DAT_009648a8);
    uVar1 = cocos2d::CCGLProgram::getProgram(DAT_009648a8);
    DAT_0094686c = glGetUniformLocation(uVar1,"u_color");
    uVar1 = cocos2d::CCGLProgram::getProgram(DAT_009648a8);
    DAT_00946880 = glGetUniformLocation(uVar1,"u_pointSize");
    DAT_009648a4 = '\x01';
  }
  return;
}

// ---- FUN_005ae1b0  @ 0x5ae1b0
void FUN_005ae1b0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_00964884,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_0096488c,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_00964894,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005ae22c  @ 0x5ae22c
undefined4 FUN_005ae22c(float param_1,float param_2,float param_3,float param_4)

{
  undefined1 local_8 [2];
  undefined1 uStack_6;
  
  _local_8 = CONCAT12((0.0 < param_3 * 255.0) * (char)(int)(param_3 * 255.0),
                      CONCAT11((0.0 < param_2 * 255.0) * (char)(int)(param_2 * 255.0),
                               (0.0 < param_1 * 255.0) * (char)(int)(param_1 * 255.0)));
  return CONCAT13((0.0 < param_4 * 255.0) * (char)(int)(param_4 * 255.0),_local_8);
}

// ---- FUN_005ae2e8  @ 0x5ae2e8
undefined4 * FUN_005ae2e8(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  *param_3 = param_1;
  param_3[1] = param_2;
  return param_3;
}

// ---- FUN_005ae308  @ 0x5ae308
undefined4 FUN_005ae308(undefined4 param_1,float *param_2,float *param_3)

{
  FUN_005ae2e8(*param_2 + *param_3,param_2[1] + param_3[1],param_1);
  return param_1;
}

// ---- FUN_005ae34c  @ 0x5ae34c
undefined4 FUN_005ae34c(undefined4 param_1,float *param_2,float *param_3)

{
  FUN_005ae2e8(*param_2 - *param_3,param_2[1] - param_3[1],param_1);
  return param_1;
}

// ---- FUN_005ae390  @ 0x5ae390
undefined4 FUN_005ae390(float param_1,undefined4 param_2,float *param_3)

{
  FUN_005ae2e8(*param_3 * param_1,param_3[1] * param_1,param_2);
  return param_2;
}

// ---- FUN_005ae3d0  @ 0x5ae3d0
undefined4 FUN_005ae3d0(undefined4 param_1,undefined4 *param_2)

{
  FUN_005ae2e8(-(float)param_2[1],*param_2,param_1);
  return param_1;
}

// ---- FUN_005ae400  @ 0x5ae400
undefined4 FUN_005ae400(undefined4 param_1,float *param_2)

{
  FUN_005ae2e8(-*param_2,-param_2[1],param_1);
  return param_1;
}

// ---- FUN_005ae434  @ 0x5ae434
float FUN_005ae434(float *param_1,float *param_2)

{
  return *param_1 * *param_2 + param_1[1] * param_2[1];
}

// ---- FUN_005ae468  @ 0x5ae468
undefined4 FUN_005ae468(float param_1,float param_2,undefined4 param_3)

{
  undefined4 local_18;
  undefined4 local_14;
  CCPoint aCStack_10 [12];
  
  cocos2d::CCPoint::CCPoint(aCStack_10,param_1,param_2);
  cocos2d::ccpNormalize((CCPoint *)&local_18);
  FUN_005ae2e8(local_18,local_14,param_3);
  return param_3;
}

// ---- FUN_005ae4b0  @ 0x5ae4b0
undefined4 FUN_005ae4b0(undefined4 param_1,undefined4 *param_2)

{
  FUN_005ae2e8(*param_2,param_2[1],param_1);
  return param_1;
}

// ---- FUN_005ae4dc  @ 0x5ae4dc
undefined4 * FUN_005ae4dc(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  uVar1 = param_2[1];
  *param_1 = *param_2;
  param_1[1] = uVar1;
  return param_1;
}

// ---- FUN_005afdc4  @ 0x5afdc4
void FUN_005afdc4(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009648ac,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009648b4,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009648bc,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}

// ---- FUN_005afff0  @ 0x5afff0
void FUN_005afff0(float param_1,float param_2,int param_3,int param_4)

{
  float extraout_s0;
  undefined8 uVar1;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  
  if ((param_3 == 1) && (param_4 == 0xffff)) {
    uVar1 = cocos2d::CCPoint::CCPoint((CCPoint *)&DAT_009648d4,param_1,param_2);
    cocos2d::CCSize::CCSize((CCSize *)&DAT_009648dc,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
    cocos2d::CCRect::CCRect((CCRect *)&DAT_009648e4,extraout_s0,extraout_s1,extraout_s2,extraout_s3)
    ;
  }
  return;
}
