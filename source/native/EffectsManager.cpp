// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 28 functions

// ---- EffectsManager::EffectsManager  @ 0x323d14
/* EffectsManager::EffectsManager() */

EffectsManager * __thiscall EffectsManager::EffectsManager(EffectsManager *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910948;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 300));
  return this;
}

// ---- EffectsManager::init  @ 0x323d5c
/* EffectsManager::init() */

undefined4 __thiscall EffectsManager::init(EffectsManager *this)

{
  char cVar1;
  CCNotificationCenter *pCVar2;
  PlayerDeath *this_00;
  Explosion *this_01;
  undefined4 uVar3;
  code *pcVar4;
  undefined8 uVar5;
  int local_88;
  int local_84;
  CCPoint aCStack_78 [8];
  code *local_70;
  undefined4 local_6c;
  code *local_68;
  undefined4 local_64;
  code *local_60;
  undefined4 local_5c;
  code *local_58;
  undefined4 local_54;
  code *local_50;
  undefined4 local_4c;
  code *local_48;
  undefined4 local_44;
  code *local_40;
  undefined4 local_3c;
  code *local_38;
  undefined4 local_34;
  code *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  code *local_20;
  undefined4 local_1c;
  code *local_18;
  undefined4 local_14;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_70 = (code *)0x324d19;
    local_6c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x324d19,(char *)0x0,
               (CCObject *)"Blood");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_68 = (code *)0x324dad;
    local_64 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x324dad,(char *)0x0,
               (CCObject *)"Spark");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_60 = (code *)0x324f75;
    local_5c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x324f75,(char *)0x0,
               (CCObject *)"MetalSpark");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_58 = (code *)0x3251d5;
    local_54 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3251d5,(char *)0x0,
               (CCObject *)"Explosive");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_50 = (code *)0x325119;
    local_4c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x325119,(char *)0x0,
               (CCObject *)"PeerExplosiveRemove");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_48 = (code *)0x32503d;
    local_44 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x32503d,(char *)0x0,
               (CCObject *)"ExplosionND");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_40 = (code *)0x325519;
    local_3c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x325519,(char *)0x0,
               (CCObject *)"PlasmaField");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_38 = (code *)0x325589;
    local_34 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x325589,(char *)0x0,
               (CCObject *)"PlayerDead");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_30 = (code *)0x325589;
    local_2c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x325589,(char *)0x0,
               (CCObject *)"PeerPlayerDead");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_28 = (code *)0x3261c9;
    local_24 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x3261c9,(char *)0x0,
               (CCObject *)"ProduceShell");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_20 = (code *)0x326599;
    local_1c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x326599,(char *)0x0,
               (CCObject *)"GroundHit");
    pCVar2 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_18 = (code *)0x324cf1;
    local_14 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar2,(CCObject *)this,(_func_void_CCObject_ptr *)0x324cf1,(char *)0x0,
               (CCObject *)"ShakeScreen");
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0xf8) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    *(undefined4 *)(this + 0x120) = 4;
    for (local_88 = 0; local_88 < *(int *)(this + 0x120); local_88 = local_88 + 1) {
      this_00 = operator_new(0x50);
      PlayerDeath::PlayerDeath(this_00);
      cocos2d::CCObject::autorelease((CCObject *)this_00);
      cocos2d::CCArray::addObject(*(CCArray **)(this + 0xf8),(CCObject *)this_00);
    }
    *(undefined4 *)(this + 0x114) = 0;
    uVar3 = cocos2d::CCSprite::create("splatter_new.png");
    *(undefined4 *)(this + 0xe8) = uVar3;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(aCStack_78,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar3,aCStack_78);
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0xe8),4);
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),0x3f19999a);
    *(undefined4 *)(this + 0x118) = 0;
    uVar3 = cocos2d::CCSprite::create("spark_new.png");
    *(undefined4 *)(this + 0xe4) = uVar3;
    uVar5 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(aCStack_78,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar4)(uVar3,aCStack_78);
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0xe4),4);
    uVar5 = (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f19999a);
    *(undefined4 *)(this + 0x128) = 0;
    cocos2d::CCPoint::CCPoint(aCStack_78,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 300),aCStack_78);
    *(undefined4 *)(this + 0x134) = 0;
    uVar3 = cocos2d::CCParticleSystemQuad::create("Rock.plist");
    *(undefined4 *)(this + 0xf4) = uVar3;
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0xf4),4);
    cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0xf4));
    (**(code **)(**(int **)(this + 0xf4) + 0x2f0))(*(undefined4 *)(this + 0xf4),2);
    (**(code **)(**(int **)(this + 0xf4) + 0x1b4))(*(undefined4 *)(this + 0xf4),0xbf800000);
    (**(code **)(**(int **)(this + 0xf4) + 0x2c8))(*(undefined4 *)(this + 0xf4),0);
    uVar3 = cocos2d::CCParticleSystemQuad::create("Shell.plist");
    *(undefined4 *)(this + 0xf0) = uVar3;
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0xf0),4);
    cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0xf0));
    (**(code **)(**(int **)(this + 0xf0) + 0x2f0))(*(undefined4 *)(this + 0xf0),2);
    (**(code **)(**(int **)(this + 0xf0) + 0x1b4))(*(undefined4 *)(this + 0xf0),0xbf800000);
    (**(code **)(**(int **)(this + 0xf0) + 0x2c8))(*(undefined4 *)(this + 0xf0),0);
    uVar3 = cocos2d::CCParticleSystemQuad::create("Blood.plist");
    *(undefined4 *)(this + 0xec) = uVar3;
    (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0xec),4);
    cocos2d::CCParticleSystem::resetSystem(*(CCParticleSystem **)(this + 0xec));
    (**(code **)(**(int **)(this + 0xec) + 0x2f0))(*(undefined4 *)(this + 0xec),2);
    (**(code **)(**(int **)(this + 0xec) + 0x1b4))(*(undefined4 *)(this + 0xec),0xbf800000);
    (**(code **)(**(int **)(this + 0xec) + 0x2c8))(*(undefined4 *)(this + 0xec),0);
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0xfc) = uVar3;
    *(undefined4 *)(this + 0x11c) = 5;
    for (local_84 = 0; local_84 < *(int *)(this + 0x11c); local_84 = local_84 + 1) {
      this_01 = operator_new(0xfc);
      Explosion::Explosion(this_01);
      cocos2d::CCObject::autorelease((CCObject *)this_01);
      cocos2d::CCArray::addObject(*(CCArray **)(this + 0xfc),(CCObject *)this_01);
      (**(code **)(*worldLayer + 0xcc))(worldLayer,this_01,4);
    }
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x100) = uVar3;
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x104) = uVar3;
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x108) = uVar3;
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x10c) = uVar3;
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x110) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    this[0x138] = (EffectsManager)0x1;
    uVar3 = 1;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- EffectsManager::~EffectsManager  @ 0x3244b4
