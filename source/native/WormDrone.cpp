// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 31 functions

// ---- WormDrone::create  @ 0x328cfc
/* WormDrone::create() */

WormDrone * WormDrone::create(void)

{
  bool bVar1;
  WormDrone *this;
  int iVar2;
  
  this = operator_new(0x228);
  WormDrone(this);
  if ((this == (WormDrone *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
  {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (WormDrone *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (WormDrone *)0x0;
  }
  return this;
}

// ---- WormDrone::WormDrone  @ 0x42d500
/* WormDrone::WormDrone() */

WormDrone * __thiscall WormDrone::WormDrone(WormDrone *this)

{
  Enemy::Enemy((Enemy *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091d770;
  FUN_007c51b0(this + 0x1d0);
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 500));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x1fc));
  return this;
}

// ---- WormDrone::init  @ 0x42d56c
/* WormDrone::init() */

bool __thiscall WormDrone::init(WormDrone *this)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  float extraout_s0;
  float extraout_s1;
  undefined8 uVar4;
  CCPoint aCStack_18 [8];
  
  cVar1 = Enemy::init((Enemy *)this);
  if (cVar1 == '\x01') {
    cocos2d::CCPoint::CCPoint(aCStack_18,extraout_s0,extraout_s1);
    uVar4 = cocos2d::CCPoint::operator=((CCPoint *)(this + 500),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x1fc),aCStack_18);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("wormDroneSaw.png");
    *(undefined4 *)(this + 0x1ac) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x1ac));
    pcVar3 = *(code **)(**(int **)(this + 0x1ac) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x1ac);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    uVar4 = (*pcVar3)(uVar2,aCStack_18);
    pcVar3 = *(code **)(**(int **)(this + 0x1ac) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x1ac);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1ac),0);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("wormDrone.png");
    *(undefined4 *)(this + 0x1b0) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x1b0));
    pcVar3 = *(code **)(**(int **)(this + 0x1b0) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x1b0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    uVar4 = (*pcVar3)(uVar2,aCStack_18);
    pcVar3 = *(code **)(**(int **)(this + 0x1b0) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0x1b0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1b0),2);
    uVar2 = cocos2d::CCNode::create();
    *(undefined4 *)(this + 0x1bc) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x1bc));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x1bc),0);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("wormDroneT1.png");
    *(undefined4 *)(this + 0x1b4) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x1b4));
    pcVar3 = *(code **)(**(int **)(this + 0x1b4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x1b4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(**(int **)(this + 0x1b4) + 0x4c))(*(undefined4 *)(this + 0x1b4),this + 500);
    (**(code **)(**(int **)(this + 0x1bc) + 0xcc))
              (*(undefined4 *)(this + 0x1bc),*(undefined4 *)(this + 0x1b4),1);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("wormDroneT2.png");
    *(undefined4 *)(this + 0x1b8) = uVar2;
    uVar4 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x1b8));
    pcVar3 = *(code **)(**(int **)(this + 0x1b8) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0x1b8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(**(int **)(this + 0x1b8) + 0x4c))(*(undefined4 *)(this + 0x1b8),this + 0x1fc);
    (**(code **)(**(int **)(this + 0x1bc) + 0xcc))
              (*(undefined4 *)(this + 0x1bc),*(undefined4 *)(this + 0x1b8),0);
    uVar2 = cocos2d::CCParticleSystemQuad::create("Path.plist");
    *(undefined4 *)(this + 0x20c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x20c));
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0x20c),2);
    cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0x20c));
    (**(code **)(**(int **)(this + 0x20c) + 0x2f0))(*(undefined4 *)(this + 0x20c),2);
    (**(code **)(**(int **)(this + 0x20c) + 0x1b4))(*(undefined4 *)(this + 0x20c),0xbf800000);
    (**(code **)(**(int **)(this + 0x20c) + 0x2c8))(*(undefined4 *)(this + 0x20c),0);
    *(undefined4 *)(this + 0x1cc) = 0x3dcccccd;
    *(undefined4 *)(this + 0x1a8) = 0x4b;
    *(undefined4 *)(this + 0x138) = 0;
    *(undefined4 *)(this + 0x13c) = 0;
    *(undefined4 *)(this + 0x140) = 0;
    *(undefined4 *)(this + 0x144) = 0;
    *(undefined4 *)(this + 0x108) = 0x3f000000;
    FUN_007c5e70(this + 0x1d0,&DAT_007ebd38);
    this[0x1d4] = (WormDrone)0x0;
    *(undefined4 *)(this + 0x1d8) = 0;
    *(undefined4 *)(this + 0x1e0) = 0;
    *(undefined4 *)(this + 0x1e4) = 0;
    *(undefined4 *)(this + 0x1e8) = 0;
    *(undefined4 *)(this + 0x1ec) = 0;
    *(undefined4 *)(this + 0x1f0) = 0;
    *(undefined4 *)(this + 0x204) = 0;
    *(undefined4 *)(this + 0x208) = 0;
    this[0x220] = (WormDrone)0x0;
    this[0x221] = (WormDrone)0x0;
    *(undefined4 *)(this + 0x210) = 0;
    *(undefined4 *)(this + 0x214) = 0;
    *(undefined4 *)(this + 0x218) = 0;
    *(undefined4 *)(this + 0x21c) = 0;
    *(undefined4 *)(this + 0x224) = 0;
    this[0x16c] = (WormDrone)0x1;
    this[0x1c8] = (WormDrone)0x0;
    initBody(this);
    initShape();
  }
  return cVar1 == '\x01';
}

// ---- WormDrone::~WormDrone  @ 0x42d9f4
/* WARNING: Removing unreachable block (ram,0x0042daa0) */
/* WormDrone::~WormDrone() */

WormDrone * __thiscall WormDrone::~WormDrone(WormDrone *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091d770;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  (**(code **)(**(int **)(this + 0x1bc) + 0x100))(*(undefined4 *)(this + 0x1bc));
  (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x20c),0);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ac));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1b0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1b4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1b8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x20c));
  FUN_007c5914(this + 0x1d0);
  Enemy::~Enemy((Enemy *)this);
  return this;
}

// ---- WormDrone::~WormDrone  @ 0x42dabc
/* WormDrone::~WormDrone() */

WormDrone * __thiscall WormDrone::~WormDrone(WormDrone *this)

{
  ~WormDrone(this);
  operator_delete(this);
  return this;
}

// ---- WormDrone::sawDamage  @ 0x42dad8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042db70 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::sawDamage() */

void __thiscall WormDrone::sawDamage(WormDrone *this)

