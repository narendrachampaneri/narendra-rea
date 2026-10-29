// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 24 functions

// ---- PHASR::PHASR  @ 0x39a49c
/* PHASR::PHASR() */

PHASR * __thiscall PHASR::PHASR(PHASR *this)

{
  Weapon::Weapon((Weapon *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00915fa8;
  return this;
}

// ---- PHASR::init  @ 0x39a4c8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039a8f0 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PHASR::init() */

bool __thiscall PHASR::init(PHASR *this)

{
  PHASR *pPVar1;
  undefined4 uVar2;
  CCObject *pCVar3;
  CCFloat *this_00;
  code *pcVar4;
  CCArray *pCVar5;
  undefined4 uVar6;
  bool bVar7;
  float fVar8;
  float extraout_s1;
  float extraout_s1_00;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  PHASR *local_24;
  undefined1 auStack_1c [3];
  char local_19;
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  local_24 = this;
  local_19 = Weapon::init((Weapon *)this);
  bVar7 = local_19 == '\x01';
  if (bVar7) {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("laser.png");
    *(undefined4 *)(local_24 + 0x1ec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1ec));
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("flare.png");
    *(undefined4 *)(local_24 + 0x1f0) = uVar2;
    fVar8 = (float)cocos2d::CCObject::retain(*(CCObject **)(local_24 + 0x1f0));
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 0x1f0);
    cocos2d::CCPoint::CCPoint(&local_18,fVar8,extraout_s1);
    (*pcVar4)(uVar2,&local_18);
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x30))(*(undefined4 *)(local_24 + 0x1f0),0x40000000)
    ;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x38))(*(undefined4 *)(local_24 + 0x1f0),0x40000000)
    ;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x90))(*(undefined4 *)(local_24 + 0x1f0),0);
    pcVar4 = *(code **)(**(int **)(local_24 + 0x1f0) + 0x1bc);
    uVar6 = *(undefined4 *)(local_24 + 0x1f0);
    uVar2 = FUN_00399470(0xff,0x32,0);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    (*pcVar4)(uVar6,&local_18);
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("bar.png");
    *(undefined4 *)(local_24 + 500) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(local_24 + 500));
    (**(code **)(**(int **)(local_24 + 500) + 0x90))(*(undefined4 *)(local_24 + 500),0);
    fVar8 = (float)(**(code **)(**(int **)(local_24 + 500) + 0x38))
                             (*(undefined4 *)(local_24 + 500),0x3fc00000);
    pcVar4 = *(code **)(**(int **)(local_24 + 500) + 0x7c);
    uVar2 = *(undefined4 *)(local_24 + 500);
    cocos2d::CCPoint::CCPoint(&local_18,fVar8,extraout_s1_00);
    (*pcVar4)(uVar2,&local_18);
    pcVar4 = *(code **)(**(int **)(local_24 + 500) + 0x1bc);
    uVar6 = *(undefined4 *)(local_24 + 500);
    uVar2 = FUN_00399470(0xff,0,0);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    (*pcVar4)(uVar6,&local_18);
    (**(code **)(*(int *)local_24 + 0x1e0))(local_24);
    (**(code **)(*(int *)local_24 + 0xcc))(local_24,*(undefined4 *)(local_24 + 0x1f0),0);
    fVar8 = (float)(**(code **)(*(int *)local_24 + 0xcc))
                             (local_24,*(undefined4 *)(local_24 + 0x1ec),0);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar8);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(&local_18,&DAT_007e0d58,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)&local_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(&local_18);
    fVar8 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar8);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(&local_18,&DAT_007e0d5c,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)&local_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(&local_18);
    fVar8 = (float)FUN_0079a3fc(auStack_1c);
    pCVar5 = *(CCArray **)(local_24 + 0x150);
    pCVar3 = (CCObject *)cocos2d::CCFloat::create(fVar8);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    pCVar5 = *(CCArray **)(local_24 + 0x14c);
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(&local_18,&DAT_007e0d60,auStack_1c);
    pCVar3 = (CCObject *)cocos2d::CCString::create((string *)&local_18);
    cocos2d::CCArray::addObject(pCVar5,pCVar3);
    FUN_007c5914(&local_18);
    FUN_0079a3fc(auStack_1c);
    *(undefined4 *)(local_24 + 0x144) = 0;
    this_00 = (CCFloat *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(local_24 + 0x150),0);
    uVar2 = cocos2d::CCFloat::getValue(this_00);
    *(undefined4 *)(local_24 + 0x148) = uVar2;
    *(undefined4 *)(local_24 + 0x15c) = 0x3e19999a;
    *(undefined4 *)(local_24 + 0x160) = 0;
    *(undefined4 *)(local_24 + 0x164) = 0;
    *(undefined4 *)(local_24 + 0x16c) = 0;
    (**(code **)(**(int **)(local_24 + 0x1f0) + 0x98))(*(undefined4 *)(local_24 + 0x1f0),0);
    pPVar1 = local_24;
    *(undefined2 *)(local_24 + 0x1e8) = 0x96;
    *(undefined2 *)(local_24 + 0x1ea) = 0x32;
    *(undefined4 *)(local_24 + 0x18c) = 0x7d;
    *(undefined4 *)(local_24 + 0x188) = 0x11;
    *(undefined4 *)(local_24 + 0x19c) = 0x28;
    *(undefined4 *)(local_24 + 0x1a0) = 0x28;
    *(undefined4 *)(local_24 + 0x1a4) = DAT_0094354c;
    *(undefined4 *)(local_24 + 0x1bc) = 10000;
    *(undefined4 *)(local_24 + 0x1cc) = 0x3f7ae148;
    *(undefined4 *)(local_24 + 0x1f8) = 0;
    *(undefined4 *)(local_24 + 0x1fc) = 0;
    local_24[0x200] = (PHASR)0x1;
    *(undefined4 *)(local_24 + 0x170) = 0x32;
    *(undefined4 *)(local_24 + 0x174) = 0x96;
    FUN_003994ec(0,extraout_s1_00,0,&local_38);
    *(undefined4 *)(pPVar1 + 0x1d8) = local_38;
    *(undefined4 *)(pPVar1 + 0x1dc) = uStack_34;
    *(undefined4 *)(pPVar1 + 0x1e0) = uStack_30;
    *(undefined4 *)(pPVar1 + 0x1e4) = uStack_2c;
    *(undefined4 *)(local_24 + 0x198) = DAT_00943548;
  }
  return bVar7;
}

