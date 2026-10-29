// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- PostGameScreen::create  @ 0x3a7df4
/* PostGameScreen::create() */

PostGameScreen * PostGameScreen::create(void)

{
  bool bVar1;
  PostGameScreen *this;
  int iVar2;
  
  this = operator_new(0x124);
  PostGameScreen(this);
  if ((this == (PostGameScreen *)0x0) ||
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
    if (this != (PostGameScreen *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (PostGameScreen *)0x0;
  }
  return this;
}

// ---- PostGameScreen::PostGameScreen  @ 0x3be56c
/* PostGameScreen::PostGameScreen() */

PostGameScreen * __thiscall PostGameScreen::PostGameScreen(PostGameScreen *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00918308;
  return this;
}

// ---- PostGameScreen::init  @ 0x3be598
/* PostGameScreen::init() */

undefined4 __thiscall PostGameScreen::init(PostGameScreen *this)

{
  bool bVar1;
  char cVar2;
  undefined3 uVar3;
  int *piVar4;
  CCNode *pCVar5;
  CCNode *pCVar6;
  CCMenuItem *pCVar7;
  ScoreKeeper *this_00;
  CCDictionary *this_01;
  int iVar8;
  LeaderBoardBridge *pLVar9;
  ItemLibrary *pIVar10;
  int iVar11;
  CCString *pCVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  ScoreList *pSVar15;
  code *pcVar16;
  float fVar17;
  float extraout_s0;
  undefined8 uVar18;
  float extraout_s1;
  CCDictElement *local_58;
  CCDictElement *local_54;
  CCPoint aCStack_30 [8];
  CCPoint aCStack_28 [8];
  code *local_20;
  undefined4 local_1c;
  
  cVar2 = cocos2d::CCNode::init();
  if (cVar2 == '\x01') {
    piVar4 = (int *)cocos2d::CCSprite::create("title_ret2_new.png");
    (**(code **)(*piVar4 + 0x1a4))(piVar4,0xdc);
    pcVar16 = *(code **)(*piVar4 + 0x1bc);
    uVar3 = FUN_003bd704(0,0,0);
    local_20 = (code *)CONCAT13(local_20._3_1_,uVar3);
    uVar18 = (*pcVar16)(piVar4,&local_20);
    pcVar16 = *(code **)(*piVar4 + 0x7c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_20,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20))
    ;
    (*pcVar16)(piVar4,&local_20);
    (**(code **)(*(int *)this + 200))(this,piVar4);
    pCVar5 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    pCVar6 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("b03_sml.png");
    local_20 = (code *)0x3bf5cd;
    local_1c = 0;
    pCVar7 = (CCMenuItem *)
             cocos2d::CCMenuItemSprite::create
                       (pCVar5,pCVar6,(CCObject *)this,(_func_void_CCObject_ptr *)0x3bf5cd);
    uVar13 = cocos2d::CCMenu::create(pCVar7,0);
    *(undefined4 *)(this + 0xe8) = uVar13;
    uVar18 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    pcVar16 = *(code **)(**(int **)(this + 0xe8) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0xe8);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe8));
    uVar13 = cocos2d::CCLabelAtlas::create("DONE","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xec) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xec),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0xec) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0xec) + 0x40))(*(undefined4 *)(this + 0xec),0x3f000000);
    pcVar16 = *(code **)(**(int **)(this + 0xec) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0xec);
    cocos2d::CCPoint::CCPoint(aCStack_30,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    uVar13 = (**(code **)(**(int **)(this + 0xe8) + 0x50))(*(undefined4 *)(this + 0xe8));
    FUN_003bd760(aCStack_28,aCStack_30,uVar13);
    (*pcVar16)(uVar14,aCStack_28);
    fVar17 = (float)(**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),0);
    uVar13 = cocos2d::CCLabelTTF::create("NO GAME DATA","Arial-BoldMT",fVar17);
    *(undefined4 *)(this + 0x110) = uVar13;
    uVar18 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    pcVar16 = *(code **)(**(int **)(this + 0x110) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    uVar18 = (*pcVar16)(uVar13,aCStack_28);
    pcVar16 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x110),0);
    uVar13 = cocos2d::CCLabelAtlas::create("FINAL GAME SCORES","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x108) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x108),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0x108) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0x108) + 0x40))
                       (*(undefined4 *)(this + 0x108),0x3f000000);
    pcVar16 = *(code **)(**(int **)(this + 0x108) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x108),0);
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf8) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf8),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0xf8) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0xf8) + 0x40))(*(undefined4 *)(this + 0xf8),0x3ecccccd);
    pcVar16 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),0);
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf4) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf4),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0xf4) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0xf4) + 0x40))(*(undefined4 *)(this + 0xf4),0x3ecccccd);
    pcVar16 = *(code **)(**(int **)(this + 0xf4) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0xf4);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),0);
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xf0) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xf0),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0xf0) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0xf0) + 0x40))(*(undefined4 *)(this + 0xf0),0x3ecccccd);
    pcVar16 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf0),0);
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x10c) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x10c),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0x10c) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0x10c) + 0x40))
                       (*(undefined4 *)(this + 0x10c),0x3ecccccd);
    pcVar16 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x10c),0);
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0xfc) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0xfc),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0xfc) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0xfc) + 0x40))(*(undefined4 *)(this + 0xfc),0x3f000000);
    pcVar16 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xfc),0);
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x118) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x118));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x118),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0x118) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x118);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0x118) + 0x40))
                       (*(undefined4 *)(this + 0x118),0x3f000000);
    pcVar16 = *(code **)(**(int **)(this + 0x118) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x118);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x118),0);
    uVar13 = cocos2d::CCLabelAtlas::create("TOTAL EXP: NO DATA","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x100) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x100),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0x100) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar18 = (**(code **)(**(int **)(this + 0x100) + 0x40))
                       (*(undefined4 *)(this + 0x100),0x3ee66666);
    pcVar16 = *(code **)(**(int **)(this + 0x100) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x100);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x100),0);
    uVar13 = cocos2d::CCLabelAtlas::create("TOTAL BP: NO DATA","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x104) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
    uVar18 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x104),0x18);
    pcVar16 = *(code **)(**(int **)(this + 0x104) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x104);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(**(int **)(this + 0x104) + 0x40))(*(undefined4 *)(this + 0x104),0x3ee66666);
    pcVar16 = *(code **)(**(int **)(this + 0x104) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0x104);
    uVar13 = (**(code **)(**(int **)(this + 0x100) + 0x50))(*(undefined4 *)(this + 0x100));
    cocos2d::CCPoint::CCPoint(aCStack_30,extraout_s0,extraout_s1);
    FUN_003bd760(aCStack_28,uVar13,aCStack_30);
    (*pcVar16)(uVar14,aCStack_28);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x104),0);
    uVar13 = cocos2d::CCSprite::create("menuTexture.png",(CCRect *)daRank);
    *(undefined4 *)(this + 0x11c) = uVar13;
    uVar18 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x11c));
    pcVar16 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0x11c);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),0);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x11c));
    uVar13 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x114) = uVar13;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x114));
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x114),0x18);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),0x3ecccccd);
    uVar18 = (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),0);
    pcVar16 = *(code **)(**(int **)(this + 0x114) + 0x4c);
    uVar14 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_30,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    uVar13 = (**(code **)(**(int **)(this + 0x11c) + 0x50))(*(undefined4 *)(this + 0x11c));
    FUN_003bd760(aCStack_28,aCStack_30,uVar13);
    (*pcVar16)(uVar14,aCStack_28);
    uVar18 = (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x114),0);
    pcVar16 = *(code **)(**(int **)(this + 0x114) + 0x7c);
    uVar13 = *(undefined4 *)(this + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    uVar13 = ScoreList::create();
    *(undefined4 *)(this + 0xe4) = uVar13;
    uVar18 = cocos2d::CCObject::retain(*(CCObject **)(this + 0xe4));
    pcVar16 = *(code **)(**(int **)(this + 0xe4) + 0x4c);
    uVar13 = *(undefined4 *)(this + 0xe4);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar18,(float)((ulonglong)uVar18 >> 0x20));
    (*pcVar16)(uVar13,aCStack_28);
    (**(code **)(**(int **)(this + 0xe4) + 0x40))(*(undefined4 *)(this + 0xe4),0x3f400000);
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0xe4));
    this_00 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    this_01 = (CCDictionary *)ScoreKeeper::getPlayerInfo(this_00);
    if ((this_01 == (CCDictionary *)0x0) ||
       (iVar8 = cocos2d::CCDictionary::count(this_01), iVar8 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      local_58 = *(CCDictElement **)(this_01 + 0x14);
      if (*(int *)(this_01 + 0x14) == 0) {
        local_54 = (CCDictElement *)0x0;
      }
      else {
        local_54 = *(CCDictElement **)(*(int *)(this_01 + 0x14) + 0x110);
      }
      while (local_58 != (CCDictElement *)0x0) {
        iVar8 = cocos2d::CCDictElement::getObject(local_58);
        pSVar15 = *(ScoreList **)(this + 0xe4);
        FUN_007c64e8(aCStack_30,iVar8 + 0x14);
        FUN_007c64e8(aCStack_28,iVar8 + 0x18);
        ScoreList::addSoldierScore(pSVar15,aCStack_30,aCStack_28,*(undefined4 *)(iVar8 + 0x1c));
        FUN_007c5914(aCStack_28);
        FUN_007c5914(aCStack_30);
        local_58 = local_54;
        if (local_54 == (CCDictElement *)0x0) {
          local_54 = (CCDictElement *)0x0;
        }
        else {
          local_54 = *(CCDictElement **)(local_54 + 0x110);
        }
      }
    }
    pSVar15 = *(ScoreList **)(this + 0xe4);
    FUN_0079a3f4(aCStack_30);
    FUN_007c6a60(aCStack_28,&DAT_007e38fc,aCStack_30);
    ScoreList::setTitle(pSVar15,aCStack_28);
    FUN_007c5914(aCStack_28);
    FUN_0079a3fc(aCStack_30);
    ScoreList::updateScores(*(ScoreList **)(this + 0xe4));
    LeaderBoardBridge::sharedLeaderBoardBridge();
    uVar13 = LeaderBoardBridge::calcPlayerExp();
    pLVar9 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    iVar8 = LeaderBoardBridge::calcPlayerPoints(pLVar9);
    pIVar10 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
    iVar11 = ItemPurchase::sharedItemPurchase();
    iVar11 = ItemLibrary::getTotalPurchaseAmount(pIVar10,*(CCArray **)(iVar11 + 4));
    if (iVar8 - iVar11 < 1) {
      iVar8 = 0;
    }
    else {
      pLVar9 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
      iVar8 = LeaderBoardBridge::calcPlayerPoints(pLVar9);
      pIVar10 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
      iVar11 = ItemPurchase::sharedItemPurchase();
      iVar11 = ItemLibrary::getTotalPurchaseAmount(pIVar10,*(CCArray **)(iVar11 + 4));
      iVar8 = iVar8 - iVar11;
    }
    pcVar16 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
    uVar14 = *(undefined4 *)(this + 0x100);
    pCVar12 = (CCString *)cocos2d::CCString::createWithFormat("TOTAL EXP: %d",uVar13);
    uVar13 = cocos2d::CCString::getCString(pCVar12);
    (*pcVar16)(uVar14,uVar13);
    pcVar16 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
    uVar14 = *(undefined4 *)(this + 0x104);
    pCVar12 = (CCString *)cocos2d::CCString::createWithFormat("TOTAL BP: %d",iVar8);
    uVar13 = cocos2d::CCString::getCString(pCVar12);
    (*pcVar16)(uVar14,uVar13);
    *(undefined4 *)(this + 0x120) = 0;
    uVar13 = 1;
  }
  else {
    uVar13 = 0;
  }
  return uVar13;
}

