// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 61 functions

// ---- SoldierHostController::SoldierHostController  @ 0x3f5f50
/* SoldierHostController::SoldierHostController() */

SoldierHostController * __thiscall
SoldierHostController::SoldierHostController(SoldierHostController *this)

{
  SoldierController::SoldierController((SoldierController *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091b588;
  *(undefined **)(this + 0xf8) = &DAT_0091b8bc;
  return this;
}

// ---- SoldierHostController::init  @ 0x3f5f90
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f6076 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::init() */

bool SoldierHostController::init(void)

{
  SoldierController *pSVar1;
  SoldierController *in_r0;
  CCPoint *this;
  bool bVar2;
  uint in_fpscr;
  float fVar3;
  undefined4 in_s1;
  float extraout_s1;
  undefined4 uVar4;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  SoldierController *local_1c;
  char local_11;
  CCPoint aCStack_10 [8];
  
  local_1c = in_r0;
  local_11 = SoldierController::init(in_r0);
  pSVar1 = local_1c;
  bVar2 = local_11 == '\x01';
  if (bVar2) {
    *(undefined4 *)(local_1c + 0x1e4) = 0;
    *(undefined4 *)(local_1c + 0x184) = 0;
    *(undefined4 *)(local_1c + 0x18c) = 0;
    *(undefined4 *)(local_1c + 400) = 0;
    *(undefined4 *)(local_1c + 0x188) = 0;
    *(undefined4 *)(local_1c + 0x194) = 0;
    *(undefined4 *)(local_1c + 0x108) = 0x3f400000;
    local_1c[0x104] = (SoldierController)0x0;
    local_1c[0x11c] = (SoldierController)0x0;
    *(undefined4 *)(local_1c + 0x180) = 100;
    uVar4 = VectorSignedToFloat(*(undefined4 *)(local_1c + 0x180),(byte)(in_fpscr >> 0x16) & 3);
    *(undefined4 *)(local_1c + 0x198) = uVar4;
    local_1c[0xe6] = (SoldierController)0x0;
    *(undefined4 *)(local_1c + 0x1a4) = 0;
    *(undefined4 *)(local_1c + 0x1a8) = 0;
    *(undefined4 *)(local_1c + 0x19c) = 0x43a28000;
    *(undefined4 *)(local_1c + 0x1a0) = 0x433e0000;
    *(undefined4 *)(local_1c + 0x120) = 0x3f000000;
    fVar3 = (float)FUN_003f4bb8(0,in_s1,0,&local_30);
    *(undefined4 *)(pSVar1 + 0x128) = local_30;
    *(undefined4 *)(pSVar1 + 300) = uStack_2c;
    *(undefined4 *)(pSVar1 + 0x130) = uStack_28;
    *(undefined4 *)(pSVar1 + 0x134) = uStack_24;
    *(undefined4 *)(local_1c + 0x110) = 0;
    this = (CCPoint *)(local_1c + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_10,fVar3,extraout_s1);
    cocos2d::CCPoint::operator=(this,aCStack_10);
    *(undefined4 *)(local_1c + 0x10c) = 0;
    *(undefined4 *)(local_1c + 0x1ac) = 0;
    *(undefined4 *)(local_1c + 0x1b8) = 4;
    *(undefined4 *)(local_1c + 0x1c0) = 0x3f800000;
    *(undefined4 *)(local_1c + 0x1c4) = 0x3f800000;
    *(undefined4 *)(local_1c + 0x1c8) = 0x3f800000;
    *(undefined4 *)(local_1c + 0x1cc) = 0x3f800000;
    *(undefined4 *)(local_1c + 0x1d0) = 0x3f800000;
    local_1c[0x1f0] = (SoldierController)0x0;
    *(undefined4 *)(local_1c + 0x148) = 0;
    *(undefined4 *)(local_1c + 0x14c) = 0;
    *(undefined4 *)(local_1c + 0x154) = 0;
    *(undefined4 *)(local_1c + 0x150) = 0;
    *(undefined4 *)(local_1c + 0x1b4) = 0;
    *(undefined4 *)(local_1c + 0x1b0) = 0x3dcccccd;
    local_1c[0x166] = (SoldierController)0x0;
    *(undefined4 *)(local_1c + 0x178) = 0;
    *(undefined4 *)(local_1c + 0x1bc) = 0;
    *(undefined4 *)(local_1c + 0x1d4) = 0;
    *(undefined4 *)(local_1c + 0x1d8) = 0;
    *(undefined4 *)(local_1c + 0x1dc) = 0;
    *(undefined4 *)(local_1c + 0x1e0) = 0;
    *(undefined4 *)(local_1c + 500) = 3;
    *(undefined4 *)(local_1c + 0x1f8) = 0xffffffff;
    uVar4 = cocos2d::CCArray::create();
    *(undefined4 *)(local_1c + 0x1e8) = uVar4;
    cocos2d::CCObject::retain(*(CCObject **)(local_1c + 0x1e8));
    uVar4 = cocos2d::CCArray::create();
    *(undefined4 *)(local_1c + 0x1ec) = uVar4;
    cocos2d::CCObject::retain(*(CCObject **)(local_1c + 0x1ec));
    (**(code **)(*(int *)local_1c + 0x1cc))(local_1c);
    (**(code **)(*(int *)local_1c + 0x1d0))(local_1c);
    (**(code **)(*(int *)local_1c + 0x224))(local_1c);
  }
  return bVar2;
}

// ---- SoldierHostController::~SoldierHostController  @ 0x3f6208
/* WARNING: Removing unreachable block (ram,0x003f6250) */
/* SoldierHostController::~SoldierHostController() */

SoldierHostController * __thiscall
SoldierHostController::~SoldierHostController(SoldierHostController *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091b588;
  *(undefined **)(this + 0xf8) = &DAT_0091b8bc;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1e8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  SoldierController::~SoldierController((SoldierController *)this);
  return this;
}

// ---- SoldierHostController::~SoldierHostController  @ 0x3f6268
/* SoldierHostController::~SoldierHostController() */

SoldierHostController * __thiscall
SoldierHostController::~SoldierHostController(SoldierHostController *this)

{
  ~SoldierHostController(this);
  operator_delete(this);
  return this;
}

// ---- SoldierHostController::initBody  @ 0x3f6284
/* SoldierHostController::initBody() */

void __thiscall SoldierHostController::initBody(SoldierHostController *this)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = cpBodyNew(SUB84((double)*(float *)(this + 0x1b0),0),
                    (int)((ulonglong)(double)*(float *)(this + 0x1b0) >> 0x20),
                    SUB84((double)(*(float *)(this + 0x1b0) * 200.0),0),
                    (int)((ulonglong)(double)(*(float *)(this + 0x1b0) * 200.0) >> 0x20));
  *(undefined4 *)(this + 0x138) = uVar1;
  **(undefined4 **)(this + 0x138) = &LAB_003f5c88_1;
  iVar2 = *(int *)(this + 0x138);
  *(undefined4 *)(iVar2 + 0x88) = 0;
  *(undefined4 *)(iVar2 + 0x8c) = 0x402c0000;
  *(SoldierHostController **)(*(int *)(this + 0x138) + 0x90) = this;
  return;
}

// ---- SoldierHostController::initShape  @ 0x3f62f8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f636a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::initShape() */

void SoldierHostController::initShape(void)

{
  float fVar1;
  int *in_r0;
  int iVar2;
  undefined4 in_s1;
  float fVar3;
  float fVar4;
  float fVar5;
  double dVar6;
  undefined1 local_68 [4];
  undefined4 uStack_64;
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  fVar1 = playerScale;
  fVar3 = playerScale * 35.0;
  fVar4 = playerScale * 25.0;
  fVar5 = playerScale * 30.0;
  FUN_003f4bb8(SUB84((double)-fVar5,0),in_s1,SUB84((double)(-fVar4 - 5.0),0),auStack_58);
  FUN_003f4bb8(SUB84((double)-fVar5,0),in_s1,SUB84((double)(fVar4 - 5.0),0),auStack_48);
  FUN_003f4bb8(SUB84((double)fVar5,0),in_s1,SUB84((double)(fVar4 - 5.0),0),auStack_38);
  FUN_003f4bb8(SUB84((double)fVar5,0),in_s1,SUB84((double)(-fVar4 - 5.0),0),auStack_28);
  iVar2 = cpPolyShapeNew(in_r0[0x4e],4,auStack_58);
  in_r0[0x4f] = iVar2;
  iVar2 = in_r0[0x4f];
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fe99999;
  iVar2 = in_r0[0x4f];
  *(undefined4 *)(iVar2 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fb99999;
  *(int **)(in_r0[0x4f] + 0x50) = in_r0;
  iVar2 = in_r0[0x4e];
  dVar6 = (double)fVar3 * 0.75;
  FUN_003f4bb8(0,in_s1,SUB84((double)(fVar1 * 35.0),0),local_68);
  iVar2 = cpCircleShapeNew(iVar2,uStack_64,SUB84(dVar6,0),(int)((ulonglong)dVar6 >> 0x20));
  in_r0[0x50] = iVar2;
  iVar2 = in_r0[0x50];
  *(undefined4 *)(iVar2 + 0x30) = 0;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fe00000;
  iVar2 = in_r0[0x50];
  *(undefined4 *)(iVar2 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fb99999;
  *(int **)(in_r0[0x50] + 0x50) = in_r0;
  (**(code **)(*in_r0 + 0x2e4))(in_r0,0x15);
  return;
}

// ---- SoldierHostController::updateStep  @ 0x3f6500
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f67b2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::updateStep(float, cpVect, cpVect, float) */

void SoldierHostController::updateStep
               (int *param_1,float param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
               undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
               undefined4 param_10,float param_11)

{
  Sound *this;
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  float fVar4;
  undefined4 uVar5;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  bool bVar6;
  SoldierView *pSVar7;
  code *pcVar8;
  uint in_fpscr;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  byte bVar12;
  double in_d0;
  double dVar13;
  float fVar14;
  float extraout_s2;
  float extraout_s2_00;
  float extraout_s2_01;
  float extraout_s2_02;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar16;
  float fVar17;
  double dVar15;
  undefined8 uVar18;
  int local_1d0;
  int iStack_1cc;
  int iStack_1c8;
  int iStack_1c4;
  float local_1c0;
  int *local_1bc;
  float local_1b4;
  float local_1b0;
  float local_1ac;
  float local_1a8;
  float local_1a4;
  double local_1a0;
  undefined8 local_198;
  undefined8 local_190;
  double local_188;
  double local_180;
  double local_178;
  CCPoint aCStack_170 [8];
  undefined4 local_168 [2];
  undefined4 local_160;
  undefined4 local_158;
  undefined4 uStack_154;
  undefined4 local_150;
  undefined4 uStack_14c;
  int local_148;
  int iStack_144;
  int local_140;
  int iStack_13c;
  int local_138;
  int iStack_134;
  int local_130;
  int iStack_12c;
  int local_128;
  int iStack_124;
  int local_120;
  int iStack_11c;
  undefined4 local_118 [2];
  undefined4 local_110;
  undefined4 local_108;
  undefined4 uStack_104;
  undefined4 uStack_fc;
  undefined4 local_f8 [2];
  undefined4 local_f0;
  undefined4 local_e8 [2];
  undefined4 local_e0;
  undefined4 local_d8 [2];
  undefined4 local_d0;
  undefined4 local_c8 [2];
  undefined4 local_c0;
  undefined4 local_b8 [2];
  undefined4 local_b0;
  undefined4 local_a8 [2];
  undefined4 local_a0;
  undefined4 local_98 [2];
  undefined4 local_90;
  undefined4 local_88 [2];
  undefined4 local_80;
  undefined4 local_78 [2];
  undefined4 local_70;
  undefined4 local_68 [2];
  undefined4 local_60;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  
  param_1[0x61] = (int)((float)param_1[0x61] + param_2);
  param_1[0x42] = (int)((float)param_1[0x42] + param_2);
  param_1[0x6b] = (int)((float)param_1[0x6b] + param_2);
  param_1[0x65] = (int)((float)param_1[0x65] + param_2);
  param_1[0x62] = (int)((float)param_1[0x62] + param_2);
  param_1[0x6f] = (int)((float)param_1[0x6f] + param_2);
  local_1c0 = param_2;
  local_1bc = param_1;
  if (*(char *)((int)param_1 + 0x166) == '\0') {
    fVar16 = (float)param_1[0x79];
    in_fpscr = in_fpscr & 0xfffffff | (uint)(fVar16 < 125.0) << 0x1f |
               (uint)(fVar16 == 125.0) << 0x1e | (uint)(125.0 <= fVar16) << 0x1d;
    if ((int)in_fpscr < 0) {
      param_1[0x79] = (int)((float)param_1[0x79] + 0.6);
    }
  }
  else {
    param_1[0x5e] = (int)((float)param_1[0x5e] + param_2);
    (**(code **)(*param_1 + 0x2e0))(param_1);
  }
  fVar16 = (float)local_1bc[0x5e];
  uVar10 = in_fpscr & 0xfffffff | (uint)(fVar16 < 0.35) << 0x1f | (uint)(fVar16 == 0.35) << 0x1e;
  uVar9 = uVar10 | (uint)NAN(fVar16) << 0x1c;
  bVar12 = (byte)(uVar10 >> 0x18);
  if (!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) {
    pcVar8 = *(code **)(*local_1bc + 0x2dc);
    FUN_0079a3f4(&local_48);
    FUN_007c6a60(&local_38,&DAT_007e83d0,&local_48);
    (*pcVar8)(local_1bc,&local_38,0,0);
    FUN_007c5914(&local_38);
    FUN_0079a3fc(&local_48);
  }
  iVar3 = (**(code **)(*local_1bc + 0x2c4))(local_1bc);
  if (((iVar3 == 0) || ((char)local_1bc[0x41] == '\0')) || ((char)local_1bc[0x47] == '\0')) {
    fVar16 = 0.0;
  }
  else {
    fVar16 = (float)local_1bc[0x46] * 0.5 + 0.5;
    uVar10 = uVar9 & 0xfffffff | (uint)(fVar16 < 0.0) << 0x1f | (uint)(fVar16 == 0.0) << 0x1e;
    uVar9 = uVar10 | (uint)NAN(fVar16) << 0x1c;
    bVar12 = (byte)(uVar10 >> 0x18);
    if ((bool)(bVar12 >> 6 & 1) || bVar12 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) {
      fVar16 = 0.0;
    }
    else {
      fVar16 = (float)local_1bc[0x46] * 0.5 + 0.5;
    }
  }
  local_1bc[0x43] = (int)fVar16;
  (**(code **)(*local_1bc + 0x2f0))(local_1bc,local_1c0);
  fVar16 = (float)(**(code **)(*local_1bc + 0x9c))(local_1bc);
  local_1a0 = (double)(fVar16 * 0.017453292);
  dVar13 = cos(in_d0);
  sin(dVar13);
  fVar14 = (float)((ulonglong)dVar13 >> 0x20);
  FUN_003f4bb8(extraout_r0,fVar14,extraout_r0_00,local_168);
  local_158 = 0;
  uStack_154 = 0;
  local_150 = 0;
  uStack_14c = 0;
  fVar16 = SUB84((double)-(float)local_1bc[0x45],0);
  FUN_003f4bb8(fVar16,fVar14,SUB84((double)(float)local_1bc[0x46],0),local_118);
  FUN_003f4c90(local_118[0],fVar14,local_110,in_s3,
               SUB84((double)((float)local_1bc[0x43] + (float)local_1bc[0x43]),0),&local_108);
  FUN_003f5110(&local_148,uStack_fc,local_108,uStack_104);
  if ((char)local_1bc[0x41] == '\0') {
    FUN_003f4bb8(0,fVar14,0,&local_1d0);
    local_148 = local_1d0;
    iStack_144 = iStack_1cc;
    local_140 = iStack_1c8;
    iStack_13c = iStack_1c4;
    FUN_003f4c90(local_168[0],fVar14,local_160,in_s3,0x33333333,local_b8);
    FUN_003f4c90(local_148,fVar14,local_140,in_s3,0x9999999a,local_a8);
    FUN_003f4be0(local_b8[0],fVar14,local_b0,in_s3,local_a8[0],in_s5,local_a0,&local_1d0);
  }
  else {
    FUN_003f4bb8(0,fVar14,0,local_f8);
    FUN_003f4be0(local_148,fVar14,local_140,in_s3,local_f8[0],in_s5,local_f0,local_e8);
    FUN_003f4d6c(local_e8[0],fVar14,local_e0,&local_1d0);
    local_148 = local_1d0;
    iStack_144 = iStack_1cc;
    local_140 = iStack_1c8;
    iStack_13c = iStack_1c4;
    FUN_003f4c90(local_168[0],fVar14,local_160,in_s3,0x5c28f5c3,local_d8);
    FUN_003f4c90(local_148,fVar14,local_140,in_s3,0x1eb851ec,local_c8);
    FUN_003f4be0(local_d8[0],fVar14,local_d0,in_s3,local_c8[0],in_s5,local_c0,&local_1d0);
  }
  uVar18 = FUN_003f4f90(local_1d0,iStack_1cc,iStack_1c8,iStack_1c4);
  dVar13 = (double)((float)uVar18 * 0.017453292);
  local_198._0_4_ = SUB84(dVar13,0);
  local_198._4_4_ = (undefined4)((ulonglong)dVar13 >> 0x20);
  uVar5 = local_198._4_4_;
  uVar2 = (undefined4)local_198;
  local_198 = dVar13;
  cpBodySetAngle(local_1bc[0x4e],(int)((ulonglong)uVar18 >> 0x20),uVar2,uVar5);
  if (*(char *)((int)local_1bc + 0xe6) == '\x01') {
    local_1bc[100] = 0;
    fVar4 = extraout_s2;
  }
  else {
    local_1bc[100] = (int)((float)local_1bc[100] + local_1c0);
    fVar4 = (float)cocos2d::ccpLength((CCPoint *)(local_1bc + 0x45));
    uVar10 = uVar9 & 0xfffffff;
    uVar11 = uVar10 | (uint)(fVar4 < 0.75) << 0x1f | (uint)(fVar4 == 0.75) << 0x1e;
    uVar9 = uVar11 | (uint)NAN(fVar4) << 0x1c;
    bVar12 = (byte)(uVar11 >> 0x18);
    if ((bool)(bVar12 >> 6 & 1) || bVar12 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) {
LAB_003f6a5a:
      bVar6 = false;
    }
    else {
      fVar4 = (float)local_1bc[0x46];
      uVar11 = uVar10 | (uint)(fVar4 < 0.5) << 0x1f | (uint)(fVar4 == 0.5) << 0x1e;
      uVar9 = uVar11 | (uint)NAN(fVar4) << 0x1c;
      bVar12 = (byte)(uVar11 >> 0x18);
      if ((bool)(bVar12 >> 6 & 1) || bVar12 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) goto LAB_003f6a5a;
      fVar4 = (float)local_1bc[100];
      uVar10 = uVar10 | (uint)(fVar4 < 0.5) << 0x1f | (uint)(fVar4 == 0.5) << 0x1e;
      uVar9 = uVar10 | (uint)NAN(fVar4) << 0x1c;
      bVar12 = (byte)(uVar10 >> 0x18);
      if ((bool)(bVar12 >> 6 & 1) || bVar12 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) goto LAB_003f6a5a;
      bVar6 = true;
    }
    fVar4 = extraout_s2_00;
    if (bVar6) {
      *(undefined1 *)(local_1bc + 0x41) = 1;
    }
  }
  if (*(char *)((int)local_1bc + 0xe6) == '\0') {
LAB_003f6b04:
    bVar6 = false;
  }
  else {
    if ((char)local_1bc[0x47] == '\x01') {
      fVar17 = (float)local_1bc[0x46];
      uVar9 = uVar9 & 0xfffffff | (uint)(fVar17 < 0.0) << 0x1f | (uint)(fVar17 == 0.0) << 0x1e |
              (uint)(0.0 <= fVar17) << 0x1d;
      if ((int)uVar9 < 0) {
        iVar3 = local_1bc[0x4e];
        uVar5 = cpvlength(*(undefined4 *)(iVar3 + 0x38),*(undefined4 *)(iVar3 + 0x3c),
                          *(undefined4 *)(iVar3 + 0x40),*(undefined4 *)(iVar3 + 0x44));
        dVar13 = (double)CONCAT44(extraout_r1,uVar5);
        uVar9 = uVar9 & 0xfffffff | (uint)(dVar13 < 75.0) << 0x1f | (uint)(dVar13 == 75.0) << 0x1e |
                (uint)(75.0 <= dVar13) << 0x1d;
        fVar4 = extraout_s2_01;
        if ((int)uVar9 < 0) goto LAB_003f6aca;
      }
      goto LAB_003f6b04;
    }
LAB_003f6aca:
    bVar6 = true;
  }
  if (bVar6) {
    *(undefined1 *)(local_1bc + 0x41) = 0;
  }
  dVar13 = *(double *)(local_1bc[0x4e] + 0x30);
  uVar9 = uVar9 & 0xfffffff;
  uVar10 = uVar9 | (uint)(dVar13 < -1000.0) << 0x1f | (uint)(dVar13 == -1000.0) << 0x1e |
           (uint)(-1000.0 <= dVar13) << 0x1d;
  if ((int)uVar10 < 0) {
LAB_003f6b7c:
    local_1bc[0x51] = (int)((float)local_1bc[0x51] - 1.0);
  }
  else {
    dVar13 = *(double *)(local_1bc[0x4e] + 0x30);
    uVar11 = uVar9 | (uint)(dVar13 < 5000.0) << 0x1f | (uint)(dVar13 == 5000.0) << 0x1e;
    uVar10 = uVar11 | (uint)NAN(dVar13) << 0x1c;
    bVar12 = (byte)(uVar11 >> 0x18);
    if (!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar10 >> 0x1c) & 1)) goto LAB_003f6b7c;
    dVar13 = *(double *)(local_1bc[0x4e] + 0x28);
    uVar11 = uVar9 | (uint)(dVar13 < 6000.0) << 0x1f | (uint)(dVar13 == 6000.0) << 0x1e;
    uVar10 = uVar11 | (uint)NAN(dVar13) << 0x1c;
    bVar12 = (byte)(uVar11 >> 0x18);
    if (!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar10 >> 0x1c) & 1)) goto LAB_003f6b7c;
    dVar13 = *(double *)(local_1bc[0x4e] + 0x28);
    uVar10 = uVar9 | (uint)(dVar13 < -2000.0) << 0x1f | (uint)(dVar13 == -2000.0) << 0x1e |
             (uint)(-2000.0 <= dVar13) << 0x1d;
    if ((int)uVar10 < 0) goto LAB_003f6b7c;
  }
  uVar9 = uVar10 & 0xfffffff | (uint)((float)local_1bc[0x51] == 0.0) << 0x1e |
          (uint)(0.0 <= (float)local_1bc[0x51]) << 0x1d;
  bVar12 = (byte)(uVar9 >> 0x18);
  if (!(bool)(bVar12 >> 5 & 1) || (bool)(bVar12 >> 6)) {
    if (*(char *)((int)local_1bc + 0x159) != '\x01') {
      pcVar8 = *(code **)(*local_1bc + 0x2dc);
      FUN_0079a3f4(&local_48);
      FUN_007c6a60(&local_38,&DAT_007e83d0,&local_48);
      (*pcVar8)(local_1bc,&local_38,0,0);
      FUN_007c5914(&local_38);
      FUN_0079a3fc(&local_48);
      (**(code **)(*local_1bc + 700))(local_1bc);
      *(undefined1 *)((int)local_1bc + 0x159) = 1;
      (**(code **)(*local_1bc + 0x2f4))(local_1bc);
      fVar4 = extraout_s2_02;
    }
    *(undefined1 *)(local_1bc + 0x47) = 0;
    *(undefined1 *)(local_1bc + 0x41) = 0;
    local_1bc[0x43] = 0;
  }
  fVar17 = (float)local_1bc[0x62];
  uVar10 = uVar9 & 0xfffffff | (uint)(fVar17 < 1.0) << 0x1f | (uint)(fVar17 == 1.0) << 0x1e;
  uVar11 = uVar10 | (uint)NAN(fVar17) << 0x1c;
  bVar12 = (byte)(uVar10 >> 0x18);
  if ((!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar11 >> 0x1c) & 1)) &&
     (*(char *)((int)local_1bc + 0x159) != '\x01')) {
    local_1bc[0x62] = 0;
    fVar17 = (float)local_1bc[0x51] + (float)local_1bc[0x71];
    uVar11 = uVar9 & 0xfffffff | (uint)(fVar17 < 100.0) << 0x1f | (uint)(fVar17 == 100.0) << 0x1e |
             (uint)(100.0 <= fVar17) << 0x1d;
    if ((int)uVar11 < 0) {
      fVar17 = (float)local_1bc[0x51] + (float)local_1bc[0x71];
    }
    else {
      fVar17 = 100.0;
    }
    local_1bc[0x51] = (int)fVar17;
  }
  if (((char)local_1bc[0x41] != '\x01') ||
     (((char)local_1bc[0x41] != '\0' && ((char)local_1bc[0x47] != '\x01')))) {
    fVar17 = (float)local_1bc[0x61];
    uVar9 = uVar11 & 0xfffffff | (uint)(fVar17 < 0.0) << 0x1f | (uint)(fVar17 == 0.0) << 0x1e;
    uVar11 = uVar9 | (uint)NAN(fVar17) << 0x1c;
    bVar12 = (byte)(uVar9 >> 0x18);
    if (!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar11 >> 0x1c) & 1)) {
      local_1b4 = (float)cocos2d::clampf(fVar16,fVar14,fVar4);
      fVar4 = (float)VectorSignedToFloat(local_1bc[0x60],(byte)(uVar11 >> 0x16) & 3);
      fVar17 = (float)local_1bc[0x66] + ((float)local_1bc[0x72] * 7.0 + local_1b4) * local_1c0;
      uVar9 = uVar11 & 0xfffffff | (uint)(fVar4 < fVar17) << 0x1f | (uint)(fVar4 == fVar17) << 0x1e;
      uVar11 = uVar9 | (uint)(NAN(fVar4) || NAN(fVar17)) << 0x1c;
      bVar12 = (byte)(uVar9 >> 0x18);
      if ((bool)(bVar12 >> 6 & 1) || bVar12 >> 7 != ((byte)(uVar11 >> 0x1c) & 1)) {
        fVar4 = (float)VectorSignedToFloat(local_1bc[0x60],(byte)(uVar11 >> 0x16) & 3);
      }
      else {
        fVar4 = (float)local_1bc[0x66] + ((float)local_1bc[0x72] * 7.0 + local_1b4) * local_1c0;
      }
      local_1bc[0x66] = (int)fVar4;
    }
  }
  if (((char)local_1bc[0x41] == '\0') ||
     (iVar3 = (**(code **)(*local_1bc + 0x2c4))(local_1bc), iVar3 == 0)) {
    bVar6 = false;
  }
  else {
    bVar6 = true;
  }
  if (bVar6) {
    if ((char)local_1bc[0x47] != '\0') {
      local_1bc[0x61] = -0x40800000;
      fVar4 = (float)local_1bc[0x42];
      uVar9 = uVar11 & 0xfffffff | (uint)(fVar4 < 0.6) << 0x1f | (uint)(fVar4 == 0.6) << 0x1e;
      uVar11 = uVar9 | (uint)NAN(fVar4) << 0x1c;
      bVar12 = (byte)(uVar9 >> 0x18);
      if (!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar11 >> 0x1c) & 1)) {
        Sound::playSoundVP(sndEng,8,fVar16,fVar14);
        local_1bc[0x42] = 0;
      }
    }
  }
  else {
    *(undefined1 *)(local_1bc + 0x41) = 0;
    local_1bc[0x42] = 0x3f400000;
  }
  if ((char)local_1bc[0x47] == '\0') {
    FUN_003f4bb8(0,fVar14,0,&local_38);
    piVar1 = local_1bc;
    FUN_003f4c90(local_38,fVar14,local_30,in_s3,SUB84((double)gravityFactor,0),&local_1d0);
    piVar1[0x4a] = local_1d0;
    piVar1[0x4b] = iStack_1cc;
    piVar1[0x4c] = iStack_1c8;
    piVar1[0x4d] = iStack_1c4;
    iVar3 = local_1bc[0x4f];
    *(undefined4 *)(iVar3 + 0x30) = 0x33333333;
    *(undefined4 *)(iVar3 + 0x34) = 0x3fd33333;
    iVar3 = local_1bc[0x4f];
    *(undefined4 *)(iVar3 + 0x38) = 0x80000000;
    *(undefined4 *)(iVar3 + 0x3c) = 0x3fefae14;
    goto LAB_003f7788;
  }
  local_138 = 0;
  iStack_134 = 0;
  local_130 = 0;
  iStack_12c = 0;
  local_190._0_4_ = 0;
  local_190._4_4_ = 0;
  local_128 = 0;
  iStack_124 = 0;
  local_120 = 0;
  iStack_11c = 0;
  if (((char)local_1bc[0x41] == '\0') ||
     (iVar3 = (**(code **)(*local_1bc + 0x2c4))(local_1bc), iVar3 == 0)) {
    bVar6 = false;
  }
  else {
    bVar6 = true;
  }
  if (bVar6) {
    FUN_003f4bb8(0,fVar14,0,local_98);
    piVar1 = local_1bc;
    bVar12 = (byte)(uVar11 >> 0x18);
    FUN_003f4c90(local_98[0],fVar14,local_90,in_s3,SUB84((double)gravityFactor,0),&local_1d0);
    piVar1[0x4a] = local_1d0;
    piVar1[0x4b] = iStack_1cc;
    piVar1[0x4c] = iStack_1c8;
    piVar1[0x4d] = iStack_1c4;
    iVar3 = local_1bc[0x4f];
    *(undefined4 *)(iVar3 + 0x30) = 0;
    *(undefined4 *)(iVar3 + 0x34) = 0x3fe00000;
    iVar3 = local_1bc[0x4f];
    *(undefined4 *)(iVar3 + 0x38) = 0xa0000000;
    *(undefined4 *)(iVar3 + 0x3c) = 0x3fb99999;
    local_40 = param_5;
    uStack_3c = param_6;
    local_48 = param_3;
    uStack_44 = param_4;
    dVar13 = (double)cpvlength(param_3,param_4,param_5,param_6);
    bVar12 = bVar12 & 0xf;
    if (dVar13 != 0.0) {
      FUN_003f4d6c(local_48,fVar14,local_40,&local_1d0);
      local_128 = local_1d0;
      iStack_124 = iStack_1cc;
      local_120 = iStack_1c8;
      iStack_11c = iStack_1c4;
    }
    fVar17 = (float)local_1bc[0x67];
    fVar4 = (float)(**(code **)(*local_1bc + 0x2fc))(local_1bc);
    FUN_003f4c90(local_128,fVar14,local_120,in_s3,SUB84((double)(fVar17 * fVar4),0),&local_1d0);
    local_138 = local_1d0;
    iStack_134 = iStack_1cc;
    local_130 = iStack_1c8;
    iStack_12c = iStack_1c4;
    bVar12 = bVar12 & 0xf;
    if ((float)local_1bc[0x66] - (float)local_1bc[0x43] * 0.35 * (float)local_1bc[0x74] <= 0.0) {
      fVar4 = 0.0;
    }
    else {
      fVar4 = (float)local_1bc[0x66] - (float)local_1bc[0x43] * 0.35 * (float)local_1bc[0x74];
    }
    local_1bc[0x66] = (int)fVar4;
    *(undefined1 *)((int)local_1bc + 0x11d) = 1;
    local_190 = (double)cpvlength(local_1d0,iStack_1cc,iStack_1c8,iStack_1c4);
    bVar12 = bVar12 & 0xf;
    if (local_190 != 0.0) {
      iVar3 = local_1bc[0x4e];
      local_38 = *(undefined4 *)(iVar3 + 0x38);
      uStack_34 = *(undefined4 *)(iVar3 + 0x3c);
      local_30 = *(undefined4 *)(iVar3 + 0x40);
      uStack_2c = *(undefined4 *)(iVar3 + 0x44);
      FUN_003f4cdc(local_38,fVar14,local_30,in_s3,local_128,in_s5,local_120);
      local_188 = (double)CONCAT44(fVar14,fVar16);
      local_1b0 = (float)(**(code **)(*local_1bc + 0x2fc))(local_1bc);
      local_1b0 = local_1b0 * 1.5;
      dVar13 = (double)cpvlength(param_7,param_8,param_9,param_10);
      local_1b0 = (float)((double)local_1b0 * dVar13);
      dVar13 = local_190 - local_188;
      if ((char)(bVar12 & 0xf | (byte)(((uint)(dVar13 < 0.0001) << 0x1f) >> 0x18) |
                 (byte)(((uint)(dVar13 == 0.0001) << 0x1e) >> 0x18) |
                (byte)(((uint)(0.0001 <= dVar13) << 0x1d) >> 0x18)) < '\0') {
        local_1ac = 0.0001;
      }
      else {
        local_1ac = (float)(local_190 - local_188);
      }
      iVar3 = local_1bc[0x4e];
      FUN_003f4c90(local_128,fVar14,local_120,in_s3,
                   SUB84((double)(local_1b0 * local_1c0 * local_1ac * (float)local_1bc[0x6c]),0),
                   local_88);
      FUN_003f4e60(local_88[0],fVar14,local_80,in_s3,0,in_s5,0,iVar3);
    }
    goto LAB_003f7788;
  }
  FUN_003f4bb8(0,fVar14,0,local_78);
  piVar1 = local_1bc;
  FUN_003f4c90(local_78[0],fVar14,local_70,in_s3,SUB84((double)gravityFactor,0),&local_1d0);
  piVar1[0x4a] = local_1d0;
  piVar1[0x4b] = iStack_1cc;
  piVar1[0x4c] = iStack_1c8;
  piVar1[0x4d] = iStack_1c4;
  iVar3 = local_1bc[0x4f];
  *(undefined4 *)(iVar3 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x34) = 0x3fc99999;
  iVar3 = local_1bc[0x4f];
  *(undefined4 *)(iVar3 + 0x38) = 0x80000000;
  *(undefined4 *)(iVar3 + 0x3c) = 0x3fefae14;
  local_180 = (double)param_11;
  uVar9 = uVar11 & 0xfffffff | (uint)(local_180 == 0.0) << 0x1e;
  if ((byte)(uVar9 >> 0x1e) == 0) {
    FUN_003f4bb8(SUB84(local_180,0),fVar14,0,local_68);
    FUN_003f4d6c(local_68[0],fVar14,local_60,&local_1d0);
    local_128 = local_1d0;
    iStack_124 = iStack_1cc;
    local_120 = iStack_1c8;
    iStack_11c = iStack_1c4;
  }
  dVar13 = (double)(float)local_1bc[0x68] * local_180;
  fVar16 = (float)(**(code **)(*local_1bc + 0x2fc))(local_1bc);
  fVar16 = SUB84(dVar13 * (double)fVar16,0);
  FUN_003f4bb8(fVar16,fVar14,0,&local_1d0);
  local_138 = local_1d0;
  iStack_134 = iStack_1cc;
  local_130 = iStack_1c8;
  iStack_12c = iStack_1c4;
  local_190 = (double)cpvlength(local_1d0,iStack_1cc,iStack_1c8,iStack_1c4);
  uVar9 = uVar9 & 0xfffffff | (uint)(local_190 == 0.0) << 0x1e;
  if ((byte)(uVar9 >> 0x1e) == 0) {
    iVar3 = local_1bc[0x4e];
    local_38 = *(undefined4 *)(iVar3 + 0x38);
    uStack_34 = *(undefined4 *)(iVar3 + 0x3c);
    local_30 = *(undefined4 *)(iVar3 + 0x40);
    uStack_2c = *(undefined4 *)(iVar3 + 0x44);
    FUN_003f4cdc(local_38,fVar14,local_30,in_s3,local_128,in_s5,local_120);
    local_178 = (double)CONCAT44(fVar14,fVar16);
    local_1a8 = (float)(**(code **)(*local_1bc + 0x2fc))(local_1bc);
    local_1a8 = local_1a8 * 3.0;
    dVar13 = local_190 - local_178;
    uVar9 = uVar9 & 0xfffffff | (uint)(dVar13 < 0.0001) << 0x1f | (uint)(dVar13 == 0.0001) << 0x1e |
            (uint)(0.0001 <= dVar13) << 0x1d;
    if ((int)uVar9 < 0) {
      local_1a4 = 0.0001;
    }
    else {
      local_1a4 = (float)(local_190 - local_178);
    }
    iVar3 = local_1bc[0x4e];
    FUN_003f4c90(local_128,fVar14,local_120,in_s3,
                 SUB84((double)(local_1a8 * local_1c0 * local_1a4 * (float)local_1bc[0x6c]),0),
                 local_58);
    FUN_003f4e60(local_58[0],fVar14,local_50,in_s3,0,in_s5,0,iVar3);
    dVar13 = (double)(float)local_1bc[0x6f];
    dVar15 = 50.0 / local_190;
    uVar10 = uVar9 & 0xfffffff | (uint)(dVar13 < dVar15) << 0x1f | (uint)(dVar13 == dVar15) << 0x1e;
    uVar9 = uVar10 | (uint)(NAN(dVar13) || NAN(dVar15)) << 0x1c;
    bVar12 = (byte)(uVar10 >> 0x18);
    if (((!(bool)(bVar12 >> 6 & 1) && bVar12 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) &&
        (*(char *)((int)local_1bc + 0xe6) != '\0')) && (*(char *)((int)local_1bc + 0x15a) != '\x01')
       ) {
      local_1bc[0x6f] = 0;
      this = sndEng;
      uVar5 = FUN_003f4aac();
      VectorSignedToFloat(uVar5,(byte)(uVar9 >> 0x16) & 3);
      Sound::playSoundVP(this,10,fVar16,fVar14);
    }
  }
  bVar12 = (byte)((uVar9 & 0xfffffff) >> 0x18);
  if ((0.75 < (float)local_1bc[0x46]) && (*(char *)((int)local_1bc + 0x11d) != '\x01')) {
    *(undefined1 *)((int)local_1bc + 0x11d) = 1;
    Sound::playSoundVP(sndEng,0xb,fVar16,fVar14);
    cpBodySetAngle(local_1bc[0x4e],extraout_r1_00,0,0);
    iVar3 = local_1bc[0x4e];
    FUN_003f4bb8(0,fVar14,SUB84((double)((float)local_1bc[0x6c] * 220.0),0),&local_48);
    FUN_003f4e60(local_48,fVar14,local_40,in_s3,0,in_s5,0,iVar3);
    local_1bc[0x43] = 0x3f800000;
    goto LAB_003f7788;
  }
  if (*(char *)((int)local_1bc + 0x15a) == '\x01') {
LAB_003f76a4:
    if ((*(char *)((int)local_1bc + 0x15a) == '\0') ||
       ((fVar4 = (float)local_1bc[0x46],
        -1 < (char)(bVar12 & 0xf | (byte)(((uint)(fVar4 < -0.5) << 0x1f) >> 0x18) |
                    (byte)(((uint)(fVar4 == -0.5) << 0x1e) >> 0x18) |
                   (byte)(((uint)(-0.5 <= fVar4) << 0x1d) >> 0x18)) ||
        (*(char *)((int)local_1bc + 0xe6) == '\0')))) goto LAB_003f7788;
  }
  else {
    fVar4 = (float)local_1bc[0x46];
    uVar9 = uVar9 & 0xfffffff | (uint)(fVar4 < -0.75) << 0x1f | (uint)(fVar4 == -0.75) << 0x1e |
            (uint)(-0.75 <= fVar4) << 0x1d;
    bVar12 = (byte)(uVar9 >> 0x18);
    if ((-1 < (int)uVar9) || (*(char *)((int)local_1bc + 0xe6) == '\0')) goto LAB_003f76a4;
  }
  *(undefined1 *)((int)local_1bc + 0x15a) = 1;
  local_1bc[0x57] = 0;