// ---- PHASR::~PHASR  @ 0x39a980
/* WARNING: Removing unreachable block (ram,0x0039a9e4) */
/* PHASR::~PHASR() */

PHASR * __thiscall PHASR::~PHASR(PHASR *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00915fa8;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  (**(code **)(**(int **)(this + 500) + 0xe8))(*(undefined4 *)(this + 500));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1ec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1f0));
  cocos2d::CCObject::release(*(CCObject **)(this + 500));
  Weapon::~Weapon((Weapon *)this);
  return this;
}

// ---- PHASR::~PHASR  @ 0x39a9fc
/* PHASR::~PHASR() */

PHASR * __thiscall PHASR::~PHASR(PHASR *this)

{
  ~PHASR(this);
  operator_delete(this);
  return this;
}

// ---- PHASR::triggerPull  @ 0x39aa18
/* PHASR::triggerPull(float) */

void PHASR::triggerPull(float param_1)

{
  bool bVar1;
  char cVar2;
  int *in_r0;
  float extraout_s0;
  
  if ((float)in_r0[0x57] < (float)in_r0[0x44]) {
    if ((*(short *)((int)in_r0 + 0x1ea) < 1) ||
       (cVar2 = (**(code **)(*in_r0 + 0x2cc))(in_r0), param_1 = extraout_s0, cVar2 == '\x01')) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      *(undefined1 *)(in_r0 + 0x60) = 1;
      *(undefined1 *)((int)in_r0 + 0xe5) = 1;
      in_r0[0x7e] = 0;
      (**(code **)(*in_r0 + 0x294))(in_r0);
      (**(code **)(*in_r0 + 0x308))(in_r0);
      *(char *)((int)in_r0 + 0x195) = *(char *)((int)in_r0 + 0x195) + '\x01';
      *(undefined2 *)((int)in_r0 + 0x1ea) = *(undefined2 *)((int)in_r0 + 0x1ea);
    }
    else {
      (**(code **)(*in_r0 + 0x2cc))(param_1,in_r0);
    }
    in_r0[0x44] = 0;
  }
  cVar2 = (**(code **)(*in_r0 + 0x2cc))(in_r0);
  if (((cVar2 == '\x01') || (*(short *)((int)in_r0 + 0x1ea) != 0)) || ((short)in_r0[0x7a] < 1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    *(undefined1 *)((int)in_r0 + 0x181) = 1;
    in_r0[0x56] = 0;
  }
  return;
}

// ---- PHASR::getPlayerDamage  @ 0x39ab34
/* PHASR::getPlayerDamage(cpVect, cpVect, int, std::string, std::string, bool) */

undefined4 PHASR::getPlayerDamage(float param_1)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  int in_stack_00000018;
  string *in_stack_0000001c;
  string *in_stack_00000020;
  char in_stack_00000024;
  
  pCVar1 = (CCObject *)cocos2d::CCFloat::create(param_1);
  uVar2 = cocos2d::CCFloat::create(extraout_s0);
  uVar3 = cocos2d::CCFloat::create(extraout_s0_00);
  uVar4 = cocos2d::CCFloat::create(extraout_s0_01);
  uVar5 = cocos2d::CCInteger::create(0x11);
  uVar6 = cocos2d::CCInteger::create(in_stack_00000018);
  uVar7 = cocos2d::CCFloat::create(extraout_s0_02);
  uVar8 = cocos2d::CCInteger::create((uint)(in_stack_00000024 != '\0'));
  uVar9 = cocos2d::CCString::create(in_stack_0000001c);
  uVar10 = cocos2d::CCString::create(in_stack_00000020);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,uVar3,uVar4,uVar5,uVar6,uVar7,uVar8,uVar9,uVar10,0);
  return uVar2;
}

