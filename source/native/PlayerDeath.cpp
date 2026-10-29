// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 16 functions

// ---- PlayerDeath::getBlood  @ 0x323cec
/* PlayerDeath::getBlood() */

PlayerDeath __thiscall PlayerDeath::getBlood(PlayerDeath *this)

{
  return this[0x2e];
}

// ---- PlayerDeath::setBlood  @ 0x323cfc
/* PlayerDeath::setBlood(bool) */

void __thiscall PlayerDeath::setBlood(PlayerDeath *this,bool param_1)

{
  this[0x2e] = (PlayerDeath)param_1;
  return;
}

// ---- PlayerDeath::PlayerDeath  @ 0x3a5f40
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a5f82 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerDeath::PlayerDeath() */

PlayerDeath * __thiscall PlayerDeath::PlayerDeath(PlayerDeath *this)

{
  PlayerDeath *pPVar1;
  CCArray *this_00;
  undefined4 in_s1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  PlayerDeath *local_c;
  
  local_c = this;
  cocos2d::CCObject::CCObject((CCObject *)this);
  pPVar1 = local_c;
  *(undefined ***)local_c = &PTR_copyWithZone_1_00916cf8;
  local_c[0x2c] = (PlayerDeath)0x0;
  local_c[0x2d] = (PlayerDeath)0x0;
  *(undefined4 *)(local_c + 0x34) = 0x3f800000;
  FUN_003a4e50(0,in_s1,0,&local_20);
  *(undefined4 *)(pPVar1 + 0x38) = local_20;
  *(undefined4 *)(pPVar1 + 0x3c) = uStack_1c;
  *(undefined4 *)(pPVar1 + 0x40) = uStack_18;
  *(undefined4 *)(pPVar1 + 0x44) = uStack_14;
  this_00 = operator_new(0x18);
  cocos2d::CCArray::CCArray(this_00);
  *(CCArray **)(local_c + 0x48) = this_00;
  *(undefined4 *)(local_c + 0x30) = 0x40a00000;
  local_c[0x2e] = (PlayerDeath)0x1;
  *(undefined4 *)(local_c + 0x14) = 0;
  *(undefined4 *)(local_c + 0x1c) = 0;
  *(undefined4 *)(local_c + 0x20) = 0;
  *(undefined4 *)(local_c + 0x18) = 0;
  *(undefined4 *)(local_c + 0x24) = 0;
  *(undefined4 *)(local_c + 0x28) = 0;
  return local_c;
}

// ---- PlayerDeath::~PlayerDeath  @ 0x3a6010
/* WARNING: Removing unreachable block (ram,0x003a60a8) */
/* PlayerDeath::~PlayerDeath() */

PlayerDeath * __thiscall PlayerDeath::~PlayerDeath(PlayerDeath *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00916cf8;
  if (*(int *)(this + 0x14) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x14));
  }
  if (*(int *)(this + 0x1c) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x1c));
  }
  if (*(int *)(this + 0x20) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x20));
  }
  if (*(int *)(this + 0x18) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x18));
  }
  if (*(int *)(this + 0x24) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x24));
  }
  if (*(int *)(this + 0x28) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x28));
  }
  cocos2d::CCObject::release(*(CCObject **)(this + 0x48));
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- PlayerDeath::~PlayerDeath  @ 0x3a60c0
/* PlayerDeath::~PlayerDeath() */

PlayerDeath * __thiscall PlayerDeath::~PlayerDeath(PlayerDeath *this)

{
  ~PlayerDeath(this);
  operator_delete(this);
  return this;
}

// ---- PlayerDeath::addBodyShape  @ 0x3a60e0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a6214 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerDeath::addBodyShape(cocos2d::CCSprite*, cpVect) */

void PlayerDeath::addBodyShape
               (undefined4 param_1_00,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6,int param_1,int *param_8,undefined4 param_9,
               undefined4 param_10,undefined4 param_11)

