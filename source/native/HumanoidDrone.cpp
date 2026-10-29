// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 33 functions

// ---- HumanoidDrone::create  @ 0x328c8c
/* HumanoidDrone::create() */

HumanoidDrone * HumanoidDrone::create(void)

{
  bool bVar1;
  HumanoidDrone *this;
  int iVar2;
  
  this = operator_new(0x1d8);
  HumanoidDrone(this);
  if ((this == (HumanoidDrone *)0x0) ||
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
    if (this != (HumanoidDrone *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (HumanoidDrone *)0x0;
  }
  return this;
}

// ---- HumanoidDrone::HumanoidDrone  @ 0x355bc0
/* HumanoidDrone::HumanoidDrone() */

HumanoidDrone * __thiscall HumanoidDrone::HumanoidDrone(HumanoidDrone *this)

{
  Enemy::Enemy((Enemy *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00912dc8;
  return this;
}

// ---- HumanoidDrone::init  @ 0x355bf0
/* HumanoidDrone::init() */

bool __thiscall HumanoidDrone::init(HumanoidDrone *this)

{
  HumanoidDrone *pHVar1;
  undefined4 uVar2;
  AvatarRenderer *pAVar3;
  SoldierView *pSVar4;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  bool bVar5;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  HumanoidDrone *local_24;
  undefined1 auStack_20 [3];
  char local_1d;
  undefined1 auStack_1c [4];
  CCTexture2D *local_18;
  CCTexture2D *local_14;
  CCTexture2D *local_10;
  CCTexture2D *local_c;
  
  local_24 = this;
  local_1d = Enemy::init((Enemy *)this);
  bVar5 = local_1d == '\x01';
  if (bVar5) {
    uVar2 = SoldierView::create();
    *(undefined4 *)(local_24 + 0x1a8) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1a8));
    uVar2 = SoldierAIController::create();
    *(undefined4 *)(local_24 + 0x1ac) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ac));
    (**(code **)(**(int **)(local_24 + 0x1ac) + 0x1d4))
              (*(undefined4 *)(local_24 + 0x1ac),*(undefined4 *)(local_24 + 0x1a8));
    (**(code **)(**(int **)(local_24 + 0x1ac) + 0x278))(*(undefined4 *)(local_24 + 0x1ac),0xf);
    pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_18 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar3,(CCArray *)0x0,0xb);
    pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_14 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar3,(CCArray *)0x0,0xb);
    pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_10 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar3,(CCArray *)0x0,0xb);
    pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
    local_c = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar3,(CCArray *)0x0,0xb);
    pSVar4 = (SoldierView *)
             (**(code **)(**(int **)(local_24 + 0x1ac) + 0x1d8))(*(undefined4 *)(local_24 + 0x1ac));
    SoldierView::setPlayerSkin(pSVar4,0xb,local_18,local_14,local_10,local_c);
    pSVar4 = (SoldierView *)
             (**(code **)(**(int **)(local_24 + 0x1ac) + 0x1d8))(*(undefined4 *)(local_24 + 0x1ac));
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(auStack_1c,&DAT_007da608,auStack_20);
    SoldierView::setPlayerName(pSVar4,auStack_1c);
    FUN_007c5914(auStack_1c);
    FUN_0079a3fc(auStack_20);
    cpBodySetMass(*(undefined4 *)(*(int *)(local_24 + 0x1ac) + 0x138),extraout_r1,0,0x3fe00000);
    *(undefined4 *)(*(int *)(local_24 + 0x1ac) + 0x1b4) = 0x3f800000;
    cpBodySetMoment(*(undefined4 *)(*(int *)(local_24 + 0x1ac) + 0x138),extraout_r1_00,0,0x40a77000)
    ;
    pSVar4 = (SoldierView *)
             (**(code **)(**(int **)(local_24 + 0x1ac) + 0x1d8))(*(undefined4 *)(local_24 + 0x1ac));
    SoldierView::setBlood(pSVar4,false);
    pHVar1 = local_24;
    *(undefined4 *)(local_24 + 0x1b0) = 0x40400000;
    *(undefined4 *)(local_24 + 0x1b4) = 0;
    *(undefined4 *)(local_24 + 0x1b8) = 0x40400000;
    *(undefined4 *)(local_24 + 0x198) = 0;
    *(undefined4 *)(local_24 + 0x1c0) = 0;
    *(undefined4 *)(local_24 + 0x1c4) = 0;
    *(undefined4 *)(local_24 + 0x1c8) = 0;
    *(undefined4 *)(local_24 + 0x1cc) = 0;
    (**(code **)(*(int *)local_24 + 0x220))(&local_38,local_24);
    *(undefined4 *)(pHVar1 + 0x120) = local_38;
    *(undefined4 *)(pHVar1 + 0x124) = uStack_34;
    *(undefined4 *)(pHVar1 + 0x128) = uStack_30;
    *(undefined4 *)(pHVar1 + 300) = uStack_2c;
  }
  return bVar5;
}

