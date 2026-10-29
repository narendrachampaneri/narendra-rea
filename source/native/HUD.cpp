// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 55 functions

// ---- HUD::HUD  @ 0x34a1ec
/* HUD::HUD() */

HUD * __thiscall HUD::HUD(HUD *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  cocos2d::extension::CCEditBoxDelegate::CCEditBoxDelegate((CCEditBoxDelegate *)(this + 0xe4));
  *(undefined ***)this = &PTR_copyWithZone_1_00912530;
  *(undefined ***)(this + 0xe4) = &PTR__HUD_1_009126dc;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x158));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x160));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x168));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x170));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x178));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x180));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x1b4));
  return this;
}

// ---- HUD::init  @ 0x34a29c
/* HUD::init() */

bool __thiscall HUD::init(HUD *this)

{
  char cVar1;
  undefined3 uVar2;
  undefined4 uVar3;
  CCScale9Sprite *pCVar4;
  CCNode *pCVar5;
  CCNode *pCVar6;
  CCNode *pCVar7;
  CCNode *pCVar8;
  CCNode *pCVar9;
  CCNode *pCVar10;
  CCNode *pCVar11;
  CCNode *pCVar12;
  CCNode *pCVar13;
  CCNode *pCVar14;
  CCNode *pCVar15;
  CCNode *pCVar16;
  CCNode *pCVar17;
  CCNode *pCVar18;
  CCNode *pCVar19;
  CCNode *pCVar20;
  CCNode *pCVar21;
  CCNode *pCVar22;
  CCNotificationCenter *pCVar23;
  time_t tVar24;
  code *pcVar25;
  float fVar26;
  float extraout_s0;
  float extraout_s0_00;
  undefined8 uVar27;
  float extraout_s1;
  float extraout_s1_00;
  undefined4 uVar28;
  undefined4 uVar29;
  code *local_38;
  undefined4 local_34;
  code *local_30;
  undefined4 local_2c;
  code *local_28;
  undefined4 local_24;
  
  cVar1 = cocos2d::CCNode::init();
  if (cVar1 == '\x01') {
    *(undefined4 *)(this + 0x104) = 0;
    uVar3 = Joypad::create();
    *(undefined4 *)(this + 0xf4) = uVar3;
    uVar3 = AmmoMeter::create();
    *(undefined4 *)(this + 0xf8) = uVar3;
    uVar3 = HeartMeter::create();
    *(undefined4 *)(this + 0xfc) = uVar3;
    uVar3 = Radar::create();
    *(undefined4 *)(this + 0x100) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf4));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf8));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xfc));
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x100));
    cocos2d::CCSize::CCSize((CCSize *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20));
    pCVar4 = (CCScale9Sprite *)cocos2d::extension::CCScale9Sprite::create("streak_new.png");
    uVar3 = cocos2d::extension::CCEditBox::create
                      ((CCSize *)&local_28,pCVar4,(CCScale9Sprite *)0x0,(CCScale9Sprite *)0x0);
    *(undefined4 *)(this + 0xf0) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xf0));
    cocos2d::extension::CCEditBox::setDelegate
              (*(CCEditBox **)(this + 0xf0),(CCEditBoxDelegate *)(this + 0xe4));
    uVar27 = (**(code **)(**(int **)(this + 0xf0) + 0x90))(*(undefined4 *)(this + 0xf0),0);
    pcVar25 = *(code **)(**(int **)(this + 0xf0) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0xf0);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    cocos2d::extension::CCEditBox::setInputFlag(*(CCEditBox **)(this + 0xf0),3);
    uVar27 = cocos2d::extension::CCEditBox::setReturnType(*(CCEditBox **)(this + 0xf0),1);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x158),(CCPoint *)&local_28);
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x160),(CCPoint *)&RELOAD_POS);
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x168),(CCPoint *)&GRENADE_POS);
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x170),(CCPoint *)&PUNCH_POS);
    uVar27 = cocos2d::CCPoint::operator=((CCPoint *)(this + 0x178),(CCPoint *)&ZOOM_POS);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x180),(CCPoint *)&local_28);
    *(undefined4 *)(this + 0x188) = 0;
    *(undefined4 *)(this + 0x1ac) = 0;
    *(undefined4 *)(this + 0x1b0) = 0;
    uVar3 = cocos2d::CCArray::create();
    *(undefined4 *)(this + 0x154) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x154));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    cocos2d::CCPoint::operator=((CCPoint *)(this + 0x1b4),(CCPoint *)&local_28);
    uVar3 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x108) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x108));
    pcVar25 = *(code **)(**(int **)(this + 0x108) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x108) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x108);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    (**(code **)(**(int **)(this + 0x108) + 0x40))(*(undefined4 *)(this + 0x108),0x3f000000);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x108),0x19);
    pcVar25 = *(code **)(**(int **)(this + 0x108) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0x108);
    local_28._0_3_ = FUN_00349154(0xff,0xff,0xff);
    fVar26 = (float)(*pcVar25)(uVar3,&local_28);
    uVar3 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar26);
    *(undefined4 *)(this + 0x148) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x148));
    pcVar25 = *(code **)(**(int **)(this + 0x148) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x148) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x148);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x148) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0x148);
    local_28._0_3_ = FUN_00349154(0xff,0xff,0xff);
    (*pcVar25)(uVar3,&local_28);
    uVar3 = cocos2d::CCLabelAtlas::create("0","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x150) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x150));
    pcVar25 = *(code **)(**(int **)(this + 0x150) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x150);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    (**(code **)(**(int **)(this + 0x150) + 0x40))(*(undefined4 *)(this + 0x150),0x3ee66666);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x150),0x19);
    (**(code **)(**(int **)(this + 0x150) + 0x1a4))(*(undefined4 *)(this + 0x150),0xbe);
    pcVar25 = *(code **)(**(int **)(this + 0x150) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0x150);
    local_28._0_3_ = FUN_00349154(0xff,0xff,0xff);
    (*pcVar25)(uVar3,&local_28);
    uVar3 = cocos2d::CCLabelAtlas::create("00:00","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x140) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x140));
    pcVar25 = *(code **)(**(int **)(this + 0x140) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x140) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x140);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    (**(code **)(**(int **)(this + 0x140) + 0x40))(*(undefined4 *)(this + 0x140),0x3ee66666);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x140),0x19);
    uVar3 = cocos2d::CCLabelAtlas::create("","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x144) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x144));
    pcVar25 = *(code **)(**(int **)(this + 0x144) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x144) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x144);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    (**(code **)(**(int **)(this + 0x144) + 0x40))(*(undefined4 *)(this + 0x144),0x3f0ccccd);
    cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x144),0x19);
    uVar3 = cocos2d::CCSprite::createWithSpriteFrameName("uzi.png");
    *(undefined4 *)(this + 0x10c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x10c));
    uVar27 = (**(code **)(**(int **)(this + 0x10c) + 0x40))
                       (*(undefined4 *)(this + 0x10c),0x3ecccccd);
    pcVar25 = *(code **)(**(int **)(this + 0x10c) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x10c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0xf8) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0xf8);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0xfc) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0xfc);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    pCVar5 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("meleeBtn.png");
    pCVar6 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("meleeBtn.png");
    pCVar7 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("grenadeBtn.png");
    pCVar8 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("grenadeBtn.png");
    pCVar9 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("wepChangeBtn.png");
    pCVar10 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("wepChangeBtn.png");
    pCVar11 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("wepSwitchArea.png");
    pCVar12 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("wepSwitchArea.png");
    pCVar13 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("wepSwitchArea.png");
    pCVar14 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("wepSwitchArea.png");
    pCVar15 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("nadeSwitchArea.png");
    pCVar16 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("nadeSwitchArea.png");
    pCVar17 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("ammoBtn.png");
    pCVar18 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("ammoBtn.png");
    pCVar19 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("zoomBtn.png");
    pCVar20 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("zoomBtn.png");
    pCVar21 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("dualBtn.png");
    pCVar22 = (CCNode *)cocos2d::CCSprite::createWithSpriteFrameName("dualBtn.png");
    uVar28 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar5,pCVar6,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c07d);
    *(undefined4 *)(this + 0x114) = uVar3;
    (**(code **)(**(int **)(this + 0x114) + 0x4c))
              (*(undefined4 *)(this + 0x114),this + 0x170,this + 0x170,
               *(code **)(**(int **)(this + 0x114) + 0x4c),uVar28);
    uVar28 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar7,pCVar8,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c161);
    *(undefined4 *)(this + 0x118) = uVar3;
    (**(code **)(**(int **)(this + 0x118) + 0x4c))
              (*(undefined4 *)(this + 0x118),this + 0x168,this + 0x168,
               *(code **)(**(int **)(this + 0x118) + 0x4c),uVar28);
    pcVar25 = *(code **)(**(int **)(this + 0x150) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x150);
    (**(code **)(**(int **)(this + 0x118) + 0x8c))(*(undefined4 *)(this + 0x118));
    uVar27 = (**(code **)(**(int **)(this + 0x118) + 0x8c))(*(undefined4 *)(this + 0x118));
    uVar27 = cocos2d::CCPoint::CCPoint
                       ((CCPoint *)&local_38,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    FUN_003491b0(&local_28,&local_38,&local_30);
    (*pcVar25)(uVar3,&local_28);
    uVar28 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar9,pCVar10,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c639);
    *(undefined4 *)(this + 0x128) = uVar3;
    (**(code **)(**(int **)(this + 0x128) + 0x4c))
              (*(undefined4 *)(this + 0x128),this + 0x180,this + 0x180,
               *(code **)(**(int **)(this + 0x128) + 0x4c),uVar28);
    pcVar25 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar28 = *(undefined4 *)(this + 0x10c);
    uVar3 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    (*pcVar25)(uVar28,uVar3);
    uVar29 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar11,pCVar12,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c525);
    *(undefined4 *)(this + 0x11c) = uVar3;
    pcVar25 = *(code **)(**(int **)(this + 0x11c) + 0x4c);
    uVar28 = *(undefined4 *)(this + 0x11c);
    uVar3 = (**(code **)(**(int **)(this + 0xf8) + 0x50))(*(undefined4 *)(this + 0xf8));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,extraout_s0,extraout_s1);
    FUN_003491b0(&local_28,uVar3,&local_30,&local_30,uVar29);
    (*pcVar25)(uVar28,&local_28);
    uVar29 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar15,pCVar16,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c5d5);
    *(undefined4 *)(this + 0x120) = uVar3;
    pcVar25 = *(code **)(**(int **)(this + 0x120) + 0x4c);
    uVar28 = *(undefined4 *)(this + 0x120);
    uVar3 = (**(code **)(**(int **)(this + 0xf8) + 0x50))(*(undefined4 *)(this + 0xf8));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,extraout_s0_00,extraout_s1_00);
    FUN_003491b0(&local_28,uVar3,&local_30,&local_30,uVar29);
    (*pcVar25)(uVar28,&local_28);
    uVar28 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar17,pCVar18,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c459);
    *(undefined4 *)(this + 300) = uVar3;
    (**(code **)(**(int **)(this + 300) + 0x4c))
              (*(undefined4 *)(this + 300),this + 0x160,this + 0x160,
               *(code **)(**(int **)(this + 300) + 0x4c),uVar28);
    uVar28 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar19,pCVar20,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c285);
    *(undefined4 *)(this + 0x130) = uVar3;
    (**(code **)(**(int **)(this + 0x130) + 0x4c))
              (*(undefined4 *)(this + 0x130),this + 0x178,this + 0x178,
               *(code **)(**(int **)(this + 0x130) + 0x4c),uVar28);
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar13,pCVar14,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c94d);
    *(undefined4 *)(this + 0x134) = uVar3;
    pcVar25 = *(code **)(**(int **)(this + 0x134) + 0x4c);
    uVar28 = *(undefined4 *)(this + 0x134);
    uVar3 = (**(code **)(**(int **)(this + 0xfc) + 0x50))(*(undefined4 *)(this + 0xfc));
    (*pcVar25)(uVar28,uVar3);
    uVar28 = 0;
    uVar3 = cocos2d::CCMenuItemSprite::create
                      (pCVar21,pCVar22,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c78d);
    *(undefined4 *)(this + 0x138) = uVar3;
    (**(code **)(**(int **)(this + 0x138) + 0x4c))
              (*(undefined4 *)(this + 0x138),this + 0x180,this + 0x180,
               *(code **)(**(int **)(this + 0x138) + 0x4c),uVar28);
    uVar3 = cocos2d::CCMenu::create
                      (*(CCMenuItem **)(this + 0x114),*(undefined4 *)(this + 0x118),
                       *(undefined4 *)(this + 0x128),*(undefined4 *)(this + 0x11c),
                       *(undefined4 *)(this + 0x120),*(undefined4 *)(this + 300),
                       *(undefined4 *)(this + 0x130),*(undefined4 *)(this + 0x134),
                       *(undefined4 *)(this + 0x138),0);
    *(undefined4 *)(this + 0x110) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x110));
    uVar3 = cocos2d::CCLabelAtlas::create("1X","font02_new.png",0x20,0x20,0x20);
    *(undefined4 *)(this + 0x13c) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0x13c));
    uVar27 = cocos2d::CCLabelAtlas::setDrawWidth(*(CCLabelAtlas **)(this + 0x13c),0x1c);
    pcVar25 = *(code **)(**(int **)(this + 0x13c) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x13c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    (**(code **)(**(int **)(this + 0x13c) + 0x40))(*(undefined4 *)(this + 0x13c),0x3ecccccd);
    pcVar25 = *(code **)(**(int **)(this + 0x13c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x13c);
    (**(code **)(**(int **)(this + 0x130) + 0x8c))(*(undefined4 *)(this + 0x130));
    uVar27 = (**(code **)(**(int **)(this + 0x130) + 0x8c))(*(undefined4 *)(this + 0x130));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    (*pcVar25)(uVar3,&local_28);
    (**(code **)(**(int **)(this + 300) + 0x40))(*(undefined4 *)(this + 300),RELOAD_SCL);
    (**(code **)(**(int **)(this + 0x130) + 0x40))(*(undefined4 *)(this + 0x130),ZOOM_SCL);
    (**(code **)(**(int **)(this + 0x118) + 0x40))(*(undefined4 *)(this + 0x118),GRENADE_SCL);
    (**(code **)(**(int **)(this + 0x114) + 0x40))(*(undefined4 *)(this + 0x114),PUNCH_SCL);
    (**(code **)(**(int **)(this + 0x128) + 0x90))(*(undefined4 *)(this + 0x128),0);
    uVar27 = (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
    pcVar25 = *(code **)(**(int **)(this + 0x110) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x110);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    fVar26 = (float)(*pcVar25)(uVar3,&local_28);
    uVar3 = cocos2d::CCLabelTTF::create("","Arial-BoldMT",fVar26);
    *(undefined4 *)(this + 0x14c) = uVar3;
    uVar27 = cocos2d::CCObject::retain(*(CCObject **)(this + 0x14c));
    pcVar25 = *(code **)(**(int **)(this + 0x14c) + 0x7c);
    uVar3 = *(undefined4 *)(this + 0x14c);
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_28,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    uVar27 = (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x14c) + 0x4c);
    uVar3 = *(undefined4 *)(this + 0x14c);
    uVar27 = cocos2d::CCPoint::CCPoint
                       ((CCPoint *)&local_38,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20));
    cocos2d::CCPoint::CCPoint((CCPoint *)&local_30,(float)uVar27,(float)((ulonglong)uVar27 >> 0x20))
    ;
    FUN_003491b0(&local_28,&local_38,&local_30);
    (*pcVar25)(uVar3,&local_28);
    pcVar25 = *(code **)(**(int **)(this + 0x14c) + 0x1bc);
    uVar3 = *(undefined4 *)(this + 0x14c);
    uVar2 = FUN_00349154(0xf5,0xf5,0);
    local_28 = (code *)CONCAT13(local_28._3_1_,uVar2);
    (*pcVar25)(uVar3,&local_28);
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34ca59,(char *)0x0,
               (CCObject *)"WeaponCollisionBegan");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34cf9d,(char *)0x0,
               (CCObject *)"WeaponCollisionEnded");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c2e5,(char *)0x0,
               (CCObject *)"PlayerSpawn");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34c0f9,(char *)0x0,
               (CCObject *)"GrenadeChange");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34de19,(char *)0x0,
               (CCObject *)"DeactivateScoreRow");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34dd8d,(char *)0x0,
               (CCObject *)"ActivateScoreRow");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34dea5,(char *)0x0,
               (CCObject *)"ScoreChanged");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34dfa1,(char *)0x0,
               (CCObject *)"InstantMessageKeyboard");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34dec9,(char *)0x0,
               (CCObject *)"PressL1Button");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34dee1,(char *)0x0,
               (CCObject *)"Press2Button");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34def9,(char *)0x0,
               (CCObject *)"PressUButton");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34df11,(char *)0x0,
               (CCObject *)"Press4Button");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34df29,(char *)0x0,
               (CCObject *)"Press1Button");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34df41,(char *)0x0,
               (CCObject *)"PressStartButton");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_38 = (code *)0x34df59;
    local_34 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34df59,(char *)0x0,
               (CCObject *)"Press3Button");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_30 = (code *)0x34df71;
    local_2c = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34df71,(char *)0x0,
               (CCObject *)"PressRButton");
    pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    local_28 = (code *)0x34df89;
    local_24 = 0;
    cocos2d::CCNotificationCenter::addObserver
              (pCVar23,(CCObject *)this,(_func_void_CCObject_ptr *)0x34df89,(char *)0x0,
               (CCObject *)"PressLButton");
    uVar3 = ScoreScreen::create();
    *(undefined4 *)(this + 0xe8) = uVar3;
    uVar3 = MenuScreen::create();
    *(undefined4 *)(this + 0xec) = uVar3;
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xe8));
    cocos2d::CCObject::retain(*(CCObject **)(this + 0xec));
    (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x100));
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x140),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x108),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x110),0);
    (**(code **)(**(int **)(this + 0x118) + 0xcc))
              (*(undefined4 *)(this + 0x118),*(undefined4 *)(this + 0x150),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x10c),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf4),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xf8),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xfc),0);
    (**(code **)(**(int **)(this + 0x130) + 0xcc))
              (*(undefined4 *)(this + 0x130),*(undefined4 *)(this + 0x13c),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xe8),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0xec),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x14c),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x148),0);
    (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x144),0);
    tVar24 = time((time_t *)0x0);
    *(time_t *)(this + 0x198) = tVar24;
    *(undefined4 *)(this + 0x19c) = 0;
    *(undefined4 *)(this + 0x1a0) = 400;
    *(undefined4 *)(this + 0x1c0) = *(undefined4 *)(this + 0x1a0);
    *(undefined4 *)(this + 0x1a8) = 0;
    *(undefined4 *)(this + 0x18c) = 0;
    *(undefined4 *)(this + 400) = 0;
    *(undefined4 *)(this + 0x194) = 0;
    this[0x1c5] = (HUD)0x0;
    *(undefined4 *)(this + 0x1a4) = 0;
    this[0x1bc] = (HUD)0x0;
    this[0x1c4] = (HUD)0x0;
  }
  return cVar1 == '\x01';
}

