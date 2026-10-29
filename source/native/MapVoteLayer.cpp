// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- MapVoteLayer::create  @ 0x3b4d0c
/* MapVoteLayer::create() */

MapVoteLayer * MapVoteLayer::create(void)

{
  bool bVar1;
  MapVoteLayer *this;
  int iVar2;
  
  this = operator_new(0x140);
  MapVoteLayer(this);
  if ((this == (MapVoteLayer *)0x0) ||
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
    if (this != (MapVoteLayer *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (MapVoteLayer *)0x0;
  }
  return this;
}

// ---- MapVoteLayer::MapVoteLayer  @ 0x3b4d7c
/* MapVoteLayer::MapVoteLayer() */

MapVoteLayer * __thiscall MapVoteLayer::MapVoteLayer(MapVoteLayer *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00917ee8;
  return this;
}

// ---- MapVoteLayer::init  @ 0x3b4da8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003b4e16 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapVoteLayer::init() */

bool MapVoteLayer::init(void)

{
  MapVoteLayer *in_r0;
  undefined4 uVar1;
  char *pcVar2;
  code *pcVar3;
  undefined4 uVar4;
  bool bVar5;
  uint in_fpscr;
  float fVar6;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  undefined4 in_s1;
  float extraout_s1;
  float extraout_s1_00;
  float extraout_s1_01;
  float extraout_s1_02;
  float extraout_s1_03;
  float extraout_s1_04;
  float extraout_s1_05;
  float extraout_s1_06;
  float extraout_s1_07;
  float extraout_s1_08;
  float extraout_s1_09;
  float extraout_s1_10;
  float extraout_s1_11;
  float extraout_s1_12;
  float extraout_s1_13;
  float extraout_s1_14;
  float extraout_s1_15;
  float extraout_s1_16;
  float extraout_s1_17;
  float extraout_s1_18;
  float extraout_s1_19;
  undefined1 auStack_104 [3];
  char local_101;
  undefined1 auStack_100 [4];
  undefined4 local_fc;
  undefined4 local_f8;
  float local_f4;
  float local_f0;
  float local_ec;
  CCNode *local_e8;
  CCNode *local_e4;
  CCNode *local_e0;
  CCNode *local_dc;
  CCNode *local_d8;
  CCNode *local_d4;
  CCNode *local_d0;
  CCNode *local_cc;
  CCMenuItem *local_c8;
  CCMenuItem *local_c4;
  CCMenuItem *local_c0;
  CCMenuItem *local_bc;
  float local_b8;
  float local_b4;
  undefined1 auStack_b0 [8];
  undefined1 auStack_a8 [8];
  undefined1 auStack_a0 [8];
  undefined1 auStack_98 [8];
  undefined1 auStack_90 [8];
  undefined1 auStack_88 [8];
  undefined1 auStack_80 [8];
  CCPoint aCStack_78 [8];
  CCPoint aCStack_70 [8];
  code *local_68;
  undefined4 local_64;
  code *local_60;
  undefined4 local_5c;
  code *local_58;
  undefined4 local_54;
  code *local_50;
  undefined4 local_4c;
  undefined1 local_48 [16];
  CCPoint local_38 [16];
  CCPoint aCStack_28 [16];
  
  local_101 = cocos2d::CCNode::init();
  bVar5 = local_101 == '\x01';
  if (bVar5) {
    cocos2d::CCSize::CCSize((CCSize *)&local_b8,(CCSize *)&screenSize);
    FUN_003b3f8c(SUB84((double)(local_b8 - 90.0),0),in_s1,SUB84((double)(local_b4 / 2.0),0),local_48
                );
    *(undefined4 *)(in_r0 + 0xe8) = 0xffffffff;
    *(undefined4 *)(in_r0 + 0xec) = 0;
    *(undefined4 *)(in_r0 + 0xf0) = 0;
    *(undefined4 *)(in_r0 + 0xf4) = 1;
    *(undefined4 *)(in_r0 + 0xf8) = 2;
    *(undefined4 *)(in_r0 + 0xfc) = 0;
    *(undefined4 *)(in_r0 + 0x100) = 0;
    *(undefined4 *)(in_r0 + 0x104) = 0;
    in_r0[0xe4] = (MapVoteLayer)0x0;
    local_fc = 0x3f0ccccd;
    local_f8 = 0x3ecccccd;
    local_f4 = 24.0;
    local_f0 = -8.0;
    local_ec = -35.0;
    local_e8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_e0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_dc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d4 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_d0 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_cc = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_mid.png");
    local_68 = (code *)0x3b6219;
    local_64 = 0;
    local_c8 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e8,local_e4,(CCObject *)in_r0,(_func_void_CCObject_ptr *)0x3b6219);
    local_60 = (code *)0x3b62a9;
    local_5c = 0;
    local_c4 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_e0,local_dc,(CCObject *)in_r0,(_func_void_CCObject_ptr *)0x3b62a9);
    local_58 = (code *)0x3b62d9;
    local_54 = 0;
    local_c0 = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d8,local_d4,(CCObject *)in_r0,(_func_void_CCObject_ptr *)0x3b62d9);
    local_50 = (code *)0x3b6309;
    local_4c = 0;
    local_bc = (CCMenuItem *)
               cocos2d::CCMenuItemSprite::create
                         (local_d0,local_cc,(CCObject *)in_r0,(_func_void_CCObject_ptr *)0x3b6309);
    uVar1 = cocos2d::CCMenu::create(local_c8,0);
    *(undefined4 *)(in_r0 + 0x13c) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x13c));
    pcVar3 = *(code **)(**(int **)(in_r0 + 0x13c) + 0x4c);
    uVar1 = *(undefined4 *)(in_r0 + 0x13c);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1);
    (*pcVar3)(uVar1,aCStack_28);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x13c));
    uVar1 = cocos2d::CCMenu::create(local_c4,0);
    *(undefined4 *)(in_r0 + 0x120) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x120));
    pcVar3 = *(code **)(**(int **)(in_r0 + 0x120) + 0x4c);
    uVar1 = *(undefined4 *)(in_r0 + 0x120);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_00);
    (*pcVar3)(uVar1,aCStack_28);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x120));
    uVar1 = cocos2d::CCMenu::create(local_c0,0);
    *(undefined4 *)(in_r0 + 0x124) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x124));
    pcVar3 = *(code **)(**(int **)(in_r0 + 0x124) + 0x4c);
    uVar1 = *(undefined4 *)(in_r0 + 0x124);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_01);
    (*pcVar3)(uVar1,aCStack_28);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x124));
    uVar1 = cocos2d::CCMenu::create(local_bc,0);
    *(undefined4 *)(in_r0 + 0x128) = uVar1;
    fVar6 = (float)cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x128));
    pcVar3 = *(code **)(**(int **)(in_r0 + 0x128) + 0x4c);
    uVar1 = *(undefined4 *)(in_r0 + 0x128);
    cocos2d::CCPoint::CCPoint(aCStack_28,fVar6,extraout_s1_02);
    (*pcVar3)(uVar1,aCStack_28);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x128));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("DONE",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x138) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x138));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x138),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x138) + 0x40))(*(undefined4 *)(in_r0 + 0x138),local_fc);
    (**(code **)(**(int **)(in_r0 + 0x13c) + 0x50))(*(undefined4 *)(in_r0 + 0x13c));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x13c) + 0x50))(*(undefined4 *)(in_r0 + 0x13c));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_03);
    FUN_003b3f8c(0,extraout_s1_03,SUB84((double)local_f0,0),local_38);
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x138) + 0x1fc))(*(undefined4 *)(in_r0 + 0x138));
    FUN_0079a3f4(auStack_88);
    FUN_007c6a60(auStack_80,uVar1,auStack_88);
    uVar1 = FUN_007c505c(auStack_80);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(0,extraout_s1_03,SUB84((double)local_f0,0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_04);
    FUN_003b3f6c(auStack_b0,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(auStack_88);
    (**(code **)(**(int **)(in_r0 + 0x138) + 0x4c))(*(undefined4 *)(in_r0 + 0x138),auStack_b0);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x138));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x114) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x114),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x114) + 0x40))(*(undefined4 *)(in_r0 + 0x114),local_f8);
    (**(code **)(**(int **)(in_r0 + 0x120) + 0x50))(*(undefined4 *)(in_r0 + 0x120));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x120) + 0x50))(*(undefined4 *)(in_r0 + 0x120));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_05);
    FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_05,SUB84((double)(local_f0 + 5.0),0),local_38
                );
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x114) + 0x1fc))(*(undefined4 *)(in_r0 + 0x114));
    FUN_0079a3f4(auStack_88);
    FUN_007c6a60(auStack_80,uVar1,auStack_88);
    uVar1 = FUN_007c505c(auStack_80);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_05,
                                SUB84((double)(local_f0 + 5.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_06);
    FUN_003b3f6c(auStack_a8,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(auStack_88);
    (**(code **)(**(int **)(in_r0 + 0x114) + 0x4c))(*(undefined4 *)(in_r0 + 0x114),auStack_a8);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x114));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x118) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x118));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x118),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x118) + 0x40))(*(undefined4 *)(in_r0 + 0x118),local_f8);
    (**(code **)(**(int **)(in_r0 + 0x124) + 0x50))(*(undefined4 *)(in_r0 + 0x124));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x124) + 0x50))(*(undefined4 *)(in_r0 + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_07);
    FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_07,SUB84((double)(local_f0 + 5.0),0),local_38
                );
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x118) + 0x1fc))(*(undefined4 *)(in_r0 + 0x118));
    FUN_0079a3f4(auStack_88);
    FUN_007c6a60(auStack_80,uVar1,auStack_88);
    uVar1 = FUN_007c505c(auStack_80);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_07,
                                SUB84((double)(local_f0 + 5.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_08);
    FUN_003b3f6c(auStack_a0,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(auStack_88);
    (**(code **)(**(int **)(in_r0 + 0x118) + 0x4c))(*(undefined4 *)(in_r0 + 0x118),auStack_a0);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x118));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x11c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x11c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x11c),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x11c) + 0x40))(*(undefined4 *)(in_r0 + 0x11c),local_f8);
    (**(code **)(**(int **)(in_r0 + 0x128) + 0x50))(*(undefined4 *)(in_r0 + 0x128));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x128) + 0x50))(*(undefined4 *)(in_r0 + 0x128));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_09);
    FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_09,SUB84((double)(local_f0 + 5.0),0),local_38
                );
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x11c) + 0x1fc))(*(undefined4 *)(in_r0 + 0x11c));
    FUN_0079a3f4(auStack_88);
    FUN_007c6a60(auStack_80,uVar1,auStack_88);
    uVar1 = FUN_007c505c(auStack_80);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_09,
                                SUB84((double)(local_f0 + 5.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_10);
    FUN_003b3f6c(auStack_98,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(auStack_88);
    (**(code **)(**(int **)(in_r0 + 0x11c) + 0x4c))(*(undefined4 *)(in_r0 + 0x11c),auStack_98);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x11c));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x108) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x108));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x108),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x108) + 0x40))(*(undefined4 *)(in_r0 + 0x108),local_f8);
    (**(code **)(**(int **)(in_r0 + 0x120) + 0x50))(*(undefined4 *)(in_r0 + 0x120));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x120) + 0x50))(*(undefined4 *)(in_r0 + 0x120));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_11);
    FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_11,SUB84((double)(local_f0 - 5.0),0),local_38
                );
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x108) + 0x1fc))(*(undefined4 *)(in_r0 + 0x108));
    FUN_0079a3f4(auStack_88);
    FUN_007c6a60(auStack_80,uVar1,auStack_88);
    uVar1 = FUN_007c505c(auStack_80);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_11,
                                SUB84((double)(local_f0 - 5.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_12);
    FUN_003b3f6c(auStack_90,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(auStack_88);
    (**(code **)(**(int **)(in_r0 + 0x108) + 0x4c))(*(undefined4 *)(in_r0 + 0x108),auStack_90);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x108));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x10c) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x10c));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x10c),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x10c) + 0x40))(*(undefined4 *)(in_r0 + 0x10c),local_f8);
    (**(code **)(**(int **)(in_r0 + 0x124) + 0x50))(*(undefined4 *)(in_r0 + 0x124));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x124) + 0x50))(*(undefined4 *)(in_r0 + 0x124));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_13);
    FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_13,SUB84((double)(local_f0 - 5.0),0),local_38
                );
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x10c) + 0x1fc))(*(undefined4 *)(in_r0 + 0x10c));
    FUN_0079a3f4(auStack_100);
    FUN_007c6a60(auStack_80,uVar1,auStack_100);
    uVar1 = FUN_007c505c(auStack_80);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_13,
                                SUB84((double)(local_f0 - 5.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_14);
    FUN_003b3f6c(auStack_88,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_80);
    FUN_0079a3fc(auStack_100);
    (**(code **)(**(int **)(in_r0 + 0x10c) + 0x4c))(*(undefined4 *)(in_r0 + 0x10c),auStack_88);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x10c));
    pcVar2 = (char *)FUN_007c5300(&DAT_00951194);
    uVar1 = cocos2d::CCLabelAtlas::create("",pcVar2,0x20,0x20,0x20);
    *(undefined4 *)(in_r0 + 0x110) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x110));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(in_r0 + 0x110),(int)local_f4);
    (**(code **)(**(int **)(in_r0 + 0x110) + 0x40))(*(undefined4 *)(in_r0 + 0x110),local_f8);
    (**(code **)(**(int **)(in_r0 + 0x128) + 0x50))(*(undefined4 *)(in_r0 + 0x128));
    fVar6 = (float)(**(code **)(**(int **)(in_r0 + 0x128) + 0x50))(*(undefined4 *)(in_r0 + 0x128));
    cocos2d::CCPoint::CCPoint(aCStack_78,fVar6,extraout_s1_15);
    FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_15,SUB84((double)(local_f0 - 5.0),0),local_38
                );
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x110) + 0x1fc))(*(undefined4 *)(in_r0 + 0x110));
    FUN_0079a3f4(auStack_104);
    FUN_007c6a60(auStack_100,uVar1,auStack_104);
    uVar1 = FUN_007c505c(auStack_100);
    VectorUnsignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
    fVar6 = (float)FUN_003b3f8c(SUB84((double)local_ec,0),extraout_s1_15,
                                SUB84((double)(local_f0 - 5.0),0),aCStack_28);
    cocos2d::CCPoint::CCPoint(aCStack_70,fVar6,extraout_s1_16);
    FUN_003b3f6c(auStack_80,aCStack_78,aCStack_70);
    FUN_007c5914(auStack_100);
    FUN_0079a3fc(auStack_104);
    (**(code **)(**(int **)(in_r0 + 0x110) + 0x4c))(*(undefined4 *)(in_r0 + 0x110),auStack_80);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x110));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("minimap0.PNG");
    *(undefined4 *)(in_r0 + 300) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 300));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("minimap0.PNG");
    *(undefined4 *)(in_r0 + 0x130) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x130));
    uVar1 = cocos2d::CCSprite::createWithSpriteFrameName("minimap0.PNG");
    *(undefined4 *)(in_r0 + 0x134) = uVar1;
    cocos2d::CCObject::retain(*(CCObject **)(in_r0 + 0x134));
    pcVar3 = *(code **)(**(int **)(in_r0 + 300) + 0x4c);
    uVar4 = *(undefined4 *)(in_r0 + 300);
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x120) + 0x50))(*(undefined4 *)(in_r0 + 0x120));
    cocos2d::CCPoint::CCPoint(local_38,extraout_s0,extraout_s1_17);
    FUN_003b3f6c(aCStack_28,uVar1,local_38);
    (*pcVar3)(uVar4,aCStack_28);
    pcVar3 = *(code **)(**(int **)(in_r0 + 0x130) + 0x4c);
    uVar4 = *(undefined4 *)(in_r0 + 0x130);
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x124) + 0x50))(*(undefined4 *)(in_r0 + 0x124));
    cocos2d::CCPoint::CCPoint(local_38,extraout_s0_00,extraout_s1_18);
    FUN_003b3f6c(aCStack_28,uVar1,local_38);
    (*pcVar3)(uVar4,aCStack_28);
    pcVar3 = *(code **)(**(int **)(in_r0 + 0x134) + 0x4c);
    uVar4 = *(undefined4 *)(in_r0 + 0x134);
    uVar1 = (**(code **)(**(int **)(in_r0 + 0x128) + 0x50))(*(undefined4 *)(in_r0 + 0x128));
    cocos2d::CCPoint::CCPoint(local_38,extraout_s0_01,extraout_s1_19);
    FUN_003b3f6c(aCStack_28,uVar1,local_38);
    (*pcVar3)(uVar4,aCStack_28);
    (**(code **)(**(int **)(in_r0 + 300) + 0x40))(*(undefined4 *)(in_r0 + 300),0x3eb33333);
    (**(code **)(**(int **)(in_r0 + 0x130) + 0x40))(*(undefined4 *)(in_r0 + 0x130),0x3eb33333);
    (**(code **)(**(int **)(in_r0 + 0x134) + 0x40))(*(undefined4 *)(in_r0 + 0x134),0x3eb33333);
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 300));
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x130));
    (**(code **)(*(int *)in_r0 + 200))(in_r0,*(undefined4 *)(in_r0 + 0x134));
    updateMapVote(in_r0);
  }
  return bVar5;
}

