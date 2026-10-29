// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 8 functions

// ---- ItemLibrary::sharedItemLibrary  @ 0x359288
/* ItemLibrary::sharedItemLibrary() */

ItemLibrary * ItemLibrary::sharedItemLibrary(void)

{
  ItemLibrary *this;
  
  if (m_pInstance == (ItemLibrary *)0x0) {
    this = operator_new(0xf0);
    ItemLibrary(this);
    m_pInstance = this;
  }
  return m_pInstance;
}

// ---- ItemLibrary::ItemLibrary  @ 0x359304
/* ItemLibrary::ItemLibrary() */

ItemLibrary * __thiscall ItemLibrary::ItemLibrary(ItemLibrary *this)

{
  CCSprite *pCVar1;
  CCRect *pCVar2;
  ItemLibrary *this_00;
  int iVar3;
  ItemInfo aIStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined1 local_28;
  undefined1 auStack_24 [4];
  CCRect aCStack_20 [20];
  
  *(undefined ***)this = &PTR__ItemLibrary_1_00913270;
  this_00 = this + 4;
  for (iVar3 = 0xd; iVar3 != -1; iVar3 = iVar3 + -1) {
    cocos2d::CCRect::CCRect((CCRect *)this_00);
    this_00 = this_00 + 0x10;
  }
  std::vector<ItemInfo,std::allocator<ItemInfo>>::vector
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4));
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item1.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 4),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item2.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x14),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item3.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x24),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item4.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x34),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item5.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x44),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item6.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x54),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item7.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 100),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item9.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x74),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item10.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x84),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item8.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0x94),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item11.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0xa4),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item12.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0xb4),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item13.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0xc4),pCVar2);
  pCVar1 = (CCSprite *)cocos2d::CCSprite::createWithSpriteFrameName("item14.png");
  pCVar2 = (CCRect *)cocos2d::CCSprite::getTextureRect(pCVar1);
  cocos2d::CCRect::operator=((CCRect *)(this + 0xd4),pCVar2);
  ItemInfo::ItemInfo(aIStack_40);
  FUN_007c5e70(aIStack_40,"boostrecharge");
  FUN_007c5e70(auStack_38,"BOOST REGEN");
  local_34 = 0x4e2;
  local_30 = 0x42200000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 4));
  FUN_007c5e70(auStack_3c,"50% faster booster recharge");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"healthrecharge");
  FUN_007c5e70(auStack_38,"HEALTH REGEN");
  local_34 = 1000;
  local_30 = 0;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x14));
  FUN_007c5e70(auStack_3c,"2X faster health recharge");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"boostincrease");
  FUN_007c5e70(auStack_38,"BOOST INCREASE");
  local_34 = 2000;
  local_30 = 0x41f00000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x24));
  FUN_007c5e70(auStack_3c,"Increase boost duration by 20%");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"gdeagle");
  FUN_007c5e70(auStack_38,"GOLDEN EAGLE");
  local_34 = 0xfa;
  local_30 = 0x41f00000;
  local_2c = 0x3f800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x34));
  FUN_007c5e70(auStack_3c,"Spawn with a silenced golden desert eagle");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"accuracy");
  FUN_007c5e70(auStack_38,"INCREASE ACCURACY");
  local_34 = 2000;
  local_30 = 0x41f00000;
  local_2c = 0x3fc00000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x44));
  FUN_007c5e70(auStack_3c,"Increase accuracy on all bullet firing weapons by 20%");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"grenade1");
  FUN_007c5e70(auStack_38,"GRENADE +1");
  local_34 = 1000;
  local_30 = 0x41f00000;
  local_2c = 0x40000000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x54));
  FUN_007c5e70(auStack_3c,"Carry one extra grenade");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"meleeplus");
  FUN_007c5e70(auStack_38,"MELEE +10");
  local_34 = 800;
  local_30 = 0x41f00000;
  local_2c = 0x40000000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 100));
  FUN_007c5e70(auStack_3c,"Increase melee attack damage by 10 damage points");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"pistolclip");
  FUN_007c5e70(auStack_38,"HANDGUN CLIP EXTENDER");
  local_34 = 0x4e2;
  local_30 = 0x41f00000;
  local_2c = 0x40000000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x74));
  FUN_007c5e70(auStack_3c,"Increase clip size for the uzi and desert eagle by 25%");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"rifleclip");
  FUN_007c5e70(auStack_38,"RIFLE CLIP EXTENDER");
  local_34 = 0x5dc;
  local_30 = 0x41f00000;
  local_2c = 0x40800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x84));
  FUN_007c5e70(auStack_3c,"Increase clip size for the m4, m14 and ak47 by 25%");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"lasersight");
  FUN_007c5e70(auStack_38,"LASER SIGHT");
  local_34 = 1000;
  local_30 = 0x41f00000;
  local_2c = 0x3f800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0x94));
  FUN_007c5e70(auStack_3c,"Add a laser sight to pistols and rifles");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"gasnade");
  FUN_007c5e70(auStack_38,"GAS GRENADE");
  local_34 = 500;
  local_30 = 0x41f00000;
  local_2c = 0x3f800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0xa4));
  FUN_007c5e70(auStack_3c,"Add a gas grenade to your starting weapons");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"pistolreload");
  FUN_007c5e70(auStack_38,"FASTER RELOAD");
  local_34 = 1000;
  local_30 = 0x41f00000;
  local_2c = 0x3f800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0xb4));
  FUN_007c5e70(auStack_3c,"Reduce reload time for the uzi, desert eagle and magnum by 30%");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"riflereload");
  FUN_007c5e70(auStack_38,"FASTER RELOAD");
  local_34 = 0x5dc;
  local_30 = 0x41f00000;
  local_2c = 0x3f800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0xc4));
  FUN_007c5e70(auStack_3c,"Reduce reload time for the m4, m14 and ak47 by 30%");
  local_28 = 0;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  FUN_007c5e70(aIStack_40,"maskpack1");
  FUN_007c5e70(auStack_38,"MASK PACK 1");
  local_34 = 500;
  local_30 = 0x41f00000;
  local_2c = 0x3f800000;
  FUN_007c5e70(auStack_24,"menuTexture.png");
  cocos2d::CCRect::operator=(aCStack_20,(CCRect *)(this + 0xd4));
  FUN_007c5e70(auStack_3c,
               "Unlock mask pack 1 (Hats and Glasses section of Customize) *Requires Pro Pack!");
  local_28 = 1;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::push_back
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4),aIStack_40);
  ItemInfo::~ItemInfo(aIStack_40);
  return this;
}