/* WARNING: Removing unreachable block (ram,0x003245ae) */
/* EffectsManager::~EffectsManager() */

EffectsManager * __thiscall EffectsManager::~EffectsManager(EffectsManager *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00910948;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0xfc));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0xf8));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x100));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x104));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x108));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x10c));
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- EffectsManager::~EffectsManager  @ 0x3245c8
/* EffectsManager::~EffectsManager() */

EffectsManager * __thiscall EffectsManager::~EffectsManager(EffectsManager *this)

{
  ~EffectsManager(this);
  operator_delete(this);
  return this;
}

// ---- EffectsManager::getShakeOffset  @ 0x324cd0
/* EffectsManager::getShakeOffset() */

CCPoint * EffectsManager::getShakeOffset(void)

{
  CCPoint *in_r0;
  int in_r1;
  
  cocos2d::CCPoint::CCPoint(in_r0,(CCPoint *)(in_r1 + 300));
  return in_r0;
}

// ---- EffectsManager::onShakeScreen  @ 0x324cf0
/* EffectsManager::onShakeScreen(cocos2d::CCObject*) */

void __thiscall EffectsManager::onShakeScreen(EffectsManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  
  *(undefined4 *)(this + 0x128) = 0;
  uVar1 = cocos2d::CCFloat::getValue((CCFloat *)param_1);
  *(undefined4 *)(this + 0x134) = uVar1;
  return;
}

// ---- EffectsManager::onSplatter  @ 0x324d18
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00324d74 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::onSplatter(cocos2d::CCObject*) */

void EffectsManager::onSplatter(CCObject *param_1)

{
  CCFloat *this;
  CCFloat *this_00;
  CCFloat *this_01;
  float fVar1;
  float fVar2;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  this = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,1);
  this_01 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,2);
  fVar1 = (float)cocos2d::CCFloat::getValue(this);
  fVar2 = (float)cocos2d::CCFloat::getValue(this_00);
  FUN_00322f60(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),&local_20);
  cocos2d::CCFloat::getValue(this_01);
  addSplatterAt(param_1,uStack_14,local_20,uStack_1c);
  return;
}

// ---- EffectsManager::onGroundImpact  @ 0x324dac
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00324e78 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::onGroundImpact(cocos2d::CCObject*) */

void EffectsManager::onGroundImpact(CCObject *param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  CCFloat *pCVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  CCInteger *pCVar9;
  int iVar10;
  undefined4 uVar11;
  CCArray *in_r1;
  uint in_fpscr;
  undefined4 in_s1;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  fVar5 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,1);
  fVar6 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,2);
  fVar7 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar4 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,3);
  fVar8 = (float)cocos2d::CCFloat::getValue(pCVar4);
  pCVar9 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,4);
  uVar1 = cocos2d::CCInteger::getValue(pCVar9);
  pCVar9 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,5);
  uVar2 = cocos2d::CCInteger::getValue(pCVar9);
  pCVar9 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,6);
  uVar3 = cocos2d::CCInteger::getValue(pCVar9);
  pCVar9 = (CCInteger *)cocos2d::CCArray::objectAtIndex(in_r1,7);
  iVar10 = cocos2d::CCInteger::getValue(pCVar9);
  FUN_00322f60(SUB84((double)fVar5,0),in_s1,SUB84((double)fVar6,0),&local_20);
  FUN_00322fe8(local_20,uStack_1c,uStack_18,uStack_14);
  FUN_00322f60(SUB84((double)fVar7,0),in_s1,SUB84((double)fVar8,0),&local_30);
  uVar11 = FUN_00322ef8();
  VectorSignedToFloat(uVar11,(byte)(in_fpscr >> 0x16) & 3);
  FUN_00322f04(uVar1,uVar2,uVar3);
  addSparkAt(param_1,uStack_24,local_30,uStack_2c);
  if (iVar10 == 0) {
    addGroundHitAt(param_1,uStack_24,local_30,uStack_2c);
  }
  return;
}