LAB_003f7788:
  local_1bc[0x57] = (int)((float)local_1bc[0x57] + local_1c0);
  if (0.2 < (float)local_1bc[0x57]) {
    *(undefined1 *)((int)local_1bc + 0x15a) = 0;
    local_1bc[0x57] = 0;
  }
  *(undefined4 *)(local_1bc[0x3f] + 0x1c8) = 0x40000000;
  SoldierView::setHasWeapon((SoldierView *)local_1bc[0x3f],local_1bc[0x52] != 0);
  pSVar7 = (SoldierView *)local_1bc[0x3f];
  cocos2d::CCPoint::CCPoint(aCStack_170,fVar16,fVar14);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_138,fVar16,fVar14);
  dVar13 = *(double *)(local_1bc[0x4e] + 0x58);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_128,(CCPoint *)(local_1bc + 0x45));
  SoldierView::updateBody(pSVar7,aCStack_170,&local_138,(float)dVar13);
  SoldierView::updateStep((SoldierView *)local_1bc[0x3f],fVar16);
  if (local_1bc[0x52] != 0) {
    pcVar8 = *(code **)(*(int *)local_1bc[0x52] + 0x304);
    iVar3 = local_1bc[0x52];
    uVar5 = (**(code **)(*local_1bc + 0x23c))(local_1bc);
    (*pcVar8)(iVar3,uVar5);
    (**(code **)(*(int *)local_1bc[0x52] + 0x1b4))(local_1bc[0x52],local_1c0);
  }
  if (local_1bc[0x54] == 0) {
    SoldierView::setDualWieldConfiguration((SoldierView *)local_1bc[0x3f],false);
  }
  else {
    pcVar8 = *(code **)(*(int *)local_1bc[0x54] + 0x304);
    iVar3 = local_1bc[0x54];
    uVar5 = (**(code **)(*local_1bc + 0x284))(local_1bc);
    (*pcVar8)(iVar3,uVar5);
    (**(code **)(*(int *)local_1bc[0x54] + 0x1b4))(local_1bc[0x54],local_1c0);
    SoldierView::setDualWieldConfiguration((SoldierView *)local_1bc[0x3f],true);
  }
  *(undefined1 *)(local_1bc + 0x3a) = *(undefined1 *)((int)local_1bc + 0xe6);
  *(undefined1 *)((int)local_1bc + 0xe6) = 0;
  *(undefined1 *)((int)local_1bc + 0xe9) = *(undefined1 *)((int)local_1bc + 0xe7);
  *(undefined1 *)((int)local_1bc + 0xe7) = 0;
  return;
}

