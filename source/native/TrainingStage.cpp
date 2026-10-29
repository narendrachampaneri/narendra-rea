// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 10 functions

// ---- TrainingStage::create  @ 0x40e56c
/* TrainingStage::create() */

TrainingStage * TrainingStage::create(void)

{
  bool bVar1;
  TrainingStage *this;
  int iVar2;
  
  this = operator_new(0x1ac);
  TrainingStage(this);
  if ((this == (TrainingStage *)0x0) ||
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
    if (this != (TrainingStage *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (TrainingStage *)0x0;
  }
  return this;
}

// ---- TrainingStage::TrainingStage  @ 0x4193f4
/* TrainingStage::TrainingStage() */

TrainingStage * __thiscall TrainingStage::TrainingStage(TrainingStage *this)

{
  Stage::Stage((Stage *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091cda8;
  *(undefined ***)(this + 0xe4) = &PTR__TrainingStage_1_0091d00c;
  *(undefined **)(this + 0xe8) = &DAT_0091d03c;
  *(undefined **)(this + 0xec) = &DAT_0091d048;
  return this;
}

// ---- TrainingStage::init  @ 0x41944c
/* TrainingStage::init() */

bool __thiscall TrainingStage::init(TrainingStage *this)

{
  char cVar1;
  
  cVar1 = Stage::init((Stage *)this);
  return cVar1 == '\x01';
}

// ---- TrainingStage::~TrainingStage  @ 0x41947c
/* WARNING: Removing unreachable block (ram,0x00419560) */
/* TrainingStage::~TrainingStage() */

TrainingStage * __thiscall TrainingStage::~TrainingStage(TrainingStage *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091cda8;
  *(undefined ***)(this + 0xe4) = &PTR__TrainingStage_1_0091d00c;
  *(undefined **)(this + 0xe8) = &DAT_0091d03c;
  *(undefined **)(this + 0xec) = &DAT_0091d048;
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x17c));
  (**(code **)(**(int **)(this + 0x174) + 0x100))(*(undefined4 *)(this + 0x174));
  (**(code **)(*scaleLayer + 0x100))(scaleLayer);
  (**(code **)(*worldLayer + 0x100))(worldLayer);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x174));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x16c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x178));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x170));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x1a4));
  Stage::~Stage((Stage *)this);
  return this;
}

// ---- TrainingStage::~TrainingStage  @ 0x419580
/* non-virtual thunk to TrainingStage::~TrainingStage() */

void __thiscall TrainingStage::~TrainingStage(TrainingStage *this)

{
  ~TrainingStage(this + -0xe4);
  return;
}

// ---- TrainingStage::~TrainingStage  @ 0x419588
/* TrainingStage::~TrainingStage() */

TrainingStage * __thiscall TrainingStage::~TrainingStage(TrainingStage *this)

{
  ~TrainingStage(this);
  operator_delete(this);
  return this;
}

// ---- TrainingStage::~TrainingStage  @ 0x4195a4
/* non-virtual thunk to TrainingStage::~TrainingStage() */

void __thiscall TrainingStage::~TrainingStage(TrainingStage *this)

{
  ~TrainingStage(this + -0xe4);
  return;
}

// ---- TrainingStage::setupStage  @ 0x4195ac
/* TrainingStage::setupStage() */

void __thiscall TrainingStage::setupStage(TrainingStage *this)

