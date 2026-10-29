// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 14 functions

// ---- ScoreList::create  @ 0x3be4fc
/* ScoreList::create() */

ScoreList * ScoreList::create(void)

{
  bool bVar1;
  ScoreList *this;
  int iVar2;
  
  this = operator_new(0xf0);
  ScoreList(this);
  if ((this == (ScoreList *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0))
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
    if (this != (ScoreList *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (ScoreList *)0x0;
  }
  return this;
}

// ---- ScoreList::ScoreList  @ 0x3e48cc
/* ScoreList::ScoreList() */

ScoreList * __thiscall ScoreList::ScoreList(ScoreList *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_0091a7d8;
  return this;
}

// ---- ScoreList::init  @ 0x3e48f8
/* ScoreList::init() */

bool __thiscall ScoreList::init(ScoreList *this)

{
  char cVar1;
  undefined4 uVar2;
  code *pcVar3;
  undefined8 uVar4;
  CCPoint aCStack_18 [12];
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    uVar2 = cocos2d::CCLabelAtlas::create("SCORE","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xec) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar4 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xec),0x18);
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x7c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    uVar4 = (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),0x3f000000);
    pcVar3 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar2 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar4,(float)((ulonglong)uVar4 >> 0x20));
    (*pcVar3)(uVar2,aCStack_18);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),0);
    uVar2 = cocos2d::CCDictionary::create();
    *(undefined4 *)(this + 0xe4) = uVar2;
    uVar2 = cocos2d::CCDictionary::create();
    *(undefined4 *)(this + 0xe8) = uVar2;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
  }
  return cVar1 == '\x01';
}

// ---- ScoreList::~ScoreList  @ 0x3e4a2c
/* WARNING: Removing unreachable block (ram,0x003e4a8c) */
/* ScoreList::~ScoreList() */

