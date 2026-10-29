// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 27 functions

// ---- Projectile::Projectile  @ 0x3c17cc
/* Projectile::Projectile(cocos2d::CCSpriteBatchNode*) */

Projectile * __thiscall Projectile::Projectile(Projectile *this,CCSpriteBatchNode *param_1)

{
  CCTexture2D *pCVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_18 [12];
  
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009184b8;
  FUN_007c51b0(this + 0x30);
  FUN_007c51b0(this + 0x34);
  pCVar1 = (CCTexture2D *)(**(code **)(*(int *)param_1 + 0x19c))(param_1);
  uVar2 = cocos2d::CCSprite::createWithTexture(pCVar1);
  *(undefined4 *)(this + 0x14) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  uVar4 = (**(code **)(*(int *)param_1 + 200))(param_1,*(undefined4 *)(this + 0x14));
  pcVar3 = *(code **)(**(int **)(this + 0x14) + 0x7c);
  uVar2 = *(undefined4 *)(this + 0x14);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar3)(uVar2,aCStack_18);
  *(undefined4 *)(this + 0x50) = 0;
  *(undefined4 *)(this + 0x54) = 0;
  *(undefined4 *)(this + 0x58) = 0;
  *(undefined4 *)(this + 0x5c) = 0;
  *(undefined4 *)(this + 0x60) = 0;
  *(undefined4 *)(this + 100) = 0;
  *(undefined4 *)(this + 0x68) = 0;
  *(undefined4 *)(this + 0x6c) = 0;
  *(undefined4 *)(this + 0x70) = 0;
  *(undefined4 *)(this + 0x94) = 0;
  FUN_007c5e70(this + 0x30,&DAT_007e3c98);
  FUN_007c5e70(this + 0x34,&DAT_007e3c98);
  this[0x18] = (Projectile)0x0;
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 0x2c) = 0;
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined4 *)(this + 0x44) = 0;
  *(undefined4 *)(this + 0x48) = 0;
  this[0x4c] = (Projectile)0x0;
  *(undefined4 *)(this + 0x74) = 0x143;
  *(undefined4 *)(this + 0x78) = 0;
  *(undefined4 *)(this + 0x7c) = 0;
  *(undefined4 *)(this + 0x80) = 0;
  *(undefined4 *)(this + 0x84) = 0;
  return this;
}

// ---- Projectile::~Projectile  @ 0x3c1978
/* WARNING: Removing unreachable block (ram,0x003c19b8) */
/* Projectile::~Projectile() */