// ---- HUD::~HUD  @ 0x34bb28
/* WARNING: Removing unreachable block (ram,0x0034bc6c) */
/* HUD::~HUD() */

HUD * __thiscall HUD::~HUD(HUD *this)

{
  CCNotificationCenter *this_00;
  
  *(undefined ***)this = &PTR_copyWithZone_1_00912530;
  *(undefined ***)(this + 0xe4) = &PTR__HUD_1_009126dc;
  this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  cocos2d::CCNotificationCenter::removeAllObservers(this_00,(CCObject *)this);
  cocos2d::CCNode::removeAllChildren((CCNode *)this);
  cocos2d::CCObject::release(*(CCObject **)(this + 0x14c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf0));
  *(undefined4 *)(this + 0xf0) = 0;
  *(undefined4 *)(this + 0x14c) = 0;
  cocos2d::CCObject::release(*(CCObject **)(this + 0xe8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xec));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x100));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf4));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xf8));
  cocos2d::CCObject::release(*(CCObject **)(this + 0xfc));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x154));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x10c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x150));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x13c));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x140));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x148));
  cocos2d::CCObject::release(*(CCObject **)(this + 0x108));
  if (*(int *)(this + 0x104) != 0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  }
  cocos2d::CCObject::release(*(CCObject **)(this + 0x144));
  cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate((CCEditBoxDelegate *)(this + 0xe4));
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return this;
}