// ---- HumanoidDrone::~HumanoidDrone  @ 0x355e50
/* WARNING: Removing unreachable block (ram,0x00355e94) */
/* HumanoidDrone::~HumanoidDrone() */

HumanoidDrone * __thiscall HumanoidDrone::~HumanoidDrone(HumanoidDrone *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00912dc8;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1a8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ac));
  Enemy::~Enemy((Enemy *)this);
  return this;
}

// ---- HumanoidDrone::~HumanoidDrone  @ 0x355eac
/* HumanoidDrone::~HumanoidDrone() */

HumanoidDrone * __thiscall HumanoidDrone::~HumanoidDrone(HumanoidDrone *this)

{
  ~HumanoidDrone(this);
  operator_delete(this);
  return this;
}

// ---- HumanoidDrone::getSearchPoint  @ 0x355ec8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00355f5c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HumanoidDrone::getSearchPoint() */

undefined4 HumanoidDrone::getSearchPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  float fVar2;
  float fVar3;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 in_s1;
  
  uVar1 = FUN_00354b9c();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  uVar1 = FUN_00354b9c();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar3 = (float)std::abs(extraout_s0_00);
  FUN_00354c04(SUB84((double)(fVar2 + 250.0),0),in_s1,SUB84((double)(fVar3 + 800.0),0),in_r0);
  return in_r0;
}

// ---- HumanoidDrone::hover  @ 0x355f80
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00355ffc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HumanoidDrone::hover() */

void HumanoidDrone::hover(void)

{
  int in_r0;
  undefined4 uVar1;
  code *pcVar2;
  float fVar3;
  undefined4 in_s1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  *(undefined1 *)(*(int *)(in_r0 + 0x1ac) + 0x11c) = 1;
  fVar3 = (float)(**(code **)(**(int **)(in_r0 + 0x1ac) + 0x1e0))(*(undefined4 *)(in_r0 + 0x1ac),1);
  pcVar2 = *(code **)(**(int **)(in_r0 + 0x1ac) + 0x230);
  uVar1 = *(undefined4 *)(in_r0 + 0x1ac);
  fVar3 = (float)std::cos(fVar3);
  FUN_00354c04(0,in_s1,SUB84((double)fVar3 * 0.1 + 0.2,0),&local_20);
  (*pcVar2)(uVar1,uStack_14,local_20,uStack_1c);
  return;
}

// ---- HumanoidDrone::updateMoveTo  @ 0x356030
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00356074 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HumanoidDrone::updateMoveTo(cpVect) */