// ---- PostGameScreen::~PostGameScreen  @ 0x3bf4b4
/* WARNING: Removing unreachable block (ram,0x003bf598) */
/* PostGameScreen::~PostGameScreen() */

PostGameScreen * __thiscall PostGameScreen::~PostGameScreen(PostGameScreen *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00918308;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildrenWithCleanup((CCNode *)this,true);
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x118));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x114));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- PostGameScreen::~PostGameScreen  @ 0x3bf5b0
/* PostGameScreen::~PostGameScreen() */

PostGameScreen * __thiscall PostGameScreen::~PostGameScreen(PostGameScreen *this)

{
  ~PostGameScreen(this);
  operator_delete(this);
  return this;
}

// ---- PostGameScreen::onOK  @ 0x3bf5cc
/* PostGameScreen::onOK(cocos2d::CCObject*) */

void PostGameScreen::onOK(CCObject *param_1)

{
  CCNotificationCenter *this;
  
  Sound::playSound(sndEng,4);
  this = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::postNotification(this,"PostGameClose",(CCObject *)0x0);
  return;
}

// ---- PostGameScreen::setWinnerLabel  @ 0x3bf60c
/* PostGameScreen::setWinnerLabel() */

void __thiscall PostGameScreen::setWinnerLabel(PostGameScreen *this)

