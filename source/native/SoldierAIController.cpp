// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 43 functions

// ---- SoldierAIController::create  @ 0x355b3c
/* SoldierAIController::create() */

SoldierAIController * SoldierAIController::create(void)

{
  bool bVar1;
  SoldierAIController *this;
  int iVar2;
  
  this = operator_new(0x1c8);
  SoldierAIController(this);
  if ((this == (SoldierAIController *)0x0) ||
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
    if (this != (SoldierAIController *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SoldierAIController *)0x0;
  }
  return this;
}

// ---- SoldierAIController::SoldierAIController  @ 0x3eed04
/* SoldierAIController::SoldierAIController() */

SoldierAIController * __thiscall SoldierAIController::SoldierAIController(SoldierAIController *this)

{
  SoldierController::SoldierController((SoldierController *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091afb0;
  *(undefined **)(this + 0xf8) = &DAT_0091b294;
  return this;
}

// ---- SoldierAIController::init  @ 0x3eed40
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003eee0e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::init() */

bool SoldierAIController::init(void)

{
  SoldierController *pSVar1;
  SoldierController *in_r0;
  CCPoint *this;
  bool bVar2;
  float fVar3;
  undefined4 in_s1;
  float extraout_s1;
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
    *(undefined4 *)(local_1c + 0x184) = 0;
    *(undefined4 *)(local_1c + 0x18c) = 0;
    *(undefined4 *)(local_1c + 400) = 0;
    *(undefined4 *)(local_1c + 0x188) = 0;
    *(undefined4 *)(local_1c + 0x194) = 0;
    *(undefined4 *)(local_1c + 0x108) = 0;
    local_1c[0x104] = (SoldierController)0x0;
    local_1c[0x11c] = (SoldierController)0x0;
    *(undefined4 *)(local_1c + 0x198) = 0x42c80000;
    local_1c[0xe6] = (SoldierController)0x0;
    *(undefined4 *)(local_1c + 0x1a4) = 0;
    *(undefined4 *)(local_1c + 0x1a8) = 0;
    *(undefined4 *)(local_1c + 0x19c) = 0x43a28000;
    *(undefined4 *)(local_1c + 0x1a0) = 0x433e0000;
    *(undefined4 *)(local_1c + 0x120) = 0x3f000000;
    fVar3 = (float)FUN_003eda68(0,in_s1,0,&local_30);
    *(undefined4 *)(pSVar1 + 0x128) = local_30;
    *(undefined4 *)(pSVar1 + 300) = uStack_2c;
    *(undefined4 *)(pSVar1 + 0x130) = uStack_28;
    *(undefined4 *)(pSVar1 + 0x134) = uStack_24;
    *(undefined4 *)(local_1c + 0x110) = 0;
    this = (CCPoint *)(local_1c + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_10,fVar3,extraout_s1);
    cocos2d::CCPoint::operator=(this,aCStack_10);
    *(undefined4 *)(local_1c + 0x10c) = 0;
    *(undefined4 *)(local_1c + 0x1b0) = 0;
    *(undefined4 *)(local_1c + 0x1bc) = 4;
    *(undefined4 *)(local_1c + 0x148) = 0;
    *(undefined4 *)(local_1c + 0x14c) = 0;
    *(undefined4 *)(local_1c + 0x154) = 0;
    *(undefined4 *)(local_1c + 0x150) = 0;
    *(undefined4 *)(local_1c + 0x1b8) = 0;
    *(undefined4 *)(local_1c + 0x1b4) = 0x3dcccccd;
    *(SoldierAIController *)(local_1c + 0x166) = (SoldierAIController)0x0;
    *(undefined4 *)(local_1c + 0x178) = 0;
    *(undefined4 *)(local_1c + 0x1c0) = 0;
    *(SoldierAIController *)(local_1c + 0x1c4) = (SoldierAIController)0x0;
    *(SoldierAIController *)(local_1c + 0x1c5) = (SoldierAIController)0x0;
    initBody((SoldierAIController *)local_1c);
    initShape();
    SoldierController::reset(local_1c);
  }
  return bVar2;
}

// ---- SoldierAIController::~SoldierAIController  @ 0x3eeef8
/* WARNING: Removing unreachable block (ram,0x003eef28) */
/* SoldierAIController::~SoldierAIController() */

SoldierAIController * __thiscall
SoldierAIController::~SoldierAIController(SoldierAIController *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091afb0;
  *(undefined **)(this + 0xf8) = &DAT_0091b294;
  SoldierController::~SoldierController((SoldierController *)this);
  return this;
}

// ---- SoldierAIController::~SoldierAIController  @ 0x3eef40
/* SoldierAIController::~SoldierAIController() */

SoldierAIController * __thiscall
SoldierAIController::~SoldierAIController(SoldierAIController *this)

{
  ~SoldierAIController(this);
  operator_delete(this);
  return this;
}

// ---- SoldierAIController::initBody  @ 0x3eef5c
/* SoldierAIController::initBody() */

void __thiscall SoldierAIController::initBody(SoldierAIController *this)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = cpBodyNew(SUB84((double)*(float *)(this + 0x1b4),0),
                    (int)((ulonglong)(double)*(float *)(this + 0x1b4) >> 0x20),
                    SUB84((double)(*(float *)(this + 0x1b4) * 200.0),0),
                    (int)((ulonglong)(double)(*(float *)(this + 0x1b4) * 200.0) >> 0x20));
  *(undefined4 *)(this + 0x138) = uVar1;
  **(undefined4 **)(this + 0x138) = 0x3eeb75;
  iVar2 = *(int *)(this + 0x138);
  *(undefined4 *)(iVar2 + 0x88) = 0;
  *(undefined4 *)(iVar2 + 0x8c) = 0x402e0000;
  *(SoldierAIController **)(*(int *)(this + 0x138) + 0x90) = this;
  return;
}

// ---- SoldierAIController::initShape  @ 0x3eefd0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ef042 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::initShape() */

void SoldierAIController::initShape(void)

{
  float fVar1;
  int in_r0;
  undefined4 uVar2;
  int iVar3;
  undefined4 in_s1;
  float fVar4;
  float fVar5;
  float fVar6;
  double dVar7;
  undefined1 local_78 [4];
  undefined4 uStack_74;
  undefined1 auStack_68 [16];
  undefined1 auStack_58 [16];
  undefined1 auStack_48 [16];
  undefined1 auStack_38 [16];
  undefined1 auStack_28 [16];
  
  fVar1 = playerScale;
  fVar4 = playerScale * 35.0;
  fVar5 = playerScale * 25.0;
  fVar6 = playerScale * 30.0;
  FUN_003eda68(SUB84((double)-fVar6,0),in_s1,SUB84((double)(-fVar5 - 5.0),0),auStack_68);
  FUN_003eda68(SUB84((double)-fVar6,0),in_s1,SUB84((double)(fVar5 - 5.0),0),auStack_58);
  FUN_003eda68(0,in_s1,SUB84((double)(fVar1 * 20.0 + fVar5),0),auStack_48);
  FUN_003eda68(SUB84((double)fVar6,0),in_s1,SUB84((double)(fVar5 - 5.0),0),auStack_38);
  FUN_003eda68(SUB84((double)fVar6,0),in_s1,SUB84((double)(-fVar5 - 5.0),0),auStack_28);
  uVar2 = cpPolyShapeNew(*(undefined4 *)(in_r0 + 0x138),5,auStack_68);
  *(undefined4 *)(in_r0 + 0x13c) = uVar2;
  *(undefined4 *)(*(int *)(in_r0 + 0x13c) + 0x54) = 0x15;
  *(undefined4 *)(*(int *)(in_r0 + 0x13c) + 0x5c) = 0x15;
  *(undefined4 *)(*(int *)(in_r0 + 0x13c) + 0x58) = 0x15;
  iVar3 = *(int *)(in_r0 + 0x13c);
  *(undefined4 *)(iVar3 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x34) = 0x3fe99999;
  iVar3 = *(int *)(in_r0 + 0x13c);
  *(undefined4 *)(iVar3 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x3c) = 0x3fb99999;
  *(int *)(*(int *)(in_r0 + 0x13c) + 0x50) = in_r0;
  uVar2 = *(undefined4 *)(in_r0 + 0x138);
  dVar7 = (double)fVar4 * 0.75;
  FUN_003eda68(0,in_s1,SUB84((double)(fVar1 * 35.0),0),local_78);
  uVar2 = cpCircleShapeNew(uVar2,uStack_74,SUB84(dVar7,0),(int)((ulonglong)dVar7 >> 0x20));
  *(undefined4 *)(in_r0 + 0x140) = uVar2;
  *(undefined4 *)(*(int *)(in_r0 + 0x140) + 0x54) = 0x15;
  *(undefined4 *)(*(int *)(in_r0 + 0x140) + 0x5c) = 0x15;
  *(undefined4 *)(*(int *)(in_r0 + 0x140) + 0x58) = 0x15;
  iVar3 = *(int *)(in_r0 + 0x140);
  *(undefined4 *)(iVar3 + 0x30) = 0;
  *(undefined4 *)(iVar3 + 0x34) = 0x3fe00000;
  iVar3 = *(int *)(in_r0 + 0x140);
  *(undefined4 *)(iVar3 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x3c) = 0x3fb99999;
  *(int *)(*(int *)(in_r0 + 0x140) + 0x50) = in_r0;
  return;
}

// ---- SoldierAIController::remoteUpdateStep  @ 0x3ef230
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ef294 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float) */

