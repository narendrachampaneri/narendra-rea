// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 24 functions

// ---- AppDelegate::AppDelegate  @ 0x2f5adc
/* AppDelegate::AppDelegate() */

AppDelegate * __thiscall AppDelegate::AppDelegate(AppDelegate *this)

{
  cocos2d::CCApplication::CCApplication((CCApplication *)this);
  cocos2d::CCNode::CCNode((CCNode *)(this + 4));
  *(undefined ***)this = &PTR__AppDelegate_1_0090abe8;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_0090ac2c;
  this[0xeb] = (AppDelegate)0x0;
  this[0xe9] = (AppDelegate)0x0;
  this[0xea] = (AppDelegate)0x0;
  this[0xe8] = (AppDelegate)0x0;
  return this;
}

// ---- AppDelegate::~AppDelegate  @ 0x2f5b4c
/* WARNING: Removing unreachable block (ram,0x002f5b82) */
/* AppDelegate::~AppDelegate() */

AppDelegate * __thiscall AppDelegate::~AppDelegate(AppDelegate *this)

{
  *(undefined ***)this = &PTR__AppDelegate_1_0090abe8;
  *(undefined ***)(this + 4) = &PTR_copyWithZone_1_0090ac2c;
  cocos2d::CCNode::~CCNode((CCNode *)(this + 4));
  cocos2d::CCApplication::~CCApplication((CCApplication *)this);
  return this;
}

// ---- AppDelegate::~AppDelegate  @ 0x2f5b9c
/* non-virtual thunk to AppDelegate::~AppDelegate() */

void __thiscall AppDelegate::~AppDelegate(AppDelegate *this)

{
  ~AppDelegate(this + -4);
  return;
}

// ---- AppDelegate::~AppDelegate  @ 0x2f5ba4
/* AppDelegate::~AppDelegate() */

AppDelegate * __thiscall AppDelegate::~AppDelegate(AppDelegate *this)

{
  ~AppDelegate(this);
  operator_delete(this);
  return this;
}

// ---- AppDelegate::~AppDelegate  @ 0x2f5bc0
/* non-virtual thunk to AppDelegate::~AppDelegate() */

void __thiscall AppDelegate::~AppDelegate(AppDelegate *this)

{
  ~AppDelegate(this + -4);
  return;
}

// ---- AppDelegate::applicationDidFinishLaunching  @ 0x2f5bc8
/* AppDelegate::applicationDidFinishLaunching() */

undefined4 __thiscall AppDelegate::applicationDidFinishLaunching(AppDelegate *this)