ScoreList * __thiscall ScoreList::~ScoreList(ScoreList *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_0091a7d8;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- ScoreList::~ScoreList  @ 0x3e4aa4
/* ScoreList::~ScoreList() */

ScoreList * __thiscall ScoreList::~ScoreList(ScoreList *this)

{
  ~ScoreList(this);
  operator_delete(this);
  return this;
}

// ---- ScoreList::updateScores  @ 0x3e4ac0
/* ScoreList::updateScores() */

void __thiscall ScoreList::updateScores(ScoreList *this)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  ScoreKeeper *pSVar4;
  CCString *pCVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  uint uVar8;
  undefined4 *puVar9;
  int *piVar10;
  code *pcVar11;
  uint in_fpscr;
  float extraout_s0;
  float extraout_s1;
  undefined8 uVar12;
  undefined1 auStack_88 [4];
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  undefined1 auStack_70 [4];
  string asStack_6c [4];
  CCDictElement *local_68;
  CCDictElement *local_64;
  CCDictElement *local_60;
  uint local_5c;
  uint local_58;
  TeamRow *local_54;
  ScoreRow *local_50;
  int local_4c;
  int local_48;
  int local_44;
  TeamRow *local_40;
  undefined4 local_3c;
  int *local_38;
  int *local_34;
  TeamRow *local_30 [2];
  vector<TeamRow*,std::allocator<TeamRow*>> avStack_28 [12];
  vector<ScoreRow*,std::allocator<ScoreRow*>> avStack_1c [12];
  
  std::vector<TeamRow*,std::allocator<TeamRow*>>::vector(avStack_28);
  std::vector<ScoreRow*,std::allocator<ScoreRow*>>::vector(avStack_1c);
  local_68 = (CCDictElement *)0x0;
  local_64 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0xe8) == 0) ||
     (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe8)), iVar3 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_68 = *(CCDictElement **)(*(int *)(this + 0xe8) + 0x14);
    if (*(int *)(*(int *)(this + 0xe8) + 0x14) == 0) {
      local_64 = (CCDictElement *)0x0;
    }
    else {
      local_64 = *(CCDictElement **)(*(int *)(*(int *)(this + 0xe8) + 0x14) + 0x110);
    }
    while (local_68 != (CCDictElement *)0x0) {
      local_54 = (TeamRow *)cocos2d::CCDictElement::getObject(local_68);
      FUN_0079a3f4(local_30);
      FUN_007c6a60(auStack_88,&DAT_007e7544,local_30);
      TeamRow::setKillScore(local_54,auStack_88);
      FUN_007c5914(auStack_88);
      FUN_0079a3fc(local_30);
      local_30[0] = (TeamRow *)cocos2d::CCDictElement::getObject(local_68);
      std::vector<TeamRow*,std::allocator<TeamRow*>>::push_back(avStack_28,local_30);
      local_68 = local_64;
      if (local_64 == (CCDictElement *)0x0) {
        local_64 = (CCDictElement *)0x0;
      }
      else {
        local_64 = *(CCDictElement **)(local_64 + 0x110);
      }
    }
  }
  local_60 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0xe4) == 0) ||
     (iVar3 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe4)), iVar3 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_68 = *(CCDictElement **)(*(int *)(this + 0xe4) + 0x14);
    if (*(int *)(*(int *)(this + 0xe4) + 0x14) == 0) {
      local_60 = (CCDictElement *)0x0;
    }
    else {
      local_60 = *(CCDictElement **)(*(int *)(*(int *)(this + 0xe4) + 0x14) + 0x110);
    }
    while (local_68 != (CCDictElement *)0x0) {
      local_50 = (ScoreRow *)cocos2d::CCDictElement::getObject(local_68);
      pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      FUN_007c64e8(auStack_84,local_50 + 0x104);
      local_4c = ScoreKeeper::getKills(pSVar4,auStack_84);
      FUN_007c5914(auStack_84);
      pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      FUN_007c64e8(auStack_80,local_50 + 0x104);
      local_48 = ScoreKeeper::getDeaths(pSVar4,auStack_80);
      FUN_007c5914(auStack_80);
      local_44 = local_4c - local_48;
      pCVar5 = (CCString *)cocos2d::CCString::createWithFormat("%d",local_4c);
      uVar6 = cocos2d::CCString::getCString(pCVar5);
      FUN_0079a3f4(local_30);
      FUN_007c6a60(auStack_7c,uVar6,local_30);
      ScoreRow::setKillScore(local_50,auStack_7c);
      FUN_007c5914(auStack_7c);
      FUN_0079a3fc(local_30);
      pCVar5 = (CCString *)cocos2d::CCString::createWithFormat("%d",local_48);
      uVar6 = cocos2d::CCString::getCString(pCVar5);
      FUN_0079a3f4(local_30);
      FUN_007c6a60(auStack_78,uVar6,local_30);
      ScoreRow::setDeaths(local_50,auStack_78);
      FUN_007c5914(auStack_78);
      FUN_0079a3fc(local_30);
      if (local_44 == 0) {
        pCVar5 = (CCString *)cocos2d::CCString::createWithFormat("0");
        uVar6 = cocos2d::CCString::getCString(pCVar5);
        FUN_0079a3f4(local_30);
        FUN_007c6a60(auStack_74,uVar6,local_30);
        ScoreRow::setSpread(local_50,auStack_74);
        FUN_007c5914(auStack_74);
        FUN_0079a3fc(local_30);
      }
      else if (local_44 < 1) {
        pCVar5 = (CCString *)cocos2d::CCString::createWithFormat("%d",local_44);
        uVar6 = cocos2d::CCString::getCString(pCVar5);
        FUN_0079a3f4(local_30);
        FUN_007c6a60(asStack_6c,uVar6,local_30);
        ScoreRow::setSpread(local_50,asStack_6c);
        FUN_007c5914(asStack_6c);
        FUN_0079a3fc(local_30);
      }
      else {
        pCVar5 = (CCString *)cocos2d::CCString::createWithFormat("+%d",local_44);
        uVar6 = cocos2d::CCString::getCString(pCVar5);
        FUN_0079a3f4(local_30);
        FUN_007c6a60(auStack_70,uVar6,local_30);
        ScoreRow::setSpread(local_50,auStack_70);
        FUN_007c5914(auStack_70);
        FUN_0079a3fc(local_30);
      }
      pCVar5 = (CCString *)
               cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(local_50 + 0x110));
      uVar6 = cocos2d::CCString::getCString(pCVar5);
      FUN_0079a3f4(local_30);
      FUN_007c6a60(asStack_6c,uVar6,local_30);
      FUN_0079a3fc(local_30);
      local_40 = (TeamRow *)
                 cocos2d::CCDictionary::objectForKey(*(CCDictionary **)(this + 0xe8),asStack_6c);
      if (local_40 != (TeamRow *)0x0) {
        pCVar5 = (CCString *)
                 cocos2d::CCString::createWithFormat("%d",local_4c + *(int *)(local_40 + 0xec));
        uVar6 = cocos2d::CCString::getCString(pCVar5);
        FUN_0079a3f4(auStack_70);
        FUN_007c6a60(local_30,uVar6,auStack_70);
        TeamRow::setKillScore(local_40,local_30);
        FUN_007c5914(local_30);
        FUN_0079a3fc(auStack_70);
      }
      local_30[0] = (TeamRow *)cocos2d::CCDictElement::getObject(local_68);
      std::vector<ScoreRow*,std::allocator<ScoreRow*>>::push_back(avStack_1c,(ScoreRow **)local_30);
      FUN_007c5914(asStack_6c);
      local_68 = local_60;
      if (local_60 == (CCDictElement *)0x0) {
        local_60 = (CCDictElement *)0x0;
      }
      else {
        local_60 = *(CCDictElement **)(local_60 + 0x110);
      }
    }
  }
  uVar6 = std::vector<ScoreRow*,std::allocator<ScoreRow*>>::begin(avStack_1c);
  uVar7 = std::vector<ScoreRow*,std::allocator<ScoreRow*>>::end(avStack_1c);
  std::
  sort<__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>,bool(*)(ScoreRow*,ScoreRow*)>
            (uVar6,uVar7,0x3e48a9);
  local_3c = 0x41a00000;
  for (local_5c = 0; uVar2 = local_5c,
      uVar8 = std::vector<ScoreRow*,std::allocator<ScoreRow*>>::size(avStack_1c), uVar2 < uVar8;
      local_5c = local_5c + 1) {
    puVar9 = (undefined4 *)
             std::vector<ScoreRow*,std::allocator<ScoreRow*>>::operator[](avStack_1c,local_5c);
    piVar10 = (int *)*puVar9;
    pcVar11 = *(code **)(*piVar10 + 0x4c);
    VectorSignedToFloat(local_5c,(byte)(in_fpscr >> 0x16) & 3);
    local_38 = piVar10;
    cocos2d::CCPoint::CCPoint((CCPoint *)local_30,extraout_s0,extraout_s1);
    (*pcVar11)(piVar10,local_30);
  }
  uVar6 = std::vector<TeamRow*,std::allocator<TeamRow*>>::begin(avStack_28);
  uVar7 = std::vector<TeamRow*,std::allocator<TeamRow*>>::end(avStack_28);
  std::
  sort<__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>,bool(*)(TeamRow*,TeamRow*)>
            (uVar6,uVar7,0x3e4885);
  for (local_58 = 0; uVar2 = local_58,
      uVar8 = std::vector<TeamRow*,std::allocator<TeamRow*>>::size(avStack_28), uVar2 < uVar8;
      local_58 = local_58 + 1) {
    puVar9 = (undefined4 *)
             std::vector<TeamRow*,std::allocator<TeamRow*>>::operator[](avStack_28,local_58);
    local_34 = (int *)*puVar9;
    uVar12 = (**(code **)(*local_34 + 0x90))(local_34,1);
    piVar10 = local_34;
    pcVar11 = *(code **)(*local_34 + 0x4c);
    VectorSignedToFloat(local_58,(byte)(in_fpscr >> 0x16) & 3);
    cocos2d::CCPoint::CCPoint((CCPoint *)local_30,(float)uVar12,(float)((ulonglong)uVar12 >> 0x20));
    (*pcVar11)(piVar10,local_30);
  }
  std::vector<ScoreRow*,std::allocator<ScoreRow*>>::~vector(avStack_1c);
  std::vector<TeamRow*,std::allocator<TeamRow*>>::~vector(avStack_28);
  return;
}