void __thiscall
SoldierAIController::remoteUpdateStep
          (SoldierAIController *this,float param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  byte bVar1;
  float *pfVar2;
  int iVar3;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 extraout_r0_01;
  undefined4 extraout_r0_02;
  undefined4 extraout_r1;
  undefined4 uVar4;
  SoldierView *pSVar5;
  code *pcVar6;
  undefined4 uVar7;
  uint in_fpscr;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  float fVar11;
  undefined8 in_d0;
  double dVar12;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined4 uVar13;
  float fVar15;
  double dVar14;
  float fVar16;
  undefined4 local_f8;
  undefined4 uStack_f4;
  CCPoint aCStack_f0 [8];
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
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 uStack_90;
  undefined4 uStack_8c;
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
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  
  pfVar2 = (float *)(**(code **)(**(int **)(this + 0xfc) + 0x50))(*(undefined4 *)(this + 0xfc));
  fVar15 = *pfVar2;
  iVar3 = (**(code **)(**(int **)(this + 0xfc) + 0x50))(*(undefined4 *)(this + 0xfc));
  uVar7 = (undefined4)((ulonglong)in_d0 >> 0x20);
  uVar4 = SUB84((double)fVar15,0);
  FUN_003eda68(uVar4,uVar7,SUB84((double)*(float *)(iVar3 + 4),0),local_e8);
  FUN_003edae8(param_3,uVar7,param_5,in_s3,local_e8[0],in_s5,local_e0,local_88);
  fVar15 = 0.3745 - param_2 * 15.0;
  uVar8 = in_fpscr & 0xfffffff | (uint)(fVar15 < 0.05) << 0x1f | (uint)(fVar15 == 0.05) << 0x1e |
          (uint)(0.05 <= fVar15) << 0x1d;
  if ((int)uVar8 < 0) {
    uVar13 = 0x9999999a;
  }
  else {
    uVar13 = SUB84(0.3745 - (double)(param_2 * 15.0),0);
  }
  FUN_003edb40(local_88[0],uVar7,local_80,in_s3,uVar13,local_d8);
  FUN_003eda90(local_e8[0],uVar7,local_e0,in_s3,local_d8[0],in_s5,local_d0,local_c8);
  SoldierView::getBodyRotation(*(SoldierView **)(this + 0xfc));
  cos((double)CONCAT44(uVar7,uVar4));
  SoldierView::getBodyRotation(*(SoldierView **)(this + 0xfc));
  sin((double)CONCAT44(uVar7,uVar4));
  FUN_003eda68(extraout_r0,uVar7,extraout_r0_00,local_b8);
  dVar12 = cos((double)CONCAT44(uVar7,uVar4));
  sin(dVar12);
  fVar16 = (float)((ulonglong)dVar12 >> 0x20);
  FUN_003eda68(extraout_r0_01,fVar16,extraout_r0_02,local_a8);
  FUN_003edb40(local_b8[0],fVar16,local_b0,in_s3,0x66666666,local_78);
  FUN_003edb40(local_a8[0],fVar16,local_a0,in_s3,0x33333333,local_68);
  FUN_003eda90(local_78[0],fVar16,local_70,in_s3,local_68[0],in_s5,local_60,&local_98);
  fVar15 = (float)FUN_003ede68(local_98,uStack_94,uStack_90,uStack_8c);
  dVar14 = (double)-(fVar15 * 0.017453292);
  if (this[0x159] == (SoldierAIController)0x0) {
    if (this[0x1c4] != (SoldierAIController)0x1) {
      FUN_003edd10(local_c8[0],fVar16,local_c0,*(undefined4 *)(this + 0x138));
      local_f8 = SUB84(dVar14,0);
      uStack_f4 = (undefined4)((ulonglong)dVar14 >> 0x20);
      cpBodySetAngle(*(undefined4 *)(this + 0x138),extraout_r1,local_f8,uStack_f4);
      SoldierView::setIsVisible(*(SoldierView **)(this + 0xfc),true);
    }
  }
  else {
    uVar4 = *(undefined4 *)(this + 0x138);
    FUN_003eda68(0,fVar16,0,local_58);
    FUN_003edd10(local_58[0],fVar16,local_50,uVar4);
    SoldierView::setIsVisible(*(SoldierView **)(this + 0xfc),false);
  }
  fVar11 = SUB84(dVar12,0);
  pSVar5 = *(SoldierView **)(this + 0xfc);
  cocos2d::CCPoint::CCPoint(aCStack_f0,fVar11,fVar16);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar11,fVar16);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_38,(CCPoint *)(this + 0x114));
  SoldierView::updateBody(pSVar5,aCStack_f0,&local_48,-(fVar15 * 0.017453292));
  SoldierView::setHasWeapon(*(SoldierView **)(this + 0xfc),*(int *)(this + 0x148) != 0);
  SoldierView::updateStep(*(SoldierView **)(this + 0xfc),fVar11);
  *(float *)(this + 0x108) = *(float *)(this + 0x108) + param_2;
  if (*(int *)(this + 0x148) != 0) {
    pcVar6 = *(code **)(**(int **)(this + 0x148) + 0x304);
    uVar7 = *(undefined4 *)(this + 0x148);
    uVar4 = (**(code **)(*(int *)this + 0x23c))(this);
    (*pcVar6)(uVar7,uVar4);
    (**(code **)(**(int **)(this + 0x148) + 0x1b0))(*(undefined4 *)(this + 0x148),param_2);
  }
  if (*(int *)(this + 0x150) == 0) {
    SoldierView::setDualWieldConfiguration(*(SoldierView **)(this + 0xfc),false);
  }
  else {
    pcVar6 = *(code **)(**(int **)(this + 0x150) + 0x304);
    uVar7 = *(undefined4 *)(this + 0x150);
    uVar4 = (**(code **)(*(int *)this + 0x284))(this);
    (*pcVar6)(uVar7,uVar4);
    (**(code **)(**(int **)(this + 0x150) + 0x1b0))(*(undefined4 *)(this + 0x150),param_2);
    SoldierView::setDualWieldConfiguration(*(SoldierView **)(this + 0xfc),true);
  }
  fVar15 = *(float *)(this + 0x10c);
  uVar10 = uVar8 & 0xfffffff | (uint)(fVar15 < 0.0) << 0x1f | (uint)(fVar15 == 0.0) << 0x1e;
  uVar9 = uVar10 | (uint)NAN(fVar15) << 0x1c;
  bVar1 = (byte)(uVar10 >> 0x18);
  if ((bool)(bVar1 >> 6 & 1) || bVar1 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) {
    *(undefined4 *)(this + 0x108) = 0x3f400000;
  }
  else {
    fVar15 = *(float *)(this + 0x108);
    uVar8 = uVar8 & 0xfffffff | (uint)(fVar15 < 0.75) << 0x1f | (uint)(fVar15 == 0.75) << 0x1e;
    uVar9 = uVar8 | (uint)NAN(fVar15) << 0x1c;
    bVar1 = (byte)(uVar8 >> 0x18);
    if (!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) {
      Sound::playSoundPositionVP
                (sndEng,8,*(undefined4 *)(*(int *)(this + 0x138) + 0x28),
                 *(undefined4 *)(*(int *)(this + 0x138) + 0x2c));
      *(undefined4 *)(this + 0x108) = 0;
    }
  }
  *(float *)(this + 0x1c0) = *(float *)(this + 0x1c0) + param_2;
  (**(code **)(*(int *)this + 0x1b0))(&local_48,this);
  dVar12 = (double)cpvlength(local_48,uStack_44,uStack_40,uStack_3c);
  fVar15 = *(float *)(this + 0x1c0);
  fVar16 = 50.0 / (float)dVar12;
  uVar8 = uVar9 & 0xfffffff | (uint)(fVar15 < fVar16) << 0x1f | (uint)(fVar15 == fVar16) << 0x1e;
  uVar10 = uVar8 | (uint)(NAN(fVar15) || NAN(fVar16)) << 0x1c;
  bVar1 = (byte)(uVar8 >> 0x18);
  if (((!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar10 >> 0x1c) & 1)) &&
      (this[0xe6] != (SoldierAIController)0x0)) && (this[0x15a] != (SoldierAIController)0x1)) {
    *(undefined4 *)(this + 0x1c0) = 0;
    uVar4 = sndEng;
    (**(code **)(*(int *)this + 0x1ac))(&local_38,this);
    uVar7 = FUN_003ed95c();
    VectorSignedToFloat(uVar7,(byte)(uVar10 >> 0x16) & 3);
    Sound::playSoundPositionVP(uVar4,10,local_38,uStack_34);
  }
  this[0xe8] = this[0xe6];
  this[0xe6] = (SoldierAIController)0x0;
  return;
}

