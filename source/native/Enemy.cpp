// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 36 functions

// ---- Enemy::Enemy  @ 0x327704
/* Enemy::Enemy() */

Enemy * __thiscall Enemy::Enemy(Enemy *this)

{
  CollisionObject::CollisionObject((CollisionObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910af8;
  return this;
}

// ---- Enemy::init  @ 0x327730
/* Enemy::init() */

bool __thiscall Enemy::init(Enemy *this)

{
  char cVar1;
  
  cVar1 = CollisionObject::init((CollisionObject *)this);
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x110) = 0;
    *(undefined4 *)(this + 0x114) = 0;
    *(undefined4 *)(this + 0x118) = 0;
    *(undefined4 *)(this + 0x11c) = 0;
    *(undefined4 *)(this + 0x120) = 0;
    *(undefined4 *)(this + 0x124) = 0;
    *(undefined4 *)(this + 0x128) = 0;
    *(undefined4 *)(this + 300) = 0;
    *(undefined4 *)(this + 0x138) = 0;
    *(undefined4 *)(this + 0x13c) = 0;
    *(undefined4 *)(this + 0x140) = 0;
    *(undefined4 *)(this + 0x144) = 0;
    *(undefined4 *)(this + 0x148) = 0;
    *(undefined4 *)(this + 0x14c) = 0;
    *(undefined4 *)(this + 0x150) = 0;
    *(undefined4 *)(this + 0x154) = 0;
    *(undefined4 *)(this + 0x130) = 0x43fa0000;
    *(undefined4 *)(this + 0x158) = 0;
    *(undefined4 *)(this + 0x15c) = 1;
    *(undefined4 *)(this + 0x160) = 0;
    *(undefined4 *)(this + 0xf8) = 0;
    *(undefined4 *)(this + 0xfc) = 0;
    *(undefined4 *)(this + 0x100) = 0;
    *(undefined4 *)(this + 0x104) = 0;
    *(undefined4 *)(this + 0x164) = 0;
    *(undefined4 *)(this + 0x168) = 0;
    *(undefined4 *)(this + 0x170) = 0;
    *(undefined4 *)(this + 0x174) = 0;
    *(undefined4 *)(this + 0x178) = 0;
    *(undefined4 *)(this + 0x17c) = 0;
    *(undefined4 *)(this + 0x188) = 0;
    *(undefined4 *)(this + 0x18c) = 0;
    *(undefined4 *)(this + 400) = 0;
    *(undefined4 *)(this + 0x194) = 0;
    *(undefined4 *)(this + 0x180) = 0;
    *(undefined4 *)(this + 0x198) = 0;
    this[0x19c] = (Enemy)0x0;
    *(undefined4 *)(this + 0x1a0) = 0;
    this[0x1a4] = (Enemy)0x1;
    *(undefined4 *)(this + 0x108) = 0;
  }
  return cVar1 == '\x01';
}

// ---- Enemy::~Enemy  @ 0x32789c
/* WARNING: Removing unreachable block (ram,0x003278be) */
/* Enemy::~Enemy() */

Enemy * __thiscall Enemy::~Enemy(Enemy *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00910af8;
  CollisionObject::~CollisionObject((CollisionObject *)this);
  return this;
}

// ---- Enemy::~Enemy  @ 0x3278d8
/* Enemy::~Enemy() */

Enemy * __thiscall Enemy::~Enemy(Enemy *this)

{
  ~Enemy(this);
  operator_delete(this);
  return this;
}

// ---- Enemy::updateStep  @ 0x3278f4
/* Enemy::updateStep(float) */

void Enemy::updateStep(float param_1)

{
  return;
}

// ---- Enemy::updateRemoteStep  @ 0x327900
/* Enemy::updateRemoteStep(float) */

void Enemy::updateRemoteStep(float param_1)

{
  return;
}

// ---- Enemy::addBodyShape  @ 0x32790c
/* Enemy::addBodyShape() */

void Enemy::addBodyShape(void)

{
  return;
}

// ---- Enemy::removeBodyShape  @ 0x327914
/* Enemy::removeBodyShape() */

void Enemy::removeBodyShape(void)

{
  return;
}

// ---- Enemy::addDamage  @ 0x32791c
/* Enemy::addDamage(int, std::string, int) */

void Enemy::addDamage(void)

{
  return;
}

// ---- Enemy::getHP  @ 0x32792c
/* Enemy::getHP() */