{
  undefined4 *puVar1;
  BodyShape *this;
  float *pfVar2;
  int iVar3;
  undefined4 uVar4;
  uint in_fpscr;
  float fVar5;
  float fVar6;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  int *local_48;
  int local_44;
  undefined4 *local_3c;
  int local_38;
  CCObject *local_34;
  undefined4 local_30 [2];
  undefined4 local_28;
  
  local_48 = param_8;
  local_44 = param_1;
  local_3c = (undefined4 *)cpBodyNew(0,0x40000000,0,0x40200000);
  *local_3c = 0x3a5dad;
  local_3c[0x24] = local_44;
  local_3c[0x22] = 0;
  local_3c[0x23] = 0x40240000;
  local_38 = cpCircleShapeNew(local_3c,0,0,0x40100000);
  *(undefined4 *)(local_38 + 0x54) = 2;
  *(undefined4 *)(local_38 + 0x5c) = 2;
  *(undefined4 *)(local_38 + 0x58) = 2;
  *(undefined4 *)(local_38 + 0x30) = 0x40000000;
  *(undefined4 *)(local_38 + 0x34) = 0x3fd33333;
  *(undefined4 *)(local_38 + 0x38) = 0x80000000;
  *(undefined4 *)(local_38 + 0x3c) = 0x3fefae14;
  *(int **)(local_38 + 0x50) = local_48;
  this = operator_new(0x1c);
  BodyShape::BodyShape(this);
  local_34 = (CCObject *)this;
  cocos2d::CCObject::autorelease((CCObject *)this);
  cocos2d::CCArray::addObject(*(CCArray **)(local_44 + 0x48),local_34);
  *(undefined4 **)(local_34 + 0x14) = local_3c;
  *(int *)(local_34 + 0x18) = local_38;
  cpSpaceAddBody(space,local_3c);
  cpSpaceAddShape(space,local_38);
  pfVar2 = (float *)(**(code **)(*local_48 + 0x50))(local_48);
  fVar6 = *pfVar2;
  iVar3 = (**(code **)(*local_48 + 0x50))(local_48);
  puVar1 = local_3c;
  FUN_003a4e50(SUB84((double)fVar6,0),param_2,SUB84((double)*(float *)(iVar3 + 4),0),&local_58);
  puVar1[10] = local_58;
  puVar1[0xb] = uStack_54;
  puVar1[0xc] = uStack_50;
  puVar1[0xd] = uStack_4c;
  uVar4 = FUN_003a4d24();
  fVar6 = (float)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  uVar4 = FUN_003a4d24();
  fVar5 = (float)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  FUN_003a4e50(SUB84((double)((fVar6 / 1.0737418e+09 - 1.0) * 25.0),0),param_2,
               SUB84((double)((fVar5 / 1.0737418e+09 - 1.0) * 25.0),0),local_30);
  puVar1 = local_3c;
  FUN_003a4e78(param_9,param_2,param_11,param_4,local_30[0],param_6,local_28,&local_58);
  puVar1[0xe] = local_58;
  puVar1[0xf] = uStack_54;
  puVar1[0x10] = uStack_50;
  puVar1[0x11] = uStack_4c;
  uVar4 = FUN_003a4d24();
  fVar6 = (float)VectorSignedToFloat(uVar4,(byte)(in_fpscr >> 0x16) & 3);
  *(double *)(local_3c + 0x18) = (double)((fVar6 / 1.0737418e+09 - 1.0) * 5.0);
  return;
}

// ---- PlayerDeath::addToSpace  @ 0x3a6330
/* PlayerDeath::addToSpace(cpVect) */

void PlayerDeath::addToSpace
               (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
               undefined4 param_5,undefined4 param_6)

{
  if (*(int *)(param_1 + 0x14) != 0) {
    addBodyShape(param_1,*(undefined4 *)(param_1 + 0x14),param_3,param_4,param_5,param_6);
  }
  if (*(int *)(param_1 + 0x1c) != 0) {
    addBodyShape(param_1,*(undefined4 *)(param_1 + 0x1c),param_3,param_4,param_5,param_6);
  }
  if (*(int *)(param_1 + 0x20) != 0) {
    addBodyShape(param_1,*(undefined4 *)(param_1 + 0x20),param_3,param_4,param_5,param_6);
  }
  if (*(int *)(param_1 + 0x18) != 0) {
    addBodyShape(param_1,*(undefined4 *)(param_1 + 0x18),param_3,param_4,param_5,param_6);
  }
  if (*(int *)(param_1 + 0x24) != 0) {
    addBodyShape(param_1,*(undefined4 *)(param_1 + 0x24),param_3,param_4,param_5,param_6);
  }
  if (*(int *)(param_1 + 0x28) != 0) {
    addBodyShape(param_1,*(undefined4 *)(param_1 + 0x28),param_3,param_4,param_5,param_6);
  }
  *(undefined1 *)(param_1 + 0x2d) = 1;
  return;
}

