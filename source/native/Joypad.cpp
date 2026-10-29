// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 27 functions

// ---- Joypad::create  @ 0x349f4c
/* Joypad::create() */

Joypad * Joypad::create(void)

{
  bool bVar1;
  Joypad *this;
  int iVar2;
  
  this = operator_new(0x154);
  Joypad(this);
  if ((this == (Joypad *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (Joypad *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (Joypad *)0x0;
  }
  return this;
}

// ---- Joypad::Joypad  @ 0x35d46c
/* Joypad::Joypad() */

Joypad * __thiscall Joypad::Joypad(Joypad *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_009132a0;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0xfc));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x104));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x114));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x11c));
  return this;
}

// ---- Joypad::init  @ 0x35d4d4
/* Joypad::init() */

undefined4 __thiscall Joypad::init(Joypad *this)

{
  char cVar1;
  CCUserDefault *pCVar2;
  int iVar3;
  undefined4 uVar4;
  code *pcVar5;
  undefined8 uVar6;
  CCPoint aCStack_18 [8];
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x10c) = 0;
    *(undefined4 *)(this + 0x110) = 0;
    pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    iVar3 = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"InputSwap",0);
    this[0x146] = (Joypad)(iVar3 != 0);
    pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    uVar4 = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"InputMoveInvert",0);
    *(undefined4 *)(this + 0x148) = uVar4;
    pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    uVar4 = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"InputAimInvert",0);
    *(undefined4 *)(this + 0x14c) = uVar4;
    pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
    iVar3 = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"InputMoveType",0);
    this[0x150] = (Joypad)(iVar3 != 0);
    if (gameType == 0) {
      this[0x146] = (Joypad)0x0;
      *(undefined4 *)(this + 0x148) = 0;
      *(undefined4 *)(this + 0x14c) = 0;
      this[0x150] = (Joypad)0x0;
    }
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("moveStick.png");
    *(undefined4 *)(this + 0xe4) = uVar4;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar5 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar4 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar4,aCStack_18);
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("fireStick.png");
    *(undefined4 *)(this + 0xe8) = uVar4;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    pcVar5 = *(code **)(**(int **)(this + 0xe8) + 0x7c);
    uVar4 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar4,aCStack_18);
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("firePad.png");
    *(undefined4 *)(this + 0xf4) = uVar4;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    pcVar5 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
    uVar4 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar4,aCStack_18);
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("movePad.png");
    *(undefined4 *)(this + 0xf8) = uVar4;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    pcVar5 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
    uVar4 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar4,aCStack_18);
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("firePad.png");
    *(undefined4 *)(this + 0xec) = uVar4;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    pcVar5 = *(code **)(**(int **)(this + 0xec) + 0x7c);
    uVar4 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    (*pcVar5)(uVar4,aCStack_18);
    uVar4 = cocos2d::CCSprite::createWithSpriteFrameName("movePad.png");
    *(undefined4 *)(this + 0xf0) = uVar4;
    uVar6 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    pcVar5 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
    uVar4 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = (*pcVar5)(uVar4,aCStack_18);
    this[0x131] = (Joypad)0x0;
    this[0x132] = (Joypad)0x0;
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0xfc),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x104),aCStack_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf0),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),0);
    uVar6 = (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe8),0);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    uVar6 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x114),aCStack_18);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x11c),aCStack_18);
    *(undefined4 *)(this + 0x124) = 0;
    *(undefined4 *)(this + 0x128) = 0;
    *(int *)(this + 0x134) = (int)(FIRE_PAD_SCL * 40.0);
    *(int *)(this + 0x138) = (int)(MOVE_PAD_SCL * 40.0);
    (**(code **)(**(int **)(this + 0xe8) + 0x4c))(*(undefined4 *)(this + 0xe8),&RIGHT_PAD);
    (**(code **)(**(int **)(this + 0xe4) + 0x4c))(*(undefined4 *)(this + 0xe4),&LEFT_PAD);
    (**(code **)(**(int **)(this + 0xe8) + 0x40))(*(undefined4 *)(this + 0xe8),FIRE_PAD_SCL);
    (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),MOVE_PAD_SCL);
    (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),FIRE_PAD_SCL);
    (**(code **)(**(int **)(this + 0xf8) + 0x40))(*(undefined4 *)(this + 0xf8),MOVE_PAD_SCL);
    (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),FIRE_PAD_SCL);
    (**(code **)(**(int **)(this + 0xf0) + 0x40))(*(undefined4 *)(this + 0xf0),MOVE_PAD_SCL);
    this[300] = (Joypad)0x1;
    this[0x12d] = (Joypad)0x0;
    this[0x12e] = (Joypad)0x0;
    this[0x130] = (Joypad)0x0;
    this[0x12f] = (Joypad)0x0;
    this[0x13c] = (Joypad)0x0;
    this[0x13d] = (Joypad)0x0;
    this[0x13e] = (Joypad)0x0;
    this[0x13f] = (Joypad)0x0;
    this[0x140] = (Joypad)0x0;
    this[0x141] = (Joypad)0x0;
    this[0x142] = (Joypad)0x0;
    this[0x143] = (Joypad)0x0;
    this[0x144] = (Joypad)0x0;
    this[0x145] = (Joypad)0x0;
    uVar4 = 1;
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- Joypad::~Joypad  @ 0x35daa0
/* WARNING: Removing unreachable block (ram,0x0035db14) */
/* Joypad::~Joypad() */