// ---- HUD::~HUD  @ 0x34bc84
/* non-virtual thunk to HUD::~HUD() */

void __thiscall HUD::~HUD(HUD *this)

{
  ~HUD(this + -0xe4);
  return;
}

// ---- HUD::~HUD  @ 0x34bc8c
/* HUD::~HUD() */

HUD * __thiscall HUD::~HUD(HUD *this)

{
  ~HUD(this);
  operator_delete(this);
  return this;
}

// ---- HUD::~HUD  @ 0x34bca8
/* non-virtual thunk to HUD::~HUD() */

void __thiscall HUD::~HUD(HUD *this)

{
  ~HUD(this + -0xe4);
  return;
}

// ---- HUD::removeAllDependencies  @ 0x34bcb0
/* HUD::removeAllDependencies() */

void HUD::removeAllDependencies(void)

{
  return;
}

// ---- HUD::presentProPackAlertDual  @ 0x34bcb8
/* HUD::presentProPackAlertDual() */

void HUD::presentProPackAlertDual(void)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  InAppPurchaseBridge aIStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.propack",auStack_18);
  InAppPurchaseBridge::getProductPrice(aIStack_24,auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  FUN_007c62f0(aIStack_24," UPGRADE");
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(auStack_18,"Duals Require Pro Pack",auStack_2c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_14,"Upgrade now for online access to this feature and more!",auStack_28);
  FUN_0079a3f4(auStack_34);
  FUN_007c6a60(asStack_20,"NOT NOW",auStack_34);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
  uVar2 = FUN_007c5300(aIStack_24);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(asStack_1c,uVar2,auStack_30);
  uVar2 = cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
  AMessageBox::showAlert(0x34dd29,auStack_18,auStack_14,uVar2,0,0);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_30);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_34);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(aIStack_24);
  return;
}

// ---- HUD::presentProPackAlertWeapon  @ 0x34be80
/* HUD::presentProPackAlertWeapon() */

void HUD::presentProPackAlertWeapon(void)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  InAppPurchaseBridge aIStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [4];
  
  FUN_0079a3f4(auStack_18);
  FUN_007c6a60(auStack_14,"com.chadtowns.da2.propack",auStack_18);
  InAppPurchaseBridge::getProductPrice(aIStack_24,auStack_14);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_18);
  FUN_007c62f0(aIStack_24," UPGRADE");
  FUN_0079a3f4(auStack_2c);
  FUN_007c6a60(auStack_18,"Pro Pack Required",auStack_2c);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(auStack_14,"Upgrade now for online access to this weapon and more!",auStack_28);
  FUN_0079a3f4(auStack_34);
  FUN_007c6a60(asStack_20,"NOT NOW",auStack_34);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_20);
  uVar2 = FUN_007c5300(aIStack_24);
  FUN_0079a3f4(auStack_30);
  FUN_007c6a60(asStack_1c,uVar2,auStack_30);
  uVar2 = cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,uVar2,0);
  AMessageBox::showAlert(0x34dd29,auStack_18,auStack_14,uVar2,0,0);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_30);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_34);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_2c);
  FUN_007c5914(aIStack_24);
  return;
}

// ---- HUD::setMeters  @ 0x34c048
/* HUD::setMeters(float, float) */

void HUD::setMeters(float param_1,float param_2)

{
  double in_d1;
  
  HeartMeter::setMeters((double)CONCAT44(param_2,param_1),in_d1);
  return;
}

// ---- HUD::onPunch  @ 0x34c07c
/* HUD::onPunch(cocos2d::CCObject*) */

void HUD::onPunch(CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  
  if ((*(float *)(param_1 + 400) <= 0.5) ||
     (cVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier), cVar2 == '\x01')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(*hostSoldier + 0x2d0))(hostSoldier);
    *(undefined4 *)(param_1 + 400) = 0;
  }
  return;
}

// ---- HUD::onGrenadeChange  @ 0x34c0f8
/* HUD::onGrenadeChange(cocos2d::CCObject*) */

void __thiscall HUD::onGrenadeChange(HUD *this,CCObject *param_1)

{
  undefined4 uVar1;
  CCString *this_00;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0x150) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0x150);
  uVar1 = (**(code **)(*hostSoldier + 0x2d8))(hostSoldier);
  this_00 = (CCString *)cocos2d::CCString::createWithFormat("%d",uVar1,&DAT_007d9a90,uVar1,param_1);
  uVar1 = cocos2d::CCString::getCString(this_00);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- HUD::onGrenade  @ 0x34c160
/* HUD::onGrenade(cocos2d::CCObject*) */

void HUD::onGrenade(CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  
  if ((0 < *(int *)(param_1 + 0x1c0)) || ((gameType != 4 && (gameType != 3)))) {
    cVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier);
    if ((cVar2 == '\x01') || (*(float *)(param_1 + 0x18c) <= 1.0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(*hostSoldier + 0x274))(hostSoldier);
      *(undefined4 *)(param_1 + 0x18c) = 0;
    }
  }
  return;
}

// ---- HUD::updateZoomLabel  @ 0x34c200
/* HUD::updateZoomLabel() */

void __thiscall HUD::updateZoomLabel(HUD *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 auStack_18 [4];
  int *local_14;
  
  local_14 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if (local_14 != (int *)0x0) {
    pcVar2 = *(code **)(**(int **)(this + 0x13c) + 0x1f8);
    uVar3 = *(undefined4 *)(this + 0x13c);
    (**(code **)(*local_14 + 0x2d4))(auStack_18,local_14);
    uVar1 = FUN_007c5300(auStack_18);
    (*pcVar2)(uVar3,uVar1);
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- HUD::onZoom  @ 0x34c284
/* HUD::onZoom(cocos2d::CCObject*) */

void HUD::onZoom(CCObject *param_1)

{
  int *piVar1;
  
  Sound::playSound(sndEng,4);
  piVar1 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x2d8))(piVar1);
  }
  updateZoomLabel((HUD *)param_1);
  return;
}

// ---- HUD::onPlayerSpawn  @ 0x34c2e4
/* HUD::onPlayerSpawn(cocos2d::CCObject*) */

void __thiscall HUD::onPlayerSpawn(HUD *this,CCObject *param_1)

{
  int iVar1;
  CCArray *pCVar2;
  AvatarRenderer *this_00;
  CCTexture2D *pCVar3;
  undefined4 uVar4;
  code *pcVar5;
  undefined8 uVar6;
  CCPoint aCStack_18 [12];
  
  iVar1 = cocos2d::CCInteger::getValue((CCInteger *)param_1);
  updateZoomLabel(this);
  AvatarRenderer::sharedAvatarRenderer();
  pCVar2 = (CCArray *)AvatarRenderer::getCustomAvatarProperties();
  this_00 = (AvatarRenderer *)AvatarRenderer::sharedAvatarRenderer();
  pCVar3 = (CCTexture2D *)AvatarRenderer::getHeadTexture(this_00,pCVar2,playerSkin);
  if (*(int *)(this + 0x104) != 0) {
    (**(code **)(*(int *)this + 0xf4))(this,*(undefined4 *)(this + 0x104),0);
    cocos2d::CCObject::release(*(CCObject **)(this + 0x104));
  }
  uVar4 = cocos2d::CCSprite::createWithTexture(pCVar3);
  *(undefined4 *)(this + 0x104) = uVar4;
  cocos2d::CCObject::retain(*(CCObject **)(this + 0x104));
  uVar6 = (**(code **)(**(int **)(this + 0x104) + 0x40))(*(undefined4 *)(this + 0x104),0x3ecccccd);
  pcVar5 = *(code **)(**(int **)(this + 0x104) + 0x7c);
  uVar4 = *(undefined4 *)(this + 0x104);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  (*pcVar5)(uVar4,aCStack_18);
  (**(code **)(**(int **)(this + 0x104) + 0x4c))(*(undefined4 *)(this + 0x104),this + 0x1b4);
  (**(code **)(*(int *)this + 0xcc))(this,*(undefined4 *)(this + 0x104),0);
  updateLifeCount(this,iVar1);
  onGrenadeChange(this,(CCObject *)0x0);
  Joypad::cancelTouches(*(Joypad **)(this + 0xf4));
  return;
}