void HumanoidDrone::updateMoveTo
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int *param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  char cVar1;
  float fVar2;
  int iVar3;
  bool bVar4;
  code *pcVar5;
  double dVar6;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  (**(code **)(*param_7 + 0x1ac))(local_48,param_7);
  FUN_00354c2c(param_9,param_2,param_11,param_4,local_48[0],param_6,local_40,&local_68);
  dVar6 = (double)cpvlength(local_68,uStack_64,local_60,uStack_5c);
  (**(code **)(*(int *)param_7[0x6b] + 0x1e0))(param_7[0x6b],0);
  if (160.0 < (float)dVar6) {
    FUN_00354d18(local_68,param_2,local_60,local_58);
    *(undefined1 *)(param_7[0x6b] + 0x11c) = 1;
    cVar1 = (**(code **)(*(int *)param_7[0x6b] + 0x2cc))(param_7[0x6b]);
    if ((cVar1 == '\x01') ||
       (fVar2 = (float)(**(code **)(*(int *)param_7[0x6b] + 0x2a0))(param_7[0x6b]), fVar2 <= 0.0)) {
      bVar4 = false;
    }
    else {
      bVar4 = true;
    }
    if (bVar4) {
      (**(code **)(*(int *)param_7[0x6b] + 0x1e0))(param_7[0x6b],1);
    }
    iVar3 = CollisionObject::getIsCONTACT((CollisionObject *)param_7[0x6b]);
    if (iVar3 == 0) {
      pcVar5 = *(code **)(*(int *)param_7[0x6b] + 0x230);
      iVar3 = param_7[0x6b];
      FUN_00354c84(local_58[0],param_2,local_50,param_4,0,&local_28);
      (*pcVar5)(iVar3,uStack_1c,local_28,uStack_24);
    }
    else {
      pcVar5 = *(code **)(*(int *)param_7[0x6b] + 0x230);
      iVar3 = param_7[0x6b];
      FUN_00354c84(local_58[0],param_2,local_50,param_4,0x851eb852,&local_38);
      (*pcVar5)(iVar3,uStack_2c,local_38,uStack_34);
    }
    return;
  }
  hover();
  return;
}

// ---- HumanoidDrone::updateAim  @ 0x356210
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003562d8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HumanoidDrone::updateAim(cpVect) */

void HumanoidDrone::updateAim
               (float param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  uint uVar1;
  byte bVar2;
  float fVar3;
  uint in_fpscr;
  uint uVar4;
  uint uVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  int iVar9;
  float local_78;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  if (360.0 < *(float *)(param_7 + 0x198)) {
    *(float *)(param_7 + 0x198) = *(float *)(param_7 + 0x198) - 360.0;
  }
  fVar7 = *(float *)(param_7 + 0x198);
  uVar4 = in_fpscr & 0xfffffff | (uint)(fVar7 < 0.0) << 0x1f | (uint)(fVar7 == 0.0) << 0x1e |
          (uint)(0.0 <= fVar7) << 0x1d;
  if ((int)uVar4 < 0) {
    *(float *)(param_7 + 0x198) = *(float *)(param_7 + 0x198) + 360.0;
  }
  fVar7 = (float)std::cos(param_1);
  fVar3 = (float)std::sin(param_1);
  fVar6 = SUB84((double)fVar7,0);
  FUN_00354c04(fVar6,param_2,SUB84((double)-fVar3,0),local_58);
  FUN_00354d18(param_9,param_2,param_11,local_48);
  FUN_00354cd0(local_58[0],param_2,local_50,param_4,local_48[0],param_6,local_40);
  fVar8 = (float)(double)CONCAT44(param_2,fVar6);
  fVar7 = (float)std::cos(fVar6);
  fVar3 = (float)std::sin(fVar6);
  FUN_00354c04(SUB84((double)fVar7,0),param_2,SUB84((double)-fVar3,0),local_38);
  FUN_00354d18(param_9,param_2,param_11,local_28);
  FUN_00354cd0(local_38[0],param_2,local_30,param_4,local_28[0],param_6,local_20);
  fVar7 = (float)(double)CONCAT44(param_2,SUB84((double)fVar7,0));
  uVar1 = uVar4 & 0xfffffff | (uint)(fVar7 < fVar8) << 0x1f | (uint)(fVar7 == fVar8) << 0x1e;
  uVar5 = uVar1 | (uint)(NAN(fVar7) || NAN(fVar8)) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar5 >> 0x1c) & 1)) {
    fVar7 = -1.0;
  }
  else {
    fVar7 = 1.0;
  }
  iVar9 = (int)(360.0 - (fVar8 + 1.0) * 180.0);
  local_78 = (float)VectorSignedToFloat(iVar9 / 0x19 + 1,(byte)(uVar5 >> 0x16) & 3);
  fVar3 = (float)VectorSignedToFloat(iVar9,(byte)(uVar5 >> 0x16) & 3);
  if ((char)((byte)((uVar4 & 0xfffffff) >> 0x18) | (byte)(((uint)(fVar3 < 3.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(fVar3 == 3.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(3.0 <= fVar3) << 0x1d) >> 0x18)) < '\0') {
    local_78 = 0.0;
  }
  *(float *)(param_7 + 0x198) = *(float *)(param_7 + 0x198) + fVar7 * local_78;
  (**(code **)(**(int **)(param_7 + 0x1ac) + 0x238))
            (*(undefined4 *)(param_7 + 0x1ac),*(undefined4 *)(param_7 + 0x198));
  return;
}

// ---- HumanoidDrone::updateRemoteStep  @ 0x35648c
/* HumanoidDrone::updateRemoteStep(float) */

void __thiscall HumanoidDrone::updateRemoteStep(HumanoidDrone *this,float param_1)

{
  undefined4 in_r1;
  
  if (*(int *)(*(int *)(*(int *)(this + 0x1ac) + 0x138) + 0x90) != 0) {
    *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x138) + 0x90) = 0;
    **(undefined4 **)(*(int *)(this + 0x1ac) + 0x138) = &LAB_00355bac_1;
  }
  (**(code **)(*(int *)this + 0x218))(this,0,0,0,0,0);
  *(undefined1 *)(*(int *)(this + 0x1ac) + 0x1c5) = 1;
  (**(code **)(**(int **)(this + 0x1ac) + 0x2d4))
            (*(undefined4 *)(this + 0x1ac),in_r1,*(undefined4 *)(this + 0x170),
             *(undefined4 *)(this + 0x174),*(undefined4 *)(this + 0x178),
             *(undefined4 *)(this + 0x17c),*(undefined4 *)(this + 0x188),
             *(undefined4 *)(this + 0x18c),*(undefined4 *)(this + 400),*(undefined4 *)(this + 0x194)
             ,*(undefined4 *)(this + 0x180));
  return;
}