{
  int *piVar1;
  int iVar2;
  CCObject *pCVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  CCNotificationCenter *this_00;
  bool bVar7;
  code *pcVar8;
  float fVar9;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  undefined8 in_d0;
  string asStack_6c [4];
  string asStack_68 [4];
  float local_64;
  float local_60;
  CCObject *local_5c;
  float local_58;
  float local_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  
  fVar9 = (float)((ulonglong)in_d0 >> 0x20);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_50,(float)in_d0,fVar9);
  (**(code **)(*(int *)this + 0x184))(&local_40,this);
  cocos2d::__CCPointApplyAffineTransform
            ((cocos2d *)&local_58,(CCPoint *)&local_50,(CCAffineTransform *)&local_40);
  (**(code **)(*worldLayer + 0x188))(&local_40,worldLayer);
  cocos2d::__CCPointApplyAffineTransform
            ((cocos2d *)&local_50,(CCPoint *)&local_58,(CCAffineTransform *)&local_40);
  cocos2d::CCPoint::operator=((CCPoint *)&local_58,(CCPoint *)&local_50);
  fVar9 = (float)FUN_0042c23c(SUB84((double)local_58,0),fVar9,SUB84((double)local_54,0),&local_50);
  if (*(char *)((int)hostSoldier + 0x159) == '\x01') {
LAB_0042dbd8:
    bVar7 = false;
  }
  else {
    iVar2 = cpShapePointQuery(hostSoldier[0x4f],uStack_44,local_50,uStack_4c);
    fVar9 = extraout_s0;
    if (iVar2 == 0) {
      iVar2 = cpShapePointQuery(hostSoldier[0x50],uStack_44,local_50,uStack_4c);
      fVar9 = extraout_s0_00;
      if (iVar2 == 0) goto LAB_0042dbd8;
    }
    bVar7 = true;
  }
  if (bVar7) {
    local_40 = 0;
    uStack_3c = 0;
    local_38 = 0;
    uStack_34 = 0;
    local_64 = (float)*(double *)(*(int *)(this + 0x1c0) + 0x58);
    local_60 = 3.0;
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar9);
    uVar4 = cocos2d::CCFloat::create(extraout_s0_01);
    fVar9 = (float)std::cos(extraout_s0_02);
    uVar5 = cocos2d::CCFloat::create(fVar9);
    fVar9 = (float)std::sin(extraout_s0_03);
    uVar6 = cocos2d::CCFloat::create(fVar9);
    cocos2d::CCInteger::create(0);
    cocos2d::CCInteger::create((int)local_60);
    cocos2d::CCInteger::create(0);
    cocos2d::CCInteger::create(0);
    (**(code **)(*hostSoldier + 0x1c0))(asStack_6c,hostSoldier);
    cocos2d::CCString::create(asStack_6c);
    (**(code **)(*(int *)this + 0x1c0))(asStack_68,this);
    cocos2d::CCString::create(asStack_68);
    local_5c = (CCObject *)cocos2d::CCArray::create(pCVar3,uVar4,uVar5,uVar6);
    FUN_007c5914(asStack_68);
    FUN_007c5914(asStack_6c);
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(this_00,"PlayerDamaged",local_5c);
    piVar1 = hostSoldier;
    pcVar8 = *(code **)(*hostSoldier + 600);
    (**(code **)(*(int *)this + 0x1c0))(asStack_68,this);
    (*pcVar8)(piVar1,0x40400000,asStack_68,0);
    FUN_007c5914(asStack_68);
  }
  return;
}

// ---- WormDrone::getSearchPoint  @ 0x42dd94
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042de28 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::getSearchPoint() */

undefined4 WormDrone::getSearchPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  float fVar2;
  float fVar3;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 in_s1;
  
  uVar1 = FUN_0042c130();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar2 = (float)std::abs(extraout_s0);
  uVar1 = FUN_0042c130();
  VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  fVar3 = (float)std::abs(extraout_s0_00);
  FUN_0042c23c(SUB84((double)(fVar2 + 250.0),0),in_s1,SUB84((double)(fVar3 + 600.0),0),in_r0);
  return in_r0;
}

// ---- WormDrone::jump  @ 0x42de50
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042de7a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::jump() */

void WormDrone::jump(void)

{
  int in_r0;
  undefined4 uVar1;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  uVar1 = *(undefined4 *)(in_r0 + 0x1c0);
  FUN_0042c23c(0,in_s1,SUB84((double)(*(float *)(in_r0 + 0x1cc) * 250.0),0),local_18);
  FUN_0042c53c(local_18[0],in_s1,local_10,in_s3,0,in_s5,0,uVar1);
  return;
}

// ---- WormDrone::addPathAt  @ 0x42dec0
/* WormDrone::addPathAt(cpVect, float) */

void WormDrone::addPathAt(int param_1)

{
  code *pcVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined4 in_stack_00000008;
  CCPoint aCStack_20 [12];
  
  (**(code **)(**(int **)(param_1 + 0x20c) + 0x1dc))
            (*(undefined4 *)(param_1 + 0x20c),in_stack_00000008);
  (**(code **)(**(int **)(param_1 + 0x20c) + 0x1e4))(*(undefined4 *)(param_1 + 0x20c),0);
  (**(code **)(**(int **)(param_1 + 0x20c) + 0x2a8))
            (*(undefined4 *)(param_1 + 0x20c),in_stack_00000008);
  uVar3 = (**(code **)(**(int **)(param_1 + 0x20c) + 0x2b8))
                    (*(undefined4 *)(param_1 + 0x20c),in_stack_00000008);
  pcVar1 = *(code **)(**(int **)(param_1 + 0x20c) + 0x1bc);
  uVar2 = *(undefined4 *)(param_1 + 0x20c);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(uVar2,aCStack_20);
  cocos2d::CCParticleSystem::addParticle(*(CCParticleSystem **)(param_1 + 0x20c));
  return;
}

// ---- WormDrone::updateMoveTo  @ 0x42df8c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042dfd0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::updateMoveTo(cpVect) */

void WormDrone::updateMoveTo
               (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5)

{
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  code *pcVar1;
  double in_d0;
  undefined4 uVar2;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar3;
  undefined4 local_68;
  undefined4 uStack_64;
  undefined4 uStack_60;
  undefined4 uStack_5c;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_1c;
  
  (**(code **)(*param_1 + 0x1ac))(local_48,param_1);
  FUN_0042c2bc(param_3,(int)((ulonglong)in_d0 >> 0x20),param_5,in_s3,local_48[0],in_s5,local_40,
               &local_68);
  dVar3 = (double)cpvlength(local_68,uStack_64,uStack_60,uStack_5c);
  if (10.0 < (float)dVar3) {
    dVar3 = cos(in_d0);
    sin(dVar3);
    uVar2 = (undefined4)((ulonglong)dVar3 >> 0x20);
    FUN_0042c23c(extraout_r0,uVar2,extraout_r0_00,local_38);
    FUN_0042c3f0(local_38[0],uVar2,local_30,local_58);
    pcVar1 = *(code **)(*param_1 + 0x1fc);
    FUN_0042c314(local_58[0],uVar2,local_50,in_s3,0,&local_28);
    (*pcVar1)(param_1,uStack_1c,local_28,uStack_24);
  }
  return;
}