// ---- PlayerDeath::removeFromSpace  @ 0x3a6434
/* PlayerDeath::removeFromSpace() */

void __thiscall PlayerDeath::removeFromSpace(PlayerDeath *this)

{
  int iVar1;
  uint uVar2;
  uint local_18;
  
  this[0x2d] = (PlayerDeath)0x0;
  for (local_18 = 0; uVar2 = cocos2d::CCArray::count(*(CCArray **)(this + 0x48)), local_18 < uVar2;
      local_18 = local_18 + 1) {
    iVar1 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x48),local_18);
    cpSpaceRemoveShape(space,*(undefined4 *)(iVar1 + 0x18));
    cpSpaceRemoveBody(space,*(undefined4 *)(iVar1 + 0x14));
    cpShapeFree(*(undefined4 *)(iVar1 + 0x18));
    cpBodyFree(*(undefined4 *)(iVar1 + 0x14));
    *(undefined4 *)(iVar1 + 0x18) = 0;
    *(undefined4 *)(iVar1 + 0x14) = 0;
  }
  cocos2d::CCArray::removeAllObjects(*(CCArray **)(this + 0x48));
  return;
}

// ---- PlayerDeath::addToWorld  @ 0x3a64e0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a6518 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlayerDeath::addToWorld() */

void PlayerDeath::addToWorld(void)

{
  int in_r0;
  undefined4 in_s1;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  int local_14;
  
  if (*(char *)(in_r0 + 0x2c) == '\0') {
    local_14 = in_r0;
    FUN_003a4e50(0,in_s1,SUB84((double)(gravityFactor * -300.0),0),&local_28);
    *(undefined4 *)(in_r0 + 0x38) = local_28;
    *(undefined4 *)(in_r0 + 0x3c) = uStack_24;
    *(undefined4 *)(in_r0 + 0x40) = uStack_20;
    *(undefined4 *)(in_r0 + 0x44) = uStack_1c;
    if (*(int *)(local_14 + 0x24) != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_14 + 0x24),3);
    }
    if (*(int *)(local_14 + 0x28) != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_14 + 0x28),3);
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_14 + 0x20),3);
    }
    if (*(int *)(local_14 + 0x18) != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_14 + 0x18),3);
    }
    if (*(int *)(local_14 + 0x14) != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_14 + 0x14),3);
    }
    if (*(int *)(local_14 + 0x1c) != 0) {
      (**(code **)(*worldLayer + 0xcc))(worldLayer,*(undefined4 *)(local_14 + 0x1c),3);
    }
    *(undefined1 *)(local_14 + 0x2c) = 1;
  }
  return;
}

// ---- PlayerDeath::removeFromWorld  @ 0x3a6640
/* PlayerDeath::removeFromWorld() */

void __thiscall PlayerDeath::removeFromWorld(PlayerDeath *this)

{
  this[0x2c] = (PlayerDeath)0x0;
  if (*(int *)(this + 0x14) != 0) {
    (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x14),0);
  }
  if (*(int *)(this + 0x1c) != 0) {
    (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x1c),0);
  }
  if (*(int *)(this + 0x20) != 0) {
    (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x20),0);
  }
  if (*(int *)(this + 0x18) != 0) {
    (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x18),0);
  }
  if (*(int *)(this + 0x24) != 0) {
    (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x24),0);
  }
  if (*(int *)(this + 0x28) != 0) {
    (**(code **)(*worldLayer + 0xf4))(worldLayer,*(undefined4 *)(this + 0x28),0);
  }
  removeFromSpace(this);
  return;
}

