// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- FLAME::FLAME  @ 0x32ea84
/* FLAME::FLAME() */

FLAME * __thiscall FLAME::FLAME(FLAME *this)

{
  undefined4 uVar1;
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00910f30;
  FUN_007c51b0(this + 0x100);
  FUN_007c51b0(this + 0x104);
  uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("blank.png");
  *(undefined4 *)(this + 0xe4) = uVar1;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe4),0);
  *(undefined4 *)(this + 0x158) = 0;
  *(undefined4 *)(this + 0x120) = 0;
  *(undefined4 *)(this + 0x124) = 0;
  *(undefined4 *)(this + 0x128) = 0;
  *(undefined4 *)(this + 300) = 0;
  *(undefined4 *)(this + 0x130) = 0;
  *(undefined4 *)(this + 0x134) = 0;
  *(undefined4 *)(this + 0x138) = 0;
  *(undefined4 *)(this + 0x13c) = 0;
  *(undefined4 *)(this + 0x140) = 0;
  *(undefined4 *)(this + 0x180) = 0;
  FUN_007c5e70(this + 0x100,&DAT_007d751c);
  FUN_007c5e70(this + 0x104,&DAT_007d751c);
  *(undefined4 *)(this + 0x15c) = 1;
  *(undefined4 *)(this + 0x160) = 0x3e99999a;
  *(undefined4 *)(this + 0x164) = 0;
  this[0x168] = (FLAME)0x0;
  *(undefined4 *)(this + 0x16c) = 0;
  return this;
}

// ---- FLAME::~FLAME  @ 0x32ebd8
/* WARNING: Removing unreachable block (ram,0x0032ec26) */
/* FLAME::~FLAME() */

FLAME * __thiscall FLAME::~FLAME(FLAME *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00910f30;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  FUN_007c5914(this + 0x104);
  FUN_007c5914(this + 0x100);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- FLAME::~FLAME  @ 0x32ec40
/* FLAME::~FLAME() */

FLAME * __thiscall FLAME::~FLAME(FLAME *this)

{
  ~FLAME(this);
  operator_delete(this);
  return this;
}

// ---- FLAME::setFrame  @ 0x32ec5c
/* FLAME::setFrame(int) */

void __thiscall FLAME::setFrame(FLAME *this,int param_1)

{
  CCSpriteFrameCache *pCVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  
  if (param_1 == 1) {
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x214);
    uVar4 = *(undefined4 *)(this + 0xe4);
    pCVar1 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
    uVar2 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar1,"flame2.png");
    (*pcVar3)(uVar4,uVar2);
  }
  else {
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x214);
    uVar4 = *(undefined4 *)(this + 0xe4);
    pCVar1 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
    uVar2 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar1,"flame1.png");
    (*pcVar3)(uVar4,uVar2);
  }
  return;
}

// ---- FLAME::checkCollision  @ 0x32ecd8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032ed9a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAME::checkCollision(float) */

float FLAME::checkCollision(float param_1)

