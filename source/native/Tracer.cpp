// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 11 functions

// ---- Tracer::Tracer  @ 0x4170e4
/* Tracer::Tracer(cocos2d::CCSpriteBatchNode*) */

Tracer * __thiscall Tracer::Tracer(Tracer *this,CCSpriteBatchNode *param_1)

{
  Projectile::Projectile((Projectile *)this,param_1);
  *(undefined ***)this = &PTR_copyWithZone_1_0091cd58;
  *(undefined4 *)(this + 0x9c) = 0;
  this[0xa0] = (Tracer)0x1;
  *(undefined4 *)(this + 0xa4) = 0;
  *(undefined4 *)(this + 0xa8) = 0;
  *(undefined4 *)(this + 0xac) = 0;
  *(undefined4 *)(this + 0xb0) = 0;
  *(undefined4 *)(this + 0xb4) = 0;
  return this;
}

// ---- Tracer::~Tracer  @ 0x41714c
/* WARNING: Removing unreachable block (ram,0x0041719a) */
/* Tracer::~Tracer() */

Tracer * __thiscall Tracer::~Tracer(Tracer *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091cd58;
  if (*(int *)(this + 0x9c) != 0) {
    (**(code **)(**(int **)(this + 0x9c) + 0xe8))(*(undefined4 *)(this + 0x9c));
    cocos2d::CCObject::release(*(CCObject **)(this + 0x9c));
  }
  Projectile::~Projectile((Projectile *)this);
  return this;
}

// ---- Tracer::~Tracer  @ 0x4171b4
/* Tracer::~Tracer() */

Tracer * __thiscall Tracer::~Tracer(Tracer *this)

{
  ~Tracer(this);
  operator_delete(this);
  return this;
}

// ---- Tracer::reset  @ 0x4171d0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x004172c6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string) */

