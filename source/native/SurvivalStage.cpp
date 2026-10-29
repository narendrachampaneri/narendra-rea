// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 18 functions

// ---- SurvivalStage::create  @ 0x40e5dc
/* SurvivalStage::create() */

SurvivalStage * SurvivalStage::create(void)

{
  bool bVar1;
  SurvivalStage *this;
  int iVar2;
  
  this = operator_new(0x194);
  SurvivalStage(this);
  if ((this == (SurvivalStage *)0x0) ||
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
    if (this != (SurvivalStage *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (SurvivalStage *)0x0;
  }
  return this;
}

// ---- SurvivalStage::SurvivalStage  @ 0x412d3c
/* SurvivalStage::SurvivalStage() */

SurvivalStage * __thiscall SurvivalStage::SurvivalStage(SurvivalStage *this)

{
  Stage::Stage((Stage *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091c838;
  *(undefined ***)(this + 0xe4) = &PTR__SurvivalStage_1_0091ca9c;
  *(undefined **)(this + 0xe8) = &DAT_0091cacc;
  *(undefined **)(this + 0xec) = &DAT_0091cad8;
  return this;
}

// ---- SurvivalStage::init  @ 0x412d94
/* SurvivalStage::init() */

bool __thiscall SurvivalStage::init(SurvivalStage *this)

{
  char cVar1;
  
  cVar1 = Stage::init((Stage *)this);
  return cVar1 == '\x01';
}

// ---- SurvivalStage::~SurvivalStage  @ 0x412dc4
/* WARNING: Removing unreachable block (ram,0x00412e28) */
/* SurvivalStage::~SurvivalStage() */

SurvivalStage * __thiscall SurvivalStage::~SurvivalStage(SurvivalStage *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_0091c838;
  *(undefined ***)(this + 0xe4) = &PTR__SurvivalStage_1_0091ca9c;
  *(undefined **)(this + 0xe8) = &DAT_0091cacc;
  *(undefined **)(this + 0xec) = &DAT_0091cad8;
  cocos2d::CCObject::release(*(CCObject **)(this + 0x170));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x16c));
  Stage::~Stage((Stage *)this);
  return this;
}

// ---- SurvivalStage::~SurvivalStage  @ 0x412e40
/* non-virtual thunk to SurvivalStage::~SurvivalStage() */

void __thiscall SurvivalStage::~SurvivalStage(SurvivalStage *this)

{
  ~SurvivalStage(this + -0xe4);
  return;
}

// ---- SurvivalStage::~SurvivalStage  @ 0x412e48
/* SurvivalStage::~SurvivalStage() */

SurvivalStage * __thiscall SurvivalStage::~SurvivalStage(SurvivalStage *this)

{
  ~SurvivalStage(this);
  operator_delete(this);
  return this;
}

// ---- SurvivalStage::~SurvivalStage  @ 0x412e64
/* non-virtual thunk to SurvivalStage::~SurvivalStage() */

void __thiscall SurvivalStage::~SurvivalStage(SurvivalStage *this)

{
  ~SurvivalStage(this + -0xe4);
  return;
}

// ---- SurvivalStage::setupStage  @ 0x412e70
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00413180 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SurvivalStage::setupStage() */

void SurvivalStage::setupStage(void)

{
  int *piVar1;
  Stage *in_r0;
  EnemyManager *this;
  undefined4 uVar2;
  AvatarRenderer *pAVar3;
  SoldierView *pSVar4;
  WeaponFactory *pWVar5;
  int iVar6;
  CCNotificationCenter *pCVar7;
  code *pcVar8;
  undefined4 uVar9;
  undefined4 in_s1;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  Stage *local_3c;
  CCTexture2D *local_38;
  CCTexture2D *local_34;
  CCTexture2D *local_30;
  CCTexture2D *local_2c;
  code *local_28;
  undefined4 local_24;
  code *local_20;
  undefined4 local_1c;
  code *local_18;
  undefined4 local_14;
  
  local_3c = in_r0;
  Stage::setupStage(in_r0);
  *(undefined1 *)(*(int *)(local_3c + 0x110) + 0x44) = 0;
  *(undefined1 *)(soldierManager + 0x35) = 0;
  *(undefined4 *)(soldierManager + 0x24) = 3;
  HUD::updateLifeCount(*(HUD **)(local_3c + 0x10c),*(int *)(soldierManager + 0x24));
  *(undefined1 *)(*(int *)(local_3c + 0x10c) + 0x1c4) = 0;
  this = operator_new(0x50);
  EnemyManager::EnemyManager(this);
  *(EnemyManager **)(local_3c + 0x170) = this;
  uVar2 = SoldierAIController::create();
  *(undefined4 *)(local_3c + 0x16c) = uVar2;
  cocos2d::CCObject::retain(*(CCObject **)(local_3c + 0x16c));
  pcVar8 = *(code **)(**(int **)(local_3c + 0x16c) + 0x1d4);
  uVar9 = *(undefined4 *)(local_3c + 0x16c);
  uVar2 = SoldierView::create();
  (*pcVar8)(uVar9,uVar2);
  (**(code **)(**(int **)(local_3c + 0x16c) + 0x228))(*(undefined4 *)(local_3c + 0x16c));
  *(undefined4 *)(*(int *)(*(int *)(local_3c + 0x16c) + 0x13c) + 0x54) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(local_3c + 0x16c) + 0x13c) + 0x5c) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(local_3c + 0x16c) + 0x13c) + 0x58) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(local_3c + 0x16c) + 0x140) + 0x54) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(local_3c + 0x16c) + 0x140) + 0x5c) = 0x15;
  *(undefined4 *)(*(int *)(*(int *)(local_3c + 0x16c) + 0x140) + 0x58) = 0x15;
  *(undefined1 *)(*(int *)(local_3c + 0x16c) + 0x15b) = 1;
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_38 = (CCTexture2D *)AvatarRenderer::getHeadTexture(pAVar3,(CCArray *)0x0,7);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_34 = (CCTexture2D *)AvatarRenderer::getBodyTexture(pAVar3,(CCArray *)0x0,7);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_30 = (CCTexture2D *)AvatarRenderer::getArmTexture(pAVar3,(CCArray *)0x0,7);
  pAVar3 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  local_2c = (CCTexture2D *)AvatarRenderer::getLegTexture(pAVar3,(CCArray *)0x0,7);
  pSVar4 = (SoldierView *)
           (**(code **)(**(int **)(local_3c + 0x16c) + 0x1d8))(*(undefined4 *)(local_3c + 0x16c));
  SoldierView::setPlayerSkin(pSVar4,7,local_38,local_34,local_30,local_2c);
  pSVar4 = (SoldierView *)
           (**(code **)(**(int **)(local_3c + 0x16c) + 0x1d8))(*(undefined4 *)(local_3c + 0x16c));
  FUN_0079a3f4(&local_20);
  FUN_007c6a60(&local_18,"SARGE",&local_20);
  SoldierView::setPlayerName(pSVar4,&local_18);
  FUN_007c5914(&local_18);
  FUN_0079a3fc(&local_20);
  piVar1 = worldLayer;
  pcVar8 = *(code **)(*worldLayer + 0xcc);
  uVar2 = (**(code **)(**(int **)(local_3c + 0x16c) + 0x1d8))(*(undefined4 *)(local_3c + 0x16c));
  (*pcVar8)(piVar1,uVar2,3);
  pcVar8 = *(code **)(**(int **)(local_3c + 0x16c) + 0x214);
  uVar9 = *(undefined4 *)(local_3c + 0x16c);
  pWVar5 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar2 = WeaponFactory::createWeaponFromAmmoType(pWVar5,5);
  (*pcVar8)(uVar9,uVar2);
  pcVar8 = *(code **)(**(int **)(local_3c + 0x16c) + 0x21c);
  uVar9 = *(undefined4 *)(local_3c + 0x16c);
  pWVar5 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
  uVar2 = WeaponFactory::createWeaponFromAmmoType(pWVar5,5);
  (*pcVar8)(uVar9,uVar2);
  iVar6 = (**(code **)(**(int **)(local_3c + 0x16c) + 500))(*(undefined4 *)(local_3c + 0x16c));
  *(undefined4 *)(iVar6 + 0x15c) = 0x3e75c28f;
  iVar6 = (**(code **)(**(int **)(local_3c + 0x16c) + 0x1fc))(*(undefined4 *)(local_3c + 0x16c));
  *(undefined4 *)(iVar6 + 0x15c) = 0x3e800000;
  *(undefined4 *)(local_3c + 0x17c) = 0;
  pcVar8 = *(code **)(**(int **)(local_3c + 0x16c) + 0x24c);
  uVar2 = *(undefined4 *)(local_3c + 0x16c);
  FUN_007c64e8(&local_18,&sargePeerId);
  (*pcVar8)(uVar2,&local_18);
  FUN_007c5914(&local_18);
  iVar6 = *(int *)(*(int *)(local_3c + 0x16c) + 0x138);
  FUN_00411e2c(0,in_s1,0,&local_50);
  *(undefined4 *)(iVar6 + 0x28) = local_50;
  *(undefined4 *)(iVar6 + 0x2c) = uStack_4c;
  *(undefined4 *)(iVar6 + 0x30) = uStack_48;
  *(undefined4 *)(iVar6 + 0x34) = uStack_44;
  resetSpawnTime((SurvivalStage *)local_3c);
  *(undefined4 *)(local_3c + 0x174) = 0;
  *(undefined4 *)(local_3c + 0x180) = hostSoldier;
  *(undefined4 *)(local_3c + 0x184) = 0;
  *(undefined4 *)(local_3c + 0x188) = 0;
  *(undefined4 *)(local_3c + 400) = 0;
  Sound::stopMusic();
  pCVar7 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_28 = (code *)0x4135f1;
  local_24 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar7,(CCObject *)local_3c,(_func_void_CCObject_ptr *)0x4135f1,(char *)0x0,
             (CCObject *)"RetryGame");
  pCVar7 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_20 = (code *)0x413569;
  local_1c = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar7,(CCObject *)local_3c,(_func_void_CCObject_ptr *)0x413569,(char *)0x0,
             (CCObject *)"EnemyAdded");
  pCVar7 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_18 = (code *)0x4132d1;
  local_14 = 0;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar7,(CCObject *)local_3c,(_func_void_CCObject_ptr *)0x4132d1,(char *)0x0,
             (CCObject *)"PlayerScored");
  EnemyManager::initEnemies(*(EnemyManager **)(local_3c + 0x170));
  return;
}