// ---- SoldierHostController::setFireAngle  @ 0x3f7a58
/* SoldierHostController::setFireAngle(float) */

void __thiscall SoldierHostController::setFireAngle(SoldierHostController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x110) = in_r1;
  return;
}

// ---- SoldierHostController::getDualFireAngle  @ 0x3f7a6c
/* SoldierHostController::getDualFireAngle() */

undefined4 __thiscall SoldierHostController::getDualFireAngle(SoldierHostController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::getDualFiringAngle(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierHostController::getFireAngle  @ 0x3f7a88
/* SoldierHostController::getFireAngle() */

undefined4 __thiscall SoldierHostController::getFireAngle(SoldierHostController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::getFiringAngle(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierHostController::setThrust  @ 0x3f7aa4
/* SoldierHostController::setThrust(bool) */

void __thiscall SoldierHostController::setThrust(SoldierHostController *this,bool param_1)

{
  this[0x104] = (SoldierHostController)param_1;
  return;
}

// ---- SoldierHostController::getThrustFactor  @ 0x3f7abc
/* SoldierHostController::getThrustFactor() */

double __thiscall SoldierHostController::getThrustFactor(SoldierHostController *this)

{
  return (double)*(float *)(this + 0x10c);
}

// ---- SoldierHostController::setPower  @ 0x3f7ad8
/* SoldierHostController::setPower(float) */

void __thiscall SoldierHostController::setPower(SoldierHostController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x198) = in_r1;
  return;
}

// ---- SoldierHostController::getPower  @ 0x3f7aec
/* SoldierHostController::getPower() */

undefined4 __thiscall SoldierHostController::getPower(SoldierHostController *this)

{
  return *(undefined4 *)(this + 0x198);
}

// ---- SoldierHostController::setSoldierView  @ 0x3f7afc
/* SoldierHostController::setSoldierView(SoldierView*) */

void __thiscall
SoldierHostController::setSoldierView(SoldierHostController *this,SoldierView *param_1)

{
  *(SoldierView **)(this + 0xfc) = param_1;
  return;
}

// ---- SoldierHostController::getSoldierView  @ 0x3f7b10
/* SoldierHostController::getSoldierView() */

undefined4 __thiscall SoldierHostController::getSoldierView(SoldierHostController *this)

{
  return *(undefined4 *)(this + 0xfc);
}

// ---- SoldierHostController::addWeapon  @ 0x3f7b20
/* SoldierHostController::addWeapon(Weapon*) */

void __thiscall SoldierHostController::addWeapon(SoldierHostController *this,Weapon *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  WeaponFactory *pWVar4;
  undefined4 uVar5;
  uint in_fpscr;
  float fVar6;
  float fVar7;
  
  if (param_1 == (Weapon *)0x0) {
    return;
  }
  iVar2 = (**(code **)(*(int *)param_1 + 0xe4))(param_1);
  if (iVar2 != 0) {
    piVar3 = (int *)(**(code **)(*(int *)param_1 + 0xe4))(param_1);
    (**(code **)(*piVar3 + 0xf4))(piVar3,param_1,0);
  }
  (**(code **)(*(int *)param_1 + 0x31c))(param_1,*(undefined4 *)(this + 0x1c0));
  pWVar4 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar5 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
  iVar2 = WeaponFactory::isClipHandgun(pWVar4,uVar5);
  if (iVar2 != 0) {
    fVar6 = (float)VectorSignedToFloat(*(undefined4 *)(param_1 + 0x170),(byte)(in_fpscr >> 0x16) & 3
                                      );
    (**(code **)(*(int *)param_1 + 700))(param_1,(int)(*(float *)(this + 0x1d4) * fVar6));
  }
  pWVar4 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar5 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
  iVar2 = WeaponFactory::isReloadHandgun(pWVar4,uVar5);
  if (iVar2 != 0) {
    (**(code **)(*(int *)param_1 + 0x2c0))
              (param_1,*(float *)(this + 0x1dc) * *(float *)(param_1 + 0x160));
  }
  pWVar4 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar5 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
  iVar2 = WeaponFactory::isClipRifle(pWVar4,uVar5);
  if (iVar2 != 0) {
    fVar7 = (float)VectorSignedToFloat(*(undefined4 *)(param_1 + 0x170),(byte)(in_fpscr >> 0x16) & 3
                                      );
    fVar6 = *(float *)(param_1 + 0x160);
    (**(code **)(*(int *)param_1 + 700))(param_1,(int)(*(float *)(this + 0x1d8) * fVar7));
    (**(code **)(*(int *)param_1 + 0x2c0))(param_1,*(float *)(this + 0x1e0) * fVar6);
  }
  iVar2 = (**(code **)(*(int *)param_1 + 0x2fc))(param_1);
  if ((iVar2 == 0) || (iVar2 = (**(code **)(*(int *)param_1 + 0x2ec))(param_1), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    iVar2 = (**(code **)(*(int *)param_1 + 0x2f4))(param_1);
    if (iVar2 != 0) {
      if (*(int *)(this + 0x150) == 0) {
        if ((*(int *)(this + 0x148) == 0) ||
           (iVar2 = (**(code **)(**(int **)(this + 0x148) + 0x2ec))(*(undefined4 *)(this + 0x148)),
           iVar2 == 0)) {
          bVar1 = false;
        }
        else {
          bVar1 = true;
        }
        if (bVar1) {
          (**(code **)(*(int *)this + 0x304))(this);
          (**(code **)(*(int *)this + 0x214))(this,param_1);
        }
        else {
          if ((*(int *)(this + 0x14c) == 0) ||
             (iVar2 = (**(code **)(**(int **)(this + 0x14c) + 0x2ec))(*(undefined4 *)(this + 0x14c))
             , iVar2 == 0)) {
            bVar1 = false;
          }
          else {
            bVar1 = true;
          }
          if (bVar1) {
            (**(code **)(*(int *)this + 0x308))(this);
            (**(code **)(*(int *)this + 0x208))(this);
            (**(code **)(*(int *)this + 0x214))(this,param_1);
          }
          else {
            (**(code **)(*(int *)this + 0x208))(this);
            (**(code **)(*(int *)this + 0x214))(this,param_1);
          }
        }
      }
      else {
        (**(code **)(*(int *)this + 0x208))(this);
        (**(code **)(*(int *)this + 0x214))(this,param_1);
      }
      Sound::playSound(sndEng,4);
      return;
    }
    if ((*(int *)(this + 0x148) == 0) ||
       (iVar2 = (**(code **)(**(int **)(this + 0x148) + 0x2ec))(*(undefined4 *)(this + 0x148)),
       iVar2 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      if (*(int *)(this + 0x150) != 0) {
        (**(code **)(*(int *)this + 0x20c))(this);
      }
      (**(code **)(*(int *)this + 0x21c))(this,param_1);
      return;
    }
    if ((*(int *)(this + 0x14c) == 0) ||
       (iVar2 = (**(code **)(**(int **)(this + 0x14c) + 0x2ec))(*(undefined4 *)(this + 0x14c)),
       iVar2 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(*(int *)this + 0x2ac))(this);
      (**(code **)(*(int *)this + 0x21c))(this,param_1);
      return;
    }
  }
  if (*(int *)(this + 0x148) == 0) {
    Sound::playSound(sndEng,4);
    (**(code **)(*(int *)this + 0x30c))(this,param_1);
  }
  else if ((*(int *)(this + 0x148) == 0) || (*(int *)(this + 0x14c) != 0)) {
    if (*(int *)(this + 0x148) != 0) {
      Sound::playSound(sndEng,4);
      (**(code **)(*(int *)this + 0x208))(this);
      (**(code **)(*(int *)this + 0x30c))(this,param_1);
    }
  }
  else {
    Sound::playSound(sndEng,4);
    (**(code **)(*(int *)this + 0x218))(this,param_1);
    (**(code **)(*(int *)this + 0x2ac))(this);
  }
  return;
}

// ---- SoldierHostController::addPrimaryWeaponRemoveDual  @ 0x3f7f64
/* SoldierHostController::addPrimaryWeaponRemoveDual(Weapon*) */

void __thiscall
SoldierHostController::addPrimaryWeaponRemoveDual(SoldierHostController *this,Weapon *param_1)

{
  if (param_1 != (Weapon *)0x0) {
    (**(code **)(*(int *)this + 0x20c))(this);
    (**(code **)(*(int *)this + 0x214))(this,param_1);
  }
  return;
}

// ---- SoldierHostController::addPrimaryWeapon  @ 0x3f7f98
/* SoldierHostController::addPrimaryWeapon(Weapon*) */

void __thiscall SoldierHostController::addPrimaryWeapon(SoldierHostController *this,Weapon *param_1)

{
  double dVar1;
  CCNotificationCenter *pCVar2;
  undefined4 uVar3;
  code *pcVar4;
  SoldierView *this_00;
  float fVar5;
  undefined1 auStack_14 [8];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x148) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar4 = *(code **)(**(int **)(this + 0x148) + 0x1f0);
    uVar3 = *(undefined4 *)(this + 0x148);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar4)(uVar3,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x148) + 0x23c))(*(undefined4 *)(this + 0x148),this + 0xf8);
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (pCVar2,"WeaponRemove",*(CCObject **)(this + 0x148));
    this_00 = *(SoldierView **)(this + 0xfc);
    fVar5 = (float)(**(code **)(*(int *)param_1 + 0x2e4))(param_1);
    SoldierView::setWeaponAngleOffset(this_00,fVar5);
    (**(code **)(**(int **)(this + 0x148) + 0x1d4))(*(undefined4 *)(this + 0x148));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    dVar1 = (double)cocos2d::CCNotificationCenter::postNotification
                              (pCVar2,"WeaponChange",*(CCObject **)(this + 0x148));
    SoldierView::setPrimaryMoveRotation(dVar1);
  }
  return;
}