void Tracer::reset(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined4 uVar2;
  float *pfVar3;
  int iVar4;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  code *pcVar5;
  uint in_fpscr;
  undefined8 in_d0;
  float extraout_s1;
  double __x;
  float extraout_s2;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar7;
  undefined8 uVar6;
  float in_stack_00000010;
  undefined4 in_stack_00000018;
  float in_stack_00000020;
  undefined4 in_stack_00000024;
  undefined4 in_stack_00000028;
  undefined4 in_stack_0000002c;
  undefined4 in_stack_00000030;
  undefined4 in_stack_00000034;
  undefined4 in_stack_00000038;
  char *pcVar8;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  int local_5c;
  undefined1 local_54;
  undefined1 local_53;
  undefined1 local_52;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40 [2];
  undefined4 local_38;
  undefined4 local_30 [2];
  undefined4 local_28;
  
  local_68 = param_4;
  local_64 = param_3;
  local_60 = param_2;
  local_5c = param_1;
  uVar2 = FUN_004160c4(0xff,0xff,0xff);
  extraout_s1 = (float)((ulonglong)in_d0 >> 0x20);
  *(char *)(param_1 + 0xb8) = (char)uVar2;
  *(char *)(param_1 + 0xb9) = (char)((uint)uVar2 >> 8);
  *(char *)(param_1 + 0xba) = (char)((uint)uVar2 >> 0x10);
  *(undefined1 *)(local_5c + 0xa0) = 1;
  *(undefined4 *)(local_5c + 0x78) = 0;
  *(undefined4 *)(local_5c + 0x7c) = 0;
  *(undefined4 *)(local_5c + 0x80) = 0;
  *(undefined4 *)(local_5c + 0x84) = 0;
  *(undefined4 *)(local_5c + 0xa8) = in_stack_00000028;
  *(undefined4 *)(local_5c + 0xac) = in_stack_0000002c;
  *(undefined4 *)(local_5c + 0xb0) = in_stack_00000030;
  *(undefined4 *)(local_5c + 0xb4) = in_stack_00000034;
  *(undefined4 *)(local_5c + 0x50) = *(undefined4 *)(local_5c + 0xa8);
  *(undefined4 *)(local_5c + 0x54) = *(undefined4 *)(local_5c + 0xac);
  *(undefined4 *)(local_5c + 0x58) = *(undefined4 *)(local_5c + 0xb0);
  *(undefined4 *)(local_5c + 0x5c) = *(undefined4 *)(local_5c + 0xb4);
  pcVar5 = *(code **)(**(int **)(local_5c + 0x14) + 0x4c);
  uVar2 = *(undefined4 *)(local_5c + 0x14);
  cocos2d::CCPoint::CCPoint((CCPoint *)local_30,(float)in_d0,extraout_s1);
  (*pcVar5)(uVar2,local_30);
  pfVar3 = (float *)(**(code **)(**(int **)(local_5c + 0x14) + 0x50))
                              (*(undefined4 *)(local_5c + 0x14));
  fVar7 = *pfVar3;
  iVar4 = (**(code **)(**(int **)(local_5c + 0x14) + 0x50))(*(undefined4 *)(local_5c + 0x14));
  iVar1 = local_5c;
  FUN_00416160(SUB84((double)fVar7,0),extraout_s1,SUB84((double)*(float *)(iVar4 + 4),0),&local_78);
  *(undefined4 *)(iVar1 + 0x60) = local_78;
  *(undefined4 *)(iVar1 + 100) = uStack_74;
  *(undefined4 *)(iVar1 + 0x68) = uStack_70;
  *(undefined4 *)(iVar1 + 0x6c) = uStack_6c;
  FUN_007c5e70(local_5c + 0x30,&DAT_007ea5e8);
  thunk_FUN_007c653c(local_5c + 0x34,in_stack_00000038);
  *(undefined4 *)(local_5c + 0x8c) = local_60;
  (**(code **)(**(int **)(local_5c + 0x14) + 0x40))(*(undefined4 *)(local_5c + 0x14),0x3f800000);
  (**(code **)(**(int **)(local_5c + 0x14) + 0x1a4))(*(undefined4 *)(local_5c + 0x14),0xff);
  *(undefined1 *)(local_5c + 0x18) = 1;
  (**(code **)(**(int **)(local_5c + 0x14) + 0x90))(*(undefined4 *)(local_5c + 0x14),1);
  (**(code **)(**(int **)(local_5c + 0x14) + 0x98))
            (*(undefined4 *)(local_5c + 0x14),-in_stack_00000020 * 57.29578);
  *(undefined4 *)(local_5c + 0x90) = local_68;
  *(undefined4 *)(local_5c + 0x70) = local_64;
  *(undefined4 *)(local_5c + 0x94) = 0;
  __x = cos((double)CONCAT44(extraout_s1,SUB84((double)fVar7,0)));
  sin(__x);
  fVar7 = (float)((ulonglong)__x >> 0x20);
  FUN_00416160(extraout_r0,fVar7,extraout_r0_00,local_50);
  uVar6 = VectorSignedToFloat(in_stack_00000024,(byte)(in_fpscr >> 0x16) & 3);
  FUN_00416238(local_50[0],fVar7,local_48,in_s3,(int)uVar6,local_40);
  FUN_00416238(in_stack_00000010,fVar7,in_stack_00000018,in_s3,0x9999999a,local_30);
  iVar1 = local_5c;
  FUN_00416188(local_40[0],fVar7,local_38,in_s3,local_30[0],in_s5,local_28,&local_78);
  *(undefined4 *)(iVar1 + 0x78) = local_78;
  *(undefined4 *)(iVar1 + 0x7c) = uStack_74;
  *(undefined4 *)(iVar1 + 0x80) = uStack_70;
  *(undefined4 *)(iVar1 + 0x84) = uStack_6c;
  *(undefined1 *)(local_5c + 0x98) = 0;
  *(undefined4 *)(local_5c + 0xa4) = 0;
  if (*(int *)(local_5c + 0x8c) == 10) {
    if (*(int *)(local_5c + 0x9c) == 0) {
      uVar2 = FUN_004160c4(0xff,0xff,0xff);
      local_54 = (undefined1)uVar2;
      local_53 = (undefined1)((uint)uVar2 >> 8);
      local_52 = (undefined1)((uint)uVar2 >> 0x10);
      pcVar8 = "streak_new.png";
      uVar2 = cocos2d::CCMotionStreak::create
                        (in_stack_00000010,fVar7,extraout_s2,(_ccColor3B *)0x3f000000,
                         (char *)0x3f800000);
      *(undefined4 *)(local_5c + 0x9c) = uVar2;
      cocos2d::CCObject::retain(*(CCObject **)(local_5c + 0x9c));
      (**(code **)(*worldLayer + 0xcc))
                (worldLayer,*(undefined4 *)(local_5c + 0x9c),4,*(code **)(*worldLayer + 0xcc),pcVar8
                );
    }
  }
  return;
}