// ---- SurvivalStage::playerScored  @ 0x4132d0
/* SurvivalStage::playerScored(cocos2d::CCObject*) */

void __thiscall SurvivalStage::playerScored(SurvivalStage *this,CCObject *param_1)

{
  bool bVar1;
  Sound *pSVar2;
  CCString *this_00;
  undefined4 uVar3;
  int iVar4;
  uint in_fpscr;
  float fVar5;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  CCObject *local_14;
  
  local_14 = param_1;
  this_00 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)param_1,0);
  uVar3 = cocos2d::CCString::getCString(this_00);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(auStack_18,uVar3,auStack_1c,auStack_1c,param_1,this);
  FUN_0079a3fc(auStack_1c);
  iVar4 = FUN_007c567c(auStack_18,&sargePeerId);
  if (iVar4 == 0) {
    uVar3 = FUN_00411dc4();
    fVar5 = (float)VectorSignedToFloat(uVar3,(byte)(in_fpscr >> 0x16) & 3);
    if (0.0 <= fVar5 / 1.0737418e+09 - 1.0) {
      bVar1 = true;
      goto LAB_00413352;
    }
  }
  bVar1 = false;
LAB_00413352:
  pSVar2 = sndEng;
  if (bVar1) {
    iVar4 = Sound::getRandomTaunt(sndEng);
    Sound::playSoundWithVoice((int)pSVar2,iVar4);
  }
  FUN_007c5914(auStack_18);
  return;
}