{
  bool bVar1;
  CCUserDefault *pCVar2;
  int *piVar3;
  CCSize *pCVar4;
  int iVar5;
  float *pfVar6;
  CCSprite *pCVar7;
  CCRect *pCVar8;
  undefined4 uVar9;
  CCObject *pCVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  CCString *pCVar22;
  CCNotificationCenter *pCVar23;
  ZYWebView *this_00;
  float fVar24;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float extraout_s0_06;
  float extraout_s0_07;
  float extraout_s0_08;
  float extraout_s0_09;
  float extraout_s0_10;
  string asStack_130 [4];
  string asStack_12c [4];
  string asStack_128 [4];
  string asStack_124 [4];
  string asStack_120 [4];
  string asStack_11c [4];
  string asStack_118 [4];
  string asStack_114 [4];
  string asStack_110 [4];
  string asStack_10c [4];
  string asStack_108 [4];
  string asStack_104 [4];
  string asStack_100 [4];
  string asStack_fc [4];
  string asStack_f8 [4];
  string asStack_f4 [4];
  string asStack_f0 [4];
  string asStack_ec [4];
  string asStack_e8 [4];
  string asStack_e4 [4];
  string asStack_e0 [4];
  string asStack_dc [4];
  string asStack_d8 [4];
  string asStack_d4 [4];
  string asStack_d0 [4];
  string asStack_cc [4];
  string asStack_c8 [4];
  string asStack_c4 [4];
  string asStack_c0 [4];
  string asStack_bc [4];
  string asStack_b8 [4];
  string asStack_b4 [4];
  string asStack_b0 [4];
  string asStack_ac [4];
  string asStack_a8 [4];
  string asStack_a4 [4];
  string asStack_a0 [4];
  string asStack_9c [4];
  string asStack_98 [4];
  string asStack_94 [4];
  string asStack_90 [4];
  string asStack_8c [4];
  string asStack_88 [4];
  string asStack_84 [4];
  string asStack_80 [4];
  string asStack_7c [4];
  string asStack_78 [4];
  string asStack_74 [4];
  CCDirector *local_70;
  CCEGLView *local_6c;
  int *local_68;
  vector<std::string,std::allocator<std::string>> *local_64;
  CCObject *local_60;
  CCScene *local_5c;
  int local_58;
  CCSize aCStack_54 [4];
  float local_50;
  _func_void_CCObject_ptr *local_4c;
  char *pcStack_48;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  undefined4 uStack_38;
  vector<std::string,std::allocator<std::string>> avStack_34 [16];
  
  this[0xeb] = (AppDelegate)0x0;
  this[0xe9] = (AppDelegate)0x0;
  this[0xea] = (AppDelegate)0x0;
  local_70 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  local_6c = (CCEGLView *)cocos2d::CCEGLView::sharedOpenGLView();
  local_68 = (int *)cocos2d::CCFileUtils::sharedFileUtils();
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  chatMask = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"ChatMask",0);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  SHOWBLOOD = cocos2d::CCUserDefault::getBoolForKey(pCVar2,"Blood",true);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  FLASH_NEWS = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"FlashNews",0);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  RETINA_MODE = cocos2d::CCUserDefault::getBoolForKey(pCVar2,"RetinaMode",true);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  TOS_ACCEPTED = cocos2d::CCUserDefault::getBoolForKey(pCVar2,"TOSAccepted",false);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  VIEW_2X_MODE = cocos2d::CCUserDefault::getBoolForKey(pCVar2,"ViewMode",false);
  cocos2d::CCDirector::setOpenGLView(local_70,local_6c);
  piVar3 = (int *)cocos2d::CCEGLView::sharedOpenGLView();
  pCVar4 = (CCSize *)(**(code **)(*piVar3 + 0x18))(piVar3);
  cocos2d::CCSize::CCSize(aCStack_54,pCVar4);
  (**(code **)(*(int *)local_70 + 0x20))
            (local_70,*(code **)(*(int *)local_70 + 0x20),0x11111111,0x3f911111);
  iVar5 = ApplicationInterface::isTabletDisplay();
  if (iVar5 == 0) {
    (**(code **)(*(int *)local_6c + 0x28))(local_6c,DAT_0094f788,DAT_0094f78c,3);
  }
  else {
    (**(code **)(*(int *)local_6c + 0x28))(local_6c,DAT_0094f788,DAT_0094f78c,4);
  }
  std::vector<std::string,std::allocator<std::string>>::vector(avStack_34);
  pfVar6 = std::min<float>((float *)aCStack_54,&local_50);
  if ((*pfVar6 <= DAT_00943124) || (iVar5 = useRetina(this), iVar5 == 0)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    FUN_0079a3f4(&local_3c);
    FUN_007c6a60(asStack_130,&DAT_00943194,&local_3c);
    std::vector<std::string,std::allocator<std::string>>::push_back(avStack_34,asStack_130);
    FUN_007c5914(asStack_130);
    fVar24 = (float)FUN_0079a3fc(&local_3c);
    cocos2d::CCDirector::setContentScaleFactor(local_70,fVar24);
  }
  else {
    if ((local_50 <= DAT_0094304c) || (iVar5 = useRetina(this), iVar5 == 0)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      FUN_0079a3f4(&local_3c);
      FUN_007c6a60(asStack_12c,&DAT_009430bc,&local_3c);
      std::vector<std::string,std::allocator<std::string>>::push_back(avStack_34,asStack_12c);
      FUN_007c5914(asStack_12c);
      fVar24 = (float)FUN_0079a3fc(&local_3c);
      cocos2d::CCDirector::setContentScaleFactor(local_70,fVar24);
    }
    else {
      FUN_0079a3f4(&local_3c);
      FUN_007c6a60(asStack_128,&DAT_00943050,&local_3c);
      std::vector<std::string,std::allocator<std::string>>::push_back(avStack_34,asStack_128);
      FUN_007c5914(asStack_128);
      fVar24 = (float)FUN_0079a3fc(&local_3c);
      cocos2d::CCDirector::setContentScaleFactor(local_70,fVar24);
    }
  }
  local_64 = avStack_34;
  local_44 = std::vector<std::string,std::allocator<std::string>>::begin(local_64);
  local_3c = std::vector<std::string,std::allocator<std::string>>::end(local_64);
  while (bVar1 = __gnu_cxx::operator!=
                           ((__normal_iterator *)&local_44,(__normal_iterator *)&local_3c), bVar1) {
    uVar9 = __gnu_cxx::
            __normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
            operator*((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                       *)&local_44);
    FUN_007c64e8(&local_4c,uVar9);
    FUN_007c5914(&local_4c);
    __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
    ::operator++((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  *)&local_44);
  }
  (**(code **)(*local_68 + 0x34))(local_68,avStack_34);
  (**(code **)(*local_68 + 0x38))(local_68,"sound");
  (**(code **)(*local_68 + 0x38))(local_68,"sound/tutorial");
  (**(code **)(*local_68 + 0x38))(local_68,"sound/survival");
  (**(code **)(*local_68 + 0x38))(local_68,"files");
  cocos2d::CCDirector::setDepthTest(local_70,false);
  cocos2d::CCDirector::setProjection(local_70,0);
  cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::getWinSize();
  cocos2d::CCSize::operator=((CCSize *)&screenSize,(CCSize *)&local_3c);
  initializePlatformStartupVariables();
  cpInitChipmunk();
  loadTextures();
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head1.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)qHeads,pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head1.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x10),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head2.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x20),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head3.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x30),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head4.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x40),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head5.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x50),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head6.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x60),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head7.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x70),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head8.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x80),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head9.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x90),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head10.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0xa0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head11.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0xb0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head12.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0xc0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head13.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0xd0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head14.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0xe0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head15.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0xf0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("head16.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qHeads + 0x100),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body1.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)qBodies,pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body2.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x10),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body3.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x20),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body4.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x30),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body5.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x40),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body6.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x50),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body7.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x60),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body8.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x70),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body9.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x80),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body10.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x90),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body11.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0xa0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body12.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0xb0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body13.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0xc0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body14.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0xd0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body15.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0xe0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body16.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0xf0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("body17.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qBodies + 0x100),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm1.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)qArms,pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm2.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x10),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm3.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x20),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm4.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x30),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm5.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x40),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm6.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x50),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm7.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x60),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm8.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x70),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm9.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x80),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm10.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x90),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm11.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0xa0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm12.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0xb0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm13.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0xc0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm14.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0xd0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm15.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0xe0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm16.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0xf0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("arm17.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qArms + 0x100),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg3.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)qLegs,pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg1.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x10),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg2.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x20),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg3.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x30),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg4.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x40),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg5.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x50),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg6.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x60),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg7.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x70),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg8.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x80),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg9.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x90),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg10.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0xa0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg11.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0xb0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg12.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0xc0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg13.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0xd0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg14.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0xe0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg15.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0xf0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("leg16.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(qLegs + 0x100),pCVar8);
  uVar9 = FUN_002f4c78(0xff,0xff,0xff);
  teamColors[0] = (undefined1)uVar9;
  teamColors[1] = (undefined1)((uint)uVar9 >> 8);
  teamColors[2] = (undefined1)((uint)uVar9 >> 0x10);
  uVar9 = FUN_002f4c78(0x14,0x14,0xf0);
  teamColors[3] = (undefined1)uVar9;
  teamColors[4] = (undefined1)((uint)uVar9 >> 8);
  teamColors[5] = (undefined1)((uint)uVar9 >> 0x10);
  uVar9 = FUN_002f4c78(0xfa,0xdc,0);
  teamColors[6] = (undefined1)uVar9;
  teamColors[7] = (undefined1)((uint)uVar9 >> 8);
  teamColors[8] = (undefined1)((uint)uVar9 >> 0x10);
  uVar9 = FUN_002f4c78(0xff,0xa0,0);
  teamColors[9] = (undefined1)uVar9;
  teamColors[10] = (undefined1)((uint)uVar9 >> 8);
  teamColors[0xb] = (undefined1)((uint)uVar9 >> 0x10);
  uVar9 = FUN_002f4c78(0x19,0xe1,0xeb);
  teamColors[0xc] = (undefined1)uVar9;
  teamColors[0xd] = (undefined1)((uint)uVar9 >> 8);
  teamColors[0xe] = (undefined1)((uint)uVar9 >> 0x10);
  uVar9 = FUN_002f4c78(0xff,0x9b,0xff);
  teamColors[0xf] = (undefined1)uVar9;
  teamColors[0x10] = (undefined1)((uint)uVar9 >> 8);
  teamColors[0x11] = (undefined1)((uint)uVar9 >> 0x10);
  uVar9 = FUN_002f4c78(0x91,0x19,0xcd);
  teamColors[0x12] = (undefined1)uVar9;
  teamColors[0x13] = (undefined1)((uint)uVar9 >> 8);
  teamColors[0x14] = (undefined1)((uint)uVar9 >> 0x10);
  FUN_0079a3f4(asStack_80);
  FUN_007c6a60(asStack_124,&DAT_007d2874,asStack_80);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_124);
  FUN_0079a3f4(asStack_7c);
  FUN_007c6a60(asStack_120,&DAT_007d2878,asStack_7c);
  uVar9 = cocos2d::CCString::create(asStack_120);
  FUN_0079a3f4(asStack_78);
  FUN_007c6a60(asStack_11c,"YELLOW",asStack_78);
  uVar11 = cocos2d::CCString::create(asStack_11c);
  FUN_0079a3f4(asStack_74);
  FUN_007c6a60(asStack_118,"ORANGE",asStack_74);
  uVar12 = cocos2d::CCString::create(asStack_118);
  FUN_0079a3f4(&local_4c);
  FUN_007c6a60(asStack_114,&DAT_007d2890,&local_4c);
  uVar13 = cocos2d::CCString::create(asStack_114);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_110,&DAT_007d2898,&local_44);
  uVar14 = cocos2d::CCString::create(asStack_110);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_10c,"PURPLE",&local_3c);
  uVar15 = cocos2d::CCString::create(asStack_10c);
  teamNames = (CCObject *)
              cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,uVar13,uVar14,uVar15,0);
  FUN_007c5914(asStack_10c);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_110);
  FUN_0079a3fc(&local_44);
  FUN_007c5914(asStack_114);
  FUN_0079a3fc(&local_4c);
  FUN_007c5914(asStack_118);
  FUN_0079a3fc(asStack_74);
  FUN_007c5914(asStack_11c);
  FUN_0079a3fc(asStack_78);
  FUN_007c5914(asStack_120);
  FUN_0079a3fc(asStack_7c);
  FUN_007c5914(asStack_124);
  FUN_0079a3fc(asStack_80);
  cocos2d::CCObject::retain(teamNames);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank1.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)daRank,pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank2.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x10),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank3.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x20),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank4.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x30),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank5.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x40),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank6.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x50),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank7.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x60),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank8.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x70),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank9.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x80),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank10.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x90),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank11.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0xa0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank12.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0xb0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank13.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0xc0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank14.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0xd0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank15.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0xe0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank16.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0xf0),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank17.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x100),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank18.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x110),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank19.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x120),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank20.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x130),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("rank21.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daRank + 0x140),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("badgeIOS.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)daOS,pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("badgeAND.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daOS + 0x10),pCVar8);
  pCVar7 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("badgeAMZ.png");
  pCVar8 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar7);
  cocos2d::CCRect::operator=((CCRect *)(daOS + 0x20),pCVar8);
  FUN_0079a3f4(asStack_98);
  FUN_007c6a60(asStack_108,"Outpost",asStack_98);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_108);
  FUN_0079a3f4(asStack_94);
  FUN_007c6a60(asStack_104,"High Tower",asStack_94);
  uVar9 = cocos2d::CCString::create(asStack_104);
  FUN_0079a3f4(asStack_90);
  FUN_007c6a60(asStack_100,"Subdivision",asStack_90);
  uVar11 = cocos2d::CCString::create(asStack_100);
  FUN_0079a3f4(asStack_8c);
  FUN_007c6a60(asStack_fc,"Bottle Neck",asStack_8c);
  uVar12 = cocos2d::CCString::create(asStack_fc);
  FUN_0079a3f4(asStack_88);
  FUN_007c6a60(asStack_f8,"No Escape",asStack_88);
  uVar13 = cocos2d::CCString::create(asStack_f8);
  FUN_0079a3f4(asStack_84);
  FUN_007c6a60(asStack_f4,"So Long",asStack_84);
  uVar14 = cocos2d::CCString::create(asStack_f4);
  FUN_0079a3f4(asStack_80);
  FUN_007c6a60(asStack_f0,"Lunarcy",asStack_80);
  uVar15 = cocos2d::CCString::create(asStack_f0);
  FUN_0079a3f4(asStack_7c);
  FUN_007c6a60(asStack_ec,"Icebox",asStack_7c);
  uVar16 = cocos2d::CCString::create(asStack_ec);
  FUN_0079a3f4(asStack_78);
  FUN_007c6a60(asStack_e8,"Snow Blind",asStack_78);
  uVar17 = cocos2d::CCString::create(asStack_e8);
  FUN_0079a3f4(asStack_74);
  FUN_007c6a60(asStack_e4,"Pyramid",asStack_74);
  uVar18 = cocos2d::CCString::create(asStack_e4);
  FUN_0079a3f4(&local_4c);
  FUN_007c6a60(asStack_e0,"Catacombs",&local_4c);
  uVar19 = cocos2d::CCString::create(asStack_e0);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_dc,"Overseer",&local_44);
  uVar20 = cocos2d::CCString::create(asStack_dc);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_d8,"Hunger",&local_3c);
  uVar21 = cocos2d::CCString::create(asStack_d8);
  mapNames = (CCObject *)
             cocos2d::CCArray::create
                       (pCVar10,uVar9,uVar11,uVar12,uVar13,uVar14,uVar15,uVar16,uVar17,uVar18,uVar19
                        ,uVar20,uVar21,0);
  FUN_007c5914(asStack_d8);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_dc);
  FUN_0079a3fc(&local_44);
  FUN_007c5914(asStack_e0);
  FUN_0079a3fc(&local_4c);
  FUN_007c5914(asStack_e4);
  FUN_0079a3fc(asStack_74);
  FUN_007c5914(asStack_e8);
  FUN_0079a3fc(asStack_78);
  FUN_007c5914(asStack_ec);
  FUN_0079a3fc(asStack_7c);
  FUN_007c5914(asStack_f0);
  FUN_0079a3fc(asStack_80);
  FUN_007c5914(asStack_f4);
  FUN_0079a3fc(asStack_84);
  FUN_007c5914(asStack_f8);
  FUN_0079a3fc(asStack_88);
  FUN_007c5914(asStack_fc);
  FUN_0079a3fc(asStack_8c);
  FUN_007c5914(asStack_100);
  FUN_0079a3fc(asStack_90);
  FUN_007c5914(asStack_104);
  FUN_0079a3fc(asStack_94);
  FUN_007c5914(asStack_108);
  FUN_0079a3fc(asStack_98);
  cocos2d::CCObject::retain(mapNames);
  multiplayerMaps = (CCDictionary *)cocos2d::CCDictionary::create();
  cocos2d::CCObject::retain((CCObject *)multiplayerMaps);
  local_60 = (CCObject *)0x0;
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_d4,&DAT_007d2874,&local_3c);
  FUN_0079a3fc(&local_3c);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_d0,"1outpost_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_d0);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_cc,"bg_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_cc);
  uVar11 = cocos2d::CCFloat::create(extraout_s0);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_cc);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_d0);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,0);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_c8,"2highTower_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_c8);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_c4,"bg_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_c4);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_00);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_c4);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_c8);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,1);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_c0,"3subdivision_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_c0);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_bc,"bg_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_bc);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_01);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_bc);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_c0);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,2);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_b8,"4bottleNeck_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_b8);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_b4,"bg_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_b4);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_02);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_b4);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_b8);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,3);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_b0,"5noEscape_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_b0);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_ac,"bg_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_ac);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_03);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_ac);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_b0);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,4);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_a8,"6solong_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_a8);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_a4,"bg_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_a4);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_04);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_a4);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_a8);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,5);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_a0,"7lunarcy_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_a0);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_9c,"bgMoon_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_9c);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_05);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_9c);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_a0);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,6);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_98,"8icebox_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_98);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_94,"bgSnow_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_94);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_06);
  uVar12 = cocos2d::CCInteger::create(0xf);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_94);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_98);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,7);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_90,"9snowblind_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_90);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_8c,"bgSnow_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_8c);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_07);
  uVar12 = cocos2d::CCInteger::create(0xf);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_8c);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_90);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,8);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_88,"10pyramid_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_88);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_84,"bgDesert_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_84);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_08);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_84);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_88);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,9);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_80,"11catacombs_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_80);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_7c,"bgDesert_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_7c);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_09);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_7c);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_80);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,10);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  FUN_0079a3f4(&local_44);
  FUN_007c6a60(asStack_78,"12overseer_new.tmx",&local_44);
  pCVar10 = (CCObject *)cocos2d::CCString::create(asStack_78);
  FUN_0079a3f4(&local_3c);
  FUN_007c6a60(asStack_74,"bgDesert_new.png",&local_3c);
  uVar9 = cocos2d::CCString::create(asStack_74);
  uVar11 = cocos2d::CCFloat::create(extraout_s0_10);
  uVar12 = cocos2d::CCInteger::create(100);
  local_60 = (CCObject *)cocos2d::CCArray::create(pCVar10,uVar9,uVar11,uVar12,0);
  FUN_007c5914(asStack_74);
  FUN_0079a3fc(&local_3c);
  FUN_007c5914(asStack_78);
  FUN_0079a3fc(&local_44);
  pCVar22 = (CCString *)cocos2d::CCArray::objectAtIndex((CCArray *)mapNames,0xb);
  uVar9 = cocos2d::CCString::getCString(pCVar22);
  FUN_007c5e70(asStack_d4,uVar9);
  cocos2d::CCDictionary::setObject(multiplayerMaps,local_60,asStack_d4);
  pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_4c = DAT_009431f8;
  pcStack_48 = DAT_009431fc;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar23,(CCObject *)(this + 4),DAT_009431f8,DAT_009431fc,(CCObject *)"ConnectionLost");
  pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_44 = 0x34;
  uStack_40 = 0xfffffff9;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar23,(CCObject *)(this + 4),(_func_void_CCObject_ptr *)0x34,(char *)0xfffffff9,
             (CCObject *)"OnTerminate");
  pCVar23 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
  local_3c = 0x38;
  uStack_38 = 0xfffffff9;
  cocos2d::CCNotificationCenter::addObserver
            (pCVar23,(CCObject *)(this + 4),(_func_void_CCObject_ptr *)0x38,(char *)0xfffffff9,
             (CCObject *)"OnWait");
  playerTeam = 0;
  this_00 = operator_new(0x14);
  ZYWebView::ZYWebView(this_00);
  webView = this_00;
  ZYWebView::init();
  sndEng = 0;
  local_5c = (CCScene *)SplashLayer::scene();
  cocos2d::CCDirector::runWithScene(local_70,local_5c);
  pCVar2 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  local_58 = cocos2d::CCUserDefault::getIntegerForKey(pCVar2,"QuitCount",0);
  if (0 < local_58) {
    ApplicationInterface::prepareInterstitial();
  }
  ApplicationInterface::enableBlueToothMonitor();
  FUN_007c5914(asStack_d4);
  std::vector<std::string,std::allocator<std::string>>::~vector(avStack_34);
  return 1;
}