// ---- Tracer::updateStep  @ 0x4174f0
/* Tracer::updateStep(float) */

void __thiscall Tracer::updateStep(Tracer *this,float param_1)

{
  undefined4 uVar1;
  int iVar2;
  float in_r1;
  code *pcVar3;
  undefined4 uVar4;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s1;
  CCPoint aCStack_28 [8];
  undefined1 auStack_20 [8];
  undefined1 auStack_18 [8];
  
  if ((*(int *)(this + 0x9c) != 0) && (this[0xa0] != (Tracer)0x1)) {
    *(float *)(this + 0xa4) = *(float *)(this + 0xa4) + in_r1;
    (**(code **)(**(int **)(this + 0x9c) + 0x1e4))(*(undefined4 *)(this + 0x9c),0x40400000);
    pcVar3 = *(code **)(**(int **)(this + 0x9c) + 0x4c);
    uVar4 = *(undefined4 *)(this + 0x9c);
    uVar1 = (**(code **)(**(int **)(this + 0x14) + 0x50))(*(undefined4 *)(this + 0x14));
    param_1 = (float)(*pcVar3)(uVar4,uVar1);
    if (1.0 < *(float *)(this + 0xa4)) {
      (**(code **)(**(int **)(this + 0x9c) + 0xe8))(*(undefined4 *)(this + 0x9c));
      param_1 = (float)cocos2d::CCObject::release(*(CCObject **)(this + 0x9c));
      *(undefined4 *)(this + 0x9c) = 0;
    }
  }
  (**(code **)(**(int **)(this + 0x14) + 0x90))(param_1,*(undefined4 *)(this + 0x14),this[0x18]);
  iVar2 = Projectile::getActive((Projectile *)this);
  if (iVar2 != 0) {
    if (this[0xa0] != (Tracer)0x1) {
      Projectile::updateStep(extraout_s0);
      pcVar3 = *(code **)(**(int **)(this + 0x14) + 0x4c);
      uVar4 = *(undefined4 *)(this + 0x14);
      uVar1 = (**(code **)(**(int **)(this + 0x14) + 0x50))(*(undefined4 *)(this + 0x14));
      cocos2d::CCPoint::CCPoint(aCStack_28,extraout_s0_00,extraout_s1);
      FUN_00416140(in_r1,auStack_20,aCStack_28);
      FUN_00416120(auStack_18,uVar1,auStack_20);
      (*pcVar3)(uVar4,auStack_18);
    }
    this[0xa0] = (Tracer)0x0;
    checkCollision();
  }
  return;
}

// ---- Tracer::onSpark  @ 0x417670
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x004176c8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::onSpark(cpSegmentQueryInfo) */

void Tracer::onSpark(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                    undefined4 param_5,undefined4 param_6,int *param_7,undefined4 param_8,
                    undefined4 param_9,undefined4 param_10)