// ---- PHASR::updateLaserDistance  @ 0x39ac08
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039ad04 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PHASR::updateLaserDistance(float) */

void __thiscall PHASR::updateLaserDistance(PHASR *this,float param_1)

{
  uint uVar1;
  byte bVar2;
  int *piVar3;
  char cVar4;
  undefined3 uVar5;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 uVar6;
  CCObject *pCVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  CCNotificationCenter *pCVar10;
  float in_r1;
  int iVar11;
  code *pcVar12;
  uint in_fpscr;
  uint uVar13;
  undefined4 in_s1;
  double dVar14;
  float fVar15;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar17;
  undefined8 uVar16;
  undefined4 local_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  undefined4 uStack_104;
  PHASR *local_fc;
  undefined1 local_f6;
  char local_f5;
  undefined1 auStack_f4 [4];
  undefined1 auStack_f0 [4];
  float local_ec;
  undefined4 local_e8;
  float local_e4;
  int local_e0;
  CCObject *local_dc;
  int *local_d8;
  CCObject *local_d4;
  cocos2d acStack_d0 [8];
  float local_c8;
  float local_c4;
  undefined4 local_c0;
  undefined4 uStack_bc;
  undefined4 local_b8;
  undefined4 uStack_b4;
  undefined4 local_b0;
  undefined4 uStack_ac;
  undefined4 local_a8;
  undefined4 uStack_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90 [2];
  undefined4 local_88;
  undefined4 local_80 [2];
  undefined4 local_78;
  undefined4 local_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_54;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_34;
  
  local_ec = 0.0;
  local_c0 = 0;
  uStack_bc = 0;
  local_b8 = 0;
  uStack_b4 = 0;
  local_b0 = 0;
  uStack_ac = 0;
  local_a8 = 0;
  uStack_a4 = 0;
  local_a0 = 0;
  uStack_9c = 0;
  local_98 = 0;
  uStack_94 = 0;
  *(float *)(this + 0x1fc) = *(float *)(this + 0x1fc) + in_r1;
  fVar17 = *(float *)(this + 0x1fc);
  uVar1 = in_fpscr & 0xfffffff | (uint)(fVar17 < 0.1) << 0x1f | (uint)(fVar17 == 0.1) << 0x1e;
  uVar13 = uVar1 | (uint)NAN(fVar17) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  local_f5 = !(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar13 >> 0x1c) & 1);
  local_fc = this;
  if (this[0xe5] != (PHASR)0x0) {
    local_ec = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x1a4),(byte)(uVar13 >> 0x16) & 3);
    local_e4 = -*(float *)(this + 0x1c8) * 0.017453292;
    dVar14 = cos((double)CONCAT44(in_s1,param_1));
    sin(dVar14);
    fVar15 = (float)((ulonglong)dVar14 >> 0x20);
    FUN_003994ec(extraout_r0,fVar15,extraout_r0_00,local_80);
    uVar16 = VectorSignedToFloat(*(undefined4 *)(local_fc + 0x1a4),(byte)(uVar13 >> 0x16) & 3);
    FUN_003995c4(local_80[0],fVar15,local_78,in_s3,(int)uVar16,&local_110);
    local_c0 = local_110;
    uStack_bc = uStack_10c;
    local_b8 = uStack_108;
    uStack_b4 = uStack_104;
    uVar6 = (**(code **)(*(int *)local_fc + 0x50))(local_fc);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_70,SUB84(dVar14,0),fVar15);
    FUN_003994cc(&local_60,uVar6,&local_70);
    (**(code **)(*(int *)local_fc + 0x184))(&local_50,local_fc);
    cocos2d::__CCPointApplyAffineTransform
              (acStack_d0,(CCPoint *)&local_60,(CCAffineTransform *)&local_50);
    (**(code **)(*worldLayer + 0x188))(&local_50,worldLayer);
    cocos2d::__CCPointApplyAffineTransform
              ((cocos2d *)&local_c8,acStack_d0,(CCAffineTransform *)&local_50);
    fVar17 = SUB84((double)local_c8,0);
    FUN_003994ec(fVar17,fVar15,SUB84((double)local_c4,0),&local_110);
    local_a0 = local_110;
    uStack_9c = uStack_10c;
    local_98 = uStack_108;
    uStack_94 = uStack_104;
    FUN_00399514(local_110,fVar15,uStack_108,in_s3,local_c0,in_s5,local_b8,local_90);
    (**(code **)(**(int **)(local_fc + 500) + 0x4c))(*(undefined4 *)(local_fc + 500),&local_c8);
    (**(code **)(**(int **)(local_fc + 500) + 0x98))
              (*(undefined4 *)(local_fc + 500),*(undefined4 *)(local_fc + 0x1c8));
    local_e0 = cpSpaceSegmentQueryFirst(space,uStack_94,local_a0,uStack_9c);
    if (local_e0 != 0) {
      FUN_003996d8(local_a0,fVar15,local_98,in_s3,local_90[0],in_s5,local_88,&local_110,uStack_34,
                   local_50,uStack_4c);
      local_b0 = local_110;
      uStack_ac = uStack_10c;
      local_a8 = uStack_108;
      uStack_a4 = uStack_104;
      FUN_0039956c(local_a0,fVar15,local_98,in_s3,local_110,in_s5,uStack_108,&local_70);
      dVar14 = (double)cpvlength(local_70,uStack_6c,uStack_68,uStack_64);
      local_ec = (float)dVar14;
      if (local_f5 != '\0') {
        pCVar7 = (CCObject *)cocos2d::CCFloat::create(fVar17);
        uVar6 = cocos2d::CCFloat::create(fVar17);
        uVar8 = cocos2d::CCFloat::create(fVar17);
        uVar9 = cocos2d::CCFloat::create(fVar17);
        cocos2d::CCInteger::create(0xff);
        cocos2d::CCInteger::create(0x32);
        cocos2d::CCInteger::create(0);
        if (((*(int *)(local_e0 + 0x5c) == 0xd) || (*(int *)(local_e0 + 0x5c) == 0x84)) ||
           (*(int *)(local_e0 + 0x5c) == 0x241)) {
          iVar11 = 1;
        }
        else {
          iVar11 = 0;
        }
        cocos2d::CCInteger::create(iVar11);
        local_dc = (CCObject *)cocos2d::CCArray::create(pCVar7,uVar6,uVar8,uVar9);
        pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification(pCVar10,"Spark",local_dc);
        piVar3 = hostSoldier;
        local_e8 = *(undefined4 *)(local_fc + 0x198);
        local_f6 = 0;
        local_d8 = (int *)0x0;
        if (*(int *)(local_e0 + 0x5c) == 0x84) {
          local_d8 = *(int **)(local_e0 + 0x50);
          pcVar12 = *(code **)(*hostSoldier + 0x300);
          uVar6 = (**(code **)(*local_d8 + 0x1c4))(local_d8);
          cVar4 = (*pcVar12)(piVar3,uVar6);
          if (cVar4 != '\x01') {
            if (local_d8[0x50] == local_e0) {
              iVar11 = (**(code **)(*local_d8 + 0x26c))(local_d8);
              if (iVar11 != 0) goto LAB_0039b1ae;
              local_f6 = 1;
            }
            FUN_0039956c(local_b0,fVar15,local_a8,in_s3,(int)*(undefined8 *)(local_d8[0x4e] + 0x28),
                         in_s5,(int)*(undefined8 *)(local_d8[0x4e] + 0x30),&local_60);
            (**(code **)(*local_d8 + 0x1c0))(auStack_f4,local_d8);
            FUN_007c64e8(auStack_f0,local_fc + 0x154);
            local_d4 = (CCObject *)getPlayerDamage(local_fc,uStack_54,local_60,uStack_5c);
            FUN_007c5914(auStack_f0);
            FUN_007c5914(auStack_f4);
            pCVar10 = (CCNotificationCenter *)
                      cocos2d::CCNotificationCenter::sharedNotificationCenter();
            cocos2d::CCNotificationCenter::postNotification(pCVar10,"PlayerDamaged",local_d4);
          }
        }
        else if (*(int *)(local_e0 + 0x5c) == 0x241) {
          local_d8 = *(int **)(local_e0 + 0x50);
          if (local_d8[0x50] == local_e0) {
            iVar11 = (**(code **)(*local_d8 + 0x26c))(local_d8);
            if (iVar11 != 0) goto LAB_0039b1ae;
            dVar14 = (double)VectorSignedToFloat(*(undefined4 *)(local_fc + 0x198),
                                                 (byte)(uVar13 >> 0x16) & 3);
            local_e8 = (undefined4)(longlong)(dVar14 * 1.5);
          }
          pcVar12 = *(code **)(*local_d8 + 600);
          uVar6 = VectorSignedToFloat(local_e8,(byte)(uVar13 >> 0x16) & 3);
          FUN_007c64e8(&local_60,local_fc + 0x154);
          (*pcVar12)(local_d8,uVar6,&local_60,0x11);
          FUN_007c5914(&local_60);
        }
      }
    }
  }