// ---- AppDelegate::useRetina  @ 0x2f8434
/* AppDelegate::useRetina() */

undefined1 __thiscall AppDelegate::useRetina(AppDelegate *this)

{
  undefined1 uVar1;
  
  if (this[0xe8] == (AppDelegate)0x0) {
    this[0xe8] = (AppDelegate)0x1;
    uVar1 = RETINA_MODE;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- AppDelegate::initializePlatformStartupVariables  @ 0x2f8468
/* AppDelegate::initializePlatformStartupVariables() */

void AppDelegate::initializePlatformStartupVariables(void)

{
  bool bVar1;
  int iVar2;
  char *pcVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  CCUserDefault *pCVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 uVar18;
  undefined4 uVar19;
  undefined4 uVar20;
  undefined4 uVar21;
  undefined4 uVar22;
  uint in_fpscr;
  float in_s0;
  float extraout_s0;
  float extraout_s0_00;
  float extraout_s0_01;
  float extraout_s0_02;
  float extraout_s0_03;
  float extraout_s0_04;
  float extraout_s0_05;
  float in_s1;
  undefined8 uVar23;
  float extraout_s1;
  CCPoint aCStack_10 [8];
  
  defaultFirePadScl = 0x3f800000;
  defaultMovePadScl = 0x3f800000;
  defaultGrenadeScl = 0x3f4ccccd;
  defaultPunchScl = 0x3f4ccccd;
  defaultZoomScl = 0x3f4ccccd;
  defaultReloadScl = 0x3f4ccccd;
  cocos2d::CCPoint::CCPoint(aCStack_10,in_s0,in_s1);
  uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultRightPadPos,aCStack_10);
  cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
  uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultLeftPadPos,aCStack_10);
  cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
  uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultGrenadePos,aCStack_10);
  cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
  uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultPunchPos,aCStack_10);
  cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
  uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultReloadPos,aCStack_10);
  cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
  cocos2d::CCPoint::operator=((CCPoint *)&defaultZoomPos,aCStack_10);
  iVar2 = ApplicationInterface::isTabletDisplay();
  if ((iVar2 == 0) || (RETINA_MODE == '\0')) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    defaultFirePadScl = 0x3f333333;
    defaultMovePadScl = 0x3f333333;
    defaultGrenadeScl = 0x3f19999a;
    defaultPunchScl = 0x3f19999a;
    defaultZoomScl = 0x3f19999a;
    defaultReloadScl = 0x3f19999a;
    cocos2d::CCPoint::CCPoint(aCStack_10,extraout_s0,extraout_s1);
    uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultRightPadPos,aCStack_10);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
    uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultLeftPadPos,aCStack_10);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
    uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultGrenadePos,aCStack_10);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
    uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultPunchPos,aCStack_10);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
    uVar23 = cocos2d::CCPoint::operator=((CCPoint *)&defaultReloadPos,aCStack_10);
    cocos2d::CCPoint::CCPoint(aCStack_10,(float)uVar23,(float)((ulonglong)uVar23 >> 0x20));
    cocos2d::CCPoint::operator=((CCPoint *)&defaultZoomPos,aCStack_10);
  }
  pcVar3 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar4 = cocos2d::CCUserDefault::getFloatForKey(pcVar3,extraout_s0_00);
  pcVar3 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar5 = cocos2d::CCUserDefault::getFloatForKey(pcVar3,extraout_s0_01);
  pcVar3 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar6 = cocos2d::CCUserDefault::getFloatForKey(pcVar3,extraout_s0_02);
  pcVar3 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar7 = cocos2d::CCUserDefault::getFloatForKey(pcVar3,extraout_s0_03);
  pcVar3 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar8 = cocos2d::CCUserDefault::getFloatForKey(pcVar3,extraout_s0_04);
  pcVar3 = (char *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar9 = cocos2d::CCUserDefault::getFloatForKey(pcVar3,extraout_s0_05);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar11 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"LeftPadX",(int)(float)defaultLeftPadPos);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar12 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"LeftPadY",(int)defaultLeftPadPos._4_4_)
  ;
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar13 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"RightPadX",(int)(float)defaultRightPadPos);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar14 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"RightPadY",(int)defaultRightPadPos._4_4_);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar15 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"GrenadePosX",(int)(float)defaultGrenadePos);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar16 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"GrenadePosY",(int)defaultGrenadePos._4_4_);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar17 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"PunchPosX",(int)(float)defaultPunchPos)
  ;
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar18 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"PunchPosY",(int)defaultPunchPos._4_4_);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar19 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"ReloadPosX",(int)(float)defaultReloadPos);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar20 = cocos2d::CCUserDefault::getIntegerForKey
                     (pCVar10,"ReloadPosY",(int)defaultReloadPos._4_4_);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar21 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"ZoomPosX",(int)(float)defaultZoomPos);
  pCVar10 = (CCUserDefault *)cocos2d::CCUserDefault::sharedUserDefault();
  uVar22 = cocos2d::CCUserDefault::getIntegerForKey(pCVar10,"ZoomPosY",(int)defaultZoomPos._4_4_);
  LEFT_PAD._0_4_ = VectorSignedToFloat(uVar11,(byte)(in_fpscr >> 0x16) & 3);
  LEFT_PAD._4_4_ = VectorSignedToFloat(uVar12,(byte)(in_fpscr >> 0x16) & 3);
  RIGHT_PAD._0_4_ = VectorSignedToFloat(uVar13,(byte)(in_fpscr >> 0x16) & 3);
  RIGHT_PAD._4_4_ = VectorSignedToFloat(uVar14,(byte)(in_fpscr >> 0x16) & 3);
  GRENADE_POS._0_4_ = VectorSignedToFloat(uVar15,(byte)(in_fpscr >> 0x16) & 3);
  GRENADE_POS._4_4_ = VectorSignedToFloat(uVar16,(byte)(in_fpscr >> 0x16) & 3);
  PUNCH_POS._0_4_ = VectorSignedToFloat(uVar17,(byte)(in_fpscr >> 0x16) & 3);
  PUNCH_POS._4_4_ = VectorSignedToFloat(uVar18,(byte)(in_fpscr >> 0x16) & 3);
  RELOAD_POS._0_4_ = VectorSignedToFloat(uVar19,(byte)(in_fpscr >> 0x16) & 3);
  RELOAD_POS._4_4_ = VectorSignedToFloat(uVar20,(byte)(in_fpscr >> 0x16) & 3);
  ZOOM_POS._0_4_ = VectorSignedToFloat(uVar21,(byte)(in_fpscr >> 0x16) & 3);
  ZOOM_POS._4_4_ = VectorSignedToFloat(uVar22,(byte)(in_fpscr >> 0x16) & 3);
  FIRE_PAD_SCL = uVar4;
  MOVE_PAD_SCL = uVar5;
  PUNCH_SCL = uVar6;
  ZOOM_SCL = uVar7;
  GRENADE_SCL = uVar8;
  RELOAD_SCL = uVar9;
  return;
}