Joypad * __thiscall Joypad::~Joypad(Joypad *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_009132a0;
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- Joypad::~Joypad  @ 0x35db2c
/* Joypad::~Joypad() */

Joypad * __thiscall Joypad::~Joypad(Joypad *this)

{
  ~Joypad(this);
  operator_delete(this);
  return this;
}

// ---- Joypad::startControl  @ 0x35db48
/* Joypad::startControl() */

void Joypad::startControl(void)

{
  return;
}

// ---- Joypad::stopControl  @ 0x35db50
/* Joypad::stopControl() */

void Joypad::stopControl(void)

{
  return;
}

// ---- Joypad::updateStep  @ 0x35db58
/* Joypad::updateStep(float) */

void __thiscall Joypad::updateStep(Joypad *this,float param_1)

{
  uint uVar1;
  byte bVar2;
  float fVar3;
  CCPoint *pCVar4;
  code *pcVar5;
  undefined4 uVar6;
  uint in_fpscr;
  uint uVar7;
  float fVar8;
  undefined4 uVar9;
  CCPoint aCStack_30 [8];
  CCPoint aCStack_28 [8];
  CCPoint aCStack_20 [8];
  CCPoint aCStack_18 [12];
  
  if (this[300] == (Joypad)0x0) {
    (**(code **)(**(int **)(this + 0xf4) + 0x90))
              (*(undefined4 *)(this + 0xf4),*(int *)(this + 0x10c) != 0);
    (**(code **)(**(int **)(this + 0xf8) + 0x90))
              (*(undefined4 *)(this + 0xf8),*(int *)(this + 0x110) != 0);
  }
  else {
    cocos2d::CCPoint::CCPoint(aCStack_28,(CCPoint *)&LEFT_PAD);
    cocos2d::CCPoint::CCPoint(aCStack_20,(CCPoint *)&RIGHT_PAD);
    if (this[0x146] != (Joypad)0x0) {
      cocos2d::CCPoint::CCPoint(aCStack_18,aCStack_28);
      cocos2d::CCPoint::operator=(aCStack_28,aCStack_20);
      cocos2d::CCPoint::operator=(aCStack_20,aCStack_18);
    }
    if (this[0x12d] == (Joypad)0x0) {
      pCVar4 = aCStack_20;
    }
    else {
      pCVar4 = aCStack_28;
    }
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0xfc),pCVar4);
    if (this[0x12d] == (Joypad)0x0) {
      pCVar4 = aCStack_28;
    }
    else {
      pCVar4 = aCStack_20;
    }
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x104),pCVar4);
  }
  if (this[0x130] != (Joypad)0x0) {
    FUN_0035c6b0(aCStack_30,this + 0x114,this + 0xfc);
    fVar3 = (float)cocos2d::ccpLength(aCStack_30);
    fVar8 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x134),(byte)(in_fpscr >> 0x16) & 3);
    uVar1 = in_fpscr & 0xfffffff | (uint)(fVar3 < fVar8) << 0x1f | (uint)(fVar3 == fVar8) << 0x1e;
    in_fpscr = uVar1 | (uint)(NAN(fVar3) || NAN(fVar8)) << 0x1c;
    bVar2 = (byte)(uVar1 >> 0x18);
    if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(in_fpscr >> 0x1c) & 1)) {
      (**(code **)(**(int **)(this + 0xe8) + 0x4c))(*(undefined4 *)(this + 0xe8),this + 0x114);
    }
    else {
      pcVar5 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
      uVar6 = *(undefined4 *)(this + 0xe8);
      cocos2d::ccpNormalize(aCStack_28);
      uVar9 = VectorSignedToFloat(*(undefined4 *)(this + 0x134),(byte)(in_fpscr >> 0x16) & 3);
      FUN_0035c6d0(uVar9,aCStack_20,aCStack_28);
      FUN_0035c690(aCStack_18,aCStack_20,this + 0xfc);
      (*pcVar5)(uVar6,aCStack_18);
    }
  }
  if (this[0x150] != (Joypad)0x1) {
    if (this[0x12f] == (Joypad)0x0) {
      pcVar5 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
      uVar9 = *(undefined4 *)(this + 0xe4);
      FUN_0035c6d0(0x3e4ccccd,aCStack_28,this + 0x104);
      uVar6 = (**(code **)(**(int **)(this + 0xe4) + 0x50))(*(undefined4 *)(this + 0xe4));
      FUN_0035c6d0(0x3f4ccccd,aCStack_20,uVar6);
      FUN_0035c690(aCStack_18,aCStack_28,aCStack_20);
      (*pcVar5)(uVar9,aCStack_18);
    }
    else {
      FUN_0035c6b0(aCStack_30,this + 0x11c,this + 0x104);
      fVar3 = (float)cocos2d::ccpLength(aCStack_30);
      fVar8 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x138),(byte)(in_fpscr >> 0x16) & 3)
      ;
      uVar1 = in_fpscr & 0xfffffff | (uint)(fVar3 < fVar8) << 0x1f | (uint)(fVar3 == fVar8) << 0x1e;
      uVar7 = uVar1 | (uint)(NAN(fVar3) || NAN(fVar8)) << 0x1c;
      bVar2 = (byte)(uVar1 >> 0x18);
      if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar7 >> 0x1c) & 1)) {
        (**(code **)(**(int **)(this + 0xe4) + 0x4c))(*(undefined4 *)(this + 0xe4),this + 0x11c);
      }
      else {
        pcVar5 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
        uVar6 = *(undefined4 *)(this + 0xe4);
        cocos2d::ccpNormalize(aCStack_28);
        uVar9 = VectorSignedToFloat(*(undefined4 *)(this + 0x138),(byte)(uVar7 >> 0x16) & 3);
        FUN_0035c6d0(uVar9,aCStack_20,aCStack_28);
        FUN_0035c690(aCStack_18,aCStack_20,this + 0x104);
        (*pcVar5)(uVar6,aCStack_18);
      }
    }
  }
  (**(code **)(**(int **)(this + 0xf4) + 0x4c))(*(undefined4 *)(this + 0xf4),this + 0xfc);
  (**(code **)(**(int **)(this + 0xf8) + 0x4c))(*(undefined4 *)(this + 0xf8),this + 0x104);
  (**(code **)(**(int **)(this + 0xec) + 0x4c))(*(undefined4 *)(this + 0xec),this + 0xfc);
  (**(code **)(**(int **)(this + 0xf0) + 0x4c))(*(undefined4 *)(this + 0xf0),this + 0x104);
  return;
}