// ---- SoldierHostController::addSecondaryWeapon  @ 0x3f80d8
/* SoldierHostController::addSecondaryWeapon(Weapon*) */

void __thiscall
SoldierHostController::addSecondaryWeapon(SoldierHostController *this,Weapon *param_1)

{
  CCNotificationCenter *this_00;
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_14 [8];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x14c) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    pcVar2 = *(code **)(**(int **)(this + 0x14c) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x14c);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x14c) + 0x23c))(*(undefined4 *)(this + 0x14c),this + 0xf8);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (this_00,"WeaponRemove",*(CCObject **)(this + 0x14c));
    (**(code **)(**(int **)(this + 0x14c) + 0x1d8))(*(undefined4 *)(this + 0x14c));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
  }
  return;
}

// ---- SoldierHostController::addDualWeapon  @ 0x3f81c4
/* SoldierHostController::addDualWeapon(Weapon*) */

void __thiscall SoldierHostController::addDualWeapon(SoldierHostController *this,Weapon *param_1)

{
  CCNotificationCenter *pCVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 extraout_s1;
  undefined1 auStack_14 [4];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x150) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar3 = *(code **)(**(int **)(this + 0x150) + 0x1f0);
    uVar2 = *(undefined4 *)(this + 0x150);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar3)(uVar2,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x150) + 0x23c))(*(undefined4 *)(this + 0x150),this + 0xf8);
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (pCVar1,"WeaponRemove",*(CCObject **)(this + 0x150));
    (**(code **)(**(int **)(this + 0x150) + 0x1d0))(*(undefined4 *)(this + 0x150));
    if (*(char *)(*(int *)(this + 0x150) + 0x185) == '\0') {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x114) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x114),*(undefined4 *)(this + 0x150),1);
    }
    else {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x118) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x118),*(undefined4 *)(this + 0x150),1);
    }
    Sound::playSound(sndEng,4);
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    uVar2 = cocos2d::CCNotificationCenter::postNotification
                      (pCVar1,"WeaponChange",*(CCObject **)(this + 0x148));
    SoldierView::setDualMoveRotation((double)CONCAT44(extraout_s1,uVar2));
  }
  return;
}