LAB_0039b1ae:
  (**(code **)(**(int **)(local_fc + 500) + 0x30))(*(undefined4 *)(local_fc + 500),local_ec + 3.0);
  if (local_f5 != '\0') {
    *(undefined4 *)(local_fc + 0x1fc) = 0;
    local_fc[0x200] = (PHASR)((byte)local_fc[0x200] ^ 1);
    if (local_fc[0x200] == (PHASR)0x0) {
      pcVar12 = *(code **)(**(int **)(local_fc + 500) + 0x1bc);
      uVar6 = *(undefined4 *)(local_fc + 500);
      uVar5 = FUN_00399470(200,100,0);
      local_50 = CONCAT13(local_50._3_1_,uVar5);
      (*pcVar12)(uVar6,&local_50);
    }
    else {
      pcVar12 = *(code **)(**(int **)(local_fc + 500) + 0x1bc);
      uVar6 = *(undefined4 *)(local_fc + 500);
      uVar5 = FUN_00399470(0xff,0,0);
      local_50 = CONCAT13(local_50._3_1_,uVar5);
      (*pcVar12)(uVar6,&local_50);
    }
  }
  return;
}

// ---- PHASR::updateRemoteLaserDistance  @ 0x39b2c0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039b3b8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PHASR::updateRemoteLaserDistance(float) */