// ---- HumanoidDrone::updateStep  @ 0x356550
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00356626 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HumanoidDrone::updateStep(float) */

void HumanoidDrone::updateStep(float param_1)

{
  uint uVar1;
  byte bVar2;
  int *piVar3;
  undefined1 uVar4;
  int *in_r0;
  undefined4 uVar5;
  float in_r1;
  int iVar6;
  uint extraout_r3;
  uint uVar7;
  code *pcVar8;
  uint in_fpscr;
  uint uVar9;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar10;
  float fVar11;
  float fVar12;
  int local_80;
  int iStack_7c;
  int iStack_78;
  int iStack_74;
  float local_70;
  int *local_6c;
  int local_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_54;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  in_r0[0x58] = (int)((float)in_r0[0x58] + in_r1);
  local_70 = in_r1;
  local_6c = in_r0;
  (**(code **)(*(int *)in_r0[0x6b] + 0x1dc))(param_1,in_r0[0x6b],in_r1);
  uVar4 = (**(code **)(*(int *)local_6c[0x6b] + 0x254))(local_6c[0x6b]);
  *(undefined1 *)(local_6c + 0x69) = uVar4;
  (**(code **)(*(int *)local_6c[0x6b] + 0x1e0))(local_6c[0x6b],0);
  *(undefined1 *)(local_6c[0x6b] + 0x11c) = 0;
  dVar10 = *(double *)(*(int *)(local_6c[0x6b] + 0x138) + 0x30);
  uVar9 = in_fpscr & 0xfffffff | (uint)(dVar10 < -500.0) << 0x1f | (uint)(dVar10 == -500.0) << 0x1e
          | (uint)(-500.0 <= dVar10) << 0x1d;
  if ((int)uVar9 < 0) {
    (**(code **)(*(int *)local_6c[0x6b] + 0x260))(local_6c[0x6b],0);
  }
  pcVar8 = *(code **)(*(int *)local_6c[0x6b] + 0x230);
  iVar6 = local_6c[0x6b];
  FUN_00354c04(0,in_s1,0,&local_60);
  (*pcVar8)(iVar6,uStack_54,local_60,uStack_5c);
  if ((char)local_6c[0x67] != '\0') {
    local_64 = local_6c[0x6b];
    *(undefined1 *)(local_64 + 0x1c5) = 0;
    (**(code **)(*(int *)local_6c[0x6b] + 0x240))(local_6c[0x6b],local_70);
  }
  *(undefined1 *)(local_6c + 0x67) = 0;
  if (local_6c[0x57] != 2) {
    if (local_6c[0x57] == 3) {
      local_6c[0x6d] = (int)((float)local_6c[0x6d] + local_70);
      fVar11 = (float)local_6c[0x6d];
      fVar12 = (float)local_6c[0x6c];
      uVar7 = uVar9 & 0xfffffff;
      uVar1 = uVar7 | (uint)(fVar11 < fVar12) << 0x1f | (uint)(fVar11 == fVar12) << 0x1e;
      uVar9 = uVar1 | (uint)(NAN(fVar11) || NAN(fVar12)) << 0x1c;
      bVar2 = (byte)(uVar1 >> 0x18);
      if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) {
        *(undefined1 *)(local_6c + 0x67) = 1;
        fVar11 = (float)local_6c[0x6d];
        fVar12 = (float)local_6c[0x6e] + (float)local_6c[0x6c];
        uVar7 = uVar7 | (uint)(fVar11 < fVar12) << 0x1f | (uint)(fVar11 == fVar12) << 0x1e;
        uVar9 = uVar7 | (uint)(NAN(fVar11) || NAN(fVar12)) << 0x1c;
        bVar2 = (byte)(uVar7 >> 0x18);
        if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) {
          *(undefined1 *)(local_6c + 0x67) = 0;
          local_6c[0x6d] = 0;
          uVar5 = FUN_00354b9c();
          VectorSignedToFloat(uVar5,(byte)(uVar9 >> 0x16) & 3);
          iVar6 = std::fabs(extraout_s0);
          local_6c[0x6c] = iVar6;
          uVar5 = FUN_00354b9c();
          VectorSignedToFloat(uVar5,(byte)(uVar9 >> 0x16) & 3);
          iVar6 = std::fabs(extraout_s0_00);
          local_6c[0x6e] = iVar6;
        }
      }
      updateMoveTo(local_6c,local_6c[0x47],local_6c[0x44],local_6c[0x45]);
      (**(code **)(*local_6c + 0x1ac))(local_50,local_6c);
      FUN_00354c2c((int)*(undefined8 *)(local_6c + 0x44),in_s1,(int)*(undefined8 *)(local_6c + 0x46)
                   ,in_s3,local_50[0],in_s5,local_48,&local_40);
      updateAim(local_6c,uStack_34,local_40,uStack_3c);
    }
    goto LAB_003568b2;
  }
  local_6c[0x59] = (int)((float)local_6c[0x59] + local_70);
  fVar11 = (float)local_6c[0x59];
  fVar12 = (float)local_6c[0x5a];
  uVar7 = uVar9 & 0xfffffff;
  uVar1 = uVar7 | (uint)(fVar11 < fVar12) << 0x1f | (uint)(fVar11 == fVar12) << 0x1e;
  uVar9 = uVar1 | (uint)(NAN(fVar11) || NAN(fVar12)) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) {
    fVar11 = (float)local_6c[0x74];
    uVar7 = uVar7 | (uint)(fVar11 < 3.0) << 0x1f | (uint)(fVar11 == 3.0) << 0x1e;
    uVar9 = uVar7 | (uint)NAN(fVar11) << 0x1c;
    bVar2 = (byte)(uVar7 >> 0x18);
    if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) goto LAB_00356822;
  }
  else {
LAB_00356822:
    uVar5 = FUN_00354b9c();
    VectorSignedToFloat(uVar5,(byte)(uVar9 >> 0x16) & 3);
    fVar11 = (float)std::abs(extraout_s0_01);
    piVar3 = local_6c;
    local_6c[0x5a] = (int)(fVar11 + 15.0);
    local_6c[0x59] = 0;
    (**(code **)(*local_6c + 0x220))(&local_80,local_6c);
    piVar3[0x48] = local_80;
    piVar3[0x49] = iStack_7c;
    piVar3[0x4a] = iStack_78;
    piVar3[0x4b] = iStack_74;
    local_6c[0x74] = 0;
  }
  updateMoveTo(local_6c,local_6c[0x4b],local_6c[0x48],local_6c[0x49]);
