// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- ProxyMine::ProxyMine  @ 0x3c5d34
/* ProxyMine::ProxyMine() */

ProxyMine * __thiscall ProxyMine::ProxyMine(ProxyMine *this)

{
  undefined4 uVar1;
  CCSprite *pCVar2;
  CCRect *pCVar3;
  ProxyMine *this_00;
  int iVar4;
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00918538;
  FUN_007c51b0(this + 0xe8);
  this_00 = this + 0x100;
  for (iVar4 = 2; iVar4 != -1; iVar4 = iVar4 + -1) {
    cocos2d::CCRect::CCRect((CCRect *)this_00);
    this_00 = this_00 + 0x10;
  }
  this[0x134] = (ProxyMine)0x0;
  this[0x135] = (ProxyMine)0x0;
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("mine2.png");
  *(undefined4 *)(this + 0xe4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe4));
  cocos2d::CCNode::setVisible((CCNode *)this,false);
  *(undefined4 *)(this + 0xec) = 0;
  FUN_007c5e70(this + 0xe8,&DAT_007e4194);
  *(undefined4 *)(this + 0xf8) = 0;
  *(undefined4 *)(this + 0xfc) = 0;
  *(undefined4 *)(this + 0xf4) = 0;
  *(undefined4 *)(this + 0xf0) = 0;
  *(undefined4 *)(this + 0x130) = 0;
  pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("mine1.png");
  pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x100),pCVar3);
  pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("mine3.png");
  pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x110),pCVar3);
  pCVar2 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("mine4.png");
  pCVar3 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar2);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x120),pCVar3);
  return this;
}

// ---- ProxyMine::~ProxyMine  @ 0x3c5ea8
/* WARNING: Removing unreachable block (ram,0x003c5ee0) */
/* ProxyMine::~ProxyMine() */