void __thiscall PHASR::updateRemoteLaserDistance(PHASR *this,float param_1)

{
  uint uVar1;
  byte bVar2;
  undefined3 uVar3;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  undefined4 uVar4;
  CCObject *pCVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  CCNotificationCenter *this_00;
  float in_r1;
  code *pcVar8;
  uint in_fpscr;
  uint uVar9;
  undefined4 in_s1;
  double dVar10;
  float fVar11;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar13;
  undefined8 uVar12;
  undefined4 local_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  PHASR *local_cc;
  char local_c1;
  float local_c0;
  float local_bc;
  int local_b8;
  CCObject *local_b4;
  cocos2d acStack_b0 [8];
  float local_a8;
  float local_a4;
  undefined4 local_a0;
  undefined4 uStack_9c;
  undefined4 local_98;
  undefined4 uStack_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined4 local_70 [2];
  undefined4 local_68;
  undefined4 local_60 [2];
  undefined4 local_58;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_24;
  
  local_c0 = 0.0;
  local_a0 = 0;
  uStack_9c = 0;
  local_98 = 0;
  uStack_94 = 0;
  local_90 = 0;
  uStack_8c = 0;
  local_88 = 0;
  uStack_84 = 0;
  local_80 = 0;
  uStack_7c = 0;
  local_78 = 0;
  uStack_74 = 0;
  *(float *)(this + 0x1fc) = *(float *)(this + 0x1fc) + in_r1;
  fVar13 = *(float *)(this + 0x1fc);
  uVar1 = in_fpscr & 0xfffffff | (uint)(fVar13 < 0.1) << 0x1f | (uint)(fVar13 == 0.1) << 0x1e;
  uVar9 = uVar1 | (uint)NAN(fVar13) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  local_c1 = !(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar9 >> 0x1c) & 1);
  local_cc = this;
  if (this[0xe5] != (PHASR)0x0) {
    local_c0 = (float)VectorSignedToFloat(*(undefined4 *)(this + 0x1a4),(byte)(uVar9 >> 0x16) & 3);
    local_bc = -*(float *)(this + 0x1c8) * 0.017453292;
    dVar10 = cos((double)CONCAT44(in_s1,param_1));
    sin(dVar10);
    fVar11 = (float)((ulonglong)dVar10 >> 0x20);
    FUN_003994ec(extraout_r0,fVar11,extraout_r0_00,local_60);
    uVar12 = VectorSignedToFloat(*(undefined4 *)(local_cc + 0x1a4),(byte)(uVar9 >> 0x16) & 3);
    FUN_003995c4(local_60[0],fVar11,local_58,in_s3,(int)uVar12,&local_e0);
    local_a0 = local_e0;
    uStack_9c = uStack_dc;
    local_98 = uStack_d8;
    uStack_94 = uStack_d4;
    uVar4 = (**(code **)(*(int *)local_cc + 0x50))(local_cc);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_70,SUB84(dVar10,0),fVar11);
    FUN_003994cc(&local_50,uVar4,local_70);
    (**(code **)(*(int *)local_cc + 0x184))(&local_40,local_cc);
    cocos2d::__CCPointApplyAffineTransform
              (acStack_b0,(CCPoint *)&local_50,(CCAffineTransform *)&local_40);
    (**(code **)(*worldLayer + 0x188))(&local_40,worldLayer);
    cocos2d::__CCPointApplyAffineTransform
              ((cocos2d *)&local_a8,acStack_b0,(CCAffineTransform *)&local_40);
    fVar13 = SUB84((double)local_a8,0);
    FUN_003994ec(fVar13,fVar11,SUB84((double)local_a4,0),&local_e0);
    local_80 = local_e0;
    uStack_7c = uStack_dc;
    local_78 = uStack_d8;
    uStack_74 = uStack_d4;
    FUN_00399514(local_e0,fVar11,uStack_d8,in_s3,local_a0,in_s5,local_98,local_70);
    (**(code **)(**(int **)(local_cc + 500) + 0x4c))(*(undefined4 *)(local_cc + 500),&local_a8);
    (**(code **)(**(int **)(local_cc + 500) + 0x98))
              (*(undefined4 *)(local_cc + 500),*(undefined4 *)(local_cc + 0x1c8));
    local_b8 = cpSpaceSegmentQueryFirst(space,uStack_74,local_80,uStack_7c);
    if (local_b8 != 0) {
      FUN_003996d8(local_80,fVar11,local_78,in_s3,local_70[0],in_s5,local_68,&local_e0,uStack_24,
                   local_40,uStack_3c);
      local_90 = local_e0;
      uStack_8c = uStack_dc;
      local_88 = uStack_d8;
      uStack_84 = uStack_d4;
      FUN_0039956c(local_80,fVar11,local_78,in_s3,local_e0,in_s5,uStack_d8,&local_50);
      dVar10 = (double)cpvlength(local_50,uStack_4c,uStack_48,uStack_44);
      local_c0 = (float)dVar10;
      if (local_c1 != '\0') {
        pCVar5 = (CCObject *)cocos2d::CCFloat::create(fVar13);
        uVar4 = cocos2d::CCFloat::create(fVar13);
        uVar6 = cocos2d::CCFloat::create(fVar13);
        uVar7 = cocos2d::CCFloat::create(fVar13);
        cocos2d::CCInteger::create(0xff);
        cocos2d::CCInteger::create(0x32);
        cocos2d::CCInteger::create(0);
        cocos2d::CCInteger::create((uint)(*(int *)(local_b8 + 0x5c) == 0xd));
        local_b4 = (CCObject *)cocos2d::CCArray::create(pCVar5,uVar4,uVar6,uVar7);
        this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
        cocos2d::CCNotificationCenter::postNotification(this_00,"Spark",local_b4);
      }
    }
  }
  (**(code **)(**(int **)(local_cc + 500) + 0x30))(*(undefined4 *)(local_cc + 500),local_c0 + 3.0);
  if (local_c1 != '\0') {
    *(undefined4 *)(local_cc + 0x1fc) = 0;
    local_cc[0x200] = (PHASR)((byte)local_cc[0x200] ^ 1);
    if (local_cc[0x200] == (PHASR)0x0) {
      pcVar8 = *(code **)(**(int **)(local_cc + 500) + 0x1bc);
      uVar4 = *(undefined4 *)(local_cc + 500);
      uVar3 = FUN_00399470(200,100,0);
      local_40 = CONCAT13(local_40._3_1_,uVar3);
      (*pcVar8)(uVar4,&local_40);
    }
    else {
      pcVar8 = *(code **)(**(int **)(local_cc + 500) + 0x1bc);
      uVar4 = *(undefined4 *)(local_cc + 500);
      uVar3 = FUN_00399470(0xff,0,0);
      local_40 = CONCAT13(local_40._3_1_,uVar3);
      (*pcVar8)(uVar4,&local_40);
    }
  }
  return;
}