LAB_003568b2:
  (**(code **)(*local_6c + 0x1ac))(local_30,local_6c);
  FUN_00354c2c(local_30[0],in_s1,local_28,in_s3,(int)*(undefined8 *)(local_6c + 0x70),in_s5,
               (int)*(undefined8 *)(local_6c + 0x72),&local_20);
  dVar10 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
  uVar9 = uVar9 & 0xfffffff | (uint)(dVar10 < 15.0) << 0x1f | (uint)(dVar10 == 15.0) << 0x1e |
          (uint)(15.0 <= dVar10) << 0x1d;
  uVar7 = extraout_r3;
  if (-1 < (int)uVar9) {
    uVar7 = 0;
  }
  if ((int)uVar9 < 0) {
    uVar7 = 1;
  }
  if ((uVar7 & 0xff) == 0) {
    local_6c[0x74] = 0;
  }
  else {
    local_6c[0x74] = (int)((float)local_6c[0x74] + local_70);
  }
  (**(code **)(*local_6c + 0x1ac))(&local_80,local_6c);
  local_6c[0x70] = local_80;
  local_6c[0x71] = iStack_7c;
  local_6c[0x72] = iStack_78;
  local_6c[0x73] = iStack_74;
  return;
}

// ---- HumanoidDrone::lookForTarget  @ 0x356958
/* HumanoidDrone::lookForTarget() */