// ---- Joypad::beginTouch  @ 0x35ded8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0035e12a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Joypad::beginTouch(cocos2d::CCPoint, long) */

undefined4
Joypad::beginTouch(undefined4 param_1,undefined4 param_2,int param_3,CCPoint *param_4,
                  undefined4 param_5)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  uint in_fpscr;
  float local_28;
  float local_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  float local_18;
  float local_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  FUN_0035c6b0(&local_18,param_3 + 0xfc,param_4);
  fVar1 = (float)cocos2d::ccpLength((CCPoint *)&local_18);
  FUN_0035c6b0(&local_18,param_3 + 0x104,param_4);
  fVar2 = (float)cocos2d::ccpLength((CCPoint *)&local_18);
  if (((*(int *)(param_3 + 0x10c) == 0) &&
      (in_fpscr = in_fpscr & 0xfffffff | (uint)(fVar1 < 90.0) << 0x1f |
                  (uint)(fVar1 == 90.0) << 0x1e | (uint)(90.0 <= fVar1) << 0x1d, (int)in_fpscr < 0))
     && (*(char *)(param_3 + 0x132) != '\x01')) {
    *(undefined4 *)(param_3 + 0x10c) = param_5;
    cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x114),param_4);
    FUN_0035c6b0(&local_18,param_4,param_3 + 0xfc);
    if ((*(int *)(param_3 + 0x14c) == 1) || (*(int *)(param_3 + 0x14c) == 3)) {
      local_18 = -local_18;
    }
    if ((*(int *)(param_3 + 0x14c) == 2) || (*(int *)(param_3 + 0x14c) == 3)) {
      local_14 = -local_14;
    }
    FUN_0035c6f0(SUB84((double)local_18,0),param_2,SUB84((double)local_14,0),&local_28);
    uVar3 = FUN_0035c778(local_28,local_24,uStack_20,uStack_1c);
    *(undefined4 *)(param_3 + 0x124) = uVar3;
    if (*(char *)(param_3 + 300) != '\x01') {
      cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0xfc),param_4);
    }
    *(undefined1 *)(param_3 + 0x130) = 1;
    if (*(char *)(param_3 + 0x150) != '\x01') {
      fVar2 = (float)VectorSignedToFloat(*(undefined4 *)(param_3 + 0x134),
                                         (byte)(in_fpscr >> 0x16) & 3);
      if ((int)(in_fpscr & 0xfffffff | (uint)(fVar2 < fVar1) << 0x1f |
                (uint)(fVar2 == fVar1) << 0x1e | (uint)(fVar1 <= fVar2) << 0x1d) < 0) {
        *(undefined1 *)(param_3 + 0x12e) = 1;
        (**(code **)(**(int **)(param_3 + 0xec) + 0x90))(*(undefined4 *)(param_3 + 0xec),1);
      }
      else {
        (**(code **)(**(int **)(param_3 + 0xec) + 0x90))(*(undefined4 *)(param_3 + 0xec),0);
        *(undefined1 *)(param_3 + 0x12e) = 0;
      }
    }
    return 1;
  }
  if (((*(int *)(param_3 + 0x110) == 0) &&
      ((char)((byte)(in_fpscr >> 0x18) & 0xf | (byte)(((uint)(fVar2 < 90.0) << 0x1f) >> 0x18) |
              (byte)(((uint)(fVar2 == 90.0) << 0x1e) >> 0x18) |
             (byte)(((uint)(90.0 <= fVar2) << 0x1d) >> 0x18)) < '\0')) &&
     (*(char *)(param_3 + 0x131) != '\x01')) {
    *(undefined4 *)(param_3 + 0x110) = param_5;
    cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x11c),param_4);
    FUN_0035c6b0(&local_28,param_4,param_3 + 0x104);
    if ((*(int *)(param_3 + 0x148) == 1) || (*(int *)(param_3 + 0x148) == 3)) {
      local_28 = -local_28;
    }
    if ((*(int *)(param_3 + 0x148) == 2) || (*(int *)(param_3 + 0x148) == 3)) {
      local_24 = -local_24;
    }
    FUN_0035c6f0(SUB84((double)local_28,0),param_2,SUB84((double)local_24,0),&local_18);
    uVar3 = FUN_0035c778(local_18,local_14,uStack_10,uStack_c);
    *(undefined4 *)(param_3 + 0x128) = uVar3;
    if (*(char *)(param_3 + 300) != '\x01') {
      cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x104),param_4);
    }
    *(undefined1 *)(param_3 + 0x12f) = 1;
    if (*(char *)(param_3 + 0x150) != '\0') {
      *(undefined1 *)(param_3 + 0x12e) = 1;
    }
    return 1;
  }
  return 0;
}