// ---- ItemLibrary::~ItemLibrary  @ 0x359d58
/* WARNING: Removing unreachable block (ram,0x00359d86) */
/* ItemLibrary::~ItemLibrary() */

ItemLibrary * __thiscall ItemLibrary::~ItemLibrary(ItemLibrary *this)

{
  *(undefined ***)this = &PTR__ItemLibrary_1_00913270;
  std::vector<ItemInfo,std::allocator<ItemInfo>>::clear
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4));
  std::vector<ItemInfo,std::allocator<ItemInfo>>::~vector
            ((vector<ItemInfo,std::allocator<ItemInfo>> *)(this + 0xe4));
  return this;
}

// ---- ItemLibrary::~ItemLibrary  @ 0x359da0
/* ItemLibrary::~ItemLibrary() */

ItemLibrary * __thiscall ItemLibrary::~ItemLibrary(ItemLibrary *this)

{
  ~ItemLibrary(this);
  operator_delete(this);
  return this;
}

// ---- ItemLibrary::applyItems  @ 0x359e40
/* ItemLibrary::applyItems(SoldierHostController*) */

void ItemLibrary::applyItems(SoldierHostController *param_1)

{
  int iVar1;
  undefined1 auStack_2a8 [4];
  undefined1 auStack_2a4 [4];
  undefined1 auStack_2a0 [4];
  undefined1 auStack_29c [4];
  undefined1 auStack_298 [4];
  undefined1 auStack_294 [4];
  undefined1 auStack_290 [4];
  undefined1 auStack_28c [4];
  undefined1 auStack_288 [4];
  undefined1 auStack_284 [4];
  undefined1 auStack_280 [4];
  undefined1 auStack_27c [4];
  ItemInfo aIStack_278 [48];
  ItemLibrary aIStack_248 [48];
  ItemLibrary aIStack_218 [48];
  ItemLibrary aIStack_1e8 [48];
  ItemLibrary aIStack_1b8 [48];
  ItemLibrary aIStack_188 [48];
  ItemLibrary aIStack_158 [48];
  ItemLibrary aIStack_128 [48];
  ItemLibrary aIStack_f8 [48];
  ItemLibrary aIStack_c8 [48];
  ItemLibrary aIStack_98 [48];
  ItemLibrary aIStack_68 [48];
  ItemLibrary aIStack_38 [48];
  
  ItemInfo::ItemInfo(aIStack_278);
  getItemInfoById(aIStack_248,0);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_248);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_248);
  FUN_007c64e8(auStack_2a8,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_2a8);
  FUN_007c5914(auStack_2a8);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1c8) = 0x3fc00000;
  }
  getItemInfoById(aIStack_218,1);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_218);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_218);
  FUN_007c64e8(auStack_2a4,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_2a4);
  FUN_007c5914(auStack_2a4);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1c4) = 0x40000000;
  }
  getItemInfoById(aIStack_1e8,2);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_1e8);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_1e8);
  FUN_007c64e8(auStack_2a0,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_2a0);
  FUN_007c5914(auStack_2a0);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1d0) = 0x3f4ccccd;
  }
  getItemInfoById(aIStack_1b8,3);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_1b8);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_1b8);
  FUN_007c64e8(auStack_29c,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_29c);
  FUN_007c5914(auStack_29c);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 500) = 0x12;
  }
  getItemInfoById(aIStack_188,4);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_188);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_188);
  FUN_007c64e8(auStack_298,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_298);
  FUN_007c5914(auStack_298);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1c0) = 0x3f4ccccd;
  }
  getItemInfoById(aIStack_158,5);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_158);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_158);
  FUN_007c64e8(auStack_294,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_294);
  FUN_007c5914(auStack_294);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1b8) = 5;
  }
  getItemInfoById(aIStack_128,6);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_128);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_128);
  FUN_007c64e8(auStack_290,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_290);
  FUN_007c5914(auStack_290);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1cc) = 0x3f8ccccd;
  }
  getItemInfoById(aIStack_f8,7);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_f8);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_f8);
  FUN_007c64e8(auStack_28c,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_28c);
  FUN_007c5914(auStack_28c);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1d4) = 0x3e800000;
  }
  getItemInfoById(aIStack_c8,8);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_c8);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_c8);
  FUN_007c64e8(auStack_288,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_288);
  FUN_007c5914(auStack_288);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1d8) = 0x3e800000;
  }
  getItemInfoById(aIStack_98,10);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_98);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_98);
  FUN_007c64e8(auStack_284,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_284);
  FUN_007c5914(auStack_284);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1f8) = 0x14;
  }
  getItemInfoById(aIStack_68,0xb);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_68);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_68);
  FUN_007c64e8(auStack_280,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_280);
  FUN_007c5914(auStack_280);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1dc) = 0x3e99999a;
  }
  getItemInfoById(aIStack_38,0xc);
  ItemInfo::operator=(aIStack_278,(ItemInfo *)aIStack_38);
  ItemInfo::~ItemInfo((ItemInfo *)aIStack_38);
  FUN_007c64e8(auStack_27c,aIStack_278);
  iVar1 = ItemPurchase::isItemPurchased(auStack_27c);
  FUN_007c5914(auStack_27c);
  if (iVar1 != 0) {
    *(undefined4 *)(param_1 + 0x1e0) = 0x3e99999a;
  }
  ItemInfo::~ItemInfo(aIStack_278);
  return;
}