// ---- WormDrone::updateAim  @ 0x42e2e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042e358 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::updateAim(cpVect) */

void WormDrone::updateAim
               (float param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_7,undefined4 param_8,
               undefined4 param_9,undefined4 param_10,undefined4 param_11)

{
  float fVar1;
  float fVar2;
  undefined4 extraout_r1;
  float fVar3;
  double dVar4;
  float local_70;
  undefined4 local_58 [2];
  undefined4 local_50;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  fVar1 = (float)std::cos(param_1);
  fVar2 = (float)std::sin(param_1);
  fVar3 = SUB84((double)fVar1,0);
  FUN_0042c23c(fVar3,param_2,SUB84((double)-fVar2,0),local_58);
  FUN_0042c3f0(param_9,param_2,param_11,local_48);
  FUN_0042c360(local_58[0],param_2,local_50,param_4,local_48[0],param_6,local_40);
  fVar1 = (float)std::cos(fVar3);
  fVar2 = (float)std::sin(fVar3);
  FUN_0042c23c(SUB84((double)fVar1,0),param_2,SUB84((double)-fVar2,0),local_38);
  FUN_0042c3f0(param_9,param_2,param_11,local_28);
  FUN_0042c360(local_38[0],param_2,local_30,param_4,local_28[0],param_6,local_20);
  if ((float)(double)CONCAT44(param_2,SUB84((double)fVar1,0)) <=
      (float)(double)CONCAT44(param_2,fVar3)) {
    fVar1 = -1.0;
  }
  else {
    fVar1 = 1.0;
  }
  if (*(char *)(param_7 + 0x1d4) == '\0') {
    local_70 = 0.15;
  }
  else {
    local_70 = 0.02;
  }
  if ((float)(double)CONCAT44(param_2,fVar3) <= 0.95) {
    if (*(char *)(param_7 + 0x220) == '\0') goto LAB_0042e484;
  }
  local_70 = 0.0;
LAB_0042e484:
  dVar4 = *(double *)(*(int *)(param_7 + 0x1c0) + 0x58) - (double)(fVar1 * local_70);
  cpBodySetAngle(*(undefined4 *)(param_7 + 0x1c0),extraout_r1,SUB84(dVar4,0),
                 (int)((ulonglong)dVar4 >> 0x20));
  return;
}

// ---- WormDrone::updateSprite  @ 0x42e4d0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042e7fe */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::updateSprite(float) */

void WormDrone::updateSprite(float param_1)

{
  int *in_r0;
  float *pfVar1;
  float in_r1;
  undefined1 uVar2;
  int iVar3;
  code *pcVar4;
  float fVar5;
  float in_s1;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  CCPoint local_28 [20];
  
  in_r0[0x81] = (int)((float)in_r0[0x81] + in_r1);
  if ((0 < in_r0[0x6a]) && (0.6 < (float)in_r0[0x81])) {
    iVar3 = in_r0[0x70];
    fVar5 = (float)Sound::volumeForPosition
                             (sndEng,*(undefined4 *)(iVar3 + 0x34),*(undefined4 *)(iVar3 + 0x28),
                              *(undefined4 *)(iVar3 + 0x2c));
    param_1 = (float)Sound::playSoundVP(sndEng,0x21,fVar5,extraout_s1);
    in_r0[0x81] = 0;
    in_s1 = extraout_s1;
  }
  if ((char)in_r0[0x75] == '\0') {
    (**(code **)(*(int *)in_r0[0x6e] + 0x4c))(in_r0[0x6e],in_r0 + 0x7f);
    fVar5 = (float)(**(code **)(*(int *)in_r0[0x6d] + 0x4c))(in_r0[0x6d],in_r0 + 0x7d);
    pcVar4 = *(code **)(*(int *)in_r0[0x6f] + 0x98);
    iVar3 = in_r0[0x6f];
    fVar5 = (float)std::cos(fVar5);
    fVar5 = (float)(*pcVar4)(iVar3,fVar5 * 15.0);
    pcVar4 = *(code **)(*(int *)in_r0[0x6e] + 0x98);
    iVar3 = in_r0[0x6e];
    fVar5 = (float)std::cos(fVar5);
    (*pcVar4)(iVar3,fVar5 * 15.0);
  }
  else {
    (**(code **)(*(int *)in_r0[0x6f] + 0x98))(param_1,in_r0[0x6f],0);
    fVar5 = (float)(**(code **)(*(int *)in_r0[0x6e] + 0x98))(in_r0[0x6e],0);
    pcVar4 = *(code **)(*(int *)in_r0[0x6e] + 0x4c);
    iVar3 = in_r0[0x6e];
    fVar5 = (float)std::cos(fVar5);
    cocos2d::CCPoint::CCPoint(local_28,fVar5,extraout_s1_00);
    fVar5 = (float)(*pcVar4)(iVar3,local_28);
    pcVar4 = *(code **)(*(int *)in_r0[0x6d] + 0x4c);
    iVar3 = in_r0[0x6d];
    fVar5 = (float)std::cos(fVar5);
    cocos2d::CCPoint::CCPoint(local_28,fVar5,extraout_s1_01);
    (*pcVar4)(iVar3,local_28);
    in_s1 = extraout_s1_01;
  }
  pcVar4 = *(code **)(*(int *)in_r0[0x6b] + 0x98);
  iVar3 = in_r0[0x6b];
  fVar5 = (float)(**(code **)(*(int *)in_r0[0x6b] + 0x9c))(in_r0[0x6b]);
  (*pcVar4)(iVar3,fVar5 + (float)in_r0[0x58] * 20.0);
  *(undefined1 *)((int)in_r0 + 0xe6) = 0;
  if ((char)in_r0[0x5b] == '\0') {
    in_r0[0x68] = 0;
  }
  else {
    in_r0[0x68] = (int)((float)in_r0[0x68] + in_r1);
  }
  pfVar1 = (float *)(**(code **)(*in_r0 + 0x50))(in_r0);
  fVar5 = *pfVar1;
  iVar3 = (**(code **)(*in_r0 + 0x50))(in_r0);
  FUN_0042c23c(SUB84((double)fVar5,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_38);
  if ((1.0 < (float)in_r0[0x68]) && ((char)in_r0[0x5b] != '\0')) {
    FUN_0042c23c(0,in_s1,0,local_28);
    iVar3 = FUN_0042c8f8(local_38,uStack_34,uStack_30,uStack_2c);
    if (iVar3 != 0) {
      uVar2 = 1;
      goto LAB_0042e84e;
    }
  }
  uVar2 = 0;
LAB_0042e84e:
  (**(code **)(*in_r0 + 0x90))(in_r0,uVar2);
  return;
}

// ---- WormDrone::updateBody  @ 0x42e878
/* WormDrone::updateBody(cpVect, float) */

void __thiscall WormDrone::updateBody(float param_1,float param_2,WormDrone *this)

{
  code *pcVar1;
  float in_stack_00000008;
  CCPoint aCStack_20 [12];
  
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_20,param_1,param_2);
  (*pcVar1)(this,aCStack_20);
  (**(code **)(*(int *)this + 0x98))(this,-in_stack_00000008 * 57.29578);
  return;
}

