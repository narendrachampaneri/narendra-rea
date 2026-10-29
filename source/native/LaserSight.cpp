// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- LaserSight::LaserSight  @ 0x35fa3c
/* LaserSight::LaserSight() */

LaserSight * __thiscall LaserSight::LaserSight(LaserSight *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00913450;
  return this;
}

// ---- LaserSight::init  @ 0x35fa68
/* LaserSight::init() */

bool __thiscall LaserSight::init(LaserSight *this)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined8 uVar5;
  CCPoint local_18;
  undefined1 local_17;
  undefined1 local_16;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCSprite::createWithSpriteFrameName("bar.png");
    *(undefined4 *)(this + 0xe4) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    uVar5 = (**(code **)(**(int **)(this + 0xe4) + 0x38))(*(undefined4 *)(this + 0xe4),0x3ecccccd);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x1bc);
    uVar4 = *(undefined4 *)(this + 0xe4);
    uVar2 = FUN_0035ea5c(0xff,0,0);
    local_18 = SUB41(uVar2,0);
    local_17 = (undefined1)((uint)uVar2 >> 8);
    local_16 = (undefined1)((uint)uVar2 >> 0x10);
    uVar5 = (*pcVar3)(uVar4,&local_18);
    pcVar3 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(&local_18,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
    (*pcVar3)(uVar2,&local_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe4),2);
    *(undefined4 *)(this + 0xe8) = 500;
  }
  return cVar1 == '\x01';
}

// ---- LaserSight::~LaserSight  @ 0x35fb90
/* WARNING: Removing unreachable block (ram,0x0035fbc6) */
/* LaserSight::~LaserSight() */

LaserSight * __thiscall LaserSight::~LaserSight(LaserSight *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00913450;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- LaserSight::~LaserSight  @ 0x35fbe0
/* LaserSight::~LaserSight() */

LaserSight * __thiscall LaserSight::~LaserSight(LaserSight *this)

{
  ~LaserSight(this);
  operator_delete(this);
  return this;
}

// ---- LaserSight::updateStep  @ 0x35fbfc
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0035fc9e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* LaserSight::updateStep(float, float) */

void __thiscall LaserSight::updateStep(LaserSight *this,float param_1,float param_2)

{
  LaserSight *pLVar1;
  undefined4 extraout_r0;
  undefined4 extraout_r0_00;
  float *pfVar2;
  int iVar3;
  float in_r2;
  code *pcVar4;
  uint in_fpscr;
  double dVar5;
  float fVar6;
  undefined4 in_s3;
  undefined4 in_s5;
  undefined8 uVar7;
  float fVar8;
  undefined4 local_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  float local_bc;
  LaserSight *local_b4;
  float local_ac;
  float local_a8;
  int local_a4;
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
  
  local_a0 = 0;
  uStack_9c = 0;
  local_98 = 0;
  uStack_94 = 0;
  local_90 = 0;
  uStack_8c = 0;
  local_88 = 0;
  uStack_84 = 0;
  local_ac = (float)VectorSignedToFloat(*(undefined4 *)(this + 0xe8),(byte)(in_fpscr >> 0x16) & 3);
  local_a8 = -in_r2 * 0.017453292;
  local_bc = in_r2;
  local_b4 = this;
  dVar5 = cos((double)CONCAT44(param_2,param_1));
  sin(dVar5);
  fVar6 = (float)((ulonglong)dVar5 >> 0x20);
  FUN_0035eab8(extraout_r0,fVar6,extraout_r0_00,local_60);
  uVar7 = VectorSignedToFloat(*(undefined4 *)(local_b4 + 0xe8),(byte)(in_fpscr >> 0x16) & 3);
  FUN_0035eb90(local_60[0],fVar6,local_58,in_s3,(int)uVar7,&local_d0);
  local_a0 = local_d0;
  uStack_9c = uStack_cc;
  local_98 = uStack_c8;
  uStack_94 = uStack_c4;
  pfVar2 = (float *)(**(code **)(*(int *)local_b4 + 0x50))(local_b4);
  fVar8 = *pfVar2;
  iVar3 = (**(code **)(*(int *)local_b4 + 0x50))(local_b4);
  FUN_0035eab8(SUB84((double)fVar8,0),fVar6,SUB84((double)*(float *)(iVar3 + 4),0),&local_80);
  FUN_0035eae0(local_80,fVar6,local_78,in_s3,local_a0,in_s5,local_98,local_70);
  pLVar1 = local_b4;
  pcVar4 = *(code **)(*(int *)local_b4 + 0x4c);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_40,SUB84((double)fVar8,0),fVar6);
  (*pcVar4)(pLVar1,&local_40);
  (**(code **)(*(int *)local_b4 + 0x98))(local_b4,local_bc);
  iVar3 = cpSpacePointQueryFirst(space,uStack_74,local_80,uStack_7c);
  if (iVar3 == 0) {
    local_a4 = 0;
    local_a4 = cpSpaceSegmentQueryFirst(space,uStack_74,local_80,uStack_7c);
    if (local_a4 != 0) {
      FUN_0035ec78(local_80,fVar6,local_78,in_s3,local_70[0],in_s5,local_68,&local_d0,uStack_24,
                   local_40,uStack_3c);
      local_90 = local_d0;
      uStack_8c = uStack_cc;
      local_88 = uStack_c8;
      uStack_84 = uStack_c4;
      FUN_0035eb38(local_80,fVar6,local_78,in_s3,local_d0,in_s5,uStack_c8,&local_50);
      dVar5 = (double)cpvlength(local_50,uStack_4c,uStack_48,uStack_44);
      local_ac = (float)dVar5;
    }
  }
  else {
    local_90 = local_80;
    uStack_8c = uStack_7c;
    local_88 = local_78;
    uStack_84 = uStack_74;
    local_ac = 0.0;
  }
  (**(code **)(**(int **)(local_b4 + 0xe4) + 0x30))(*(undefined4 *)(local_b4 + 0xe4),local_ac + 3.0)
  ;
  return;
}

// ---- LaserSight::create  @ 0x40ae5c
/* LaserSight::create() */

LaserSight * LaserSight::create(void)

{
  bool bVar1;
  LaserSight *this;
  int iVar2;
  
  this = operator_new(0xec);
  LaserSight(this);
  if ((this == (LaserSight *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (LaserSight *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (LaserSight *)0x0;
  }
  return this;
}