// ---- EffectsManager::onMetalImpact  @ 0x324f74
/* EffectsManager::onMetalImpact(cocos2d::CCObject*) */

void __thiscall EffectsManager::onMetalImpact(EffectsManager *this,CCObject *param_1)

{
  undefined2 uVar1;
  float fVar2;
  undefined4 uVar3;
  uint in_fpscr;
  float fVar4;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  (**(code **)(*(int *)param_1 + 0x34))(&local_30,param_1);
  fVar2 = (float)FUN_00322fe8(local_30,uStack_2c,uStack_28,uStack_24);
  (**(code **)(*(int *)param_1 + 0x20))(&local_20,param_1);
  uVar3 = FUN_00322ef8();
  fVar4 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
  uVar1 = FUN_00322f04(0xff,0xff,0xff);
  addSparkAt(this,uStack_14,local_20,uStack_1c,local_18,uStack_14,
             (double)((fVar4 / 1.0737418e+09 - 1.0) * 30.0 + fVar2),uVar1);
  return;
}

// ---- EffectsManager::onExplosionNoDamage  @ 0x32503c
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00325098 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::onExplosionNoDamage(cocos2d::CCObject*) */

void EffectsManager::onExplosionNoDamage(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  CCArray *local_30;
  CCFloat *local_2c;
  CCFloat *local_28;
  CCFloat *local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  local_30 = in_r1;
  local_2c = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_28 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_30,1);
  local_24 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_30,2);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_2c);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_28);
  FUN_00322f60(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),&local_20);
  cocos2d::CCFloat::getValue(local_24);
  FUN_0079a3f4(auStack_38);
  FUN_007c6a60(auStack_34,&DAT_007d6b50,auStack_38);
  addExplosionAt(param_1,uStack_14,local_20,uStack_1c);
  FUN_007c5914(auStack_34);
  FUN_0079a3fc(auStack_38);
  return;
}

// ---- EffectsManager::onExplosionRemove  @ 0x325118
/* EffectsManager::onExplosionRemove(cocos2d::CCObject*) */

void __thiscall EffectsManager::onExplosionRemove(EffectsManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  CCArray *local_1c;
  CCInteger *local_18;
  CCInteger *local_14;
  CCString *local_10;
  CCString *local_c;
  
  local_1c = (CCArray *)param_1;
  local_18 = (CCInteger *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  local_14 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_1c,1);
  local_10 = (CCString *)cocos2d::CCArray::objectAtIndex(local_1c,2);
  uVar1 = cocos2d::CCString::getCString(local_10);
  uVar2 = cocos2d::CCInteger::getValue(local_14);
  local_c = (CCString *)cocos2d::CCString::createWithFormat("%s:%d",uVar1,uVar2);
  iVar3 = cocos2d::CCInteger::getValue(local_18);
  if (iVar3 == 0x17) {
    uVar1 = cocos2d::CCString::getCString(local_c);
    FUN_0079a3f4(auStack_24);
    FUN_007c6a60(auStack_20,uVar1,auStack_24);
    removeProxyNade(this,auStack_20);
    FUN_007c5914(auStack_20);
    FUN_0079a3fc(auStack_24);
  }
  return;
}

// ---- EffectsManager::onExplosion  @ 0x3251d4
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032526c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::onExplosion(cocos2d::CCObject*) */

void EffectsManager::onExplosion(CCObject *param_1)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  CCArray *local_60;
  CCFloat *local_5c;
  CCFloat *local_58;
  CCFloat *local_54;
  CCFloat *local_50;
  CCInteger *local_4c;
  CCFloat *local_48;
  CCInteger *local_44;
  CCString *local_40;
  int local_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_2c;
  undefined1 local_28 [16];
  
  local_60 = in_r1;
  local_5c = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  local_58 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_60,1);
  local_54 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_60,2);
  local_50 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_60,3);
  local_4c = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_60,4);
  local_48 = (CCFloat *)cocos2d::CCArray::objectAtIndex(local_60,5);
  local_44 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_60,6);
  local_40 = (CCString *)cocos2d::CCArray::objectAtIndex(local_60,7);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_5c);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_58);
  FUN_00322f60(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),&local_38);
  fVar1 = (float)cocos2d::CCFloat::getValue(local_54);
  fVar2 = (float)cocos2d::CCFloat::getValue(local_50);
  FUN_00322f60(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),local_28);
  local_3c = 0;
  uVar3 = cocos2d::CCInteger::getValue(local_4c);
  switch(uVar3) {
  case 0x14:
    cocos2d::CCFloat::getValue(local_48);
    uVar3 = cocos2d::CCString::getCString(local_40);
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(auStack_64,uVar3,auStack_68);
    cocos2d::CCInteger::getValue(local_4c);
    addGasCloudAt(param_1,uStack_2c,local_38,uStack_34);
    FUN_007c5914(auStack_64);
    FUN_0079a3fc(auStack_68);
    break;
  case 0x15:
    cocos2d::CCFloat::getValue(local_48);
    uVar3 = cocos2d::CCString::getCString(local_40);
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(auStack_64,uVar3,auStack_68);
    cocos2d::CCInteger::getValue(local_4c);
    addPlasmaBallAt(param_1,uStack_2c,local_38,uStack_34);
    FUN_007c5914(auStack_64);
    FUN_0079a3fc(auStack_68);
    break;
  case 0x16:
    uVar3 = cocos2d::CCString::getCString(local_40);
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(auStack_64,uVar3,auStack_68);
    addPlasmaField((EffectsManager *)param_1,auStack_64);
    FUN_007c5914(auStack_64);
    FUN_0079a3fc(auStack_68);
    break;
  case 0x17:
    uVar3 = cocos2d::CCString::getCString(local_40);
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(auStack_64,uVar3,auStack_68);
    cocos2d::CCInteger::getValue(local_4c);
    cocos2d::CCInteger::getValue(local_44);
    addProxyNade(param_1,uStack_2c,local_38,uStack_34);
    FUN_007c5914(auStack_64);
    FUN_0079a3fc(auStack_68);
    break;
  default:
    cocos2d::CCFloat::getValue(local_48);
    uVar3 = cocos2d::CCString::getCString(local_40);
    FUN_0079a3f4(auStack_68);
    FUN_007c6a60(auStack_64,uVar3,auStack_68);
    cocos2d::CCInteger::getValue(local_4c);
    local_3c = addExplosionAt(param_1,uStack_2c,local_38,uStack_34);
    FUN_007c5914(auStack_64);
    fVar1 = (float)FUN_0079a3fc(auStack_68);
    if (local_3c != 0) {
      Explosion::applyDamage(fVar1);
    }
  }
  return;
}