// ---- WormDrone::updateRemoteStep  @ 0x42e8e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042e96a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::updateRemoteStep(float) */

void WormDrone::updateRemoteStep(float param_1)

{
  WormDrone WVar1;
  WormDrone *in_r0;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  CCNotificationCenter *this;
  float in_r1;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  int iVar5;
  undefined4 uVar6;
  code *pcVar7;
  undefined4 in_fpscr;
  byte bVar8;
  float fVar9;
  float fVar10;
  float extraout_s0;
  float extraout_s0_00;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined4 local_f0;
  undefined4 uStack_ec;
  undefined4 local_e8 [2];
  undefined4 local_e0;
  undefined4 local_d8;
  undefined4 uStack_d4;
  undefined4 local_d0;
  undefined4 uStack_cc;
  undefined4 local_c8 [2];
  undefined4 local_c0;
  undefined4 local_b8 [2];
  undefined4 local_b0;
  undefined4 local_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
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
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  bVar8 = (byte)((uint)in_fpscr >> 0x18);
  if (*(int *)(*(int *)(in_r0 + 0x1c0) + 0x90) != 0) {
    *(undefined4 *)(*(int *)(in_r0 + 0x1c0) + 0x90) = 0;
    **(undefined4 **)(in_r0 + 0x1c0) = &LAB_0042d4ec_1;
  }
  *(float *)(in_r0 + 0x160) = *(float *)(in_r0 + 0x160) + in_r1;
  (**(code **)(*(int *)in_r0 + 0x1ac))(param_1,local_98,in_r0);
  FUN_0042c2bc((int)*(undefined8 *)(in_r0 + 0x170),in_s1,(int)*(undefined8 *)(in_r0 + 0x178),in_s3,
               local_98[0],in_s5,local_90,local_88);
  fVar9 = 0.3745 - in_r1 * 15.0;
  if ((char)(bVar8 & 0xf | (byte)(((uint)(fVar9 < 0.05) << 0x1f) >> 0x18) |
             (byte)(((uint)(fVar9 == 0.05) << 0x1e) >> 0x18) |
            (byte)(((uint)(0.05 <= fVar9) << 0x1d) >> 0x18)) < '\0') {
    uVar3 = 0x9999999a;
  }
  else {
    uVar3 = SUB84(0.3745 - (double)(in_r1 * 15.0),0);
  }
  FUN_0042c314(local_88[0],in_s1,local_80,in_s3,uVar3,local_e8);
  (**(code **)(*(int *)in_r0 + 0x1ac))(local_78,in_r0);
  FUN_0042c264(local_78[0],in_s1,local_70,in_s3,local_e8[0],in_s5,local_e0,&local_d8);
  fVar9 = (float)(**(code **)(*(int *)in_r0 + 500))(in_r0);
  fVar9 = (float)std::cos(fVar9);
  fVar10 = (float)(**(code **)(*(int *)in_r0 + 500))(in_r0);
  fVar10 = (float)std::sin(fVar10);
  fVar9 = (float)FUN_0042c23c(SUB84((double)fVar9,0),in_s1,SUB84((double)fVar10,0),local_c8);
  fVar9 = (float)std::cos(fVar9);
  fVar10 = (float)std::sin(extraout_s0);
  FUN_0042c23c(SUB84((double)fVar9,0),in_s1,SUB84((double)fVar10,0),local_b8);
  FUN_0042c314(local_c8[0],in_s1,local_c0,in_s3,0x66666666,local_68);
  FUN_0042c314(local_b8[0],in_s1,local_b0,in_s3,0x33333333,local_58);
  FUN_0042c264(local_68[0],in_s1,local_60,in_s3,local_58[0],in_s5,local_50,&local_a8);
  fVar9 = (float)FUN_0042c668(local_a8,uStack_a4,uStack_a0,uStack_9c);
  FUN_0042c4e4(local_d8,in_s1,local_d0,*(undefined4 *)(in_r0 + 0x1c0));
  local_f0 = SUB84((double)-(fVar9 * 0.017453292),0);
  uStack_ec = (undefined4)((ulonglong)(double)-(fVar9 * 0.017453292) >> 0x20);
  cpBodySetAngle(*(undefined4 *)(in_r0 + 0x1c0),extraout_r1,local_f0,uStack_ec);
  updateBody(in_r0,uStack_cc,local_d8,uStack_d4);
  uVar3 = mapManager;
  (**(code **)(*(int *)in_r0 + 0x1ac))(&local_48,in_r0);
  WVar1 = (WormDrone)MapManager::mapCollision(uVar3,uStack_3c,local_48,uStack_44);
  in_r0[0x1d4] = WVar1;
  if (WVar1 == (WormDrone)0x0) {
    fVar9 = (float)(**(code **)(*(int *)in_r0 + 0x214))(in_r0,0x241);
    iVar5 = *(int *)(in_r0 + 0x1c0);
    uVar3 = *(undefined4 *)(iVar5 + 0x2c);
    uVar4 = *(undefined4 *)(iVar5 + 0x30);
    uVar6 = *(undefined4 *)(iVar5 + 0x34);
    *(undefined4 *)(in_r0 + 0x210) = *(undefined4 *)(iVar5 + 0x28);
    *(undefined4 *)(in_r0 + 0x214) = uVar3;
    *(undefined4 *)(in_r0 + 0x218) = uVar4;
    *(undefined4 *)(in_r0 + 0x21c) = uVar6;
  }
  else {
    pcVar7 = *(code **)(*(int *)in_r0 + 0x218);
    FUN_0042c23c(0,in_s1,0,&local_38);
    (*pcVar7)(in_r0,uStack_2c,local_38,uStack_34);
    (**(code **)(*(int *)in_r0 + 0x214))(in_r0,0);
    *(float *)(in_r0 + 0x208) = *(float *)(in_r0 + 0x208) + in_r1;
    if (0.1 < *(float *)(in_r0 + 0x208)) {
      *(undefined4 *)(in_r0 + 0x208) = 0;
      fVar9 = (float)(**(code **)(*(int *)in_r0 + 0x50))(in_r0);
      pCVar2 = (CCObject *)cocos2d::CCFloat::create(fVar9);
      fVar9 = (float)(**(code **)(*(int *)in_r0 + 0x50))(in_r0);
      uVar3 = cocos2d::CCFloat::create(fVar9);
      fVar9 = (float)(**(code **)(*(int *)in_r0 + 0x9c))(in_r0);
      uVar4 = cocos2d::CCFloat::create(fVar9);
      pCVar2 = (CCObject *)cocos2d::CCArray::create(pCVar2,uVar3,uVar4,0);
      this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(this,"GroundHit",pCVar2);
    }
    FUN_0042c2bc((int)*(undefined8 *)(in_r0 + 0x210),in_s1,(int)*(undefined8 *)(in_r0 + 0x218),in_s3
                 ,(int)*(undefined8 *)(*(int *)(in_r0 + 0x1c0) + 0x28),in_s5,
                 (int)*(undefined8 *)(*(int *)(in_r0 + 0x1c0) + 0x30),&local_28);
    uVar3 = cpvlength(local_28,uStack_24,uStack_20,uStack_1c);
    fVar9 = extraout_s0_00;
    if (20.0 < (float)(double)CONCAT44(extraout_r1_00,uVar3)) {
      iVar5 = *(int *)(in_r0 + 0x1c0);
      uVar3 = *(undefined4 *)(iVar5 + 0x2c);
      uVar4 = *(undefined4 *)(iVar5 + 0x30);
      uVar6 = *(undefined4 *)(iVar5 + 0x34);
      *(undefined4 *)(in_r0 + 0x210) = *(undefined4 *)(iVar5 + 0x28);
      *(undefined4 *)(in_r0 + 0x214) = uVar3;
      *(undefined4 *)(in_r0 + 0x218) = uVar4;
      *(undefined4 *)(in_r0 + 0x21c) = uVar6;
      iVar5 = *(int *)(in_r0 + 0x1c0);
      (**(code **)(*(int *)in_r0 + 0x9c))(in_r0);
      fVar9 = (float)addPathAt(in_r0,*(undefined4 *)(iVar5 + 0x34),*(undefined4 *)(iVar5 + 0x28),
                               *(undefined4 *)(iVar5 + 0x2c));
    }
  }
  *(float *)(in_r0 + 0x1f0) = *(float *)(in_r0 + 0x1f0) + in_r1;
  if (0.13 < *(float *)(in_r0 + 0x1f0)) {
    fVar9 = (float)sawDamage(in_r0);
    *(undefined4 *)(in_r0 + 0x1f0) = 0;
  }
  updateSprite(fVar9);
  return;
}

