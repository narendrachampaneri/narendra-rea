// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- Slug::Slug  @ 0x3ed1e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ed250 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Slug::Slug(cocos2d::CCSpriteBatchNode*) */

Slug * __thiscall Slug::Slug(Slug *this,CCSpriteBatchNode *param_1)

{
  undefined4 uVar1;
  CCTexture2D *pCVar2;
  int iVar3;
  code *pcVar4;
  float fVar5;
  undefined4 in_s1;
  float extraout_s1;
  CCPoint aCStack_38 [8];
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined1 local_20 [20];
  
  Projectile::Projectile((Projectile *)this,param_1);
  *(undefined ***)this = &PTR_copyWithZone_1_0091af60;
  uVar1 = cpBodyNew(0x9999999a,0x3fb99999,0,0x7ff00000);
  *(undefined4 *)(this + 0x9c) = uVar1;
  **(undefined4 **)(this + 0x9c) = 0x3ed085;
  *(Slug **)(*(int *)(this + 0x9c) + 0x90) = this;
  uVar1 = *(undefined4 *)(this + 0x9c);
  FUN_003ebf8c(0,in_s1,0,&local_30);
  FUN_003ebf8c(0,in_s1,0,local_20);
  uVar1 = cpSegmentShapeNew(uVar1,uStack_24,local_30,uStack_2c);
  *(undefined4 *)(this + 0xa0) = uVar1;
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x54) = 0x20;
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x5c) = 0x20;
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x58) = 0x20;
  iVar3 = *(int *)(this + 0xa0);
  *(undefined4 *)(iVar3 + 0x30) = 0x60000000;
  *(undefined4 *)(iVar3 + 0x34) = 0x3fee6666;
  iVar3 = *(int *)(this + 0xa0);
  *(undefined4 *)(iVar3 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar3 + 0x3c) = 0x3fb99999;
  pCVar2 = (CCTexture2D *)(**(code **)(*(int *)param_1 + 0x19c))(param_1);
  uVar1 = cocos2d::CCSprite::createWithTexture(pCVar2);
  *(undefined4 *)(this + 0x14) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x14));
  fVar5 = (float)(**(code **)(*(int *)param_1 + 0xcc))(param_1,*(undefined4 *)(this + 0x14),0);
  pcVar4 = *(code **)(**(int **)(this + 0x14) + 0x7c);
  uVar1 = *(undefined4 *)(this + 0x14);
  cocos2d::CCPoint::CCPoint(aCStack_38,fVar5,extraout_s1);
  (*pcVar4)(uVar1,aCStack_38);
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
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x50) = *(undefined4 *)(this + 0x14);
  return this;
}

// ---- Slug::~Slug  @ 0x3ed3e0
/* WARNING: Removing unreachable block (ram,0x003ed402) */
/* Slug::~Slug() */

Slug * __thiscall Slug::~Slug(Slug *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091af60;
  Projectile::~Projectile((Projectile *)this);
  return this;
}

// ---- Slug::~Slug  @ 0x3ed41c
/* Slug::~Slug() */

Slug * __thiscall Slug::~Slug(Slug *this)

{
  ~Slug(this);
  operator_delete(this);
  return this;
}

// ---- Slug::reset  @ 0x3ed438
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ed474 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Slug::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect) */

void Slug::reset(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                float param_9,undefined4 param_10,undefined4 param_11,undefined4 param_12,
                float param_13)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  code *pcVar5;
  undefined8 in_d0;
  float fVar6;
  double __x;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20 [2];
  undefined4 local_18;
  
  cpBodySetAngle(*(undefined4 *)(param_1 + 0x9c),param_2,SUB84((double)param_13,0),
                 (int)((ulonglong)(double)param_13 >> 0x20));
  fVar6 = (float)((ulonglong)in_d0 >> 0x20);
  FUN_003ec1dc(param_5,fVar6,param_7,*(undefined4 *)(param_1 + 0x9c));
  FUN_003ec234(0,fVar6,0,*(undefined4 *)(param_1 + 0x9c));
  FUN_003ec208(param_9,fVar6,param_11,*(undefined4 *)(param_1 + 0x9c));
  iVar1 = *(int *)(param_1 + 0x9c);
  *(undefined4 *)(iVar1 + 0x60) = 0;
  *(undefined4 *)(iVar1 + 100) = 0;
  *(undefined4 *)(param_1 + 0x8c) = param_2;
  (**(code **)(**(int **)(param_1 + 0x14) + 0x40))(*(undefined4 *)(param_1 + 0x14),0x3f800000);
  (**(code **)(**(int **)(param_1 + 0x14) + 0x1a4))(*(undefined4 *)(param_1 + 0x14),0xff);
  *(undefined1 *)(param_1 + 0x18) = 1;
  (**(code **)(**(int **)(param_1 + 0x14) + 0x90))(*(undefined4 *)(param_1 + 0x14),1);
  *(undefined4 *)(param_1 + 0x90) = param_4;
  *(undefined4 *)(param_1 + 0x70) = param_3;
  iVar1 = *(int *)(param_1 + 0x9c);
  uVar2 = *(undefined4 *)(iVar1 + 0x2c);
  uVar3 = *(undefined4 *)(iVar1 + 0x30);
  uVar4 = *(undefined4 *)(iVar1 + 0x34);
  *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(iVar1 + 0x28);
  *(undefined4 *)(param_1 + 100) = uVar2;
  *(undefined4 *)(param_1 + 0x68) = uVar3;
  *(undefined4 *)(param_1 + 0x6c) = uVar4;
  iVar1 = *(int *)(param_1 + 0x9c);
  uVar2 = *(undefined4 *)(iVar1 + 0x2c);
  uVar3 = *(undefined4 *)(iVar1 + 0x30);
  uVar4 = *(undefined4 *)(iVar1 + 0x34);
  *(undefined4 *)(param_1 + 0x50) = *(undefined4 *)(iVar1 + 0x28);
  *(undefined4 *)(param_1 + 0x54) = uVar2;
  *(undefined4 *)(param_1 + 0x58) = uVar3;
  *(undefined4 *)(param_1 + 0x5c) = uVar4;
  *(undefined4 *)(param_1 + 0x94) = 0;
  pcVar5 = *(code **)(**(int **)(param_1 + 0x14) + 0x4c);
  uVar2 = *(undefined4 *)(param_1 + 0x14);
  cocos2d::CCPoint::CCPoint((CCPoint *)local_20,param_9,fVar6);
  (*pcVar5)(uVar2,local_20);
  uVar2 = *(undefined4 *)(param_1 + 0x9c);
  __x = cos((double)CONCAT44(fVar6,param_9));
  sin(__x);
  uVar3 = (undefined4)((ulonglong)__x >> 0x20);
  FUN_003ebf8c(extraout_r0,uVar3,extraout_r0_00,local_30);
  FUN_003ec00c(local_30[0],uVar3,local_28,in_s3,0,local_20);
  FUN_003ec260(local_20[0],uVar3,local_18,in_s3,0,in_s5,0,uVar2);
  return;
}

