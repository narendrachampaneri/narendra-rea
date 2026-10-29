// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- PlasmaEnergy::PlasmaEnergy  @ 0x3a457c
/* PlasmaEnergy::PlasmaEnergy() */

PlasmaEnergy * __thiscall PlasmaEnergy::PlasmaEnergy(PlasmaEnergy *this)

{
  CCSprite *pCVar1;
  CCRect *pCVar2;
  undefined4 uVar3;
  PlasmaEnergy *this_00;
  int iVar4;
  code *pcVar5;
  undefined8 uVar6;
  CCPoint aCStack_18 [12];
  
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00916b48;
  this_00 = this + 0xfc;
  for (iVar4 = 1; iVar4 != -1; iVar4 = iVar4 + -1) {
    cocos2d::CCRect::CCRect((CCRect *)this_00);
    this_00 = this_00 + 0x10;
  }
  FUN_007c51b0(this + 0x120);
  cocos2d::CCNode::setVisible((CCNode *)this,false);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("emp1.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0xfc),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("emp2.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x10c),pCVar2);
  uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("emp1.png");
  *(undefined4 *)(this + 0xe4) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  cocos2d::CCNode::addChild((CCNode *)this,*(CCNode **)(this + 0xe4));
  uVar6 = (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),0);
  pcVar5 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0xe4);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  (*pcVar5)(uVar3,aCStack_18);
  *(undefined4 *)(this + 0xf8) = 0;
  *(undefined4 *)(this + 0xf0) = 0;
  *(undefined4 *)(this + 0xf4) = 0;
  *(undefined4 *)(this + 0xec) = 0x41200000;
  *(undefined4 *)(this + 0x11c) = 0;
  FUN_007c5e70(this + 0x120,&DAT_007e1998);
  return this;
}

// ---- PlasmaEnergy::~PlasmaEnergy  @ 0x3a4704
/* WARNING: Removing unreachable block (ram,0x003a4746) */
/* PlasmaEnergy::~PlasmaEnergy() */