// ---- SoldierAIController::setFireAngle  @ 0x3f0920
/* SoldierAIController::setFireAngle(float) */

void __thiscall SoldierAIController::setFireAngle(SoldierAIController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x110) = in_r1;
  return;
}

// ---- SoldierAIController::getDualFireAngle  @ 0x3f0934
/* SoldierAIController::getDualFireAngle() */

undefined4 __thiscall SoldierAIController::getDualFireAngle(SoldierAIController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::getDualFiringAngle(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierAIController::getFireAngle  @ 0x3f0950
/* SoldierAIController::getFireAngle() */

undefined4 __thiscall SoldierAIController::getFireAngle(SoldierAIController *this)

{
  undefined4 uVar1;
  
  uVar1 = SoldierView::getFiringAngle(*(SoldierView **)(this + 0xfc));
  return uVar1;
}

// ---- SoldierAIController::setThrust  @ 0x3f096c
/* SoldierAIController::setThrust(bool) */

void __thiscall SoldierAIController::setThrust(SoldierAIController *this,bool param_1)

{
  this[0x104] = (SoldierAIController)param_1;
  return;
}

// ---- SoldierAIController::getThrustFactor  @ 0x3f0984
/* SoldierAIController::getThrustFactor() */

double __thiscall SoldierAIController::getThrustFactor(SoldierAIController *this)

{
  return (double)*(float *)(this + 0x10c);
}

// ---- SoldierAIController::setPower  @ 0x3f09a0
/* SoldierAIController::setPower(float) */

void __thiscall SoldierAIController::setPower(SoldierAIController *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x198) = in_r1;
  return;
}

// ---- SoldierAIController::getPower  @ 0x3f09b4
/* SoldierAIController::getPower() */

undefined4 __thiscall SoldierAIController::getPower(SoldierAIController *this)

{
  return *(undefined4 *)(this + 0x198);
}

// ---- SoldierAIController::setSoldierView  @ 0x3f09c4
/* SoldierAIController::setSoldierView(SoldierView*) */

void __thiscall SoldierAIController::setSoldierView(SoldierAIController *this,SoldierView *param_1)

{
  *(SoldierView **)(this + 0xfc) = param_1;
  return;
}

// ---- SoldierAIController::getSoldierView  @ 0x3f09d8
/* SoldierAIController::getSoldierView() */

undefined4 __thiscall SoldierAIController::getSoldierView(SoldierAIController *this)

{
  return *(undefined4 *)(this + 0xfc);
}

// ---- SoldierAIController::addWeapon  @ 0x3f09e8
/* SoldierAIController::addWeapon(Weapon*) */

void __thiscall SoldierAIController::addWeapon(SoldierAIController *this,Weapon *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  
  if (param_1 == (Weapon *)0x0) {
    return;
  }
  iVar2 = (**(code **)(*(int *)param_1 + 0xe4))(param_1);
  if (iVar2 != 0) {
    piVar3 = (int *)(**(code **)(*(int *)param_1 + 0xe4))(param_1);
    (**(code **)(*piVar3 + 0xf4))(piVar3,param_1,0);
  }
  iVar2 = (**(code **)(*(int *)param_1 + 0x2fc))(param_1);
  if ((iVar2 == 0) || (iVar2 = (**(code **)(*(int *)param_1 + 0x2ec))(param_1), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
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
    (**(code **)(*(int *)this + 0x214))(this,param_1);
  }
  else if ((*(int *)(this + 0x148) == 0) || (*(int *)(this + 0x14c) != 0)) {
    if (*(int *)(this + 0x148) != 0) {
      (**(code **)(*(int *)this + 0x208))(this);
      (**(code **)(*(int *)this + 0x214))(this,param_1);
    }
  }
  else {
    (**(code **)(*(int *)this + 0x218))(this,param_1);
    (**(code **)(*(int *)this + 0x2ac))(this);
  }
  return;
}

// ---- SoldierAIController::addPrimaryWeapon  @ 0x3f0b90
/* SoldierAIController::addPrimaryWeapon(Weapon*) */

void __thiscall SoldierAIController::addPrimaryWeapon(SoldierAIController *this,Weapon *param_1)

{
  double dVar1;
  CCNotificationCenter *pCVar2;
  undefined4 uVar3;
  int iVar4;
  code *pcVar5;
  SoldierView *this_00;
  float fVar6;
  undefined1 auStack_14 [4];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x148) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar5 = *(code **)(**(int **)(this + 0x148) + 0x1f0);
    uVar3 = *(undefined4 *)(this + 0x148);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar5)(uVar3,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x148) + 0x23c))(*(undefined4 *)(this + 0x148),this + 0xf8);
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (pCVar2,"PeerWeaponRemove",*(CCObject **)(this + 0x148));
    this_00 = *(SoldierView **)(this + 0xfc);
    fVar6 = (float)(**(code **)(*(int *)param_1 + 0x2e4))(param_1);
    SoldierView::setWeaponAngleOffset(this_00,fVar6);
    (**(code **)(**(int **)(this + 0x148) + 0x1d4))(*(undefined4 *)(this + 0x148));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    iVar4 = *(int *)(this + 0x138);
    Sound::playSoundPosition
              (sndEng,4,*(undefined4 *)(iVar4 + 0x28),*(undefined4 *)(iVar4 + 0x2c),
               *(undefined4 *)(iVar4 + 0x30),*(undefined4 *)(iVar4 + 0x34));
    (**(code **)(*(int *)this + 0x20c))(this);
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    dVar1 = (double)cocos2d::CCNotificationCenter::postNotification
                              (pCVar2,"PeerWeaponChange",*(CCObject **)(this + 0x148));
    SoldierView::setPrimaryMoveRotation(dVar1);
  }
  return;
}

