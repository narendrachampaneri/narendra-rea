// AvatarMenuLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 14 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AvatarMenuLayer.cpp

// ==== AvatarMenuLayer::create
//      file offset 0x2f15f4 (= ELF address; Ghidra 0x3015f4), 112 bytes, Thumb-2
  2f15f4: b510         	push	{r4, lr}
  2f15f6: b082         	sub	sp, #0x8
  2f15f8: f44f 70a0    	mov.w	r0, #0x140
  2f15fc: f096 f1b2    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x496364
  2f1600: 4603         	mov	r3, r0
  2f1602: 461c         	mov	r4, r3
  2f1604: 4620         	mov	r0, r4
  2f1606: f000 f82d    	bl	0x2f1664 <AvatarMenuLayer::AvatarMenuLayer()> @ imm = #0x5a
  2f160a: 9401         	str	r4, [sp, #0x4]
  2f160c: 9b01         	ldr	r3, [sp, #0x4]
  2f160e: 2b00         	cmp	r3, #0x0
  2f1610: d00a         	beq	0x2f1628 <AvatarMenuLayer::create()+0x34> @ imm = #0x14
  2f1612: 9b01         	ldr	r3, [sp, #0x4]
  2f1614: 681b         	ldr	r3, [r3]
  2f1616: 3318         	adds	r3, #0x18
  2f1618: 681b         	ldr	r3, [r3]
  2f161a: 9801         	ldr	r0, [sp, #0x4]
  2f161c: 4798         	blx	r3
  2f161e: 4603         	mov	r3, r0
  2f1620: 2b00         	cmp	r3, #0x0
  2f1622: d001         	beq	0x2f1628 <AvatarMenuLayer::create()+0x34> @ imm = #0x2
  2f1624: 2301         	movs	r3, #0x1
  2f1626: e000         	b	0x2f162a <AvatarMenuLayer::create()+0x36> @ imm = #0x0
  2f1628: 2300         	movs	r3, #0x0
  2f162a: 2b00         	cmp	r3, #0x0
  2f162c: d005         	beq	0x2f163a <AvatarMenuLayer::create()+0x46> @ imm = #0xa
  2f162e: 9b01         	ldr	r3, [sp, #0x4]
  2f1630: 4618         	mov	r0, r3
  2f1632: f2a6 fc63    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2a68c6
  2f1636: 9b01         	ldr	r3, [sp, #0x4]
  2f1638: e011         	b	0x2f165e <AvatarMenuLayer::create()+0x6a> @ imm = #0x22
  2f163a: 9b01         	ldr	r3, [sp, #0x4]
  2f163c: 2b00         	cmp	r3, #0x0
  2f163e: d005         	beq	0x2f164c <AvatarMenuLayer::create()+0x58> @ imm = #0xa
  2f1640: 9b01         	ldr	r3, [sp, #0x4]
  2f1642: 681b         	ldr	r3, [r3]
  2f1644: 3308         	adds	r3, #0x8
  2f1646: 681b         	ldr	r3, [r3]
  2f1648: 9801         	ldr	r0, [sp, #0x4]
  2f164a: 4798         	blx	r3
  2f164c: 2300         	movs	r3, #0x0
  2f164e: 9301         	str	r3, [sp, #0x4]
  2f1650: 2300         	movs	r3, #0x0
  2f1652: e004         	b	0x2f165e <AvatarMenuLayer::create()+0x6a> @ imm = #0x8
  2f1654: 4620         	mov	r0, r4
  2f1656: f096 f525    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x496a4a
  2f165a: f096 f527    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x496a4e
  2f165e: 4618         	mov	r0, r3
  2f1660: b002         	add	sp, #0x8
  2f1662: bd10         	pop	{r4, pc}

// ==== AvatarMenuLayer::AvatarMenuLayer
//      file offset 0x2f1664 (= ELF address; Ghidra 0x301664), 88 bytes, Thumb-2
  2f1664: b510         	push	{r4, lr}
  2f1666: b082         	sub	sp, #0x8
  2f1668: 9001         	str	r0, [sp, #0x4]
  2f166a: 4c12         	ldr	r4, [pc, #0x48]         @ 0x2f16b4 <AvatarMenuLayer::AvatarMenuLayer()+0x50>
  2f166c: 447c         	add	r4, pc
  2f166e: 9b01         	ldr	r3, [sp, #0x4]
  2f1670: 4618         	mov	r0, r3
  2f1672: f2bb fcf3    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x2bb9e6
  2f1676: 9b01         	ldr	r3, [sp, #0x4]
  2f1678: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x2f16b8 <AvatarMenuLayer::AvatarMenuLayer()+0x54>
  2f167a: 58a2         	ldr	r2, [r4, r2]
  2f167c: 3208         	adds	r2, #0x8
  2f167e: 601a         	str	r2, [r3]
  2f1680: 9b01         	ldr	r3, [sp, #0x4]
  2f1682: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x2f16b8 <AvatarMenuLayer::AvatarMenuLayer()+0x54>
  2f1684: 58a2         	ldr	r2, [r4, r2]
  2f1686: f502 7204    	add.w	r2, r2, #0x210
  2f168a: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2f168e: 9b01         	ldr	r3, [sp, #0x4]
  2f1690: 4a09         	ldr	r2, [pc, #0x24]         @ 0x2f16b8 <AvatarMenuLayer::AvatarMenuLayer()+0x54>
  2f1692: 58a2         	ldr	r2, [r4, r2]
  2f1694: f502 7210    	add.w	r2, r2, #0x240
  2f1698: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2f169c: 9b01         	ldr	r3, [sp, #0x4]
  2f169e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2f16b8 <AvatarMenuLayer::AvatarMenuLayer()+0x54>
  2f16a0: 58a2         	ldr	r2, [r4, r2]
  2f16a2: f502 7213    	add.w	r2, r2, #0x24c
  2f16a6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2f16aa: 9b01         	ldr	r3, [sp, #0x4]
  2f16ac: 4618         	mov	r0, r3
  2f16ae: b002         	add	sp, #0x8
  2f16b0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2f16b1); words below are literal-pool data ---
  2f16b2: bf00         	nop
  2f16b4: 139c         	asrs	r4, r3, #0xe
  2f16b6: 0064         	lsls	r4, r4, #0x1
  2f16b8: d8d0         	bhi	0x2f165c <AvatarMenuLayer::create()+0x68> @ imm = #-0x60
  2f16ba: ffff b500    	<unknown>

// ==== AvatarMenuLayer::scene
//      file offset 0x2f16bc (= ELF address; Ghidra 0x3016bc), 46 bytes, Thumb-2
  2f16bc: b500         	push	{lr}
  2f16be: b083         	sub	sp, #0xc
  2f16c0: f2be f9ce    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x2be39c
  2f16c4: 4603         	mov	r3, r0
  2f16c6: 9300         	str	r3, [sp]
  2f16c8: f7ff ff94    	bl	0x2f15f4 <AvatarMenuLayer::create()> @ imm = #-0xd8
  2f16cc: 4603         	mov	r3, r0
  2f16ce: 9301         	str	r3, [sp, #0x4]
  2f16d0: 9b00         	ldr	r3, [sp]
  2f16d2: 681b         	ldr	r3, [r3]
  2f16d4: 33c8         	adds	r3, #0xc8
  2f16d6: 681b         	ldr	r3, [r3]
  2f16d8: 9a00         	ldr	r2, [sp]
  2f16da: 4610         	mov	r0, r2
  2f16dc: 9901         	ldr	r1, [sp, #0x4]
  2f16de: 4798         	blx	r3
  2f16e0: 9b00         	ldr	r3, [sp]
  2f16e2: 4618         	mov	r0, r3
  2f16e4: b003         	add	sp, #0xc
  2f16e6: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarMenuLayer::init
//      file offset 0x2f16f0 (= ELF address; Ghidra 0x3016f0), 3728 bytes, Thumb-2
  2f16f0: b5f0         	push	{r4, r5, r6, r7, lr}
  2f16f2: ed2d 8b02    	vpush	{d8}
  2f16f6: b0bb         	sub	sp, #0xec
  2f16f8: 9003         	str	r0, [sp, #0xc]
  2f16fa: 4c09         	ldr	r4, [pc, #0x24]         @ 0x2f1720 <AvatarMenuLayer::init()+0x30>
  2f16fc: 447c         	add	r4, pc
  2f16fe: 9b03         	ldr	r3, [sp, #0xc]
  2f1700: 4618         	mov	r0, r3
  2f1702: f2bb fd79    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x2bbaf2
  2f1706: 4603         	mov	r3, r0
  2f1708: f88d 3017    	strb.w	r3, [sp, #0x17]
  2f170c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  2f1710: f083 0301    	eor	r3, r3, #0x1
  2f1714: b2db         	uxtb	r3, r3
  2f1716: 2b00         	cmp	r3, #0x0
  2f1718: d004         	beq	0x2f1724 <AvatarMenuLayer::init()+0x34> @ imm = #0x8
  2f171a: 2300         	movs	r3, #0x0
  2f171c: f000 bf1d    	b.w	0x2f255a <AvatarMenuLayer::init()+0xe6a> @ imm = #0xe3a
  2f1720: 130c         	asrs	r4, r1, #0xc
  2f1722: 0064         	lsls	r4, r4, #0x1
  2f1724: 9b03         	ldr	r3, [sp, #0xc]
  2f1726: 2200         	movs	r2, #0x0
  2f1728: f883 2108    	strb.w	r2, [r3, #0x108]
  2f172c: ab1e         	add	r3, sp, #0x78
  2f172e: 4618         	mov	r0, r3
  2f1730: f8df 378c    	ldr.w	r3, [pc, #0x78c]        @ 0x2f1ec0 <AvatarMenuLayer::init()+0x7d0>
  2f1734: 58e3         	ldr	r3, [r4, r3]
  2f1736: 4619         	mov	r1, r3
  2f1738: f2a1 fcba    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2a1974
  2f173c: ed9d 7a1e    	vldr	s14, [sp, #120]
  2f1740: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f1744: eec7 6a27    	vdiv.f32	s13, s14, s15
  2f1748: ed9d 7a1f    	vldr	s14, [sp, #124]
  2f174c: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f1750: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f1754: ab20         	add	r3, sp, #0x80
  2f1756: 4618         	mov	r0, r3
  2f1758: ee16 1a90    	vmov	r1, s13
  2f175c: ee17 2a90    	vmov	r2, s15
  2f1760: f2a1 fac6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a158c
  2f1764: f04f 0300    	mov.w	r3, #0x0
  2f1768: 9307         	str	r3, [sp, #0x1c]
  2f176a: f04f 0300    	mov.w	r3, #0x0
  2f176e: f2c4 2340    	movt	r3, #0x4240
  2f1772: 9308         	str	r3, [sp, #0x20]
  2f1774: f8df 374c    	ldr.w	r3, [pc, #0x74c]        @ 0x2f1ec4 <AvatarMenuLayer::init()+0x7d4>
  2f1778: 447b         	add	r3, pc
  2f177a: 4618         	mov	r0, r3
  2f177c: f2e6 fdc2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b84
  2f1780: 4603         	mov	r3, r0
  2f1782: 9309         	str	r3, [sp, #0x24]
  2f1784: f8df 3740    	ldr.w	r3, [pc, #0x740]        @ 0x2f1ec8 <AvatarMenuLayer::init()+0x7d8>
  2f1788: 447b         	add	r3, pc
  2f178a: 4618         	mov	r0, r3
  2f178c: f2e6 fdba    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b74
  2f1790: 4603         	mov	r3, r0
  2f1792: 930a         	str	r3, [sp, #0x28]
  2f1794: f8df 3734    	ldr.w	r3, [pc, #0x734]        @ 0x2f1ecc <AvatarMenuLayer::init()+0x7dc>
  2f1798: 447b         	add	r3, pc
  2f179a: 4618         	mov	r0, r3
  2f179c: f2e6 fdb2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b64
  2f17a0: 4603         	mov	r3, r0
  2f17a2: 930b         	str	r3, [sp, #0x2c]
  2f17a4: f8df 3728    	ldr.w	r3, [pc, #0x728]        @ 0x2f1ed0 <AvatarMenuLayer::init()+0x7e0>
  2f17a8: 447b         	add	r3, pc
  2f17aa: 4618         	mov	r0, r3
  2f17ac: f2e6 fdaa    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b54
  2f17b0: 4603         	mov	r3, r0
  2f17b2: 930c         	str	r3, [sp, #0x30]
  2f17b4: f8df 371c    	ldr.w	r3, [pc, #0x71c]        @ 0x2f1ed4 <AvatarMenuLayer::init()+0x7e4>
  2f17b8: 447b         	add	r3, pc
  2f17ba: 4618         	mov	r0, r3
  2f17bc: f2e6 fda2    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b44
  2f17c0: 4603         	mov	r3, r0
  2f17c2: 930d         	str	r3, [sp, #0x34]
  2f17c4: f8df 3710    	ldr.w	r3, [pc, #0x710]        @ 0x2f1ed8 <AvatarMenuLayer::init()+0x7e8>
  2f17c8: 447b         	add	r3, pc
  2f17ca: 4618         	mov	r0, r3
  2f17cc: f2e6 fd9a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b34
  2f17d0: 4603         	mov	r3, r0
  2f17d2: 930e         	str	r3, [sp, #0x38]
  2f17d4: f8df 3704    	ldr.w	r3, [pc, #0x704]        @ 0x2f1edc <AvatarMenuLayer::init()+0x7ec>
  2f17d8: 447b         	add	r3, pc
  2f17da: 4618         	mov	r0, r3
  2f17dc: f2e6 fd92    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b24
  2f17e0: 4603         	mov	r3, r0
  2f17e2: 930f         	str	r3, [sp, #0x3c]
  2f17e4: f8df 36f8    	ldr.w	r3, [pc, #0x6f8]        @ 0x2f1ee0 <AvatarMenuLayer::init()+0x7f0>
  2f17e8: 447b         	add	r3, pc
  2f17ea: 4618         	mov	r0, r3
  2f17ec: f2e6 fd8a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b14
  2f17f0: 4603         	mov	r3, r0
  2f17f2: 9310         	str	r3, [sp, #0x40]
  2f17f4: f8df 36ec    	ldr.w	r3, [pc, #0x6ec]        @ 0x2f1ee4 <AvatarMenuLayer::init()+0x7f4>
  2f17f8: 447b         	add	r3, pc
  2f17fa: 4618         	mov	r0, r3
  2f17fc: f2e6 fd82    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6b04
  2f1800: 4603         	mov	r3, r0
  2f1802: 9311         	str	r3, [sp, #0x44]
  2f1804: f8df 36e0    	ldr.w	r3, [pc, #0x6e0]        @ 0x2f1ee8 <AvatarMenuLayer::init()+0x7f8>
  2f1808: 447b         	add	r3, pc
  2f180a: 4618         	mov	r0, r3
  2f180c: f2e6 fd7a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6af4
  2f1810: 4603         	mov	r3, r0
  2f1812: 9312         	str	r3, [sp, #0x48]
  2f1814: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x2f1eec <AvatarMenuLayer::init()+0x7fc>
  2f1818: 447b         	add	r3, pc
  2f181a: 4618         	mov	r0, r3
  2f181c: f2e6 fd72    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6ae4
  2f1820: 4603         	mov	r3, r0
  2f1822: 9313         	str	r3, [sp, #0x4c]
  2f1824: f8df 36c8    	ldr.w	r3, [pc, #0x6c8]        @ 0x2f1ef0 <AvatarMenuLayer::init()+0x800>
  2f1828: 447b         	add	r3, pc
  2f182a: 4618         	mov	r0, r3
  2f182c: f2e6 fd6a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2e6ad4
  2f1830: 4603         	mov	r3, r0
  2f1832: 9314         	str	r3, [sp, #0x50]
  2f1834: 9a03         	ldr	r2, [sp, #0xc]
  2f1836: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x2f1ef4 <AvatarMenuLayer::init()+0x804>
  2f183a: 58e3         	ldr	r3, [r4, r3]
  2f183c: 9328         	str	r3, [sp, #0xa0]
  2f183e: 2300         	movs	r3, #0x0
  2f1840: 9329         	str	r3, [sp, #0xa4]
  2f1842: 9b29         	ldr	r3, [sp, #0xa4]
  2f1844: 9300         	str	r3, [sp]
  2f1846: 9b28         	ldr	r3, [sp, #0xa0]
  2f1848: 9809         	ldr	r0, [sp, #0x24]
  2f184a: 990a         	ldr	r1, [sp, #0x28]
  2f184c: f2c6 fd6e    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c6adc
  2f1850: 4603         	mov	r3, r0
  2f1852: 9315         	str	r3, [sp, #0x54]
  2f1854: 9815         	ldr	r0, [sp, #0x54]
  2f1856: 2100         	movs	r1, #0x0
  2f1858: f2c3 fc70    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c38e0
  2f185c: 4602         	mov	r2, r0
  2f185e: 9b03         	ldr	r3, [sp, #0xc]
  2f1860: f8c3 2128    	str.w	r2, [r3, #0x128]
  2f1864: 9b03         	ldr	r3, [sp, #0xc]
  2f1866: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2f186a: 4618         	mov	r0, r3
  2f186c: f2a6 fb3c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a6678
  2f1870: 9b03         	ldr	r3, [sp, #0xc]
  2f1872: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2f1876: 681b         	ldr	r3, [r3]
  2f1878: 334c         	adds	r3, #0x4c
  2f187a: 681d         	ldr	r5, [r3]
  2f187c: 9b03         	ldr	r3, [sp, #0xc]
  2f187e: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2f1882: 461e         	mov	r6, r3
  2f1884: ed9d 7a20    	vldr	s14, [sp, #128]
  2f1888: eddd 7a07    	vldr	s15, [sp, #28]
  2f188c: ee77 6a27    	vadd.f32	s13, s14, s15
  2f1890: ed9d 7a21    	vldr	s14, [sp, #132]
  2f1894: eddd 7a08    	vldr	s15, [sp, #32]
  2f1898: ee77 7a27    	vadd.f32	s15, s14, s15
  2f189c: ab36         	add	r3, sp, #0xd8
  2f189e: 4618         	mov	r0, r3
  2f18a0: ee16 1a90    	vmov	r1, s13
  2f18a4: ee17 2a90    	vmov	r2, s15
  2f18a8: f2a1 fa22    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a1444
  2f18ac: ab36         	add	r3, sp, #0xd8
  2f18ae: 4630         	mov	r0, r6
  2f18b0: 4619         	mov	r1, r3
  2f18b2: 47a8         	blx	r5
  2f18b4: 9b03         	ldr	r3, [sp, #0xc]
  2f18b6: 681b         	ldr	r3, [r3]
  2f18b8: 33c8         	adds	r3, #0xc8
  2f18ba: 681b         	ldr	r3, [r3]
  2f18bc: 9903         	ldr	r1, [sp, #0xc]
  2f18be: 9a03         	ldr	r2, [sp, #0xc]
  2f18c0: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2f18c4: 4608         	mov	r0, r1
  2f18c6: 4611         	mov	r1, r2
  2f18c8: 4798         	blx	r3
  2f18ca: 9a03         	ldr	r2, [sp, #0xc]
  2f18cc: f8df 3628    	ldr.w	r3, [pc, #0x628]        @ 0x2f1ef8 <AvatarMenuLayer::init()+0x808>
  2f18d0: 58e3         	ldr	r3, [r4, r3]
  2f18d2: 932a         	str	r3, [sp, #0xa8]
  2f18d4: 2300         	movs	r3, #0x0
  2f18d6: 932b         	str	r3, [sp, #0xac]
  2f18d8: 9b2b         	ldr	r3, [sp, #0xac]
  2f18da: 9300         	str	r3, [sp]
  2f18dc: 9b2a         	ldr	r3, [sp, #0xa8]
  2f18de: 980b         	ldr	r0, [sp, #0x2c]
  2f18e0: 990c         	ldr	r1, [sp, #0x30]
  2f18e2: f2c6 fd23    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c6a46
  2f18e6: 4603         	mov	r3, r0
  2f18e8: 9316         	str	r3, [sp, #0x58]
  2f18ea: 9816         	ldr	r0, [sp, #0x58]
  2f18ec: 2100         	movs	r1, #0x0
  2f18ee: f2c3 fc25    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c384a
  2f18f2: 4602         	mov	r2, r0
  2f18f4: 9b03         	ldr	r3, [sp, #0xc]
  2f18f6: f8c3 212c    	str.w	r2, [r3, #0x12c]
  2f18fa: 9b03         	ldr	r3, [sp, #0xc]
  2f18fc: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f1900: 4618         	mov	r0, r3
  2f1902: f2a6 faf1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a65e2
  2f1906: 9b03         	ldr	r3, [sp, #0xc]
  2f1908: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f190c: 681b         	ldr	r3, [r3]
  2f190e: 334c         	adds	r3, #0x4c
  2f1910: 681d         	ldr	r5, [r3]
  2f1912: 9b03         	ldr	r3, [sp, #0xc]
  2f1914: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f1918: 461e         	mov	r6, r3
  2f191a: ed9d 7a20    	vldr	s14, [sp, #128]
  2f191e: eddd 7a07    	vldr	s15, [sp, #28]
  2f1922: ee77 7a27    	vadd.f32	s15, s14, s15
  2f1926: 9b21         	ldr	r3, [sp, #0x84]
  2f1928: aa36         	add	r2, sp, #0xd8
  2f192a: 4610         	mov	r0, r2
  2f192c: ee17 1a90    	vmov	r1, s15
  2f1930: 461a         	mov	r2, r3
  2f1932: f2a1 f9dd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a13ba
  2f1936: ab36         	add	r3, sp, #0xd8
  2f1938: 4630         	mov	r0, r6
  2f193a: 4619         	mov	r1, r3
  2f193c: 47a8         	blx	r5
  2f193e: 9b03         	ldr	r3, [sp, #0xc]
  2f1940: 681b         	ldr	r3, [r3]
  2f1942: 33c8         	adds	r3, #0xc8
  2f1944: 681b         	ldr	r3, [r3]
  2f1946: 9903         	ldr	r1, [sp, #0xc]
  2f1948: 9a03         	ldr	r2, [sp, #0xc]
  2f194a: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2f194e: 4608         	mov	r0, r1
  2f1950: 4611         	mov	r1, r2
  2f1952: 4798         	blx	r3
  2f1954: 9a03         	ldr	r2, [sp, #0xc]
  2f1956: f8df 35a4    	ldr.w	r3, [pc, #0x5a4]        @ 0x2f1efc <AvatarMenuLayer::init()+0x80c>
  2f195a: 58e3         	ldr	r3, [r4, r3]
  2f195c: 932c         	str	r3, [sp, #0xb0]
  2f195e: 2300         	movs	r3, #0x0
  2f1960: 932d         	str	r3, [sp, #0xb4]
  2f1962: 9b2d         	ldr	r3, [sp, #0xb4]
  2f1964: 9300         	str	r3, [sp]
  2f1966: 9b2c         	ldr	r3, [sp, #0xb0]
  2f1968: 980d         	ldr	r0, [sp, #0x34]
  2f196a: 990e         	ldr	r1, [sp, #0x38]
  2f196c: f2c6 fcde    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c69bc
  2f1970: 4603         	mov	r3, r0
  2f1972: 9317         	str	r3, [sp, #0x5c]
  2f1974: 9817         	ldr	r0, [sp, #0x5c]
  2f1976: 2100         	movs	r1, #0x0
  2f1978: f2c3 fbe0    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c37c0
  2f197c: 4602         	mov	r2, r0
  2f197e: 9b03         	ldr	r3, [sp, #0xc]
  2f1980: f8c3 2134    	str.w	r2, [r3, #0x134]
  2f1984: 9b03         	ldr	r3, [sp, #0xc]
  2f1986: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2f198a: 4618         	mov	r0, r3
  2f198c: f2a6 faac    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a6558
  2f1990: 9b03         	ldr	r3, [sp, #0xc]
  2f1992: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2f1996: 681b         	ldr	r3, [r3]
  2f1998: 334c         	adds	r3, #0x4c
  2f199a: 681d         	ldr	r5, [r3]
  2f199c: 9b03         	ldr	r3, [sp, #0xc]
  2f199e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2f19a2: 461e         	mov	r6, r3
  2f19a4: ed9d 7a20    	vldr	s14, [sp, #128]
  2f19a8: eddd 7a07    	vldr	s15, [sp, #28]
  2f19ac: ee77 6a27    	vadd.f32	s13, s14, s15
  2f19b0: ed9d 7a21    	vldr	s14, [sp, #132]
  2f19b4: eddd 7a08    	vldr	s15, [sp, #32]
  2f19b8: ee77 7a67    	vsub.f32	s15, s14, s15
  2f19bc: ab36         	add	r3, sp, #0xd8
  2f19be: 4618         	mov	r0, r3
  2f19c0: ee16 1a90    	vmov	r1, s13
  2f19c4: ee17 2a90    	vmov	r2, s15
  2f19c8: f2a1 f992    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a1324
  2f19cc: ab36         	add	r3, sp, #0xd8
  2f19ce: 4630         	mov	r0, r6
  2f19d0: 4619         	mov	r1, r3
  2f19d2: 47a8         	blx	r5
  2f19d4: 9b03         	ldr	r3, [sp, #0xc]
  2f19d6: 681b         	ldr	r3, [r3]
  2f19d8: 33c8         	adds	r3, #0xc8
  2f19da: 681b         	ldr	r3, [r3]
  2f19dc: 9903         	ldr	r1, [sp, #0xc]
  2f19de: 9a03         	ldr	r2, [sp, #0xc]
  2f19e0: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2f19e4: 4608         	mov	r0, r1
  2f19e6: 4611         	mov	r1, r2
  2f19e8: 4798         	blx	r3
  2f19ea: 9a03         	ldr	r2, [sp, #0xc]
  2f19ec: f8df 3510    	ldr.w	r3, [pc, #0x510]        @ 0x2f1f00 <AvatarMenuLayer::init()+0x810>
  2f19f0: 58e3         	ldr	r3, [r4, r3]
  2f19f2: 932e         	str	r3, [sp, #0xb8]
  2f19f4: 2300         	movs	r3, #0x0
  2f19f6: 932f         	str	r3, [sp, #0xbc]
  2f19f8: 9b2f         	ldr	r3, [sp, #0xbc]
  2f19fa: 9300         	str	r3, [sp]
  2f19fc: 9b2e         	ldr	r3, [sp, #0xb8]
  2f19fe: 980f         	ldr	r0, [sp, #0x3c]
  2f1a00: 9910         	ldr	r1, [sp, #0x40]
  2f1a02: f2c6 fc93    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c6926
  2f1a06: 4603         	mov	r3, r0
  2f1a08: 9318         	str	r3, [sp, #0x60]
  2f1a0a: 9818         	ldr	r0, [sp, #0x60]
  2f1a0c: 2100         	movs	r1, #0x0
  2f1a0e: f2c3 fb95    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c372a
  2f1a12: 4602         	mov	r2, r0
  2f1a14: 9b03         	ldr	r3, [sp, #0xc]
  2f1a16: f8c3 2130    	str.w	r2, [r3, #0x130]
  2f1a1a: 9b03         	ldr	r3, [sp, #0xc]
  2f1a1c: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f1a20: 4618         	mov	r0, r3
  2f1a22: f2a6 fa61    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a64c2
  2f1a26: 9b03         	ldr	r3, [sp, #0xc]
  2f1a28: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f1a2c: 681b         	ldr	r3, [r3]
  2f1a2e: 334c         	adds	r3, #0x4c
  2f1a30: 681d         	ldr	r5, [r3]
  2f1a32: 9b03         	ldr	r3, [sp, #0xc]
  2f1a34: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f1a38: 461e         	mov	r6, r3
  2f1a3a: ed9d 7a20    	vldr	s14, [sp, #128]
  2f1a3e: eddd 7a07    	vldr	s15, [sp, #28]
  2f1a42: ee77 6a27    	vadd.f32	s13, s14, s15
  2f1a46: ed9d 7a21    	vldr	s14, [sp, #132]
  2f1a4a: eddd 7a08    	vldr	s15, [sp, #32]
  2f1a4e: ee77 7aa7    	vadd.f32	s15, s15, s15
  2f1a52: ee77 7a67    	vsub.f32	s15, s14, s15
  2f1a56: ab36         	add	r3, sp, #0xd8
  2f1a58: 4618         	mov	r0, r3
  2f1a5a: ee16 1a90    	vmov	r1, s13
  2f1a5e: ee17 2a90    	vmov	r2, s15
  2f1a62: f2a1 f945    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a128a
  2f1a66: ab36         	add	r3, sp, #0xd8
  2f1a68: 4630         	mov	r0, r6
  2f1a6a: 4619         	mov	r1, r3
  2f1a6c: 47a8         	blx	r5
  2f1a6e: 9b03         	ldr	r3, [sp, #0xc]
  2f1a70: 681b         	ldr	r3, [r3]
  2f1a72: 33c8         	adds	r3, #0xc8
  2f1a74: 681b         	ldr	r3, [r3]
  2f1a76: 9903         	ldr	r1, [sp, #0xc]
  2f1a78: 9a03         	ldr	r2, [sp, #0xc]
  2f1a7a: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2f1a7e: 4608         	mov	r0, r1
  2f1a80: 4611         	mov	r1, r2
  2f1a82: 4798         	blx	r3
  2f1a84: 9a03         	ldr	r2, [sp, #0xc]
  2f1a86: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x2f1f04 <AvatarMenuLayer::init()+0x814>
  2f1a8a: 58e3         	ldr	r3, [r4, r3]
  2f1a8c: 9330         	str	r3, [sp, #0xc0]
  2f1a8e: 2300         	movs	r3, #0x0
  2f1a90: 9331         	str	r3, [sp, #0xc4]
  2f1a92: 9b31         	ldr	r3, [sp, #0xc4]
  2f1a94: 9300         	str	r3, [sp]
  2f1a96: 9b30         	ldr	r3, [sp, #0xc0]
  2f1a98: 9811         	ldr	r0, [sp, #0x44]
  2f1a9a: 9912         	ldr	r1, [sp, #0x48]
  2f1a9c: f2c6 fc46    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c688c
  2f1aa0: 4603         	mov	r3, r0
  2f1aa2: 9319         	str	r3, [sp, #0x64]
  2f1aa4: 9819         	ldr	r0, [sp, #0x64]
  2f1aa6: 2100         	movs	r1, #0x0
  2f1aa8: f2c3 fb48    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c3690
  2f1aac: 4602         	mov	r2, r0
  2f1aae: 9b03         	ldr	r3, [sp, #0xc]
  2f1ab0: f8c3 2138    	str.w	r2, [r3, #0x138]
  2f1ab4: 9b03         	ldr	r3, [sp, #0xc]
  2f1ab6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2f1aba: 4618         	mov	r0, r3
  2f1abc: f2a6 fa14    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a6428
  2f1ac0: 9b03         	ldr	r3, [sp, #0xc]
  2f1ac2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2f1ac6: 681b         	ldr	r3, [r3]
  2f1ac8: 334c         	adds	r3, #0x4c
  2f1aca: 681d         	ldr	r5, [r3]
  2f1acc: 9b03         	ldr	r3, [sp, #0xc]
  2f1ace: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2f1ad2: 461e         	mov	r6, r3
  2f1ad4: ab36         	add	r3, sp, #0xd8
  2f1ad6: 4618         	mov	r0, r3
  2f1ad8: f04f 0100    	mov.w	r1, #0x0
  2f1adc: f2c4 2160    	movt	r1, #0x4260
  2f1ae0: f04f 4284    	mov.w	r2, #0x42000000
  2f1ae4: f2a1 f904    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a1208
  2f1ae8: ab36         	add	r3, sp, #0xd8
  2f1aea: 4630         	mov	r0, r6
  2f1aec: 4619         	mov	r1, r3
  2f1aee: 47a8         	blx	r5
  2f1af0: 9b03         	ldr	r3, [sp, #0xc]
  2f1af2: 681b         	ldr	r3, [r3]
  2f1af4: 33c8         	adds	r3, #0xc8
  2f1af6: 681b         	ldr	r3, [r3]
  2f1af8: 9903         	ldr	r1, [sp, #0xc]
  2f1afa: 9a03         	ldr	r2, [sp, #0xc]
  2f1afc: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2f1b00: 4608         	mov	r0, r1
  2f1b02: 4611         	mov	r1, r2
  2f1b04: 4798         	blx	r3
  2f1b06: f64c 43cd    	movw	r3, #0xcccd
  2f1b0a: f6c3 730c    	movt	r3, #0x3f0c
  2f1b0e: 931a         	str	r3, [sp, #0x68]
  2f1b10: f04f 0300    	mov.w	r3, #0x0
  2f1b14: f2c4 13c0    	movt	r3, #0x41c0
  2f1b18: 931b         	str	r3, [sp, #0x6c]
  2f1b1a: f04f 4341    	mov.w	r3, #0xc1000000
  2f1b1e: 931c         	str	r3, [sp, #0x70]
  2f1b20: 4bf9         	ldr	r3, [pc, #0x3e4]        @ 0x2f1f08 <AvatarMenuLayer::init()+0x818>
  2f1b22: 447b         	add	r3, pc
  2f1b24: 4618         	mov	r0, r3
  2f1b26: f0c3 f3eb    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c37d6
  2f1b2a: 4603         	mov	r3, r0
  2f1b2c: 2220         	movs	r2, #0x20
  2f1b2e: 9200         	str	r2, [sp]
  2f1b30: 4af6         	ldr	r2, [pc, #0x3d8]        @ 0x2f1f0c <AvatarMenuLayer::init()+0x81c>
  2f1b32: 447a         	add	r2, pc
  2f1b34: 4610         	mov	r0, r2
  2f1b36: 4619         	mov	r1, r3
  2f1b38: 2220         	movs	r2, #0x20
  2f1b3a: 2320         	movs	r3, #0x20
  2f1b3c: f2b3 fc1c    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b3838
  2f1b40: 4602         	mov	r2, r0
  2f1b42: 9b03         	ldr	r3, [sp, #0xc]
  2f1b44: f8c3 2110    	str.w	r2, [r3, #0x110]
  2f1b48: 9b03         	ldr	r3, [sp, #0xc]
  2f1b4a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f1b4e: 4618         	mov	r0, r3
  2f1b50: f2a6 f9ca    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a6394
  2f1b54: 9b03         	ldr	r3, [sp, #0xc]
  2f1b56: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f1b5a: eddd 7a1b    	vldr	s15, [sp, #108]
  2f1b5e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f1b62: ee17 2a90    	vmov	r2, s15
  2f1b66: 4618         	mov	r0, r3
  2f1b68: 4611         	mov	r1, r2
  2f1b6a: f2b4 f90b    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b4216
  2f1b6e: 9b03         	ldr	r3, [sp, #0xc]
  2f1b70: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f1b74: 681b         	ldr	r3, [r3]
  2f1b76: 3340         	adds	r3, #0x40
  2f1b78: 681b         	ldr	r3, [r3]
  2f1b7a: 9a03         	ldr	r2, [sp, #0xc]
  2f1b7c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2f1b80: 4610         	mov	r0, r2
  2f1b82: 991a         	ldr	r1, [sp, #0x68]
  2f1b84: 4798         	blx	r3
  2f1b86: 9b03         	ldr	r3, [sp, #0xc]
  2f1b88: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f1b8c: 681b         	ldr	r3, [r3]
  2f1b8e: 334c         	adds	r3, #0x4c
  2f1b90: 681d         	ldr	r5, [r3]
  2f1b92: 9b03         	ldr	r3, [sp, #0xc]
  2f1b94: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f1b98: 461e         	mov	r6, r3
  2f1b9a: 9b03         	ldr	r3, [sp, #0xc]
  2f1b9c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2f1ba0: 681b         	ldr	r3, [r3]
  2f1ba2: 3350         	adds	r3, #0x50
  2f1ba4: 681b         	ldr	r3, [r3]
  2f1ba6: 9a03         	ldr	r2, [sp, #0xc]
  2f1ba8: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2f1bac: 4610         	mov	r0, r2
  2f1bae: 4798         	blx	r3
  2f1bb0: 4603         	mov	r3, r0
  2f1bb2: 681f         	ldr	r7, [r3]
  2f1bb4: 9b03         	ldr	r3, [sp, #0xc]
  2f1bb6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2f1bba: 681b         	ldr	r3, [r3]
  2f1bbc: 3350         	adds	r3, #0x50
  2f1bbe: 681b         	ldr	r3, [r3]
  2f1bc0: 9a03         	ldr	r2, [sp, #0xc]
  2f1bc2: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  2f1bc6: 4610         	mov	r0, r2
  2f1bc8: 4798         	blx	r3
  2f1bca: 4603         	mov	r3, r0
  2f1bcc: 685b         	ldr	r3, [r3, #0x4]
  2f1bce: aa22         	add	r2, sp, #0x88
  2f1bd0: 4610         	mov	r0, r2
  2f1bd2: 4639         	mov	r1, r7
  2f1bd4: 461a         	mov	r2, r3
  2f1bd6: f2a1 f88b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a1116
  2f1bda: eddd 7a1c    	vldr	s15, [sp, #112]
  2f1bde: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1be2: ab32         	add	r3, sp, #0xc8
  2f1be4: 4618         	mov	r0, r3
  2f1be6: ed9f 0bb4    	vldr	d0, [pc, #720]          @ 0x2f1eb8 <AvatarMenuLayer::init()+0x7c8>
  2f1bea: eeb0 1b47    	vmov.f64	d1, d7
  2f1bee: f7fe fe41    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x137e
  2f1bf2: ed9d 8b32    	vldr	d8, [sp, #200]
  2f1bf6: 9b03         	ldr	r3, [sp, #0xc]
  2f1bf8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f1bfc: 681b         	ldr	r3, [r3]
  2f1bfe: f503 73fe    	add.w	r3, r3, #0x1fc
  2f1c02: 681b         	ldr	r3, [r3]
  2f1c04: 9a03         	ldr	r2, [sp, #0xc]
  2f1c06: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2f1c0a: 4610         	mov	r0, r2
  2f1c0c: 4798         	blx	r3
  2f1c0e: 4607         	mov	r7, r0
  2f1c10: ab05         	add	r3, sp, #0x14
  2f1c12: 4618         	mov	r0, r3
  2f1c14: f098 f3ee    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4987dc
  2f1c18: aa06         	add	r2, sp, #0x18
  2f1c1a: ab05         	add	r3, sp, #0x14
  2f1c1c: 4610         	mov	r0, r2
  2f1c1e: 4639         	mov	r1, r7
  2f1c20: 461a         	mov	r2, r3
  2f1c22: f0c4 f71d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c4e3a
  2f1c26: ab06         	add	r3, sp, #0x18
  2f1c28: 4618         	mov	r0, r3
  2f1c2a: f0c3 f217    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c342e
  2f1c2e: 4603         	mov	r3, r0
  2f1c30: ee07 3a90    	vmov	s15, r3
  2f1c34: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2f1c38: eddd 7a1b    	vldr	s15, [sp, #108]
  2f1c3c: ee27 7a27    	vmul.f32	s14, s14, s15
  2f1c40: eddd 7a1a    	vldr	s15, [sp, #104]
  2f1c44: ee27 7a27    	vmul.f32	s14, s14, s15
  2f1c48: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f1c4c: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f1c50: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1c54: ee38 7b47    	vsub.f64	d7, d8, d7
  2f1c58: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2f1c5c: eddd 7a1c    	vldr	s15, [sp, #112]
  2f1c60: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1c64: ab36         	add	r3, sp, #0xd8
  2f1c66: 4618         	mov	r0, r3
  2f1c68: ed9f 0b93    	vldr	d0, [pc, #588]          @ 0x2f1eb8 <AvatarMenuLayer::init()+0x7c8>
  2f1c6c: eeb0 1b47    	vmov.f64	d1, d7
  2f1c70: f7fe fe00    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x1400
  2f1c74: ed9d 7b38    	vldr	d7, [sp, #224]
  2f1c78: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2f1c7c: ab24         	add	r3, sp, #0x90
  2f1c7e: 4618         	mov	r0, r3
  2f1c80: ee18 1a10    	vmov	r1, s16
  2f1c84: ee17 2a90    	vmov	r2, s15
  2f1c88: f2a1 f832    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a1064
  2f1c8c: a926         	add	r1, sp, #0x98
  2f1c8e: aa22         	add	r2, sp, #0x88
  2f1c90: ab24         	add	r3, sp, #0x90
  2f1c92: 4608         	mov	r0, r1
  2f1c94: 4611         	mov	r1, r2
  2f1c96: 461a         	mov	r2, r3
  2f1c98: f7fe fddc    	bl	0x2f0854 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c8> @ imm = #-0x1448
  2f1c9c: ab26         	add	r3, sp, #0x98
  2f1c9e: 4630         	mov	r0, r6
  2f1ca0: 4619         	mov	r1, r3
  2f1ca2: 47a8         	blx	r5
  2f1ca4: ab06         	add	r3, sp, #0x18
  2f1ca6: 4618         	mov	r0, r3
  2f1ca8: f0c3 f634    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c3c68
  2f1cac: ab05         	add	r3, sp, #0x14
  2f1cae: 4618         	mov	r0, r3
  2f1cb0: f098 f3a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x498748
  2f1cb4: 9b03         	ldr	r3, [sp, #0xc]
  2f1cb6: 681b         	ldr	r3, [r3]
  2f1cb8: 33c8         	adds	r3, #0xc8
  2f1cba: 681b         	ldr	r3, [r3]
  2f1cbc: 9903         	ldr	r1, [sp, #0xc]
  2f1cbe: 9a03         	ldr	r2, [sp, #0xc]
  2f1cc0: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  2f1cc4: 4608         	mov	r0, r1
  2f1cc6: 4611         	mov	r1, r2
  2f1cc8: 4798         	blx	r3
  2f1cca: 4b91         	ldr	r3, [pc, #0x244]        @ 0x2f1f10 <AvatarMenuLayer::init()+0x820>
  2f1ccc: 447b         	add	r3, pc
  2f1cce: 4618         	mov	r0, r3
  2f1cd0: f0c3 f316    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c362c
  2f1cd4: 4603         	mov	r3, r0
  2f1cd6: 2220         	movs	r2, #0x20
  2f1cd8: 9200         	str	r2, [sp]
  2f1cda: 4a8e         	ldr	r2, [pc, #0x238]        @ 0x2f1f14 <AvatarMenuLayer::init()+0x824>
  2f1cdc: 447a         	add	r2, pc
  2f1cde: 4610         	mov	r0, r2
  2f1ce0: 4619         	mov	r1, r3
  2f1ce2: 2220         	movs	r2, #0x20
  2f1ce4: 2320         	movs	r3, #0x20
  2f1ce6: f2b3 fb47    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b368e
  2f1cea: 4602         	mov	r2, r0
  2f1cec: 9b03         	ldr	r3, [sp, #0xc]
  2f1cee: f8c3 2114    	str.w	r2, [r3, #0x114]
  2f1cf2: 9b03         	ldr	r3, [sp, #0xc]
  2f1cf4: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f1cf8: 4618         	mov	r0, r3
  2f1cfa: f2a6 f8f5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a61ea
  2f1cfe: 9b03         	ldr	r3, [sp, #0xc]
  2f1d00: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f1d04: eddd 7a1b    	vldr	s15, [sp, #108]
  2f1d08: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f1d0c: ee17 2a90    	vmov	r2, s15
  2f1d10: 4618         	mov	r0, r3
  2f1d12: 4611         	mov	r1, r2
  2f1d14: f2b4 f836    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b406c
  2f1d18: 9b03         	ldr	r3, [sp, #0xc]
  2f1d1a: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f1d1e: 681b         	ldr	r3, [r3]
  2f1d20: 3340         	adds	r3, #0x40
  2f1d22: 681b         	ldr	r3, [r3]
  2f1d24: 9a03         	ldr	r2, [sp, #0xc]
  2f1d26: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2f1d2a: 4610         	mov	r0, r2
  2f1d2c: 991a         	ldr	r1, [sp, #0x68]
  2f1d2e: 4798         	blx	r3
  2f1d30: 9b03         	ldr	r3, [sp, #0xc]
  2f1d32: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f1d36: 681b         	ldr	r3, [r3]
  2f1d38: 334c         	adds	r3, #0x4c
  2f1d3a: 681d         	ldr	r5, [r3]
  2f1d3c: 9b03         	ldr	r3, [sp, #0xc]
  2f1d3e: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f1d42: 461e         	mov	r6, r3
  2f1d44: 9b03         	ldr	r3, [sp, #0xc]
  2f1d46: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f1d4a: 681b         	ldr	r3, [r3]
  2f1d4c: 3350         	adds	r3, #0x50
  2f1d4e: 681b         	ldr	r3, [r3]
  2f1d50: 9a03         	ldr	r2, [sp, #0xc]
  2f1d52: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2f1d56: 4610         	mov	r0, r2
  2f1d58: 4798         	blx	r3
  2f1d5a: 4603         	mov	r3, r0
  2f1d5c: 681f         	ldr	r7, [r3]
  2f1d5e: 9b03         	ldr	r3, [sp, #0xc]
  2f1d60: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f1d64: 681b         	ldr	r3, [r3]
  2f1d66: 3350         	adds	r3, #0x50
  2f1d68: 681b         	ldr	r3, [r3]
  2f1d6a: 9a03         	ldr	r2, [sp, #0xc]
  2f1d6c: f8d2 212c    	ldr.w	r2, [r2, #0x12c]
  2f1d70: 4610         	mov	r0, r2
  2f1d72: 4798         	blx	r3
  2f1d74: 4603         	mov	r3, r0
  2f1d76: 685b         	ldr	r3, [r3, #0x4]
  2f1d78: aa22         	add	r2, sp, #0x88
  2f1d7a: 4610         	mov	r0, r2
  2f1d7c: 4639         	mov	r1, r7
  2f1d7e: 461a         	mov	r2, r3
  2f1d80: f2a0 ffb6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0f6c
  2f1d84: eddd 7a1c    	vldr	s15, [sp, #112]
  2f1d88: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1d8c: ab32         	add	r3, sp, #0xc8
  2f1d8e: 4618         	mov	r0, r3
  2f1d90: ed9f 0b49    	vldr	d0, [pc, #292]          @ 0x2f1eb8 <AvatarMenuLayer::init()+0x7c8>
  2f1d94: eeb0 1b47    	vmov.f64	d1, d7
  2f1d98: f7fe fd6c    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x1528
  2f1d9c: ed9d 8b32    	vldr	d8, [sp, #200]
  2f1da0: 9b03         	ldr	r3, [sp, #0xc]
  2f1da2: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f1da6: 681b         	ldr	r3, [r3]
  2f1da8: f503 73fe    	add.w	r3, r3, #0x1fc
  2f1dac: 681b         	ldr	r3, [r3]
  2f1dae: 9a03         	ldr	r2, [sp, #0xc]
  2f1db0: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2f1db4: 4610         	mov	r0, r2
  2f1db6: 4798         	blx	r3
  2f1db8: 4607         	mov	r7, r0
  2f1dba: ab05         	add	r3, sp, #0x14
  2f1dbc: 4618         	mov	r0, r3
  2f1dbe: f098 f319    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x498632
  2f1dc2: aa06         	add	r2, sp, #0x18
  2f1dc4: ab05         	add	r3, sp, #0x14
  2f1dc6: 4610         	mov	r0, r2
  2f1dc8: 4639         	mov	r1, r7
  2f1dca: 461a         	mov	r2, r3
  2f1dcc: f0c4 f648    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c4c90
  2f1dd0: ab06         	add	r3, sp, #0x18
  2f1dd2: 4618         	mov	r0, r3
  2f1dd4: f0c3 f142    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c3284
  2f1dd8: 4603         	mov	r3, r0
  2f1dda: ee07 3a90    	vmov	s15, r3
  2f1dde: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2f1de2: eddd 7a1b    	vldr	s15, [sp, #108]
  2f1de6: ee27 7a27    	vmul.f32	s14, s14, s15
  2f1dea: eddd 7a1a    	vldr	s15, [sp, #104]
  2f1dee: ee27 7a27    	vmul.f32	s14, s14, s15
  2f1df2: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f1df6: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f1dfa: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1dfe: ee38 7b47    	vsub.f64	d7, d8, d7
  2f1e02: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2f1e06: eddd 7a1c    	vldr	s15, [sp, #112]
  2f1e0a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1e0e: ab36         	add	r3, sp, #0xd8
  2f1e10: 4618         	mov	r0, r3
  2f1e12: ed9f 0b29    	vldr	d0, [pc, #164]          @ 0x2f1eb8 <AvatarMenuLayer::init()+0x7c8>
  2f1e16: eeb0 1b47    	vmov.f64	d1, d7
  2f1e1a: f7fe fd2b    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x15aa
  2f1e1e: ed9d 7b38    	vldr	d7, [sp, #224]
  2f1e22: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2f1e26: ab24         	add	r3, sp, #0x90
  2f1e28: 4618         	mov	r0, r3
  2f1e2a: ee18 1a10    	vmov	r1, s16
  2f1e2e: ee17 2a90    	vmov	r2, s15
  2f1e32: f2a0 ff5d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0eba
  2f1e36: a926         	add	r1, sp, #0x98
  2f1e38: aa22         	add	r2, sp, #0x88
  2f1e3a: ab24         	add	r3, sp, #0x90
  2f1e3c: 4608         	mov	r0, r1
  2f1e3e: 4611         	mov	r1, r2
  2f1e40: 461a         	mov	r2, r3
  2f1e42: f7fe fd07    	bl	0x2f0854 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c8> @ imm = #-0x15f2
  2f1e46: ab26         	add	r3, sp, #0x98
  2f1e48: 4630         	mov	r0, r6
  2f1e4a: 4619         	mov	r1, r3
  2f1e4c: 47a8         	blx	r5
  2f1e4e: ab06         	add	r3, sp, #0x18
  2f1e50: 4618         	mov	r0, r3
  2f1e52: f0c3 f55f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c3abe
  2f1e56: ab05         	add	r3, sp, #0x14
  2f1e58: 4618         	mov	r0, r3
  2f1e5a: f098 f2cf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49859e
  2f1e5e: 9b03         	ldr	r3, [sp, #0xc]
  2f1e60: 681b         	ldr	r3, [r3]
  2f1e62: 33c8         	adds	r3, #0xc8
  2f1e64: 681b         	ldr	r3, [r3]
  2f1e66: 9903         	ldr	r1, [sp, #0xc]
  2f1e68: 9a03         	ldr	r2, [sp, #0xc]
  2f1e6a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  2f1e6e: 4608         	mov	r0, r1
  2f1e70: 4611         	mov	r1, r2
  2f1e72: 4798         	blx	r3
  2f1e74: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x2f1f18 <AvatarMenuLayer::init()+0x828>
  2f1e76: 447b         	add	r3, pc
  2f1e78: 4618         	mov	r0, r3
  2f1e7a: f0c3 f241    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c3482
  2f1e7e: 4603         	mov	r3, r0
  2f1e80: 2220         	movs	r2, #0x20
  2f1e82: 9200         	str	r2, [sp]
  2f1e84: 4a25         	ldr	r2, [pc, #0x94]         @ 0x2f1f1c <AvatarMenuLayer::init()+0x82c>
  2f1e86: 447a         	add	r2, pc
  2f1e88: 4610         	mov	r0, r2
  2f1e8a: 4619         	mov	r1, r3
  2f1e8c: 2220         	movs	r2, #0x20
  2f1e8e: 2320         	movs	r3, #0x20
  2f1e90: f2b3 fa72    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b34e4
  2f1e94: 4602         	mov	r2, r0
  2f1e96: 9b03         	ldr	r3, [sp, #0xc]
  2f1e98: f8c3 2118    	str.w	r2, [r3, #0x118]
  2f1e9c: 9b03         	ldr	r3, [sp, #0xc]
  2f1e9e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f1ea2: 4618         	mov	r0, r3
  2f1ea4: f2a6 f820    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a6040
  2f1ea8: 9b03         	ldr	r3, [sp, #0xc]
  2f1eaa: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f1eae: eddd 7a1b    	vldr	s15, [sp, #108]
  2f1eb2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f1eb6: e033         	b	0x2f1f20 <AvatarMenuLayer::init()+0x830> @ imm = #0x66
  2f1ec0: d724         	bvc	0x2f1f0c <AvatarMenuLayer::init()+0x81c> @ imm = #0x48
  2f1ec2: ffff 207c    	vshr.u32	q9, q14, #0x1
  2f1ec6: 004d         	lsls	r5, r1, #0x1
  2f1ec8: 206c         	movs	r0, #0x6c
  2f1eca: 004d         	lsls	r5, r1, #0x1
  2f1ecc: 2068         	movs	r0, #0x68
  2f1ece: 004d         	lsls	r5, r1, #0x1
  2f1ed0: 2058         	movs	r0, #0x58
  2f1ed2: 004d         	lsls	r5, r1, #0x1
  2f1ed4: 2048         	movs	r0, #0x48
  2f1ed6: 004d         	lsls	r5, r1, #0x1
  2f1ed8: 2038         	movs	r0, #0x38
  2f1eda: 004d         	lsls	r5, r1, #0x1
  2f1edc: 2034         	movs	r0, #0x34
  2f1ede: 004d         	lsls	r5, r1, #0x1
  2f1ee0: 2024         	movs	r0, #0x24
  2f1ee2: 004d         	lsls	r5, r1, #0x1
  2f1ee4: 2020         	movs	r0, #0x20
  2f1ee6: 004d         	lsls	r5, r1, #0x1
  2f1ee8: 2010         	movs	r0, #0x10
  2f1eea: 004d         	lsls	r5, r1, #0x1
  2f1eec: 200c         	movs	r0, #0xc
  2f1eee: 004d         	lsls	r5, r1, #0x1
  2f1ef0: 1ffc         	subs	r4, r7, #0x7
  2f1ef2: 004d         	lsls	r5, r1, #0x1
  2f1ef4: d8d4         	bhi	0x2f1ea0 <AvatarMenuLayer::init()+0x7b0> @ imm = #-0x58
  2f1ef6: ffff d8d8    	<unknown>
  2f1efa: ffff d8dc    	<unknown>
  2f1efe: ffff d8e0    	vtbx.8	d29, {d31}, d16
  2f1f02: ffff d8e4    	vtbx.8	d29, {d31}, d20
  2f1f06: ffff dd06    	<unknown>
  2f1f0a: 0064         	lsls	r4, r4, #0x1
  2f1f0c: 1cfe         	adds	r6, r7, #0x3
  2f1f0e: 004d         	lsls	r5, r1, #0x1
  2f1f10: db5c         	blt	0x2f1fcc <AvatarMenuLayer::init()+0x8dc> @ imm = #0xb8
  2f1f12: 0064         	lsls	r4, r4, #0x1
  2f1f14: 1b5c         	subs	r4, r3, r5
  2f1f16: 004d         	lsls	r5, r1, #0x1
  2f1f18: d9b2         	bls	0x2f1e80 <AvatarMenuLayer::init()+0x790> @ imm = #-0x9c
  2f1f1a: 0064         	lsls	r4, r4, #0x1
  2f1f1c: 19ba         	adds	r2, r7, r6
  2f1f1e: 004d         	lsls	r5, r1, #0x1
  2f1f20: ee17 2a90    	vmov	r2, s15
  2f1f24: 4618         	mov	r0, r3
  2f1f26: 4611         	mov	r1, r2
  2f1f28: f2b3 ff2c    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b3e58
  2f1f2c: 9b03         	ldr	r3, [sp, #0xc]
  2f1f2e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f1f32: 681b         	ldr	r3, [r3]
  2f1f34: 3340         	adds	r3, #0x40
  2f1f36: 681b         	ldr	r3, [r3]
  2f1f38: 9a03         	ldr	r2, [sp, #0xc]
  2f1f3a: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2f1f3e: 4610         	mov	r0, r2
  2f1f40: 991a         	ldr	r1, [sp, #0x68]
  2f1f42: 4798         	blx	r3
  2f1f44: 9b03         	ldr	r3, [sp, #0xc]
  2f1f46: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f1f4a: 681b         	ldr	r3, [r3]
  2f1f4c: 334c         	adds	r3, #0x4c
  2f1f4e: 681d         	ldr	r5, [r3]
  2f1f50: 9b03         	ldr	r3, [sp, #0xc]
  2f1f52: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f1f56: 461e         	mov	r6, r3
  2f1f58: 9b03         	ldr	r3, [sp, #0xc]
  2f1f5a: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f1f5e: 681b         	ldr	r3, [r3]
  2f1f60: 3350         	adds	r3, #0x50
  2f1f62: 681b         	ldr	r3, [r3]
  2f1f64: 9a03         	ldr	r2, [sp, #0xc]
  2f1f66: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2f1f6a: 4610         	mov	r0, r2
  2f1f6c: 4798         	blx	r3
  2f1f6e: 4603         	mov	r3, r0
  2f1f70: 681f         	ldr	r7, [r3]
  2f1f72: 9b03         	ldr	r3, [sp, #0xc]
  2f1f74: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f1f78: 681b         	ldr	r3, [r3]
  2f1f7a: 3350         	adds	r3, #0x50
  2f1f7c: 681b         	ldr	r3, [r3]
  2f1f7e: 9a03         	ldr	r2, [sp, #0xc]
  2f1f80: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  2f1f84: 4610         	mov	r0, r2
  2f1f86: 4798         	blx	r3
  2f1f88: 4603         	mov	r3, r0
  2f1f8a: 685b         	ldr	r3, [r3, #0x4]
  2f1f8c: aa22         	add	r2, sp, #0x88
  2f1f8e: 4610         	mov	r0, r2
  2f1f90: 4639         	mov	r1, r7
  2f1f92: 461a         	mov	r2, r3
  2f1f94: f2a0 feac    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0d58
  2f1f98: eddd 7a1c    	vldr	s15, [sp, #112]
  2f1f9c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f1fa0: ab32         	add	r3, sp, #0xc8
  2f1fa2: 4618         	mov	r0, r3
  2f1fa4: ed9f 0bb4    	vldr	d0, [pc, #720]          @ 0x2f2278 <AvatarMenuLayer::init()+0xb88>
  2f1fa8: eeb0 1b47    	vmov.f64	d1, d7
  2f1fac: f7fe fc62    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x173c
  2f1fb0: ed9d 8b32    	vldr	d8, [sp, #200]
  2f1fb4: 9b03         	ldr	r3, [sp, #0xc]
  2f1fb6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f1fba: 681b         	ldr	r3, [r3]
  2f1fbc: f503 73fe    	add.w	r3, r3, #0x1fc
  2f1fc0: 681b         	ldr	r3, [r3]
  2f1fc2: 9a03         	ldr	r2, [sp, #0xc]
  2f1fc4: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2f1fc8: 4610         	mov	r0, r2
  2f1fca: 4798         	blx	r3
  2f1fcc: 4607         	mov	r7, r0
  2f1fce: ab05         	add	r3, sp, #0x14
  2f1fd0: 4618         	mov	r0, r3
  2f1fd2: f098 f20f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x49841e
  2f1fd6: aa06         	add	r2, sp, #0x18
  2f1fd8: ab05         	add	r3, sp, #0x14
  2f1fda: 4610         	mov	r0, r2
  2f1fdc: 4639         	mov	r1, r7
  2f1fde: 461a         	mov	r2, r3
  2f1fe0: f0c4 f53e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c4a7c
  2f1fe4: ab06         	add	r3, sp, #0x18
  2f1fe6: 4618         	mov	r0, r3
  2f1fe8: f0c3 f038    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c3070
  2f1fec: 4603         	mov	r3, r0
  2f1fee: ee07 3a90    	vmov	s15, r3
  2f1ff2: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2f1ff6: eddd 7a1b    	vldr	s15, [sp, #108]
  2f1ffa: ee27 7a27    	vmul.f32	s14, s14, s15
  2f1ffe: eddd 7a1a    	vldr	s15, [sp, #104]
  2f2002: ee27 7a27    	vmul.f32	s14, s14, s15
  2f2006: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f200a: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f200e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f2012: ee38 7b47    	vsub.f64	d7, d8, d7
  2f2016: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2f201a: eddd 7a1c    	vldr	s15, [sp, #112]
  2f201e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f2022: ab36         	add	r3, sp, #0xd8
  2f2024: 4618         	mov	r0, r3
  2f2026: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x2f2278 <AvatarMenuLayer::init()+0xb88>
  2f202a: eeb0 1b47    	vmov.f64	d1, d7
  2f202e: f7fe fc21    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x17be
  2f2032: ed9d 7b38    	vldr	d7, [sp, #224]
  2f2036: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2f203a: ab24         	add	r3, sp, #0x90
  2f203c: 4618         	mov	r0, r3
  2f203e: ee18 1a10    	vmov	r1, s16
  2f2042: ee17 2a90    	vmov	r2, s15
  2f2046: f2a0 fe53    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0ca6
  2f204a: a926         	add	r1, sp, #0x98
  2f204c: aa22         	add	r2, sp, #0x88
  2f204e: ab24         	add	r3, sp, #0x90
  2f2050: 4608         	mov	r0, r1
  2f2052: 4611         	mov	r1, r2
  2f2054: 461a         	mov	r2, r3
  2f2056: f7fe fbfd    	bl	0x2f0854 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c8> @ imm = #-0x1806
  2f205a: ab26         	add	r3, sp, #0x98
  2f205c: 4630         	mov	r0, r6
  2f205e: 4619         	mov	r1, r3
  2f2060: 47a8         	blx	r5
  2f2062: ab06         	add	r3, sp, #0x18
  2f2064: 4618         	mov	r0, r3
  2f2066: f0c3 f455    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c38aa
  2f206a: ab05         	add	r3, sp, #0x14
  2f206c: 4618         	mov	r0, r3
  2f206e: f098 f1c5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x49838a
  2f2072: 9b03         	ldr	r3, [sp, #0xc]
  2f2074: 681b         	ldr	r3, [r3]
  2f2076: 33c8         	adds	r3, #0xc8
  2f2078: 681b         	ldr	r3, [r3]
  2f207a: 9903         	ldr	r1, [sp, #0xc]
  2f207c: 9a03         	ldr	r2, [sp, #0xc]
  2f207e: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  2f2082: 4608         	mov	r0, r1
  2f2084: 4611         	mov	r1, r2
  2f2086: 4798         	blx	r3
  2f2088: 4b7d         	ldr	r3, [pc, #0x1f4]        @ 0x2f2280 <AvatarMenuLayer::init()+0xb90>
  2f208a: 447b         	add	r3, pc
  2f208c: 4618         	mov	r0, r3
  2f208e: f0c3 f137    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c326e
  2f2092: 4603         	mov	r3, r0
  2f2094: 2220         	movs	r2, #0x20
  2f2096: 9200         	str	r2, [sp]
  2f2098: 4a7a         	ldr	r2, [pc, #0x1e8]        @ 0x2f2284 <AvatarMenuLayer::init()+0xb94>
  2f209a: 447a         	add	r2, pc
  2f209c: 4610         	mov	r0, r2
  2f209e: 4619         	mov	r1, r3
  2f20a0: 2220         	movs	r2, #0x20
  2f20a2: 2320         	movs	r3, #0x20
  2f20a4: f2b3 f968    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b32d0
  2f20a8: 4602         	mov	r2, r0
  2f20aa: 9b03         	ldr	r3, [sp, #0xc]
  2f20ac: f8c3 2120    	str.w	r2, [r3, #0x120]
  2f20b0: 9b03         	ldr	r3, [sp, #0xc]
  2f20b2: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f20b6: 4618         	mov	r0, r3
  2f20b8: f2a5 ff16    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a5e2c
  2f20bc: 9b03         	ldr	r3, [sp, #0xc]
  2f20be: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f20c2: eddd 7a1b    	vldr	s15, [sp, #108]
  2f20c6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f20ca: ee17 2a90    	vmov	r2, s15
  2f20ce: 4618         	mov	r0, r3
  2f20d0: 4611         	mov	r1, r2
  2f20d2: f2b3 fe57    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b3cae
  2f20d6: 9b03         	ldr	r3, [sp, #0xc]
  2f20d8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f20dc: 681b         	ldr	r3, [r3]
  2f20de: 3340         	adds	r3, #0x40
  2f20e0: 681b         	ldr	r3, [r3]
  2f20e2: 9a03         	ldr	r2, [sp, #0xc]
  2f20e4: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2f20e8: 4610         	mov	r0, r2
  2f20ea: 991a         	ldr	r1, [sp, #0x68]
  2f20ec: 4798         	blx	r3
  2f20ee: 9b03         	ldr	r3, [sp, #0xc]
  2f20f0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f20f4: 681b         	ldr	r3, [r3]
  2f20f6: 334c         	adds	r3, #0x4c
  2f20f8: 681d         	ldr	r5, [r3]
  2f20fa: 9b03         	ldr	r3, [sp, #0xc]
  2f20fc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f2100: 461e         	mov	r6, r3
  2f2102: 9b03         	ldr	r3, [sp, #0xc]
  2f2104: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2f2108: 681b         	ldr	r3, [r3]
  2f210a: 3350         	adds	r3, #0x50
  2f210c: 681b         	ldr	r3, [r3]
  2f210e: 9a03         	ldr	r2, [sp, #0xc]
  2f2110: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2f2114: 4610         	mov	r0, r2
  2f2116: 4798         	blx	r3
  2f2118: 4603         	mov	r3, r0
  2f211a: 681f         	ldr	r7, [r3]
  2f211c: 9b03         	ldr	r3, [sp, #0xc]
  2f211e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2f2122: 681b         	ldr	r3, [r3]
  2f2124: 3350         	adds	r3, #0x50
  2f2126: 681b         	ldr	r3, [r3]
  2f2128: 9a03         	ldr	r2, [sp, #0xc]
  2f212a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  2f212e: 4610         	mov	r0, r2
  2f2130: 4798         	blx	r3
  2f2132: 4603         	mov	r3, r0
  2f2134: 685b         	ldr	r3, [r3, #0x4]
  2f2136: aa22         	add	r2, sp, #0x88
  2f2138: 4610         	mov	r0, r2
  2f213a: 4639         	mov	r1, r7
  2f213c: 461a         	mov	r2, r3
  2f213e: f2a0 fdd7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0bae
  2f2142: eddd 7a1c    	vldr	s15, [sp, #112]
  2f2146: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f214a: ab32         	add	r3, sp, #0xc8
  2f214c: 4618         	mov	r0, r3
  2f214e: ed9f 0b4a    	vldr	d0, [pc, #296]          @ 0x2f2278 <AvatarMenuLayer::init()+0xb88>
  2f2152: eeb0 1b47    	vmov.f64	d1, d7
  2f2156: f7fe fb8d    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x18e6
  2f215a: ed9d 8b32    	vldr	d8, [sp, #200]
  2f215e: 9b03         	ldr	r3, [sp, #0xc]
  2f2160: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f2164: 681b         	ldr	r3, [r3]
  2f2166: f503 73fe    	add.w	r3, r3, #0x1fc
  2f216a: 681b         	ldr	r3, [r3]
  2f216c: 9a03         	ldr	r2, [sp, #0xc]
  2f216e: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2f2172: 4610         	mov	r0, r2
  2f2174: 4798         	blx	r3
  2f2176: 4607         	mov	r7, r0
  2f2178: ab05         	add	r3, sp, #0x14
  2f217a: 4618         	mov	r0, r3
  2f217c: f098 f13a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x498274
  2f2180: aa06         	add	r2, sp, #0x18
  2f2182: ab05         	add	r3, sp, #0x14
  2f2184: 4610         	mov	r0, r2
  2f2186: 4639         	mov	r1, r7
  2f2188: 461a         	mov	r2, r3
  2f218a: f0c4 f469    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c48d2
  2f218e: ab06         	add	r3, sp, #0x18
  2f2190: 4618         	mov	r0, r3
  2f2192: f0c2 f763    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c2ec6
  2f2196: 4603         	mov	r3, r0
  2f2198: ee07 3a90    	vmov	s15, r3
  2f219c: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2f21a0: eddd 7a1b    	vldr	s15, [sp, #108]
  2f21a4: ee27 7a27    	vmul.f32	s14, s14, s15
  2f21a8: eddd 7a1a    	vldr	s15, [sp, #104]
  2f21ac: ee27 7a27    	vmul.f32	s14, s14, s15
  2f21b0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f21b4: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f21b8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f21bc: ee38 7b47    	vsub.f64	d7, d8, d7
  2f21c0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2f21c4: eddd 7a1c    	vldr	s15, [sp, #112]
  2f21c8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f21cc: ab36         	add	r3, sp, #0xd8
  2f21ce: 4618         	mov	r0, r3
  2f21d0: ed9f 0b29    	vldr	d0, [pc, #164]          @ 0x2f2278 <AvatarMenuLayer::init()+0xb88>
  2f21d4: eeb0 1b47    	vmov.f64	d1, d7
  2f21d8: f7fe fb4c    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x1968
  2f21dc: ed9d 7b38    	vldr	d7, [sp, #224]
  2f21e0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2f21e4: ab24         	add	r3, sp, #0x90
  2f21e6: 4618         	mov	r0, r3
  2f21e8: ee18 1a10    	vmov	r1, s16
  2f21ec: ee17 2a90    	vmov	r2, s15
  2f21f0: f2a0 fd7e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0afc
  2f21f4: a926         	add	r1, sp, #0x98
  2f21f6: aa22         	add	r2, sp, #0x88
  2f21f8: ab24         	add	r3, sp, #0x90
  2f21fa: 4608         	mov	r0, r1
  2f21fc: 4611         	mov	r1, r2
  2f21fe: 461a         	mov	r2, r3
  2f2200: f7fe fb28    	bl	0x2f0854 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c8> @ imm = #-0x19b0
  2f2204: ab26         	add	r3, sp, #0x98
  2f2206: 4630         	mov	r0, r6
  2f2208: 4619         	mov	r1, r3
  2f220a: 47a8         	blx	r5
  2f220c: ab06         	add	r3, sp, #0x18
  2f220e: 4618         	mov	r0, r3
  2f2210: f0c3 f380    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c3700
  2f2214: ab05         	add	r3, sp, #0x14
  2f2216: 4618         	mov	r0, r3
  2f2218: f098 f0f0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4981e0
  2f221c: 9b03         	ldr	r3, [sp, #0xc]
  2f221e: 681b         	ldr	r3, [r3]
  2f2220: 33c8         	adds	r3, #0xc8
  2f2222: 681b         	ldr	r3, [r3]
  2f2224: 9903         	ldr	r1, [sp, #0xc]
  2f2226: 9a03         	ldr	r2, [sp, #0xc]
  2f2228: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  2f222c: 4608         	mov	r0, r1
  2f222e: 4611         	mov	r1, r2
  2f2230: 4798         	blx	r3
  2f2232: 4b15         	ldr	r3, [pc, #0x54]         @ 0x2f2288 <AvatarMenuLayer::init()+0xb98>
  2f2234: 447b         	add	r3, pc
  2f2236: 4618         	mov	r0, r3
  2f2238: f0c3 f062    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4c30c4
  2f223c: 4603         	mov	r3, r0
  2f223e: 2220         	movs	r2, #0x20
  2f2240: 9200         	str	r2, [sp]
  2f2242: 4a12         	ldr	r2, [pc, #0x48]         @ 0x2f228c <AvatarMenuLayer::init()+0xb9c>
  2f2244: 447a         	add	r2, pc
  2f2246: 4610         	mov	r0, r2
  2f2248: 4619         	mov	r1, r3
  2f224a: 2220         	movs	r2, #0x20
  2f224c: 2320         	movs	r3, #0x20
  2f224e: f2b3 f893    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x2b3126
  2f2252: 4602         	mov	r2, r0
  2f2254: 9b03         	ldr	r3, [sp, #0xc]
  2f2256: f8c3 211c    	str.w	r2, [r3, #0x11c]
  2f225a: 9b03         	ldr	r3, [sp, #0xc]
  2f225c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f2260: 4618         	mov	r0, r3
  2f2262: f2a5 fe41    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a5c82
  2f2266: 9b03         	ldr	r3, [sp, #0xc]
  2f2268: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f226c: 681b         	ldr	r3, [r3]
  2f226e: 334c         	adds	r3, #0x4c
  2f2270: e00e         	b	0x2f2290 <AvatarMenuLayer::init()+0xba0> @ imm = #0x1c
  2f2272: bf00         	nop
  2f2274: f3af 8000    	nop.w
  2f2280: d79e         	bvc	0x2f21c0 <AvatarMenuLayer::init()+0xad0> @ imm = #-0xc4
  2f2282: 0064         	lsls	r4, r4, #0x1
  2f2284: 17b2         	asrs	r2, r6, #0x1e
  2f2286: 004d         	lsls	r5, r1, #0x1
  2f2288: d5f4         	bpl	0x2f2274 <AvatarMenuLayer::init()+0xb84> @ imm = #-0x18
  2f228a: 0064         	lsls	r4, r4, #0x1
  2f228c: 1614         	asrs	r4, r2, #0x18
  2f228e: 004d         	lsls	r5, r1, #0x1
  2f2290: 681d         	ldr	r5, [r3]
  2f2292: 9b03         	ldr	r3, [sp, #0xc]
  2f2294: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f2298: 461e         	mov	r6, r3
  2f229a: 9b03         	ldr	r3, [sp, #0xc]
  2f229c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2f22a0: 681b         	ldr	r3, [r3]
  2f22a2: 3350         	adds	r3, #0x50
  2f22a4: 681b         	ldr	r3, [r3]
  2f22a6: 9a03         	ldr	r2, [sp, #0xc]
  2f22a8: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2f22ac: 4610         	mov	r0, r2
  2f22ae: 4798         	blx	r3
  2f22b0: 4603         	mov	r3, r0
  2f22b2: 681f         	ldr	r7, [r3]
  2f22b4: 9b03         	ldr	r3, [sp, #0xc]
  2f22b6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2f22ba: 681b         	ldr	r3, [r3]
  2f22bc: 3350         	adds	r3, #0x50
  2f22be: 681b         	ldr	r3, [r3]
  2f22c0: 9a03         	ldr	r2, [sp, #0xc]
  2f22c2: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  2f22c6: 4610         	mov	r0, r2
  2f22c8: 4798         	blx	r3
  2f22ca: 4603         	mov	r3, r0
  2f22cc: 685b         	ldr	r3, [r3, #0x4]
  2f22ce: aa22         	add	r2, sp, #0x88
  2f22d0: 4610         	mov	r0, r2
  2f22d2: 4639         	mov	r1, r7
  2f22d4: 461a         	mov	r2, r3
  2f22d6: f2a0 fd0b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0a16
  2f22da: eddd 7a1c    	vldr	s15, [sp, #112]
  2f22de: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f22e2: ab32         	add	r3, sp, #0xc8
  2f22e4: 4618         	mov	r0, r3
  2f22e6: ed9f 0ba0    	vldr	d0, [pc, #640]          @ 0x2f2568 <AvatarMenuLayer::init()+0xe78>
  2f22ea: eeb0 1b47    	vmov.f64	d1, d7
  2f22ee: f7fe fac1    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x1a7e
  2f22f2: ed9d 8b32    	vldr	d8, [sp, #200]
  2f22f6: 9b03         	ldr	r3, [sp, #0xc]
  2f22f8: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f22fc: 681b         	ldr	r3, [r3]
  2f22fe: f503 73fe    	add.w	r3, r3, #0x1fc
  2f2302: 681b         	ldr	r3, [r3]
  2f2304: 9a03         	ldr	r2, [sp, #0xc]
  2f2306: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2f230a: 4610         	mov	r0, r2
  2f230c: 4798         	blx	r3
  2f230e: 4607         	mov	r7, r0
  2f2310: ab05         	add	r3, sp, #0x14
  2f2312: 4618         	mov	r0, r3
  2f2314: f098 f06e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4980dc
  2f2318: aa06         	add	r2, sp, #0x18
  2f231a: ab05         	add	r3, sp, #0x14
  2f231c: 4610         	mov	r0, r2
  2f231e: 4639         	mov	r1, r7
  2f2320: 461a         	mov	r2, r3
  2f2322: f0c4 f39d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4c473a
  2f2326: ab06         	add	r3, sp, #0x18
  2f2328: 4618         	mov	r0, r3
  2f232a: f0c2 f697    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4c2d2e
  2f232e: 4603         	mov	r3, r0
  2f2330: ee07 3a90    	vmov	s15, r3
  2f2334: eeb8 7a67    	vcvt.f32.u32	s14, s15
  2f2338: eddd 7a1b    	vldr	s15, [sp, #108]
  2f233c: ee27 7a27    	vmul.f32	s14, s14, s15
  2f2340: eddd 7a1a    	vldr	s15, [sp, #104]
  2f2344: ee27 7a27    	vmul.f32	s14, s14, s15
  2f2348: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  2f234c: eec7 7a27    	vdiv.f32	s15, s14, s15
  2f2350: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f2354: ee38 7b47    	vsub.f64	d7, d8, d7
  2f2358: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  2f235c: eddd 7a1c    	vldr	s15, [sp, #112]
  2f2360: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2f2364: ab36         	add	r3, sp, #0xd8
  2f2366: 4618         	mov	r0, r3
  2f2368: ed9f 0b7f    	vldr	d0, [pc, #508]          @ 0x2f2568 <AvatarMenuLayer::init()+0xe78>
  2f236c: eeb0 1b47    	vmov.f64	d1, d7
  2f2370: f7fe fa80    	bl	0x2f0874 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1e8> @ imm = #-0x1b00
  2f2374: ed9d 7b38    	vldr	d7, [sp, #224]
  2f2378: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2f237c: ab24         	add	r3, sp, #0x90
  2f237e: 4618         	mov	r0, r3
  2f2380: ee18 1a10    	vmov	r1, s16
  2f2384: ee17 2a90    	vmov	r2, s15
  2f2388: f2a0 fcb2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0964
  2f238c: a926         	add	r1, sp, #0x98
  2f238e: aa22         	add	r2, sp, #0x88
  2f2390: ab24         	add	r3, sp, #0x90
  2f2392: 4608         	mov	r0, r1
  2f2394: 4611         	mov	r1, r2
  2f2396: 461a         	mov	r2, r3
  2f2398: f7fe fa5c    	bl	0x2f0854 <AvatarLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x1c8> @ imm = #-0x1b48
  2f239c: ab26         	add	r3, sp, #0x98
  2f239e: 4630         	mov	r0, r6
  2f23a0: 4619         	mov	r1, r3
  2f23a2: 47a8         	blx	r5
  2f23a4: ab06         	add	r3, sp, #0x18
  2f23a6: 4618         	mov	r0, r3
  2f23a8: f0c3 f2b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c3568
  2f23ac: ab05         	add	r3, sp, #0x14
  2f23ae: 4618         	mov	r0, r3
  2f23b0: f098 f024    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x498048
  2f23b4: 9b03         	ldr	r3, [sp, #0xc]
  2f23b6: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f23ba: 681b         	ldr	r3, [r3]
  2f23bc: 3340         	adds	r3, #0x40
  2f23be: 681b         	ldr	r3, [r3]
  2f23c0: 9a03         	ldr	r2, [sp, #0xc]
  2f23c2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2f23c6: 4610         	mov	r0, r2
  2f23c8: 991a         	ldr	r1, [sp, #0x68]
  2f23ca: 4798         	blx	r3
  2f23cc: 9b03         	ldr	r3, [sp, #0xc]
  2f23ce: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f23d2: eddd 7a1b    	vldr	s15, [sp, #108]
  2f23d6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  2f23da: ee17 2a90    	vmov	r2, s15
  2f23de: 4618         	mov	r0, r3
  2f23e0: 4611         	mov	r1, r2
  2f23e2: f2b3 fccf    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x2b399e
  2f23e6: 9b03         	ldr	r3, [sp, #0xc]
  2f23e8: 681b         	ldr	r3, [r3]
  2f23ea: 33c8         	adds	r3, #0xc8
  2f23ec: 681b         	ldr	r3, [r3]
  2f23ee: 9903         	ldr	r1, [sp, #0xc]
  2f23f0: 9a03         	ldr	r2, [sp, #0xc]
  2f23f2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  2f23f6: 4608         	mov	r0, r1
  2f23f8: 4611         	mov	r1, r2
  2f23fa: 4798         	blx	r3
  2f23fc: 9a03         	ldr	r2, [sp, #0xc]
  2f23fe: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x2f2574 <AvatarMenuLayer::init()+0xe84>
  2f2400: 58e3         	ldr	r3, [r4, r3]
  2f2402: 9336         	str	r3, [sp, #0xd8]
  2f2404: 2300         	movs	r3, #0x0
  2f2406: 9337         	str	r3, [sp, #0xdc]
  2f2408: 9b37         	ldr	r3, [sp, #0xdc]
  2f240a: 9300         	str	r3, [sp]
  2f240c: 9b36         	ldr	r3, [sp, #0xd8]
  2f240e: 9813         	ldr	r0, [sp, #0x4c]
  2f2410: 9914         	ldr	r1, [sp, #0x50]
  2f2412: f2c5 ff8b    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x2c5f16
  2f2416: 4603         	mov	r3, r0
  2f2418: 931d         	str	r3, [sp, #0x74]
  2f241a: 981d         	ldr	r0, [sp, #0x74]
  2f241c: 2100         	movs	r1, #0x0
  2f241e: f2c2 fe8d    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x2c2d1a
  2f2422: 4602         	mov	r2, r0
  2f2424: 9b03         	ldr	r3, [sp, #0xc]
  2f2426: f8c3 213c    	str.w	r2, [r3, #0x13c]
  2f242a: 9b03         	ldr	r3, [sp, #0xc]
  2f242c: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2f2430: 4618         	mov	r0, r3
  2f2432: f2a5 fd59    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2a5ab2
  2f2436: 9b03         	ldr	r3, [sp, #0xc]
  2f2438: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2f243c: 681b         	ldr	r3, [r3]
  2f243e: 334c         	adds	r3, #0x4c
  2f2440: 681d         	ldr	r5, [r3]
  2f2442: 9b03         	ldr	r3, [sp, #0xc]
  2f2444: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2f2448: 461e         	mov	r6, r3
  2f244a: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x2f2578 <AvatarMenuLayer::init()+0xe88>
  2f244c: 58e3         	ldr	r3, [r4, r3]
  2f244e: ed93 7a00    	vldr	s14, [r3]
  2f2452: eddf 7a47    	vldr	s15, [pc, #284]         @ 0x2f2570 <AvatarMenuLayer::init()+0xe80>
  2f2456: ee77 7a67    	vsub.f32	s15, s14, s15
  2f245a: ab32         	add	r3, sp, #0xc8
  2f245c: 4618         	mov	r0, r3
  2f245e: ee17 1a90    	vmov	r1, s15
  2f2462: f04f 0200    	mov.w	r2, #0x0
  2f2466: f2c4 22a0    	movt	r2, #0x42a0
  2f246a: f2a0 fc41    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2a0882
  2f246e: ab32         	add	r3, sp, #0xc8
  2f2470: 4630         	mov	r0, r6
  2f2472: 4619         	mov	r1, r3
  2f2474: 47a8         	blx	r5
  2f2476: 9b03         	ldr	r3, [sp, #0xc]
  2f2478: 681b         	ldr	r3, [r3]
  2f247a: 33c8         	adds	r3, #0xc8
  2f247c: 681b         	ldr	r3, [r3]
  2f247e: 9903         	ldr	r1, [sp, #0xc]
  2f2480: 9a03         	ldr	r2, [sp, #0xc]
  2f2482: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  2f2486: 4608         	mov	r0, r1
  2f2488: 4611         	mov	r1, r2
  2f248a: 4798         	blx	r3
  2f248c: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x2f257c <AvatarMenuLayer::init()+0xe8c>
  2f248e: 447b         	add	r3, pc
  2f2490: 4618         	mov	r0, r3
  2f2492: f2e5 fe77    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x2e5cee
  2f2496: 4602         	mov	r2, r0
  2f2498: 9b03         	ldr	r3, [sp, #0xc]
  2f249a: f8c3 210c    	str.w	r2, [r3, #0x10c]
  2f249e: 9b03         	ldr	r3, [sp, #0xc]
  2f24a0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2f24a4: 681b         	ldr	r3, [r3]
  2f24a6: 334c         	adds	r3, #0x4c
  2f24a8: 681b         	ldr	r3, [r3]
  2f24aa: 9a03         	ldr	r2, [sp, #0xc]
  2f24ac: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  2f24b0: aa20         	add	r2, sp, #0x80
  2f24b2: 4608         	mov	r0, r1
  2f24b4: 4611         	mov	r1, r2
  2f24b6: 4798         	blx	r3
  2f24b8: 9b03         	ldr	r3, [sp, #0xc]
  2f24ba: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  2f24be: 681b         	ldr	r3, [r3]
  2f24c0: f503 73d2    	add.w	r3, r3, #0x1a4
  2f24c4: 681b         	ldr	r3, [r3]
  2f24c6: 9a03         	ldr	r2, [sp, #0xc]
  2f24c8: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2f24cc: 4610         	mov	r0, r2
  2f24ce: 2123         	movs	r1, #0x23
  2f24d0: 4798         	blx	r3
  2f24d2: 9b03         	ldr	r3, [sp, #0xc]
  2f24d4: 681b         	ldr	r3, [r3]
  2f24d6: 33c8         	adds	r3, #0xc8
  2f24d8: 681b         	ldr	r3, [r3]
  2f24da: 9903         	ldr	r1, [sp, #0xc]
  2f24dc: 9a03         	ldr	r2, [sp, #0xc]
  2f24de: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  2f24e2: 4608         	mov	r0, r1
  2f24e4: 4611         	mov	r1, r2
  2f24e6: 4798         	blx	r3
  2f24e8: 2301         	movs	r3, #0x1
  2f24ea: e036         	b	0x2f255a <AvatarMenuLayer::init()+0xe6a> @ imm = #0x6c
  2f24ec: ab06         	add	r3, sp, #0x18
  2f24ee: 4618         	mov	r0, r3
  2f24f0: f0c3 f210    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c3420
  2f24f4: e7ff         	b	0x2f24f6 <AvatarMenuLayer::init()+0xe06> @ imm = #-0x2
  2f24f6: ab05         	add	r3, sp, #0x14
  2f24f8: 4618         	mov	r0, r3
  2f24fa: f097 f77f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x497efe
  2f24fe: f095 f5d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x495baa
  2f2502: ab06         	add	r3, sp, #0x18
  2f2504: 4618         	mov	r0, r3
  2f2506: f0c3 f205    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c340a
  2f250a: e7ff         	b	0x2f250c <AvatarMenuLayer::init()+0xe1c> @ imm = #-0x2
  2f250c: ab05         	add	r3, sp, #0x14
  2f250e: 4618         	mov	r0, r3
  2f2510: f097 f774    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x497ee8
  2f2514: f095 f5ca    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x495b94
  2f2518: ab06         	add	r3, sp, #0x18
  2f251a: 4618         	mov	r0, r3
  2f251c: f0c3 f1fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c33f4
  2f2520: e7ff         	b	0x2f2522 <AvatarMenuLayer::init()+0xe32> @ imm = #-0x2
  2f2522: ab05         	add	r3, sp, #0x14
  2f2524: 4618         	mov	r0, r3
  2f2526: f097 f769    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x497ed2
  2f252a: f095 f5bf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x495b7e
  2f252e: ab06         	add	r3, sp, #0x18
  2f2530: 4618         	mov	r0, r3
  2f2532: f0c3 f1ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c33de
  2f2536: e7ff         	b	0x2f2538 <AvatarMenuLayer::init()+0xe48> @ imm = #-0x2
  2f2538: ab05         	add	r3, sp, #0x14
  2f253a: 4618         	mov	r0, r3
  2f253c: f097 f75e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x497ebc
  2f2540: f095 f5b4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x495b68
  2f2544: ab06         	add	r3, sp, #0x18
  2f2546: 4618         	mov	r0, r3
  2f2548: f0c3 f1e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4c33c8
  2f254c: e7ff         	b	0x2f254e <AvatarMenuLayer::init()+0xe5e> @ imm = #-0x2
  2f254e: ab05         	add	r3, sp, #0x14
  2f2550: 4618         	mov	r0, r3
  2f2552: f097 f753    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x497ea6
  2f2556: f095 f5a9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x495b52
  2f255a: 4618         	mov	r0, r3
  2f255c: b03b         	add	sp, #0xec
  2f255e: ecbd 8b02    	vpop	{d8}
  2f2562: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x2f2563); words below are literal-pool data ---
  2f2564: f3af 8000    	nop.w
  2f2570: 0000         	movs	r0, r0
  2f2572: 4270         	rsbs	r0, r6, #0
  2f2574: d8e8         	bhi	0x2f2548 <AvatarMenuLayer::init()+0xe58> @ imm = #-0x30
  2f2576: ffff d724    	<unknown>
  2f257a: ffff 13d2    	<unknown>
  2f257e: 004d         	lsls	r5, r1, #0x1

// ==== AvatarMenuLayer::~AvatarMenuLayer
//      file offset 0x2f2580 (= ELF address; Ghidra 0x302580), 244 bytes, Thumb-2
  2f2580: b500         	push	{lr}
  2f2582: b083         	sub	sp, #0xc
  2f2584: 9001         	str	r0, [sp, #0x4]
  2f2586: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x2f266c <AvatarMenuLayer::~AvatarMenuLayer()+0xec>
  2f2588: 447b         	add	r3, pc
  2f258a: 9a01         	ldr	r2, [sp, #0x4]
  2f258c: 4938         	ldr	r1, [pc, #0xe0]         @ 0x2f2670 <AvatarMenuLayer::~AvatarMenuLayer()+0xf0>
  2f258e: 5859         	ldr	r1, [r3, r1]
  2f2590: 3108         	adds	r1, #0x8
  2f2592: 6011         	str	r1, [r2]
  2f2594: 9a01         	ldr	r2, [sp, #0x4]
  2f2596: 4936         	ldr	r1, [pc, #0xd8]         @ 0x2f2670 <AvatarMenuLayer::~AvatarMenuLayer()+0xf0>
  2f2598: 5859         	ldr	r1, [r3, r1]
  2f259a: f501 7104    	add.w	r1, r1, #0x210
  2f259e: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  2f25a2: 9a01         	ldr	r2, [sp, #0x4]
  2f25a4: 4932         	ldr	r1, [pc, #0xc8]         @ 0x2f2670 <AvatarMenuLayer::~AvatarMenuLayer()+0xf0>
  2f25a6: 5859         	ldr	r1, [r3, r1]
  2f25a8: f501 7110    	add.w	r1, r1, #0x240
  2f25ac: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  2f25b0: 9a01         	ldr	r2, [sp, #0x4]
  2f25b2: 492f         	ldr	r1, [pc, #0xbc]         @ 0x2f2670 <AvatarMenuLayer::~AvatarMenuLayer()+0xf0>
  2f25b4: 585b         	ldr	r3, [r3, r1]
  2f25b6: f503 7313    	add.w	r3, r3, #0x24c
  2f25ba: f8c2 30ec    	str.w	r3, [r2, #0xec]
  2f25be: 9b01         	ldr	r3, [sp, #0x4]
  2f25c0: 4618         	mov	r0, r3
  2f25c2: 2100         	movs	r1, #0x0
  2f25c4: f29e f840    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x29e080
  2f25c8: 9b01         	ldr	r3, [sp, #0x4]
  2f25ca: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  2f25ce: 4618         	mov	r0, r3
  2f25d0: f2a5 fc72    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a58e4
  2f25d4: 9b01         	ldr	r3, [sp, #0x4]
  2f25d6: f8d3 312c    	ldr.w	r3, [r3, #0x12c]
  2f25da: 4618         	mov	r0, r3
  2f25dc: f2a5 fc6c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a58d8
  2f25e0: 9b01         	ldr	r3, [sp, #0x4]
  2f25e2: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  2f25e6: 4618         	mov	r0, r3
  2f25e8: f2a5 fc66    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a58cc
  2f25ec: 9b01         	ldr	r3, [sp, #0x4]
  2f25ee: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  2f25f2: 4618         	mov	r0, r3
  2f25f4: f2a5 fc60    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a58c0
  2f25f8: 9b01         	ldr	r3, [sp, #0x4]
  2f25fa: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  2f25fe: 4618         	mov	r0, r3
  2f2600: f2a5 fc5a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a58b4
  2f2604: 9b01         	ldr	r3, [sp, #0x4]
  2f2606: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  2f260a: 4618         	mov	r0, r3
  2f260c: f2a5 fc54    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a58a8
  2f2610: 9b01         	ldr	r3, [sp, #0x4]
  2f2612: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  2f2616: 4618         	mov	r0, r3
  2f2618: f2a5 fc4e    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a589c
  2f261c: 9b01         	ldr	r3, [sp, #0x4]
  2f261e: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  2f2622: 4618         	mov	r0, r3
  2f2624: f2a5 fc48    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a5890
  2f2628: 9b01         	ldr	r3, [sp, #0x4]
  2f262a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  2f262e: 4618         	mov	r0, r3
  2f2630: f2a5 fc42    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a5884
  2f2634: 9b01         	ldr	r3, [sp, #0x4]
  2f2636: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  2f263a: 4618         	mov	r0, r3
  2f263c: f2a5 fc3c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a5878
  2f2640: 9b01         	ldr	r3, [sp, #0x4]
  2f2642: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  2f2646: 4618         	mov	r0, r3
  2f2648: f2a5 fc36    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2a586c
  2f264c: 9b01         	ldr	r3, [sp, #0x4]
  2f264e: 4618         	mov	r0, r3
  2f2650: f2ba fd7c    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x2baaf8
  2f2654: 2300         	movs	r3, #0x0
  2f2656: 2b00         	cmp	r3, #0x0
  2f2658: d002         	beq	0x2f2660 <AvatarMenuLayer::~AvatarMenuLayer()+0xe0> @ imm = #0x4
  2f265a: 9801         	ldr	r0, [sp, #0x4]
  2f265c: f095 f522    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x495a44
  2f2660: 9b01         	ldr	r3, [sp, #0x4]
  2f2662: 4618         	mov	r0, r3
  2f2664: b003         	add	sp, #0xc
  2f2666: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f2669); words below are literal-pool data ---
  2f266a: bf00         	nop
  2f266c: 0480         	lsls	r0, r0, #0x12
  2f266e: 0064         	lsls	r4, r4, #0x1
  2f2670: d8d0         	bhi	0x2f2614 <AvatarMenuLayer::~AvatarMenuLayer()+0x94> @ imm = #-0x60
  2f2672: ffff f1a0    	<unknown>

// ==== AvatarMenuLayer::~AvatarMenuLayer
//      file offset 0x2f2674 (= ELF address; Ghidra 0x302674), 8 bytes, Thumb-2
  2f2674: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2f2678: f7ff bf82    	b.w	0x2f2580 <AvatarMenuLayer::~AvatarMenuLayer()> @ imm = #-0xfc

// ==== AvatarMenuLayer::~AvatarMenuLayer
//      file offset 0x2f267c (= ELF address; Ghidra 0x30267c), 28 bytes, Thumb-2
  2f267c: b500         	push	{lr}
  2f267e: b083         	sub	sp, #0xc
  2f2680: 9001         	str	r0, [sp, #0x4]
  2f2682: 9801         	ldr	r0, [sp, #0x4]
  2f2684: f7ff ff7c    	bl	0x2f2580 <AvatarMenuLayer::~AvatarMenuLayer()> @ imm = #-0x108
  2f2688: 9801         	ldr	r0, [sp, #0x4]
  2f268a: f095 f50b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x495a16
  2f268e: 9b01         	ldr	r3, [sp, #0x4]
  2f2690: 4618         	mov	r0, r3
  2f2692: b003         	add	sp, #0xc
  2f2694: f85d fb04    	ldr	pc, [sp], #4

// ==== AvatarMenuLayer::~AvatarMenuLayer
//      file offset 0x2f2698 (= ELF address; Ghidra 0x302698), 8 bytes, Thumb-2
  2f2698: f1a0 00e4    	sub.w	r0, r0, #0xe4
  2f269c: f7ff bfee    	b.w	0x2f267c <AvatarMenuLayer::~AvatarMenuLayer()> @ imm = #-0x24

// ==== AvatarMenuLayer::onDA
//      file offset 0x2f26a0 (= ELF address; Ghidra 0x3026a0), 44 bytes, Thumb-2
  2f26a0: b500         	push	{lr}
  2f26a2: b083         	sub	sp, #0xc
  2f26a4: 9001         	str	r0, [sp, #0x4]
  2f26a6: 9100         	str	r1, [sp]
  2f26a8: 4a06         	ldr	r2, [pc, #0x18]         @ 0x2f26c4 <AvatarMenuLayer::onDA(cocos2d::CCObject*)+0x24>
  2f26aa: 447a         	add	r2, pc
  2f26ac: 4b06         	ldr	r3, [pc, #0x18]         @ 0x2f26c8 <AvatarMenuLayer::onDA(cocos2d::CCObject*)+0x28>
  2f26ae: 58d3         	ldr	r3, [r2, r3]
  2f26b0: 681b         	ldr	r3, [r3]
  2f26b2: 4618         	mov	r0, r3
  2f26b4: 210d         	movs	r1, #0xd
  2f26b6: f105 fb83    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x105706
  2f26ba: f139 fe9b    	bl	0x42c3f4 <ApplicationInterface::openDoodleArmyAppLink()> @ imm = #0x139d36
  2f26be: b003         	add	sp, #0xc
  2f26c0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2f26c3); words below are literal-pool data ---
  2f26c4: 035e         	lsls	r6, r3, #0xd
  2f26c6: 0064         	lsls	r4, r4, #0x1
  2f26c8: d730         	bvc	0x2f272c <AvatarMenuLayer::onBack(cocos2d::CCObject*)+0x60> @ imm = #0x60
  2f26ca: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== AvatarMenuLayer::onBack
//      file offset 0x2f26cc (= ELF address; Ghidra 0x3026cc), 100 bytes, Thumb-2
  2f26cc: b530         	push	{r4, r5, lr}
  2f26ce: b083         	sub	sp, #0xc
  2f26d0: 9001         	str	r0, [sp, #0x4]
  2f26d2: 9100         	str	r1, [sp]
  2f26d4: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2f2724 <AvatarMenuLayer::onBack(cocos2d::CCObject*)+0x58>
  2f26d6: 447a         	add	r2, pc
  2f26d8: 9b01         	ldr	r3, [sp, #0x4]
  2f26da: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2f26de: 2b00         	cmp	r3, #0x0
  2f26e0: d000         	beq	0x2f26e4 <AvatarMenuLayer::onBack(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2f26e2: e01c         	b	0x2f271e <AvatarMenuLayer::onBack(cocos2d::CCObject*)+0x52> @ imm = #0x38
  2f26e4: 9b01         	ldr	r3, [sp, #0x4]
  2f26e6: 2101         	movs	r1, #0x1
  2f26e8: f883 1108    	strb.w	r1, [r3, #0x108]
  2f26ec: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2f2728 <AvatarMenuLayer::onBack(cocos2d::CCObject*)+0x5c>
  2f26ee: 58d3         	ldr	r3, [r2, r3]
  2f26f0: 681b         	ldr	r3, [r3]
  2f26f2: 4618         	mov	r0, r3
  2f26f4: 210d         	movs	r1, #0xd
  2f26f6: f105 fb63    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1056c6
  2f26fa: f2a8 ff3b    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2a8e76
  2f26fe: 4604         	mov	r4, r0
  2f2700: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f272c <AvatarMenuLayer::onBack(cocos2d::CCObject*)+0x60>
  2f2702: 447b         	add	r3, pc
  2f2704: 681d         	ldr	r5, [r3]
  2f2706: f077 f9e5    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x773ca
  2f270a: 4603         	mov	r3, r0
  2f270c: 4628         	mov	r0, r5
  2f270e: 4619         	mov	r1, r3
  2f2710: f2be fdfa    	bl	0x5b1308 <cocos2d::CCTransitionSlideInL::create(float, cocos2d::CCScene*)> @ imm = #0x2bebf4
  2f2714: 4603         	mov	r3, r0
  2f2716: 4620         	mov	r0, r4
  2f2718: 4619         	mov	r1, r3
  2f271a: f2a9 fe1f    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2a9c3e
  2f271e: b003         	add	sp, #0xc
  2f2720: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f2721); words below are literal-pool data ---
  2f2722: bf00         	nop
  2f2724: 0332         	lsls	r2, r6, #0xc
  2f2726: 0064         	lsls	r4, r4, #0x1
  2f2728: d730         	bvc	0x2f278c <AvatarMenuLayer::onStore(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2f272a: ffff 0b1e    	<unknown>
  2f272e: 0064         	lsls	r4, r4, #0x1

// ==== AvatarMenuLayer::onStore
//      file offset 0x2f2730 (= ELF address; Ghidra 0x302730), 100 bytes, Thumb-2
  2f2730: b530         	push	{r4, r5, lr}
  2f2732: b083         	sub	sp, #0xc
  2f2734: 9001         	str	r0, [sp, #0x4]
  2f2736: 9100         	str	r1, [sp]
  2f2738: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2f2788 <AvatarMenuLayer::onStore(cocos2d::CCObject*)+0x58>
  2f273a: 447a         	add	r2, pc
  2f273c: 9b01         	ldr	r3, [sp, #0x4]
  2f273e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2f2742: 2b00         	cmp	r3, #0x0
  2f2744: d000         	beq	0x2f2748 <AvatarMenuLayer::onStore(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2f2746: e01c         	b	0x2f2782 <AvatarMenuLayer::onStore(cocos2d::CCObject*)+0x52> @ imm = #0x38
  2f2748: 9b01         	ldr	r3, [sp, #0x4]
  2f274a: 2101         	movs	r1, #0x1
  2f274c: f883 1108    	strb.w	r1, [r3, #0x108]
  2f2750: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2f278c <AvatarMenuLayer::onStore(cocos2d::CCObject*)+0x5c>
  2f2752: 58d3         	ldr	r3, [r2, r3]
  2f2754: 681b         	ldr	r3, [r3]
  2f2756: 4618         	mov	r0, r3
  2f2758: 210d         	movs	r1, #0xd
  2f275a: f105 fb31    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x105662
  2f275e: f2a8 ff09    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2a8e12
  2f2762: 4604         	mov	r4, r0
  2f2764: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f2790 <AvatarMenuLayer::onStore(cocos2d::CCObject*)+0x60>
  2f2766: 447b         	add	r3, pc
  2f2768: 681d         	ldr	r5, [r3]
  2f276a: f10d fe09    	bl	0x400380 <StoreLayer::scene()> @ imm = #0x10dc12
  2f276e: 4603         	mov	r3, r0
  2f2770: 4628         	mov	r0, r5
  2f2772: 4619         	mov	r1, r3
  2f2774: f2be fe58    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2becb0
  2f2778: 4603         	mov	r3, r0
  2f277a: 4620         	mov	r0, r4
  2f277c: 4619         	mov	r1, r3
  2f277e: f2a9 fded    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2a9bda
  2f2782: b003         	add	sp, #0xc
  2f2784: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f2785); words below are literal-pool data ---
  2f2786: bf00         	nop
  2f2788: 02ce         	lsls	r6, r1, #0xb
  2f278a: 0064         	lsls	r4, r4, #0x1
  2f278c: d730         	bvc	0x2f27f0 <AvatarMenuLayer::onSkin(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2f278e: ffff 0aba    	<unknown>
  2f2792: 0064         	lsls	r4, r4, #0x1

// ==== AvatarMenuLayer::onSkin
//      file offset 0x2f2794 (= ELF address; Ghidra 0x302794), 100 bytes, Thumb-2
  2f2794: b530         	push	{r4, r5, lr}
  2f2796: b083         	sub	sp, #0xc
  2f2798: 9001         	str	r0, [sp, #0x4]
  2f279a: 9100         	str	r1, [sp]
  2f279c: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2f27ec <AvatarMenuLayer::onSkin(cocos2d::CCObject*)+0x58>
  2f279e: 447a         	add	r2, pc
  2f27a0: 9b01         	ldr	r3, [sp, #0x4]
  2f27a2: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2f27a6: 2b00         	cmp	r3, #0x0
  2f27a8: d000         	beq	0x2f27ac <AvatarMenuLayer::onSkin(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2f27aa: e01c         	b	0x2f27e6 <AvatarMenuLayer::onSkin(cocos2d::CCObject*)+0x52> @ imm = #0x38
  2f27ac: 9b01         	ldr	r3, [sp, #0x4]
  2f27ae: 2101         	movs	r1, #0x1
  2f27b0: f883 1108    	strb.w	r1, [r3, #0x108]
  2f27b4: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2f27f0 <AvatarMenuLayer::onSkin(cocos2d::CCObject*)+0x5c>
  2f27b6: 58d3         	ldr	r3, [r2, r3]
  2f27b8: 681b         	ldr	r3, [r3]
  2f27ba: 4618         	mov	r0, r3
  2f27bc: 210d         	movs	r1, #0xd
  2f27be: f105 faff    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x1055fe
  2f27c2: f2a8 fed7    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2a8dae
  2f27c6: 4604         	mov	r4, r0
  2f27c8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f27f4 <AvatarMenuLayer::onSkin(cocos2d::CCObject*)+0x60>
  2f27ca: 447b         	add	r3, pc
  2f27cc: 681d         	ldr	r5, [r3]
  2f27ce: f7fb fae9    	bl	0x2edda4 <AvatarLayer::scene()> @ imm = #-0x4a2e
  2f27d2: 4603         	mov	r3, r0
  2f27d4: 4628         	mov	r0, r5
  2f27d6: 4619         	mov	r1, r3
  2f27d8: f2be fe26    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2bec4c
  2f27dc: 4603         	mov	r3, r0
  2f27de: 4620         	mov	r0, r4
  2f27e0: 4619         	mov	r1, r3
  2f27e2: f2a9 fdbb    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2a9b76
  2f27e6: b003         	add	sp, #0xc
  2f27e8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f27e9); words below are literal-pool data ---
  2f27ea: bf00         	nop
  2f27ec: 026a         	lsls	r2, r5, #0x9
  2f27ee: 0064         	lsls	r4, r4, #0x1
  2f27f0: d730         	bvc	0x2f2854 <AvatarMenuLayer::onControls(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2f27f2: ffff 0a56    	<unknown>
  2f27f6: 0064         	lsls	r4, r4, #0x1

// ==== AvatarMenuLayer::onControls
//      file offset 0x2f27f8 (= ELF address; Ghidra 0x3027f8), 100 bytes, Thumb-2
  2f27f8: b530         	push	{r4, r5, lr}
  2f27fa: b083         	sub	sp, #0xc
  2f27fc: 9001         	str	r0, [sp, #0x4]
  2f27fe: 9100         	str	r1, [sp]
  2f2800: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2f2850 <AvatarMenuLayer::onControls(cocos2d::CCObject*)+0x58>
  2f2802: 447a         	add	r2, pc
  2f2804: 9b01         	ldr	r3, [sp, #0x4]
  2f2806: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2f280a: 2b00         	cmp	r3, #0x0
  2f280c: d000         	beq	0x2f2810 <AvatarMenuLayer::onControls(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2f280e: e01c         	b	0x2f284a <AvatarMenuLayer::onControls(cocos2d::CCObject*)+0x52> @ imm = #0x38
  2f2810: 9b01         	ldr	r3, [sp, #0x4]
  2f2812: 2101         	movs	r1, #0x1
  2f2814: f883 1108    	strb.w	r1, [r3, #0x108]
  2f2818: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2f2854 <AvatarMenuLayer::onControls(cocos2d::CCObject*)+0x5c>
  2f281a: 58d3         	ldr	r3, [r2, r3]
  2f281c: 681b         	ldr	r3, [r3]
  2f281e: 4618         	mov	r0, r3
  2f2820: 210d         	movs	r1, #0xd
  2f2822: f105 facd    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x10559a
  2f2826: f2a8 fea5    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2a8d4a
  2f282a: 4604         	mov	r4, r0
  2f282c: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f2858 <AvatarMenuLayer::onControls(cocos2d::CCObject*)+0x60>
  2f282e: 447b         	add	r3, pc
  2f2830: 681d         	ldr	r5, [r3]
  2f2832: f013 fdff    	bl	0x306434 <ControlsLayer::scene()> @ imm = #0x13bfe
  2f2836: 4603         	mov	r3, r0
  2f2838: 4628         	mov	r0, r5
  2f283a: 4619         	mov	r1, r3
  2f283c: f2be fdf4    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2bebe8
  2f2840: 4603         	mov	r3, r0
  2f2842: 4620         	mov	r0, r4
  2f2844: 4619         	mov	r1, r3
  2f2846: f2a9 fd89    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2a9b12
  2f284a: b003         	add	sp, #0xc
  2f284c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f284d); words below are literal-pool data ---
  2f284e: bf00         	nop
  2f2850: 0206         	lsls	r6, r0, #0x8
  2f2852: 0064         	lsls	r4, r4, #0x1
  2f2854: d730         	bvc	0x2f28b8 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  2f2856: ffff 09f2    	<unknown>
  2f285a: 0064         	lsls	r4, r4, #0x1

// ==== AvatarMenuLayer::onConfig
//      file offset 0x2f285c (= ELF address; Ghidra 0x30285c), 100 bytes, Thumb-2
  2f285c: b530         	push	{r4, r5, lr}
  2f285e: b083         	sub	sp, #0xc
  2f2860: 9001         	str	r0, [sp, #0x4]
  2f2862: 9100         	str	r1, [sp]
  2f2864: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x2f28b4 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x58>
  2f2866: 447a         	add	r2, pc
  2f2868: 9b01         	ldr	r3, [sp, #0x4]
  2f286a: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2f286e: 2b00         	cmp	r3, #0x0
  2f2870: d000         	beq	0x2f2874 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x18> @ imm = #0x0
  2f2872: e01c         	b	0x2f28ae <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x52> @ imm = #0x38
  2f2874: 9b01         	ldr	r3, [sp, #0x4]
  2f2876: 2101         	movs	r1, #0x1
  2f2878: f883 1108    	strb.w	r1, [r3, #0x108]
  2f287c: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x2f28b8 <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x5c>
  2f287e: 58d3         	ldr	r3, [r2, r3]
  2f2880: 681b         	ldr	r3, [r3]
  2f2882: 4618         	mov	r0, r3
  2f2884: 210d         	movs	r1, #0xd
  2f2886: f105 fa9b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x105536
  2f288a: f2a8 fe73    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x2a8ce6
  2f288e: 4604         	mov	r4, r0
  2f2890: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x2f28bc <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0x60>
  2f2892: 447b         	add	r3, pc
  2f2894: 681d         	ldr	r5, [r3]
  2f2896: f00f fa89    	bl	0x301dac <ConfigLayer::scene()> @ imm = #0xf512
  2f289a: 4603         	mov	r3, r0
  2f289c: 4628         	mov	r0, r5
  2f289e: 4619         	mov	r1, r3
  2f28a0: f2be fdc2    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x2beb84
  2f28a4: 4603         	mov	r3, r0
  2f28a6: 4620         	mov	r0, r4
  2f28a8: 4619         	mov	r1, r3
  2f28aa: f2a9 fd57    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x2a9aae
  2f28ae: b003         	add	sp, #0xc
  2f28b0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x2f28b1); words below are literal-pool data ---
  2f28b2: bf00         	nop
  2f28b4: 01a2         	lsls	r2, r4, #0x6
  2f28b6: 0064         	lsls	r4, r4, #0x1
  2f28b8: d730         	bvc	0x2f291c <AvatarMenuLayer::onConfig(cocos2d::CCObject*)+0xc0> @ imm = #0x60
  2f28ba: ffff 098e    	<unknown>
  2f28be: 0064         	lsls	r4, r4, #0x1