// ---- WormDrone::updateStep  @ 0x42ee10
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042eec6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::updateStep(float) */

void WormDrone::updateStep(float param_1)

{
  uint uVar1;
  WormDrone *pWVar2;
  WormDrone *in_r0;
  CCObject *pCVar3;
  CCNotificationCenter *this;
  float in_r1;
  undefined4 uVar4;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  code *pcVar8;
  uint in_fpscr;
  byte bVar9;
  float extraout_s0;
  float fVar10;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar11;
  undefined4 local_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  float local_c8;
  WormDrone *local_c4;
  WormDrone local_bd;
  CCObject *local_bc;
  float local_b8;
  float local_b4;
  undefined4 local_b0 [2];
  undefined4 local_a8;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 uStack_94;
  undefined4 local_90 [2];
  undefined4 local_88;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 uStack_74;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if (*(int *)(*(int *)(in_r0 + 0x1c0) + 0x90) == 0) {
    *(WormDrone **)(*(int *)(in_r0 + 0x1c0) + 0x90) = in_r0;
    **(undefined4 **)(in_r0 + 0x1c0) = 0x42d35d;
  }
  *(float *)(in_r0 + 0x160) = *(float *)(in_r0 + 0x160) + in_r1;
  local_c8 = in_r1;
  local_c4 = in_r0;
  updateThrust(in_r0,param_1);
  iVar6 = *(int *)(local_c4 + 0x15c);
  if (iVar6 == 3) {
    updateMoveTo(local_c4,*(undefined4 *)(local_c4 + 0x11c),*(undefined4 *)(local_c4 + 0x110),
                 *(undefined4 *)(local_c4 + 0x114));
    (**(code **)(*(int *)local_c4 + 0x1ac))(local_b0,local_c4);
    FUN_0042c2bc((int)*(undefined8 *)(local_c4 + 0x110),in_s1,(int)*(undefined8 *)(local_c4 + 0x118)
                 ,in_s3,local_b0[0],in_s5,local_a8,&local_a0);
    updateAim(local_c4,uStack_94,local_a0,uStack_9c);
  }
  else if ((iVar6 != 4) && (iVar6 == 2)) {
    *(float *)(local_c4 + 0x164) = *(float *)(local_c4 + 0x164) + local_c8;
    fVar10 = *(float *)(local_c4 + 0x164);
    fVar11 = *(float *)(local_c4 + 0x168);
    uVar1 = in_fpscr & 0xfffffff | (uint)(fVar10 < fVar11) << 0x1f |
            (uint)(fVar10 == fVar11) << 0x1e;
    in_fpscr = uVar1 | (uint)(NAN(fVar10) || NAN(fVar11)) << 0x1c;
    bVar9 = (byte)(uVar1 >> 0x18);
    if (!(bool)(bVar9 >> 6 & 1) && bVar9 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1)) {
      uVar4 = FUN_0042c130();
      VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
      fVar10 = (float)std::abs(extraout_s0);
      pWVar2 = local_c4;
      *(float *)(local_c4 + 0x168) = fVar10 + 15.0;
      *(undefined4 *)(local_c4 + 0x164) = 0;
      (**(code **)(*(int *)local_c4 + 0x220))(&local_d8,local_c4);
      *(undefined4 *)(pWVar2 + 0x110) = local_d8;
      *(undefined4 *)(pWVar2 + 0x114) = uStack_d4;
      *(undefined4 *)(pWVar2 + 0x118) = uStack_d0;
      *(undefined4 *)(pWVar2 + 0x11c) = uStack_cc;
    }
    updateMoveTo(local_c4,*(undefined4 *)(local_c4 + 0x11c),*(undefined4 *)(local_c4 + 0x110),
                 *(undefined4 *)(local_c4 + 0x114));
    (**(code **)(*(int *)local_c4 + 0x1ac))(local_90,local_c4);
    FUN_0042c2bc((int)*(undefined8 *)(local_c4 + 0x110),in_s1,(int)*(undefined8 *)(local_c4 + 0x118)
                 ,in_s3,local_90[0],in_s5,local_88,&local_80);
    updateAim(local_c4,uStack_74,local_80,uStack_7c);
  }
  bVar9 = (byte)(in_fpscr >> 0x18);
  *(float *)(local_c4 + 0x224) = *(float *)(local_c4 + 0x224) + local_c8;
  if (((local_c4[0x221] != (WormDrone)0x1) &&
      (bVar9 = bVar9 & 0xf, 6.0 < *(float *)(local_c4 + 0x224))) &&
     (150.0 < *(double *)(local_c4 + 0x118) - *(double *)(*(int *)(local_c4 + 0x1c0) + 0x40))) {
    jump();
    local_c4[0x221] = (WormDrone)0x1;
    *(undefined4 *)(local_c4 + 0x224) = 0;
  }
  if ((local_c4[0x221] != (WormDrone)0x0) && (local_c4[0xe6] != (WormDrone)0x0)) {
    bVar9 = bVar9 & 0xf;
    if (0.0 < *(double *)(*(int *)(local_c4 + 0x1c0) + 0x40)) {
      local_c4[0x1d4] = (WormDrone)0x1;
      local_c4[0x220] = (WormDrone)0x1;
      iVar6 = *(int *)(local_c4 + 0x1c0);
      uVar4 = *(undefined4 *)(iVar6 + 0x2c);
      uVar5 = *(undefined4 *)(iVar6 + 0x30);
      uVar7 = *(undefined4 *)(iVar6 + 0x34);
      *(undefined4 *)(local_c4 + 0x210) = *(undefined4 *)(iVar6 + 0x28);
      *(undefined4 *)(local_c4 + 0x214) = uVar4;
      *(undefined4 *)(local_c4 + 0x218) = uVar5;
      *(undefined4 *)(local_c4 + 0x21c) = uVar7;
      *(undefined4 *)(local_c4 + 0x1d8) = 0;
    }
    local_c4[0x221] = (WormDrone)0x0;
  }
  uVar4 = mapManager;
  (**(code **)(*(int *)local_c4 + 0x1ac))(&local_70,local_c4);
  local_bd = (WormDrone)MapManager::mapCollision(uVar4,uStack_64,local_70,uStack_6c);
  pWVar2 = local_c4;
  if (local_c4[0x220] != (WormDrone)0x1) {
    local_c4[0x1d4] = local_bd;
  }
  *(float *)(local_c4 + 0x1d8) = *(float *)(local_c4 + 0x1d8) + local_c8;
  bVar9 = bVar9 & 0xf;
  if (1.0 < *(float *)(local_c4 + 0x1d8)) {
    local_c4[0x220] = (WormDrone)0x0;
  }
  if ((local_c4[0x1d4] == (WormDrone)0x0) || (local_bd == (WormDrone)0x0)) {
    if ((local_c4[0x220] == (WormDrone)0x1) ||
       ((local_c4[0x1d4] == (WormDrone)0x0 && (local_bd == (WormDrone)0x0)))) {
      (**(code **)(*(int *)local_c4 + 0x214))(local_c4,0x241);
    }
    else {
      local_c4[0x1d4] = (WormDrone)0x0;
      local_c4[0x220] = (WormDrone)0x0;
      (**(code **)(*(int *)local_c4 + 0x214))(local_c4,0);
    }
    pWVar2 = local_c4;
    pcVar8 = *(code **)(*(int *)local_c4 + 0x218);
    FUN_0042c23c(0,in_s1,0,&local_40);
    fVar10 = (float)(*pcVar8)(pWVar2,uStack_34,local_40,uStack_3c);
    if (local_c4[0xe6] != (WormDrone)0x0) {
      (**(code **)(*(int *)local_c4 + 0x1ac))(local_30,local_c4);
      FUN_0042c2bc((int)*(undefined8 *)(local_c4 + 0x1e0),in_s1,
                   (int)*(undefined8 *)(local_c4 + 0x1e8),in_s3,local_30[0],in_s5,local_28,&local_20
                  );
      uVar4 = cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
      pWVar2 = local_c4;
      local_b4 = (float)(double)CONCAT44(extraout_r1_00,uVar4);
      bVar9 = bVar9 & 0xf;
      fVar10 = extraout_s0_01;
      if (3.0 < *(float *)(local_c4 + 0x1d8)) {
        *(undefined4 *)(local_c4 + 0x1d8) = 0;
        fVar10 = (float)(**(code **)(*(int *)local_c4 + 0x1ac))(&local_d8,local_c4);
        *(undefined4 *)(pWVar2 + 0x1e0) = local_d8;
        *(undefined4 *)(pWVar2 + 0x1e4) = uStack_d4;
        *(undefined4 *)(pWVar2 + 0x1e8) = uStack_d0;
        *(undefined4 *)(pWVar2 + 0x1ec) = uStack_cc;
        if ((char)(bVar9 & 0xf | (byte)(((uint)(local_b4 < 25.0) << 0x1f) >> 0x18) |
                   (byte)(((uint)(local_b4 == 25.0) << 0x1e) >> 0x18) |
                  (byte)(((uint)(25.0 <= local_b4) << 0x1d) >> 0x18)) < '\0') {
          local_c4[0x1d4] = (WormDrone)0x1;
          local_c4[0x220] = (WormDrone)0x1;
          iVar6 = *(int *)(local_c4 + 0x1c0);
          uVar4 = *(undefined4 *)(iVar6 + 0x2c);
          uVar5 = *(undefined4 *)(iVar6 + 0x30);
          uVar7 = *(undefined4 *)(iVar6 + 0x34);
          *(undefined4 *)(local_c4 + 0x210) = *(undefined4 *)(iVar6 + 0x28);
          *(undefined4 *)(local_c4 + 0x214) = uVar4;
          *(undefined4 *)(local_c4 + 0x218) = uVar5;
          *(undefined4 *)(local_c4 + 0x21c) = uVar7;
        }
      }
    }
    *(float *)(local_c4 + 0x1f0) = *(float *)(local_c4 + 0x1f0) + local_c8;
    if (0.13 < *(float *)(local_c4 + 0x1f0)) {
      fVar10 = (float)sawDamage(local_c4);
      *(undefined4 *)(local_c4 + 0x1f0) = 0;
    }
  }
  else {
    pcVar8 = *(code **)(*(int *)local_c4 + 0x218);
    FUN_0042c23c(0,in_s1,0,&local_60);
    (*pcVar8)(pWVar2,uStack_54,local_60,uStack_5c);
    (**(code **)(*(int *)local_c4 + 0x214))(local_c4,0);
    *(float *)(local_c4 + 0x208) = *(float *)(local_c4 + 0x208) + local_c8;
    if (0.1 < *(float *)(local_c4 + 0x208)) {
      *(undefined4 *)(local_c4 + 0x208) = 0;
      fVar10 = (float)(**(code **)(*(int *)local_c4 + 0x50))(local_c4);
      pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar10);
      fVar10 = (float)(**(code **)(*(int *)local_c4 + 0x50))(local_c4);
      uVar4 = cocos2d::CCFloat::create(fVar10);
      fVar10 = (float)(**(code **)(*(int *)local_c4 + 0x9c))(local_c4);
      uVar5 = cocos2d::CCFloat::create(fVar10);
      local_bc = (CCObject *)cocos2d::CCArray::create(pCVar3,uVar4,uVar5,0);
      this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(this,"GroundHit",local_bc);
    }
    FUN_0042c2bc((int)*(undefined8 *)(local_c4 + 0x210),in_s1,(int)*(undefined8 *)(local_c4 + 0x218)
                 ,in_s3,(int)*(undefined8 *)(*(int *)(local_c4 + 0x1c0) + 0x28),in_s5,
                 (int)*(undefined8 *)(*(int *)(local_c4 + 0x1c0) + 0x30),&local_50);
    uVar4 = cpvlength(local_50,uStack_4c,uStack_48,uStack_44);
    local_b8 = (float)(double)CONCAT44(extraout_r1,uVar4);
    fVar10 = extraout_s0_00;
    if (20.0 < local_b8) {
      iVar6 = *(int *)(local_c4 + 0x1c0);
      uVar4 = *(undefined4 *)(iVar6 + 0x2c);
      uVar5 = *(undefined4 *)(iVar6 + 0x30);
      uVar7 = *(undefined4 *)(iVar6 + 0x34);
      *(undefined4 *)(local_c4 + 0x210) = *(undefined4 *)(iVar6 + 0x28);
      *(undefined4 *)(local_c4 + 0x214) = uVar4;
      *(undefined4 *)(local_c4 + 0x218) = uVar5;
      *(undefined4 *)(local_c4 + 0x21c) = uVar7;
      iVar6 = *(int *)(local_c4 + 0x1c0);
      (**(code **)(*(int *)local_c4 + 0x9c))(local_c4);
      fVar10 = (float)addPathAt(local_c4,*(undefined4 *)(iVar6 + 0x34),*(undefined4 *)(iVar6 + 0x28)
                                ,*(undefined4 *)(iVar6 + 0x2c));
    }
  }
  updateSprite(fVar10);
  return;
}