{
  int *piVar1;
  FLAME *in_r0;
  int iVar2;
  float *pfVar3;
  int iVar4;
  undefined4 uVar5;
  CCObject *pCVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  CCNotificationCenter *this;
  undefined4 extraout_r1;
  undefined4 extraout_r1_00;
  bool bVar9;
  code *pcVar10;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar11;
  string asStack_a8 [4];
  string asStack_a4 [4];
  CCDictElement *local_a0;
  CCDictElement *local_9c;
  float local_98;
  int local_94;
  float local_90;
  int *local_8c;
  float local_88;
  CCObject *local_84;
  undefined4 local_80;
  undefined4 uStack_7c;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined1 local_70 [16];
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 local_38;
  undefined4 uStack_34;
  
  if (in_r0[0x170] == (FLAME)0x0) {
    (**(code **)(*hostSoldier + 0x1c0))(&local_40,hostSoldier);
    iVar2 = FUN_007c567c(in_r0 + 0x104,&local_40);
    FUN_007c5914(&local_40);
    local_98 = (float)(**(code **)(**(int **)(in_r0 + 0xe4) + 0x34))(*(undefined4 *)(in_r0 + 0xe4));
    local_98 = local_98 * 50.0;
    pfVar3 = (float *)(**(code **)(*(int *)in_r0 + 0x50))(in_r0);
    fVar11 = *pfVar3;
    iVar4 = (**(code **)(*(int *)in_r0 + 0x50))(in_r0);
    param_1 = (float)FUN_0032dc08(SUB84((double)fVar11,0),in_s1,
                                  SUB84((double)*(float *)(iVar4 + 4),0),&local_80);
    if (in_r0[0x168] == (FLAME)0x1) {
      if (iVar2 == 0) {
        (**(code **)(*hostSoldier + 0x1ac))(local_50,hostSoldier);
        FUN_0032dc88(local_80,in_s1,local_78,in_s3,local_50[0],in_s5,local_48,&local_40);
        uVar5 = cpvlength(local_40,uStack_3c,local_38,uStack_34);
        local_90 = (float)(double)CONCAT44(extraout_r1,uVar5);
        in_fpscr = in_fpscr & 0xfffffff | (uint)(local_90 < local_98) << 0x1f |
                   (uint)(local_90 == local_98) << 0x1e | (uint)(local_98 <= local_90) << 0x1d;
        param_1 = extraout_s0_00;
        if ((int)in_fpscr < 0) {
          in_r0[0x170] = (FLAME)0x1;
          piVar1 = hostSoldier;
          pcVar10 = *(code **)(*hostSoldier + 600);
          fVar11 = local_90 / (local_98 + 1.0);
          (**(code **)(*hostSoldier + 0x1c0))(&local_60,hostSoldier);
          (*pcVar10)(piVar1,(40.0 - fVar11 * 40.0) + 10.0,&local_60,0x13);
          param_1 = (float)FUN_007c5914(&local_60);
        }
      }
    }
    else {
      local_94 = cpSpacePointQueryFirst(space,uStack_74,local_80,uStack_7c);
      param_1 = extraout_s0;
      if (local_94 != 0) {
        *(undefined4 *)(in_r0 + 0x148) = 0;
        *(undefined4 *)(in_r0 + 0x14c) = 0;
        *(undefined4 *)(in_r0 + 0x150) = 0;
        *(undefined4 *)(in_r0 + 0x154) = 0;
        param_1 = (float)setFrame(in_r0,1);
        in_r0[0x168] = (FLAME)0x1;
      }
    }
    if (iVar2 == 0) {
      local_a0 = (CCDictElement *)0x0;
      local_9c = (CCDictElement *)0x0;
      if ((peerSoldiers == (CCDictionary *)0x0) ||
         (iVar2 = cocos2d::CCDictionary::count(peerSoldiers), param_1 = extraout_s0_01, iVar2 == 0))
      {
        bVar9 = false;
      }
      else {
        bVar9 = true;
      }
      if (bVar9) {
        local_a0 = *(CCDictElement **)(peerSoldiers + 0x14);
        if (*(int *)(peerSoldiers + 0x14) == 0) {
          local_9c = (CCDictElement *)0x0;
        }
        else {
          local_9c = *(CCDictElement **)(*(int *)(peerSoldiers + 0x14) + 0x110);
        }
        while (local_a0 != (CCDictElement *)0x0) {
          local_8c = (int *)cocos2d::CCDictElement::getObject(local_a0);
          pfVar3 = (float *)(**(code **)(*(int *)in_r0 + 0x50))(in_r0);
          fVar11 = *pfVar3;
          iVar2 = (**(code **)(*(int *)in_r0 + 0x50))(in_r0);
          FUN_0032dc08(SUB84((double)fVar11,0),in_s1,SUB84((double)*(float *)(iVar2 + 4),0),local_70
                      );
          (**(code **)(*local_8c + 0x1ac))(&local_40,local_8c);
          FUN_0032dc88((int)local_70._0_8_,in_s1,(int)local_70._8_8_,in_s3,local_40,in_s5,local_38,
                       &local_60);
          uVar5 = cpvlength(local_60,uStack_5c,local_58,uStack_54);
          local_88 = (float)(double)CONCAT44(extraout_r1_00,uVar5);
          in_fpscr = in_fpscr & 0xfffffff | (uint)(local_88 < local_98) << 0x1f |
                     (uint)(local_88 == local_98) << 0x1e | (uint)(local_98 <= local_88) << 0x1d;
          param_1 = extraout_s0_02;
          if ((int)in_fpscr < 0) {
            in_r0[0x170] = (FLAME)0x1;
            pCVar6 = (CCObject *)cocos2d::CCFloat::create(extraout_s0_02);
            uVar5 = cocos2d::CCFloat::create(extraout_s0_03);
            uVar7 = cocos2d::CCFloat::create(extraout_s0_04);
            uVar8 = cocos2d::CCFloat::create(extraout_s0_05);
            cocos2d::CCInteger::create(0x13);
            cocos2d::CCInteger::create((int)((40.0 - (local_88 / (local_98 + 1.0)) * 40.0) + 10.0));
            cocos2d::CCInteger::create(0);
            cocos2d::CCInteger::create(0);
            (**(code **)(*local_8c + 0x1c0))(asStack_a8,local_8c);
            cocos2d::CCString::create(asStack_a8);
            (**(code **)(*hostSoldier + 0x1c0))(asStack_a4,hostSoldier);
            cocos2d::CCString::create(asStack_a4);
            local_84 = (CCObject *)cocos2d::CCArray::create(pCVar6,uVar5,uVar7,uVar8);
            FUN_007c5914(asStack_a4);
            FUN_007c5914(asStack_a8);
            this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter()
            ;
            param_1 = (float)cocos2d::CCNotificationCenter::postNotification
                                       (this,"PlayerDamaged",local_84);
          }
          local_a0 = local_9c;
          if (local_9c == (CCDictElement *)0x0) {
            local_9c = (CCDictElement *)0x0;
          }
          else {
            local_9c = *(CCDictElement **)(local_9c + 0x110);
          }
        }
      }
    }
  }
  return param_1;
}