// ---- PlayerDeath::matchNode  @ 0x3a6754
/* PlayerDeath::matchNode(cocos2d::CCSprite*, cocos2d::CCSprite*, bool) */

void __thiscall
PlayerDeath::matchNode(PlayerDeath *this,CCSprite *param_1,CCSprite *param_2,bool param_3)

{
  CCRect *pCVar1;
  uint uVar2;
  float fVar3;
  code *pcVar4;
  undefined8 uVar5;
  cocos2d acStack_50 [8];
  CCPoint aCStack_48 [8];
  CCPoint aCStack_40 [8];
  CCRect aCStack_38 [16];
  CCAffineTransform aCStack_28 [28];
  
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(param_2);
  cocos2d::CCRect::CCRect(aCStack_38,pCVar1);
  uVar5 = (**(code **)(*(int *)param_1 + 0x208))(param_1,aCStack_38);
  cocos2d::CCPoint::CCPoint(aCStack_40,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
  (**(code **)(*(int *)param_2 + 0x184))(aCStack_28,param_2);
  cocos2d::__CCPointApplyAffineTransform(acStack_50,aCStack_40,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)aCStack_40,acStack_50,aCStack_28);
  cocos2d::CCPoint::operator=((CCPoint *)acStack_50,aCStack_40);
  pCVar1 = (CCRect *)cocos2d::CCSprite::getTextureRect(param_1);
  cocos2d::CCRect::CCRect((CCRect *)aCStack_28,pCVar1);
  uVar5 = (**(code **)(*(int *)param_1 + 0x40))(param_1,playerScale);
  pcVar4 = *(code **)(*(int *)param_1 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_48,(float)uVar5,(float)((ulonglong)uVar5 >> 0x20));
  FUN_003a4d8c(aCStack_40,acStack_50,aCStack_48);
  (*pcVar4)(param_1,aCStack_40);
  fVar3 = playerScale;
  if (!param_3) {
    fVar3 = -playerScale;
  }
  (**(code **)(*(int *)param_1 + 0x30))(param_1,fVar3);
  pcVar4 = *(code **)(*(int *)param_1 + 0x98);
  if (param_3) {
    uVar2 = (**(code **)(*(int *)param_2 + 0x9c))(param_2);
  }
  else {
    uVar2 = (**(code **)(*(int *)param_2 + 0x9c))(param_2);
    uVar2 = uVar2 ^ 0x80000000;
  }
  (*pcVar4)(param_1,uVar2);
  return;
}

// ---- PlayerDeath::matchTextureNode  @ 0x3a68e0
/* PlayerDeath::matchTextureNode(cocos2d::CCSprite*, bool) */

CCSprite * __thiscall
PlayerDeath::matchTextureNode(PlayerDeath *this,CCSprite *param_1,bool param_2)

{
  CCTexture2D *pCVar1;
  CCSprite *this_00;
  CCRect *pCVar2;
  uint uVar3;
  float fVar4;
  code *pcVar5;
  float extraout_s0;
  float extraout_s1;
  undefined8 uVar6;
  cocos2d acStack_40 [8];
  CCPoint aCStack_38 [8];
  CCPoint aCStack_30 [8];
  CCAffineTransform aCStack_28 [28];
  
  pCVar1 = (CCTexture2D *)(**(code **)(*(int *)param_1 + 500))(param_1);
  this_00 = (CCSprite *)cocos2d::CCSprite::createWithTexture(pCVar1);
  cocos2d::CCPoint::CCPoint(aCStack_30,extraout_s0,extraout_s1);
  (**(code **)(*(int *)param_1 + 0x184))(aCStack_28,param_1);
  cocos2d::__CCPointApplyAffineTransform(acStack_40,aCStack_30,aCStack_28);
  (**(code **)(*worldLayer + 0x188))(aCStack_28,worldLayer);
  cocos2d::__CCPointApplyAffineTransform((cocos2d *)aCStack_30,acStack_40,aCStack_28);
  cocos2d::CCPoint::operator=((CCPoint *)acStack_40,aCStack_30);
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(this_00);
  cocos2d::CCRect::CCRect((CCRect *)aCStack_28,pCVar2);
  uVar6 = (**(code **)(*(int *)this_00 + 0x40))(this_00,playerScale);
  pcVar5 = *(code **)(*(int *)this_00 + 0x4c);
  cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  FUN_003a4d8c(aCStack_30,acStack_40,aCStack_38);
  (*pcVar5)(this_00,aCStack_30);
  fVar4 = playerScale;
  if (!param_2) {
    fVar4 = -playerScale;
  }
  (**(code **)(*(int *)this_00 + 0x30))(this_00,fVar4);
  pcVar5 = *(code **)(*(int *)this_00 + 0x98);
  if (param_2) {
    uVar3 = (**(code **)(*(int *)param_1 + 0x9c))(param_1);
  }
  else {
    uVar3 = (**(code **)(*(int *)param_1 + 0x9c))(param_1);
    uVar3 = uVar3 ^ 0x80000000;
  }
  (*pcVar5)(this_00,uVar3);
  return this_00;
}