// ---- ItemLibrary::getTotalPurchaseAmount  @ 0x35a3cc
/* ItemLibrary::getTotalPurchaseAmount(cocos2d::CCArray*) */

int __thiscall ItemLibrary::getTotalPurchaseAmount(ItemLibrary *this,CCArray *param_1)

{
  int iVar1;
  ItemInfo *pIVar2;
  CCString *this_00;
  undefined4 uVar3;
  uint uVar4;
  int local_54;
  uint local_50;
  uint local_4c;
  vector<ItemInfo,std::allocator<ItemInfo>> avStack_44 [12];
  ItemInfo aIStack_38 [12];
  int local_2c;
  
  local_54 = 0;
  iVar1 = sharedItemLibrary();
  std::vector<ItemInfo,std::allocator<ItemInfo>>::vector(avStack_44,(vector *)(iVar1 + 0xe4));
  local_50 = 0;
  do {
    uVar4 = std::vector<ItemInfo,std::allocator<ItemInfo>>::size(avStack_44);
    if (uVar4 <= local_50) {
      std::vector<ItemInfo,std::allocator<ItemInfo>>::~vector(avStack_44);
      return local_54;
    }
    pIVar2 = (ItemInfo *)
             std::vector<ItemInfo,std::allocator<ItemInfo>>::operator[](avStack_44,local_50);
    ItemInfo::ItemInfo(aIStack_38,pIVar2);
    for (local_4c = 0; uVar4 = cocos2d::CCArray::count(param_1), local_4c < uVar4;
        local_4c = local_4c + 1) {
      this_00 = (CCString *)cocos2d::CCArray::objectAtIndex(param_1,local_4c);
      uVar3 = cocos2d::CCString::getCString(this_00);
      iVar1 = FUN_007c5724(aIStack_38,uVar3);
      if (iVar1 == 0) {
        local_54 = local_2c + local_54;
        break;
      }
    }
    ItemInfo::~ItemInfo(aIStack_38);
    local_50 = local_50 + 1;
  } while( true );
}