// ---- SurvivalStage::resetSpawnTime  @ 0x4133ac
/* SurvivalStage::resetSpawnTime() */

void __thiscall SurvivalStage::resetSpawnTime(SurvivalStage *this)

{
  *(undefined4 *)(this + 0x178) = 0x41000000;
  return;
}

// ---- SurvivalStage::spawnEnemy  @ 0x4133c0
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00413440 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SurvivalStage::spawnEnemy() */

void SurvivalStage::spawnEnemy(void)

{
  int in_r0;
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  uint in_fpscr;
  undefined4 in_s1;
  float fVar5;
  undefined4 local_18;
  undefined4 uStack_14;
  undefined4 uStack_c;
  
  uVar1 = FUN_00411dc4();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  iVar3 = (int)(longlong)ABS((fVar5 / 1.0737418e+09 - 1.0) * 2.99);
  uVar1 = FUN_00411dc4();
  fVar5 = (float)VectorSignedToFloat(uVar1,(byte)(in_fpscr >> 0x16) & 3);
  FUN_00411e2c(SUB84((double)ABS((fVar5 / 1.0737418e+09 - 1.0) * 2500.0) + 250.0,0),in_s1,0,
               &local_18);
  if ((iVar3 == 0) &&
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(*(int *)(in_r0 + 0x170) + 0x20)),
     iVar2 != 0)) {
    bVar4 = true;
  }
  else {
    bVar4 = false;
  }
  if (bVar4) {
    iVar3 = EnemyManager::addHawkDrone(*(undefined4 *)(in_r0 + 0x170),uStack_c,local_18,uStack_14);
    if (iVar3 != 0) {
      *(undefined4 *)(iVar3 + 0x15c) = 2;
    }
  }
  else {
    if ((iVar3 == 1) &&
       (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(*(int *)(in_r0 + 0x170) + 0x24)),
       iVar2 != 0)) {
      bVar4 = true;
    }
    else {
      bVar4 = false;
    }
    if (bVar4) {
      iVar3 = EnemyManager::addHumanoidDrone
                        (*(undefined4 *)(in_r0 + 0x170),uStack_c,local_18,uStack_14);
      if (iVar3 != 0) {
        *(undefined4 *)(iVar3 + 0x15c) = 2;
      }
    }
    else {
      if ((iVar3 == 2) &&
         (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(*(int *)(in_r0 + 0x170) + 0x28)),
         iVar3 != 0)) {
        bVar4 = true;
      }
      else {
        bVar4 = false;
      }
      if ((bVar4) &&
         (iVar3 = EnemyManager::addWormDrone
                            (*(undefined4 *)(in_r0 + 0x170),uStack_c,local_18,uStack_14), iVar3 != 0
         )) {
        *(undefined4 *)(iVar3 + 0x15c) = 2;
      }
    }
  }
  return;
}