// ---- ScoreList::addSoldierScore  @ 0x3e5114
/* ScoreList::addSoldierScore(std::string, std::string, int) */

void __thiscall
ScoreList::addSoldierScore(ScoreList *this,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  CCString *this_00;
  CCDictionary *pCVar2;
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  ScoreRow *local_18;
  CCObject *local_14;
  
  local_18 = (ScoreRow *)ScoreRow::create();
  thunk_FUN_007c653c(local_18 + 0x104,param_3);
  FUN_007c64e8(asStack_1c,param_2);
  ScoreRow::setPlayerName(local_18,asStack_1c);
  FUN_007c5914(asStack_1c);
  ScoreRow::setPlayerTeamId(local_18,param_4);
  pCVar2 = *(CCDictionary **)(this + 0xe4);
  uVar1 = FUN_007c5300(param_3);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(asStack_1c,uVar1,auStack_20);
  cocos2d::CCDictionary::setObject(pCVar2,(CCObject *)local_18,asStack_1c);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_20);
  (**(code **)(*(int *)this + 200))(this,local_18);
  if (*(int *)(local_18 + 0x110) != 0) {
    local_14 = (CCObject *)TeamRow::create();
    pCVar2 = *(CCDictionary **)(this + 0xe8);
    this_00 = (CCString *)
              cocos2d::CCString::createWithFormat("%d",*(undefined4 *)(local_18 + 0x110));
    uVar1 = cocos2d::CCString::getCString(this_00);
    FUN_0079a3f4(auStack_20);
    FUN_007c6a60(asStack_1c,uVar1,auStack_20);
    cocos2d::CCDictionary::setObject(pCVar2,local_14,asStack_1c);
    FUN_007c5914(asStack_1c);
    FUN_0079a3fc(auStack_20);
    TeamRow::setColor((TeamRow *)local_14,
                      (uint)*(uint3 *)(teamColors + *(int *)(local_18 + 0x110) * 3));
    *(int *)(local_14 + 0xf0) = *(int *)(local_18 + 0x110);
    (**(code **)(*(int *)local_14 + 0x90))(local_14,0);
    (**(code **)(*(int *)this + 200))(this,local_14);
  }
  return;
}