{
  CCObject *pCVar1;
  undefined3 uVar2;
  undefined4 uVar3;
  PhysicsManager *this_00;
  MapManager *this_01;
  SoldierManager *this_02;
  ProjectileManager *this_03;
  WeaponManager *this_04;
  AvatarRenderer *pAVar4;
  CCTexture2D *pCVar5;
  CCTexture2D *pCVar6;
  CCTexture2D *pCVar7;
  CCTexture2D *pCVar8;
  SoldierView *pSVar9;
  EnemyManager *this_05;
  CCNotificationCenter *pCVar10;
  code *pcVar11;
  undefined4 uVar12;
  undefined8 uVar13;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  undefined4 uStack_14;
  
  cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::getWinSize();
  cocos2d::CCSize::operator=((CCSize *)(this + 0x120),(CCSize *)&local_18);
  scaleLayer = (CCObject *)cocos2d::CCLayer::create();
  worldLayer = (CCObject *)cocos2d::CCLayer::create();
  cocos2d::CCObject::retain(scaleLayer);
  cocos2d::CCObject::retain(worldLayer);
  uVar3 = HUD::create();
  *(undefined4 *)(this + 0x10c) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
  this_00 = operator_new(0x14);
  PhysicsManager::PhysicsManager(this_00);
  *(PhysicsManager **)(this + 0x114) = this_00;
  this_01 = operator_new(100);
  MapManager::MapManager(this_01);
  mapManager = this_01;
  gravityFactor = MapManager::getGravityFactor(this_01);
  this_02 = operator_new(0x38);
  SoldierManager::SoldierManager(this_02);
  soldierManager = this_02;
  this_02[0x34] = (SoldierManager)0x0;
  *(undefined4 *)(soldierManager + 0x24) = 1;
  SoldierManager::spawnPlayer();
  this_03 = operator_new(0x30);
  ProjectileManager::ProjectileManager(this_03);
  *(ProjectileManager **)(this + 0x118) = this_03;
  this_04 = operator_new(0x4c);
  WeaponManager::WeaponManager(this_04);
  *(WeaponManager **)(this + 0x110) = this_04;
  *(undefined1 *)(*(int *)(this + 0x110) + 0x44) = 0;
  *(undefined1 *)(*(int *)(this + 0x110) + 0x45) = 0;
  uVar3 = EffectsManager::create();
  *(undefined4 *)(this + 0x11c) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
  *(undefined1 *)(*(int *)(this + 0x11c) + 0x138) = SHOWBLOOD;
  HUD::addHostPlayer(*(HUD **)(this + 0x10c));
  uVar3 = SoldierAIController::create();
  *(undefined4 *)(this + 0x17c) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x17c));
  pcVar11 = *(code **)(**(int **)(this + 0x17c) + 0x1d4);
  uVar12 = *(undefined4 *)(this + 0x17c);
  uVar3 = SoldierView::create();
  (*pcVar11)(uVar12,uVar3);
  (**(code **)(**(int **)(this + 0x17c) + 0x228))(*(undefined4 *)(this + 0x17c));
  *(undefined4 *)(*(int *)(*(int *)(this + 0x17c) + 0x13c) + 0x54) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x17c) + 0x13c) + 0x5c) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x17c) + 0x13c) + 0x58) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x17c) + 0x140) + 0x54) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x17c) + 0x140) + 0x5c) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(this + 0x17c) + 0x140) + 0x58) = 0x15;
  *(undefined1 *)(*(int *)(this + 0x17c) + 0x15b) = 1;
  pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar5 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar4,(CCArray *)0x0,7);
  pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar6 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar4,(CCArray *)0x0,7);
  pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar7 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar4,(CCArray *)0x0,7);
  pAVar4 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar8 = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar4,(CCArray *)0x0,7);
  pSVar9 = (SoldierView *)
           (**(code **)(**(int **)(this + 0x17c) + 0x1d8))(*(undefined4 *)(this + 0x17c));
  SoldierView::setPlayerSkin(pSVar9,7,pCVar5,pCVar6,pCVar7,pCVar8);
  pSVar9 = (SoldierView *)
           (**(code **)(**(int **)(this + 0x17c) + 0x1d8))(*(undefined4 *)(this + 0x17c));
  FUN_0079a3f4(&local_20);
  FUN_007c6a60(&local_18,"SARGE",&local_20);
  SoldierView::setPlayerName(pSVar9,&local_18);
  FUN_007c5914(&local_18);
  FUN_0079a3fc(&local_20);
  pCVar1 = worldLayer;
  pcVar11 = *(code **)(*(int *)worldLayer + 0xcc);
  uVar3 = (**(code **)(**(int **)(this + 0x17c) + 0x1d8))(*(undefined4 *)(this + 0x17c));
  (*pcVar11)(pCVar1,uVar3,3);
  *(undefined4 *)(this + 0x184) = 0;
  pcVar11 = *(code **)(**(int **)(this + 0x17c) + 0x24c);
  uVar3 = *(undefined4 *)(this + 0x17c);
  FUN_007c64e8(&local_18,&sargePeerId);
  (*pcVar11)(uVar3,&local_18);
  FUN_007c5914(&local_18);
  this_05 = operator_new(0x50);
  EnemyManager::EnemyManager(this_05);
  *(EnemyManager **)(this + 0x1a4) = this_05;
  EnemyManager::initEnemies(*(EnemyManager **)(this + 0x1a4));
  *(undefined1 *)(hostSoldier + 0x15b) = 1;
  uVar3 = cocos2d::CCSprite::create("bg_new.png");
  *(undefined4 *)(this + 0x108) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
  (**(code **)(**(int **)(this + 0x108) + 0x38))
            (*(undefined4 *)(this + 0x108),screenSize._4_4_ / 320.0);
  uVar13 = (**(code **)(**(int **)(this + 0x108) + 0x30))
                     (*(undefined4 *)(this + 0x108),(float)screenSize / 480.0);
  if (DEBUG_MODE != '\0') {
    uVar13 = (**(code **)(**(int **)(this + 0x108) + 0x1a4))(*(undefined4 *)(this + 0x108),100);
  }
  pcVar11 = *(code **)(**(int **)(this + 0x108) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x108);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
  (*pcVar11)(uVar3,&local_18);
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x108),0);
  (**(code **)(*(int *)this + 0xcc))(this,scaleLayer,1);
  (**(code **)(*(int *)scaleLayer + 0xcc))(scaleLayer,worldLayer,2);
  MapManager::addToLayer(mapManager,(CCLayer *)worldLayer,1,3);
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x10c),5);
  ProjectileManager::addBodyShapeSprite(*(ProjectileManager **)(this + 0x118));
  *(undefined4 *)(this + 0x180) = 0;
  *(undefined4 *)(this + 0x188) = 0;
  *(undefined1 *)(*(int *)(this + 0x10c) + 0x1c4) = 0;
  this[0x18c] = (TrainingStage)0x1;
  *(undefined4 *)(this + 400) = 0;
  uVar3 = cocos2d::CCNode::create();
  *(undefined4 *)(this + 0x174) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x174));
  uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("pointer.png");
  *(undefined4 *)(this + 0x16c) = uVar3;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x16c));
  (**(code **)(**(int **)(this + 0x174) + 200))
            (*(undefined4 *)(this + 0x174),*(undefined4 *)(this + 0x16c));
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x174),6);
  uVar3 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
  *(undefined4 *)(this + 0x178) = uVar3;
  uVar13 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x178));
  pcVar11 = *(code **)(**(int **)(this + 0x178) + 0x7c);
  uVar3 = *(undefined4 *)(this + 0x178);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
  (*pcVar11)(uVar3,&local_18);
  cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x178),0x19);
  (**(code **)(**(int **)(this + 0x178) + 0x40))(*(undefined4 *)(this + 0x178),0x3f4ccccd);
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x178),6);
  uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("arrowAlert.png");
  *(undefined4 *)(this + 0x170) = uVar3;
  uVar13 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x170));
  pcVar11 = *(code **)(**(int **)(this + 0x170) + 0x7c);
  uVar3 = *(undefined4 *)(this + 0x170);
  cocos2d::CCPoint::CCPoint((CCPoint *)&local_18,(float)uVar13,(float)((ulonglong)uVar13 >> 0x20));
  (*pcVar11)(uVar3,&local_18);
  (**(code **)(**(int **)(this + 0x170) + 0x40))(*(undefined4 *)(this + 0x170),0x3f400000);
  pcVar11 = *(code **)(**(int **)(this + 0x170) + 0x1bc);
  uVar3 = *(undefined4 *)(this + 0x170);
  uVar2 = FUN_00418458(0xff,0,0);
  local_18 = CONCAT13(local_18._3_1_,uVar2);
  (*pcVar11)(uVar3,&local_18);
  (**(code **)(*(int *)worldLayer + 0xcc))(worldLayer,*(undefined4 *)(this + 0x170),6);
  pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_20 = 0x22c;
  uStack_1c = 1;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar10,(CCObject *)this,(_func_void_CCObject_ptr *)0x22c,(char *)0x1,
             (CCObject *)"PauseGame");
  pCVar10 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_18 = 0x228;
  uStack_14 = 1;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar10,(CCObject *)this,(_func_void_CCObject_ptr *)0x228,(char *)0x1,
             (CCObject *)"ResumeGame");
  *(undefined4 *)(this + 0x1a8) = 0;
  return;
}