// ---- AppDelegate::messageBoxHandler  @ 0x2f8bf0
/* AppDelegate::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*) */

void AppDelegate::messageBoxHandler(int param_1,CCObject *param_2,CCObject *param_3)

{
  NetworkManager *this;
  CCNotificationCenter *pCVar1;
  CCObject *pCVar2;
  
  if (param_1 == 0) {
    this = (NetworkManager *)NetworkManager::sharedNetworkManager();
    NetworkManager::endMatch(this);
    if (param_3 == (CCObject *)0x0) {
      pCVar2 = (CCObject *)0x0;
    }
    else {
      pCVar2 = param_3 + -4;
    }
    if (pCVar2[0xe9] == (CCObject)0x0) {
      pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar1,"QuitGame",(CCObject *)0x0);
    }
    else {
      pCVar2[0xe9] = (CCObject)0x0;
      pCVar1 = (CCNotificationCenter *)cocos2d::CCNotificationCenter::sharedNotificationCenter();
      cocos2d::CCNotificationCenter::postNotification(pCVar1,"EndedGame",(CCObject *)0x0);
    }
  }
  return;
}

// ---- AppDelegate::showFailedMessage  @ 0x2f8c68
/* AppDelegate::showFailedMessage() */

void __thiscall AppDelegate::showFailedMessage(AppDelegate *this)