// ---- PHASR::doFire  @ 0x39b768
/* PHASR::doFire(float, cpVect, cpVect, int, std::string) */

void PHASR::doFire(void)

{
  return;
}

// ---- PHASR::updateItemStep  @ 0x39b77c
/* PHASR::updateItemStep(float) */

void __thiscall PHASR::updateItemStep(PHASR *this,float param_1)

{
  bool bVar1;
  short sVar2;
  float fVar3;
  float in_r1;
  float fVar4;
  float extraout_s0;
  float extraout_s0_00;
  float fVar5;
  
  *(float *)(this + 0x158) = *(float *)(this + 0x158) + in_r1;
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(**(int **)(this + 500) + 0x90))(*(undefined4 *)(this + 500),this[0xe5]);
  fVar4 = (float)(**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x181] != (PHASR)0x0) {
    fVar5 = *(float *)(this + 0x158);
    fVar3 = (float)(**(code **)(*(int *)this + 0x2b8))(this);
    fVar4 = extraout_s0;
    if (fVar3 < fVar5) {
      bVar1 = true;
      goto LAB_0039b81e;
    }
  }
  bVar1 = false;
LAB_0039b81e:
  if (bVar1) {
    this[0x181] = (PHASR)0x0;
    *(undefined4 *)(this + 0x110) = 0;
    sVar2 = (**(code **)(*(int *)this + 0x2b4))(this);
    *(short *)(this + 0x1e8) = *(short *)(this + 0x1e8) - (sVar2 - *(short *)(this + 0x1ea));
    *(ushort *)(this + 0x1ea) =
         (*(ushort *)(this + 0x1e8) & (short)*(ushort *)(this + 0x1e8) >> 0x1f) +
         (sVar2 - *(short *)(this + 0x1ea)) + *(short *)(this + 0x1ea);
    *(ushort *)(this + 0x1e8) =
         *(ushort *)(this + 0x1e8) & ~((short)*(ushort *)(this + 0x1e8) >> 0x1f);
    fVar4 = extraout_s0_00;
  }
  updateLaserDistance(this,fVar4);
  *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
  if (*(float *)(this + 0x15c) < *(float *)(this + 0x1f8)) {
    this[0xe5] = (PHASR)0x0;
  }
  return;
}

// ---- PHASR::updateRemoteItemStep  @ 0x39b8f0
/* PHASR::updateRemoteItemStep(float) */

void __thiscall PHASR::updateRemoteItemStep(PHASR *this,float param_1)

{
  float in_r1;
  float fVar1;
  
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),this[0x180]);
  (**(code **)(**(int **)(this + 500) + 0x90))(*(undefined4 *)(this + 500),this[0xe5]);
  fVar1 = (float)(**(code **)(*(int *)this + 0x254))(this,in_r1);
  if (this[0x194] != this[0x195]) {
    fVar1 = (float)(**(code **)(*(int *)this + 0x260))(this,in_r1);
  }
  updateRemoteLaserDistance(this,fVar1);
  *(float *)(this + 0x1f8) = *(float *)(this + 0x1f8) + in_r1;
  if (*(float *)(this + 0x15c) + *(float *)(this + 0x15c) < *(float *)(this + 0x1f8)) {
    this[0xe5] = (PHASR)0x0;
  }
  return;
}

