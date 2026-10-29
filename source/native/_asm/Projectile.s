// Projectile: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 27 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Projectile.cpp

// ==== Projectile::Projectile
//      file offset 0x3b17cc (= ELF address; Ghidra 0x3c17cc), 428 bytes, Thumb-2
  3b17cc: b530         	push	{r4, r5, lr}
  3b17ce: b085         	sub	sp, #0x14
  3b17d0: 9001         	str	r0, [sp, #0x4]
  3b17d2: 9100         	str	r1, [sp]
  3b17d4: 4c64         	ldr	r4, [pc, #0x190]        @ 0x3b1968 <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x19c>
  3b17d6: 447c         	add	r4, pc
  3b17d8: 9b01         	ldr	r3, [sp, #0x4]
  3b17da: 4618         	mov	r0, r3
  3b17dc: f1e6 fac6    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x1e658c
  3b17e0: 9b01         	ldr	r3, [sp, #0x4]
  3b17e2: 4a62         	ldr	r2, [pc, #0x188]        @ 0x3b196c <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x1a0>
  3b17e4: 58a2         	ldr	r2, [r4, r2]
  3b17e6: 3208         	adds	r2, #0x8
  3b17e8: 601a         	str	r2, [r3]
  3b17ea: 9b01         	ldr	r3, [sp, #0x4]
  3b17ec: 3330         	adds	r3, #0x30
  3b17ee: 4618         	mov	r0, r3
  3b17f0: f003 f4de    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x4039bc
  3b17f4: 9b01         	ldr	r3, [sp, #0x4]
  3b17f6: 3334         	adds	r3, #0x34
  3b17f8: 4618         	mov	r0, r3
  3b17fa: f003 f4d9    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x4039b2
  3b17fe: 9b00         	ldr	r3, [sp]
  3b1800: 681b         	ldr	r3, [r3]
  3b1802: f503 73ce    	add.w	r3, r3, #0x19c
  3b1806: 681b         	ldr	r3, [r3]
  3b1808: 9800         	ldr	r0, [sp]
  3b180a: 4798         	blx	r3
  3b180c: 4603         	mov	r3, r0
  3b180e: 4618         	mov	r0, r3
  3b1810: f226 fc3a    	bl	0x5d8088 <cocos2d::CCSprite::createWithTexture(cocos2d::CCTexture2D*)> @ imm = #0x226874
  3b1814: 4602         	mov	r2, r0
  3b1816: 9b01         	ldr	r3, [sp, #0x4]
  3b1818: 615a         	str	r2, [r3, #0x14]
  3b181a: 9b01         	ldr	r3, [sp, #0x4]
  3b181c: 695b         	ldr	r3, [r3, #0x14]
  3b181e: 4618         	mov	r0, r3
  3b1820: f1e6 fb62    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1e66c4
  3b1824: 9b00         	ldr	r3, [sp]
  3b1826: 681b         	ldr	r3, [r3]
  3b1828: 33c8         	adds	r3, #0xc8
  3b182a: 681b         	ldr	r3, [r3]
  3b182c: 9a01         	ldr	r2, [sp, #0x4]
  3b182e: 6952         	ldr	r2, [r2, #0x14]
  3b1830: 9800         	ldr	r0, [sp]
  3b1832: 4611         	mov	r1, r2
  3b1834: 4798         	blx	r3
  3b1836: 9b01         	ldr	r3, [sp, #0x4]
  3b1838: 695b         	ldr	r3, [r3, #0x14]
  3b183a: 681b         	ldr	r3, [r3]
  3b183c: 337c         	adds	r3, #0x7c
  3b183e: 681c         	ldr	r4, [r3]
  3b1840: 9b01         	ldr	r3, [sp, #0x4]
  3b1842: 695d         	ldr	r5, [r3, #0x14]
  3b1844: ab02         	add	r3, sp, #0x8
  3b1846: 4618         	mov	r0, r3
  3b1848: f246 6166    	movw	r1, #0x6666
  3b184c: f6c3 7166    	movt	r1, #0x3f66
  3b1850: f04f 527c    	mov.w	r2, #0x3f000000
  3b1854: f1e1 fa4c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e1498
  3b1858: ab02         	add	r3, sp, #0x8
  3b185a: 4628         	mov	r0, r5
  3b185c: 4619         	mov	r1, r3
  3b185e: 47a0         	blx	r4
  3b1860: 9901         	ldr	r1, [sp, #0x4]
  3b1862: f04f 0200    	mov.w	r2, #0x0
  3b1866: f04f 0300    	mov.w	r3, #0x0
  3b186a: e9c1 2314    	strd	r2, r3, [r1, #80]
  3b186e: 9901         	ldr	r1, [sp, #0x4]
  3b1870: f04f 0200    	mov.w	r2, #0x0
  3b1874: f04f 0300    	mov.w	r3, #0x0
  3b1878: e9c1 2316    	strd	r2, r3, [r1, #88]
  3b187c: 9901         	ldr	r1, [sp, #0x4]
  3b187e: f04f 0200    	mov.w	r2, #0x0
  3b1882: f04f 0300    	mov.w	r3, #0x0
  3b1886: e9c1 2318    	strd	r2, r3, [r1, #96]
  3b188a: 9901         	ldr	r1, [sp, #0x4]
  3b188c: f04f 0200    	mov.w	r2, #0x0
  3b1890: f04f 0300    	mov.w	r3, #0x0
  3b1894: e9c1 231a    	strd	r2, r3, [r1, #104]
  3b1898: 9b01         	ldr	r3, [sp, #0x4]
  3b189a: 2200         	movs	r2, #0x0
  3b189c: 671a         	str	r2, [r3, #0x70]
  3b189e: 9b01         	ldr	r3, [sp, #0x4]
  3b18a0: f04f 0200    	mov.w	r2, #0x0
  3b18a4: f8c3 2094    	str.w	r2, [r3, #0x94]
  3b18a8: 9b01         	ldr	r3, [sp, #0x4]
  3b18aa: 3330         	adds	r3, #0x30
  3b18ac: 4618         	mov	r0, r3
  3b18ae: 4b30         	ldr	r3, [pc, #0xc0]         @ 0x3b1970 <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x1a4>
  3b18b0: 447b         	add	r3, pc
  3b18b2: 4619         	mov	r1, r3
  3b18b4: f004 f2dc    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4045b8
  3b18b8: 9b01         	ldr	r3, [sp, #0x4]
  3b18ba: 3334         	adds	r3, #0x34
  3b18bc: 4618         	mov	r0, r3
  3b18be: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3b1974 <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x1a8>
  3b18c0: 447b         	add	r3, pc
  3b18c2: 4619         	mov	r1, r3
  3b18c4: f004 f2d4    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4045a8
  3b18c8: 9b01         	ldr	r3, [sp, #0x4]
  3b18ca: 2200         	movs	r2, #0x0
  3b18cc: 761a         	strb	r2, [r3, #0x18]
  3b18ce: 9901         	ldr	r1, [sp, #0x4]
  3b18d0: f04f 0200    	mov.w	r2, #0x0
  3b18d4: f04f 0300    	mov.w	r3, #0x0
  3b18d8: e9c1 2308    	strd	r2, r3, [r1, #32]
  3b18dc: 9901         	ldr	r1, [sp, #0x4]
  3b18de: f04f 0200    	mov.w	r2, #0x0
  3b18e2: f04f 0300    	mov.w	r3, #0x0
  3b18e6: e9c1 230a    	strd	r2, r3, [r1, #40]
  3b18ea: 9901         	ldr	r1, [sp, #0x4]
  3b18ec: f04f 0200    	mov.w	r2, #0x0
  3b18f0: f04f 0300    	mov.w	r3, #0x0
  3b18f4: e9c1 230e    	strd	r2, r3, [r1, #56]
  3b18f8: 9901         	ldr	r1, [sp, #0x4]
  3b18fa: f04f 0200    	mov.w	r2, #0x0
  3b18fe: f04f 0300    	mov.w	r3, #0x0
  3b1902: e9c1 2310    	strd	r2, r3, [r1, #64]
  3b1906: 9b01         	ldr	r3, [sp, #0x4]
  3b1908: f04f 0200    	mov.w	r2, #0x0
  3b190c: 649a         	str	r2, [r3, #0x48]
  3b190e: 9b01         	ldr	r3, [sp, #0x4]
  3b1910: 2200         	movs	r2, #0x0
  3b1912: f883 204c    	strb.w	r2, [r3, #0x4c]
  3b1916: 9b01         	ldr	r3, [sp, #0x4]
  3b1918: f240 1243    	movw	r2, #0x143
  3b191c: 675a         	str	r2, [r3, #0x74]
  3b191e: 9901         	ldr	r1, [sp, #0x4]
  3b1920: f04f 0200    	mov.w	r2, #0x0
  3b1924: f04f 0300    	mov.w	r3, #0x0
  3b1928: e9c1 231e    	strd	r2, r3, [r1, #120]
  3b192c: 9901         	ldr	r1, [sp, #0x4]
  3b192e: f04f 0200    	mov.w	r2, #0x0
  3b1932: f04f 0300    	mov.w	r3, #0x0
  3b1936: e9c1 2320    	strd	r2, r3, [r1, #128]
  3b193a: 9b01         	ldr	r3, [sp, #0x4]
  3b193c: e011         	b	0x3b1962 <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x196> @ imm = #0x22
  3b193e: 9b01         	ldr	r3, [sp, #0x4]
  3b1940: 3334         	adds	r3, #0x34
  3b1942: 4618         	mov	r0, r3
  3b1944: f003 f7e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x403fcc
  3b1948: e7ff         	b	0x3b194a <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x17e> @ imm = #-0x2
  3b194a: 9b01         	ldr	r3, [sp, #0x4]
  3b194c: 3330         	adds	r3, #0x30
  3b194e: 4618         	mov	r0, r3
  3b1950: f003 f7e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x403fc0
  3b1954: e7ff         	b	0x3b1956 <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x18a> @ imm = #-0x2
  3b1956: 9b01         	ldr	r3, [sp, #0x4]
  3b1958: 4618         	mov	r0, r3
  3b195a: f1e6 fa39    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1e6472
  3b195e: f3d6 fba5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3d674a
  3b1962: 4618         	mov	r0, r3
  3b1964: b005         	add	sp, #0x14
  3b1966: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3b1967); words below are literal-pool data ---
  3b1968: 1232         	asrs	r2, r6, #0x8
  3b196a: 0058         	lsls	r0, r3, #0x1
  3b196c: ddf0         	ble	0x3b1950 <Projectile::Projectile(cocos2d::CCSpriteBatchNode*)+0x184> @ imm = #-0x20
  3b196e: ffff 23e4    	<unknown>
  3b1972: 0042         	lsls	r2, r0, #0x1
  3b1974: 23d4         	movs	r3, #0xd4
  3b1976: 0042         	lsls	r2, r0, #0x1

// ==== Projectile::~Projectile
//      file offset 0x3b1978 (= ELF address; Ghidra 0x3c1978), 88 bytes, Thumb-2
  3b1978: b500         	push	{lr}
  3b197a: b083         	sub	sp, #0xc
  3b197c: 9001         	str	r0, [sp, #0x4]
  3b197e: 4912         	ldr	r1, [pc, #0x48]         @ 0x3b19c8 <Projectile::~Projectile()+0x50>
  3b1980: 4479         	add	r1, pc
  3b1982: 9b01         	ldr	r3, [sp, #0x4]
  3b1984: 4a11         	ldr	r2, [pc, #0x44]         @ 0x3b19cc <Projectile::~Projectile()+0x54>
  3b1986: 588a         	ldr	r2, [r1, r2]
  3b1988: 3208         	adds	r2, #0x8
  3b198a: 601a         	str	r2, [r3]
  3b198c: 9b01         	ldr	r3, [sp, #0x4]
  3b198e: 695b         	ldr	r3, [r3, #0x14]
  3b1990: 4618         	mov	r0, r3
  3b1992: f1e6 fa91    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1e6522
  3b1996: 9b01         	ldr	r3, [sp, #0x4]
  3b1998: 3334         	adds	r3, #0x34
  3b199a: 4618         	mov	r0, r3
  3b199c: f003 f7ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x403f74
  3b19a0: 9b01         	ldr	r3, [sp, #0x4]
  3b19a2: 3330         	adds	r3, #0x30
  3b19a4: 4618         	mov	r0, r3
  3b19a6: f003 f7b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x403f6a
  3b19aa: 9b01         	ldr	r3, [sp, #0x4]
  3b19ac: 4618         	mov	r0, r3
  3b19ae: f1e6 fa0f    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x1e641e
  3b19b2: 2300         	movs	r3, #0x0
  3b19b4: 2b00         	cmp	r3, #0x0
  3b19b6: d002         	beq	0x3b19be <Projectile::~Projectile()+0x46> @ imm = #0x4
  3b19b8: 9801         	ldr	r0, [sp, #0x4]
  3b19ba: f3d6 fb73    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d66e6
  3b19be: 9b01         	ldr	r3, [sp, #0x4]
  3b19c0: 4618         	mov	r0, r3
  3b19c2: b003         	add	sp, #0xc
  3b19c4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3b19c7); words below are literal-pool data ---
  3b19c8: 1088         	asrs	r0, r1, #0x2
  3b19ca: 0058         	lsls	r0, r3, #0x1
  3b19cc: ddf0         	ble	0x3b19b0 <Projectile::~Projectile()+0x38> @ imm = #-0x20
  3b19ce: ffff b500    	<unknown>

// ==== Projectile::~Projectile
//      file offset 0x3b19d0 (= ELF address; Ghidra 0x3c19d0), 28 bytes, Thumb-2
  3b19d0: b500         	push	{lr}
  3b19d2: b083         	sub	sp, #0xc
  3b19d4: 9001         	str	r0, [sp, #0x4]
  3b19d6: 9801         	ldr	r0, [sp, #0x4]
  3b19d8: f7ff ffce    	bl	0x3b1978 <Projectile::~Projectile()> @ imm = #-0x64
  3b19dc: 9801         	ldr	r0, [sp, #0x4]
  3b19de: f3d6 fb61    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3d66c2
  3b19e2: 9b01         	ldr	r3, [sp, #0x4]
  3b19e4: 4618         	mov	r0, r3
  3b19e6: b003         	add	sp, #0xc
  3b19e8: f85d fb04    	ldr	pc, [sp], #4

// ==== Projectile::reset
//      file offset 0x3b19ec (= ELF address; Ghidra 0x3c19ec), 14 bytes, Thumb-2
  3b19ec: b084         	sub	sp, #0x10
  3b19ee: 9003         	str	r0, [sp, #0xc]
  3b19f0: 9102         	str	r1, [sp, #0x8]
  3b19f2: 9201         	str	r2, [sp, #0x4]
  3b19f4: 9300         	str	r3, [sp]
  3b19f6: b004         	add	sp, #0x10
  3b19f8: 4770         	bx	lr

// ==== Projectile::updateStep
//      file offset 0x3b19fc (= ELF address; Ghidra 0x3c19fc), 1576 bytes, Thumb-2
  3b19fc: b530         	push	{r4, r5, lr}
  3b19fe: ed2d 8b02    	vpush	{d8}
  3b1a02: b08b         	sub	sp, #0x2c
  3b1a04: 9005         	str	r0, [sp, #0x14]
  3b1a06: 9104         	str	r1, [sp, #0x10]
  3b1a08: 9b05         	ldr	r3, [sp, #0x14]
  3b1a0a: 695b         	ldr	r3, [r3, #0x14]
  3b1a0c: 681b         	ldr	r3, [r3]
  3b1a0e: 3390         	adds	r3, #0x90
  3b1a10: 681b         	ldr	r3, [r3]
  3b1a12: 9a05         	ldr	r2, [sp, #0x14]
  3b1a14: 6951         	ldr	r1, [r2, #0x14]
  3b1a16: 9a05         	ldr	r2, [sp, #0x14]
  3b1a18: 7e12         	ldrb	r2, [r2, #0x18]
  3b1a1a: 4608         	mov	r0, r1
  3b1a1c: 4611         	mov	r1, r2
  3b1a1e: 4798         	blx	r3
  3b1a20: 9b05         	ldr	r3, [sp, #0x14]
  3b1a22: 7e1b         	ldrb	r3, [r3, #0x18]
  3b1a24: 2b00         	cmp	r3, #0x0
  3b1a26: f000 82f9    	beq.w	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x5f2
  3b1a2a: 9b05         	ldr	r3, [sp, #0x14]
  3b1a2c: 695b         	ldr	r3, [r3, #0x14]
  3b1a2e: 681b         	ldr	r3, [r3]
  3b1a30: 3350         	adds	r3, #0x50
  3b1a32: 681b         	ldr	r3, [r3]
  3b1a34: 9a05         	ldr	r2, [sp, #0x14]
  3b1a36: 6952         	ldr	r2, [r2, #0x14]
  3b1a38: 4610         	mov	r0, r2
  3b1a3a: 4798         	blx	r3
  3b1a3c: 4603         	mov	r3, r0
  3b1a3e: edd3 7a00    	vldr	s15, [r3]
  3b1a42: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b1a46: 9b05         	ldr	r3, [sp, #0x14]
  3b1a48: 695b         	ldr	r3, [r3, #0x14]
  3b1a4a: 681b         	ldr	r3, [r3]
  3b1a4c: 3350         	adds	r3, #0x50
  3b1a4e: 681b         	ldr	r3, [r3]
  3b1a50: 9a05         	ldr	r2, [sp, #0x14]
  3b1a52: 6952         	ldr	r2, [r2, #0x14]
  3b1a54: 4610         	mov	r0, r2
  3b1a56: 4798         	blx	r3
  3b1a58: 4603         	mov	r3, r0
  3b1a5a: edd3 7a01    	vldr	s15, [r3, #4]
  3b1a5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b1a62: 9c05         	ldr	r4, [sp, #0x14]
  3b1a64: 466b         	mov	r3, sp
  3b1a66: 4618         	mov	r0, r3
  3b1a68: eeb0 0b48    	vmov.f64	d0, d8
  3b1a6c: eeb0 1b47    	vmov.f64	d1, d7
  3b1a70: f7fe ffec    	bl	0x3b0a4c <PostGameScreen::playerQuitGame()+0x2f8> @ imm = #-0x1028
  3b1a74: 3450         	adds	r4, #0x50
  3b1a76: 466b         	mov	r3, sp
  3b1a78: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b1a7a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b1a7e: 9b05         	ldr	r3, [sp, #0x14]
  3b1a80: ed93 7b18    	vldr	d7, [r3, #96]
  3b1a84: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3b1a88: 9b05         	ldr	r3, [sp, #0x14]
  3b1a8a: ed93 7b1a    	vldr	d7, [r3, #104]
  3b1a8e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b1a92: ab08         	add	r3, sp, #0x20
  3b1a94: 4618         	mov	r0, r3
  3b1a96: ee16 1a90    	vmov	r1, s13
  3b1a9a: ee17 2a90    	vmov	r2, s15
  3b1a9e: f1e1 f927    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e124e
  3b1aa2: 9b05         	ldr	r3, [sp, #0x14]
  3b1aa4: 695b         	ldr	r3, [r3, #0x14]
  3b1aa6: 681b         	ldr	r3, [r3]
  3b1aa8: 3350         	adds	r3, #0x50
  3b1aaa: 681b         	ldr	r3, [r3]
  3b1aac: 9a05         	ldr	r2, [sp, #0x14]
  3b1aae: 6952         	ldr	r2, [r2, #0x14]
  3b1ab0: 4610         	mov	r0, r2
  3b1ab2: 4798         	blx	r3
  3b1ab4: 4603         	mov	r3, r0
  3b1ab6: aa08         	add	r2, sp, #0x20
  3b1ab8: 4610         	mov	r0, r2
  3b1aba: 4619         	mov	r1, r3
  3b1abc: f22f fe44    	bl	0x5e1748 <cocos2d::ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&)> @ imm = #0x22fc88
  3b1ac0: 4602         	mov	r2, r0
  3b1ac2: 9b05         	ldr	r3, [sp, #0x14]
  3b1ac4: f8c3 2094    	str.w	r2, [r3, #0x94]
  3b1ac8: 9b05         	ldr	r3, [sp, #0x14]
  3b1aca: 6f1b         	ldr	r3, [r3, #0x70]
  3b1acc: ee06 3a90    	vmov	s13, r3
  3b1ad0: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3b1ad4: 9b05         	ldr	r3, [sp, #0x14]
  3b1ad6: edd3 7a25    	vldr	s15, [r3, #148]
  3b1ada: ee77 7a67    	vsub.f32	s15, s14, s15
  3b1ade: edcd 7a07    	vstr	s15, [sp, #28]
  3b1ae2: 9b05         	ldr	r3, [sp, #0x14]
  3b1ae4: ed93 7a25    	vldr	s14, [r3, #148]
  3b1ae8: 9b05         	ldr	r3, [sp, #0x14]
  3b1aea: 6f1b         	ldr	r3, [r3, #0x70]
  3b1aec: ee06 3a90    	vmov	s13, r3
  3b1af0: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3b1af4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1af8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1afc: dd07         	ble	0x3b1b0e <Projectile::updateStep(float)+0x112> @ imm = #0xe
  3b1afe: 9b05         	ldr	r3, [sp, #0x14]
  3b1b00: 681b         	ldr	r3, [r3]
  3b1b02: 3328         	adds	r3, #0x28
  3b1b04: 681b         	ldr	r3, [r3]
  3b1b06: 9805         	ldr	r0, [sp, #0x14]
  3b1b08: 2100         	movs	r1, #0x0
  3b1b0a: 4798         	blx	r3
  3b1b0c: e033         	b	0x3b1b76 <Projectile::updateStep(float)+0x17a> @ imm = #0x66
  3b1b0e: ed9d 7a07    	vldr	s14, [sp, #28]
  3b1b12: eddf 7ab3    	vldr	s15, [pc, #716]         @ 0x3b1de0 <Projectile::updateStep(float)+0x3e4>
  3b1b16: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1b1a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1b1e: d52a         	bpl	0x3b1b76 <Projectile::updateStep(float)+0x17a> @ imm = #0x54
  3b1b20: 9b05         	ldr	r3, [sp, #0x14]
  3b1b22: 695b         	ldr	r3, [r3, #0x14]
  3b1b24: 681b         	ldr	r3, [r3]
  3b1b26: f503 73d2    	add.w	r3, r3, #0x1a4
  3b1b2a: 681a         	ldr	r2, [r3]
  3b1b2c: 9b05         	ldr	r3, [sp, #0x14]
  3b1b2e: 6959         	ldr	r1, [r3, #0x14]
  3b1b30: ed9d 7a07    	vldr	s14, [sp, #28]
  3b1b34: eddf 7aaa    	vldr	s15, [pc, #680]         @ 0x3b1de0 <Projectile::updateStep(float)+0x3e4>
  3b1b38: ee87 7a27    	vdiv.f32	s14, s14, s15
  3b1b3c: eddf 7aa9    	vldr	s15, [pc, #676]         @ 0x3b1de4 <Projectile::updateStep(float)+0x3e8>
  3b1b40: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1b44: eef5 7ac0    	vcmpe.f32	s15, #0
  3b1b48: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1b4c: dd0f         	ble	0x3b1b6e <Projectile::updateStep(float)+0x172> @ imm = #0x1e
  3b1b4e: ed9d 7a07    	vldr	s14, [sp, #28]
  3b1b52: eddf 7aa3    	vldr	s15, [pc, #652]         @ 0x3b1de0 <Projectile::updateStep(float)+0x3e4>
  3b1b56: ee87 7a27    	vdiv.f32	s14, s14, s15
  3b1b5a: eddf 7aa2    	vldr	s15, [pc, #648]         @ 0x3b1de4 <Projectile::updateStep(float)+0x3e8>
  3b1b5e: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1b62: eefc 7ae7    	vcvt.u32.f32	s15, s15
  3b1b66: ee17 3a90    	vmov	r3, s15
  3b1b6a: b2db         	uxtb	r3, r3
  3b1b6c: e000         	b	0x3b1b70 <Projectile::updateStep(float)+0x174> @ imm = #0x0
  3b1b6e: 2300         	movs	r3, #0x0
  3b1b70: 4608         	mov	r0, r1
  3b1b72: 4619         	mov	r1, r3
  3b1b74: 4790         	blx	r2
  3b1b76: 9b05         	ldr	r3, [sp, #0x14]
  3b1b78: f8d3 308c    	ldr.w	r3, [r3, #0x8c]
  3b1b7c: 3b03         	subs	r3, #0x3
  3b1b7e: 2b0f         	cmp	r3, #0xf
  3b1b80: f200 824b    	bhi.w	0x3b201a <Projectile::updateStep(float)+0x61e> @ imm = #0x496
  3b1b84: a102         	adr	r1, #8 <Projectile::updateStep(float)+0x18e>
  3b1b86: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  3b1b8a: 4411         	add	r1, r2
  3b1b8c: 4708         	bx	r1
  3b1b8e: bf00         	nop
  3b1b90: 0269         	lsls	r1, r5, #0x9
  3b1b92: 0000         	movs	r0, r0
  3b1b94: 00b9         	lsls	r1, r7, #0x2
  3b1b96: 0000         	movs	r0, r0
  3b1b98: 02e1         	lsls	r1, r4, #0xb
  3b1b9a: 0000         	movs	r0, r0
  3b1b9c: 02e1         	lsls	r1, r4, #0xb
  3b1b9e: 0000         	movs	r0, r0
  3b1ba0: 0041         	lsls	r1, r0, #0x1
  3b1ba2: 0000         	movs	r0, r0
  3b1ba4: 01d9         	lsls	r1, r3, #0x7
  3b1ba6: 0000         	movs	r0, r0
  3b1ba8: 01d9         	lsls	r1, r3, #0x7
  3b1baa: 0000         	movs	r0, r0
  3b1bac: 036f         	lsls	r7, r5, #0xd
  3b1bae: 0000         	movs	r0, r0
  3b1bb0: 048b         	lsls	r3, r1, #0x12
  3b1bb2: 0000         	movs	r0, r0
  3b1bb4: 048b         	lsls	r3, r1, #0x12
  3b1bb6: 0000         	movs	r0, r0
  3b1bb8: 048b         	lsls	r3, r1, #0x12
  3b1bba: 0000         	movs	r0, r0
  3b1bbc: 048b         	lsls	r3, r1, #0x12
  3b1bbe: 0000         	movs	r0, r0
  3b1bc0: 048b         	lsls	r3, r1, #0x12
  3b1bc2: 0000         	movs	r0, r0
  3b1bc4: 0147         	lsls	r7, r0, #0x5
  3b1bc6: 0000         	movs	r0, r0
  3b1bc8: 03fd         	lsls	r5, r7, #0xf
  3b1bca: 0000         	movs	r0, r0
  3b1bcc: 0269         	lsls	r1, r5, #0x9
  3b1bce: 0000         	movs	r0, r0
  3b1bd0: 9b05         	ldr	r3, [sp, #0x14]
  3b1bd2: 695b         	ldr	r3, [r3, #0x14]
  3b1bd4: 681b         	ldr	r3, [r3]
  3b1bd6: 3330         	adds	r3, #0x30
  3b1bd8: 681c         	ldr	r4, [r3]
  3b1bda: 9b05         	ldr	r3, [sp, #0x14]
  3b1bdc: 695d         	ldr	r5, [r3, #0x14]
  3b1bde: 9b05         	ldr	r3, [sp, #0x14]
  3b1be0: 695b         	ldr	r3, [r3, #0x14]
  3b1be2: 681b         	ldr	r3, [r3]
  3b1be4: 3334         	adds	r3, #0x34
  3b1be6: 681b         	ldr	r3, [r3]
  3b1be8: 9a05         	ldr	r2, [sp, #0x14]
  3b1bea: 6952         	ldr	r2, [r2, #0x14]
  3b1bec: 4610         	mov	r0, r2
  3b1bee: 4798         	blx	r3
  3b1bf0: ee06 0a90    	vmov	s13, r0
  3b1bf4: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1bf8: eddf 7a7b    	vldr	s15, [pc, #492]         @ 0x3b1de8 <Projectile::updateStep(float)+0x3ec>
  3b1bfc: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1c00: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1c04: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3b1c08: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1c0c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1c10: d513         	bpl	0x3b1c3a <Projectile::updateStep(float)+0x23e> @ imm = #0x26
  3b1c12: 9b05         	ldr	r3, [sp, #0x14]
  3b1c14: 695b         	ldr	r3, [r3, #0x14]
  3b1c16: 681b         	ldr	r3, [r3]
  3b1c18: 3334         	adds	r3, #0x34
  3b1c1a: 681b         	ldr	r3, [r3]
  3b1c1c: 9a05         	ldr	r2, [sp, #0x14]
  3b1c1e: 6952         	ldr	r2, [r2, #0x14]
  3b1c20: 4610         	mov	r0, r2
  3b1c22: 4798         	blx	r3
  3b1c24: ee06 0a90    	vmov	s13, r0
  3b1c28: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1c2c: eddf 7a6e    	vldr	s15, [pc, #440]         @ 0x3b1de8 <Projectile::updateStep(float)+0x3ec>
  3b1c30: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1c34: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1c38: e001         	b	0x3b1c3e <Projectile::updateStep(float)+0x242> @ imm = #0x2
  3b1c3a: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3b1c3e: 4628         	mov	r0, r5
  3b1c40: ee17 1a90    	vmov	r1, s15
  3b1c44: 47a0         	blx	r4
  3b1c46: e1e9         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x3d2
  3b1c48: 9b05         	ldr	r3, [sp, #0x14]
  3b1c4a: 695b         	ldr	r3, [r3, #0x14]
  3b1c4c: 681b         	ldr	r3, [r3]
  3b1c4e: 3338         	adds	r3, #0x38
  3b1c50: 681b         	ldr	r3, [r3]
  3b1c52: 9a05         	ldr	r2, [sp, #0x14]
  3b1c54: 6952         	ldr	r2, [r2, #0x14]
  3b1c56: 4610         	mov	r0, r2
  3b1c58: f04f 517f    	mov.w	r1, #0x3fc00000
  3b1c5c: 4798         	blx	r3
  3b1c5e: 9b05         	ldr	r3, [sp, #0x14]
  3b1c60: 695b         	ldr	r3, [r3, #0x14]
  3b1c62: 681b         	ldr	r3, [r3]
  3b1c64: 3330         	adds	r3, #0x30
  3b1c66: 681c         	ldr	r4, [r3]
  3b1c68: 9b05         	ldr	r3, [sp, #0x14]
  3b1c6a: 695d         	ldr	r5, [r3, #0x14]
  3b1c6c: 9b05         	ldr	r3, [sp, #0x14]
  3b1c6e: 695b         	ldr	r3, [r3, #0x14]
  3b1c70: 681b         	ldr	r3, [r3]
  3b1c72: 3334         	adds	r3, #0x34
  3b1c74: 681b         	ldr	r3, [r3]
  3b1c76: 9a05         	ldr	r2, [sp, #0x14]
  3b1c78: 6952         	ldr	r2, [r2, #0x14]
  3b1c7a: 4610         	mov	r0, r2
  3b1c7c: 4798         	blx	r3
  3b1c7e: ee06 0a90    	vmov	s13, r0
  3b1c82: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1c86: eddf 7a59    	vldr	s15, [pc, #356]         @ 0x3b1dec <Projectile::updateStep(float)+0x3f0>
  3b1c8a: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1c8e: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1c92: eef3 7a02    	vmov.f32	s15, #1.800000e+01
  3b1c96: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1c9a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1c9e: d513         	bpl	0x3b1cc8 <Projectile::updateStep(float)+0x2cc> @ imm = #0x26
  3b1ca0: 9b05         	ldr	r3, [sp, #0x14]
  3b1ca2: 695b         	ldr	r3, [r3, #0x14]
  3b1ca4: 681b         	ldr	r3, [r3]
  3b1ca6: 3334         	adds	r3, #0x34
  3b1ca8: 681b         	ldr	r3, [r3]
  3b1caa: 9a05         	ldr	r2, [sp, #0x14]
  3b1cac: 6952         	ldr	r2, [r2, #0x14]
  3b1cae: 4610         	mov	r0, r2
  3b1cb0: 4798         	blx	r3
  3b1cb2: ee06 0a90    	vmov	s13, r0
  3b1cb6: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1cba: eddf 7a4c    	vldr	s15, [pc, #304]         @ 0x3b1dec <Projectile::updateStep(float)+0x3f0>
  3b1cbe: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1cc2: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1cc6: e001         	b	0x3b1ccc <Projectile::updateStep(float)+0x2d0> @ imm = #0x2
  3b1cc8: eef3 7a02    	vmov.f32	s15, #1.800000e+01
  3b1ccc: 4628         	mov	r0, r5
  3b1cce: ee17 1a90    	vmov	r1, s15
  3b1cd2: 47a0         	blx	r4
  3b1cd4: e1a2         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x344
  3b1cd6: 9b05         	ldr	r3, [sp, #0x14]
  3b1cd8: 695b         	ldr	r3, [r3, #0x14]
  3b1cda: 681b         	ldr	r3, [r3]
  3b1cdc: 3338         	adds	r3, #0x38
  3b1cde: 681b         	ldr	r3, [r3]
  3b1ce0: 9a05         	ldr	r2, [sp, #0x14]
  3b1ce2: 6952         	ldr	r2, [r2, #0x14]
  3b1ce4: 4610         	mov	r0, r2
  3b1ce6: f246 6166    	movw	r1, #0x6666
  3b1cea: f6c3 71a6    	movt	r1, #0x3fa6
  3b1cee: 4798         	blx	r3
  3b1cf0: 9b05         	ldr	r3, [sp, #0x14]
  3b1cf2: 695b         	ldr	r3, [r3, #0x14]
  3b1cf4: 681b         	ldr	r3, [r3]
  3b1cf6: 3330         	adds	r3, #0x30
  3b1cf8: 681c         	ldr	r4, [r3]
  3b1cfa: 9b05         	ldr	r3, [sp, #0x14]
  3b1cfc: 695d         	ldr	r5, [r3, #0x14]
  3b1cfe: 9b05         	ldr	r3, [sp, #0x14]
  3b1d00: 695b         	ldr	r3, [r3, #0x14]
  3b1d02: 681b         	ldr	r3, [r3]
  3b1d04: 3334         	adds	r3, #0x34
  3b1d06: 681b         	ldr	r3, [r3]
  3b1d08: 9a05         	ldr	r2, [sp, #0x14]
  3b1d0a: 6952         	ldr	r2, [r2, #0x14]
  3b1d0c: 4610         	mov	r0, r2
  3b1d0e: 4798         	blx	r3
  3b1d10: ee06 0a90    	vmov	s13, r0
  3b1d14: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1d18: eddf 7a31    	vldr	s15, [pc, #196]         @ 0x3b1de0 <Projectile::updateStep(float)+0x3e4>
  3b1d1c: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1d20: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1d24: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b1d28: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1d2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1d30: d513         	bpl	0x3b1d5a <Projectile::updateStep(float)+0x35e> @ imm = #0x26
  3b1d32: 9b05         	ldr	r3, [sp, #0x14]
  3b1d34: 695b         	ldr	r3, [r3, #0x14]
  3b1d36: 681b         	ldr	r3, [r3]
  3b1d38: 3334         	adds	r3, #0x34
  3b1d3a: 681b         	ldr	r3, [r3]
  3b1d3c: 9a05         	ldr	r2, [sp, #0x14]
  3b1d3e: 6952         	ldr	r2, [r2, #0x14]
  3b1d40: 4610         	mov	r0, r2
  3b1d42: 4798         	blx	r3
  3b1d44: ee06 0a90    	vmov	s13, r0
  3b1d48: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1d4c: eddf 7a24    	vldr	s15, [pc, #144]         @ 0x3b1de0 <Projectile::updateStep(float)+0x3e4>
  3b1d50: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1d54: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1d58: e001         	b	0x3b1d5e <Projectile::updateStep(float)+0x362> @ imm = #0x2
  3b1d5a: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b1d5e: 4628         	mov	r0, r5
  3b1d60: ee17 1a90    	vmov	r1, s15
  3b1d64: 47a0         	blx	r4
  3b1d66: e159         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x2b2
  3b1d68: 9b05         	ldr	r3, [sp, #0x14]
  3b1d6a: 695b         	ldr	r3, [r3, #0x14]
  3b1d6c: 681b         	ldr	r3, [r3]
  3b1d6e: 3330         	adds	r3, #0x30
  3b1d70: 681c         	ldr	r4, [r3]
  3b1d72: 9b05         	ldr	r3, [sp, #0x14]
  3b1d74: 695d         	ldr	r5, [r3, #0x14]
  3b1d76: 9b05         	ldr	r3, [sp, #0x14]
  3b1d78: 695b         	ldr	r3, [r3, #0x14]
  3b1d7a: 681b         	ldr	r3, [r3]
  3b1d7c: 3334         	adds	r3, #0x34
  3b1d7e: 681b         	ldr	r3, [r3]
  3b1d80: 9a05         	ldr	r2, [sp, #0x14]
  3b1d82: 6952         	ldr	r2, [r2, #0x14]
  3b1d84: 4610         	mov	r0, r2
  3b1d86: 4798         	blx	r3
  3b1d88: ee06 0a90    	vmov	s13, r0
  3b1d8c: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1d90: eddf 7a16    	vldr	s15, [pc, #88]          @ 0x3b1dec <Projectile::updateStep(float)+0x3f0>
  3b1d94: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1d98: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1d9c: eef3 7a02    	vmov.f32	s15, #1.800000e+01
  3b1da0: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1da4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1da8: d513         	bpl	0x3b1dd2 <Projectile::updateStep(float)+0x3d6> @ imm = #0x26
  3b1daa: 9b05         	ldr	r3, [sp, #0x14]
  3b1dac: 695b         	ldr	r3, [r3, #0x14]
  3b1dae: 681b         	ldr	r3, [r3]
  3b1db0: 3334         	adds	r3, #0x34
  3b1db2: 681b         	ldr	r3, [r3]
  3b1db4: 9a05         	ldr	r2, [sp, #0x14]
  3b1db6: 6952         	ldr	r2, [r2, #0x14]
  3b1db8: 4610         	mov	r0, r2
  3b1dba: 4798         	blx	r3
  3b1dbc: ee06 0a90    	vmov	s13, r0
  3b1dc0: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1dc4: eddf 7a09    	vldr	s15, [pc, #36]          @ 0x3b1dec <Projectile::updateStep(float)+0x3f0>
  3b1dc8: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1dcc: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1dd0: e001         	b	0x3b1dd6 <Projectile::updateStep(float)+0x3da> @ imm = #0x2
  3b1dd2: eef3 7a02    	vmov.f32	s15, #1.800000e+01
  3b1dd6: 4628         	mov	r0, r5
  3b1dd8: ee17 1a90    	vmov	r1, s15
  3b1ddc: 47a0         	blx	r4
  3b1dde: e11d         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x23a
  3b1de0: 0000         	movs	r0, r0
  3b1de2: 42c8         	cmn	r0, r1
  3b1de4: 0000         	movs	r0, r0
  3b1de6: 437f         	muls	r7, r7, r7
  3b1de8: 0000         	movs	r0, r0
  3b1dea: 4234         	tst	r4, r6
  3b1dec: 0000         	movs	r0, r0
  3b1dee: 4270         	rsbs	r0, r6, #0
  3b1df0: 0000         	movs	r0, r0
  3b1df2: 4396         	bics	r6, r2
  3b1df4: 0000         	movs	r0, r0
  3b1df6: 4248         	rsbs	r0, r1, #0
  3b1df8: 9b05         	ldr	r3, [sp, #0x14]
  3b1dfa: 695b         	ldr	r3, [r3, #0x14]
  3b1dfc: 681b         	ldr	r3, [r3]
  3b1dfe: 3330         	adds	r3, #0x30
  3b1e00: 681c         	ldr	r4, [r3]
  3b1e02: 9b05         	ldr	r3, [sp, #0x14]
  3b1e04: 695d         	ldr	r5, [r3, #0x14]
  3b1e06: 9b05         	ldr	r3, [sp, #0x14]
  3b1e08: 695b         	ldr	r3, [r3, #0x14]
  3b1e0a: 681b         	ldr	r3, [r3]
  3b1e0c: 3334         	adds	r3, #0x34
  3b1e0e: 681b         	ldr	r3, [r3]
  3b1e10: 9a05         	ldr	r2, [sp, #0x14]
  3b1e12: 6952         	ldr	r2, [r2, #0x14]
  3b1e14: 4610         	mov	r0, r2
  3b1e16: 4798         	blx	r3
  3b1e18: ee06 0a90    	vmov	s13, r0
  3b1e1c: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1e20: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b1e24: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1e28: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1e2c: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3b1e30: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1e38: d513         	bpl	0x3b1e62 <Projectile::updateStep(float)+0x466> @ imm = #0x26
  3b1e3a: 9b05         	ldr	r3, [sp, #0x14]
  3b1e3c: 695b         	ldr	r3, [r3, #0x14]
  3b1e3e: 681b         	ldr	r3, [r3]
  3b1e40: 3334         	adds	r3, #0x34
  3b1e42: 681b         	ldr	r3, [r3]
  3b1e44: 9a05         	ldr	r2, [sp, #0x14]
  3b1e46: 6952         	ldr	r2, [r2, #0x14]
  3b1e48: 4610         	mov	r0, r2
  3b1e4a: 4798         	blx	r3
  3b1e4c: ee06 0a90    	vmov	s13, r0
  3b1e50: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1e54: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b1e58: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1e5c: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1e60: e001         	b	0x3b1e66 <Projectile::updateStep(float)+0x46a> @ imm = #0x2
  3b1e62: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3b1e66: 4628         	mov	r0, r5
  3b1e68: ee17 1a90    	vmov	r1, s15
  3b1e6c: 47a0         	blx	r4
  3b1e6e: e0d5         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x1aa
  3b1e70: 9b05         	ldr	r3, [sp, #0x14]
  3b1e72: 695b         	ldr	r3, [r3, #0x14]
  3b1e74: 681b         	ldr	r3, [r3]
  3b1e76: 3330         	adds	r3, #0x30
  3b1e78: 681c         	ldr	r4, [r3]
  3b1e7a: 9b05         	ldr	r3, [sp, #0x14]
  3b1e7c: 695d         	ldr	r5, [r3, #0x14]
  3b1e7e: 9b05         	ldr	r3, [sp, #0x14]
  3b1e80: 695b         	ldr	r3, [r3, #0x14]
  3b1e82: 681b         	ldr	r3, [r3]
  3b1e84: 3334         	adds	r3, #0x34
  3b1e86: 681b         	ldr	r3, [r3]
  3b1e88: 9a05         	ldr	r2, [sp, #0x14]
  3b1e8a: 6952         	ldr	r2, [r2, #0x14]
  3b1e8c: 4610         	mov	r0, r2
  3b1e8e: 4798         	blx	r3
  3b1e90: ee06 0a90    	vmov	s13, r0
  3b1e94: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1e98: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b1e9c: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1ea0: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1ea4: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3b1ea8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1eac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1eb0: d513         	bpl	0x3b1eda <Projectile::updateStep(float)+0x4de> @ imm = #0x26
  3b1eb2: 9b05         	ldr	r3, [sp, #0x14]
  3b1eb4: 695b         	ldr	r3, [r3, #0x14]
  3b1eb6: 681b         	ldr	r3, [r3]
  3b1eb8: 3334         	adds	r3, #0x34
  3b1eba: 681b         	ldr	r3, [r3]
  3b1ebc: 9a05         	ldr	r2, [sp, #0x14]
  3b1ebe: 6952         	ldr	r2, [r2, #0x14]
  3b1ec0: 4610         	mov	r0, r2
  3b1ec2: 4798         	blx	r3
  3b1ec4: ee06 0a90    	vmov	s13, r0
  3b1ec8: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1ecc: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3b1ed0: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1ed4: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1ed8: e001         	b	0x3b1ede <Projectile::updateStep(float)+0x4e2> @ imm = #0x2
  3b1eda: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3b1ede: 4628         	mov	r0, r5
  3b1ee0: ee17 1a90    	vmov	r1, s15
  3b1ee4: 47a0         	blx	r4
  3b1ee6: 9b05         	ldr	r3, [sp, #0x14]
  3b1ee8: 695b         	ldr	r3, [r3, #0x14]
  3b1eea: 681b         	ldr	r3, [r3]
  3b1eec: 3338         	adds	r3, #0x38
  3b1eee: 681b         	ldr	r3, [r3]
  3b1ef0: 9a05         	ldr	r2, [sp, #0x14]
  3b1ef2: 6952         	ldr	r2, [r2, #0x14]
  3b1ef4: 4610         	mov	r0, r2
  3b1ef6: f04f 517d    	mov.w	r1, #0x3f400000
  3b1efa: 4798         	blx	r3
  3b1efc: e08e         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x11c
  3b1efe: 9b05         	ldr	r3, [sp, #0x14]
  3b1f00: 695b         	ldr	r3, [r3, #0x14]
  3b1f02: 681b         	ldr	r3, [r3]
  3b1f04: 3330         	adds	r3, #0x30
  3b1f06: 681c         	ldr	r4, [r3]
  3b1f08: 9b05         	ldr	r3, [sp, #0x14]
  3b1f0a: 695d         	ldr	r5, [r3, #0x14]
  3b1f0c: 9b05         	ldr	r3, [sp, #0x14]
  3b1f0e: 695b         	ldr	r3, [r3, #0x14]
  3b1f10: 681b         	ldr	r3, [r3]
  3b1f12: 3334         	adds	r3, #0x34
  3b1f14: 681b         	ldr	r3, [r3]
  3b1f16: 9a05         	ldr	r2, [sp, #0x14]
  3b1f18: 6952         	ldr	r2, [r2, #0x14]
  3b1f1a: 4610         	mov	r0, r2
  3b1f1c: 4798         	blx	r3
  3b1f1e: ee06 0a90    	vmov	s13, r0
  3b1f22: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1f26: ed5f 7a4e    	vldr	s15, [pc, #-312]        @ 0x3b1df0 <Projectile::updateStep(float)+0x3f4>
  3b1f2a: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1f2e: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1f32: ed5f 7a50    	vldr	s15, [pc, #-320]        @ 0x3b1df4 <Projectile::updateStep(float)+0x3f8>
  3b1f36: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1f3a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1f3e: d513         	bpl	0x3b1f68 <Projectile::updateStep(float)+0x56c> @ imm = #0x26
  3b1f40: 9b05         	ldr	r3, [sp, #0x14]
  3b1f42: 695b         	ldr	r3, [r3, #0x14]
  3b1f44: 681b         	ldr	r3, [r3]
  3b1f46: 3334         	adds	r3, #0x34
  3b1f48: 681b         	ldr	r3, [r3]
  3b1f4a: 9a05         	ldr	r2, [sp, #0x14]
  3b1f4c: 6952         	ldr	r2, [r2, #0x14]
  3b1f4e: 4610         	mov	r0, r2
  3b1f50: 4798         	blx	r3
  3b1f52: ee06 0a90    	vmov	s13, r0
  3b1f56: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1f5a: ed5f 7a5b    	vldr	s15, [pc, #-364]        @ 0x3b1df0 <Projectile::updateStep(float)+0x3f4>
  3b1f5e: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1f62: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1f66: e001         	b	0x3b1f6c <Projectile::updateStep(float)+0x570> @ imm = #0x2
  3b1f68: ed5f 7a5e    	vldr	s15, [pc, #-376]        @ 0x3b1df4 <Projectile::updateStep(float)+0x3f8>
  3b1f6c: 4628         	mov	r0, r5
  3b1f6e: ee17 1a90    	vmov	r1, s15
  3b1f72: 47a0         	blx	r4
  3b1f74: 9b05         	ldr	r3, [sp, #0x14]
  3b1f76: 695b         	ldr	r3, [r3, #0x14]
  3b1f78: 681b         	ldr	r3, [r3]
  3b1f7a: 3338         	adds	r3, #0x38
  3b1f7c: 681b         	ldr	r3, [r3]
  3b1f7e: 9a05         	ldr	r2, [sp, #0x14]
  3b1f80: 6952         	ldr	r2, [r2, #0x14]
  3b1f82: 4610         	mov	r0, r2
  3b1f84: f04f 517f    	mov.w	r1, #0x3fc00000
  3b1f88: 4798         	blx	r3
  3b1f8a: e047         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x8e
  3b1f8c: 9b05         	ldr	r3, [sp, #0x14]
  3b1f8e: 695b         	ldr	r3, [r3, #0x14]
  3b1f90: 681b         	ldr	r3, [r3]
  3b1f92: 3330         	adds	r3, #0x30
  3b1f94: 681c         	ldr	r4, [r3]
  3b1f96: 9b05         	ldr	r3, [sp, #0x14]
  3b1f98: 695d         	ldr	r5, [r3, #0x14]
  3b1f9a: 9b05         	ldr	r3, [sp, #0x14]
  3b1f9c: 695b         	ldr	r3, [r3, #0x14]
  3b1f9e: 681b         	ldr	r3, [r3]
  3b1fa0: 3334         	adds	r3, #0x34
  3b1fa2: 681b         	ldr	r3, [r3]
  3b1fa4: 9a05         	ldr	r2, [sp, #0x14]
  3b1fa6: 6952         	ldr	r2, [r2, #0x14]
  3b1fa8: 4610         	mov	r0, r2
  3b1faa: 4798         	blx	r3
  3b1fac: ee06 0a90    	vmov	s13, r0
  3b1fb0: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1fb4: ed5f 7a72    	vldr	s15, [pc, #-456]        @ 0x3b1df0 <Projectile::updateStep(float)+0x3f4>
  3b1fb8: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1fbc: ee36 7aa7    	vadd.f32	s14, s13, s15
  3b1fc0: ed5f 7a74    	vldr	s15, [pc, #-464]        @ 0x3b1df4 <Projectile::updateStep(float)+0x3f8>
  3b1fc4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3b1fc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b1fcc: d513         	bpl	0x3b1ff6 <Projectile::updateStep(float)+0x5fa> @ imm = #0x26
  3b1fce: 9b05         	ldr	r3, [sp, #0x14]
  3b1fd0: 695b         	ldr	r3, [r3, #0x14]
  3b1fd2: 681b         	ldr	r3, [r3]
  3b1fd4: 3334         	adds	r3, #0x34
  3b1fd6: 681b         	ldr	r3, [r3]
  3b1fd8: 9a05         	ldr	r2, [sp, #0x14]
  3b1fda: 6952         	ldr	r2, [r2, #0x14]
  3b1fdc: 4610         	mov	r0, r2
  3b1fde: 4798         	blx	r3
  3b1fe0: ee06 0a90    	vmov	s13, r0
  3b1fe4: ed9d 7a04    	vldr	s14, [sp, #16]
  3b1fe8: ed5f 7a7f    	vldr	s15, [pc, #-508]        @ 0x3b1df0 <Projectile::updateStep(float)+0x3f4>
  3b1fec: ee67 7a27    	vmul.f32	s15, s14, s15
  3b1ff0: ee76 7aa7    	vadd.f32	s15, s13, s15
  3b1ff4: e001         	b	0x3b1ffa <Projectile::updateStep(float)+0x5fe> @ imm = #0x2
  3b1ff6: ed5f 7a81    	vldr	s15, [pc, #-516]        @ 0x3b1df4 <Projectile::updateStep(float)+0x3f8>
  3b1ffa: 4628         	mov	r0, r5
  3b1ffc: ee17 1a90    	vmov	r1, s15
  3b2000: 47a0         	blx	r4
  3b2002: 9b05         	ldr	r3, [sp, #0x14]
  3b2004: 695b         	ldr	r3, [r3, #0x14]
  3b2006: 681b         	ldr	r3, [r3]
  3b2008: 3338         	adds	r3, #0x38
  3b200a: 681b         	ldr	r3, [r3]
  3b200c: 9a05         	ldr	r2, [sp, #0x14]
  3b200e: 6952         	ldr	r2, [r2, #0x14]
  3b2010: 4610         	mov	r0, r2
  3b2012: f04f 517f    	mov.w	r1, #0x3fc00000
  3b2016: 4798         	blx	r3
  3b2018: e000         	b	0x3b201c <Projectile::updateStep(float)+0x620> @ imm = #0x0
  3b201a: bf00         	nop
  3b201c: b00b         	add	sp, #0x2c
  3b201e: ecbd 8b02    	vpop	{d8}
  3b2022: bd30         	pop	{r4, r5, pc}

// ==== Projectile::getActive
//      file offset 0x3b2024 (= ELF address; Ghidra 0x3c2024), 14 bytes, Thumb-2
  3b2024: b082         	sub	sp, #0x8
  3b2026: 9001         	str	r0, [sp, #0x4]
  3b2028: 9b01         	ldr	r3, [sp, #0x4]
  3b202a: 7e1b         	ldrb	r3, [r3, #0x18]
  3b202c: 4618         	mov	r0, r3
  3b202e: b002         	add	sp, #0x8
  3b2030: 4770         	bx	lr

// ==== Projectile::setActive
//      file offset 0x3b2034 (= ELF address; Ghidra 0x3c2034), 22 bytes, Thumb-2
  3b2034: b082         	sub	sp, #0x8
  3b2036: 9001         	str	r0, [sp, #0x4]
  3b2038: 460b         	mov	r3, r1
  3b203a: f88d 3003    	strb.w	r3, [sp, #0x3]
  3b203e: 9b01         	ldr	r3, [sp, #0x4]
  3b2040: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3b2044: 761a         	strb	r2, [r3, #0x18]
  3b2046: b002         	add	sp, #0x8
  3b2048: 4770         	bx	lr

// ==== Projectile::getDamageVelocity
//      file offset 0x3b204c (= ELF address; Ghidra 0x3c204c), 32 bytes, Thumb-2
  3b204c: b410         	push	{r4}
  3b204e: b083         	sub	sp, #0xc
  3b2050: 9001         	str	r0, [sp, #0x4]
  3b2052: 9100         	str	r1, [sp]
  3b2054: 9a01         	ldr	r2, [sp, #0x4]
  3b2056: 9b00         	ldr	r3, [sp]
  3b2058: 4614         	mov	r4, r2
  3b205a: 3320         	adds	r3, #0x20
  3b205c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b205e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b2062: 9801         	ldr	r0, [sp, #0x4]
  3b2064: b003         	add	sp, #0xc
  3b2066: f85d 4b04    	ldr	r4, [sp], #4
  3b206a: 4770         	bx	lr

// ==== Projectile::getDamagePosition
//      file offset 0x3b206c (= ELF address; Ghidra 0x3c206c), 32 bytes, Thumb-2
  3b206c: b410         	push	{r4}
  3b206e: b083         	sub	sp, #0xc
  3b2070: 9001         	str	r0, [sp, #0x4]
  3b2072: 9100         	str	r1, [sp]
  3b2074: 9a01         	ldr	r2, [sp, #0x4]
  3b2076: 9b00         	ldr	r3, [sp]
  3b2078: 4614         	mov	r4, r2
  3b207a: 3338         	adds	r3, #0x38
  3b207c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b207e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b2082: 9801         	ldr	r0, [sp, #0x4]
  3b2084: b003         	add	sp, #0xc
  3b2086: f85d 4b04    	ldr	r4, [sp], #4
  3b208a: 4770         	bx	lr

// ==== Projectile::setDamageVelocity
//      file offset 0x3b208c (= ELF address; Ghidra 0x3c208c), 38 bytes, Thumb-2
  3b208c: b082         	sub	sp, #0x8
  3b208e: b410         	push	{r4}
  3b2090: b083         	sub	sp, #0xc
  3b2092: 9001         	str	r0, [sp, #0x4]
  3b2094: a904         	add	r1, sp, #0x10
  3b2096: e881 000c    	stm.w	r1, {r2, r3}
  3b209a: 9b01         	ldr	r3, [sp, #0x4]
  3b209c: f103 0420    	add.w	r4, r3, #0x20
  3b20a0: ab04         	add	r3, sp, #0x10
  3b20a2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b20a4: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b20a8: b003         	add	sp, #0xc
  3b20aa: f85d 4b04    	ldr	r4, [sp], #4
  3b20ae: b002         	add	sp, #0x8
  3b20b0: 4770         	bx	lr

// ==== Projectile::setDamagePosition
//      file offset 0x3b20b4 (= ELF address; Ghidra 0x3c20b4), 38 bytes, Thumb-2
  3b20b4: b082         	sub	sp, #0x8
  3b20b6: b410         	push	{r4}
  3b20b8: b083         	sub	sp, #0xc
  3b20ba: 9001         	str	r0, [sp, #0x4]
  3b20bc: a904         	add	r1, sp, #0x10
  3b20be: e881 000c    	stm.w	r1, {r2, r3}
  3b20c2: 9b01         	ldr	r3, [sp, #0x4]
  3b20c4: f103 0438    	add.w	r4, r3, #0x38
  3b20c8: ab04         	add	r3, sp, #0x10
  3b20ca: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b20cc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b20d0: b003         	add	sp, #0xc
  3b20d2: f85d 4b04    	ldr	r4, [sp], #4
  3b20d6: b002         	add	sp, #0x8
  3b20d8: 4770         	bx	lr

// ==== Projectile::getDamagedPlayerID
//      file offset 0x3b20dc (= ELF address; Ghidra 0x3c20dc), 28 bytes, Thumb-2
  3b20dc: b500         	push	{lr}
  3b20de: b083         	sub	sp, #0xc
  3b20e0: 9001         	str	r0, [sp, #0x4]
  3b20e2: 9100         	str	r1, [sp]
  3b20e4: 9b00         	ldr	r3, [sp]
  3b20e6: 3330         	adds	r3, #0x30
  3b20e8: 9801         	ldr	r0, [sp, #0x4]
  3b20ea: 4619         	mov	r1, r3
  3b20ec: f004 f1fc    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4043f8
  3b20f0: 9801         	ldr	r0, [sp, #0x4]
  3b20f2: b003         	add	sp, #0xc
  3b20f4: f85d fb04    	ldr	pc, [sp], #4

// ==== Projectile::setDamagedPlayerID
//      file offset 0x3b20f8 (= ELF address; Ghidra 0x3c20f8), 26 bytes, Thumb-2
  3b20f8: b500         	push	{lr}
  3b20fa: b083         	sub	sp, #0xc
  3b20fc: 9001         	str	r0, [sp, #0x4]
  3b20fe: 9100         	str	r1, [sp]
  3b2100: 9b01         	ldr	r3, [sp, #0x4]
  3b2102: 3330         	adds	r3, #0x30
  3b2104: 4618         	mov	r0, r3
  3b2106: 9900         	ldr	r1, [sp]
  3b2108: f004 f254    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x4044a8
  3b210c: b003         	add	sp, #0xc
  3b210e: f85d fb04    	ldr	pc, [sp], #4

// ==== Projectile::getShooterPlayerID
//      file offset 0x3b2114 (= ELF address; Ghidra 0x3c2114), 28 bytes, Thumb-2
  3b2114: b500         	push	{lr}
  3b2116: b083         	sub	sp, #0xc
  3b2118: 9001         	str	r0, [sp, #0x4]
  3b211a: 9100         	str	r1, [sp]
  3b211c: 9b00         	ldr	r3, [sp]
  3b211e: 3334         	adds	r3, #0x34
  3b2120: 9801         	ldr	r0, [sp, #0x4]
  3b2122: 4619         	mov	r1, r3
  3b2124: f004 f1e0    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4043c0
  3b2128: 9801         	ldr	r0, [sp, #0x4]
  3b212a: b003         	add	sp, #0xc
  3b212c: f85d fb04    	ldr	pc, [sp], #4

// ==== Projectile::setShooterPlayerID
//      file offset 0x3b2130 (= ELF address; Ghidra 0x3c2130), 26 bytes, Thumb-2
  3b2130: b500         	push	{lr}
  3b2132: b083         	sub	sp, #0xc
  3b2134: 9001         	str	r0, [sp, #0x4]
  3b2136: 9100         	str	r1, [sp]
  3b2138: 9b01         	ldr	r3, [sp, #0x4]
  3b213a: 3334         	adds	r3, #0x34
  3b213c: 4618         	mov	r0, r3
  3b213e: 9900         	ldr	r1, [sp]
  3b2140: f004 f238    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x404470
  3b2144: b003         	add	sp, #0xc
  3b2146: f85d fb04    	ldr	pc, [sp], #4

// ==== Projectile::getDamage
//      file offset 0x3b214c (= ELF address; Ghidra 0x3c214c), 132 bytes, Thumb-2
  3b214c: b082         	sub	sp, #0x8
  3b214e: 9001         	str	r0, [sp, #0x4]
  3b2150: 9b01         	ldr	r3, [sp, #0x4]
  3b2152: f8d3 3090    	ldr.w	r3, [r3, #0x90]
  3b2156: ee05 3a90    	vmov	s11, r3
  3b215a: eeb8 6be5    	vcvt.f64.s32	d6, s11
  3b215e: 9b01         	ldr	r3, [sp, #0x4]
  3b2160: ed93 7a25    	vldr	s14, [r3, #148]
  3b2164: 9b01         	ldr	r3, [sp, #0x4]
  3b2166: 6f1b         	ldr	r3, [r3, #0x70]
  3b2168: ee05 3a90    	vmov	s11, r3
  3b216c: eef8 7ae5    	vcvt.f32.s32	s15, s11
  3b2170: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b2174: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  3b2178: ee77 7a67    	vsub.f32	s15, s14, s15
  3b217c: eef5 7ac0    	vcmpe.f32	s15, #0
  3b2180: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3b2184: dd19         	ble	0x3b21ba <Projectile::getDamage()+0x6e> @ imm = #0x32
  3b2186: 9b01         	ldr	r3, [sp, #0x4]
  3b2188: ed93 7a25    	vldr	s14, [r3, #148]
  3b218c: 9b01         	ldr	r3, [sp, #0x4]
  3b218e: 6f1b         	ldr	r3, [r3, #0x70]
  3b2190: ee05 3a90    	vmov	s11, r3
  3b2194: eef8 7ae5    	vcvt.f32.s32	s15, s11
  3b2198: eec7 7a27    	vdiv.f32	s15, s14, s15
  3b219c: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  3b21a0: ee77 7a67    	vsub.f32	s15, s14, s15
  3b21a4: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3b21a8: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3b21ac: ee25 5b07    	vmul.f64	d5, d5, d7
  3b21b0: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3b21b4: ee35 7b07    	vadd.f64	d7, d5, d7
  3b21b8: e001         	b	0x3b21be <Projectile::getDamage()+0x72> @ imm = #0x2
  3b21ba: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3b21be: ee26 7b07    	vmul.f64	d7, d6, d7
  3b21c2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b21c6: ee17 3a90    	vmov	r3, s15
  3b21ca: 4618         	mov	r0, r3
  3b21cc: b002         	add	sp, #0x8
  3b21ce: 4770         	bx	lr

// ==== Projectile::getDamageAmount
//      file offset 0x3b21d0 (= ELF address; Ghidra 0x3c21d0), 14 bytes, Thumb-2
  3b21d0: b082         	sub	sp, #0x8
  3b21d2: 9001         	str	r0, [sp, #0x4]
  3b21d4: 9b01         	ldr	r3, [sp, #0x4]
  3b21d6: 6c9b         	ldr	r3, [r3, #0x48]
  3b21d8: 4618         	mov	r0, r3
  3b21da: b002         	add	sp, #0x8
  3b21dc: 4770         	bx	lr

// ==== Projectile::setDamageAmount
//      file offset 0x3b21e0 (= ELF address; Ghidra 0x3c21e0), 16 bytes, Thumb-2
  3b21e0: b082         	sub	sp, #0x8
  3b21e2: 9001         	str	r0, [sp, #0x4]
  3b21e4: 9100         	str	r1, [sp]
  3b21e6: 9b01         	ldr	r3, [sp, #0x4]
  3b21e8: 9a00         	ldr	r2, [sp]
  3b21ea: 649a         	str	r2, [r3, #0x48]
  3b21ec: b002         	add	sp, #0x8
  3b21ee: 4770         	bx	lr

// ==== Projectile::getCollided
//      file offset 0x3b21f0 (= ELF address; Ghidra 0x3c21f0), 16 bytes, Thumb-2
  3b21f0: b082         	sub	sp, #0x8
  3b21f2: 9001         	str	r0, [sp, #0x4]
  3b21f4: 9b01         	ldr	r3, [sp, #0x4]
  3b21f6: f893 304c    	ldrb.w	r3, [r3, #0x4c]
  3b21fa: 4618         	mov	r0, r3
  3b21fc: b002         	add	sp, #0x8
  3b21fe: 4770         	bx	lr

// ==== Projectile::setCollided
//      file offset 0x3b2200 (= ELF address; Ghidra 0x3c2200), 24 bytes, Thumb-2
  3b2200: b082         	sub	sp, #0x8
  3b2202: 9001         	str	r0, [sp, #0x4]
  3b2204: 460b         	mov	r3, r1
  3b2206: f88d 3003    	strb.w	r3, [sp, #0x3]
  3b220a: 9b01         	ldr	r3, [sp, #0x4]
  3b220c: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3b2210: f883 204c    	strb.w	r2, [r3, #0x4c]
  3b2214: b002         	add	sp, #0x8
  3b2216: 4770         	bx	lr

// ==== Projectile::getAmmoType
//      file offset 0x3b2218 (= ELF address; Ghidra 0x3c2218), 16 bytes, Thumb-2
  3b2218: b082         	sub	sp, #0x8
  3b221a: 9001         	str	r0, [sp, #0x4]
  3b221c: 9b01         	ldr	r3, [sp, #0x4]
  3b221e: f8d3 308c    	ldr.w	r3, [r3, #0x8c]
  3b2222: 4618         	mov	r0, r3
  3b2224: b002         	add	sp, #0x8
  3b2226: 4770         	bx	lr

// ==== Projectile::getPosition
//      file offset 0x3b2228 (= ELF address; Ghidra 0x3c2228), 96 bytes, Thumb-2
  3b2228: b500         	push	{lr}
  3b222a: ed2d 8b02    	vpush	{d8}
  3b222e: b083         	sub	sp, #0xc
  3b2230: 9001         	str	r0, [sp, #0x4]
  3b2232: 9100         	str	r1, [sp]
  3b2234: 9b00         	ldr	r3, [sp]
  3b2236: 695b         	ldr	r3, [r3, #0x14]
  3b2238: 681b         	ldr	r3, [r3]
  3b223a: 3350         	adds	r3, #0x50
  3b223c: 681b         	ldr	r3, [r3]
  3b223e: 9a00         	ldr	r2, [sp]
  3b2240: 6952         	ldr	r2, [r2, #0x14]
  3b2242: 4610         	mov	r0, r2
  3b2244: 4798         	blx	r3
  3b2246: 4603         	mov	r3, r0
  3b2248: edd3 7a00    	vldr	s15, [r3]
  3b224c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3b2250: 9b00         	ldr	r3, [sp]
  3b2252: 695b         	ldr	r3, [r3, #0x14]
  3b2254: 681b         	ldr	r3, [r3]
  3b2256: 3350         	adds	r3, #0x50
  3b2258: 681b         	ldr	r3, [r3]
  3b225a: 9a00         	ldr	r2, [sp]
  3b225c: 6952         	ldr	r2, [r2, #0x14]
  3b225e: 4610         	mov	r0, r2
  3b2260: 4798         	blx	r3
  3b2262: 4603         	mov	r3, r0
  3b2264: edd3 7a01    	vldr	s15, [r3, #4]
  3b2268: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3b226c: 9b01         	ldr	r3, [sp, #0x4]
  3b226e: 4618         	mov	r0, r3
  3b2270: eeb0 0b48    	vmov.f64	d0, d8
  3b2274: eeb0 1b47    	vmov.f64	d1, d7
  3b2278: f7fe fbe8    	bl	0x3b0a4c <PostGameScreen::playerQuitGame()+0x2f8> @ imm = #-0x1830
  3b227c: 9801         	ldr	r0, [sp, #0x4]
  3b227e: b003         	add	sp, #0xc
  3b2280: ecbd 8b02    	vpop	{d8}
  3b2284: f85d fb04    	ldr	pc, [sp], #4

// ==== Projectile::setPosition
//      file offset 0x3b2288 (= ELF address; Ghidra 0x3c2288), 78 bytes, Thumb-2
  3b2288: b082         	sub	sp, #0x8
  3b228a: b530         	push	{r4, r5, lr}
  3b228c: b085         	sub	sp, #0x14
  3b228e: 9001         	str	r0, [sp, #0x4]
  3b2290: a908         	add	r1, sp, #0x20
  3b2292: e881 000c    	stm.w	r1, {r2, r3}
  3b2296: 9b01         	ldr	r3, [sp, #0x4]
  3b2298: 695b         	ldr	r3, [r3, #0x14]
  3b229a: 681b         	ldr	r3, [r3]
  3b229c: 334c         	adds	r3, #0x4c
  3b229e: 681c         	ldr	r4, [r3]
  3b22a0: 9b01         	ldr	r3, [sp, #0x4]
  3b22a2: 695d         	ldr	r5, [r3, #0x14]
  3b22a4: ed9d 7b08    	vldr	d7, [sp, #32]
  3b22a8: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3b22ac: ed9d 7b0a    	vldr	d7, [sp, #40]
  3b22b0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3b22b4: ab02         	add	r3, sp, #0x8
  3b22b6: 4618         	mov	r0, r3
  3b22b8: ee16 1a90    	vmov	r1, s13
  3b22bc: ee17 2a90    	vmov	r2, s15
  3b22c0: f1e0 fd16    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1e0a2c
  3b22c4: ab02         	add	r3, sp, #0x8
  3b22c6: 4628         	mov	r0, r5
  3b22c8: 4619         	mov	r1, r3
  3b22ca: 47a0         	blx	r4
  3b22cc: b005         	add	sp, #0x14
  3b22ce: e8bd 4030    	pop.w	{r4, r5, lr}
  3b22d2: b002         	add	sp, #0x8
  3b22d4: 4770         	bx	lr

// ==== Projectile::getCollisionType
//      file offset 0x3b22d8 (= ELF address; Ghidra 0x3c22d8), 14 bytes, Thumb-2
  3b22d8: b082         	sub	sp, #0x8
  3b22da: 9001         	str	r0, [sp, #0x4]
  3b22dc: 9b01         	ldr	r3, [sp, #0x4]
  3b22de: 6f5b         	ldr	r3, [r3, #0x74]
  3b22e0: 4618         	mov	r0, r3
  3b22e2: b002         	add	sp, #0x8
  3b22e4: 4770         	bx	lr

// ==== Projectile::setCollisionType
//      file offset 0x3b22e8 (= ELF address; Ghidra 0x3c22e8), 16 bytes, Thumb-2
  3b22e8: b082         	sub	sp, #0x8
  3b22ea: 9001         	str	r0, [sp, #0x4]
  3b22ec: 9100         	str	r1, [sp]
  3b22ee: 9b01         	ldr	r3, [sp, #0x4]
  3b22f0: 9a00         	ldr	r2, [sp]
  3b22f2: 675a         	str	r2, [r3, #0x74]
  3b22f4: b002         	add	sp, #0x8
  3b22f6: 4770         	bx	lr

// ==== Projectile::getVelocity
//      file offset 0x3b22f8 (= ELF address; Ghidra 0x3c22f8), 32 bytes, Thumb-2
  3b22f8: b410         	push	{r4}
  3b22fa: b083         	sub	sp, #0xc
  3b22fc: 9001         	str	r0, [sp, #0x4]
  3b22fe: 9100         	str	r1, [sp]
  3b2300: 9a01         	ldr	r2, [sp, #0x4]
  3b2302: 9b00         	ldr	r3, [sp]
  3b2304: 4614         	mov	r4, r2
  3b2306: 3378         	adds	r3, #0x78
  3b2308: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3b230a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3b230e: 9801         	ldr	r0, [sp, #0x4]
  3b2310: b003         	add	sp, #0xc
  3b2312: f85d 4b04    	ldr	r4, [sp], #4
  3b2316: 4770         	bx	lr

// ==== Projectile::addBodyShape
//      file offset 0x3b2318 (= ELF address; Ghidra 0x3c2318), 10 bytes, Thumb-2
  3b2318: b082         	sub	sp, #0x8
  3b231a: 9001         	str	r0, [sp, #0x4]
  3b231c: 9100         	str	r1, [sp]
  3b231e: b002         	add	sp, #0x8
  3b2320: 4770         	bx	lr