// ---- TrainingStage::updateStep  @ 0x419dc8
/* TrainingStage::updateStep(float) */

void TrainingStage::updateStep(float param_1)

{
  TrainingStage *in_r0;
  undefined4 in_r1;
  float fVar1;
  
  Stage::updateStep(param_1);
  if (PAUSED != '\x01') {
    fVar1 = (float)(**(code **)(**(int **)(in_r0 + 0x17c) + 0x1dc))
                             (*(undefined4 *)(in_r0 + 0x17c),in_r1);
    fVar1 = (float)EnemyManager::updateStep(*(EnemyManager **)(in_r0 + 0x1a4),fVar1);
    doLesson(in_r0,fVar1);
  }
  return;
}

// ---- TrainingStage::headChatter  @ 0x419e30
/* TrainingStage::headChatter(float) */

void __thiscall TrainingStage::headChatter(TrainingStage *this,float param_1)

{
  undefined4 uVar1;
  int iVar2;
  uint in_fpscr;
  float fVar3;
  
  *(float *)(this + 0x184) = *(float *)(this + 0x184) * 0.9;
  uVar1 = FUN_0041844c();
  fVar3 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  if (0.9 < fVar3 / 1.0737418e+09 - 1.0) {
    *(undefined4 *)(this + 0x184) = 0x41200000;
  }
  iVar2 = (**(code **)(**(int **)(this + 0x17c) + 0x1d8))(*(undefined4 *)(this + 0x17c));
  (**(code **)(**(int **)(iVar2 + 0xf0) + 0x98))
            (*(int **)(iVar2 + 0xf0),*(undefined4 *)(this + 0x184));
  return;
}