// ---- SurvivalStage::onEnemyAdded  @ 0x413568
/* SurvivalStage::onEnemyAdded(cocos2d::CCObject*) */

void __thiscall SurvivalStage::onEnemyAdded(SurvivalStage *this,CCObject *param_1)

{
  undefined4 uVar1;
  Radar *pRVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_10,uVar1,auStack_c);
  FUN_0079a3fc(auStack_c);
  pRVar2 = *(Radar **)(*(int *)(this + 0x10c) + 0x100);
  FUN_007c64e8(auStack_c,auStack_10);
  Radar::addAlert(pRVar2,auStack_c);
  FUN_007c5914(auStack_c);
  FUN_007c5914(auStack_10);
  return;
}

// ---- SurvivalStage::onRetryGame  @ 0x4135f0
/* SurvivalStage::onRetryGame(cocos2d::CCObject*) */

void SurvivalStage::onRetryGame(CCObject *param_1)

{
  ScoreKeeper *this;
  
  *(undefined4 *)(soldierManager + 0x24) = 4;
  EnemyManager::killAllEnemies(*(EnemyManager **)(param_1 + 0x170));
  SoldierManager::respawnPlayer(soldierManager);
  this = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  ScoreKeeper::clearScores(this);
  param_1[0x150] = (CCObject)0x0;
  WeaponManager::removeAllWeapons(*(WeaponManager **)(param_1 + 0x110));
  resetSpawnTime((SurvivalStage *)param_1);
  MenuScreen::endRound(*(MenuScreen **)(*(int *)(param_1 + 0x10c) + 0xec));
  *(undefined1 *)(*(int *)(param_1 + 0x10c) + 0x1c5) = 0;
  return;
}