{
  bool bVar1;
  bool bVar2;
  undefined4 uVar3;
  CCString *this_00;
  undefined4 uVar4;
  code *pcVar5;
  undefined1 local_2c;
  undefined1 local_2b;
  undefined1 local_2a;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  CCString *local_18;
  CCString *local_14;
  
  bVar2 = false;
  bVar1 = false;
  local_28 = ScoreList::getScoreRowAt(*(ScoreList **)(this + 0xe4),0);
  local_24 = ScoreList::getScoreRowAt(*(ScoreList **)(this + 0xe4),1);
  local_20 = ScoreList::getTeamRowAt(*(ScoreList **)(this + 0xe4),0);
  local_1c = ScoreList::getTeamRowAt(*(ScoreList **)(this + 0xe4),1);
  if (local_28 != 0) {
    if ((local_20 != 0) && (*(int *)(local_28 + 0x108) <= *(int *)(local_20 + 0xec))) {
      bVar1 = true;
    }
    if ((((bVar1) && (local_20 != 0)) && (*(int *)(local_20 + 0xec) == *(int *)(local_28 + 0x108)))
       && (*(int *)(local_28 + 0x110) == 0)) {
      bVar2 = true;
    }
    if (((bVar1) && (local_20 != 0)) &&
       ((local_24 != 0 &&
        ((*(int *)(local_20 + 0xec) == *(int *)(local_24 + 0x108) &&
         (*(int *)(local_24 + 0x110) == 0)))))) {
      bVar2 = true;
    }
    if ((((bVar1) && (local_20 != 0)) && (local_1c != 0)) &&
       (*(int *)(local_20 + 0xec) == *(int *)(local_1c + 0xec))) {
      bVar2 = true;
    }
    if (((!bVar1) && (local_20 != 0)) &&
       ((*(int *)(local_28 + 0x110) == 0 &&
        (*(int *)(local_28 + 0x108) == *(int *)(local_20 + 0xec))))) {
      bVar2 = true;
    }
    if (((!bVar1) && (local_24 != 0)) &&
       ((*(int *)(local_24 + 0x110) == 0 &&
        ((*(int *)(local_28 + 0x110) == 0 &&
         (*(int *)(local_28 + 0x108) == *(int *)(local_24 + 0x108))))))) {
      bVar2 = true;
    }
    if (bVar2) {
      (**(code **)(**(int **)(this + 0x110) + 0x23c))(*(undefined4 *)(this + 0x110),"TIE GAME");
      pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x1bc);
      uVar4 = *(undefined4 *)(this + 0x110);
      uVar3 = FUN_003bd704(0xff,0xff,0xff);
      local_2c = (undefined1)uVar3;
      local_2b = (undefined1)((uint)uVar3 >> 8);
      local_2a = (undefined1)((uint)uVar3 >> 0x10);
      (*pcVar5)(uVar4,&local_2c);
    }
    else if (bVar1) {
      local_18 = (CCString *)cocos2d::CCArray::objectAtIndex(teamNames,*(uint *)(local_20 + 0xf0));
      pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x23c);
      uVar4 = *(undefined4 *)(this + 0x110);
      uVar3 = cocos2d::CCString::getCString(local_18);
      this_00 = (CCString *)cocos2d::CCString::createWithFormat("%s TEAM WINS!",uVar3);
      uVar3 = cocos2d::CCString::getCString(this_00);
      (*pcVar5)(uVar4,uVar3);
      (**(code **)(**(int **)(this + 0x110) + 0x1bc))
                (*(undefined4 *)(this + 0x110),teamColors + *(int *)(local_20 + 0xf0) * 3);
    }
    else {
      ScoreRow::getPlayerName();
      uVar3 = FUN_007c5300(&local_2c);
      local_14 = (CCString *)cocos2d::CCString::createWithFormat("%s WINS!",uVar3);
      FUN_007c5914(&local_2c);
      pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x23c);
      uVar4 = *(undefined4 *)(this + 0x110);
      uVar3 = cocos2d::CCString::getCString(local_14);
      (*pcVar5)(uVar4,uVar3);
      pcVar5 = *(code **)(**(int **)(this + 0x110) + 0x1bc);
      uVar4 = *(undefined4 *)(this + 0x110);
      uVar3 = FUN_003bd704(0xff,0xff,0xff);
      local_2c = (undefined1)uVar3;
      local_2b = (undefined1)((uint)uVar3 >> 8);
      local_2a = (undefined1)((uint)uVar3 >> 0x10);
      (*pcVar5)(uVar4,&local_2c);
    }
  }
  return;
}