// ---- MapVoteLayer::~MapVoteLayer  @ 0x3b6108
/* WARNING: Removing unreachable block (ram,0x003b61e2) */
/* MapVoteLayer::~MapVoteLayer() */

MapVoteLayer * __thiscall MapVoteLayer::~MapVoteLayer(MapVoteLayer *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00917ee8;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x11c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x120));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x124));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x128));
  cocos2d::CCObject::release(*(CCObject **)(this + 300));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x130));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x134));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x138));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- MapVoteLayer::~MapVoteLayer  @ 0x3b61fc
/* MapVoteLayer::~MapVoteLayer() */

MapVoteLayer * __thiscall MapVoteLayer::~MapVoteLayer(MapVoteLayer *this)

{
  ~MapVoteLayer(this);
  operator_delete(this);
  return this;
}

// ---- MapVoteLayer::onDone  @ 0x3b6218
/* MapVoteLayer::onDone(cocos2d::CCObject*) */

void MapVoteLayer::onDone(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  Sound::playSound(sndEng,0xd);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"MapVoteDone",(CCObject *)0x0);
  return;
}

// ---- MapVoteLayer::sendMapVote  @ 0x3b6258
/* MapVoteLayer::sendMapVote() */

void __thiscall MapVoteLayer::sendMapVote(MapVoteLayer *this)