// ---- SurvivalStage::onPlayerDead  @ 0x413670
/* SurvivalStage::onPlayerDead(cocos2d::CCObject*) */

void __thiscall SurvivalStage::onPlayerDead(SurvivalStage *this,CCObject *param_1)

{
  Stage::onPlayerDead((Stage *)this,param_1);
  MenuScreen::endRound(*(MenuScreen **)(*(int *)(this + 0x10c) + 0xec));
  return;
}

// ---- SurvivalStage::updateStep  @ 0x413d00
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x00413d56 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SurvivalStage::updateStep(float) */

void SurvivalStage::updateStep(float param_1)

{
  SurvivalStage *in_r0;
  undefined4 in_r1;
  int iVar1;
  undefined4 in_fpscr;
  byte bVar2;
  float fVar3;
  undefined4 in_s1;
  double dVar4;
  undefined4 local_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 local_18;
  SurvivalStage *local_14;
  
  bVar2 = (byte)((uint)in_fpscr >> 0x18);
  local_18 = in_r1;
  local_14 = in_r0;
  Stage::updateStep(param_1);
  dVar4 = *(double *)(*(int *)(hostSoldier + 0x138) + 0x28);
  if ((char)(bVar2 & 0xf | (byte)(((uint)(dVar4 < 100.0) << 0x1f) >> 0x18) |
             (byte)(((uint)(dVar4 == 100.0) << 0x1e) >> 0x18) |
            (byte)(((uint)(100.0 <= dVar4) << 0x1d) >> 0x18)) < '\0') {
    iVar1 = *(int *)(hostSoldier + 0x138);
    FUN_00411e2c(0,in_s1,(int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x30),&local_28);
    *(undefined4 *)(iVar1 + 0x28) = local_28;
    *(undefined4 *)(iVar1 + 0x2c) = uStack_24;
    *(undefined4 *)(iVar1 + 0x30) = uStack_20;
    *(undefined4 *)(iVar1 + 0x34) = uStack_1c;
  }
  if (3090.0 < *(double *)(*(int *)(hostSoldier + 0x138) + 0x28)) {
    iVar1 = *(int *)(hostSoldier + 0x138);
    FUN_00411e2c(0,in_s1,(int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x30),&local_28);
    *(undefined4 *)(iVar1 + 0x28) = local_28;
    *(undefined4 *)(iVar1 + 0x2c) = uStack_24;
    *(undefined4 *)(iVar1 + 0x30) = uStack_20;
    *(undefined4 *)(iVar1 + 0x34) = uStack_1c;
  }
  if (*(int *)(soldierManager + 0x24) < 1) {
    if (local_14[0x150] != (SurvivalStage)0x1) {
      local_14[0x150] = (SurvivalStage)0x1;
      *(undefined1 *)(*(int *)(local_14 + 0x10c) + 0x1c5) = 1;
      MenuScreen::endSurvival(*(MenuScreen **)(*(int *)(local_14 + 0x10c) + 0xec));
    }
  }
  if (PAUSED != '\x01') {
    fVar3 = (float)(**(code **)(**(int **)(local_14 + 0x16c) + 0x1dc))
                             (*(undefined4 *)(local_14 + 0x16c),local_18);
    fVar3 = (float)updateSarge(local_14,fVar3);
    fVar3 = (float)EnemyManager::updateStep(*(EnemyManager **)(local_14 + 0x170),fVar3);
    doLesson(fVar3);
  }
  return;
}

// ---- SurvivalStage::playRound  @ 0x413e60
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x0041410c */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SurvivalStage::playRound(float) */

void SurvivalStage::playRound(float param_1)