// ---- WormDrone::lookForTarget  @ 0x42f4c8
/* WormDrone::lookForTarget() */

void __thiscall WormDrone::lookForTarget(WormDrone *this)

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

// ---- WormDrone::canSeeTarget  @ 0x42f4fc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042f53a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::canSeeTarget() */

bool WormDrone::canSeeTarget(void)

{
  int *in_r0;
  uint in_fpscr;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar1;
  float fVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 local_18 [2];
  undefined4 local_10;
  
  (**(code **)(*in_r0 + 0x1ac))(local_18,in_r0);
  FUN_0042c2bc((int)*(undefined8 *)(in_r0 + 0x44),in_s1,(int)*(undefined8 *)(in_r0 + 0x46),in_s3,
               local_18[0],in_s5,local_10,&local_28);
  dVar1 = (double)cpvlength(local_28,uStack_24,uStack_20,uStack_1c);
  fVar2 = (float)dVar1;
  return (int)(in_fpscr & 0xfffffff | (uint)(fVar2 < 700.0) << 0x1f | (uint)(fVar2 == 700.0) << 0x1e
              | (uint)(700.0 <= fVar2) << 0x1d) < 0;
}

// ---- WormDrone::initBody  @ 0x42f578
/* WormDrone::initBody() */

void __thiscall WormDrone::initBody(WormDrone *this)