{
  float *pfVar1;
  int iVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  CCNotificationCenter *this;
  code *pcVar7;
  float extraout_s1;
  float fVar8;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  int *local_8c;
  CCObject *local_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined1 local_70 [16];
  undefined1 auStack_60 [16];
  undefined1 local_50 [16];
  CCPoint aCStack_40 [16];
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8c = param_7;
  local_8 = param_9;
  uStack_4 = param_10;
  pfVar1 = (float *)(**(code **)(*(int *)param_7[5] + 0x50))(param_7[5]);
  fVar8 = *pfVar1;
  iVar2 = (**(code **)(*(int *)local_8c[5] + 0x50))(local_8c[5]);
  FUN_00416160(SUB84((double)fVar8,0),param_2,SUB84((double)*(float *)(iVar2 + 4),0),&local_80);
  fVar8 = (float)FUN_00416320((int)*(undefined8 *)(local_8c + 0x14),param_2,
                              (int)*(undefined8 *)(local_8c + 0x16),param_4,local_80,param_6,
                              local_78,&local_a0,&local_8,local_8,uStack_4);
  local_80 = local_a0;
  uStack_7c = uStack_9c;
  local_78 = uStack_98;
  uStack_74 = uStack_94;
  pcVar7 = *(code **)(*(int *)local_8c[5] + 0x4c);
  iVar2 = local_8c[5];
  cocos2d::CCPoint::CCPoint(aCStack_40,fVar8,extraout_s1);
  (*pcVar7)(iVar2,aCStack_40);
  fVar8 = (float)(**(code **)(*local_8c + 0x34))(local_70,local_8c);
  pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar8);
  fVar8 = (float)(**(code **)(*local_8c + 0x34))(auStack_60,local_8c);
  uVar4 = cocos2d::CCFloat::create(fVar8);
  fVar8 = (float)(**(code **)(*local_8c + 0x20))(local_50,local_8c);
  uVar5 = cocos2d::CCFloat::create(fVar8);
  fVar8 = (float)(**(code **)(*local_8c + 0x20))(aCStack_40,local_8c);
  uVar6 = cocos2d::CCFloat::create(fVar8);
  cocos2d::CCInteger::create((uint)*(byte *)(local_8c + 0x2e));
  cocos2d::CCInteger::create((uint)*(byte *)((int)local_8c + 0xb9));
  cocos2d::CCInteger::create((uint)*(byte *)((int)local_8c + 0xba));
  cocos2d::CCInteger::create(0);
  local_84 = (CCObject *)cocos2d::CCArray::create(pCVar3,uVar4,uVar5,uVar6);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"Spark",local_84);
  (**(code **)(*local_8c + 0x28))(local_8c,0);
  (**(code **)(*(int *)local_8c[5] + 0x90))(local_8c[5],0);
  return;
}

// ---- Tracer::onItemBulletCollision  @ 0x41787c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00417934 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::onItemBulletCollision(Weapon*, cpShape*, cpSegmentQueryInfo) */

void Tracer::onItemBulletCollision
               (undefined4 param_1_00,undefined4 param_2_00,int *param_1,int *param_2,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               undefined4 param_13,undefined4 param_14)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  bool bVar4;
  bool bVar5;
  uint in_fpscr;
  undefined1 auStack_4c [4];
  undefined4 local_48 [4];
  undefined1 auStack_38 [8];
  undefined4 local_30;
  undefined4 local_28;
  undefined4 uStack_24;
  
  bVar5 = false;
  if (param_2 != (int *)0x0) {
    (**(code **)(*param_2 + 500))(auStack_4c,param_2);
    bVar5 = true;
    iVar2 = FUN_007c567c(auStack_4c,param_1 + 0xd);
    if (iVar2 == 0) {
      bVar4 = false;
      goto LAB_004178c6;
    }
  }
  bVar4 = true;