// ---- PHASR::remoteTriggerPull  @ 0x39b9ac
/* PHASR::remoteTriggerPull(float) */

float PHASR::remoteTriggerPull(float param_1)

{
  int *in_r0;
  
  if ((float)in_r0[0x57] < (float)in_r0[0x44]) {
    in_r0[0x44] = 0;
    *(undefined1 *)(in_r0 + 0x60) = 1;
    *(undefined1 *)((int)in_r0 + 0xe5) = 1;
    in_r0[0x7e] = 0;
    (**(code **)(*in_r0 + 0x294))(in_r0);
    param_1 = (float)(**(code **)(*in_r0 + 0x308))(in_r0);
    *(char *)((int)in_r0 + 0x195) = *(char *)((int)in_r0 + 0x195) + '\x01';
  }
  return param_1;
}

// ---- PHASR::getShellPoint  @ 0x39ba24
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039bade */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PHASR::getShellPoint() */

undefined4 PHASR::getShellPoint(void)

{
  undefined4 in_r0;
  undefined4 uVar1;
  int *in_r1;
  float extraout_s0;
  float extraout_s1;
  float local_40;
  float local_3c;
  CCPoint aCStack_38 [8];
  cocos2d acStack_30 [8];
  CCAffineTransform aCStack_28 [28];
  
  uVar1 = (**(code **)(*in_r1 + 0x50))(in_r1);
  cocos2d::CCPoint::CCPoint(aCStack_38,extraout_s0,extraout_s1);
  FUN_003994cc(acStack_30,uVar1,aCStack_38);
  (**(code **)(*in_r1 + 0x184))(aCStack_28,in_r1);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)&local_40,acStack_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform(acStack_30,(CCPoint *)&local_40,aCStack_28);
  cocos2d::CCPoint::operator=((CCPoint *)&local_40,(CCPoint *)acStack_30);
  FUN_003994ec(SUB84((double)local_40,0),extraout_s1,SUB84((double)local_3c,0),in_r0);
  return in_r0;
}

// ---- PHASR::playSound  @ 0x39baf0
/* PHASR::playSound() */

void __thiscall PHASR::playSound(PHASR *this)

{
  undefined4 uVar1;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  uVar1 = sndEng;
  (**(code **)(*(int *)this + 800))(&local_18,this);
  Sound::playSoundPosition(uVar1,0x24,local_18,uStack_14,local_10,uStack_c);
  return;
}

// ---- PHASR::setPrimaryConfiguration  @ 0x39bb38
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039bb68 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PHASR::setPrimaryConfiguration() */

void __thiscall PHASR::setPrimaryConfiguration(PHASR *this)

{
  undefined4 extraout_r1;
  code *pcVar1;
  undefined4 uVar2;
  float fVar3;
  undefined8 in_d0;
  float fVar4;
  CCPoint aCStack_18 [8];
  
  fVar4 = (float)((ulonglong)in_d0 >> 0x20);
  if (*(int *)(this + 0xe8) != 0) {
    FUN_003996ac(0,fVar4,0,*(undefined4 *)(this + 0xe8));
    cpBodySetAngle(*(undefined4 *)(this + 0xe8),extraout_r1,0,0);
  }
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  fVar3 = (float)in_d0;
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x7c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  this[0x195] = (PHASR)0x0;
  this[0x194] = (PHASR)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  (**(code **)(**(int **)(this + 500) + 0x90))(*(undefined4 *)(this + 500),0);
  (**(code **)(**(int **)(this + 500) + 0xe8))(*(undefined4 *)(this + 500));
  (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 500),2);
  return;
}

// ---- PHASR::setSecondaryConfiguration  @ 0x39bccc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0039bcf8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PHASR::setSecondaryConfiguration() */

void __thiscall PHASR::setSecondaryConfiguration(PHASR *this)