// ---- Joypad::touchBeganHandler  @ 0x35e188
/* Joypad::touchBeganHandler(cocos2d::CCPoint, long) */

void __thiscall Joypad::touchBeganHandler(Joypad *this,CCPoint *param_2,undefined4 param_3)

{
  CCPoint aCStack_10 [12];
  
  cocos2d::CCPoint::CCPoint(aCStack_10,param_2);
  beginTouch(this,aCStack_10,param_3);
  return;
}

// ---- Joypad::touchMoveHandler  @ 0x35e1b0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0035e24e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Joypad::touchMoveHandler(cocos2d::CCPoint, long) */

void Joypad::touchMoveHandler
               (undefined4 param_1,undefined4 param_2,int param_3,CCPoint *param_4,int param_5)

{
  undefined4 uVar1;
  float fVar2;
  uint in_fpscr;
  float fVar3;
  float local_30;
  float local_2c;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  
  if ((*(int *)(param_3 + 0x10c) == param_5) && (*(int *)(param_3 + 0x10c) != 0)) {
    cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x114),param_4);
    FUN_0035c6b0(&local_30,param_4,param_3 + 0xfc);
    if ((*(int *)(param_3 + 0x14c) == 1) || (*(int *)(param_3 + 0x14c) == 3)) {
      local_30 = -local_30;
    }
    if ((*(int *)(param_3 + 0x14c) == 2) || (*(int *)(param_3 + 0x14c) == 3)) {
      local_2c = -local_2c;
    }
    FUN_0035c6f0(SUB84((double)local_30,0),param_2,SUB84((double)local_2c,0),&local_28);
    uVar1 = FUN_0035c778(local_28,uStack_24,uStack_20,uStack_1c);
    *(undefined4 *)(param_3 + 0x124) = uVar1;
    *(undefined1 *)(param_3 + 0x130) = 1;
    if (*(char *)(param_3 + 0x150) != '\x01') {
      FUN_0035c6b0(&local_18,param_3 + 0xfc,param_4);
      fVar2 = (float)cocos2d::ccpLength((CCPoint *)&local_18);
      fVar3 = (float)VectorSignedToFloat(*(undefined4 *)(param_3 + 0x134),
                                         (byte)(in_fpscr >> 0x16) & 3);
      if (fVar2 <= fVar3) {
        (**(code **)(**(int **)(param_3 + 0xec) + 0x90))(*(undefined4 *)(param_3 + 0xec),0);
        *(undefined1 *)(param_3 + 0x12e) = 0;
      }
      else {
        (**(code **)(**(int **)(param_3 + 0xec) + 0x90))(*(undefined4 *)(param_3 + 0xec),1);
        *(undefined1 *)(param_3 + 0x12e) = 1;
      }
    }
  }
  if ((*(int *)(param_3 + 0x110) == param_5) && (*(int *)(param_3 + 0x110) != 0)) {
    cocos2d::CCPoint::operator=((CCPoint *)(param_3 + 0x11c),param_4);
    FUN_0035c6b0(&local_30,param_4,param_3 + 0x104);
    if ((*(int *)(param_3 + 0x148) == 1) || (*(int *)(param_3 + 0x148) == 3)) {
      local_30 = -local_30;
    }
    if ((*(int *)(param_3 + 0x148) == 2) || (*(int *)(param_3 + 0x148) == 3)) {
      local_2c = -local_2c;
    }
    FUN_0035c6f0(SUB84((double)local_30,0),param_2,SUB84((double)local_2c,0),&local_18);
    uVar1 = FUN_0035c778(local_18,uStack_14,uStack_10,uStack_c);
    *(undefined4 *)(param_3 + 0x128) = uVar1;
    if (*(char *)(param_3 + 0x150) != '\0') {
      *(undefined1 *)(param_3 + 0x12e) = 1;
    }
  }
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,param_4);
  beginTouch(param_3,&local_30,param_5);
  return;
}