// ---- SoldierAIController::addSecondaryWeapon  @ 0x3f0d10
/* SoldierAIController::addSecondaryWeapon(Weapon*) */

void __thiscall SoldierAIController::addSecondaryWeapon(SoldierAIController *this,Weapon *param_1)

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
              (this_00,"PeerWeaponRemove",*(CCObject **)(this + 0x14c));
    (**(code **)(**(int **)(this + 0x14c) + 0x1d8))(*(undefined4 *)(this + 0x14c));
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x14c),0);
  }
  return;
}

// ---- SoldierAIController::addDualWeapon  @ 0x3f0dfc
/* SoldierAIController::addDualWeapon(Weapon*) */

void __thiscall SoldierAIController::addDualWeapon(SoldierAIController *this,Weapon *param_1)

{
  CCNotificationCenter *pCVar1;
  undefined4 uVar2;
  int iVar3;
  code *pcVar4;
  undefined4 extraout_s1;
  undefined1 auStack_14 [4];
  
  if (param_1 != (Weapon *)0x0) {
    *(Weapon **)(this + 0x150) = param_1;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar4 = *(code **)(**(int **)(this + 0x150) + 0x1f0);
    uVar2 = *(undefined4 *)(this + 0x150);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar4)(uVar2,auStack_14);
    FUN_007c5914(auStack_14);
    (**(code **)(**(int **)(this + 0x150) + 0x23c))(*(undefined4 *)(this + 0x150),this + 0xf8);
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (pCVar1,"PeerWeaponRemove",*(CCObject **)(this + 0x150));
    (**(code **)(**(int **)(this + 0x150) + 0x1dc))(*(undefined4 *)(this + 0x150));
    if (*(char *)(*(int *)(this + 0x150) + 0x185) == '\0') {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x114) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x114),*(undefined4 *)(this + 0x150),1);
    }
    else {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x118) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x118),*(undefined4 *)(this + 0x150),1);
    }
    iVar3 = *(int *)(this + 0x138);
    Sound::playSoundPosition
              (sndEng,4,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
               *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34));
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    uVar2 = cocos2d::CCNotificationCenter::postNotification
                      (pCVar1,"PeerWeaponChange",*(CCObject **)(this + 0x148));
    SoldierView::setDualMoveRotation((double)CONCAT44(extraout_s1,uVar2));
  }
  return;
}

// ---- SoldierAIController::addSideWeapon  @ 0x3f0f88
/* SoldierAIController::addSideWeapon(Weapon*) */

void __thiscall SoldierAIController::addSideWeapon(SoldierAIController *this,Weapon *param_1)

{
  CCNotificationCenter *pCVar1;
  int iVar2;
  code *pcVar3;
  undefined1 auStack_14 [8];
  
  if ((param_1 != (Weapon *)0x0) && (*(int *)(this + 0x160) < *(int *)(this + 0x1bc))) {
    *(int *)(this + 0x160) = *(int *)(this + 0x160) + 1;
    iVar2 = *(int *)(this + 0x138);
    Sound::playSoundPosition
              (sndEng,0x11,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
               *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34));
    pcVar3 = *(code **)(*(int *)param_1 + 0x1f0);
    (**(code **)(*(int *)this + 0x1c0))(auStack_14,this);
    (*pcVar3)(param_1,auStack_14);
    FUN_007c5914(auStack_14);
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar1,"PeerWeaponRemove",(CCObject *)param_1);
    if (*(int *)(this + 0x154) == 0) {
      *(Weapon **)(this + 0x154) = param_1;
      cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
      (**(code **)(**(int **)(this + 0x154) + 0x1d4))(*(undefined4 *)(this + 0x154));
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xcc))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),3);
      pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification
                (pCVar1,"PeerWeaponChange",*(CCObject **)(this + 0x148));
    }
  }
  return;
}