// ---- HUD::updateLifeCount  @ 0x34c418
/* HUD::updateLifeCount(int) */

void __thiscall HUD::updateLifeCount(HUD *this,int param_1)

{
  CCString *this_00;
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  pcVar2 = *(code **)(**(int **)(this + 0x108) + 0x1f8);
  uVar3 = *(undefined4 *)(this + 0x108);
  this_00 = (CCString *)cocos2d::CCString::createWithFormat("X%d",param_1);
  uVar1 = cocos2d::CCString::getCString(this_00);
  (*pcVar2)(uVar3,uVar1);
  return;
}

// ---- HUD::onReload  @ 0x34c458
/* HUD::onReload(cocos2d::CCObject*) */

void HUD::onReload(CCObject *param_1)

{
  bool bVar1;
  char cVar2;
  int *piVar3;
  
  cVar2 = (**(code **)(**(int **)(param_1 + 300) + 0x94))(*(undefined4 *)(param_1 + 300));
  if (cVar2 == '\x01') {
    cVar2 = (**(code **)(*hostSoldier + 0x264))(hostSoldier);
    if ((cVar2 == '\x01') || (*(float *)(param_1 + 0x194) <= 1.0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      Sound::playSound(sndEng,4);
      piVar3 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x28c))(piVar3);
      }
      *(undefined4 *)(param_1 + 0x194) = 0;
    }
  }
  return;
}

// ---- HUD::onWeaponSwitch  @ 0x34c524
/* HUD::onWeaponSwitch(cocos2d::CCObject*) */

void __thiscall HUD::onWeaponSwitch(HUD *this,CCObject *param_1)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 auStack_18 [4];
  int *local_14;
  
  Sound::playSound(sndEng,4);
  (**(code **)(*hostSoldier + 0x2ac))(hostSoldier);
  local_14 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if (local_14 != (int *)0x0) {
    pcVar2 = *(code **)(**(int **)(this + 0x13c) + 0x1f8);
    uVar3 = *(undefined4 *)(this + 0x13c);
    (**(code **)(*local_14 + 0x2d4))
              (auStack_18,local_14,auStack_18,*(code **)(*local_14 + 0x2d4),param_1);
    uVar1 = FUN_007c5300(auStack_18);
    (*pcVar2)(uVar3,uVar1);
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- HUD::onGrenadeSwitch  @ 0x34c5d4
/* HUD::onGrenadeSwitch(cocos2d::CCObject*) */

void HUD::onGrenadeSwitch(CCObject *param_1)

{
  uint uVar1;
  
  uVar1 = cocos2d::CCArray::count((CCArray *)hostSoldier[0x7b]);
  if (1 < uVar1) {
    Sound::playSound(sndEng,4);
    (**(code **)(*hostSoldier + 0x2b0))(hostSoldier);
  }
  return;
}

// ---- HUD::onPickUpWeapon  @ 0x34c638
/* HUD::onPickUpWeapon(cocos2d::CCObject*) */

void __thiscall HUD::onPickUpWeapon(HUD *this,CCObject *param_1)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  WeaponFactory *pWVar6;
  CCNotificationCenter *this_00;
  CCObject *pCVar7;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  
  cVar4 = (**(code **)(**(int **)(this + 0x128) + 0x94))(*(undefined4 *)(this + 0x128));
  if (cVar4 != '\x01') {
    return;
  }
  bVar2 = false;
  bVar1 = false;
  if (gameType == 4) {
    FUN_0079a3f4(auStack_20);
    bVar2 = true;
    FUN_007c6a60(auStack_18,"com.chadtowns.da2.propack",auStack_20,auStack_20,param_1);
    bVar1 = true;
    iVar5 = InAppPurchaseBridge::isProductPurchased(auStack_18);
    if (iVar5 == 0) {
      pWVar6 = (WeaponFactory *)WeaponFactory::sharedWeaponFactory();
      cVar4 = WeaponFactory::isProPackWeapon(pWVar6,*(undefined4 *)(this + 0x1a4));
      if (cVar4 == '\x01') {
        bVar3 = false;
        goto LAB_0034c6c8;
      }
    }
  }
  bVar3 = true;
LAB_0034c6c8:
  if (bVar1) {
    FUN_007c5914(auStack_18);
  }
  if (bVar2) {
    FUN_0079a3fc(auStack_20);
  }
  if (bVar3) {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(asStack_14,&DAT_007d97d8,auStack_1c);
    pCVar7 = (CCObject *)cocos2d::CCString::create(asStack_14);
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponPickUp",pCVar7);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_1c);
  }
  else {
    presentProPackAlertWeapon();
  }
  return;
}

// ---- HUD::onPickUpDualWeapon  @ 0x34c78c
/* HUD::onPickUpDualWeapon(cocos2d::CCObject*) */

void __thiscall HUD::onPickUpDualWeapon(HUD *this,CCObject *param_1)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  char cVar4;
  int iVar5;
  CCNotificationCenter *this_00;
  CCObject *pCVar6;
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [4];
  
  cVar4 = (**(code **)(**(int **)(this + 0x138) + 0x94))(*(undefined4 *)(this + 0x138));
  if (cVar4 != '\x01') {
    return;
  }
  bVar2 = false;
  bVar1 = false;
  if (gameType == 4) {
    FUN_0079a3f4(auStack_20);
    bVar2 = true;
    FUN_007c6a60(auStack_18,"com.chadtowns.da2.propack",auStack_20,auStack_20,param_1);
    bVar1 = true;
    iVar5 = InAppPurchaseBridge::isProductPurchased(auStack_18);
    if (iVar5 == 0) {
      bVar3 = false;
      goto LAB_0034c7fc;
    }
  }
  bVar3 = true;
LAB_0034c7fc:
  if (bVar1) {
    FUN_007c5914(auStack_18);
  }
  if (bVar2) {
    FUN_0079a3fc(auStack_20);
  }
  if (bVar3) {
    this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
    FUN_0079a3f4(auStack_1c);
    FUN_007c6a60(asStack_14,&DAT_007d9aa8,auStack_1c);
    pCVar6 = (CCObject *)cocos2d::CCString::create(asStack_14);
    cocos2d::CCNotificationCenter::postNotification(this_00,"WeaponPickUp",pCVar6);
    FUN_007c5914(asStack_14);
    FUN_0079a3fc(auStack_1c);
  }
  else {
    presentProPackAlertDual();
  }
  return;
}

// ---- HUD::onScoreScreen  @ 0x34c8c0
/* HUD::onScoreScreen() */

void __thiscall HUD::onScoreScreen(HUD *this)

{
  char cVar1;
  int iVar2;
  
  if ((this[0x1c5] == (HUD)0x0) &&
     (iVar2 = SoldierManager::isRespawning(soldierManager), iVar2 == 0)) {
    Sound::playSound(sndEng,0xd);
    cVar1 = (**(code **)(**(int **)(this + 0xe8) + 0x94))(*(undefined4 *)(this + 0xe8));
    if (cVar1 == '\x01') {
      ScoreScreen::showScreen(*(ScoreScreen **)(this + 0xe8),false,false);
    }
    else {
      ScoreScreen::showScreen(*(ScoreScreen **)(this + 0xe8),true,true);
    }
  }
  return;
}

// ---- HUD::onMenuScreen  @ 0x34c94c
/* HUD::onMenuScreen(cocos2d::CCObject*) */

void HUD::onMenuScreen(CCObject *param_1)

{
  char cVar1;
  
  if (param_1[0x1c5] == (CCObject)0x0) {
    switch(gameType) {
    case 0:
      if (PAUSED == '\0') {
        MenuScreen::pauseTraining(*(MenuScreen **)(param_1 + 0xec));
      }
      else {
        MenuScreen::resumeTraining(*(MenuScreen **)(param_1 + 0xec));
      }
      break;
    case 1:
      if (PAUSED == '\0') {
        cVar1 = SoldierManager::isRespawning(soldierManager);
        if (cVar1 != '\x01') {
          MenuScreen::pauseSurvival(*(MenuScreen **)(param_1 + 0xec));
        }
      }
      else {
        MenuScreen::resumeSurvival(*(MenuScreen **)(param_1 + 0xec));
      }
      break;
    case 2:
    case 5:
      if (*(char *)(*(int *)(param_1 + 0xec) + 0x124) == '\0') {
        cVar1 = SoldierManager::isRespawning(soldierManager);
        if (cVar1 != '\x01') {
          MenuScreen::pauseCoop(*(MenuScreen **)(param_1 + 0xec));
        }
      }
      else {
        MenuScreen::resumeCoop(*(MenuScreen **)(param_1 + 0xec));
      }
      break;
    case 3:
    case 4:
      onScoreScreen((HUD *)param_1);
    }
  }
  return;
}

