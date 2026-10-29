// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- Explosion::Explosion  @ 0x32cc14
/* Explosion::Explosion() */

Explosion * __thiscall Explosion::Explosion(Explosion *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910d80;
  FUN_007c51b0(this + 0xf0);
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("smoke.png");
  *(undefined4 *)(this + 0xe8) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe8));
  cocos2d::CCNode::setVisible((CCNode *)this,false);
  pcVar2 = *(code **)(**(int **)(this + 0xe8) + 0x1bc);
  uVar3 = *(undefined4 *)(this + 0xe8);
  uVar1 = FUN_0032bae8(0x50,0x50,0x50);
  local_14 = (undefined1)uVar1;
  local_13 = (undefined1)((uint)uVar1 >> 8);
  local_12 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar2)(uVar3,&local_14);
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("explosion.png");
  *(undefined4 *)(this + 0xe4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe4));
  (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),0);
  uVar1 = cocos2d::CCParticleSystemQuad::create("Shrapnel.plist");
  *(undefined4 *)(this + 0xec) = uVar1;
  (**(code **)(**(int **)(this + 0xec) + 0x2f0))(*(undefined4 *)(this + 0xec),2);
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xec));
  (**(code **)(**(int **)(this + 0xec) + 0x2a8))(*(undefined4 *)(this + 0xec),0);
  (**(code **)(**(int **)(this + 0xec) + 0x2b8))(*(undefined4 *)(this + 0xec),0x43b40000);
  (**(code **)(**(int **)(this + 0xec) + 0x2c8))(*(undefined4 *)(this + 0xec),0x461c4000);
  FUN_007c5e70(this + 0xf0,&DAT_007d72d4);
  *(undefined4 *)(this + 0xf8) = 0;
  return this;
}

// ---- Explosion::~Explosion  @ 0x32cde0
/* WARNING: Removing unreachable block (ram,0x0032ce24) */
/* Explosion::~Explosion() */

Explosion * __thiscall Explosion::~Explosion(Explosion *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00910d80;
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  FUN_007c5914(this + 0xf0);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- Explosion::~Explosion  @ 0x32ce3c
/* Explosion::~Explosion() */

Explosion * __thiscall Explosion::~Explosion(Explosion *this)

{
  ~Explosion(this);
  operator_delete(this);
  return this;
}

// ---- Explosion::reset  @ 0x32ce58
/* Explosion::reset(cpVect, std::string, int) */

void Explosion::reset(int *param_1)

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
  
  param_1[0x3d] = 0;
  (**(code **)(*(int *)param_1[0x39] + 0x40))(param_1[0x39],0x3c23d70a);
  (**(code **)(*(int *)param_1[0x3a] + 0x40))(param_1[0x3a],0);
  uVar4 = (**(code **)(*(int *)param_1[0x3a] + 0x1a4))(param_1[0x3a],0xff);
  pcVar2 = *(code **)(*param_1 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
  (*pcVar2)(param_1,aCStack_20);
  (**(code **)(*(int *)param_1[0x39] + 0x90))(param_1[0x39],1);
  cocos2d::CCParticleSystem::resetSystem((CCParticleSystem *)param_1[0x3b]);
  pcVar2 = *(code **)(*(int *)param_1[0x39] + 0x98);
  iVar3 = param_1[0x39];
  uVar1 = FUN_0032badc();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  (*pcVar2)(iVar3,(fVar5 / 1.0737418e+09 - 1.0) * 180.0);
  (**(code **)(*param_1 + 0x90))(param_1,1);
  thunk_FUN_007c653c(param_1 + 0x3c,in_stack_00000008);
  param_1[0x3e] = in_stack_0000000c;
  return;
}

// ---- Explosion::checkCollision  @ 0x32cf90
/* Explosion::checkCollision(cpVect, float) */

bool Explosion::checkCollision(int *param_1)

{
  undefined4 uVar1;
  float fVar2;
  float extraout_s0;
  float extraout_s1;
  float in_stack_00000008;
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [8];
  
  uVar1 = (**(code **)(*param_1 + 0x50))(param_1);
  cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0,extraout_s1);
  FUN_0032bb44(aCStack_18,uVar1,aCStack_20);
  fVar2 = (float)cocos2d::ccpLength(aCStack_18);
  return fVar2 < in_stack_00000008;
}

// ---- Explosion::updateStep  @ 0x32d7f8
/* Explosion::updateStep(float) */

void __thiscall Explosion::updateStep(Explosion *this,float param_1)

{
  char cVar1;
  float fVar2;
  int iVar3;
  float in_r1;
  code *pcVar4;
  undefined4 uVar5;
  
  if (*(float *)(this + 0xf4) <= 5.0) {
    *(float *)(this + 0xf4) = *(float *)(this + 0xf4) + in_r1;
    if (*(float *)(this + 0xf4) <= 0.15) {
      pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x40);
      uVar5 = *(undefined4 *)(this + 0xe8);
      fVar2 = (float)(**(code **)(**(int **)(this + 0xe8) + 0x44))(*(undefined4 *)(this + 0xe8));
      if (fVar2 + in_r1 * 10.0 <= 1.2) {
        fVar2 = (float)(**(code **)(**(int **)(this + 0xe8) + 0x44))(*(undefined4 *)(this + 0xe8));
        fVar2 = fVar2 + in_r1 * 10.0;
      }
      else {
        fVar2 = 1.2;
      }
      (*pcVar4)(uVar5,fVar2);
      pcVar4 = *(code **)(**(int **)(this + 0xe4) + 0x40);
      uVar5 = *(undefined4 *)(this + 0xe4);
      fVar2 = (float)(**(code **)(**(int **)(this + 0xe4) + 0x44))(*(undefined4 *)(this + 0xe4));
      (*pcVar4)(uVar5,fVar2 * 0.3 + 0.6);
    }
    else {
      (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),0);
      pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x40);
      uVar5 = *(undefined4 *)(this + 0xe8);
      fVar2 = (float)(**(code **)(**(int **)(this + 0xe8) + 0x44))(*(undefined4 *)(this + 0xe8));
      (*pcVar4)(uVar5,fVar2 + in_r1 * 0.25);
      pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x98);
      uVar5 = *(undefined4 *)(this + 0xe8);
      fVar2 = (float)(**(code **)(**(int **)(this + 0xe8) + 0x9c))(*(undefined4 *)(this + 0xe8));
      (*pcVar4)(uVar5,fVar2 + in_r1 * 20.0);
      pcVar4 = *(code **)(**(int **)(this + 0xe8) + 0x1a4);
      uVar5 = *(undefined4 *)(this + 0xe8);
      iVar3 = (**(code **)(**(int **)(this + 0xe8) + 0x19c))(*(undefined4 *)(this + 0xe8));
      if (iVar3 + -1 < 1) {
        cVar1 = '\0';
      }
      else {
        cVar1 = (**(code **)(**(int **)(this + 0xe8) + 0x19c))(*(undefined4 *)(this + 0xe8));
        cVar1 = cVar1 + -1;
      }
      (*pcVar4)(uVar5,cVar1);
    }
  }
  else {
    (**(code **)(*(int *)this + 0x90))(this,0);
  }
  return;
}