// ---- SoldierAIController::removePrimaryWeapon  @ 0x3f10bc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f11e6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::removePrimaryWeapon() */

void SoldierAIController::removePrimaryWeapon(void)

{
  int *in_r0;
  float *pfVar1;
  undefined4 uVar2;
  CCNotificationCenter *this;
  int iVar3;
  int iVar4;
  code *pcVar5;
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
  undefined1 auStack_24 [4];
  
  if (in_r0[0x52] != 0) {
    pcVar5 = *(code **)(*(int *)in_r0[0x52] + 0x1f0);
    iVar3 = in_r0[0x52];
    local_2c = in_r0;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,&DAT_007e7ed8,auStack_28);
    (*pcVar5)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    FUN_0079a3fc(auStack_28);
    (**(code **)(*(int *)local_2c[0x52] + 0x23c))(local_2c[0x52],0);
    (**(code **)(**(int **)(local_2c[0x3f] + 0x110) + 0xf4))
              (*(undefined4 *)(local_2c[0x3f] + 0x110),local_2c[0x52],0);
    pcVar5 = *(code **)(*(int *)local_2c[0x52] + 0x200);
    iVar3 = local_2c[0x52];
    (**(code **)(*hostSoldier + 0x1c0))(auStack_24,hostSoldier);
    (*pcVar5)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    iVar4 = *(int *)(local_2c[0x52] + 0xe8);
    pfVar1 = (float *)(**(code **)(*local_2c + 0x50))(local_2c);
    fVar7 = *pfVar1;
    iVar3 = (**(code **)(*local_2c + 0x50))(local_2c);
    FUN_003eda68(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
    *(undefined4 *)(iVar4 + 0x28) = local_40;
    *(undefined4 *)(iVar4 + 0x2c) = uStack_3c;
    *(undefined4 *)(iVar4 + 0x30) = uStack_38;
    *(undefined4 *)(iVar4 + 0x34) = uStack_34;
    pcVar5 = *(code **)(*(int *)local_2c[0x52] + 0x4c);
    iVar3 = local_2c[0x52];
    uVar2 = (**(code **)(*local_2c + 0x50))(local_2c);
    (*pcVar5)(iVar3,uVar2);
    iVar3 = *(int *)(local_2c[0x52] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x38);
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003ed95c();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003eda68(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 50.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 50.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x52] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 10.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",(CCObject *)local_2c[0x52]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x52]);
    local_2c[0x52] = 0;
  }
  return;
}

// ---- SoldierAIController::removeRemotePrimaryWeapon  @ 0x3f136c
/* SoldierAIController::removeRemotePrimaryWeapon() */

void __thiscall SoldierAIController::removeRemotePrimaryWeapon(SoldierAIController *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  if (*(int *)(this + 0x148) != 0) {
    pcVar2 = *(code **)(**(int **)(this + 0x148) + 0x1f0);
    uVar1 = *(undefined4 *)(this + 0x148);
    FUN_0079a3f4(auStack_18);
    FUN_007c6a60(auStack_14,&DAT_007e7ed8,auStack_18);
    (*pcVar2)(uVar1,auStack_14);
    FUN_007c5914(auStack_14);
    FUN_0079a3fc(auStack_18);
    (**(code **)(**(int **)(this + 0x148) + 0x23c))(*(undefined4 *)(this + 0x148),0);
    (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x110) + 0xf4))
              (*(undefined4 *)(*(int *)(this + 0xfc) + 0x110),*(undefined4 *)(this + 0x148),0);
    *(undefined4 *)(this + 0x148) = 0;
  }
  return;
}

// ---- SoldierAIController::removeSecondaryWeapon  @ 0x3f1430
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f154e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::removeSecondaryWeapon() */

void SoldierAIController::removeSecondaryWeapon(void)

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
    FUN_007c6a60(auStack_24,&DAT_007e7ed8,auStack_28);
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
    FUN_003eda68(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
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
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003ed95c();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003eda68(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 25.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 25.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x53] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 5.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (this,"PeerWeaponCreate",(CCObject *)local_2c[0x53]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x53]);
    local_2c[0x53] = 0;
  }
  return;
}

// ---- SoldierAIController::removeDualWeapon  @ 0x3f16c8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f182a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::removeDualWeapon() */

void SoldierAIController::removeDualWeapon(void)

{
  int *in_r0;
  float *pfVar1;
  undefined4 uVar2;
  CCNotificationCenter *this;
  int iVar3;
  int iVar4;
  code *pcVar5;
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
  undefined1 auStack_24 [4];
  
  if (in_r0[0x54] != 0) {
    pcVar5 = *(code **)(*(int *)in_r0[0x54] + 0x1f0);
    iVar3 = in_r0[0x54];
    local_2c = in_r0;
    FUN_0079a3f4(auStack_28);
    FUN_007c6a60(auStack_24,&DAT_007e7ed8,auStack_28);
    (*pcVar5)(iVar3,auStack_24);
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
    pcVar5 = *(code **)(*(int *)local_2c[0x54] + 0x200);
    iVar3 = local_2c[0x54];
    (**(code **)(*hostSoldier + 0x1c0))(auStack_24,hostSoldier);
    (*pcVar5)(iVar3,auStack_24);
    FUN_007c5914(auStack_24);
    iVar4 = *(int *)(local_2c[0x54] + 0xe8);
    pfVar1 = (float *)(**(code **)(*local_2c + 0x50))(local_2c);
    fVar7 = *pfVar1;
    iVar3 = (**(code **)(*local_2c + 0x50))(local_2c);
    FUN_003eda68(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
    *(undefined4 *)(iVar4 + 0x28) = local_40;
    *(undefined4 *)(iVar4 + 0x2c) = uStack_3c;
    *(undefined4 *)(iVar4 + 0x30) = uStack_38;
    *(undefined4 *)(iVar4 + 0x34) = uStack_34;
    pcVar5 = *(code **)(*(int *)local_2c[0x54] + 0x4c);
    iVar3 = local_2c[0x54];
    uVar2 = (**(code **)(*local_2c + 0x50))(local_2c);
    (*pcVar5)(iVar3,uVar2);
    iVar3 = *(int *)(local_2c[0x54] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x38);
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003ed95c();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003eda68(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 50.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 50.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x54] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 10.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this,"WeaponCreate",(CCObject *)local_2c[0x54]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x54]);
    local_2c[0x54] = 0;
  }
  return;
}

// ---- SoldierAIController::removeSideWeapon  @ 0x3f19b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f1ab4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::removeSideWeapon() */