Projectile * __thiscall Projectile::~Projectile(Projectile *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009184b8;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  FUN_007c5914(this + 0x34);
  FUN_007c5914(this + 0x30);
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- Projectile::~Projectile  @ 0x3c19d0
/* Projectile::~Projectile() */

Projectile * __thiscall Projectile::~Projectile(Projectile *this)

{
  ~Projectile(this);
  operator_delete(this);
  return this;
}

// ---- Projectile::reset  @ 0x3c19ec
/* Projectile::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string) */

void Projectile::reset(void)

{
  return;
}

// ---- Projectile::updateStep  @ 0x3c19fc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c1a70 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Projectile::updateStep(float) */

void Projectile::updateStep(float param_1)

{
  byte bVar1;
  int *piVar2;
  int *in_r0;
  float *pfVar3;
  int iVar4;
  CCPoint *pCVar5;
  float in_r1;
  uint uVar6;
  code *pcVar7;
  uint in_fpscr;
  byte bVar8;
  undefined4 in_s1;
  float extraout_s1;
  float fVar9;
  int local_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  float local_30;
  int *local_2c;
  float local_24;
  CCPoint aCStack_20 [12];
  
  local_30 = in_r1;
  local_2c = in_r0;
  (**(code **)(*(int *)in_r0[5] + 0x90))(param_1,in_r0[5],(char)in_r0[6]);
  if ((char)local_2c[6] != '\0') {
    pfVar3 = (float *)(**(code **)(*(int *)local_2c[5] + 0x50))(local_2c[5]);
    fVar9 = *pfVar3;
    iVar4 = (**(code **)(*(int *)local_2c[5] + 0x50))(local_2c[5]);
    piVar2 = local_2c;
    fVar9 = (float)FUN_003c0a4c(SUB84((double)fVar9,0),in_s1,SUB84((double)*(float *)(iVar4 + 4),0),
                                &local_40);
    piVar2[0x14] = local_40;
    piVar2[0x15] = iStack_3c;
    piVar2[0x16] = iStack_38;
    piVar2[0x17] = iStack_34;
    cocos2d::CCPoint::CCPoint(aCStack_20,fVar9,extraout_s1);
    pCVar5 = (CCPoint *)(**(code **)(*(int *)local_2c[5] + 0x50))(local_2c[5]);
    iVar4 = cocos2d::ccpDistance(aCStack_20,pCVar5);
    local_2c[0x25] = iVar4;
    local_24 = (float)VectorSignedToFloat(local_2c[0x1c],(byte)(in_fpscr >> 0x16) & 3);
    local_24 = local_24 - (float)local_2c[0x25];
    fVar9 = (float)VectorSignedToFloat(local_2c[0x1c],(byte)(in_fpscr >> 0x16) & 3);
    bVar1 = (byte)((in_fpscr & 0xfffffff) >> 0x18);
    if ((float)local_2c[0x25] <= fVar9) {
      uVar6 = in_fpscr & 0xfffffff | (uint)(local_24 < 100.0) << 0x1f |
              (uint)(local_24 == 100.0) << 0x1e | (uint)(100.0 <= local_24) << 0x1d;
      bVar8 = (byte)(uVar6 >> 0x18);
      if ((int)uVar6 < 0) {
        if ((local_24 / 100.0) * 255.0 <= 0.0) {
          uVar6 = 0;
        }
        else {
          fVar9 = (local_24 / 100.0) * 255.0;
          uVar6 = (uint)(0.0 < fVar9) * (int)fVar9 & 0xff;
        }
        bVar8 = bVar1;
        (**(code **)(*(int *)local_2c[5] + 0x1a4))(local_2c[5],uVar6);
      }
    }
    else {
      bVar8 = bVar1;
      (**(code **)(*local_2c + 0x28))(local_2c,0);
    }
    switch(local_2c[0x23]) {
    case 3:
    case 0x12:
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 30.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 10.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 10.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(10.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 30.0;
      }
      else {
        fVar9 = 10.0;
      }
      (*pcVar7)(iVar4,fVar9);
      break;
    case 4:
      (**(code **)(*(int *)local_2c[5] + 0x38))(local_2c[5],0x3fc00000);
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 60.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 18.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 18.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(18.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 60.0;
      }
      else {
        fVar9 = 18.0;
      }
      (*pcVar7)(iVar4,fVar9);
      break;
    case 5:
    case 6:
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 30.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 15.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 15.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(15.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 30.0;
      }
      else {
        fVar9 = 15.0;
      }
      (*pcVar7)(iVar4,fVar9);
      (**(code **)(*(int *)local_2c[5] + 0x38))(local_2c[5],0x3f400000);
      break;
    case 7:
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 45.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 15.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 15.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(15.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 45.0;
      }
      else {
        fVar9 = 15.0;
      }
      (*pcVar7)(iVar4,fVar9);
      break;
    case 8:
    case 9:
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 60.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 18.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 18.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(18.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 60.0;
      }
      else {
        fVar9 = 18.0;
      }
      (*pcVar7)(iVar4,fVar9);
      break;
    case 10:
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 300.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 50.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 50.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(50.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 300.0;
      }
      else {
        fVar9 = 50.0;
      }
      (*pcVar7)(iVar4,fVar9);
      (**(code **)(*(int *)local_2c[5] + 0x38))(local_2c[5],0x3fc00000);
      break;
    case 0x10:
      (**(code **)(*(int *)local_2c[5] + 0x38))(local_2c[5],0x3fa66666);
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 100.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 30.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 30.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(30.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 100.0;
      }
      else {
        fVar9 = 30.0;
      }
      (*pcVar7)(iVar4,fVar9);
      break;
    case 0x11:
      pcVar7 = *(code **)(*(int *)local_2c[5] + 0x30);
      iVar4 = local_2c[5];
      fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
      fVar9 = fVar9 + local_30 * 300.0;
      if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 50.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar9 == 50.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(50.0 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
        fVar9 = (float)(**(code **)(*(int *)local_2c[5] + 0x34))(local_2c[5]);
        fVar9 = fVar9 + local_30 * 300.0;
      }
      else {
        fVar9 = 50.0;
      }
      (*pcVar7)(iVar4,fVar9);
      (**(code **)(*(int *)local_2c[5] + 0x38))(local_2c[5],0x3fc00000);
    }
  }
  return;
}

// ---- Projectile::getActive  @ 0x3c2024
/* Projectile::getActive() */

Projectile __thiscall Projectile::getActive(Projectile *this)

{
  return this[0x18];
}

// ---- Projectile::setActive  @ 0x3c2034
/* Projectile::setActive(bool) */

void __thiscall Projectile::setActive(Projectile *this,bool param_1)

{
  this[0x18] = (Projectile)param_1;
  return;
}

// ---- Projectile::getDamageVelocity  @ 0x3c204c
/* Projectile::getDamageVelocity() */

undefined4 * Projectile::getDamageVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x24);
  uVar2 = *(undefined4 *)(in_r1 + 0x28);
  uVar3 = *(undefined4 *)(in_r1 + 0x2c);
  *in_r0 = *(undefined4 *)(in_r1 + 0x20);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- Projectile::getDamagePosition  @ 0x3c206c
