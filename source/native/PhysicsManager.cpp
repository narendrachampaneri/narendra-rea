// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 6 functions

// ---- PhysicsManager::PhysicsManager  @ 0x3a17a4
/* PhysicsManager::PhysicsManager() */

PhysicsManager * __thiscall PhysicsManager::PhysicsManager(PhysicsManager *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00916968;
  init();
  return this;
}

// ---- PhysicsManager::init  @ 0x3a17e8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x003a187e */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* PhysicsManager::init() */

undefined4 PhysicsManager::init(void)

{
  undefined4 *puVar1;
  undefined4 extraout_r1;
  undefined4 in_s1;
  undefined8 uVar2;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  
  uVar2 = cpSpaceNew();
  space = (undefined4 *)uVar2;
  *space = 2;
  cpSpaceResizeActiveHash(space,(int)((ulonglong)uVar2 >> 0x20),0,0x40490000,1000);
  cpSpaceResizeStaticHash(space,extraout_r1,0,0x40500000,3000);
  staticBody = cpBodyNew(0,0x7ff00000,0,0x7ff00000);
  puVar1 = space;
  FUN_0039ff50(0,in_s1,0,&local_28);
  puVar1[2] = local_28;
  puVar1[3] = uStack_24;
  puVar1[4] = uStack_20;
  puVar1[5] = uStack_1c;
  cpSpaceAddCollisionHandler(space,0x143,0x15,0x3a1329,0x3a138d,&LAB_003a13d8_1,0,0);
  cpSpaceAddCollisionHandler(space,0x143,0x241,0,0,0x3a1589,0,0);
  cpSpaceAddCollisionHandler(space,0x143,0x44,0x3a1699,0,0,0x3a1721,0);
  cpSpaceAddCollisionHandler(space,0x84,0x44,0x3a15bd,0,0,0,0);
  cpSpaceAddCollisionHandler(space,0x241,0x44,0x3a15bd,0,0,0,0);
  cpSpaceAddCollisionHandler(space,0x15,0x44,0x3a15bd,0,0,0,0);
  cpSpaceAddCollisionHandler(space,0xd,0x15,0x3a12d1,0,0,0,0);
  cpSpaceAddCollisionHandler(space,0xd,0x44,0x3a1699,0,0,0x3a1721,0);
  return 1;
}

// ---- PhysicsManager::~PhysicsManager  @ 0x3a1a10
/* WARNING: Removing unreachable block (ram,0x003a1a56) */
/* PhysicsManager::~PhysicsManager() */

PhysicsManager * __thiscall PhysicsManager::~PhysicsManager(PhysicsManager *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00916968;
  cpSpaceFreeChildren(space);
  cpSpaceFree(space);
  cpBodyFree(staticBody);
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- PhysicsManager::~PhysicsManager  @ 0x3a1a74
/* PhysicsManager::~PhysicsManager() */

PhysicsManager * __thiscall PhysicsManager::~PhysicsManager(PhysicsManager *this)

{
  ~PhysicsManager(this);
  operator_delete(this);
  return this;
}

// ---- PhysicsManager::drawShapes  @ 0x3a1a90
/* PhysicsManager::drawShapes() */

void PhysicsManager::drawShapes(void)

{
  cpSpaceHashEach(*(undefined4 *)(space + 0x3c),0x3a11fd,0);
  cpSpaceHashEach(*(undefined4 *)(space + 0x38),0x3a11fd,0);
  return;
}

// ---- PhysicsManager::updateStep  @ 0x3a1adc
/* PhysicsManager::updateStep(float) */

void __thiscall PhysicsManager::updateStep(PhysicsManager *this,float param_1)

{
  float *pfVar1;
  int iVar2;
  uint in_fpscr;
  int local_18;
  
  iVar2 = *space;
  VectorSignedToFloat(iVar2,(byte)(in_fpscr >> 0x16) & 3);
  local_18 = 0;
  while( true ) {
    if (iVar2 <= local_18) break;
    param_1 = (float)cpSpaceStep(param_1,space);
    local_18 = local_18 + 1;
  }
  cpSpaceHashEach(space[0xf],0x3a1249,0);
  pfVar1 = (float *)(**(code **)(*worldLayer + 0x50))(worldLayer);
  layerOffsetX = (int)*pfVar1;
  iVar2 = (**(code **)(*worldLayer + 0x50))(worldLayer);
  layerOffsetY = (int)*(float *)(iVar2 + 4);
  return;
}