void __thiscall HumanoidDrone::lookForTarget(HumanoidDrone *this)

{
  int iVar1;
  
  iVar1 = (**(code **)(*(int *)this + 0x1f0))(this);
  if (iVar1 == 0) {
    *(undefined4 *)(this + 0x15c) = 2;
  }
  else {
    *(undefined4 *)(this + 0x15c) = 3;
  }
  return;
}

// ---- HumanoidDrone::initBody  @ 0x35698c
/* HumanoidDrone::initBody() */

void __thiscall HumanoidDrone::initBody(HumanoidDrone *this)

{
  (**(code **)(**(int **)(this + 0x1ac) + 0x1cc))(*(undefined4 *)(this + 0x1ac));
  return;
}

// ---- HumanoidDrone::initShape  @ 0x3569b0
/* HumanoidDrone::initShape() */

void __thiscall HumanoidDrone::initShape(HumanoidDrone *this)

{
  (**(code **)(**(int **)(this + 0x1ac) + 0x1d0))(*(undefined4 *)(this + 0x1ac));
  return;
}

// ---- HumanoidDrone::resetBody  @ 0x3569d4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003569fa */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* HumanoidDrone::resetBody() */

void HumanoidDrone::resetBody(void)

{
  int in_r0;
  undefined4 in_s1;
  
  FUN_00354d68(0,in_s1,0,*(undefined4 *)(*(int *)(in_r0 + 0x1ac) + 0x138));
  FUN_00354d94(0,in_s1,0,*(undefined4 *)(*(int *)(in_r0 + 0x1ac) + 0x138));
  *(undefined4 *)(in_r0 + 0x1a0) = 0;
  return;
}

// ---- HumanoidDrone::addBodyShape  @ 0x356a3c
/* HumanoidDrone::addBodyShape() */

void __thiscall HumanoidDrone::addBodyShape(HumanoidDrone *this)

{
  (**(code **)(**(int **)(this + 0x1ac) + 0x228))(*(undefined4 *)(this + 0x1ac));
  return;
}

// ---- HumanoidDrone::removeBodyShape  @ 0x356a60
/* HumanoidDrone::removeBodyShape() */

void __thiscall HumanoidDrone::removeBodyShape(HumanoidDrone *this)

{
  (**(code **)(**(int **)(this + 0x1ac) + 0x22c))(*(undefined4 *)(this + 0x1ac));
  return;
}