// ---- PostGameScreen::isHostMVP  @ 0x3bf934
/* PostGameScreen::isHostMVP() */

undefined4 __thiscall PostGameScreen::isHostMVP(PostGameScreen *this)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  ScoreKeeper *pSVar4;
  CCDictionary *this_00;
  undefined4 uVar5;
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  string asStack_48 [4];
  uint local_44;
  uint local_40;
  CCArray *local_3c;
  CCString *local_38;
  int local_34;
  int local_30;
  uint local_2c;
  CCString *local_28;
  int local_24;
  int local_20;
  uint local_1c;
  ScoreRow *local_18;
  int local_14;
  
  *(undefined4 *)(this + 0x120) = 0;
  iVar2 = ScoreKeeper::sharedScoreKeeper();
  local_3c = (CCArray *)cocos2d::CCDictionary::allKeys(*(CCDictionary **)(iVar2 + 0x1c));
  for (local_44 = 0; uVar1 = local_44, uVar3 = cocos2d::CCArray::count(local_3c), uVar1 < uVar3;
      local_44 = local_44 + 1) {
    local_38 = (CCString *)cocos2d::CCArray::objectAtIndex(local_3c,local_44);
    pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    uVar5 = cocos2d::CCString::getCString(local_38);
    FUN_0079a3f4(auStack_4c);
    FUN_007c6a60(asStack_48,uVar5,auStack_4c);
    local_34 = ScoreKeeper::getKills(pSVar4,asStack_48);
    FUN_007c5914(asStack_48);
    FUN_0079a3fc(auStack_4c);
    pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    uVar5 = cocos2d::CCString::getCString(local_38);
    FUN_0079a3f4(auStack_4c);
    FUN_007c6a60(asStack_48,uVar5,auStack_4c);
    local_30 = ScoreKeeper::getDeaths(pSVar4,asStack_48);
    FUN_007c5914(asStack_48);
    FUN_0079a3fc(auStack_4c);
    local_2c = local_34 - local_30 & ~(local_34 - local_30 >> 0x1f);
    if (*(int *)(this + 0x120) < (int)local_2c) {
      *(uint *)(this + 0x120) = local_2c;
    }
  }
  if (0 < *(int *)(this + 0x120)) {
    for (local_40 = 0; uVar1 = local_40, uVar3 = cocos2d::CCArray::count(local_3c), uVar1 < uVar3;
        local_40 = local_40 + 1) {
      local_28 = (CCString *)cocos2d::CCArray::objectAtIndex(local_3c,local_40);
      pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      uVar5 = cocos2d::CCString::getCString(local_28);
      FUN_0079a3f4(auStack_4c);
      FUN_007c6a60(asStack_48,uVar5,auStack_4c);
      local_24 = ScoreKeeper::getKills(pSVar4,asStack_48);
      FUN_007c5914(asStack_48);
      FUN_0079a3fc(auStack_4c);
      pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      uVar5 = cocos2d::CCString::getCString(local_28);
      FUN_0079a3f4(auStack_4c);
      FUN_007c6a60(asStack_48,uVar5,auStack_4c);
      local_20 = ScoreKeeper::getDeaths(pSVar4,asStack_48);
      FUN_007c5914(asStack_48);
      FUN_0079a3fc(auStack_4c);
      local_1c = local_24 - local_20 & ~(local_24 - local_20 >> 0x1f);
      if (*(int *)(this + 0x120) <= (int)local_1c) {
        this_00 = *(CCDictionary **)(*(int *)(this + 0xe4) + 0xe4);
        uVar5 = cocos2d::CCString::getCString(local_28);
        FUN_0079a3f4(auStack_4c);
        FUN_007c6a60(asStack_48,uVar5,auStack_4c);
        local_18 = (ScoreRow *)cocos2d::CCDictionary::objectForKey(this_00,asStack_48);
        FUN_007c5914(asStack_48);
        FUN_0079a3fc(auStack_4c);
        ScoreRow::setMVP(local_18);
      }
    }
  }
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  FUN_007c64e8(auStack_4c,auStack_50);
  iVar2 = ScoreKeeper::getKills(pSVar4,auStack_4c);
  pSVar4 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  FUN_007c64e8(asStack_48,auStack_50);
  local_14 = ScoreKeeper::getDeaths(pSVar4,asStack_48);
  local_14 = iVar2 - local_14;
  FUN_007c5914(asStack_48);
  FUN_007c5914(auStack_4c);
  if (local_14 < 1) {
    uVar5 = 0;
  }
  else if (*(int *)(this + 0x120) == local_14) {
    uVar5 = 1;
  }
  else {
    uVar5 = 0;
  }
  FUN_007c5914(auStack_50);
  return uVar5;
}