{
  CCObject *pCVar1;
  CCNotificationCenter *this_00;
  
  Sound::playSound(sndEng,0xe);
  pCVar1 = (CCObject *)cocos2d::CCInteger::create(*(int *)(this + 0xe8));
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this_00,"SendMapVote",pCVar1);
  return;
}

// ---- MapVoteLayer::onMap1  @ 0x3b62a8
/* MapVoteLayer::onMap1(cocos2d::CCObject*) */

void MapVoteLayer::onMap1(CCObject *param_1)

{
  if (*(int *)(param_1 + 0xe8) != *(int *)(param_1 + 0xf0)) {
    *(undefined4 *)(param_1 + 0xe8) = *(undefined4 *)(param_1 + 0xf0);
    sendMapVote((MapVoteLayer *)param_1);
  }
  return;
}

// ---- MapVoteLayer::onMap2  @ 0x3b62d8
/* MapVoteLayer::onMap2(cocos2d::CCObject*) */

void MapVoteLayer::onMap2(CCObject *param_1)

{
  if (*(int *)(param_1 + 0xe8) != *(int *)(param_1 + 0xf4)) {
    *(undefined4 *)(param_1 + 0xe8) = *(undefined4 *)(param_1 + 0xf4);
    sendMapVote((MapVoteLayer *)param_1);
  }
  return;
}