{
  int in_r0;
  WeaponFactory *pWVar1;
  Item *pIVar2;
  HawkDrone *this;
  WormDrone *this_00;
  HumanoidDrone *this_01;
  int *piVar3;
  float in_r1;
  int iVar4;
  code *pcVar5;
  undefined4 in_fpscr;
  byte bVar6;
  float fVar7;
  float in_s1;
  float extraout_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar8;
  float local_6c;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30 [2];
  undefined4 local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  *(float *)(in_r0 + 0x18c) = *(float *)(in_r0 + 0x18c) + in_r1;
  *(float *)(in_r0 + 400) = *(float *)(in_r0 + 400) + in_r1;
  bVar6 = (byte)((uint)in_fpscr >> 0x18) & 0xf;
  if (60.0 < *(float *)(in_r0 + 400)) {
    *(undefined4 *)(in_r0 + 400) = 0;
    pWVar1 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
    pIVar2 = (Item *)WeaponFactory::createWeaponFromAmmoType(pWVar1,2);
    pcVar5 = *(code **)(*(int *)pIVar2 + 0x200);
    (**(code **)(*hostSoldier + 0x1c0))(&local_20,hostSoldier);
    (*pcVar5)(pIVar2,&local_20);
    fVar7 = (float)FUN_007c5914(&local_20);
    pcVar5 = *(code **)(*(int *)pIVar2 + 0x4c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,fVar7,extraout_s1);
    (*pcVar5)(pIVar2,&local_20);
    (**(code **)(*(int *)pIVar2 + 0x288))(pIVar2,10);
    WeaponManager::addItem(*(WeaponManager **)(in_r0 + 0x110),pIVar2);
    in_s1 = extraout_s1;
  }
  bVar6 = bVar6 & 0xf;
  if (20.0 < *(float *)(in_r0 + 0x18c)) {
    *(undefined4 *)(in_r0 + 0x18c) = 0;
    *(float *)(in_r0 + 0x178) = *(float *)(in_r0 + 0x178) - 0.5;
  }
  *(float *)(in_r0 + 0x174) = *(float *)(in_r0 + 0x174) + in_r1;
  if (*(float *)(in_r0 + 0x178) <= 1.0) {
    fVar7 = 1.0;
  }
  else {
    fVar7 = *(float *)(in_r0 + 0x178);
  }
  if (fVar7 < *(float *)(in_r0 + 0x174)) {
    spawnEnemy();
    *(undefined4 *)(in_r0 + 0x174) = 0;
  }
  this = (HawkDrone *)EnemyManager::getNextHawk(*(EnemyManager **)(in_r0 + 0x170));
  if (this != (HawkDrone *)0x0) {
    iVar4 = hostSoldier[0x4e];
    (**(code **)(*(int *)this + 0x1ec))
              (this,*(undefined4 *)(iVar4 + 0x34),*(undefined4 *)(iVar4 + 0x28),
               *(undefined4 *)(iVar4 + 0x2c));
    HawkDrone::lookForTarget(this);
  }
  this_00 = (WormDrone *)EnemyManager::getNextWorm(*(EnemyManager **)(in_r0 + 0x170));
  if (this_00 != (WormDrone *)0x0) {
    iVar4 = hostSoldier[0x4e];
    (**(code **)(*(int *)this_00 + 0x1ec))
              (this_00,*(undefined4 *)(iVar4 + 0x34),*(undefined4 *)(iVar4 + 0x28),
               *(undefined4 *)(iVar4 + 0x2c));
    WormDrone::lookForTarget(this_00);
  }
  this_01 = (HumanoidDrone *)EnemyManager::getNextHumanoid(*(EnemyManager **)(in_r0 + 0x170));
  if (this_01 != (HumanoidDrone *)0x0) {
    iVar4 = hostSoldier[0x4e];
    (**(code **)(*(int *)this_01 + 0x1ec))
              (this_01,*(undefined4 *)(iVar4 + 0x34),*(undefined4 *)(iVar4 + 0x28),
               *(undefined4 *)(iVar4 + 0x2c));
    HumanoidDrone::lookForTarget(this_01);
  }
  piVar3 = (int *)EnemyManager::getNextEnemy(*(EnemyManager **)(in_r0 + 0x170));
  if (piVar3 != (int *)0x0) {
    local_6c = 500.0;
    (**(code **)(*piVar3 + 0x1ac))(local_50,piVar3);
    iVar4 = *(int *)(*(int *)(in_r0 + 0x16c) + 0x138);
    FUN_00411eac(local_50[0],in_s1,local_48,in_s3,(int)*(undefined8 *)(iVar4 + 0x28),in_s5,
                 (int)*(undefined8 *)(iVar4 + 0x30),&local_40);
    dVar8 = (double)cpvlength(local_40,uStack_3c,uStack_38,uStack_34);
    fVar7 = (float)dVar8;
    if (*(int *)(in_r0 + 0x180) != 0) {
      (**(code **)(**(int **)(in_r0 + 0x180) + 0x1ac))(local_30,*(undefined4 *)(in_r0 + 0x180));
      iVar4 = *(int *)(*(int *)(in_r0 + 0x16c) + 0x138);
      FUN_00411eac(local_30[0],in_s1,local_28,in_s3,(int)*(undefined8 *)(iVar4 + 0x28),in_s5,
                   (int)*(undefined8 *)(iVar4 + 0x30),&local_20);
      dVar8 = (double)cpvlength(local_20,uStack_1c,uStack_18,uStack_14);
      local_6c = (float)dVar8;
    }
    if ((char)(bVar6 & 0xf | (byte)(((uint)(fVar7 < local_6c) << 0x1f) >> 0x18) |
               (byte)(((uint)(fVar7 == local_6c) << 0x1e) >> 0x18) |
              (byte)(((uint)(local_6c <= fVar7) << 0x1d) >> 0x18)) < '\0') {
      *(int **)(in_r0 + 0x180) = piVar3;
    }
  }
  return;
}