// ---- SoldierHostController::applySideWeapon  @ 0x3f8338
/* SoldierHostController::applySideWeapon(Weapon*) */

void __thiscall SoldierHostController::applySideWeapon(SoldierHostController *this,Weapon *param_1)

{
  CCNotificationCenter *this_00;
  
  if (*(int *)(this + 0x154) == 0) {
    *(Weapon **)(this + 0x154) = param_1;
    (**(code **)(**(int **)(this + 0x154) + 0x1d4))(*(undefined4 *)(this + 0x154));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),3);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (this_00,"WeaponChange",*(CCObject **)(this + 0x148));
  }
  return;
}

// ---- SoldierHostController::grenadeChanged  @ 0x3f83b8
/* SoldierHostController::grenadeChanged() */

void __thiscall SoldierHostController::grenadeChanged(SoldierHostController *this)

{
  CCNotificationCenter *this_00;
  
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification
            (this_00,"GrenadeChange",*(CCObject **)(this + 0x154));
  return;
}

// ---- SoldierHostController::addGrenade  @ 0x3f83e4
/* SoldierHostController::addGrenade(Weapon*) */

void __thiscall SoldierHostController::addGrenade(SoldierHostController *this,Weapon *param_1)

{
  short sVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  code *pcVar6;
  uint local_10;
  
  local_10 = 0;
  while( true ) {
    uVar5 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1ec));
    if (uVar5 <= local_10) {
      cocos2d::CCArray::addObject(*(CCArray **)(this + 0x1ec),(CCObject *)param_1);
      return;
    }
    piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),local_10);
    iVar3 = (**(code **)(*piVar2 + 0x27c))(piVar2);
    iVar4 = (**(code **)(*(int *)param_1 + 0x27c))(param_1);
    if (iVar3 == iVar4) break;
    local_10 = local_10 + 1;
  }
  pcVar6 = *(code **)(*piVar2 + 0x278);
  sVar1 = (**(code **)(*piVar2 + 0x274))(piVar2);
  (*pcVar6)(piVar2,sVar1 + 1);
  return;
}

// ---- SoldierHostController::addSideWeapon  @ 0x3f8494
/* SoldierHostController::addSideWeapon(Weapon*) */

void __thiscall SoldierHostController::addSideWeapon(SoldierHostController *this,Weapon *param_1)

{
  bool bVar1;
  short sVar2;
  int iVar3;
  CCNotificationCenter *this_00;
  undefined4 uVar4;
  code *pcVar5;
  int iVar6;
  undefined1 auStack_1c [8];
  
  if ((param_1 == (Weapon *)0x0) ||
     (iVar3 = (**(code **)(*(int *)this + 0x2d8))(this), *(int *)(this + 0x1b8) <= iVar3)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    pcVar5 = *(code **)(*(int *)param_1 + 0x278);
    sVar2 = (**(code **)(*(int *)param_1 + 0x274))(param_1);
    iVar6 = *(int *)(this + 0x1b8);
    iVar3 = (**(code **)(*(int *)this + 0x2d8))(this);
    if (iVar6 - iVar3 < (int)sVar2) {
      iVar3 = *(int *)(this + 0x1b8);
      iVar6 = (**(code **)(*(int *)this + 0x2d8))(this);
      iVar3 = iVar3 - iVar6;
    }
    else {
      sVar2 = (**(code **)(*(int *)param_1 + 0x274))(param_1);
      iVar3 = (int)sVar2;
    }
    (*pcVar5)(param_1,iVar3);
    (**(code **)(*(int *)this + 0x328))(this,param_1);
    Sound::playSound(sndEng,0x11);
    pcVar5 = *(code **)(*(int *)param_1 + 0x1f0);
    (**(code **)(*(int *)this + 0x1c0))(auStack_1c,this);
    (*pcVar5)(param_1,auStack_1c);
    FUN_007c5914(auStack_1c);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)param_1);
    pcVar5 = *(code **)(*(int *)this + 800);
    uVar4 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),0);
    (*pcVar5)(this,uVar4);
    (**(code **)(*(int *)this + 0x324))(this);
  }
  return;
}

// ---- SoldierHostController::addModifier  @ 0x3f85e8
/* SoldierHostController::addModifier(Item*) */

void __thiscall SoldierHostController::addModifier(SoldierHostController *this,Item *param_1)

{
  CCNotificationCenter *this_00;
  
  cocos2d::CCArray::addObject(*(CCArray **)(this + 0x1e8),(CCObject *)param_1);
  (**(code **)(*(int *)param_1 + 0x230))(param_1);
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponRemove",(CCObject *)param_1);
  return;
}

// ---- SoldierHostController::updateModifiers  @ 0x3f862c
/* SoldierHostController::updateModifiers(float) */

void __thiscall SoldierHostController::updateModifiers(SoldierHostController *this,float param_1)

{
  char cVar1;
  int *piVar2;
  uint uVar3;
  undefined4 in_r1;
  uint local_10;
  
  for (local_10 = 0; uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1e8)), local_10 < uVar3;
      local_10 = local_10 + 1) {
    piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1e8),local_10);
    cVar1 = (**(code **)(*piVar2 + 0x238))(piVar2,in_r1);
    if (cVar1 != '\x01') {
      (**(code **)(*piVar2 + 0x234))(piVar2);
      cocos2d::CCArray::removeObjectAtIndex(*(CCArray **)(this + 0x1e8),local_10,true);
      local_10 = local_10 - 1;
    }
  }
  return;
}

// ---- SoldierHostController::removeModifier  @ 0x3f86b8
/* SoldierHostController::removeModifier(Item*) */

void __thiscall SoldierHostController::removeModifier(SoldierHostController *this,Item *param_1)

{
  (**(code **)(*(int *)param_1 + 0x234))(param_1);
  cocos2d::CCArray::removeObject(*(CCArray **)(this + 0x1e8),(CCObject *)param_1,true);
  return;
}

// ---- SoldierHostController::removeAllModifiers  @ 0x3f86e4
/* SoldierHostController::removeAllModifiers() */

void __thiscall SoldierHostController::removeAllModifiers(SoldierHostController *this)

{
  int *piVar1;
  uint uVar2;
  uint local_10;
  
  for (local_10 = 0; uVar2 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1e8)), local_10 < uVar2;
      local_10 = local_10 + 1) {
    piVar1 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1e8),local_10);
    (**(code **)(*piVar1 + 0x234))(piVar1);
  }
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x1e8));
  return;
}

// ---- SoldierHostController::removePrimaryWeapon  @ 0x3f8748
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f8866 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::removePrimaryWeapon() */

void SoldierHostController::removePrimaryWeapon(void)

{
  int *in_r0;
  float *pfVar1;
  undefined4 uVar2;
  CCNotificationCenter *this;
  int iVar3;
  code *pcVar4;
  int iVar5;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar6;
  float fVar7;
  double dVar8;
  double dVar9;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int *local_2c;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [8];
  
  if (in_r0[0x52] != 0) {
    pcVar4 = *(code **)(*(int *)in_r0[0x52] + 0x1f0);
    iVar3 = in_r0[0x52];
    local_2c = in_r0;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,&DAT_007e83d0,auStack_28);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
    (**(code **)(*(int *)local_2c[0x52] + 0x23c))(local_2c[0x52],0);
    (**(code **)(**(int **)(local_2c[0x3f] + 0x110) + 0xf4))
              (*(undefined4 *)(local_2c[0x3f] + 0x110),local_2c[0x52],0);
    pcVar4 = *(code **)(*(int *)local_2c[0x52] + 0x200);
    iVar3 = local_2c[0x52];
    (**(code **)(*local_2c + 0x1c0))(auStack_24,local_2c);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    iVar5 = *(int *)(local_2c[0x52] + 0xe8);
    pfVar1 = (float *)(**(code **)(*local_2c + 0x50))(local_2c);
    fVar7 = *pfVar1;
    iVar3 = (**(code **)(*local_2c + 0x50))(local_2c);
    FUN_003f4bb8(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
    *(undefined4 *)(iVar5 + 0x28) = local_40;
    *(undefined4 *)(iVar5 + 0x2c) = uStack_3c;
    *(undefined4 *)(iVar5 + 0x30) = uStack_38;
    *(undefined4 *)(iVar5 + 0x34) = uStack_34;
    pcVar4 = *(code **)(*(int *)local_2c[0x52] + 0x4c);
    iVar3 = local_2c[0x52];
    uVar2 = (**(code **)(*local_2c + 0x50))(local_2c);
    (*pcVar4)(iVar3,uVar2);
    iVar3 = *(int *)(local_2c[0x52] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x38);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003f4aac();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003f4bb8(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 50.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 50.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x52] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 10.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",(CCObject *)local_2c[0x52]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x52]);
    local_2c[0x52] = 0;
  }
  return;
}

// ---- SoldierHostController::removeSecondaryWeapon  @ 0x3f89e4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f8b02 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::removeSecondaryWeapon() */

void SoldierHostController::removeSecondaryWeapon(void)

{
  int *in_r0;
  float *pfVar1;
  undefined4 uVar2;
  CCNotificationCenter *this;
  int iVar3;
  code *pcVar4;
  int iVar5;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar6;
  float fVar7;
  double dVar8;
  double dVar9;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int *local_2c;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [8];
  
  if (in_r0[0x53] != 0) {
    pcVar4 = *(code **)(*(int *)in_r0[0x53] + 0x1f0);
    iVar3 = in_r0[0x53];
    local_2c = in_r0;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,&DAT_007e83d0,auStack_28);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
    (**(code **)(*(int *)local_2c[0x53] + 0x23c))(local_2c[0x53],0);
    (**(code **)(**(int **)(local_2c[0x3f] + 0x11c) + 0xf4))
              (*(undefined4 *)(local_2c[0x3f] + 0x11c),local_2c[0x53],0);
    pcVar4 = *(code **)(*(int *)local_2c[0x53] + 0x200);
    iVar3 = local_2c[0x53];
    (**(code **)(*local_2c + 0x1c0))(auStack_24,local_2c);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    iVar5 = *(int *)(local_2c[0x53] + 0xe8);
    pfVar1 = (float *)(**(code **)(*local_2c + 0x50))(local_2c);
    fVar7 = *pfVar1;
    iVar3 = (**(code **)(*local_2c + 0x50))(local_2c);
    FUN_003f4bb8(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
    *(undefined4 *)(iVar5 + 0x28) = local_40;
    *(undefined4 *)(iVar5 + 0x2c) = uStack_3c;
    *(undefined4 *)(iVar5 + 0x30) = uStack_38;
    *(undefined4 *)(iVar5 + 0x34) = uStack_34;
    pcVar4 = *(code **)(*(int *)local_2c[0x53] + 0x4c);
    iVar3 = local_2c[0x53];
    uVar2 = (**(code **)(*local_2c + 0x50))(local_2c);
    (*pcVar4)(iVar3,uVar2);
    iVar3 = *(int *)(local_2c[0x53] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x38);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003f4aac();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003f4bb8(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 25.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 25.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x53] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 5.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",(CCObject *)local_2c[0x53]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x53]);
    local_2c[0x53] = 0;
  }
  return;
}