// ---- ScoreList::setTitle  @ 0x3e52bc
/* ScoreList::setTitle(std::string) */

void __thiscall ScoreList::setTitle(ScoreList *this,undefined4 param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0xec) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0xec);
  uVar1 = FUN_007c5300(param_2);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- ScoreList::getScoreRow  @ 0x3e52ec
/* ScoreList::getScoreRow(std::string) */

undefined4 __thiscall ScoreList::getScoreRow(ScoreList *this,undefined4 param_2)

{
  undefined4 uVar1;
  CCDictionary *this_00;
  undefined1 auStack_18 [4];
  string asStack_14 [8];
  
  this_00 = *(CCDictionary **)(this + 0xe4);
  uVar1 = FUN_007c5300(param_2);
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(asStack_14,uVar1,auStack_18);
  uVar1 = cocos2d::CCDictionary::objectForKey(this_00,asStack_14);
  FUN_007c5914(asStack_14);
  FUN_0079a3fc(auStack_18);
  return uVar1;
}

// ---- ScoreList::deactivateScore  @ 0x3e5354
/* ScoreList::deactivateScore(std::string) */

void __thiscall ScoreList::deactivateScore(ScoreList *this,undefined4 param_2)

{
  undefined4 uVar1;
  CCDictionary *this_00;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  int local_14;
  
  this_00 = *(CCDictionary **)(this + 0xe4);
  uVar1 = FUN_007c5300(param_2);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_18,uVar1,auStack_1c);
  local_14 = cocos2d::CCDictionary::objectForKey(this_00,asStack_18);
  FUN_007c5914(asStack_18);
  FUN_0079a3fc(auStack_1c);
  if (local_14 != 0) {
    *(undefined1 *)(local_14 + 0x10c) = 0;
  }
  return;
}

// ---- ScoreList::activateScore  @ 0x3e53c8
/* ScoreList::activateScore(std::string) */