// ---- PlayerDeath::reset  @ 0x3a6a64
/* PlayerDeath::reset(SoldierView*, cpVect, cpVect) */

void PlayerDeath::reset(PlayerDeath *param_1,SoldierView *param_2)

{
  bool bVar1;
  undefined4 uVar2;
  CCSprite *pCVar3;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined4 in_stack_00000010;
  undefined4 in_stack_00000014;
  
  if (param_1[0x2c] == (PlayerDeath)0x0) {
    if (*(int *)(param_1 + 0x14) != 0) {
      (**(code **)(**(int **)(param_1 + 0x14) + 0x1a4))(*(undefined4 *)(param_1 + 0x14),0xff);
    }
    if (*(int *)(param_1 + 0x1c) != 0) {
      (**(code **)(**(int **)(param_1 + 0x1c) + 0x1a4))(*(undefined4 *)(param_1 + 0x1c),0xff);
    }
    if (*(int *)(param_1 + 0x20) != 0) {
      (**(code **)(**(int **)(param_1 + 0x20) + 0x1a4))(*(undefined4 *)(param_1 + 0x20),0xff);
    }
    if (*(int *)(param_1 + 0x18) != 0) {
      (**(code **)(**(int **)(param_1 + 0x18) + 0x1a4))(*(undefined4 *)(param_1 + 0x18),0xff);
    }
    if (*(int *)(param_1 + 0x24) != 0) {
      (**(code **)(**(int **)(param_1 + 0x24) + 0x1a4))(*(undefined4 *)(param_1 + 0x24),0xff);
    }
    if (*(int *)(param_1 + 0x28) != 0) {
      (**(code **)(**(int **)(param_1 + 0x28) + 0x1a4))(*(undefined4 *)(param_1 + 0x28),0xff);
    }
    *(undefined4 *)(param_1 + 0x30) = 0;
    if (*(int *)(param_1 + 0x14) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(param_1 + 0x14));
    }
    if (*(int *)(param_1 + 0x1c) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(param_1 + 0x1c));
    }
    if (*(int *)(param_1 + 0x20) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(param_1 + 0x20));
    }
    if (*(int *)(param_1 + 0x18) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(param_1 + 0x18));
    }
    if (*(int *)(param_1 + 0x24) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(param_1 + 0x24));
    }
    if (*(int *)(param_1 + 0x28) != 0) {
      cocos2d::CCObject::release(*(CCObject **)(param_1 + 0x28));
    }
    pCVar3 = *(CCSprite **)(param_2 + 0xf0);
    bVar1 = (bool)SoldierView::isRight(param_2);
    uVar2 = matchTextureNode(param_1,pCVar3,bVar1);
    *(undefined4 *)(param_1 + 0x14) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(param_1 + 0x14));
    pCVar3 = *(CCSprite **)(param_2 + 0xfc);
    bVar1 = (bool)SoldierView::isRight(param_2);
    uVar2 = matchTextureNode(param_1,pCVar3,bVar1);
    *(undefined4 *)(param_1 + 0x1c) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(param_1 + 0x1c));
    pCVar3 = *(CCSprite **)(param_2 + 0xf8);
    bVar1 = (bool)SoldierView::isRight(param_2);
    uVar2 = matchTextureNode(param_1,pCVar3,bVar1);
    *(undefined4 *)(param_1 + 0x20) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(param_1 + 0x20));
    pCVar3 = *(CCSprite **)(param_2 + 0xf4);
    bVar1 = (bool)SoldierView::isRight(param_2);
    uVar2 = matchTextureNode(param_1,pCVar3,bVar1);
    *(undefined4 *)(param_1 + 0x18) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(param_1 + 0x18));
    pCVar3 = *(CCSprite **)(param_2 + 0x104);
    bVar1 = (bool)SoldierView::isRight(param_2);
    uVar2 = matchTextureNode(param_1,pCVar3,bVar1);
    *(undefined4 *)(param_1 + 0x24) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(param_1 + 0x24));
    pCVar3 = *(CCSprite **)(param_2 + 0x100);
    bVar1 = (bool)SoldierView::isRight(param_2);
    uVar2 = matchTextureNode(param_1,pCVar3,bVar1);
    *(undefined4 *)(param_1 + 0x28) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(param_1 + 0x28));
    addToWorld();
    addToSpace(param_1,in_stack_00000014,in_stack_00000008,in_stack_0000000c,in_stack_00000010,
               in_stack_00000014);
  }
  return;
}