// ---- HUD::weaponProxyStart  @ 0x34ca58
/* HUD::weaponProxyStart(cocos2d::CCObject*) */

void __thiscall HUD::weaponProxyStart(HUD *this,CCObject *param_1)

{
  bool bVar1;
  bool bVar2;
  char cVar3;
  int *piVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  undefined4 uVar8;
  code *pcVar9;
  undefined4 uVar10;
  undefined8 uVar11;
  CCPoint aCStack_28 [8];
  undefined1 auStack_20 [16];
  
  piVar4 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  piVar5 = (int *)(**(code **)(*hostSoldier + 0x1f8))(hostSoldier);
  bVar2 = false;
  hidePickUpWeapon(this);
  iVar6 = (**(code **)(*(int *)param_1 + 0x2f0))(param_1);
  if ((iVar6 == 0) ||
     (((piVar4 == (int *)0x0 || (iVar6 = (**(code **)(*piVar4 + 0x2ec))(piVar4), iVar6 == 0)) &&
      ((piVar5 == (int *)0x0 || (iVar6 = (**(code **)(*piVar5 + 0x2ec))(piVar5), iVar6 == 0)))))) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
    (**(code **)(**(int **)(this + 0x138) + 0x4c))(*(undefined4 *)(this + 0x138),this + 0x158);
    bVar2 = true;
    goto LAB_0034cf36;
  }
  iVar6 = (**(code **)(*(int *)param_1 + 0x2ec))(param_1);
  if ((iVar6 == 0) || (cVar3 = (**(code **)(*(int *)param_1 + 0x2f4))(param_1), cVar3 == '\x01')) {
LAB_0034cbf6:
    bVar1 = false;
  }
  else {
    if ((piVar4 == (int *)0x0) || (iVar6 = (**(code **)(*piVar4 + 0x2ec))(piVar4), iVar6 == 0)) {
LAB_0034cbb4:
      if ((piVar5 != (int *)0x0) && (iVar6 = (**(code **)(*piVar5 + 0x2ec))(piVar5), iVar6 != 0)) {
        iVar6 = (**(code **)(*piVar5 + 0x268))(piVar5);
        iVar7 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
        if (iVar6 == iVar7) goto LAB_0034cbf2;
      }
      goto LAB_0034cbf6;
    }
    iVar6 = (**(code **)(*piVar4 + 0x268))(piVar4);
    iVar7 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
    if (iVar6 != iVar7) goto LAB_0034cbb4;
LAB_0034cbf2:
    bVar1 = true;
  }
  if (bVar1) {
    (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
    (**(code **)(**(int **)(this + 0x138) + 0x4c))(*(undefined4 *)(this + 0x138),this + 0x158);
    bVar2 = true;
    goto LAB_0034cf36;
  }
  cVar3 = (**(code **)(*(int *)param_1 + 0x2f0))(param_1);
  if ((cVar3 == '\x01') || (iVar6 = (**(code **)(*(int *)param_1 + 0x2ec))(param_1), iVar6 == 0)) {
LAB_0034ccea:
    bVar1 = false;
  }
  else {
    if ((piVar4 == (int *)0x0) || (iVar6 = (**(code **)(*piVar4 + 0x2ec))(piVar4), iVar6 == 0)) {
LAB_0034cca8:
      if ((piVar5 != (int *)0x0) && (iVar6 = (**(code **)(*piVar5 + 0x2ec))(piVar5), iVar6 != 0)) {
        iVar6 = (**(code **)(*piVar5 + 0x268))(piVar5);
        iVar7 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
        if (iVar6 != iVar7) goto LAB_0034cce6;
      }
      goto LAB_0034ccea;
    }
    iVar6 = (**(code **)(*piVar4 + 0x268))(piVar4);
    iVar7 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
    if (iVar6 == iVar7) goto LAB_0034cca8;
LAB_0034cce6:
    bVar1 = true;
  }
  if (bVar1) {
    uVar11 = (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),1);
    pcVar9 = *(code **)(**(int **)(this + 0x138) + 0x4c);
    uVar8 = *(undefined4 *)(this + 0x138);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar11,(float)((ulonglong)uVar11 >> 0x20));
    FUN_003491b0(auStack_20,this + 0x158,aCStack_28);
    (*pcVar9)(uVar8,auStack_20);
    uVar11 = (**(code **)(**(int **)(this + 0x128) + 0x90))(*(undefined4 *)(this + 0x128),1);
    pcVar9 = *(code **)(**(int **)(this + 0x128) + 0x4c);
    uVar8 = *(undefined4 *)(this + 0x128);
    cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar11,(float)((ulonglong)uVar11 >> 0x20));
    FUN_003491b0(auStack_20,this + 0x158,aCStack_28);
    (*pcVar9)(uVar8,auStack_20);
    pcVar9 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
    uVar10 = *(undefined4 *)(this + 0x10c);
    uVar8 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
    (*pcVar9)(uVar10,uVar8);
    (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
    if (param_1 != (CCObject *)0x0) {
      pcVar9 = *(code **)(**(int **)(this + 0x10c) + 0x208);
      uVar8 = *(undefined4 *)(this + 0x10c);
      (**(code **)(*(int *)param_1 + 0x270))(auStack_20,param_1);
      (*pcVar9)(uVar8,auStack_20);
      uVar8 = (**(code **)(*(int *)param_1 + 0x27c))(param_1);
      *(undefined4 *)(this + 0x1a4) = uVar8;
    }
    bVar2 = true;
  }
  else {
    cVar3 = (**(code **)(*(int *)param_1 + 0x2f0))(param_1);
    if (cVar3 != '\x01') {
      (**(code **)(**(int **)(this + 0x128) + 0x90))(*(undefined4 *)(this + 0x128),1);
      (**(code **)(**(int **)(this + 0x128) + 0x4c))(*(undefined4 *)(this + 0x128),this + 0x158);
      pcVar9 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
      uVar10 = *(undefined4 *)(this + 0x10c);
      uVar8 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
      (*pcVar9)(uVar10,uVar8);
      (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),1);
      if (param_1 != (CCObject *)0x0) {
        pcVar9 = *(code **)(**(int **)(this + 0x10c) + 0x208);
        uVar8 = *(undefined4 *)(this + 0x10c);
        (**(code **)(*(int *)param_1 + 0x270))(auStack_20,param_1);
        (*pcVar9)(uVar8,auStack_20);
        uVar8 = (**(code **)(*(int *)param_1 + 0x27c))(param_1);
        *(undefined4 *)(this + 0x1a4) = uVar8;
      }
      bVar2 = true;
    }
  }
LAB_0034cf36:
  if (bVar2) {
    (**(code **)(**(int **)(this + 0x140) + 0x90))(*(undefined4 *)(this + 0x140),0);
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),0);
    if (*(int *)(this + 0x104) != 0) {
      (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),0);
    }
  }
  return;
}

// ---- HUD::weaponProxyEnd  @ 0x34cf9c
/* HUD::weaponProxyEnd(cocos2d::CCObject*) */

void HUD::weaponProxyEnd(CCObject *param_1)

{
  hidePickUpWeapon((HUD *)param_1);
  return;
}

// ---- HUD::hidePickUpWeapon  @ 0x34cfb0
/* HUD::hidePickUpWeapon() */