// ---- EffectsManager::onPlasmaField  @ 0x325518
/* EffectsManager::onPlasmaField(cocos2d::CCObject*) */

void __thiscall EffectsManager::onPlasmaField(EffectsManager *this,CCObject *param_1)

{
  undefined4 uVar1;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  CCObject *local_10;
  CCString *local_c;
  
  local_10 = param_1;
  local_c = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  uVar1 = cocos2d::CCString::getCString(local_c);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,uVar1,auStack_18);
  addPlasmaField(this,auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  return;
}

// ---- EffectsManager::onPlayerDead  @ 0x325588
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003255b6 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::onPlayerDead(cocos2d::CCObject*) */

void EffectsManager::onPlayerDead(CCObject *param_1)

{
  char cVar1;
  bool bVar2;
  SoldierView *this;
  uint uVar3;
  PlayerDeath *this_00;
  undefined4 uVar4;
  int *in_r1;
  int iVar5;
  uint uVar6;
  undefined4 in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined1 local_40 [16];
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined1 local_20 [16];
  
  (**(code **)(*in_r1 + 0x1ac))(&local_50,in_r1);
  FUN_00322f60(0,in_s1,0,local_40);
  cVar1 = FUN_00323278(local_50,uStack_4c,uStack_48,uStack_44);
  if ((cVar1 == '\x01') && (in_r1 != (int *)0x0)) {
    this = (SoldierView *)(**(code **)(*in_r1 + 0x1d8))(in_r1);
    bVar2 = (bool)SoldierView::getBlood(this);
    if (bVar2 != false) {
      iVar5 = in_r1[0x4e];
      addBloodAt(param_1,*(undefined4 *)(iVar5 + 0x34),*(undefined4 *)(iVar5 + 0x28),
                 *(undefined4 *)(iVar5 + 0x2c));
    }
    *(int *)(param_1 + 0x120) = *(int *)(param_1 + 0x120) + 1;
    uVar6 = *(uint *)(param_1 + 0x120);
    uVar3 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0xf8));
    if (uVar3 <= uVar6) {
      *(undefined4 *)(param_1 + 0x120) = 0;
    }
    this_00 = (PlayerDeath *)
              cocos2d::CCArray::objectAtIndex
                        (*(CCArray **)(param_1 + 0xf8),*(uint *)(param_1 + 0x120));
    PlayerDeath::setBlood(this_00,bVar2);
    (**(code **)(*in_r1 + 0x1c0))(&local_30,in_r1);
    (**(code **)(*hostSoldier + 0x1c0))(local_20,hostSoldier);
    iVar5 = FUN_007c567c(&local_30,local_20);
    FUN_007c5914(local_20);
    FUN_007c5914(&local_30);
    if (iVar5 == 0) {
      uVar4 = (**(code **)(*in_r1 + 0x1d8))(in_r1);
      PlayerDeath::reset(this_00,uVar4,*(undefined4 *)(in_r1[0x4e] + 0x28),
                         *(undefined4 *)(in_r1[0x4e] + 0x2c));
    }
    else {
      uVar4 = (**(code **)(*in_r1 + 0x1d8))(in_r1);
      (**(code **)(*in_r1 + 0x1ac))(&local_30,in_r1);
      (**(code **)(*in_r1 + 0x1b0))(local_20,in_r1);
      PlayerDeath::reset(this_00,uVar4,local_30,uStack_2c);
    }
  }
  return;
}

// ---- EffectsManager::addSplatterAt  @ 0x3257b8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003257e2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::addSplatterAt(cpVect, double) */

void EffectsManager::addSplatterAt
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,double param_7)