// ---- PostGameScreen::showPromotion  @ 0x3bfc78
/* PostGameScreen::showPromotion() */

void __thiscall PostGameScreen::showPromotion(PostGameScreen *this)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),1);
  (**(code **)(**(int **)(this + 0x114) + 0x1f8))(*(undefined4 *)(this + 0x114),"PROMOTED");
  pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x1bc);
  uVar3 = *(undefined4 *)(this + 0x114);
  uVar1 = FUN_003bd704(0,0xff,0);
  local_14 = (undefined1)uVar1;
  local_13 = (undefined1)((uint)uVar1 >> 8);
  local_12 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar4)(uVar3,&local_14);
  (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),1);
  pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x208);
  uVar3 = *(undefined4 *)(this + 0x11c);
  LeaderBoardBridge::sharedLeaderBoardBridge();
  uVar1 = LeaderBoardBridge::calcPlayerExp();
  iVar2 = FUN_003be434(uVar1);
  (*pcVar4)(uVar3,daRank + iVar2 * 0x10);
  return;
}

// ---- PostGameScreen::showDemotion  @ 0x3bfd58
/* PostGameScreen::showDemotion() */

void __thiscall PostGameScreen::showDemotion(PostGameScreen *this)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  code *pcVar4;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  (**(code **)(**(int **)(this + 0x114) + 0x90))(*(undefined4 *)(this + 0x114),1);
  (**(code **)(**(int **)(this + 0x114) + 0x1f8))(*(undefined4 *)(this + 0x114),"DEMOTED");
  pcVar4 = *(code **)(**(int **)(this + 0x114) + 0x1bc);
  uVar3 = *(undefined4 *)(this + 0x114);
  uVar1 = FUN_003bd704(0xff,0,0);
  local_14 = (undefined1)uVar1;
  local_13 = (undefined1)((uint)uVar1 >> 8);
  local_12 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar4)(uVar3,&local_14);
  (**(code **)(**(int **)(this + 0x11c) + 0x90))(*(undefined4 *)(this + 0x11c),1);
  pcVar4 = *(code **)(**(int **)(this + 0x11c) + 0x208);
  uVar3 = *(undefined4 *)(this + 0x11c);
  LeaderBoardBridge::sharedLeaderBoardBridge();
  uVar1 = LeaderBoardBridge::calcPlayerExp();
  iVar2 = FUN_003be434(uVar1);
  (*pcVar4)(uVar3,daRank + iVar2 * 0x10);
  return;
}