/* Projectile::getDamagePosition() */

undefined4 * Projectile::getDamagePosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x3c);
  uVar2 = *(undefined4 *)(in_r1 + 0x40);
  uVar3 = *(undefined4 *)(in_r1 + 0x44);
  *in_r0 = *(undefined4 *)(in_r1 + 0x38);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- Projectile::setDamageVelocity  @ 0x3c208c
/* Projectile::setDamageVelocity(cpVect) */

void Projectile::setDamageVelocity
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x20) = param_3;
  *(undefined4 *)(param_1 + 0x24) = param_4;
  *(undefined4 *)(param_1 + 0x28) = param_5;
  *(undefined4 *)(param_1 + 0x2c) = param_6;
  return;
}

// ---- Projectile::setDamagePosition  @ 0x3c20b4
/* Projectile::setDamagePosition(cpVect) */

void Projectile::setDamagePosition
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x38) = param_3;
  *(undefined4 *)(param_1 + 0x3c) = param_4;
  *(undefined4 *)(param_1 + 0x40) = param_5;
  *(undefined4 *)(param_1 + 0x44) = param_6;
  return;
}

// ---- Projectile::getDamagedPlayerID  @ 0x3c20dc
/* Projectile::getDamagedPlayerID() */

undefined4 Projectile::getDamagedPlayerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x30);
  return in_r0;
}

// ---- Projectile::setDamagedPlayerID  @ 0x3c20f8
/* Projectile::setDamagedPlayerID(std::string) */

void __thiscall Projectile::setDamagedPlayerID(Projectile *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x30,param_2);
  return;
}

// ---- Projectile::getShooterPlayerID  @ 0x3c2114
/* Projectile::getShooterPlayerID() */

undefined4 Projectile::getShooterPlayerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x34);
  return in_r0;
}

// ---- Projectile::setShooterPlayerID  @ 0x3c2130
/* Projectile::setShooterPlayerID(std::string) */

void __thiscall Projectile::setShooterPlayerID(Projectile *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x34,param_2);
  return;
}

// ---- Projectile::getDamage  @ 0x3c214c
/* Projectile::getDamage() */

float __thiscall Projectile::getDamage(Projectile *this)

{
  uint uVar1;
  byte bVar2;
  uint in_fpscr;
  double dVar3;
  float fVar5;
  double dVar4;
  
  dVar3 = (double)VectorSignedToFloat(*(undefined4 *)(this + 0x90),(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x70),(byte)(in_fpscr >> 0x16) & 3);
  fVar5 = 1.0 - *(float *)(this + 0x94) / fVar5;
  uVar1 = in_fpscr & 0xfffffff | (uint)(fVar5 < 0.0) << 0x1f | (uint)(fVar5 == 0.0) << 0x1e;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || (bool)(bVar2 >> 7) != NAN(fVar5)) {
    dVar4 = 0.5;
  }
  else {
    fVar5 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x70),(byte)(uVar1 >> 0x16) & 3);
    dVar4 = (double)(1.0 - *(float *)(this + 0x94) / fVar5) * 0.5 + 0.5;
  }
  return (float)(dVar3 * dVar4);
}