// ---- SoldierHostController::removeDualWeapon  @ 0x3f8c7c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f8dd2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::removeDualWeapon() */

void SoldierHostController::removeDualWeapon(void)

{
  int *in_r0;
  float *pfVar1;
  undefined4 uVar2;
  CCNotificationCenter *this;
  int iVar3;
  code *pcVar4;
  int iVar5;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar6;
  float fVar7;
  double dVar8;
  double dVar9;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int *local_2c;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [8];
  
  if (in_r0[0x54] != 0) {
    pcVar4 = *(code **)(*(int *)in_r0[0x54] + 0x1f0);
    iVar3 = in_r0[0x54];
    local_2c = in_r0;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,&DAT_007e83d0,auStack_28);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
    (**(code **)(*(int *)local_2c[0x54] + 0x23c))(local_2c[0x54],0);
    if (*(char *)(local_2c[0x54] + 0x185) == '\0') {
      (**(code **)(**(int **)(local_2c[0x3f] + 0x114) + 0xf4))
                (*(undefined4 *)(local_2c[0x3f] + 0x114),local_2c[0x54],0);
    }
    else {
      (**(code **)(**(int **)(local_2c[0x3f] + 0x118) + 0xf4))
                (*(undefined4 *)(local_2c[0x3f] + 0x118),local_2c[0x54],0);
    }
    pcVar4 = *(code **)(*(int *)local_2c[0x54] + 0x200);
    iVar3 = local_2c[0x54];
    (**(code **)(*local_2c + 0x1c0))(auStack_24,local_2c);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    iVar5 = *(int *)(local_2c[0x54] + 0xe8);
    pfVar1 = (float *)(**(code **)(*local_2c + 0x50))(local_2c);
    fVar7 = *pfVar1;
    iVar3 = (**(code **)(*local_2c + 0x50))(local_2c);
    FUN_003f4bb8(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
    *(undefined4 *)(iVar5 + 0x28) = local_40;
    *(undefined4 *)(iVar5 + 0x2c) = uStack_3c;
    *(undefined4 *)(iVar5 + 0x30) = uStack_38;
    *(undefined4 *)(iVar5 + 0x34) = uStack_34;
    pcVar4 = *(code **)(*(int *)local_2c[0x54] + 0x4c);
    iVar3 = local_2c[0x54];
    uVar2 = (**(code **)(*local_2c + 0x50))(local_2c);
    (*pcVar4)(iVar3,uVar2);
    iVar3 = *(int *)(local_2c[0x54] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x38);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003f4aac();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003f4bb8(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 50.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 50.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x54] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 10.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",(CCObject *)local_2c[0x54]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x54]);
    local_2c[0x54] = 0;
  }
  return;
}

// ---- SoldierHostController::removeSideWeapon  @ 0x3f8f50
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f9054 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::removeSideWeapon() */

void SoldierHostController::removeSideWeapon(void)

{
  int *in_r0;
  float *pfVar1;
  undefined4 uVar2;
  CCNotificationCenter *this;
  int iVar3;
  code *pcVar4;
  int iVar5;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar6;
  float fVar7;
  double dVar8;
  double dVar9;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  int *local_2c;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [8];
  
  if (in_r0[0x55] != 0) {
    pcVar4 = *(code **)(*(int *)in_r0[0x55] + 0x1f0);
    iVar3 = in_r0[0x55];
    local_2c = in_r0;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,&DAT_007e83d0,auStack_28);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
    (**(code **)(**(int **)(local_2c[0x3f] + 0x11c) + 0xf4))
              (*(undefined4 *)(local_2c[0x3f] + 0x11c),local_2c[0x55],0);
    pcVar4 = *(code **)(*(int *)local_2c[0x55] + 0x200);
    iVar3 = local_2c[0x55];
    (**(code **)(*local_2c + 0x1c0))(auStack_24,local_2c);
    (*pcVar4)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    iVar5 = *(int *)(local_2c[0x55] + 0xe8);
    pfVar1 = (float *)(**(code **)(*local_2c + 0x50))(local_2c);
    fVar7 = *pfVar1;
    iVar3 = (**(code **)(*local_2c + 0x50))(local_2c);
    FUN_003f4bb8(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
    *(undefined4 *)(iVar5 + 0x28) = local_40;
    *(undefined4 *)(iVar5 + 0x2c) = uStack_3c;
    *(undefined4 *)(iVar5 + 0x30) = uStack_38;
    *(undefined4 *)(iVar5 + 0x34) = uStack_34;
    pcVar4 = *(code **)(*(int *)local_2c[0x55] + 0x4c);
    iVar3 = local_2c[0x55];
    uVar2 = (**(code **)(*local_2c + 0x50))(local_2c);
    (*pcVar4)(iVar3,uVar2);
    iVar3 = *(int *)(local_2c[0x55] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x38);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003f4aac();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003f4bb8(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 25.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 25.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x55] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003f4aac();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 5.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",(CCObject *)local_2c[0x55]);
    local_2c[0x55] = 0;
    cocos2d::CCArray::removeAllObjects((CCArray *)local_2c[0x7b]);
    (**(code **)(*local_2c + 0x324))(local_2c);
  }
  return;
}

// ---- SoldierHostController::switchWeapons  @ 0x3f91dc
/* SoldierHostController::switchWeapons() */

void __thiscall SoldierHostController::switchWeapons(SoldierHostController *this)

{
  double dVar1;
  CCNotificationCenter *this_00;
  undefined4 uVar2;
  SoldierView *this_01;
  float fVar3;
  
  if ((*(int *)(this + 0x14c) != 0) && (*(int *)(this + 0x148) != 0)) {
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
    uVar2 = *(undefined4 *)(this + 0x148);
    *(undefined4 *)(this + 0x148) = *(undefined4 *)(this + 0x14c);
    this_01 = *(SoldierView **)(this + 0xfc);
    fVar3 = (float)(**(code **)(**(int **)(this + 0x148) + 0x2e4))(*(undefined4 *)(this + 0x148));
    SoldierView::setWeaponAngleOffset(this_01,fVar3);
    *(undefined4 *)(this + 0x14c) = uVar2;
    (**(code **)(**(int **)(this + 0x148) + 0x1d4))(*(undefined4 *)(this + 0x148));
    (**(code **)(**(int **)(this + 0x14c) + 0x1d8))(*(undefined4 *)(this + 0x14c));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
    (**(code **)(*(int *)this + 0x20c))(this);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    dVar1 = (double)cocos2d::CCNotificationCenter::postNotification
                              (this_00,"WeaponChange",*(CCObject **)(this + 0x148));
    SoldierView::setPrimaryMoveRotation(dVar1);
  }
  return;
}

// ---- SoldierHostController::switchPrimaryToDual  @ 0x3f935c
/* SoldierHostController::switchPrimaryToDual() */

void __thiscall SoldierHostController::switchPrimaryToDual(SoldierHostController *this)

{
  CCNotificationCenter *this_00;
  undefined4 uVar1;
  undefined4 extraout_s1;
  
  if ((*(int *)(this + 0x148) != 0) && (*(int *)(this + 0x150) == 0)) {
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    *(undefined4 *)(this + 0x150) = *(undefined4 *)(this + 0x148);
    *(undefined4 *)(this + 0x148) = 0;
    (**(code **)(**(int **)(this + 0x150) + 0x1d0))(*(undefined4 *)(this + 0x150));
    if (*(char *)(*(int *)(this + 0x150) + 0x185) == '\0') {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x114) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x114),*(undefined4 *)(this + 0x150),1);
    }
    else {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x118) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x118),*(undefined4 *)(this + 0x150),1);
    }
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    uVar1 = cocos2d::CCNotificationCenter::postNotification
                      (this_00,"WeaponChange",*(CCObject **)(this + 0x150));
    SoldierView::setDualMoveRotation((double)CONCAT44(extraout_s1,uVar1));
  }
  return;
}

// ---- SoldierHostController::switchSecondaryToDual  @ 0x3f9468
/* SoldierHostController::switchSecondaryToDual() */

void __thiscall SoldierHostController::switchSecondaryToDual(SoldierHostController *this)

{
  CCNotificationCenter *this_00;
  undefined4 uVar1;
  undefined4 extraout_s1;
  
  if ((*(int *)(this + 0x14c) != 0) && (*(int *)(this + 0x148) != 0)) {
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
    *(undefined4 *)(this + 0x150) = *(undefined4 *)(this + 0x14c);
    *(undefined4 *)(this + 0x14c) = *(undefined4 *)(this + 0x148);
    *(undefined4 *)(this + 0x148) = 0;
    (**(code **)(**(int **)(this + 0x150) + 0x1d0))(*(undefined4 *)(this + 0x150));
    (**(code **)(**(int **)(this + 0x14c) + 0x1d8))(*(undefined4 *)(this + 0x14c));
    if (*(char *)(*(int *)(this + 0x150) + 0x185) == '\0') {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x114) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x114),*(undefined4 *)(this + 0x150),1);
    }
    else {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x118) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x118),*(undefined4 *)(this + 0x150),1);
    }
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    uVar1 = cocos2d::CCNotificationCenter::postNotification
                      (this_00,"WeaponChange",*(CCObject **)(this + 0x150));
    SoldierView::setDualMoveRotation((double)CONCAT44(extraout_s1,uVar1));
  }
  return;
}

// ---- SoldierHostController::fire  @ 0x3f95f8
/* SoldierHostController::fire(float) */

void __thiscall SoldierHostController::fire(SoldierHostController *this,float param_1)

{
  bool bVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 in_r1;
  code *pcVar6;
  undefined4 uVar7;
  
  if (*(int *)(this + 0x148) != 0) {
    param_1 = (float)(**(code **)(**(int **)(this + 0x148) + 0x25c))
                               (*(undefined4 *)(this + 0x148),in_r1);
  }
  if (*(int *)(this + 0x150) == 0) {
    return;
  }
  sVar2 = (**(code **)(**(int **)(this + 0x150) + 0x274))(param_1,*(undefined4 *)(this + 0x150));
  if ((sVar2 == 0) &&
     (sVar2 = (**(code **)(**(int **)(this + 0x150) + 0x284))(*(undefined4 *)(this + 0x150)),
     sVar2 == 0)) {
    iVar3 = (**(code **)(**(int **)(this + 0x148) + 0x268))(*(undefined4 *)(this + 0x148));
    iVar4 = (**(code **)(**(int **)(this + 0x150) + 0x268))(*(undefined4 *)(this + 0x150));
    if (iVar3 == iVar4) {
      sVar2 = (**(code **)(**(int **)(this + 0x148) + 0x274))(*(undefined4 *)(this + 0x148));
      iVar3 = (**(code **)(**(int **)(this + 0x150) + 0x2b4))(*(undefined4 *)(this + 0x150));
      if (iVar3 < sVar2) {
        bVar1 = true;
        goto LAB_003f96ea;
      }
    }
  }
  bVar1 = false;
LAB_003f96ea:
  if (bVar1) {
    pcVar6 = *(code **)(**(int **)(this + 0x150) + 0x278);
    uVar7 = *(undefined4 *)(this + 0x150);
    uVar5 = (**(code **)(**(int **)(this + 0x150) + 0x2b4))(*(undefined4 *)(this + 0x150));
    (*pcVar6)(uVar7,uVar5);
    pcVar6 = *(code **)(**(int **)(this + 0x148) + 0x278);
    uVar5 = *(undefined4 *)(this + 0x148);
    sVar2 = (**(code **)(**(int **)(this + 0x148) + 0x274))(*(undefined4 *)(this + 0x148));
    iVar3 = (**(code **)(**(int **)(this + 0x148) + 0x2b4))(*(undefined4 *)(this + 0x148));
    (*pcVar6)(uVar5,sVar2 - iVar3);
  }
  (**(code **)(**(int **)(this + 0x150) + 0x25c))(*(undefined4 *)(this + 0x150),in_r1);
  return;
}

// ---- SoldierHostController::setViewOffset  @ 0x3f9794
/* SoldierHostController::setViewOffset(int) */

void __thiscall SoldierHostController::setViewOffset(SoldierHostController *this,int param_1)

{
  *(int *)(this + 0x1a4) = param_1;
  return;
}

// ---- SoldierHostController::getViewOffset  @ 0x3f97a8
/* SoldierHostController::getViewOffset() */

undefined4 __thiscall SoldierHostController::getViewOffset(SoldierHostController *this)

{
  undefined4 uVar1;
  float fVar2;
  uint in_fpscr;
  int iVar3;
  float fVar4;
  
  if (*(int *)(this + 0x148) == 0) {
    uVar1 = *(undefined4 *)(this + 0x1a4);
  }
  else {
    uVar1 = (**(code **)(**(int **)(this + 0x148) + 0x290))(*(undefined4 *)(this + 0x148));
    fVar4 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar2 = (float)(**(code **)(**(int **)(this + 0x148) + 0x2d0))(*(undefined4 *)(this + 0x148));
    iVar3 = (int)(fVar4 * (2.0 - fVar2));
    if (*(int *)(this + 0x1a4) - iVar3 < -1) {
      *(int *)(this + 0x1a4) = *(int *)(this + 0x1a4) + 1;
    }
    else if (1 < *(int *)(this + 0x1a4) - iVar3) {
      *(int *)(this + 0x1a4) = *(int *)(this + 0x1a4) + -1;
    }
    uVar1 = *(undefined4 *)(this + 0x1a4);
  }
  return uVar1;
}