// ---- SurvivalStage::doLesson  @ 0x4141c8
/* WARNING: Heritage AFTER dead removal. Example location: s1 : 0x004144b8 */
/* WARNING: Restarted to delay deadcode elimination for space: register */
/* SurvivalStage::doLesson(float) */

void SurvivalStage::doLesson(float param_1)

{
  uint uVar1;
  Sound *pSVar2;
  undefined3 uVar3;
  int in_r0;
  float in_r1;
  int iVar4;
  uint extraout_r3;
  uint uVar5;
  HUD *pHVar6;
  undefined4 uVar7;
  uint in_fpscr;
  undefined4 in_s1;
  undefined4 in_s3;
  undefined4 in_s5;
  double dVar8;
  undefined4 local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_14;
  
  *(float *)(in_r0 + 0x188) = *(float *)(in_r0 + 0x188) + in_r1;
  switch(*(undefined4 *)(in_r0 + 0x184)) {
  case 0:
    iVar4 = *(int *)(*(int *)(in_r0 + 0x16c) + 0x138);
    FUN_00411eac((int)*(undefined8 *)(iVar4 + 0x28),in_s1,(int)*(undefined8 *)(iVar4 + 0x30),in_s3,
                 (int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x28),in_s5,
                 (int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x30),&local_50);
    dVar8 = (double)cpvlength(local_50,uStack_4c,uStack_48,uStack_44);
    uVar1 = in_fpscr & 0xfffffff | (uint)(dVar8 < 150.0) << 0x1f | (uint)(dVar8 == 150.0) << 0x1e |
            (uint)(150.0 <= dVar8) << 0x1d;
    uVar5 = extraout_r3;
    if (-1 < (int)uVar1) {
      uVar5 = 0;
    }
    if ((int)uVar1 < 0) {
      uVar5 = 1;
    }
    if ((uVar5 & 0xff) != 0) {
      pHVar6 = *(HUD **)(in_r0 + 0x10c);
      FUN_0079a3f4(&local_30);
      FUN_007c6a60(&local_20,"SARGE: LOCK N\' LOAD,CADET!",&local_30);
      uVar3 = FUN_00411dd0(0,0,0xff);
      HUD::addMessage(pHVar6,&local_20,uVar3,3);
      FUN_007c5914(&local_20);
      FUN_0079a3fc(&local_30);
      *(int *)(in_r0 + 0x184) = *(int *)(in_r0 + 0x184) + 1;
      *(undefined4 *)(in_r0 + 0x188) = 0;
      Sound::playSoundWithVoice((int)sndEng,0x25);
    }
    break;
  case 1:
    if (3.0 < *(float *)(in_r0 + 0x188)) {
      *(int *)(in_r0 + 0x184) = *(int *)(in_r0 + 0x184) + 1;
      pHVar6 = *(HUD **)(in_r0 + 0x10c);
      FUN_0079a3f4(&local_30);
      FUN_007c6a60(&local_20,"SARGE: MECHA-DOODLE HAS CONTROL OF ALL ROBOT UNITS!",&local_30);
      uVar3 = FUN_00411dd0(0,0,0xff);
      HUD::addMessage(pHVar6,&local_20,uVar3,4);
      FUN_007c5914(&local_20);
      FUN_0079a3fc(&local_30);
      *(undefined4 *)(in_r0 + 0x188) = 0;
      Sound::playSoundWithVoice((int)sndEng,0x26);
    }
    break;
  case 2:
    if (4.0 < *(float *)(in_r0 + 0x188)) {
      *(int *)(in_r0 + 0x184) = *(int *)(in_r0 + 0x184) + 1;
      pHVar6 = *(HUD **)(in_r0 + 0x10c);
      FUN_0079a3f4(&local_30);
      FUN_007c6a60(&local_20,"SARGE: STICK WITH ME, THIS COULD GET UGLY!",&local_30);
      uVar3 = FUN_00411dd0(0,0,0xff);
      HUD::addMessage(pHVar6,&local_20,uVar3,2);
      FUN_007c5914(&local_20);
      FUN_0079a3fc(&local_30);
      *(undefined4 *)(in_r0 + 0x188) = 0;
      Sound::playSoundWithVoice((int)sndEng,0x27);
      pSVar2 = sndEng;
      FUN_0079a3f4(&local_30);
      FUN_007c6a60(&local_20,"presMix.mp3",&local_30);
      Sound::playMusicFile(pSVar2,&local_20,0x3dcccccd,1);
      FUN_007c5914(&local_20);
      FUN_0079a3fc(&local_30);
      uVar7 = *(undefined4 *)(in_r0 + 0x170);
      FUN_00411e2c((int)*(undefined8 *)(*(int *)(hostSoldier + 0x138) + 0x28),in_s1,0,&local_40);
      EnemyManager::addHawkDrone(uVar7,uStack_34,local_40,uStack_3c);
      uVar7 = *(undefined4 *)(in_r0 + 0x170);
      FUN_00411e2c(SUB84(*(double *)(*(int *)(hostSoldier + 0x138) + 0x28) + 100.0,0),in_s1,0,
                   &local_30);
      EnemyManager::addHawkDrone(uVar7,uStack_24,local_30,uStack_2c);
      uVar7 = *(undefined4 *)(in_r0 + 0x170);
      FUN_00411e2c(SUB84(*(double *)(*(int *)(hostSoldier + 0x138) + 0x28) - 100.0,0),in_s1,0,
                   &local_20);
      EnemyManager::addHawkDrone(uVar7,uStack_14,local_20,uStack_1c);
      *(undefined4 *)(in_r0 + 0x180) = 0;
    }
    break;
  case 3:
    playRound(param_1);
  }
  return;
}

// ---- SurvivalStage::returnToLobby  @ 0x4145f0
/* SurvivalStage::returnToLobby(cocos2d::CCObject*) */

void SurvivalStage::returnToLobby(CCObject *param_1)

{
  CCNotificationCenter *pCVar1;
  
  SoldierManager::removeRemotePlayers(soldierManager);
  Sound::loadMapSounds(sndEng,3);
  if (param_1[0x151] == (CCObject)0x0) {
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar1,"EndedGame",(CCObject *)0x0);
  }
  else {
    pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::postNotification(pCVar1,"CompleteGame",(CCObject *)0x0);
  }
  return;
}