// ---- Projectile::getDamageAmount  @ 0x3c21d0
/* Projectile::getDamageAmount() */

undefined4 __thiscall Projectile::getDamageAmount(Projectile *this)

{
  return *(undefined4 *)(this + 0x48);
}

// ---- Projectile::setDamageAmount  @ 0x3c21e0
/* Projectile::setDamageAmount(float) */

void __thiscall Projectile::setDamageAmount(Projectile *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x48) = in_r1;
  return;
}

// ---- Projectile::getCollided  @ 0x3c21f0
/* Projectile::getCollided() */

Projectile __thiscall Projectile::getCollided(Projectile *this)

{
  return this[0x4c];
}

// ---- Projectile::setCollided  @ 0x3c2200
/* Projectile::setCollided(bool) */

void __thiscall Projectile::setCollided(Projectile *this,bool param_1)

{
  this[0x4c] = (Projectile)param_1;
  return;
}

// ---- Projectile::getAmmoType  @ 0x3c2218
/* Projectile::getAmmoType() */

undefined4 __thiscall Projectile::getAmmoType(Projectile *this)

{
  return *(undefined4 *)(this + 0x8c);
}

// ---- Projectile::getPosition  @ 0x3c2228
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c2278 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Projectile::getPosition() */

undefined4 Projectile::getPosition(void)

{
  undefined4 in_r0;
  float *pfVar1;
  int iVar2;
  int in_r1;
  undefined4 in_s1;
  float fVar3;
  
  pfVar1 = (float *)(**(code **)(**(int **)(in_r1 + 0x14) + 0x50))(*(undefined4 *)(in_r1 + 0x14));
  fVar3 = *pfVar1;
  iVar2 = (**(code **)(**(int **)(in_r1 + 0x14) + 0x50))(*(undefined4 *)(in_r1 + 0x14));
  FUN_003c0a4c(SUB84((double)fVar3,0),in_s1,SUB84((double)*(float *)(iVar2 + 4),0),in_r0);
  return in_r0;
}

// ---- Projectile::setPosition  @ 0x3c2288
/* Projectile::setPosition(cpVect) */

void Projectile::setPosition(float param_1,float param_2,int param_3)

{
  code *pcVar1;
  undefined4 uVar2;
  CCPoint aCStack_20 [12];
  
  pcVar1 = *(code **)(**(int **)(param_3 + 0x14) + 0x4c);
  uVar2 = *(undefined4 *)(param_3 + 0x14);
  cocos2d::CCPoint::CCPoint(aCStack_20,param_1,param_2);
  (*pcVar1)(uVar2,aCStack_20);
  return;
}

// ---- Projectile::getCollisionType  @ 0x3c22d8
/* Projectile::getCollisionType() */

undefined4 __thiscall Projectile::getCollisionType(Projectile *this)

{
  return *(undefined4 *)(this + 0x74);
}

// ---- Projectile::setCollisionType  @ 0x3c22e8
/* Projectile::setCollisionType(CollisionType) */

void __thiscall Projectile::setCollisionType(Projectile *this,undefined4 param_2)

{
  *(undefined4 *)(this + 0x74) = param_2;
  return;
}

// ---- Projectile::getVelocity  @ 0x3c22f8
/* Projectile::getVelocity() */

undefined4 * Projectile::getVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x7c);
  uVar2 = *(undefined4 *)(in_r1 + 0x80);
  uVar3 = *(undefined4 *)(in_r1 + 0x84);
  *in_r0 = *(undefined4 *)(in_r1 + 0x78);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- Projectile::addBodyShape  @ 0x3c2318
/* Projectile::addBodyShape(cpSpace*) */

void Projectile::addBodyShape(cpSpace *param_1)

{
  return;
}
