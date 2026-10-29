// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- MapShapeSquare::MapShapeSquare  @ 0x378690
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003786e8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* MapShapeSquare::MapShapeSquare() */

MapShapeSquare * __thiscall MapShapeSquare::MapShapeSquare(MapShapeSquare *this)

{
  undefined4 uVar1;
  int iVar2;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar3;
  undefined1 auStack_50 [16];
  undefined1 auStack_40 [16];
  undefined1 auStack_30 [16];
  undefined1 auStack_20 [16];
  
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00915168;
  fVar3 = (float)VectorSignedToFloat(tileSize / 2,(byte)(in_fpscr >> 0x16) & 3);
  FUN_003778fc(SUB84((double)-fVar3,0),in_s1,SUB84((double)-fVar3,0),auStack_50);
  FUN_003778fc(SUB84((double)-fVar3,0),in_s1,SUB84((double)fVar3,0),auStack_40);
  FUN_003778fc(SUB84((double)fVar3,0),in_s1,SUB84((double)fVar3,0),auStack_30);
  FUN_003778fc(SUB84((double)fVar3,0),in_s1,SUB84((double)-fVar3,0),auStack_20);
  uVar1 = cpBodyNew(0,0x412e8480,0,0x7ff00000);
  *(undefined4 *)(this + 0x14) = uVar1;
  **(undefined4 **)(this + 0x14) = &LAB_0037867c_1;
  uVar1 = cpPolyShapeNew(*(undefined4 *)(this + 0x14),4,auStack_50);
  *(undefined4 *)(this + 0x18) = uVar1;
  *(undefined4 *)(*(int *)(this + 0x18) + 0x54) = 0;
  *(undefined4 *)(*(int *)(this + 0x18) + 0x5c) = 0;
  *(undefined4 *)(*(int *)(this + 0x18) + 0x58) = 0;
  iVar2 = *(int *)(this + 0x18);
  *(undefined4 *)(iVar2 + 0x30) = 0xa0000000;
  *(undefined4 *)(iVar2 + 0x34) = 0x3fe99999;
  iVar2 = *(int *)(this + 0x18);
  *(undefined4 *)(iVar2 + 0x38) = 0;
  *(undefined4 *)(iVar2 + 0x3c) = 0x3fd00000;
  return this;
}

// ---- MapShapeSquare::~MapShapeSquare  @ 0x378818
/* WARNING: Removing unreachable block (ram,0x0037883a) */
/* MapShapeSquare::~MapShapeSquare() */

MapShapeSquare * __thiscall MapShapeSquare::~MapShapeSquare(MapShapeSquare *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00915168;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- MapShapeSquare::~MapShapeSquare  @ 0x378854
/* MapShapeSquare::~MapShapeSquare() */

MapShapeSquare * __thiscall MapShapeSquare::~MapShapeSquare(MapShapeSquare *this)

{
  ~MapShapeSquare(this);
  operator_delete(this);
  return this;
}

// ---- MapShapeSquare::addBodyShape  @ 0x378870
/* MapShapeSquare::addBodyShape(cpSpace*) */

void __thiscall MapShapeSquare::addBodyShape(MapShapeSquare *this,cpSpace *param_1)

{
  cpSpaceAddBody(param_1,*(undefined4 *)(this + 0x14));
  cpSpaceAddShape(param_1,*(undefined4 *)(this + 0x18));
  return;
}