// ---- HumanoidDrone::addDamage  @ 0x356a84
/* HumanoidDrone::addDamage(int, std::string, int) */

void __thiscall
HumanoidDrone::addDamage
          (HumanoidDrone *this,undefined4 param_1,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  code *pcVar2;
  uint in_fpscr;
  undefined4 uVar3;
  undefined1 auStack_1c [8];
  
  pcVar2 = *(code **)(**(int **)(this + 0x1ac) + 600);
  uVar1 = *(undefined4 *)(this + 0x1ac);
  uVar3 = VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
  FUN_007c64e8(auStack_1c,param_3);
  (*pcVar2)(uVar1,uVar3,auStack_1c,param_4,1);
  FUN_007c5914(auStack_1c);
  return;
}

// ---- HumanoidDrone::getHP  @ 0x356af0
/* HumanoidDrone::getHP() */

undefined4 __thiscall HumanoidDrone::getHP(HumanoidDrone *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ac) + 0x25c))(*(undefined4 *)(this + 0x1ac));
  return uVar1;
}

// ---- HumanoidDrone::setHP  @ 0x356b18
/* HumanoidDrone::setHP(int) */

void __thiscall HumanoidDrone::setHP(HumanoidDrone *this,int param_1)

{
  (**(code **)(**(int **)(this + 0x1ac) + 0x260))(*(undefined4 *)(this + 0x1ac),param_1);
  return;
}

// ---- HumanoidDrone::getBodyPosition  @ 0x356b40
/* HumanoidDrone::getBodyPosition() */

undefined4 * HumanoidDrone::getBodyPosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(*(int *)(in_r1 + 0x1ac) + 0x138);
  uVar1 = *(undefined4 *)(iVar3 + 0x2c);
  uVar2 = *(undefined4 *)(iVar3 + 0x30);
  uVar4 = *(undefined4 *)(iVar3 + 0x34);
  *in_r0 = *(undefined4 *)(iVar3 + 0x28);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- HumanoidDrone::getBodyVelocity  @ 0x356b68
/* HumanoidDrone::getBodyVelocity() */

undefined4 * HumanoidDrone::getBodyVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  if (*(int *)(*(int *)(*(int *)(in_r1 + 0x1ac) + 0x138) + 0x90) == 0) {
    uVar1 = *(undefined4 *)(in_r1 + 0x18c);
    uVar2 = *(undefined4 *)(in_r1 + 400);
    uVar4 = *(undefined4 *)(in_r1 + 0x194);
    *in_r0 = *(undefined4 *)(in_r1 + 0x188);
    in_r0[1] = uVar1;
    in_r0[2] = uVar2;
    in_r0[3] = uVar4;
  }
  else {
    iVar3 = *(int *)(*(int *)(in_r1 + 0x1ac) + 0x138);
    uVar1 = *(undefined4 *)(iVar3 + 0x3c);
    uVar2 = *(undefined4 *)(iVar3 + 0x40);
    uVar4 = *(undefined4 *)(iVar3 + 0x44);
    *in_r0 = *(undefined4 *)(iVar3 + 0x38);
    in_r0[1] = uVar1;
    in_r0[2] = uVar2;
    in_r0[3] = uVar4;
  }
  return in_r0;
}

// ---- HumanoidDrone::getBodyRotation  @ 0x356bb4
/* HumanoidDrone::getBodyRotation() */

float __thiscall HumanoidDrone::getBodyRotation(HumanoidDrone *this)

{
  float fVar1;
  
  if (*(int *)(*(int *)(*(int *)(this + 0x1ac) + 0x138) + 0x90) == 0) {
    fVar1 = *(float *)(this + 0x180);
  }
  else {
    fVar1 = (float)*(double *)(*(int *)(*(int *)(this + 0x1ac) + 0x138) + 0x58);
  }
  return fVar1;
}

// ---- HumanoidDrone::getFireAngle  @ 0x356bf0
/* HumanoidDrone::getFireAngle() */

undefined4 __thiscall HumanoidDrone::getFireAngle(HumanoidDrone *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ac) + 0x23c))(*(undefined4 *)(this + 0x1ac));
  return uVar1;
}