// ---- ItemLibrary::getItemInfoByName  @ 0x35a568
/* ItemLibrary::getItemInfoByName(std::string) */

ItemLibrary * __thiscall ItemLibrary::getItemInfoByName(ItemLibrary *this,undefined4 param_2)

{
  int iVar1;
  ItemInfo *pIVar2;
  uint uVar3;
  uint local_48;
  vector<ItemInfo,std::allocator<ItemInfo>> avStack_44 [12];
  ItemInfo aIStack_38 [48];
  
  iVar1 = sharedItemLibrary();
  std::vector<ItemInfo,std::allocator<ItemInfo>>::vector(avStack_44,(vector *)(iVar1 + 0xe4));
  for (local_48 = 0; uVar3 = std::vector<ItemInfo,std::allocator<ItemInfo>>::size(avStack_44),
      local_48 < uVar3; local_48 = local_48 + 1) {
    pIVar2 = (ItemInfo *)
             std::vector<ItemInfo,std::allocator<ItemInfo>>::operator[](avStack_44,local_48);
    ItemInfo::ItemInfo(aIStack_38,pIVar2);
    iVar1 = FUN_007c567c(aIStack_38,param_2);
    if (iVar1 == 0) {
      ItemInfo::ItemInfo((ItemInfo *)this,aIStack_38);
    }
    ItemInfo::~ItemInfo(aIStack_38);
    if (iVar1 == 0) goto LAB_0035a614;
  }
  ItemInfo::ItemInfo(aIStack_38);
  ItemInfo::ItemInfo((ItemInfo *)this,aIStack_38);
  ItemInfo::~ItemInfo(aIStack_38);
LAB_0035a614:
  std::vector<ItemInfo,std::allocator<ItemInfo>>::~vector(avStack_44);
  return this;
}

// ---- ItemLibrary::getItemInfoById  @ 0x35a644
/* ItemLibrary::getItemInfoById(int) */

ItemLibrary * __thiscall ItemLibrary::getItemInfoById(ItemLibrary *this,int param_1)

{
  int iVar1;
  ItemInfo *pIVar2;
  
  iVar1 = sharedItemLibrary();
  pIVar2 = (ItemInfo *)
           std::vector<ItemInfo,std::allocator<ItemInfo>>::operator[]
                     ((vector<ItemInfo,std::allocator<ItemInfo>> *)(iVar1 + 0xe4),param_1);
  ItemInfo::ItemInfo((ItemInfo *)this,pIVar2);
  return this;
}