{
  undefined4 uVar1;
  int iVar2;
  
  uVar1 = cpBodyNew(SUB84((double)*(float *)(this + 0x1cc),0),
                    (int)((ulonglong)(double)*(float *)(this + 0x1cc) >> 0x20),
                    SUB84((double)(*(float *)(this + 0x1cc) * 200.0),0),
                    (int)((ulonglong)(double)(*(float *)(this + 0x1cc) * 200.0) >> 0x20));
  *(undefined4 *)(this + 0x1c0) = uVar1;
  **(undefined4 **)(this + 0x1c0) = 0x42d35d;
  iVar2 = *(int *)(this + 0x1c0);
  *(undefined4 *)(iVar2 + 0x88) = 0;
  *(undefined4 *)(iVar2 + 0x8c) = 0x40240000;
  *(WormDrone **)(*(int *)(this + 0x1c0) + 0x90) = this;
  return;
}

// ---- WormDrone::initShape  @ 0x42f5f0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0042f61e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* WormDrone::initShape() */

void WormDrone::initShape(void)

{
  int *in_r0;
  int iVar1;
  undefined4 in_s1;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  (**(code **)(*in_r0 + 0x40))(in_r0,playerScale);
  FUN_0042c23c(0,in_s1,0,auStack_50);
  FUN_0042c23c(0,in_s1,0,auStack_40);
  FUN_0042c23c(0,in_s1,0,auStack_30);
  FUN_0042c23c(0,in_s1,0,auStack_20);
  iVar1 = cpPolyShapeNew(in_r0[0x70],4,auStack_50);
  in_r0[0x71] = iVar1;
  iVar1 = in_r0[0x71];
  *(undefined4 *)(iVar1 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar1 + 0x34) = 0x3fe99999;
  iVar1 = in_r0[0x71];
  *(undefined4 *)(iVar1 + 0x38) = 0xa0000000;
  *(undefined4 *)(iVar1 + 0x3c) = 0x3fb99999;
  *(int **)(in_r0[0x71] + 0x50) = in_r0;
  return;
}

// ---- WormDrone::resetBody  @ 0x42f6d8
/* WormDrone::resetBody() */

void __thiscall WormDrone::resetBody(WormDrone *this)