// ---- SoldierHostController::getViewScale  @ 0x3f9868
/* SoldierHostController::getViewScale() */

float __thiscall SoldierHostController::getViewScale(SoldierHostController *this)

{
  float fVar1;
  float fVar2;
  float fVar3;
  
  if (*(int *)(this + 0x148) == 0) {
    *(float *)(this + 0x1a8) = *(float *)(this + 0x1a8) * 0.7 + 0.3;
  }
  else {
    fVar1 = (float)(**(code **)(**(int **)(this + 0x148) + 0x2d0))(*(undefined4 *)(this + 0x148));
    *(float *)(this + 0x1a8) = fVar1 * 0.3 + *(float *)(this + 0x1a8) * 0.7;
  }
  fVar3 = *(float *)(this + 0x1a8);
  fVar1 = (float)ApplicationInterface::aspectCorrection();
  fVar2 = (float)ApplicationInterface::viewFactor();
  return fVar3 * fVar1 * fVar2;
}

// ---- SoldierHostController::hasPower  @ 0x3f9930
/* SoldierHostController::hasPower() */

undefined4 SoldierHostController::hasPower(void)

{
  return 1;
}

// ---- SoldierHostController::activatePlayer  @ 0x3f9950
/* SoldierHostController::activatePlayer() */

void __thiscall SoldierHostController::activatePlayer(SoldierHostController *this)

{
  *(undefined4 *)(this + 0x144) = 0x42c80000;
  SoldierView::setIsVisible(*(SoldierView **)(this + 0xfc),true);
  this[0x159] = (SoldierHostController)0x0;
  cpBodyResetForces(*(undefined4 *)(this + 0x138));
  (**(code **)(*(int *)this + 0x2e4))(this,0x15);
  return;
}

// ---- SoldierHostController::killPlayer  @ 0x3f999c
/* SoldierHostController::killPlayer() */

void __thiscall SoldierHostController::killPlayer(SoldierHostController *this)

{
  CCNotificationCenter *this_00;
  
  (**(code **)(*(int *)this + 0x290))(this);
  SoldierView::setIsVisible(*(SoldierView **)(this + 0xfc),false);
  (**(code **)(*(int *)this + 0x2e4))(this,1);
  if (this[0x1f0] != (SoldierHostController)0x1) {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerDead",(CCObject *)this);
  }
  return;
}

// ---- SoldierHostController::setCollision  @ 0x3f9a00
/* SoldierHostController::setCollision(int) */

void __thiscall SoldierHostController::setCollision(SoldierHostController *this,int param_1)

{
  *(int *)(*(int *)(this + 0x13c) + 0x54) = param_1;
  *(int *)(*(int *)(this + 0x13c) + 0x5c) = param_1;
  *(int *)(*(int *)(this + 0x13c) + 0x58) = param_1;
  *(int *)(*(int *)(this + 0x140) + 0x54) = param_1;
  *(int *)(*(int *)(this + 0x140) + 0x5c) = param_1;
  *(int *)(*(int *)(this + 0x140) + 0x58) = param_1;
  return;
}

// ---- SoldierHostController::setAccelerometerY  @ 0x3f9a48
/* SoldierHostController::setAccelerometerY(float) */

void __thiscall SoldierHostController::setAccelerometerY(SoldierHostController *this,float param_1)

{
  float in_r1;
  int iVar1;
  
  if (this[0x104] != (SoldierHostController)0x0) {
    if (4.0 < *(float *)(this + 0x194)) {
      if ((int)((uint)(in_r1 < -0.5) << 0x1f) < 0) {
        iVar1 = *(int *)(this + 0x138);
        *(undefined4 *)(iVar1 + 0x60) = 0;
        *(undefined4 *)(iVar1 + 100) = 0x402a0000;
        *(undefined4 *)(this + 0x194) = 0;
      }
      else if (0.5 < in_r1) {
        iVar1 = *(int *)(this + 0x138);
        *(undefined4 *)(iVar1 + 0x60) = 0;
        *(undefined4 *)(iVar1 + 100) = 0xc02a0000;
        *(undefined4 *)(this + 0x194) = 0;
      }
    }
  }
  return;
}

// ---- SoldierHostController::checkMeleeCollision  @ 0x3f9ad8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f9b2e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::checkMeleeCollision() */

void SoldierHostController::checkMeleeCollision(void)

{
  uint uVar1;
  byte bVar2;
  int *piVar3;
  int *in_r0;
  undefined4 uVar4;
  int iVar5;
  code *pcVar6;
  uint in_fpscr;
  uint uVar7;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar8;
  float fVar9;
  int local_e0;
  int iStack_dc;
  int iStack_d8;
  int iStack_d4;
  int *local_cc;
  undefined1 auStack_c8 [4];
  undefined1 auStack_c4 [4];
  undefined1 auStack_c0 [4];
  undefined1 auStack_bc [4];
  undefined4 local_b8;
  int local_b4;
  int *local_b0;
  int *local_ac;
  undefined4 local_a8 [2];
  undefined4 local_a0;
  int local_98;
  int iStack_94;
  int local_90;
  int iStack_8c;
  undefined4 local_88 [2];
  undefined4 local_80;
  undefined4 local_78 [2];
  undefined4 local_70;
  undefined4 local_68 [2];
  undefined4 local_60;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  
  local_b8 = 0x280;
  local_cc = in_r0;
  (**(code **)(*(int *)in_r0[0x52] + 800))(local_88,in_r0[0x52]);
  FUN_003f4c38(local_88[0],in_s1,local_80,in_s3,(int)*(undefined8 *)(local_cc[0x4e] + 0x28),in_s5,
               (int)*(undefined8 *)(local_cc[0x4e] + 0x30),local_a8);
  local_98 = 0;
  iStack_94 = 0;
  local_90 = 0;
  iStack_8c = 0;
  iVar5 = local_cc[0x4e];
  FUN_003f4d6c(local_a8[0],in_s1,local_a0,local_78);
  uVar4 = (**(code **)(*(int *)local_cc[0x52] + 0x2a0))(local_cc[0x52]);
  fVar8 = (float)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  fVar9 = (float)local_cc[0x5e] * 75.0 + 25.0;
  uVar1 = in_fpscr & 0xfffffff | (uint)(fVar8 < fVar9) << 0x1f | (uint)(fVar8 == fVar9) << 0x1e;
  uVar7 = uVar1 | (uint)(NAN(fVar8) || NAN(fVar9)) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar7 >> 0x1c) & 1)) {
    uVar4 = (**(code **)(*(int *)local_cc[0x52] + 0x2a0))(local_cc[0x52]);
    fVar8 = (float)VectorSignedToFloat(uVar4,(byte)(uVar7 >> 0x16) & 3);
  }
  else {
    fVar8 = (float)local_cc[0x5e] * 75.0 + 25.0;
  }
  FUN_003f4c90(local_78[0],in_s1,local_70,in_s3,SUB84((double)fVar8,0),local_68);
  piVar3 = local_cc;
  FUN_003f4be0((int)*(undefined8 *)(iVar5 + 0x28),in_s1,(int)*(undefined8 *)(iVar5 + 0x30),in_s3,
               local_68[0],in_s5,local_60,&local_e0);
  piVar3[0x5a] = local_e0;
  piVar3[0x5b] = iStack_dc;
  piVar3[0x5c] = iStack_d8;
  piVar3[0x5d] = iStack_d4;
  iVar5 = local_cc[0x4e];
  local_b4 = cpSpaceSegmentQueryFirst
                       (space,*(undefined4 *)(iVar5 + 0x34),*(undefined4 *)(iVar5 + 0x28),
                        *(undefined4 *)(iVar5 + 0x2c));
  local_b0 = (int *)0x0;
  local_ac = (int *)0x0;
  FUN_0079a3f4(local_48);
  FUN_007c6a60(auStack_c8,&DAT_007e83d0,local_48);
  FUN_0079a3fc(local_48);
  if (local_b4 != 0) {
    if (*(int *)(local_b4 + 0x5c) == 0x84) {
      local_ac = *(int **)(local_b4 + 0x50);
      (**(code **)(*local_cc + 0x1ac))(local_48,local_cc);
      FUN_003f4c38((int)*(undefined8 *)(local_cc + 0x5a),in_s1,(int)*(undefined8 *)(local_cc + 0x5c)
                   ,in_s3,local_48[0],in_s5,local_40,&local_e0);
      local_98 = local_e0;
      iStack_94 = iStack_dc;
      local_90 = iStack_d8;
      iStack_8c = iStack_d4;
      pcVar6 = *(code **)(*local_cc + 0x2dc);
      (**(code **)(*local_ac + 0x1c0))(auStack_bc,local_ac);
      (*pcVar6)(local_cc,auStack_bc,local_98,iStack_94);
      FUN_007c5914(auStack_bc);
    }
    else if (*(int *)(local_b4 + 0x5c) == 0x241) {
      local_b0 = *(int **)(local_b4 + 0x50);
      (**(code **)(*local_b0 + 0x1c0))(auStack_c4,local_b0);
      FUN_007c52e8(auStack_c8,auStack_c4);
      FUN_007c5914(auStack_c4);
      (**(code **)(*local_b0 + 0x1ac))(local_58,local_b0);
      FUN_003f4c38((int)*(undefined8 *)(local_cc + 0x5a),in_s1,(int)*(undefined8 *)(local_cc + 0x5c)
                   ,in_s3,local_58[0],in_s5,local_50,&local_e0);
      local_98 = local_e0;
      iStack_94 = iStack_dc;
      local_90 = iStack_d8;
      iStack_8c = iStack_d4;
      pcVar6 = *(code **)(*local_cc + 0x2dc);
      FUN_007c64e8(auStack_c0,auStack_c8);
      (*pcVar6)(local_cc,auStack_c0,local_98,iStack_94);
      FUN_007c5914(auStack_c0);
    }
  }
  FUN_007c5914(auStack_c8);
  return;
}

// ---- SoldierHostController::meleeAttack  @ 0x3f9e50
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f9ea4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierHostController::meleeAttack() */

void __thiscall SoldierHostController::meleeAttack(SoldierHostController *this)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  CCNotificationCenter *this_00;
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  double in_d0;
  double __x;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar5;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  __x = cos(in_d0);
  sin(__x);
  uVar1 = (undefined4)((ulonglong)__x >> 0x20);
  FUN_003f4bb8(extraout_r0,uVar1,extraout_r0_00,local_30);
  FUN_003f4d6c(local_30[0],uVar1,local_28,local_40);
  uVar4 = *(undefined4 *)(this + 0x138);
  FUN_003f4c90(local_40[0],uVar1,local_38,in_s3,
               SUB84((double)(*(float *)(this + 0x1e4) * *(float *)(this + 0x1b0)),0),local_20);
  FUN_003f4e60(local_20[0],uVar1,local_18,in_s3,0,in_s5,0,uVar4);
  Sound::playSound(sndEng,2);
  SoldierView::setPrimaryMoveRotation(__x);
  SoldierView::setFiringAngleOffset(*(SoldierView **)(this + 0xfc),SUB84(__x,0));
  this[0x166] = (SoldierHostController)0x1;
  iVar2 = *(int *)(this + 0x138);
  uVar4 = *(undefined4 *)(iVar2 + 0x2c);
  uVar1 = *(undefined4 *)(iVar2 + 0x30);
  uVar3 = *(undefined4 *)(iVar2 + 0x34);
  *(undefined4 *)(this + 0x168) = *(undefined4 *)(iVar2 + 0x28);
  *(undefined4 *)(this + 0x16c) = uVar4;
  *(undefined4 *)(this + 0x170) = uVar1;
  *(undefined4 *)(this + 0x174) = uVar3;
  if (*(float *)(this + 0x1e4) - 35.0 <= 0.0) {
    fVar5 = 0.0;
  }
  else {
    fVar5 = *(float *)(this + 0x1e4) - 35.0;
  }
  *(float *)(this + 0x1e4) = fVar5;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerPunch",(CCObject *)0x0);
  return;
}

// ---- SoldierHostController::endMeleeAttack  @ 0x3f9fdc
/* SoldierHostController::endMeleeAttack(std::string, cpVect) */

void SoldierHostController::endMeleeAttack(int *param_1,string *param_2)