LAB_004178c6:
  if (bVar5) {
    FUN_007c5914(auStack_4c);
  }
  if (bVar4) {
    onSpark(param_1,&param_7,param_7,param_8);
    uVar1 = sndEng;
    (**(code **)(*param_1 + 0x20))(local_48,param_1);
    (**(code **)(*param_1 + 0x20))(auStack_38,param_1);
    FUN_00416160(local_48[0],param_2_00,local_30,&local_28);
    uVar3 = FUN_004160b8();
    VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    Sound::playSoundPositionVP(uVar1,0xf,local_28,uStack_24);
  }
  return;
}

// ---- Tracer::onHostBulletCollision  @ 0x4179bc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00417a4c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::onHostBulletCollision(SoldierController*, cpShape*, cpSegmentQueryInfo) */

void Tracer::onHostBulletCollision
               (undefined4 param_1_00,undefined4 param_2_00,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,Projectile *param_1,int *param_2,int param_9,
               undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13,
               undefined4 param_14,undefined4 param_15,undefined4 param_16,undefined4 param_17,
               undefined4 param_18)

{
  Projectile *pPVar1;
  int iVar2;
  float *pfVar3;
  undefined4 uVar4;
  code *pcVar5;
  undefined4 uVar6;
  float fVar7;
  float extraout_s1;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  int local_5c;
  int *local_58;
  Projectile *local_54;
  undefined1 auStack_4c [4];
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  local_5c = param_9;
  local_58 = param_2;
  local_54 = param_1;
  if (param_2[0x50] == param_9) {
    iVar2 = (**(code **)(*param_2 + 0x26c))(param_2);
    if (iVar2 != 0) {
      return;
    }
    local_54[0x98] = (Projectile)0x1;
  }
  pPVar1 = local_54;
  fVar7 = (float)Projectile::getDamage(local_54);
  Projectile::setDamageAmount(pPVar1,fVar7);
  pfVar3 = (float *)(**(code **)(**(int **)(local_54 + 0x14) + 0x50))
                              (*(undefined4 *)(local_54 + 0x14));
  fVar7 = *pfVar3;
  iVar2 = (**(code **)(**(int **)(local_54 + 0x14) + 0x50))(*(undefined4 *)(local_54 + 0x14));
  FUN_00416160(SUB84((double)fVar7,0),param_2_00,SUB84((double)*(float *)(iVar2 + 4),0),&local_48);
  fVar7 = (float)FUN_00416320((int)*(undefined8 *)(local_54 + 0x50),param_2_00,
                              (int)*(undefined8 *)(local_54 + 0x58),param_4,local_48,param_6,
                              local_40,&local_70,&param_11,param_11,param_12);
  local_48 = local_70;
  uStack_44 = uStack_6c;
  local_40 = uStack_68;
  uStack_3c = uStack_64;
  pcVar5 = *(code **)(**(int **)(local_54 + 0x14) + 0x4c);
  uVar6 = *(undefined4 *)(local_54 + 0x14);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar7,extraout_s1);
  (*pcVar5)(uVar6,&local_28);
  pPVar1 = local_54;
  (**(code **)(*local_58 + 0x1c0))(&local_28,local_58);
  Projectile::setDamagedPlayerID(pPVar1,&local_28);
  FUN_007c5914(&local_28);
  pPVar1 = local_54;
  pfVar3 = (float *)(**(code **)(**(int **)(local_54 + 0x14) + 0x50))
                              (*(undefined4 *)(local_54 + 0x14));
  fVar7 = *pfVar3;
  iVar2 = (**(code **)(**(int **)(local_54 + 0x14) + 0x50))(*(undefined4 *)(local_54 + 0x14));
  FUN_00416160(SUB84((double)fVar7,0),extraout_s1,SUB84((double)*(float *)(iVar2 + 4),0),local_38);
  FUN_004161e0(local_38[0],extraout_s1,local_30,param_4,(int)*(undefined8 *)(local_58[0x4e] + 0x28),
               param_6,(int)*(undefined8 *)(local_58[0x4e] + 0x30),&local_28);
  Projectile::setDamagePosition(pPVar1,uStack_1c,local_28,uStack_24);
  Projectile::setDamageVelocity
            (local_54,*(undefined4 *)(local_54 + 0x84),*(undefined4 *)(local_54 + 0x78),
             *(undefined4 *)(local_54 + 0x7c));
  Projectile::setCollided(local_54,true);
  pcVar5 = *(code **)(*local_58 + 600);
  uVar6 = Projectile::getDamage(local_54);
  Projectile::getShooterPlayerID();
  uVar4 = Projectile::getAmmoType(local_54);
  (*pcVar5)(local_58,uVar6,auStack_4c,uVar4);
  FUN_007c5914(auStack_4c);
  (**(code **)(*(int *)local_54 + 0x28))(local_54,0);
  (**(code **)(**(int **)(local_54 + 0x14) + 0x90))(*(int *)(local_54 + 0x14),0);
  return;
}