void __thiscall ScoreList::activateScore(ScoreList *this,undefined4 param_2)

{
  undefined4 uVar1;
  CCDictionary *this_00;
  undefined1 auStack_1c [4];
  string asStack_18 [4];
  int local_14;
  
  this_00 = *(CCDictionary **)(this + 0xe4);
  uVar1 = FUN_007c5300(param_2);
  FUN_0079a3f4(auStack_1c);
  FUN_007c6a60(asStack_18,uVar1,auStack_1c);
  local_14 = cocos2d::CCDictionary::objectForKey(this_00,asStack_18);
  FUN_007c5914(asStack_18);
  FUN_0079a3fc(auStack_1c);
  if (local_14 != 0) {
    *(undefined1 *)(local_14 + 0x10c) = 1;
  }
  return;
}

// ---- ScoreList::setOpacity  @ 0x3e543c
/* ScoreList::setOpacity(int) */

void __thiscall ScoreList::setOpacity(ScoreList *this,int param_1)

{
  bool bVar1;
  int iVar2;
  ScoreRow *this_00;
  TeamRow *this_01;
  CCDictElement *local_1c;
  CCDictElement *local_18;
  CCDictElement *local_14;
  
  if ((*(int *)(this + 0xe4) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe4)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_1c = *(CCDictElement **)(*(int *)(this + 0xe4) + 0x14);
    if (*(int *)(*(int *)(this + 0xe4) + 0x14) == 0) {
      local_18 = (CCDictElement *)0x0;
    }
    else {
      local_18 = *(CCDictElement **)(*(int *)(*(int *)(this + 0xe4) + 0x14) + 0x110);
    }
    while (local_1c != (CCDictElement *)0x0) {
      this_00 = (ScoreRow *)cocos2d::CCDictElement::getObject(local_1c);
      ScoreRow::setOpacity(this_00,param_1);
      local_1c = local_18;
      if (local_18 == (CCDictElement *)0x0) {
        local_18 = (CCDictElement *)0x0;
      }
      else {
        local_18 = *(CCDictElement **)(local_18 + 0x110);
      }
    }
  }
  if ((*(int *)(this + 0xe8) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe8)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_1c = *(CCDictElement **)(*(int *)(this + 0xe8) + 0x14);
    if (*(int *)(*(int *)(this + 0xe8) + 0x14) == 0) {
      local_14 = (CCDictElement *)0x0;
    }
    else {
      local_14 = *(CCDictElement **)(*(int *)(*(int *)(this + 0xe8) + 0x14) + 0x110);
    }
    while (local_1c != (CCDictElement *)0x0) {
      this_01 = (TeamRow *)cocos2d::CCDictElement::getObject(local_1c);
      TeamRow::setOpacity(this_01,param_1);
      local_1c = local_14;
      if (local_14 == (CCDictElement *)0x0) {
        local_14 = (CCDictElement *)0x0;
      }
      else {
        local_14 = *(CCDictElement **)(local_14 + 0x110);
      }
    }
  }
  (**(code **)(**(int **)(this + 0xec) + 0x1a4))(*(undefined4 *)(this + 0xec),param_1 & 0xff);
  return;
}

// ---- ScoreList::getScoreRowAt  @ 0x3e5574
/* ScoreList::getScoreRowAt(int) */