// ---- MapVoteLayer::onMap3  @ 0x3b6308
/* MapVoteLayer::onMap3(cocos2d::CCObject*) */

void MapVoteLayer::onMap3(CCObject *param_1)

{
  if (*(int *)(param_1 + 0xe8) != *(int *)(param_1 + 0xf8)) {
    *(undefined4 *)(param_1 + 0xe8) = *(undefined4 *)(param_1 + 0xf8);
    sendMapVote((MapVoteLayer *)param_1);
  }
  return;
}

// ---- MapVoteLayer::updateMaps  @ 0x3b6338
/* MapVoteLayer::updateMaps(int, int, int, int) */

void __thiscall
MapVoteLayer::updateMaps(MapVoteLayer *this,int param_1,int param_2,int param_3,int param_4)

{
  *(int *)(this + 0xec) = param_1;
  *(int *)(this + 0xf0) = param_2;
  *(int *)(this + 0xf4) = param_3;
  *(int *)(this + 0xf8) = param_4;
  return;
}

// ---- MapVoteLayer::updateVotes  @ 0x3b6368
/* MapVoteLayer::updateVotes(int, int, int) */

void __thiscall MapVoteLayer::updateVotes(MapVoteLayer *this,int param_1,int param_2,int param_3)

{
  *(int *)(this + 0xfc) = param_1;
  *(int *)(this + 0x100) = param_2;
  *(int *)(this + 0x104) = param_3;
  return;
}