void __thiscall HUD::hidePickUpWeapon(HUD *this)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  undefined1 auStack_18 [4];
  int *local_14;
  
  (**(code **)(**(int **)(this + 0x138) + 0x90))(*(undefined4 *)(this + 0x138),0);
  (**(code **)(**(int **)(this + 0x138) + 0x4c))(*(undefined4 *)(this + 0x138),this + 0x180);
  (**(code **)(**(int **)(this + 0x128) + 0x90))(*(undefined4 *)(this + 0x128),0);
  (**(code **)(**(int **)(this + 0x10c) + 0x90))(*(undefined4 *)(this + 0x10c),0);
  if (this[0x1c4] == (HUD)0x0) {
    (**(code **)(**(int **)(this + 0x108) + 0x90))(*(undefined4 *)(this + 0x108),1);
    if (*(int *)(this + 0x104) != 0) {
      (**(code **)(**(int **)(this + 0x104) + 0x90))(*(undefined4 *)(this + 0x104),1);
    }
  }
  else {
    (**(code **)(**(int **)(this + 0x140) + 0x90))(*(undefined4 *)(this + 0x140),1);
  }
  (**(code **)(**(int **)(this + 0x128) + 0x4c))(*(undefined4 *)(this + 0x128),this + 0x180);
  pcVar2 = *(code **)(**(int **)(this + 0x10c) + 0x4c);
  uVar3 = *(undefined4 *)(this + 0x10c);
  uVar1 = (**(code **)(**(int **)(this + 0x128) + 0x50))(*(undefined4 *)(this + 0x128));
  (*pcVar2)(uVar3,uVar1);
  *(undefined4 *)(this + 0x188) = 0;
  local_14 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  if (local_14 != (int *)0x0) {
    pcVar2 = *(code **)(**(int **)(this + 0x13c) + 0x1f8);
    uVar3 = *(undefined4 *)(this + 0x13c);
    (**(code **)(*local_14 + 0x2d4))(auStack_18,local_14);
    uVar1 = FUN_007c5300(auStack_18);
    (*pcVar2)(uVar3,uVar1);
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- HUD::startClock  @ 0x34d154
/* HUD::startClock() */

void HUD::startClock(void)

{
  return;
}

// ---- HUD::updateClock  @ 0x34d15c
/* HUD::updateClock() */

void __thiscall HUD::updateClock(HUD *this)

{
  time_t tVar1;
  CCString *this_00;
  undefined4 uVar2;
  code *pcVar3;
  undefined4 uVar4;
  
  tVar1 = time((time_t *)0x0);
  *(int *)(this + 0x19c) = *(int *)(this + 0x19c) + (tVar1 - *(int *)(this + 0x198));
  *(time_t *)(this + 0x198) = tVar1;
  *(int *)(this + 0x1c0) =
       *(int *)(this + 0x1a0) - *(int *)(this + 0x19c) &
       ~(*(int *)(this + 0x1a0) - *(int *)(this + 0x19c) >> 0x1f);
  pcVar3 = *(code **)(**(int **)(this + 0x140) + 0x1f8);
  uVar4 = *(undefined4 *)(this + 0x140);
  this_00 = (CCString *)
            cocos2d::CCString::createWithFormat
                      ("%d%d:%d%d",*(int *)(this + 0x1c0) / 600,(*(int *)(this + 0x1c0) / 0x3c) % 10
                       ,(*(int *)(this + 0x1c0) % 0x3c) / 10,(*(int *)(this + 0x1c0) % 0x3c) % 10);
  uVar2 = cocos2d::CCString::getCString(this_00);
  (*pcVar3)(uVar4,uVar2);
  return;
}

// ---- HUD::setGameClockToZero  @ 0x34d2b0
/* HUD::setGameClockToZero() */

void __thiscall HUD::setGameClockToZero(HUD *this)

{
  *(undefined4 *)(this + 0x198) = 0;
  return;
}

// ---- HUD::addMessage  @ 0x34d2c0
/* HUD::addMessage(std::string, cocos2d::_ccColor3B, short) */

void __thiscall HUD::addMessage(HUD *this,undefined4 param_2,uint param_3,short param_4)

{
  undefined4 uVar1;
  CCObject *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  code *pcVar7;
  uint in_fpscr;
  uint local_34;
  undefined4 local_30;
  HUD *local_2c;
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  CCObject *local_1c;
  
  local_34 = param_3;
  local_30 = param_2;
  local_2c = this;
  uVar1 = FUN_007c5300(param_2);
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(asStack_20,uVar1,auStack_24);
  pCVar2 = (CCObject *)cocos2d::CCString::create(asStack_20);
  uVar1 = cocos2d::CCInteger::create(local_34 & 0xff);
  uVar3 = cocos2d::CCInteger::create(local_34 >> 8 & 0xff);
  uVar4 = cocos2d::CCInteger::create(local_34 >> 0x10 & 0xff);
  uVar5 = cocos2d::CCInteger::create((int)param_4);
  local_1c = (CCObject *)cocos2d::CCArray::create(pCVar2,uVar1,uVar3,uVar4,uVar5,0);
  FUN_007c5914(asStack_20);
  FUN_0079a3fc(auStack_24);
  cocos2d::CCArray::addObject(*(CCArray **)(local_2c + 0x154),local_1c);
  iVar6 = cocos2d::CCArray::count(*(CCArray **)(local_2c + 0x154));
  if (iVar6 == 1) {
    (**(code **)(**(int **)(local_2c + 0x148) + 0x1bc))(*(undefined4 *)(local_2c + 0x148),&local_34)
    ;
    pcVar7 = *(code **)(**(int **)(local_2c + 0x148) + 0x23c);
    uVar3 = *(undefined4 *)(local_2c + 0x148);
    uVar1 = FUN_007c5300(local_30);
    (*pcVar7)(uVar3,uVar1);
    uVar1 = VectorSignedToFloat((int)param_4,(byte)(in_fpscr >> 0x16) & 3);
    *(undefined4 *)(local_2c + 0x1b0) = uVar1;
  }
  return;
}

// ---- HUD::removePlayer  @ 0x34d3e4
/* HUD::removePlayer(std::string) */

void __thiscall HUD::removePlayer(HUD *this,undefined4 param_2)

{
  ScoreList *pSVar1;
  Radar *pRVar2;
  undefined1 auStack_c [4];
  
  pSVar1 = (ScoreList *)ScoreScreen::getScoreList(*(ScoreScreen **)(this + 0xe8));
  FUN_007c64e8(auStack_c,param_2);
  ScoreList::deactivateScore(pSVar1,auStack_c);
  FUN_007c5914(auStack_c);
  pRVar2 = *(Radar **)(this + 0x100);
  FUN_007c64e8(auStack_c,param_2);
  Radar::removeAlert(pRVar2,auStack_c);
  FUN_007c5914(auStack_c);
  return;
}

// ---- HUD::addPlayer  @ 0x34d458
/* HUD::addPlayer(std::string) */

void __thiscall HUD::addPlayer(HUD *this,string *param_2)

{
  ScoreKeeper *pSVar1;
  undefined4 uVar2;
  ScoreList *pSVar3;
  Radar *pRVar4;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  int *local_14;
  
  pRVar4 = *(Radar **)(this + 0x100);
  FUN_007c64e8(auStack_18,param_2);
  Radar::addAlert(pRVar4,auStack_18);
  FUN_007c5914(auStack_18);
  local_14 = (int *)cocos2d::CCDictionary::objectForKey(peerSoldiers,param_2);
  if (local_14 != (int *)0x0) {
    pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    (**(code **)(*local_14 + 0x1d8))(local_14);
    SoldierView::getPlayerName();
    (**(code **)(*local_14 + 0x1c0))(auStack_18,local_14);
    uVar2 = (**(code **)(*local_14 + 0x1c4))(local_14);
    ScoreKeeper::addPlayerScore(pSVar1,auStack_1c,auStack_18,uVar2);
    FUN_007c5914(auStack_18);
    FUN_007c5914(auStack_1c);
    pSVar3 = (ScoreList *)ScoreScreen::getScoreList(*(ScoreScreen **)(this + 0xe8));
    (**(code **)(*local_14 + 0x1d8))(local_14);
    SoldierView::getPlayerName();
    (**(code **)(*local_14 + 0x1c0))(auStack_18,local_14);
    uVar2 = (**(code **)(*local_14 + 0x1c4))(local_14);
    ScoreList::addSoldierScore(pSVar3,auStack_1c,auStack_18,uVar2);
    FUN_007c5914(auStack_18);
    FUN_007c5914(auStack_1c);
  }
  return;
}

// ---- HUD::addHostPlayer  @ 0x34d5a8
/* HUD::addHostPlayer() */

void __thiscall HUD::addHostPlayer(HUD *this)

{
  ScoreKeeper *pSVar1;
  ScoreList *pSVar2;
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  pSVar1 = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
  (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::getPlayerName();
  (**(code **)(*hostSoldier + 0x1c0))(auStack_14,hostSoldier);
  ScoreKeeper::addPlayerScore(pSVar1,auStack_18,auStack_14,playerTeam);
  FUN_007c5914(auStack_14);
  FUN_007c5914(auStack_18);
  pSVar2 = (ScoreList *)ScoreScreen::getScoreList(*(ScoreScreen **)(this + 0xe8));
  (**(code **)(*hostSoldier + 0x1d8))(hostSoldier);
  SoldierView::getPlayerName();
  (**(code **)(*hostSoldier + 0x1c0))(auStack_14,hostSoldier);
  ScoreList::addSoldierScore(pSVar2,auStack_18,auStack_14,playerTeam);
  FUN_007c5914(auStack_14);
  FUN_007c5914(auStack_18);
  return;
}

// ---- HUD::updateMenuScreen  @ 0x34d6c4
/* HUD::updateMenuScreen(float) */

void __thiscall HUD::updateMenuScreen(HUD *this,float param_1)

{
  bool bVar1;
  int iVar2;
  float fVar3;
  
  switch(gameType) {
  case 0:
  case 1:
  case 2:
  case 5:
    MenuScreen::updateStep(*(MenuScreen **)(this + 0xec),param_1);
    iVar2 = SoldierManager::isRespawning(soldierManager);
    if (iVar2 != 0) {
      fVar3 = (float)SoldierManager::getRespawnTime(soldierManager);
      if (((2.0 < fVar3) &&
          (fVar3 = (float)SoldierManager::getRespawnTime(soldierManager),
          (int)((uint)(fVar3 < 7.0) << 0x1f) < 0)) || (*(int *)(this + 0x1c0) == 0)) {
        bVar1 = true;
      }
      else {
        bVar1 = false;
      }
      if (bVar1) {
        MenuScreen::showScreen(*(MenuScreen **)(this + 0xec),true);
      }
      else {
        MenuScreen::showScreen(*(MenuScreen **)(this + 0xec),false);
      }
    }
    break;
  case 3:
  case 4:
    ScoreScreen::updateStep(*(ScoreScreen **)(this + 0xe8),param_1);
    iVar2 = SoldierManager::isRespawning(soldierManager);
    if (iVar2 != 0) {
      fVar3 = (float)SoldierManager::getRespawnTime(soldierManager);
      if ((((2.0 < fVar3) &&
           (fVar3 = (float)SoldierManager::getRespawnTime(soldierManager),
           (int)((uint)(fVar3 < 7.0) << 0x1f) < 0)) || (this[0x1bc] != (HUD)0x0)) ||
         (*(int *)(this + 0x1c0) == 0)) {
        bVar1 = true;
      }
      else {
        bVar1 = false;
      }
      if (bVar1) {
        ScoreScreen::showScreen(*(ScoreScreen **)(this + 0xe8),true,false);
      }
      else {
        ScoreScreen::showScreen(*(ScoreScreen **)(this + 0xe8),false,false);
      }
    }
  }
  return;
}

// ---- HUD::updateStep  @ 0x34d844
/* HUD::updateStep(float) */

void HUD::updateStep(float param_1)

{
  byte bVar1;
  char cVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  short sVar6;
  HUD *in_r0;
  int iVar7;
  CCString *this;
  uint uVar8;
  float in_r1;
  undefined4 uVar9;
  undefined4 uVar10;
  code *pcVar11;
  uint in_fpscr;
  uint uVar12;
  float fVar13;
  float fVar14;
  undefined1 local_3c;
  undefined1 local_3b;
  undefined1 local_3a;
  int *local_38;
  int local_34;
  CCArray *local_30;
  CCString *local_2c;
  CCInteger *local_28;
  CCInteger *local_24;
  CCInteger *local_20;
  CCInteger *local_1c;
  
  *(float *)(in_r0 + 0x188) = *(float *)(in_r0 + 0x188) + in_r1;
  *(float *)(in_r0 + 0x18c) = *(float *)(in_r0 + 0x18c) + in_r1;
  *(float *)(in_r0 + 400) = *(float *)(in_r0 + 400) + in_r1;
  *(float *)(in_r0 + 0x194) = *(float *)(in_r0 + 0x194) + in_r1;
  fVar13 = (float)Joypad::updateStep(*(Joypad **)(in_r0 + 0xf4),param_1);
  Radar::updateStep(fVar13);
  fVar13 = (float)(**(code **)(**(int **)(in_r0 + 0x128) + 0x98))
                            (*(undefined4 *)(in_r0 + 0x128),*(float *)(in_r0 + 0x188) * -150.0);
  AmmoMeter::updateStep(*(AmmoMeter **)(in_r0 + 0xf8),fVar13);
  local_38 = (int *)(**(code **)(*hostSoldier + 500))(hostSoldier);
  pcVar11 = *(code **)(**(int **)(in_r0 + 300) + 0x90);
  uVar9 = *(undefined4 *)(in_r0 + 300);
  if (((local_38 != (int *)0x0) && (sVar6 = (**(code **)(*local_38 + 0x274))(local_38), 0 < sVar6))
     && (cVar2 = (**(code **)(*local_38 + 0x2cc))(local_38), cVar2 != '\x01')) {
    sVar6 = (**(code **)(*local_38 + 0x284))(local_38);
    iVar7 = (**(code **)(*local_38 + 0x2b4))(local_38);
    if (sVar6 < iVar7) {
      uVar10 = 1;
      goto LAB_0034d988;
    }
  }
  uVar10 = 0;
LAB_0034d988:
  (*pcVar11)(uVar9,uVar10);
  (**(code **)(**(int **)(in_r0 + 0x130) + 0x90))
            (*(undefined4 *)(in_r0 + 0x130),local_38 != (int *)0x0);
  (**(code **)(**(int **)(in_r0 + 0x13c) + 0x90))
            (*(undefined4 *)(in_r0 + 0x13c),local_38 != (int *)0x0);
  if (in_r0[0x1c4] == (HUD)0x0) {
    (**(code **)(**(int **)(in_r0 + 0x140) + 0x90))(*(undefined4 *)(in_r0 + 0x140),0);
  }
  else {
    *(float *)(in_r0 + 0x1a8) = *(float *)(in_r0 + 0x1a8) + in_r1;
    fVar13 = *(float *)(in_r0 + 0x1a8);
    uVar8 = in_fpscr & 0xfffffff | (uint)(fVar13 < 1.0) << 0x1f | (uint)(fVar13 == 1.0) << 0x1e;
    in_fpscr = uVar8 | (uint)NAN(fVar13) << 0x1c;
    bVar1 = (byte)(uVar8 >> 0x18);
    if (!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(in_fpscr >> 0x1c) & 1)) {
      updateClock(in_r0);
      *(undefined4 *)(in_r0 + 0x1a8) = 0;
    }
    (**(code **)(**(int **)(in_r0 + 0x108) + 0x90))(*(undefined4 *)(in_r0 + 0x108),0);
    if (*(int *)(in_r0 + 0x104) != 0) {
      (**(code **)(**(int **)(in_r0 + 0x104) + 0x90))(*(undefined4 *)(in_r0 + 0x104),0);
    }
  }
  local_34 = (**(code **)(*hostSoldier + 0x2d8))(hostSoldier);
  (**(code **)(**(int **)(in_r0 + 0x118) + 0x90))(*(undefined4 *)(in_r0 + 0x118),0 < local_34);
  pcVar11 = *(code **)(**(int **)(in_r0 + 0x150) + 0x90);
  uVar10 = *(undefined4 *)(in_r0 + 0x150);
  uVar9 = (**(code **)(**(int **)(in_r0 + 0x118) + 0x94))(*(undefined4 *)(in_r0 + 0x118));
  (*pcVar11)(uVar10,uVar9);
  iVar7 = SoldierManager::isRespawning(soldierManager);
  if (iVar7 == 0) {
    fVar13 = (float)(**(code **)(**(int **)(in_r0 + 0x144) + 0x90))
                              (*(undefined4 *)(in_r0 + 0x144),0);
  }
  else {
    pcVar11 = *(code **)(**(int **)(in_r0 + 0x144) + 0x1f8);
    uVar10 = *(undefined4 *)(in_r0 + 0x144);
    fVar13 = (float)SoldierManager::getRespawnTime(soldierManager);
    this = (CCString *)cocos2d::CCString::createWithFormat("RESPAWNING: %d",(int)fVar13);
    uVar9 = cocos2d::CCString::getCString(this);
    (*pcVar11)(uVar10,uVar9);
    fVar13 = (float)(**(code **)(**(int **)(in_r0 + 0x144) + 0x90))
                              (*(undefined4 *)(in_r0 + 0x144),1);
  }
  updateMenuScreen(in_r0,fVar13);
  iVar7 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x154));
  if (iVar7 == 0) {
    (**(code **)(**(int **)(in_r0 + 0x148) + 0x90))(*(undefined4 *)(in_r0 + 0x148),0);
  }
  else {
    (**(code **)(**(int **)(in_r0 + 0x148) + 0x90))(*(undefined4 *)(in_r0 + 0x148),1);
    *(float *)(in_r0 + 0x1ac) = *(float *)(in_r0 + 0x1ac) + in_r1;
    fVar13 = *(float *)(in_r0 + 0x1ac);
    fVar14 = *(float *)(in_r0 + 0x1b0);
    uVar8 = in_fpscr & 0xfffffff | (uint)(fVar13 < fVar14) << 0x1f |
            (uint)(fVar13 == fVar14) << 0x1e;
    uVar12 = uVar8 | (uint)(NAN(fVar13) || NAN(fVar14)) << 0x1c;
    bVar1 = (byte)(uVar8 >> 0x18);
    if (!(bool)(bVar1 >> 6 & 1) && bVar1 >> 7 == ((byte)(uVar12 >> 0x1c) & 1)) {
      cocos2d::CCArray::removeObjectAtIndex(*(CCArray **)(in_r0 + 0x154),0,true);
      iVar7 = cocos2d::CCArray::count(*(CCArray **)(in_r0 + 0x154));
      if (iVar7 != 0) {
        local_30 = (CCArray *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(in_r0 + 0x154),0);
        local_2c = (CCString *)cocos2d::CCArray::objectAtIndex(local_30,0);
        local_28 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,1);
        local_24 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,2);
        local_20 = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,3);
        local_1c = (CCInteger *)cocos2d::CCArray::objectAtIndex(local_30,4);
        pcVar11 = *(code **)(**(int **)(in_r0 + 0x148) + 0x23c);
        uVar10 = *(undefined4 *)(in_r0 + 0x148);
        uVar9 = cocos2d::CCString::getCString(local_2c);
        (*pcVar11)(uVar10,uVar9);
        pcVar11 = *(code **)(**(int **)(in_r0 + 0x148) + 0x1bc);
        uVar10 = *(undefined4 *)(in_r0 + 0x148);
        uVar3 = cocos2d::CCInteger::getValue(local_28);
        uVar4 = cocos2d::CCInteger::getValue(local_24);
        uVar5 = cocos2d::CCInteger::getValue(local_20);
        uVar9 = FUN_00349154(uVar3,uVar4,uVar5);
        local_3c = (undefined1)uVar9;
        local_3b = (undefined1)((uint)uVar9 >> 8);
        local_3a = (undefined1)((uint)uVar9 >> 0x10);
        (*pcVar11)(uVar10,&local_3c);
        uVar8 = cocos2d::CCInteger::getValue(local_1c);
        uVar9 = VectorUnsignedToFloat(uVar8 & 0xffff,(byte)(uVar12 >> 0x16) & 3);
        *(undefined4 *)(in_r0 + 0x1b0) = uVar9;
      }
      *(undefined4 *)(in_r0 + 0x1ac) = 0;
    }
  }
  return;
}