// ---- Joypad::touchEndHandler  @ 0x35e3d0
/* Joypad::touchEndHandler(cocos2d::CCPoint, long) */

void __thiscall Joypad::touchEndHandler(Joypad *this,undefined4 param_2,int param_3)

{
  if (*(int *)(this + 0x10c) == param_3) {
    *(undefined4 *)(this + 0x10c) = 0;
    (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
    if (this[0x150] != (Joypad)0x1) {
      this[0x12e] = (Joypad)0x0;
    }
    this[0x12e] = (Joypad)0x0;
    this[0x130] = (Joypad)0x0;
  }
  if (*(int *)(this + 0x110) == param_3) {
    *(undefined4 *)(this + 0x110) = 0;
    (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
    this[0x12f] = (Joypad)0x0;
    if (this[0x150] != (Joypad)0x0) {
      this[0x12e] = (Joypad)0x0;
    }
  }
  return;
}

// ---- Joypad::cancelTouches  @ 0x35e47c
/* Joypad::cancelTouches() */

void __thiscall Joypad::cancelTouches(Joypad *this)

{
  *(undefined4 *)(this + 0x10c) = 0;
  *(undefined4 *)(this + 0x110) = 0;
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0xec) + 0x90))(*(undefined4 *)(this + 0xec),0);
  this[0x12e] = (Joypad)0x0;
  this[0x130] = (Joypad)0x0;
  this[0x12f] = (Joypad)0x0;
  return;
}