undefined4 Enemy::getHP(void)

{
  return 0;
}

// ---- Enemy::setHP  @ 0x327938
/* Enemy::setHP(int) */

void Enemy::setHP(int param_1)

{
  return;
}

// ---- Enemy::setTargetPos  @ 0x327944
/* Enemy::setTargetPos(cpVect) */

void Enemy::setTargetPos(int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
                        undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x110) = param_3;
  *(undefined4 *)(param_1 + 0x114) = param_4;
  *(undefined4 *)(param_1 + 0x118) = param_5;
  *(undefined4 *)(param_1 + 0x11c) = param_6;
  return;
}

// ---- Enemy::getBodyPosition  @ 0x32796c
/* Enemy::getBodyPosition() */

Enemy * __thiscall Enemy::getBodyPosition(Enemy *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- Enemy::getBodyVelocity  @ 0x327994
/* Enemy::getBodyVelocity() */

Enemy * __thiscall Enemy::getBodyVelocity(Enemy *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- Enemy::getBodyRotation  @ 0x3279bc
/* Enemy::getBodyRotation() */

undefined4 Enemy::getBodyRotation(void)

{
  return 0;
}

// ---- Enemy::canSeeTarget  @ 0x3279d0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003279f8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Enemy::canSeeTarget() */

undefined4 Enemy::canSeeTarget(void)

{
  int *in_r0;
  int iVar1;
  undefined4 uVar2;
  undefined4 in_fpscr;
  byte bVar3;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar4;
  double dVar5;
  float fVar6;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  undefined4 local_70 [2];
  undefined4 local_68;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  
  bVar3 = (byte)((uint)in_fpscr >> 0x18);
  (**(code **)(*in_r0 + 0x1ac))(local_70,in_r0);
  FUN_003268d8(0,in_s1,0,local_60);
  FUN_00326900(local_70[0],in_s1,local_68,in_s3,local_60[0],in_s5,local_58,local_50);
  FUN_00326958((int)*(undefined8 *)(in_r0 + 0x44),in_s1,(int)*(undefined8 *)(in_r0 + 0x46),in_s3,
               local_50[0],in_s5,local_48,&local_80);
  dVar5 = (double)cpvlength(local_80,uStack_7c,uStack_78,uStack_74);
  uVar2 = space;
  fVar6 = (float)dVar5;
  fVar4 = (float)in_r0[0x4c];
  if ((char)(bVar3 & 0xf | (byte)(((uint)(fVar4 < fVar6) << 0x1f) >> 0x18) |
             (byte)(((uint)(fVar4 == fVar6) << 0x1e) >> 0x18) |
            (byte)(((uint)(fVar6 <= fVar4) << 0x1d) >> 0x18)) < '\0') {
    uVar2 = 0;
  }
  else {
    (**(code **)(*in_r0 + 0x1ac))(&local_40,in_r0);
    iVar1 = cpSpaceSegmentQueryFirst(uVar2,uStack_34,local_40,uStack_3c);
    if (iVar1 == 0) {
      uVar2 = 1;
    }
    else {
      uVar2 = 0;
    }
  }
  return uVar2;
}

// ---- Enemy::getDirectionVector  @ 0x327af0
/* Enemy::getDirectionVector() */

undefined4 * Enemy::getDirectionVector(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x13c);
  uVar2 = *(undefined4 *)(in_r1 + 0x140);
  uVar3 = *(undefined4 *)(in_r1 + 0x144);
  *in_r0 = *(undefined4 *)(in_r1 + 0x138);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- Enemy::setDirectionVector  @ 0x327b14
/* Enemy::setDirectionVector(cpVect) */

void Enemy::setDirectionVector
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x138) = param_3;
  *(undefined4 *)(param_1 + 0x13c) = param_4;
  *(undefined4 *)(param_1 + 0x140) = param_5;
  *(undefined4 *)(param_1 + 0x144) = param_6;
  return;
}

// ---- Enemy::getDestinationPoint  @ 0x327b3c
/* Enemy::getDestinationPoint() */

undefined4 * Enemy::getDestinationPoint(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)(in_r1 + 0x14c);
  uVar2 = *(undefined4 *)(in_r1 + 0x150);
  uVar3 = *(undefined4 *)(in_r1 + 0x154);
  *in_r0 = *(undefined4 *)(in_r1 + 0x148);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar3;
  return in_r0;
}