// ---- HumanoidDrone::getWeapon  @ 0x356c18
/* HumanoidDrone::getWeapon() */

undefined4 __thiscall HumanoidDrone::getWeapon(HumanoidDrone *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ac) + 500))(*(undefined4 *)(this + 0x1ac));
  return uVar1;
}

// ---- HumanoidDrone::setCollisionType  @ 0x356c40
/* HumanoidDrone::setCollisionType(CollisionType) */

void __thiscall HumanoidDrone::setCollisionType(HumanoidDrone *this,undefined4 param_2)

{
  *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x13c) + 0x54) = param_2;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x13c) + 0x5c) = param_2;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x13c) + 0x58) = param_2;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x140) + 0x54) = param_2;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x140) + 0x5c) = param_2;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x1ac) + 0x140) + 0x58) = param_2;
  return;
}

// ---- HumanoidDrone::setBodyGravity  @ 0x356ca0
/* HumanoidDrone::setBodyGravity(cpVect) */

void HumanoidDrone::setBodyGravity
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x1ac);
  *(undefined4 *)(iVar1 + 0x128) = param_3;
  *(undefined4 *)(iVar1 + 300) = param_4;
  *(undefined4 *)(iVar1 + 0x130) = param_5;
  *(undefined4 *)(iVar1 + 0x134) = param_6;
  return;
}

// ---- HumanoidDrone::getPeerID  @ 0x356ccc
/* HumanoidDrone::getPeerID() */

undefined4 HumanoidDrone::getPeerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  (**(code **)(**(int **)(in_r1 + 0x1ac) + 0x1c0))(in_r0,*(undefined4 *)(in_r1 + 0x1ac));
  return in_r0;
}

// ---- HumanoidDrone::setPeerID  @ 0x356cf8
/* HumanoidDrone::setPeerID(std::string) */

void __thiscall HumanoidDrone::setPeerID(HumanoidDrone *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined1 auStack_14 [8];
  
  pcVar2 = *(code **)(**(int **)(this + 0x1ac) + 0x24c);
  uVar1 = *(undefined4 *)(this + 0x1ac);
  FUN_007c64e8(auStack_14,param_2);
  (*pcVar2)(uVar1,auStack_14);
  FUN_007c5914(auStack_14);
  return;
}

// ---- HumanoidDrone::setRemoteFireAngle  @ 0x356d44
/* HumanoidDrone::setRemoteFireAngle(float) */

void __thiscall HumanoidDrone::setRemoteFireAngle(HumanoidDrone *this,float param_1)

{
  undefined4 in_r1;
  
  (**(code **)(**(int **)(this + 0x1ac) + 0x238))(*(undefined4 *)(this + 0x1ac),in_r1);
  return;
}

// ---- HumanoidDrone::setRemoteFire  @ 0x356d6c
/* HumanoidDrone::setRemoteFire(bool) */

void __thiscall HumanoidDrone::setRemoteFire(HumanoidDrone *this,bool param_1)

{
  this[0x19c] = (HumanoidDrone)param_1;
  return;
}

// ---- HumanoidDrone::setRemoteThrust  @ 0x356d84
/* HumanoidDrone::setRemoteThrust(float) */

void __thiscall HumanoidDrone::setRemoteThrust(HumanoidDrone *this,float param_1)

{
  undefined4 in_r1;
  
  (**(code **)(**(int **)(this + 0x1ac) + 0x1e4))(*(undefined4 *)(this + 0x1ac),in_r1);
  return;
}

// ---- HumanoidDrone::setRemoteMovement  @ 0x356dac
/* HumanoidDrone::setRemoteMovement(cpVect) */

void HumanoidDrone::setRemoteMovement(float param_1,float param_2,int param_3)

{
  int iVar1;
  CCPoint aCStack_18 [8];
  
  iVar1 = *(int *)(param_3 + 0x1ac);
  cocos2d::CCPoint::CCPoint(aCStack_18,param_1,param_2);
  cocos2d::CCPoint::operator=((CCPoint *)(iVar1 + 0x114),aCStack_18);
  return;
}