// ---- FLAME::updateStep  @ 0x32f1c0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032f22a */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAME::updateStep(float) */

void FLAME::updateStep(float param_1)

{
  FLAME *in_r0;
  float *pfVar1;
  int iVar2;
  undefined4 uVar3;
  float in_r1;
  uint uVar4;
  code *pcVar5;
  uint in_fpscr;
  uint uVar6;
  byte bVar7;
  float extraout_s0;
  undefined4 in_s1;
  float extraout_s1;
  float fVar8;
  float fVar9;
  CCPoint aCStack_50 [8];
  undefined1 auStack_48 [8];
  undefined1 auStack_40 [8];
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined1 local_28 [16];
  
  (**(code **)(*(int *)in_r0 + 0x90))(param_1,in_r0,in_r0[0xe8]);
  if (in_r0[0xe8] != (FLAME)0x0) {
    pfVar1 = (float *)(**(code **)(*(int *)in_r0 + 0x50))(in_r0);
    fVar8 = *pfVar1;
    iVar2 = (**(code **)(*(int *)in_r0 + 0x50))(in_r0);
    FUN_0032dc08(SUB84((double)fVar8,0),in_s1,SUB84((double)*(float *)(iVar2 + 4),0),&local_38);
    pcVar5 = *(code **)(*(int *)in_r0 + 0x90);
    FUN_0032dc08(0,in_s1,0,local_28);
    uVar3 = FUN_0032e020(local_38,uStack_34,uStack_30,uStack_2c);
    (*pcVar5)(in_r0,uVar3);
    *(float *)(in_r0 + 0x158) = *(float *)(in_r0 + 0x158) + in_r1;
    *(float *)(in_r0 + 0x164) = *(float *)(in_r0 + 0x164) + in_r1;
    *(undefined4 *)(in_r0 + 0x120) = local_38;
    *(undefined4 *)(in_r0 + 0x124) = uStack_34;
    *(undefined4 *)(in_r0 + 0x128) = uStack_30;
    *(undefined4 *)(in_r0 + 300) = uStack_2c;
    fVar8 = *(float *)(in_r0 + 0x164);
    uVar4 = in_fpscr & 0xfffffff | (uint)(fVar8 < 0.05) << 0x1f | (uint)(fVar8 == 0.05) << 0x1e;
    uVar6 = uVar4 | (uint)NAN(fVar8) << 0x1c;
    bVar7 = (byte)(uVar4 >> 0x18);
    if (!(bool)(bVar7 >> 6 & 1) && bVar7 >> 7 == ((byte)(uVar6 >> 0x1c) & 1)) {
      *(undefined4 *)(in_r0 + 0x164) = 0;
      *(int *)(in_r0 + 0x15c) = -*(int *)(in_r0 + 0x15c);
    }
    (**(code **)(**(int **)(in_r0 + 0xe4) + 0x40))
              (*(undefined4 *)(in_r0 + 0xe4),*(float *)(in_r0 + 0x158) / *(float *)(in_r0 + 0x160));
    pcVar5 = *(code **)(**(int **)(in_r0 + 0xe4) + 0x38);
    uVar3 = *(undefined4 *)(in_r0 + 0xe4);
    fVar9 = (float)VectorSignedToFloat(*(undefined4 *)(in_r0 + 0x15c),(byte)(uVar6 >> 0x16) & 3);
    fVar8 = (float)(**(code **)(**(int **)(in_r0 + 0xe4) + 0x3c))(*(undefined4 *)(in_r0 + 0xe4));
    bVar7 = (byte)(uVar6 >> 0x18);
    (*pcVar5)(uVar3,fVar9 * fVar8);
    fVar8 = *(float *)(in_r0 + 0x160) - *(float *)(in_r0 + 0x158);
    if (*(float *)(in_r0 + 0x158) <= *(float *)(in_r0 + 0x160)) {
      if ((char)(bVar7 & 0xf | (byte)(((uint)(fVar8 < 0.05) << 0x1f) >> 0x18) |
                 (byte)(((uint)(fVar8 == 0.05) << 0x1e) >> 0x18) |
                (byte)(((uint)(0.05 <= fVar8) << 0x1d) >> 0x18)) < '\0') {
        if ((fVar8 / 0.05) * 255.0 <= 0.0) {
          uVar4 = 0;
        }
        else {
          fVar8 = (fVar8 / 0.05) * 255.0;
          uVar4 = (uint)(0.0 < fVar8) * (int)(longlong)fVar8 & 0xff;
        }
        (**(code **)(**(int **)(in_r0 + 0xe4) + 0x1a4))(*(undefined4 *)(in_r0 + 0xe4),uVar4);
      }
    }
    else {
      setActive(in_r0,false);
    }
    pcVar5 = *(code **)(*(int *)in_r0 + 0x4c);
    uVar3 = (**(code **)(*(int *)in_r0 + 0x50))(in_r0);
    cocos2d::CCPoint::CCPoint(aCStack_50,extraout_s0,extraout_s1);
    FUN_0032dbe8(in_r1,auStack_48,aCStack_50);
    FUN_0032dbc8(auStack_40,uVar3,auStack_48);
    fVar8 = (float)(*pcVar5)(in_r0,auStack_40);
    checkCollision(fVar8);
  }
  return;
}