// ---- Joypad::getFireAngle  @ 0x35e4e0
/* Joypad::getFireAngle() */

undefined4 __thiscall Joypad::getFireAngle(Joypad *this)

{
  return *(undefined4 *)(this + 0x124);
}

// ---- Joypad::getDirectionAngle  @ 0x35e4f0
/* Joypad::getDirectionAngle() */

undefined4 __thiscall Joypad::getDirectionAngle(Joypad *this)

{
  return *(undefined4 *)(this + 0x128);
}

// ---- Joypad::getOffset  @ 0x35e500
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0035e534 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Joypad::getOffset() */

undefined4 Joypad::getOffset(void)

{
  undefined4 in_r0;
  float fVar1;
  float fVar2;
  Joypad *in_r1;
  undefined4 in_s1;
  
  fVar1 = (float)getXOffset(in_r1);
  fVar2 = (float)getYOffset(in_r1);
  FUN_0035c6f0(SUB84((double)fVar1,0),in_s1,SUB84((double)fVar2,0),in_r0);
  return in_r0;
}

// ---- Joypad::getXOffset  @ 0x35e544
/* Joypad::getXOffset() */

float __thiscall Joypad::getXOffset(Joypad *this)

{
  float *pfVar1;
  uint in_fpscr;
  float local_c;
  
  pfVar1 = (float *)(**(code **)(**(int **)(this + 0xe4) + 0x50))(*(undefined4 *)(this + 0xe4));
  local_c = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x138),(byte)(in_fpscr >> 0x16) & 3);
  local_c = (*pfVar1 - *(float *)(this + 0x104)) / local_c;
  if ((*(int *)(this + 0x148) == 1) || (*(int *)(this + 0x148) == 3)) {
    local_c = -local_c;
  }
  return local_c;
}

// ---- Joypad::getYOffset  @ 0x35e5b0
/* Joypad::getYOffset() */

float __thiscall Joypad::getYOffset(Joypad *this)

{
  int iVar1;
  uint in_fpscr;
  float local_c;
  
  iVar1 = (**(code **)(**(int **)(this + 0xe4) + 0x50))(*(undefined4 *)(this + 0xe4));
  local_c = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x138),(byte)(in_fpscr >> 0x16) & 3);
  local_c = (*(float *)(iVar1 + 4) - *(float *)(this + 0x108)) / local_c;
  if ((*(int *)(this + 0x148) == 2) || (*(int *)(this + 0x148) == 3)) {
    local_c = -local_c;
  }
  return local_c;
}

// ---- Joypad::setMoveDirection  @ 0x35e61c
/* Joypad::setMoveDirection(cpVect) */

void Joypad::setMoveDirection(float param_1,float param_2,int param_3)

{
  code *pcVar1;
  undefined4 uVar2;
  uint in_fpscr;
  undefined4 uVar3;
  CCPoint aCStack_30 [8];
  undefined1 auStack_28 [8];
  undefined1 auStack_20 [8];
  
  pcVar1 = *(code **)(**(int **)(param_3 + 0xe4) + 0x4c);
  uVar2 = *(undefined4 *)(param_3 + 0xe4);
  cocos2d::CCPoint::CCPoint(aCStack_30,param_1,param_2);
  uVar3 = VectorSignedToFloat(*(undefined4 *)(param_3 + 0x138),(byte)(in_fpscr >> 0x16) & 3);
  FUN_0035c6d0(uVar3,auStack_28,aCStack_30);
  FUN_0035c690(auStack_20,param_3 + 0x104,auStack_28);
  (*pcVar1)(uVar2,auStack_20);
  return;
}

// ---- Joypad::setAimDirection  @ 0x35e6a0
/* Joypad::setAimDirection(cpVect) */

void Joypad::setAimDirection(float param_1,float param_2,int param_3)