{
  undefined4 extraout_r1;
  code *pcVar1;
  undefined4 uVar2;
  float fVar3;
  undefined8 in_d0;
  float fVar4;
  CCPoint aCStack_18 [12];
  
  fVar4 = (float)((ulonglong)in_d0 >> 0x20);
  if (*(int *)(this + 0xe8) != 0) {
    FUN_003996ac(0,fVar4,0,*(undefined4 *)(this + 0xe8));
    cpBodySetAngle(*(undefined4 *)(this + 0xe8),extraout_r1,0,0);
  }
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x4c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  fVar3 = (float)in_d0;
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  pcVar1 = *(code **)(**(int **)(this + 0x1ec) + 0x7c);
  uVar2 = *(undefined4 *)(this + 0x1ec);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(uVar2,aCStack_18);
  (**(code **)(**(int **)(this + 0x1ec) + 0x98))(*(undefined4 *)(this + 0x1ec),0x425c0000);
  (**(code **)(**(int **)(this + 0x1ec) + 0x40))(*(undefined4 *)(this + 0x1ec),0x3f800000);
  pcVar1 = *(code **)(*(int *)this + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,fVar3,fVar4);
  (*pcVar1)(this,aCStack_18);
  (**(code **)(*(int *)this + 0x40))(this,0x3f800000);
  (**(code **)(*(int *)this + 0x98))(this,0);
  (**(code **)(**(int **)(this + 0x1f0) + 0x90))(*(undefined4 *)(this + 0x1f0),0);
  (**(code **)(**(int **)(this + 500) + 0x90))(*(undefined4 *)(this + 500),0);
  this[0xe5] = (PHASR)0x0;
  this[0x195] = (PHASR)0x0;
  this[0x194] = (PHASR)0x0;
  *(undefined4 *)(this + 0x1c0) = 0;
  (**(code **)(**(int **)(this + 500) + 0xe8))(*(undefined4 *)(this + 500));
  return;
}

// ---- PHASR::setMapConfiguration  @ 0x39be5c
/* PHASR::setMapConfiguration() */

void PHASR::setMapConfiguration(void)

{
  int *in_r0;
  code *pcVar1;
  int iVar2;
  float in_s0;
  float in_s1;
  undefined8 uVar3;
  CCPoint aCStack_18 [8];
  
  in_r0[100] = 0;
  pcVar1 = *(code **)(*(int *)in_r0[0x7b] + 0x4c);
  iVar2 = in_r0[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,in_s0,in_s1);
  uVar3 = (*pcVar1)(iVar2,aCStack_18);
  pcVar1 = *(code **)(*(int *)in_r0[0x7b] + 0x7c);
  iVar2 = in_r0[0x7b];
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(iVar2,aCStack_18);
  uVar3 = (**(code **)(*(int *)in_r0[0x7b] + 0x98))(in_r0[0x7b],0);
  pcVar1 = *(code **)(*in_r0 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  (*pcVar1)(in_r0,aCStack_18);
  (**(code **)(*in_r0 + 0x40))(in_r0,playerScale);
  (**(code **)(*(int *)in_r0[0x7c] + 0x90))(in_r0[0x7c],0);
  (**(code **)(*(int *)in_r0[0x7d] + 0x90))(in_r0[0x7d],0);
  *(undefined1 *)((int)in_r0 + 0xe5) = 0;
  *(undefined1 *)((int)in_r0 + 0x195) = 0;
  *(undefined1 *)(in_r0 + 0x65) = 0;
  in_r0[0x70] = 0;
  (**(code **)(*(int *)in_r0[0x7d] + 0xe8))(in_r0[0x7d]);
  return;
}

// ---- PHASR::getWeaponTexture  @ 0x39bf8c
/* PHASR::getWeaponTexture() */

undefined4 __thiscall PHASR::getWeaponTexture(PHASR *this)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(**(int **)(this + 0x1ec) + 500))(*(undefined4 *)(this + 0x1ec));
  return uVar1;
}

// ---- PHASR::getWeaponRect  @ 0x39bfb4
/* PHASR::getWeaponRect() */

CCRect * PHASR::getWeaponRect(void)

{
  CCRect *in_r0;
  CCRect *pCVar1;
  int in_r1;
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(*(CCSprite **)(in_r1 + 0x1ec));
  cocos2d::CCRect::CCRect(in_r0,pCVar1);
  return in_r0;
}

// ---- PHASR::isRight  @ 0x39bfdc
/* PHASR::isRight() */

bool __thiscall PHASR::isRight(PHASR *this)

{
  float fVar1;
  
  fVar1 = (float)(**(code **)(**(int **)(this + 0x1ec) + 0x34))(*(undefined4 *)(this + 0x1ec));
  return 1.0 < fVar1;
}

// ---- PHASR::setRight  @ 0x39c018
/* PHASR::setRight(bool) */

void __thiscall PHASR::setRight(PHASR *this,bool param_1)

{
  undefined4 uVar1;
  
  if (param_1) {
    uVar1 = 0x3f800000;
  }
  else {
    uVar1 = 0xbf800000;
  }
  (**(code **)(**(int **)(this + 0x1ec) + 0x30))(*(undefined4 *)(this + 0x1ec),uVar1);
  return;
}

// ---- PHASR::getRANGE  @ 0x39c058
/* PHASR::getRANGE() */

undefined4 PHASR::getRANGE(void)

{
  return DAT_0094354c;
}

// ---- PHASR::getDAMAGE  @ 0x39c068
/* PHASR::getDAMAGE() */

undefined4 PHASR::getDAMAGE(void)

{
  return DAT_00943548;
}

// ---- PHASR::create  @ 0x42747c
/* PHASR::create() */

PHASR * PHASR::create(void)

{
  bool bVar1;
  PHASR *this;
  int iVar2;
  
  this = operator_new(0x208);
  PHASR(this);
  if ((this == (PHASR *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (PHASR *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PHASR *)0x0;
  }
  return this;
}