void SoldierAIController::removeSideWeapon(void)

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
    FUN_007c6a60(auStack_24,&DAT_007e7ed8,auStack_28);
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
    FUN_003eda68(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
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
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    dVar9 = *(double *)(local_2c[0x4e] + 0x40);
    uVar2 = FUN_003ed95c();
    fVar6 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    FUN_003eda68(SUB84(dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 25.0),0),in_s1,
                 SUB84(dVar9 + (double)((fVar6 / 1.0737418e+09 - 1.0) * 25.0),0),&local_40);
    *(undefined4 *)(iVar3 + 0x38) = local_40;
    *(undefined4 *)(iVar3 + 0x3c) = uStack_3c;
    *(undefined4 *)(iVar3 + 0x40) = uStack_38;
    *(undefined4 *)(iVar3 + 0x44) = uStack_34;
    iVar3 = *(int *)(local_2c[0x55] + 0xe8);
    dVar8 = *(double *)(local_2c[0x4e] + 0x60);
    uVar2 = FUN_003ed95c();
    fVar7 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
    *(double *)(iVar3 + 0x60) = dVar8 + (double)((fVar7 / 1.0737418e+09 - 1.0) * 5.0);
    this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification
              (this,"PeerWeaponCreate",(CCObject *)local_2c[0x55]);
    cocos2d::CCObject::release((CCObject *)local_2c[0x55]);
    local_2c[0x58] = 0;
    local_2c[0x55] = 0;
  }
  return;
}

// ---- SoldierAIController::switchWeapons  @ 0x3f1c34
/* SoldierAIController::switchWeapons() */

void __thiscall SoldierAIController::switchWeapons(SoldierAIController *this)

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
                              (this_00,"PeerWeaponChange",*(CCObject **)(this + 0x148));
    SoldierView::setPrimaryMoveRotation(dVar1);
  }
  return;
}

// ---- SoldierAIController::fire  @ 0x3f1db4
/* SoldierAIController::fire(float) */

void __thiscall SoldierAIController::fire(SoldierAIController *this,float param_1)

{
  bool bVar1;
  short sVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 in_r1;
  code *pcVar6;
  undefined4 uVar7;
  float extraout_s0;
  
  if (*(int *)(this + 0x148) != 0) {
    (**(code **)(**(int **)(this + 0x148) + 0x25c))(*(undefined4 *)(this + 0x148),in_r1);
    sVar2 = (**(code **)(**(int **)(this + 0x148) + 0x284))(*(undefined4 *)(this + 0x148));
    param_1 = extraout_s0;
    if (0 < sVar2) {
      param_1 = (float)SoldierView::hideSight();
    }
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
        goto LAB_003f1ede;
      }
    }
  }
  bVar1 = false;
LAB_003f1ede:
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
  sVar2 = (**(code **)(**(int **)(this + 0x150) + 0x284))(*(undefined4 *)(this + 0x150));
  if (0 < sVar2) {
    SoldierView::hideSight();
  }
  return;
}

// ---- SoldierAIController::hasPower  @ 0x3f1fc0
/* SoldierAIController::hasPower() */

bool __thiscall SoldierAIController::hasPower(SoldierAIController *this)

{
  return 0.0 < *(float *)(this + 0x198);
}

// ---- SoldierAIController::activatePlayer  @ 0x3f1fe0
/* SoldierAIController::activatePlayer() */

void __thiscall SoldierAIController::activatePlayer(SoldierAIController *this)

{
  *(undefined4 *)(this + 0x144) = 0x42c80000;
  SoldierView::setIsVisible(*(SoldierView **)(this + 0xfc),true);
  this[0x159] = (SoldierAIController)0x0;
  return;
}

// ---- SoldierAIController::setAccelerometerY  @ 0x3f2010
/* SoldierAIController::setAccelerometerY(float) */

void __thiscall SoldierAIController::setAccelerometerY(SoldierAIController *this,float param_1)

{
  float in_r1;
  int iVar1;
  
  if (this[0x104] != (SoldierAIController)0x0) {
    if (4.0 < *(float *)(this + 0x194)) {
      if ((int)((uint)(in_r1 < -0.5) << 0x1f) < 0) {
        iVar1 = *(int *)(this + 0x138);
        *(undefined4 *)(iVar1 + 0x60) = 0;
        *(undefined4 *)(iVar1 + 100) = 0x402e0000;
        *(undefined4 *)(this + 0x194) = 0;
      }
      else if (0.5 < in_r1) {
        iVar1 = *(int *)(this + 0x138);
        *(undefined4 *)(iVar1 + 0x60) = 0;
        *(undefined4 *)(iVar1 + 100) = 0xc02e0000;
        *(undefined4 *)(this + 0x194) = 0;
      }
    }
  }
  return;
}

// ---- SoldierAIController::checkMeleeCollision  @ 0x3f20a0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f20f6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::checkMeleeCollision() */

void SoldierAIController::checkMeleeCollision(void)

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
  int local_b0;
  int iStack_ac;
  int iStack_a8;
  int iStack_a4;
  int *local_9c;
  undefined1 auStack_98 [4];
  undefined1 auStack_94 [4];
  undefined1 auStack_90 [4];
  undefined1 auStack_8c [4];
  undefined4 local_88;
  int local_84;
  int *local_80;
  undefined4 local_7c;
  undefined4 local_78 [2];
  undefined4 local_70;
  undefined4 local_68 [2];
  undefined4 local_60;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  
  local_88 = 0x280;
  local_9c = in_r0;
  (**(code **)(*(int *)in_r0[0x52] + 800))(local_68,in_r0[0x52]);
  FUN_003edae8(local_68[0],in_s1,local_60,in_s3,(int)*(undefined8 *)(local_9c[0x4e] + 0x28),in_s5,
               (int)*(undefined8 *)(local_9c[0x4e] + 0x30),local_78);
  iVar5 = local_9c[0x4e];
  FUN_003edc1c(local_78[0],in_s1,local_70,local_58);
  uVar4 = (**(code **)(*(int *)local_9c[0x52] + 0x2a0))(local_9c[0x52]);
  fVar8 = (float)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  fVar9 = (float)local_9c[0x5e] * 75.0 + 25.0;
  uVar1 = in_fpscr & 0xfffffff | (uint)(fVar8 < fVar9) << 0x1f | (uint)(fVar8 == fVar9) << 0x1e;
  uVar7 = uVar1 | (uint)(NAN(fVar8) || NAN(fVar9)) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar7 >> 0x1c) & 1)) {
    uVar4 = (**(code **)(*(int *)local_9c[0x52] + 0x2a0))(local_9c[0x52]);
    fVar8 = (float)VectorSignedToFloat(uVar4,(byte)(uVar7 >> 0x16) & 3);
  }
  else {
    fVar8 = (float)local_9c[0x5e] * 75.0 + 25.0;
  }
  FUN_003edb40(local_58[0],in_s1,local_50,in_s3,SUB84((double)fVar8,0),local_48);
  piVar3 = local_9c;
  FUN_003eda90((int)*(undefined8 *)(iVar5 + 0x28),in_s1,(int)*(undefined8 *)(iVar5 + 0x30),in_s3,
               local_48[0],in_s5,local_40,&local_b0);
  piVar3[0x5a] = local_b0;
  piVar3[0x5b] = iStack_ac;
  piVar3[0x5c] = iStack_a8;
  piVar3[0x5d] = iStack_a4;
  iVar5 = local_9c[0x4e];
  local_84 = cpSpaceSegmentQueryFirst
                       (space,*(undefined4 *)(iVar5 + 0x34),*(undefined4 *)(iVar5 + 0x28),
                        *(undefined4 *)(iVar5 + 0x2c));
  local_80 = (int *)0x0;
  local_7c = 0;
  FUN_0079a3f4(auStack_8c);
  FUN_007c6a60(auStack_98,&DAT_007e7ed8,auStack_8c);
  FUN_0079a3fc(auStack_8c);
  if (local_84 != 0) {
    if (*(int *)(local_84 + 0x5c) == 0x84) {
      local_7c = *(undefined4 *)(local_84 + 0x50);
      pcVar6 = *(code **)(*local_9c + 0x2c8);
      (**(code **)(*local_9c + 0x1c0))(auStack_8c,local_9c);
      (*pcVar6)(local_9c,auStack_8c);
      FUN_007c5914(auStack_8c);
    }
    else if (*(int *)(local_84 + 0x5c) == 0x241) {
      local_80 = *(int **)(local_84 + 0x50);
      (**(code **)(*local_80 + 0x1c0))(auStack_94,local_80);
      FUN_007c52e8(auStack_98,auStack_94);
      FUN_007c5914(auStack_94);
      pcVar6 = *(code **)(*local_9c + 0x2c8);
      FUN_007c64e8(auStack_90,auStack_98);
      (*pcVar6)(local_9c,auStack_90);
      FUN_007c5914(auStack_90);
    }
  }
  FUN_007c5914(auStack_98);
  return;
}