// ---- FLAME::reset  @ 0x32f470
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0032f556 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* FLAME::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string) */

void FLAME::reset(FLAME *param_1,int param_2,int param_3,int param_4)

{
  FLAME *pFVar1;
  float *pfVar2;
  int iVar3;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  code *pcVar4;
  uint in_fpscr;
  undefined8 in_d0;
  float extraout_s1;
  double __x;
  undefined4 uVar5;
  undefined4 in_s3;
  undefined4 in_s5;
  float fVar7;
  undefined8 uVar6;
  undefined4 in_stack_00000010;
  undefined4 in_stack_00000018;
  float in_stack_00000020;
  undefined4 in_stack_00000024;
  int in_stack_00000028;
  int in_stack_0000002c;
  int in_stack_00000030;
  int in_stack_00000034;
  undefined4 in_stack_00000038;
  int local_70;
  int iStack_6c;
  int iStack_68;
  int iStack_64;
  int local_60;
  int local_5c;
  int local_58;
  FLAME *local_54;
  float local_4c;
  undefined4 local_48 [2];
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  *(undefined4 *)(param_1 + 0x158) = 0;
  local_60 = param_4;
  local_5c = param_3;
  local_58 = param_2;
  local_54 = param_1;
  (**(code **)(**(int **)(param_1 + 0xe4) + 0x40))(*(undefined4 *)(param_1 + 0xe4),0);
  *(undefined4 *)(local_54 + 0x148) = 0;
  *(undefined4 *)(local_54 + 0x14c) = 0;
  *(undefined4 *)(local_54 + 0x150) = 0;
  *(undefined4 *)(local_54 + 0x154) = 0;
  local_54[0x168] = (FLAME)0x0;
  setFrame(local_54,0);
  pFVar1 = local_54;
  extraout_s1 = (float)((ulonglong)in_d0 >> 0x20);
  local_54[0x170] = (FLAME)0x0;
  *(int *)(local_54 + 0x120) = in_stack_00000028;
  *(int *)(local_54 + 0x124) = in_stack_0000002c;
  *(int *)(local_54 + 0x128) = in_stack_00000030;
  *(int *)(local_54 + 300) = in_stack_00000034;
  pcVar4 = *(code **)(*(int *)local_54 + 0x4c);
  cocos2d::CCPoint::CCPoint((CCPoint *)local_28,(float)in_d0,extraout_s1);
  (*pcVar4)(pFVar1,local_28);
  pfVar2 = (float *)(**(code **)(*(int *)local_54 + 0x50))(local_54);
  fVar7 = *pfVar2;
  iVar3 = (**(code **)(*(int *)local_54 + 0x50))(local_54);
  pFVar1 = local_54;
  FUN_0032dc08(SUB84((double)fVar7,0),extraout_s1,SUB84((double)*(float *)(iVar3 + 4),0),&local_70);
  *(int *)(pFVar1 + 0x130) = local_70;
  *(int *)(pFVar1 + 0x134) = iStack_6c;
  *(int *)(pFVar1 + 0x138) = iStack_68;
  *(int *)(pFVar1 + 0x13c) = iStack_64;
  FUN_007c5e70(local_54 + 0x100,&DAT_007d751c);
  thunk_FUN_007c653c(local_54 + 0x104,in_stack_00000038);
  *(int *)(local_54 + 0x178) = local_58;
  (**(code **)(**(int **)(local_54 + 0xe4) + 0x1a4))(*(int *)(local_54 + 0xe4),0xff);
  local_54[0xe8] = (FLAME)0x1;
  (**(code **)(*(int *)local_54 + 0x90))(local_54,1);
  (**(code **)(**(int **)(local_54 + 0xe4) + 0x98))(*(int *)(local_54 + 0xe4),in_stack_00000020);
  *(int *)(local_54 + 0x17c) = local_60;
  *(int *)(local_54 + 0x140) = local_5c;
  *(int *)(local_54 + 0x180) = 0;
  local_4c = -in_stack_00000020 * 0.017453292;
  __x = cos((double)CONCAT44(extraout_s1,SUB84((double)fVar7,0)));
  sin(__x);
  uVar5 = (undefined4)((ulonglong)__x >> 0x20);
  FUN_0032dc08(extraout_r0,uVar5,extraout_r0_00,local_48);
  uVar6 = VectorSignedToFloat(in_stack_00000024,(byte)(in_fpscr >> 0x16) & 3);
  FUN_0032dce0(local_48[0],uVar5,local_40,in_s3,(int)uVar6,local_38);
  FUN_0032dce0(in_stack_00000010,uVar5,in_stack_00000018,in_s3,0x9999999a,local_28);
  pFVar1 = local_54;
  FUN_0032dc30(local_38[0],uVar5,local_30,in_s3,local_28[0],in_s5,local_20,&local_70);
  *(int *)(pFVar1 + 0x148) = local_70;
  *(int *)(pFVar1 + 0x14c) = iStack_6c;
  *(int *)(pFVar1 + 0x150) = iStack_68;
  *(int *)(pFVar1 + 0x154) = iStack_64;
  return;
}

// ---- FLAME::setActive  @ 0x32f6d0
/* FLAME::setActive(bool) */

void __thiscall FLAME::setActive(FLAME *this,bool param_1)

{
  this[0xe8] = (FLAME)param_1;
  return;
}