// ---- Slug::addBodyShape  @ 0x3ed630
/* Slug::addBodyShape(cpSpace*) */

void __thiscall Slug::addBodyShape(Slug *this,cpSpace *param_1)

{
  cpSpaceAddBody(param_1,*(undefined4 *)(this + 0x9c));
  cpSpaceAddShape(param_1,*(undefined4 *)(this + 0xa0));
  return;
}

// ---- Slug::updateStep  @ 0x3ed65c
/* Slug::updateStep(float) */

void Slug::updateStep(float param_1)

{
  undefined4 uVar1;
  int *in_r0;
  int iVar2;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  Projectile::updateStep(param_1);
  uVar1 = mapManager;
  (**(code **)(*in_r0 + 0x20))(&local_30,in_r0);
  iVar2 = MapManager::tileTypeAt(uVar1,uStack_24,local_30,uStack_2c,local_28,uStack_24);
  uVar1 = mapManager;
  if (iVar2 == 1) {
    (**(code **)(*in_r0 + 0x28))(in_r0,0);
  }
  else if (iVar2 != 0) {
    (**(code **)(*in_r0 + 0x20))(&local_20,in_r0);
    iVar2 = MapManager::mapCollision(uVar1,uStack_14,local_20,uStack_1c,local_18,uStack_14);
    if (iVar2 != 0) {
      (**(code **)(*in_r0 + 0x28))(in_r0,0);
    }
  }
  return;
}

// ---- Slug::setActive  @ 0x3ed710
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003ed75a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Slug::setActive(bool) */

void Slug::setActive(bool param_1)

{
  uint uVar1;
  char in_r1;
  undefined4 uVar2;
  undefined4 in_s1;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  uVar1 = (uint)param_1;
  *(char *)(uVar1 + 0x18) = in_r1;
  if (in_r1 != '\x01') {
    cpBodyResetForces(*(undefined4 *)(uVar1 + 0x9c));
    FUN_003ec208(0,in_s1,0,*(undefined4 *)(uVar1 + 0x9c));
    uVar2 = *(undefined4 *)(uVar1 + 0x9c);
    FUN_003ebf8c(0,in_s1,0,local_18);
    FUN_003ec1dc(local_18[0],in_s1,local_10,uVar2);
  }
  return;
}

// ---- Slug::getPosition  @ 0x3ed7a0
/* Slug::getPosition() */

undefined4 * Slug::getPosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x9c);
  uVar1 = *(undefined4 *)(iVar3 + 0x2c);
  uVar2 = *(undefined4 *)(iVar3 + 0x30);
  uVar4 = *(undefined4 *)(iVar3 + 0x34);
  *in_r0 = *(undefined4 *)(iVar3 + 0x28);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- Slug::setPosition  @ 0x3ed7c4
/* Slug::setPosition(cpVect) */

void Slug::setPosition(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                      undefined4 param_5,undefined4 param_6)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x9c);
  *(undefined4 *)(iVar1 + 0x28) = param_3;
  *(undefined4 *)(iVar1 + 0x2c) = param_4;
  *(undefined4 *)(iVar1 + 0x30) = param_5;
  *(undefined4 *)(iVar1 + 0x34) = param_6;
  return;
}

// ---- Slug::getCollisionType  @ 0x3ed7f0
/* Slug::getCollisionType() */

undefined4 __thiscall Slug::getCollisionType(Slug *this)

{
  return *(undefined4 *)(*(int *)(this + 0xa0) + 0x54);
}

// ---- Slug::setCollisionType  @ 0x3ed804
/* Slug::setCollisionType(CollisionType) */

void __thiscall Slug::setCollisionType(Slug *this,undefined4 param_2)

{
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x54) = param_2;
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x5c) = param_2;
  *(undefined4 *)(*(int *)(this + 0xa0) + 0x58) = param_2;
  return;
}

// ---- Slug::getVelocity  @ 0x3ed82c
/* Slug::getVelocity() */

undefined4 * Slug::getVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x9c);
  uVar1 = *(undefined4 *)(iVar3 + 0x3c);
  uVar2 = *(undefined4 *)(iVar3 + 0x40);
  uVar4 = *(undefined4 *)(iVar3 + 0x44);
  *in_r0 = *(undefined4 *)(iVar3 + 0x38);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}