// ---- MapVoteLayer::updateMapVote  @ 0x3b6390
/* MapVoteLayer::updateMapVote() */

void __thiscall MapVoteLayer::updateMapVote(MapVoteLayer *this)

{
  undefined4 uVar1;
  CCString *pCVar2;
  CCSpriteFrameCache *pCVar3;
  char *pcVar4;
  code *pcVar5;
  undefined4 uVar6;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 local_20;
  undefined1 local_1f;
  undefined1 local_1e;
  CCString *local_1c;
  CCString *local_18;
  CCString *local_14;
  
  local_1c = (CCString *)cocos2d::CCArray::objectAtIndex(mapNames,*(uint *)(this + 0xf0));
  local_18 = (CCString *)cocos2d::CCArray::objectAtIndex(mapNames,*(uint *)(this + 0xf4));
  local_14 = (CCString *)cocos2d::CCArray::objectAtIndex(mapNames,*(uint *)(this + 0xf8));
  pcVar5 = *(code **)(**(int **)(this + 0x114) + 0x1f8);
  uVar6 = *(undefined4 *)(this + 0x114);
  uVar1 = cocos2d::CCString::getCString(local_1c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_24,uVar1,auStack_28);
  FUN_003b4c9c(&local_20,auStack_24);
  uVar1 = FUN_007c5300(&local_20);
  (*pcVar5)(uVar6,uVar1);
  FUN_007c5914(&local_20);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_28);
  pcVar5 = *(code **)(**(int **)(this + 0x118) + 0x1f8);
  uVar6 = *(undefined4 *)(this + 0x118);
  uVar1 = cocos2d::CCString::getCString(local_18);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_24,uVar1,auStack_28);
  FUN_003b4c9c(&local_20,auStack_24);
  uVar1 = FUN_007c5300(&local_20);
  (*pcVar5)(uVar6,uVar1);
  FUN_007c5914(&local_20);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_28);
  pcVar5 = *(code **)(**(int **)(this + 0x11c) + 0x1f8);
  uVar6 = *(undefined4 *)(this + 0x11c);
  uVar1 = cocos2d::CCString::getCString(local_14);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_24,uVar1,auStack_28);
  FUN_003b4c9c(&local_20,auStack_24);
  uVar1 = FUN_007c5300(&local_20);
  (*pcVar5)(uVar6,uVar1);
  FUN_007c5914(&local_20);
  FUN_007c5914(auStack_24);
  FUN_0079a3fc(auStack_28);
  pcVar5 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar6 = *(undefined4 *)(this + 0x108);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("VOTES:%d",*(undefined4 *)(this + 0xfc));
  uVar1 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar5)(uVar6,uVar1);
  pcVar5 = *(code **)(**(int **)(this + 0x10c) + 0x1f8);
  uVar6 = *(undefined4 *)(this + 0x10c);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("VOTES:%d",*(undefined4 *)(this + 0x100))
  ;
  uVar1 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar5)(uVar6,uVar1);
  pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x1f8);
  uVar6 = *(undefined4 *)(this + 0x110);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("VOTES:%d",*(undefined4 *)(this + 0x104))
  ;
  uVar1 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar5)(uVar6,uVar1);
  local_1c = (CCString *)
             cocos2d::CCString::createWithFormat("minimap%d.PNG",*(undefined4 *)(this + 0xf0));
  local_18 = (CCString *)
             cocos2d::CCString::createWithFormat("minimap%d.PNG",*(undefined4 *)(this + 0xf4));
  local_14 = (CCString *)
             cocos2d::CCString::createWithFormat("minimap%d.PNG",*(undefined4 *)(this + 0xf8));
  pcVar5 = *(code **)(**(int **)(this + 300) + 0x214);
  uVar6 = *(undefined4 *)(this + 300);
  pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
  pcVar4 = (char *)cocos2d::CCString::getCString(local_1c);
  uVar1 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,pcVar4);
  (*pcVar5)(uVar6,uVar1);
  pcVar5 = *(code **)(**(int **)(this + 0x130) + 0x214);
  uVar6 = *(undefined4 *)(this + 0x130);
  pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
  pcVar4 = (char *)cocos2d::CCString::getCString(local_18);
  uVar1 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,pcVar4);
  (*pcVar5)(uVar6,uVar1);
  pcVar5 = *(code **)(**(int **)(this + 0x134) + 0x214);
  uVar6 = *(undefined4 *)(this + 0x134);
  pCVar3 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
  pcVar4 = (char *)cocos2d::CCString::getCString(local_14);
  uVar1 = cocos2d::CCSpriteFrameCache::spriteFrameByName(pCVar3,pcVar4);
  (*pcVar5)(uVar6,uVar1);
  if (*(int *)(this + 0xec) == *(int *)(this + 0xf0)) {
    pcVar5 = *(code **)(**(int **)(this + 0x120) + 0x220);
    uVar6 = *(undefined4 *)(this + 0x120);
    uVar1 = FUN_003b3f10(0x96,0xff,0x96);
    local_20 = (undefined1)uVar1;
    local_1f = (undefined1)((uint)uVar1 >> 8);
    local_1e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar6,&local_20);
  }
  else {
    pcVar5 = *(code **)(**(int **)(this + 0x120) + 0x220);
    uVar6 = *(undefined4 *)(this + 0x120);
    uVar1 = FUN_003b3f10(0xff,0xff,0xff);
    local_20 = (undefined1)uVar1;
    local_1f = (undefined1)((uint)uVar1 >> 8);
    local_1e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar6,&local_20);
  }
  if (*(int *)(this + 0xec) == *(int *)(this + 0xf4)) {
    pcVar5 = *(code **)(**(int **)(this + 0x124) + 0x220);
    uVar6 = *(undefined4 *)(this + 0x124);
    uVar1 = FUN_003b3f10(0x96,0xff,0x96);
    local_20 = (undefined1)uVar1;
    local_1f = (undefined1)((uint)uVar1 >> 8);
    local_1e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar6,&local_20);
  }
  else {
    pcVar5 = *(code **)(**(int **)(this + 0x124) + 0x220);
    uVar6 = *(undefined4 *)(this + 0x124);
    uVar1 = FUN_003b3f10(0xff,0xff,0xff);
    local_20 = (undefined1)uVar1;
    local_1f = (undefined1)((uint)uVar1 >> 8);
    local_1e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar6,&local_20);
  }
  if (*(int *)(this + 0xec) == *(int *)(this + 0xf8)) {
    pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x220);
    uVar6 = *(undefined4 *)(this + 0x128);
    uVar1 = FUN_003b3f10(0x96,0xff,0x96);
    local_20 = (undefined1)uVar1;
    local_1f = (undefined1)((uint)uVar1 >> 8);
    local_1e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar6,&local_20);
  }
  else {
    pcVar5 = *(code **)(**(int **)(this + 0x128) + 0x220);
    uVar6 = *(undefined4 *)(this + 0x128);
    uVar1 = FUN_003b3f10(0xff,0xff,0xff);
    local_20 = (undefined1)uVar1;
    local_1f = (undefined1)((uint)uVar1 >> 8);
    local_1e = (undefined1)((uint)uVar1 >> 0x10);
    (*pcVar5)(uVar6,&local_20);
  }
  if (*(int *)(this + 0xe8) == *(int *)(this + 0xf0)) {
    (**(code **)(**(int **)(this + 0x114) + 0x1a4))(*(undefined4 *)(this + 0x114),0xff);
    (**(code **)(**(int **)(this + 0x108) + 0x1a4))(*(undefined4 *)(this + 0x108),0xff);
    (**(code **)(**(int **)(this + 0x120) + 0x208))(*(undefined4 *)(this + 0x120),0xff);
    (**(code **)(**(int **)(this + 300) + 0x1a4))(*(undefined4 *)(this + 300),0xff);
  }
  else {
    (**(code **)(**(int **)(this + 0x108) + 0x1a4))(*(undefined4 *)(this + 0x108),100);
    (**(code **)(**(int **)(this + 0x114) + 0x1a4))(*(undefined4 *)(this + 0x114),100);
    (**(code **)(**(int **)(this + 0x120) + 0x208))(*(undefined4 *)(this + 0x120),100);
    (**(code **)(**(int **)(this + 300) + 0x1a4))(*(undefined4 *)(this + 300),100);
  }
  if (*(int *)(this + 0xe8) == *(int *)(this + 0xf4)) {
    (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),0xff);
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),0xff);
    (**(code **)(**(int **)(this + 0x124) + 0x208))(*(undefined4 *)(this + 0x124),0xff);
    (**(code **)(**(int **)(this + 0x130) + 0x1a4))(*(undefined4 *)(this + 0x130),0xff);
  }
  else {
    (**(code **)(**(int **)(this + 0x10c) + 0x1a4))(*(undefined4 *)(this + 0x10c),100);
    (**(code **)(**(int **)(this + 0x118) + 0x1a4))(*(undefined4 *)(this + 0x118),100);
    (**(code **)(**(int **)(this + 0x124) + 0x208))(*(undefined4 *)(this + 0x124),100);
    (**(code **)(**(int **)(this + 0x130) + 0x1a4))(*(undefined4 *)(this + 0x130),100);
  }
  if (*(int *)(this + 0xe8) == *(int *)(this + 0xf8)) {
    (**(code **)(**(int **)(this + 0x11c) + 0x1a4))(*(undefined4 *)(this + 0x11c),0xff);
    (**(code **)(**(int **)(this + 0x110) + 0x1a4))(*(undefined4 *)(this + 0x110),0xff);
    (**(code **)(**(int **)(this + 0x128) + 0x208))(*(undefined4 *)(this + 0x128),0xff);
    (**(code **)(**(int **)(this + 0x134) + 0x1a4))(*(undefined4 *)(this + 0x134),0xff);
  }
  else {
    (**(code **)(**(int **)(this + 0x110) + 0x1a4))(*(undefined4 *)(this + 0x110),100);
    (**(code **)(**(int **)(this + 0x11c) + 0x1a4))(*(undefined4 *)(this + 0x11c),100);
    (**(code **)(**(int **)(this + 0x128) + 0x208))(*(undefined4 *)(this + 0x128),100);
    (**(code **)(**(int **)(this + 0x134) + 0x1a4))(*(undefined4 *)(this + 0x134),100);
  }
  return;
}