undefined4 __thiscall ScoreList::getScoreRowAt(ScoreList *this,int param_1)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  ScoreRow *local_2c;
  CCDictElement *local_28;
  CCDictElement *local_24;
  undefined4 local_20;
  vector<ScoreRow*,std::allocator<ScoreRow*>> avStack_1c [16];
  
  std::vector<ScoreRow*,std::allocator<ScoreRow*>>::vector(avStack_1c);
  local_28 = (CCDictElement *)0x0;
  local_24 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0xe4) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe4)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_28 = *(CCDictElement **)(*(int *)(this + 0xe4) + 0x14);
    if (*(int *)(*(int *)(this + 0xe4) + 0x14) == 0) {
      local_24 = (CCDictElement *)0x0;
    }
    else {
      local_24 = *(CCDictElement **)(*(int *)(*(int *)(this + 0xe4) + 0x14) + 0x110);
    }
    while (local_28 != (CCDictElement *)0x0) {
      local_2c = (ScoreRow *)cocos2d::CCDictElement::getObject(local_28);
      std::vector<ScoreRow*,std::allocator<ScoreRow*>>::push_back(avStack_1c,&local_2c);
      local_28 = local_24;
      if (local_24 == (CCDictElement *)0x0) {
        local_24 = (CCDictElement *)0x0;
      }
      else {
        local_24 = *(CCDictElement **)(local_24 + 0x110);
      }
    }
  }
  uVar3 = std::vector<ScoreRow*,std::allocator<ScoreRow*>>::begin(avStack_1c);
  uVar4 = std::vector<ScoreRow*,std::allocator<ScoreRow*>>::end(avStack_1c);
  std::
  sort<__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>,bool(*)(ScoreRow*,ScoreRow*)>
            (uVar3,uVar4,0x3e48a9);
  uVar5 = std::vector<ScoreRow*,std::allocator<ScoreRow*>>::size(avStack_1c);
  if ((uint)param_1 < uVar5) {
    puVar6 = (undefined4 *)
             std::vector<ScoreRow*,std::allocator<ScoreRow*>>::operator[](avStack_1c,param_1);
    uVar3 = *puVar6;
    local_20 = uVar3;
  }
  else {
    uVar3 = 0;
  }
  std::vector<ScoreRow*,std::allocator<ScoreRow*>>::~vector(avStack_1c);
  return uVar3;
}

// ---- ScoreList::getTeamRowAt  @ 0x3e568c
/* ScoreList::getTeamRowAt(int) */

undefined4 __thiscall ScoreList::getTeamRowAt(ScoreList *this,int param_1)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  TeamRow *local_2c;
  CCDictElement *local_28;
  CCDictElement *local_24;
  undefined4 local_20;
  vector<TeamRow*,std::allocator<TeamRow*>> avStack_1c [16];
  
  std::vector<TeamRow*,std::allocator<TeamRow*>>::vector(avStack_1c);
  local_28 = (CCDictElement *)0x0;
  local_24 = (CCDictElement *)0x0;
  if ((*(int *)(this + 0xe8) == 0) ||
     (iVar2 = cocos2d::CCDictionary::count(*(CCDictionary **)(this + 0xe8)), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    local_28 = *(CCDictElement **)(*(int *)(this + 0xe8) + 0x14);
    if (*(int *)(*(int *)(this + 0xe8) + 0x14) == 0) {
      local_24 = (CCDictElement *)0x0;
    }
    else {
      local_24 = *(CCDictElement **)(*(int *)(*(int *)(this + 0xe8) + 0x14) + 0x110);
    }
    while (local_28 != (CCDictElement *)0x0) {
      local_2c = (TeamRow *)cocos2d::CCDictElement::getObject(local_28);
      std::vector<TeamRow*,std::allocator<TeamRow*>>::push_back(avStack_1c,&local_2c);
      local_28 = local_24;
      if (local_24 == (CCDictElement *)0x0) {
        local_24 = (CCDictElement *)0x0;
      }
      else {
        local_24 = *(CCDictElement **)(local_24 + 0x110);
      }
    }
  }
  uVar3 = std::vector<TeamRow*,std::allocator<TeamRow*>>::begin(avStack_1c);
  uVar4 = std::vector<TeamRow*,std::allocator<TeamRow*>>::end(avStack_1c);
  std::
  sort<__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>,bool(*)(TeamRow*,TeamRow*)>
            (uVar3,uVar4,0x3e4885);
  uVar5 = std::vector<TeamRow*,std::allocator<TeamRow*>>::size(avStack_1c);
  if ((uint)param_1 < uVar5) {
    puVar6 = (undefined4 *)
             std::vector<TeamRow*,std::allocator<TeamRow*>>::operator[](avStack_1c,param_1);
    uVar3 = *puVar6;
    local_20 = uVar3;
  }
  else {
    uVar3 = 0;
  }
  std::vector<TeamRow*,std::allocator<TeamRow*>>::~vector(avStack_1c);
  return uVar3;
}