// ---- PostGameScreen::playerCompletedGame  @ 0x3bfe38
/* PostGameScreen::playerCompletedGame() */

void __thiscall PostGameScreen::playerCompletedGame(PostGameScreen *this)

{
  ScoreKeeper *pSVar1;
  int iVar2;
  CCString *pCVar3;
  undefined4 uVar4;
  LeaderBoardBridge *pLVar5;
  ItemLibrary *pIVar6;
  int iVar7;
  code *pcVar8;
  undefined4 uVar9;
  undefined1 local_34;
  undefined1 local_33;
  undefined1 local_32;
  int local_30;
  int local_2c;
  int local_28;
  uint local_24;
  int local_20;
  int local_1c;
  undefined4 local_18;
  int local_14;
  
  setWinnerLabel(this);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  local_30 = ScoreKeeper::getKills(pSVar1,&local_34);
  FUN_007c5914(&local_34);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  local_2c = ScoreKeeper::getDeaths(pSVar1,&local_34);
  FUN_007c5914(&local_34);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  local_28 = ScoreKeeper::getSuicides(pSVar1);
  local_24 = local_30 - local_28 & ~(local_30 - local_28 >> 0x1f);
  iVar2 = isHostMVP(this);
  if (iVar2 == 0) {
    local_20 = 0;
  }
  else {
    local_20 = 5;
  }
  local_1c = local_20 + local_24 + 10;
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),1);
  (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),1);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0 < local_20);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0 < local_28);
  pcVar8 = *(code **)(**(int **)(this + 0xf8) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0xf8);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("+5 MVP AWARD");
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0xf4) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0xf4);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("+10 GAME FINISHED");
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0xf0) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0xf0);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("+%d KILL BONUS",local_30);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0x10c) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x10c);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("-%d SUICIDES",local_28);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0xfc) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0xfc);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("EXP EARNED: %d",local_1c);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0x118) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x118);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("BP EARNED: %d",local_24);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0xfc) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0xfc);
  uVar4 = FUN_003bd704(0xf5,0xf5,0);
  local_34 = (undefined1)uVar4;
  local_33 = (undefined1)((uint)uVar4 >> 8);
  local_32 = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar8)(uVar9,&local_34);
  pcVar8 = *(code **)(**(int **)(this + 0x118) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0x118);
  uVar4 = FUN_003bd704(0xf5,0xf5,0);
  local_34 = (undefined1)uVar4;
  local_33 = (undefined1)((uint)uVar4 >> 8);
  local_32 = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar8)(uVar9,&local_34);
  pcVar8 = *(code **)(**(int **)(this + 0x10c) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0x10c);
  uVar4 = FUN_003bd704(0xff,0,0);
  local_34 = (undefined1)uVar4;
  local_33 = (undefined1)((uint)uVar4 >> 8);
  local_32 = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar8)(uVar9,&local_34);
  pcVar8 = *(code **)(**(int **)(this + 0xf0) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0xf0);
  uVar4 = FUN_003bd704(0,0xff,0);
  local_34 = (undefined1)uVar4;
  local_33 = (undefined1)((uint)uVar4 >> 8);
  local_32 = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar8)(uVar9,&local_34);
  pcVar8 = *(code **)(**(int **)(this + 0xf4) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0xf4);
  uVar4 = FUN_003bd704(0,0xff,0);
  local_34 = (undefined1)uVar4;
  local_33 = (undefined1)((uint)uVar4 >> 8);
  local_32 = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar8)(uVar9,&local_34);
  pcVar8 = *(code **)(**(int **)(this + 0xf8) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0xf8);
  uVar4 = FUN_003bd704(0,0xff,0);
  local_34 = (undefined1)uVar4;
  local_33 = (undefined1)((uint)uVar4 >> 8);
  local_32 = (undefined1)((uint)uVar4 >> 0x10);
  (*pcVar8)(uVar9,&local_34);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  ScoreKeeper::applyAward(pSVar1,local_1c,local_30,local_2c,local_24);
  iVar2 = ScoreKeeper::sharedScoreKeeper();
  *(undefined1 *)(iVar2 + 0x28) = 1;
  LeaderBoardBridge::sharedLeaderBoardBridge();
  local_18 = LeaderBoardBridge::calcPlayerExp();
  pLVar5 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
  iVar2 = LeaderBoardBridge::calcPlayerPoints(pLVar5);
  pIVar6 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
  iVar7 = ItemPurchase::sharedItemPurchase();
  iVar7 = ItemLibrary::getTotalPurchaseAmount(pIVar6,*(CCArray **)(iVar7 + 4));
  if (iVar2 - iVar7 < 1) {
    local_14 = 0;
  }
  else {
    pLVar5 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    iVar2 = LeaderBoardBridge::calcPlayerPoints(pLVar5);
    pIVar6 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
    iVar7 = ItemPurchase::sharedItemPurchase();
    local_14 = ItemLibrary::getTotalPurchaseAmount(pIVar6,*(CCArray **)(iVar7 + 4));
    local_14 = iVar2 - local_14;
  }
  pcVar8 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x100);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("TOTAL EXP: %d",local_18);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pcVar8 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x104);
  pCVar3 = (CCString *)cocos2d::CCString::createWithFormat("TOTAL BP: %d",local_14);
  uVar4 = cocos2d::CCString::getCString(pCVar3);
  (*pcVar8)(uVar9,uVar4);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  iVar2 = ScoreKeeper::getRankChange(pSVar1);
  if (iVar2 == 1) {
    showPromotion(this);
  }
  return;
}