// ---- SoldierAIController::meleeAttack  @ 0x3f2350
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003f23a4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SoldierAIController::meleeAttack() */

void __thiscall SoldierAIController::meleeAttack(SoldierAIController *this)

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
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  __x = cos(in_d0);
  sin(__x);
  uVar1 = (undefined4)((ulonglong)__x >> 0x20);
  FUN_003eda68(extraout_r0,uVar1,extraout_r0_00,local_30);
  FUN_003edc1c(local_30[0],uVar1,local_28,local_40);
  uVar4 = *(undefined4 *)(this + 0x138);
  FUN_003edb40(local_40[0],uVar1,local_38,in_s3,SUB84((double)(*(float *)(this + 0x1b4) * 200.0),0),
               local_20);
  FUN_003edd3c(local_20[0],uVar1,local_18,in_s3,0,in_s5,0,uVar4);
  Sound::playSoundPosition
            (sndEng,2,*(undefined4 *)(*(int *)(this + 0x138) + 0x28),
             *(undefined4 *)(*(int *)(this + 0x138) + 0x2c));
  SoldierView::setPrimaryMoveRotation(__x);
  SoldierView::setFiringAngleOffset(*(SoldierView **)(this + 0xfc),SUB84(__x,0));
  this[0x166] = (SoldierAIController)0x1;
  iVar2 = *(int *)(this + 0x138);
  uVar4 = *(undefined4 *)(iVar2 + 0x2c);
  uVar1 = *(undefined4 *)(iVar2 + 0x30);
  uVar3 = *(undefined4 *)(iVar2 + 0x34);
  *(undefined4 *)(this + 0x168) = *(undefined4 *)(iVar2 + 0x28);
  *(undefined4 *)(this + 0x16c) = uVar4;
  *(undefined4 *)(this + 0x170) = uVar1;
  *(undefined4 *)(this + 0x174) = uVar3;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerPunch",(CCObject *)0x0);
  return;
}

// ---- SoldierAIController::endMeleeAttack  @ 0x3f24bc
/* SoldierAIController::endMeleeAttack(std::string) */

void __thiscall SoldierAIController::endMeleeAttack(SoldierAIController *this,string *param_2)

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
  CCNotificationCenter *this_00;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 extraout_s0_01;
  undefined4 extraout_s0_02;
  undefined4 extraout_s1;
  double dVar13;
  undefined4 extraout_s1_00;
  string asStack_48 [4];
  float local_44;
  float local_40;
  CCObject *local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  
  *(undefined4 *)(this + 0x178) = 0;
  this[0x166] = (SoldierAIController)0x0;
  iVar1 = FUN_007c505c(param_2);
  if (iVar1 != 0) {
    local_38 = *(undefined4 *)(this + 0x168);
    uStack_34 = *(undefined4 *)(this + 0x16c);
    local_30 = *(undefined4 *)(this + 0x170);
    uStack_2c = *(undefined4 *)(this + 0x174);
    fVar2 = (float)(**(code **)(*(int *)this + 0x23c))(this);
    local_44 = -(fVar2 * 0.017453292);
    uVar3 = (**(code **)(**(int **)(this + 0x148) + 0x29c))(*(undefined4 *)(this + 0x148));
    local_40 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    pCVar4 = (CCObject *)cocos2d::CCFloat::create(extraout_s0);
    uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
    dVar13 = cos((double)CONCAT44(extraout_s1,extraout_s0_01));
    uVar5 = cocos2d::CCFloat::create(SUB84(dVar13,0));
    dVar13 = sin((double)CONCAT44(extraout_s1_00,extraout_s0_02));
    uVar6 = cocos2d::CCFloat::create(SUB84(dVar13,0));
    uVar7 = cocos2d::CCInteger::create(0);
    uVar8 = cocos2d::CCInteger::create((int)local_40);
    uVar9 = cocos2d::CCInteger::create(0);
    uVar10 = cocos2d::CCInteger::create(0);
    uVar11 = cocos2d::CCString::create(param_2);
    (**(code **)(*(int *)this + 0x1c0))(asStack_48,this);
    uVar12 = cocos2d::CCString::create(asStack_48);
    local_3c = (CCObject *)
               cocos2d::CCArray::create
                         (pCVar4,uVar3,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,0);
    FUN_007c5914(asStack_48);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerDamaged",local_3c);
  }
  return;
}

// ---- SoldierAIController::getMassFactor  @ 0x3f2664
/* SoldierAIController::getMassFactor() */

undefined4 __thiscall SoldierAIController::getMassFactor(SoldierAIController *this)

{
  return *(undefined4 *)(this + 0x1b4);
}

// ---- SoldierAIController::throwDual  @ 0x3f2674
/* SoldierAIController::throwDual() */

void __thiscall SoldierAIController::throwDual(SoldierAIController *this)