ProxyMine * __thiscall ProxyMine::~ProxyMine(ProxyMine *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00918538;
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  FUN_007c5914(this + 0xe8);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- ProxyMine::~ProxyMine  @ 0x3c5ef8
/* ProxyMine::~ProxyMine() */

ProxyMine * __thiscall ProxyMine::~ProxyMine(ProxyMine *this)

{
  ~ProxyMine(this);
  operator_delete(this);
  return this;
}

// ---- ProxyMine::reset  @ 0x3c5f18
/* ProxyMine::reset(cpVect, std::string, int, int) */

void ProxyMine::reset(int *param_1)

{
  code *pcVar1;
  undefined8 uVar2;
  undefined4 in_stack_00000008;
  int in_stack_0000000c;
  int in_stack_00000010;
  CCPoint aCStack_20 [12];
  
  param_1[0x3c] = 0;
  param_1[0x3d] = 0;
  param_1[0x3f] = 0;
  uVar2 = (**(code **)(*param_1 + 0x40))(param_1,playerScale + 0.2);
  pcVar1 = *(code **)(*param_1 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar2,(float)((ulonglong)uVar2 >> 0x20));
  (*pcVar1)(param_1,aCStack_20);
  (**(code **)(*(int *)param_1[0x39] + 0x98))(param_1[0x39],0x42340000);
  thunk_FUN_007c653c(param_1 + 0x3a,in_stack_00000008);
  param_1[0x3e] = in_stack_0000000c;
  *(undefined1 *)(param_1 + 0x4d) = 1;
  *(undefined1 *)((int)param_1 + 0x135) = 0;
  param_1[0x3b] = in_stack_00000010;
  return;
}

// ---- ProxyMine::updateStep  @ 0x3c6008
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003c6078 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* ProxyMine::updateStep(float) */

void ProxyMine::updateStep(float param_1)

{
  double dVar1;
  ProxyMine *in_r0;
  float *pfVar2;
  int iVar3;
  float in_r1;
  undefined4 in_fpscr;
  byte bVar4;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar5;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined1 local_20 [16];
  
  bVar4 = (byte)((uint)in_fpscr >> 0x18);
  *(float *)(in_r0 + 0xf0) = *(float *)(in_r0 + 0xf0) + in_r1;
  (**(code **)(*(int *)in_r0 + 0x90))(param_1,in_r0,0);
  pfVar2 = (float *)(**(code **)(*(int *)in_r0 + 0x50))(in_r0);
  fVar5 = *pfVar2;
  iVar3 = (**(code **)(*(int *)in_r0 + 0x50))(in_r0);
  FUN_003c4f5c(SUB84((double)fVar5,0),in_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_40);
  if (in_r0[0x134] == (ProxyMine)0x1) {
    bVar4 = bVar4 & 0xf;
    if (120.0 < *(float *)(in_r0 + 0xf0)) {
      in_r0[0x134] = (ProxyMine)0x0;
    }
    if ((in_r0[0x135] != (ProxyMine)0x0) &&
       (*(float *)(in_r0 + 0xf4) = *(float *)(in_r0 + 0xf4) + in_r1, 0.5 < *(float *)(in_r0 + 0xf4))
       ) {
      removeMine(in_r0,true);
    }
    bVar4 = bVar4 & 0xf;
    if ((1.5 < *(float *)(in_r0 + 0xf0)) && (in_r0[0x135] != (ProxyMine)0x1)) {
      *(float *)(in_r0 + 0xf4) = *(float *)(in_r0 + 0xf4) - in_r1;
      if (*(float *)(in_r0 + 0xf4) <= 0.0) {
        *(undefined4 *)(in_r0 + 0xf4) = 0x3f000000;
        *(int *)(in_r0 + 0x130) = *(int *)(in_r0 + 0x130) + 1;
        if (2 < *(int *)(in_r0 + 0x130)) {
          *(undefined4 *)(in_r0 + 0x130) = 1;
        }
        (**(code **)(**(int **)(in_r0 + 0xe4) + 0x208))
                  (*(undefined4 *)(in_r0 + 0xe4),in_r0 + (*(int *)(in_r0 + 0x130) + 0x10) * 0x10);
      }
      FUN_003c4f84(local_40,in_s1,local_38,in_s3,
                   (int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x28),in_s5,
                   (int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x30),&local_30);
      dVar1 = (double)cpvlength(local_30,uStack_2c,uStack_28,uStack_24);
      if ((char)(bVar4 & 0xf | (byte)(((uint)(dVar1 < 110.0) << 0x1f) >> 0x18) |
                 (byte)(((uint)(dVar1 == 110.0) << 0x1e) >> 0x18) |
                (byte)(((uint)(110.0 <= dVar1) << 0x1d) >> 0x18)) < '\0') {
        in_r0[0x135] = (ProxyMine)0x1;
        *(undefined4 *)(in_r0 + 0xf4) = 0;
        (**(code **)(**(int **)(in_r0 + 0xe4) + 0x208))(*(undefined4 *)(in_r0 + 0xe4),in_r0 + 0x110)
        ;
        Sound::playSoundPosition(sndEng,0x31,local_40,uStack_3c);
      }
    }
    FUN_003c4f5c(0,in_s1,0,local_20);
    iVar3 = FUN_003c52d0(local_40,uStack_3c,local_38,uStack_34);
    if (iVar3 != 0) {
      (**(code **)(*(int *)in_r0 + 0x90))(in_r0,1);
    }
  }
  return;
}

// ---- ProxyMine::removeMine  @ 0x3c6288
/* ProxyMine::removeMine(bool) */

void __thiscall ProxyMine::removeMine(ProxyMine *this,bool param_1)

{
  int iVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  CCNotificationCenter *pCVar10;
  float fVar11;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  
  if (this[0x134] == (ProxyMine)0x1) {
    this[0x134] = (ProxyMine)0x0;
    if (param_1) {
      fVar11 = (float)(**(code **)(*(int *)this + 0x50))(this);
      pCVar2 = (CCObject *)cocos2d::CCFloat::create(fVar11);
      fVar11 = (float)(**(code **)(*(int *)this + 0x50))(this);
      uVar3 = cocos2d::CCFloat::create(fVar11);
      uVar4 = cocos2d::CCFloat::create(extraout_s0);
      uVar5 = cocos2d::CCFloat::create(extraout_s0_00);
      uVar6 = cocos2d::CCInteger::create(2);
      uVar7 = cocos2d::CCFloat::create(extraout_s0_01);
      iVar1 = globalSeed;
      globalSeed = globalSeed + 1;
      uVar8 = cocos2d::CCInteger::create(iVar1);
      uVar9 = cocos2d::CCString::create((string *)(this + 0xe8));
      pCVar2 = (CCObject *)
               cocos2d::CCArray::create(pCVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,0);
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"ExplosiveCreate",pCVar2);
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"Explosive",pCVar2);
    }
    else {
      fVar11 = (float)(**(code **)(*(int *)this + 0x50))(this);
      pCVar2 = (CCObject *)cocos2d::CCFloat::create(fVar11);
      fVar11 = (float)(**(code **)(*(int *)this + 0x50))(this);
      uVar3 = cocos2d::CCFloat::create(fVar11);
      uVar4 = cocos2d::CCFloat::create(extraout_s0_02);
      pCVar2 = (CCObject *)cocos2d::CCArray::create(pCVar2,uVar3,uVar4,0);
      pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar10,"ExplosionND",pCVar2);
    }
    pCVar2 = (CCObject *)cocos2d::CCInteger::create(0x17);
    uVar3 = cocos2d::CCInteger::create(*(int *)(this + 0xec));
    uVar4 = cocos2d::CCString::create((string *)(this + 0xe8));
    pCVar2 = (CCObject *)cocos2d::CCArray::create(pCVar2,uVar3,uVar4,0);
    pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar10,"ExplosiveRemove",pCVar2);
  }
  return;
}