{
  char cVar1;
  uint uVar2;
  bool bVar3;
  code *pcVar4;
  undefined4 uVar5;
  undefined8 in_d0;
  float fVar6;
  CCPoint aCStack_30 [8];
  undefined1 local_28 [20];
  undefined4 local_8;
  undefined4 uStack_4;
  
  fVar6 = (float)((ulonglong)in_d0 >> 0x20);
  local_8 = param_3;
  uStack_4 = param_4;
  if (*(char *)(param_1 + 0x138) == '\x01') {
    FUN_00322f60(0,fVar6,0,local_28);
    cVar1 = FUN_00323278(local_8,uStack_4,param_5,param_6);
    if (cVar1 == '\x01') {
      bVar3 = false;
      goto LAB_0032580e;
    }
  }
  bVar3 = true;
LAB_0032580e:
  if (!bVar3) {
    pcVar4 = *(code **)(**(int **)(param_1 + 0xe8) + 0x4c);
    uVar5 = *(undefined4 *)(param_1 + 0xe8);
    cocos2d::CCPoint::CCPoint(aCStack_30,(float)in_d0,fVar6);
    (*pcVar4)(uVar5,aCStack_30);
    (**(code **)(**(int **)(param_1 + 0xe8) + 0x98))(*(undefined4 *)(param_1 + 0xe8),(float)param_7)
    ;
    pcVar4 = *(code **)(**(int **)(param_1 + 0xe8) + 0x38);
    uVar5 = *(undefined4 *)(param_1 + 0xe8);
    uVar2 = (**(code **)(**(int **)(param_1 + 0xe8) + 0x3c))(*(undefined4 *)(param_1 + 0xe8));
    (*pcVar4)(uVar5,uVar2 ^ 0x80000000);
    (**(code **)(**(int **)(param_1 + 0xe8) + 0x90))(*(undefined4 *)(param_1 + 0xe8),1);
    addBloodAt(param_1,&local_8,local_8,uStack_4);
    *(undefined4 *)(param_1 + 0x114) = 0;
  }
  return;
}

// ---- EffectsManager::addSparkAt  @ 0x3258f8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00325976 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::addSparkAt(cpVect, double, cocos2d::_ccColor3B) */

void EffectsManager::addSparkAt
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               double param_9)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s1;
  CCPoint aCStack_30 [8];
  undefined1 local_28 [20];
  
  uVar4 = sndEng;
  uVar2 = FUN_00322ef8();
  VectorSignedToFloat(uVar2,(byte)(in_fpscr >> 0x16) & 3);
  Sound::playSoundPositionVP(uVar4,0xc,param_5,param_6);
  FUN_00322f60(0,param_2,0,local_28);
  cVar1 = FUN_00323278(param_5,param_6,param_7,param_8);
  if (cVar1 == '\x01') {
    pcVar3 = *(code **)(**(int **)(param_3 + 0xe4) + 0x4c);
    uVar4 = *(undefined4 *)(param_3 + 0xe4);
    cocos2d::CCPoint::CCPoint(aCStack_30,extraout_s0,extraout_s1);
    (*pcVar3)(uVar4,aCStack_30);
    (**(code **)(**(int **)(param_3 + 0xe4) + 0x98))(*(undefined4 *)(param_3 + 0xe4),(float)param_9)
    ;
    (**(code **)(**(int **)(param_3 + 0xe4) + 0x90))(*(undefined4 *)(param_3 + 0xe4),1);
    (**(code **)(**(int **)(param_3 + 0xe4) + 0x1bc))
              (*(undefined4 *)(param_3 + 0xe4),&stack0x00000010);
    *(undefined4 *)(param_3 + 0x118) = 0;
  }
  return;
}

// ---- EffectsManager::addExplosionAt  @ 0x325a50
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00325aa0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::addExplosionAt(cpVect, float, std::string, int, bool) */

int * EffectsManager::addExplosionAt
                (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
                undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
                undefined4 param_9,undefined4 param_10,undefined4 param_11,char param_12)

{
  char cVar1;
  uint uVar2;
  ProxyMine *this;
  float *pfVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  float fVar7;
  uint local_44;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_2c;
  undefined1 local_28 [16];
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_5;
  uStack_4 = param_6;
  Sound::playSoundPositionVP(sndEng,9,param_5,param_6);
  FUN_00322f60(0,param_2,0,local_28);
  cVar1 = FUN_00323278(local_8,uStack_4,param_7,param_8);
  if (cVar1 == '\x01') {
    *(int *)(param_3 + 0x11c) = *(int *)(param_3 + 0x11c) + 1;
    uVar6 = *(uint *)(param_3 + 0x11c);
    uVar2 = cocos2d::CCArray::count(*(CCArray **)(param_3 + 0xfc));
    if (uVar2 <= uVar6) {
      *(undefined4 *)(param_3 + 0x11c) = 0;
    }
    piVar5 = (int *)cocos2d::CCArray::objectAtIndex
                              (*(CCArray **)(param_3 + 0xfc),*(uint *)(param_3 + 0x11c));
    (**(code **)(*piVar5 + 0x40))(piVar5,param_9);
    FUN_007c64e8(&local_38,param_10);
    Explosion::reset(piVar5,&local_8,local_8,uStack_4);
    FUN_007c5914(&local_38);
    if (param_12 != '\0') {
      for (local_44 = 0; uVar2 = cocos2d::CCArray::count(*(CCArray **)(param_3 + 0x10c)),
          local_44 < uVar2; local_44 = local_44 + 1) {
        this = (ProxyMine *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_3 + 0x10c),local_44)
        ;
        pfVar3 = (float *)(**(code **)(*(int *)this + 0x50))(this);
        fVar7 = *pfVar3;
        iVar4 = (**(code **)(*(int *)this + 0x50))(this);
        FUN_00322f60(SUB84((double)fVar7,0),param_2,SUB84((double)*(float *)(iVar4 + 4),0),&local_38
                    );
        iVar4 = Explosion::checkCollision(piVar5,uStack_2c,local_38,uStack_34);
        if (iVar4 != 0) {
          ProxyMine::removeMine(this,false);
        }
      }
    }
  }
  else {
    piVar5 = (int *)0x0;
  }
  return piVar5;
}