// ---- Tracer::onRemotePlayerBulletCollision  @ 0x417c2c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00417cfc */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::onRemotePlayerBulletCollision(SoldierRemoteController*, cpShape*, cpSegmentQueryInfo) */

void Tracer::onRemotePlayerBulletCollision
               (undefined4 param_1_00,undefined4 param_2_00,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,Projectile *param_1,int *param_2,int param_9,
               undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13,
               undefined4 param_14,undefined4 param_15,undefined4 param_16,undefined4 param_17,
               undefined4 param_18)

{
  int *piVar1;
  Projectile *pPVar2;
  char cVar3;
  undefined4 uVar4;
  int iVar5;
  float *pfVar6;
  code *pcVar7;
  float fVar8;
  float extraout_s1;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  int local_54;
  int *local_50;
  Projectile *local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  piVar1 = hostSoldier;
  pcVar7 = *(code **)(*hostSoldier + 0x300);
  local_54 = param_9;
  local_50 = param_2;
  local_4c = param_1;
  uVar4 = (**(code **)(*param_2 + 0x1c4))(param_2);
  cVar3 = (*pcVar7)(piVar1,uVar4);
  if (cVar3 != '\x01') {
    if (local_50[0x50] == local_54) {
      iVar5 = (**(code **)(*local_50 + 0x26c))(local_50);
      if (iVar5 != 0) {
        return;
      }
      local_4c[0x98] = (Projectile)0x1;
    }
    pPVar2 = local_4c;
    fVar8 = (float)Projectile::getDamage(local_4c);
    Projectile::setDamageAmount(pPVar2,fVar8);
    pfVar6 = (float *)(**(code **)(**(int **)(local_4c + 0x14) + 0x50))
                                (*(undefined4 *)(local_4c + 0x14));
    fVar8 = *pfVar6;
    iVar5 = (**(code **)(**(int **)(local_4c + 0x14) + 0x50))(*(undefined4 *)(local_4c + 0x14));
    FUN_00416160(SUB84((double)fVar8,0),param_2_00,SUB84((double)*(float *)(iVar5 + 4),0),&local_48)
    ;
    fVar8 = (float)FUN_00416320((int)*(undefined8 *)(local_4c + 0x50),param_2_00,
                                (int)*(undefined8 *)(local_4c + 0x58),param_4,local_48,param_6,
                                local_40,&local_68,&param_11,param_11,param_12);
    local_48 = local_68;
    uStack_44 = uStack_64;
    local_40 = uStack_60;
    uStack_3c = uStack_5c;
    pcVar7 = *(code **)(**(int **)(local_4c + 0x14) + 0x4c);
    uVar4 = *(undefined4 *)(local_4c + 0x14);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar8,extraout_s1);
    (*pcVar7)(uVar4,&local_28);
    pPVar2 = local_4c;
    (**(code **)(*local_50 + 0x1c0))(&local_28,local_50);
    Projectile::setDamagedPlayerID(pPVar2,&local_28);
    FUN_007c5914(&local_28);
    pPVar2 = local_4c;
    pfVar6 = (float *)(**(code **)(**(int **)(local_4c + 0x14) + 0x50))
                                (*(undefined4 *)(local_4c + 0x14));
    fVar8 = *pfVar6;
    iVar5 = (**(code **)(**(int **)(local_4c + 0x14) + 0x50))(*(undefined4 *)(local_4c + 0x14));
    FUN_00416160(SUB84((double)fVar8,0),extraout_s1,SUB84((double)*(float *)(iVar5 + 4),0),local_38)
    ;
    FUN_004161e0(local_38[0],extraout_s1,local_30,param_4,
                 (int)*(undefined8 *)(local_50[0x4e] + 0x28),param_6,
                 (int)*(undefined8 *)(local_50[0x4e] + 0x30),&local_28);
    Projectile::setDamagePosition(pPVar2,uStack_1c,local_28,uStack_24);
    Projectile::setDamageVelocity
              (local_4c,*(undefined4 *)(local_4c + 0x84),*(undefined4 *)(local_4c + 0x78),
               *(undefined4 *)(local_4c + 0x7c));
    Projectile::setCollided(local_4c,true);
    (**(code **)(*(int *)local_4c + 0x28))(local_4c,0);
    (**(code **)(**(int **)(local_4c + 0x14) + 0x90))(*(int *)(local_4c + 0x14),0);
  }
  return;
}