{
  int iVar1;
  float fVar2;
  undefined4 uVar3;
  CCObject *pCVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  CCNotificationCenter *this;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 extraout_s0_01;
  undefined4 extraout_s0_02;
  undefined4 extraout_s1;
  double dVar13;
  undefined4 extraout_s1_00;
  string asStack_40 [4];
  float local_3c;
  float local_38;
  CCObject *local_34;
  
  param_1[0x5e] = 0;
  *(undefined1 *)((int)param_1 + 0x166) = 0;
  iVar1 = FUN_007c505c(param_2);
  if (iVar1 != 0) {
    fVar2 = (float)(**(code **)(*param_1 + 0x23c))(param_1);
    local_3c = -(fVar2 * 0.017453292);
    uVar3 = (**(code **)(*(int *)param_1[0x52] + 0x29c))(param_1[0x52]);
    local_38 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    local_38 = local_38 * (float)param_1[0x73];
    pCVar4 = (CCObject *)cocos2d::CCFloat::create(extraout_s0);
    uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
    dVar13 = cos((double)CONCAT44(extraout_s1,extraout_s0_01));
    uVar5 = cocos2d::CCFloat::create(SUB84(dVar13,0));
    dVar13 = sin((double)CONCAT44(extraout_s1_00,extraout_s0_02));
    uVar6 = cocos2d::CCFloat::create(SUB84(dVar13,0));
    uVar7 = cocos2d::CCInteger::create(0);
    uVar8 = cocos2d::CCInteger::create((int)local_38);
    uVar9 = cocos2d::CCInteger::create(0);
    uVar10 = cocos2d::CCInteger::create(0);
    uVar11 = cocos2d::CCString::create(param_2);
    (**(code **)(*param_1 + 0x1c0))(asStack_40,param_1);
    uVar12 = cocos2d::CCString::create(asStack_40);
    local_34 = (CCObject *)
               cocos2d::CCArray::create
                         (pCVar4,uVar3,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,0);
    FUN_007c5914(asStack_40);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"PlayerDamaged",local_34);
  }
  return;
}

// ---- SoldierHostController::switchGrenades  @ 0x3fa18c
/* SoldierHostController::switchGrenades() */

void __thiscall SoldierHostController::switchGrenades(SoldierHostController *this)

{
  uint uVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  code *pcVar4;
  
  uVar1 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1ec));
  if (1 < uVar1) {
    pCVar2 = (CCObject *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),0);
    cocos2d::CCArray::removeObjectAtIndex(*(CCArray **)(this + 0x1ec),0,true);
    cocos2d::CCArray::addObject(*(CCArray **)(this + 0x1ec),pCVar2);
    if (*(int *)(this + 0x154) != 0) {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),0);
      *(undefined4 *)(this + 0x154) = 0;
    }
    pcVar4 = *(code **)(*(int *)this + 800);
    uVar3 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),0);
    (*pcVar4)(this,uVar3);
  }
  (**(code **)(*(int *)this + 0x324))(this);
  return;
}

// ---- SoldierHostController::getGrenadeCount  @ 0x3fa24c
/* SoldierHostController::getGrenadeCount() */

int __thiscall SoldierHostController::getGrenadeCount(SoldierHostController *this)

{
  short sVar1;
  int *piVar2;
  uint uVar3;
  int local_14;
  uint local_10;
  
  local_14 = 0;
  for (local_10 = 0; uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1ec)), local_10 < uVar3;
      local_10 = local_10 + 1) {
    piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),local_10);
    sVar1 = (**(code **)(*piVar2 + 0x274))(piVar2);
    local_14 = sVar1 + local_14;
  }
  return local_14;
}

// ---- SoldierHostController::throwDual  @ 0x3fa2b8
/* SoldierHostController::throwDual() */

void __thiscall SoldierHostController::throwDual(SoldierHostController *this)

{
  double dVar1;
  short sVar2;
  int iVar3;
  CCNotificationCenter *pCVar4;
  CCObject *pCVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  code *pcVar12;
  float fVar13;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  string asStack_3c [4];
  int *local_38;
  CCObject *local_34;
  
  iVar3 = (**(code **)(*(int *)this + 0x2d8))(this);
  if (0 < iVar3) {
    local_38 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),0);
    pcVar12 = *(code **)(*local_38 + 0x278);
    sVar2 = (**(code **)(*local_38 + 0x274))(local_38);
    (*pcVar12)(local_38,sVar2 + -1);
    dVar1 = (double)Sound::playSound(sndEng,3);
    SoldierView::setDualMoveRotation(dVar1);
    if (*(int *)(this + 0x150) != 0) {
      (**(code **)(*(int *)this + 0x20c))(this);
      pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification
                (pCVar4,"WeaponChange",*(CCObject **)(this + 0x148));
    }
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar4,"ThrowDual",(CCObject *)0x0);
    fVar13 = (float)SoldierView::getDualArmPoint();
    pCVar5 = (CCObject *)cocos2d::CCFloat::create(fVar13);
    uVar6 = cocos2d::CCFloat::create(extraout_s0);
    fVar13 = (float)(**(code **)(*(int *)this + 0x23c))(this);
    uVar7 = cocos2d::CCFloat::create(fVar13);
    uVar8 = cocos2d::CCFloat::create(extraout_s0_00);
    uVar9 = cocos2d::CCFloat::create(extraout_s0_01);
    (**(code **)(*(int *)this + 0x1c0))(asStack_3c,this);
    uVar10 = cocos2d::CCString::create(asStack_3c);
    iVar3 = (**(code **)(*local_38 + 0x27c))(local_38);
    uVar11 = cocos2d::CCInteger::create(iVar3);
    local_34 = (CCObject *)cocos2d::CCArray::create(pCVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,0);
    FUN_007c5914(asStack_3c);
    pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar4,"GrenadeLaunched",local_34);
    sVar2 = (**(code **)(*local_38 + 0x274))(local_38);
    if (sVar2 == 0) {
      cocos2d::CCArray::removeObjectAtIndex(*(CCArray **)(this + 0x1ec),0,true);
      if (*(int *)(this + 0x154) != 0) {
        (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
                  (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),0);
        *(undefined4 *)(this + 0x154) = 0;
      }
      iVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1ec));
      if (iVar3 == 0) {
        pCVar4 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification
                  (pCVar4,"WeaponChange",*(CCObject **)(this + 0x148));
      }
      else {
        pcVar12 = *(code **)(*(int *)this + 800);
        uVar6 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1ec),0);
        (*pcVar12)(this,uVar6);
      }
    }
    (**(code **)(*(int *)this + 0x324))(this);
  }
  return;
}

// ---- SoldierHostController::getMassFactor  @ 0x3fa574
/* SoldierHostController::getMassFactor() */

undefined4 __thiscall SoldierHostController::getMassFactor(SoldierHostController *this)

{
  return *(undefined4 *)(this + 0x1b0);
}

// ---- SoldierHostController::weaponDidFire  @ 0x3fa584
/* SoldierHostController::weaponDidFire(Item*) */

void __thiscall SoldierHostController::weaponDidFire(SoldierHostController *this,Item *param_1)

{
  bool bVar1;
  int iVar2;
  Item *pIVar3;
  SoldierView *this_00;
  code *pcVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  undefined1 auStack_24 [4];
  undefined4 local_20;
  Item *local_1c;
  
  if (param_1 != (Item *)0x0) {
    local_20 = 0;
    local_1c = param_1;
    iVar2 = (**(code **)(*(int *)this + 0x1fc))(this);
    if ((iVar2 == 0) ||
       (pIVar3 = (Item *)(**(code **)(*(int *)this + 0x1fc))(this), pIVar3 != local_1c)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      uVar6 = (**(code **)(*(int *)this + 0x1d8))(this);
      SoldierView::setDualRecoilRotation((double)CONCAT44(extraout_s1,uVar6));
      local_20 = (**(code **)(*(int *)this + 0x284))(this);
    }
    else {
      uVar6 = (**(code **)(*(int *)this + 0x1d8))(this);
      SoldierView::setPrimaryRecoilRotation((double)CONCAT44(extraout_s1_00,uVar6));
      local_20 = (**(code **)(*(int *)this + 0x23c))(this);
    }
    pcVar4 = *(code **)(*(int *)local_1c + 0x310);
    iVar2 = *(int *)(this + 0x138);
    iVar5 = *(int *)(this + 0x138);
    (**(code **)(*(int *)this + 0x1c0))(auStack_24,this);
    (*pcVar4)(local_1c,local_20,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
              *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34),
              *(undefined4 *)(iVar5 + 0x38),*(undefined4 *)(iVar5 + 0x3c),
              *(undefined4 *)(iVar5 + 0x40),*(undefined4 *)(iVar5 + 0x44),0x400,auStack_24);
    FUN_007c5914(auStack_24);
    this_00 = (SoldierView *)(**(code **)(*(int *)this + 0x1d8))(this);
    SoldierView::showLabel(this_00);
  }
  return;
}

// ---- SoldierHostController::weaponDidFire  @ 0x3fa6d0
/* non-virtual thunk to SoldierHostController::weaponDidFire(Item*) */

void __thiscall SoldierHostController::weaponDidFire(SoldierHostController *this,Item *param_1)

{
  weaponDidFire(this + -0xf8,param_1);
  return;
}

// ---- SoldierHostController::getWeaponWeightFactor  @ 0x3fa6d8
/* SoldierHostController::getWeaponWeightFactor() */

float __thiscall SoldierHostController::getWeaponWeightFactor(SoldierHostController *this)

{
  float fVar1;
  float local_c;
  
  local_c = 1.0;
  if (*(int *)(this + 0x148) != 0) {
    local_c = (float)(**(code **)(**(int **)(this + 0x148) + 0x318))(*(undefined4 *)(this + 0x148));
    local_c = local_c * 1.0;
  }
  if (*(int *)(this + 0x14c) != 0) {
    fVar1 = (float)(**(code **)(**(int **)(this + 0x14c) + 0x318))(*(undefined4 *)(this + 0x14c));
    local_c = ((fVar1 + 1.0) * local_c) / 2.0;
  }
  if (*(int *)(this + 0x150) != 0) {
    fVar1 = (float)(**(code **)(**(int **)(this + 0x150) + 0x318))(*(undefined4 *)(this + 0x150));
    local_c = local_c * fVar1;
  }
  return local_c;
}

// ---- SoldierHostController::isSameTeam  @ 0x3fa794
/* SoldierHostController::isSameTeam(int) */

undefined1 __thiscall SoldierHostController::isSameTeam(SoldierHostController *this,int param_1)

{
  undefined1 uVar1;
  int iVar2;
  
  if ((param_1 == 0) || (iVar2 = (**(code **)(*(int *)this + 0x1c4))(this), iVar2 != param_1)) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- SoldierHostController::wasLastKillValid  @ 0x3fa7d4
/* SoldierHostController::wasLastKillValid() */

undefined4 __thiscall SoldierHostController::wasLastKillValid(SoldierHostController *this)

{
  bool bVar1;
  CCDictionary *this_00;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  string asStack_10 [4];
  int *local_c;
  
  (**(code **)(*(int *)this + 0x1b8))(auStack_18,this);
  (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
  iVar2 = FUN_007c567c(auStack_18,auStack_14);
  this_00 = peerSoldiers;
  if (iVar2 == 0) {
    uVar3 = 0;
    goto LAB_003fa894;
  }
  (**(code **)(*(int *)this + 0x1b8))(asStack_10,this);
  local_c = (int *)cocos2d::CCDictionary::objectForKey(this_00,asStack_10);
  FUN_007c5914(asStack_10);
  if (local_c == (int *)0x0) {
LAB_003fa888:
    bVar1 = false;
  }
  else {
    pcVar4 = *(code **)(*(int *)this + 0x300);
    uVar3 = (**(code **)(*local_c + 0x1c4))(local_c);
    iVar2 = (*pcVar4)(this,uVar3);
    if (iVar2 == 0) goto LAB_003fa888;
    bVar1 = true;
  }
  if (bVar1) {
    uVar3 = 0;
  }
  else {
    uVar3 = 1;
  }
LAB_003fa894:
  FUN_007c5914(auStack_14);
  FUN_007c5914(auStack_18);
  return uVar3;
}

// ---- SoldierHostController::setBackupStarterWeapon  @ 0x3fa8d8
/* SoldierHostController::setBackupStarterWeapon(ItemType) */

void __thiscall
SoldierHostController::setBackupStarterWeapon(SoldierHostController *this,undefined4 param_2)

{
  *(undefined4 *)(this + 500) = param_2;
  return;
}

// ---- SoldierHostController::getBackupStarterWeapon  @ 0x3fa8ec
/* SoldierHostController::getBackupStarterWeapon() */

undefined4 __thiscall SoldierHostController::getBackupStarterWeapon(SoldierHostController *this)

{
  return *(undefined4 *)(this + 500);
}

// ---- SoldierHostController::getBackupNadeWeapon  @ 0x3fa8fc
/* SoldierHostController::getBackupNadeWeapon() */

undefined4 __thiscall SoldierHostController::getBackupNadeWeapon(SoldierHostController *this)

{
  return *(undefined4 *)(this + 0x1f8);
}

// ---- SoldierHostController::create  @ 0x3fb8c4
/* SoldierHostController::create() */

SoldierHostController * SoldierHostController::create(void)

{
  bool bVar1;
  SoldierHostController *this;
  int iVar2;
  
  this = operator_new(0x200);
  SoldierHostController(this);
  if ((this == (SoldierHostController *)0x0) ||
     (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (SoldierHostController *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SoldierHostController *)0x0;
  }
  return this;
}