// ---- PostGameScreen::playerEndedGame  @ 0x3c0340
/* PostGameScreen::playerEndedGame() */

void __thiscall PostGameScreen::playerEndedGame(PostGameScreen *this)

{
  ScoreKeeper *pSVar1;
  CCString *pCVar2;
  undefined4 uVar3;
  int iVar4;
  LeaderBoardBridge *pLVar5;
  ItemLibrary *pIVar6;
  int iVar7;
  code *pcVar8;
  undefined4 uVar9;
  undefined1 local_30;
  undefined1 local_2f;
  undefined1 local_2e;
  int local_2c;
  int local_28;
  int local_24;
  uint local_20;
  uint local_1c;
  undefined4 local_18;
  int local_14;
  
  setWinnerLabel(this);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  local_2c = ScoreKeeper::getKills(pSVar1,&local_30);
  FUN_007c5914(&local_30);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  NetworkManager::sharedNetworkManager();
  NetworkManager::getHostPeerID();
  local_28 = ScoreKeeper::getDeaths(pSVar1,&local_30);
  FUN_007c5914(&local_30);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  local_24 = ScoreKeeper::getSuicides(pSVar1);
  local_20 = local_2c - local_24 & ~(local_2c - local_24 >> 0x1f);
  local_1c = local_20;
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),1);
  (**(code **)(**(int **)(this + 0xf4) + 0x90))(*(undefined4 *)(this + 0xf4),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),1);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0 < local_24);
  pcVar8 = *(code **)(**(int **)(this + 0xf0) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0xf0);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("+%d KILL BONUS",local_2c);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar8)(uVar9,uVar3);
  pcVar8 = *(code **)(**(int **)(this + 0x10c) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x10c);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("-%d SUICIDES",local_24);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar8)(uVar9,uVar3);
  pcVar8 = *(code **)(**(int **)(this + 0xfc) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0xfc);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("EXP EARNED: %d",local_1c);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar8)(uVar9,uVar3);
  pcVar8 = *(code **)(**(int **)(this + 0x118) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x118);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("BP EARNED: %d",local_20);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar8)(uVar9,uVar3);
  pcVar8 = *(code **)(**(int **)(this + 0x118) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0x118);
  uVar3 = FUN_003bd704(0xf5,0xf5,0);
  local_30 = (undefined1)uVar3;
  local_2f = (undefined1)((uint)uVar3 >> 8);
  local_2e = (undefined1)((uint)uVar3 >> 0x10);
  (*pcVar8)(uVar9,&local_30);
  pcVar8 = *(code **)(**(int **)(this + 0xfc) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0xfc);
  uVar3 = FUN_003bd704(0xf5,0xf5,0);
  local_30 = (undefined1)uVar3;
  local_2f = (undefined1)((uint)uVar3 >> 8);
  local_2e = (undefined1)((uint)uVar3 >> 0x10);
  (*pcVar8)(uVar9,&local_30);
  pcVar8 = *(code **)(**(int **)(this + 0x10c) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0x10c);
  uVar3 = FUN_003bd704(0xff,0,0);
  local_30 = (undefined1)uVar3;
  local_2f = (undefined1)((uint)uVar3 >> 8);
  local_2e = (undefined1)((uint)uVar3 >> 0x10);
  (*pcVar8)(uVar9,&local_30);
  pcVar8 = *(code **)(**(int **)(this + 0xf0) + 0x1bc);
  uVar9 = *(undefined4 *)(this + 0xf0);
  uVar3 = FUN_003bd704(0,0xff,0);
  local_30 = (undefined1)uVar3;
  local_2f = (undefined1)((uint)uVar3 >> 8);
  local_2e = (undefined1)((uint)uVar3 >> 0x10);
  (*pcVar8)(uVar9,&local_30);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  ScoreKeeper::applyAward(pSVar1,local_1c,local_2c,local_28,local_20);
  iVar4 = ScoreKeeper::sharedScoreKeeper();
  *(undefined1 *)(iVar4 + 0x28) = 1;
  LeaderBoardBridge::sharedLeaderBoardBridge();
  local_18 = LeaderBoardBridge::calcPlayerExp();
  pLVar5 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
  iVar4 = LeaderBoardBridge::calcPlayerPoints(pLVar5);
  pIVar6 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
  iVar7 = ItemPurchase::sharedItemPurchase();
  iVar7 = ItemLibrary::getTotalPurchaseAmount(pIVar6,*(CCArray **)(iVar7 + 4));
  if (iVar4 - iVar7 < 1) {
    local_14 = 0;
  }
  else {
    pLVar5 = (LeaderBoardBridge *)LeaderBoardBridge::sharedLeaderBoardBridge();
    iVar4 = LeaderBoardBridge::calcPlayerPoints(pLVar5);
    pIVar6 = (ItemLibrary *)ItemLibrary::sharedItemLibrary();
    iVar7 = ItemPurchase::sharedItemPurchase();
    local_14 = ItemLibrary::getTotalPurchaseAmount(pIVar6,*(CCArray **)(iVar7 + 4));
    local_14 = iVar4 - local_14;
  }
  pcVar8 = *(code **)(**(int **)(this + 0x100) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x100);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("TOTAL EXP: %d",local_18);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar8)(uVar9,uVar3);
  pcVar8 = *(code **)(**(int **)(this + 0x104) + 0x1f8);
  uVar9 = *(undefined4 *)(this + 0x104);
  pCVar2 = (CCString *)cocos2d::CCString::createWithFormat("TOTAL BP: %d",local_14);
  uVar3 = cocos2d::CCString::getCString(pCVar2);
  (*pcVar8)(uVar9,uVar3);
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  iVar4 = ScoreKeeper::getRankChange(pSVar1);
  if (iVar4 == 1) {
    showPromotion(this);
  }
  return;
}