{
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_18,"Connection Lost",auStack_24);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_14,"One or more players have lost connection to the game.",auStack_20);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_1c,"CLOSE",auStack_28);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,0);
  AMessageBox::showAlert(0x2f8bf1,auStack_18,auStack_14,uVar2,0,this + 4);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_20);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_24);
  return;
}

// ---- AppDelegate::onConnectionLost  @ 0x2f8d70
/* AppDelegate::onConnectionLost(cocos2d::CCObject*) */

void AppDelegate::onConnectionLost(CCObject *param_1)

{
  param_1[0xe9] = (CCObject)0x1;
  if (param_1[0xea] != (CCObject)0x1) {
    showFailedMessage((AppDelegate *)param_1);
  }
  return;
}

// ---- AppDelegate::applicationWillResignActive  @ 0x2f8d9c
/* AppDelegate::applicationWillResignActive() */

void __thiscall AppDelegate::applicationWillResignActive(AppDelegate *this)

{
  bool bVar1;
  NetworkManager *this_00;
  int iVar2;
  int *piVar3;
  _func_void_float *p_Var4;
  float extraout_s0;
  float extraout_s1;
  
  this_00 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar2 = NetworkManager::onlineMatchExists(this_00);
  if ((iVar2 == 0) || (this[0xea] == (AppDelegate)0x1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    piVar3 = (int *)cocos2d::CCDirector::sharedDirector();
    p_Var4 = (_func_void_float *)(**(code **)(*piVar3 + 0x30))(piVar3);
    cocos2d::CCScheduler::scheduleSelector
              (p_Var4,DAT_00943200,extraout_s0,DAT_00943204,extraout_s1,(bool)((char)this + '\x04'))
    ;
    this[0xea] = (AppDelegate)0x1;
  }
  return;
}

// ---- AppDelegate::applicationDidEnterBackground  @ 0x2f8e28
/* AppDelegate::applicationDidEnterBackground() */

void AppDelegate::applicationDidEnterBackground(void)

{
  return;
}

// ---- AppDelegate::applicationWillResignActiveAndroid  @ 0x2f8e34
/* AppDelegate::applicationWillResignActiveAndroid(cocos2d::CCObject*) */

void AppDelegate::applicationWillResignActiveAndroid(CCObject *param_1)

{
  (**(code **)(*(int *)param_1 + 0x20))(param_1);
  return;
}

// ---- AppDelegate::applicationDidEnterBackgroundAndroid  @ 0x2f8e50
/* AppDelegate::applicationDidEnterBackgroundAndroid(cocos2d::CCObject*) */

void AppDelegate::applicationDidEnterBackgroundAndroid(CCObject *param_1)

{
  bool bVar1;
  NetworkManager *pNVar2;
  int iVar3;
  ScoreKeeper *this;
  int *piVar4;
  CCDirector *this_00;
  
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar3 = NetworkManager::onlineMatchExists(pNVar2);
  if (iVar3 != 0) {
    pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
    iVar3 = NetworkManager::isInGame(pNVar2);
    if ((iVar3 == 0) || (gameType != 4)) {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      this = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
      ScoreKeeper::applyPenalty(this);
      param_1[0xeb] = (CCObject)0x1;
      pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
      NetworkManager::endMatch(pNVar2);
    }
  }
  piVar4 = (int *)cocos2d::CCDirector::sharedDirector();
  (**(code **)(*piVar4 + 0x24))(piVar4);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::pause(this_00);
  CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::pauseBackgroundMusic();
  return;
}

// ---- AppDelegate::applicationWillEnterForeground  @ 0x2f8ee8
/* AppDelegate::applicationWillEnterForeground() */

void __thiscall AppDelegate::applicationWillEnterForeground(AppDelegate *this)

{
  CCDirector *this_00;
  int *piVar1;
  _func_void_float *p_Var2;
  float extraout_s0;
  float extraout_s1;
  
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::resume(this_00);
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  (**(code **)(*piVar1 + 0x28))(piVar1);
  CocosDenshion::SimpleAudioEngine::sharedEngine();
  CocosDenshion::SimpleAudioEngine::resumeBackgroundMusic();
  if (this[0xeb] != (AppDelegate)0x0) {
    this[0xeb] = (AppDelegate)0x0;
    piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
    p_Var2 = (_func_void_float *)(**(code **)(*piVar1 + 0x30))(piVar1);
    cocos2d::CCScheduler::scheduleSelector
              (p_Var2,DAT_00943208,extraout_s0,DAT_0094320c,extraout_s1,(bool)((char)this + '\x04'))
    ;
  }
  (**(code **)(*(int *)this + 0x1c))(this);
  return;
}

// ---- AppDelegate::applicationDidBecomeActive  @ 0x2f8f80
/* AppDelegate::applicationDidBecomeActive() */

void __thiscall AppDelegate::applicationDidBecomeActive(AppDelegate *this)

{
  int *piVar1;
  _func_void_float *p_Var2;
  CCDirector *this_00;
  
  this[0xea] = (AppDelegate)0x0;
  if (this[0xe9] != (AppDelegate)0x0) {
    showFailedMessage(this);
  }
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  p_Var2 = (_func_void_float *)(**(code **)(*piVar1 + 0x30))(piVar1);
  cocos2d::CCScheduler::unscheduleSelector(p_Var2,DAT_00943200);
  this_00 = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::resume(this_00);
  return;
}

// ---- AppDelegate::unloadTextures  @ 0x2f8fe4
/* AppDelegate::unloadTextures() */

void AppDelegate::unloadTextures(void)

{
  CCSpriteFrameCache *this;
  CCTextureCache *this_00;
  
  this = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
  cocos2d::CCSpriteFrameCache::removeSpriteFrames(this);
  this_00 = (CCTextureCache *)cocos2d::CCTextureCache::sharedTextureCache();
  cocos2d::CCTextureCache::removeAllTextures(this_00);
  return;
}

// ---- AppDelegate::loadTextures  @ 0x2f9008
/* AppDelegate::loadTextures() */

void AppDelegate::loadTextures(void)

{
  CCSpriteFrameCache *pCVar1;
  
  pCVar1 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
  cocos2d::CCSpriteFrameCache::addSpriteFramesWithFile(pCVar1,"menuTexture.plist");
  pCVar1 = (CCSpriteFrameCache *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
  cocos2d::CCSpriteFrameCache::addSpriteFramesWithFile(pCVar1,"partsTexture.plist");
  return;
}

// ---- AppDelegate::applicationSignificantTimeChange  @ 0x2f9040
/* AppDelegate::applicationSignificantTimeChange() */

void AppDelegate::applicationSignificantTimeChange(void)

{
  CCDirector *this;
  
  this = (CCDirector *)cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::setNextDeltaTimeZero(this,true);
  return;
}

// ---- AppDelegate::applicationDidReceiveMemoryWarning  @ 0x2f905c
/* AppDelegate::applicationDidReceiveMemoryWarning() */

void AppDelegate::applicationDidReceiveMemoryWarning(void)

{
  return;
}

// ---- AppDelegate::endMatchAfterSleep  @ 0x2f9064
/* AppDelegate::endMatchAfterSleep(float) */

void AppDelegate::endMatchAfterSleep(float param_1)

{
  int *in_r0;
  NetworkManager *this;
  
  (**(code **)(*in_r0 + 0x34))(in_r0,0);
  this = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::endMatch(this);
  return;
}

// ---- AppDelegate::showConnectionClosedAlert  @ 0x2f908c
/* AppDelegate::showConnectionClosedAlert(float) */

void AppDelegate::showConnectionClosedAlert(float param_1)

{
  int in_r0;
  CCObject *pCVar1;
  undefined4 uVar2;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  string asStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  FUN_0079a3f4(auStack_24);
  FUN_007c6a60(auStack_18,"Online Connection Closed",auStack_24);
  FUN_0079a3f4(auStack_20);
  FUN_007c6a60(auStack_14,
               "Online play in Doodle Army 2 cannot resume while the application is in the background."
               ,auStack_20);
  FUN_0079a3f4(auStack_28);
  FUN_007c6a60(asStack_1c,&DAT_007d2d9c,auStack_28);
  pCVar1 = (CCObject *)cocos2d::CCString::create(asStack_1c);
  uVar2 = cocos2d::CCArray::create(pCVar1,0);
  AMessageBox::showAlert(0x2f8bf1,auStack_18,auStack_14,uVar2,0,in_r0 + 4);
  FUN_007c5914(asStack_1c);
  FUN_0079a3fc(auStack_28);
  FUN_007c5914(auStack_14);
  FUN_0079a3fc(auStack_20);
  FUN_007c5914(auStack_18);
  FUN_0079a3fc(auStack_24);
  return;
}

// ---- AppDelegate::applicationWillTerminate  @ 0x2f9194
/* AppDelegate::applicationWillTerminate() */

void AppDelegate::applicationWillTerminate(void)

{
  bool bVar1;
  NetworkManager *pNVar2;
  int iVar3;
  ScoreKeeper *this;
  
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  iVar3 = NetworkManager::isInGame(pNVar2);
  if ((iVar3 == 0) || (gameType != 4)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  if (bVar1) {
    this = (ScoreKeeper *)ScoreKeeper::sharedScoreKeeper();
    ScoreKeeper::applyPenalty(this);
  }
  pNVar2 = (NetworkManager *)NetworkManager::sharedNetworkManager();
  NetworkManager::endMatch(pNVar2);
  return;
}