PlasmaEnergy * __thiscall PlasmaEnergy::~PlasmaEnergy(PlasmaEnergy *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00916b48;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  FUN_007c5914(this + 0x120);
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- PlasmaEnergy::~PlasmaEnergy  @ 0x3a4760
/* PlasmaEnergy::~PlasmaEnergy() */

PlasmaEnergy * __thiscall PlasmaEnergy::~PlasmaEnergy(PlasmaEnergy *this)

{
  ~PlasmaEnergy(this);
  operator_delete(this);
  return this;
}

// ---- PlasmaEnergy::init  @ 0x3a477c
/* PlasmaEnergy::init() */

bool PlasmaEnergy::init(void)

{
  char cVar1;
  
  cVar1 = cocos2d::CCNode::init();
  return cVar1 == '\x01';
}

// ---- PlasmaEnergy::reset  @ 0x3a47a4
/* PlasmaEnergy::reset(std::string) */

void __thiscall PlasmaEnergy::reset(PlasmaEnergy *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  uint in_fpscr;
  float fVar4;
  
  this[0xe8] = (PlasmaEnergy)0x1;
  *(undefined4 *)(this + 0xec) = 0;
  *(undefined4 *)(this + 0xf8) = 0;
  (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f000000);
  (**(code **)(**(int **)(this + 0xe4) + 0x90))(*(undefined4 *)(this + 0xe4),1);
  pcVar2 = *(code **)(**(int **)(this + 0xe4) + 0x98);
  uVar3 = *(undefined4 *)(this + 0xe4);
  uVar1 = FUN_003a3794();
  fVar4 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  (*pcVar2)(uVar3,(fVar4 / 1.0737418e+09 - 1.0) * 180.0);
  thunk_FUN_007c653c(this + 0x120,param_2);
  return;
}

// ---- PlasmaEnergy::updateStep  @ 0x3a4858
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a4b30 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PlasmaEnergy::updateStep(float) */

void PlasmaEnergy::updateStep(float param_1)

{
  uint uVar1;
  byte bVar2;
  bool bVar3;
  char cVar4;
  int *in_r0;
  int iVar5;
  SoldierView *this;
  undefined4 uVar6;
  float *pfVar7;
  float in_r1;
  code *pcVar8;
  uint in_fpscr;
  uint uVar9;
  float in_s1;
  float extraout_s1;
  float fVar10;
  int *local_4c;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined4 local_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined1 local_28 [16];
  
  in_r0[0x3b] = (int)((float)in_r0[0x3b] + in_r1);
  (**(code **)(*in_r0 + 0x90))(param_1,in_r0,0);
  fVar10 = (float)in_r0[0x3b];
  uVar1 = in_fpscr & 0xfffffff | (uint)(fVar10 < 3.0) << 0x1f | (uint)(fVar10 == 3.0) << 0x1e;
  uVar9 = uVar1 | (uint)NAN(fVar10) << 0x1c;
  bVar2 = (byte)(uVar1 >> 0x18);
  if ((bool)(bVar2 >> 6 & 1) || bVar2 >> 7 != ((byte)(uVar9 >> 0x1c) & 1)) {
    (**(code **)(*hostSoldier + 0x1c0))(local_28,hostSoldier);
    iVar5 = FUN_007c567c(in_r0 + 0x48,local_28);
    FUN_007c5914(local_28);
    if (iVar5 == 0) {
      local_4c = hostSoldier;
    }
    else {
      local_4c = (int *)cocos2d::CCDictionary::objectForKey(peerSoldiers,(string *)(in_r0 + 0x48));
    }
    if ((local_4c == (int *)0x0) ||
       (cVar4 = (**(code **)(*local_4c + 0x264))(local_4c), cVar4 == '\x01')) {
      bVar3 = false;
    }
    else {
      bVar3 = true;
    }
    if (bVar3) {
      pcVar8 = *(code **)(*in_r0 + 0x4c);
      (**(code **)(*local_4c + 0x1ac))(&local_38,local_4c);
      fVar10 = (float)(**(code **)(*local_4c + 0x1ac))(local_28,local_4c);
      cocos2d::CCPoint::CCPoint((CCPoint *)&local_48,fVar10,extraout_s1);
      (*pcVar8)(in_r0,&local_48);
      pcVar8 = *(code **)(*in_r0 + 0x98);
      this = (SoldierView *)(**(code **)(*local_4c + 0x1d8))(local_4c);
      uVar6 = SoldierView::getBodyRotation(this);
      (*pcVar8)(in_r0,uVar6);
      in_s1 = extraout_s1;
    }
    else {
      *(undefined1 *)(in_r0 + 0x3a) = 0;
    }
    in_r0[0x3d] = (int)((float)in_r0[0x3d] + in_r1);
    fVar10 = (float)in_r0[0x3d];
    uVar1 = uVar9 & 0xfffffff | (uint)(fVar10 < 0.25) << 0x1f | (uint)(fVar10 == 0.25) << 0x1e;
    uVar9 = uVar1 | (uint)NAN(fVar10) << 0x1c;
    bVar2 = (byte)(uVar1 >> 0x18);
    if (!(bool)(bVar2 >> 6 & 1) && bVar2 >> 7 == ((byte)(uVar9 >> 0x1c) & 1)) {
      in_r0[0x3d] = 0;
      pcVar8 = *(code **)(*(int *)in_r0[0x39] + 0x98);
      iVar5 = in_r0[0x39];
      uVar6 = FUN_003a3794();
      fVar10 = (float)VectorSignedToFloat(uVar6,(byte)(uVar9 >> 0x16) & 3);
      (*pcVar8)(iVar5,(fVar10 / 1.0737418e+09 - 1.0) * 360.0);
    }
    in_r0[0x3c] = (int)((float)in_r0[0x3c] + in_r1);
    if (0.1 < (float)in_r0[0x3c]) {
      in_r0[0x3c] = 0;
      in_r0[0x47] = in_r0[0x47] + 1;
      if (1 < in_r0[0x47]) {
        in_r0[0x47] = 0;
      }
      (**(code **)(*(int *)in_r0[0x39] + 0x208))(in_r0[0x39],in_r0 + in_r0[0x47] * 4 + 0x3f);
    }
    in_r0[0x3e] = (int)((float)in_r0[0x3e] + in_r1);
    if (0.3 < (float)in_r0[0x3e]) {
      in_r0[0x3e] = 0;
      uVar6 = sndEng;
      pfVar7 = (float *)(**(code **)(*in_r0 + 0x50))(in_r0);
      fVar10 = *pfVar7;
      iVar5 = (**(code **)(*in_r0 + 0x50))(in_r0);
      FUN_003a37fc(SUB84((double)fVar10,0),in_s1,SUB84((double)*(float *)(iVar5 + 4),0),&local_48);
      Sound::playSoundPositionVP(uVar6,0x30,local_48,uStack_44);
    }
    pfVar7 = (float *)(**(code **)(*in_r0 + 0x50))(in_r0);
    fVar10 = *pfVar7;
    iVar5 = (**(code **)(*in_r0 + 0x50))(in_r0);
    FUN_003a37fc(SUB84((double)fVar10,0),in_s1,SUB84((double)*(float *)(iVar5 + 4),0),&local_38);
    FUN_003a37fc(0,in_s1,0,local_28);
    iVar5 = FUN_003a3b18(local_38,uStack_34,uStack_30,uStack_2c);
    if (iVar5 != 0) {
      (**(code **)(*in_r0 + 0x90))(in_r0,1);
    }
  }
  else {
    *(undefined1 *)(in_r0 + 0x3a) = 0;
  }
  return;
}