// ---- PlayerDeath::updateStep  @ 0x3a6cc0
/* PlayerDeath::updateStep(float) */

void __thiscall PlayerDeath::updateStep(PlayerDeath *this,float param_1)

{
  float in_r1;
  float fVar1;
  
  *(float *)(this + 0x30) = *(float *)(this + 0x30) + in_r1;
  if ((*(float *)(this + 0x30) <= 3.0) || (this[0x2d] == (PlayerDeath)0x0)) {
    if (2.0 < *(float *)(this + 0x30)) {
      fVar1 = 255.0 - (*(float *)(this + 0x30) - 2.0) * 255.0;
      if (*(int *)(this + 0x14) != 0) {
        param_1 = (float)(**(code **)(**(int **)(this + 0x14) + 0x1a4))
                                   (*(undefined4 *)(this + 0x14),
                                    (uint)(0.0 < fVar1) * (int)fVar1 & 0xff);
      }
      if (*(int *)(this + 0x1c) != 0) {
        (**(code **)(**(int **)(this + 0x1c) + 0x1a4))
                  (param_1,*(undefined4 *)(this + 0x1c),(uint)(0.0 < fVar1) * (int)fVar1 & 0xff);
      }
      if (*(int *)(this + 0x20) != 0) {
        (**(code **)(**(int **)(this + 0x20) + 0x1a4))
                  (*(undefined4 *)(this + 0x20),(uint)(0.0 < fVar1) * (int)fVar1 & 0xff);
      }
      if (*(int *)(this + 0x18) != 0) {
        (**(code **)(**(int **)(this + 0x18) + 0x1a4))
                  (*(undefined4 *)(this + 0x18),(uint)(0.0 < fVar1) * (int)fVar1 & 0xff);
      }
      if (*(int *)(this + 0x24) != 0) {
        (**(code **)(**(int **)(this + 0x24) + 0x1a4))
                  (*(undefined4 *)(this + 0x24),(uint)(0.0 < fVar1) * (int)fVar1 & 0xff);
      }
      if (*(int *)(this + 0x28) != 0) {
        (**(code **)(**(int **)(this + 0x28) + 0x1a4))
                  (*(undefined4 *)(this + 0x28),(uint)(0.0 < fVar1) * (int)fVar1 & 0xff);
      }
    }
  }
  else {
    removeFromWorld(this);
  }
  return;
}

// ---- PlayerDeath::getBodyShapes  @ 0x3a6e4c
/* PlayerDeath::getBodyShapes() */

undefined4 __thiscall PlayerDeath::getBodyShapes(PlayerDeath *this)

{
  return *(undefined4 *)(this + 0x48);
}

// ---- PlayerDeath::isInWorld  @ 0x3a6e5c
/* PlayerDeath::isInWorld() */

PlayerDeath __thiscall PlayerDeath::isInWorld(PlayerDeath *this)

{
  return this[0x2c];
}