// ---- Tracer::onHostEnemyBulletCollision  @ 0x417ea0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00417f06 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::onHostEnemyBulletCollision(Enemy*, cpShape*, cpSegmentQueryInfo) */

void Tracer::onHostEnemyBulletCollision
               (undefined4 param_1_00,undefined4 param_2_00,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,Projectile *param_1,int *param_2,
               undefined4 param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
               undefined4 param_13,undefined4 param_14,undefined4 param_15,undefined4 param_16,
               undefined4 param_17,undefined4 param_18)

{
  Projectile *pPVar1;
  float *pfVar2;
  int iVar3;
  CCNotificationCenter *this;
  code *pcVar4;
  undefined4 uVar5;
  float fVar6;
  float extraout_s1;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 local_44;
  int *local_40;
  Projectile *local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  local_44 = param_9;
  local_40 = param_2;
  local_3c = param_1;
  fVar6 = (float)Projectile::getDamage(param_1);
  Projectile::setDamageAmount(param_1,fVar6);
  pfVar2 = (float *)(**(code **)(**(int **)(local_3c + 0x14) + 0x50))
                              (*(undefined4 *)(local_3c + 0x14));
  fVar6 = *pfVar2;
  iVar3 = (**(code **)(**(int **)(local_3c + 0x14) + 0x50))(*(undefined4 *)(local_3c + 0x14));
  FUN_00416160(SUB84((double)fVar6,0),param_2_00,SUB84((double)*(float *)(iVar3 + 4),0),&local_38);
  fVar6 = (float)FUN_00416320((int)*(undefined8 *)(local_3c + 0x50),param_2_00,
                              (int)*(undefined8 *)(local_3c + 0x58),param_4,local_38,param_6,
                              local_30,&local_58,&param_11,param_11,param_12);
  local_38 = local_58;
  uStack_34 = uStack_54;
  local_30 = uStack_50;
  uStack_2c = uStack_4c;
  pcVar4 = *(code **)(**(int **)(local_3c + 0x14) + 0x4c);
  uVar5 = *(undefined4 *)(local_3c + 0x14);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,fVar6,extraout_s1);
  (*pcVar4)(uVar5,&local_28);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"MetalSpark",(CCObject *)local_3c);
  pPVar1 = local_3c;
  (**(code **)(*local_40 + 0x1c0))(&local_28,local_40);
  Projectile::setDamagedPlayerID(pPVar1,&local_28);
  FUN_007c5914(&local_28);
  pPVar1 = local_3c;
  pfVar2 = (float *)(**(code **)(**(int **)(local_3c + 0x14) + 0x50))
                              (*(undefined4 *)(local_3c + 0x14));
  fVar6 = *pfVar2;
  iVar3 = (**(code **)(**(int **)(local_3c + 0x14) + 0x50))(*(undefined4 *)(local_3c + 0x14));
  FUN_00416160(SUB84((double)fVar6,0),extraout_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_28);
  Projectile::setDamagePosition(pPVar1,uStack_1c,local_28,uStack_24);
  Projectile::setDamageVelocity
            (local_3c,*(undefined4 *)(local_3c + 0x84),*(undefined4 *)(local_3c + 0x78),
             *(undefined4 *)(local_3c + 0x7c));
  Projectile::setCollided(local_3c,true);
  (**(code **)(*(int *)local_3c + 0x28))(local_3c,0);
  (**(code **)(**(int **)(local_3c + 0x14) + 0x90))(*(int *)(local_3c + 0x14),0);
  return;
}