// ---- Enemy::setDestinationPoint  @ 0x327b60
/* Enemy::setDestinationPoint(cpVect) */

void Enemy::setDestinationPoint
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x148) = param_3;
  *(undefined4 *)(param_1 + 0x14c) = param_4;
  *(undefined4 *)(param_1 + 0x150) = param_5;
  *(undefined4 *)(param_1 + 0x154) = param_6;
  return;
}

// ---- Enemy::getFireAngle  @ 0x327b88
/* Enemy::getFireAngle() */

undefined4 Enemy::getFireAngle(void)

{
  return 0;
}

// ---- Enemy::getWeapon  @ 0x327b98
/* Enemy::getWeapon() */

undefined4 Enemy::getWeapon(void)

{
  return 0;
}

// ---- Enemy::setPrimaryRecoilRotation  @ 0x327ba4
/* Enemy::setPrimaryRecoilRotation(double) */

undefined4 Enemy::setPrimaryRecoilRotation(double param_1)

{
  int in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  *(float *)(in_r0 + 0x158) = (float)(double)CONCAT44(in_r3,in_r2);
  return SUB84(param_1,0);
}

// ---- Enemy::setCollisionType  @ 0x327bc0
/* Enemy::setCollisionType(CollisionType) */

void Enemy::setCollisionType(void)

{
  return;
}

// ---- Enemy::resetBody  @ 0x327bcc
/* Enemy::resetBody() */

void Enemy::resetBody(void)

{
  return;
}

// ---- Enemy::setBodyGravity  @ 0x327bd4
/* Enemy::setBodyGravity(cpVect) */

void Enemy::setBodyGravity
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0xf8) = param_3;
  *(undefined4 *)(param_1 + 0xfc) = param_4;
  *(undefined4 *)(param_1 + 0x100) = param_5;
  *(undefined4 *)(param_1 + 0x104) = param_6;
  return;
}

// ---- Enemy::setPlayerID  @ 0x327bfc
/* Enemy::setPlayerID(std::string) */

void Enemy::setPlayerID(void)

{
  return;
}

// ---- Enemy::setPeerID  @ 0x327c08
/* Enemy::setPeerID(std::string) */

void Enemy::setPeerID(void)

{
  return;
}

// ---- Enemy::getSearchPoint  @ 0x327c14
/* Enemy::getSearchPoint() */

Enemy * __thiscall Enemy::getSearchPoint(Enemy *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- Enemy::setRemotePosition  @ 0x327c3c
/* Enemy::setRemotePosition(cpVect) */

void Enemy::setRemotePosition
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x170) = param_3;
  *(undefined4 *)(param_1 + 0x174) = param_4;
  *(undefined4 *)(param_1 + 0x178) = param_5;
  *(undefined4 *)(param_1 + 0x17c) = param_6;
  return;
}

// ---- Enemy::setRemoteVelocity  @ 0x327c64
/* Enemy::setRemoteVelocity(cpVect) */

void Enemy::setRemoteVelocity
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  *(undefined4 *)(param_1 + 0x188) = param_3;
  *(undefined4 *)(param_1 + 0x18c) = param_4;
  *(undefined4 *)(param_1 + 400) = param_5;
  *(undefined4 *)(param_1 + 0x194) = param_6;
  return;
}

// ---- Enemy::setRemoteRotation  @ 0x327c8c
/* Enemy::setRemoteRotation(float) */

void __thiscall Enemy::setRemoteRotation(Enemy *this,float param_1)

{
  undefined4 in_r1;
  
  *(undefined4 *)(this + 0x180) = in_r1;
  return;
}

// ---- Enemy::setRemoteFireAngle  @ 0x327ca0
/* Enemy::setRemoteFireAngle(float) */

void Enemy::setRemoteFireAngle(float param_1)

{
  return;
}

// ---- Enemy::setRemoteFire  @ 0x327cac
/* Enemy::setRemoteFire(bool) */

void Enemy::setRemoteFire(bool param_1)

{
  return;
}

// ---- Enemy::setRemoteThrust  @ 0x327cbc
/* Enemy::setRemoteThrust(float) */

void Enemy::setRemoteThrust(float param_1)

{
  return;
}

// ---- Enemy::setRemoteMovement  @ 0x327cc8
/* Enemy::setRemoteMovement(cpVect) */

void Enemy::setRemoteMovement(void)

{
  return;
}