// ---- EffectsManager::addGasCloudAt  @ 0x325c48
/* EffectsManager::addGasCloudAt(cpVect, float, std::string, int) */

CCObject *
EffectsManager::addGasCloudAt
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9)

{
  GasCloud *this;
  undefined1 auStack_20 [4];
  CCObject *local_1c;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  Sound::playSoundPositionVP(sndEng,9,param_3,param_4,param_5,param_6,0x3f400000,0x3f800000);
  this = operator_new(0x104);
  GasCloud::GasCloud(this);
  local_1c = (CCObject *)this;
  cocos2d::CCObject::autorelease((CCObject *)this);
  cocos2d::CCArray::addObject(*(CCArray **)(param_1 + 0x100),local_1c);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_1c,4);
  (**(code **)(*(int *)local_1c + 0x40))(local_1c,param_7);
  FUN_007c64e8(auStack_20,param_8);
  GasCloud::reset(local_1c,&local_8,local_8,uStack_4,param_5,param_6,auStack_20,param_9);
  FUN_007c5914(auStack_20);
  return local_1c;
}

// ---- EffectsManager::removeProxyNade  @ 0x325d40
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00325dee */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::removeProxyNade(std::string) */

void EffectsManager::removeProxyNade
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  float *pfVar4;
  uint uVar5;
  float fVar6;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  uint local_2c;
  int *local_28;
  CCString *local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  for (local_2c = 0; uVar1 = local_2c,
      uVar5 = cocos2d::CCArray::count(*(CCArray **)(param_3 + 0x10c)), uVar1 < uVar5;
      local_2c = local_2c + 1) {
    local_28 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_3 + 0x10c),local_2c);
    uVar2 = FUN_007c5300(local_28 + 0x3a);
    local_24 = (CCString *)cocos2d::CCString::createWithFormat("%s:%d",uVar2,local_28[0x3b]);
    uVar2 = cocos2d::CCString::getCString(local_24);
    iVar3 = FUN_007c5724(param_4,uVar2);
    if (iVar3 == 0) {
      *(undefined1 *)(local_28 + 0x4d) = 0;
      pfVar4 = (float *)(**(code **)(*local_28 + 0x50))(local_28);
      fVar6 = *pfVar4;
      iVar3 = (**(code **)(*local_28 + 0x50))(local_28);
      FUN_00322f60(SUB84((double)fVar6,0),param_2,SUB84((double)*(float *)(iVar3 + 4),0),&local_20);
      FUN_0079a3f4(auStack_34);
      FUN_007c6a60(auStack_30,&DAT_007d6b50,auStack_34);
      addExplosionAt(param_3,uStack_14,local_20,uStack_1c);
      FUN_007c5914(auStack_30);
      FUN_0079a3fc(auStack_34);
    }
  }
  return;
}

// ---- EffectsManager::addProxyNade  @ 0x325e98
/* EffectsManager::addProxyNade(cpVect, std::string, int, int) */

CCObject *
EffectsManager::addProxyNade
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9)

{
  ProxyMine *this;
  undefined1 auStack_20 [4];
  CCObject *local_1c;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  this = operator_new(0x138);
  ProxyMine::ProxyMine(this);
  local_1c = (CCObject *)this;
  cocos2d::CCObject::autorelease((CCObject *)this);
  cocos2d::CCArray::addObject(*(CCArray **)(param_1 + 0x10c),local_1c);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_1c,4);
  FUN_007c64e8(auStack_20,param_7);
  ProxyMine::reset(local_1c,&local_8,local_8,uStack_4,param_5,param_6,auStack_20,param_8,param_9);
  FUN_007c5914(auStack_20);
  return local_1c;
}

// ---- EffectsManager::addPlasmaBallAt  @ 0x325f54
/* EffectsManager::addPlasmaBallAt(cpVect, cpVect, float, std::string, int) */

CCObject *
EffectsManager::addPlasmaBallAt
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,
          undefined4 param_10,undefined4 param_11,undefined4 param_12,undefined4 param_13)

{
  PlasmaBall *this;
  undefined1 auStack_20 [4];
  CCObject *local_1c;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_8 = param_3;
  uStack_4 = param_4;
  this = operator_new(0x150);
  PlasmaBall::PlasmaBall(this);
  local_1c = (CCObject *)this;
  cocos2d::CCObject::autorelease((CCObject *)this);
  cocos2d::CCArray::addObject(*(CCArray **)(param_1 + 0x104),local_1c);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_1c,4);
  (**(code **)(*(int *)local_1c + 0x40))(local_1c,param_11);
  FUN_007c64e8(auStack_20,param_12);
  PlasmaBall::reset(local_1c,&local_8,local_8,uStack_4,param_5,param_6,param_7,param_8,param_9,
                    param_10,auStack_20,param_13);
  FUN_007c5914(auStack_20);
  return local_1c;
}

// ---- EffectsManager::addPlasmaField  @ 0x326024
/* EffectsManager::addPlasmaField(std::string) */