{
  int iVar1;
  
  iVar1 = *(int *)(this + 0x1c0);
  *(undefined4 *)(iVar1 + 0x38) = 0;
  *(undefined4 *)(iVar1 + 0x3c) = 0;
  *(undefined4 *)(iVar1 + 0x40) = 0;
  *(undefined4 *)(iVar1 + 0x44) = 0;
  iVar1 = *(int *)(this + 0x1c0);
  *(undefined4 *)(iVar1 + 0x48) = 0;
  *(undefined4 *)(iVar1 + 0x4c) = 0;
  *(undefined4 *)(iVar1 + 0x50) = 0;
  *(undefined4 *)(iVar1 + 0x54) = 0;
  *(undefined4 *)(this + 0x1a0) = 0;
  return;
}

// ---- WormDrone::addBodyShape  @ 0x42f728
/* WormDrone::addBodyShape() */

void __thiscall WormDrone::addBodyShape(WormDrone *this)

{
  if (this[0x1c8] != (WormDrone)0x1) {
    cpSpaceAddBody(space,*(undefined4 *)(this + 0x1c0));
    cpSpaceAddShape(space,*(undefined4 *)(this + 0x1c4));
    this[0x1c8] = (WormDrone)0x1;
  }
  return;
}

// ---- WormDrone::removeBodyShape  @ 0x42f780
/* WormDrone::removeBodyShape() */

void __thiscall WormDrone::removeBodyShape(WormDrone *this)

{
  if (this[0x1c8] != (WormDrone)0x0) {
    cpSpaceRemoveBody(space,*(undefined4 *)(this + 0x1c0));
    cpSpaceRemoveShape(space,*(undefined4 *)(this + 0x1c4));
    this[0x1c8] = (WormDrone)0x0;
  }
  return;
}

// ---- WormDrone::addDamage  @ 0x42f7d0
/* WormDrone::addDamage(int, std::string, int) */

void __thiscall
WormDrone::addDamage(WormDrone *this,int param_1,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  uint in_fpscr;
  double dVar4;
  float fVar5;
  float fVar6;
  
  *(int *)(this + 0x1a8) =
       *(int *)(this + 0x1a8) - param_1 & ~(*(int *)(this + 0x1a8) - param_1 >> 0x1f);
  thunk_FUN_007c653c(this + 0xec,param_3);
  *(undefined4 *)(this + 0xf0) = param_4;
  uVar1 = sndEng;
  iVar3 = *(int *)(this + 0x1c0);
  dVar4 = (double)VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
  in_fpscr = in_fpscr & 0xfffffff;
  if (0.5 <= (dVar4 * 0.25) / 30.0) {
    dVar4 = (double)VectorSignedToFloat(param_1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)((dVar4 * 0.25) / 30.0 + 0.75);
  }
  else {
    fVar6 = 1.25;
  }
  uVar2 = FUN_0042c130();
  fVar5 = (float)VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
  Sound::playSoundPositionVP
            (uVar1,0xf,*(undefined4 *)(iVar3 + 0x28),*(undefined4 *)(iVar3 + 0x2c),
             *(undefined4 *)(iVar3 + 0x30),*(undefined4 *)(iVar3 + 0x34),fVar6,
             (fVar5 / 1.0737418e+09 - 1.0) * 0.25 + 1.0);
  return;
}

// ---- WormDrone::getHP  @ 0x42f8dc
/* WormDrone::getHP() */

undefined4 __thiscall WormDrone::getHP(WormDrone *this)

{
  return *(undefined4 *)(this + 0x1a8);
}

// ---- WormDrone::getBodyPosition  @ 0x42f8ec
/* WormDrone::getBodyPosition() */

undefined4 * WormDrone::getBodyPosition(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar3 = *(int *)(in_r1 + 0x1c0);
  uVar1 = *(undefined4 *)(iVar3 + 0x2c);
  uVar2 = *(undefined4 *)(iVar3 + 0x30);
  uVar4 = *(undefined4 *)(iVar3 + 0x34);
  *in_r0 = *(undefined4 *)(iVar3 + 0x28);
  in_r0[1] = uVar1;
  in_r0[2] = uVar2;
  in_r0[3] = uVar4;
  return in_r0;
}

// ---- WormDrone::getBodyRotation  @ 0x42f910
/* WormDrone::getBodyRotation() */

float __thiscall WormDrone::getBodyRotation(WormDrone *this)

{
  return (float)*(double *)(*(int *)(this + 0x1c0) + 0x58);
}

// ---- WormDrone::getBodyVelocity  @ 0x42f92c
/* WormDrone::getBodyVelocity() */

undefined4 * WormDrone::getBodyVelocity(void)

{
  undefined4 *in_r0;
  int in_r1;
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  
  if (*(int *)(*(int *)(in_r1 + 0x1c0) + 0x90) == 0) {
    uVar1 = *(undefined4 *)(in_r1 + 0x18c);
    uVar2 = *(undefined4 *)(in_r1 + 400);
    uVar4 = *(undefined4 *)(in_r1 + 0x194);
    *in_r0 = *(undefined4 *)(in_r1 + 0x188);
    in_r0[1] = uVar1;
    in_r0[2] = uVar2;
    in_r0[3] = uVar4;
  }
  else {
    iVar3 = *(int *)(in_r1 + 0x1c0);
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

// ---- WormDrone::setCollisionType  @ 0x42f970
/* WormDrone::setCollisionType(CollisionType) */

void __thiscall WormDrone::setCollisionType(WormDrone *this,undefined4 param_2)

{
  *(undefined4 *)(*(int *)(this + 0x1c4) + 0x54) = param_2;
  *(undefined4 *)(*(int *)(this + 0x1c4) + 0x5c) = param_2;
  *(undefined4 *)(*(int *)(this + 0x1c4) + 0x58) = param_2;
  return;
}

// ---- WormDrone::getPeerID  @ 0x42f998
/* WormDrone::getPeerID() */

undefined4 WormDrone::getPeerID(void)

{
  undefined4 in_r0;
  int in_r1;
  
  FUN_007c64e8(in_r0,in_r1 + 0x1d0);
  return in_r0;
}

// ---- WormDrone::setPeerID  @ 0x42f9b8
/* WormDrone::setPeerID(std::string) */

void __thiscall WormDrone::setPeerID(WormDrone *this,undefined4 param_2)

{
  thunk_FUN_007c653c(this + 0x1d0,param_2);
  return;
}

// ---- WormDrone::setHP  @ 0x42f9d4
/* WormDrone::setHP(int) */

void __thiscall WormDrone::setHP(WormDrone *this,int param_1)

{
  *(int *)(this + 0x1a8) = param_1;
  return;
}