// ---- PostGameScreen::playerQuitGame  @ 0x3c0754
/* PostGameScreen::playerQuitGame() */

void __thiscall PostGameScreen::playerQuitGame(PostGameScreen *this)

{
  CCString *this_00;
  undefined4 uVar1;
  int iVar2;
  code *pcVar3;
  undefined4 uVar4;
  undefined1 local_14;
  undefined1 local_13;
  undefined1 local_12;
  
  (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
  (**(code **)(**(int **)(this + 0xf8) + 0x90))(*(undefined4 *)(this + 0xf8),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  (**(code **)(**(int **)(this + 0x118) + 0x90))(*(undefined4 *)(this + 0x118),0);
  pcVar3 = *(code **)(**(int **)(this + 0xf4) + 0x1f8);
  uVar4 = *(undefined4 *)(this + 0xf4);
  this_00 = (CCString *)cocos2d::CCString::createWithFormat("QUIT PENALTY AD VIEWED");
  uVar1 = cocos2d::CCString::getCString(this_00);
  (*pcVar3)(uVar4,uVar1);
  (**(code **)(**(int **)(this + 0xfc) + 0x1f8))(*(undefined4 *)(this + 0xfc),"EXP EARNED: 0");
  pcVar3 = *(code **)(**(int **)(this + 0xfc) + 0x1bc);
  uVar4 = *(undefined4 *)(this + 0xfc);
  uVar1 = FUN_003bd704(0xff,0,0);
  local_14 = (undefined1)uVar1;
  local_13 = (undefined1)((uint)uVar1 >> 8);
  local_12 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar3)(uVar4,&local_14);
  (**(code **)(**(int **)(this + 0x110) + 0x23c))(*(undefined4 *)(this + 0x110),&DAT_007e38fc);
  pcVar3 = *(code **)(**(int **)(this + 0xf4) + 0x1bc);
  uVar4 = *(undefined4 *)(this + 0xf4);
  uVar1 = FUN_003bd704(0xff,0,0);
  local_14 = (undefined1)uVar1;
  local_13 = (undefined1)((uint)uVar1 >> 8);
  local_12 = (undefined1)((uint)uVar1 >> 0x10);
  (*pcVar3)(uVar4,&local_14);
  iVar2 = ScoreKeeper::sharedScoreKeeper();
  *(undefined1 *)(iVar2 + 0x28) = 1;
  return;
}