PlasmaEnergy * __thiscall EffectsManager::addPlasmaField(EffectsManager *this,undefined4 param_2)

{
  PlasmaEnergy *this_00;
  undefined1 auStack_18 [4];
  CCObject *local_14;
  
  this_00 = operator_new(0x124);
  PlasmaEnergy::PlasmaEnergy(this_00);
  local_14 = (CCObject *)this_00;
  cocos2d::CCObject::autorelease((CCObject *)this_00);
  cocos2d::CCArray::addObject(*(CCArray **)(this + 0x108),local_14);
  (**(code **)(*worldLayer + 0xcc))(worldLayer,local_14,4);
  FUN_007c64e8(auStack_18,param_2);
  PlasmaEnergy::reset((PlasmaEnergy *)local_14,auStack_18);
  FUN_007c5914(auStack_18);
  return (PlasmaEnergy *)local_14;
}

// ---- EffectsManager::addBloodAt  @ 0x3260b8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003260e2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::addBloodAt(cpVect, float, float) */

void EffectsManager::addBloodAt
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               float param_9,float param_10)

{
  char cVar1;
  bool bVar2;
  code *pcVar3;
  undefined4 uVar4;
  float fVar5;
  float extraout_s1;
  CCPoint aCStack_30 [8];
  undefined1 local_28 [20];
  
  if (*(char *)(param_3 + 0x138) == '\x01') {
    FUN_00322f60(0,param_2,0,local_28);
    cVar1 = FUN_00323278(param_5,param_6,param_7,param_8);
    if (cVar1 == '\x01') {
      bVar2 = false;
      goto LAB_0032610e;
    }
  }
  bVar2 = true;
LAB_0032610e:
  if (!bVar2) {
    (**(code **)(**(int **)(param_3 + 0xec) + 500))(*(undefined4 *)(param_3 + 0xec),param_9);
    fVar5 = (float)(**(code **)(**(int **)(param_3 + 0xec) + 0x1fc))
                             (*(undefined4 *)(param_3 + 0xec),param_9 * 0.25);
    pcVar3 = *(code **)(**(int **)(param_3 + 0xec) + 0x1bc);
    uVar4 = *(undefined4 *)(param_3 + 0xec);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar5,extraout_s1);
    (*pcVar3)(uVar4,aCStack_30);
    for (; 0.0 < param_10; param_10 = param_10 - 1.0) {
      cocos2d::CCParticleSystem::addParticle(*(CCParticleSystem **)(param_3 + 0xec));
    }
  }
  return;
}

// ---- EffectsManager::weaponFired  @ 0x3261c8
/* EffectsManager::weaponFired(cocos2d::CCObject*) */

void __thiscall EffectsManager::weaponFired(EffectsManager *this,CCObject *param_1)

{
  CCDictionary *pCVar1;
  int iVar2;
  float fVar3;
  int *piVar4;
  undefined4 uVar5;
  uint in_fpscr;
  float fVar6;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  if (param_1 != (CCObject *)0x0) {
    (**(code **)(*hostSoldier + 0x1c0))(&local_30,hostSoldier);
    (**(code **)(*(int *)param_1 + 500))(&local_20,param_1);
    iVar2 = FUN_007c567c(&local_30,&local_20);
    FUN_007c5914(&local_20);
    FUN_007c5914(&local_30);
    piVar4 = hostSoldier;
    pCVar1 = peerSoldiers;
    if (iVar2 == 0) {
      fVar3 = (float)(**(code **)(*hostSoldier + 0x23c))(hostSoldier);
      iVar2 = (**(code **)(*piVar4 + 0x254))(piVar4);
      if (iVar2 == 0) {
        uVar5 = 0xffffffa6;
      }
      else {
        uVar5 = 0x5a;
      }
      fVar6 = (float)VectorSignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
      (**(code **)(*(int *)param_1 + 0x264))(&local_40,param_1);
      addShellAt(this,uStack_34,local_40,uStack_3c,local_38,uStack_34,-fVar3 + fVar6);
    }
    else {
      (**(code **)(*(int *)param_1 + 500))(&local_20,param_1);
      piVar4 = (int *)cocos2d::CCDictionary::objectForKey(pCVar1,(string *)&local_20);
      FUN_007c5914(&local_20);
      pCVar1 = allEnemies;
      if (piVar4 == (int *)0x0) {
        if (allEnemies != (CCDictionary *)0x0) {
          (**(code **)(*(int *)param_1 + 500))(&local_20,param_1);
          piVar4 = (int *)cocos2d::CCDictionary::objectForKey(pCVar1,(string *)&local_20);
          FUN_007c5914(&local_20);
          if (piVar4 != (int *)0x0) {
            fVar3 = (float)(**(code **)(*piVar4 + 0x208))(piVar4);
            if ((char)piVar4[0x69] == '\0') {
              fVar6 = -90.0;
            }
            else {
              fVar6 = 90.0;
            }
            (**(code **)(*(int *)param_1 + 0x264))(&local_20,param_1);
            addShellAt(this,uStack_14,local_20,uStack_1c,local_18,uStack_14,-fVar3 + fVar6);
          }
        }
      }
      else {
        fVar3 = (float)(**(code **)(*piVar4 + 0x23c))(piVar4);
        iVar2 = (**(code **)(*piVar4 + 0x254))(piVar4);
        if (iVar2 == 0) {
          uVar5 = 0xffffffa6;
        }
        else {
          uVar5 = 0x5a;
        }
        fVar6 = (float)VectorSignedToFloat(uVar5,(byte)(in_fpscr >> 0x16) & 3);
        (**(code **)(*(int *)param_1 + 0x264))(&local_30,param_1);
        addShellAt(this,uStack_24,local_30,uStack_2c,local_28,uStack_24,-fVar3 + fVar6);
      }
    }
  }
  return;
}