// ---- HUD::messageBoxHandler  @ 0x34dd28
/* HUD::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void HUD::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  undefined1 auStack_10 [4];
  undefined1 auStack_c [8];
  
  if (param_1 == 1) {
    FUN_0079a3f4(auStack_10);
    FUN_007c6a60(auStack_c,"com.chadtowns.da2.propack",auStack_10);
    InAppPurchaseBridge::purchaseProductInGame(auStack_c);
    FUN_007c5914(auStack_c);
    FUN_0079a3fc(auStack_10);
  }
  return;
}

// ---- HUD::onActivateScore  @ 0x34dd8c
/* HUD::onActivateScore(cocos2d::CCObject*) */

void __thiscall HUD::onActivateScore(HUD *this,CCObject *param_1)

{
  undefined4 uVar1;
  ScoreList *pSVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_10,uVar1,auStack_c);
  FUN_0079a3fc(auStack_c);
  pSVar2 = (ScoreList *)ScoreScreen::getScoreList(*(ScoreScreen **)(this + 0xe8));
  FUN_007c64e8(auStack_c,auStack_10);
  ScoreList::activateScore(pSVar2,auStack_c);
  FUN_007c5914(auStack_c);
  FUN_007c5914(auStack_10);
  return;
}

// ---- HUD::onDeactivateScore  @ 0x34de18
/* HUD::onDeactivateScore(cocos2d::CCObject*) */