{
  code *pcVar1;
  undefined4 uVar2;
  uint in_fpscr;
  undefined4 uVar3;
  CCPoint aCStack_30 [8];
  undefined1 auStack_28 [8];
  undefined1 auStack_20 [8];
  
  pcVar1 = *(code **)(**(int **)(param_3 + 0xe8) + 0x4c);
  uVar2 = *(undefined4 *)(param_3 + 0xe8);
  cocos2d::CCPoint::CCPoint(aCStack_30,param_1,param_2);
  uVar3 = VectorSignedToFloat(*(undefined4 *)(param_3 + 0x134),(byte)(in_fpscr >> 0x16) & 3);
  FUN_0035c6d0(uVar3,auStack_28,aCStack_30);
  FUN_0035c690(auStack_20,param_3 + 0xfc,auStack_28);
  (*pcVar1)(uVar2,auStack_20);
  return;
}

// ---- Joypad::getDirectionVector  @ 0x35e724
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0035e7b2 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Joypad::getDirectionVector() */

undefined4 Joypad::getDirectionVector(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int in_r1;
  undefined4 in_s1;
  float local_10;
  float local_c;
  
  uVar1 = (**(code **)(**(int **)(in_r1 + 0xe4) + 0x50))(*(undefined4 *)(in_r1 + 0xe4));
  FUN_0035c6b0(&local_10,uVar1,in_r1 + 0x104);
  if (*(int *)(in_r1 + 0x148) == 1) {
LAB_0035e76a:
    local_10 = -local_10;
  }
  else if (*(int *)(in_r1 + 0x148) == 3) goto LAB_0035e76a;
  if (*(int *)(in_r1 + 0x148) != 2) {
    if (*(int *)(in_r1 + 0x148) != 3) goto LAB_0035e796;
  }
  local_c = -local_c;
LAB_0035e796:
  FUN_0035c6f0(SUB84((double)local_10,0),in_s1,SUB84((double)local_c,0),in_r0);
  return in_r0;
}

// ---- Joypad::getFireVector  @ 0x35e7c0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0035e84c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* Joypad::getFireVector() */

undefined4 Joypad::getFireVector(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int in_r1;
  undefined4 in_s1;
  float local_10;
  float local_c;
  
  uVar1 = (**(code **)(**(int **)(in_r1 + 0xe8) + 0x50))(*(undefined4 *)(in_r1 + 0xe8));
  FUN_0035c6b0(&local_10,uVar1,in_r1 + 0xfc);
  if (*(int *)(in_r1 + 0x14c) == 1) {
LAB_0035e804:
    local_10 = -local_10;
  }
  else if (*(int *)(in_r1 + 0x14c) == 3) goto LAB_0035e804;
  if (*(int *)(in_r1 + 0x14c) != 2) {
    if (*(int *)(in_r1 + 0x14c) != 3) goto LAB_0035e830;
  }
  local_c = -local_c;
LAB_0035e830:
  FUN_0035c6f0(SUB84((double)local_10,0),in_s1,SUB84((double)local_c,0),in_r0);
  return in_r0;
}

// ---- Joypad::fire  @ 0x35e858
/* Joypad::fire() */

Joypad __thiscall Joypad::fire(Joypad *this)

{
  return this[0x12e];
}

// ---- Joypad::padType  @ 0x35e868
/* Joypad::padType() */

undefined4 Joypad::padType(void)

{
  return 0;
}

// ---- Joypad::disableMovement  @ 0x35e874
/* Joypad::disableMovement(bool) */

void __thiscall Joypad::disableMovement(Joypad *this,bool param_1)

{
  this[0x131] = (Joypad)param_1;
  (**(code **)(**(int **)(this + 0xe4) + 0x90))
            (*(undefined4 *)(this + 0xe4),this[0x131] == (Joypad)0x0);
  (**(code **)(**(int **)(this + 0xf0) + 0x90))
            (*(undefined4 *)(this + 0xf0),this[0x131] == (Joypad)0x0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))
            (*(undefined4 *)(this + 0xf8),this[0x131] == (Joypad)0x0);
  if (this[0x131] != (Joypad)0x0) {
    cancelTouches(this);
  }
  return;
}

// ---- Joypad::disableFiring  @ 0x35e918
/* Joypad::disableFiring(bool) */

void __thiscall Joypad::disableFiring(Joypad *this,bool param_1)

{
  this[0x132] = (Joypad)param_1;
  if (this[0x132] != (Joypad)0x0) {
    cancelTouches(this);
  }
  return;
}

// ---- Joypad::updateSpecialInput  @ 0x35e944
/* Joypad::updateSpecialInput(float) */

void Joypad::updateSpecialInput(float param_1)

{
  return;
}