{
  double dVar1;
  CCNotificationCenter *pCVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  int iVar10;
  float fVar11;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  string asStack_38 [4];
  CCObject *local_34;
  
  if (0 < *(int *)(this + 0x160)) {
    *(int *)(this + 0x160) = *(int *)(this + 0x160) + -1;
    iVar10 = *(int *)(this + 0x138);
    dVar1 = (double)Sound::playSoundPosition
                              (sndEng,3,*(undefined4 *)(iVar10 + 0x28),
                               *(undefined4 *)(iVar10 + 0x2c),*(undefined4 *)(iVar10 + 0x30),
                               *(undefined4 *)(iVar10 + 0x34));
    SoldierView::setDualMoveRotation(dVar1);
    if (*(int *)(this + 0x150) != 0) {
      (**(code **)(*(int *)this + 0x20c))(this);
      pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification
                (pCVar2,"PeerWeaponChange",*(CCObject **)(this + 0x148));
    }
    fVar11 = (float)SoldierView::getDualArmPoint();
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar11);
    uVar4 = cocos2d::CCFloat::create(extraout_s0);
    fVar11 = (float)(**(code **)(*(int *)this + 0x23c))(this);
    uVar5 = cocos2d::CCFloat::create(fVar11);
    uVar6 = cocos2d::CCFloat::create(extraout_s0_00);
    uVar7 = cocos2d::CCFloat::create(extraout_s0_01);
    (**(code **)(*(int *)this + 0x1c0))(asStack_38,this);
    uVar8 = cocos2d::CCString::create(asStack_38);
    iVar10 = (**(code **)(**(int **)(this + 0x154) + 0x27c))(*(undefined4 *)(this + 0x154));
    uVar9 = cocos2d::CCInteger::create(iVar10);
    local_34 = (CCObject *)cocos2d::CCArray::create(pCVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,0);
    FUN_007c5914(asStack_38);
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar2,"GrenadeLaunched",local_34);
    if ((*(int *)(this + 0x160) == 0) && (*(int *)(this + 0x154) != 0)) {
      (**(code **)(**(int **)(*(int *)(this + 0xfc) + 0x11c) + 0xf4))
                (*(undefined4 *)(*(int *)(this + 0xfc) + 0x11c),*(undefined4 *)(this + 0x154),0);
      *(undefined4 *)(this + 0x154) = 0;
    }
  }
  return;
}

// ---- SoldierAIController::getGrenadeCount  @ 0x3f2868
/* SoldierAIController::getGrenadeCount() */

undefined4 __thiscall SoldierAIController::getGrenadeCount(SoldierAIController *this)

{
  return *(undefined4 *)(this + 0x160);
}

// ---- SoldierAIController::getBodyVelocity  @ 0x3f2878
/* SoldierAIController::getBodyVelocity() */

undefined4 * SoldierAIController::getBodyVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x138);
  uVar1 = *(undefined4 *)(iVar3 + 0x3c);
  uVar2 = *(undefined4 *)(iVar3 + 0x40);
  uVar4 = *(undefined4 *)(iVar3 + 0x44);
  *in_r0 = *(undefined4 *)(iVar3 + 0x38);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- SoldierAIController::getBodyPosition  @ 0x3f289c
/* SoldierAIController::getBodyPosition() */

undefined4 * SoldierAIController::getBodyPosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x138);
  uVar1 = *(undefined4 *)(iVar3 + 0x2c);
  uVar2 = *(undefined4 *)(iVar3 + 0x30);
  uVar4 = *(undefined4 *)(iVar3 + 0x34);
  *in_r0 = *(undefined4 *)(iVar3 + 0x28);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- SoldierAIController::isCharging  @ 0x3f28c0
/* SoldierAIController::isCharging() */

SoldierAIController __thiscall SoldierAIController::isCharging(SoldierAIController *this)

{
  return this[0x1ac];
}

// ---- SoldierAIController::weaponDidFire  @ 0x3f28d0
/* SoldierAIController::weaponDidFire(Item*) */

void __thiscall SoldierAIController::weaponDidFire(SoldierAIController *this,Item *param_1)

{
  bool bVar1;
  int iVar2;
  Item *pIVar3;
  CCNotificationCenter *this_00;
  CCObject *pCVar4;
  code *pcVar5;
  int iVar6;
  undefined4 uVar7;
  undefined4 extraout_s1;
  undefined4 extraout_s1_00;
  string asStack_24 [4];
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
      uVar7 = (**(code **)(*(int *)this + 0x1d8))(this);
      SoldierView::setDualRecoilRotation((double)CONCAT44(extraout_s1,uVar7));
      local_20 = (**(code **)(*(int *)this + 0x284))(this);
    }
    else {
      uVar7 = (**(code **)(*(int *)this + 0x1d8))(this);
      SoldierView::setPrimaryRecoilRotation((double)CONCAT44(extraout_s1_00,uVar7));
      local_20 = (**(code **)(*(int *)this + 0x23c))(this);
    }
    if ((this[0x1c5] == (SoldierAIController)0x0) ||
       (iVar2 = (**(code **)(**(int **)(this + 0x148) + 0x27c))(*(undefined4 *)(this + 0x148)),
       iVar2 != 0xb)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (!bVar1) {
      if (*(int *)(*(int *)(this + 0x13c) + 0x54) == 0x15) {
        pcVar5 = *(code **)(*(int *)local_1c + 0x310);
        iVar2 = *(int *)(this + 0x138);
        iVar6 = *(int *)(this + 0x138);
        (**(code **)(*(int *)this + 0x1c0))(asStack_24,this);
        (*pcVar5)(local_1c,local_20,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
                  *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34),
                  *(undefined4 *)(iVar6 + 0x38),*(undefined4 *)(iVar6 + 0x3c),
                  *(undefined4 *)(iVar6 + 0x40),*(undefined4 *)(iVar6 + 0x44),0x400,asStack_24);
        FUN_007c5914(asStack_24);
      }
      else if (*(int *)(*(int *)(this + 0x13c) + 0x54) == 0x241) {
        pcVar5 = *(code **)(*(int *)local_1c + 0x310);
        iVar2 = *(int *)(this + 0x138);
        iVar6 = *(int *)(this + 0x138);
        (**(code **)(*(int *)this + 0x1c0))(asStack_24,this);
        (*pcVar5)(local_1c,local_20,*(undefined4 *)(iVar2 + 0x28),*(undefined4 *)(iVar2 + 0x2c),
                  *(undefined4 *)(iVar2 + 0x30),*(undefined4 *)(iVar2 + 0x34),
                  *(undefined4 *)(iVar6 + 0x38),*(undefined4 *)(iVar6 + 0x3c),
                  *(undefined4 *)(iVar6 + 0x40),*(undefined4 *)(iVar6 + 0x44),0x104,asStack_24);
        FUN_007c5914(asStack_24);
      }
      this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      (**(code **)(*(int *)this + 0x1c0))(asStack_24,this);
      pCVar4 = (CCObject *)cocos2d::CCString::create(asStack_24);
      cocos2d::CCNotificationCenter::postNotification(this_00,"RadarAlert",pCVar4);
      FUN_007c5914(asStack_24);
    }
  }
  return;
}

// ---- SoldierAIController::weaponDidFire  @ 0x3f2b0c
/* non-virtual thunk to SoldierAIController::weaponDidFire(Item*) */

void __thiscall SoldierAIController::weaponDidFire(SoldierAIController *this,Item *param_1)

{
  weaponDidFire(this + -0xf8,param_1);
  return;
}