void __thiscall HUD::onDeactivateScore(HUD *this,CCObject *param_1)

{
  undefined4 uVar1;
  ScoreList *pSVar2;
  undefined1 auStack_10 [4];
  undefined1 auStack_c [4];
  
  uVar1 = cocos2d::CCString::getCString((CCString *)param_1);
  FUN_0079a3f4(auStack_c);
  FUN_007c6a60(auStack_10,uVar1,auStack_c);
  FUN_0079a3fc(auStack_c);
  pSVar2 = (ScoreList *)ScoreScreen::getScoreList(*(ScoreScreen **)(this + 0xe8));
  FUN_007c64e8(auStack_c,auStack_10);
  ScoreList::deactivateScore(pSVar2,auStack_c);
  FUN_007c5914(auStack_c);
  FUN_007c5914(auStack_10);
  return;
}

// ---- HUD::onScoreChanged  @ 0x34dea4
/* HUD::onScoreChanged(cocos2d::CCObject*) */

void HUD::onScoreChanged(CCObject *param_1)

{
  ScoreList *this;
  
  this = (ScoreList *)ScoreScreen::getScoreList(*(ScoreScreen **)(param_1 + 0xe8));
  ScoreList::updateScores(this);
  return;
}

// ---- HUD::onPressGrenadeButton  @ 0x34dec8
/* HUD::onPressGrenadeButton(cocos2d::CCObject*) */

void HUD::onPressGrenadeButton(CCObject *param_1)

{
  onGrenade(param_1);
  return;
}

// ---- HUD::onPressReloadButton  @ 0x34dee0
/* HUD::onPressReloadButton(cocos2d::CCObject*) */

void HUD::onPressReloadButton(CCObject *param_1)

{
  onReload(param_1);
  return;
}

// ---- HUD::onPressZoomButton  @ 0x34def8
/* HUD::onPressZoomButton(cocos2d::CCObject*) */

void HUD::onPressZoomButton(CCObject *param_1)

{
  onZoom(param_1);
  return;
}

// ---- HUD::onPressChangeWeaponButton  @ 0x34df10
/* HUD::onPressChangeWeaponButton(cocos2d::CCObject*) */

void HUD::onPressChangeWeaponButton(CCObject *param_1)

{
  onWeaponSwitch((HUD *)param_1,(CCObject *)0x0);
  return;
}

// ---- HUD::onPressChangeGrenadeButton  @ 0x34df28
/* HUD::onPressChangeGrenadeButton(cocos2d::CCObject*) */

void HUD::onPressChangeGrenadeButton(CCObject *param_1)

{
  onGrenadeSwitch(param_1);
  return;
}

// ---- HUD::onPressScoreButton  @ 0x34df40
/* HUD::onPressScoreButton(cocos2d::CCObject*) */

void HUD::onPressScoreButton(CCObject *param_1)

{
  onMenuScreen(param_1);
  return;
}

// ---- HUD::onPressMeleeButton  @ 0x34df58
/* HUD::onPressMeleeButton(cocos2d::CCObject*) */

void HUD::onPressMeleeButton(CCObject *param_1)

{
  onPunch(param_1);
  return;
}

// ---- HUD::onPressPickupButton  @ 0x34df70
/* HUD::onPressPickupButton(cocos2d::CCObject*) */

void HUD::onPressPickupButton(CCObject *param_1)

{
  onPickUpWeapon((HUD *)param_1,(CCObject *)0x0);
  return;
}

// ---- HUD::onPressPickupDualButton  @ 0x34df88
/* HUD::onPressPickupDualButton(cocos2d::CCObject*) */

void HUD::onPressPickupDualButton(CCObject *param_1)

{
  onPickUpDualWeapon((HUD *)param_1,(CCObject *)0x0);
  return;
}

// ---- HUD::onKeyboard  @ 0x34dfa0
/* HUD::onKeyboard(cocos2d::CCObject*) */

void HUD::onKeyboard(CCObject *param_1)

{
  Sound::playSound(sndEng,0xd);
  cocos2d::extension::CCEditBox::touchDownAction(*(CCObject **)(param_1 + 0xf0),0);
  param_1[0x1bc] = (CCObject)0x1;
  return;
}

// ---- HUD::editBoxReturn  @ 0x34dfe0
/* HUD::editBoxReturn(cocos2d::extension::CCEditBox*) */

void __thiscall HUD::editBoxReturn(HUD *this,CCEditBox *param_1)

{
  undefined4 uVar1;
  int iVar2;
  CCNotificationCenter *this_00;
  CCObject *pCVar3;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  string asStack_14 [8];
  
  this[0x1bc] = (HUD)0x0;
  if ((*(int *)(this + 0xf0) != 0) && (*(int *)(this + 0x14c) != 0)) {
    uVar1 = cocos2d::extension::CCEditBox::getText(*(CCEditBox **)(this + 0xf0));
    FUN_0079a3f4(asStack_14);
    FUN_007c6a60(auStack_18,uVar1,asStack_14,asStack_14,param_1);
    FUN_0079a3fc(asStack_14);
    iVar2 = FUN_007c505c(auStack_18);
    if (iVar2 != 0) {
      this_00 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      uVar1 = FUN_007c5300(auStack_18);
      FUN_0079a3f4(auStack_1c);
      FUN_007c6a60(asStack_14,uVar1,auStack_1c);
      pCVar3 = (CCObject *)cocos2d::CCString::create(asStack_14);
      cocos2d::CCNotificationCenter::postNotification(this_00,"SendInstantMessage",pCVar3);
      FUN_007c5914(asStack_14);
      FUN_0079a3fc(auStack_1c);
      cocos2d::extension::CCEditBox::setText(*(CCEditBox **)(this + 0xf0),"");
      (**(code **)(**(int **)(this + 0x14c) + 0x23c))(*(undefined4 *)(this + 0x14c),&DAT_007d97d8);
    }
    ScoreScreen::showScreen(*(ScoreScreen **)(this + 0xe8),false,false);
    MenuScreen::showScreen(*(MenuScreen **)(this + 0xec),false);
    Joypad::cancelTouches(*(Joypad **)(this + 0xf4));
    FUN_007c5914(auStack_18);
  }
  return;
}

// ---- HUD::editBoxReturn  @ 0x34e138
/* non-virtual thunk to HUD::editBoxReturn(cocos2d::extension::CCEditBox*) */

void __thiscall HUD::editBoxReturn(HUD *this,CCEditBox *param_1)

{
  editBoxReturn(this + -0xe4,param_1);
  return;
}

// ---- HUD::editBoxTextChanged  @ 0x34e140
/* HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&) */

void HUD::editBoxTextChanged(CCEditBox *param_1,string *param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  if ((*(int *)(param_1 + 0xf0) != 0) && (*(int *)(param_1 + 0x14c) != 0)) {
    pcVar2 = *(code **)(**(int **)(param_1 + 0x14c) + 0x23c);
    uVar3 = *(undefined4 *)(param_1 + 0x14c);
    uVar1 = cocos2d::extension::CCEditBox::getText(*(CCEditBox **)(param_1 + 0xf0));
    (*pcVar2)(uVar3,uVar1);
  }
  return;
}

// ---- HUD::editBoxTextChanged  @ 0x34e18c
/* non-virtual thunk to HUD::editBoxTextChanged(cocos2d::extension::CCEditBox*, std::string const&)
    */

void __thiscall HUD::editBoxTextChanged(HUD *this,CCEditBox *param_1,string *param_2)

{
  editBoxTextChanged((CCEditBox *)(this + -0xe4),(string *)param_1);
  return;
}

// ---- HUD::create  @ 0x40ad7c
/* HUD::create() */

HUD * HUD::create(void)

{
  bool bVar1;
  HUD *this;
  int iVar2;
  
  this = operator_new(0x1c8);
  HUD(this);
  if ((this == (HUD *)0x0) || (iVar2 = (**(code **)(*(int *)this + 0x18))(this), iVar2 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    cocos2d::CCObject::autorelease((CCObject *)this);
  }
  else {
    if (this != (HUD *)0x0) {
      (**(code **)(*(int *)this + 8))(this);
    }
    this = (HUD *)0x0;
  }
  return this;
}