// ---- Tracer::checkCollision  @ 0x41808c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0041811c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Tracer::checkCollision() */

void Tracer::checkCollision(void)

{
  int *in_r0;
  float *pfVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  undefined4 in_s1;
  float fVar5;
  undefined1 local_70 [16];
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_24;
  
  (**(code **)(*in_r0 + 0x2c))(in_r0);
  pfVar1 = (float *)(**(code **)(*(int *)in_r0[5] + 0x50))(in_r0[5]);
  fVar5 = *pfVar1;
  iVar2 = (**(code **)(*(int *)in_r0[5] + 0x50))(in_r0[5]);
  FUN_00416160(SUB84((double)fVar5,0),in_s1,SUB84((double)*(float *)(iVar2 + 4),0),local_70);
  iVar2 = cpSpaceSegmentQueryFirst(space,in_r0[0x17],in_r0[0x14],in_r0[0x15]);
  iVar3 = cpSpaceSegmentQueryFirst(space,in_r0[0x17],in_r0[0x14],in_r0[0x15]);
  if (iVar2 != 0) {
    if ((iVar3 != 0) && (*(int *)(iVar3 + 0x5c) == 0xd)) {
      onSpark(in_r0,uStack_44,local_60,uStack_5c);
      return;
    }
    if ((iVar3 == 0) ||
       ((double)CONCAT44(uStack_54,local_58) <= (double)CONCAT44(uStack_34,local_38))) {
      onSpark(in_r0,uStack_44,local_60,uStack_5c);
      return;
    }
  }
  if (iVar3 != 0) {
    uVar4 = *(uint *)(iVar3 + 0x5c);
    if (uVar4 == 0x15) {
      onHostBulletCollision(in_r0,*(undefined4 *)(iVar3 + 0x50),iVar3);
    }
    else {
      if (uVar4 < 0x16) {
        if (uVar4 == 1) {
          return;
        }
        if (uVar4 == 0xd) {
          onItemBulletCollision(in_r0,*(undefined4 *)(*(int *)(iVar3 + 4) + 0x90),iVar3);
          return;
        }
      }
      else {
        if (uVar4 == 0x84) {
          iVar2 = (**(code **)(*in_r0 + 0x2c))(in_r0);
          if (iVar2 == 0x400) {
            onRemotePlayerBulletCollision(in_r0,*(undefined4 *)(iVar3 + 0x50),iVar3);
            return;
          }
          (**(code **)(*in_r0 + 0x28))(in_r0,0);
          (**(code **)(*(int *)in_r0[5] + 0x90))(in_r0[5],0);
          return;
        }
        if (uVar4 == 0x241) {
          onHostEnemyBulletCollision(in_r0,*(undefined4 *)(iVar3 + 0x50),iVar3);
          return;
        }
      }
      onSpark(in_r0,uStack_24,local_40,uStack_3c);
    }
  }
  return;
}
