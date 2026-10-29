// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- GasCloud::GasCloud  @ 0x3487f4
/* GasCloud::GasCloud() */

GasCloud * __thiscall GasCloud::GasCloud(GasCloud *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00912380;
  FUN_007c51b0(this + 0xec);
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("smoke.png");
  *(undefined4 *)(this + 0xe8) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe8));
  cocos2d::CCNode::setVisible((CCNode *)this,false);
  pcVar2 = *(code **)(**(int **)(this + 0xe8) + 0x1bc);
  uVar3 = *(undefined4 *)(this + 0xe8);
  uVar1 = FUN_003479c0(100,0xff,0);
  local_14 = (undefined1)uVar1;
  local_13 = (undefined1)((uint)uVar1 >> 8);
  local_12 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar2)(uVar3,&local_14);
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("explosion.png");
  *(undefined4 *)(this + 0xe4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe4));
  (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),0);
  FUN_007c5e70(this + 0xec,&DAT_007d9594);
  *(undefined4 *)(this + 0xfc) = 0;
  return this;
}

// ---- GasCloud::~GasCloud  @ 0x348924
/* WARNING: Removing unreachable block (ram,0x00348968) */
/* GasCloud::~GasCloud() */

GasCloud * __thiscall GasCloud::~GasCloud(GasCloud *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00912380;
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  FUN_007c5914(this + 0xec);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- GasCloud::~GasCloud  @ 0x348980
/* GasCloud::~GasCloud() */

GasCloud * __thiscall GasCloud::~GasCloud(GasCloud *this)

{
  ~GasCloud(this);
  operator_delete(this);
  return this;
}

// ---- GasCloud::reset  @ 0x34899c
/* GasCloud::reset(cpVect, std::string, int) */

void GasCloud::reset(int *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  uint in_fpscr;
  undefined8 uVar4;
  float fVar5;
  undefined4 in_stack_00000008;
  int in_stack_0000000c;
  CCPoint aCStack_20 [12];
  
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[0x40] = 0;
  (**(code **)(*(int *)param_1[0x39] + 0x40))(param_1[0x39],0x3c23d70a);
  (**(code **)(*(int *)param_1[0x3a] + 0x40))(param_1[0x3a],0);
  uVar4 = (**(code **)(*(int *)param_1[0x3a] + 0x1a4))(param_1[0x3a],0xff);
  pcVar2 = *(code **)(*param_1 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar2)(param_1,aCStack_20);
  (**(code **)(*(int *)param_1[0x39] + 0x90))(param_1[0x39],1);
  pcVar2 = *(code **)(*(int *)param_1[0x39] + 0x98);
  iVar3 = param_1[0x39];
  uVar1 = FUN_003479b4();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  (*pcVar2)(iVar3,(fVar5 / 1.0737418e+09 - 1.0) * 180.0);
  thunk_FUN_007c653c(param_1 + 0x3b,in_stack_00000008);
  param_1[0x3f] = in_stack_0000000c;
  *(undefined1 *)((int)param_1 + 0xf9) = 1;
  return;
}

// ---- GasCloud::applyDamage  @ 0x348ad8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00348b24 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* GasCloud::applyDamage(float) */

void GasCloud::applyDamage(float param_1)

{
  int *piVar1;
  int *in_r0;
  float *pfVar2;
  int iVar3;
  float in_r1;
  code *pcVar4;
  undefined4 in_fpscr;
  byte bVar5;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar6;
  float fVar7;
  undefined1 auStack_44 [4];
  double local_40;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  bVar5 = (byte)((uint)in_fpscr >> 0x18);
  pfVar2 = (float *)(**(code **)(*in_r0 + 0x50))(param_1,in_r0);
  fVar7 = *pfVar2;
  iVar3 = (**(code **)(*in_r0 + 0x50))(in_r0);
  FUN_00347a1c(SUB84((double)fVar7,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_38);
  FUN_00347a44(local_38,in_s1,local_30,in_s3,(int)*(undefined8 *)(hostSoldier[0x4e] + 0x28),in_s5,
               (int)*(undefined8 *)(hostSoldier[0x4e] + 0x30),&local_28);
  local_40 = (double)cpvlength(local_28,uStack_24,uStack_20,uStack_1c);
  in_r0[0x40] = (int)((float)in_r0[0x40] + in_r1);
  bVar5 = bVar5 & 0xf;
  if (0.6 < (float)in_r0[0x40]) {
    in_r0[0x40] = 0;
    Sound::playSoundPositionVP(sndEng,0x2f,local_38,uStack_34);
  }
  piVar1 = hostSoldier;
  if ((char)(bVar5 & 0xf | (byte)(((uint)(local_40 < 150.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(local_40 == 150.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(150.0 <= local_40) << 0x1d) >> 0x18)) < '\0') {
    pcVar4 = *(code **)(*hostSoldier + 600);
    dVar6 = 150.0 - local_40;
    FUN_007c64e8(auStack_44,in_r0 + 0x3b);
    (*pcVar4)(piVar1,(float)(dVar6 * (double)in_r1),auStack_44,in_r0[0x3f]);
    FUN_007c5914(auStack_44);
  }
  return;
}

// ---- GasCloud::updateStep  @ 0x348cb8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00348d42 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* GasCloud::updateStep(float) */

void GasCloud::updateStep(float param_1)

{
  int *in_r0;
  float *pfVar1;
  int iVar2;
  undefined4 uVar3;
  float in_r1;
  bool bVar4;
  uint uVar5;
  code *pcVar6;
  uint in_fpscr;
  uint uVar7;
  uint uVar8;
  byte bVar9;
  float extraout_s0;
  undefined4 in_s1;
  float fVar10;
  float fVar11;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined1 local_28 [20];
  
  in_r0[0x3c] = (int)((float)in_r0[0x3c] + in_r1);
  (**(code **)(*in_r0 + 0x90))(param_1,in_r0,0);
  fVar10 = (float)in_r0[0x3c];
  uVar5 = in_fpscr & 0xfffffff | (uint)(fVar10 < 17.0) << 0x1f | (uint)(fVar10 == 17.0) << 0x1e;
  uVar7 = uVar5 | (uint)NAN(fVar10) << 0x1c;
  bVar9 = (byte)(uVar5 >> 0x18);
  if (!(bool)(bVar9 >> 6 & 1) && bVar9 >> 7 == ((byte)(uVar7 >> 0x1c) & 1)) {
    *(undefined1 *)((int)in_r0 + 0xf9) = 0;
    return;
  }
  pfVar1 = (float *)(**(code **)(*in_r0 + 0x50))(in_r0);
  fVar10 = *pfVar1;
  iVar2 = (**(code **)(*in_r0 + 0x50))(in_r0);
  FUN_00347a1c(SUB84((double)fVar10,0),in_s1,SUB84((double)*(float *)(iVar2 + 4),0),&local_38);
  FUN_00347a1c(0,in_s1,0,local_28);
  iVar2 = FUN_00347d90(local_38,uStack_34,uStack_30,uStack_2c);
  if (iVar2 != 0) {
    (**(code **)(*in_r0 + 0x90))(in_r0,1);
  }
  fVar10 = (float)in_r0[0x3c];
  uVar5 = uVar7 & 0xfffffff | (uint)(fVar10 < 15.0) << 0x1f | (uint)(fVar10 == 15.0) << 0x1e;
  uVar8 = uVar5 | (uint)NAN(fVar10) << 0x1c;
  bVar9 = (byte)(uVar5 >> 0x18);
  if ((bool)(bVar9 >> 6 & 1) || bVar9 >> 7 != ((byte)(uVar8 >> 0x1c) & 1)) {
    bVar9 = (byte)((uVar7 & 0xfffffff) >> 0x18);
    if (0.15 < (float)in_r0[0x3c]) {
      (**(code **)(*(int *)in_r0[0x39] + 0x90))(in_r0[0x39],0);
      pcVar6 = *(code **)(*(int *)in_r0[0x3a] + 0x40);
      iVar2 = in_r0[0x3a];
      fVar10 = (float)(**(code **)(*(int *)in_r0[0x3a] + 0x44))(in_r0[0x3a]);
      bVar9 = bVar9 & 0xf;
      if (fVar10 + in_r1 * 0.25 <= 2.0) {
        fVar10 = (float)(**(code **)(*(int *)in_r0[0x3a] + 0x44))(in_r0[0x3a]);
        fVar10 = fVar10 + in_r1 * 0.25;
      }
      else {
        fVar10 = 2.0;
      }
      (*pcVar6)(iVar2,fVar10);
      pcVar6 = *(code **)(*(int *)in_r0[0x3a] + 0x98);
      iVar2 = in_r0[0x3a];
      fVar10 = (float)(**(code **)(*(int *)in_r0[0x3a] + 0x9c))(in_r0[0x3a]);
      fVar10 = (float)(*pcVar6)(iVar2,fVar10 + in_r1 * 20.0);
      fVar11 = (float)in_r0[0x3c];
      if (((char)(bVar9 & 0xf | (byte)(((uint)(fVar11 < 16.0) << 0x1f) >> 0x18) |
                  (byte)(((uint)(fVar11 == 16.0) << 0x1e) >> 0x18) |
                 (byte)(((uint)(16.0 <= fVar11) << 0x1d) >> 0x18)) < '\0') &&
         (iVar2 = (**(code **)(*in_r0 + 0x94))(in_r0), fVar10 = extraout_s0, iVar2 != 0)) {
        bVar4 = true;
      }
      else {
        bVar4 = false;
      }
      if (bVar4) {
        applyDamage(fVar10);
      }
      return;
    }
    pcVar6 = *(code **)(*(int *)in_r0[0x3a] + 0x40);
    iVar2 = in_r0[0x3a];
    fVar10 = (float)(**(code **)(*(int *)in_r0[0x3a] + 0x44))(in_r0[0x3a]);
    (*pcVar6)(iVar2,fVar10 + in_r1 * 10.0);
    pcVar6 = *(code **)(*(int *)in_r0[0x39] + 0x40);
    iVar2 = in_r0[0x39];
    fVar10 = (float)(**(code **)(*(int *)in_r0[0x39] + 0x44))(in_r0[0x39]);
    (*pcVar6)(iVar2,fVar10 * 0.3 + 0.2);
    return;
  }
  in_r0[0x3d] = (int)((float)in_r0[0x3d] + in_r1);
  pcVar6 = *(code **)(*(int *)in_r0[0x3a] + 0x1a4);
  iVar2 = in_r0[0x3a];
  uVar3 = (**(code **)(*(int *)in_r0[0x3a] + 0x19c))(in_r0[0x3a]);
  fVar10 = (float)VectorSignedToFloat(uVar3,(byte)(uVar8 >> 0x16) & 3);
  fVar10 = fVar10 - (float)in_r0[0x3d] * 5.0;
  uVar5 = uVar8 & 0xfffffff | (uint)(fVar10 < 0.0) << 0x1f | (uint)(fVar10 == 0.0) << 0x1e;
  uVar7 = uVar5 | (uint)NAN(fVar10) << 0x1c;
  bVar9 = (byte)(uVar5 >> 0x18);
  if ((bool)(bVar9 >> 6 & 1) || bVar9 >> 7 != ((byte)(uVar7 >> 0x1c) & 1)) {
    uVar5 = 0;
  }
  else {
    uVar3 = (**(code **)(*(int *)in_r0[0x3a] + 0x19c))(in_r0[0x3a]);
    fVar10 = (float)VectorSignedToFloat(uVar3,(byte)(uVar7 >> 0x16) & 3);
    fVar10 = fVar10 - (float)in_r0[0x3d] * 5.0;
    uVar5 = (uint)(0.0 < fVar10) * (int)fVar10 & 0xff;
  }
  (*pcVar6)(iVar2,uVar5);
  return;
}