// ---- EffectsManager::addShellAt  @ 0x326468
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00326482 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::addShellAt(cpVect, float) */

void EffectsManager::addShellAt
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9)

{
  char cVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float fVar5;
  float extraout_s1;
  CCPoint aCStack_30 [8];
  undefined1 local_28 [20];
  
  FUN_00322f60(0,param_2,0,local_28);
  cVar1 = FUN_00323278(param_5,param_6,param_7,param_8);
  if (cVar1 == '\x01') {
    (**(code **)(**(int **)(param_3 + 0xf0) + 0x1dc))(*(undefined4 *)(param_3 + 0xf0),param_9);
    fVar5 = (float)(**(code **)(**(int **)(param_3 + 0xf0) + 0x1e4))
                             (*(undefined4 *)(param_3 + 0xf0),0);
    pcVar2 = *(code **)(**(int **)(param_3 + 0xf0) + 0x1bc);
    uVar3 = *(undefined4 *)(param_3 + 0xf0);
    cocos2d::CCPoint::CCPoint(aCStack_30,fVar5,extraout_s1);
    (*pcVar2)(uVar3,aCStack_30);
    (**(code **)(**(int **)(param_3 + 0xf0) + 0x2a8))(*(undefined4 *)(param_3 + 0xf0),0);
    pcVar2 = *(code **)(**(int **)(param_3 + 0xf0) + 0x2b8);
    uVar4 = *(undefined4 *)(param_3 + 0xf0);
    uVar3 = FUN_00322ef8();
    fVar5 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    (*pcVar2)(uVar4,(fVar5 / 1.0737418e+09 - 1.0) * 600.0);
    cocos2d::CCParticleSystem::addParticle(*(CCParticleSystem **)(param_3 + 0xf0));
  }
  return;
}

// ---- EffectsManager::onGroundHit  @ 0x326598
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003265f4 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::onGroundHit(cocos2d::CCObject*) */

void EffectsManager::onGroundHit(CCObject *param_1)

{
  CCFloat *this;
  CCFloat *this_00;
  CCFloat *this_01;
  float fVar1;
  float fVar2;
  CCArray *in_r1;
  undefined4 in_s1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  this = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,0);
  this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,1);
  this_01 = (CCFloat *)cocos2d::CCArray::objectAtIndex(in_r1,2);
  fVar1 = (float)cocos2d::CCFloat::getValue(this);
  fVar2 = (float)cocos2d::CCFloat::getValue(this_00);
  FUN_00322f60(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),&local_20);
  cocos2d::CCFloat::getValue(this_01);
  addGroundHitAt(param_1,uStack_14,local_20,uStack_1c);
  return;
}

// ---- EffectsManager::addGroundHitAt  @ 0x326628
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00326642 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* EffectsManager::addGroundHitAt(cpVect, float, int) */

void EffectsManager::addGroundHitAt
               (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
               undefined4 param_9,int param_10)

{
  char cVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s1;
  float fVar5;
  CCPoint aCStack_30 [8];
  undefined1 local_28 [20];
  
  FUN_00322f60(0,param_2,0,local_28);
  cVar1 = FUN_00323278(param_5,param_6,param_7,param_8);
  if (cVar1 == '\x01') {
    pcVar2 = *(code **)(**(int **)(param_3 + 0xf4) + 0x1bc);
    uVar3 = *(undefined4 *)(param_3 + 0xf4);
    cocos2d::CCPoint::CCPoint(aCStack_30,extraout_s0,extraout_s1);
    (*pcVar2)(uVar3,aCStack_30);
    (**(code **)(**(int **)(param_3 + 0xf4) + 0x1dc))(*(undefined4 *)(param_3 + 0xf4),param_9);
    pcVar2 = *(code **)(**(int **)(param_3 + 0xf4) + 0x2a8);
    uVar4 = *(undefined4 *)(param_3 + 0xf4);
    uVar3 = FUN_00322ef8();
    fVar5 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    (*pcVar2)(uVar4,(fVar5 / 1.0737418e+09 - 1.0) * 600.0);
    pcVar2 = *(code **)(**(int **)(param_3 + 0xf4) + 0x2b8);
    uVar4 = *(undefined4 *)(param_3 + 0xf4);
    uVar3 = FUN_00322ef8();
    fVar5 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    (*pcVar2)(uVar4,(fVar5 / 1.0737418e+09 - 1.0) * 600.0);
    for (; 0 < param_10; param_10 = param_10 + -1) {
      cocos2d::CCParticleSystem::addParticle(*(CCParticleSystem **)(param_3 + 0xf4));
    }
  }
  return;
}

// ---- EffectsManager::create  @ 0x40adec
/* EffectsManager::create() */

EffectsManager * EffectsManager::create(void)

{
  bool bVar1;
  EffectsManager *this;
  int iVar2;
  
  this = operator_new(0x13c);
  EffectsManager(this);
  if ((this == (EffectsManager *)0x0) ||
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
    if (this != (EffectsManager *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (EffectsManager *)0x0;
  }
  return this;
}
