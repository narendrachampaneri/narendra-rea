// MapManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 26 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MapManager.cpp

// ==== MapManager::MapManager
//      file offset 0x35e8fc (= ELF address; Ghidra 0x36e8fc), 88 bytes, Thumb-2
  35e8fc: b510         	push	{r4, lr}
  35e8fe: b082         	sub	sp, #0x8
  35e900: 9001         	str	r0, [sp, #0x4]
  35e902: 4c12         	ldr	r4, [pc, #0x48]         @ 0x35e94c <MapManager::MapManager()+0x50>
  35e904: 447c         	add	r4, pc
  35e906: 9b01         	ldr	r3, [sp, #0x4]
  35e908: 4618         	mov	r0, r3
  35e90a: f239 fa2f    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x23945e
  35e90e: 9b01         	ldr	r3, [sp, #0x4]
  35e910: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x35e950 <MapManager::MapManager()+0x54>
  35e912: 58a2         	ldr	r2, [r4, r2]
  35e914: 3208         	adds	r2, #0x8
  35e916: 601a         	str	r2, [r3]
  35e918: 9b01         	ldr	r3, [sp, #0x4]
  35e91a: 3358         	adds	r3, #0x58
  35e91c: 4618         	mov	r0, r3
  35e91e: f056 f447    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x45688e
  35e922: 9801         	ldr	r0, [sp, #0x4]
  35e924: f000 f816    	bl	0x35e954 <MapManager::init()> @ imm = #0x2c
  35e928: 9b01         	ldr	r3, [sp, #0x4]
  35e92a: e00b         	b	0x35e944 <MapManager::MapManager()+0x48> @ imm = #0x16
  35e92c: 9b01         	ldr	r3, [sp, #0x4]
  35e92e: 3358         	adds	r3, #0x58
  35e930: 4618         	mov	r0, r3
  35e932: f056 f7ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456fde
  35e936: e7ff         	b	0x35e938 <MapManager::MapManager()+0x3c> @ imm = #-0x2
  35e938: 9b01         	ldr	r3, [sp, #0x4]
  35e93a: 4618         	mov	r0, r3
  35e93c: f239 fa48    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x239490
  35e940: f029 f3b4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x429768
  35e944: 4618         	mov	r0, r3
  35e946: b002         	add	sp, #0x8
  35e948: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35e949); words below are literal-pool data ---
  35e94a: bf00         	nop
  35e94c: 4104         	asrs	r4, r0
  35e94e: 005d         	lsls	r5, r3, #0x1
  35e950: db90         	blt	0x35e874 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0xe0c> @ imm = #-0xe0
  35e952: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MapManager::init
//      file offset 0x35e954 (= ELF address; Ghidra 0x36e954), 464 bytes, Thumb-2
  35e954: b510         	push	{r4, lr}
  35e956: b086         	sub	sp, #0x18
  35e958: 9001         	str	r0, [sp, #0x4]
  35e95a: 4c6b         	ldr	r4, [pc, #0x1ac]        @ 0x35eb08 <MapManager::init()+0x1b4>
  35e95c: 447c         	add	r4, pc
  35e95e: f23b f9e9    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x23b3d2
  35e962: 4602         	mov	r2, r0
  35e964: 9b01         	ldr	r3, [sp, #0x4]
  35e966: 63da         	str	r2, [r3, #0x3c]
  35e968: 9b01         	ldr	r3, [sp, #0x4]
  35e96a: 6bdb         	ldr	r3, [r3, #0x3c]
  35e96c: 4618         	mov	r0, r3
  35e96e: f239 fabb    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x239576
  35e972: 2300         	movs	r3, #0x0
  35e974: 9304         	str	r3, [sp, #0x10]
  35e976: 2300         	movs	r3, #0x0
  35e978: 9305         	str	r3, [sp, #0x14]
  35e97a: 9b01         	ldr	r3, [sp, #0x4]
  35e97c: 3358         	adds	r3, #0x58
  35e97e: 4618         	mov	r0, r3
  35e980: 4b62         	ldr	r3, [pc, #0x188]        @ 0x35eb0c <MapManager::init()+0x1b8>
  35e982: 447b         	add	r3, pc
  35e984: 4619         	mov	r1, r3
  35e986: f057 f273    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4574e6
  35e98a: 9b01         	ldr	r3, [sp, #0x4]
  35e98c: f04f 527e    	mov.w	r2, #0x3f800000
  35e990: 65da         	str	r2, [r3, #0x5c]
  35e992: 9b01         	ldr	r3, [sp, #0x4]
  35e994: 2264         	movs	r2, #0x64
  35e996: 661a         	str	r2, [r3, #0x60]
  35e998: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x35eb10 <MapManager::init()+0x1bc>
  35e99a: 58e3         	ldr	r3, [r4, r3]
  35e99c: 681b         	ldr	r3, [r3]
  35e99e: 2b01         	cmp	r3, #0x1
  35e9a0: d002         	beq	0x35e9a8 <MapManager::init()+0x54> @ imm = #0x4
  35e9a2: 2b02         	cmp	r3, #0x2
  35e9a4: d01b         	beq	0x35e9de <MapManager::init()+0x8a> @ imm = #0x36
  35e9a6: e035         	b	0x35ea14 <MapManager::init()+0xc0> @ imm = #0x6a
  35e9a8: ab02         	add	r3, sp, #0x8
  35e9aa: 4618         	mov	r0, r3
  35e9ac: f02b f522    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42ba44
  35e9b0: aa03         	add	r2, sp, #0xc
  35e9b2: ab02         	add	r3, sp, #0x8
  35e9b4: 4610         	mov	r0, r2
  35e9b6: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x35eb14 <MapManager::init()+0x1c0>
  35e9b8: 447a         	add	r2, pc
  35e9ba: 4611         	mov	r1, r2
  35e9bc: 461a         	mov	r2, r3
  35e9be: f058 f04f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45809e
  35e9c2: ab03         	add	r3, sp, #0xc
  35e9c4: 9801         	ldr	r0, [sp, #0x4]
  35e9c6: 4619         	mov	r1, r3
  35e9c8: f000 f960    	bl	0x35ec8c <MapManager::loadMap(std::string)> @ imm = #0x2c0
  35e9cc: ab03         	add	r3, sp, #0xc
  35e9ce: 4618         	mov	r0, r3
  35e9d0: f056 f7a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456f40
  35e9d4: ab02         	add	r3, sp, #0x8
  35e9d6: 4618         	mov	r0, r3
  35e9d8: f02b f510    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42ba20
  35e9dc: e06e         	b	0x35eabc <MapManager::init()+0x168> @ imm = #0xdc
  35e9de: ab02         	add	r3, sp, #0x8
  35e9e0: 4618         	mov	r0, r3
  35e9e2: f02b f507    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42ba0e
  35e9e6: aa03         	add	r2, sp, #0xc
  35e9e8: ab02         	add	r3, sp, #0x8
  35e9ea: 4610         	mov	r0, r2
  35e9ec: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x35eb18 <MapManager::init()+0x1c4>
  35e9ee: 447a         	add	r2, pc
  35e9f0: 4611         	mov	r1, r2
  35e9f2: 461a         	mov	r2, r3
  35e9f4: f058 f034    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x458068
  35e9f8: ab03         	add	r3, sp, #0xc
  35e9fa: 9801         	ldr	r0, [sp, #0x4]
  35e9fc: 4619         	mov	r1, r3
  35e9fe: f000 f945    	bl	0x35ec8c <MapManager::loadMap(std::string)> @ imm = #0x28a
  35ea02: ab03         	add	r3, sp, #0xc
  35ea04: 4618         	mov	r0, r3
  35ea06: f056 f785    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456f0a
  35ea0a: ab02         	add	r3, sp, #0x8
  35ea0c: 4618         	mov	r0, r3
  35ea0e: f02b f4f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42b9ea
  35ea12: e053         	b	0x35eabc <MapManager::init()+0x168> @ imm = #0xa6
  35ea14: 4b41         	ldr	r3, [pc, #0x104]        @ 0x35eb1c <MapManager::init()+0x1c8>
  35ea16: 58e3         	ldr	r3, [r4, r3]
  35ea18: 681b         	ldr	r3, [r3]
  35ea1a: 4618         	mov	r0, r3
  35ea1c: 4b40         	ldr	r3, [pc, #0x100]        @ 0x35eb20 <MapManager::init()+0x1cc>
  35ea1e: 58e3         	ldr	r3, [r4, r3]
  35ea20: 4619         	mov	r1, r3
  35ea22: f235 fa65    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x2354ca
  35ea26: 4603         	mov	r3, r0
  35ea28: 9305         	str	r3, [sp, #0x14]
  35ea2a: 9805         	ldr	r0, [sp, #0x14]
  35ea2c: 2100         	movs	r1, #0x0
  35ea2e: f23b fb77    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23b6ee
  35ea32: 4603         	mov	r3, r0
  35ea34: 9304         	str	r3, [sp, #0x10]
  35ea36: 9b01         	ldr	r3, [sp, #0x4]
  35ea38: f103 0458    	add.w	r4, r3, #0x58
  35ea3c: 9805         	ldr	r0, [sp, #0x14]
  35ea3e: 2101         	movs	r1, #0x1
  35ea40: f23b fb6e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23b6dc
  35ea44: 4603         	mov	r3, r0
  35ea46: 4618         	mov	r0, r3
  35ea48: f23a ff6e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23aedc
  35ea4c: 4603         	mov	r3, r0
  35ea4e: 4620         	mov	r0, r4
  35ea50: 4619         	mov	r1, r3
  35ea52: f057 f20d    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x45741a
  35ea56: 9805         	ldr	r0, [sp, #0x14]
  35ea58: 2102         	movs	r1, #0x2
  35ea5a: f23b fb61    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23b6c2
  35ea5e: 4603         	mov	r3, r0
  35ea60: 4618         	mov	r0, r3
  35ea62: f77e f907    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x81df2
  35ea66: 4602         	mov	r2, r0
  35ea68: 9b01         	ldr	r3, [sp, #0x4]
  35ea6a: 65da         	str	r2, [r3, #0x5c]
  35ea6c: 9805         	ldr	r0, [sp, #0x14]
  35ea6e: 2103         	movs	r1, #0x3
  35ea70: f23b fb56    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23b6ac
  35ea74: 4603         	mov	r3, r0
  35ea76: 4618         	mov	r0, r3
  35ea78: f78e f9ec    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x71c28
  35ea7c: 4602         	mov	r2, r0
  35ea7e: 9b01         	ldr	r3, [sp, #0x4]
  35ea80: 661a         	str	r2, [r3, #0x60]
  35ea82: 9804         	ldr	r0, [sp, #0x10]
  35ea84: f23a ff50    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23aea0
  35ea88: 4604         	mov	r4, r0
  35ea8a: ab02         	add	r3, sp, #0x8
  35ea8c: 4618         	mov	r0, r3
  35ea8e: f02b f4b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42b962
  35ea92: aa03         	add	r2, sp, #0xc
  35ea94: ab02         	add	r3, sp, #0x8
  35ea96: 4610         	mov	r0, r2
  35ea98: 4621         	mov	r1, r4
  35ea9a: 461a         	mov	r2, r3
  35ea9c: f057 f7e0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x457fc0
  35eaa0: ab03         	add	r3, sp, #0xc
  35eaa2: 9801         	ldr	r0, [sp, #0x4]
  35eaa4: 4619         	mov	r1, r3
  35eaa6: f000 f8f1    	bl	0x35ec8c <MapManager::loadMap(std::string)> @ imm = #0x1e2
  35eaaa: ab03         	add	r3, sp, #0xc
  35eaac: 4618         	mov	r0, r3
  35eaae: f056 f731    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456e62
  35eab2: ab02         	add	r3, sp, #0x8
  35eab4: 4618         	mov	r0, r3
  35eab6: f02b f4a1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42b942
  35eaba: bf00         	nop
  35eabc: 2301         	movs	r3, #0x1
  35eabe: e020         	b	0x35eb02 <MapManager::init()+0x1ae> @ imm = #0x40
  35eac0: ab03         	add	r3, sp, #0xc
  35eac2: 4618         	mov	r0, r3
  35eac4: f056 f726    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456e4c
  35eac8: e7ff         	b	0x35eaca <MapManager::init()+0x176> @ imm = #-0x2
  35eaca: ab02         	add	r3, sp, #0x8
  35eacc: 4618         	mov	r0, r3
  35eace: f02b f495    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42b92a
  35ead2: f029 f2eb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4295d6
  35ead6: ab03         	add	r3, sp, #0xc
  35ead8: 4618         	mov	r0, r3
  35eada: f056 f71b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456e36
  35eade: e7ff         	b	0x35eae0 <MapManager::init()+0x18c> @ imm = #-0x2
  35eae0: ab02         	add	r3, sp, #0x8
  35eae2: 4618         	mov	r0, r3
  35eae4: f02b f48a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42b914
  35eae8: f029 f2e0    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4295c0
  35eaec: ab03         	add	r3, sp, #0xc
  35eaee: 4618         	mov	r0, r3
  35eaf0: f056 f710    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456e20
  35eaf4: e7ff         	b	0x35eaf6 <MapManager::init()+0x1a2> @ imm = #-0x2
  35eaf6: ab02         	add	r3, sp, #0x8
  35eaf8: 4618         	mov	r0, r3
  35eafa: f02b f47f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42b8fe
  35eafe: f029 f2d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4295aa
  35eb02: 4618         	mov	r0, r3
  35eb04: b006         	add	sp, #0x18
  35eb06: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35eb07); words below are literal-pool data ---
  35eb08: 40ac         	lsls	r4, r5
  35eb0a: 005d         	lsls	r5, r3, #0x1
  35eb0c: e31a         	b	0x35f144 <MapManager::loadMap(std::string)+0x4b8> @ imm = #0x634
  35eb0e: 0046         	lsls	r6, r0, #0x1
  35eb10: daa0         	bge	0x35ea54 <MapManager::init()+0x100> @ imm = #-0xc0
  35eb12: ffff e2f0    	vrshr.u64	q15, q8, #0x1
  35eb16: 0046         	lsls	r6, r0, #0x1
  35eb18: e2ce         	b	0x35f0b8 <MapManager::loadMap(std::string)+0x42c> @ imm = #0x59c
  35eb1a: 0046         	lsls	r6, r0, #0x1
  35eb1c: d7cc         	bvc	0x35eab8 <MapManager::init()+0x164> @ imm = #-0x68
  35eb1e: ffff d958    	vqrshrn.u64	d29, q4, #0x1
  35eb22: ffff b500    	<unknown>

// ==== MapManager::~MapManager
//      file offset 0x35eb24 (= ELF address; Ghidra 0x36eb24), 144 bytes, Thumb-2
  35eb24: b500         	push	{lr}
  35eb26: b083         	sub	sp, #0xc
  35eb28: 9001         	str	r0, [sp, #0x4]
  35eb2a: 4920         	ldr	r1, [pc, #0x80]         @ 0x35ebac <MapManager::~MapManager()+0x88>
  35eb2c: 4479         	add	r1, pc
  35eb2e: 9b01         	ldr	r3, [sp, #0x4]
  35eb30: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x35ebb0 <MapManager::~MapManager()+0x8c>
  35eb32: 588a         	ldr	r2, [r1, r2]
  35eb34: 3208         	adds	r2, #0x8
  35eb36: 601a         	str	r2, [r3]
  35eb38: 9b01         	ldr	r3, [sp, #0x4]
  35eb3a: 2200         	movs	r2, #0x0
  35eb3c: 635a         	str	r2, [r3, #0x34]
  35eb3e: 9b01         	ldr	r3, [sp, #0x4]
  35eb40: 6bdb         	ldr	r3, [r3, #0x3c]
  35eb42: 4618         	mov	r0, r3
  35eb44: f239 f9b8    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x239370
  35eb48: 9b01         	ldr	r3, [sp, #0x4]
  35eb4a: 69db         	ldr	r3, [r3, #0x1c]
  35eb4c: 4618         	mov	r0, r3
  35eb4e: f239 f9b3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x239366
  35eb52: 9b01         	ldr	r3, [sp, #0x4]
  35eb54: 6a1b         	ldr	r3, [r3, #0x20]
  35eb56: 4618         	mov	r0, r3
  35eb58: f239 f9ae    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23935c
  35eb5c: 9b01         	ldr	r3, [sp, #0x4]
  35eb5e: 6a5b         	ldr	r3, [r3, #0x24]
  35eb60: 4618         	mov	r0, r3
  35eb62: f239 f9a9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x239352
  35eb66: 9b01         	ldr	r3, [sp, #0x4]
  35eb68: 6a9b         	ldr	r3, [r3, #0x28]
  35eb6a: 4618         	mov	r0, r3
  35eb6c: f239 f9a4    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x239348
  35eb70: 9b01         	ldr	r3, [sp, #0x4]
  35eb72: 6adb         	ldr	r3, [r3, #0x2c]
  35eb74: 4618         	mov	r0, r3
  35eb76: f239 f99f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23933e
  35eb7a: 9b01         	ldr	r3, [sp, #0x4]
  35eb7c: 6b9b         	ldr	r3, [r3, #0x38]
  35eb7e: 4618         	mov	r0, r3
  35eb80: f239 f99a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x239334
  35eb84: 9b01         	ldr	r3, [sp, #0x4]
  35eb86: 3358         	adds	r3, #0x58
  35eb88: 4618         	mov	r0, r3
  35eb8a: f056 f6c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x456d86
  35eb8e: 9b01         	ldr	r3, [sp, #0x4]
  35eb90: 4618         	mov	r0, r3
  35eb92: f239 f91d    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x23923a
  35eb96: 2300         	movs	r3, #0x0
  35eb98: 2b00         	cmp	r3, #0x0
  35eb9a: d002         	beq	0x35eba2 <MapManager::~MapManager()+0x7e> @ imm = #0x4
  35eb9c: 9801         	ldr	r0, [sp, #0x4]
  35eb9e: f029 f281    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x429502
  35eba2: 9b01         	ldr	r3, [sp, #0x4]
  35eba4: 4618         	mov	r0, r3
  35eba6: b003         	add	sp, #0xc
  35eba8: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x35ebab); words below are literal-pool data ---
  35ebac: 3edc         	subs	r6, #0xdc
  35ebae: 005d         	lsls	r5, r3, #0x1
  35ebb0: db90         	blt	0x35ead4 <MapManager::init()+0x180> @ imm = #-0xe0
  35ebb2: ffff b500    	<unknown>

// ==== MapManager::~MapManager
//      file offset 0x35ebb4 (= ELF address; Ghidra 0x36ebb4), 28 bytes, Thumb-2
  35ebb4: b500         	push	{lr}
  35ebb6: b083         	sub	sp, #0xc
  35ebb8: 9001         	str	r0, [sp, #0x4]
  35ebba: 9801         	ldr	r0, [sp, #0x4]
  35ebbc: f7ff ffb2    	bl	0x35eb24 <MapManager::~MapManager()> @ imm = #-0x9c
  35ebc0: 9801         	ldr	r0, [sp, #0x4]
  35ebc2: f029 f26f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4294de
  35ebc6: 9b01         	ldr	r3, [sp, #0x4]
  35ebc8: 4618         	mov	r0, r3
  35ebca: b003         	add	sp, #0xc
  35ebcc: f85d fb04    	ldr	pc, [sp], #4

// ==== MapManager::getBackground
//      file offset 0x35ebd0 (= ELF address; Ghidra 0x36ebd0), 28 bytes, Thumb-2
  35ebd0: b500         	push	{lr}
  35ebd2: b083         	sub	sp, #0xc
  35ebd4: 9001         	str	r0, [sp, #0x4]
  35ebd6: 9100         	str	r1, [sp]
  35ebd8: 9b00         	ldr	r3, [sp]
  35ebda: 3358         	adds	r3, #0x58
  35ebdc: 9801         	ldr	r0, [sp, #0x4]
  35ebde: 4619         	mov	r1, r3
  35ebe0: f057 f482    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x457904
  35ebe4: 9801         	ldr	r0, [sp, #0x4]
  35ebe6: b003         	add	sp, #0xc
  35ebe8: f85d fb04    	ldr	pc, [sp], #4

// ==== MapManager::getGravityFactor
//      file offset 0x35ebec (= ELF address; Ghidra 0x36ebec), 14 bytes, Thumb-2
  35ebec: b082         	sub	sp, #0x8
  35ebee: 9001         	str	r0, [sp, #0x4]
  35ebf0: 9b01         	ldr	r3, [sp, #0x4]
  35ebf2: 6ddb         	ldr	r3, [r3, #0x5c]
  35ebf4: 4618         	mov	r0, r3
  35ebf6: b002         	add	sp, #0x8
  35ebf8: 4770         	bx	lr

// ==== MapManager::updatePlayerModifiers
//      file offset 0x35ebfc (= ELF address; Ghidra 0x36ebfc), 144 bytes, Thumb-2
  35ebfc: b510         	push	{r4, lr}
  35ebfe: b082         	sub	sp, #0x8
  35ec00: 9001         	str	r0, [sp, #0x4]
  35ec02: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x35ec80 <MapManager::updatePlayerModifiers()+0x84>
  35ec04: 447c         	add	r4, pc
  35ec06: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec08: 58e3         	ldr	r3, [r4, r3]
  35ec0a: 681b         	ldr	r3, [r3]
  35ec0c: 2b00         	cmp	r3, #0x0
  35ec0e: d035         	beq	0x35ec7c <MapManager::updatePlayerModifiers()+0x80> @ imm = #0x6a
  35ec10: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x35ec88 <MapManager::updatePlayerModifiers()+0x8c>
  35ec12: 58e3         	ldr	r3, [r4, r3]
  35ec14: edd3 7a00    	vldr	s15, [r3]
  35ec18: eef5 7a40    	vcmp.f32	s15, #0
  35ec1c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35ec20: d11c         	bne	0x35ec5c <MapManager::updatePlayerModifiers()+0x60> @ imm = #0x38
  35ec22: 4b18         	ldr	r3, [pc, #0x60]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec24: 58e3         	ldr	r3, [r4, r3]
  35ec26: 681b         	ldr	r3, [r3]
  35ec28: 681b         	ldr	r3, [r3]
  35ec2a: f503 73f0    	add.w	r3, r3, #0x1e0
  35ec2e: 681b         	ldr	r3, [r3]
  35ec30: 4a14         	ldr	r2, [pc, #0x50]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec32: 58a2         	ldr	r2, [r4, r2]
  35ec34: 6812         	ldr	r2, [r2]
  35ec36: 4610         	mov	r0, r2
  35ec38: 2101         	movs	r1, #0x1
  35ec3a: 4798         	blx	r3
  35ec3c: 4b11         	ldr	r3, [pc, #0x44]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec3e: 58e3         	ldr	r3, [r4, r3]
  35ec40: 681b         	ldr	r3, [r3]
  35ec42: 681b         	ldr	r3, [r3]
  35ec44: f503 7329    	add.w	r3, r3, #0x2a4
  35ec48: 681b         	ldr	r3, [r3]
  35ec4a: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec4c: 58a2         	ldr	r2, [r4, r2]
  35ec4e: 6812         	ldr	r2, [r2]
  35ec50: 4610         	mov	r0, r2
  35ec52: f04f 0100    	mov.w	r1, #0x0
  35ec56: f2c4 21c8    	movt	r1, #0x42c8
  35ec5a: 4798         	blx	r3
  35ec5c: 4b09         	ldr	r3, [pc, #0x24]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec5e: 58e3         	ldr	r3, [r4, r3]
  35ec60: 681b         	ldr	r3, [r3]
  35ec62: 681b         	ldr	r3, [r3]
  35ec64: f503 7322    	add.w	r3, r3, #0x288
  35ec68: 681b         	ldr	r3, [r3]
  35ec6a: 4a06         	ldr	r2, [pc, #0x18]         @ 0x35ec84 <MapManager::updatePlayerModifiers()+0x88>
  35ec6c: 58a2         	ldr	r2, [r4, r2]
  35ec6e: 6812         	ldr	r2, [r2]
  35ec70: 4611         	mov	r1, r2
  35ec72: 9a01         	ldr	r2, [sp, #0x4]
  35ec74: 6e12         	ldr	r2, [r2, #0x60]
  35ec76: 4608         	mov	r0, r1
  35ec78: 4611         	mov	r1, r2
  35ec7a: 4798         	blx	r3
  35ec7c: b002         	add	sp, #0x8
  35ec7e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35ec7f); words below are literal-pool data ---
  35ec80: 3e04         	subs	r6, #0x4
  35ec82: 005d         	lsls	r5, r3, #0x1
  35ec84: d784         	bvc	0x35eb90 <MapManager::~MapManager()+0x6c> @ imm = #-0xf8
  35ec86: ffff da30    	<unknown>
  35ec8a: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== MapManager::loadMap
//      file offset 0x35ec8c (= ELF address; Ghidra 0x36ec8c), 4348 bytes, Thumb-2
  35ec8c: b530         	push	{r4, r5, lr}
  35ec8e: b093         	sub	sp, #0x4c
  35ec90: 9005         	str	r0, [sp, #0x14]
  35ec92: 9104         	str	r1, [sp, #0x10]
  35ec94: f8df 4af4    	ldr.w	r4, [pc, #0xaf4]        @ 0x35f78c <MapManager::loadMap(std::string)+0xb00>
  35ec98: 447c         	add	r4, pc
  35ec9a: f23b f84b    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x23b096
  35ec9e: 4602         	mov	r2, r0
  35eca0: 9b05         	ldr	r3, [sp, #0x14]
  35eca2: 621a         	str	r2, [r3, #0x20]
  35eca4: 9b05         	ldr	r3, [sp, #0x14]
  35eca6: 6a1b         	ldr	r3, [r3, #0x20]
  35eca8: 4618         	mov	r0, r3
  35ecaa: f239 f91d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23923a
  35ecae: f238 fb7f    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x2386fe
  35ecb2: 4602         	mov	r2, r0
  35ecb4: 9b05         	ldr	r3, [sp, #0x14]
  35ecb6: 629a         	str	r2, [r3, #0x28]
  35ecb8: 9b05         	ldr	r3, [sp, #0x14]
  35ecba: 6a9b         	ldr	r3, [r3, #0x28]
  35ecbc: 4618         	mov	r0, r3
  35ecbe: f239 f913    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x239226
  35ecc2: 9b05         	ldr	r3, [sp, #0x14]
  35ecc4: 22c8         	movs	r2, #0xc8
  35ecc6: 64da         	str	r2, [r3, #0x4c]
  35ecc8: f238 fb72    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x2386e4
  35eccc: 4602         	mov	r2, r0
  35ecce: 9b05         	ldr	r3, [sp, #0x14]
  35ecd0: 625a         	str	r2, [r3, #0x24]
  35ecd2: 9b05         	ldr	r3, [sp, #0x14]
  35ecd4: 6a5b         	ldr	r3, [r3, #0x24]
  35ecd6: 4618         	mov	r0, r3
  35ecd8: f239 f906    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x23920c
  35ecdc: 9b05         	ldr	r3, [sp, #0x14]
  35ecde: 6a5d         	ldr	r5, [r3, #0x24]
  35ece0: 2009         	movs	r0, #0x9
  35ece2: f786 f811    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x79fde
  35ece6: 4603         	mov	r3, r0
  35ece8: 4628         	mov	r0, r5
  35ecea: 4619         	mov	r1, r3
  35ecec: 2214         	movs	r2, #0x14
  35ecee: f236 f89d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23613a
  35ecf2: 9b05         	ldr	r3, [sp, #0x14]
  35ecf4: 6a5d         	ldr	r5, [r3, #0x24]
  35ecf6: 2008         	movs	r0, #0x8
  35ecf8: f786 f806    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x79ff4
  35ecfc: 4603         	mov	r3, r0
  35ecfe: 4628         	mov	r0, r5
  35ed00: 4619         	mov	r1, r3
  35ed02: 2215         	movs	r2, #0x15
  35ed04: f236 f892    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x236124
  35ed08: 9b05         	ldr	r3, [sp, #0x14]
  35ed0a: 6a5d         	ldr	r5, [r3, #0x24]
  35ed0c: 2001         	movs	r0, #0x1
  35ed0e: f785 fffb    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a00a
  35ed12: 4603         	mov	r3, r0
  35ed14: 4628         	mov	r0, r5
  35ed16: 4619         	mov	r1, r3
  35ed18: 2216         	movs	r2, #0x16
  35ed1a: f236 f887    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23610e
  35ed1e: 9b05         	ldr	r3, [sp, #0x14]
  35ed20: 6a5d         	ldr	r5, [r3, #0x24]
  35ed22: 2013         	movs	r0, #0x13
  35ed24: f785 fff0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a020
  35ed28: 4603         	mov	r3, r0
  35ed2a: 4628         	mov	r0, r5
  35ed2c: 4619         	mov	r1, r3
  35ed2e: 2217         	movs	r2, #0x17
  35ed30: f236 f87c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2360f8
  35ed34: 9b05         	ldr	r3, [sp, #0x14]
  35ed36: 6a5d         	ldr	r5, [r3, #0x24]
  35ed38: 2013         	movs	r0, #0x13
  35ed3a: f785 ffe5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a036
  35ed3e: 4603         	mov	r3, r0
  35ed40: 4628         	mov	r0, r5
  35ed42: 4619         	mov	r1, r3
  35ed44: 2218         	movs	r2, #0x18
  35ed46: f236 f871    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2360e2
  35ed4a: 9b05         	ldr	r3, [sp, #0x14]
  35ed4c: 6a5d         	ldr	r5, [r3, #0x24]
  35ed4e: 200a         	movs	r0, #0xa
  35ed50: f785 ffda    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a04c
  35ed54: 4603         	mov	r3, r0
  35ed56: 4628         	mov	r0, r5
  35ed58: 4619         	mov	r1, r3
  35ed5a: 2219         	movs	r2, #0x19
  35ed5c: f236 f866    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2360cc
  35ed60: 9b05         	ldr	r3, [sp, #0x14]
  35ed62: 6a5d         	ldr	r5, [r3, #0x24]
  35ed64: 200b         	movs	r0, #0xb
  35ed66: f785 ffcf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a062
  35ed6a: 4603         	mov	r3, r0
  35ed6c: 4628         	mov	r0, r5
  35ed6e: 4619         	mov	r1, r3
  35ed70: 221a         	movs	r2, #0x1a
  35ed72: f236 f85b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2360b6
  35ed76: 9b05         	ldr	r3, [sp, #0x14]
  35ed78: 6a5d         	ldr	r5, [r3, #0x24]
  35ed7a: 200d         	movs	r0, #0xd
  35ed7c: f785 ffc4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a078
  35ed80: 4603         	mov	r3, r0
  35ed82: 4628         	mov	r0, r5
  35ed84: 4619         	mov	r1, r3
  35ed86: 221b         	movs	r2, #0x1b
  35ed88: f236 f850    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2360a0
  35ed8c: 9b05         	ldr	r3, [sp, #0x14]
  35ed8e: 6a5d         	ldr	r5, [r3, #0x24]
  35ed90: 200c         	movs	r0, #0xc
  35ed92: f785 ffb9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a08e
  35ed96: 4603         	mov	r3, r0
  35ed98: 4628         	mov	r0, r5
  35ed9a: 4619         	mov	r1, r3
  35ed9c: 221c         	movs	r2, #0x1c
  35ed9e: f236 f845    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23608a
  35eda2: 9b05         	ldr	r3, [sp, #0x14]
  35eda4: 6a5d         	ldr	r5, [r3, #0x24]
  35eda6: 201d         	movs	r0, #0x1d
  35eda8: f785 ffae    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a0a4
  35edac: 4603         	mov	r3, r0
  35edae: 4628         	mov	r0, r5
  35edb0: 4619         	mov	r1, r3
  35edb2: 221d         	movs	r2, #0x1d
  35edb4: f236 f83a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x236074
  35edb8: 9b05         	ldr	r3, [sp, #0x14]
  35edba: 6a5d         	ldr	r5, [r3, #0x24]
  35edbc: 201b         	movs	r0, #0x1b
  35edbe: f785 ffa3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a0ba
  35edc2: 4603         	mov	r3, r0
  35edc4: 4628         	mov	r0, r5
  35edc6: 4619         	mov	r1, r3
  35edc8: 221e         	movs	r2, #0x1e
  35edca: f236 f82f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23605e
  35edce: 9b05         	ldr	r3, [sp, #0x14]
  35edd0: 6a5d         	ldr	r5, [r3, #0x24]
  35edd2: 2005         	movs	r0, #0x5
  35edd4: f785 ff98    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a0d0
  35edd8: 4603         	mov	r3, r0
  35edda: 4628         	mov	r0, r5
  35eddc: 4619         	mov	r1, r3
  35edde: 221f         	movs	r2, #0x1f
  35ede0: f236 f824    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x236048
  35ede4: 9b05         	ldr	r3, [sp, #0x14]
  35ede6: 6a5d         	ldr	r5, [r3, #0x24]
  35ede8: 2013         	movs	r0, #0x13
  35edea: f785 ff8d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a0e6
  35edee: 4603         	mov	r3, r0
  35edf0: 4628         	mov	r0, r5
  35edf2: 4619         	mov	r1, r3
  35edf4: 2220         	movs	r2, #0x20
  35edf6: f236 f819    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x236032
  35edfa: 9b05         	ldr	r3, [sp, #0x14]
  35edfc: 6a5d         	ldr	r5, [r3, #0x24]
  35edfe: 2013         	movs	r0, #0x13
  35ee00: f785 ff82    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a0fc
  35ee04: 4603         	mov	r3, r0
  35ee06: 4628         	mov	r0, r5
  35ee08: 4619         	mov	r1, r3
  35ee0a: 2221         	movs	r2, #0x21
  35ee0c: f236 f80e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23601c
  35ee10: 9b05         	ldr	r3, [sp, #0x14]
  35ee12: 6a5d         	ldr	r5, [r3, #0x24]
  35ee14: 2013         	movs	r0, #0x13
  35ee16: f785 ff77    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a112
  35ee1a: 4603         	mov	r3, r0
  35ee1c: 4628         	mov	r0, r5
  35ee1e: 4619         	mov	r1, r3
  35ee20: 2222         	movs	r2, #0x22
  35ee22: f236 f803    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x236006
  35ee26: 9b05         	ldr	r3, [sp, #0x14]
  35ee28: 6a5d         	ldr	r5, [r3, #0x24]
  35ee2a: 2013         	movs	r0, #0x13
  35ee2c: f785 ff6c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a128
  35ee30: 4603         	mov	r3, r0
  35ee32: 4628         	mov	r0, r5
  35ee34: 4619         	mov	r1, r3
  35ee36: 2223         	movs	r2, #0x23
  35ee38: f235 fff8    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ff0
  35ee3c: 9b05         	ldr	r3, [sp, #0x14]
  35ee3e: 6a5d         	ldr	r5, [r3, #0x24]
  35ee40: 2020         	movs	r0, #0x20
  35ee42: f785 ff61    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a13e
  35ee46: 4603         	mov	r3, r0
  35ee48: 4628         	mov	r0, r5
  35ee4a: 4619         	mov	r1, r3
  35ee4c: 2224         	movs	r2, #0x24
  35ee4e: f235 ffed    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235fda
  35ee52: 9b05         	ldr	r3, [sp, #0x14]
  35ee54: 6a5d         	ldr	r5, [r3, #0x24]
  35ee56: 2013         	movs	r0, #0x13
  35ee58: f785 ff56    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a154
  35ee5c: 4603         	mov	r3, r0
  35ee5e: 4628         	mov	r0, r5
  35ee60: 4619         	mov	r1, r3
  35ee62: 2225         	movs	r2, #0x25
  35ee64: f235 ffe2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235fc4
  35ee68: 9b05         	ldr	r3, [sp, #0x14]
  35ee6a: 6a5d         	ldr	r5, [r3, #0x24]
  35ee6c: 2013         	movs	r0, #0x13
  35ee6e: f785 ff4b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a16a
  35ee72: 4603         	mov	r3, r0
  35ee74: 4628         	mov	r0, r5
  35ee76: 4619         	mov	r1, r3
  35ee78: 2226         	movs	r2, #0x26
  35ee7a: f235 ffd7    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235fae
  35ee7e: 9b05         	ldr	r3, [sp, #0x14]
  35ee80: 6a5d         	ldr	r5, [r3, #0x24]
  35ee82: 2013         	movs	r0, #0x13
  35ee84: f785 ff40    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a180
  35ee88: 4603         	mov	r3, r0
  35ee8a: 4628         	mov	r0, r5
  35ee8c: 4619         	mov	r1, r3
  35ee8e: 2227         	movs	r2, #0x27
  35ee90: f235 ffcc    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f98
  35ee94: 9b05         	ldr	r3, [sp, #0x14]
  35ee96: 6a5d         	ldr	r5, [r3, #0x24]
  35ee98: 2013         	movs	r0, #0x13
  35ee9a: f785 ff35    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a196
  35ee9e: 4603         	mov	r3, r0
  35eea0: 4628         	mov	r0, r5
  35eea2: 4619         	mov	r1, r3
  35eea4: 2228         	movs	r2, #0x28
  35eea6: f235 ffc1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f82
  35eeaa: 9b05         	ldr	r3, [sp, #0x14]
  35eeac: 6a5d         	ldr	r5, [r3, #0x24]
  35eeae: 2013         	movs	r0, #0x13
  35eeb0: f785 ff2a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a1ac
  35eeb4: 4603         	mov	r3, r0
  35eeb6: 4628         	mov	r0, r5
  35eeb8: 4619         	mov	r1, r3
  35eeba: 2229         	movs	r2, #0x29
  35eebc: f235 ffb6    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f6c
  35eec0: 9b05         	ldr	r3, [sp, #0x14]
  35eec2: 6a5d         	ldr	r5, [r3, #0x24]
  35eec4: 2013         	movs	r0, #0x13
  35eec6: f785 ff1f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a1c2
  35eeca: 4603         	mov	r3, r0
  35eecc: 4628         	mov	r0, r5
  35eece: 4619         	mov	r1, r3
  35eed0: 222a         	movs	r2, #0x2a
  35eed2: f235 ffab    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f56
  35eed6: 9b05         	ldr	r3, [sp, #0x14]
  35eed8: 6a5d         	ldr	r5, [r3, #0x24]
  35eeda: 200f         	movs	r0, #0xf
  35eedc: f785 ff14    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a1d8
  35eee0: 4603         	mov	r3, r0
  35eee2: 4628         	mov	r0, r5
  35eee4: 4619         	mov	r1, r3
  35eee6: 222b         	movs	r2, #0x2b
  35eee8: f235 ffa0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f40
  35eeec: 9b05         	ldr	r3, [sp, #0x14]
  35eeee: 6a5d         	ldr	r5, [r3, #0x24]
  35eef0: 2001         	movs	r0, #0x1
  35eef2: f785 ff09    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a1ee
  35eef6: 4603         	mov	r3, r0
  35eef8: 4628         	mov	r0, r5
  35eefa: 4619         	mov	r1, r3
  35eefc: 222c         	movs	r2, #0x2c
  35eefe: f235 ff95    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f2a
  35ef02: 9b05         	ldr	r3, [sp, #0x14]
  35ef04: 6a5d         	ldr	r5, [r3, #0x24]
  35ef06: 200e         	movs	r0, #0xe
  35ef08: f785 fefe    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a204
  35ef0c: 4603         	mov	r3, r0
  35ef0e: 4628         	mov	r0, r5
  35ef10: 4619         	mov	r1, r3
  35ef12: 222d         	movs	r2, #0x2d
  35ef14: f235 ff8a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235f14
  35ef18: 9b05         	ldr	r3, [sp, #0x14]
  35ef1a: 6a5d         	ldr	r5, [r3, #0x24]
  35ef1c: 2004         	movs	r0, #0x4
  35ef1e: f785 fef3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a21a
  35ef22: 4603         	mov	r3, r0
  35ef24: 4628         	mov	r0, r5
  35ef26: 4619         	mov	r1, r3
  35ef28: 222e         	movs	r2, #0x2e
  35ef2a: f235 ff7f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235efe
  35ef2e: 9b05         	ldr	r3, [sp, #0x14]
  35ef30: 6a5d         	ldr	r5, [r3, #0x24]
  35ef32: 200f         	movs	r0, #0xf
  35ef34: f785 fee8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a230
  35ef38: 4603         	mov	r3, r0
  35ef3a: 4628         	mov	r0, r5
  35ef3c: 4619         	mov	r1, r3
  35ef3e: 222f         	movs	r2, #0x2f
  35ef40: f235 ff74    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ee8
  35ef44: 9b05         	ldr	r3, [sp, #0x14]
  35ef46: 6a5d         	ldr	r5, [r3, #0x24]
  35ef48: 200e         	movs	r0, #0xe
  35ef4a: f785 fedd    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a246
  35ef4e: 4603         	mov	r3, r0
  35ef50: 4628         	mov	r0, r5
  35ef52: 4619         	mov	r1, r3
  35ef54: 2230         	movs	r2, #0x30
  35ef56: f235 ff69    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ed2
  35ef5a: 9b05         	ldr	r3, [sp, #0x14]
  35ef5c: 6a5d         	ldr	r5, [r3, #0x24]
  35ef5e: 200d         	movs	r0, #0xd
  35ef60: f785 fed2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a25c
  35ef64: 4603         	mov	r3, r0
  35ef66: 4628         	mov	r0, r5
  35ef68: 4619         	mov	r1, r3
  35ef6a: 2231         	movs	r2, #0x31
  35ef6c: f235 ff5e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ebc
  35ef70: 9b05         	ldr	r3, [sp, #0x14]
  35ef72: 6a5d         	ldr	r5, [r3, #0x24]
  35ef74: 200c         	movs	r0, #0xc
  35ef76: f785 fec7    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a272
  35ef7a: 4603         	mov	r3, r0
  35ef7c: 4628         	mov	r0, r5
  35ef7e: 4619         	mov	r1, r3
  35ef80: 2232         	movs	r2, #0x32
  35ef82: f235 ff53    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ea6
  35ef86: 9b05         	ldr	r3, [sp, #0x14]
  35ef88: 6a5d         	ldr	r5, [r3, #0x24]
  35ef8a: 2001         	movs	r0, #0x1
  35ef8c: f785 febc    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a288
  35ef90: 4603         	mov	r3, r0
  35ef92: 4628         	mov	r0, r5
  35ef94: 4619         	mov	r1, r3
  35ef96: 2233         	movs	r2, #0x33
  35ef98: f235 ff48    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e90
  35ef9c: 9b05         	ldr	r3, [sp, #0x14]
  35ef9e: 6a5d         	ldr	r5, [r3, #0x24]
  35efa0: 2001         	movs	r0, #0x1
  35efa2: f785 feb1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a29e
  35efa6: 4603         	mov	r3, r0
  35efa8: 4628         	mov	r0, r5
  35efaa: 4619         	mov	r1, r3
  35efac: 2234         	movs	r2, #0x34
  35efae: f235 ff3d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e7a
  35efb2: 9b05         	ldr	r3, [sp, #0x14]
  35efb4: 6a5d         	ldr	r5, [r3, #0x24]
  35efb6: 200f         	movs	r0, #0xf
  35efb8: f785 fea6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a2b4
  35efbc: 4603         	mov	r3, r0
  35efbe: 4628         	mov	r0, r5
  35efc0: 4619         	mov	r1, r3
  35efc2: 2235         	movs	r2, #0x35
  35efc4: f235 ff32    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e64
  35efc8: 9b05         	ldr	r3, [sp, #0x14]
  35efca: 6a5d         	ldr	r5, [r3, #0x24]
  35efcc: 200e         	movs	r0, #0xe
  35efce: f785 fe9b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a2ca
  35efd2: 4603         	mov	r3, r0
  35efd4: 4628         	mov	r0, r5
  35efd6: 4619         	mov	r1, r3
  35efd8: 2236         	movs	r2, #0x36
  35efda: f235 ff27    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e4e
  35efde: 9b05         	ldr	r3, [sp, #0x14]
  35efe0: 6a5d         	ldr	r5, [r3, #0x24]
  35efe2: 200d         	movs	r0, #0xd
  35efe4: f785 fe90    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a2e0
  35efe8: 4603         	mov	r3, r0
  35efea: 4628         	mov	r0, r5
  35efec: 4619         	mov	r1, r3
  35efee: 2237         	movs	r2, #0x37
  35eff0: f235 ff1c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e38
  35eff4: 9b05         	ldr	r3, [sp, #0x14]
  35eff6: 6a5d         	ldr	r5, [r3, #0x24]
  35eff8: 200c         	movs	r0, #0xc
  35effa: f785 fe85    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a2f6
  35effe: 4603         	mov	r3, r0
  35f000: 4628         	mov	r0, r5
  35f002: 4619         	mov	r1, r3
  35f004: 2238         	movs	r2, #0x38
  35f006: f235 ff11    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e22
  35f00a: 9b05         	ldr	r3, [sp, #0x14]
  35f00c: 6a5d         	ldr	r5, [r3, #0x24]
  35f00e: 2013         	movs	r0, #0x13
  35f010: f785 fe7a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a30c
  35f014: 4603         	mov	r3, r0
  35f016: 4628         	mov	r0, r5
  35f018: 4619         	mov	r1, r3
  35f01a: 2239         	movs	r2, #0x39
  35f01c: f235 ff06    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235e0c
  35f020: 9b05         	ldr	r3, [sp, #0x14]
  35f022: 6a5d         	ldr	r5, [r3, #0x24]
  35f024: 2006         	movs	r0, #0x6
  35f026: f785 fe6f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a322
  35f02a: 4603         	mov	r3, r0
  35f02c: 4628         	mov	r0, r5
  35f02e: 4619         	mov	r1, r3
  35f030: 223a         	movs	r2, #0x3a
  35f032: f235 fefb    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235df6
  35f036: 9b05         	ldr	r3, [sp, #0x14]
  35f038: 6a5d         	ldr	r5, [r3, #0x24]
  35f03a: 2007         	movs	r0, #0x7
  35f03c: f785 fe64    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a338
  35f040: 4603         	mov	r3, r0
  35f042: 4628         	mov	r0, r5
  35f044: 4619         	mov	r1, r3
  35f046: 223b         	movs	r2, #0x3b
  35f048: f235 fef0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235de0
  35f04c: 9b05         	ldr	r3, [sp, #0x14]
  35f04e: 6a5d         	ldr	r5, [r3, #0x24]
  35f050: 2001         	movs	r0, #0x1
  35f052: f785 fe59    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a34e
  35f056: 4603         	mov	r3, r0
  35f058: 4628         	mov	r0, r5
  35f05a: 4619         	mov	r1, r3
  35f05c: 223c         	movs	r2, #0x3c
  35f05e: f235 fee5    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235dca
  35f062: 9b05         	ldr	r3, [sp, #0x14]
  35f064: 6a5d         	ldr	r5, [r3, #0x24]
  35f066: 2014         	movs	r0, #0x14
  35f068: f785 fe4e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a364
  35f06c: 4603         	mov	r3, r0
  35f06e: 4628         	mov	r0, r5
  35f070: 4619         	mov	r1, r3
  35f072: 223d         	movs	r2, #0x3d
  35f074: f235 feda    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235db4
  35f078: 9b05         	ldr	r3, [sp, #0x14]
  35f07a: 6a5d         	ldr	r5, [r3, #0x24]
  35f07c: 2014         	movs	r0, #0x14
  35f07e: f785 fe43    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a37a
  35f082: 4603         	mov	r3, r0
  35f084: 4628         	mov	r0, r5
  35f086: 4619         	mov	r1, r3
  35f088: 223e         	movs	r2, #0x3e
  35f08a: f235 fecf    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d9e
  35f08e: 9b05         	ldr	r3, [sp, #0x14]
  35f090: 6a5d         	ldr	r5, [r3, #0x24]
  35f092: 2014         	movs	r0, #0x14
  35f094: f785 fe38    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a390
  35f098: 4603         	mov	r3, r0
  35f09a: 4628         	mov	r0, r5
  35f09c: 4619         	mov	r1, r3
  35f09e: 223f         	movs	r2, #0x3f
  35f0a0: f235 fec4    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d88
  35f0a4: 9b05         	ldr	r3, [sp, #0x14]
  35f0a6: 6a5d         	ldr	r5, [r3, #0x24]
  35f0a8: 2018         	movs	r0, #0x18
  35f0aa: f785 fe2d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a3a6
  35f0ae: 4603         	mov	r3, r0
  35f0b0: 4628         	mov	r0, r5
  35f0b2: 4619         	mov	r1, r3
  35f0b4: 2240         	movs	r2, #0x40
  35f0b6: f235 feb9    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d72
  35f0ba: 9b05         	ldr	r3, [sp, #0x14]
  35f0bc: 6a5d         	ldr	r5, [r3, #0x24]
  35f0be: 2019         	movs	r0, #0x19
  35f0c0: f785 fe22    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a3bc
  35f0c4: 4603         	mov	r3, r0
  35f0c6: 4628         	mov	r0, r5
  35f0c8: 4619         	mov	r1, r3
  35f0ca: 2241         	movs	r2, #0x41
  35f0cc: f235 feae    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d5c
  35f0d0: 9b05         	ldr	r3, [sp, #0x14]
  35f0d2: 6a5d         	ldr	r5, [r3, #0x24]
  35f0d4: 2012         	movs	r0, #0x12
  35f0d6: f785 fe17    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a3d2
  35f0da: 4603         	mov	r3, r0
  35f0dc: 4628         	mov	r0, r5
  35f0de: 4619         	mov	r1, r3
  35f0e0: 2242         	movs	r2, #0x42
  35f0e2: f235 fea3    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d46
  35f0e6: 9b05         	ldr	r3, [sp, #0x14]
  35f0e8: 6a5d         	ldr	r5, [r3, #0x24]
  35f0ea: 2012         	movs	r0, #0x12
  35f0ec: f785 fe0c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a3e8
  35f0f0: 4603         	mov	r3, r0
  35f0f2: 4628         	mov	r0, r5
  35f0f4: 4619         	mov	r1, r3
  35f0f6: 2243         	movs	r2, #0x43
  35f0f8: f235 fe98    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d30
  35f0fc: 9b05         	ldr	r3, [sp, #0x14]
  35f0fe: 6a5d         	ldr	r5, [r3, #0x24]
  35f100: 2009         	movs	r0, #0x9
  35f102: f785 fe01    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a3fe
  35f106: 4603         	mov	r3, r0
  35f108: 4628         	mov	r0, r5
  35f10a: 4619         	mov	r1, r3
  35f10c: 2244         	movs	r2, #0x44
  35f10e: f235 fe8d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d1a
  35f112: 9b05         	ldr	r3, [sp, #0x14]
  35f114: 6a5d         	ldr	r5, [r3, #0x24]
  35f116: 2001         	movs	r0, #0x1
  35f118: f785 fdf6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a414
  35f11c: 4603         	mov	r3, r0
  35f11e: 4628         	mov	r0, r5
  35f120: 4619         	mov	r1, r3
  35f122: 2245         	movs	r2, #0x45
  35f124: f235 fe82    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235d04
  35f128: 9b05         	ldr	r3, [sp, #0x14]
  35f12a: 6a5d         	ldr	r5, [r3, #0x24]
  35f12c: 2001         	movs	r0, #0x1
  35f12e: f785 fdeb    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a42a
  35f132: 4603         	mov	r3, r0
  35f134: 4628         	mov	r0, r5
  35f136: 4619         	mov	r1, r3
  35f138: 2249         	movs	r2, #0x49
  35f13a: f235 fe77    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235cee
  35f13e: 9b05         	ldr	r3, [sp, #0x14]
  35f140: 6a5d         	ldr	r5, [r3, #0x24]
  35f142: 200d         	movs	r0, #0xd
  35f144: f785 fde0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a440
  35f148: 4603         	mov	r3, r0
  35f14a: 4628         	mov	r0, r5
  35f14c: 4619         	mov	r1, r3
  35f14e: 224a         	movs	r2, #0x4a
  35f150: f235 fe6c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235cd8
  35f154: 9b05         	ldr	r3, [sp, #0x14]
  35f156: 6a5d         	ldr	r5, [r3, #0x24]
  35f158: 200c         	movs	r0, #0xc
  35f15a: f785 fdd5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a456
  35f15e: 4603         	mov	r3, r0
  35f160: 4628         	mov	r0, r5
  35f162: 4619         	mov	r1, r3
  35f164: 224b         	movs	r2, #0x4b
  35f166: f235 fe61    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235cc2
  35f16a: 9b05         	ldr	r3, [sp, #0x14]
  35f16c: 6a5d         	ldr	r5, [r3, #0x24]
  35f16e: 201c         	movs	r0, #0x1c
  35f170: f785 fdca    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a46c
  35f174: 4603         	mov	r3, r0
  35f176: 4628         	mov	r0, r5
  35f178: 4619         	mov	r1, r3
  35f17a: 224c         	movs	r2, #0x4c
  35f17c: f235 fe56    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235cac
  35f180: 9b05         	ldr	r3, [sp, #0x14]
  35f182: 6a5d         	ldr	r5, [r3, #0x24]
  35f184: 2001         	movs	r0, #0x1
  35f186: f785 fdbf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a482
  35f18a: 4603         	mov	r3, r0
  35f18c: 4628         	mov	r0, r5
  35f18e: 4619         	mov	r1, r3
  35f190: 224d         	movs	r2, #0x4d
  35f192: f235 fe4b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c96
  35f196: 9b05         	ldr	r3, [sp, #0x14]
  35f198: 6a5d         	ldr	r5, [r3, #0x24]
  35f19a: 2001         	movs	r0, #0x1
  35f19c: f785 fdb4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a498
  35f1a0: 4603         	mov	r3, r0
  35f1a2: 4628         	mov	r0, r5
  35f1a4: 4619         	mov	r1, r3
  35f1a6: 224e         	movs	r2, #0x4e
  35f1a8: f235 fe40    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c80
  35f1ac: 9b05         	ldr	r3, [sp, #0x14]
  35f1ae: 6a5d         	ldr	r5, [r3, #0x24]
  35f1b0: 201a         	movs	r0, #0x1a
  35f1b2: f785 fda9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a4ae
  35f1b6: 4603         	mov	r3, r0
  35f1b8: 4628         	mov	r0, r5
  35f1ba: 4619         	mov	r1, r3
  35f1bc: 224f         	movs	r2, #0x4f
  35f1be: f235 fe35    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c6a
  35f1c2: 9b05         	ldr	r3, [sp, #0x14]
  35f1c4: 6a5d         	ldr	r5, [r3, #0x24]
  35f1c6: 2015         	movs	r0, #0x15
  35f1c8: f785 fd9e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a4c4
  35f1cc: 4603         	mov	r3, r0
  35f1ce: 4628         	mov	r0, r5
  35f1d0: 4619         	mov	r1, r3
  35f1d2: 2250         	movs	r2, #0x50
  35f1d4: f235 fe2a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c54
  35f1d8: 9b05         	ldr	r3, [sp, #0x14]
  35f1da: 6a5d         	ldr	r5, [r3, #0x24]
  35f1dc: 2015         	movs	r0, #0x15
  35f1de: f785 fd93    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a4da
  35f1e2: 4603         	mov	r3, r0
  35f1e4: 4628         	mov	r0, r5
  35f1e6: 4619         	mov	r1, r3
  35f1e8: 2251         	movs	r2, #0x51
  35f1ea: f235 fe1f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c3e
  35f1ee: 9b05         	ldr	r3, [sp, #0x14]
  35f1f0: 6a5d         	ldr	r5, [r3, #0x24]
  35f1f2: 2015         	movs	r0, #0x15
  35f1f4: f785 fd88    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a4f0
  35f1f8: 4603         	mov	r3, r0
  35f1fa: 4628         	mov	r0, r5
  35f1fc: 4619         	mov	r1, r3
  35f1fe: 2252         	movs	r2, #0x52
  35f200: f235 fe14    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c28
  35f204: 9b05         	ldr	r3, [sp, #0x14]
  35f206: 6a5d         	ldr	r5, [r3, #0x24]
  35f208: 2027         	movs	r0, #0x27
  35f20a: f785 fd7d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a506
  35f20e: 4603         	mov	r3, r0
  35f210: 4628         	mov	r0, r5
  35f212: 4619         	mov	r1, r3
  35f214: 2253         	movs	r2, #0x53
  35f216: f235 fe09    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235c12
  35f21a: 9b05         	ldr	r3, [sp, #0x14]
  35f21c: 6a5d         	ldr	r5, [r3, #0x24]
  35f21e: 2028         	movs	r0, #0x28
  35f220: f785 fd72    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a51c
  35f224: 4603         	mov	r3, r0
  35f226: 4628         	mov	r0, r5
  35f228: 4619         	mov	r1, r3
  35f22a: 2254         	movs	r2, #0x54
  35f22c: f235 fdfe    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235bfc
  35f230: 9b05         	ldr	r3, [sp, #0x14]
  35f232: 6a5d         	ldr	r5, [r3, #0x24]
  35f234: 2013         	movs	r0, #0x13
  35f236: f785 fd67    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a532
  35f23a: 4603         	mov	r3, r0
  35f23c: 4628         	mov	r0, r5
  35f23e: 4619         	mov	r1, r3
  35f240: 2255         	movs	r2, #0x55
  35f242: f235 fdf3    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235be6
  35f246: 9b05         	ldr	r3, [sp, #0x14]
  35f248: 6a5d         	ldr	r5, [r3, #0x24]
  35f24a: 2020         	movs	r0, #0x20
  35f24c: f785 fd5c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a548
  35f250: 4603         	mov	r3, r0
  35f252: 4628         	mov	r0, r5
  35f254: 4619         	mov	r1, r3
  35f256: 2256         	movs	r2, #0x56
  35f258: f235 fde8    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235bd0
  35f25c: 9b05         	ldr	r3, [sp, #0x14]
  35f25e: 6a5d         	ldr	r5, [r3, #0x24]
  35f260: 200f         	movs	r0, #0xf
  35f262: f785 fd51    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a55e
  35f266: 4603         	mov	r3, r0
  35f268: 4628         	mov	r0, r5
  35f26a: 4619         	mov	r1, r3
  35f26c: 2257         	movs	r2, #0x57
  35f26e: f235 fddd    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235bba
  35f272: 9b05         	ldr	r3, [sp, #0x14]
  35f274: 6a5d         	ldr	r5, [r3, #0x24]
  35f276: 200e         	movs	r0, #0xe
  35f278: f785 fd46    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a574
  35f27c: 4603         	mov	r3, r0
  35f27e: 4628         	mov	r0, r5
  35f280: 4619         	mov	r1, r3
  35f282: 2258         	movs	r2, #0x58
  35f284: f235 fdd2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ba4
  35f288: 9b05         	ldr	r3, [sp, #0x14]
  35f28a: 6a5d         	ldr	r5, [r3, #0x24]
  35f28c: 2005         	movs	r0, #0x5
  35f28e: f785 fd3b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a58a
  35f292: 4603         	mov	r3, r0
  35f294: 4628         	mov	r0, r5
  35f296: 4619         	mov	r1, r3
  35f298: 2259         	movs	r2, #0x59
  35f29a: f235 fdc7    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b8e
  35f29e: 9b05         	ldr	r3, [sp, #0x14]
  35f2a0: 6a5d         	ldr	r5, [r3, #0x24]
  35f2a2: 2004         	movs	r0, #0x4
  35f2a4: f785 fd30    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a5a0
  35f2a8: 4603         	mov	r3, r0
  35f2aa: 4628         	mov	r0, r5
  35f2ac: 4619         	mov	r1, r3
  35f2ae: 225a         	movs	r2, #0x5a
  35f2b0: f235 fdbc    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b78
  35f2b4: 9b05         	ldr	r3, [sp, #0x14]
  35f2b6: 6a5d         	ldr	r5, [r3, #0x24]
  35f2b8: 2001         	movs	r0, #0x1
  35f2ba: f785 fd25    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a5b6
  35f2be: 4603         	mov	r3, r0
  35f2c0: 4628         	mov	r0, r5
  35f2c2: 4619         	mov	r1, r3
  35f2c4: 225b         	movs	r2, #0x5b
  35f2c6: f235 fdb1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b62
  35f2ca: 9b05         	ldr	r3, [sp, #0x14]
  35f2cc: 6a5d         	ldr	r5, [r3, #0x24]
  35f2ce: 2001         	movs	r0, #0x1
  35f2d0: f785 fd1a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a5cc
  35f2d4: 4603         	mov	r3, r0
  35f2d6: 4628         	mov	r0, r5
  35f2d8: 4619         	mov	r1, r3
  35f2da: 225c         	movs	r2, #0x5c
  35f2dc: f235 fda6    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b4c
  35f2e0: 9b05         	ldr	r3, [sp, #0x14]
  35f2e2: 6a5d         	ldr	r5, [r3, #0x24]
  35f2e4: 2001         	movs	r0, #0x1
  35f2e6: f785 fd0f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a5e2
  35f2ea: 4603         	mov	r3, r0
  35f2ec: 4628         	mov	r0, r5
  35f2ee: 4619         	mov	r1, r3
  35f2f0: 225d         	movs	r2, #0x5d
  35f2f2: f235 fd9b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b36
  35f2f6: 9b05         	ldr	r3, [sp, #0x14]
  35f2f8: 6a5d         	ldr	r5, [r3, #0x24]
  35f2fa: 2023         	movs	r0, #0x23
  35f2fc: f785 fd04    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a5f8
  35f300: 4603         	mov	r3, r0
  35f302: 4628         	mov	r0, r5
  35f304: 4619         	mov	r1, r3
  35f306: 225e         	movs	r2, #0x5e
  35f308: f235 fd90    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b20
  35f30c: 9b05         	ldr	r3, [sp, #0x14]
  35f30e: 6a5d         	ldr	r5, [r3, #0x24]
  35f310: 2024         	movs	r0, #0x24
  35f312: f785 fcf9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a60e
  35f316: 4603         	mov	r3, r0
  35f318: 4628         	mov	r0, r5
  35f31a: 4619         	mov	r1, r3
  35f31c: 225f         	movs	r2, #0x5f
  35f31e: f235 fd85    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235b0a
  35f322: 9b05         	ldr	r3, [sp, #0x14]
  35f324: 6a5d         	ldr	r5, [r3, #0x24]
  35f326: 2019         	movs	r0, #0x19
  35f328: f785 fcee    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a624
  35f32c: 4603         	mov	r3, r0
  35f32e: 4628         	mov	r0, r5
  35f330: 4619         	mov	r1, r3
  35f332: 2260         	movs	r2, #0x60
  35f334: f235 fd7a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235af4
  35f338: 9b05         	ldr	r3, [sp, #0x14]
  35f33a: 6a5d         	ldr	r5, [r3, #0x24]
  35f33c: 2018         	movs	r0, #0x18
  35f33e: f785 fce3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a63a
  35f342: 4603         	mov	r3, r0
  35f344: 4628         	mov	r0, r5
  35f346: 4619         	mov	r1, r3
  35f348: 2261         	movs	r2, #0x61
  35f34a: f235 fd6f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ade
  35f34e: 9b05         	ldr	r3, [sp, #0x14]
  35f350: 6a5d         	ldr	r5, [r3, #0x24]
  35f352: 2013         	movs	r0, #0x13
  35f354: f785 fcd8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a650
  35f358: 4603         	mov	r3, r0
  35f35a: 4628         	mov	r0, r5
  35f35c: 4619         	mov	r1, r3
  35f35e: 2262         	movs	r2, #0x62
  35f360: f235 fd64    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ac8
  35f364: 9b05         	ldr	r3, [sp, #0x14]
  35f366: 6a5d         	ldr	r5, [r3, #0x24]
  35f368: 2022         	movs	r0, #0x22
  35f36a: f785 fccd    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a666
  35f36e: 4603         	mov	r3, r0
  35f370: 4628         	mov	r0, r5
  35f372: 4619         	mov	r1, r3
  35f374: 2263         	movs	r2, #0x63
  35f376: f235 fd59    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235ab2
  35f37a: 9b05         	ldr	r3, [sp, #0x14]
  35f37c: 6a5d         	ldr	r5, [r3, #0x24]
  35f37e: 2021         	movs	r0, #0x21
  35f380: f785 fcc2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a67c
  35f384: 4603         	mov	r3, r0
  35f386: 4628         	mov	r0, r5
  35f388: 4619         	mov	r1, r3
  35f38a: 2264         	movs	r2, #0x64
  35f38c: f235 fd4e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a9c
  35f390: 9b05         	ldr	r3, [sp, #0x14]
  35f392: 6a5d         	ldr	r5, [r3, #0x24]
  35f394: 201e         	movs	r0, #0x1e
  35f396: f785 fcb7    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a692
  35f39a: 4603         	mov	r3, r0
  35f39c: 4628         	mov	r0, r5
  35f39e: 4619         	mov	r1, r3
  35f3a0: 2265         	movs	r2, #0x65
  35f3a2: f235 fd43    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a86
  35f3a6: 9b05         	ldr	r3, [sp, #0x14]
  35f3a8: 6a5d         	ldr	r5, [r3, #0x24]
  35f3aa: 201f         	movs	r0, #0x1f
  35f3ac: f785 fcac    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a6a8
  35f3b0: 4603         	mov	r3, r0
  35f3b2: 4628         	mov	r0, r5
  35f3b4: 4619         	mov	r1, r3
  35f3b6: 2266         	movs	r2, #0x66
  35f3b8: f235 fd38    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a70
  35f3bc: 9b05         	ldr	r3, [sp, #0x14]
  35f3be: 6a5d         	ldr	r5, [r3, #0x24]
  35f3c0: 2025         	movs	r0, #0x25
  35f3c2: f785 fca1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a6be
  35f3c6: 4603         	mov	r3, r0
  35f3c8: 4628         	mov	r0, r5
  35f3ca: 4619         	mov	r1, r3
  35f3cc: 2267         	movs	r2, #0x67
  35f3ce: f235 fd2d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a5a
  35f3d2: 9b05         	ldr	r3, [sp, #0x14]
  35f3d4: 6a5d         	ldr	r5, [r3, #0x24]
  35f3d6: 2026         	movs	r0, #0x26
  35f3d8: f785 fc96    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a6d4
  35f3dc: 4603         	mov	r3, r0
  35f3de: 4628         	mov	r0, r5
  35f3e0: 4619         	mov	r1, r3
  35f3e2: 2268         	movs	r2, #0x68
  35f3e4: f235 fd22    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a44
  35f3e8: 9b05         	ldr	r3, [sp, #0x14]
  35f3ea: 6a5d         	ldr	r5, [r3, #0x24]
  35f3ec: 2013         	movs	r0, #0x13
  35f3ee: f785 fc8b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a6ea
  35f3f2: 4603         	mov	r3, r0
  35f3f4: 4628         	mov	r0, r5
  35f3f6: 4619         	mov	r1, r3
  35f3f8: 2269         	movs	r2, #0x69
  35f3fa: f235 fd17    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a2e
  35f3fe: 9b05         	ldr	r3, [sp, #0x14]
  35f400: 6a5d         	ldr	r5, [r3, #0x24]
  35f402: 2001         	movs	r0, #0x1
  35f404: f785 fc80    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a700
  35f408: 4603         	mov	r3, r0
  35f40a: 4628         	mov	r0, r5
  35f40c: 4619         	mov	r1, r3
  35f40e: 226a         	movs	r2, #0x6a
  35f410: f235 fd0c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a18
  35f414: 9b05         	ldr	r3, [sp, #0x14]
  35f416: 6a5d         	ldr	r5, [r3, #0x24]
  35f418: 2001         	movs	r0, #0x1
  35f41a: f785 fc75    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a716
  35f41e: 4603         	mov	r3, r0
  35f420: 4628         	mov	r0, r5
  35f422: 4619         	mov	r1, r3
  35f424: 226b         	movs	r2, #0x6b
  35f426: f235 fd01    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235a02
  35f42a: 9b05         	ldr	r3, [sp, #0x14]
  35f42c: 6a5d         	ldr	r5, [r3, #0x24]
  35f42e: 2001         	movs	r0, #0x1
  35f430: f785 fc6a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a72c
  35f434: 4603         	mov	r3, r0
  35f436: 4628         	mov	r0, r5
  35f438: 4619         	mov	r1, r3
  35f43a: 226c         	movs	r2, #0x6c
  35f43c: f235 fcf6    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2359ec
  35f440: 9b05         	ldr	r3, [sp, #0x14]
  35f442: 6a5d         	ldr	r5, [r3, #0x24]
  35f444: 2013         	movs	r0, #0x13
  35f446: f785 fc5f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a742
  35f44a: 4603         	mov	r3, r0
  35f44c: 4628         	mov	r0, r5
  35f44e: 4619         	mov	r1, r3
  35f450: 226d         	movs	r2, #0x6d
  35f452: f235 fceb    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2359d6
  35f456: 9b05         	ldr	r3, [sp, #0x14]
  35f458: 6a5d         	ldr	r5, [r3, #0x24]
  35f45a: 2015         	movs	r0, #0x15
  35f45c: f785 fc54    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a758
  35f460: 4603         	mov	r3, r0
  35f462: 4628         	mov	r0, r5
  35f464: 4619         	mov	r1, r3
  35f466: 226e         	movs	r2, #0x6e
  35f468: f235 fce0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2359c0
  35f46c: 9b05         	ldr	r3, [sp, #0x14]
  35f46e: 6a5d         	ldr	r5, [r3, #0x24]
  35f470: 2012         	movs	r0, #0x12
  35f472: f785 fc49    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a76e
  35f476: 4603         	mov	r3, r0
  35f478: 4628         	mov	r0, r5
  35f47a: 4619         	mov	r1, r3
  35f47c: 226f         	movs	r2, #0x6f
  35f47e: f235 fcd5    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2359aa
  35f482: 9b05         	ldr	r3, [sp, #0x14]
  35f484: 6a5d         	ldr	r5, [r3, #0x24]
  35f486: 2014         	movs	r0, #0x14
  35f488: f785 fc3e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a784
  35f48c: 4603         	mov	r3, r0
  35f48e: 4628         	mov	r0, r5
  35f490: 4619         	mov	r1, r3
  35f492: 2270         	movs	r2, #0x70
  35f494: f235 fcca    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235994
  35f498: 9b05         	ldr	r3, [sp, #0x14]
  35f49a: 6a5d         	ldr	r5, [r3, #0x24]
  35f49c: 2024         	movs	r0, #0x24
  35f49e: f785 fc33    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a79a
  35f4a2: 4603         	mov	r3, r0
  35f4a4: 4628         	mov	r0, r5
  35f4a6: 4619         	mov	r1, r3
  35f4a8: 2271         	movs	r2, #0x71
  35f4aa: f235 fcbf    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23597e
  35f4ae: 9b05         	ldr	r3, [sp, #0x14]
  35f4b0: 6a5d         	ldr	r5, [r3, #0x24]
  35f4b2: 201e         	movs	r0, #0x1e
  35f4b4: f785 fc28    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a7b0
  35f4b8: 4603         	mov	r3, r0
  35f4ba: 4628         	mov	r0, r5
  35f4bc: 4619         	mov	r1, r3
  35f4be: 2272         	movs	r2, #0x72
  35f4c0: f235 fcb4    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235968
  35f4c4: 9b05         	ldr	r3, [sp, #0x14]
  35f4c6: 6a5d         	ldr	r5, [r3, #0x24]
  35f4c8: 2023         	movs	r0, #0x23
  35f4ca: f785 fc1d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a7c6
  35f4ce: 4603         	mov	r3, r0
  35f4d0: 4628         	mov	r0, r5
  35f4d2: 4619         	mov	r1, r3
  35f4d4: 2273         	movs	r2, #0x73
  35f4d6: f235 fca9    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235952
  35f4da: 9b05         	ldr	r3, [sp, #0x14]
  35f4dc: 6a5d         	ldr	r5, [r3, #0x24]
  35f4de: 201f         	movs	r0, #0x1f
  35f4e0: f785 fc12    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a7dc
  35f4e4: 4603         	mov	r3, r0
  35f4e6: 4628         	mov	r0, r5
  35f4e8: 4619         	mov	r1, r3
  35f4ea: 2274         	movs	r2, #0x74
  35f4ec: f235 fc9e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23593c
  35f4f0: 9b05         	ldr	r3, [sp, #0x14]
  35f4f2: 6a5d         	ldr	r5, [r3, #0x24]
  35f4f4: 2025         	movs	r0, #0x25
  35f4f6: f785 fc07    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a7f2
  35f4fa: 4603         	mov	r3, r0
  35f4fc: 4628         	mov	r0, r5
  35f4fe: 4619         	mov	r1, r3
  35f500: 2275         	movs	r2, #0x75
  35f502: f235 fc93    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235926
  35f506: 9b05         	ldr	r3, [sp, #0x14]
  35f508: 6a5d         	ldr	r5, [r3, #0x24]
  35f50a: 2026         	movs	r0, #0x26
  35f50c: f785 fbfc    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a808
  35f510: 4603         	mov	r3, r0
  35f512: 4628         	mov	r0, r5
  35f514: 4619         	mov	r1, r3
  35f516: 2276         	movs	r2, #0x76
  35f518: f235 fc88    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235910
  35f51c: 9b05         	ldr	r3, [sp, #0x14]
  35f51e: 6a5d         	ldr	r5, [r3, #0x24]
  35f520: 2001         	movs	r0, #0x1
  35f522: f785 fbf1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a81e
  35f526: 4603         	mov	r3, r0
  35f528: 4628         	mov	r0, r5
  35f52a: 4619         	mov	r1, r3
  35f52c: 2277         	movs	r2, #0x77
  35f52e: f235 fc7d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2358fa
  35f532: 9b05         	ldr	r3, [sp, #0x14]
  35f534: 6a5d         	ldr	r5, [r3, #0x24]
  35f536: 2001         	movs	r0, #0x1
  35f538: f785 fbe6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a834
  35f53c: 4603         	mov	r3, r0
  35f53e: 4628         	mov	r0, r5
  35f540: 4619         	mov	r1, r3
  35f542: 2278         	movs	r2, #0x78
  35f544: f235 fc72    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2358e4
  35f548: 9b05         	ldr	r3, [sp, #0x14]
  35f54a: 6a5d         	ldr	r5, [r3, #0x24]
  35f54c: 2001         	movs	r0, #0x1
  35f54e: f785 fbdb    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a84a
  35f552: 4603         	mov	r3, r0
  35f554: 4628         	mov	r0, r5
  35f556: 4619         	mov	r1, r3
  35f558: 2279         	movs	r2, #0x79
  35f55a: f235 fc67    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2358ce
  35f55e: 9b05         	ldr	r3, [sp, #0x14]
  35f560: 6a5d         	ldr	r5, [r3, #0x24]
  35f562: 2001         	movs	r0, #0x1
  35f564: f785 fbd0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a860
  35f568: 4603         	mov	r3, r0
  35f56a: 4628         	mov	r0, r5
  35f56c: 4619         	mov	r1, r3
  35f56e: 227a         	movs	r2, #0x7a
  35f570: f235 fc5c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2358b8
  35f574: 9b05         	ldr	r3, [sp, #0x14]
  35f576: 6a5d         	ldr	r5, [r3, #0x24]
  35f578: 2020         	movs	r0, #0x20
  35f57a: f785 fbc5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a876
  35f57e: 4603         	mov	r3, r0
  35f580: 4628         	mov	r0, r5
  35f582: 4619         	mov	r1, r3
  35f584: 227b         	movs	r2, #0x7b
  35f586: f235 fc51    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2358a2
  35f58a: 9b05         	ldr	r3, [sp, #0x14]
  35f58c: 6a5d         	ldr	r5, [r3, #0x24]
  35f58e: 201e         	movs	r0, #0x1e
  35f590: f785 fbba    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a88c
  35f594: 4603         	mov	r3, r0
  35f596: 4628         	mov	r0, r5
  35f598: 4619         	mov	r1, r3
  35f59a: 227c         	movs	r2, #0x7c
  35f59c: f235 fc46    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23588c
  35f5a0: 9b05         	ldr	r3, [sp, #0x14]
  35f5a2: 6a5d         	ldr	r5, [r3, #0x24]
  35f5a4: 201f         	movs	r0, #0x1f
  35f5a6: f785 fbaf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a8a2
  35f5aa: 4603         	mov	r3, r0
  35f5ac: 4628         	mov	r0, r5
  35f5ae: 4619         	mov	r1, r3
  35f5b0: 227d         	movs	r2, #0x7d
  35f5b2: f235 fc3b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235876
  35f5b6: 9b05         	ldr	r3, [sp, #0x14]
  35f5b8: 6a5d         	ldr	r5, [r3, #0x24]
  35f5ba: 201e         	movs	r0, #0x1e
  35f5bc: f785 fba4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a8b8
  35f5c0: 4603         	mov	r3, r0
  35f5c2: 4628         	mov	r0, r5
  35f5c4: 4619         	mov	r1, r3
  35f5c6: 227e         	movs	r2, #0x7e
  35f5c8: f235 fc30    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235860
  35f5cc: 9b05         	ldr	r3, [sp, #0x14]
  35f5ce: 6a5d         	ldr	r5, [r3, #0x24]
  35f5d0: 201f         	movs	r0, #0x1f
  35f5d2: f785 fb99    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a8ce
  35f5d6: 4603         	mov	r3, r0
  35f5d8: 4628         	mov	r0, r5
  35f5da: 4619         	mov	r1, r3
  35f5dc: 227f         	movs	r2, #0x7f
  35f5de: f235 fc25    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23584a
  35f5e2: 9b05         	ldr	r3, [sp, #0x14]
  35f5e4: 6a5d         	ldr	r5, [r3, #0x24]
  35f5e6: 2001         	movs	r0, #0x1
  35f5e8: f785 fb8e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a8e4
  35f5ec: 4603         	mov	r3, r0
  35f5ee: 4628         	mov	r0, r5
  35f5f0: 4619         	mov	r1, r3
  35f5f2: 2280         	movs	r2, #0x80
  35f5f4: f235 fc1a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235834
  35f5f8: 9b05         	ldr	r3, [sp, #0x14]
  35f5fa: 6a5d         	ldr	r5, [r3, #0x24]
  35f5fc: 2001         	movs	r0, #0x1
  35f5fe: f785 fb83    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a8fa
  35f602: 4603         	mov	r3, r0
  35f604: 4628         	mov	r0, r5
  35f606: 4619         	mov	r1, r3
  35f608: 2281         	movs	r2, #0x81
  35f60a: f235 fc0f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23581e
  35f60e: 9b05         	ldr	r3, [sp, #0x14]
  35f610: 6a5d         	ldr	r5, [r3, #0x24]
  35f612: 2001         	movs	r0, #0x1
  35f614: f785 fb78    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a910
  35f618: 4603         	mov	r3, r0
  35f61a: 4628         	mov	r0, r5
  35f61c: 4619         	mov	r1, r3
  35f61e: 2282         	movs	r2, #0x82
  35f620: f235 fc04    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235808
  35f624: 9b05         	ldr	r3, [sp, #0x14]
  35f626: 6a5d         	ldr	r5, [r3, #0x24]
  35f628: 2001         	movs	r0, #0x1
  35f62a: f785 fb6d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a926
  35f62e: 4603         	mov	r3, r0
  35f630: 4628         	mov	r0, r5
  35f632: 4619         	mov	r1, r3
  35f634: 2283         	movs	r2, #0x83
  35f636: f235 fbf9    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2357f2
  35f63a: 9b05         	ldr	r3, [sp, #0x14]
  35f63c: 6a5d         	ldr	r5, [r3, #0x24]
  35f63e: 2001         	movs	r0, #0x1
  35f640: f785 fb62    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a93c
  35f644: 4603         	mov	r3, r0
  35f646: 4628         	mov	r0, r5
  35f648: 4619         	mov	r1, r3
  35f64a: 2284         	movs	r2, #0x84
  35f64c: f235 fbee    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2357dc
  35f650: 9b05         	ldr	r3, [sp, #0x14]
  35f652: 6a5d         	ldr	r5, [r3, #0x24]
  35f654: 2001         	movs	r0, #0x1
  35f656: f785 fb57    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a952
  35f65a: 4603         	mov	r3, r0
  35f65c: 4628         	mov	r0, r5
  35f65e: 4619         	mov	r1, r3
  35f660: 2285         	movs	r2, #0x85
  35f662: f235 fbe3    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2357c6
  35f666: 9b05         	ldr	r3, [sp, #0x14]
  35f668: 6a5d         	ldr	r5, [r3, #0x24]
  35f66a: 2001         	movs	r0, #0x1
  35f66c: f785 fb4c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a968
  35f670: 4603         	mov	r3, r0
  35f672: 4628         	mov	r0, r5
  35f674: 4619         	mov	r1, r3
  35f676: 2286         	movs	r2, #0x86
  35f678: f235 fbd8    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2357b0
  35f67c: 9b05         	ldr	r3, [sp, #0x14]
  35f67e: 6a5d         	ldr	r5, [r3, #0x24]
  35f680: 2001         	movs	r0, #0x1
  35f682: f785 fb41    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a97e
  35f686: 4603         	mov	r3, r0
  35f688: 4628         	mov	r0, r5
  35f68a: 4619         	mov	r1, r3
  35f68c: 2287         	movs	r2, #0x87
  35f68e: f235 fbcd    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23579a
  35f692: 9b05         	ldr	r3, [sp, #0x14]
  35f694: 6a5d         	ldr	r5, [r3, #0x24]
  35f696: 2001         	movs	r0, #0x1
  35f698: f785 fb36    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a994
  35f69c: 4603         	mov	r3, r0
  35f69e: 4628         	mov	r0, r5
  35f6a0: 4619         	mov	r1, r3
  35f6a2: 2288         	movs	r2, #0x88
  35f6a4: f235 fbc2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235784
  35f6a8: 9b05         	ldr	r3, [sp, #0x14]
  35f6aa: 6a5d         	ldr	r5, [r3, #0x24]
  35f6ac: 2013         	movs	r0, #0x13
  35f6ae: f785 fb2b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a9aa
  35f6b2: 4603         	mov	r3, r0
  35f6b4: 4628         	mov	r0, r5
  35f6b6: 4619         	mov	r1, r3
  35f6b8: 2289         	movs	r2, #0x89
  35f6ba: f235 fbb7    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23576e
  35f6be: 9b05         	ldr	r3, [sp, #0x14]
  35f6c0: 6a5d         	ldr	r5, [r3, #0x24]
  35f6c2: 2012         	movs	r0, #0x12
  35f6c4: f785 fb20    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a9c0
  35f6c8: 4603         	mov	r3, r0
  35f6ca: 4628         	mov	r0, r5
  35f6cc: 4619         	mov	r1, r3
  35f6ce: 228a         	movs	r2, #0x8a
  35f6d0: f235 fbac    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235758
  35f6d4: 9b05         	ldr	r3, [sp, #0x14]
  35f6d6: 6a5d         	ldr	r5, [r3, #0x24]
  35f6d8: 2014         	movs	r0, #0x14
  35f6da: f785 fb15    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a9d6
  35f6de: 4603         	mov	r3, r0
  35f6e0: 4628         	mov	r0, r5
  35f6e2: 4619         	mov	r1, r3
  35f6e4: 228b         	movs	r2, #0x8b
  35f6e6: f235 fba1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235742
  35f6ea: 9b05         	ldr	r3, [sp, #0x14]
  35f6ec: 6a5d         	ldr	r5, [r3, #0x24]
  35f6ee: 2015         	movs	r0, #0x15
  35f6f0: f785 fb0a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7a9ec
  35f6f4: 4603         	mov	r3, r0
  35f6f6: 4628         	mov	r0, r5
  35f6f8: 4619         	mov	r1, r3
  35f6fa: 228c         	movs	r2, #0x8c
  35f6fc: f235 fb96    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23572c
  35f700: 9b05         	ldr	r3, [sp, #0x14]
  35f702: 6a5d         	ldr	r5, [r3, #0x24]
  35f704: 201e         	movs	r0, #0x1e
  35f706: f785 faff    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa02
  35f70a: 4603         	mov	r3, r0
  35f70c: 4628         	mov	r0, r5
  35f70e: 4619         	mov	r1, r3
  35f710: 228d         	movs	r2, #0x8d
  35f712: f235 fb8b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235716
  35f716: 9b05         	ldr	r3, [sp, #0x14]
  35f718: 6a5d         	ldr	r5, [r3, #0x24]
  35f71a: 2024         	movs	r0, #0x24
  35f71c: f785 faf4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa18
  35f720: 4603         	mov	r3, r0
  35f722: 4628         	mov	r0, r5
  35f724: 4619         	mov	r1, r3
  35f726: 228e         	movs	r2, #0x8e
  35f728: f235 fb80    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235700
  35f72c: 9b05         	ldr	r3, [sp, #0x14]
  35f72e: 6a5d         	ldr	r5, [r3, #0x24]
  35f730: 2023         	movs	r0, #0x23
  35f732: f785 fae9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa2e
  35f736: 4603         	mov	r3, r0
  35f738: 4628         	mov	r0, r5
  35f73a: 4619         	mov	r1, r3
  35f73c: 228f         	movs	r2, #0x8f
  35f73e: f235 fb75    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2356ea
  35f742: 9b05         	ldr	r3, [sp, #0x14]
  35f744: 6a5d         	ldr	r5, [r3, #0x24]
  35f746: 201f         	movs	r0, #0x1f
  35f748: f785 fade    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa44
  35f74c: 4603         	mov	r3, r0
  35f74e: 4628         	mov	r0, r5
  35f750: 4619         	mov	r1, r3
  35f752: 2290         	movs	r2, #0x90
  35f754: f235 fb6a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2356d4
  35f758: 9b05         	ldr	r3, [sp, #0x14]
  35f75a: 6a5d         	ldr	r5, [r3, #0x24]
  35f75c: 2001         	movs	r0, #0x1
  35f75e: f785 fad3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa5a
  35f762: 4603         	mov	r3, r0
  35f764: 4628         	mov	r0, r5
  35f766: 4619         	mov	r1, r3
  35f768: 2291         	movs	r2, #0x91
  35f76a: f235 fb5f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2356be
  35f76e: 9b05         	ldr	r3, [sp, #0x14]
  35f770: 6a5d         	ldr	r5, [r3, #0x24]
  35f772: 2001         	movs	r0, #0x1
  35f774: f785 fac8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa70
  35f778: 4603         	mov	r3, r0
  35f77a: 4628         	mov	r0, r5
  35f77c: 4619         	mov	r1, r3
  35f77e: 2292         	movs	r2, #0x92
  35f780: f235 fb54    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2356a8
  35f784: 9b05         	ldr	r3, [sp, #0x14]
  35f786: 6a5d         	ldr	r5, [r3, #0x24]
  35f788: 2001         	movs	r0, #0x1
  35f78a: e001         	b	0x35f790 <MapManager::loadMap(std::string)+0xb04> @ imm = #0x2
  35f78c: 3d70         	subs	r5, #0x70
  35f78e: 005d         	lsls	r5, r3, #0x1
  35f790: f785 faba    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aa8c
  35f794: 4603         	mov	r3, r0
  35f796: 4628         	mov	r0, r5
  35f798: 4619         	mov	r1, r3
  35f79a: 2293         	movs	r2, #0x93
  35f79c: f235 fb46    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23568c
  35f7a0: 9b05         	ldr	r3, [sp, #0x14]
  35f7a2: 6a5d         	ldr	r5, [r3, #0x24]
  35f7a4: 2001         	movs	r0, #0x1
  35f7a6: f785 faaf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aaa2
  35f7aa: 4603         	mov	r3, r0
  35f7ac: 4628         	mov	r0, r5
  35f7ae: 4619         	mov	r1, r3
  35f7b0: 2294         	movs	r2, #0x94
  35f7b2: f235 fb3b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235676
  35f7b6: 9b05         	ldr	r3, [sp, #0x14]
  35f7b8: 6a5d         	ldr	r5, [r3, #0x24]
  35f7ba: 2001         	movs	r0, #0x1
  35f7bc: f785 faa4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aab8
  35f7c0: 4603         	mov	r3, r0
  35f7c2: 4628         	mov	r0, r5
  35f7c4: 4619         	mov	r1, r3
  35f7c6: 2295         	movs	r2, #0x95
  35f7c8: f235 fb30    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235660
  35f7cc: 9b05         	ldr	r3, [sp, #0x14]
  35f7ce: 6a5d         	ldr	r5, [r3, #0x24]
  35f7d0: 2001         	movs	r0, #0x1
  35f7d2: f785 fa99    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aace
  35f7d6: 4603         	mov	r3, r0
  35f7d8: 4628         	mov	r0, r5
  35f7da: 4619         	mov	r1, r3
  35f7dc: 2296         	movs	r2, #0x96
  35f7de: f235 fb25    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23564a
  35f7e2: 9b05         	ldr	r3, [sp, #0x14]
  35f7e4: 6a5d         	ldr	r5, [r3, #0x24]
  35f7e6: 2001         	movs	r0, #0x1
  35f7e8: f785 fa8e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aae4
  35f7ec: 4603         	mov	r3, r0
  35f7ee: 4628         	mov	r0, r5
  35f7f0: 4619         	mov	r1, r3
  35f7f2: 2297         	movs	r2, #0x97
  35f7f4: f235 fb1a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235634
  35f7f8: 9b05         	ldr	r3, [sp, #0x14]
  35f7fa: 6a5d         	ldr	r5, [r3, #0x24]
  35f7fc: 2001         	movs	r0, #0x1
  35f7fe: f785 fa83    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7aafa
  35f802: 4603         	mov	r3, r0
  35f804: 4628         	mov	r0, r5
  35f806: 4619         	mov	r1, r3
  35f808: 2298         	movs	r2, #0x98
  35f80a: f235 fb0f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23561e
  35f80e: 9b05         	ldr	r3, [sp, #0x14]
  35f810: 6a5d         	ldr	r5, [r3, #0x24]
  35f812: 201c         	movs	r0, #0x1c
  35f814: f785 fa78    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab10
  35f818: 4603         	mov	r3, r0
  35f81a: 4628         	mov	r0, r5
  35f81c: 4619         	mov	r1, r3
  35f81e: 2299         	movs	r2, #0x99
  35f820: f235 fb04    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235608
  35f824: 9b05         	ldr	r3, [sp, #0x14]
  35f826: 6a5d         	ldr	r5, [r3, #0x24]
  35f828: 201a         	movs	r0, #0x1a
  35f82a: f785 fa6d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab26
  35f82e: 4603         	mov	r3, r0
  35f830: 4628         	mov	r0, r5
  35f832: 4619         	mov	r1, r3
  35f834: 229a         	movs	r2, #0x9a
  35f836: f235 faf9    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2355f2
  35f83a: 9b05         	ldr	r3, [sp, #0x14]
  35f83c: 6a5d         	ldr	r5, [r3, #0x24]
  35f83e: 201d         	movs	r0, #0x1d
  35f840: f785 fa62    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab3c
  35f844: 4603         	mov	r3, r0
  35f846: 4628         	mov	r0, r5
  35f848: 4619         	mov	r1, r3
  35f84a: 229b         	movs	r2, #0x9b
  35f84c: f235 faee    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2355dc
  35f850: 9b05         	ldr	r3, [sp, #0x14]
  35f852: 6a5d         	ldr	r5, [r3, #0x24]
  35f854: 201b         	movs	r0, #0x1b
  35f856: f785 fa57    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab52
  35f85a: 4603         	mov	r3, r0
  35f85c: 4628         	mov	r0, r5
  35f85e: 4619         	mov	r1, r3
  35f860: 229c         	movs	r2, #0x9c
  35f862: f235 fae3    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2355c6
  35f866: 9b05         	ldr	r3, [sp, #0x14]
  35f868: 6a5d         	ldr	r5, [r3, #0x24]
  35f86a: 2018         	movs	r0, #0x18
  35f86c: f785 fa4c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab68
  35f870: 4603         	mov	r3, r0
  35f872: 4628         	mov	r0, r5
  35f874: 4619         	mov	r1, r3
  35f876: 229d         	movs	r2, #0x9d
  35f878: f235 fad8    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2355b0
  35f87c: 9b05         	ldr	r3, [sp, #0x14]
  35f87e: 6a5d         	ldr	r5, [r3, #0x24]
  35f880: 2019         	movs	r0, #0x19
  35f882: f785 fa41    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab7e
  35f886: 4603         	mov	r3, r0
  35f888: 4628         	mov	r0, r5
  35f88a: 4619         	mov	r1, r3
  35f88c: 229e         	movs	r2, #0x9e
  35f88e: f235 facd    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23559a
  35f892: 9b05         	ldr	r3, [sp, #0x14]
  35f894: 6a5d         	ldr	r5, [r3, #0x24]
  35f896: 2021         	movs	r0, #0x21
  35f898: f785 fa36    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ab94
  35f89c: 4603         	mov	r3, r0
  35f89e: 4628         	mov	r0, r5
  35f8a0: 4619         	mov	r1, r3
  35f8a2: 229f         	movs	r2, #0x9f
  35f8a4: f235 fac2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235584
  35f8a8: 9b05         	ldr	r3, [sp, #0x14]
  35f8aa: 6a5d         	ldr	r5, [r3, #0x24]
  35f8ac: 2022         	movs	r0, #0x22
  35f8ae: f785 fa2b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7abaa
  35f8b2: 4603         	mov	r3, r0
  35f8b4: 4628         	mov	r0, r5
  35f8b6: 4619         	mov	r1, r3
  35f8b8: 22a0         	movs	r2, #0xa0
  35f8ba: f235 fab7    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23556e
  35f8be: 9b05         	ldr	r3, [sp, #0x14]
  35f8c0: 6a5d         	ldr	r5, [r3, #0x24]
  35f8c2: 2001         	movs	r0, #0x1
  35f8c4: f785 fa20    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7abc0
  35f8c8: 4603         	mov	r3, r0
  35f8ca: 4628         	mov	r0, r5
  35f8cc: 4619         	mov	r1, r3
  35f8ce: 22a1         	movs	r2, #0xa1
  35f8d0: f235 faac    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235558
  35f8d4: 9b05         	ldr	r3, [sp, #0x14]
  35f8d6: 6a5d         	ldr	r5, [r3, #0x24]
  35f8d8: 2001         	movs	r0, #0x1
  35f8da: f785 fa15    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7abd6
  35f8de: 4603         	mov	r3, r0
  35f8e0: 4628         	mov	r0, r5
  35f8e2: 4619         	mov	r1, r3
  35f8e4: 22a2         	movs	r2, #0xa2
  35f8e6: f235 faa1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235542
  35f8ea: f237 fd61    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x237ac2
  35f8ee: 4602         	mov	r2, r0
  35f8f0: 9b05         	ldr	r3, [sp, #0x14]
  35f8f2: 62da         	str	r2, [r3, #0x2c]
  35f8f4: 9b05         	ldr	r3, [sp, #0x14]
  35f8f6: 6adb         	ldr	r3, [r3, #0x2c]
  35f8f8: 4618         	mov	r0, r3
  35f8fa: f238 faf5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2385ea
  35f8fe: 9b05         	ldr	r3, [sp, #0x14]
  35f900: 6add         	ldr	r5, [r3, #0x2c]
  35f902: 2001         	movs	r0, #0x1
  35f904: f785 fa00    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac00
  35f908: 4603         	mov	r3, r0
  35f90a: 4628         	mov	r0, r5
  35f90c: 4619         	mov	r1, r3
  35f90e: 2201         	movs	r2, #0x1
  35f910: f235 fa8c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235518
  35f914: 9b05         	ldr	r3, [sp, #0x14]
  35f916: 6add         	ldr	r5, [r3, #0x2c]
  35f918: 2001         	movs	r0, #0x1
  35f91a: f785 f9f5    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac16
  35f91e: 4603         	mov	r3, r0
  35f920: 4628         	mov	r0, r5
  35f922: 4619         	mov	r1, r3
  35f924: 2212         	movs	r2, #0x12
  35f926: f235 fa81    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235502
  35f92a: 9b05         	ldr	r3, [sp, #0x14]
  35f92c: 6add         	ldr	r5, [r3, #0x2c]
  35f92e: 2001         	movs	r0, #0x1
  35f930: f785 f9ea    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac2c
  35f934: 4603         	mov	r3, r0
  35f936: 4628         	mov	r0, r5
  35f938: 4619         	mov	r1, r3
  35f93a: 2215         	movs	r2, #0x15
  35f93c: f235 fa76    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2354ec
  35f940: 9b05         	ldr	r3, [sp, #0x14]
  35f942: 6add         	ldr	r5, [r3, #0x2c]
  35f944: 2001         	movs	r0, #0x1
  35f946: f785 f9df    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac42
  35f94a: 4603         	mov	r3, r0
  35f94c: 4628         	mov	r0, r5
  35f94e: 4619         	mov	r1, r3
  35f950: 2213         	movs	r2, #0x13
  35f952: f235 fa6b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2354d6
  35f956: 9b05         	ldr	r3, [sp, #0x14]
  35f958: 6add         	ldr	r5, [r3, #0x2c]
  35f95a: 2001         	movs	r0, #0x1
  35f95c: f785 f9d4    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac58
  35f960: 4603         	mov	r3, r0
  35f962: 4628         	mov	r0, r5
  35f964: 4619         	mov	r1, r3
  35f966: 2214         	movs	r2, #0x14
  35f968: f235 fa60    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2354c0
  35f96c: 9b05         	ldr	r3, [sp, #0x14]
  35f96e: 6add         	ldr	r5, [r3, #0x2c]
  35f970: 2001         	movs	r0, #0x1
  35f972: f785 f9c9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac6e
  35f976: 4603         	mov	r3, r0
  35f978: 4628         	mov	r0, r5
  35f97a: 4619         	mov	r1, r3
  35f97c: 2220         	movs	r2, #0x20
  35f97e: f235 fa55    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x2354aa
  35f982: 9b05         	ldr	r3, [sp, #0x14]
  35f984: 6add         	ldr	r5, [r3, #0x2c]
  35f986: 2001         	movs	r0, #0x1
  35f988: f785 f9be    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac84
  35f98c: 4603         	mov	r3, r0
  35f98e: 4628         	mov	r0, r5
  35f990: 4619         	mov	r1, r3
  35f992: 220e         	movs	r2, #0xe
  35f994: f235 fa4a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235494
  35f998: 9b05         	ldr	r3, [sp, #0x14]
  35f99a: 6add         	ldr	r5, [r3, #0x2c]
  35f99c: 2001         	movs	r0, #0x1
  35f99e: f785 f9b3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7ac9a
  35f9a2: 4603         	mov	r3, r0
  35f9a4: 4628         	mov	r0, r5
  35f9a6: 4619         	mov	r1, r3
  35f9a8: 220f         	movs	r2, #0xf
  35f9aa: f235 fa3f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x23547e
  35f9ae: 9b05         	ldr	r3, [sp, #0x14]
  35f9b0: 6add         	ldr	r5, [r3, #0x2c]
  35f9b2: 2001         	movs	r0, #0x1
  35f9b4: f785 f9a8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7acb0
  35f9b8: 4603         	mov	r3, r0
  35f9ba: 4628         	mov	r0, r5
  35f9bc: 4619         	mov	r1, r3
  35f9be: 2210         	movs	r2, #0x10
  35f9c0: f235 fa34    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235468
  35f9c4: 9b05         	ldr	r3, [sp, #0x14]
  35f9c6: 6add         	ldr	r5, [r3, #0x2c]
  35f9c8: 2001         	movs	r0, #0x1
  35f9ca: f785 f99d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x7acc6
  35f9ce: 4603         	mov	r3, r0
  35f9d0: 4628         	mov	r0, r5
  35f9d2: 4619         	mov	r1, r3
  35f9d4: 2211         	movs	r2, #0x11
  35f9d6: f235 fa29    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x235452
  35f9da: 9804         	ldr	r0, [sp, #0x10]
  35f9dc: f055 f490    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x455920
  35f9e0: 4603         	mov	r3, r0
  35f9e2: 4618         	mov	r0, r3
  35f9e4: f29b faca    	bl	0x5faf7c <cocos2d::CCTMXTiledMap::create(char const*)> @ imm = #0x29b594
  35f9e8: 4602         	mov	r2, r0
  35f9ea: 9b05         	ldr	r3, [sp, #0x14]
  35f9ec: 615a         	str	r2, [r3, #0x14]
  35f9ee: 4bdf         	ldr	r3, [pc, #0x37c]        @ 0x35fd6c <MapManager::loadMap(std::string)+0x10e0>
  35f9f0: 58e3         	ldr	r3, [r4, r3]
  35f9f2: 2240         	movs	r2, #0x40
  35f9f4: 601a         	str	r2, [r3]
  35f9f6: 9b05         	ldr	r3, [sp, #0x14]
  35f9f8: 2205         	movs	r2, #0x5
  35f9fa: 649a         	str	r2, [r3, #0x48]
  35f9fc: 9b05         	ldr	r3, [sp, #0x14]
  35f9fe: 695b         	ldr	r3, [r3, #0x14]
  35fa00: 681b         	ldr	r3, [r3]
  35fa02: 338c         	adds	r3, #0x8c
  35fa04: 681b         	ldr	r3, [r3]
  35fa06: 9a05         	ldr	r2, [sp, #0x14]
  35fa08: 6952         	ldr	r2, [r2, #0x14]
  35fa0a: 4610         	mov	r0, r2
  35fa0c: 4798         	blx	r3
  35fa0e: 4603         	mov	r3, r0
  35fa10: ed93 7a01    	vldr	s14, [r3, #4]
  35fa14: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x35fd6c <MapManager::loadMap(std::string)+0x10e0>
  35fa16: 58e3         	ldr	r3, [r4, r3]
  35fa18: 681b         	ldr	r3, [r3]
  35fa1a: ee06 3a90    	vmov	s13, r3
  35fa1e: eef8 7ae6    	vcvt.f32.s32	s15, s13
  35fa22: ee87 7a27    	vdiv.f32	s14, s14, s15
  35fa26: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  35fa2a: ee77 7a67    	vsub.f32	s15, s14, s15
  35fa2e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  35fa32: ee17 2a90    	vmov	r2, s15
  35fa36: 9b05         	ldr	r3, [sp, #0x14]
  35fa38: 645a         	str	r2, [r3, #0x44]
  35fa3a: 9b05         	ldr	r3, [sp, #0x14]
  35fa3c: 695b         	ldr	r3, [r3, #0x14]
  35fa3e: 681b         	ldr	r3, [r3]
  35fa40: 338c         	adds	r3, #0x8c
  35fa42: 681b         	ldr	r3, [r3]
  35fa44: 9a05         	ldr	r2, [sp, #0x14]
  35fa46: 6952         	ldr	r2, [r2, #0x14]
  35fa48: 4610         	mov	r0, r2
  35fa4a: 4798         	blx	r3
  35fa4c: 4603         	mov	r3, r0
  35fa4e: ed93 7a00    	vldr	s14, [r3]
  35fa52: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x35fd6c <MapManager::loadMap(std::string)+0x10e0>
  35fa54: 58e3         	ldr	r3, [r4, r3]
  35fa56: 681b         	ldr	r3, [r3]
  35fa58: ee06 3a90    	vmov	s13, r3
  35fa5c: eef8 7ae6    	vcvt.f32.s32	s15, s13
  35fa60: ee87 7a27    	vdiv.f32	s14, s14, s15
  35fa64: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  35fa68: ee77 7a67    	vsub.f32	s15, s14, s15
  35fa6c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  35fa70: ee17 2a90    	vmov	r2, s15
  35fa74: 9b05         	ldr	r3, [sp, #0x14]
  35fa76: 641a         	str	r2, [r3, #0x40]
  35fa78: 9b05         	ldr	r3, [sp, #0x14]
  35fa7a: 695b         	ldr	r3, [r3, #0x14]
  35fa7c: 4618         	mov	r0, r3
  35fa7e: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x35fd70 <MapManager::loadMap(std::string)+0x10e4>
  35fa80: 447b         	add	r3, pc
  35fa82: 4619         	mov	r1, r3
  35fa84: f29b fe04    	bl	0x5fb690 <cocos2d::CCTMXTiledMap::layerNamed(char const*)> @ imm = #0x29bc08
  35fa88: 4602         	mov	r2, r0
  35fa8a: 9b05         	ldr	r3, [sp, #0x14]
  35fa8c: 631a         	str	r2, [r3, #0x30]
  35fa8e: 9b05         	ldr	r3, [sp, #0x14]
  35fa90: 6b1b         	ldr	r3, [r3, #0x30]
  35fa92: 681b         	ldr	r3, [r3]
  35fa94: 3390         	adds	r3, #0x90
  35fa96: 681b         	ldr	r3, [r3]
  35fa98: 9a05         	ldr	r2, [sp, #0x14]
  35fa9a: 6b12         	ldr	r2, [r2, #0x30]
  35fa9c: 4610         	mov	r0, r2
  35fa9e: 2100         	movs	r1, #0x0
  35faa0: 4798         	blx	r3
  35faa2: 9b05         	ldr	r3, [sp, #0x14]
  35faa4: 695b         	ldr	r3, [r3, #0x14]
  35faa6: 4618         	mov	r0, r3
  35faa8: 4bb2         	ldr	r3, [pc, #0x2c8]        @ 0x35fd74 <MapManager::loadMap(std::string)+0x10e8>
  35faaa: 447b         	add	r3, pc
  35faac: 4619         	mov	r1, r3
  35faae: f29b fdef    	bl	0x5fb690 <cocos2d::CCTMXTiledMap::layerNamed(char const*)> @ imm = #0x29bbde
  35fab2: 4603         	mov	r3, r0
  35fab4: 930e         	str	r3, [sp, #0x38]
  35fab6: 9b0e         	ldr	r3, [sp, #0x38]
  35fab8: 2b00         	cmp	r3, #0x0
  35faba: d007         	beq	0x35facc <MapManager::loadMap(std::string)+0xe40> @ imm = #0xe
  35fabc: 9b0e         	ldr	r3, [sp, #0x38]
  35fabe: 681b         	ldr	r3, [r3]
  35fac0: 3390         	adds	r3, #0x90
  35fac2: 681b         	ldr	r3, [r3]
  35fac4: 9a0e         	ldr	r2, [sp, #0x38]
  35fac6: 4610         	mov	r0, r2
  35fac8: 2100         	movs	r1, #0x0
  35faca: 4798         	blx	r3
  35facc: 9b05         	ldr	r3, [sp, #0x14]
  35face: 695b         	ldr	r3, [r3, #0x14]
  35fad0: 4618         	mov	r0, r3
  35fad2: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x35fd78 <MapManager::loadMap(std::string)+0x10ec>
  35fad4: 447b         	add	r3, pc
  35fad6: 4619         	mov	r1, r3
  35fad8: f29b fe48    	bl	0x5fb76c <cocos2d::CCTMXTiledMap::objectGroupNamed(char const*)> @ imm = #0x29bc90
  35fadc: 4602         	mov	r2, r0
  35fade: 9b05         	ldr	r3, [sp, #0x14]
  35fae0: 635a         	str	r2, [r3, #0x34]
  35fae2: ab06         	add	r3, sp, #0x18
  35fae4: 4618         	mov	r0, r3
  35fae6: f02a f485    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a90a
  35faea: aa10         	add	r2, sp, #0x40
  35faec: ab06         	add	r3, sp, #0x18
  35faee: 4610         	mov	r0, r2
  35faf0: 4aa2         	ldr	r2, [pc, #0x288]        @ 0x35fd7c <MapManager::loadMap(std::string)+0x10f0>
  35faf2: 447a         	add	r2, pc
  35faf4: 4611         	mov	r1, r2
  35faf6: 461a         	mov	r2, r3
  35faf8: f056 f7b2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456f64
  35fafc: ab10         	add	r3, sp, #0x40
  35fafe: 9805         	ldr	r0, [sp, #0x14]
  35fb00: 4619         	mov	r1, r3
  35fb02: f005 fca1    	bl	0x365448 <MapManager::objectsNamed(std::string)> @ imm = #0x5942
  35fb06: 4602         	mov	r2, r0
  35fb08: 9b05         	ldr	r3, [sp, #0x14]
  35fb0a: 639a         	str	r2, [r3, #0x38]
  35fb0c: ab10         	add	r3, sp, #0x40
  35fb0e: 4618         	mov	r0, r3
  35fb10: f055 f700    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455e00
  35fb14: ab06         	add	r3, sp, #0x18
  35fb16: 4618         	mov	r0, r3
  35fb18: f02a f470    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a8e0
  35fb1c: 9b05         	ldr	r3, [sp, #0x14]
  35fb1e: 6b9b         	ldr	r3, [r3, #0x38]
  35fb20: 4618         	mov	r0, r3
  35fb22: f238 f9e1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2383c2
  35fb26: 9b05         	ldr	r3, [sp, #0x14]
  35fb28: 6b1b         	ldr	r3, [r3, #0x30]
  35fb2a: 681b         	ldr	r3, [r3]
  35fb2c: f503 73d6    	add.w	r3, r3, #0x1ac
  35fb30: 681b         	ldr	r3, [r3]
  35fb32: 9a05         	ldr	r2, [sp, #0x14]
  35fb34: 6b12         	ldr	r2, [r2, #0x30]
  35fb36: 4610         	mov	r0, r2
  35fb38: 4798         	blx	r3
  35fb3a: 4603         	mov	r3, r0
  35fb3c: ed93 7a00    	vldr	s14, [r3]
  35fb40: 9b05         	ldr	r3, [sp, #0x14]
  35fb42: 6c9b         	ldr	r3, [r3, #0x48]
  35fb44: ee06 3a90    	vmov	s13, r3
  35fb48: eef8 7ae6    	vcvt.f32.s32	s15, s13
  35fb4c: ee87 7a27    	vdiv.f32	s14, s14, s15
  35fb50: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  35fb54: ee77 7a27    	vadd.f32	s15, s14, s15
  35fb58: eefd 7ae7    	vcvt.s32.f32	s15, s15
  35fb5c: ee17 2a90    	vmov	r2, s15
  35fb60: 9b05         	ldr	r3, [sp, #0x14]
  35fb62: 651a         	str	r2, [r3, #0x50]
  35fb64: 9b05         	ldr	r3, [sp, #0x14]
  35fb66: 6b1b         	ldr	r3, [r3, #0x30]
  35fb68: 681b         	ldr	r3, [r3]
  35fb6a: f503 73d6    	add.w	r3, r3, #0x1ac
  35fb6e: 681b         	ldr	r3, [r3]
  35fb70: 9a05         	ldr	r2, [sp, #0x14]
  35fb72: 6b12         	ldr	r2, [r2, #0x30]
  35fb74: 4610         	mov	r0, r2
  35fb76: 4798         	blx	r3
  35fb78: 4603         	mov	r3, r0
  35fb7a: ed93 7a01    	vldr	s14, [r3, #4]
  35fb7e: 9b05         	ldr	r3, [sp, #0x14]
  35fb80: 6c9b         	ldr	r3, [r3, #0x48]
  35fb82: ee06 3a90    	vmov	s13, r3
  35fb86: eef8 7ae6    	vcvt.f32.s32	s15, s13
  35fb8a: ee87 7a27    	vdiv.f32	s14, s14, s15
  35fb8e: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  35fb92: ee77 7a27    	vadd.f32	s15, s14, s15
  35fb96: eefd 7ae7    	vcvt.s32.f32	s15, s15
  35fb9a: ee17 2a90    	vmov	r2, s15
  35fb9e: 9b05         	ldr	r3, [sp, #0x14]
  35fba0: 655a         	str	r2, [r3, #0x54]
  35fba2: 9b05         	ldr	r3, [sp, #0x14]
  35fba4: 6d1b         	ldr	r3, [r3, #0x50]
  35fba6: 9a05         	ldr	r2, [sp, #0x14]
  35fba8: 6d52         	ldr	r2, [r2, #0x54]
  35fbaa: fb02 f303    	mul	r3, r2, r3
  35fbae: 4618         	mov	r0, r3
  35fbb0: f23a f97c    	bl	0x599eac <cocos2d::CCArray::createWithCapacity(unsigned int)> @ imm = #0x23a2f8
  35fbb4: 4602         	mov	r2, r0
  35fbb6: 9b05         	ldr	r3, [sp, #0x14]
  35fbb8: 61da         	str	r2, [r3, #0x1c]
  35fbba: 9b05         	ldr	r3, [sp, #0x14]
  35fbbc: 69db         	ldr	r3, [r3, #0x1c]
  35fbbe: 4618         	mov	r0, r3
  35fbc0: f238 f992    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x238324
  35fbc4: 9804         	ldr	r0, [sp, #0x10]
  35fbc6: f055 f39b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x455736
  35fbca: 4603         	mov	r3, r0
  35fbcc: 4618         	mov	r0, r3
  35fbce: f29c f9df    	bl	0x5fbf90 <cocos2d::CCTMXMapInfo::formatWithTMXFile(char const*)> @ imm = #0x29c3be
  35fbd2: 4603         	mov	r3, r0
  35fbd4: 930f         	str	r3, [sp, #0x3c]
  35fbd6: 2300         	movs	r3, #0x0
  35fbd8: 9307         	str	r3, [sp, #0x1c]
  35fbda: 9b0f         	ldr	r3, [sp, #0x3c]
  35fbdc: 681b         	ldr	r3, [r3]
  35fbde: 3330         	adds	r3, #0x30
  35fbe0: 681b         	ldr	r3, [r3]
  35fbe2: 980f         	ldr	r0, [sp, #0x3c]
  35fbe4: 4798         	blx	r3
  35fbe6: 4603         	mov	r3, r0
  35fbe8: 4618         	mov	r0, r3
  35fbea: f23a fa79    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x23a4f2
  35fbee: 4603         	mov	r3, r0
  35fbf0: 9308         	str	r3, [sp, #0x20]
  35fbf2: 2300         	movs	r3, #0x0
  35fbf4: 9309         	str	r3, [sp, #0x24]
  35fbf6: e043         	b	0x35fc80 <MapManager::loadMap(std::string)+0xff4> @ imm = #0x86
  35fbf8: 9b0f         	ldr	r3, [sp, #0x3c]
  35fbfa: 681b         	ldr	r3, [r3]
  35fbfc: 3330         	adds	r3, #0x30
  35fbfe: 681b         	ldr	r3, [r3]
  35fc00: 980f         	ldr	r0, [sp, #0x3c]
  35fc02: 4798         	blx	r3
  35fc04: 4602         	mov	r2, r0
  35fc06: 9b09         	ldr	r3, [sp, #0x24]
  35fc08: 4610         	mov	r0, r2
  35fc0a: 4619         	mov	r1, r3
  35fc0c: f23a fa88    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23a510
  35fc10: 4603         	mov	r3, r0
  35fc12: 9307         	str	r3, [sp, #0x1c]
  35fc14: ab06         	add	r3, sp, #0x18
  35fc16: 4618         	mov	r0, r3
  35fc18: f02a f3ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a7d8
  35fc1c: aa10         	add	r2, sp, #0x40
  35fc1e: ab06         	add	r3, sp, #0x18
  35fc20: 4610         	mov	r0, r2
  35fc22: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x35fd80 <MapManager::loadMap(std::string)+0x10f4>
  35fc24: 447a         	add	r2, pc
  35fc26: 4611         	mov	r1, r2
  35fc28: 461a         	mov	r2, r3
  35fc2a: f056 f719    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456e32
  35fc2e: ab06         	add	r3, sp, #0x18
  35fc30: 4618         	mov	r0, r3
  35fc32: f02a f3e3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a7c6
  35fc36: 9b07         	ldr	r3, [sp, #0x1c]
  35fc38: 3318         	adds	r3, #0x18
  35fc3a: aa10         	add	r2, sp, #0x40
  35fc3c: 4610         	mov	r0, r2
  35fc3e: 4619         	mov	r1, r3
  35fc40: f055 f51c    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x455a38
  35fc44: 4603         	mov	r3, r0
  35fc46: 2b00         	cmp	r3, #0x0
  35fc48: bf14         	ite	ne
  35fc4a: 2300         	movne	r3, #0x0
  35fc4c: 2301         	moveq	r3, #0x1
  35fc4e: b2db         	uxtb	r3, r3
  35fc50: 2b00         	cmp	r3, #0x0
  35fc52: d00a         	beq	0x35fc6a <MapManager::loadMap(std::string)+0xfde> @ imm = #0x14
  35fc54: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x35fd84 <MapManager::loadMap(std::string)+0x10f8>
  35fc56: 58e3         	ldr	r3, [r4, r3]
  35fc58: 781b         	ldrb	r3, [r3]
  35fc5a: 2b00         	cmp	r3, #0x0
  35fc5c: d003         	beq	0x35fc66 <MapManager::loadMap(std::string)+0xfda> @ imm = #0x6
  35fc5e: 9b07         	ldr	r3, [sp, #0x1c]
  35fc60: 2264         	movs	r2, #0x64
  35fc62: f883 2029    	strb.w	r2, [r3, #0x29]
  35fc66: 2500         	movs	r5, #0x0
  35fc68: e000         	b	0x35fc6c <MapManager::loadMap(std::string)+0xfe0> @ imm = #0x0
  35fc6a: 2501         	movs	r5, #0x1
  35fc6c: ab10         	add	r3, sp, #0x40
  35fc6e: 4618         	mov	r0, r3
  35fc70: f055 f650    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455ca0
  35fc74: 2d01         	cmp	r5, #0x1
  35fc76: d107         	bne	0x35fc88 <MapManager::loadMap(std::string)+0xffc> @ imm = #0xe
  35fc78: bf00         	nop
  35fc7a: 9b09         	ldr	r3, [sp, #0x24]
  35fc7c: 3301         	adds	r3, #0x1
  35fc7e: 9309         	str	r3, [sp, #0x24]
  35fc80: 9a09         	ldr	r2, [sp, #0x24]
  35fc82: 9b08         	ldr	r3, [sp, #0x20]
  35fc84: 429a         	cmp	r2, r3
  35fc86: dbb7         	blt	0x35fbf8 <MapManager::loadMap(std::string)+0xf6c> @ imm = #-0x92
  35fc88: 2300         	movs	r3, #0x0
  35fc8a: 930a         	str	r3, [sp, #0x28]
  35fc8c: e01c         	b	0x35fcc8 <MapManager::loadMap(std::string)+0x103c> @ imm = #0x38
  35fc8e: 2300         	movs	r3, #0x0
  35fc90: 930b         	str	r3, [sp, #0x2c]
  35fc92: e011         	b	0x35fcb8 <MapManager::loadMap(std::string)+0x102c> @ imm = #0x22
  35fc94: 9b0a         	ldr	r3, [sp, #0x28]
  35fc96: 9300         	str	r3, [sp]
  35fc98: 9b08         	ldr	r3, [sp, #0x20]
  35fc9a: 9301         	str	r3, [sp, #0x4]
  35fc9c: 9b0e         	ldr	r3, [sp, #0x38]
  35fc9e: 9302         	str	r3, [sp, #0x8]
  35fca0: 9805         	ldr	r0, [sp, #0x14]
  35fca2: 9907         	ldr	r1, [sp, #0x1c]
  35fca4: 9a0f         	ldr	r2, [sp, #0x3c]
  35fca6: 9b0b         	ldr	r3, [sp, #0x2c]
  35fca8: f000 fbf6    	bl	0x360498 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)> @ imm = #0x7ec
  35fcac: 9b08         	ldr	r3, [sp, #0x20]
  35fcae: 3301         	adds	r3, #0x1
  35fcb0: 9308         	str	r3, [sp, #0x20]
  35fcb2: 9b0b         	ldr	r3, [sp, #0x2c]
  35fcb4: 3301         	adds	r3, #0x1
  35fcb6: 930b         	str	r3, [sp, #0x2c]
  35fcb8: 9b05         	ldr	r3, [sp, #0x14]
  35fcba: 6d1a         	ldr	r2, [r3, #0x50]
  35fcbc: 9b0b         	ldr	r3, [sp, #0x2c]
  35fcbe: 429a         	cmp	r2, r3
  35fcc0: dce8         	bgt	0x35fc94 <MapManager::loadMap(std::string)+0x1008> @ imm = #-0x30
  35fcc2: 9b0a         	ldr	r3, [sp, #0x28]
  35fcc4: 3301         	adds	r3, #0x1
  35fcc6: 930a         	str	r3, [sp, #0x28]
  35fcc8: 9b05         	ldr	r3, [sp, #0x14]
  35fcca: 6d5a         	ldr	r2, [r3, #0x54]
  35fccc: 9b0a         	ldr	r3, [sp, #0x28]
  35fcce: 429a         	cmp	r2, r3
  35fcd0: dcdd         	bgt	0x35fc8e <MapManager::loadMap(std::string)+0x1002> @ imm = #-0x46
  35fcd2: 9b05         	ldr	r3, [sp, #0x14]
  35fcd4: 6b1b         	ldr	r3, [r3, #0x30]
  35fcd6: 681b         	ldr	r3, [r3]
  35fcd8: f503 73d6    	add.w	r3, r3, #0x1ac
  35fcdc: 681b         	ldr	r3, [r3]
  35fcde: 9a05         	ldr	r2, [sp, #0x14]
  35fce0: 6b12         	ldr	r2, [r2, #0x30]
  35fce2: 4610         	mov	r0, r2
  35fce4: 4798         	blx	r3
  35fce6: 4603         	mov	r3, r0
  35fce8: aa10         	add	r2, sp, #0x40
  35fcea: 4610         	mov	r0, r2
  35fcec: 4619         	mov	r1, r3
  35fcee: f233 f9df    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x2333be
  35fcf2: 2300         	movs	r3, #0x0
  35fcf4: 930c         	str	r3, [sp, #0x30]
  35fcf6: e016         	b	0x35fd26 <MapManager::loadMap(std::string)+0x109a> @ imm = #0x2c
  35fcf8: 2300         	movs	r3, #0x0
  35fcfa: 930d         	str	r3, [sp, #0x34]
  35fcfc: e007         	b	0x35fd0e <MapManager::loadMap(std::string)+0x1082> @ imm = #0xe
  35fcfe: 9805         	ldr	r0, [sp, #0x14]
  35fd00: 990d         	ldr	r1, [sp, #0x34]
  35fd02: 9a0c         	ldr	r2, [sp, #0x30]
  35fd04: f001 f8f4    	bl	0x360ef0 <MapManager::addStaticBodyShape(int, int)> @ imm = #0x11e8
  35fd08: 9b0d         	ldr	r3, [sp, #0x34]
  35fd0a: 3301         	adds	r3, #0x1
  35fd0c: 930d         	str	r3, [sp, #0x34]
  35fd0e: eddd 7a10    	vldr	s15, [sp, #64]
  35fd12: eefd 7ae7    	vcvt.s32.f32	s15, s15
  35fd16: ee17 2a90    	vmov	r2, s15
  35fd1a: 9b0d         	ldr	r3, [sp, #0x34]
  35fd1c: 429a         	cmp	r2, r3
  35fd1e: dcee         	bgt	0x35fcfe <MapManager::loadMap(std::string)+0x1072> @ imm = #-0x24
  35fd20: 9b0c         	ldr	r3, [sp, #0x30]
  35fd22: 3301         	adds	r3, #0x1
  35fd24: 930c         	str	r3, [sp, #0x30]
  35fd26: eddd 7a11    	vldr	s15, [sp, #68]
  35fd2a: eefd 7ae7    	vcvt.s32.f32	s15, s15
  35fd2e: ee17 2a90    	vmov	r2, s15
  35fd32: 9b0c         	ldr	r3, [sp, #0x30]
  35fd34: 429a         	cmp	r2, r3
  35fd36: dcdf         	bgt	0x35fcf8 <MapManager::loadMap(std::string)+0x106c> @ imm = #-0x42
  35fd38: e016         	b	0x35fd68 <MapManager::loadMap(std::string)+0x10dc> @ imm = #0x2c
  35fd3a: ab10         	add	r3, sp, #0x40
  35fd3c: 4618         	mov	r0, r3
  35fd3e: f055 f5e9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455bd2
  35fd42: e7ff         	b	0x35fd44 <MapManager::loadMap(std::string)+0x10b8> @ imm = #-0x2
  35fd44: ab06         	add	r3, sp, #0x18
  35fd46: 4618         	mov	r0, r3
  35fd48: f02a f358    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a6b0
  35fd4c: f028 f1ae    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42835c
  35fd50: ab06         	add	r3, sp, #0x18
  35fd52: 4618         	mov	r0, r3
  35fd54: f02a f352    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a6a4
  35fd58: f028 f1a8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x428350
  35fd5c: ab10         	add	r3, sp, #0x40
  35fd5e: 4618         	mov	r0, r3
  35fd60: f055 f5d8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455bb0
  35fd64: f028 f1a2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x428344
  35fd68: b013         	add	sp, #0x4c
  35fd6a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35fd6b); words below are literal-pool data ---
  35fd6c: db94         	blt	0x35fc98 <MapManager::loadMap(std::string)+0x100c> @ imm = #-0xd8
  35fd6e: ffff d250    	<unknown>
  35fd72: 0046         	lsls	r6, r0, #0x1
  35fd74: d22e         	bhs	0x35fdd4 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x4c> @ imm = #0x5c
  35fd76: 0046         	lsls	r6, r0, #0x1
  35fd78: d20c         	bhs	0x35fd94 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0xc> @ imm = #0x18
  35fd7a: 0046         	lsls	r6, r0, #0x1
  35fd7c: d1f6         	bne	0x35fd6c <MapManager::loadMap(std::string)+0x10e0> @ imm = #-0x14
  35fd7e: 0046         	lsls	r6, r0, #0x1
  35fd80: d0c8         	beq	0x35fd14 <MapManager::loadMap(std::string)+0x1088> @ imm = #-0x70
  35fd82: 0046         	lsls	r6, r0, #0x1
  35fd84: db98         	blt	0x35fcb8 <MapManager::loadMap(std::string)+0x102c> @ imm = #-0xd0
  35fd86: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MapManager::loadSpritesFromLayer
//      file offset 0x35fd88 (= ELF address; Ghidra 0x36fd88), 412 bytes, Thumb-2
  35fd88: b510         	push	{r4, lr}
  35fd8a: b090         	sub	sp, #0x40
  35fd8c: 9003         	str	r0, [sp, #0xc]
  35fd8e: 9102         	str	r1, [sp, #0x8]
  35fd90: 9201         	str	r2, [sp, #0x4]
  35fd92: 9300         	str	r3, [sp]
  35fd94: 9802         	ldr	r0, [sp, #0x8]
  35fd96: f055 f2b3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x455566
  35fd9a: 4604         	mov	r4, r0
  35fd9c: ab0a         	add	r3, sp, #0x28
  35fd9e: 4618         	mov	r0, r3
  35fda0: f02a f328    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a650
  35fda4: aa0c         	add	r2, sp, #0x30
  35fda6: ab0a         	add	r3, sp, #0x28
  35fda8: 4610         	mov	r0, r2
  35fdaa: 4621         	mov	r1, r4
  35fdac: 461a         	mov	r2, r3
  35fdae: f056 f657    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456cae
  35fdb2: ab0c         	add	r3, sp, #0x30
  35fdb4: 9803         	ldr	r0, [sp, #0xc]
  35fdb6: 4619         	mov	r1, r3
  35fdb8: f005 fb46    	bl	0x365448 <MapManager::objectsNamed(std::string)> @ imm = #0x568c
  35fdbc: 4603         	mov	r3, r0
  35fdbe: 9306         	str	r3, [sp, #0x18]
  35fdc0: ab0c         	add	r3, sp, #0x30
  35fdc2: 4618         	mov	r0, r3
  35fdc4: f055 f5a6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455b4c
  35fdc8: ab0a         	add	r3, sp, #0x28
  35fdca: 4618         	mov	r0, r3
  35fdcc: f02a f316    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a62c
  35fdd0: 2300         	movs	r3, #0x0
  35fdd2: 9305         	str	r3, [sp, #0x14]
  35fdd4: e071         	b	0x35feba <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x132> @ imm = #0xe2
  35fdd6: 9b05         	ldr	r3, [sp, #0x14]
  35fdd8: 9806         	ldr	r0, [sp, #0x18]
  35fdda: 4619         	mov	r1, r3
  35fddc: f23a f9a0    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x23a340
  35fde0: 4603         	mov	r3, r0
  35fde2: 9307         	str	r3, [sp, #0x1c]
  35fde4: 9b07         	ldr	r3, [sp, #0x1c]
  35fde6: 2b00         	cmp	r3, #0x0
  35fde8: d064         	beq	0x35feb4 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x12c> @ imm = #0xc8
  35fdea: ab0a         	add	r3, sp, #0x28
  35fdec: 4618         	mov	r0, r3
  35fdee: f02a f301    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a602
  35fdf2: aa0c         	add	r2, sp, #0x30
  35fdf4: ab0a         	add	r3, sp, #0x28
  35fdf6: 4610         	mov	r0, r2
  35fdf8: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x35ff18 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x190>
  35fdfa: 447a         	add	r2, pc
  35fdfc: 4611         	mov	r1, r2
  35fdfe: 461a         	mov	r2, r3
  35fe00: f056 f62e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456c5c
  35fe04: aa04         	add	r2, sp, #0x10
  35fe06: ab0c         	add	r3, sp, #0x30
  35fe08: 4610         	mov	r0, r2
  35fe0a: 9903         	ldr	r1, [sp, #0xc]
  35fe0c: 9a07         	ldr	r2, [sp, #0x1c]
  35fe0e: f005 fbbb    	bl	0x365588 <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)> @ imm = #0x5776
  35fe12: ab0c         	add	r3, sp, #0x30
  35fe14: 4618         	mov	r0, r3
  35fe16: f055 f57d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455afa
  35fe1a: ab0a         	add	r3, sp, #0x28
  35fe1c: 4618         	mov	r0, r3
  35fe1e: f02a f2ed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a5da
  35fe22: ab04         	add	r3, sp, #0x10
  35fe24: 4618         	mov	r0, r3
  35fe26: f055 f26b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4554d6
  35fe2a: 4603         	mov	r3, r0
  35fe2c: 4a3b         	ldr	r2, [pc, #0xec]         @ 0x35ff1c <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x194>
  35fe2e: 447a         	add	r2, pc
  35fe30: 4610         	mov	r0, r2
  35fe32: 4619         	mov	r1, r3
  35fe34: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x35ff20 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x198>
  35fe36: 447b         	add	r3, pc
  35fe38: 461a         	mov	r2, r3
  35fe3a: f239 fe69    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x239cd2
  35fe3e: 4603         	mov	r3, r0
  35fe40: 9308         	str	r3, [sp, #0x20]
  35fe42: ab0c         	add	r3, sp, #0x30
  35fe44: 4618         	mov	r0, r3
  35fe46: 9903         	ldr	r1, [sp, #0xc]
  35fe48: 9a07         	ldr	r2, [sp, #0x1c]
  35fe4a: f005 fbed    	bl	0x365628 <MapManager::objectLocation(cocos2d::CCDictionary*)> @ imm = #0x57da
  35fe4e: 9808         	ldr	r0, [sp, #0x20]
  35fe50: f239 fd6a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x239ad4
  35fe54: 4603         	mov	r3, r0
  35fe56: 4618         	mov	r0, r3
  35fe58: f278 fa54    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2784a8
  35fe5c: 4603         	mov	r3, r0
  35fe5e: 9309         	str	r3, [sp, #0x24]
  35fe60: 9b09         	ldr	r3, [sp, #0x24]
  35fe62: 681b         	ldr	r3, [r3]
  35fe64: 334c         	adds	r3, #0x4c
  35fe66: 681c         	ldr	r4, [r3]
  35fe68: ed9d 7b0c    	vldr	d7, [sp, #48]
  35fe6c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  35fe70: ed9d 7b0e    	vldr	d7, [sp, #56]
  35fe74: eef7 7bc7    	vcvt.f32.f64	s15, d7
  35fe78: ab0a         	add	r3, sp, #0x28
  35fe7a: 4618         	mov	r0, r3
  35fe7c: ee16 1a90    	vmov	r1, s13
  35fe80: ee17 2a90    	vmov	r2, s15
  35fe84: f232 ff34    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x232e68
  35fe88: ab0a         	add	r3, sp, #0x28
  35fe8a: 9809         	ldr	r0, [sp, #0x24]
  35fe8c: 4619         	mov	r1, r3
  35fe8e: 47a0         	blx	r4
  35fe90: 9b01         	ldr	r3, [sp, #0x4]
  35fe92: 681b         	ldr	r3, [r3]
  35fe94: 33cc         	adds	r3, #0xcc
  35fe96: 681b         	ldr	r3, [r3]
  35fe98: 9801         	ldr	r0, [sp, #0x4]
  35fe9a: 9909         	ldr	r1, [sp, #0x24]
  35fe9c: 9a00         	ldr	r2, [sp]
  35fe9e: 4798         	blx	r3
  35fea0: 9b03         	ldr	r3, [sp, #0xc]
  35fea2: 6bdb         	ldr	r3, [r3, #0x3c]
  35fea4: 4618         	mov	r0, r3
  35fea6: 9909         	ldr	r1, [sp, #0x24]
  35fea8: f23a f9e0    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x23a3c0
  35feac: ab04         	add	r3, sp, #0x10
  35feae: 4618         	mov	r0, r3
  35feb0: f055 f530    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455a60
  35feb4: 9b05         	ldr	r3, [sp, #0x14]
  35feb6: 3301         	adds	r3, #0x1
  35feb8: 9305         	str	r3, [sp, #0x14]
  35feba: 9c05         	ldr	r4, [sp, #0x14]
  35febc: 9806         	ldr	r0, [sp, #0x18]
  35febe: f23a f90f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x23a21e
  35fec2: 4603         	mov	r3, r0
  35fec4: 429c         	cmp	r4, r3
  35fec6: bf2c         	ite	hs
  35fec8: 2300         	movhs	r3, #0x0
  35feca: 2301         	movlo	r3, #0x1
  35fecc: b2db         	uxtb	r3, r3
  35fece: 2b00         	cmp	r3, #0x0
  35fed0: d181         	bne	0x35fdd6 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x4e> @ imm = #-0xfe
  35fed2: 9b06         	ldr	r3, [sp, #0x18]
  35fed4: 4618         	mov	r0, r3
  35fed6: f237 ffef    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x237fde
  35feda: e01b         	b	0x35ff14 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x18c> @ imm = #0x36
  35fedc: ab0c         	add	r3, sp, #0x30
  35fede: 4618         	mov	r0, r3
  35fee0: f055 f518    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455a30
  35fee4: e7ff         	b	0x35fee6 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x15e> @ imm = #-0x2
  35fee6: ab0a         	add	r3, sp, #0x28
  35fee8: 4618         	mov	r0, r3
  35feea: f02a f287    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a50e
  35feee: f028 f0dd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4281ba
  35fef2: ab0c         	add	r3, sp, #0x30
  35fef4: 4618         	mov	r0, r3
  35fef6: f055 f50d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455a1a
  35fefa: e7ff         	b	0x35fefc <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)+0x174> @ imm = #-0x2
  35fefc: ab0a         	add	r3, sp, #0x28
  35fefe: 4618         	mov	r0, r3
  35ff00: f02a f27c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a4f8
  35ff04: f028 f0d2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4281a4
  35ff08: ab04         	add	r3, sp, #0x10
  35ff0a: 4618         	mov	r0, r3
  35ff0c: f055 f502    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455a04
  35ff10: f028 f0cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x428198
  35ff14: b010         	add	sp, #0x40
  35ff16: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35ff17); words below are literal-pool data ---
  35ff18: cefa         	ldm	r6, {r1, r3, r4, r5, r6, r7}
  35ff1a: 0046         	lsls	r6, r0, #0x1
  35ff1c: cece         	ldm	r6, {r1, r2, r3, r6, r7}
  35ff1e: 0046         	lsls	r6, r0, #0x1
  35ff20: cece         	ldm	r6, {r1, r2, r3, r6, r7}
  35ff22: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::getMap
//      file offset 0x35ff24 (= ELF address; Ghidra 0x36ff24), 14 bytes, Thumb-2
  35ff24: b082         	sub	sp, #0x8
  35ff26: 9001         	str	r0, [sp, #0x4]
  35ff28: 9b01         	ldr	r3, [sp, #0x4]
  35ff2a: 695b         	ldr	r3, [r3, #0x14]
  35ff2c: 4618         	mov	r0, r3
  35ff2e: b002         	add	sp, #0x8
  35ff30: 4770         	bx	lr

// ==== MapManager::addToLayer
//      file offset 0x35ff34 (= ELF address; Ghidra 0x36ff34), 296 bytes, Thumb-2
  35ff34: b530         	push	{r4, r5, lr}
  35ff36: b087         	sub	sp, #0x1c
  35ff38: 9003         	str	r0, [sp, #0xc]
  35ff3a: 9102         	str	r1, [sp, #0x8]
  35ff3c: 9201         	str	r2, [sp, #0x4]
  35ff3e: 9300         	str	r3, [sp]
  35ff40: ab04         	add	r3, sp, #0x10
  35ff42: 4618         	mov	r0, r3
  35ff44: f02a f256    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a4ac
  35ff48: aa05         	add	r2, sp, #0x14
  35ff4a: ab04         	add	r3, sp, #0x10
  35ff4c: 4610         	mov	r0, r2
  35ff4e: 4a40         	ldr	r2, [pc, #0x100]        @ 0x360050 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0x11c>
  35ff50: 447a         	add	r2, pc
  35ff52: 4611         	mov	r1, r2
  35ff54: 461a         	mov	r2, r3
  35ff56: f056 f583    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456b06
  35ff5a: 9b01         	ldr	r3, [sp, #0x4]
  35ff5c: 3b01         	subs	r3, #0x1
  35ff5e: aa05         	add	r2, sp, #0x14
  35ff60: 9803         	ldr	r0, [sp, #0xc]
  35ff62: 4611         	mov	r1, r2
  35ff64: 9a02         	ldr	r2, [sp, #0x8]
  35ff66: f7ff ff0f    	bl	0x35fd88 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)> @ imm = #-0x1e2
  35ff6a: ab05         	add	r3, sp, #0x14
  35ff6c: 4618         	mov	r0, r3
  35ff6e: f055 f4d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4559a2
  35ff72: ab04         	add	r3, sp, #0x10
  35ff74: 4618         	mov	r0, r3
  35ff76: f02a f241    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a482
  35ff7a: 9b02         	ldr	r3, [sp, #0x8]
  35ff7c: 681b         	ldr	r3, [r3]
  35ff7e: 33d0         	adds	r3, #0xd0
  35ff80: 681c         	ldr	r4, [r3]
  35ff82: 9d02         	ldr	r5, [sp, #0x8]
  35ff84: 9803         	ldr	r0, [sp, #0xc]
  35ff86: f7ff ffcd    	bl	0x35ff24 <MapManager::getMap()> @ imm = #-0x66
  35ff8a: 4603         	mov	r3, r0
  35ff8c: 4628         	mov	r0, r5
  35ff8e: 4619         	mov	r1, r3
  35ff90: 9a01         	ldr	r2, [sp, #0x4]
  35ff92: 2301         	movs	r3, #0x1
  35ff94: 47a0         	blx	r4
  35ff96: ab04         	add	r3, sp, #0x10
  35ff98: 4618         	mov	r0, r3
  35ff9a: f02a f22b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a456
  35ff9e: aa05         	add	r2, sp, #0x14
  35ffa0: ab04         	add	r3, sp, #0x10
  35ffa2: 4610         	mov	r0, r2
  35ffa4: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x360054 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0x120>
  35ffa6: 447a         	add	r2, pc
  35ffa8: 4611         	mov	r1, r2
  35ffaa: 461a         	mov	r2, r3
  35ffac: f056 f558    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456ab0
  35ffb0: ab05         	add	r3, sp, #0x14
  35ffb2: 9803         	ldr	r0, [sp, #0xc]
  35ffb4: 4619         	mov	r1, r3
  35ffb6: 9a02         	ldr	r2, [sp, #0x8]
  35ffb8: 9b01         	ldr	r3, [sp, #0x4]
  35ffba: f7ff fee5    	bl	0x35fd88 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)> @ imm = #-0x236
  35ffbe: ab05         	add	r3, sp, #0x14
  35ffc0: 4618         	mov	r0, r3
  35ffc2: f055 f4a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45594e
  35ffc6: ab04         	add	r3, sp, #0x10
  35ffc8: 4618         	mov	r0, r3
  35ffca: f02a f217    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a42e
  35ffce: ab04         	add	r3, sp, #0x10
  35ffd0: 4618         	mov	r0, r3
  35ffd2: f02a f20f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a41e
  35ffd6: aa05         	add	r2, sp, #0x14
  35ffd8: ab04         	add	r3, sp, #0x10
  35ffda: 4610         	mov	r0, r2
  35ffdc: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x360058 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0x124>
  35ffde: 447a         	add	r2, pc
  35ffe0: 4611         	mov	r1, r2
  35ffe2: 461a         	mov	r2, r3
  35ffe4: f056 f53c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x456a78
  35ffe8: ab05         	add	r3, sp, #0x14
  35ffea: 9803         	ldr	r0, [sp, #0xc]
  35ffec: 4619         	mov	r1, r3
  35ffee: 9a02         	ldr	r2, [sp, #0x8]
  35fff0: 9b00         	ldr	r3, [sp]
  35fff2: f7ff fec9    	bl	0x35fd88 <MapManager::loadSpritesFromLayer(std::string, cocos2d::CCNode*, int)> @ imm = #-0x26e
  35fff6: ab05         	add	r3, sp, #0x14
  35fff8: 4618         	mov	r0, r3
  35fffa: f055 f48b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455916
  35fffe: ab04         	add	r3, sp, #0x10
  360000: 4618         	mov	r0, r3
  360002: f02a f1fb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a3f6
  360006: e020         	b	0x36004a <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0x116> @ imm = #0x40
  360008: ab05         	add	r3, sp, #0x14
  36000a: 4618         	mov	r0, r3
  36000c: f055 f482    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455904
  360010: e7ff         	b	0x360012 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0xde> @ imm = #-0x2
  360012: ab04         	add	r3, sp, #0x10
  360014: 4618         	mov	r0, r3
  360016: f02a f1f1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a3e2
  36001a: f028 f047    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42808e
  36001e: ab05         	add	r3, sp, #0x14
  360020: 4618         	mov	r0, r3
  360022: f055 f477    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4558ee
  360026: e7ff         	b	0x360028 <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0xf4> @ imm = #-0x2
  360028: ab04         	add	r3, sp, #0x10
  36002a: 4618         	mov	r0, r3
  36002c: f02a f1e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a3cc
  360030: f028 f03c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x428078
  360034: ab05         	add	r3, sp, #0x14
  360036: 4618         	mov	r0, r3
  360038: f055 f46c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4558d8
  36003c: e7ff         	b	0x36003e <MapManager::addToLayer(cocos2d::CCLayer*, int, int)+0x10a> @ imm = #-0x2
  36003e: ab04         	add	r3, sp, #0x10
  360040: 4618         	mov	r0, r3
  360042: f02a f1db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a3b6
  360046: f028 f031    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x428062
  36004a: b007         	add	sp, #0x1c
  36004c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x36004d); words below are literal-pool data ---
  36004e: bf00         	nop
  360050: cdbc         	ldm	r5, {r2, r3, r4, r5, r7}
  360052: 0046         	lsls	r6, r0, #0x1
  360054: cd72         	ldm	r5, {r1, r4, r5, r6}
  360056: 0046         	lsls	r6, r0, #0x1
  360058: cd46         	ldm	r5!, {r1, r2, r6}
  36005a: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::isCollisionTile
//      file offset 0x36005c (= ELF address; Ghidra 0x37005c), 172 bytes, Thumb-2
  36005c: b082         	sub	sp, #0x8
  36005e: b510         	push	{r4, lr}
  360060: b086         	sub	sp, #0x18
  360062: 9001         	str	r0, [sp, #0x4]
  360064: a908         	add	r1, sp, #0x20
  360066: e881 000c    	stm.w	r1, {r2, r3}
  36006a: ed9d 7b08    	vldr	d7, [sp, #32]
  36006e: eeb5 7bc0    	vcmpe.f64	d7, #0
  360072: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360076: dd40         	ble	0x3600fa <MapManager::isCollisionTile(cpVect)+0x9e> @ imm = #0x80
  360078: ed9d 7b0a    	vldr	d7, [sp, #40]
  36007c: eeb5 7bc0    	vcmpe.f64	d7, #0
  360080: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360084: dd39         	ble	0x3600fa <MapManager::isCollisionTile(cpVect)+0x9e> @ imm = #0x72
  360086: ed9d 6b08    	vldr	d6, [sp, #32]
  36008a: 9b01         	ldr	r3, [sp, #0x4]
  36008c: 6c1b         	ldr	r3, [r3, #0x40]
  36008e: ee05 3a90    	vmov	s11, r3
  360092: eeb8 7be5    	vcvt.f64.s32	d7, s11
  360096: eeb4 6bc7    	vcmpe.f64	d6, d7
  36009a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36009e: d52c         	bpl	0x3600fa <MapManager::isCollisionTile(cpVect)+0x9e> @ imm = #0x58
  3600a0: ed9d 6b0a    	vldr	d6, [sp, #40]
  3600a4: 9b01         	ldr	r3, [sp, #0x4]
  3600a6: 6c5b         	ldr	r3, [r3, #0x44]
  3600a8: ee05 3a90    	vmov	s11, r3
  3600ac: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3600b0: eeb4 6bc7    	vcmpe.f64	d6, d7
  3600b4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3600b8: d51f         	bpl	0x3600fa <MapManager::isCollisionTile(cpVect)+0x9e> @ imm = #0x3e
  3600ba: 9b01         	ldr	r3, [sp, #0x4]
  3600bc: 6b1c         	ldr	r4, [r3, #0x30]
  3600be: ed9d 7b08    	vldr	d7, [sp, #32]
  3600c2: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3600c6: ed9d 7b0a    	vldr	d7, [sp, #40]
  3600ca: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3600ce: ab04         	add	r3, sp, #0x10
  3600d0: 4618         	mov	r0, r3
  3600d2: ee16 1a90    	vmov	r1, s13
  3600d6: ee17 2a90    	vmov	r2, s15
  3600da: f232 fe09    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x232c12
  3600de: ab04         	add	r3, sp, #0x10
  3600e0: 4620         	mov	r0, r4
  3600e2: 4619         	mov	r1, r3
  3600e4: f299 fe0e    	bl	0x5f9d04 <cocos2d::CCTMXLayer::tileGIDAt(cocos2d::CCPoint const&)> @ imm = #0x299c1c
  3600e8: 4603         	mov	r3, r0
  3600ea: 9303         	str	r3, [sp, #0xc]
  3600ec: 9b01         	ldr	r3, [sp, #0x4]
  3600ee: 6cda         	ldr	r2, [r3, #0x4c]
  3600f0: 9b03         	ldr	r3, [sp, #0xc]
  3600f2: 429a         	cmp	r2, r3
  3600f4: dd01         	ble	0x3600fa <MapManager::isCollisionTile(cpVect)+0x9e> @ imm = #0x2
  3600f6: 2301         	movs	r3, #0x1
  3600f8: e000         	b	0x3600fc <MapManager::isCollisionTile(cpVect)+0xa0> @ imm = #0x0
  3600fa: 2300         	movs	r3, #0x0
  3600fc: 4618         	mov	r0, r3
  3600fe: b006         	add	sp, #0x18
  360100: e8bd 4010    	pop.w	{r4, lr}
  360104: b002         	add	sp, #0x8
  360106: 4770         	bx	lr

// ==== MapManager::keyByPosition
//      file offset 0x360108 (= ELF address; Ghidra 0x370108), 260 bytes, Thumb-2
  360108: b082         	sub	sp, #0x8
  36010a: b530         	push	{r4, r5, lr}
  36010c: ed2d 8b02    	vpush	{d8}
  360110: b08b         	sub	sp, #0x2c
  360112: 9005         	str	r0, [sp, #0x14]
  360114: 9104         	str	r1, [sp, #0x10]
  360116: a910         	add	r1, sp, #0x40
  360118: e881 000c    	stm.w	r1, {r2, r3}
  36011c: 4c39         	ldr	r4, [pc, #0xe4]         @ 0x360204 <MapManager::keyByPosition(cpVect)+0xfc>
  36011e: 447c         	add	r4, pc
  360120: 9b04         	ldr	r3, [sp, #0x10]
  360122: 695b         	ldr	r3, [r3, #0x14]
  360124: 681b         	ldr	r3, [r3]
  360126: 3350         	adds	r3, #0x50
  360128: 681b         	ldr	r3, [r3]
  36012a: 9a04         	ldr	r2, [sp, #0x10]
  36012c: 6952         	ldr	r2, [r2, #0x14]
  36012e: 4610         	mov	r0, r2
  360130: 4798         	blx	r3
  360132: 4603         	mov	r3, r0
  360134: edd3 7a00    	vldr	s15, [r3]
  360138: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  36013c: 9b04         	ldr	r3, [sp, #0x10]
  36013e: 695b         	ldr	r3, [r3, #0x14]
  360140: 681b         	ldr	r3, [r3]
  360142: 3350         	adds	r3, #0x50
  360144: 681b         	ldr	r3, [r3]
  360146: 9a04         	ldr	r2, [sp, #0x10]
  360148: 6952         	ldr	r2, [r2, #0x14]
  36014a: 4610         	mov	r0, r2
  36014c: 4798         	blx	r3
  36014e: 4603         	mov	r3, r0
  360150: edd3 7a01    	vldr	s15, [r3, #4]
  360154: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360158: ab06         	add	r3, sp, #0x18
  36015a: 4618         	mov	r0, r3
  36015c: eeb0 0b48    	vmov.f64	d0, d8
  360160: eeb0 1b47    	vmov.f64	d1, d7
  360164: f7fd fc8c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x26e8
  360168: 466b         	mov	r3, sp
  36016a: ed9d 4b10    	vldr	d4, [sp, #64]
  36016e: ed9d 5b12    	vldr	d5, [sp, #72]
  360172: ed9d 6b06    	vldr	d6, [sp, #24]
  360176: ed9d 7b08    	vldr	d7, [sp, #32]
  36017a: 4618         	mov	r0, r3
  36017c: eeb0 0b44    	vmov.f64	d0, d4
  360180: eeb0 1b45    	vmov.f64	d1, d5
  360184: eeb0 2b46    	vmov.f64	d2, d6
  360188: eeb0 3b47    	vmov.f64	d3, d7
  36018c: f7fd fcb8    	bl	0x35db00 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x98> @ imm = #-0x2690
  360190: ad10         	add	r5, sp, #0x40
  360192: 466b         	mov	r3, sp
  360194: cb0f         	ldm	r3, {r0, r1, r2, r3}
  360196: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  36019a: ed9d 6b10    	vldr	d6, [sp, #64]
  36019e: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x360208 <MapManager::keyByPosition(cpVect)+0x100>
  3601a0: 58e3         	ldr	r3, [r4, r3]
  3601a2: 681b         	ldr	r3, [r3]
  3601a4: ee04 3a90    	vmov	s9, r3
  3601a8: eeb8 7be4    	vcvt.f64.s32	d7, s9
  3601ac: ee86 7b07    	vdiv.f64	d7, d6, d7
  3601b0: eefd 7bc7    	vcvt.s32.f64	s15, d7
  3601b4: eeb8 6be7    	vcvt.f64.s32	d6, s15
  3601b8: 9b04         	ldr	r3, [sp, #0x10]
  3601ba: 6c5b         	ldr	r3, [r3, #0x44]
  3601bc: ed9d 5b12    	vldr	d5, [sp, #72]
  3601c0: 4a11         	ldr	r2, [pc, #0x44]         @ 0x360208 <MapManager::keyByPosition(cpVect)+0x100>
  3601c2: 58a2         	ldr	r2, [r4, r2]
  3601c4: 6812         	ldr	r2, [r2]
  3601c6: ee04 2a90    	vmov	s9, r2
  3601ca: eeb8 7be4    	vcvt.f64.s32	d7, s9
  3601ce: ee85 7b07    	vdiv.f64	d7, d5, d7
  3601d2: eefd 5bc7    	vcvt.s32.f64	s11, d7
  3601d6: ee15 2a90    	vmov	r2, s11
  3601da: 1a9b         	subs	r3, r3, r2
  3601dc: ee04 3a90    	vmov	s9, r3
  3601e0: eeb8 7be4    	vcvt.f64.s32	d7, s9
  3601e4: 9b05         	ldr	r3, [sp, #0x14]
  3601e6: 4618         	mov	r0, r3
  3601e8: eeb0 0b46    	vmov.f64	d0, d6
  3601ec: eeb0 1b47    	vmov.f64	d1, d7
  3601f0: f7fd fc46    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x2774
  3601f4: 9805         	ldr	r0, [sp, #0x14]
  3601f6: b00b         	add	sp, #0x2c
  3601f8: ecbd 8b02    	vpop	{d8}
  3601fc: e8bd 4030    	pop.w	{r4, r5, lr}
  360200: b002         	add	sp, #0x8
  360202: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x360203); words below are literal-pool data ---
  360204: 28ea         	cmp	r0, #0xea
  360206: 005d         	lsls	r5, r3, #0x1
  360208: db94         	blt	0x360134 <MapManager::keyByPosition(cpVect)+0x2c> @ imm = #-0xd8
  36020a: ffff b082    	<unknown>

// ==== MapManager::getTileShapes
//      file offset 0x36020c (= ELF address; Ghidra 0x37020c), 14 bytes, Thumb-2
  36020c: b082         	sub	sp, #0x8
  36020e: 9001         	str	r0, [sp, #0x4]
  360210: 9b01         	ldr	r3, [sp, #0x4]
  360212: 6a9b         	ldr	r3, [r3, #0x28]
  360214: 4618         	mov	r0, r3
  360216: b002         	add	sp, #0x8
  360218: 4770         	bx	lr

// ==== MapManager::tileTypeAt
//      file offset 0x36021c (= ELF address; Ghidra 0x37021c), 222 bytes, Thumb-2
  36021c: b082         	sub	sp, #0x8
  36021e: b510         	push	{r4, lr}
  360220: b08c         	sub	sp, #0x30
  360222: 9003         	str	r0, [sp, #0xc]
  360224: a90e         	add	r1, sp, #0x38
  360226: e881 000c    	stm.w	r1, {r2, r3}
  36022a: ac08         	add	r4, sp, #0x20
  36022c: 466b         	mov	r3, sp
  36022e: aa10         	add	r2, sp, #0x40
  360230: e892 0003    	ldm.w	r2, {r0, r1}
  360234: e883 0003    	stm.w	r3, {r0, r1}
  360238: a90e         	add	r1, sp, #0x38
  36023a: e891 000c    	ldm.w	r1, {r2, r3}
  36023e: 4620         	mov	r0, r4
  360240: 9903         	ldr	r1, [sp, #0xc]
  360242: f7ff ff61    	bl	0x360108 <MapManager::keyByPosition(cpVect)> @ imm = #-0x13e
  360246: ed9d 7b08    	vldr	d7, [sp, #32]
  36024a: eeb5 7bc0    	vcmpe.f64	d7, #0
  36024e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360252: dd4b         	ble	0x3602ec <MapManager::tileTypeAt(cpVect)+0xd0> @ imm = #0x96
  360254: ed9d 7b0a    	vldr	d7, [sp, #40]
  360258: eeb5 7bc0    	vcmpe.f64	d7, #0
  36025c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360260: dd44         	ble	0x3602ec <MapManager::tileTypeAt(cpVect)+0xd0> @ imm = #0x88
  360262: ed9d 6b08    	vldr	d6, [sp, #32]
  360266: 9b03         	ldr	r3, [sp, #0xc]
  360268: 6c1b         	ldr	r3, [r3, #0x40]
  36026a: ee05 3a90    	vmov	s11, r3
  36026e: eeb8 7be5    	vcvt.f64.s32	d7, s11
  360272: eeb4 6bc7    	vcmpe.f64	d6, d7
  360276: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36027a: d537         	bpl	0x3602ec <MapManager::tileTypeAt(cpVect)+0xd0> @ imm = #0x6e
  36027c: ed9d 6b0a    	vldr	d6, [sp, #40]
  360280: 9b03         	ldr	r3, [sp, #0xc]
  360282: 6c5b         	ldr	r3, [r3, #0x44]
  360284: ee05 3a90    	vmov	s11, r3
  360288: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36028c: eeb4 6bc7    	vcmpe.f64	d6, d7
  360290: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360294: d52a         	bpl	0x3602ec <MapManager::tileTypeAt(cpVect)+0xd0> @ imm = #0x54
  360296: 9b03         	ldr	r3, [sp, #0xc]
  360298: 6b1c         	ldr	r4, [r3, #0x30]
  36029a: ed9d 7b08    	vldr	d7, [sp, #32]
  36029e: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3602a2: ed9d 7b0a    	vldr	d7, [sp, #40]
  3602a6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3602aa: ab06         	add	r3, sp, #0x18
  3602ac: 4618         	mov	r0, r3
  3602ae: ee16 1a90    	vmov	r1, s13
  3602b2: ee17 2a90    	vmov	r2, s15
  3602b6: f232 fd1b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x232a36
  3602ba: ab06         	add	r3, sp, #0x18
  3602bc: 4620         	mov	r0, r4
  3602be: 4619         	mov	r1, r3
  3602c0: f299 fd20    	bl	0x5f9d04 <cocos2d::CCTMXLayer::tileGIDAt(cocos2d::CCPoint const&)> @ imm = #0x299a40
  3602c4: 4603         	mov	r3, r0
  3602c6: 9304         	str	r3, [sp, #0x10]
  3602c8: 9b03         	ldr	r3, [sp, #0xc]
  3602ca: 6cda         	ldr	r2, [r3, #0x4c]
  3602cc: 9b04         	ldr	r3, [sp, #0x10]
  3602ce: 429a         	cmp	r2, r3
  3602d0: dd0c         	ble	0x3602ec <MapManager::tileTypeAt(cpVect)+0xd0> @ imm = #0x18
  3602d2: 9b03         	ldr	r3, [sp, #0xc]
  3602d4: 6a5b         	ldr	r3, [r3, #0x24]
  3602d6: 4618         	mov	r0, r3
  3602d8: 9904         	ldr	r1, [sp, #0x10]
  3602da: f234 f85f    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x2340be
  3602de: 4603         	mov	r3, r0
  3602e0: 9305         	str	r3, [sp, #0x14]
  3602e2: 9805         	ldr	r0, [sp, #0x14]
  3602e4: f78c fdb6    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x73494
  3602e8: 4603         	mov	r3, r0
  3602ea: e000         	b	0x3602ee <MapManager::tileTypeAt(cpVect)+0xd2> @ imm = #0x0
  3602ec: 2300         	movs	r3, #0x0
  3602ee: 4618         	mov	r0, r3
  3602f0: b00c         	add	sp, #0x30
  3602f2: e8bd 4010    	pop.w	{r4, lr}
  3602f6: b002         	add	sp, #0x8
  3602f8: 4770         	bx	lr

// ==== MapManager::mapCollision
//      file offset 0x3602fc (= ELF address; Ghidra 0x3702fc), 412 bytes, Thumb-2
  3602fc: b082         	sub	sp, #0x8
  3602fe: b530         	push	{r4, r5, lr}
  360300: b093         	sub	sp, #0x4c
  360302: 9003         	str	r0, [sp, #0xc]
  360304: a916         	add	r1, sp, #0x58
  360306: e881 000c    	stm.w	r1, {r2, r3}
  36030a: ac0e         	add	r4, sp, #0x38
  36030c: 466b         	mov	r3, sp
  36030e: aa18         	add	r2, sp, #0x60
  360310: e892 0003    	ldm.w	r2, {r0, r1}
  360314: e883 0003    	stm.w	r3, {r0, r1}
  360318: a916         	add	r1, sp, #0x58
  36031a: e891 000c    	ldm.w	r1, {r2, r3}
  36031e: 4620         	mov	r0, r4
  360320: 9903         	ldr	r1, [sp, #0xc]
  360322: f7ff fef1    	bl	0x360108 <MapManager::keyByPosition(cpVect)> @ imm = #-0x21e
  360326: ed9d 7b0e    	vldr	d7, [sp, #56]
  36032a: eefd 6bc7    	vcvt.s32.f64	s13, d7
  36032e: ee16 3a90    	vmov	r3, s13
  360332: 9306         	str	r3, [sp, #0x18]
  360334: ed9d 7b10    	vldr	d7, [sp, #64]
  360338: eefd 6bc7    	vcvt.s32.f64	s13, d7
  36033c: ee16 3a90    	vmov	r3, s13
  360340: 9307         	str	r3, [sp, #0x1c]
  360342: ed9d 7b0e    	vldr	d7, [sp, #56]
  360346: eefd 6bc7    	vcvt.s32.f64	s13, d7
  36034a: ee16 1a90    	vmov	r1, s13
  36034e: ed9d 7b10    	vldr	d7, [sp, #64]
  360352: eefd 6bc7    	vcvt.s32.f64	s13, d7
  360356: ee16 2a90    	vmov	r2, s13
  36035a: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x360494 <MapManager::mapCollision(cpVect)+0x198>
  36035c: 447b         	add	r3, pc
  36035e: 4618         	mov	r0, r3
  360360: f239 fbd6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2397ac
  360364: 4603         	mov	r3, r0
  360366: 9308         	str	r3, [sp, #0x20]
  360368: 9803         	ldr	r0, [sp, #0xc]
  36036a: f7ff ff4f    	bl	0x36020c <MapManager::getTileShapes()> @ imm = #-0x162
  36036e: 4604         	mov	r4, r0
  360370: 9808         	ldr	r0, [sp, #0x20]
  360372: f239 fad9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2395b2
  360376: 4605         	mov	r5, r0
  360378: ab05         	add	r3, sp, #0x14
  36037a: 4618         	mov	r0, r3
  36037c: f02a f03a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42a074
  360380: aa0c         	add	r2, sp, #0x30
  360382: ab05         	add	r3, sp, #0x14
  360384: 4610         	mov	r0, r2
  360386: 4629         	mov	r1, r5
  360388: 461a         	mov	r2, r3
  36038a: f056 f369    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4566d2
  36038e: ab0c         	add	r3, sp, #0x30
  360390: 4620         	mov	r0, r4
  360392: 4619         	mov	r1, r3
  360394: f233 fdac    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x233b58
  360398: 4603         	mov	r3, r0
  36039a: 9309         	str	r3, [sp, #0x24]
  36039c: ab0c         	add	r3, sp, #0x30
  36039e: 4618         	mov	r0, r3
  3603a0: f055 f2b8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x455570
  3603a4: ab05         	add	r3, sp, #0x14
  3603a6: 4618         	mov	r0, r3
  3603a8: f02a f028    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42a050
  3603ac: 9b09         	ldr	r3, [sp, #0x24]
  3603ae: 2b00         	cmp	r3, #0x0
  3603b0: d012         	beq	0x3603d8 <MapManager::mapCollision(cpVect)+0xdc> @ imm = #0x24
  3603b2: 9b09         	ldr	r3, [sp, #0x24]
  3603b4: 695c         	ldr	r4, [r3, #0x14]
  3603b6: 466b         	mov	r3, sp
  3603b8: aa18         	add	r2, sp, #0x60
  3603ba: e892 0003    	ldm.w	r2, {r0, r1}
  3603be: e883 0003    	stm.w	r3, {r0, r1}
  3603c2: a916         	add	r1, sp, #0x58
  3603c4: e891 000c    	ldm.w	r1, {r2, r3}
  3603c8: 4620         	mov	r0, r4
  3603ca: f374 fe48    	bl	0x6d505e <cpShapePointQuery> @ imm = #0x374c90
  3603ce: 4603         	mov	r3, r0
  3603d0: 2b00         	cmp	r3, #0x0
  3603d2: d001         	beq	0x3603d8 <MapManager::mapCollision(cpVect)+0xdc> @ imm = #0x2
  3603d4: 2301         	movs	r3, #0x1
  3603d6: e000         	b	0x3603da <MapManager::mapCollision(cpVect)+0xde> @ imm = #0x0
  3603d8: 2300         	movs	r3, #0x0
  3603da: 2b00         	cmp	r3, #0x0
  3603dc: d001         	beq	0x3603e2 <MapManager::mapCollision(cpVect)+0xe6> @ imm = #0x2
  3603de: 2301         	movs	r3, #0x1
  3603e0: e051         	b	0x360486 <MapManager::mapCollision(cpVect)+0x18a> @ imm = #0xa2
  3603e2: 9b06         	ldr	r3, [sp, #0x18]
  3603e4: 2b00         	cmp	r3, #0x0
  3603e6: dd41         	ble	0x36046c <MapManager::mapCollision(cpVect)+0x170> @ imm = #0x82
  3603e8: 9b07         	ldr	r3, [sp, #0x1c]
  3603ea: 2b00         	cmp	r3, #0x0
  3603ec: dd3e         	ble	0x36046c <MapManager::mapCollision(cpVect)+0x170> @ imm = #0x7c
  3603ee: 9b03         	ldr	r3, [sp, #0xc]
  3603f0: 6c1a         	ldr	r2, [r3, #0x40]
  3603f2: 9b06         	ldr	r3, [sp, #0x18]
  3603f4: 429a         	cmp	r2, r3
  3603f6: dd39         	ble	0x36046c <MapManager::mapCollision(cpVect)+0x170> @ imm = #0x72
  3603f8: 9b03         	ldr	r3, [sp, #0xc]
  3603fa: 6c5a         	ldr	r2, [r3, #0x44]
  3603fc: 9b07         	ldr	r3, [sp, #0x1c]
  3603fe: 429a         	cmp	r2, r3
  360400: dd34         	ble	0x36046c <MapManager::mapCollision(cpVect)+0x170> @ imm = #0x68
  360402: 9b03         	ldr	r3, [sp, #0xc]
  360404: 6b1c         	ldr	r4, [r3, #0x30]
  360406: 9b06         	ldr	r3, [sp, #0x18]
  360408: ee06 3a90    	vmov	s13, r3
  36040c: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  360410: 9b07         	ldr	r3, [sp, #0x1c]
  360412: ee06 3a90    	vmov	s13, r3
  360416: eef8 7ae6    	vcvt.f32.s32	s15, s13
  36041a: ab0c         	add	r3, sp, #0x30
  36041c: 4618         	mov	r0, r3
  36041e: ee17 1a10    	vmov	r1, s14
  360422: ee17 2a90    	vmov	r2, s15
  360426: f232 fc63    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2328c6
  36042a: ab0c         	add	r3, sp, #0x30
  36042c: 4620         	mov	r0, r4
  36042e: 4619         	mov	r1, r3
  360430: f299 fc68    	bl	0x5f9d04 <cocos2d::CCTMXLayer::tileGIDAt(cocos2d::CCPoint const&)> @ imm = #0x2998d0
  360434: 4603         	mov	r3, r0
  360436: 930a         	str	r3, [sp, #0x28]
  360438: 9b03         	ldr	r3, [sp, #0xc]
  36043a: 6a5b         	ldr	r3, [r3, #0x24]
  36043c: 4618         	mov	r0, r3
  36043e: 990a         	ldr	r1, [sp, #0x28]
  360440: f233 ffac    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x233f58
  360444: 4603         	mov	r3, r0
  360446: 930b         	str	r3, [sp, #0x2c]
  360448: 9b0b         	ldr	r3, [sp, #0x2c]
  36044a: 2b00         	cmp	r3, #0x0
  36044c: d00c         	beq	0x360468 <MapManager::mapCollision(cpVect)+0x16c> @ imm = #0x18
  36044e: 980b         	ldr	r0, [sp, #0x2c]
  360450: f78c fd00    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x73600
  360454: 4603         	mov	r3, r0
  360456: 2b01         	cmp	r3, #0x1
  360458: bf14         	ite	ne
  36045a: 2300         	movne	r3, #0x0
  36045c: 2301         	moveq	r3, #0x1
  36045e: b2db         	uxtb	r3, r3
  360460: 2b00         	cmp	r3, #0x0
  360462: d003         	beq	0x36046c <MapManager::mapCollision(cpVect)+0x170> @ imm = #0x6
  360464: 2301         	movs	r3, #0x1
  360466: e00e         	b	0x360486 <MapManager::mapCollision(cpVect)+0x18a> @ imm = #0x1c
  360468: 2300         	movs	r3, #0x0
  36046a: e00c         	b	0x360486 <MapManager::mapCollision(cpVect)+0x18a> @ imm = #0x18
  36046c: 2300         	movs	r3, #0x0
  36046e: e00a         	b	0x360486 <MapManager::mapCollision(cpVect)+0x18a> @ imm = #0x14
  360470: ab0c         	add	r3, sp, #0x30
  360472: 4618         	mov	r0, r3
  360474: f055 f24e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45549c
  360478: e7ff         	b	0x36047a <MapManager::mapCollision(cpVect)+0x17e> @ imm = #-0x2
  36047a: ab05         	add	r3, sp, #0x14
  36047c: 4618         	mov	r0, r3
  36047e: f029 f7bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x429f7a
  360482: f027 f613    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x427c26
  360486: 4618         	mov	r0, r3
  360488: b013         	add	sp, #0x4c
  36048a: e8bd 4030    	pop.w	{r4, r5, lr}
  36048e: b002         	add	sp, #0x8
  360490: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x360491); words below are literal-pool data ---
  360492: bf00         	nop
  360494: c9d4         	ldm	r1!, {r2, r4, r6, r7}
  360496: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::createMapArea
//      file offset 0x360498 (= ELF address; Ghidra 0x370498), 1256 bytes, Thumb-2
  360498: b530         	push	{r4, r5, lr}
  36049a: b0a1         	sub	sp, #0x84
  36049c: 9005         	str	r0, [sp, #0x14]
  36049e: 9104         	str	r1, [sp, #0x10]
  3604a0: 9203         	str	r2, [sp, #0xc]
  3604a2: 9302         	str	r3, [sp, #0x8]
  3604a4: 9b05         	ldr	r3, [sp, #0x14]
  3604a6: 6c9b         	ldr	r3, [r3, #0x48]
  3604a8: 9a02         	ldr	r2, [sp, #0x8]
  3604aa: fb02 f303    	mul	r3, r2, r3
  3604ae: 930e         	str	r3, [sp, #0x38]
  3604b0: 9b05         	ldr	r3, [sp, #0x14]
  3604b2: 6c9b         	ldr	r3, [r3, #0x48]
  3604b4: 9a24         	ldr	r2, [sp, #0x90]
  3604b6: fb02 f303    	mul	r3, r2, r3
  3604ba: 930f         	str	r3, [sp, #0x3c]
  3604bc: 9b04         	ldr	r3, [sp, #0x10]
  3604be: 331c         	adds	r3, #0x1c
  3604c0: aa1e         	add	r2, sp, #0x78
  3604c2: 4610         	mov	r0, r2
  3604c4: 4619         	mov	r1, r3
  3604c6: f232 fdf3    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x232be6
  3604ca: 9b0e         	ldr	r3, [sp, #0x38]
  3604cc: ee06 3a10    	vmov	s12, r3
  3604d0: eeb8 7ac6    	vcvt.f32.s32	s14, s12
  3604d4: 9b0f         	ldr	r3, [sp, #0x3c]
  3604d6: ee07 3a90    	vmov	s15, r3
  3604da: eef8 6ae7    	vcvt.f32.s32	s13, s15
  3604de: eddd 7a1e    	vldr	s15, [sp, #120]
  3604e2: ee66 7aa7    	vmul.f32	s15, s13, s15
  3604e6: ee77 7a27    	vadd.f32	s15, s14, s15
  3604ea: eefc 7ae7    	vcvt.u32.f32	s15, s15
  3604ee: ee17 3a90    	vmov	r3, s15
  3604f2: 9310         	str	r3, [sp, #0x40]
  3604f4: 9b05         	ldr	r3, [sp, #0x14]
  3604f6: 6c9a         	ldr	r2, [r3, #0x48]
  3604f8: 9b0e         	ldr	r3, [sp, #0x38]
  3604fa: 4413         	add	r3, r2
  3604fc: ee06 3a10    	vmov	s12, r3
  360500: eeb8 7ac6    	vcvt.f32.s32	s14, s12
  360504: 9b05         	ldr	r3, [sp, #0x14]
  360506: 6c9a         	ldr	r2, [r3, #0x48]
  360508: 9b0f         	ldr	r3, [sp, #0x3c]
  36050a: 4413         	add	r3, r2
  36050c: ee07 3a90    	vmov	s15, r3
  360510: eef8 6ae7    	vcvt.f32.s32	s13, s15
  360514: eddd 7a1e    	vldr	s15, [sp, #120]
  360518: ee66 7aa7    	vmul.f32	s15, s13, s15
  36051c: ee77 7a27    	vadd.f32	s15, s14, s15
  360520: eefc 7ae7    	vcvt.u32.f32	s15, s15
  360524: ee17 3a90    	vmov	r3, s15
  360528: 9311         	str	r3, [sp, #0x44]
  36052a: 2300         	movs	r3, #0x0
  36052c: 9307         	str	r3, [sp, #0x1c]
  36052e: 2300         	movs	r3, #0x0
  360530: 9308         	str	r3, [sp, #0x20]
  360532: 2300         	movs	r3, #0x0
  360534: 9309         	str	r3, [sp, #0x24]
  360536: 9b26         	ldr	r3, [sp, #0x98]
  360538: 2b00         	cmp	r3, #0x0
  36053a: d07c         	beq	0x360636 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x19e> @ imm = #0xf8
  36053c: 2300         	movs	r3, #0x0
  36053e: 9307         	str	r3, [sp, #0x1c]
  360540: e06c         	b	0x36061c <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x184> @ imm = #0xd8
  360542: 9826         	ldr	r0, [sp, #0x98]
  360544: f7fd fa88    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2af0
  360548: 4603         	mov	r3, r0
  36054a: 689a         	ldr	r2, [r3, #0x8]
  36054c: 9b07         	ldr	r3, [sp, #0x1c]
  36054e: 009b         	lsls	r3, r3, #0x2
  360550: 4413         	add	r3, r2
  360552: 681b         	ldr	r3, [r3]
  360554: 461a         	mov	r2, r3
  360556: 9b10         	ldr	r3, [sp, #0x40]
  360558: 429a         	cmp	r2, r3
  36055a: bf34         	ite	lo
  36055c: 2300         	movlo	r3, #0x0
  36055e: 2301         	movhs	r3, #0x1
  360560: b2db         	uxtb	r3, r3
  360562: 2b00         	cmp	r3, #0x0
  360564: d057         	beq	0x360616 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x17e> @ imm = #0xae
  360566: 9b07         	ldr	r3, [sp, #0x1c]
  360568: 930a         	str	r3, [sp, #0x28]
  36056a: e046         	b	0x3605fa <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x162> @ imm = #0x8c
  36056c: 9826         	ldr	r0, [sp, #0x98]
  36056e: f7fd fa73    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2b1a
  360572: 4603         	mov	r3, r0
  360574: 689a         	ldr	r2, [r3, #0x8]
  360576: 9b0a         	ldr	r3, [sp, #0x28]
  360578: 009b         	lsls	r3, r3, #0x2
  36057a: 4413         	add	r3, r2
  36057c: 681b         	ldr	r3, [r3]
  36057e: 9312         	str	r3, [sp, #0x48]
  360580: 9a12         	ldr	r2, [sp, #0x48]
  360582: 9b11         	ldr	r3, [sp, #0x44]
  360584: 429a         	cmp	r2, r3
  360586: d300         	blo	0x36058a <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0xf2> @ imm = #0x0
  360588: e044         	b	0x360614 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x17c> @ imm = #0x88
  36058a: eddd 7a1e    	vldr	s15, [sp, #120]
  36058e: eefd 7ae7    	vcvt.s32.f32	s15, s15
  360592: ee17 3a90    	vmov	r3, s15
  360596: 9a12         	ldr	r2, [sp, #0x48]
  360598: 4610         	mov	r0, r2
  36059a: 4619         	mov	r1, r3
  36059c: f05e f21e    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x45e43c
  3605a0: 460b         	mov	r3, r1
  3605a2: 9313         	str	r3, [sp, #0x4c]
  3605a4: 9b12         	ldr	r3, [sp, #0x48]
  3605a6: ee06 3a10    	vmov	s12, r3
  3605aa: eeb8 7a46    	vcvt.f32.u32	s14, s12
  3605ae: eddd 7a1e    	vldr	s15, [sp, #120]
  3605b2: eec7 7a27    	vdiv.f32	s15, s14, s15
  3605b6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3605ba: ee17 3a90    	vmov	r3, s15
  3605be: 9314         	str	r3, [sp, #0x50]
  3605c0: 9a13         	ldr	r2, [sp, #0x4c]
  3605c2: 9b0e         	ldr	r3, [sp, #0x38]
  3605c4: 429a         	cmp	r2, r3
  3605c6: db11         	blt	0x3605ec <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x154> @ imm = #0x22
  3605c8: 9b05         	ldr	r3, [sp, #0x14]
  3605ca: 6c9a         	ldr	r2, [r3, #0x48]
  3605cc: 9b0e         	ldr	r3, [sp, #0x38]
  3605ce: 441a         	add	r2, r3
  3605d0: 9b13         	ldr	r3, [sp, #0x4c]
  3605d2: 429a         	cmp	r2, r3
  3605d4: dd0a         	ble	0x3605ec <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x154> @ imm = #0x14
  3605d6: 9a14         	ldr	r2, [sp, #0x50]
  3605d8: 9b0f         	ldr	r3, [sp, #0x3c]
  3605da: 429a         	cmp	r2, r3
  3605dc: db06         	blt	0x3605ec <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x154> @ imm = #0xc
  3605de: 9b05         	ldr	r3, [sp, #0x14]
  3605e0: 6c9a         	ldr	r2, [r3, #0x48]
  3605e2: 9b0f         	ldr	r3, [sp, #0x3c]
  3605e4: 441a         	add	r2, r3
  3605e6: 9b14         	ldr	r3, [sp, #0x50]
  3605e8: 429a         	cmp	r2, r3
  3605ea: dc00         	bgt	0x3605ee <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x156> @ imm = #0x0
  3605ec: e002         	b	0x3605f4 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x15c> @ imm = #0x4
  3605ee: 9b08         	ldr	r3, [sp, #0x20]
  3605f0: 3301         	adds	r3, #0x1
  3605f2: 9308         	str	r3, [sp, #0x20]
  3605f4: 9b0a         	ldr	r3, [sp, #0x28]
  3605f6: 3301         	adds	r3, #0x1
  3605f8: 930a         	str	r3, [sp, #0x28]
  3605fa: 9c0a         	ldr	r4, [sp, #0x28]
  3605fc: 9826         	ldr	r0, [sp, #0x98]
  3605fe: f7fd fa2b    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2baa
  360602: 4603         	mov	r3, r0
  360604: 681b         	ldr	r3, [r3]
  360606: 429c         	cmp	r4, r3
  360608: bf2c         	ite	hs
  36060a: 2300         	movhs	r3, #0x0
  36060c: 2301         	movlo	r3, #0x1
  36060e: b2db         	uxtb	r3, r3
  360610: 2b00         	cmp	r3, #0x0
  360612: d1ab         	bne	0x36056c <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0xd4> @ imm = #-0xaa
  360614: e00f         	b	0x360636 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x19e> @ imm = #0x1e
  360616: 9b07         	ldr	r3, [sp, #0x1c]
  360618: 3301         	adds	r3, #0x1
  36061a: 9307         	str	r3, [sp, #0x1c]
  36061c: 9c07         	ldr	r4, [sp, #0x1c]
  36061e: 9826         	ldr	r0, [sp, #0x98]
  360620: f7fd fa1a    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2bcc
  360624: 4603         	mov	r3, r0
  360626: 681b         	ldr	r3, [r3]
  360628: 429c         	cmp	r4, r3
  36062a: bf2c         	ite	hs
  36062c: 2300         	movhs	r3, #0x0
  36062e: 2301         	movlo	r3, #0x1
  360630: b2db         	uxtb	r3, r3
  360632: 2b00         	cmp	r3, #0x0
  360634: d185         	bne	0x360542 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0xaa> @ imm = #-0xf6
  360636: 9b0f         	ldr	r3, [sp, #0x3c]
  360638: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  36063c: 930b         	str	r3, [sp, #0x2c]
  36063e: e059         	b	0x3606f4 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x25c> @ imm = #0xb2
  360640: 9b0e         	ldr	r3, [sp, #0x38]
  360642: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  360646: 930c         	str	r3, [sp, #0x30]
  360648: e02d         	b	0x3606a6 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x20e> @ imm = #0x5a
  36064a: 9b0c         	ldr	r3, [sp, #0x30]
  36064c: ee06 3a90    	vmov	s13, r3
  360650: eeb8 7a66    	vcvt.f32.u32	s14, s13
  360654: eddd 6a1e    	vldr	s13, [sp, #120]
  360658: 9b0b         	ldr	r3, [sp, #0x2c]
  36065a: ee06 3a10    	vmov	s12, r3
  36065e: eef8 7a46    	vcvt.f32.u32	s15, s12
  360662: ee66 7aa7    	vmul.f32	s15, s13, s15
  360666: ee77 7a27    	vadd.f32	s15, s14, s15
  36066a: eefc 7ae7    	vcvt.u32.f32	s15, s15
  36066e: ee17 3a90    	vmov	r3, s15
  360672: 9315         	str	r3, [sp, #0x54]
  360674: 9b05         	ldr	r3, [sp, #0x14]
  360676: 6b1b         	ldr	r3, [r3, #0x30]
  360678: 681b         	ldr	r3, [r3]
  36067a: f503 73de    	add.w	r3, r3, #0x1bc
  36067e: 681b         	ldr	r3, [r3]
  360680: 9a05         	ldr	r2, [sp, #0x14]
  360682: 6b12         	ldr	r2, [r2, #0x30]
  360684: 4610         	mov	r0, r2
  360686: 4798         	blx	r3
  360688: 4602         	mov	r2, r0
  36068a: 9b15         	ldr	r3, [sp, #0x54]
  36068c: 009b         	lsls	r3, r3, #0x2
  36068e: 4413         	add	r3, r2
  360690: 681b         	ldr	r3, [r3]
  360692: 9316         	str	r3, [sp, #0x58]
  360694: 9b16         	ldr	r3, [sp, #0x58]
  360696: 2b00         	cmp	r3, #0x0
  360698: d002         	beq	0x3606a0 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x208> @ imm = #0x4
  36069a: 9b09         	ldr	r3, [sp, #0x24]
  36069c: 3301         	adds	r3, #0x1
  36069e: 9309         	str	r3, [sp, #0x24]
  3606a0: 9b0c         	ldr	r3, [sp, #0x30]
  3606a2: 3301         	adds	r3, #0x1
  3606a4: 930c         	str	r3, [sp, #0x30]
  3606a6: 9b0c         	ldr	r3, [sp, #0x30]
  3606a8: ee06 3a90    	vmov	s13, r3
  3606ac: eeb8 7a66    	vcvt.f32.u32	s14, s13
  3606b0: eddd 6a1e    	vldr	s13, [sp, #120]
  3606b4: 9b05         	ldr	r3, [sp, #0x14]
  3606b6: 6c9a         	ldr	r2, [r3, #0x48]
  3606b8: 9b0e         	ldr	r3, [sp, #0x38]
  3606ba: 4413         	add	r3, r2
  3606bc: ee06 3a10    	vmov	s12, r3
  3606c0: eef8 7ac6    	vcvt.f32.s32	s15, s12
  3606c4: eef4 6ae7    	vcmpe.f32	s13, s15
  3606c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3606cc: dd08         	ble	0x3606e0 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x248> @ imm = #0x10
  3606ce: 9b05         	ldr	r3, [sp, #0x14]
  3606d0: 6c9a         	ldr	r2, [r3, #0x48]
  3606d2: 9b0e         	ldr	r3, [sp, #0x38]
  3606d4: 4413         	add	r3, r2
  3606d6: ee06 3a90    	vmov	s13, r3
  3606da: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3606de: e001         	b	0x3606e4 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x24c> @ imm = #0x2
  3606e0: eddd 7a1e    	vldr	s15, [sp, #120]
  3606e4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3606e8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3606ec: d4ad         	bmi	0x36064a <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x1b2> @ imm = #-0xa6
  3606ee: 9b0b         	ldr	r3, [sp, #0x2c]
  3606f0: 3301         	adds	r3, #0x1
  3606f2: 930b         	str	r3, [sp, #0x2c]
  3606f4: 9b0b         	ldr	r3, [sp, #0x2c]
  3606f6: ee07 3a90    	vmov	s15, r3
  3606fa: eeb8 7a67    	vcvt.f32.u32	s14, s15
  3606fe: eddd 6a1f    	vldr	s13, [sp, #124]
  360702: 9b05         	ldr	r3, [sp, #0x14]
  360704: 6c9a         	ldr	r2, [r3, #0x48]
  360706: 9b0f         	ldr	r3, [sp, #0x3c]
  360708: 4413         	add	r3, r2
  36070a: ee06 3a10    	vmov	s12, r3
  36070e: eef8 7ac6    	vcvt.f32.s32	s15, s12
  360712: eef4 6ae7    	vcmpe.f32	s13, s15
  360716: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36071a: dd08         	ble	0x36072e <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x296> @ imm = #0x10
  36071c: 9b05         	ldr	r3, [sp, #0x14]
  36071e: 6c9a         	ldr	r2, [r3, #0x48]
  360720: 9b0f         	ldr	r3, [sp, #0x3c]
  360722: 4413         	add	r3, r2
  360724: ee06 3a90    	vmov	s13, r3
  360728: eef8 7ae6    	vcvt.f32.s32	s15, s13
  36072c: e001         	b	0x360732 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x29a> @ imm = #0x2
  36072e: eddd 7a1f    	vldr	s15, [sp, #124]
  360732: eeb4 7ae7    	vcmpe.f32	s14, s15
  360736: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  36073a: d481         	bmi	0x360640 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x1a8> @ imm = #-0xfe
  36073c: 9b05         	ldr	r3, [sp, #0x14]
  36073e: 695b         	ldr	r3, [r3, #0x14]
  360740: 4618         	mov	r0, r3
  360742: 9904         	ldr	r1, [sp, #0x10]
  360744: 9a03         	ldr	r2, [sp, #0xc]
  360746: f29a fdcd    	bl	0x5fb2e4 <cocos2d::CCTMXTiledMap::tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*)> @ imm = #0x29ab9a
  36074a: 4603         	mov	r3, r0
  36074c: 9317         	str	r3, [sp, #0x5c]
  36074e: 9817         	ldr	r0, [sp, #0x5c]
  360750: 9904         	ldr	r1, [sp, #0x10]
  360752: 9a03         	ldr	r2, [sp, #0xc]
  360754: f298 fb4a    	bl	0x5f8dec <cocos2d::CCTMXLayer::create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*)> @ imm = #0x298694
  360758: 4603         	mov	r3, r0
  36075a: 9318         	str	r3, [sp, #0x60]
  36075c: 4b87         	ldr	r3, [pc, #0x21c]        @ 0x36097c <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x4e4>
  36075e: 447b         	add	r3, pc
  360760: 4618         	mov	r0, r3
  360762: 9902         	ldr	r1, [sp, #0x8]
  360764: 9a24         	ldr	r2, [sp, #0x90]
  360766: f239 f9d3    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2393a6
  36076a: 4603         	mov	r3, r0
  36076c: 4618         	mov	r0, r3
  36076e: f239 f8db    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2391b6
  360772: 4603         	mov	r3, r0
  360774: 9818         	ldr	r0, [sp, #0x60]
  360776: 4619         	mov	r1, r3
  360778: f7fd f960    	bl	0x35da3c <cocos2d::CCTMXLayer::setLayerName(char const*)> @ imm = #-0x2d40
  36077c: 9818         	ldr	r0, [sp, #0x60]
  36077e: 2100         	movs	r1, #0x0
  360780: f7fd f972    	bl	0x35da68 <cocos2d::CCTMXLayer::setOwnTiles(bool)> @ imm = #-0x2d1c
  360784: 9b05         	ldr	r3, [sp, #0x14]
  360786: 6c9a         	ldr	r2, [r3, #0x48]
  360788: 9b02         	ldr	r3, [sp, #0x8]
  36078a: fb02 f303    	mul	r3, r2, r3
  36078e: 9302         	str	r3, [sp, #0x8]
  360790: 9b05         	ldr	r3, [sp, #0x14]
  360792: 6c9a         	ldr	r2, [r3, #0x48]
  360794: 9b24         	ldr	r3, [sp, #0x90]
  360796: fb02 f303    	mul	r3, r2, r3
  36079a: 9324         	str	r3, [sp, #0x90]
  36079c: 9b26         	ldr	r3, [sp, #0x98]
  36079e: 2b00         	cmp	r3, #0x0
  3607a0: f000 80b5    	beq.w	0x36090e <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x476> @ imm = #0x16a
  3607a4: 2300         	movs	r3, #0x0
  3607a6: 9307         	str	r3, [sp, #0x1c]
  3607a8: e0a3         	b	0x3608f2 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x45a> @ imm = #0x146
  3607aa: 9826         	ldr	r0, [sp, #0x98]
  3607ac: f7fd f954    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2d58
  3607b0: 4603         	mov	r3, r0
  3607b2: 689a         	ldr	r2, [r3, #0x8]
  3607b4: 9b07         	ldr	r3, [sp, #0x1c]
  3607b6: 009b         	lsls	r3, r3, #0x2
  3607b8: 4413         	add	r3, r2
  3607ba: 681b         	ldr	r3, [r3]
  3607bc: 461a         	mov	r2, r3
  3607be: 9b10         	ldr	r3, [sp, #0x40]
  3607c0: 429a         	cmp	r2, r3
  3607c2: bf34         	ite	lo
  3607c4: 2300         	movlo	r3, #0x0
  3607c6: 2301         	movhs	r3, #0x1
  3607c8: b2db         	uxtb	r3, r3
  3607ca: 2b00         	cmp	r3, #0x0
  3607cc: f000 808e    	beq.w	0x3608ec <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x454> @ imm = #0x11c
  3607d0: 9b07         	ldr	r3, [sp, #0x1c]
  3607d2: 930d         	str	r3, [sp, #0x34]
  3607d4: e07b         	b	0x3608ce <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x436> @ imm = #0xf6
  3607d6: 9826         	ldr	r0, [sp, #0x98]
  3607d8: f7fd f93e    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2d84
  3607dc: 4603         	mov	r3, r0
  3607de: 689a         	ldr	r2, [r3, #0x8]
  3607e0: 9b0d         	ldr	r3, [sp, #0x34]
  3607e2: 009b         	lsls	r3, r3, #0x2
  3607e4: 4413         	add	r3, r2
  3607e6: 681b         	ldr	r3, [r3]
  3607e8: 9319         	str	r3, [sp, #0x64]
  3607ea: 9a19         	ldr	r2, [sp, #0x64]
  3607ec: 9b11         	ldr	r3, [sp, #0x44]
  3607ee: 429a         	cmp	r2, r3
  3607f0: d300         	blo	0x3607f4 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x35c> @ imm = #0x0
  3607f2: e07a         	b	0x3608ea <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x452> @ imm = #0xf4
  3607f4: eddd 7a1e    	vldr	s15, [sp, #120]
  3607f8: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3607fc: ee17 3a90    	vmov	r3, s15
  360800: 9a19         	ldr	r2, [sp, #0x64]
  360802: 4610         	mov	r0, r2
  360804: 4619         	mov	r1, r3
  360806: f05e f0e9    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x45e1d2
  36080a: 460b         	mov	r3, r1
  36080c: 931a         	str	r3, [sp, #0x68]
  36080e: 9b19         	ldr	r3, [sp, #0x64]
  360810: ee07 3a90    	vmov	s15, r3
  360814: eeb8 7a67    	vcvt.f32.u32	s14, s15
  360818: eddd 7a1e    	vldr	s15, [sp, #120]
  36081c: eec7 7a27    	vdiv.f32	s15, s14, s15
  360820: eefd 7ae7    	vcvt.s32.f32	s15, s15
  360824: ee17 3a90    	vmov	r3, s15
  360828: 931b         	str	r3, [sp, #0x6c]
  36082a: 9a1a         	ldr	r2, [sp, #0x68]
  36082c: 9b02         	ldr	r3, [sp, #0x8]
  36082e: 429a         	cmp	r2, r3
  360830: db11         	blt	0x360856 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x3be> @ imm = #0x22
  360832: 9b05         	ldr	r3, [sp, #0x14]
  360834: 6c9a         	ldr	r2, [r3, #0x48]
  360836: 9b02         	ldr	r3, [sp, #0x8]
  360838: 441a         	add	r2, r3
  36083a: 9b1a         	ldr	r3, [sp, #0x68]
  36083c: 429a         	cmp	r2, r3
  36083e: dd0a         	ble	0x360856 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x3be> @ imm = #0x14
  360840: 9a1b         	ldr	r2, [sp, #0x6c]
  360842: 9b24         	ldr	r3, [sp, #0x90]
  360844: 429a         	cmp	r2, r3
  360846: db06         	blt	0x360856 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x3be> @ imm = #0xc
  360848: 9b05         	ldr	r3, [sp, #0x14]
  36084a: 6c9a         	ldr	r2, [r3, #0x48]
  36084c: 9b24         	ldr	r3, [sp, #0x90]
  36084e: 441a         	add	r2, r3
  360850: 9b1b         	ldr	r3, [sp, #0x6c]
  360852: 429a         	cmp	r2, r3
  360854: dc00         	bgt	0x360858 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x3c0> @ imm = #0x0
  360856: e037         	b	0x3608c8 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x430> @ imm = #0x6e
  360858: 9b26         	ldr	r3, [sp, #0x98]
  36085a: 4618         	mov	r0, r3
  36085c: f7fd f8e6    	bl	0x35da2c <cocos2d::CCSpriteBatchNode::getTextureAtlas()> @ imm = #-0x2e34
  360860: 4603         	mov	r3, r0
  360862: 681a         	ldr	r2, [r3]
  360864: 3228         	adds	r2, #0x28
  360866: 6812         	ldr	r2, [r2]
  360868: 4618         	mov	r0, r3
  36086a: 4790         	blx	r2
  36086c: 4601         	mov	r1, r0
  36086e: 9a0d         	ldr	r2, [sp, #0x34]
  360870: 4613         	mov	r3, r2
  360872: 005b         	lsls	r3, r3, #0x1
  360874: 4413         	add	r3, r2
  360876: 015b         	lsls	r3, r3, #0x5
  360878: 440b         	add	r3, r1
  36087a: 931c         	str	r3, [sp, #0x70]
  36087c: 9b18         	ldr	r3, [sp, #0x60]
  36087e: 4618         	mov	r0, r3
  360880: f7fd f8d4    	bl	0x35da2c <cocos2d::CCSpriteBatchNode::getTextureAtlas()> @ imm = #-0x2e58
  360884: 4603         	mov	r3, r0
  360886: 681a         	ldr	r2, [r3]
  360888: 3218         	adds	r2, #0x18
  36088a: 6812         	ldr	r2, [r2]
  36088c: 4618         	mov	r0, r3
  36088e: 4790         	blx	r2
  360890: 4603         	mov	r3, r0
  360892: 931d         	str	r3, [sp, #0x74]
  360894: 9b18         	ldr	r3, [sp, #0x60]
  360896: 4618         	mov	r0, r3
  360898: f7fd f8c8    	bl	0x35da2c <cocos2d::CCSpriteBatchNode::getTextureAtlas()> @ imm = #-0x2e70
  36089c: 4602         	mov	r2, r0
  36089e: 9b1d         	ldr	r3, [sp, #0x74]
  3608a0: 4610         	mov	r0, r2
  3608a2: 991c         	ldr	r1, [sp, #0x70]
  3608a4: 461a         	mov	r2, r3
  3608a6: f291 ffd1    	bl	0x5f284c <cocos2d::CCTextureAtlas::insertQuad(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int)> @ imm = #0x291fa2
  3608aa: 9818         	ldr	r0, [sp, #0x60]
  3608ac: f7fd f8d4    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2e58
  3608b0: 4605         	mov	r5, r0
  3608b2: 9c19         	ldr	r4, [sp, #0x64]
  3608b4: 9818         	ldr	r0, [sp, #0x60]
  3608b6: f7fd f8cf    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2e62
  3608ba: 4603         	mov	r3, r0
  3608bc: 681b         	ldr	r3, [r3]
  3608be: 4628         	mov	r0, r5
  3608c0: 4621         	mov	r1, r4
  3608c2: 461a         	mov	r2, r3
  3608c4: f283 f8e4    	bl	0x5e3a90 <cocos2d::ccCArrayInsertValueAtIndex(cocos2d::_ccCArray*, void*, unsigned int)> @ imm = #0x2831c8
  3608c8: 9b0d         	ldr	r3, [sp, #0x34]
  3608ca: 3301         	adds	r3, #0x1
  3608cc: 930d         	str	r3, [sp, #0x34]
  3608ce: 9c0d         	ldr	r4, [sp, #0x34]
  3608d0: 9826         	ldr	r0, [sp, #0x98]
  3608d2: f7fd f8c1    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2e7e
  3608d6: 4603         	mov	r3, r0
  3608d8: 681b         	ldr	r3, [r3]
  3608da: 429c         	cmp	r4, r3
  3608dc: bf2c         	ite	hs
  3608de: 2300         	movhs	r3, #0x0
  3608e0: 2301         	movlo	r3, #0x1
  3608e2: b2db         	uxtb	r3, r3
  3608e4: 2b00         	cmp	r3, #0x0
  3608e6: f47f af76    	bne.w	0x3607d6 <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x33e> @ imm = #-0x114
  3608ea: e010         	b	0x36090e <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x476> @ imm = #0x20
  3608ec: 9b07         	ldr	r3, [sp, #0x1c]
  3608ee: 3301         	adds	r3, #0x1
  3608f0: 9307         	str	r3, [sp, #0x1c]
  3608f2: 9c07         	ldr	r4, [sp, #0x1c]
  3608f4: 9826         	ldr	r0, [sp, #0x98]
  3608f6: f7fd f8af    	bl	0x35da58 <cocos2d::CCTMXLayer::getAtlasIndexArray()> @ imm = #-0x2ea2
  3608fa: 4603         	mov	r3, r0
  3608fc: 681b         	ldr	r3, [r3]
  3608fe: 429c         	cmp	r4, r3
  360900: bf2c         	ite	hs
  360902: 2300         	movhs	r3, #0x0
  360904: 2301         	movlo	r3, #0x1
  360906: b2db         	uxtb	r3, r3
  360908: 2b00         	cmp	r3, #0x0
  36090a: f47f af4e    	bne.w	0x3607aa <MapManager::createMapArea(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*, int, int, int, cocos2d::CCTMXLayer*)+0x312> @ imm = #-0x164
  36090e: 9b05         	ldr	r3, [sp, #0x14]
  360910: 6c9a         	ldr	r2, [r3, #0x48]
  360912: 9b02         	ldr	r3, [sp, #0x8]
  360914: 4413         	add	r3, r2
  360916: 9a05         	ldr	r2, [sp, #0x14]
  360918: 6c91         	ldr	r1, [r2, #0x48]
  36091a: 9a24         	ldr	r2, [sp, #0x90]
  36091c: 440a         	add	r2, r1
  36091e: 9200         	str	r2, [sp]
  360920: 9818         	ldr	r0, [sp, #0x60]
  360922: 9902         	ldr	r1, [sp, #0x8]
  360924: 9a24         	ldr	r2, [sp, #0x90]
  360926: f298 fd21    	bl	0x5f936c <cocos2d::CCTMXLayer::setupTileArea(int, int, int, int)> @ imm = #0x298a42
  36092a: 9b18         	ldr	r3, [sp, #0x60]
  36092c: 681b         	ldr	r3, [r3]
  36092e: f503 73ce    	add.w	r3, r3, #0x19c
  360932: 681b         	ldr	r3, [r3]
  360934: 9a18         	ldr	r2, [sp, #0x60]
  360936: 4610         	mov	r0, r2
  360938: 4798         	blx	r3
  36093a: 4603         	mov	r3, r0
  36093c: 4618         	mov	r0, r3
  36093e: f291 fb21    	bl	0x5f1f84 <cocos2d::CCTexture2D::setAntiAliasTexParameters()> @ imm = #0x291642
  360942: 9b05         	ldr	r3, [sp, #0x14]
  360944: 695b         	ldr	r3, [r3, #0x14]
  360946: 681b         	ldr	r3, [r3]
  360948: 33d0         	adds	r3, #0xd0
  36094a: 681c         	ldr	r4, [r3]
  36094c: 9b05         	ldr	r3, [sp, #0x14]
  36094e: 695b         	ldr	r3, [r3, #0x14]
  360950: 4618         	mov	r0, r3
  360952: 9918         	ldr	r1, [sp, #0x60]
  360954: 9a25         	ldr	r2, [sp, #0x94]
  360956: 9b25         	ldr	r3, [sp, #0x94]
  360958: 47a0         	blx	r4
  36095a: 9b18         	ldr	r3, [sp, #0x60]
  36095c: 681b         	ldr	r3, [r3]
  36095e: 3390         	adds	r3, #0x90
  360960: 681b         	ldr	r3, [r3]
  360962: 9a18         	ldr	r2, [sp, #0x60]
  360964: 4610         	mov	r0, r2
  360966: 2100         	movs	r1, #0x0
  360968: 4798         	blx	r3
  36096a: 9b05         	ldr	r3, [sp, #0x14]
  36096c: 69db         	ldr	r3, [r3, #0x1c]
  36096e: 4618         	mov	r0, r3
  360970: 9918         	ldr	r1, [sp, #0x60]
  360972: f239 fc7b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2398f6
  360976: b021         	add	sp, #0x84
  360978: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x360979); words below are literal-pool data ---
  36097a: bf00         	nop
  36097c: c5d2         	stm	r5!, {r1, r4, r6, r7}
  36097e: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::updateVisibleTiles
//      file offset 0x360980 (= ELF address; Ghidra 0x370980), 1168 bytes, Thumb-2
  360980: b082         	sub	sp, #0x8
  360982: b570         	push	{r4, r5, r6, lr}
  360984: ed2d 8b02    	vpush	{d8}
  360988: b0b2         	sub	sp, #0xc8
  36098a: 9009         	str	r0, [sp, #0x24]
  36098c: a938         	add	r1, sp, #0xe0
  36098e: e881 000c    	stm.w	r1, {r2, r3}
  360992: f8df 446c    	ldr.w	r4, [pc, #0x46c]        @ 0x360e00 <MapManager::updateVisibleTiles(cpVect)+0x480>
  360996: 447c         	add	r4, pc
  360998: 2300         	movs	r3, #0x0
  36099a: 930a         	str	r3, [sp, #0x28]
  36099c: e064         	b	0x360a68 <MapManager::updateVisibleTiles(cpVect)+0xe8> @ imm = #0xc8
  36099e: 9b09         	ldr	r3, [sp, #0x24]
  3609a0: 6bda         	ldr	r2, [r3, #0x3c]
  3609a2: 9b0a         	ldr	r3, [sp, #0x28]
  3609a4: 4610         	mov	r0, r2
  3609a6: 4619         	mov	r1, r3
  3609a8: f239 fbba    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x239774
  3609ac: 4603         	mov	r3, r0
  3609ae: 930e         	str	r3, [sp, #0x38]
  3609b0: 980e         	ldr	r0, [sp, #0x38]
  3609b2: f77c f993    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x83cda
  3609b6: 4603         	mov	r3, r0
  3609b8: edd3 7a02    	vldr	s15, [r3, #8]
  3609bc: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3609c0: ee17 3a90    	vmov	r3, s15
  3609c4: 930f         	str	r3, [sp, #0x3c]
  3609c6: 980e         	ldr	r0, [sp, #0x38]
  3609c8: f77c f988    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x83cf0
  3609cc: 4603         	mov	r3, r0
  3609ce: edd3 7a03    	vldr	s15, [r3, #12]
  3609d2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3609d6: ee17 3a90    	vmov	r3, s15
  3609da: 9310         	str	r3, [sp, #0x40]
  3609dc: 9b0e         	ldr	r3, [sp, #0x38]
  3609de: 681b         	ldr	r3, [r3]
  3609e0: 3350         	adds	r3, #0x50
  3609e2: 681b         	ldr	r3, [r3]
  3609e4: 9a0e         	ldr	r2, [sp, #0x38]
  3609e6: 4610         	mov	r0, r2
  3609e8: 4798         	blx	r3
  3609ea: 4603         	mov	r3, r0
  3609ec: edd3 7a00    	vldr	s15, [r3]
  3609f0: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3609f4: 9b0e         	ldr	r3, [sp, #0x38]
  3609f6: 681b         	ldr	r3, [r3]
  3609f8: 3350         	adds	r3, #0x50
  3609fa: 681b         	ldr	r3, [r3]
  3609fc: 9a0e         	ldr	r2, [sp, #0x38]
  3609fe: 4610         	mov	r0, r2
  360a00: 4798         	blx	r3
  360a02: 4603         	mov	r3, r0
  360a04: edd3 7a01    	vldr	s15, [r3, #4]
  360a08: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360a0c: ab2e         	add	r3, sp, #0xb8
  360a0e: 4618         	mov	r0, r3
  360a10: eeb0 0b48    	vmov.f64	d0, d8
  360a14: eeb0 1b47    	vmov.f64	d1, d7
  360a18: f7fd f832    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x2f9c
  360a1c: 9b0e         	ldr	r3, [sp, #0x38]
  360a1e: 681b         	ldr	r3, [r3]
  360a20: 3390         	adds	r3, #0x90
  360a22: 681e         	ldr	r6, [r3]
  360a24: 9b0f         	ldr	r3, [sp, #0x3c]
  360a26: ee05 3a90    	vmov	s11, r3
  360a2a: eeb8 6be5    	vcvt.f64.s32	d6, s11
  360a2e: 9b10         	ldr	r3, [sp, #0x40]
  360a30: ee05 3a90    	vmov	s11, r3
  360a34: eeb8 7be5    	vcvt.f64.s32	d7, s11
  360a38: ab1e         	add	r3, sp, #0x78
  360a3a: 4618         	mov	r0, r3
  360a3c: eeb0 0b46    	vmov.f64	d0, d6
  360a40: eeb0 1b47    	vmov.f64	d1, d7
  360a44: f7fd f81c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x2fc8
  360a48: 466d         	mov	r5, sp
  360a4a: ab1e         	add	r3, sp, #0x78
  360a4c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  360a4e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  360a52: ab2e         	add	r3, sp, #0xb8
  360a54: cb0f         	ldm	r3, {r0, r1, r2, r3}
  360a56: f7fd fa1f    	bl	0x35de98 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x430> @ imm = #-0x2bc2
  360a5a: 4603         	mov	r3, r0
  360a5c: 980e         	ldr	r0, [sp, #0x38]
  360a5e: 4619         	mov	r1, r3
  360a60: 47b0         	blx	r6
  360a62: 9b0a         	ldr	r3, [sp, #0x28]
  360a64: 3301         	adds	r3, #0x1
  360a66: 930a         	str	r3, [sp, #0x28]
  360a68: 9d0a         	ldr	r5, [sp, #0x28]
  360a6a: 9b09         	ldr	r3, [sp, #0x24]
  360a6c: 6bdb         	ldr	r3, [r3, #0x3c]
  360a6e: 4618         	mov	r0, r3
  360a70: f239 fb36    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x23966c
  360a74: 4603         	mov	r3, r0
  360a76: 429d         	cmp	r5, r3
  360a78: bf2c         	ite	hs
  360a7a: 2300         	movhs	r3, #0x0
  360a7c: 2301         	movlo	r3, #0x1
  360a7e: b2db         	uxtb	r3, r3
  360a80: 2b00         	cmp	r3, #0x0
  360a82: d18c         	bne	0x36099e <MapManager::updateVisibleTiles(cpVect)+0x1e> @ imm = #-0xe8
  360a84: 2300         	movs	r3, #0x0
  360a86: 930b         	str	r3, [sp, #0x2c]
  360a88: e013         	b	0x360ab2 <MapManager::updateVisibleTiles(cpVect)+0x132> @ imm = #0x26
  360a8a: 9b09         	ldr	r3, [sp, #0x24]
  360a8c: 6a1a         	ldr	r2, [r3, #0x20]
  360a8e: 9b0b         	ldr	r3, [sp, #0x2c]
  360a90: 4610         	mov	r0, r2
  360a92: 4619         	mov	r1, r3
  360a94: f239 fb44    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x239688
  360a98: 4603         	mov	r3, r0
  360a9a: 9311         	str	r3, [sp, #0x44]
  360a9c: 9b11         	ldr	r3, [sp, #0x44]
  360a9e: 681b         	ldr	r3, [r3]
  360aa0: 3390         	adds	r3, #0x90
  360aa2: 681b         	ldr	r3, [r3]
  360aa4: 9a11         	ldr	r2, [sp, #0x44]
  360aa6: 4610         	mov	r0, r2
  360aa8: 2100         	movs	r1, #0x0
  360aaa: 4798         	blx	r3
  360aac: 9b0b         	ldr	r3, [sp, #0x2c]
  360aae: 3301         	adds	r3, #0x1
  360ab0: 930b         	str	r3, [sp, #0x2c]
  360ab2: 9d0b         	ldr	r5, [sp, #0x2c]
  360ab4: 9b09         	ldr	r3, [sp, #0x24]
  360ab6: 6a1b         	ldr	r3, [r3, #0x20]
  360ab8: 4618         	mov	r0, r3
  360aba: f239 fb11    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x239622
  360abe: 4603         	mov	r3, r0
  360ac0: 429d         	cmp	r5, r3
  360ac2: bf2c         	ite	hs
  360ac4: 2300         	movhs	r3, #0x0
  360ac6: 2301         	movlo	r3, #0x1
  360ac8: b2db         	uxtb	r3, r3
  360aca: 2b00         	cmp	r3, #0x0
  360acc: d1dd         	bne	0x360a8a <MapManager::updateVisibleTiles(cpVect)+0x10a> @ imm = #-0x46
  360ace: 9b09         	ldr	r3, [sp, #0x24]
  360ad0: 6a1b         	ldr	r3, [r3, #0x20]
  360ad2: 4618         	mov	r0, r3
  360ad4: f239 fc46    	bl	0x59a364 <cocos2d::CCArray::removeAllObjects()> @ imm = #0x23988c
  360ad8: 4bca         	ldr	r3, [pc, #0x328]        @ 0x360e04 <MapManager::updateVisibleTiles(cpVect)+0x484>
  360ada: 58e3         	ldr	r3, [r4, r3]
  360adc: 681b         	ldr	r3, [r3]
  360ade: 681b         	ldr	r3, [r3]
  360ae0: f503 7332    	add.w	r3, r3, #0x2c8
  360ae4: 681b         	ldr	r3, [r3]
  360ae6: 4ac7         	ldr	r2, [pc, #0x31c]        @ 0x360e04 <MapManager::updateVisibleTiles(cpVect)+0x484>
  360ae8: 58a2         	ldr	r2, [r4, r2]
  360aea: 6812         	ldr	r2, [r2]
  360aec: 4610         	mov	r0, r2
  360aee: 4798         	blx	r3
  360af0: 4603         	mov	r3, r0
  360af2: 9312         	str	r3, [sp, #0x48]
  360af4: 9b09         	ldr	r3, [sp, #0x24]
  360af6: 6c9b         	ldr	r3, [r3, #0x48]
  360af8: 4ac3         	ldr	r2, [pc, #0x30c]        @ 0x360e08 <MapManager::updateVisibleTiles(cpVect)+0x488>
  360afa: 58a2         	ldr	r2, [r4, r2]
  360afc: 6812         	ldr	r2, [r2]
  360afe: fb02 f303    	mul	r3, r2, r3
  360b02: ee06 3a90    	vmov	s13, r3
  360b06: eef8 7ae6    	vcvt.f32.s32	s15, s13
  360b0a: edcd 7a13    	vstr	s15, [sp, #76]
  360b0e: 4bbf         	ldr	r3, [pc, #0x2fc]        @ 0x360e0c <MapManager::updateVisibleTiles(cpVect)+0x48c>
  360b10: 58e3         	ldr	r3, [r4, r3]
  360b12: edd3 7a00    	vldr	s15, [r3]
  360b16: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  360b1a: 4bbc         	ldr	r3, [pc, #0x2f0]        @ 0x360e0c <MapManager::updateVisibleTiles(cpVect)+0x48c>
  360b1c: 58e3         	ldr	r3, [r4, r3]
  360b1e: edd3 7a01    	vldr	s15, [r3, #4]
  360b22: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360b26: ab22         	add	r3, sp, #0x88
  360b28: 4618         	mov	r0, r3
  360b2a: eeb0 0b46    	vmov.f64	d0, d6
  360b2e: eeb0 1b47    	vmov.f64	d1, d7
  360b32: f7fc ffa5    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x30b6
  360b36: eeb0 7a00    	vmov.f32	s14, #2.000000e+00
  360b3a: eddd 7a12    	vldr	s15, [sp, #72]
  360b3e: eec7 7a27    	vdiv.f32	s15, s14, s15
  360b42: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  360b46: eeb0 7a00    	vmov.f32	s14, #2.000000e+00
  360b4a: eddd 7a12    	vldr	s15, [sp, #72]
  360b4e: eec7 7a27    	vdiv.f32	s15, s14, s15
  360b52: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360b56: ab26         	add	r3, sp, #0x98
  360b58: 4618         	mov	r0, r3
  360b5a: eeb0 0b46    	vmov.f64	d0, d6
  360b5e: eeb0 1b47    	vmov.f64	d1, d7
  360b62: f7fc ff8d    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x30e6
  360b66: ab16         	add	r3, sp, #0x58
  360b68: ed9d 4b22    	vldr	d4, [sp, #136]
  360b6c: ed9d 5b24    	vldr	d5, [sp, #144]
  360b70: ed9d 6b26    	vldr	d6, [sp, #152]
  360b74: ed9d 7b28    	vldr	d7, [sp, #160]
  360b78: 4618         	mov	r0, r3
  360b7a: eeb0 0b44    	vmov.f64	d0, d4
  360b7e: eeb0 1b45    	vmov.f64	d1, d5
  360b82: eeb0 2b46    	vmov.f64	d2, d6
  360b86: eeb0 3b47    	vmov.f64	d3, d7
  360b8a: f7fc ff8d    	bl	0x35daa8 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x40> @ imm = #-0x30e6
  360b8e: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  360b92: eddd 7a12    	vldr	s15, [sp, #72]
  360b96: eec7 7a27    	vdiv.f32	s15, s14, s15
  360b9a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360b9e: ab04         	add	r3, sp, #0x10
  360ba0: ed9d 5b16    	vldr	d5, [sp, #88]
  360ba4: ed9d 6b18    	vldr	d6, [sp, #96]
  360ba8: 4618         	mov	r0, r3
  360baa: eeb0 0b45    	vmov.f64	d0, d5
  360bae: eeb0 1b46    	vmov.f64	d1, d6
  360bb2: eeb0 2b47    	vmov.f64	d2, d7
  360bb6: f7fc ffcf    	bl	0x35db58 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0xf0> @ imm = #-0x3062
  360bba: ac16         	add	r4, sp, #0x58
  360bbc: ab04         	add	r3, sp, #0x10
  360bbe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  360bc0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  360bc4: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  360bc8: eddd 7a12    	vldr	s15, [sp, #72]
  360bcc: eec7 7a27    	vdiv.f32	s15, s14, s15
  360bd0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  360bd4: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  360bd8: eddd 7a12    	vldr	s15, [sp, #72]
  360bdc: eec7 7a27    	vdiv.f32	s15, s14, s15
  360be0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360be4: ab2a         	add	r3, sp, #0xa8
  360be6: 4618         	mov	r0, r3
  360be8: eeb0 0b46    	vmov.f64	d0, d6
  360bec: eeb0 1b47    	vmov.f64	d1, d7
  360bf0: f7fc ff46    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3174
  360bf4: ab1a         	add	r3, sp, #0x68
  360bf6: ed9d 4b38    	vldr	d4, [sp, #224]
  360bfa: ed9d 5b3a    	vldr	d5, [sp, #232]
  360bfe: ed9d 6b2a    	vldr	d6, [sp, #168]
  360c02: ed9d 7b2c    	vldr	d7, [sp, #176]
  360c06: 4618         	mov	r0, r3
  360c08: eeb0 0b44    	vmov.f64	d0, d4
  360c0c: eeb0 1b45    	vmov.f64	d1, d5
  360c10: eeb0 2b46    	vmov.f64	d2, d6
  360c14: eeb0 3b47    	vmov.f64	d3, d7
  360c18: f7fc ff72    	bl	0x35db00 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x98> @ imm = #-0x311c
  360c1c: ed9d 6b16    	vldr	d6, [sp, #88]
  360c20: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  360c24: ee26 6b07    	vmul.f64	d6, d6, d7
  360c28: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  360c2c: eddd 7a12    	vldr	s15, [sp, #72]
  360c30: ee77 7a67    	vsub.f32	s15, s14, s15
  360c34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360c38: ee26 6b07    	vmul.f64	d6, d6, d7
  360c3c: ed9d 5b18    	vldr	d5, [sp, #96]
  360c40: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  360c44: ee25 5b07    	vmul.f64	d5, d5, d7
  360c48: eeb7 7a00    	vmov.f32	s14, #1.000000e+00
  360c4c: eddd 7a12    	vldr	s15, [sp, #72]
  360c50: ee77 7a67    	vsub.f32	s15, s14, s15
  360c54: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360c58: ee25 7b07    	vmul.f64	d7, d5, d7
  360c5c: ab2e         	add	r3, sp, #0xb8
  360c5e: 4618         	mov	r0, r3
  360c60: eeb0 0b46    	vmov.f64	d0, d6
  360c64: eeb0 1b47    	vmov.f64	d1, d7
  360c68: f7fc ff0a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x31ec
  360c6c: ab04         	add	r3, sp, #0x10
  360c6e: ed9d 4b1a    	vldr	d4, [sp, #104]
  360c72: ed9d 5b1c    	vldr	d5, [sp, #112]
  360c76: ed9d 6b2e    	vldr	d6, [sp, #184]
  360c7a: ed9d 7b30    	vldr	d7, [sp, #192]
  360c7e: 4618         	mov	r0, r3
  360c80: eeb0 0b44    	vmov.f64	d0, d4
  360c84: eeb0 1b45    	vmov.f64	d1, d5
  360c88: eeb0 2b46    	vmov.f64	d2, d6
  360c8c: eeb0 3b47    	vmov.f64	d3, d7
  360c90: f7fc ff36    	bl	0x35db00 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x98> @ imm = #-0x3194
  360c94: ac1a         	add	r4, sp, #0x68
  360c96: ab04         	add	r3, sp, #0x10
  360c98: cb0f         	ldm	r3, {r0, r1, r2, r3}
  360c9a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  360c9e: ed9d 6b1a    	vldr	d6, [sp, #104]
  360ca2: eddd 7a13    	vldr	s15, [sp, #76]
  360ca6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360caa: ee86 7b07    	vdiv.f64	d7, d6, d7
  360cae: eefd 7bc7    	vcvt.s32.f64	s15, d7
  360cb2: eeb8 8be7    	vcvt.f64.s32	d8, s15
  360cb6: 9b09         	ldr	r3, [sp, #0x24]
  360cb8: 695b         	ldr	r3, [r3, #0x14]
  360cba: 681b         	ldr	r3, [r3]
  360cbc: 338c         	adds	r3, #0x8c
  360cbe: 681b         	ldr	r3, [r3]
  360cc0: 9a09         	ldr	r2, [sp, #0x24]
  360cc2: 6952         	ldr	r2, [r2, #0x14]
  360cc4: 4610         	mov	r0, r2
  360cc6: 4798         	blx	r3
  360cc8: 4603         	mov	r3, r0
  360cca: edd3 7a01    	vldr	s15, [r3, #4]
  360cce: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  360cd2: ed9d 7b1c    	vldr	d7, [sp, #112]
  360cd6: ee36 6b47    	vsub.f64	d6, d6, d7
  360cda: eddd 7a13    	vldr	s15, [sp, #76]
  360cde: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360ce2: ee86 7b07    	vdiv.f64	d7, d6, d7
  360ce6: eefd 7bc7    	vcvt.s32.f64	s15, d7
  360cea: eeb8 7be7    	vcvt.f64.s32	d7, s15
  360cee: ab04         	add	r3, sp, #0x10
  360cf0: 4618         	mov	r0, r3
  360cf2: eeb0 0b48    	vmov.f64	d0, d8
  360cf6: eeb0 1b47    	vmov.f64	d1, d7
  360cfa: f7fc fec1    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x327e
  360cfe: ac1a         	add	r4, sp, #0x68
  360d00: ab04         	add	r3, sp, #0x10
  360d02: cb0f         	ldm	r3, {r0, r1, r2, r3}
  360d04: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  360d08: 2300         	movs	r3, #0x0
  360d0a: 930c         	str	r3, [sp, #0x30]
  360d0c: e05a         	b	0x360dc4 <MapManager::updateVisibleTiles(cpVect)+0x444> @ imm = #0xb4
  360d0e: 2300         	movs	r3, #0x0
  360d10: 930d         	str	r3, [sp, #0x34]
  360d12: e03e         	b	0x360d92 <MapManager::updateVisibleTiles(cpVect)+0x412> @ imm = #0x7c
  360d14: ed9d 7b1a    	vldr	d7, [sp, #104]
  360d18: eefd 5bc7    	vcvt.s32.f64	s11, d7
  360d1c: ee15 2a90    	vmov	r2, s11
  360d20: 9b0d         	ldr	r3, [sp, #0x34]
  360d22: 441a         	add	r2, r3
  360d24: ed9d 7b1c    	vldr	d7, [sp, #112]
  360d28: eefd 6bc7    	vcvt.s32.f64	s13, d7
  360d2c: ee16 1a90    	vmov	r1, s13
  360d30: 9b0c         	ldr	r3, [sp, #0x30]
  360d32: 1acb         	subs	r3, r1, r3
  360d34: 9909         	ldr	r1, [sp, #0x24]
  360d36: 6d09         	ldr	r1, [r1, #0x50]
  360d38: fb01 f303    	mul	r3, r1, r3
  360d3c: 4413         	add	r3, r2
  360d3e: 9314         	str	r3, [sp, #0x50]
  360d40: 9b14         	ldr	r3, [sp, #0x50]
  360d42: 2b00         	cmp	r3, #0x0
  360d44: db22         	blt	0x360d8c <MapManager::updateVisibleTiles(cpVect)+0x40c> @ imm = #0x44
  360d46: 9b09         	ldr	r3, [sp, #0x24]
  360d48: 6d1b         	ldr	r3, [r3, #0x50]
  360d4a: 9a09         	ldr	r2, [sp, #0x24]
  360d4c: 6d52         	ldr	r2, [r2, #0x54]
  360d4e: fb02 f203    	mul	r2, r2, r3
  360d52: 9b14         	ldr	r3, [sp, #0x50]
  360d54: 429a         	cmp	r2, r3
  360d56: dd19         	ble	0x360d8c <MapManager::updateVisibleTiles(cpVect)+0x40c> @ imm = #0x32
  360d58: 9b09         	ldr	r3, [sp, #0x24]
  360d5a: 69da         	ldr	r2, [r3, #0x1c]
  360d5c: 9b14         	ldr	r3, [sp, #0x50]
  360d5e: 4610         	mov	r0, r2
  360d60: 4619         	mov	r1, r3
  360d62: f239 f9dd    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2393ba
  360d66: 4603         	mov	r3, r0
  360d68: 9315         	str	r3, [sp, #0x54]
  360d6a: 9b15         	ldr	r3, [sp, #0x54]
  360d6c: 2b00         	cmp	r3, #0x0
  360d6e: d00d         	beq	0x360d8c <MapManager::updateVisibleTiles(cpVect)+0x40c> @ imm = #0x1a
  360d70: 9b15         	ldr	r3, [sp, #0x54]
  360d72: 681b         	ldr	r3, [r3]
  360d74: 3390         	adds	r3, #0x90
  360d76: 681b         	ldr	r3, [r3]
  360d78: 9a15         	ldr	r2, [sp, #0x54]
  360d7a: 4610         	mov	r0, r2
  360d7c: 2101         	movs	r1, #0x1
  360d7e: 4798         	blx	r3
  360d80: 9b09         	ldr	r3, [sp, #0x24]
  360d82: 6a1b         	ldr	r3, [r3, #0x20]
  360d84: 4618         	mov	r0, r3
  360d86: 9915         	ldr	r1, [sp, #0x54]
  360d88: f239 fa70    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2394e0
  360d8c: 9b0d         	ldr	r3, [sp, #0x34]
  360d8e: 3301         	adds	r3, #0x1
  360d90: 930d         	str	r3, [sp, #0x34]
  360d92: 9b0d         	ldr	r3, [sp, #0x34]
  360d94: ee07 3a10    	vmov	s14, r3
  360d98: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  360d9c: ed9d 5b16    	vldr	d5, [sp, #88]
  360da0: eddd 7a13    	vldr	s15, [sp, #76]
  360da4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360da8: ee85 5b07    	vdiv.f64	d5, d5, d7
  360dac: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  360db0: ee35 7b07    	vadd.f64	d7, d5, d7
  360db4: eeb4 6bc7    	vcmpe.f64	d6, d7
  360db8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360dbc: d4aa         	bmi	0x360d14 <MapManager::updateVisibleTiles(cpVect)+0x394> @ imm = #-0xac
  360dbe: 9b0c         	ldr	r3, [sp, #0x30]
  360dc0: 3301         	adds	r3, #0x1
  360dc2: 930c         	str	r3, [sp, #0x30]
  360dc4: 9b0c         	ldr	r3, [sp, #0x30]
  360dc6: ee07 3a90    	vmov	s15, r3
  360dca: eeb8 6be7    	vcvt.f64.s32	d6, s15
  360dce: ed9d 5b18    	vldr	d5, [sp, #96]
  360dd2: eddd 7a13    	vldr	s15, [sp, #76]
  360dd6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  360dda: ee85 5b07    	vdiv.f64	d5, d5, d7
  360dde: eeb7 7b00    	vmov.f64	d7, #1.000000e+00
  360de2: ee35 7b07    	vadd.f64	d7, d5, d7
  360de6: eeb4 6bc7    	vcmpe.f64	d6, d7
  360dea: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360dee: d48e         	bmi	0x360d0e <MapManager::updateVisibleTiles(cpVect)+0x38e> @ imm = #-0xe4
  360df0: b032         	add	sp, #0xc8
  360df2: ecbd 8b02    	vpop	{d8}
  360df6: e8bd 4070    	pop.w	{r4, r5, r6, lr}
  360dfa: b002         	add	sp, #0x8
  360dfc: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x360dfd); words below are literal-pool data ---
  360dfe: bf00         	nop
  360e00: 2072         	movs	r0, #0x72
  360e02: 005d         	lsls	r5, r3, #0x1
  360e04: d784         	bvc	0x360d10 <MapManager::updateVisibleTiles(cpVect)+0x390> @ imm = #-0xf8
  360e06: ffff db94    	<unknown>
  360e0a: ffff d724    	<unknown>
  360e0e: ffff b082    	<unknown>

// ==== MapManager::isBoundryTile
//      file offset 0x360e10 (= ELF address; Ghidra 0x370e10), 220 bytes, Thumb-2
  360e10: b082         	sub	sp, #0x8
  360e12: b510         	push	{r4, lr}
  360e14: b086         	sub	sp, #0x18
  360e16: 9001         	str	r0, [sp, #0x4]
  360e18: a908         	add	r1, sp, #0x20
  360e1a: e881 000c    	stm.w	r1, {r2, r3}
  360e1e: ed9d 7b08    	vldr	d7, [sp, #32]
  360e22: eeb5 7bc0    	vcmpe.f64	d7, #0
  360e26: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360e2a: dd58         	ble	0x360ede <MapManager::isBoundryTile(cpVect)+0xce> @ imm = #0xb0
  360e2c: ed9d 7b0a    	vldr	d7, [sp, #40]
  360e30: eeb5 7bc0    	vcmpe.f64	d7, #0
  360e34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360e38: dd51         	ble	0x360ede <MapManager::isBoundryTile(cpVect)+0xce> @ imm = #0xa2
  360e3a: ed9d 6b08    	vldr	d6, [sp, #32]
  360e3e: 9b01         	ldr	r3, [sp, #0x4]
  360e40: 6c1b         	ldr	r3, [r3, #0x40]
  360e42: ee05 3a90    	vmov	s11, r3
  360e46: eeb8 7be5    	vcvt.f64.s32	d7, s11
  360e4a: eeb4 6bc7    	vcmpe.f64	d6, d7
  360e4e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360e52: d544         	bpl	0x360ede <MapManager::isBoundryTile(cpVect)+0xce> @ imm = #0x88
  360e54: ed9d 6b0a    	vldr	d6, [sp, #40]
  360e58: 9b01         	ldr	r3, [sp, #0x4]
  360e5a: 6c5b         	ldr	r3, [r3, #0x44]
  360e5c: ee05 3a90    	vmov	s11, r3
  360e60: eeb8 7be5    	vcvt.f64.s32	d7, s11
  360e64: eeb4 6bc7    	vcmpe.f64	d6, d7
  360e68: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  360e6c: d537         	bpl	0x360ede <MapManager::isBoundryTile(cpVect)+0xce> @ imm = #0x6e
  360e6e: 9b01         	ldr	r3, [sp, #0x4]
  360e70: 6b1c         	ldr	r4, [r3, #0x30]
  360e72: ed9d 7b08    	vldr	d7, [sp, #32]
  360e76: eef7 6bc7    	vcvt.f32.f64	s13, d7
  360e7a: ed9d 7b0a    	vldr	d7, [sp, #40]
  360e7e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  360e82: ab04         	add	r3, sp, #0x10
  360e84: 4618         	mov	r0, r3
  360e86: ee16 1a90    	vmov	r1, s13
  360e8a: ee17 2a90    	vmov	r2, s15
  360e8e: f231 ff2f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x231e5e
  360e92: ab04         	add	r3, sp, #0x10
  360e94: 4620         	mov	r0, r4
  360e96: 4619         	mov	r1, r3
  360e98: f298 ff34    	bl	0x5f9d04 <cocos2d::CCTMXLayer::tileGIDAt(cocos2d::CCPoint const&)> @ imm = #0x298e68
  360e9c: 4603         	mov	r3, r0
  360e9e: 9302         	str	r3, [sp, #0x8]
  360ea0: 9b01         	ldr	r3, [sp, #0x4]
  360ea2: 6a5b         	ldr	r3, [r3, #0x24]
  360ea4: 4618         	mov	r0, r3
  360ea6: 9902         	ldr	r1, [sp, #0x8]
  360ea8: f233 fa78    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x2334f0
  360eac: 4603         	mov	r3, r0
  360eae: 9303         	str	r3, [sp, #0xc]
  360eb0: 9b03         	ldr	r3, [sp, #0xc]
  360eb2: 2b00         	cmp	r3, #0x0
  360eb4: d00e         	beq	0x360ed4 <MapManager::isBoundryTile(cpVect)+0xc4> @ imm = #0x1c
  360eb6: 9b01         	ldr	r3, [sp, #0x4]
  360eb8: 6adc         	ldr	r4, [r3, #0x2c]
  360eba: 9803         	ldr	r0, [sp, #0xc]
  360ebc: f78b ffca    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x7406c
  360ec0: 4603         	mov	r3, r0
  360ec2: 4620         	mov	r0, r4
  360ec4: 4619         	mov	r1, r3
  360ec6: f233 fa69    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x2334d2
  360eca: 4603         	mov	r3, r0
  360ecc: 2b00         	cmp	r3, #0x0
  360ece: d001         	beq	0x360ed4 <MapManager::isBoundryTile(cpVect)+0xc4> @ imm = #0x2
  360ed0: 2301         	movs	r3, #0x1
  360ed2: e000         	b	0x360ed6 <MapManager::isBoundryTile(cpVect)+0xc6> @ imm = #0x0
  360ed4: 2300         	movs	r3, #0x0
  360ed6: 2b00         	cmp	r3, #0x0
  360ed8: d001         	beq	0x360ede <MapManager::isBoundryTile(cpVect)+0xce> @ imm = #0x2
  360eda: 2301         	movs	r3, #0x1
  360edc: e000         	b	0x360ee0 <MapManager::isBoundryTile(cpVect)+0xd0> @ imm = #0x0
  360ede: 2300         	movs	r3, #0x0
  360ee0: 4618         	mov	r0, r3
  360ee2: b006         	add	sp, #0x18
  360ee4: e8bd 4010    	pop.w	{r4, lr}
  360ee8: b002         	add	sp, #0x8
  360eea: 4770         	bx	lr

// ==== MapManager::addStaticBodyShape
//      file offset 0x360ef0 (= ELF address; Ghidra 0x370ef0), 17688 bytes, Thumb-2
  360ef0: b5f0         	push	{r4, r5, r6, r7, lr}
  360ef2: ed2d 8b02    	vpush	{d8}
  360ef6: b0cf         	sub	sp, #0x13c
  360ef8: ab0b         	add	r3, sp, #0x2c
  360efa: 6018         	str	r0, [r3]
  360efc: ab0a         	add	r3, sp, #0x28
  360efe: 6019         	str	r1, [r3]
  360f00: ab09         	add	r3, sp, #0x24
  360f02: 601a         	str	r2, [r3]
  360f04: f8df 4a98    	ldr.w	r4, [pc, #0xa98]        @ 0x3619a0 <MapManager::addStaticBodyShape(int, int)+0xab0>
  360f08: 447c         	add	r4, pc
  360f0a: ab0a         	add	r3, sp, #0x28
  360f0c: 681b         	ldr	r3, [r3]
  360f0e: 9310         	str	r3, [sp, #0x40]
  360f10: ab09         	add	r3, sp, #0x24
  360f12: 681b         	ldr	r3, [r3]
  360f14: 9311         	str	r3, [sp, #0x44]
  360f16: ab0e         	add	r3, sp, #0x38
  360f18: 2200         	movs	r2, #0x0
  360f1a: 601a         	str	r2, [r3]
  360f1c: 2300         	movs	r3, #0x0
  360f1e: 9312         	str	r3, [sp, #0x48]
  360f20: ab0a         	add	r3, sp, #0x28
  360f22: 681b         	ldr	r3, [r3]
  360f24: 2b00         	cmp	r3, #0x0
  360f26: dd4b         	ble	0x360fc0 <MapManager::addStaticBodyShape(int, int)+0xd0> @ imm = #0x96
  360f28: ab09         	add	r3, sp, #0x24
  360f2a: 681b         	ldr	r3, [r3]
  360f2c: 2b00         	cmp	r3, #0x0
  360f2e: dd47         	ble	0x360fc0 <MapManager::addStaticBodyShape(int, int)+0xd0> @ imm = #0x8e
  360f30: ab0b         	add	r3, sp, #0x2c
  360f32: 681b         	ldr	r3, [r3]
  360f34: 6c1a         	ldr	r2, [r3, #0x40]
  360f36: ab0a         	add	r3, sp, #0x28
  360f38: 681b         	ldr	r3, [r3]
  360f3a: 429a         	cmp	r2, r3
  360f3c: dd40         	ble	0x360fc0 <MapManager::addStaticBodyShape(int, int)+0xd0> @ imm = #0x80
  360f3e: ab0b         	add	r3, sp, #0x2c
  360f40: 681b         	ldr	r3, [r3]
  360f42: 6c5a         	ldr	r2, [r3, #0x44]
  360f44: ab09         	add	r3, sp, #0x24
  360f46: 681b         	ldr	r3, [r3]
  360f48: 429a         	cmp	r2, r3
  360f4a: dd39         	ble	0x360fc0 <MapManager::addStaticBodyShape(int, int)+0xd0> @ imm = #0x72
  360f4c: ab0b         	add	r3, sp, #0x2c
  360f4e: 681b         	ldr	r3, [r3]
  360f50: 6b1d         	ldr	r5, [r3, #0x30]
  360f52: ab0a         	add	r3, sp, #0x28
  360f54: 681b         	ldr	r3, [r3]
  360f56: ee05 3a90    	vmov	s11, r3
  360f5a: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  360f5e: ab09         	add	r3, sp, #0x24
  360f60: 681b         	ldr	r3, [r3]
  360f62: ee06 3a90    	vmov	s13, r3
  360f66: eef8 7ae6    	vcvt.f32.s32	s15, s13
  360f6a: ab36         	add	r3, sp, #0xd8
  360f6c: 4618         	mov	r0, r3
  360f6e: ee17 1a10    	vmov	r1, s14
  360f72: ee17 2a90    	vmov	r2, s15
  360f76: f231 febb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x231d76
  360f7a: ab36         	add	r3, sp, #0xd8
  360f7c: 4628         	mov	r0, r5
  360f7e: 4619         	mov	r1, r3
  360f80: f298 fec0    	bl	0x5f9d04 <cocos2d::CCTMXLayer::tileGIDAt(cocos2d::CCPoint const&)> @ imm = #0x298d80
  360f84: 4603         	mov	r3, r0
  360f86: 9313         	str	r3, [sp, #0x4c]
  360f88: ab0b         	add	r3, sp, #0x2c
  360f8a: 681b         	ldr	r3, [r3]
  360f8c: 6cda         	ldr	r2, [r3, #0x4c]
  360f8e: 9b13         	ldr	r3, [sp, #0x4c]
  360f90: 429a         	cmp	r2, r3
  360f92: dc01         	bgt	0x360f98 <MapManager::addStaticBodyShape(int, int)+0xa8> @ imm = #0x2
  360f94: f004 ba1f    	b.w	0x3653d6 <MapManager::addStaticBodyShape(int, int)+0x44e6> @ imm = #0x443e
  360f98: ab0b         	add	r3, sp, #0x2c
  360f9a: 681b         	ldr	r3, [r3]
  360f9c: 6a5b         	ldr	r3, [r3, #0x24]
  360f9e: 4618         	mov	r0, r3
  360fa0: 9913         	ldr	r1, [sp, #0x4c]
  360fa2: f233 f9fb    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x2333f6
  360fa6: 4603         	mov	r3, r0
  360fa8: 9312         	str	r3, [sp, #0x48]
  360faa: 9b12         	ldr	r3, [sp, #0x48]
  360fac: 2b00         	cmp	r3, #0x0
  360fae: d004         	beq	0x360fba <MapManager::addStaticBodyShape(int, int)+0xca> @ imm = #0x8
  360fb0: 9812         	ldr	r0, [sp, #0x48]
  360fb2: f78b ff4f    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x74162
  360fb6: 4603         	mov	r3, r0
  360fb8: e000         	b	0x360fbc <MapManager::addStaticBodyShape(int, int)+0xcc> @ imm = #0x0
  360fba: 2300         	movs	r3, #0x0
  360fbc: aa0e         	add	r2, sp, #0x38
  360fbe: 6013         	str	r3, [r2]
  360fc0: ab0a         	add	r3, sp, #0x28
  360fc2: 681b         	ldr	r3, [r3]
  360fc4: ee07 3a10    	vmov	s14, r3
  360fc8: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  360fcc: ab09         	add	r3, sp, #0x24
  360fce: 681b         	ldr	r3, [r3]
  360fd0: 3301         	adds	r3, #0x1
  360fd2: ee05 3a90    	vmov	s11, r3
  360fd6: eeb8 7be5    	vcvt.f64.s32	d7, s11
  360fda: ab1a         	add	r3, sp, #0x68
  360fdc: 4618         	mov	r0, r3
  360fde: eeb0 0b46    	vmov.f64	d0, d6
  360fe2: eeb0 1b47    	vmov.f64	d1, d7
  360fe6: f7fc fd4b    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x356a
  360fea: ad0b         	add	r5, sp, #0x2c
  360fec: 466b         	mov	r3, sp
  360fee: aa1c         	add	r2, sp, #0x70
  360ff0: e892 0003    	ldm.w	r2, {r0, r1}
  360ff4: e883 0003    	stm.w	r3, {r0, r1}
  360ff8: ab1a         	add	r3, sp, #0x68
  360ffa: cb0c         	ldm	r3, {r2, r3}
  360ffc: 6828         	ldr	r0, [r5]
  360ffe: f7ff ff07    	bl	0x360e10 <MapManager::isBoundryTile(cpVect)> @ imm = #-0x1f2
  361002: 4603         	mov	r3, r0
  361004: 2b00         	cmp	r3, #0x0
  361006: d06d         	beq	0x3610e4 <MapManager::addStaticBodyShape(int, int)+0x1f4> @ imm = #0xda
  361008: ab0a         	add	r3, sp, #0x28
  36100a: 681b         	ldr	r3, [r3]
  36100c: ee07 3a10    	vmov	s14, r3
  361010: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  361014: ab09         	add	r3, sp, #0x24
  361016: 681b         	ldr	r3, [r3]
  361018: 3b01         	subs	r3, #0x1
  36101a: ee05 3a90    	vmov	s11, r3
  36101e: eeb8 7be5    	vcvt.f64.s32	d7, s11
  361022: ab1e         	add	r3, sp, #0x78
  361024: 4618         	mov	r0, r3
  361026: eeb0 0b46    	vmov.f64	d0, d6
  36102a: eeb0 1b47    	vmov.f64	d1, d7
  36102e: f7fc fd27    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x35b2
  361032: ad0b         	add	r5, sp, #0x2c
  361034: 466b         	mov	r3, sp
  361036: aa20         	add	r2, sp, #0x80
  361038: e892 0003    	ldm.w	r2, {r0, r1}
  36103c: e883 0003    	stm.w	r3, {r0, r1}
  361040: ab1e         	add	r3, sp, #0x78
  361042: cb0c         	ldm	r3, {r2, r3}
  361044: 6828         	ldr	r0, [r5]
  361046: f7ff fee3    	bl	0x360e10 <MapManager::isBoundryTile(cpVect)> @ imm = #-0x23a
  36104a: 4603         	mov	r3, r0
  36104c: 2b00         	cmp	r3, #0x0
  36104e: d049         	beq	0x3610e4 <MapManager::addStaticBodyShape(int, int)+0x1f4> @ imm = #0x92
  361050: ab0a         	add	r3, sp, #0x28
  361052: 681b         	ldr	r3, [r3]
  361054: 3301         	adds	r3, #0x1
  361056: ee07 3a10    	vmov	s14, r3
  36105a: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  36105e: ab09         	add	r3, sp, #0x24
  361060: 681b         	ldr	r3, [r3]
  361062: ee05 3a90    	vmov	s11, r3
  361066: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36106a: ab22         	add	r3, sp, #0x88
  36106c: 4618         	mov	r0, r3
  36106e: eeb0 0b46    	vmov.f64	d0, d6
  361072: eeb0 1b47    	vmov.f64	d1, d7
  361076: f7fc fd03    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x35fa
  36107a: ad0b         	add	r5, sp, #0x2c
  36107c: 466b         	mov	r3, sp
  36107e: aa24         	add	r2, sp, #0x90
  361080: e892 0003    	ldm.w	r2, {r0, r1}
  361084: e883 0003    	stm.w	r3, {r0, r1}
  361088: ab22         	add	r3, sp, #0x88
  36108a: cb0c         	ldm	r3, {r2, r3}
  36108c: 6828         	ldr	r0, [r5]
  36108e: f7ff febf    	bl	0x360e10 <MapManager::isBoundryTile(cpVect)> @ imm = #-0x282
  361092: 4603         	mov	r3, r0
  361094: 2b00         	cmp	r3, #0x0
  361096: d025         	beq	0x3610e4 <MapManager::addStaticBodyShape(int, int)+0x1f4> @ imm = #0x4a
  361098: ab0a         	add	r3, sp, #0x28
  36109a: 681b         	ldr	r3, [r3]
  36109c: 3b01         	subs	r3, #0x1
  36109e: ee07 3a10    	vmov	s14, r3
  3610a2: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  3610a6: ab09         	add	r3, sp, #0x24
  3610a8: 681b         	ldr	r3, [r3]
  3610aa: ee05 3a90    	vmov	s11, r3
  3610ae: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3610b2: ab26         	add	r3, sp, #0x98
  3610b4: 4618         	mov	r0, r3
  3610b6: eeb0 0b46    	vmov.f64	d0, d6
  3610ba: eeb0 1b47    	vmov.f64	d1, d7
  3610be: f7fc fcdf    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3642
  3610c2: ad0b         	add	r5, sp, #0x2c
  3610c4: 466b         	mov	r3, sp
  3610c6: aa28         	add	r2, sp, #0xa0
  3610c8: e892 0003    	ldm.w	r2, {r0, r1}
  3610cc: e883 0003    	stm.w	r3, {r0, r1}
  3610d0: ab26         	add	r3, sp, #0x98
  3610d2: cb0c         	ldm	r3, {r2, r3}
  3610d4: 6828         	ldr	r0, [r5]
  3610d6: f7ff fe9b    	bl	0x360e10 <MapManager::isBoundryTile(cpVect)> @ imm = #-0x2ca
  3610da: 4603         	mov	r3, r0
  3610dc: 2b00         	cmp	r3, #0x0
  3610de: d001         	beq	0x3610e4 <MapManager::addStaticBodyShape(int, int)+0x1f4> @ imm = #0x2
  3610e0: 2301         	movs	r3, #0x1
  3610e2: e000         	b	0x3610e6 <MapManager::addStaticBodyShape(int, int)+0x1f6> @ imm = #0x0
  3610e4: 2300         	movs	r3, #0x0
  3610e6: 2b00         	cmp	r3, #0x0
  3610e8: d001         	beq	0x3610ee <MapManager::addStaticBodyShape(int, int)+0x1fe> @ imm = #0x2
  3610ea: f004 b974    	b.w	0x3653d6 <MapManager::addStaticBodyShape(int, int)+0x44e6> @ imm = #0x42e8
  3610ee: f8df 38b4    	ldr.w	r3, [pc, #0x8b4]        @ 0x3619a4 <MapManager::addStaticBodyShape(int, int)+0xab4>
  3610f2: 58e3         	ldr	r3, [r4, r3]
  3610f4: 681b         	ldr	r3, [r3]
  3610f6: 0fda         	lsrs	r2, r3, #0x1f
  3610f8: 4413         	add	r3, r2
  3610fa: 105b         	asrs	r3, r3, #0x1
  3610fc: ee06 3a90    	vmov	s13, r3
  361100: eef8 7ae6    	vcvt.f32.s32	s15, s13
  361104: edcd 7a14    	vstr	s15, [sp, #80]
  361108: ab0a         	add	r3, sp, #0x28
  36110a: 681b         	ldr	r3, [r3]
  36110c: ee07 3a10    	vmov	s14, r3
  361110: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  361114: ab0b         	add	r3, sp, #0x2c
  361116: 681b         	ldr	r3, [r3]
  361118: 6c5a         	ldr	r2, [r3, #0x44]
  36111a: ab09         	add	r3, sp, #0x24
  36111c: 681b         	ldr	r3, [r3]
  36111e: 1ad3         	subs	r3, r2, r3
  361120: ee05 3a90    	vmov	s11, r3
  361124: eeb8 7be5    	vcvt.f64.s32	d7, s11
  361128: ab2a         	add	r3, sp, #0xa8
  36112a: 4618         	mov	r0, r3
  36112c: eeb0 0b46    	vmov.f64	d0, d6
  361130: eeb0 1b47    	vmov.f64	d1, d7
  361134: f7fc fca4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x36b8
  361138: f8df 3868    	ldr.w	r3, [pc, #0x868]        @ 0x3619a4 <MapManager::addStaticBodyShape(int, int)+0xab4>
  36113c: 58e3         	ldr	r3, [r4, r3]
  36113e: 681b         	ldr	r3, [r3]
  361140: ee06 3a90    	vmov	s13, r3
  361144: eeb8 7be6    	vcvt.f64.s32	d7, s13
  361148: ab16         	add	r3, sp, #0x58
  36114a: ed9d 5b2a    	vldr	d5, [sp, #168]
  36114e: ed9d 6b2c    	vldr	d6, [sp, #176]
  361152: 4618         	mov	r0, r3
  361154: eeb0 0b45    	vmov.f64	d0, d5
  361158: eeb0 1b46    	vmov.f64	d1, d6
  36115c: eeb0 2b47    	vmov.f64	d2, d7
  361160: f7fc fcfa    	bl	0x35db58 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0xf0> @ imm = #-0x360c
  361164: eddd 7a14    	vldr	s15, [sp, #80]
  361168: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36116c: eddd 7a14    	vldr	s15, [sp, #80]
  361170: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361174: ab2e         	add	r3, sp, #0xb8
  361176: 4618         	mov	r0, r3
  361178: eeb0 0b46    	vmov.f64	d0, d6
  36117c: eeb0 1b47    	vmov.f64	d1, d7
  361180: f7fc fc7e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3704
  361184: ab04         	add	r3, sp, #0x10
  361186: ed9d 4b2e    	vldr	d4, [sp, #184]
  36118a: ed9d 5b30    	vldr	d5, [sp, #192]
  36118e: ed9d 6b16    	vldr	d6, [sp, #88]
  361192: ed9d 7b18    	vldr	d7, [sp, #96]
  361196: 4618         	mov	r0, r3
  361198: eeb0 0b44    	vmov.f64	d0, d4
  36119c: eeb0 1b45    	vmov.f64	d1, d5
  3611a0: eeb0 2b46    	vmov.f64	d2, d6
  3611a4: eeb0 3b47    	vmov.f64	d3, d7
  3611a8: f7fc fc7e    	bl	0x35daa8 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x40> @ imm = #-0x3704
  3611ac: ab04         	add	r3, sp, #0x10
  3611ae: ad16         	add	r5, sp, #0x58
  3611b0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3611b2: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3611b6: ab0b         	add	r3, sp, #0x2c
  3611b8: 681b         	ldr	r3, [r3]
  3611ba: 695b         	ldr	r3, [r3, #0x14]
  3611bc: 681b         	ldr	r3, [r3]
  3611be: 3350         	adds	r3, #0x50
  3611c0: 681b         	ldr	r3, [r3]
  3611c2: aa0b         	add	r2, sp, #0x2c
  3611c4: 6812         	ldr	r2, [r2]
  3611c6: 6952         	ldr	r2, [r2, #0x14]
  3611c8: 4610         	mov	r0, r2
  3611ca: 4798         	blx	r3
  3611cc: 4603         	mov	r3, r0
  3611ce: edd3 7a00    	vldr	s15, [r3]
  3611d2: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3611d6: ab0b         	add	r3, sp, #0x2c
  3611d8: 681b         	ldr	r3, [r3]
  3611da: 695b         	ldr	r3, [r3, #0x14]
  3611dc: 681b         	ldr	r3, [r3]
  3611de: 3350         	adds	r3, #0x50
  3611e0: 681b         	ldr	r3, [r3]
  3611e2: aa0b         	add	r2, sp, #0x2c
  3611e4: 6812         	ldr	r2, [r2]
  3611e6: 6952         	ldr	r2, [r2, #0x14]
  3611e8: 4610         	mov	r0, r2
  3611ea: 4798         	blx	r3
  3611ec: 4603         	mov	r3, r0
  3611ee: edd3 7a01    	vldr	s15, [r3, #4]
  3611f2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3611f6: ab32         	add	r3, sp, #0xc8
  3611f8: 4618         	mov	r0, r3
  3611fa: eeb0 0b48    	vmov.f64	d0, d8
  3611fe: eeb0 1b47    	vmov.f64	d1, d7
  361202: f7fc fc3d    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3786
  361206: ab04         	add	r3, sp, #0x10
  361208: ed9d 4b16    	vldr	d4, [sp, #88]
  36120c: ed9d 5b18    	vldr	d5, [sp, #96]
  361210: ed9d 6b32    	vldr	d6, [sp, #200]
  361214: ed9d 7b34    	vldr	d7, [sp, #208]
  361218: 4618         	mov	r0, r3
  36121a: eeb0 0b44    	vmov.f64	d0, d4
  36121e: eeb0 1b45    	vmov.f64	d1, d5
  361222: eeb0 2b46    	vmov.f64	d2, d6
  361226: eeb0 3b47    	vmov.f64	d3, d7
  36122a: f7fc fc3d    	bl	0x35daa8 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x40> @ imm = #-0x3786
  36122e: ab04         	add	r3, sp, #0x10
  361230: ad16         	add	r5, sp, #0x58
  361232: cb0f         	ldm	r3, {r0, r1, r2, r3}
  361234: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361238: ed9d 7b16    	vldr	d7, [sp, #88]
  36123c: ab0a         	add	r3, sp, #0x28
  36123e: eefd 5bc7    	vcvt.s32.f64	s11, d7
  361242: ee15 2a90    	vmov	r2, s11
  361246: 601a         	str	r2, [r3]
  361248: ed9d 7b18    	vldr	d7, [sp, #96]
  36124c: ab09         	add	r3, sp, #0x24
  36124e: eefd 6bc7    	vcvt.s32.f64	s13, d7
  361252: ee16 2a90    	vmov	r2, s13
  361256: 601a         	str	r2, [r3]
  361258: ab0e         	add	r3, sp, #0x38
  36125a: 681b         	ldr	r3, [r3]
  36125c: 3b01         	subs	r3, #0x1
  36125e: 2b29         	cmp	r3, #0x29
  361260: f204 80b8    	bhi.w	0x3653d4 <MapManager::addStaticBodyShape(int, int)+0x44e4> @ imm = #0x4170
  361264: a102         	adr	r1, #8 <MapManager::addStaticBodyShape(int, int)+0x37a>
  361266: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  36126a: 4411         	add	r1, r2
  36126c: 4708         	bx	r1
  36126e: bf00         	nop
  361270: 00a9         	lsls	r1, r5, #0x2
  361272: 0000         	movs	r0, r0
  361274: 0d71         	lsrs	r1, r6, #0x15
  361276: 0000         	movs	r0, r0
  361278: 0edd         	lsrs	r5, r3, #0x1b
  36127a: 0000         	movs	r0, r0
  36127c: 1043         	asrs	r3, r0, #0x1
  36127e: 0000         	movs	r0, r0
  361280: 11a9         	asrs	r1, r5, #0x6
  361282: 0000         	movs	r0, r0
  361284: 032f         	lsls	r7, r5, #0xc
  361286: 0000         	movs	r0, r0
  361288: 05db         	lsls	r3, r3, #0x17
  36128a: 0000         	movs	r0, r0
  36128c: 0485         	lsls	r5, r0, #0x12
  36128e: 0000         	movs	r0, r0
  361290: 01d3         	lsls	r3, r2, #0x7
  361292: 0000         	movs	r0, r0
  361294: 1a65         	subs	r5, r4, r1
  361296: 0000         	movs	r0, r0
  361298: 1ba9         	subs	r1, r5, r6
  36129a: 0000         	movs	r0, r0
  36129c: 1ce7         	adds	r7, r4, #0x3
  36129e: 0000         	movs	r0, r0
  3612a0: 1e25         	subs	r5, r4, #0x0
  3612a2: 0000         	movs	r0, r0
  3612a4: 1355         	asrs	r5, r2, #0xd
  3612a6: 0000         	movs	r0, r0
  3612a8: 1519         	asrs	r1, r3, #0x14
  3612aa: 0000         	movs	r0, r0
  3612ac: 16dd         	asrs	r5, r3, #0x1b
  3612ae: 0000         	movs	r0, r0
  3612b0: 18a1         	adds	r1, r4, r2
  3612b2: 0000         	movs	r0, r0
  3612b4: 0761         	lsls	r1, r4, #0x1d
  3612b6: 0000         	movs	r0, r0
  3612b8: 0a69         	lsrs	r1, r5, #0x9
  3612ba: 0000         	movs	r0, r0
  3612bc: 0bed         	lsrs	r5, r5, #0xf
  3612be: 0000         	movs	r0, r0
  3612c0: 08e5         	lsrs	r5, r4, #0x3
  3612c2: 0000         	movs	r0, r0
  3612c4: 4165         	adcs	r5, r4
  3612c6: 0000         	movs	r0, r0
  3612c8: 4165         	adcs	r5, r4
  3612ca: 0000         	movs	r0, r0
  3612cc: 1fa9         	subs	r1, r5, #0x6
  3612ce: 0000         	movs	r0, r0
  3612d0: 20f9         	movs	r0, #0xf9
  3612d2: 0000         	movs	r0, r0
  3612d4: 2249         	movs	r2, #0x49
  3612d6: 0000         	movs	r0, r0
  3612d8: 2399         	movs	r3, #0x99
  3612da: 0000         	movs	r0, r0
  3612dc: 2783         	movs	r7, #0x83
  3612de: 0000         	movs	r0, r0
  3612e0: 28cd         	cmp	r0, #0xcd
  3612e2: 0000         	movs	r0, r0
  3612e4: 24e9         	movs	r4, #0xe9
  3612e6: 0000         	movs	r0, r0
  3612e8: 2639         	movs	r6, #0x39
  3612ea: 0000         	movs	r0, r0
  3612ec: 2a5d         	cmp	r2, #0x5d
  3612ee: 0000         	movs	r0, r0
  3612f0: 2c75         	cmp	r4, #0x75
  3612f2: 0000         	movs	r0, r0
  3612f4: 2e05         	cmp	r6, #0x5
  3612f6: 0000         	movs	r0, r0
  3612f8: 2f95         	cmp	r7, #0x95
  3612fa: 0000         	movs	r0, r0
  3612fc: 3125         	adds	r1, #0x25
  3612fe: 0000         	movs	r0, r0
  361300: 32b5         	adds	r2, #0xb5
  361302: 0000         	movs	r0, r0
  361304: 343d         	adds	r4, #0x3d
  361306: 0000         	movs	r0, r0
  361308: 35c5         	adds	r5, #0xc5
  36130a: 0000         	movs	r0, r0
  36130c: 3791         	adds	r7, #0x91
  36130e: 0000         	movs	r0, r0
  361310: 391f         	subs	r1, #0x1f
  361312: 0000         	movs	r0, r0
  361314: 3aad         	subs	r2, #0xad
  361316: 0000         	movs	r0, r0
  361318: ab0a         	add	r3, sp, #0x28
  36131a: 681b         	ldr	r3, [r3]
  36131c: ee05 3a90    	vmov	s11, r3
  361320: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361324: eddd 7a14    	vldr	s15, [sp, #80]
  361328: ee77 7a67    	vsub.f32	s15, s14, s15
  36132c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361330: ab09         	add	r3, sp, #0x24
  361332: 681b         	ldr	r3, [r3]
  361334: ee07 3a90    	vmov	s15, r3
  361338: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36133c: eddd 7a14    	vldr	s15, [sp, #80]
  361340: ee77 7a67    	vsub.f32	s15, s14, s15
  361344: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361348: ab36         	add	r3, sp, #0xd8
  36134a: 4618         	mov	r0, r3
  36134c: eeb0 0b46    	vmov.f64	d0, d6
  361350: eeb0 1b47    	vmov.f64	d1, d7
  361354: f7fc fb94    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x38d8
  361358: ab0a         	add	r3, sp, #0x28
  36135a: 681b         	ldr	r3, [r3]
  36135c: ee05 3a90    	vmov	s11, r3
  361360: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361364: eddd 7a14    	vldr	s15, [sp, #80]
  361368: ee77 7a67    	vsub.f32	s15, s14, s15
  36136c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361370: ab09         	add	r3, sp, #0x24
  361372: 681b         	ldr	r3, [r3]
  361374: ee07 3a90    	vmov	s15, r3
  361378: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36137c: eddd 7a14    	vldr	s15, [sp, #80]
  361380: ee77 7a27    	vadd.f32	s15, s14, s15
  361384: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361388: ab3a         	add	r3, sp, #0xe8
  36138a: 4618         	mov	r0, r3
  36138c: eeb0 0b46    	vmov.f64	d0, d6
  361390: eeb0 1b47    	vmov.f64	d1, d7
  361394: f7fc fb74    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3918
  361398: ab0a         	add	r3, sp, #0x28
  36139a: 681b         	ldr	r3, [r3]
  36139c: ee05 3a90    	vmov	s11, r3
  3613a0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3613a4: eddd 7a14    	vldr	s15, [sp, #80]
  3613a8: ee77 7a27    	vadd.f32	s15, s14, s15
  3613ac: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3613b0: ab09         	add	r3, sp, #0x24
  3613b2: 681b         	ldr	r3, [r3]
  3613b4: ee07 3a90    	vmov	s15, r3
  3613b8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3613bc: eddd 7a14    	vldr	s15, [sp, #80]
  3613c0: ee77 7a27    	vadd.f32	s15, s14, s15
  3613c4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3613c8: ab3e         	add	r3, sp, #0xf8
  3613ca: 4618         	mov	r0, r3
  3613cc: eeb0 0b46    	vmov.f64	d0, d6
  3613d0: eeb0 1b47    	vmov.f64	d1, d7
  3613d4: f7fc fb54    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3958
  3613d8: ab0a         	add	r3, sp, #0x28
  3613da: 681b         	ldr	r3, [r3]
  3613dc: ee05 3a90    	vmov	s11, r3
  3613e0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3613e4: eddd 7a14    	vldr	s15, [sp, #80]
  3613e8: ee77 7a27    	vadd.f32	s15, s14, s15
  3613ec: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3613f0: ab09         	add	r3, sp, #0x24
  3613f2: 681b         	ldr	r3, [r3]
  3613f4: ee07 3a90    	vmov	s15, r3
  3613f8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3613fc: eddd 7a14    	vldr	s15, [sp, #80]
  361400: ee77 7a67    	vsub.f32	s15, s14, s15
  361404: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361408: ab42         	add	r3, sp, #0x108
  36140a: 4618         	mov	r0, r3
  36140c: eeb0 0b46    	vmov.f64	d0, d6
  361410: eeb0 1b47    	vmov.f64	d1, d7
  361414: f7fc fb34    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3998
  361418: f8df 358c    	ldr.w	r3, [pc, #0x58c]        @ 0x3619a8 <MapManager::addStaticBodyShape(int, int)+0xab8>
  36141c: 58e3         	ldr	r3, [r4, r3]
  36141e: 681f         	ldr	r7, [r3]
  361420: ae36         	add	r6, sp, #0xd8
  361422: f8df 3588    	ldr.w	r3, [pc, #0x588]        @ 0x3619ac <MapManager::addStaticBodyShape(int, int)+0xabc>
  361426: 447b         	add	r3, pc
  361428: 466d         	mov	r5, sp
  36142a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36142c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361430: 4638         	mov	r0, r7
  361432: 2104         	movs	r1, #0x4
  361434: 4632         	mov	r2, r6
  361436: f373 fa89    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x373512
  36143a: 4603         	mov	r3, r0
  36143c: 930f         	str	r3, [sp, #0x3c]
  36143e: f003 bd34    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x3a68
  361442: ab0a         	add	r3, sp, #0x28
  361444: 681b         	ldr	r3, [r3]
  361446: ee05 3a90    	vmov	s11, r3
  36144a: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36144e: eddd 7a14    	vldr	s15, [sp, #80]
  361452: ee77 7a67    	vsub.f32	s15, s14, s15
  361456: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36145a: ab09         	add	r3, sp, #0x24
  36145c: 681b         	ldr	r3, [r3]
  36145e: ee07 3a90    	vmov	s15, r3
  361462: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361466: eddd 7a14    	vldr	s15, [sp, #80]
  36146a: ee77 7a67    	vsub.f32	s15, s14, s15
  36146e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361472: ab36         	add	r3, sp, #0xd8
  361474: 4618         	mov	r0, r3
  361476: eeb0 0b46    	vmov.f64	d0, d6
  36147a: eeb0 1b47    	vmov.f64	d1, d7
  36147e: f7fc faff    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3a02
  361482: ab0a         	add	r3, sp, #0x28
  361484: 681b         	ldr	r3, [r3]
  361486: ee05 3a90    	vmov	s11, r3
  36148a: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36148e: eddd 7a14    	vldr	s15, [sp, #80]
  361492: ee77 7a27    	vadd.f32	s15, s14, s15
  361496: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36149a: ab09         	add	r3, sp, #0x24
  36149c: 681b         	ldr	r3, [r3]
  36149e: ee07 3a90    	vmov	s15, r3
  3614a2: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3614a6: eddd 7a14    	vldr	s15, [sp, #80]
  3614aa: ee77 7a27    	vadd.f32	s15, s14, s15
  3614ae: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3614b2: ab3a         	add	r3, sp, #0xe8
  3614b4: 4618         	mov	r0, r3
  3614b6: eeb0 0b46    	vmov.f64	d0, d6
  3614ba: eeb0 1b47    	vmov.f64	d1, d7
  3614be: f7fc fadf    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3a42
  3614c2: ab0a         	add	r3, sp, #0x28
  3614c4: 681b         	ldr	r3, [r3]
  3614c6: ee05 3a90    	vmov	s11, r3
  3614ca: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3614ce: eddd 7a14    	vldr	s15, [sp, #80]
  3614d2: ee77 7a27    	vadd.f32	s15, s14, s15
  3614d6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3614da: ab09         	add	r3, sp, #0x24
  3614dc: 681b         	ldr	r3, [r3]
  3614de: ee07 3a90    	vmov	s15, r3
  3614e2: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3614e6: eddd 7a14    	vldr	s15, [sp, #80]
  3614ea: ee77 7a67    	vsub.f32	s15, s14, s15
  3614ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3614f2: ab3e         	add	r3, sp, #0xf8
  3614f4: 4618         	mov	r0, r3
  3614f6: eeb0 0b46    	vmov.f64	d0, d6
  3614fa: eeb0 1b47    	vmov.f64	d1, d7
  3614fe: f7fc fabf    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3a82
  361502: f8df 34a4    	ldr.w	r3, [pc, #0x4a4]        @ 0x3619a8 <MapManager::addStaticBodyShape(int, int)+0xab8>
  361506: 58e3         	ldr	r3, [r4, r3]
  361508: 681f         	ldr	r7, [r3]
  36150a: ae36         	add	r6, sp, #0xd8
  36150c: f8df 34a0    	ldr.w	r3, [pc, #0x4a0]        @ 0x3619b0 <MapManager::addStaticBodyShape(int, int)+0xac0>
  361510: 447b         	add	r3, pc
  361512: 466d         	mov	r5, sp
  361514: cb0f         	ldm	r3, {r0, r1, r2, r3}
  361516: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  36151a: 4638         	mov	r0, r7
  36151c: 2103         	movs	r1, #0x3
  36151e: 4632         	mov	r2, r6
  361520: f373 fa14    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x373428
  361524: 4603         	mov	r3, r0
  361526: 930f         	str	r3, [sp, #0x3c]
  361528: 2018         	movs	r0, #0x18
  36152a: f026 f21b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x426436
  36152e: 4603         	mov	r3, r0
  361530: 461d         	mov	r5, r3
  361532: 4628         	mov	r0, r5
  361534: f007 faa4    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x7548
  361538: 9515         	str	r5, [sp, #0x54]
  36153a: 9b15         	ldr	r3, [sp, #0x54]
  36153c: 4618         	mov	r0, r3
  36153e: f236 fcdd    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2369ba
  361542: 9b15         	ldr	r3, [sp, #0x54]
  361544: 9a0f         	ldr	r2, [sp, #0x3c]
  361546: 615a         	str	r2, [r3, #0x14]
  361548: ab0b         	add	r3, sp, #0x2c
  36154a: 681b         	ldr	r3, [r3]
  36154c: 6a9d         	ldr	r5, [r3, #0x28]
  36154e: f8df 3464    	ldr.w	r3, [pc, #0x464]        @ 0x3619b4 <MapManager::addStaticBodyShape(int, int)+0xac4>
  361552: 447b         	add	r3, pc
  361554: 4618         	mov	r0, r3
  361556: 9910         	ldr	r1, [sp, #0x40]
  361558: 9a11         	ldr	r2, [sp, #0x44]
  36155a: f238 fad9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2385b2
  36155e: 4603         	mov	r3, r0
  361560: 4618         	mov	r0, r3
  361562: f238 f9e1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2383c2
  361566: 4606         	mov	r6, r0
  361568: ab0c         	add	r3, sp, #0x30
  36156a: 4618         	mov	r0, r3
  36156c: f028 f742    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x428e84
  361570: aa0d         	add	r2, sp, #0x34
  361572: ab0c         	add	r3, sp, #0x30
  361574: 4610         	mov	r0, r2
  361576: 4631         	mov	r1, r6
  361578: 461a         	mov	r2, r3
  36157a: f055 f271    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4554e2
  36157e: ab0d         	add	r3, sp, #0x34
  361580: 4628         	mov	r0, r5
  361582: 9915         	ldr	r1, [sp, #0x54]
  361584: 461a         	mov	r2, r3
  361586: f233 f9d7    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2333ae
  36158a: ab0d         	add	r3, sp, #0x34
  36158c: 4618         	mov	r0, r3
  36158e: f054 f1c1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x454382
  361592: ab0c         	add	r3, sp, #0x30
  361594: 4618         	mov	r0, r3
  361596: f028 f731    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x428e62
  36159a: f003 bc86    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x390c
  36159e: ab0a         	add	r3, sp, #0x28
  3615a0: 681b         	ldr	r3, [r3]
  3615a2: ee05 3a90    	vmov	s11, r3
  3615a6: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3615aa: eddd 7a14    	vldr	s15, [sp, #80]
  3615ae: ee77 7a67    	vsub.f32	s15, s14, s15
  3615b2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3615b6: ab09         	add	r3, sp, #0x24
  3615b8: 681b         	ldr	r3, [r3]
  3615ba: ee07 3a90    	vmov	s15, r3
  3615be: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3615c2: eddd 7a14    	vldr	s15, [sp, #80]
  3615c6: ee77 7a27    	vadd.f32	s15, s14, s15
  3615ca: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3615ce: ab36         	add	r3, sp, #0xd8
  3615d0: 4618         	mov	r0, r3
  3615d2: eeb0 0b46    	vmov.f64	d0, d6
  3615d6: eeb0 1b47    	vmov.f64	d1, d7
  3615da: f7fc fa51    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3b5e
  3615de: ab0a         	add	r3, sp, #0x28
  3615e0: 681b         	ldr	r3, [r3]
  3615e2: ee05 3a90    	vmov	s11, r3
  3615e6: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3615ea: eddd 7a14    	vldr	s15, [sp, #80]
  3615ee: ee77 7a27    	vadd.f32	s15, s14, s15
  3615f2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3615f6: ab09         	add	r3, sp, #0x24
  3615f8: 681b         	ldr	r3, [r3]
  3615fa: ee07 3a90    	vmov	s15, r3
  3615fe: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361602: eddd 7a14    	vldr	s15, [sp, #80]
  361606: ee77 7a27    	vadd.f32	s15, s14, s15
  36160a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36160e: ab3a         	add	r3, sp, #0xe8
  361610: 4618         	mov	r0, r3
  361612: eeb0 0b46    	vmov.f64	d0, d6
  361616: eeb0 1b47    	vmov.f64	d1, d7
  36161a: f7fc fa31    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3b9e
  36161e: ab0a         	add	r3, sp, #0x28
  361620: 681b         	ldr	r3, [r3]
  361622: ee05 3a90    	vmov	s11, r3
  361626: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36162a: eddd 7a14    	vldr	s15, [sp, #80]
  36162e: ee77 7a27    	vadd.f32	s15, s14, s15
  361632: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361636: ab09         	add	r3, sp, #0x24
  361638: 681b         	ldr	r3, [r3]
  36163a: ee07 3a90    	vmov	s15, r3
  36163e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361642: eddd 7a14    	vldr	s15, [sp, #80]
  361646: ee77 7a67    	vsub.f32	s15, s14, s15
  36164a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36164e: ab3e         	add	r3, sp, #0xf8
  361650: 4618         	mov	r0, r3
  361652: eeb0 0b46    	vmov.f64	d0, d6
  361656: eeb0 1b47    	vmov.f64	d1, d7
  36165a: f7fc fa11    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3bde
  36165e: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x3619a8 <MapManager::addStaticBodyShape(int, int)+0xab8>
  361660: 58e3         	ldr	r3, [r4, r3]
  361662: 681f         	ldr	r7, [r3]
  361664: ae36         	add	r6, sp, #0xd8
  361666: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x3619b8 <MapManager::addStaticBodyShape(int, int)+0xac8>
  361668: 447b         	add	r3, pc
  36166a: 466d         	mov	r5, sp
  36166c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36166e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361672: 4638         	mov	r0, r7
  361674: 2103         	movs	r1, #0x3
  361676: 4632         	mov	r2, r6
  361678: f373 f968    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3732d0
  36167c: 4603         	mov	r3, r0
  36167e: 930f         	str	r3, [sp, #0x3c]
  361680: 2018         	movs	r0, #0x18
  361682: f026 f16f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4262de
  361686: 4603         	mov	r3, r0
  361688: 461d         	mov	r5, r3
  36168a: 4628         	mov	r0, r5
  36168c: f007 f9f8    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x73f0
  361690: 9515         	str	r5, [sp, #0x54]
  361692: 9b15         	ldr	r3, [sp, #0x54]
  361694: 4618         	mov	r0, r3
  361696: f236 fc31    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x236862
  36169a: 9b15         	ldr	r3, [sp, #0x54]
  36169c: 9a0f         	ldr	r2, [sp, #0x3c]
  36169e: 615a         	str	r2, [r3, #0x14]
  3616a0: ab0b         	add	r3, sp, #0x2c
  3616a2: 681b         	ldr	r3, [r3]
  3616a4: 6a9d         	ldr	r5, [r3, #0x28]
  3616a6: 4bc5         	ldr	r3, [pc, #0x314]        @ 0x3619bc <MapManager::addStaticBodyShape(int, int)+0xacc>
  3616a8: 447b         	add	r3, pc
  3616aa: 4618         	mov	r0, r3
  3616ac: 9910         	ldr	r1, [sp, #0x40]
  3616ae: 9a11         	ldr	r2, [sp, #0x44]
  3616b0: f238 fa2e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23845c
  3616b4: 4603         	mov	r3, r0
  3616b6: 4618         	mov	r0, r3
  3616b8: f238 f936    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23826c
  3616bc: 4606         	mov	r6, r0
  3616be: ab0c         	add	r3, sp, #0x30
  3616c0: 4618         	mov	r0, r3
  3616c2: f028 f697    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x428d2e
  3616c6: aa0d         	add	r2, sp, #0x34
  3616c8: ab0c         	add	r3, sp, #0x30
  3616ca: 4610         	mov	r0, r2
  3616cc: 4631         	mov	r1, r6
  3616ce: 461a         	mov	r2, r3
  3616d0: f055 f1c6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45538c
  3616d4: ab0d         	add	r3, sp, #0x34
  3616d6: 4628         	mov	r0, r5
  3616d8: 9915         	ldr	r1, [sp, #0x54]
  3616da: 461a         	mov	r2, r3
  3616dc: f233 f92c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x233258
  3616e0: ab0d         	add	r3, sp, #0x34
  3616e2: 4618         	mov	r0, r3
  3616e4: f054 f116    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45422c
  3616e8: ab0c         	add	r3, sp, #0x30
  3616ea: 4618         	mov	r0, r3
  3616ec: f028 f686    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x428d0c
  3616f0: f003 bbdb    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x37b6
  3616f4: ab0a         	add	r3, sp, #0x28
  3616f6: 681b         	ldr	r3, [r3]
  3616f8: ee05 3a90    	vmov	s11, r3
  3616fc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361700: eddd 7a14    	vldr	s15, [sp, #80]
  361704: ee77 7a67    	vsub.f32	s15, s14, s15
  361708: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36170c: ab09         	add	r3, sp, #0x24
  36170e: 681b         	ldr	r3, [r3]
  361710: ee07 3a90    	vmov	s15, r3
  361714: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361718: eddd 7a14    	vldr	s15, [sp, #80]
  36171c: ee77 7a27    	vadd.f32	s15, s14, s15
  361720: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361724: ab36         	add	r3, sp, #0xd8
  361726: 4618         	mov	r0, r3
  361728: eeb0 0b46    	vmov.f64	d0, d6
  36172c: eeb0 1b47    	vmov.f64	d1, d7
  361730: f7fc f9a6    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3cb4
  361734: ab0a         	add	r3, sp, #0x28
  361736: 681b         	ldr	r3, [r3]
  361738: ee05 3a90    	vmov	s11, r3
  36173c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361740: eddd 7a14    	vldr	s15, [sp, #80]
  361744: ee77 7a27    	vadd.f32	s15, s14, s15
  361748: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36174c: ab09         	add	r3, sp, #0x24
  36174e: 681b         	ldr	r3, [r3]
  361750: ee07 3a90    	vmov	s15, r3
  361754: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361758: eddd 7a14    	vldr	s15, [sp, #80]
  36175c: ee77 7a67    	vsub.f32	s15, s14, s15
  361760: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361764: ab3a         	add	r3, sp, #0xe8
  361766: 4618         	mov	r0, r3
  361768: eeb0 0b46    	vmov.f64	d0, d6
  36176c: eeb0 1b47    	vmov.f64	d1, d7
  361770: f7fc f986    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3cf4
  361774: ab0a         	add	r3, sp, #0x28
  361776: 681b         	ldr	r3, [r3]
  361778: ee05 3a90    	vmov	s11, r3
  36177c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361780: eddd 7a14    	vldr	s15, [sp, #80]
  361784: ee77 7a67    	vsub.f32	s15, s14, s15
  361788: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36178c: ab09         	add	r3, sp, #0x24
  36178e: 681b         	ldr	r3, [r3]
  361790: ee07 3a90    	vmov	s15, r3
  361794: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361798: eddd 7a14    	vldr	s15, [sp, #80]
  36179c: ee77 7a67    	vsub.f32	s15, s14, s15
  3617a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3617a4: ab3e         	add	r3, sp, #0xf8
  3617a6: 4618         	mov	r0, r3
  3617a8: eeb0 0b46    	vmov.f64	d0, d6
  3617ac: eeb0 1b47    	vmov.f64	d1, d7
  3617b0: f7fc f966    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3d34
  3617b4: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x3619a8 <MapManager::addStaticBodyShape(int, int)+0xab8>
  3617b6: 58e3         	ldr	r3, [r4, r3]
  3617b8: 681f         	ldr	r7, [r3]
  3617ba: ae36         	add	r6, sp, #0xd8
  3617bc: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3619c0 <MapManager::addStaticBodyShape(int, int)+0xad0>
  3617be: 447b         	add	r3, pc
  3617c0: 466d         	mov	r5, sp
  3617c2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3617c4: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3617c8: 4638         	mov	r0, r7
  3617ca: 2103         	movs	r1, #0x3
  3617cc: 4632         	mov	r2, r6
  3617ce: f373 f8bd    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37317a
  3617d2: 4603         	mov	r3, r0
  3617d4: 930f         	str	r3, [sp, #0x3c]
  3617d6: 2018         	movs	r0, #0x18
  3617d8: f026 f0c4    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x426188
  3617dc: 4603         	mov	r3, r0
  3617de: 461d         	mov	r5, r3
  3617e0: 4628         	mov	r0, r5
  3617e2: f007 f94d    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x729a
  3617e6: 9515         	str	r5, [sp, #0x54]
  3617e8: 9b15         	ldr	r3, [sp, #0x54]
  3617ea: 4618         	mov	r0, r3
  3617ec: f236 fb86    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x23670c
  3617f0: 9b15         	ldr	r3, [sp, #0x54]
  3617f2: 9a0f         	ldr	r2, [sp, #0x3c]
  3617f4: 615a         	str	r2, [r3, #0x14]
  3617f6: ab0b         	add	r3, sp, #0x2c
  3617f8: 681b         	ldr	r3, [r3]
  3617fa: 6a9d         	ldr	r5, [r3, #0x28]
  3617fc: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x3619c4 <MapManager::addStaticBodyShape(int, int)+0xad4>
  3617fe: 447b         	add	r3, pc
  361800: 4618         	mov	r0, r3
  361802: 9910         	ldr	r1, [sp, #0x40]
  361804: 9a11         	ldr	r2, [sp, #0x44]
  361806: f238 f983    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x238306
  36180a: 4603         	mov	r3, r0
  36180c: 4618         	mov	r0, r3
  36180e: f238 f88b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x238116
  361812: 4606         	mov	r6, r0
  361814: ab0c         	add	r3, sp, #0x30
  361816: 4618         	mov	r0, r3
  361818: f028 f5ec    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x428bd8
  36181c: aa0d         	add	r2, sp, #0x34
  36181e: ab0c         	add	r3, sp, #0x30
  361820: 4610         	mov	r0, r2
  361822: 4631         	mov	r1, r6
  361824: 461a         	mov	r2, r3
  361826: f055 f11b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x455236
  36182a: ab0d         	add	r3, sp, #0x34
  36182c: 4628         	mov	r0, r5
  36182e: 9915         	ldr	r1, [sp, #0x54]
  361830: 461a         	mov	r2, r3
  361832: f233 f881    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x233102
  361836: ab0d         	add	r3, sp, #0x34
  361838: 4618         	mov	r0, r3
  36183a: f054 f06b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4540d6
  36183e: ab0c         	add	r3, sp, #0x30
  361840: 4618         	mov	r0, r3
  361842: f028 f5db    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x428bb6
  361846: f003 bb30    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x3660
  36184a: ab0a         	add	r3, sp, #0x28
  36184c: 681b         	ldr	r3, [r3]
  36184e: ee05 3a90    	vmov	s11, r3
  361852: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361856: eddd 7a14    	vldr	s15, [sp, #80]
  36185a: ee77 7a67    	vsub.f32	s15, s14, s15
  36185e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361862: ab09         	add	r3, sp, #0x24
  361864: 681b         	ldr	r3, [r3]
  361866: ee07 3a90    	vmov	s15, r3
  36186a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36186e: eddd 7a14    	vldr	s15, [sp, #80]
  361872: ee77 7a67    	vsub.f32	s15, s14, s15
  361876: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36187a: ab36         	add	r3, sp, #0xd8
  36187c: 4618         	mov	r0, r3
  36187e: eeb0 0b46    	vmov.f64	d0, d6
  361882: eeb0 1b47    	vmov.f64	d1, d7
  361886: f7fc f8fb    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3e0a
  36188a: ab0a         	add	r3, sp, #0x28
  36188c: 681b         	ldr	r3, [r3]
  36188e: ee05 3a90    	vmov	s11, r3
  361892: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361896: eddd 7a14    	vldr	s15, [sp, #80]
  36189a: ee77 7a67    	vsub.f32	s15, s14, s15
  36189e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3618a2: ab09         	add	r3, sp, #0x24
  3618a4: 681b         	ldr	r3, [r3]
  3618a6: ee07 3a90    	vmov	s15, r3
  3618aa: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3618ae: eddd 7a14    	vldr	s15, [sp, #80]
  3618b2: ee77 7a27    	vadd.f32	s15, s14, s15
  3618b6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3618ba: ab3a         	add	r3, sp, #0xe8
  3618bc: 4618         	mov	r0, r3
  3618be: eeb0 0b46    	vmov.f64	d0, d6
  3618c2: eeb0 1b47    	vmov.f64	d1, d7
  3618c6: f7fc f8db    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3e4a
  3618ca: ab0a         	add	r3, sp, #0x28
  3618cc: 681b         	ldr	r3, [r3]
  3618ce: ee05 3a90    	vmov	s11, r3
  3618d2: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3618d6: eddd 7a14    	vldr	s15, [sp, #80]
  3618da: ee77 7a27    	vadd.f32	s15, s14, s15
  3618de: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3618e2: ab09         	add	r3, sp, #0x24
  3618e4: 681b         	ldr	r3, [r3]
  3618e6: ee07 3a90    	vmov	s15, r3
  3618ea: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3618ee: eddd 7a14    	vldr	s15, [sp, #80]
  3618f2: ee77 7a27    	vadd.f32	s15, s14, s15
  3618f6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3618fa: ab3e         	add	r3, sp, #0xf8
  3618fc: 4618         	mov	r0, r3
  3618fe: eeb0 0b46    	vmov.f64	d0, d6
  361902: eeb0 1b47    	vmov.f64	d1, d7
  361906: f7fc f8bb    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3e8a
  36190a: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3619a8 <MapManager::addStaticBodyShape(int, int)+0xab8>
  36190c: 58e3         	ldr	r3, [r4, r3]
  36190e: 681f         	ldr	r7, [r3]
  361910: ae36         	add	r6, sp, #0xd8
  361912: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x3619c8 <MapManager::addStaticBodyShape(int, int)+0xad8>
  361914: 447b         	add	r3, pc
  361916: 466d         	mov	r5, sp
  361918: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36191a: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  36191e: 4638         	mov	r0, r7
  361920: 2103         	movs	r1, #0x3
  361922: 4632         	mov	r2, r6
  361924: f373 f812    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x373024
  361928: 4603         	mov	r3, r0
  36192a: 930f         	str	r3, [sp, #0x3c]
  36192c: 2018         	movs	r0, #0x18
  36192e: f026 f019    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x426032
  361932: 4603         	mov	r3, r0
  361934: 461d         	mov	r5, r3
  361936: 4628         	mov	r0, r5
  361938: f007 f8a2    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x7144
  36193c: 9515         	str	r5, [sp, #0x54]
  36193e: 9b15         	ldr	r3, [sp, #0x54]
  361940: 4618         	mov	r0, r3
  361942: f236 fadb    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2365b6
  361946: 9b15         	ldr	r3, [sp, #0x54]
  361948: 9a0f         	ldr	r2, [sp, #0x3c]
  36194a: 615a         	str	r2, [r3, #0x14]
  36194c: ab0b         	add	r3, sp, #0x2c
  36194e: 681b         	ldr	r3, [r3]
  361950: 6a9d         	ldr	r5, [r3, #0x28]
  361952: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3619cc <MapManager::addStaticBodyShape(int, int)+0xadc>
  361954: 447b         	add	r3, pc
  361956: 4618         	mov	r0, r3
  361958: 9910         	ldr	r1, [sp, #0x40]
  36195a: 9a11         	ldr	r2, [sp, #0x44]
  36195c: f238 f8d8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2381b0
  361960: 4603         	mov	r3, r0
  361962: 4618         	mov	r0, r3
  361964: f237 ffe0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237fc0
  361968: 4606         	mov	r6, r0
  36196a: ab0c         	add	r3, sp, #0x30
  36196c: 4618         	mov	r0, r3
  36196e: f028 f541    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x428a82
  361972: aa0d         	add	r2, sp, #0x34
  361974: ab0c         	add	r3, sp, #0x30
  361976: 4610         	mov	r0, r2
  361978: 4631         	mov	r1, r6
  36197a: 461a         	mov	r2, r3
  36197c: f055 f070    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4550e0
  361980: ab0d         	add	r3, sp, #0x34
  361982: 4628         	mov	r0, r5
  361984: 9915         	ldr	r1, [sp, #0x54]
  361986: 461a         	mov	r2, r3
  361988: f232 ffd6    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232fac
  36198c: ab0d         	add	r3, sp, #0x34
  36198e: 4618         	mov	r0, r3
  361990: f053 f7c0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453f80
  361994: ab0c         	add	r3, sp, #0x30
  361996: 4618         	mov	r0, r3
  361998: f028 f530    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x428a60
  36199c: f003 ba85    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x350a
  3619a0: 1b00         	subs	r0, r0, r4
  3619a2: 005d         	lsls	r5, r3, #0x1
  3619a4: db94         	blt	0x3618d0 <MapManager::addStaticBodyShape(int, int)+0x9e0> @ imm = #-0xd8
  3619a6: ffff db9c    	<unknown>
  3619aa: ffff b96e    	vtbx.8	d27, {d15, d16}, d30
  3619ae: 0046         	lsls	r6, r0, #0x1
  3619b0: b884         	<unknown>
  3619b2: 0046         	lsls	r6, r0, #0x1
  3619b4: b7de         	<unknown>
  3619b6: 0046         	lsls	r6, r0, #0x1
  3619b8: b72c         	<unknown>
  3619ba: 0046         	lsls	r6, r0, #0x1
  3619bc: b688         	<unknown>
  3619be: 0046         	lsls	r6, r0, #0x1
  3619c0: b5d6         	push	{r1, r2, r4, r6, r7, lr}
  3619c2: 0046         	lsls	r6, r0, #0x1
  3619c4: b532         	push	{r1, r4, r5, lr}
  3619c6: 0046         	lsls	r6, r0, #0x1
  3619c8: b480         	push	{r7}
  3619ca: 0046         	lsls	r6, r0, #0x1
  3619cc: b3dc         	cbz	r4, 0x361a46 <MapManager::addStaticBodyShape(int, int)+0xb56> @ imm = #0x76
  3619ce: 0046         	lsls	r6, r0, #0x1
  3619d0: ab0a         	add	r3, sp, #0x28
  3619d2: 681b         	ldr	r3, [r3]
  3619d4: ee05 3a90    	vmov	s11, r3
  3619d8: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3619dc: eddd 7a14    	vldr	s15, [sp, #80]
  3619e0: ee77 7a67    	vsub.f32	s15, s14, s15
  3619e4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3619e8: ab09         	add	r3, sp, #0x24
  3619ea: 681b         	ldr	r3, [r3]
  3619ec: ee05 3a90    	vmov	s11, r3
  3619f0: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3619f4: ab36         	add	r3, sp, #0xd8
  3619f6: 4618         	mov	r0, r3
  3619f8: eeb0 0b46    	vmov.f64	d0, d6
  3619fc: eeb0 1b47    	vmov.f64	d1, d7
  361a00: f7fc f83e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3f84
  361a04: ab0a         	add	r3, sp, #0x28
  361a06: 681b         	ldr	r3, [r3]
  361a08: ee06 3a90    	vmov	s13, r3
  361a0c: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  361a10: eddd 7a14    	vldr	s15, [sp, #80]
  361a14: ee77 7a67    	vsub.f32	s15, s14, s15
  361a18: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361a1c: ab09         	add	r3, sp, #0x24
  361a1e: 681b         	ldr	r3, [r3]
  361a20: ee07 3a90    	vmov	s15, r3
  361a24: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361a28: eddd 7a14    	vldr	s15, [sp, #80]
  361a2c: ee77 7a27    	vadd.f32	s15, s14, s15
  361a30: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361a34: ab3a         	add	r3, sp, #0xe8
  361a36: 4618         	mov	r0, r3
  361a38: eeb0 0b46    	vmov.f64	d0, d6
  361a3c: eeb0 1b47    	vmov.f64	d1, d7
  361a40: f7fc f81e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x3fc4
  361a44: ab0a         	add	r3, sp, #0x28
  361a46: 681b         	ldr	r3, [r3]
  361a48: ee05 3a90    	vmov	s11, r3
  361a4c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361a50: eddd 7a14    	vldr	s15, [sp, #80]
  361a54: ee77 7a27    	vadd.f32	s15, s14, s15
  361a58: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361a5c: ab09         	add	r3, sp, #0x24
  361a5e: 681b         	ldr	r3, [r3]
  361a60: ee07 3a90    	vmov	s15, r3
  361a64: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361a68: eddd 7a14    	vldr	s15, [sp, #80]
  361a6c: ee77 7a27    	vadd.f32	s15, s14, s15
  361a70: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361a74: ab3e         	add	r3, sp, #0xf8
  361a76: 4618         	mov	r0, r3
  361a78: eeb0 0b46    	vmov.f64	d0, d6
  361a7c: eeb0 1b47    	vmov.f64	d1, d7
  361a80: f7fb fffe    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4004
  361a84: ab0a         	add	r3, sp, #0x28
  361a86: 681b         	ldr	r3, [r3]
  361a88: ee05 3a90    	vmov	s11, r3
  361a8c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361a90: eddd 7a14    	vldr	s15, [sp, #80]
  361a94: ee77 7a27    	vadd.f32	s15, s14, s15
  361a98: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361a9c: ab09         	add	r3, sp, #0x24
  361a9e: 681b         	ldr	r3, [r3]
  361aa0: ee05 3a90    	vmov	s11, r3
  361aa4: eeb8 7be5    	vcvt.f64.s32	d7, s11
  361aa8: ab42         	add	r3, sp, #0x108
  361aaa: 4618         	mov	r0, r3
  361aac: eeb0 0b46    	vmov.f64	d0, d6
  361ab0: eeb0 1b47    	vmov.f64	d1, d7
  361ab4: f7fb ffe4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4038
  361ab8: f8df 3ac4    	ldr.w	r3, [pc, #0xac4]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  361abc: 58e3         	ldr	r3, [r4, r3]
  361abe: 681f         	ldr	r7, [r3]
  361ac0: ae36         	add	r6, sp, #0xd8
  361ac2: f8df 3ac0    	ldr.w	r3, [pc, #0xac0]        @ 0x362584 <MapManager::addStaticBodyShape(int, int)+0x1694>
  361ac6: 447b         	add	r3, pc
  361ac8: 466d         	mov	r5, sp
  361aca: cb0f         	ldm	r3, {r0, r1, r2, r3}
  361acc: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361ad0: 4638         	mov	r0, r7
  361ad2: 2104         	movs	r1, #0x4
  361ad4: 4632         	mov	r2, r6
  361ad6: f372 ff39    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x372e72
  361ada: 4603         	mov	r3, r0
  361adc: 930f         	str	r3, [sp, #0x3c]
  361ade: 2018         	movs	r0, #0x18
  361ae0: f025 f740    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425e80
  361ae4: 4603         	mov	r3, r0
  361ae6: 461d         	mov	r5, r3
  361ae8: 4628         	mov	r0, r5
  361aea: f006 ffc9    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x6f92
  361aee: 9515         	str	r5, [sp, #0x54]
  361af0: 9b15         	ldr	r3, [sp, #0x54]
  361af2: 4618         	mov	r0, r3
  361af4: f236 fa02    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x236404
  361af8: 9b15         	ldr	r3, [sp, #0x54]
  361afa: 9a0f         	ldr	r2, [sp, #0x3c]
  361afc: 615a         	str	r2, [r3, #0x14]
  361afe: ab0b         	add	r3, sp, #0x2c
  361b00: 681b         	ldr	r3, [r3]
  361b02: 6a9d         	ldr	r5, [r3, #0x28]
  361b04: f8df 3a80    	ldr.w	r3, [pc, #0xa80]        @ 0x362588 <MapManager::addStaticBodyShape(int, int)+0x1698>
  361b08: 447b         	add	r3, pc
  361b0a: 4618         	mov	r0, r3
  361b0c: 9910         	ldr	r1, [sp, #0x40]
  361b0e: 9a11         	ldr	r2, [sp, #0x44]
  361b10: f237 fffe    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237ffc
  361b14: 4603         	mov	r3, r0
  361b16: 4618         	mov	r0, r3
  361b18: f237 ff06    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237e0c
  361b1c: 4606         	mov	r6, r0
  361b1e: ab0c         	add	r3, sp, #0x30
  361b20: 4618         	mov	r0, r3
  361b22: f028 f467    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4288ce
  361b26: aa0d         	add	r2, sp, #0x34
  361b28: ab0c         	add	r3, sp, #0x30
  361b2a: 4610         	mov	r0, r2
  361b2c: 4631         	mov	r1, r6
  361b2e: 461a         	mov	r2, r3
  361b30: f054 f796    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454f2c
  361b34: ab0d         	add	r3, sp, #0x34
  361b36: 4628         	mov	r0, r5
  361b38: 9915         	ldr	r1, [sp, #0x54]
  361b3a: 461a         	mov	r2, r3
  361b3c: f232 fefc    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232df8
  361b40: ab0d         	add	r3, sp, #0x34
  361b42: 4618         	mov	r0, r3
  361b44: f053 f6e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453dcc
  361b48: ab0c         	add	r3, sp, #0x30
  361b4a: 4618         	mov	r0, r3
  361b4c: f028 f456    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4288ac
  361b50: f003 b9ab    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x3356
  361b54: ab0a         	add	r3, sp, #0x28
  361b56: 681b         	ldr	r3, [r3]
  361b58: ee06 3a90    	vmov	s13, r3
  361b5c: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  361b60: eddd 7a14    	vldr	s15, [sp, #80]
  361b64: ee77 7a67    	vsub.f32	s15, s14, s15
  361b68: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361b6c: ab09         	add	r3, sp, #0x24
  361b6e: 681b         	ldr	r3, [r3]
  361b70: ee07 3a90    	vmov	s15, r3
  361b74: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361b78: eddd 7a14    	vldr	s15, [sp, #80]
  361b7c: ee77 7a67    	vsub.f32	s15, s14, s15
  361b80: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361b84: ab36         	add	r3, sp, #0xd8
  361b86: 4618         	mov	r0, r3
  361b88: eeb0 0b46    	vmov.f64	d0, d6
  361b8c: eeb0 1b47    	vmov.f64	d1, d7
  361b90: f7fb ff76    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4114
  361b94: ab0a         	add	r3, sp, #0x28
  361b96: 681b         	ldr	r3, [r3]
  361b98: ee05 3a90    	vmov	s11, r3
  361b9c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361ba0: eddd 7a14    	vldr	s15, [sp, #80]
  361ba4: ee77 7a67    	vsub.f32	s15, s14, s15
  361ba8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361bac: ab09         	add	r3, sp, #0x24
  361bae: 681b         	ldr	r3, [r3]
  361bb0: ee07 3a90    	vmov	s15, r3
  361bb4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361bb8: eddd 7a14    	vldr	s15, [sp, #80]
  361bbc: ee77 7a27    	vadd.f32	s15, s14, s15
  361bc0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361bc4: ab3a         	add	r3, sp, #0xe8
  361bc6: 4618         	mov	r0, r3
  361bc8: eeb0 0b46    	vmov.f64	d0, d6
  361bcc: eeb0 1b47    	vmov.f64	d1, d7
  361bd0: f7fb ff56    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4154
  361bd4: ab0a         	add	r3, sp, #0x28
  361bd6: 681b         	ldr	r3, [r3]
  361bd8: ee05 3a90    	vmov	s11, r3
  361bdc: eeb8 6be5    	vcvt.f64.s32	d6, s11
  361be0: ab09         	add	r3, sp, #0x24
  361be2: 681b         	ldr	r3, [r3]
  361be4: ee07 3a90    	vmov	s15, r3
  361be8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361bec: eddd 7a14    	vldr	s15, [sp, #80]
  361bf0: ee77 7a27    	vadd.f32	s15, s14, s15
  361bf4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361bf8: ab3e         	add	r3, sp, #0xf8
  361bfa: 4618         	mov	r0, r3
  361bfc: eeb0 0b46    	vmov.f64	d0, d6
  361c00: eeb0 1b47    	vmov.f64	d1, d7
  361c04: f7fb ff3c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4188
  361c08: ab0a         	add	r3, sp, #0x28
  361c0a: 681b         	ldr	r3, [r3]
  361c0c: ee05 3a90    	vmov	s11, r3
  361c10: eeb8 6be5    	vcvt.f64.s32	d6, s11
  361c14: ab09         	add	r3, sp, #0x24
  361c16: 681b         	ldr	r3, [r3]
  361c18: ee07 3a90    	vmov	s15, r3
  361c1c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361c20: eddd 7a14    	vldr	s15, [sp, #80]
  361c24: ee77 7a67    	vsub.f32	s15, s14, s15
  361c28: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361c2c: ab42         	add	r3, sp, #0x108
  361c2e: 4618         	mov	r0, r3
  361c30: eeb0 0b46    	vmov.f64	d0, d6
  361c34: eeb0 1b47    	vmov.f64	d1, d7
  361c38: f7fb ff22    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x41bc
  361c3c: f8df 3940    	ldr.w	r3, [pc, #0x940]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  361c40: 58e3         	ldr	r3, [r4, r3]
  361c42: 681f         	ldr	r7, [r3]
  361c44: ae36         	add	r6, sp, #0xd8
  361c46: f8df 3944    	ldr.w	r3, [pc, #0x944]        @ 0x36258c <MapManager::addStaticBodyShape(int, int)+0x169c>
  361c4a: 447b         	add	r3, pc
  361c4c: 466d         	mov	r5, sp
  361c4e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  361c50: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361c54: 4638         	mov	r0, r7
  361c56: 2104         	movs	r1, #0x4
  361c58: 4632         	mov	r2, r6
  361c5a: f372 fe77    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x372cee
  361c5e: 4603         	mov	r3, r0
  361c60: 930f         	str	r3, [sp, #0x3c]
  361c62: 2018         	movs	r0, #0x18
  361c64: f025 f67e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425cfc
  361c68: 4603         	mov	r3, r0
  361c6a: 461d         	mov	r5, r3
  361c6c: 4628         	mov	r0, r5
  361c6e: f006 ff07    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x6e0e
  361c72: 9515         	str	r5, [sp, #0x54]
  361c74: 9b15         	ldr	r3, [sp, #0x54]
  361c76: 4618         	mov	r0, r3
  361c78: f236 f940    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x236280
  361c7c: 9b15         	ldr	r3, [sp, #0x54]
  361c7e: 9a0f         	ldr	r2, [sp, #0x3c]
  361c80: 615a         	str	r2, [r3, #0x14]
  361c82: ab0b         	add	r3, sp, #0x2c
  361c84: 681b         	ldr	r3, [r3]
  361c86: 6a9d         	ldr	r5, [r3, #0x28]
  361c88: f8df 3904    	ldr.w	r3, [pc, #0x904]        @ 0x362590 <MapManager::addStaticBodyShape(int, int)+0x16a0>
  361c8c: 447b         	add	r3, pc
  361c8e: 4618         	mov	r0, r3
  361c90: 9910         	ldr	r1, [sp, #0x40]
  361c92: 9a11         	ldr	r2, [sp, #0x44]
  361c94: f237 ff3c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237e78
  361c98: 4603         	mov	r3, r0
  361c9a: 4618         	mov	r0, r3
  361c9c: f237 fe44    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237c88
  361ca0: 4606         	mov	r6, r0
  361ca2: ab0c         	add	r3, sp, #0x30
  361ca4: 4618         	mov	r0, r3
  361ca6: f028 f3a5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42874a
  361caa: aa0d         	add	r2, sp, #0x34
  361cac: ab0c         	add	r3, sp, #0x30
  361cae: 4610         	mov	r0, r2
  361cb0: 4631         	mov	r1, r6
  361cb2: 461a         	mov	r2, r3
  361cb4: f054 f6d4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454da8
  361cb8: ab0d         	add	r3, sp, #0x34
  361cba: 4628         	mov	r0, r5
  361cbc: 9915         	ldr	r1, [sp, #0x54]
  361cbe: 461a         	mov	r2, r3
  361cc0: f232 fe3a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232c74
  361cc4: ab0d         	add	r3, sp, #0x34
  361cc6: 4618         	mov	r0, r3
  361cc8: f053 f624    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453c48
  361ccc: ab0c         	add	r3, sp, #0x30
  361cce: 4618         	mov	r0, r3
  361cd0: f028 f394    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x428728
  361cd4: f003 b8e9    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x31d2
  361cd8: ab0a         	add	r3, sp, #0x28
  361cda: 681b         	ldr	r3, [r3]
  361cdc: ee05 3a90    	vmov	s11, r3
  361ce0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361ce4: eddd 7a14    	vldr	s15, [sp, #80]
  361ce8: ee77 7a67    	vsub.f32	s15, s14, s15
  361cec: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361cf0: ab09         	add	r3, sp, #0x24
  361cf2: 681b         	ldr	r3, [r3]
  361cf4: ee07 3a90    	vmov	s15, r3
  361cf8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361cfc: eddd 7a14    	vldr	s15, [sp, #80]
  361d00: ee77 7a67    	vsub.f32	s15, s14, s15
  361d04: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361d08: ab36         	add	r3, sp, #0xd8
  361d0a: 4618         	mov	r0, r3
  361d0c: eeb0 0b46    	vmov.f64	d0, d6
  361d10: eeb0 1b47    	vmov.f64	d1, d7
  361d14: f7fb feb4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4298
  361d18: ab0a         	add	r3, sp, #0x28
  361d1a: 681b         	ldr	r3, [r3]
  361d1c: ee05 3a90    	vmov	s11, r3
  361d20: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361d24: eddd 7a14    	vldr	s15, [sp, #80]
  361d28: ee77 7a67    	vsub.f32	s15, s14, s15
  361d2c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361d30: ab09         	add	r3, sp, #0x24
  361d32: 681b         	ldr	r3, [r3]
  361d34: ee05 3a90    	vmov	s11, r3
  361d38: eeb8 7be5    	vcvt.f64.s32	d7, s11
  361d3c: ab3a         	add	r3, sp, #0xe8
  361d3e: 4618         	mov	r0, r3
  361d40: eeb0 0b46    	vmov.f64	d0, d6
  361d44: eeb0 1b47    	vmov.f64	d1, d7
  361d48: f7fb fe9a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x42cc
  361d4c: ab0a         	add	r3, sp, #0x28
  361d4e: 681b         	ldr	r3, [r3]
  361d50: ee06 3a90    	vmov	s13, r3
  361d54: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  361d58: eddd 7a14    	vldr	s15, [sp, #80]
  361d5c: ee77 7a27    	vadd.f32	s15, s14, s15
  361d60: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361d64: ab09         	add	r3, sp, #0x24
  361d66: 681b         	ldr	r3, [r3]
  361d68: ee05 3a90    	vmov	s11, r3
  361d6c: eeb8 7be5    	vcvt.f64.s32	d7, s11
  361d70: ab3e         	add	r3, sp, #0xf8
  361d72: 4618         	mov	r0, r3
  361d74: eeb0 0b46    	vmov.f64	d0, d6
  361d78: eeb0 1b47    	vmov.f64	d1, d7
  361d7c: f7fb fe80    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4300
  361d80: ab0a         	add	r3, sp, #0x28
  361d82: 681b         	ldr	r3, [r3]
  361d84: ee06 3a90    	vmov	s13, r3
  361d88: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  361d8c: eddd 7a14    	vldr	s15, [sp, #80]
  361d90: ee77 7a27    	vadd.f32	s15, s14, s15
  361d94: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361d98: ab09         	add	r3, sp, #0x24
  361d9a: 681b         	ldr	r3, [r3]
  361d9c: ee07 3a90    	vmov	s15, r3
  361da0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361da4: eddd 7a14    	vldr	s15, [sp, #80]
  361da8: ee77 7a67    	vsub.f32	s15, s14, s15
  361dac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361db0: ab42         	add	r3, sp, #0x108
  361db2: 4618         	mov	r0, r3
  361db4: eeb0 0b46    	vmov.f64	d0, d6
  361db8: eeb0 1b47    	vmov.f64	d1, d7
  361dbc: f7fb fe60    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4340
  361dc0: f8df 37bc    	ldr.w	r3, [pc, #0x7bc]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  361dc4: 58e3         	ldr	r3, [r4, r3]
  361dc6: 681f         	ldr	r7, [r3]
  361dc8: ae36         	add	r6, sp, #0xd8
  361dca: f8df 37c8    	ldr.w	r3, [pc, #0x7c8]        @ 0x362594 <MapManager::addStaticBodyShape(int, int)+0x16a4>
  361dce: 447b         	add	r3, pc
  361dd0: 466d         	mov	r5, sp
  361dd2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  361dd4: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361dd8: 4638         	mov	r0, r7
  361dda: 2104         	movs	r1, #0x4
  361ddc: 4632         	mov	r2, r6
  361dde: f372 fdb5    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x372b6a
  361de2: 4603         	mov	r3, r0
  361de4: 930f         	str	r3, [sp, #0x3c]
  361de6: 2018         	movs	r0, #0x18
  361de8: f025 f5bc    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425b78
  361dec: 4603         	mov	r3, r0
  361dee: 461d         	mov	r5, r3
  361df0: 4628         	mov	r0, r5
  361df2: f006 fe45    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x6c8a
  361df6: 9515         	str	r5, [sp, #0x54]
  361df8: 9b15         	ldr	r3, [sp, #0x54]
  361dfa: 4618         	mov	r0, r3
  361dfc: f236 f87e    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2360fc
  361e00: 9b15         	ldr	r3, [sp, #0x54]
  361e02: 9a0f         	ldr	r2, [sp, #0x3c]
  361e04: 615a         	str	r2, [r3, #0x14]
  361e06: ab0b         	add	r3, sp, #0x2c
  361e08: 681b         	ldr	r3, [r3]
  361e0a: 6a9d         	ldr	r5, [r3, #0x28]
  361e0c: f8df 3788    	ldr.w	r3, [pc, #0x788]        @ 0x362598 <MapManager::addStaticBodyShape(int, int)+0x16a8>
  361e10: 447b         	add	r3, pc
  361e12: 4618         	mov	r0, r3
  361e14: 9910         	ldr	r1, [sp, #0x40]
  361e16: 9a11         	ldr	r2, [sp, #0x44]
  361e18: f237 fe7a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237cf4
  361e1c: 4603         	mov	r3, r0
  361e1e: 4618         	mov	r0, r3
  361e20: f237 fd82    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237b04
  361e24: 4606         	mov	r6, r0
  361e26: ab0c         	add	r3, sp, #0x30
  361e28: 4618         	mov	r0, r3
  361e2a: f028 f2e3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4285c6
  361e2e: aa0d         	add	r2, sp, #0x34
  361e30: ab0c         	add	r3, sp, #0x30
  361e32: 4610         	mov	r0, r2
  361e34: 4631         	mov	r1, r6
  361e36: 461a         	mov	r2, r3
  361e38: f054 f612    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454c24
  361e3c: ab0d         	add	r3, sp, #0x34
  361e3e: 4628         	mov	r0, r5
  361e40: 9915         	ldr	r1, [sp, #0x54]
  361e42: 461a         	mov	r2, r3
  361e44: f232 fd78    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232af0
  361e48: ab0d         	add	r3, sp, #0x34
  361e4a: 4618         	mov	r0, r3
  361e4c: f053 f562    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453ac4
  361e50: ab0c         	add	r3, sp, #0x30
  361e52: 4618         	mov	r0, r3
  361e54: f028 f2d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4285a4
  361e58: f003 b827    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x304e
  361e5c: ab0a         	add	r3, sp, #0x28
  361e5e: 681b         	ldr	r3, [r3]
  361e60: ee05 3a90    	vmov	s11, r3
  361e64: eeb8 6be5    	vcvt.f64.s32	d6, s11
  361e68: ab09         	add	r3, sp, #0x24
  361e6a: 681b         	ldr	r3, [r3]
  361e6c: ee07 3a90    	vmov	s15, r3
  361e70: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361e74: eddd 7a14    	vldr	s15, [sp, #80]
  361e78: ee77 7a67    	vsub.f32	s15, s14, s15
  361e7c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361e80: ab36         	add	r3, sp, #0xd8
  361e82: 4618         	mov	r0, r3
  361e84: eeb0 0b46    	vmov.f64	d0, d6
  361e88: eeb0 1b47    	vmov.f64	d1, d7
  361e8c: f7fb fdf8    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4410
  361e90: ab0a         	add	r3, sp, #0x28
  361e92: 681b         	ldr	r3, [r3]
  361e94: ee05 3a90    	vmov	s11, r3
  361e98: eeb8 6be5    	vcvt.f64.s32	d6, s11
  361e9c: ab09         	add	r3, sp, #0x24
  361e9e: 681b         	ldr	r3, [r3]
  361ea0: ee07 3a90    	vmov	s15, r3
  361ea4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361ea8: eddd 7a14    	vldr	s15, [sp, #80]
  361eac: ee77 7a27    	vadd.f32	s15, s14, s15
  361eb0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361eb4: ab3a         	add	r3, sp, #0xe8
  361eb6: 4618         	mov	r0, r3
  361eb8: eeb0 0b46    	vmov.f64	d0, d6
  361ebc: eeb0 1b47    	vmov.f64	d1, d7
  361ec0: f7fb fdde    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4444
  361ec4: ab0a         	add	r3, sp, #0x28
  361ec6: 681b         	ldr	r3, [r3]
  361ec8: ee05 3a90    	vmov	s11, r3
  361ecc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361ed0: eddd 7a14    	vldr	s15, [sp, #80]
  361ed4: ee77 7a27    	vadd.f32	s15, s14, s15
  361ed8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361edc: ab09         	add	r3, sp, #0x24
  361ede: 681b         	ldr	r3, [r3]
  361ee0: ee07 3a90    	vmov	s15, r3
  361ee4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361ee8: eddd 7a14    	vldr	s15, [sp, #80]
  361eec: ee77 7a27    	vadd.f32	s15, s14, s15
  361ef0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361ef4: ab3e         	add	r3, sp, #0xf8
  361ef6: 4618         	mov	r0, r3
  361ef8: eeb0 0b46    	vmov.f64	d0, d6
  361efc: eeb0 1b47    	vmov.f64	d1, d7
  361f00: f7fb fdbe    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4484
  361f04: ab0a         	add	r3, sp, #0x28
  361f06: 681b         	ldr	r3, [r3]
  361f08: ee05 3a90    	vmov	s11, r3
  361f0c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  361f10: eddd 7a14    	vldr	s15, [sp, #80]
  361f14: ee77 7a27    	vadd.f32	s15, s14, s15
  361f18: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  361f1c: ab09         	add	r3, sp, #0x24
  361f1e: 681b         	ldr	r3, [r3]
  361f20: ee07 3a90    	vmov	s15, r3
  361f24: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  361f28: eddd 7a14    	vldr	s15, [sp, #80]
  361f2c: ee77 7a67    	vsub.f32	s15, s14, s15
  361f30: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  361f34: ab42         	add	r3, sp, #0x108
  361f36: 4618         	mov	r0, r3
  361f38: eeb0 0b46    	vmov.f64	d0, d6
  361f3c: eeb0 1b47    	vmov.f64	d1, d7
  361f40: f7fb fd9e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x44c4
  361f44: f8df 3638    	ldr.w	r3, [pc, #0x638]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  361f48: 58e3         	ldr	r3, [r4, r3]
  361f4a: 681f         	ldr	r7, [r3]
  361f4c: ae36         	add	r6, sp, #0xd8
  361f4e: f8df 364c    	ldr.w	r3, [pc, #0x64c]        @ 0x36259c <MapManager::addStaticBodyShape(int, int)+0x16ac>
  361f52: 447b         	add	r3, pc
  361f54: 466d         	mov	r5, sp
  361f56: cb0f         	ldm	r3, {r0, r1, r2, r3}
  361f58: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  361f5c: 4638         	mov	r0, r7
  361f5e: 2104         	movs	r1, #0x4
  361f60: 4632         	mov	r2, r6
  361f62: f372 fcf3    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3729e6
  361f66: 4603         	mov	r3, r0
  361f68: 930f         	str	r3, [sp, #0x3c]
  361f6a: 2018         	movs	r0, #0x18
  361f6c: f025 f4fa    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4259f4
  361f70: 4603         	mov	r3, r0
  361f72: 461d         	mov	r5, r3
  361f74: 4628         	mov	r0, r5
  361f76: f006 fd83    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x6b06
  361f7a: 9515         	str	r5, [sp, #0x54]
  361f7c: 9b15         	ldr	r3, [sp, #0x54]
  361f7e: 4618         	mov	r0, r3
  361f80: f235 ffbc    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235f78
  361f84: 9b15         	ldr	r3, [sp, #0x54]
  361f86: 9a0f         	ldr	r2, [sp, #0x3c]
  361f88: 615a         	str	r2, [r3, #0x14]
  361f8a: ab0b         	add	r3, sp, #0x2c
  361f8c: 681b         	ldr	r3, [r3]
  361f8e: 6a9d         	ldr	r5, [r3, #0x28]
  361f90: f8df 360c    	ldr.w	r3, [pc, #0x60c]        @ 0x3625a0 <MapManager::addStaticBodyShape(int, int)+0x16b0>
  361f94: 447b         	add	r3, pc
  361f96: 4618         	mov	r0, r3
  361f98: 9910         	ldr	r1, [sp, #0x40]
  361f9a: 9a11         	ldr	r2, [sp, #0x44]
  361f9c: f237 fdb8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237b70
  361fa0: 4603         	mov	r3, r0
  361fa2: 4618         	mov	r0, r3
  361fa4: f237 fcc0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237980
  361fa8: 4606         	mov	r6, r0
  361faa: ab0c         	add	r3, sp, #0x30
  361fac: 4618         	mov	r0, r3
  361fae: f028 f221    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x428442
  361fb2: aa0d         	add	r2, sp, #0x34
  361fb4: ab0c         	add	r3, sp, #0x30
  361fb6: 4610         	mov	r0, r2
  361fb8: 4631         	mov	r1, r6
  361fba: 461a         	mov	r2, r3
  361fbc: f054 f550    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454aa0
  361fc0: ab0d         	add	r3, sp, #0x34
  361fc2: 4628         	mov	r0, r5
  361fc4: 9915         	ldr	r1, [sp, #0x54]
  361fc6: 461a         	mov	r2, r3
  361fc8: f232 fcb6    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x23296c
  361fcc: ab0d         	add	r3, sp, #0x34
  361fce: 4618         	mov	r0, r3
  361fd0: f053 f4a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453940
  361fd4: ab0c         	add	r3, sp, #0x30
  361fd6: 4618         	mov	r0, r3
  361fd8: f028 f210    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x428420
  361fdc: f002 bf65    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x2eca
  361fe0: ab0a         	add	r3, sp, #0x28
  361fe2: 681b         	ldr	r3, [r3]
  361fe4: ee05 3a90    	vmov	s11, r3
  361fe8: eeb8 6be5    	vcvt.f64.s32	d6, s11
  361fec: ab09         	add	r3, sp, #0x24
  361fee: 681b         	ldr	r3, [r3]
  361ff0: ee05 3a90    	vmov	s11, r3
  361ff4: eeb8 7be5    	vcvt.f64.s32	d7, s11
  361ff8: ab36         	add	r3, sp, #0xd8
  361ffa: 4618         	mov	r0, r3
  361ffc: eeb0 0b46    	vmov.f64	d0, d6
  362000: eeb0 1b47    	vmov.f64	d1, d7
  362004: f7fb fd3c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4588
  362008: ab0a         	add	r3, sp, #0x28
  36200a: 681b         	ldr	r3, [r3]
  36200c: ee07 3a10    	vmov	s14, r3
  362010: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  362014: ab09         	add	r3, sp, #0x24
  362016: 681b         	ldr	r3, [r3]
  362018: ee07 3a90    	vmov	s15, r3
  36201c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362020: eddd 7a14    	vldr	s15, [sp, #80]
  362024: ee77 7a27    	vadd.f32	s15, s14, s15
  362028: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36202c: ab3a         	add	r3, sp, #0xe8
  36202e: 4618         	mov	r0, r3
  362030: eeb0 0b46    	vmov.f64	d0, d6
  362034: eeb0 1b47    	vmov.f64	d1, d7
  362038: f7fb fd22    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x45bc
  36203c: ab0a         	add	r3, sp, #0x28
  36203e: 681b         	ldr	r3, [r3]
  362040: ee05 3a90    	vmov	s11, r3
  362044: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362048: eddd 7a14    	vldr	s15, [sp, #80]
  36204c: ee77 7a27    	vadd.f32	s15, s14, s15
  362050: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362054: ab09         	add	r3, sp, #0x24
  362056: 681b         	ldr	r3, [r3]
  362058: ee07 3a90    	vmov	s15, r3
  36205c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362060: eddd 7a14    	vldr	s15, [sp, #80]
  362064: ee77 7a27    	vadd.f32	s15, s14, s15
  362068: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36206c: ab3e         	add	r3, sp, #0xf8
  36206e: 4618         	mov	r0, r3
  362070: eeb0 0b46    	vmov.f64	d0, d6
  362074: eeb0 1b47    	vmov.f64	d1, d7
  362078: f7fb fd02    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x45fc
  36207c: ab0a         	add	r3, sp, #0x28
  36207e: 681b         	ldr	r3, [r3]
  362080: ee05 3a90    	vmov	s11, r3
  362084: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362088: eddd 7a14    	vldr	s15, [sp, #80]
  36208c: ee77 7a27    	vadd.f32	s15, s14, s15
  362090: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362094: ab09         	add	r3, sp, #0x24
  362096: 681b         	ldr	r3, [r3]
  362098: ee05 3a90    	vmov	s11, r3
  36209c: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3620a0: ab42         	add	r3, sp, #0x108
  3620a2: 4618         	mov	r0, r3
  3620a4: eeb0 0b46    	vmov.f64	d0, d6
  3620a8: eeb0 1b47    	vmov.f64	d1, d7
  3620ac: f7fb fce8    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4630
  3620b0: f8df 34cc    	ldr.w	r3, [pc, #0x4cc]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  3620b4: 58e3         	ldr	r3, [r4, r3]
  3620b6: 681f         	ldr	r7, [r3]
  3620b8: ae36         	add	r6, sp, #0xd8
  3620ba: f8df 34e8    	ldr.w	r3, [pc, #0x4e8]        @ 0x3625a4 <MapManager::addStaticBodyShape(int, int)+0x16b4>
  3620be: 447b         	add	r3, pc
  3620c0: 466d         	mov	r5, sp
  3620c2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3620c4: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3620c8: 4638         	mov	r0, r7
  3620ca: 2104         	movs	r1, #0x4
  3620cc: 4632         	mov	r2, r6
  3620ce: f372 fc3d    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37287a
  3620d2: 4603         	mov	r3, r0
  3620d4: 930f         	str	r3, [sp, #0x3c]
  3620d6: 2018         	movs	r0, #0x18
  3620d8: f025 f444    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425888
  3620dc: 4603         	mov	r3, r0
  3620de: 461d         	mov	r5, r3
  3620e0: 4628         	mov	r0, r5
  3620e2: f006 fccd    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x699a
  3620e6: 9515         	str	r5, [sp, #0x54]
  3620e8: 9b15         	ldr	r3, [sp, #0x54]
  3620ea: 4618         	mov	r0, r3
  3620ec: f235 ff06    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235e0c
  3620f0: 9b15         	ldr	r3, [sp, #0x54]
  3620f2: 9a0f         	ldr	r2, [sp, #0x3c]
  3620f4: 615a         	str	r2, [r3, #0x14]
  3620f6: ab0b         	add	r3, sp, #0x2c
  3620f8: 681b         	ldr	r3, [r3]
  3620fa: 6a9d         	ldr	r5, [r3, #0x28]
  3620fc: f8df 34a8    	ldr.w	r3, [pc, #0x4a8]        @ 0x3625a8 <MapManager::addStaticBodyShape(int, int)+0x16b8>
  362100: 447b         	add	r3, pc
  362102: 4618         	mov	r0, r3
  362104: 9910         	ldr	r1, [sp, #0x40]
  362106: 9a11         	ldr	r2, [sp, #0x44]
  362108: f237 fd02    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237a04
  36210c: 4603         	mov	r3, r0
  36210e: 4618         	mov	r0, r3
  362110: f237 fc0a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237814
  362114: 4606         	mov	r6, r0
  362116: ab0c         	add	r3, sp, #0x30
  362118: 4618         	mov	r0, r3
  36211a: f028 f16b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4282d6
  36211e: aa0d         	add	r2, sp, #0x34
  362120: ab0c         	add	r3, sp, #0x30
  362122: 4610         	mov	r0, r2
  362124: 4631         	mov	r1, r6
  362126: 461a         	mov	r2, r3
  362128: f054 f49a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454934
  36212c: ab0d         	add	r3, sp, #0x34
  36212e: 4628         	mov	r0, r5
  362130: 9915         	ldr	r1, [sp, #0x54]
  362132: 461a         	mov	r2, r3
  362134: f232 fc00    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232800
  362138: ab0d         	add	r3, sp, #0x34
  36213a: 4618         	mov	r0, r3
  36213c: f053 f3ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4537d4
  362140: ab0c         	add	r3, sp, #0x30
  362142: 4618         	mov	r0, r3
  362144: f028 f15a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4282b4
  362148: f002 beaf    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x2d5e
  36214c: ab0a         	add	r3, sp, #0x28
  36214e: 681b         	ldr	r3, [r3]
  362150: ee06 3a90    	vmov	s13, r3
  362154: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  362158: eddd 7a14    	vldr	s15, [sp, #80]
  36215c: ee77 7a67    	vsub.f32	s15, s14, s15
  362160: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362164: ab09         	add	r3, sp, #0x24
  362166: 681b         	ldr	r3, [r3]
  362168: ee05 3a90    	vmov	s11, r3
  36216c: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362170: ab36         	add	r3, sp, #0xd8
  362172: 4618         	mov	r0, r3
  362174: eeb0 0b46    	vmov.f64	d0, d6
  362178: eeb0 1b47    	vmov.f64	d1, d7
  36217c: f7fb fc80    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4700
  362180: ab0a         	add	r3, sp, #0x28
  362182: 681b         	ldr	r3, [r3]
  362184: ee06 3a90    	vmov	s13, r3
  362188: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  36218c: eddd 7a14    	vldr	s15, [sp, #80]
  362190: ee77 7a67    	vsub.f32	s15, s14, s15
  362194: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362198: ab09         	add	r3, sp, #0x24
  36219a: 681b         	ldr	r3, [r3]
  36219c: ee07 3a90    	vmov	s15, r3
  3621a0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3621a4: eddd 7a14    	vldr	s15, [sp, #80]
  3621a8: ee77 7a27    	vadd.f32	s15, s14, s15
  3621ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3621b0: ab3a         	add	r3, sp, #0xe8
  3621b2: 4618         	mov	r0, r3
  3621b4: eeb0 0b46    	vmov.f64	d0, d6
  3621b8: eeb0 1b47    	vmov.f64	d1, d7
  3621bc: f7fb fc60    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4740
  3621c0: ab0a         	add	r3, sp, #0x28
  3621c2: 681b         	ldr	r3, [r3]
  3621c4: ee05 3a90    	vmov	s11, r3
  3621c8: eeb8 6be5    	vcvt.f64.s32	d6, s11
  3621cc: ab09         	add	r3, sp, #0x24
  3621ce: 681b         	ldr	r3, [r3]
  3621d0: ee07 3a90    	vmov	s15, r3
  3621d4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3621d8: eddd 7a14    	vldr	s15, [sp, #80]
  3621dc: ee77 7a27    	vadd.f32	s15, s14, s15
  3621e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3621e4: ab3e         	add	r3, sp, #0xf8
  3621e6: 4618         	mov	r0, r3
  3621e8: eeb0 0b46    	vmov.f64	d0, d6
  3621ec: eeb0 1b47    	vmov.f64	d1, d7
  3621f0: f7fb fc46    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4774
  3621f4: ab0a         	add	r3, sp, #0x28
  3621f6: 681b         	ldr	r3, [r3]
  3621f8: ee05 3a90    	vmov	s11, r3
  3621fc: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362200: ab09         	add	r3, sp, #0x24
  362202: 681b         	ldr	r3, [r3]
  362204: ee05 3a90    	vmov	s11, r3
  362208: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36220c: ab42         	add	r3, sp, #0x108
  36220e: 4618         	mov	r0, r3
  362210: eeb0 0b46    	vmov.f64	d0, d6
  362214: eeb0 1b47    	vmov.f64	d1, d7
  362218: f7fb fc32    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x479c
  36221c: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  36221e: 58e3         	ldr	r3, [r4, r3]
  362220: 681f         	ldr	r7, [r3]
  362222: ae36         	add	r6, sp, #0xd8
  362224: 4be1         	ldr	r3, [pc, #0x384]        @ 0x3625ac <MapManager::addStaticBodyShape(int, int)+0x16bc>
  362226: 447b         	add	r3, pc
  362228: 466d         	mov	r5, sp
  36222a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36222c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362230: 4638         	mov	r0, r7
  362232: 2104         	movs	r1, #0x4
  362234: 4632         	mov	r2, r6
  362236: f372 fb89    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x372712
  36223a: 4603         	mov	r3, r0
  36223c: 930f         	str	r3, [sp, #0x3c]
  36223e: 2018         	movs	r0, #0x18
  362240: f025 f390    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425720
  362244: 4603         	mov	r3, r0
  362246: 461d         	mov	r5, r3
  362248: 4628         	mov	r0, r5
  36224a: f006 fc19    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x6832
  36224e: 9515         	str	r5, [sp, #0x54]
  362250: 9b15         	ldr	r3, [sp, #0x54]
  362252: 4618         	mov	r0, r3
  362254: f235 fe52    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235ca4
  362258: 9b15         	ldr	r3, [sp, #0x54]
  36225a: 9a0f         	ldr	r2, [sp, #0x3c]
  36225c: 615a         	str	r2, [r3, #0x14]
  36225e: ab0b         	add	r3, sp, #0x2c
  362260: 681b         	ldr	r3, [r3]
  362262: 6a9d         	ldr	r5, [r3, #0x28]
  362264: 4bd2         	ldr	r3, [pc, #0x348]        @ 0x3625b0 <MapManager::addStaticBodyShape(int, int)+0x16c0>
  362266: 447b         	add	r3, pc
  362268: 4618         	mov	r0, r3
  36226a: 9910         	ldr	r1, [sp, #0x40]
  36226c: 9a11         	ldr	r2, [sp, #0x44]
  36226e: f237 fc4f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23789e
  362272: 4603         	mov	r3, r0
  362274: 4618         	mov	r0, r3
  362276: f237 fb57    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2376ae
  36227a: 4606         	mov	r6, r0
  36227c: ab0c         	add	r3, sp, #0x30
  36227e: 4618         	mov	r0, r3
  362280: f028 f0b8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x428170
  362284: aa0d         	add	r2, sp, #0x34
  362286: ab0c         	add	r3, sp, #0x30
  362288: 4610         	mov	r0, r2
  36228a: 4631         	mov	r1, r6
  36228c: 461a         	mov	r2, r3
  36228e: f054 f3e7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4547ce
  362292: ab0d         	add	r3, sp, #0x34
  362294: 4628         	mov	r0, r5
  362296: 9915         	ldr	r1, [sp, #0x54]
  362298: 461a         	mov	r2, r3
  36229a: f232 fb4d    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x23269a
  36229e: ab0d         	add	r3, sp, #0x34
  3622a0: 4618         	mov	r0, r3
  3622a2: f053 f337    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45366e
  3622a6: ab0c         	add	r3, sp, #0x30
  3622a8: 4618         	mov	r0, r3
  3622aa: f028 f0a7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42814e
  3622ae: f002 bdfc    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x2bf8
  3622b2: ab0a         	add	r3, sp, #0x28
  3622b4: 681b         	ldr	r3, [r3]
  3622b6: ee06 3a90    	vmov	s13, r3
  3622ba: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3622be: eddd 7a14    	vldr	s15, [sp, #80]
  3622c2: ee77 7a67    	vsub.f32	s15, s14, s15
  3622c6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3622ca: ab09         	add	r3, sp, #0x24
  3622cc: 681b         	ldr	r3, [r3]
  3622ce: ee07 3a90    	vmov	s15, r3
  3622d2: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3622d6: eddd 7a14    	vldr	s15, [sp, #80]
  3622da: ee77 7a67    	vsub.f32	s15, s14, s15
  3622de: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3622e2: ab36         	add	r3, sp, #0xd8
  3622e4: 4618         	mov	r0, r3
  3622e6: eeb0 0b46    	vmov.f64	d0, d6
  3622ea: eeb0 1b47    	vmov.f64	d1, d7
  3622ee: f7fb fbc7    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4872
  3622f2: ab0a         	add	r3, sp, #0x28
  3622f4: 681b         	ldr	r3, [r3]
  3622f6: ee05 3a90    	vmov	s11, r3
  3622fa: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3622fe: eddd 7a14    	vldr	s15, [sp, #80]
  362302: ee77 7a67    	vsub.f32	s15, s14, s15
  362306: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36230a: ab09         	add	r3, sp, #0x24
  36230c: 681b         	ldr	r3, [r3]
  36230e: ee05 3a90    	vmov	s11, r3
  362312: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362316: ab3a         	add	r3, sp, #0xe8
  362318: 4618         	mov	r0, r3
  36231a: eeb0 0b46    	vmov.f64	d0, d6
  36231e: eeb0 1b47    	vmov.f64	d1, d7
  362322: f7fb fbad    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x48a6
  362326: ab0a         	add	r3, sp, #0x28
  362328: 681b         	ldr	r3, [r3]
  36232a: ee07 3a10    	vmov	s14, r3
  36232e: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  362332: ab09         	add	r3, sp, #0x24
  362334: 681b         	ldr	r3, [r3]
  362336: ee05 3a90    	vmov	s11, r3
  36233a: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36233e: ab3e         	add	r3, sp, #0xf8
  362340: 4618         	mov	r0, r3
  362342: eeb0 0b46    	vmov.f64	d0, d6
  362346: eeb0 1b47    	vmov.f64	d1, d7
  36234a: f7fb fb99    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x48ce
  36234e: ab0a         	add	r3, sp, #0x28
  362350: 681b         	ldr	r3, [r3]
  362352: ee07 3a10    	vmov	s14, r3
  362356: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  36235a: ab09         	add	r3, sp, #0x24
  36235c: 681b         	ldr	r3, [r3]
  36235e: ee07 3a90    	vmov	s15, r3
  362362: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362366: eddd 7a14    	vldr	s15, [sp, #80]
  36236a: ee77 7a67    	vsub.f32	s15, s14, s15
  36236e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362372: ab42         	add	r3, sp, #0x108
  362374: 4618         	mov	r0, r3
  362376: eeb0 0b46    	vmov.f64	d0, d6
  36237a: eeb0 1b47    	vmov.f64	d1, d7
  36237e: f7fb fb7f    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4902
  362382: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  362384: 58e3         	ldr	r3, [r4, r3]
  362386: 681f         	ldr	r7, [r3]
  362388: ae36         	add	r6, sp, #0xd8
  36238a: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x3625b4 <MapManager::addStaticBodyShape(int, int)+0x16c4>
  36238c: 447b         	add	r3, pc
  36238e: 466d         	mov	r5, sp
  362390: cb0f         	ldm	r3, {r0, r1, r2, r3}
  362392: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362396: 4638         	mov	r0, r7
  362398: 2104         	movs	r1, #0x4
  36239a: 4632         	mov	r2, r6
  36239c: f372 fad6    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3725ac
  3623a0: 4603         	mov	r3, r0
  3623a2: 930f         	str	r3, [sp, #0x3c]
  3623a4: 2018         	movs	r0, #0x18
  3623a6: f025 f2dd    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4255ba
  3623aa: 4603         	mov	r3, r0
  3623ac: 461d         	mov	r5, r3
  3623ae: 4628         	mov	r0, r5
  3623b0: f006 fb66    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x66cc
  3623b4: 9515         	str	r5, [sp, #0x54]
  3623b6: 9b15         	ldr	r3, [sp, #0x54]
  3623b8: 4618         	mov	r0, r3
  3623ba: f235 fd9f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235b3e
  3623be: 9b15         	ldr	r3, [sp, #0x54]
  3623c0: 9a0f         	ldr	r2, [sp, #0x3c]
  3623c2: 615a         	str	r2, [r3, #0x14]
  3623c4: ab0b         	add	r3, sp, #0x2c
  3623c6: 681b         	ldr	r3, [r3]
  3623c8: 6a9d         	ldr	r5, [r3, #0x28]
  3623ca: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3625b8 <MapManager::addStaticBodyShape(int, int)+0x16c8>
  3623cc: 447b         	add	r3, pc
  3623ce: 4618         	mov	r0, r3
  3623d0: 9910         	ldr	r1, [sp, #0x40]
  3623d2: 9a11         	ldr	r2, [sp, #0x44]
  3623d4: f237 fb9c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237738
  3623d8: 4603         	mov	r3, r0
  3623da: 4618         	mov	r0, r3
  3623dc: f237 faa4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237548
  3623e0: 4606         	mov	r6, r0
  3623e2: ab0c         	add	r3, sp, #0x30
  3623e4: 4618         	mov	r0, r3
  3623e6: f028 f005    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42800a
  3623ea: aa0d         	add	r2, sp, #0x34
  3623ec: ab0c         	add	r3, sp, #0x30
  3623ee: 4610         	mov	r0, r2
  3623f0: 4631         	mov	r1, r6
  3623f2: 461a         	mov	r2, r3
  3623f4: f054 f334    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454668
  3623f8: ab0d         	add	r3, sp, #0x34
  3623fa: 4628         	mov	r0, r5
  3623fc: 9915         	ldr	r1, [sp, #0x54]
  3623fe: 461a         	mov	r2, r3
  362400: f232 fa9a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232534
  362404: ab0d         	add	r3, sp, #0x34
  362406: 4618         	mov	r0, r3
  362408: f053 f284    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453508
  36240c: ab0c         	add	r3, sp, #0x30
  36240e: 4618         	mov	r0, r3
  362410: f027 f7f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x427fe8
  362414: f002 bd49    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x2a92
  362418: ab0a         	add	r3, sp, #0x28
  36241a: 681b         	ldr	r3, [r3]
  36241c: ee05 3a90    	vmov	s11, r3
  362420: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362424: ab09         	add	r3, sp, #0x24
  362426: 681b         	ldr	r3, [r3]
  362428: ee07 3a90    	vmov	s15, r3
  36242c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362430: eddd 7a14    	vldr	s15, [sp, #80]
  362434: ee77 7a67    	vsub.f32	s15, s14, s15
  362438: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36243c: ab36         	add	r3, sp, #0xd8
  36243e: 4618         	mov	r0, r3
  362440: eeb0 0b46    	vmov.f64	d0, d6
  362444: eeb0 1b47    	vmov.f64	d1, d7
  362448: f7fb fb1a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x49cc
  36244c: ab0a         	add	r3, sp, #0x28
  36244e: 681b         	ldr	r3, [r3]
  362450: ee05 3a90    	vmov	s11, r3
  362454: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362458: ab09         	add	r3, sp, #0x24
  36245a: 681b         	ldr	r3, [r3]
  36245c: ee05 3a90    	vmov	s11, r3
  362460: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362464: ab3a         	add	r3, sp, #0xe8
  362466: 4618         	mov	r0, r3
  362468: eeb0 0b46    	vmov.f64	d0, d6
  36246c: eeb0 1b47    	vmov.f64	d1, d7
  362470: f7fb fb06    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x49f4
  362474: ab0a         	add	r3, sp, #0x28
  362476: 681b         	ldr	r3, [r3]
  362478: ee06 3a90    	vmov	s13, r3
  36247c: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  362480: eddd 7a14    	vldr	s15, [sp, #80]
  362484: ee77 7a27    	vadd.f32	s15, s14, s15
  362488: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36248c: ab09         	add	r3, sp, #0x24
  36248e: 681b         	ldr	r3, [r3]
  362490: ee05 3a90    	vmov	s11, r3
  362494: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362498: ab3e         	add	r3, sp, #0xf8
  36249a: 4618         	mov	r0, r3
  36249c: eeb0 0b46    	vmov.f64	d0, d6
  3624a0: eeb0 1b47    	vmov.f64	d1, d7
  3624a4: f7fb faec    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4a28
  3624a8: ab0a         	add	r3, sp, #0x28
  3624aa: 681b         	ldr	r3, [r3]
  3624ac: ee06 3a90    	vmov	s13, r3
  3624b0: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3624b4: eddd 7a14    	vldr	s15, [sp, #80]
  3624b8: ee77 7a27    	vadd.f32	s15, s14, s15
  3624bc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3624c0: ab09         	add	r3, sp, #0x24
  3624c2: 681b         	ldr	r3, [r3]
  3624c4: ee07 3a90    	vmov	s15, r3
  3624c8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3624cc: eddd 7a14    	vldr	s15, [sp, #80]
  3624d0: ee77 7a67    	vsub.f32	s15, s14, s15
  3624d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3624d8: ab42         	add	r3, sp, #0x108
  3624da: 4618         	mov	r0, r3
  3624dc: eeb0 0b46    	vmov.f64	d0, d6
  3624e0: eeb0 1b47    	vmov.f64	d1, d7
  3624e4: f7fb facc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4a68
  3624e8: 4b25         	ldr	r3, [pc, #0x94]         @ 0x362580 <MapManager::addStaticBodyShape(int, int)+0x1690>
  3624ea: 58e3         	ldr	r3, [r4, r3]
  3624ec: 681f         	ldr	r7, [r3]
  3624ee: ae36         	add	r6, sp, #0xd8
  3624f0: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x3625bc <MapManager::addStaticBodyShape(int, int)+0x16cc>
  3624f2: 447b         	add	r3, pc
  3624f4: 466d         	mov	r5, sp
  3624f6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3624f8: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3624fc: 4638         	mov	r0, r7
  3624fe: 2104         	movs	r1, #0x4
  362500: 4632         	mov	r2, r6
  362502: f372 fa23    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x372446
  362506: 4603         	mov	r3, r0
  362508: 930f         	str	r3, [sp, #0x3c]
  36250a: 2018         	movs	r0, #0x18
  36250c: f025 f22a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425454
  362510: 4603         	mov	r3, r0
  362512: 461d         	mov	r5, r3
  362514: 4628         	mov	r0, r5
  362516: f006 fab3    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x6566
  36251a: 9515         	str	r5, [sp, #0x54]
  36251c: 9b15         	ldr	r3, [sp, #0x54]
  36251e: 4618         	mov	r0, r3
  362520: f235 fcec    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2359d8
  362524: 9b15         	ldr	r3, [sp, #0x54]
  362526: 9a0f         	ldr	r2, [sp, #0x3c]
  362528: 615a         	str	r2, [r3, #0x14]
  36252a: ab0b         	add	r3, sp, #0x2c
  36252c: 681b         	ldr	r3, [r3]
  36252e: 6a9d         	ldr	r5, [r3, #0x28]
  362530: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3625c0 <MapManager::addStaticBodyShape(int, int)+0x16d0>
  362532: 447b         	add	r3, pc
  362534: 4618         	mov	r0, r3
  362536: 9910         	ldr	r1, [sp, #0x40]
  362538: 9a11         	ldr	r2, [sp, #0x44]
  36253a: f237 fae9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2375d2
  36253e: 4603         	mov	r3, r0
  362540: 4618         	mov	r0, r3
  362542: f237 f9f1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2373e2
  362546: 4606         	mov	r6, r0
  362548: ab0c         	add	r3, sp, #0x30
  36254a: 4618         	mov	r0, r3
  36254c: f027 f752    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x427ea4
  362550: aa0d         	add	r2, sp, #0x34
  362552: ab0c         	add	r3, sp, #0x30
  362554: 4610         	mov	r0, r2
  362556: 4631         	mov	r1, r6
  362558: 461a         	mov	r2, r3
  36255a: f054 f281    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454502
  36255e: ab0d         	add	r3, sp, #0x34
  362560: 4628         	mov	r0, r5
  362562: 9915         	ldr	r1, [sp, #0x54]
  362564: 461a         	mov	r2, r3
  362566: f232 f9e7    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2323ce
  36256a: ab0d         	add	r3, sp, #0x34
  36256c: 4618         	mov	r0, r3
  36256e: f053 f1d1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4533a2
  362572: ab0c         	add	r3, sp, #0x30
  362574: 4618         	mov	r0, r3
  362576: f027 f741    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x427e82
  36257a: f002 bc96    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x292c
  36257e: bf00         	nop
  362580: db9c         	blt	0x3624bc <MapManager::addStaticBodyShape(int, int)+0x15cc> @ imm = #-0xc8
  362582: ffff b2ce    	<unknown>
  362586: 0046         	lsls	r6, r0, #0x1
  362588: b228         	sxth	r0, r5
  36258a: 0046         	lsls	r6, r0, #0x1
  36258c: b14a         	cbz	r2, 0x3625a2 <MapManager::addStaticBodyShape(int, int)+0x16b2> @ imm = #0x12
  36258e: 0046         	lsls	r6, r0, #0x1
  362590: b0a4         	sub	sp, #0x90
  362592: 0046         	lsls	r6, r0, #0x1
  362594: afc6         	add	r7, sp, #0x318
  362596: 0046         	lsls	r6, r0, #0x1
  362598: af20         	add	r7, sp, #0x80
  36259a: 0046         	lsls	r6, r0, #0x1
  36259c: ae42         	add	r6, sp, #0x108
  36259e: 0046         	lsls	r6, r0, #0x1
  3625a0: ad9c         	add	r5, sp, #0x270
  3625a2: 0046         	lsls	r6, r0, #0x1
  3625a4: acd6         	add	r4, sp, #0x358
  3625a6: 0046         	lsls	r6, r0, #0x1
  3625a8: ac30         	add	r4, sp, #0xc0
  3625aa: 0046         	lsls	r6, r0, #0x1
  3625ac: ab6e         	add	r3, sp, #0x1b8
  3625ae: 0046         	lsls	r6, r0, #0x1
  3625b0: aaca         	add	r2, sp, #0x328
  3625b2: 0046         	lsls	r6, r0, #0x1
  3625b4: aa08         	add	r2, sp, #0x20
  3625b6: 0046         	lsls	r6, r0, #0x1
  3625b8: a964         	add	r1, sp, #0x190
  3625ba: 0046         	lsls	r6, r0, #0x1
  3625bc: a8a2         	add	r0, sp, #0x288
  3625be: 0046         	lsls	r6, r0, #0x1
  3625c0: a7fe         	adr	r7, #1016 <MapManager::addStaticBodyShape(int, int)+0x17d2>
  3625c2: 0046         	lsls	r6, r0, #0x1
  3625c4: ab0a         	add	r3, sp, #0x28
  3625c6: 681b         	ldr	r3, [r3]
  3625c8: ee05 3a90    	vmov	s11, r3
  3625cc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3625d0: eddd 7a14    	vldr	s15, [sp, #80]
  3625d4: ee77 7a67    	vsub.f32	s15, s14, s15
  3625d8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3625dc: ab09         	add	r3, sp, #0x24
  3625de: 681b         	ldr	r3, [r3]
  3625e0: ee07 3a90    	vmov	s15, r3
  3625e4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3625e8: eddd 7a14    	vldr	s15, [sp, #80]
  3625ec: ee77 7a67    	vsub.f32	s15, s14, s15
  3625f0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3625f4: ab36         	add	r3, sp, #0xd8
  3625f6: 4618         	mov	r0, r3
  3625f8: eeb0 0b46    	vmov.f64	d0, d6
  3625fc: eeb0 1b47    	vmov.f64	d1, d7
  362600: f7fb fa3e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4b84
  362604: ab0a         	add	r3, sp, #0x28
  362606: 681b         	ldr	r3, [r3]
  362608: ee05 3a90    	vmov	s11, r3
  36260c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362610: eddd 7a14    	vldr	s15, [sp, #80]
  362614: ee77 7a67    	vsub.f32	s15, s14, s15
  362618: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36261c: ab09         	add	r3, sp, #0x24
  36261e: 681b         	ldr	r3, [r3]
  362620: ee07 3a90    	vmov	s15, r3
  362624: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362628: eddd 7a14    	vldr	s15, [sp, #80]
  36262c: ee77 7a27    	vadd.f32	s15, s14, s15
  362630: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362634: ab3a         	add	r3, sp, #0xe8
  362636: 4618         	mov	r0, r3
  362638: eeb0 0b46    	vmov.f64	d0, d6
  36263c: eeb0 1b47    	vmov.f64	d1, d7
  362640: f7fb fa1e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4bc4
  362644: ab0a         	add	r3, sp, #0x28
  362646: 681b         	ldr	r3, [r3]
  362648: ee05 3a90    	vmov	s11, r3
  36264c: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362650: ab09         	add	r3, sp, #0x24
  362652: 681b         	ldr	r3, [r3]
  362654: ee07 3a90    	vmov	s15, r3
  362658: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36265c: eddd 7a14    	vldr	s15, [sp, #80]
  362660: ee77 7a27    	vadd.f32	s15, s14, s15
  362664: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362668: ab3e         	add	r3, sp, #0xf8
  36266a: 4618         	mov	r0, r3
  36266c: eeb0 0b46    	vmov.f64	d0, d6
  362670: eeb0 1b47    	vmov.f64	d1, d7
  362674: f7fb fa04    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4bf8
  362678: ab0a         	add	r3, sp, #0x28
  36267a: 681b         	ldr	r3, [r3]
  36267c: ee05 3a90    	vmov	s11, r3
  362680: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362684: eddd 7a14    	vldr	s15, [sp, #80]
  362688: ee77 7a27    	vadd.f32	s15, s14, s15
  36268c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362690: ab09         	add	r3, sp, #0x24
  362692: 681b         	ldr	r3, [r3]
  362694: ee05 3a90    	vmov	s11, r3
  362698: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36269c: ab42         	add	r3, sp, #0x108
  36269e: 4618         	mov	r0, r3
  3626a0: eeb0 0b46    	vmov.f64	d0, d6
  3626a4: eeb0 1b47    	vmov.f64	d1, d7
  3626a8: f7fb f9ea    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4c2c
  3626ac: ab0a         	add	r3, sp, #0x28
  3626ae: 681b         	ldr	r3, [r3]
  3626b0: ee06 3a90    	vmov	s13, r3
  3626b4: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3626b8: eddd 7a14    	vldr	s15, [sp, #80]
  3626bc: ee77 7a27    	vadd.f32	s15, s14, s15
  3626c0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3626c4: ab09         	add	r3, sp, #0x24
  3626c6: 681b         	ldr	r3, [r3]
  3626c8: ee07 3a90    	vmov	s15, r3
  3626cc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3626d0: eddd 7a14    	vldr	s15, [sp, #80]
  3626d4: ee77 7a67    	vsub.f32	s15, s14, s15
  3626d8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3626dc: ab46         	add	r3, sp, #0x118
  3626de: 4618         	mov	r0, r3
  3626e0: eeb0 0b46    	vmov.f64	d0, d6
  3626e4: eeb0 1b47    	vmov.f64	d1, d7
  3626e8: f7fb f9ca    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4c6c
  3626ec: f8df 3ae4    	ldr.w	r3, [pc, #0xae4]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  3626f0: 58e3         	ldr	r3, [r4, r3]
  3626f2: 681f         	ldr	r7, [r3]
  3626f4: ae36         	add	r6, sp, #0xd8
  3626f6: f8df 3ae0    	ldr.w	r3, [pc, #0xae0]        @ 0x3631d8 <MapManager::addStaticBodyShape(int, int)+0x22e8>
  3626fa: 447b         	add	r3, pc
  3626fc: 466d         	mov	r5, sp
  3626fe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  362700: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362704: 4638         	mov	r0, r7
  362706: 2105         	movs	r1, #0x5
  362708: 4632         	mov	r2, r6
  36270a: f372 f91f    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37223e
  36270e: 4603         	mov	r3, r0
  362710: 930f         	str	r3, [sp, #0x3c]
  362712: 2018         	movs	r0, #0x18
  362714: f025 f126    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42524c
  362718: 4603         	mov	r3, r0
  36271a: 461d         	mov	r5, r3
  36271c: 4628         	mov	r0, r5
  36271e: f006 f9af    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x635e
  362722: 9515         	str	r5, [sp, #0x54]
  362724: 9b15         	ldr	r3, [sp, #0x54]
  362726: 4618         	mov	r0, r3
  362728: f235 fbe8    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2357d0
  36272c: 9b15         	ldr	r3, [sp, #0x54]
  36272e: 9a0f         	ldr	r2, [sp, #0x3c]
  362730: 615a         	str	r2, [r3, #0x14]
  362732: ab0b         	add	r3, sp, #0x2c
  362734: 681b         	ldr	r3, [r3]
  362736: 6a9d         	ldr	r5, [r3, #0x28]
  362738: f8df 3aa0    	ldr.w	r3, [pc, #0xaa0]        @ 0x3631dc <MapManager::addStaticBodyShape(int, int)+0x22ec>
  36273c: 447b         	add	r3, pc
  36273e: 4618         	mov	r0, r3
  362740: 9910         	ldr	r1, [sp, #0x40]
  362742: 9a11         	ldr	r2, [sp, #0x44]
  362744: f237 f9e4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2373c8
  362748: 4603         	mov	r3, r0
  36274a: 4618         	mov	r0, r3
  36274c: f237 f8ec    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2371d8
  362750: 4606         	mov	r6, r0
  362752: ab0c         	add	r3, sp, #0x30
  362754: 4618         	mov	r0, r3
  362756: f027 f64d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x427c9a
  36275a: aa0d         	add	r2, sp, #0x34
  36275c: ab0c         	add	r3, sp, #0x30
  36275e: 4610         	mov	r0, r2
  362760: 4631         	mov	r1, r6
  362762: 461a         	mov	r2, r3
  362764: f054 f17c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4542f8
  362768: ab0d         	add	r3, sp, #0x34
  36276a: 4628         	mov	r0, r5
  36276c: 9915         	ldr	r1, [sp, #0x54]
  36276e: 461a         	mov	r2, r3
  362770: f232 f8e2    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2321c4
  362774: ab0d         	add	r3, sp, #0x34
  362776: 4618         	mov	r0, r3
  362778: f053 f0cc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x453198
  36277c: ab0c         	add	r3, sp, #0x30
  36277e: 4618         	mov	r0, r3
  362780: f027 f63c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x427c78
  362784: f002 bb91    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x2722
  362788: ab0a         	add	r3, sp, #0x28
  36278a: 681b         	ldr	r3, [r3]
  36278c: ee05 3a90    	vmov	s11, r3
  362790: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362794: eddd 7a14    	vldr	s15, [sp, #80]
  362798: ee77 7a67    	vsub.f32	s15, s14, s15
  36279c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3627a0: ab09         	add	r3, sp, #0x24
  3627a2: 681b         	ldr	r3, [r3]
  3627a4: ee07 3a90    	vmov	s15, r3
  3627a8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3627ac: eddd 7a14    	vldr	s15, [sp, #80]
  3627b0: ee77 7a67    	vsub.f32	s15, s14, s15
  3627b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3627b8: ab36         	add	r3, sp, #0xd8
  3627ba: 4618         	mov	r0, r3
  3627bc: eeb0 0b46    	vmov.f64	d0, d6
  3627c0: eeb0 1b47    	vmov.f64	d1, d7
  3627c4: f7fb f95c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4d48
  3627c8: ab0a         	add	r3, sp, #0x28
  3627ca: 681b         	ldr	r3, [r3]
  3627cc: ee05 3a90    	vmov	s11, r3
  3627d0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3627d4: eddd 7a14    	vldr	s15, [sp, #80]
  3627d8: ee77 7a67    	vsub.f32	s15, s14, s15
  3627dc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3627e0: ab09         	add	r3, sp, #0x24
  3627e2: 681b         	ldr	r3, [r3]
  3627e4: ee05 3a90    	vmov	s11, r3
  3627e8: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3627ec: ab3a         	add	r3, sp, #0xe8
  3627ee: 4618         	mov	r0, r3
  3627f0: eeb0 0b46    	vmov.f64	d0, d6
  3627f4: eeb0 1b47    	vmov.f64	d1, d7
  3627f8: f7fb f942    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4d7c
  3627fc: ab0a         	add	r3, sp, #0x28
  3627fe: 681b         	ldr	r3, [r3]
  362800: ee07 3a10    	vmov	s14, r3
  362804: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  362808: ab09         	add	r3, sp, #0x24
  36280a: 681b         	ldr	r3, [r3]
  36280c: ee07 3a90    	vmov	s15, r3
  362810: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362814: eddd 7a14    	vldr	s15, [sp, #80]
  362818: ee77 7a27    	vadd.f32	s15, s14, s15
  36281c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362820: ab3e         	add	r3, sp, #0xf8
  362822: 4618         	mov	r0, r3
  362824: eeb0 0b46    	vmov.f64	d0, d6
  362828: eeb0 1b47    	vmov.f64	d1, d7
  36282c: f7fb f928    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4db0
  362830: ab0a         	add	r3, sp, #0x28
  362832: 681b         	ldr	r3, [r3]
  362834: ee05 3a90    	vmov	s11, r3
  362838: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36283c: eddd 7a14    	vldr	s15, [sp, #80]
  362840: ee77 7a27    	vadd.f32	s15, s14, s15
  362844: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362848: ab09         	add	r3, sp, #0x24
  36284a: 681b         	ldr	r3, [r3]
  36284c: ee07 3a90    	vmov	s15, r3
  362850: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362854: eddd 7a14    	vldr	s15, [sp, #80]
  362858: ee77 7a27    	vadd.f32	s15, s14, s15
  36285c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362860: ab42         	add	r3, sp, #0x108
  362862: 4618         	mov	r0, r3
  362864: eeb0 0b46    	vmov.f64	d0, d6
  362868: eeb0 1b47    	vmov.f64	d1, d7
  36286c: f7fb f908    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4df0
  362870: ab0a         	add	r3, sp, #0x28
  362872: 681b         	ldr	r3, [r3]
  362874: ee05 3a90    	vmov	s11, r3
  362878: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36287c: eddd 7a14    	vldr	s15, [sp, #80]
  362880: ee77 7a27    	vadd.f32	s15, s14, s15
  362884: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362888: ab09         	add	r3, sp, #0x24
  36288a: 681b         	ldr	r3, [r3]
  36288c: ee07 3a90    	vmov	s15, r3
  362890: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362894: eddd 7a14    	vldr	s15, [sp, #80]
  362898: ee77 7a67    	vsub.f32	s15, s14, s15
  36289c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3628a0: ab46         	add	r3, sp, #0x118
  3628a2: 4618         	mov	r0, r3
  3628a4: eeb0 0b46    	vmov.f64	d0, d6
  3628a8: eeb0 1b47    	vmov.f64	d1, d7
  3628ac: f7fb f8e8    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4e30
  3628b0: f8df 3920    	ldr.w	r3, [pc, #0x920]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  3628b4: 58e3         	ldr	r3, [r4, r3]
  3628b6: 681f         	ldr	r7, [r3]
  3628b8: ae36         	add	r6, sp, #0xd8
  3628ba: f8df 3924    	ldr.w	r3, [pc, #0x924]        @ 0x3631e0 <MapManager::addStaticBodyShape(int, int)+0x22f0>
  3628be: 447b         	add	r3, pc
  3628c0: 466d         	mov	r5, sp
  3628c2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3628c4: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3628c8: 4638         	mov	r0, r7
  3628ca: 2105         	movs	r1, #0x5
  3628cc: 4632         	mov	r2, r6
  3628ce: f372 f83d    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37207a
  3628d2: 4603         	mov	r3, r0
  3628d4: 930f         	str	r3, [sp, #0x3c]
  3628d6: 2018         	movs	r0, #0x18
  3628d8: f025 f044    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x425088
  3628dc: 4603         	mov	r3, r0
  3628de: 461d         	mov	r5, r3
  3628e0: 4628         	mov	r0, r5
  3628e2: f006 f8cd    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x619a
  3628e6: 9515         	str	r5, [sp, #0x54]
  3628e8: 9b15         	ldr	r3, [sp, #0x54]
  3628ea: 4618         	mov	r0, r3
  3628ec: f235 fb06    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x23560c
  3628f0: 9b15         	ldr	r3, [sp, #0x54]
  3628f2: 9a0f         	ldr	r2, [sp, #0x3c]
  3628f4: 615a         	str	r2, [r3, #0x14]
  3628f6: ab0b         	add	r3, sp, #0x2c
  3628f8: 681b         	ldr	r3, [r3]
  3628fa: 6a9d         	ldr	r5, [r3, #0x28]
  3628fc: f8df 38e4    	ldr.w	r3, [pc, #0x8e4]        @ 0x3631e4 <MapManager::addStaticBodyShape(int, int)+0x22f4>
  362900: 447b         	add	r3, pc
  362902: 4618         	mov	r0, r3
  362904: 9910         	ldr	r1, [sp, #0x40]
  362906: 9a11         	ldr	r2, [sp, #0x44]
  362908: f237 f902    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237204
  36290c: 4603         	mov	r3, r0
  36290e: 4618         	mov	r0, r3
  362910: f237 f80a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x237014
  362914: 4606         	mov	r6, r0
  362916: ab0c         	add	r3, sp, #0x30
  362918: 4618         	mov	r0, r3
  36291a: f027 f56b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x427ad6
  36291e: aa0d         	add	r2, sp, #0x34
  362920: ab0c         	add	r3, sp, #0x30
  362922: 4610         	mov	r0, r2
  362924: 4631         	mov	r1, r6
  362926: 461a         	mov	r2, r3
  362928: f054 f09a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x454134
  36292c: ab0d         	add	r3, sp, #0x34
  36292e: 4628         	mov	r0, r5
  362930: 9915         	ldr	r1, [sp, #0x54]
  362932: 461a         	mov	r2, r3
  362934: f232 f800    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x232000
  362938: ab0d         	add	r3, sp, #0x34
  36293a: 4618         	mov	r0, r3
  36293c: f052 f7ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452fd4
  362940: ab0c         	add	r3, sp, #0x30
  362942: 4618         	mov	r0, r3
  362944: f027 f55a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x427ab4
  362948: f002 baaf    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x255e
  36294c: ab0a         	add	r3, sp, #0x28
  36294e: 681b         	ldr	r3, [r3]
  362950: ee05 3a90    	vmov	s11, r3
  362954: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362958: eddd 7a14    	vldr	s15, [sp, #80]
  36295c: ee77 7a67    	vsub.f32	s15, s14, s15
  362960: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362964: ab09         	add	r3, sp, #0x24
  362966: 681b         	ldr	r3, [r3]
  362968: ee05 3a90    	vmov	s11, r3
  36296c: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362970: ab36         	add	r3, sp, #0xd8
  362972: 4618         	mov	r0, r3
  362974: eeb0 0b46    	vmov.f64	d0, d6
  362978: eeb0 1b47    	vmov.f64	d1, d7
  36297c: f7fb f880    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4f00
  362980: ab0a         	add	r3, sp, #0x28
  362982: 681b         	ldr	r3, [r3]
  362984: ee06 3a90    	vmov	s13, r3
  362988: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  36298c: eddd 7a14    	vldr	s15, [sp, #80]
  362990: ee77 7a67    	vsub.f32	s15, s14, s15
  362994: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362998: ab09         	add	r3, sp, #0x24
  36299a: 681b         	ldr	r3, [r3]
  36299c: ee07 3a90    	vmov	s15, r3
  3629a0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3629a4: eddd 7a14    	vldr	s15, [sp, #80]
  3629a8: ee77 7a27    	vadd.f32	s15, s14, s15
  3629ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3629b0: ab3a         	add	r3, sp, #0xe8
  3629b2: 4618         	mov	r0, r3
  3629b4: eeb0 0b46    	vmov.f64	d0, d6
  3629b8: eeb0 1b47    	vmov.f64	d1, d7
  3629bc: f7fb f860    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4f40
  3629c0: ab0a         	add	r3, sp, #0x28
  3629c2: 681b         	ldr	r3, [r3]
  3629c4: ee05 3a90    	vmov	s11, r3
  3629c8: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3629cc: eddd 7a14    	vldr	s15, [sp, #80]
  3629d0: ee77 7a27    	vadd.f32	s15, s14, s15
  3629d4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3629d8: ab09         	add	r3, sp, #0x24
  3629da: 681b         	ldr	r3, [r3]
  3629dc: ee07 3a90    	vmov	s15, r3
  3629e0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3629e4: eddd 7a14    	vldr	s15, [sp, #80]
  3629e8: ee77 7a27    	vadd.f32	s15, s14, s15
  3629ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3629f0: ab3e         	add	r3, sp, #0xf8
  3629f2: 4618         	mov	r0, r3
  3629f4: eeb0 0b46    	vmov.f64	d0, d6
  3629f8: eeb0 1b47    	vmov.f64	d1, d7
  3629fc: f7fb f840    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4f80
  362a00: ab0a         	add	r3, sp, #0x28
  362a02: 681b         	ldr	r3, [r3]
  362a04: ee05 3a90    	vmov	s11, r3
  362a08: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362a0c: eddd 7a14    	vldr	s15, [sp, #80]
  362a10: ee77 7a27    	vadd.f32	s15, s14, s15
  362a14: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362a18: ab09         	add	r3, sp, #0x24
  362a1a: 681b         	ldr	r3, [r3]
  362a1c: ee07 3a90    	vmov	s15, r3
  362a20: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362a24: eddd 7a14    	vldr	s15, [sp, #80]
  362a28: ee77 7a67    	vsub.f32	s15, s14, s15
  362a2c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362a30: ab42         	add	r3, sp, #0x108
  362a32: 4618         	mov	r0, r3
  362a34: eeb0 0b46    	vmov.f64	d0, d6
  362a38: eeb0 1b47    	vmov.f64	d1, d7
  362a3c: f7fb f820    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4fc0
  362a40: ab0a         	add	r3, sp, #0x28
  362a42: 681b         	ldr	r3, [r3]
  362a44: ee05 3a90    	vmov	s11, r3
  362a48: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362a4c: ab09         	add	r3, sp, #0x24
  362a4e: 681b         	ldr	r3, [r3]
  362a50: ee07 3a90    	vmov	s15, r3
  362a54: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362a58: eddd 7a14    	vldr	s15, [sp, #80]
  362a5c: ee77 7a67    	vsub.f32	s15, s14, s15
  362a60: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362a64: ab46         	add	r3, sp, #0x118
  362a66: 4618         	mov	r0, r3
  362a68: eeb0 0b46    	vmov.f64	d0, d6
  362a6c: eeb0 1b47    	vmov.f64	d1, d7
  362a70: f7fb f806    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x4ff4
  362a74: f8df 375c    	ldr.w	r3, [pc, #0x75c]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  362a78: 58e3         	ldr	r3, [r4, r3]
  362a7a: 681f         	ldr	r7, [r3]
  362a7c: ae36         	add	r6, sp, #0xd8
  362a7e: f8df 3768    	ldr.w	r3, [pc, #0x768]        @ 0x3631e8 <MapManager::addStaticBodyShape(int, int)+0x22f8>
  362a82: 447b         	add	r3, pc
  362a84: 466d         	mov	r5, sp
  362a86: cb0f         	ldm	r3, {r0, r1, r2, r3}
  362a88: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362a8c: 4638         	mov	r0, r7
  362a8e: 2105         	movs	r1, #0x5
  362a90: 4632         	mov	r2, r6
  362a92: f371 ff5b    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x371eb6
  362a96: 4603         	mov	r3, r0
  362a98: 930f         	str	r3, [sp, #0x3c]
  362a9a: 2018         	movs	r0, #0x18
  362a9c: f024 f762    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x424ec4
  362aa0: 4603         	mov	r3, r0
  362aa2: 461d         	mov	r5, r3
  362aa4: 4628         	mov	r0, r5
  362aa6: f005 ffeb    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x5fd6
  362aaa: 9515         	str	r5, [sp, #0x54]
  362aac: 9b15         	ldr	r3, [sp, #0x54]
  362aae: 4618         	mov	r0, r3
  362ab0: f235 fa24    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235448
  362ab4: 9b15         	ldr	r3, [sp, #0x54]
  362ab6: 9a0f         	ldr	r2, [sp, #0x3c]
  362ab8: 615a         	str	r2, [r3, #0x14]
  362aba: ab0b         	add	r3, sp, #0x2c
  362abc: 681b         	ldr	r3, [r3]
  362abe: 6a9d         	ldr	r5, [r3, #0x28]
  362ac0: f8df 3728    	ldr.w	r3, [pc, #0x728]        @ 0x3631ec <MapManager::addStaticBodyShape(int, int)+0x22fc>
  362ac4: 447b         	add	r3, pc
  362ac6: 4618         	mov	r0, r3
  362ac8: 9910         	ldr	r1, [sp, #0x40]
  362aca: 9a11         	ldr	r2, [sp, #0x44]
  362acc: f237 f820    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x237040
  362ad0: 4603         	mov	r3, r0
  362ad2: 4618         	mov	r0, r3
  362ad4: f236 ff28    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x236e50
  362ad8: 4606         	mov	r6, r0
  362ada: ab0c         	add	r3, sp, #0x30
  362adc: 4618         	mov	r0, r3
  362ade: f027 f489    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x427912
  362ae2: aa0d         	add	r2, sp, #0x34
  362ae4: ab0c         	add	r3, sp, #0x30
  362ae6: 4610         	mov	r0, r2
  362ae8: 4631         	mov	r1, r6
  362aea: 461a         	mov	r2, r3
  362aec: f053 f7b8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453f70
  362af0: ab0d         	add	r3, sp, #0x34
  362af2: 4628         	mov	r0, r5
  362af4: 9915         	ldr	r1, [sp, #0x54]
  362af6: 461a         	mov	r2, r3
  362af8: f231 ff1e    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x231e3c
  362afc: ab0d         	add	r3, sp, #0x34
  362afe: 4618         	mov	r0, r3
  362b00: f052 f708    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452e10
  362b04: ab0c         	add	r3, sp, #0x30
  362b06: 4618         	mov	r0, r3
  362b08: f027 f478    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4278f0
  362b0c: f002 b9cd    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x239a
  362b10: ab0a         	add	r3, sp, #0x28
  362b12: 681b         	ldr	r3, [r3]
  362b14: ee05 3a90    	vmov	s11, r3
  362b18: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362b1c: eddd 7a14    	vldr	s15, [sp, #80]
  362b20: ee77 7a67    	vsub.f32	s15, s14, s15
  362b24: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362b28: ab09         	add	r3, sp, #0x24
  362b2a: 681b         	ldr	r3, [r3]
  362b2c: ee07 3a90    	vmov	s15, r3
  362b30: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362b34: eddd 7a14    	vldr	s15, [sp, #80]
  362b38: ee77 7a67    	vsub.f32	s15, s14, s15
  362b3c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362b40: ab36         	add	r3, sp, #0xd8
  362b42: 4618         	mov	r0, r3
  362b44: eeb0 0b46    	vmov.f64	d0, d6
  362b48: eeb0 1b47    	vmov.f64	d1, d7
  362b4c: f7fa ff98    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x50d0
  362b50: ab0a         	add	r3, sp, #0x28
  362b52: 681b         	ldr	r3, [r3]
  362b54: ee05 3a90    	vmov	s11, r3
  362b58: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362b5c: eddd 7a14    	vldr	s15, [sp, #80]
  362b60: ee77 7a67    	vsub.f32	s15, s14, s15
  362b64: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362b68: ab09         	add	r3, sp, #0x24
  362b6a: 681b         	ldr	r3, [r3]
  362b6c: ee07 3a90    	vmov	s15, r3
  362b70: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362b74: eddd 7a14    	vldr	s15, [sp, #80]
  362b78: ee77 7a27    	vadd.f32	s15, s14, s15
  362b7c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362b80: ab3a         	add	r3, sp, #0xe8
  362b82: 4618         	mov	r0, r3
  362b84: eeb0 0b46    	vmov.f64	d0, d6
  362b88: eeb0 1b47    	vmov.f64	d1, d7
  362b8c: f7fa ff78    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5110
  362b90: ab0a         	add	r3, sp, #0x28
  362b92: 681b         	ldr	r3, [r3]
  362b94: ee05 3a90    	vmov	s11, r3
  362b98: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362b9c: eddd 7a14    	vldr	s15, [sp, #80]
  362ba0: ee77 7a27    	vadd.f32	s15, s14, s15
  362ba4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362ba8: ab09         	add	r3, sp, #0x24
  362baa: 681b         	ldr	r3, [r3]
  362bac: ee07 3a90    	vmov	s15, r3
  362bb0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362bb4: eddd 7a14    	vldr	s15, [sp, #80]
  362bb8: ee77 7a27    	vadd.f32	s15, s14, s15
  362bbc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362bc0: ab3e         	add	r3, sp, #0xf8
  362bc2: 4618         	mov	r0, r3
  362bc4: eeb0 0b46    	vmov.f64	d0, d6
  362bc8: eeb0 1b47    	vmov.f64	d1, d7
  362bcc: f7fa ff58    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5150
  362bd0: ab0a         	add	r3, sp, #0x28
  362bd2: 681b         	ldr	r3, [r3]
  362bd4: ee05 3a90    	vmov	s11, r3
  362bd8: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362bdc: eddd 7a14    	vldr	s15, [sp, #80]
  362be0: ee77 7a27    	vadd.f32	s15, s14, s15
  362be4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362be8: ab09         	add	r3, sp, #0x24
  362bea: 681b         	ldr	r3, [r3]
  362bec: ee05 3a90    	vmov	s11, r3
  362bf0: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362bf4: ab42         	add	r3, sp, #0x108
  362bf6: 4618         	mov	r0, r3
  362bf8: eeb0 0b46    	vmov.f64	d0, d6
  362bfc: eeb0 1b47    	vmov.f64	d1, d7
  362c00: f7fa ff3e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5184
  362c04: ab0a         	add	r3, sp, #0x28
  362c06: 681b         	ldr	r3, [r3]
  362c08: ee07 3a10    	vmov	s14, r3
  362c0c: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  362c10: ab09         	add	r3, sp, #0x24
  362c12: 681b         	ldr	r3, [r3]
  362c14: ee07 3a90    	vmov	s15, r3
  362c18: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362c1c: eddd 7a14    	vldr	s15, [sp, #80]
  362c20: ee77 7a67    	vsub.f32	s15, s14, s15
  362c24: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362c28: ab46         	add	r3, sp, #0x118
  362c2a: 4618         	mov	r0, r3
  362c2c: eeb0 0b46    	vmov.f64	d0, d6
  362c30: eeb0 1b47    	vmov.f64	d1, d7
  362c34: f7fa ff24    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x51b8
  362c38: f8df 3598    	ldr.w	r3, [pc, #0x598]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  362c3c: 58e3         	ldr	r3, [r4, r3]
  362c3e: 681f         	ldr	r7, [r3]
  362c40: ae36         	add	r6, sp, #0xd8
  362c42: f8df 35ac    	ldr.w	r3, [pc, #0x5ac]        @ 0x3631f0 <MapManager::addStaticBodyShape(int, int)+0x2300>
  362c46: 447b         	add	r3, pc
  362c48: 466d         	mov	r5, sp
  362c4a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  362c4c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362c50: 4638         	mov	r0, r7
  362c52: 2105         	movs	r1, #0x5
  362c54: 4632         	mov	r2, r6
  362c56: f371 fe79    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x371cf2
  362c5a: 4603         	mov	r3, r0
  362c5c: 930f         	str	r3, [sp, #0x3c]
  362c5e: 2018         	movs	r0, #0x18
  362c60: f024 f680    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x424d00
  362c64: 4603         	mov	r3, r0
  362c66: 461d         	mov	r5, r3
  362c68: 4628         	mov	r0, r5
  362c6a: f005 ff09    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x5e12
  362c6e: 9515         	str	r5, [sp, #0x54]
  362c70: 9b15         	ldr	r3, [sp, #0x54]
  362c72: 4618         	mov	r0, r3
  362c74: f235 f942    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235284
  362c78: 9b15         	ldr	r3, [sp, #0x54]
  362c7a: 9a0f         	ldr	r2, [sp, #0x3c]
  362c7c: 615a         	str	r2, [r3, #0x14]
  362c7e: ab0b         	add	r3, sp, #0x2c
  362c80: 681b         	ldr	r3, [r3]
  362c82: 6a9d         	ldr	r5, [r3, #0x28]
  362c84: f8df 356c    	ldr.w	r3, [pc, #0x56c]        @ 0x3631f4 <MapManager::addStaticBodyShape(int, int)+0x2304>
  362c88: 447b         	add	r3, pc
  362c8a: 4618         	mov	r0, r3
  362c8c: 9910         	ldr	r1, [sp, #0x40]
  362c8e: 9a11         	ldr	r2, [sp, #0x44]
  362c90: f236 ff3e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236e7c
  362c94: 4603         	mov	r3, r0
  362c96: 4618         	mov	r0, r3
  362c98: f236 fe46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x236c8c
  362c9c: 4606         	mov	r6, r0
  362c9e: ab0c         	add	r3, sp, #0x30
  362ca0: 4618         	mov	r0, r3
  362ca2: f027 f3a7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42774e
  362ca6: aa0d         	add	r2, sp, #0x34
  362ca8: ab0c         	add	r3, sp, #0x30
  362caa: 4610         	mov	r0, r2
  362cac: 4631         	mov	r1, r6
  362cae: 461a         	mov	r2, r3
  362cb0: f053 f6d6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453dac
  362cb4: ab0d         	add	r3, sp, #0x34
  362cb6: 4628         	mov	r0, r5
  362cb8: 9915         	ldr	r1, [sp, #0x54]
  362cba: 461a         	mov	r2, r3
  362cbc: f231 fe3c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x231c78
  362cc0: ab0d         	add	r3, sp, #0x34
  362cc2: 4618         	mov	r0, r3
  362cc4: f052 f626    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452c4c
  362cc8: ab0c         	add	r3, sp, #0x30
  362cca: 4618         	mov	r0, r3
  362ccc: f027 f396    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42772c
  362cd0: f002 b8eb    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x21d6
  362cd4: ab0a         	add	r3, sp, #0x28
  362cd6: 681b         	ldr	r3, [r3]
  362cd8: ee05 3a90    	vmov	s11, r3
  362cdc: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362ce0: ab09         	add	r3, sp, #0x24
  362ce2: 681b         	ldr	r3, [r3]
  362ce4: ee07 3a90    	vmov	s15, r3
  362ce8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362cec: eddd 7a14    	vldr	s15, [sp, #80]
  362cf0: ee77 7a27    	vadd.f32	s15, s14, s15
  362cf4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362cf8: ab36         	add	r3, sp, #0xd8
  362cfa: 4618         	mov	r0, r3
  362cfc: eeb0 0b46    	vmov.f64	d0, d6
  362d00: eeb0 1b47    	vmov.f64	d1, d7
  362d04: f7fa febc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5288
  362d08: ab0a         	add	r3, sp, #0x28
  362d0a: 681b         	ldr	r3, [r3]
  362d0c: ee05 3a90    	vmov	s11, r3
  362d10: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362d14: eddd 7a14    	vldr	s15, [sp, #80]
  362d18: ee77 7a27    	vadd.f32	s15, s14, s15
  362d1c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362d20: ab09         	add	r3, sp, #0x24
  362d22: 681b         	ldr	r3, [r3]
  362d24: ee07 3a90    	vmov	s15, r3
  362d28: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362d2c: eddd 7a14    	vldr	s15, [sp, #80]
  362d30: ee77 7a27    	vadd.f32	s15, s14, s15
  362d34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362d38: ab3a         	add	r3, sp, #0xe8
  362d3a: 4618         	mov	r0, r3
  362d3c: eeb0 0b46    	vmov.f64	d0, d6
  362d40: eeb0 1b47    	vmov.f64	d1, d7
  362d44: f7fa fe9c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x52c8
  362d48: ab0a         	add	r3, sp, #0x28
  362d4a: 681b         	ldr	r3, [r3]
  362d4c: ee05 3a90    	vmov	s11, r3
  362d50: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362d54: eddd 7a14    	vldr	s15, [sp, #80]
  362d58: ee77 7a27    	vadd.f32	s15, s14, s15
  362d5c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362d60: ab09         	add	r3, sp, #0x24
  362d62: 681b         	ldr	r3, [r3]
  362d64: ee05 3a90    	vmov	s11, r3
  362d68: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362d6c: ab3e         	add	r3, sp, #0xf8
  362d6e: 4618         	mov	r0, r3
  362d70: eeb0 0b46    	vmov.f64	d0, d6
  362d74: eeb0 1b47    	vmov.f64	d1, d7
  362d78: f7fa fe82    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x52fc
  362d7c: f8df 3454    	ldr.w	r3, [pc, #0x454]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  362d80: 58e3         	ldr	r3, [r4, r3]
  362d82: 681f         	ldr	r7, [r3]
  362d84: ae36         	add	r6, sp, #0xd8
  362d86: f8df 3470    	ldr.w	r3, [pc, #0x470]        @ 0x3631f8 <MapManager::addStaticBodyShape(int, int)+0x2308>
  362d8a: 447b         	add	r3, pc
  362d8c: 466d         	mov	r5, sp
  362d8e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  362d90: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362d94: 4638         	mov	r0, r7
  362d96: 2103         	movs	r1, #0x3
  362d98: 4632         	mov	r2, r6
  362d9a: f371 fdd7    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x371bae
  362d9e: 4603         	mov	r3, r0
  362da0: 930f         	str	r3, [sp, #0x3c]
  362da2: 2018         	movs	r0, #0x18
  362da4: f024 f5de    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x424bbc
  362da8: 4603         	mov	r3, r0
  362daa: 461d         	mov	r5, r3
  362dac: 4628         	mov	r0, r5
  362dae: f005 fe67    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x5cce
  362db2: 9515         	str	r5, [sp, #0x54]
  362db4: 9b15         	ldr	r3, [sp, #0x54]
  362db6: 4618         	mov	r0, r3
  362db8: f235 f8a0    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235140
  362dbc: 9b15         	ldr	r3, [sp, #0x54]
  362dbe: 9a0f         	ldr	r2, [sp, #0x3c]
  362dc0: 615a         	str	r2, [r3, #0x14]
  362dc2: ab0b         	add	r3, sp, #0x2c
  362dc4: 681b         	ldr	r3, [r3]
  362dc6: 6a9d         	ldr	r5, [r3, #0x28]
  362dc8: f8df 3430    	ldr.w	r3, [pc, #0x430]        @ 0x3631fc <MapManager::addStaticBodyShape(int, int)+0x230c>
  362dcc: 447b         	add	r3, pc
  362dce: 4618         	mov	r0, r3
  362dd0: 9910         	ldr	r1, [sp, #0x40]
  362dd2: 9a11         	ldr	r2, [sp, #0x44]
  362dd4: f236 fe9c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236d38
  362dd8: 4603         	mov	r3, r0
  362dda: 4618         	mov	r0, r3
  362ddc: f236 fda4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x236b48
  362de0: 4606         	mov	r6, r0
  362de2: ab0c         	add	r3, sp, #0x30
  362de4: 4618         	mov	r0, r3
  362de6: f027 f305    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42760a
  362dea: aa0d         	add	r2, sp, #0x34
  362dec: ab0c         	add	r3, sp, #0x30
  362dee: 4610         	mov	r0, r2
  362df0: 4631         	mov	r1, r6
  362df2: 461a         	mov	r2, r3
  362df4: f053 f634    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453c68
  362df8: ab0d         	add	r3, sp, #0x34
  362dfa: 4628         	mov	r0, r5
  362dfc: 9915         	ldr	r1, [sp, #0x54]
  362dfe: 461a         	mov	r2, r3
  362e00: f231 fd9a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x231b34
  362e04: ab0d         	add	r3, sp, #0x34
  362e06: 4618         	mov	r0, r3
  362e08: f052 f584    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452b08
  362e0c: ab0c         	add	r3, sp, #0x30
  362e0e: 4618         	mov	r0, r3
  362e10: f027 f2f4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4275e8
  362e14: f002 b849    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x2092
  362e18: ab0a         	add	r3, sp, #0x28
  362e1a: 681b         	ldr	r3, [r3]
  362e1c: ee06 3a90    	vmov	s13, r3
  362e20: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  362e24: eddd 7a14    	vldr	s15, [sp, #80]
  362e28: ee77 7a67    	vsub.f32	s15, s14, s15
  362e2c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362e30: ab09         	add	r3, sp, #0x24
  362e32: 681b         	ldr	r3, [r3]
  362e34: ee05 3a90    	vmov	s11, r3
  362e38: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362e3c: ab36         	add	r3, sp, #0xd8
  362e3e: 4618         	mov	r0, r3
  362e40: eeb0 0b46    	vmov.f64	d0, d6
  362e44: eeb0 1b47    	vmov.f64	d1, d7
  362e48: f7fa fe1a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x53cc
  362e4c: ab0a         	add	r3, sp, #0x28
  362e4e: 681b         	ldr	r3, [r3]
  362e50: ee06 3a90    	vmov	s13, r3
  362e54: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  362e58: eddd 7a14    	vldr	s15, [sp, #80]
  362e5c: ee77 7a67    	vsub.f32	s15, s14, s15
  362e60: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362e64: ab09         	add	r3, sp, #0x24
  362e66: 681b         	ldr	r3, [r3]
  362e68: ee07 3a90    	vmov	s15, r3
  362e6c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362e70: eddd 7a14    	vldr	s15, [sp, #80]
  362e74: ee77 7a27    	vadd.f32	s15, s14, s15
  362e78: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362e7c: ab3a         	add	r3, sp, #0xe8
  362e7e: 4618         	mov	r0, r3
  362e80: eeb0 0b46    	vmov.f64	d0, d6
  362e84: eeb0 1b47    	vmov.f64	d1, d7
  362e88: f7fa fdfa    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x540c
  362e8c: ab0a         	add	r3, sp, #0x28
  362e8e: 681b         	ldr	r3, [r3]
  362e90: ee05 3a90    	vmov	s11, r3
  362e94: eeb8 6be5    	vcvt.f64.s32	d6, s11
  362e98: ab09         	add	r3, sp, #0x24
  362e9a: 681b         	ldr	r3, [r3]
  362e9c: ee07 3a90    	vmov	s15, r3
  362ea0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362ea4: eddd 7a14    	vldr	s15, [sp, #80]
  362ea8: ee77 7a27    	vadd.f32	s15, s14, s15
  362eac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362eb0: ab3e         	add	r3, sp, #0xf8
  362eb2: 4618         	mov	r0, r3
  362eb4: eeb0 0b46    	vmov.f64	d0, d6
  362eb8: eeb0 1b47    	vmov.f64	d1, d7
  362ebc: f7fa fde0    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5440
  362ec0: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  362ec2: 58e3         	ldr	r3, [r4, r3]
  362ec4: 681f         	ldr	r7, [r3]
  362ec6: ae36         	add	r6, sp, #0xd8
  362ec8: 4bcd         	ldr	r3, [pc, #0x334]        @ 0x363200 <MapManager::addStaticBodyShape(int, int)+0x2310>
  362eca: 447b         	add	r3, pc
  362ecc: 466d         	mov	r5, sp
  362ece: cb0f         	ldm	r3, {r0, r1, r2, r3}
  362ed0: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  362ed4: 4638         	mov	r0, r7
  362ed6: 2103         	movs	r1, #0x3
  362ed8: 4632         	mov	r2, r6
  362eda: f371 fd37    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x371a6e
  362ede: 4603         	mov	r3, r0
  362ee0: 930f         	str	r3, [sp, #0x3c]
  362ee2: 2018         	movs	r0, #0x18
  362ee4: f024 f53e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x424a7c
  362ee8: 4603         	mov	r3, r0
  362eea: 461d         	mov	r5, r3
  362eec: 4628         	mov	r0, r5
  362eee: f005 fdc7    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x5b8e
  362ef2: 9515         	str	r5, [sp, #0x54]
  362ef4: 9b15         	ldr	r3, [sp, #0x54]
  362ef6: 4618         	mov	r0, r3
  362ef8: f235 f800    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x235000
  362efc: 9b15         	ldr	r3, [sp, #0x54]
  362efe: 9a0f         	ldr	r2, [sp, #0x3c]
  362f00: 615a         	str	r2, [r3, #0x14]
  362f02: ab0b         	add	r3, sp, #0x2c
  362f04: 681b         	ldr	r3, [r3]
  362f06: 6a9d         	ldr	r5, [r3, #0x28]
  362f08: 4bbe         	ldr	r3, [pc, #0x2f8]        @ 0x363204 <MapManager::addStaticBodyShape(int, int)+0x2314>
  362f0a: 447b         	add	r3, pc
  362f0c: 4618         	mov	r0, r3
  362f0e: 9910         	ldr	r1, [sp, #0x40]
  362f10: 9a11         	ldr	r2, [sp, #0x44]
  362f12: f236 fdfd    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236bfa
  362f16: 4603         	mov	r3, r0
  362f18: 4618         	mov	r0, r3
  362f1a: f236 fd05    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x236a0a
  362f1e: 4606         	mov	r6, r0
  362f20: ab0c         	add	r3, sp, #0x30
  362f22: 4618         	mov	r0, r3
  362f24: f027 f266    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4274cc
  362f28: aa0d         	add	r2, sp, #0x34
  362f2a: ab0c         	add	r3, sp, #0x30
  362f2c: 4610         	mov	r0, r2
  362f2e: 4631         	mov	r1, r6
  362f30: 461a         	mov	r2, r3
  362f32: f053 f595    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453b2a
  362f36: ab0d         	add	r3, sp, #0x34
  362f38: 4628         	mov	r0, r5
  362f3a: 9915         	ldr	r1, [sp, #0x54]
  362f3c: 461a         	mov	r2, r3
  362f3e: f231 fcfb    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2319f6
  362f42: ab0d         	add	r3, sp, #0x34
  362f44: 4618         	mov	r0, r3
  362f46: f052 f4e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4529ca
  362f4a: ab0c         	add	r3, sp, #0x30
  362f4c: 4618         	mov	r0, r3
  362f4e: f027 f255    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4274aa
  362f52: f001 bfaa    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1f54
  362f56: ab0a         	add	r3, sp, #0x28
  362f58: 681b         	ldr	r3, [r3]
  362f5a: ee05 3a90    	vmov	s11, r3
  362f5e: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362f62: eddd 7a14    	vldr	s15, [sp, #80]
  362f66: ee77 7a67    	vsub.f32	s15, s14, s15
  362f6a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362f6e: ab09         	add	r3, sp, #0x24
  362f70: 681b         	ldr	r3, [r3]
  362f72: ee07 3a90    	vmov	s15, r3
  362f76: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362f7a: eddd 7a14    	vldr	s15, [sp, #80]
  362f7e: ee77 7a67    	vsub.f32	s15, s14, s15
  362f82: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362f86: ab36         	add	r3, sp, #0xd8
  362f88: 4618         	mov	r0, r3
  362f8a: eeb0 0b46    	vmov.f64	d0, d6
  362f8e: eeb0 1b47    	vmov.f64	d1, d7
  362f92: f7fa fd75    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5516
  362f96: ab0a         	add	r3, sp, #0x28
  362f98: 681b         	ldr	r3, [r3]
  362f9a: ee05 3a90    	vmov	s11, r3
  362f9e: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  362fa2: eddd 7a14    	vldr	s15, [sp, #80]
  362fa6: ee77 7a67    	vsub.f32	s15, s14, s15
  362faa: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  362fae: ab09         	add	r3, sp, #0x24
  362fb0: 681b         	ldr	r3, [r3]
  362fb2: ee05 3a90    	vmov	s11, r3
  362fb6: eeb8 7be5    	vcvt.f64.s32	d7, s11
  362fba: ab3a         	add	r3, sp, #0xe8
  362fbc: 4618         	mov	r0, r3
  362fbe: eeb0 0b46    	vmov.f64	d0, d6
  362fc2: eeb0 1b47    	vmov.f64	d1, d7
  362fc6: f7fa fd5b    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x554a
  362fca: ab0a         	add	r3, sp, #0x28
  362fcc: 681b         	ldr	r3, [r3]
  362fce: ee07 3a10    	vmov	s14, r3
  362fd2: eeb8 6bc7    	vcvt.f64.s32	d6, s14
  362fd6: ab09         	add	r3, sp, #0x24
  362fd8: 681b         	ldr	r3, [r3]
  362fda: ee07 3a90    	vmov	s15, r3
  362fde: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  362fe2: eddd 7a14    	vldr	s15, [sp, #80]
  362fe6: ee77 7a67    	vsub.f32	s15, s14, s15
  362fea: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  362fee: ab3e         	add	r3, sp, #0xf8
  362ff0: 4618         	mov	r0, r3
  362ff2: eeb0 0b46    	vmov.f64	d0, d6
  362ff6: eeb0 1b47    	vmov.f64	d1, d7
  362ffa: f7fa fd41    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x557e
  362ffe: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  363000: 58e3         	ldr	r3, [r4, r3]
  363002: 681f         	ldr	r7, [r3]
  363004: ae36         	add	r6, sp, #0xd8
  363006: 4b80         	ldr	r3, [pc, #0x200]        @ 0x363208 <MapManager::addStaticBodyShape(int, int)+0x2318>
  363008: 447b         	add	r3, pc
  36300a: 466d         	mov	r5, sp
  36300c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36300e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363012: 4638         	mov	r0, r7
  363014: 2103         	movs	r1, #0x3
  363016: 4632         	mov	r2, r6
  363018: f371 fc98    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x371930
  36301c: 4603         	mov	r3, r0
  36301e: 930f         	str	r3, [sp, #0x3c]
  363020: 2018         	movs	r0, #0x18
  363022: f024 f49f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42493e
  363026: 4603         	mov	r3, r0
  363028: 461d         	mov	r5, r3
  36302a: 4628         	mov	r0, r5
  36302c: f005 fd28    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x5a50
  363030: 9515         	str	r5, [sp, #0x54]
  363032: 9b15         	ldr	r3, [sp, #0x54]
  363034: 4618         	mov	r0, r3
  363036: f234 ff61    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234ec2
  36303a: 9b15         	ldr	r3, [sp, #0x54]
  36303c: 9a0f         	ldr	r2, [sp, #0x3c]
  36303e: 615a         	str	r2, [r3, #0x14]
  363040: ab0b         	add	r3, sp, #0x2c
  363042: 681b         	ldr	r3, [r3]
  363044: 6a9d         	ldr	r5, [r3, #0x28]
  363046: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x36320c <MapManager::addStaticBodyShape(int, int)+0x231c>
  363048: 447b         	add	r3, pc
  36304a: 4618         	mov	r0, r3
  36304c: 9910         	ldr	r1, [sp, #0x40]
  36304e: 9a11         	ldr	r2, [sp, #0x44]
  363050: f236 fd5e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236abc
  363054: 4603         	mov	r3, r0
  363056: 4618         	mov	r0, r3
  363058: f236 fc66    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2368cc
  36305c: 4606         	mov	r6, r0
  36305e: ab0c         	add	r3, sp, #0x30
  363060: 4618         	mov	r0, r3
  363062: f027 f1c7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42738e
  363066: aa0d         	add	r2, sp, #0x34
  363068: ab0c         	add	r3, sp, #0x30
  36306a: 4610         	mov	r0, r2
  36306c: 4631         	mov	r1, r6
  36306e: 461a         	mov	r2, r3
  363070: f053 f4f6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4539ec
  363074: ab0d         	add	r3, sp, #0x34
  363076: 4628         	mov	r0, r5
  363078: 9915         	ldr	r1, [sp, #0x54]
  36307a: 461a         	mov	r2, r3
  36307c: f231 fc5c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2318b8
  363080: ab0d         	add	r3, sp, #0x34
  363082: 4618         	mov	r0, r3
  363084: f052 f446    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45288c
  363088: ab0c         	add	r3, sp, #0x30
  36308a: 4618         	mov	r0, r3
  36308c: f027 f1b6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42736c
  363090: f001 bf0b    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1e16
  363094: ab0a         	add	r3, sp, #0x28
  363096: 681b         	ldr	r3, [r3]
  363098: ee05 3a90    	vmov	s11, r3
  36309c: eeb8 6be5    	vcvt.f64.s32	d6, s11
  3630a0: ab09         	add	r3, sp, #0x24
  3630a2: 681b         	ldr	r3, [r3]
  3630a4: ee07 3a90    	vmov	s15, r3
  3630a8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3630ac: eddd 7a14    	vldr	s15, [sp, #80]
  3630b0: ee77 7a67    	vsub.f32	s15, s14, s15
  3630b4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3630b8: ab36         	add	r3, sp, #0xd8
  3630ba: 4618         	mov	r0, r3
  3630bc: eeb0 0b46    	vmov.f64	d0, d6
  3630c0: eeb0 1b47    	vmov.f64	d1, d7
  3630c4: f7fa fcdc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5648
  3630c8: ab0a         	add	r3, sp, #0x28
  3630ca: 681b         	ldr	r3, [r3]
  3630cc: ee05 3a90    	vmov	s11, r3
  3630d0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3630d4: eddd 7a14    	vldr	s15, [sp, #80]
  3630d8: ee77 7a27    	vadd.f32	s15, s14, s15
  3630dc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3630e0: ab09         	add	r3, sp, #0x24
  3630e2: 681b         	ldr	r3, [r3]
  3630e4: ee05 3a90    	vmov	s11, r3
  3630e8: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3630ec: ab3a         	add	r3, sp, #0xe8
  3630ee: 4618         	mov	r0, r3
  3630f0: eeb0 0b46    	vmov.f64	d0, d6
  3630f4: eeb0 1b47    	vmov.f64	d1, d7
  3630f8: f7fa fcc2    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x567c
  3630fc: ab0a         	add	r3, sp, #0x28
  3630fe: 681b         	ldr	r3, [r3]
  363100: ee06 3a90    	vmov	s13, r3
  363104: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  363108: eddd 7a14    	vldr	s15, [sp, #80]
  36310c: ee77 7a27    	vadd.f32	s15, s14, s15
  363110: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363114: ab09         	add	r3, sp, #0x24
  363116: 681b         	ldr	r3, [r3]
  363118: ee07 3a90    	vmov	s15, r3
  36311c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363120: eddd 7a14    	vldr	s15, [sp, #80]
  363124: ee77 7a67    	vsub.f32	s15, s14, s15
  363128: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36312c: ab3e         	add	r3, sp, #0xf8
  36312e: 4618         	mov	r0, r3
  363130: eeb0 0b46    	vmov.f64	d0, d6
  363134: eeb0 1b47    	vmov.f64	d1, d7
  363138: f7fa fca2    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x56bc
  36313c: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3631d4 <MapManager::addStaticBodyShape(int, int)+0x22e4>
  36313e: 58e3         	ldr	r3, [r4, r3]
  363140: 681f         	ldr	r7, [r3]
  363142: ae36         	add	r6, sp, #0xd8
  363144: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x363210 <MapManager::addStaticBodyShape(int, int)+0x2320>
  363146: 447b         	add	r3, pc
  363148: 466d         	mov	r5, sp
  36314a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36314c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363150: 4638         	mov	r0, r7
  363152: 2103         	movs	r1, #0x3
  363154: 4632         	mov	r2, r6
  363156: f371 fbf9    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3717f2
  36315a: 4603         	mov	r3, r0
  36315c: 930f         	str	r3, [sp, #0x3c]
  36315e: 2018         	movs	r0, #0x18
  363160: f024 f400    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x424800
  363164: 4603         	mov	r3, r0
  363166: 461d         	mov	r5, r3
  363168: 4628         	mov	r0, r5
  36316a: f005 fc89    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x5912
  36316e: 9515         	str	r5, [sp, #0x54]
  363170: 9b15         	ldr	r3, [sp, #0x54]
  363172: 4618         	mov	r0, r3
  363174: f234 fec2    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234d84
  363178: 9b15         	ldr	r3, [sp, #0x54]
  36317a: 9a0f         	ldr	r2, [sp, #0x3c]
  36317c: 615a         	str	r2, [r3, #0x14]
  36317e: ab0b         	add	r3, sp, #0x2c
  363180: 681b         	ldr	r3, [r3]
  363182: 6a9d         	ldr	r5, [r3, #0x28]
  363184: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x363214 <MapManager::addStaticBodyShape(int, int)+0x2324>
  363186: 447b         	add	r3, pc
  363188: 4618         	mov	r0, r3
  36318a: 9910         	ldr	r1, [sp, #0x40]
  36318c: 9a11         	ldr	r2, [sp, #0x44]
  36318e: f236 fcbf    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23697e
  363192: 4603         	mov	r3, r0
  363194: 4618         	mov	r0, r3
  363196: f236 fbc7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23678e
  36319a: 4606         	mov	r6, r0
  36319c: ab0c         	add	r3, sp, #0x30
  36319e: 4618         	mov	r0, r3
  3631a0: f027 f128    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x427250
  3631a4: aa0d         	add	r2, sp, #0x34
  3631a6: ab0c         	add	r3, sp, #0x30
  3631a8: 4610         	mov	r0, r2
  3631aa: 4631         	mov	r1, r6
  3631ac: 461a         	mov	r2, r3
  3631ae: f053 f457    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4538ae
  3631b2: ab0d         	add	r3, sp, #0x34
  3631b4: 4628         	mov	r0, r5
  3631b6: 9915         	ldr	r1, [sp, #0x54]
  3631b8: 461a         	mov	r2, r3
  3631ba: f231 fbbd    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x23177a
  3631be: ab0d         	add	r3, sp, #0x34
  3631c0: 4618         	mov	r0, r3
  3631c2: f052 f3a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45274e
  3631c6: ab0c         	add	r3, sp, #0x30
  3631c8: 4618         	mov	r0, r3
  3631ca: f027 f117    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42722e
  3631ce: f001 be6c    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1cd8
  3631d2: bf00         	nop
  3631d4: db9c         	blt	0x363110 <MapManager::addStaticBodyShape(int, int)+0x2220> @ imm = #-0xc8
  3631d6: ffff a69a    	vqshlu.s64	d26, d10, #0x3f
  3631da: 0046         	lsls	r6, r0, #0x1
  3631dc: a5f4         	adr	r5, #976 <MapManager::addStaticBodyShape(int, int)+0x23e4>
  3631de: 0046         	lsls	r6, r0, #0x1
  3631e0: a4d6         	adr	r4, #856 <MapManager::addStaticBodyShape(int, int)+0x23ca>
  3631e2: 0046         	lsls	r6, r0, #0x1
  3631e4: a430         	adr	r4, #192 <MapManager::addStaticBodyShape(int, int)+0x2328>
  3631e6: 0046         	lsls	r6, r0, #0x1
  3631e8: a312         	adr	r3, #72 <MapManager::addStaticBodyShape(int, int)+0x230e>
  3631ea: 0046         	lsls	r6, r0, #0x1
  3631ec: a26c         	adr	r2, #432 <MapManager::addStaticBodyShape(int, int)+0x236c>
  3631ee: 0046         	lsls	r6, r0, #0x1
  3631f0: a14e         	adr	r1, #312 <MapManager::addStaticBodyShape(int, int)+0x2352>
  3631f2: 0046         	lsls	r6, r0, #0x1
  3631f4: a0a8         	adr	r0, #672 <MapManager::addStaticBodyShape(int, int)+0x23b0>
  3631f6: 0046         	lsls	r6, r0, #0x1
  3631f8: a00a         	adr	r0, #40 <MapManager::addStaticBodyShape(int, int)+0x2316>
  3631fa: 0046         	lsls	r6, r0, #0x1
  3631fc: 9f64         	ldr	r7, [sp, #0x190]
  3631fe: 0046         	lsls	r6, r0, #0x1
  363200: 9eca         	ldr	r6, [sp, #0x328]
  363202: 0046         	lsls	r6, r0, #0x1
  363204: 9e26         	ldr	r6, [sp, #0x98]
  363206: 0046         	lsls	r6, r0, #0x1
  363208: 9d8c         	ldr	r5, [sp, #0x230]
  36320a: 0046         	lsls	r6, r0, #0x1
  36320c: 9ce8         	ldr	r4, [sp, #0x3a0]
  36320e: 0046         	lsls	r6, r0, #0x1
  363210: 9c4e         	ldr	r4, [sp, #0x138]
  363212: 0046         	lsls	r6, r0, #0x1
  363214: 9baa         	ldr	r3, [sp, #0x2a8]
  363216: 0046         	lsls	r6, r0, #0x1
  363218: ab0a         	add	r3, sp, #0x28
  36321a: 681b         	ldr	r3, [r3]
  36321c: ee05 3a90    	vmov	s11, r3
  363220: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363224: eddd 7a14    	vldr	s15, [sp, #80]
  363228: ee77 7a67    	vsub.f32	s15, s14, s15
  36322c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363230: ab09         	add	r3, sp, #0x24
  363232: 681b         	ldr	r3, [r3]
  363234: ee07 3a90    	vmov	s15, r3
  363238: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36323c: eddd 7a14    	vldr	s15, [sp, #80]
  363240: ee77 7a27    	vadd.f32	s15, s14, s15
  363244: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363248: ab36         	add	r3, sp, #0xd8
  36324a: 4618         	mov	r0, r3
  36324c: eeb0 0b46    	vmov.f64	d0, d6
  363250: eeb0 1b47    	vmov.f64	d1, d7
  363254: f7fa fc14    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x57d8
  363258: ab0a         	add	r3, sp, #0x28
  36325a: 681b         	ldr	r3, [r3]
  36325c: ee05 3a90    	vmov	s11, r3
  363260: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363264: eddd 7a14    	vldr	s15, [sp, #80]
  363268: ee77 7a27    	vadd.f32	s15, s14, s15
  36326c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363270: ab09         	add	r3, sp, #0x24
  363272: 681b         	ldr	r3, [r3]
  363274: ee07 3a90    	vmov	s15, r3
  363278: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36327c: eddd 7a14    	vldr	s15, [sp, #80]
  363280: ee77 7a27    	vadd.f32	s15, s14, s15
  363284: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363288: ab3a         	add	r3, sp, #0xe8
  36328a: 4618         	mov	r0, r3
  36328c: eeb0 0b46    	vmov.f64	d0, d6
  363290: eeb0 1b47    	vmov.f64	d1, d7
  363294: f7fa fbf4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5818
  363298: ab0a         	add	r3, sp, #0x28
  36329a: 681b         	ldr	r3, [r3]
  36329c: ee05 3a90    	vmov	s11, r3
  3632a0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3632a4: eddd 7a14    	vldr	s15, [sp, #80]
  3632a8: ee77 7a27    	vadd.f32	s15, s14, s15
  3632ac: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3632b0: ab09         	add	r3, sp, #0x24
  3632b2: 681b         	ldr	r3, [r3]
  3632b4: ee05 3a90    	vmov	s11, r3
  3632b8: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3632bc: ab3e         	add	r3, sp, #0xf8
  3632be: 4618         	mov	r0, r3
  3632c0: eeb0 0b46    	vmov.f64	d0, d6
  3632c4: eeb0 1b47    	vmov.f64	d1, d7
  3632c8: f7fa fbda    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x584c
  3632cc: f8df 39b8    	ldr.w	r3, [pc, #0x9b8]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  3632d0: 58e3         	ldr	r3, [r4, r3]
  3632d2: 681f         	ldr	r7, [r3]
  3632d4: ae36         	add	r6, sp, #0xd8
  3632d6: f8df 39b4    	ldr.w	r3, [pc, #0x9b4]        @ 0x363c8c <MapManager::addStaticBodyShape(int, int)+0x2d9c>
  3632da: 447b         	add	r3, pc
  3632dc: 466d         	mov	r5, sp
  3632de: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3632e0: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3632e4: 4638         	mov	r0, r7
  3632e6: 2103         	movs	r1, #0x3
  3632e8: 4632         	mov	r2, r6
  3632ea: f371 fb2f    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37165e
  3632ee: 4603         	mov	r3, r0
  3632f0: 930f         	str	r3, [sp, #0x3c]
  3632f2: 2018         	movs	r0, #0x18
  3632f4: f024 f336    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42466c
  3632f8: 4603         	mov	r3, r0
  3632fa: 461d         	mov	r5, r3
  3632fc: 4628         	mov	r0, r5
  3632fe: f005 fbbf    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x577e
  363302: 9515         	str	r5, [sp, #0x54]
  363304: 9b15         	ldr	r3, [sp, #0x54]
  363306: 4618         	mov	r0, r3
  363308: f234 fdf8    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234bf0
  36330c: 9b15         	ldr	r3, [sp, #0x54]
  36330e: 9a0f         	ldr	r2, [sp, #0x3c]
  363310: 615a         	str	r2, [r3, #0x14]
  363312: ab0b         	add	r3, sp, #0x2c
  363314: 681b         	ldr	r3, [r3]
  363316: 6a9d         	ldr	r5, [r3, #0x28]
  363318: f8df 3974    	ldr.w	r3, [pc, #0x974]        @ 0x363c90 <MapManager::addStaticBodyShape(int, int)+0x2da0>
  36331c: 447b         	add	r3, pc
  36331e: 4618         	mov	r0, r3
  363320: 9910         	ldr	r1, [sp, #0x40]
  363322: 9a11         	ldr	r2, [sp, #0x44]
  363324: f236 fbf4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2367e8
  363328: 4603         	mov	r3, r0
  36332a: 4618         	mov	r0, r3
  36332c: f236 fafc    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2365f8
  363330: 4606         	mov	r6, r0
  363332: ab0c         	add	r3, sp, #0x30
  363334: 4618         	mov	r0, r3
  363336: f027 f05d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4270ba
  36333a: aa0d         	add	r2, sp, #0x34
  36333c: ab0c         	add	r3, sp, #0x30
  36333e: 4610         	mov	r0, r2
  363340: 4631         	mov	r1, r6
  363342: 461a         	mov	r2, r3
  363344: f053 f38c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453718
  363348: ab0d         	add	r3, sp, #0x34
  36334a: 4628         	mov	r0, r5
  36334c: 9915         	ldr	r1, [sp, #0x54]
  36334e: 461a         	mov	r2, r3
  363350: f231 faf2    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2315e4
  363354: ab0d         	add	r3, sp, #0x34
  363356: 4618         	mov	r0, r3
  363358: f052 f2dc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4525b8
  36335c: ab0c         	add	r3, sp, #0x30
  36335e: 4618         	mov	r0, r3
  363360: f027 f04c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x427098
  363364: f001 bda1    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1b42
  363368: ab0a         	add	r3, sp, #0x28
  36336a: 681b         	ldr	r3, [r3]
  36336c: ee06 3a90    	vmov	s13, r3
  363370: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  363374: eddd 7a14    	vldr	s15, [sp, #80]
  363378: ee77 7a67    	vsub.f32	s15, s14, s15
  36337c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363380: ab09         	add	r3, sp, #0x24
  363382: 681b         	ldr	r3, [r3]
  363384: ee05 3a90    	vmov	s11, r3
  363388: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36338c: ab36         	add	r3, sp, #0xd8
  36338e: 4618         	mov	r0, r3
  363390: eeb0 0b46    	vmov.f64	d0, d6
  363394: eeb0 1b47    	vmov.f64	d1, d7
  363398: f7fa fb72    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x591c
  36339c: ab0a         	add	r3, sp, #0x28
  36339e: 681b         	ldr	r3, [r3]
  3633a0: ee06 3a90    	vmov	s13, r3
  3633a4: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3633a8: eddd 7a14    	vldr	s15, [sp, #80]
  3633ac: ee77 7a67    	vsub.f32	s15, s14, s15
  3633b0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3633b4: ab09         	add	r3, sp, #0x24
  3633b6: 681b         	ldr	r3, [r3]
  3633b8: ee07 3a90    	vmov	s15, r3
  3633bc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3633c0: eddd 7a14    	vldr	s15, [sp, #80]
  3633c4: ee77 7a27    	vadd.f32	s15, s14, s15
  3633c8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3633cc: ab3a         	add	r3, sp, #0xe8
  3633ce: 4618         	mov	r0, r3
  3633d0: eeb0 0b46    	vmov.f64	d0, d6
  3633d4: eeb0 1b47    	vmov.f64	d1, d7
  3633d8: f7fa fb52    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x595c
  3633dc: ab0a         	add	r3, sp, #0x28
  3633de: 681b         	ldr	r3, [r3]
  3633e0: ee05 3a90    	vmov	s11, r3
  3633e4: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3633e8: eddd 7a14    	vldr	s15, [sp, #80]
  3633ec: ee77 7a27    	vadd.f32	s15, s14, s15
  3633f0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3633f4: ab09         	add	r3, sp, #0x24
  3633f6: 681b         	ldr	r3, [r3]
  3633f8: ee07 3a90    	vmov	s15, r3
  3633fc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363400: eddd 7a14    	vldr	s15, [sp, #80]
  363404: ee77 7a27    	vadd.f32	s15, s14, s15
  363408: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36340c: ab3e         	add	r3, sp, #0xf8
  36340e: 4618         	mov	r0, r3
  363410: eeb0 0b46    	vmov.f64	d0, d6
  363414: eeb0 1b47    	vmov.f64	d1, d7
  363418: f7fa fb32    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x599c
  36341c: f8df 3868    	ldr.w	r3, [pc, #0x868]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  363420: 58e3         	ldr	r3, [r4, r3]
  363422: 681f         	ldr	r7, [r3]
  363424: ae36         	add	r6, sp, #0xd8
  363426: f8df 386c    	ldr.w	r3, [pc, #0x86c]        @ 0x363c94 <MapManager::addStaticBodyShape(int, int)+0x2da4>
  36342a: 447b         	add	r3, pc
  36342c: 466d         	mov	r5, sp
  36342e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363430: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363434: 4638         	mov	r0, r7
  363436: 2103         	movs	r1, #0x3
  363438: 4632         	mov	r2, r6
  36343a: f371 fa87    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37150e
  36343e: 4603         	mov	r3, r0
  363440: 930f         	str	r3, [sp, #0x3c]
  363442: 2018         	movs	r0, #0x18
  363444: f024 f28e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42451c
  363448: 4603         	mov	r3, r0
  36344a: 461d         	mov	r5, r3
  36344c: 4628         	mov	r0, r5
  36344e: f005 fb17    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x562e
  363452: 9515         	str	r5, [sp, #0x54]
  363454: 9b15         	ldr	r3, [sp, #0x54]
  363456: 4618         	mov	r0, r3
  363458: f234 fd50    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234aa0
  36345c: 9b15         	ldr	r3, [sp, #0x54]
  36345e: 9a0f         	ldr	r2, [sp, #0x3c]
  363460: 615a         	str	r2, [r3, #0x14]
  363462: ab0b         	add	r3, sp, #0x2c
  363464: 681b         	ldr	r3, [r3]
  363466: 6a9d         	ldr	r5, [r3, #0x28]
  363468: f8df 382c    	ldr.w	r3, [pc, #0x82c]        @ 0x363c98 <MapManager::addStaticBodyShape(int, int)+0x2da8>
  36346c: 447b         	add	r3, pc
  36346e: 4618         	mov	r0, r3
  363470: 9910         	ldr	r1, [sp, #0x40]
  363472: 9a11         	ldr	r2, [sp, #0x44]
  363474: f236 fb4c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236698
  363478: 4603         	mov	r3, r0
  36347a: 4618         	mov	r0, r3
  36347c: f236 fa54    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2364a8
  363480: 4606         	mov	r6, r0
  363482: ab0c         	add	r3, sp, #0x30
  363484: 4618         	mov	r0, r3
  363486: f026 f7b5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x426f6a
  36348a: aa0d         	add	r2, sp, #0x34
  36348c: ab0c         	add	r3, sp, #0x30
  36348e: 4610         	mov	r0, r2
  363490: 4631         	mov	r1, r6
  363492: 461a         	mov	r2, r3
  363494: f053 f2e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4535c8
  363498: ab0d         	add	r3, sp, #0x34
  36349a: 4628         	mov	r0, r5
  36349c: 9915         	ldr	r1, [sp, #0x54]
  36349e: 461a         	mov	r2, r3
  3634a0: f231 fa4a    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x231494
  3634a4: ab0d         	add	r3, sp, #0x34
  3634a6: 4618         	mov	r0, r3
  3634a8: f052 f234    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452468
  3634ac: ab0c         	add	r3, sp, #0x30
  3634ae: 4618         	mov	r0, r3
  3634b0: f026 f7a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x426f48
  3634b4: f001 bcf9    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x19f2
  3634b8: ab0a         	add	r3, sp, #0x28
  3634ba: 681b         	ldr	r3, [r3]
  3634bc: ee05 3a90    	vmov	s11, r3
  3634c0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3634c4: eddd 7a14    	vldr	s15, [sp, #80]
  3634c8: ee77 7a67    	vsub.f32	s15, s14, s15
  3634cc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3634d0: ab09         	add	r3, sp, #0x24
  3634d2: 681b         	ldr	r3, [r3]
  3634d4: ee07 3a90    	vmov	s15, r3
  3634d8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3634dc: eddd 7a14    	vldr	s15, [sp, #80]
  3634e0: ee77 7a67    	vsub.f32	s15, s14, s15
  3634e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3634e8: ab36         	add	r3, sp, #0xd8
  3634ea: 4618         	mov	r0, r3
  3634ec: eeb0 0b46    	vmov.f64	d0, d6
  3634f0: eeb0 1b47    	vmov.f64	d1, d7
  3634f4: f7fa fac4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5a78
  3634f8: ab0a         	add	r3, sp, #0x28
  3634fa: 681b         	ldr	r3, [r3]
  3634fc: ee05 3a90    	vmov	s11, r3
  363500: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363504: eddd 7a14    	vldr	s15, [sp, #80]
  363508: ee77 7a67    	vsub.f32	s15, s14, s15
  36350c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363510: ab09         	add	r3, sp, #0x24
  363512: 681b         	ldr	r3, [r3]
  363514: ee07 3a90    	vmov	s15, r3
  363518: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36351c: eddd 7a14    	vldr	s15, [sp, #80]
  363520: ee77 7a27    	vadd.f32	s15, s14, s15
  363524: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363528: ab3a         	add	r3, sp, #0xe8
  36352a: 4618         	mov	r0, r3
  36352c: eeb0 0b46    	vmov.f64	d0, d6
  363530: eeb0 1b47    	vmov.f64	d1, d7
  363534: f7fa faa4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5ab8
  363538: ab0a         	add	r3, sp, #0x28
  36353a: 681b         	ldr	r3, [r3]
  36353c: ee05 3a90    	vmov	s11, r3
  363540: eeb8 6be5    	vcvt.f64.s32	d6, s11
  363544: ab09         	add	r3, sp, #0x24
  363546: 681b         	ldr	r3, [r3]
  363548: ee07 3a90    	vmov	s15, r3
  36354c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363550: eddd 7a14    	vldr	s15, [sp, #80]
  363554: ee77 7a27    	vadd.f32	s15, s14, s15
  363558: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36355c: ab3e         	add	r3, sp, #0xf8
  36355e: 4618         	mov	r0, r3
  363560: eeb0 0b46    	vmov.f64	d0, d6
  363564: eeb0 1b47    	vmov.f64	d1, d7
  363568: f7fa fa8a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5aec
  36356c: f8df 3718    	ldr.w	r3, [pc, #0x718]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  363570: 58e3         	ldr	r3, [r4, r3]
  363572: 681f         	ldr	r7, [r3]
  363574: ae36         	add	r6, sp, #0xd8
  363576: f8df 3724    	ldr.w	r3, [pc, #0x724]        @ 0x363c9c <MapManager::addStaticBodyShape(int, int)+0x2dac>
  36357a: 447b         	add	r3, pc
  36357c: 466d         	mov	r5, sp
  36357e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363580: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363584: 4638         	mov	r0, r7
  363586: 2103         	movs	r1, #0x3
  363588: 4632         	mov	r2, r6
  36358a: f371 f9df    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3713be
  36358e: 4603         	mov	r3, r0
  363590: 930f         	str	r3, [sp, #0x3c]
  363592: 2018         	movs	r0, #0x18
  363594: f024 f1e6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4243cc
  363598: 4603         	mov	r3, r0
  36359a: 461d         	mov	r5, r3
  36359c: 4628         	mov	r0, r5
  36359e: f005 fa6f    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x54de
  3635a2: 9515         	str	r5, [sp, #0x54]
  3635a4: 9b15         	ldr	r3, [sp, #0x54]
  3635a6: 4618         	mov	r0, r3
  3635a8: f234 fca8    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234950
  3635ac: 9b15         	ldr	r3, [sp, #0x54]
  3635ae: 9a0f         	ldr	r2, [sp, #0x3c]
  3635b0: 615a         	str	r2, [r3, #0x14]
  3635b2: ab0b         	add	r3, sp, #0x2c
  3635b4: 681b         	ldr	r3, [r3]
  3635b6: 6a9d         	ldr	r5, [r3, #0x28]
  3635b8: f8df 36e4    	ldr.w	r3, [pc, #0x6e4]        @ 0x363ca0 <MapManager::addStaticBodyShape(int, int)+0x2db0>
  3635bc: 447b         	add	r3, pc
  3635be: 4618         	mov	r0, r3
  3635c0: 9910         	ldr	r1, [sp, #0x40]
  3635c2: 9a11         	ldr	r2, [sp, #0x44]
  3635c4: f236 faa4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236548
  3635c8: 4603         	mov	r3, r0
  3635ca: 4618         	mov	r0, r3
  3635cc: f236 f9ac    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x236358
  3635d0: 4606         	mov	r6, r0
  3635d2: ab0c         	add	r3, sp, #0x30
  3635d4: 4618         	mov	r0, r3
  3635d6: f026 f70d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x426e1a
  3635da: aa0d         	add	r2, sp, #0x34
  3635dc: ab0c         	add	r3, sp, #0x30
  3635de: 4610         	mov	r0, r2
  3635e0: 4631         	mov	r1, r6
  3635e2: 461a         	mov	r2, r3
  3635e4: f053 f23c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453478
  3635e8: ab0d         	add	r3, sp, #0x34
  3635ea: 4628         	mov	r0, r5
  3635ec: 9915         	ldr	r1, [sp, #0x54]
  3635ee: 461a         	mov	r2, r3
  3635f0: f231 f9a2    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x231344
  3635f4: ab0d         	add	r3, sp, #0x34
  3635f6: 4618         	mov	r0, r3
  3635f8: f052 f18c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452318
  3635fc: ab0c         	add	r3, sp, #0x30
  3635fe: 4618         	mov	r0, r3
  363600: f026 f6fc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x426df8
  363604: f001 bc51    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x18a2
  363608: ab0a         	add	r3, sp, #0x28
  36360a: 681b         	ldr	r3, [r3]
  36360c: ee05 3a90    	vmov	s11, r3
  363610: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363614: eddd 7a14    	vldr	s15, [sp, #80]
  363618: ee77 7a67    	vsub.f32	s15, s14, s15
  36361c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363620: ab09         	add	r3, sp, #0x24
  363622: 681b         	ldr	r3, [r3]
  363624: ee07 3a90    	vmov	s15, r3
  363628: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36362c: eddd 7a14    	vldr	s15, [sp, #80]
  363630: ee77 7a67    	vsub.f32	s15, s14, s15
  363634: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363638: ab36         	add	r3, sp, #0xd8
  36363a: 4618         	mov	r0, r3
  36363c: eeb0 0b46    	vmov.f64	d0, d6
  363640: eeb0 1b47    	vmov.f64	d1, d7
  363644: f7fa fa1c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5bc8
  363648: ab0a         	add	r3, sp, #0x28
  36364a: 681b         	ldr	r3, [r3]
  36364c: ee05 3a90    	vmov	s11, r3
  363650: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363654: eddd 7a14    	vldr	s15, [sp, #80]
  363658: ee77 7a67    	vsub.f32	s15, s14, s15
  36365c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363660: ab09         	add	r3, sp, #0x24
  363662: 681b         	ldr	r3, [r3]
  363664: ee07 3a90    	vmov	s15, r3
  363668: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36366c: eddd 7a14    	vldr	s15, [sp, #80]
  363670: ee77 7a27    	vadd.f32	s15, s14, s15
  363674: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363678: ab3a         	add	r3, sp, #0xe8
  36367a: 4618         	mov	r0, r3
  36367c: eeb0 0b46    	vmov.f64	d0, d6
  363680: eeb0 1b47    	vmov.f64	d1, d7
  363684: f7fa f9fc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5c08
  363688: ab0a         	add	r3, sp, #0x28
  36368a: 681b         	ldr	r3, [r3]
  36368c: ee05 3a90    	vmov	s11, r3
  363690: eeb8 6be5    	vcvt.f64.s32	d6, s11
  363694: ab09         	add	r3, sp, #0x24
  363696: 681b         	ldr	r3, [r3]
  363698: ee07 3a90    	vmov	s15, r3
  36369c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3636a0: eddd 7a14    	vldr	s15, [sp, #80]
  3636a4: ee77 7a67    	vsub.f32	s15, s14, s15
  3636a8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3636ac: ab3e         	add	r3, sp, #0xf8
  3636ae: 4618         	mov	r0, r3
  3636b0: eeb0 0b46    	vmov.f64	d0, d6
  3636b4: eeb0 1b47    	vmov.f64	d1, d7
  3636b8: f7fa f9e2    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5c3c
  3636bc: f8df 35c8    	ldr.w	r3, [pc, #0x5c8]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  3636c0: 58e3         	ldr	r3, [r4, r3]
  3636c2: 681f         	ldr	r7, [r3]
  3636c4: ae36         	add	r6, sp, #0xd8
  3636c6: f8df 35dc    	ldr.w	r3, [pc, #0x5dc]        @ 0x363ca4 <MapManager::addStaticBodyShape(int, int)+0x2db4>
  3636ca: 447b         	add	r3, pc
  3636cc: 466d         	mov	r5, sp
  3636ce: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3636d0: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3636d4: 4638         	mov	r0, r7
  3636d6: 2103         	movs	r1, #0x3
  3636d8: 4632         	mov	r2, r6
  3636da: f371 f937    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37126e
  3636de: 4603         	mov	r3, r0
  3636e0: 930f         	str	r3, [sp, #0x3c]
  3636e2: 2018         	movs	r0, #0x18
  3636e4: f024 f13e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42427c
  3636e8: 4603         	mov	r3, r0
  3636ea: 461d         	mov	r5, r3
  3636ec: 4628         	mov	r0, r5
  3636ee: f005 f9c7    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x538e
  3636f2: 9515         	str	r5, [sp, #0x54]
  3636f4: 9b15         	ldr	r3, [sp, #0x54]
  3636f6: 4618         	mov	r0, r3
  3636f8: f234 fc00    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234800
  3636fc: 9b15         	ldr	r3, [sp, #0x54]
  3636fe: 9a0f         	ldr	r2, [sp, #0x3c]
  363700: 615a         	str	r2, [r3, #0x14]
  363702: ab0b         	add	r3, sp, #0x2c
  363704: 681b         	ldr	r3, [r3]
  363706: 6a9d         	ldr	r5, [r3, #0x28]
  363708: f8df 359c    	ldr.w	r3, [pc, #0x59c]        @ 0x363ca8 <MapManager::addStaticBodyShape(int, int)+0x2db8>
  36370c: 447b         	add	r3, pc
  36370e: 4618         	mov	r0, r3
  363710: 9910         	ldr	r1, [sp, #0x40]
  363712: 9a11         	ldr	r2, [sp, #0x44]
  363714: f236 f9fc    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2363f8
  363718: 4603         	mov	r3, r0
  36371a: 4618         	mov	r0, r3
  36371c: f236 f904    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x236208
  363720: 4606         	mov	r6, r0
  363722: ab0c         	add	r3, sp, #0x30
  363724: 4618         	mov	r0, r3
  363726: f026 f665    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x426cca
  36372a: aa0d         	add	r2, sp, #0x34
  36372c: ab0c         	add	r3, sp, #0x30
  36372e: 4610         	mov	r0, r2
  363730: 4631         	mov	r1, r6
  363732: 461a         	mov	r2, r3
  363734: f053 f194    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x453328
  363738: ab0d         	add	r3, sp, #0x34
  36373a: 4628         	mov	r0, r5
  36373c: 9915         	ldr	r1, [sp, #0x54]
  36373e: 461a         	mov	r2, r3
  363740: f231 f8fa    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2311f4
  363744: ab0d         	add	r3, sp, #0x34
  363746: 4618         	mov	r0, r3
  363748: f052 f0e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4521c8
  36374c: ab0c         	add	r3, sp, #0x30
  36374e: 4618         	mov	r0, r3
  363750: f026 f654    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x426ca8
  363754: f001 bba9    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1752
  363758: ab0a         	add	r3, sp, #0x28
  36375a: 681b         	ldr	r3, [r3]
  36375c: ee05 3a90    	vmov	s11, r3
  363760: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363764: eddd 7a14    	vldr	s15, [sp, #80]
  363768: ee77 7a67    	vsub.f32	s15, s14, s15
  36376c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363770: ab09         	add	r3, sp, #0x24
  363772: 681b         	ldr	r3, [r3]
  363774: ee07 3a90    	vmov	s15, r3
  363778: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36377c: eddd 7a14    	vldr	s15, [sp, #80]
  363780: ee77 7a67    	vsub.f32	s15, s14, s15
  363784: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363788: ab36         	add	r3, sp, #0xd8
  36378a: 4618         	mov	r0, r3
  36378c: eeb0 0b46    	vmov.f64	d0, d6
  363790: eeb0 1b47    	vmov.f64	d1, d7
  363794: f7fa f974    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5d18
  363798: ab0a         	add	r3, sp, #0x28
  36379a: 681b         	ldr	r3, [r3]
  36379c: ee05 3a90    	vmov	s11, r3
  3637a0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3637a4: eddd 7a14    	vldr	s15, [sp, #80]
  3637a8: ee77 7a67    	vsub.f32	s15, s14, s15
  3637ac: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3637b0: ab09         	add	r3, sp, #0x24
  3637b2: 681b         	ldr	r3, [r3]
  3637b4: ee05 3a90    	vmov	s11, r3
  3637b8: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3637bc: ab3a         	add	r3, sp, #0xe8
  3637be: 4618         	mov	r0, r3
  3637c0: eeb0 0b46    	vmov.f64	d0, d6
  3637c4: eeb0 1b47    	vmov.f64	d1, d7
  3637c8: f7fa f95a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5d4c
  3637cc: ab0a         	add	r3, sp, #0x28
  3637ce: 681b         	ldr	r3, [r3]
  3637d0: ee06 3a90    	vmov	s13, r3
  3637d4: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3637d8: eddd 7a14    	vldr	s15, [sp, #80]
  3637dc: ee77 7a27    	vadd.f32	s15, s14, s15
  3637e0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3637e4: ab09         	add	r3, sp, #0x24
  3637e6: 681b         	ldr	r3, [r3]
  3637e8: ee07 3a90    	vmov	s15, r3
  3637ec: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3637f0: eddd 7a14    	vldr	s15, [sp, #80]
  3637f4: ee77 7a67    	vsub.f32	s15, s14, s15
  3637f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3637fc: ab3e         	add	r3, sp, #0xf8
  3637fe: 4618         	mov	r0, r3
  363800: eeb0 0b46    	vmov.f64	d0, d6
  363804: eeb0 1b47    	vmov.f64	d1, d7
  363808: f7fa f93a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5d8c
  36380c: f8df 3478    	ldr.w	r3, [pc, #0x478]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  363810: 58e3         	ldr	r3, [r4, r3]
  363812: 681f         	ldr	r7, [r3]
  363814: ae36         	add	r6, sp, #0xd8
  363816: f8df 3494    	ldr.w	r3, [pc, #0x494]        @ 0x363cac <MapManager::addStaticBodyShape(int, int)+0x2dbc>
  36381a: 447b         	add	r3, pc
  36381c: 466d         	mov	r5, sp
  36381e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363820: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363824: 4638         	mov	r0, r7
  363826: 2103         	movs	r1, #0x3
  363828: 4632         	mov	r2, r6
  36382a: f371 f88f    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37111e
  36382e: 4603         	mov	r3, r0
  363830: 930f         	str	r3, [sp, #0x3c]
  363832: 2018         	movs	r0, #0x18
  363834: f024 f096    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42412c
  363838: 4603         	mov	r3, r0
  36383a: 461d         	mov	r5, r3
  36383c: 4628         	mov	r0, r5
  36383e: f005 f91f    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x523e
  363842: 9515         	str	r5, [sp, #0x54]
  363844: 9b15         	ldr	r3, [sp, #0x54]
  363846: 4618         	mov	r0, r3
  363848: f234 fb58    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2346b0
  36384c: 9b15         	ldr	r3, [sp, #0x54]
  36384e: 9a0f         	ldr	r2, [sp, #0x3c]
  363850: 615a         	str	r2, [r3, #0x14]
  363852: ab0b         	add	r3, sp, #0x2c
  363854: 681b         	ldr	r3, [r3]
  363856: 6a9d         	ldr	r5, [r3, #0x28]
  363858: f8df 3454    	ldr.w	r3, [pc, #0x454]        @ 0x363cb0 <MapManager::addStaticBodyShape(int, int)+0x2dc0>
  36385c: 447b         	add	r3, pc
  36385e: 4618         	mov	r0, r3
  363860: 9910         	ldr	r1, [sp, #0x40]
  363862: 9a11         	ldr	r2, [sp, #0x44]
  363864: f236 f954    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2362a8
  363868: 4603         	mov	r3, r0
  36386a: 4618         	mov	r0, r3
  36386c: f236 f85c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2360b8
  363870: 4606         	mov	r6, r0
  363872: ab0c         	add	r3, sp, #0x30
  363874: 4618         	mov	r0, r3
  363876: f026 f5bd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x426b7a
  36387a: aa0d         	add	r2, sp, #0x34
  36387c: ab0c         	add	r3, sp, #0x30
  36387e: 4610         	mov	r0, r2
  363880: 4631         	mov	r1, r6
  363882: 461a         	mov	r2, r3
  363884: f053 f0ec    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4531d8
  363888: ab0d         	add	r3, sp, #0x34
  36388a: 4628         	mov	r0, r5
  36388c: 9915         	ldr	r1, [sp, #0x54]
  36388e: 461a         	mov	r2, r3
  363890: f231 f852    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2310a4
  363894: ab0d         	add	r3, sp, #0x34
  363896: 4618         	mov	r0, r3
  363898: f052 f03c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x452078
  36389c: ab0c         	add	r3, sp, #0x30
  36389e: 4618         	mov	r0, r3
  3638a0: f026 f5ac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x426b58
  3638a4: f001 bb01    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1602
  3638a8: ab0a         	add	r3, sp, #0x28
  3638aa: 681b         	ldr	r3, [r3]
  3638ac: ee05 3a90    	vmov	s11, r3
  3638b0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3638b4: eddd 7a14    	vldr	s15, [sp, #80]
  3638b8: ee77 7a67    	vsub.f32	s15, s14, s15
  3638bc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3638c0: ab09         	add	r3, sp, #0x24
  3638c2: 681b         	ldr	r3, [r3]
  3638c4: ee07 3a90    	vmov	s15, r3
  3638c8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3638cc: eddd 7a14    	vldr	s15, [sp, #80]
  3638d0: ee77 7a67    	vsub.f32	s15, s14, s15
  3638d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3638d8: ab36         	add	r3, sp, #0xd8
  3638da: 4618         	mov	r0, r3
  3638dc: eeb0 0b46    	vmov.f64	d0, d6
  3638e0: eeb0 1b47    	vmov.f64	d1, d7
  3638e4: f7fa f8cc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5e68
  3638e8: ab0a         	add	r3, sp, #0x28
  3638ea: 681b         	ldr	r3, [r3]
  3638ec: ee05 3a90    	vmov	s11, r3
  3638f0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3638f4: eddd 7a14    	vldr	s15, [sp, #80]
  3638f8: ee77 7a27    	vadd.f32	s15, s14, s15
  3638fc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363900: ab09         	add	r3, sp, #0x24
  363902: 681b         	ldr	r3, [r3]
  363904: ee05 3a90    	vmov	s11, r3
  363908: eeb8 7be5    	vcvt.f64.s32	d7, s11
  36390c: ab3a         	add	r3, sp, #0xe8
  36390e: 4618         	mov	r0, r3
  363910: eeb0 0b46    	vmov.f64	d0, d6
  363914: eeb0 1b47    	vmov.f64	d1, d7
  363918: f7fa f8b2    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5e9c
  36391c: ab0a         	add	r3, sp, #0x28
  36391e: 681b         	ldr	r3, [r3]
  363920: ee06 3a90    	vmov	s13, r3
  363924: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  363928: eddd 7a14    	vldr	s15, [sp, #80]
  36392c: ee77 7a27    	vadd.f32	s15, s14, s15
  363930: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363934: ab09         	add	r3, sp, #0x24
  363936: 681b         	ldr	r3, [r3]
  363938: ee07 3a90    	vmov	s15, r3
  36393c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363940: eddd 7a14    	vldr	s15, [sp, #80]
  363944: ee77 7a67    	vsub.f32	s15, s14, s15
  363948: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  36394c: ab3e         	add	r3, sp, #0xf8
  36394e: 4618         	mov	r0, r3
  363950: eeb0 0b46    	vmov.f64	d0, d6
  363954: eeb0 1b47    	vmov.f64	d1, d7
  363958: f7fa f892    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5edc
  36395c: 4bca         	ldr	r3, [pc, #0x328]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  36395e: 58e3         	ldr	r3, [r4, r3]
  363960: 681f         	ldr	r7, [r3]
  363962: ae36         	add	r6, sp, #0xd8
  363964: 4bd3         	ldr	r3, [pc, #0x34c]        @ 0x363cb4 <MapManager::addStaticBodyShape(int, int)+0x2dc4>
  363966: 447b         	add	r3, pc
  363968: 466d         	mov	r5, sp
  36396a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36396c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363970: 4638         	mov	r0, r7
  363972: 2103         	movs	r1, #0x3
  363974: 4632         	mov	r2, r6
  363976: f370 ffe9    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370fd2
  36397a: 4603         	mov	r3, r0
  36397c: 930f         	str	r3, [sp, #0x3c]
  36397e: 2018         	movs	r0, #0x18
  363980: f023 f7f0    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423fe0
  363984: 4603         	mov	r3, r0
  363986: 461d         	mov	r5, r3
  363988: 4628         	mov	r0, r5
  36398a: f005 f879    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x50f2
  36398e: 9515         	str	r5, [sp, #0x54]
  363990: 9b15         	ldr	r3, [sp, #0x54]
  363992: 4618         	mov	r0, r3
  363994: f234 fab2    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234564
  363998: 9b15         	ldr	r3, [sp, #0x54]
  36399a: 9a0f         	ldr	r2, [sp, #0x3c]
  36399c: 615a         	str	r2, [r3, #0x14]
  36399e: ab0b         	add	r3, sp, #0x2c
  3639a0: 681b         	ldr	r3, [r3]
  3639a2: 6a9d         	ldr	r5, [r3, #0x28]
  3639a4: 4bc4         	ldr	r3, [pc, #0x310]        @ 0x363cb8 <MapManager::addStaticBodyShape(int, int)+0x2dc8>
  3639a6: 447b         	add	r3, pc
  3639a8: 4618         	mov	r0, r3
  3639aa: 9910         	ldr	r1, [sp, #0x40]
  3639ac: 9a11         	ldr	r2, [sp, #0x44]
  3639ae: f236 f8af    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23615e
  3639b2: 4603         	mov	r3, r0
  3639b4: 4618         	mov	r0, r3
  3639b6: f235 ffb7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x235f6e
  3639ba: 4606         	mov	r6, r0
  3639bc: ab0c         	add	r3, sp, #0x30
  3639be: 4618         	mov	r0, r3
  3639c0: f026 f518    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x426a30
  3639c4: aa0d         	add	r2, sp, #0x34
  3639c6: ab0c         	add	r3, sp, #0x30
  3639c8: 4610         	mov	r0, r2
  3639ca: 4631         	mov	r1, r6
  3639cc: 461a         	mov	r2, r3
  3639ce: f053 f047    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45308e
  3639d2: ab0d         	add	r3, sp, #0x34
  3639d4: 4628         	mov	r0, r5
  3639d6: 9915         	ldr	r1, [sp, #0x54]
  3639d8: 461a         	mov	r2, r3
  3639da: f230 ffad    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230f5a
  3639de: ab0d         	add	r3, sp, #0x34
  3639e0: 4618         	mov	r0, r3
  3639e2: f051 f797    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x451f2e
  3639e6: ab0c         	add	r3, sp, #0x30
  3639e8: 4618         	mov	r0, r3
  3639ea: f026 f507    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x426a0e
  3639ee: f001 ba5c    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x14b8
  3639f2: ab0a         	add	r3, sp, #0x28
  3639f4: 681b         	ldr	r3, [r3]
  3639f6: ee05 3a90    	vmov	s11, r3
  3639fa: eeb8 6be5    	vcvt.f64.s32	d6, s11
  3639fe: ab09         	add	r3, sp, #0x24
  363a00: 681b         	ldr	r3, [r3]
  363a02: ee07 3a90    	vmov	s15, r3
  363a06: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363a0a: eddd 7a14    	vldr	s15, [sp, #80]
  363a0e: ee77 7a27    	vadd.f32	s15, s14, s15
  363a12: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363a16: ab36         	add	r3, sp, #0xd8
  363a18: 4618         	mov	r0, r3
  363a1a: eeb0 0b46    	vmov.f64	d0, d6
  363a1e: eeb0 1b47    	vmov.f64	d1, d7
  363a22: f7fa f82d    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5fa6
  363a26: ab0a         	add	r3, sp, #0x28
  363a28: 681b         	ldr	r3, [r3]
  363a2a: ee05 3a90    	vmov	s11, r3
  363a2e: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363a32: eddd 7a14    	vldr	s15, [sp, #80]
  363a36: ee77 7a27    	vadd.f32	s15, s14, s15
  363a3a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363a3e: ab09         	add	r3, sp, #0x24
  363a40: 681b         	ldr	r3, [r3]
  363a42: ee07 3a90    	vmov	s15, r3
  363a46: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363a4a: eddd 7a14    	vldr	s15, [sp, #80]
  363a4e: ee77 7a27    	vadd.f32	s15, s14, s15
  363a52: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363a56: ab3a         	add	r3, sp, #0xe8
  363a58: 4618         	mov	r0, r3
  363a5a: eeb0 0b46    	vmov.f64	d0, d6
  363a5e: eeb0 1b47    	vmov.f64	d1, d7
  363a62: f7fa f80d    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x5fe6
  363a66: ab0a         	add	r3, sp, #0x28
  363a68: 681b         	ldr	r3, [r3]
  363a6a: ee05 3a90    	vmov	s11, r3
  363a6e: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363a72: eddd 7a14    	vldr	s15, [sp, #80]
  363a76: ee77 7a27    	vadd.f32	s15, s14, s15
  363a7a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363a7e: ab09         	add	r3, sp, #0x24
  363a80: 681b         	ldr	r3, [r3]
  363a82: ee07 3a90    	vmov	s15, r3
  363a86: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363a8a: eddd 7a14    	vldr	s15, [sp, #80]
  363a8e: ee77 7a67    	vsub.f32	s15, s14, s15
  363a92: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363a96: ab3e         	add	r3, sp, #0xf8
  363a98: 4618         	mov	r0, r3
  363a9a: eeb0 0b46    	vmov.f64	d0, d6
  363a9e: eeb0 1b47    	vmov.f64	d1, d7
  363aa2: f7f9 ffed    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6026
  363aa6: 4b78         	ldr	r3, [pc, #0x1e0]        @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  363aa8: 58e3         	ldr	r3, [r4, r3]
  363aaa: 681f         	ldr	r7, [r3]
  363aac: ae36         	add	r6, sp, #0xd8
  363aae: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x363cbc <MapManager::addStaticBodyShape(int, int)+0x2dcc>
  363ab0: 447b         	add	r3, pc
  363ab2: 466d         	mov	r5, sp
  363ab4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363ab6: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363aba: 4638         	mov	r0, r7
  363abc: 2103         	movs	r1, #0x3
  363abe: 4632         	mov	r2, r6
  363ac0: f370 ff44    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370e88
  363ac4: 4603         	mov	r3, r0
  363ac6: 930f         	str	r3, [sp, #0x3c]
  363ac8: 2018         	movs	r0, #0x18
  363aca: f023 f74b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423e96
  363ace: 4603         	mov	r3, r0
  363ad0: 461d         	mov	r5, r3
  363ad2: 4628         	mov	r0, r5
  363ad4: f004 ffd4    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4fa8
  363ad8: 9515         	str	r5, [sp, #0x54]
  363ada: 9b15         	ldr	r3, [sp, #0x54]
  363adc: 4618         	mov	r0, r3
  363ade: f234 fa0d    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x23441a
  363ae2: 9b15         	ldr	r3, [sp, #0x54]
  363ae4: 9a0f         	ldr	r2, [sp, #0x3c]
  363ae6: 615a         	str	r2, [r3, #0x14]
  363ae8: ab0b         	add	r3, sp, #0x2c
  363aea: 681b         	ldr	r3, [r3]
  363aec: 6a9d         	ldr	r5, [r3, #0x28]
  363aee: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x363cc0 <MapManager::addStaticBodyShape(int, int)+0x2dd0>
  363af0: 447b         	add	r3, pc
  363af2: 4618         	mov	r0, r3
  363af4: 9910         	ldr	r1, [sp, #0x40]
  363af6: 9a11         	ldr	r2, [sp, #0x44]
  363af8: f236 f80a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x236014
  363afc: 4603         	mov	r3, r0
  363afe: 4618         	mov	r0, r3
  363b00: f235 ff12    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x235e24
  363b04: 4606         	mov	r6, r0
  363b06: ab0c         	add	r3, sp, #0x30
  363b08: 4618         	mov	r0, r3
  363b0a: f026 f473    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4268e6
  363b0e: aa0d         	add	r2, sp, #0x34
  363b10: ab0c         	add	r3, sp, #0x30
  363b12: 4610         	mov	r0, r2
  363b14: 4631         	mov	r1, r6
  363b16: 461a         	mov	r2, r3
  363b18: f052 f7a2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x452f44
  363b1c: ab0d         	add	r3, sp, #0x34
  363b1e: 4628         	mov	r0, r5
  363b20: 9915         	ldr	r1, [sp, #0x54]
  363b22: 461a         	mov	r2, r3
  363b24: f230 ff08    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230e10
  363b28: ab0d         	add	r3, sp, #0x34
  363b2a: 4618         	mov	r0, r3
  363b2c: f051 f6f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x451de4
  363b30: ab0c         	add	r3, sp, #0x30
  363b32: 4618         	mov	r0, r3
  363b34: f026 f462    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4268c4
  363b38: f001 b9b7    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x136e
  363b3c: ab0a         	add	r3, sp, #0x28
  363b3e: 681b         	ldr	r3, [r3]
  363b40: ee05 3a90    	vmov	s11, r3
  363b44: eeb8 6be5    	vcvt.f64.s32	d6, s11
  363b48: ab09         	add	r3, sp, #0x24
  363b4a: 681b         	ldr	r3, [r3]
  363b4c: ee07 3a90    	vmov	s15, r3
  363b50: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363b54: eddd 7a14    	vldr	s15, [sp, #80]
  363b58: ee77 7a67    	vsub.f32	s15, s14, s15
  363b5c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363b60: ab36         	add	r3, sp, #0xd8
  363b62: 4618         	mov	r0, r3
  363b64: eeb0 0b46    	vmov.f64	d0, d6
  363b68: eeb0 1b47    	vmov.f64	d1, d7
  363b6c: f7f9 ff88    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x60f0
  363b70: ab0a         	add	r3, sp, #0x28
  363b72: 681b         	ldr	r3, [r3]
  363b74: ee05 3a90    	vmov	s11, r3
  363b78: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363b7c: eddd 7a14    	vldr	s15, [sp, #80]
  363b80: ee77 7a27    	vadd.f32	s15, s14, s15
  363b84: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363b88: ab09         	add	r3, sp, #0x24
  363b8a: 681b         	ldr	r3, [r3]
  363b8c: ee07 3a90    	vmov	s15, r3
  363b90: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363b94: eddd 7a14    	vldr	s15, [sp, #80]
  363b98: ee77 7a27    	vadd.f32	s15, s14, s15
  363b9c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363ba0: ab3a         	add	r3, sp, #0xe8
  363ba2: 4618         	mov	r0, r3
  363ba4: eeb0 0b46    	vmov.f64	d0, d6
  363ba8: eeb0 1b47    	vmov.f64	d1, d7
  363bac: f7f9 ff68    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6130
  363bb0: ab0a         	add	r3, sp, #0x28
  363bb2: 681b         	ldr	r3, [r3]
  363bb4: ee05 3a90    	vmov	s11, r3
  363bb8: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363bbc: eddd 7a14    	vldr	s15, [sp, #80]
  363bc0: ee77 7a27    	vadd.f32	s15, s14, s15
  363bc4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363bc8: ab09         	add	r3, sp, #0x24
  363bca: 681b         	ldr	r3, [r3]
  363bcc: ee07 3a90    	vmov	s15, r3
  363bd0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363bd4: eddd 7a14    	vldr	s15, [sp, #80]
  363bd8: ee77 7a67    	vsub.f32	s15, s14, s15
  363bdc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363be0: ab3e         	add	r3, sp, #0xf8
  363be2: 4618         	mov	r0, r3
  363be4: eeb0 0b46    	vmov.f64	d0, d6
  363be8: eeb0 1b47    	vmov.f64	d1, d7
  363bec: f7f9 ff48    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6170
  363bf0: 4b25         	ldr	r3, [pc, #0x94]         @ 0x363c88 <MapManager::addStaticBodyShape(int, int)+0x2d98>
  363bf2: 58e3         	ldr	r3, [r4, r3]
  363bf4: 681f         	ldr	r7, [r3]
  363bf6: ae36         	add	r6, sp, #0xd8
  363bf8: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x363cc4 <MapManager::addStaticBodyShape(int, int)+0x2dd4>
  363bfa: 447b         	add	r3, pc
  363bfc: 466d         	mov	r5, sp
  363bfe: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363c00: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363c04: 4638         	mov	r0, r7
  363c06: 2103         	movs	r1, #0x3
  363c08: 4632         	mov	r2, r6
  363c0a: f370 fe9f    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370d3e
  363c0e: 4603         	mov	r3, r0
  363c10: 930f         	str	r3, [sp, #0x3c]
  363c12: 2018         	movs	r0, #0x18
  363c14: f023 f6a6    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423d4c
  363c18: 4603         	mov	r3, r0
  363c1a: 461d         	mov	r5, r3
  363c1c: 4628         	mov	r0, r5
  363c1e: f004 ff2f    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4e5e
  363c22: 9515         	str	r5, [sp, #0x54]
  363c24: 9b15         	ldr	r3, [sp, #0x54]
  363c26: 4618         	mov	r0, r3
  363c28: f234 f968    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2342d0
  363c2c: 9b15         	ldr	r3, [sp, #0x54]
  363c2e: 9a0f         	ldr	r2, [sp, #0x3c]
  363c30: 615a         	str	r2, [r3, #0x14]
  363c32: ab0b         	add	r3, sp, #0x2c
  363c34: 681b         	ldr	r3, [r3]
  363c36: 6a9d         	ldr	r5, [r3, #0x28]
  363c38: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x363cc8 <MapManager::addStaticBodyShape(int, int)+0x2dd8>
  363c3a: 447b         	add	r3, pc
  363c3c: 4618         	mov	r0, r3
  363c3e: 9910         	ldr	r1, [sp, #0x40]
  363c40: 9a11         	ldr	r2, [sp, #0x44]
  363c42: f235 ff65    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x235eca
  363c46: 4603         	mov	r3, r0
  363c48: 4618         	mov	r0, r3
  363c4a: f235 fe6d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x235cda
  363c4e: 4606         	mov	r6, r0
  363c50: ab0c         	add	r3, sp, #0x30
  363c52: 4618         	mov	r0, r3
  363c54: f026 f3ce    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42679c
  363c58: aa0d         	add	r2, sp, #0x34
  363c5a: ab0c         	add	r3, sp, #0x30
  363c5c: 4610         	mov	r0, r2
  363c5e: 4631         	mov	r1, r6
  363c60: 461a         	mov	r2, r3
  363c62: f052 f6fd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x452dfa
  363c66: ab0d         	add	r3, sp, #0x34
  363c68: 4628         	mov	r0, r5
  363c6a: 9915         	ldr	r1, [sp, #0x54]
  363c6c: 461a         	mov	r2, r3
  363c6e: f230 fe63    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230cc6
  363c72: ab0d         	add	r3, sp, #0x34
  363c74: 4618         	mov	r0, r3
  363c76: f051 f64d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x451c9a
  363c7a: ab0c         	add	r3, sp, #0x30
  363c7c: 4618         	mov	r0, r3
  363c7e: f026 f3bd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42677a
  363c82: f001 b912    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x1224
  363c86: bf00         	nop
  363c88: db9c         	blt	0x363bc4 <MapManager::addStaticBodyShape(int, int)+0x2cd4> @ imm = #-0xc8
  363c8a: ffff 9aba    	<unknown>
  363c8e: 0046         	lsls	r6, r0, #0x1
  363c90: 9a14         	ldr	r2, [sp, #0x50]
  363c92: 0046         	lsls	r6, r0, #0x1
  363c94: 996a         	ldr	r1, [sp, #0x1a8]
  363c96: 0046         	lsls	r6, r0, #0x1
  363c98: 98c4         	ldr	r0, [sp, #0x310]
  363c9a: 0046         	lsls	r6, r0, #0x1
  363c9c: 981a         	ldr	r0, [sp, #0x68]
  363c9e: 0046         	lsls	r6, r0, #0x1
  363ca0: 9774         	str	r7, [sp, #0x1d0]
  363ca2: 0046         	lsls	r6, r0, #0x1
  363ca4: 96ca         	str	r6, [sp, #0x328]
  363ca6: 0046         	lsls	r6, r0, #0x1
  363ca8: 9624         	str	r6, [sp, #0x90]
  363caa: 0046         	lsls	r6, r0, #0x1
  363cac: 957a         	str	r5, [sp, #0x1e8]
  363cae: 0046         	lsls	r6, r0, #0x1
  363cb0: 94d4         	str	r4, [sp, #0x350]
  363cb2: 0046         	lsls	r6, r0, #0x1
  363cb4: 942e         	str	r4, [sp, #0xb8]
  363cb6: 0046         	lsls	r6, r0, #0x1
  363cb8: 938a         	str	r3, [sp, #0x228]
  363cba: 0046         	lsls	r6, r0, #0x1
  363cbc: 92e4         	str	r2, [sp, #0x390]
  363cbe: 0046         	lsls	r6, r0, #0x1
  363cc0: 9240         	str	r2, [sp, #0x100]
  363cc2: 0046         	lsls	r6, r0, #0x1
  363cc4: 919a         	str	r1, [sp, #0x268]
  363cc6: 0046         	lsls	r6, r0, #0x1
  363cc8: 90f6         	str	r0, [sp, #0x3d8]
  363cca: 0046         	lsls	r6, r0, #0x1
  363ccc: ab0a         	add	r3, sp, #0x28
  363cce: 681b         	ldr	r3, [r3]
  363cd0: ee05 3a90    	vmov	s11, r3
  363cd4: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363cd8: eddd 7a14    	vldr	s15, [sp, #80]
  363cdc: ee77 7a67    	vsub.f32	s15, s14, s15
  363ce0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363ce4: ab09         	add	r3, sp, #0x24
  363ce6: 681b         	ldr	r3, [r3]
  363ce8: ee07 3a90    	vmov	s15, r3
  363cec: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363cf0: eddd 7a14    	vldr	s15, [sp, #80]
  363cf4: ee77 7a67    	vsub.f32	s15, s14, s15
  363cf8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363cfc: ab36         	add	r3, sp, #0xd8
  363cfe: 4618         	mov	r0, r3
  363d00: eeb0 0b46    	vmov.f64	d0, d6
  363d04: eeb0 1b47    	vmov.f64	d1, d7
  363d08: f7f9 feba    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x628c
  363d0c: ab0a         	add	r3, sp, #0x28
  363d0e: 681b         	ldr	r3, [r3]
  363d10: ee05 3a90    	vmov	s11, r3
  363d14: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363d18: eddd 7a14    	vldr	s15, [sp, #80]
  363d1c: ee77 7a67    	vsub.f32	s15, s14, s15
  363d20: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363d24: ab09         	add	r3, sp, #0x24
  363d26: 681b         	ldr	r3, [r3]
  363d28: ee05 3a90    	vmov	s11, r3
  363d2c: eeb8 7be5    	vcvt.f64.s32	d7, s11
  363d30: ab3a         	add	r3, sp, #0xe8
  363d32: 4618         	mov	r0, r3
  363d34: eeb0 0b46    	vmov.f64	d0, d6
  363d38: eeb0 1b47    	vmov.f64	d1, d7
  363d3c: f7f9 fea0    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x62c0
  363d40: eddd 7a14    	vldr	s15, [sp, #80]
  363d44: eeb1 7a67    	vneg.f32	s14, s15
  363d48: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  363d4c: ee87 7a27    	vdiv.f32	s14, s14, s15
  363d50: ab0a         	add	r3, sp, #0x28
  363d52: 681b         	ldr	r3, [r3]
  363d54: ee06 3a90    	vmov	s13, r3
  363d58: eef8 7ae6    	vcvt.f32.s32	s15, s13
  363d5c: ee77 7a27    	vadd.f32	s15, s14, s15
  363d60: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363d64: ab09         	add	r3, sp, #0x24
  363d66: 681b         	ldr	r3, [r3]
  363d68: ee07 3a90    	vmov	s15, r3
  363d6c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363d70: eddd 7a14    	vldr	s15, [sp, #80]
  363d74: ee77 7a27    	vadd.f32	s15, s14, s15
  363d78: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363d7c: ab3e         	add	r3, sp, #0xf8
  363d7e: 4618         	mov	r0, r3
  363d80: eeb0 0b46    	vmov.f64	d0, d6
  363d84: eeb0 1b47    	vmov.f64	d1, d7
  363d88: f7f9 fe7a    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x630c
  363d8c: ed9d 7a14    	vldr	s14, [sp, #80]
  363d90: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  363d94: ee87 7a27    	vdiv.f32	s14, s14, s15
  363d98: ab0a         	add	r3, sp, #0x28
  363d9a: 681b         	ldr	r3, [r3]
  363d9c: ee05 3a90    	vmov	s11, r3
  363da0: eef8 7ae5    	vcvt.f32.s32	s15, s11
  363da4: ee77 7a27    	vadd.f32	s15, s14, s15
  363da8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363dac: ab09         	add	r3, sp, #0x24
  363dae: 681b         	ldr	r3, [r3]
  363db0: ee07 3a90    	vmov	s15, r3
  363db4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363db8: eddd 7a14    	vldr	s15, [sp, #80]
  363dbc: ee77 7a27    	vadd.f32	s15, s14, s15
  363dc0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363dc4: ab42         	add	r3, sp, #0x108
  363dc6: 4618         	mov	r0, r3
  363dc8: eeb0 0b46    	vmov.f64	d0, d6
  363dcc: eeb0 1b47    	vmov.f64	d1, d7
  363dd0: f7f9 fe56    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6354
  363dd4: ab0a         	add	r3, sp, #0x28
  363dd6: 681b         	ldr	r3, [r3]
  363dd8: ee05 3a90    	vmov	s11, r3
  363ddc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363de0: eddd 7a14    	vldr	s15, [sp, #80]
  363de4: ee77 7a27    	vadd.f32	s15, s14, s15
  363de8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363dec: ab09         	add	r3, sp, #0x24
  363dee: 681b         	ldr	r3, [r3]
  363df0: ee05 3a90    	vmov	s11, r3
  363df4: eeb8 7be5    	vcvt.f64.s32	d7, s11
  363df8: ab46         	add	r3, sp, #0x118
  363dfa: 4618         	mov	r0, r3
  363dfc: eeb0 0b46    	vmov.f64	d0, d6
  363e00: eeb0 1b47    	vmov.f64	d1, d7
  363e04: f7f9 fe3c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6388
  363e08: ab0a         	add	r3, sp, #0x28
  363e0a: 681b         	ldr	r3, [r3]
  363e0c: ee06 3a90    	vmov	s13, r3
  363e10: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  363e14: eddd 7a14    	vldr	s15, [sp, #80]
  363e18: ee77 7a27    	vadd.f32	s15, s14, s15
  363e1c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363e20: ab09         	add	r3, sp, #0x24
  363e22: 681b         	ldr	r3, [r3]
  363e24: ee07 3a90    	vmov	s15, r3
  363e28: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363e2c: eddd 7a14    	vldr	s15, [sp, #80]
  363e30: ee77 7a67    	vsub.f32	s15, s14, s15
  363e34: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363e38: ab4a         	add	r3, sp, #0x128
  363e3a: 4618         	mov	r0, r3
  363e3c: eeb0 0b46    	vmov.f64	d0, d6
  363e40: eeb0 1b47    	vmov.f64	d1, d7
  363e44: f7f9 fe1c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x63c8
  363e48: f8df 3b70    	ldr.w	r3, [pc, #0xb70]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  363e4c: 58e3         	ldr	r3, [r4, r3]
  363e4e: 681f         	ldr	r7, [r3]
  363e50: ae36         	add	r6, sp, #0xd8
  363e52: f8df 3b6c    	ldr.w	r3, [pc, #0xb6c]        @ 0x3649c0 <MapManager::addStaticBodyShape(int, int)+0x3ad0>
  363e56: 447b         	add	r3, pc
  363e58: 466d         	mov	r5, sp
  363e5a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363e5c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363e60: 4638         	mov	r0, r7
  363e62: 2106         	movs	r1, #0x6
  363e64: 4632         	mov	r2, r6
  363e66: f370 fd71    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370ae2
  363e6a: 4603         	mov	r3, r0
  363e6c: 930f         	str	r3, [sp, #0x3c]
  363e6e: 2018         	movs	r0, #0x18
  363e70: f023 f578    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423af0
  363e74: 4603         	mov	r3, r0
  363e76: 461d         	mov	r5, r3
  363e78: 4628         	mov	r0, r5
  363e7a: f004 fe01    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4c02
  363e7e: 9515         	str	r5, [sp, #0x54]
  363e80: 9b15         	ldr	r3, [sp, #0x54]
  363e82: 4618         	mov	r0, r3
  363e84: f234 f83a    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x234074
  363e88: 9b15         	ldr	r3, [sp, #0x54]
  363e8a: 9a0f         	ldr	r2, [sp, #0x3c]
  363e8c: 615a         	str	r2, [r3, #0x14]
  363e8e: ab0b         	add	r3, sp, #0x2c
  363e90: 681b         	ldr	r3, [r3]
  363e92: 6a9d         	ldr	r5, [r3, #0x28]
  363e94: f8df 3b2c    	ldr.w	r3, [pc, #0xb2c]        @ 0x3649c4 <MapManager::addStaticBodyShape(int, int)+0x3ad4>
  363e98: 447b         	add	r3, pc
  363e9a: 4618         	mov	r0, r3
  363e9c: 9910         	ldr	r1, [sp, #0x40]
  363e9e: 9a11         	ldr	r2, [sp, #0x44]
  363ea0: f235 fe36    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x235c6c
  363ea4: 4603         	mov	r3, r0
  363ea6: 4618         	mov	r0, r3
  363ea8: f235 fd3e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x235a7c
  363eac: 4606         	mov	r6, r0
  363eae: ab0c         	add	r3, sp, #0x30
  363eb0: 4618         	mov	r0, r3
  363eb2: f026 f29f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42653e
  363eb6: aa0d         	add	r2, sp, #0x34
  363eb8: ab0c         	add	r3, sp, #0x30
  363eba: 4610         	mov	r0, r2
  363ebc: 4631         	mov	r1, r6
  363ebe: 461a         	mov	r2, r3
  363ec0: f052 f5ce    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x452b9c
  363ec4: ab0d         	add	r3, sp, #0x34
  363ec6: 4628         	mov	r0, r5
  363ec8: 9915         	ldr	r1, [sp, #0x54]
  363eca: 461a         	mov	r2, r3
  363ecc: f230 fd34    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230a68
  363ed0: ab0d         	add	r3, sp, #0x34
  363ed2: 4618         	mov	r0, r3
  363ed4: f051 f51e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x451a3c
  363ed8: ab0c         	add	r3, sp, #0x30
  363eda: 4618         	mov	r0, r3
  363edc: f026 f28e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42651c
  363ee0: f000 bfe3    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0xfc6
  363ee4: ab0a         	add	r3, sp, #0x28
  363ee6: 681b         	ldr	r3, [r3]
  363ee8: ee05 3a90    	vmov	s11, r3
  363eec: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363ef0: eddd 7a14    	vldr	s15, [sp, #80]
  363ef4: ee77 7a67    	vsub.f32	s15, s14, s15
  363ef8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363efc: ab09         	add	r3, sp, #0x24
  363efe: 681b         	ldr	r3, [r3]
  363f00: ee07 3a90    	vmov	s15, r3
  363f04: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363f08: eddd 7a14    	vldr	s15, [sp, #80]
  363f0c: ee77 7a27    	vadd.f32	s15, s14, s15
  363f10: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363f14: ab36         	add	r3, sp, #0xd8
  363f16: 4618         	mov	r0, r3
  363f18: eeb0 0b46    	vmov.f64	d0, d6
  363f1c: eeb0 1b47    	vmov.f64	d1, d7
  363f20: f7f9 fdae    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x64a4
  363f24: ab0a         	add	r3, sp, #0x28
  363f26: 681b         	ldr	r3, [r3]
  363f28: ee05 3a90    	vmov	s11, r3
  363f2c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363f30: eddd 7a14    	vldr	s15, [sp, #80]
  363f34: ee77 7a27    	vadd.f32	s15, s14, s15
  363f38: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363f3c: ab09         	add	r3, sp, #0x24
  363f3e: 681b         	ldr	r3, [r3]
  363f40: ee05 3a90    	vmov	s11, r3
  363f44: eeb8 7be5    	vcvt.f64.s32	d7, s11
  363f48: ab3a         	add	r3, sp, #0xe8
  363f4a: 4618         	mov	r0, r3
  363f4c: eeb0 0b46    	vmov.f64	d0, d6
  363f50: eeb0 1b47    	vmov.f64	d1, d7
  363f54: f7f9 fd94    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x64d8
  363f58: ab0a         	add	r3, sp, #0x28
  363f5a: 681b         	ldr	r3, [r3]
  363f5c: ee06 3a90    	vmov	s13, r3
  363f60: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  363f64: eddd 7a14    	vldr	s15, [sp, #80]
  363f68: ee77 7a27    	vadd.f32	s15, s14, s15
  363f6c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363f70: ab09         	add	r3, sp, #0x24
  363f72: 681b         	ldr	r3, [r3]
  363f74: ee07 3a90    	vmov	s15, r3
  363f78: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363f7c: eddd 7a14    	vldr	s15, [sp, #80]
  363f80: ee77 7a67    	vsub.f32	s15, s14, s15
  363f84: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363f88: ab3e         	add	r3, sp, #0xf8
  363f8a: 4618         	mov	r0, r3
  363f8c: eeb0 0b46    	vmov.f64	d0, d6
  363f90: eeb0 1b47    	vmov.f64	d1, d7
  363f94: f7f9 fd74    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6518
  363f98: ab0a         	add	r3, sp, #0x28
  363f9a: 681b         	ldr	r3, [r3]
  363f9c: ee05 3a90    	vmov	s11, r3
  363fa0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  363fa4: eddd 7a14    	vldr	s15, [sp, #80]
  363fa8: ee77 7a67    	vsub.f32	s15, s14, s15
  363fac: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  363fb0: ab09         	add	r3, sp, #0x24
  363fb2: 681b         	ldr	r3, [r3]
  363fb4: ee07 3a90    	vmov	s15, r3
  363fb8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  363fbc: eddd 7a14    	vldr	s15, [sp, #80]
  363fc0: ee77 7a67    	vsub.f32	s15, s14, s15
  363fc4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  363fc8: ab42         	add	r3, sp, #0x108
  363fca: 4618         	mov	r0, r3
  363fcc: eeb0 0b46    	vmov.f64	d0, d6
  363fd0: eeb0 1b47    	vmov.f64	d1, d7
  363fd4: f7f9 fd54    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6558
  363fd8: f8df 39e0    	ldr.w	r3, [pc, #0x9e0]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  363fdc: 58e3         	ldr	r3, [r4, r3]
  363fde: 681f         	ldr	r7, [r3]
  363fe0: ae36         	add	r6, sp, #0xd8
  363fe2: f8df 39e4    	ldr.w	r3, [pc, #0x9e4]        @ 0x3649c8 <MapManager::addStaticBodyShape(int, int)+0x3ad8>
  363fe6: 447b         	add	r3, pc
  363fe8: 466d         	mov	r5, sp
  363fea: cb0f         	ldm	r3, {r0, r1, r2, r3}
  363fec: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  363ff0: 4638         	mov	r0, r7
  363ff2: 2104         	movs	r1, #0x4
  363ff4: 4632         	mov	r2, r6
  363ff6: f370 fca9    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370952
  363ffa: 4603         	mov	r3, r0
  363ffc: 930f         	str	r3, [sp, #0x3c]
  363ffe: 2018         	movs	r0, #0x18
  364000: f023 f4b0    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423960
  364004: 4603         	mov	r3, r0
  364006: 461d         	mov	r5, r3
  364008: 4628         	mov	r0, r5
  36400a: f004 fd39    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4a72
  36400e: 9515         	str	r5, [sp, #0x54]
  364010: 9b15         	ldr	r3, [sp, #0x54]
  364012: 4618         	mov	r0, r3
  364014: f233 ff72    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x233ee4
  364018: 9b15         	ldr	r3, [sp, #0x54]
  36401a: 9a0f         	ldr	r2, [sp, #0x3c]
  36401c: 615a         	str	r2, [r3, #0x14]
  36401e: ab0b         	add	r3, sp, #0x2c
  364020: 681b         	ldr	r3, [r3]
  364022: 6a9d         	ldr	r5, [r3, #0x28]
  364024: f8df 39a4    	ldr.w	r3, [pc, #0x9a4]        @ 0x3649cc <MapManager::addStaticBodyShape(int, int)+0x3adc>
  364028: 447b         	add	r3, pc
  36402a: 4618         	mov	r0, r3
  36402c: 9910         	ldr	r1, [sp, #0x40]
  36402e: 9a11         	ldr	r2, [sp, #0x44]
  364030: f235 fd6e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x235adc
  364034: 4603         	mov	r3, r0
  364036: 4618         	mov	r0, r3
  364038: f235 fc76    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2358ec
  36403c: 4606         	mov	r6, r0
  36403e: ab0c         	add	r3, sp, #0x30
  364040: 4618         	mov	r0, r3
  364042: f026 f1d7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4263ae
  364046: aa0d         	add	r2, sp, #0x34
  364048: ab0c         	add	r3, sp, #0x30
  36404a: 4610         	mov	r0, r2
  36404c: 4631         	mov	r1, r6
  36404e: 461a         	mov	r2, r3
  364050: f052 f506    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x452a0c
  364054: ab0d         	add	r3, sp, #0x34
  364056: 4628         	mov	r0, r5
  364058: 9915         	ldr	r1, [sp, #0x54]
  36405a: 461a         	mov	r2, r3
  36405c: f230 fc6c    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2308d8
  364060: ab0d         	add	r3, sp, #0x34
  364062: 4618         	mov	r0, r3
  364064: f051 f456    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4518ac
  364068: ab0c         	add	r3, sp, #0x30
  36406a: 4618         	mov	r0, r3
  36406c: f026 f1c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42638c
  364070: f000 bf1b    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0xe36
  364074: ab0a         	add	r3, sp, #0x28
  364076: 681b         	ldr	r3, [r3]
  364078: ee05 3a90    	vmov	s11, r3
  36407c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364080: eddd 7a14    	vldr	s15, [sp, #80]
  364084: ee77 7a67    	vsub.f32	s15, s14, s15
  364088: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36408c: ab09         	add	r3, sp, #0x24
  36408e: 681b         	ldr	r3, [r3]
  364090: ee07 3a90    	vmov	s15, r3
  364094: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364098: eddd 7a14    	vldr	s15, [sp, #80]
  36409c: ee77 7a67    	vsub.f32	s15, s14, s15
  3640a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3640a4: ab36         	add	r3, sp, #0xd8
  3640a6: 4618         	mov	r0, r3
  3640a8: eeb0 0b46    	vmov.f64	d0, d6
  3640ac: eeb0 1b47    	vmov.f64	d1, d7
  3640b0: f7f9 fce6    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6634
  3640b4: ab0a         	add	r3, sp, #0x28
  3640b6: 681b         	ldr	r3, [r3]
  3640b8: ee05 3a90    	vmov	s11, r3
  3640bc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3640c0: eddd 7a14    	vldr	s15, [sp, #80]
  3640c4: ee77 7a67    	vsub.f32	s15, s14, s15
  3640c8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3640cc: ab09         	add	r3, sp, #0x24
  3640ce: 681b         	ldr	r3, [r3]
  3640d0: ee05 3a90    	vmov	s11, r3
  3640d4: eeb8 7be5    	vcvt.f64.s32	d7, s11
  3640d8: ab3a         	add	r3, sp, #0xe8
  3640da: 4618         	mov	r0, r3
  3640dc: eeb0 0b46    	vmov.f64	d0, d6
  3640e0: eeb0 1b47    	vmov.f64	d1, d7
  3640e4: f7f9 fccc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6668
  3640e8: ab0a         	add	r3, sp, #0x28
  3640ea: 681b         	ldr	r3, [r3]
  3640ec: ee06 3a90    	vmov	s13, r3
  3640f0: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3640f4: eddd 7a14    	vldr	s15, [sp, #80]
  3640f8: ee77 7a27    	vadd.f32	s15, s14, s15
  3640fc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364100: ab09         	add	r3, sp, #0x24
  364102: 681b         	ldr	r3, [r3]
  364104: ee07 3a90    	vmov	s15, r3
  364108: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36410c: eddd 7a14    	vldr	s15, [sp, #80]
  364110: ee77 7a27    	vadd.f32	s15, s14, s15
  364114: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364118: ab3e         	add	r3, sp, #0xf8
  36411a: 4618         	mov	r0, r3
  36411c: eeb0 0b46    	vmov.f64	d0, d6
  364120: eeb0 1b47    	vmov.f64	d1, d7
  364124: f7f9 fcac    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x66a8
  364128: ab0a         	add	r3, sp, #0x28
  36412a: 681b         	ldr	r3, [r3]
  36412c: ee05 3a90    	vmov	s11, r3
  364130: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364134: eddd 7a14    	vldr	s15, [sp, #80]
  364138: ee77 7a27    	vadd.f32	s15, s14, s15
  36413c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364140: ab09         	add	r3, sp, #0x24
  364142: 681b         	ldr	r3, [r3]
  364144: ee07 3a90    	vmov	s15, r3
  364148: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36414c: eddd 7a14    	vldr	s15, [sp, #80]
  364150: ee77 7a67    	vsub.f32	s15, s14, s15
  364154: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364158: ab42         	add	r3, sp, #0x108
  36415a: 4618         	mov	r0, r3
  36415c: eeb0 0b46    	vmov.f64	d0, d6
  364160: eeb0 1b47    	vmov.f64	d1, d7
  364164: f7f9 fc8c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x66e8
  364168: f8df 3850    	ldr.w	r3, [pc, #0x850]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  36416c: 58e3         	ldr	r3, [r4, r3]
  36416e: 681f         	ldr	r7, [r3]
  364170: ae36         	add	r6, sp, #0xd8
  364172: f8df 385c    	ldr.w	r3, [pc, #0x85c]        @ 0x3649d0 <MapManager::addStaticBodyShape(int, int)+0x3ae0>
  364176: 447b         	add	r3, pc
  364178: 466d         	mov	r5, sp
  36417a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36417c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  364180: 4638         	mov	r0, r7
  364182: 2104         	movs	r1, #0x4
  364184: 4632         	mov	r2, r6
  364186: f370 fbe1    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3707c2
  36418a: 4603         	mov	r3, r0
  36418c: 930f         	str	r3, [sp, #0x3c]
  36418e: 2018         	movs	r0, #0x18
  364190: f023 f3e8    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4237d0
  364194: 4603         	mov	r3, r0
  364196: 461d         	mov	r5, r3
  364198: 4628         	mov	r0, r5
  36419a: f004 fc71    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x48e2
  36419e: 9515         	str	r5, [sp, #0x54]
  3641a0: 9b15         	ldr	r3, [sp, #0x54]
  3641a2: 4618         	mov	r0, r3
  3641a4: f233 feaa    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x233d54
  3641a8: 9b15         	ldr	r3, [sp, #0x54]
  3641aa: 9a0f         	ldr	r2, [sp, #0x3c]
  3641ac: 615a         	str	r2, [r3, #0x14]
  3641ae: ab0b         	add	r3, sp, #0x2c
  3641b0: 681b         	ldr	r3, [r3]
  3641b2: 6a9d         	ldr	r5, [r3, #0x28]
  3641b4: f8df 381c    	ldr.w	r3, [pc, #0x81c]        @ 0x3649d4 <MapManager::addStaticBodyShape(int, int)+0x3ae4>
  3641b8: 447b         	add	r3, pc
  3641ba: 4618         	mov	r0, r3
  3641bc: 9910         	ldr	r1, [sp, #0x40]
  3641be: 9a11         	ldr	r2, [sp, #0x44]
  3641c0: f235 fca6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23594c
  3641c4: 4603         	mov	r3, r0
  3641c6: 4618         	mov	r0, r3
  3641c8: f235 fbae    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23575c
  3641cc: 4606         	mov	r6, r0
  3641ce: ab0c         	add	r3, sp, #0x30
  3641d0: 4618         	mov	r0, r3
  3641d2: f026 f10f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42621e
  3641d6: aa0d         	add	r2, sp, #0x34
  3641d8: ab0c         	add	r3, sp, #0x30
  3641da: 4610         	mov	r0, r2
  3641dc: 4631         	mov	r1, r6
  3641de: 461a         	mov	r2, r3
  3641e0: f052 f43e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45287c
  3641e4: ab0d         	add	r3, sp, #0x34
  3641e6: 4628         	mov	r0, r5
  3641e8: 9915         	ldr	r1, [sp, #0x54]
  3641ea: 461a         	mov	r2, r3
  3641ec: f230 fba4    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230748
  3641f0: ab0d         	add	r3, sp, #0x34
  3641f2: 4618         	mov	r0, r3
  3641f4: f051 f38e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45171c
  3641f8: ab0c         	add	r3, sp, #0x30
  3641fa: 4618         	mov	r0, r3
  3641fc: f026 f0fe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4261fc
  364200: f000 be53    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0xca6
  364204: ab0a         	add	r3, sp, #0x28
  364206: 681b         	ldr	r3, [r3]
  364208: ee05 3a90    	vmov	s11, r3
  36420c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364210: eddd 7a14    	vldr	s15, [sp, #80]
  364214: ee77 7a67    	vsub.f32	s15, s14, s15
  364218: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36421c: ab09         	add	r3, sp, #0x24
  36421e: 681b         	ldr	r3, [r3]
  364220: ee05 3a90    	vmov	s11, r3
  364224: eeb8 7be5    	vcvt.f64.s32	d7, s11
  364228: ab36         	add	r3, sp, #0xd8
  36422a: 4618         	mov	r0, r3
  36422c: eeb0 0b46    	vmov.f64	d0, d6
  364230: eeb0 1b47    	vmov.f64	d1, d7
  364234: f7f9 fc24    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x67b8
  364238: ab0a         	add	r3, sp, #0x28
  36423a: 681b         	ldr	r3, [r3]
  36423c: ee06 3a90    	vmov	s13, r3
  364240: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  364244: eddd 7a14    	vldr	s15, [sp, #80]
  364248: ee77 7a67    	vsub.f32	s15, s14, s15
  36424c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364250: ab09         	add	r3, sp, #0x24
  364252: 681b         	ldr	r3, [r3]
  364254: ee07 3a90    	vmov	s15, r3
  364258: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36425c: eddd 7a14    	vldr	s15, [sp, #80]
  364260: ee77 7a27    	vadd.f32	s15, s14, s15
  364264: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364268: ab3a         	add	r3, sp, #0xe8
  36426a: 4618         	mov	r0, r3
  36426c: eeb0 0b46    	vmov.f64	d0, d6
  364270: eeb0 1b47    	vmov.f64	d1, d7
  364274: f7f9 fc04    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x67f8
  364278: ab0a         	add	r3, sp, #0x28
  36427a: 681b         	ldr	r3, [r3]
  36427c: ee05 3a90    	vmov	s11, r3
  364280: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364284: eddd 7a14    	vldr	s15, [sp, #80]
  364288: ee77 7a27    	vadd.f32	s15, s14, s15
  36428c: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364290: ab09         	add	r3, sp, #0x24
  364292: 681b         	ldr	r3, [r3]
  364294: ee07 3a90    	vmov	s15, r3
  364298: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36429c: eddd 7a14    	vldr	s15, [sp, #80]
  3642a0: ee77 7a27    	vadd.f32	s15, s14, s15
  3642a4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3642a8: ab3e         	add	r3, sp, #0xf8
  3642aa: 4618         	mov	r0, r3
  3642ac: eeb0 0b46    	vmov.f64	d0, d6
  3642b0: eeb0 1b47    	vmov.f64	d1, d7
  3642b4: f7f9 fbe4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6838
  3642b8: ab0a         	add	r3, sp, #0x28
  3642ba: 681b         	ldr	r3, [r3]
  3642bc: ee05 3a90    	vmov	s11, r3
  3642c0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3642c4: eddd 7a14    	vldr	s15, [sp, #80]
  3642c8: ee77 7a27    	vadd.f32	s15, s14, s15
  3642cc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3642d0: ab09         	add	r3, sp, #0x24
  3642d2: 681b         	ldr	r3, [r3]
  3642d4: ee07 3a90    	vmov	s15, r3
  3642d8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3642dc: eddd 7a14    	vldr	s15, [sp, #80]
  3642e0: ee77 7a67    	vsub.f32	s15, s14, s15
  3642e4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3642e8: ab42         	add	r3, sp, #0x108
  3642ea: 4618         	mov	r0, r3
  3642ec: eeb0 0b46    	vmov.f64	d0, d6
  3642f0: eeb0 1b47    	vmov.f64	d1, d7
  3642f4: f7f9 fbc4    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6878
  3642f8: f8df 36c0    	ldr.w	r3, [pc, #0x6c0]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  3642fc: 58e3         	ldr	r3, [r4, r3]
  3642fe: 681f         	ldr	r7, [r3]
  364300: ae36         	add	r6, sp, #0xd8
  364302: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x3649d8 <MapManager::addStaticBodyShape(int, int)+0x3ae8>
  364306: 447b         	add	r3, pc
  364308: 466d         	mov	r5, sp
  36430a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36430c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  364310: 4638         	mov	r0, r7
  364312: 2104         	movs	r1, #0x4
  364314: 4632         	mov	r2, r6
  364316: f370 fb19    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370632
  36431a: 4603         	mov	r3, r0
  36431c: 930f         	str	r3, [sp, #0x3c]
  36431e: 2018         	movs	r0, #0x18
  364320: f023 f320    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423640
  364324: 4603         	mov	r3, r0
  364326: 461d         	mov	r5, r3
  364328: 4628         	mov	r0, r5
  36432a: f004 fba9    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4752
  36432e: 9515         	str	r5, [sp, #0x54]
  364330: 9b15         	ldr	r3, [sp, #0x54]
  364332: 4618         	mov	r0, r3
  364334: f233 fde2    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x233bc4
  364338: 9b15         	ldr	r3, [sp, #0x54]
  36433a: 9a0f         	ldr	r2, [sp, #0x3c]
  36433c: 615a         	str	r2, [r3, #0x14]
  36433e: ab0b         	add	r3, sp, #0x2c
  364340: 681b         	ldr	r3, [r3]
  364342: 6a9d         	ldr	r5, [r3, #0x28]
  364344: f8df 3694    	ldr.w	r3, [pc, #0x694]        @ 0x3649dc <MapManager::addStaticBodyShape(int, int)+0x3aec>
  364348: 447b         	add	r3, pc
  36434a: 4618         	mov	r0, r3
  36434c: 9910         	ldr	r1, [sp, #0x40]
  36434e: 9a11         	ldr	r2, [sp, #0x44]
  364350: f235 fbde    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2357bc
  364354: 4603         	mov	r3, r0
  364356: 4618         	mov	r0, r3
  364358: f235 fae6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2355cc
  36435c: 4606         	mov	r6, r0
  36435e: ab0c         	add	r3, sp, #0x30
  364360: 4618         	mov	r0, r3
  364362: f026 f047    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x42608e
  364366: aa0d         	add	r2, sp, #0x34
  364368: ab0c         	add	r3, sp, #0x30
  36436a: 4610         	mov	r0, r2
  36436c: 4631         	mov	r1, r6
  36436e: 461a         	mov	r2, r3
  364370: f052 f376    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4526ec
  364374: ab0d         	add	r3, sp, #0x34
  364376: 4628         	mov	r0, r5
  364378: 9915         	ldr	r1, [sp, #0x54]
  36437a: 461a         	mov	r2, r3
  36437c: f230 fadc    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x2305b8
  364380: ab0d         	add	r3, sp, #0x34
  364382: 4618         	mov	r0, r3
  364384: f051 f2c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45158c
  364388: ab0c         	add	r3, sp, #0x30
  36438a: 4618         	mov	r0, r3
  36438c: f026 f036    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42606c
  364390: f000 bd8b    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0xb16
  364394: ab0a         	add	r3, sp, #0x28
  364396: 681b         	ldr	r3, [r3]
  364398: ee05 3a90    	vmov	s11, r3
  36439c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3643a0: eddd 7a14    	vldr	s15, [sp, #80]
  3643a4: ee77 7a67    	vsub.f32	s15, s14, s15
  3643a8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3643ac: ab09         	add	r3, sp, #0x24
  3643ae: 681b         	ldr	r3, [r3]
  3643b0: ee07 3a90    	vmov	s15, r3
  3643b4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3643b8: eddd 7a14    	vldr	s15, [sp, #80]
  3643bc: ee77 7a67    	vsub.f32	s15, s14, s15
  3643c0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3643c4: ab36         	add	r3, sp, #0xd8
  3643c6: 4618         	mov	r0, r3
  3643c8: eeb0 0b46    	vmov.f64	d0, d6
  3643cc: eeb0 1b47    	vmov.f64	d1, d7
  3643d0: f7f9 fb56    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6954
  3643d4: ab0a         	add	r3, sp, #0x28
  3643d6: 681b         	ldr	r3, [r3]
  3643d8: ee05 3a90    	vmov	s11, r3
  3643dc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3643e0: eddd 7a14    	vldr	s15, [sp, #80]
  3643e4: ee77 7a67    	vsub.f32	s15, s14, s15
  3643e8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3643ec: ab09         	add	r3, sp, #0x24
  3643ee: 681b         	ldr	r3, [r3]
  3643f0: ee07 3a90    	vmov	s15, r3
  3643f4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3643f8: eddd 7a14    	vldr	s15, [sp, #80]
  3643fc: ee77 7a27    	vadd.f32	s15, s14, s15
  364400: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364404: ab3a         	add	r3, sp, #0xe8
  364406: 4618         	mov	r0, r3
  364408: eeb0 0b46    	vmov.f64	d0, d6
  36440c: eeb0 1b47    	vmov.f64	d1, d7
  364410: f7f9 fb36    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6994
  364414: ab0a         	add	r3, sp, #0x28
  364416: 681b         	ldr	r3, [r3]
  364418: ee05 3a90    	vmov	s11, r3
  36441c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364420: eddd 7a14    	vldr	s15, [sp, #80]
  364424: ee77 7a27    	vadd.f32	s15, s14, s15
  364428: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36442c: ab09         	add	r3, sp, #0x24
  36442e: 681b         	ldr	r3, [r3]
  364430: ee07 3a90    	vmov	s15, r3
  364434: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364438: eddd 7a14    	vldr	s15, [sp, #80]
  36443c: ee77 7a27    	vadd.f32	s15, s14, s15
  364440: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364444: ab3e         	add	r3, sp, #0xf8
  364446: 4618         	mov	r0, r3
  364448: eeb0 0b46    	vmov.f64	d0, d6
  36444c: eeb0 1b47    	vmov.f64	d1, d7
  364450: f7f9 fb16    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x69d4
  364454: ab0a         	add	r3, sp, #0x28
  364456: 681b         	ldr	r3, [r3]
  364458: ee05 3a90    	vmov	s11, r3
  36445c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364460: eddd 7a14    	vldr	s15, [sp, #80]
  364464: ee77 7a27    	vadd.f32	s15, s14, s15
  364468: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36446c: ab09         	add	r3, sp, #0x24
  36446e: 681b         	ldr	r3, [r3]
  364470: ee05 3a90    	vmov	s11, r3
  364474: eeb8 7be5    	vcvt.f64.s32	d7, s11
  364478: ab42         	add	r3, sp, #0x108
  36447a: 4618         	mov	r0, r3
  36447c: eeb0 0b46    	vmov.f64	d0, d6
  364480: eeb0 1b47    	vmov.f64	d1, d7
  364484: f7f9 fafc    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6a08
  364488: f8df 3530    	ldr.w	r3, [pc, #0x530]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  36448c: 58e3         	ldr	r3, [r4, r3]
  36448e: 681f         	ldr	r7, [r3]
  364490: ae36         	add	r6, sp, #0xd8
  364492: f8df 354c    	ldr.w	r3, [pc, #0x54c]        @ 0x3649e0 <MapManager::addStaticBodyShape(int, int)+0x3af0>
  364496: 447b         	add	r3, pc
  364498: 466d         	mov	r5, sp
  36449a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  36449c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3644a0: 4638         	mov	r0, r7
  3644a2: 2104         	movs	r1, #0x4
  3644a4: 4632         	mov	r2, r6
  3644a6: f370 fa51    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x3704a2
  3644aa: 4603         	mov	r3, r0
  3644ac: 930f         	str	r3, [sp, #0x3c]
  3644ae: 2018         	movs	r0, #0x18
  3644b0: f023 f258    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x4234b0
  3644b4: 4603         	mov	r3, r0
  3644b6: 461d         	mov	r5, r3
  3644b8: 4628         	mov	r0, r5
  3644ba: f004 fae1    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x45c2
  3644be: 9515         	str	r5, [sp, #0x54]
  3644c0: 9b15         	ldr	r3, [sp, #0x54]
  3644c2: 4618         	mov	r0, r3
  3644c4: f233 fd1a    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x233a34
  3644c8: 9b15         	ldr	r3, [sp, #0x54]
  3644ca: 9a0f         	ldr	r2, [sp, #0x3c]
  3644cc: 615a         	str	r2, [r3, #0x14]
  3644ce: ab0b         	add	r3, sp, #0x2c
  3644d0: 681b         	ldr	r3, [r3]
  3644d2: 6a9d         	ldr	r5, [r3, #0x28]
  3644d4: f8df 350c    	ldr.w	r3, [pc, #0x50c]        @ 0x3649e4 <MapManager::addStaticBodyShape(int, int)+0x3af4>
  3644d8: 447b         	add	r3, pc
  3644da: 4618         	mov	r0, r3
  3644dc: 9910         	ldr	r1, [sp, #0x40]
  3644de: 9a11         	ldr	r2, [sp, #0x44]
  3644e0: f235 fb16    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23562c
  3644e4: 4603         	mov	r3, r0
  3644e6: 4618         	mov	r0, r3
  3644e8: f235 fa1e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23543c
  3644ec: 4606         	mov	r6, r0
  3644ee: ab0c         	add	r3, sp, #0x30
  3644f0: 4618         	mov	r0, r3
  3644f2: f025 f77f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425efe
  3644f6: aa0d         	add	r2, sp, #0x34
  3644f8: ab0c         	add	r3, sp, #0x30
  3644fa: 4610         	mov	r0, r2
  3644fc: 4631         	mov	r1, r6
  3644fe: 461a         	mov	r2, r3
  364500: f052 f2ae    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45255c
  364504: ab0d         	add	r3, sp, #0x34
  364506: 4628         	mov	r0, r5
  364508: 9915         	ldr	r1, [sp, #0x54]
  36450a: 461a         	mov	r2, r3
  36450c: f230 fa14    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230428
  364510: ab0d         	add	r3, sp, #0x34
  364512: 4618         	mov	r0, r3
  364514: f051 f1fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4513fc
  364518: ab0c         	add	r3, sp, #0x30
  36451a: 4618         	mov	r0, r3
  36451c: f025 f76e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x425edc
  364520: f000 bcc3    	b.w	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x986
  364524: ab0a         	add	r3, sp, #0x28
  364526: 681b         	ldr	r3, [r3]
  364528: ee06 3a90    	vmov	s13, r3
  36452c: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  364530: eddd 7a14    	vldr	s15, [sp, #80]
  364534: ee77 7a67    	vsub.f32	s15, s14, s15
  364538: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36453c: ab09         	add	r3, sp, #0x24
  36453e: 681b         	ldr	r3, [r3]
  364540: ee07 3a90    	vmov	s15, r3
  364544: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364548: eddd 7a14    	vldr	s15, [sp, #80]
  36454c: ee77 7a67    	vsub.f32	s15, s14, s15
  364550: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364554: ab36         	add	r3, sp, #0xd8
  364556: 4618         	mov	r0, r3
  364558: eeb0 0b46    	vmov.f64	d0, d6
  36455c: eeb0 1b47    	vmov.f64	d1, d7
  364560: f7f9 fa8e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6ae4
  364564: ab0a         	add	r3, sp, #0x28
  364566: 681b         	ldr	r3, [r3]
  364568: ee05 3a90    	vmov	s11, r3
  36456c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364570: eddd 7a14    	vldr	s15, [sp, #80]
  364574: ee77 7a67    	vsub.f32	s15, s14, s15
  364578: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36457c: ab09         	add	r3, sp, #0x24
  36457e: 681b         	ldr	r3, [r3]
  364580: ee07 3a90    	vmov	s15, r3
  364584: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364588: eddd 7a14    	vldr	s15, [sp, #80]
  36458c: ee77 7a27    	vadd.f32	s15, s14, s15
  364590: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364594: ab3a         	add	r3, sp, #0xe8
  364596: 4618         	mov	r0, r3
  364598: eeb0 0b46    	vmov.f64	d0, d6
  36459c: eeb0 1b47    	vmov.f64	d1, d7
  3645a0: f7f9 fa6e    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6b24
  3645a4: ab0a         	add	r3, sp, #0x28
  3645a6: 681b         	ldr	r3, [r3]
  3645a8: ee05 3a90    	vmov	s11, r3
  3645ac: eeb8 6be5    	vcvt.f64.s32	d6, s11
  3645b0: ab09         	add	r3, sp, #0x24
  3645b2: 681b         	ldr	r3, [r3]
  3645b4: ee07 3a90    	vmov	s15, r3
  3645b8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3645bc: eddd 7a14    	vldr	s15, [sp, #80]
  3645c0: ee77 7a27    	vadd.f32	s15, s14, s15
  3645c4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3645c8: ab3e         	add	r3, sp, #0xf8
  3645ca: 4618         	mov	r0, r3
  3645cc: eeb0 0b46    	vmov.f64	d0, d6
  3645d0: eeb0 1b47    	vmov.f64	d1, d7
  3645d4: f7f9 fa54    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6b58
  3645d8: ab0a         	add	r3, sp, #0x28
  3645da: 681b         	ldr	r3, [r3]
  3645dc: ee05 3a90    	vmov	s11, r3
  3645e0: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3645e4: eddd 7a14    	vldr	s15, [sp, #80]
  3645e8: ee77 7a27    	vadd.f32	s15, s14, s15
  3645ec: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3645f0: ab09         	add	r3, sp, #0x24
  3645f2: 681b         	ldr	r3, [r3]
  3645f4: ee07 3a90    	vmov	s15, r3
  3645f8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3645fc: eddd 7a14    	vldr	s15, [sp, #80]
  364600: ee77 7a67    	vsub.f32	s15, s14, s15
  364604: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364608: ab42         	add	r3, sp, #0x108
  36460a: 4618         	mov	r0, r3
  36460c: eeb0 0b46    	vmov.f64	d0, d6
  364610: eeb0 1b47    	vmov.f64	d1, d7
  364614: f7f9 fa34    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6b98
  364618: 4be8         	ldr	r3, [pc, #0x3a0]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  36461a: 58e3         	ldr	r3, [r4, r3]
  36461c: 681f         	ldr	r7, [r3]
  36461e: ae36         	add	r6, sp, #0xd8
  364620: 4bf1         	ldr	r3, [pc, #0x3c4]        @ 0x3649e8 <MapManager::addStaticBodyShape(int, int)+0x3af8>
  364622: 447b         	add	r3, pc
  364624: 466d         	mov	r5, sp
  364626: cb0f         	ldm	r3, {r0, r1, r2, r3}
  364628: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  36462c: 4638         	mov	r0, r7
  36462e: 2104         	movs	r1, #0x4
  364630: 4632         	mov	r2, r6
  364632: f370 f98b    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370316
  364636: 4603         	mov	r3, r0
  364638: 930f         	str	r3, [sp, #0x3c]
  36463a: 2018         	movs	r0, #0x18
  36463c: f023 f192    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423324
  364640: 4603         	mov	r3, r0
  364642: 461d         	mov	r5, r3
  364644: 4628         	mov	r0, r5
  364646: f004 fa1b    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4436
  36464a: 9515         	str	r5, [sp, #0x54]
  36464c: 9b15         	ldr	r3, [sp, #0x54]
  36464e: 4618         	mov	r0, r3
  364650: f233 fc54    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2338a8
  364654: 9b15         	ldr	r3, [sp, #0x54]
  364656: 9a0f         	ldr	r2, [sp, #0x3c]
  364658: 615a         	str	r2, [r3, #0x14]
  36465a: ab0b         	add	r3, sp, #0x2c
  36465c: 681b         	ldr	r3, [r3]
  36465e: 6a9d         	ldr	r5, [r3, #0x28]
  364660: 4be2         	ldr	r3, [pc, #0x388]        @ 0x3649ec <MapManager::addStaticBodyShape(int, int)+0x3afc>
  364662: 447b         	add	r3, pc
  364664: 4618         	mov	r0, r3
  364666: 9910         	ldr	r1, [sp, #0x40]
  364668: 9a11         	ldr	r2, [sp, #0x44]
  36466a: f235 fa51    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x2354a2
  36466e: 4603         	mov	r3, r0
  364670: 4618         	mov	r0, r3
  364672: f235 f959    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2352b2
  364676: 4606         	mov	r6, r0
  364678: ab0c         	add	r3, sp, #0x30
  36467a: 4618         	mov	r0, r3
  36467c: f025 f6ba    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425d74
  364680: aa0d         	add	r2, sp, #0x34
  364682: ab0c         	add	r3, sp, #0x30
  364684: 4610         	mov	r0, r2
  364686: 4631         	mov	r1, r6
  364688: 461a         	mov	r2, r3
  36468a: f052 f1e9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4523d2
  36468e: ab0d         	add	r3, sp, #0x34
  364690: 4628         	mov	r0, r5
  364692: 9915         	ldr	r1, [sp, #0x54]
  364694: 461a         	mov	r2, r3
  364696: f230 f94f    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x23029e
  36469a: ab0d         	add	r3, sp, #0x34
  36469c: 4618         	mov	r0, r3
  36469e: f051 f139    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x451272
  3646a2: ab0c         	add	r3, sp, #0x30
  3646a4: 4618         	mov	r0, r3
  3646a6: f025 f6a9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x425d52
  3646aa: e3fe         	b	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x7fc
  3646ac: ab0a         	add	r3, sp, #0x28
  3646ae: 681b         	ldr	r3, [r3]
  3646b0: ee05 3a90    	vmov	s11, r3
  3646b4: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3646b8: eddd 7a14    	vldr	s15, [sp, #80]
  3646bc: ee77 7a67    	vsub.f32	s15, s14, s15
  3646c0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3646c4: ab09         	add	r3, sp, #0x24
  3646c6: 681b         	ldr	r3, [r3]
  3646c8: ee07 3a90    	vmov	s15, r3
  3646cc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3646d0: eddd 7a14    	vldr	s15, [sp, #80]
  3646d4: ee77 7a67    	vsub.f32	s15, s14, s15
  3646d8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3646dc: ab36         	add	r3, sp, #0xd8
  3646de: 4618         	mov	r0, r3
  3646e0: eeb0 0b46    	vmov.f64	d0, d6
  3646e4: eeb0 1b47    	vmov.f64	d1, d7
  3646e8: f7f9 f9ca    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6c6c
  3646ec: ab0a         	add	r3, sp, #0x28
  3646ee: 681b         	ldr	r3, [r3]
  3646f0: ee05 3a90    	vmov	s11, r3
  3646f4: eeb8 6be5    	vcvt.f64.s32	d6, s11
  3646f8: ab09         	add	r3, sp, #0x24
  3646fa: 681b         	ldr	r3, [r3]
  3646fc: ee07 3a90    	vmov	s15, r3
  364700: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364704: eddd 7a14    	vldr	s15, [sp, #80]
  364708: ee77 7a27    	vadd.f32	s15, s14, s15
  36470c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364710: ab3a         	add	r3, sp, #0xe8
  364712: 4618         	mov	r0, r3
  364714: eeb0 0b46    	vmov.f64	d0, d6
  364718: eeb0 1b47    	vmov.f64	d1, d7
  36471c: f7f9 f9b0    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6ca0
  364720: ab0a         	add	r3, sp, #0x28
  364722: 681b         	ldr	r3, [r3]
  364724: ee05 3a90    	vmov	s11, r3
  364728: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36472c: eddd 7a14    	vldr	s15, [sp, #80]
  364730: ee77 7a27    	vadd.f32	s15, s14, s15
  364734: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364738: ab09         	add	r3, sp, #0x24
  36473a: 681b         	ldr	r3, [r3]
  36473c: ee07 3a90    	vmov	s15, r3
  364740: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364744: eddd 7a14    	vldr	s15, [sp, #80]
  364748: ee77 7a27    	vadd.f32	s15, s14, s15
  36474c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364750: ab3e         	add	r3, sp, #0xf8
  364752: 4618         	mov	r0, r3
  364754: eeb0 0b46    	vmov.f64	d0, d6
  364758: eeb0 1b47    	vmov.f64	d1, d7
  36475c: f7f9 f990    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6ce0
  364760: ab0a         	add	r3, sp, #0x28
  364762: 681b         	ldr	r3, [r3]
  364764: ee05 3a90    	vmov	s11, r3
  364768: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  36476c: eddd 7a14    	vldr	s15, [sp, #80]
  364770: ee77 7a27    	vadd.f32	s15, s14, s15
  364774: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364778: ab09         	add	r3, sp, #0x24
  36477a: 681b         	ldr	r3, [r3]
  36477c: ee07 3a90    	vmov	s15, r3
  364780: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364784: eddd 7a14    	vldr	s15, [sp, #80]
  364788: ee77 7a67    	vsub.f32	s15, s14, s15
  36478c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364790: ab42         	add	r3, sp, #0x108
  364792: 4618         	mov	r0, r3
  364794: eeb0 0b46    	vmov.f64	d0, d6
  364798: eeb0 1b47    	vmov.f64	d1, d7
  36479c: f7f9 f970    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6d20
  3647a0: 4b86         	ldr	r3, [pc, #0x218]        @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  3647a2: 58e3         	ldr	r3, [r4, r3]
  3647a4: 681f         	ldr	r7, [r3]
  3647a6: ae36         	add	r6, sp, #0xd8
  3647a8: 4b91         	ldr	r3, [pc, #0x244]        @ 0x3649f0 <MapManager::addStaticBodyShape(int, int)+0x3b00>
  3647aa: 447b         	add	r3, pc
  3647ac: 466d         	mov	r5, sp
  3647ae: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3647b0: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3647b4: 4638         	mov	r0, r7
  3647b6: 2104         	movs	r1, #0x4
  3647b8: 4632         	mov	r2, r6
  3647ba: f370 f8c7    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x37018e
  3647be: 4603         	mov	r3, r0
  3647c0: 930f         	str	r3, [sp, #0x3c]
  3647c2: 2018         	movs	r0, #0x18
  3647c4: f023 f0ce    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x42319c
  3647c8: 4603         	mov	r3, r0
  3647ca: 461d         	mov	r5, r3
  3647cc: 4628         	mov	r0, r5
  3647ce: f004 f957    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x42ae
  3647d2: 9515         	str	r5, [sp, #0x54]
  3647d4: 9b15         	ldr	r3, [sp, #0x54]
  3647d6: 4618         	mov	r0, r3
  3647d8: f233 fb90    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x233720
  3647dc: 9b15         	ldr	r3, [sp, #0x54]
  3647de: 9a0f         	ldr	r2, [sp, #0x3c]
  3647e0: 615a         	str	r2, [r3, #0x14]
  3647e2: ab0b         	add	r3, sp, #0x2c
  3647e4: 681b         	ldr	r3, [r3]
  3647e6: 6a9d         	ldr	r5, [r3, #0x28]
  3647e8: 4b82         	ldr	r3, [pc, #0x208]        @ 0x3649f4 <MapManager::addStaticBodyShape(int, int)+0x3b04>
  3647ea: 447b         	add	r3, pc
  3647ec: 4618         	mov	r0, r3
  3647ee: 9910         	ldr	r1, [sp, #0x40]
  3647f0: 9a11         	ldr	r2, [sp, #0x44]
  3647f2: f235 f98d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x23531a
  3647f6: 4603         	mov	r3, r0
  3647f8: 4618         	mov	r0, r3
  3647fa: f235 f895    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x23512a
  3647fe: 4606         	mov	r6, r0
  364800: ab0c         	add	r3, sp, #0x30
  364802: 4618         	mov	r0, r3
  364804: f025 f5f6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425bec
  364808: aa0d         	add	r2, sp, #0x34
  36480a: ab0c         	add	r3, sp, #0x30
  36480c: 4610         	mov	r0, r2
  36480e: 4631         	mov	r1, r6
  364810: 461a         	mov	r2, r3
  364812: f052 f125    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45224a
  364816: ab0d         	add	r3, sp, #0x34
  364818: 4628         	mov	r0, r5
  36481a: 9915         	ldr	r1, [sp, #0x54]
  36481c: 461a         	mov	r2, r3
  36481e: f230 f88b    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x230116
  364822: ab0d         	add	r3, sp, #0x34
  364824: 4618         	mov	r0, r3
  364826: f051 f075    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4510ea
  36482a: ab0c         	add	r3, sp, #0x30
  36482c: 4618         	mov	r0, r3
  36482e: f025 f5e5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x425bca
  364832: e33a         	b	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x674
  364834: ab0a         	add	r3, sp, #0x28
  364836: 681b         	ldr	r3, [r3]
  364838: ee05 3a90    	vmov	s11, r3
  36483c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364840: eddd 7a14    	vldr	s15, [sp, #80]
  364844: ee77 7a67    	vsub.f32	s15, s14, s15
  364848: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36484c: ab09         	add	r3, sp, #0x24
  36484e: 681b         	ldr	r3, [r3]
  364850: ee07 3a90    	vmov	s15, r3
  364854: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364858: eddd 7a14    	vldr	s15, [sp, #80]
  36485c: ee77 7a67    	vsub.f32	s15, s14, s15
  364860: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364864: ab36         	add	r3, sp, #0xd8
  364866: 4618         	mov	r0, r3
  364868: eeb0 0b46    	vmov.f64	d0, d6
  36486c: eeb0 1b47    	vmov.f64	d1, d7
  364870: f7f9 f906    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6df4
  364874: ab0a         	add	r3, sp, #0x28
  364876: 681b         	ldr	r3, [r3]
  364878: ee05 3a90    	vmov	s11, r3
  36487c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364880: eddd 7a14    	vldr	s15, [sp, #80]
  364884: ee77 7a67    	vsub.f32	s15, s14, s15
  364888: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  36488c: ab09         	add	r3, sp, #0x24
  36488e: 681b         	ldr	r3, [r3]
  364890: ee07 3a90    	vmov	s15, r3
  364894: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364898: eddd 7a14    	vldr	s15, [sp, #80]
  36489c: ee77 7a27    	vadd.f32	s15, s14, s15
  3648a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3648a4: ab3a         	add	r3, sp, #0xe8
  3648a6: 4618         	mov	r0, r3
  3648a8: eeb0 0b46    	vmov.f64	d0, d6
  3648ac: eeb0 1b47    	vmov.f64	d1, d7
  3648b0: f7f9 f8e6    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6e34
  3648b4: ab0a         	add	r3, sp, #0x28
  3648b6: 681b         	ldr	r3, [r3]
  3648b8: ee05 3a90    	vmov	s11, r3
  3648bc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  3648c0: eddd 7a14    	vldr	s15, [sp, #80]
  3648c4: ee77 7a27    	vadd.f32	s15, s14, s15
  3648c8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3648cc: ab09         	add	r3, sp, #0x24
  3648ce: 681b         	ldr	r3, [r3]
  3648d0: ee07 3a90    	vmov	s15, r3
  3648d4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3648d8: eddd 7a14    	vldr	s15, [sp, #80]
  3648dc: ee77 7a27    	vadd.f32	s15, s14, s15
  3648e0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3648e4: ab3e         	add	r3, sp, #0xf8
  3648e6: 4618         	mov	r0, r3
  3648e8: eeb0 0b46    	vmov.f64	d0, d6
  3648ec: eeb0 1b47    	vmov.f64	d1, d7
  3648f0: f7f9 f8c6    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6e74
  3648f4: ab0a         	add	r3, sp, #0x28
  3648f6: 681b         	ldr	r3, [r3]
  3648f8: ee05 3a90    	vmov	s11, r3
  3648fc: eeb8 6be5    	vcvt.f64.s32	d6, s11
  364900: ab09         	add	r3, sp, #0x24
  364902: 681b         	ldr	r3, [r3]
  364904: ee07 3a90    	vmov	s15, r3
  364908: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  36490c: eddd 7a14    	vldr	s15, [sp, #80]
  364910: ee77 7a67    	vsub.f32	s15, s14, s15
  364914: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364918: ab42         	add	r3, sp, #0x108
  36491a: 4618         	mov	r0, r3
  36491c: eeb0 0b46    	vmov.f64	d0, d6
  364920: eeb0 1b47    	vmov.f64	d1, d7
  364924: f7f9 f8ac    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6ea8
  364928: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3649bc <MapManager::addStaticBodyShape(int, int)+0x3acc>
  36492a: 58e3         	ldr	r3, [r4, r3]
  36492c: 681f         	ldr	r7, [r3]
  36492e: ae36         	add	r6, sp, #0xd8
  364930: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x3649f8 <MapManager::addStaticBodyShape(int, int)+0x3b08>
  364932: 447b         	add	r3, pc
  364934: 466d         	mov	r5, sp
  364936: cb0f         	ldm	r3, {r0, r1, r2, r3}
  364938: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  36493c: 4638         	mov	r0, r7
  36493e: 2104         	movs	r1, #0x4
  364940: 4632         	mov	r2, r6
  364942: f370 f803    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x370006
  364946: 4603         	mov	r3, r0
  364948: 930f         	str	r3, [sp, #0x3c]
  36494a: 2018         	movs	r0, #0x18
  36494c: f023 f00a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x423014
  364950: 4603         	mov	r3, r0
  364952: 461d         	mov	r5, r3
  364954: 4628         	mov	r0, r5
  364956: f004 f893    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x4126
  36495a: 9515         	str	r5, [sp, #0x54]
  36495c: 9b15         	ldr	r3, [sp, #0x54]
  36495e: 4618         	mov	r0, r3
  364960: f233 facc    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x233598
  364964: 9b15         	ldr	r3, [sp, #0x54]
  364966: 9a0f         	ldr	r2, [sp, #0x3c]
  364968: 615a         	str	r2, [r3, #0x14]
  36496a: ab0b         	add	r3, sp, #0x2c
  36496c: 681b         	ldr	r3, [r3]
  36496e: 6a9d         	ldr	r5, [r3, #0x28]
  364970: 4b22         	ldr	r3, [pc, #0x88]         @ 0x3649fc <MapManager::addStaticBodyShape(int, int)+0x3b0c>
  364972: 447b         	add	r3, pc
  364974: 4618         	mov	r0, r3
  364976: 9910         	ldr	r1, [sp, #0x40]
  364978: 9a11         	ldr	r2, [sp, #0x44]
  36497a: f235 f8c9    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x235192
  36497e: 4603         	mov	r3, r0
  364980: 4618         	mov	r0, r3
  364982: f234 ffd1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x234fa2
  364986: 4606         	mov	r6, r0
  364988: ab0c         	add	r3, sp, #0x30
  36498a: 4618         	mov	r0, r3
  36498c: f025 f532    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425a64
  364990: aa0d         	add	r2, sp, #0x34
  364992: ab0c         	add	r3, sp, #0x30
  364994: 4610         	mov	r0, r2
  364996: 4631         	mov	r1, r6
  364998: 461a         	mov	r2, r3
  36499a: f052 f061    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4520c2
  36499e: ab0d         	add	r3, sp, #0x34
  3649a0: 4628         	mov	r0, r5
  3649a2: 9915         	ldr	r1, [sp, #0x54]
  3649a4: 461a         	mov	r2, r3
  3649a6: f22f ffc7    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x22ff8e
  3649aa: ab0d         	add	r3, sp, #0x34
  3649ac: 4618         	mov	r0, r3
  3649ae: f050 f7b1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450f62
  3649b2: ab0c         	add	r3, sp, #0x30
  3649b4: 4618         	mov	r0, r3
  3649b6: f025 f521    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x425a42
  3649ba: e276         	b	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x4ec
  3649bc: db9c         	blt	0x3648f8 <MapManager::addStaticBodyShape(int, int)+0x3a08> @ imm = #-0xc8
  3649be: ffff 8f3e    	vcvt.u32.f32	d24, d30, #0x1
  3649c2: 0046         	lsls	r6, r0, #0x1
  3649c4: 8e98         	ldrh	r0, [r3, #0x34]
  3649c6: 0046         	lsls	r6, r0, #0x1
  3649c8: 8dae         	ldrh	r6, [r5, #0x2c]
  3649ca: 0046         	lsls	r6, r0, #0x1
  3649cc: 8d08         	ldrh	r0, [r1, #0x28]
  3649ce: 0046         	lsls	r6, r0, #0x1
  3649d0: 8c1e         	ldrh	r6, [r3, #0x20]
  3649d2: 0046         	lsls	r6, r0, #0x1
  3649d4: 8b78         	ldrh	r0, [r7, #0x1a]
  3649d6: 0046         	lsls	r6, r0, #0x1
  3649d8: 8a8e         	ldrh	r6, [r1, #0x14]
  3649da: 0046         	lsls	r6, r0, #0x1
  3649dc: 89e8         	ldrh	r0, [r5, #0xe]
  3649de: 0046         	lsls	r6, r0, #0x1
  3649e0: 88fe         	ldrh	r6, [r7, #0x6]
  3649e2: 0046         	lsls	r6, r0, #0x1
  3649e4: 8858         	ldrh	r0, [r3, #0x2]
  3649e6: 0046         	lsls	r6, r0, #0x1
  3649e8: 8772         	strh	r2, [r6, #0x3a]
  3649ea: 0046         	lsls	r6, r0, #0x1
  3649ec: 86ce         	strh	r6, [r1, #0x36]
  3649ee: 0046         	lsls	r6, r0, #0x1
  3649f0: 85ea         	strh	r2, [r5, #0x2e]
  3649f2: 0046         	lsls	r6, r0, #0x1
  3649f4: 8546         	strh	r6, [r0, #0x2a]
  3649f6: 0046         	lsls	r6, r0, #0x1
  3649f8: 8462         	strh	r2, [r4, #0x22]
  3649fa: 0046         	lsls	r6, r0, #0x1
  3649fc: 83be         	strh	r6, [r7, #0x1c]
  3649fe: 0046         	lsls	r6, r0, #0x1
  364a00: ab0a         	add	r3, sp, #0x28
  364a02: 681b         	ldr	r3, [r3]
  364a04: ee05 3a90    	vmov	s11, r3
  364a08: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364a0c: eddd 7a14    	vldr	s15, [sp, #80]
  364a10: ee77 7a67    	vsub.f32	s15, s14, s15
  364a14: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364a18: ab09         	add	r3, sp, #0x24
  364a1a: 681b         	ldr	r3, [r3]
  364a1c: ee05 3a90    	vmov	s11, r3
  364a20: eeb8 7be5    	vcvt.f64.s32	d7, s11
  364a24: ab36         	add	r3, sp, #0xd8
  364a26: 4618         	mov	r0, r3
  364a28: eeb0 0b46    	vmov.f64	d0, d6
  364a2c: eeb0 1b47    	vmov.f64	d1, d7
  364a30: f7f9 f826    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6fb4
  364a34: ab0a         	add	r3, sp, #0x28
  364a36: 681b         	ldr	r3, [r3]
  364a38: ee06 3a90    	vmov	s13, r3
  364a3c: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  364a40: eddd 7a14    	vldr	s15, [sp, #80]
  364a44: ee77 7a67    	vsub.f32	s15, s14, s15
  364a48: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364a4c: ab09         	add	r3, sp, #0x24
  364a4e: 681b         	ldr	r3, [r3]
  364a50: ee07 3a90    	vmov	s15, r3
  364a54: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364a58: eddd 7a14    	vldr	s15, [sp, #80]
  364a5c: ee77 7a27    	vadd.f32	s15, s14, s15
  364a60: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364a64: ab3a         	add	r3, sp, #0xe8
  364a66: 4618         	mov	r0, r3
  364a68: eeb0 0b46    	vmov.f64	d0, d6
  364a6c: eeb0 1b47    	vmov.f64	d1, d7
  364a70: f7f9 f806    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x6ff4
  364a74: ab0a         	add	r3, sp, #0x28
  364a76: 681b         	ldr	r3, [r3]
  364a78: ee05 3a90    	vmov	s11, r3
  364a7c: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364a80: eddd 7a14    	vldr	s15, [sp, #80]
  364a84: ee77 7a27    	vadd.f32	s15, s14, s15
  364a88: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364a8c: ab09         	add	r3, sp, #0x24
  364a8e: 681b         	ldr	r3, [r3]
  364a90: ee07 3a90    	vmov	s15, r3
  364a94: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364a98: eddd 7a14    	vldr	s15, [sp, #80]
  364a9c: ee77 7a27    	vadd.f32	s15, s14, s15
  364aa0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364aa4: ab3e         	add	r3, sp, #0xf8
  364aa6: 4618         	mov	r0, r3
  364aa8: eeb0 0b46    	vmov.f64	d0, d6
  364aac: eeb0 1b47    	vmov.f64	d1, d7
  364ab0: f7f8 ffe6    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7034
  364ab4: ab0a         	add	r3, sp, #0x28
  364ab6: 681b         	ldr	r3, [r3]
  364ab8: ee05 3a90    	vmov	s11, r3
  364abc: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364ac0: eddd 7a14    	vldr	s15, [sp, #80]
  364ac4: ee77 7a27    	vadd.f32	s15, s14, s15
  364ac8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364acc: ab09         	add	r3, sp, #0x24
  364ace: 681b         	ldr	r3, [r3]
  364ad0: ee07 3a90    	vmov	s15, r3
  364ad4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364ad8: eddd 7a14    	vldr	s15, [sp, #80]
  364adc: ee77 7a67    	vsub.f32	s15, s14, s15
  364ae0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364ae4: ab42         	add	r3, sp, #0x108
  364ae6: 4618         	mov	r0, r3
  364ae8: eeb0 0b46    	vmov.f64	d0, d6
  364aec: eeb0 1b47    	vmov.f64	d1, d7
  364af0: f7f8 ffc6    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7074
  364af4: f8df 38f0    	ldr.w	r3, [pc, #0x8f0]        @ 0x3653e8 <MapManager::addStaticBodyShape(int, int)+0x44f8>
  364af8: 58e3         	ldr	r3, [r4, r3]
  364afa: 681f         	ldr	r7, [r3]
  364afc: ae36         	add	r6, sp, #0xd8
  364afe: f8df 38ec    	ldr.w	r3, [pc, #0x8ec]        @ 0x3653ec <MapManager::addStaticBodyShape(int, int)+0x44fc>
  364b02: 447b         	add	r3, pc
  364b04: 466d         	mov	r5, sp
  364b06: cb0f         	ldm	r3, {r0, r1, r2, r3}
  364b08: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  364b0c: 4638         	mov	r0, r7
  364b0e: 2104         	movs	r1, #0x4
  364b10: 4632         	mov	r2, r6
  364b12: f36f ff1b    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x36fe36
  364b16: 4603         	mov	r3, r0
  364b18: 930f         	str	r3, [sp, #0x3c]
  364b1a: 2018         	movs	r0, #0x18
  364b1c: f022 f722    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x422e44
  364b20: 4603         	mov	r3, r0
  364b22: 461d         	mov	r5, r3
  364b24: 4628         	mov	r0, r5
  364b26: f003 ffab    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x3f56
  364b2a: 9515         	str	r5, [sp, #0x54]
  364b2c: 9b15         	ldr	r3, [sp, #0x54]
  364b2e: 4618         	mov	r0, r3
  364b30: f233 f9e4    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2333c8
  364b34: 9b15         	ldr	r3, [sp, #0x54]
  364b36: 9a0f         	ldr	r2, [sp, #0x3c]
  364b38: 615a         	str	r2, [r3, #0x14]
  364b3a: ab0b         	add	r3, sp, #0x2c
  364b3c: 681b         	ldr	r3, [r3]
  364b3e: 6a9d         	ldr	r5, [r3, #0x28]
  364b40: f8df 38ac    	ldr.w	r3, [pc, #0x8ac]        @ 0x3653f0 <MapManager::addStaticBodyShape(int, int)+0x4500>
  364b44: 447b         	add	r3, pc
  364b46: 4618         	mov	r0, r3
  364b48: 9910         	ldr	r1, [sp, #0x40]
  364b4a: 9a11         	ldr	r2, [sp, #0x44]
  364b4c: f234 ffe0    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x234fc0
  364b50: 4603         	mov	r3, r0
  364b52: 4618         	mov	r0, r3
  364b54: f234 fee8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x234dd0
  364b58: 4606         	mov	r6, r0
  364b5a: ab0c         	add	r3, sp, #0x30
  364b5c: 4618         	mov	r0, r3
  364b5e: f025 f449    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425892
  364b62: aa0d         	add	r2, sp, #0x34
  364b64: ab0c         	add	r3, sp, #0x30
  364b66: 4610         	mov	r0, r2
  364b68: 4631         	mov	r1, r6
  364b6a: 461a         	mov	r2, r3
  364b6c: f051 f778    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x451ef0
  364b70: ab0d         	add	r3, sp, #0x34
  364b72: 4628         	mov	r0, r5
  364b74: 9915         	ldr	r1, [sp, #0x54]
  364b76: 461a         	mov	r2, r3
  364b78: f22f fede    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x22fdbc
  364b7c: ab0d         	add	r3, sp, #0x34
  364b7e: 4618         	mov	r0, r3
  364b80: f050 f6c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450d90
  364b84: ab0c         	add	r3, sp, #0x30
  364b86: 4618         	mov	r0, r3
  364b88: f025 f438    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x425870
  364b8c: e18d         	b	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x31a
  364b8e: ab0a         	add	r3, sp, #0x28
  364b90: 681b         	ldr	r3, [r3]
  364b92: ee05 3a90    	vmov	s11, r3
  364b96: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364b9a: eddd 7a14    	vldr	s15, [sp, #80]
  364b9e: ee77 7a67    	vsub.f32	s15, s14, s15
  364ba2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364ba6: ab09         	add	r3, sp, #0x24
  364ba8: 681b         	ldr	r3, [r3]
  364baa: ee07 3a90    	vmov	s15, r3
  364bae: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364bb2: eddd 7a14    	vldr	s15, [sp, #80]
  364bb6: ee77 7a67    	vsub.f32	s15, s14, s15
  364bba: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364bbe: ab36         	add	r3, sp, #0xd8
  364bc0: 4618         	mov	r0, r3
  364bc2: eeb0 0b46    	vmov.f64	d0, d6
  364bc6: eeb0 1b47    	vmov.f64	d1, d7
  364bca: f7f8 ff59    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x714e
  364bce: ab0a         	add	r3, sp, #0x28
  364bd0: 681b         	ldr	r3, [r3]
  364bd2: ee05 3a90    	vmov	s11, r3
  364bd6: eeb8 6be5    	vcvt.f64.s32	d6, s11
  364bda: ab09         	add	r3, sp, #0x24
  364bdc: 681b         	ldr	r3, [r3]
  364bde: ee07 3a90    	vmov	s15, r3
  364be2: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364be6: eddd 7a14    	vldr	s15, [sp, #80]
  364bea: ee77 7a27    	vadd.f32	s15, s14, s15
  364bee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364bf2: ab3a         	add	r3, sp, #0xe8
  364bf4: 4618         	mov	r0, r3
  364bf6: eeb0 0b46    	vmov.f64	d0, d6
  364bfa: eeb0 1b47    	vmov.f64	d1, d7
  364bfe: f7f8 ff3f    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7182
  364c02: ab0a         	add	r3, sp, #0x28
  364c04: 681b         	ldr	r3, [r3]
  364c06: ee05 3a90    	vmov	s11, r3
  364c0a: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364c0e: eddd 7a14    	vldr	s15, [sp, #80]
  364c12: ee77 7a27    	vadd.f32	s15, s14, s15
  364c16: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364c1a: ab09         	add	r3, sp, #0x24
  364c1c: 681b         	ldr	r3, [r3]
  364c1e: ee07 3a90    	vmov	s15, r3
  364c22: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364c26: eddd 7a14    	vldr	s15, [sp, #80]
  364c2a: ee77 7a27    	vadd.f32	s15, s14, s15
  364c2e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364c32: ab3e         	add	r3, sp, #0xf8
  364c34: 4618         	mov	r0, r3
  364c36: eeb0 0b46    	vmov.f64	d0, d6
  364c3a: eeb0 1b47    	vmov.f64	d1, d7
  364c3e: f7f8 ff1f    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x71c2
  364c42: ab0a         	add	r3, sp, #0x28
  364c44: 681b         	ldr	r3, [r3]
  364c46: ee05 3a90    	vmov	s11, r3
  364c4a: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364c4e: eddd 7a14    	vldr	s15, [sp, #80]
  364c52: ee77 7a27    	vadd.f32	s15, s14, s15
  364c56: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364c5a: ab09         	add	r3, sp, #0x24
  364c5c: 681b         	ldr	r3, [r3]
  364c5e: ee07 3a90    	vmov	s15, r3
  364c62: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364c66: eddd 7a14    	vldr	s15, [sp, #80]
  364c6a: ee77 7a67    	vsub.f32	s15, s14, s15
  364c6e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364c72: ab42         	add	r3, sp, #0x108
  364c74: 4618         	mov	r0, r3
  364c76: eeb0 0b46    	vmov.f64	d0, d6
  364c7a: eeb0 1b47    	vmov.f64	d1, d7
  364c7e: f7f8 feff    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7202
  364c82: f8df 3764    	ldr.w	r3, [pc, #0x764]        @ 0x3653e8 <MapManager::addStaticBodyShape(int, int)+0x44f8>
  364c86: 58e3         	ldr	r3, [r4, r3]
  364c88: 681f         	ldr	r7, [r3]
  364c8a: ae36         	add	r6, sp, #0xd8
  364c8c: f8df 3764    	ldr.w	r3, [pc, #0x764]        @ 0x3653f4 <MapManager::addStaticBodyShape(int, int)+0x4504>
  364c90: 447b         	add	r3, pc
  364c92: 466d         	mov	r5, sp
  364c94: cb0f         	ldm	r3, {r0, r1, r2, r3}
  364c96: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  364c9a: 4638         	mov	r0, r7
  364c9c: 2104         	movs	r1, #0x4
  364c9e: 4632         	mov	r2, r6
  364ca0: f36f fe54    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x36fca8
  364ca4: 4603         	mov	r3, r0
  364ca6: 930f         	str	r3, [sp, #0x3c]
  364ca8: 2018         	movs	r0, #0x18
  364caa: f022 f65b    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x422cb6
  364cae: 4603         	mov	r3, r0
  364cb0: 461d         	mov	r5, r3
  364cb2: 4628         	mov	r0, r5
  364cb4: f003 fee4    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x3dc8
  364cb8: 9515         	str	r5, [sp, #0x54]
  364cba: 9b15         	ldr	r3, [sp, #0x54]
  364cbc: 4618         	mov	r0, r3
  364cbe: f233 f91d    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x23323a
  364cc2: 9b15         	ldr	r3, [sp, #0x54]
  364cc4: 9a0f         	ldr	r2, [sp, #0x3c]
  364cc6: 615a         	str	r2, [r3, #0x14]
  364cc8: ab0b         	add	r3, sp, #0x2c
  364cca: 681b         	ldr	r3, [r3]
  364ccc: 6a9d         	ldr	r5, [r3, #0x28]
  364cce: f8df 3728    	ldr.w	r3, [pc, #0x728]        @ 0x3653f8 <MapManager::addStaticBodyShape(int, int)+0x4508>
  364cd2: 447b         	add	r3, pc
  364cd4: 4618         	mov	r0, r3
  364cd6: 9910         	ldr	r1, [sp, #0x40]
  364cd8: 9a11         	ldr	r2, [sp, #0x44]
  364cda: f234 ff19    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x234e32
  364cde: 4603         	mov	r3, r0
  364ce0: 4618         	mov	r0, r3
  364ce2: f234 fe21    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x234c42
  364ce6: 4606         	mov	r6, r0
  364ce8: ab0c         	add	r3, sp, #0x30
  364cea: 4618         	mov	r0, r3
  364cec: f025 f382    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425704
  364cf0: aa0d         	add	r2, sp, #0x34
  364cf2: ab0c         	add	r3, sp, #0x30
  364cf4: 4610         	mov	r0, r2
  364cf6: 4631         	mov	r1, r6
  364cf8: 461a         	mov	r2, r3
  364cfa: f051 f6b1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x451d62
  364cfe: ab0d         	add	r3, sp, #0x34
  364d00: 4628         	mov	r0, r5
  364d02: 9915         	ldr	r1, [sp, #0x54]
  364d04: 461a         	mov	r2, r3
  364d06: f22f fe17    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x22fc2e
  364d0a: ab0d         	add	r3, sp, #0x34
  364d0c: 4618         	mov	r0, r3
  364d0e: f050 f601    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450c02
  364d12: ab0c         	add	r3, sp, #0x30
  364d14: 4618         	mov	r0, r3
  364d16: f025 f371    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4256e2
  364d1a: e0c6         	b	0x364eaa <MapManager::addStaticBodyShape(int, int)+0x3fba> @ imm = #0x18c
  364d1c: ab0a         	add	r3, sp, #0x28
  364d1e: 681b         	ldr	r3, [r3]
  364d20: ee05 3a90    	vmov	s11, r3
  364d24: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364d28: eddd 7a14    	vldr	s15, [sp, #80]
  364d2c: ee77 7a67    	vsub.f32	s15, s14, s15
  364d30: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364d34: ab09         	add	r3, sp, #0x24
  364d36: 681b         	ldr	r3, [r3]
  364d38: ee07 3a90    	vmov	s15, r3
  364d3c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364d40: eddd 7a14    	vldr	s15, [sp, #80]
  364d44: ee77 7a67    	vsub.f32	s15, s14, s15
  364d48: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364d4c: ab36         	add	r3, sp, #0xd8
  364d4e: 4618         	mov	r0, r3
  364d50: eeb0 0b46    	vmov.f64	d0, d6
  364d54: eeb0 1b47    	vmov.f64	d1, d7
  364d58: f7f8 fe92    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x72dc
  364d5c: ab0a         	add	r3, sp, #0x28
  364d5e: 681b         	ldr	r3, [r3]
  364d60: ee05 3a90    	vmov	s11, r3
  364d64: eeb8 6be5    	vcvt.f64.s32	d6, s11
  364d68: ab09         	add	r3, sp, #0x24
  364d6a: 681b         	ldr	r3, [r3]
  364d6c: ee07 3a90    	vmov	s15, r3
  364d70: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364d74: eddd 7a14    	vldr	s15, [sp, #80]
  364d78: ee77 7a27    	vadd.f32	s15, s14, s15
  364d7c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364d80: ab3a         	add	r3, sp, #0xe8
  364d82: 4618         	mov	r0, r3
  364d84: eeb0 0b46    	vmov.f64	d0, d6
  364d88: eeb0 1b47    	vmov.f64	d1, d7
  364d8c: f7f8 fe78    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7310
  364d90: ab0a         	add	r3, sp, #0x28
  364d92: 681b         	ldr	r3, [r3]
  364d94: ee05 3a90    	vmov	s11, r3
  364d98: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364d9c: eddd 7a14    	vldr	s15, [sp, #80]
  364da0: ee77 7a27    	vadd.f32	s15, s14, s15
  364da4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364da8: ab09         	add	r3, sp, #0x24
  364daa: 681b         	ldr	r3, [r3]
  364dac: ee07 3a90    	vmov	s15, r3
  364db0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364db4: eddd 7a14    	vldr	s15, [sp, #80]
  364db8: ee77 7a27    	vadd.f32	s15, s14, s15
  364dbc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364dc0: ab3e         	add	r3, sp, #0xf8
  364dc2: 4618         	mov	r0, r3
  364dc4: eeb0 0b46    	vmov.f64	d0, d6
  364dc8: eeb0 1b47    	vmov.f64	d1, d7
  364dcc: f7f8 fe58    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7350
  364dd0: ab0a         	add	r3, sp, #0x28
  364dd2: 681b         	ldr	r3, [r3]
  364dd4: ee05 3a90    	vmov	s11, r3
  364dd8: eeb8 7ae5    	vcvt.f32.s32	s14, s11
  364ddc: eddd 7a14    	vldr	s15, [sp, #80]
  364de0: ee77 7a27    	vadd.f32	s15, s14, s15
  364de4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  364de8: ab09         	add	r3, sp, #0x24
  364dea: 681b         	ldr	r3, [r3]
  364dec: ee07 3a90    	vmov	s15, r3
  364df0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  364df4: eddd 7a14    	vldr	s15, [sp, #80]
  364df8: ee77 7a67    	vsub.f32	s15, s14, s15
  364dfc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  364e00: ab42         	add	r3, sp, #0x108
  364e02: 4618         	mov	r0, r3
  364e04: eeb0 0b46    	vmov.f64	d0, d6
  364e08: eeb0 1b47    	vmov.f64	d1, d7
  364e0c: f7f8 fe38    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7390
  364e10: f8df 35d4    	ldr.w	r3, [pc, #0x5d4]        @ 0x3653e8 <MapManager::addStaticBodyShape(int, int)+0x44f8>
  364e14: 58e3         	ldr	r3, [r4, r3]
  364e16: 681f         	ldr	r7, [r3]
  364e18: ae36         	add	r6, sp, #0xd8
  364e1a: f8df 35e0    	ldr.w	r3, [pc, #0x5e0]        @ 0x3653fc <MapManager::addStaticBodyShape(int, int)+0x450c>
  364e1e: 447b         	add	r3, pc
  364e20: 466d         	mov	r5, sp
  364e22: cb0f         	ldm	r3, {r0, r1, r2, r3}
  364e24: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  364e28: 4638         	mov	r0, r7
  364e2a: 2104         	movs	r1, #0x4
  364e2c: 4632         	mov	r2, r6
  364e2e: f36f fd8d    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x36fb1a
  364e32: 4603         	mov	r3, r0
  364e34: 930f         	str	r3, [sp, #0x3c]
  364e36: 2018         	movs	r0, #0x18
  364e38: f022 f594    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x422b28
  364e3c: 4603         	mov	r3, r0
  364e3e: 461d         	mov	r5, r3
  364e40: 4628         	mov	r0, r5
  364e42: f003 fe1d    	bl	0x368a80 <MapStaticShape::MapStaticShape()> @ imm = #0x3c3a
  364e46: 9515         	str	r5, [sp, #0x54]
  364e48: 9b15         	ldr	r3, [sp, #0x54]
  364e4a: 4618         	mov	r0, r3
  364e4c: f233 f856    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2330ac
  364e50: 9b15         	ldr	r3, [sp, #0x54]
  364e52: 9a0f         	ldr	r2, [sp, #0x3c]
  364e54: 615a         	str	r2, [r3, #0x14]
  364e56: ab0b         	add	r3, sp, #0x2c
  364e58: 681b         	ldr	r3, [r3]
  364e5a: 6a9d         	ldr	r5, [r3, #0x28]
  364e5c: f8df 35a0    	ldr.w	r3, [pc, #0x5a0]        @ 0x365400 <MapManager::addStaticBodyShape(int, int)+0x4510>
  364e60: 447b         	add	r3, pc
  364e62: 4618         	mov	r0, r3
  364e64: 9910         	ldr	r1, [sp, #0x40]
  364e66: 9a11         	ldr	r2, [sp, #0x44]
  364e68: f234 fe52    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x234ca4
  364e6c: 4603         	mov	r3, r0
  364e6e: 4618         	mov	r0, r3
  364e70: f234 fd5a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x234ab4
  364e74: 4606         	mov	r6, r0
  364e76: ab0c         	add	r3, sp, #0x30
  364e78: 4618         	mov	r0, r3
  364e7a: f025 f2bb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x425576
  364e7e: aa0d         	add	r2, sp, #0x34
  364e80: ab0c         	add	r3, sp, #0x30
  364e82: 4610         	mov	r0, r2
  364e84: 4631         	mov	r1, r6
  364e86: 461a         	mov	r2, r3
  364e88: f051 f5ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x451bd4
  364e8c: ab0d         	add	r3, sp, #0x34
  364e8e: 4628         	mov	r0, r5
  364e90: 9915         	ldr	r1, [sp, #0x54]
  364e92: 461a         	mov	r2, r3
  364e94: f22f fd50    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x22faa0
  364e98: ab0d         	add	r3, sp, #0x34
  364e9a: 4618         	mov	r0, r3
  364e9c: f050 f53a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450a74
  364ea0: ab0c         	add	r3, sp, #0x30
  364ea2: 4618         	mov	r0, r3
  364ea4: f025 f2aa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x425554
  364ea8: bf00         	nop
  364eaa: 9b0f         	ldr	r3, [sp, #0x3c]
  364eac: f240 1243    	movw	r2, #0x143
  364eb0: 655a         	str	r2, [r3, #0x54]
  364eb2: 9b0f         	ldr	r3, [sp, #0x3c]
  364eb4: f240 1243    	movw	r2, #0x143
  364eb8: 65da         	str	r2, [r3, #0x5c]
  364eba: 9b0f         	ldr	r3, [sp, #0x3c]
  364ebc: f240 1243    	movw	r2, #0x143
  364ec0: 659a         	str	r2, [r3, #0x58]
  364ec2: 990f         	ldr	r1, [sp, #0x3c]
  364ec4: f20f 5318    	adr.w	r3, #1304
  364ec8: e9d3 2300    	ldrd	r2, r3, [r3]
  364ecc: e9c1 230c    	strd	r2, r3, [r1, #48]
  364ed0: 990f         	ldr	r1, [sp, #0x3c]
  364ed2: f04f 0200    	mov.w	r2, #0x0
  364ed6: f04f 0300    	mov.w	r3, #0x0
  364eda: f6c3 73e0    	movt	r3, #0x3fe0
  364ede: e9c1 230e    	strd	r2, r3, [r1, #56]
  364ee2: f8df 3520    	ldr.w	r3, [pc, #0x520]        @ 0x365404 <MapManager::addStaticBodyShape(int, int)+0x4514>
  364ee6: 58e3         	ldr	r3, [r4, r3]
  364ee8: 681b         	ldr	r3, [r3]
  364eea: 4618         	mov	r0, r3
  364eec: 990f         	ldr	r1, [sp, #0x3c]
  364eee: f371 f903    	bl	0x6d60f8 <cpSpaceAddStaticShape> @ imm = #0x371206
  364ef2: e270         	b	0x3653d6 <MapManager::addStaticBodyShape(int, int)+0x44e6> @ imm = #0x4e0
  364ef4: 4628         	mov	r0, r5
  364ef6: f023 f0d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4231aa
  364efa: f023 f0d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4231ae
  364efe: ab0d         	add	r3, sp, #0x34
  364f00: 4618         	mov	r0, r3
  364f02: f050 f507    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450a0e
  364f06: e7ff         	b	0x364f08 <MapManager::addStaticBodyShape(int, int)+0x4018> @ imm = #-0x2
  364f08: ab0c         	add	r3, sp, #0x30
  364f0a: 4618         	mov	r0, r3
  364f0c: f025 f276    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4254ec
  364f10: f023 f0cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423198
  364f14: 4628         	mov	r0, r5
  364f16: f023 f0c5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42318a
  364f1a: f023 f0c7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42318e
  364f1e: ab0d         	add	r3, sp, #0x34
  364f20: 4618         	mov	r0, r3
  364f22: f050 f4f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4509ee
  364f26: e7ff         	b	0x364f28 <MapManager::addStaticBodyShape(int, int)+0x4038> @ imm = #-0x2
  364f28: ab0c         	add	r3, sp, #0x30
  364f2a: 4618         	mov	r0, r3
  364f2c: f025 f266    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4254cc
  364f30: f023 f0bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423178
  364f34: 4628         	mov	r0, r5
  364f36: f023 f0b5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42316a
  364f3a: f023 f0b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42316e
  364f3e: ab0d         	add	r3, sp, #0x34
  364f40: 4618         	mov	r0, r3
  364f42: f050 f4e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4509ce
  364f46: e7ff         	b	0x364f48 <MapManager::addStaticBodyShape(int, int)+0x4058> @ imm = #-0x2
  364f48: ab0c         	add	r3, sp, #0x30
  364f4a: 4618         	mov	r0, r3
  364f4c: f025 f256    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4254ac
  364f50: f023 f0ac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423158
  364f54: 4628         	mov	r0, r5
  364f56: f023 f0a5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42314a
  364f5a: f023 f0a7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42314e
  364f5e: ab0d         	add	r3, sp, #0x34
  364f60: 4618         	mov	r0, r3
  364f62: f050 f4d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4509ae
  364f66: e7ff         	b	0x364f68 <MapManager::addStaticBodyShape(int, int)+0x4078> @ imm = #-0x2
  364f68: ab0c         	add	r3, sp, #0x30
  364f6a: 4618         	mov	r0, r3
  364f6c: f025 f246    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42548c
  364f70: f023 f09c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423138
  364f74: 4628         	mov	r0, r5
  364f76: f023 f095    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42312a
  364f7a: f023 f097    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42312e
  364f7e: ab0d         	add	r3, sp, #0x34
  364f80: 4618         	mov	r0, r3
  364f82: f050 f4c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45098e
  364f86: e7ff         	b	0x364f88 <MapManager::addStaticBodyShape(int, int)+0x4098> @ imm = #-0x2
  364f88: ab0c         	add	r3, sp, #0x30
  364f8a: 4618         	mov	r0, r3
  364f8c: f025 f236    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42546c
  364f90: f023 f08c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423118
  364f94: 4628         	mov	r0, r5
  364f96: f023 f085    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42310a
  364f9a: f023 f087    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42310e
  364f9e: ab0d         	add	r3, sp, #0x34
  364fa0: 4618         	mov	r0, r3
  364fa2: f050 f4b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45096e
  364fa6: e7ff         	b	0x364fa8 <MapManager::addStaticBodyShape(int, int)+0x40b8> @ imm = #-0x2
  364fa8: ab0c         	add	r3, sp, #0x30
  364faa: 4618         	mov	r0, r3
  364fac: f025 f226    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42544c
  364fb0: f023 f07c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4230f8
  364fb4: 4628         	mov	r0, r5
  364fb6: f023 f075    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4230ea
  364fba: f023 f077    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4230ee
  364fbe: ab0d         	add	r3, sp, #0x34
  364fc0: 4618         	mov	r0, r3
  364fc2: f050 f4a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45094e
  364fc6: e7ff         	b	0x364fc8 <MapManager::addStaticBodyShape(int, int)+0x40d8> @ imm = #-0x2
  364fc8: ab0c         	add	r3, sp, #0x30
  364fca: 4618         	mov	r0, r3
  364fcc: f025 f216    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42542c
  364fd0: f023 f06c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4230d8
  364fd4: 4628         	mov	r0, r5
  364fd6: f023 f065    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4230ca
  364fda: f023 f067    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4230ce
  364fde: ab0d         	add	r3, sp, #0x34
  364fe0: 4618         	mov	r0, r3
  364fe2: f050 f497    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45092e
  364fe6: e7ff         	b	0x364fe8 <MapManager::addStaticBodyShape(int, int)+0x40f8> @ imm = #-0x2
  364fe8: ab0c         	add	r3, sp, #0x30
  364fea: 4618         	mov	r0, r3
  364fec: f025 f206    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42540c
  364ff0: f023 f05c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4230b8
  364ff4: 4628         	mov	r0, r5
  364ff6: f023 f055    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4230aa
  364ffa: f023 f057    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4230ae
  364ffe: ab0d         	add	r3, sp, #0x34
  365000: 4618         	mov	r0, r3
  365002: f050 f487    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45090e
  365006: e7ff         	b	0x365008 <MapManager::addStaticBodyShape(int, int)+0x4118> @ imm = #-0x2
  365008: ab0c         	add	r3, sp, #0x30
  36500a: 4618         	mov	r0, r3
  36500c: f025 f1f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4253ec
  365010: f023 f04c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423098
  365014: 4628         	mov	r0, r5
  365016: f023 f045    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42308a
  36501a: f023 f047    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42308e
  36501e: ab0d         	add	r3, sp, #0x34
  365020: 4618         	mov	r0, r3
  365022: f050 f477    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4508ee
  365026: e7ff         	b	0x365028 <MapManager::addStaticBodyShape(int, int)+0x4138> @ imm = #-0x2
  365028: ab0c         	add	r3, sp, #0x30
  36502a: 4618         	mov	r0, r3
  36502c: f025 f1e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4253cc
  365030: f023 f03c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423078
  365034: 4628         	mov	r0, r5
  365036: f023 f035    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42306a
  36503a: f023 f037    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42306e
  36503e: ab0d         	add	r3, sp, #0x34
  365040: 4618         	mov	r0, r3
  365042: f050 f467    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4508ce
  365046: e7ff         	b	0x365048 <MapManager::addStaticBodyShape(int, int)+0x4158> @ imm = #-0x2
  365048: ab0c         	add	r3, sp, #0x30
  36504a: 4618         	mov	r0, r3
  36504c: f025 f1d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4253ac
  365050: f023 f02c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423058
  365054: 4628         	mov	r0, r5
  365056: f023 f025    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42304a
  36505a: f023 f027    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42304e
  36505e: ab0d         	add	r3, sp, #0x34
  365060: 4618         	mov	r0, r3
  365062: f050 f457    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4508ae
  365066: e7ff         	b	0x365068 <MapManager::addStaticBodyShape(int, int)+0x4178> @ imm = #-0x2
  365068: ab0c         	add	r3, sp, #0x30
  36506a: 4618         	mov	r0, r3
  36506c: f025 f1c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42538c
  365070: f023 f01c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423038
  365074: 4628         	mov	r0, r5
  365076: f023 f015    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42302a
  36507a: f023 f017    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42302e
  36507e: ab0d         	add	r3, sp, #0x34
  365080: 4618         	mov	r0, r3
  365082: f050 f447    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45088e
  365086: e7ff         	b	0x365088 <MapManager::addStaticBodyShape(int, int)+0x4198> @ imm = #-0x2
  365088: ab0c         	add	r3, sp, #0x30
  36508a: 4618         	mov	r0, r3
  36508c: f025 f1b6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42536c
  365090: f023 f00c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x423018
  365094: 4628         	mov	r0, r5
  365096: f023 f005    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x42300a
  36509a: f023 f007    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x42300e
  36509e: ab0d         	add	r3, sp, #0x34
  3650a0: 4618         	mov	r0, r3
  3650a2: f050 f437    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45086e
  3650a6: e7ff         	b	0x3650a8 <MapManager::addStaticBodyShape(int, int)+0x41b8> @ imm = #-0x2
  3650a8: ab0c         	add	r3, sp, #0x30
  3650aa: 4618         	mov	r0, r3
  3650ac: f025 f1a6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42534c
  3650b0: f022 f7fc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422ff8
  3650b4: 4628         	mov	r0, r5
  3650b6: f022 f7f5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422fea
  3650ba: f022 f7f7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422fee
  3650be: ab0d         	add	r3, sp, #0x34
  3650c0: 4618         	mov	r0, r3
  3650c2: f050 f427    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45084e
  3650c6: e7ff         	b	0x3650c8 <MapManager::addStaticBodyShape(int, int)+0x41d8> @ imm = #-0x2
  3650c8: ab0c         	add	r3, sp, #0x30
  3650ca: 4618         	mov	r0, r3
  3650cc: f025 f196    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42532c
  3650d0: f022 f7ec    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422fd8
  3650d4: 4628         	mov	r0, r5
  3650d6: f022 f7e5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422fca
  3650da: f022 f7e7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422fce
  3650de: ab0d         	add	r3, sp, #0x34
  3650e0: 4618         	mov	r0, r3
  3650e2: f050 f417    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45082e
  3650e6: e7ff         	b	0x3650e8 <MapManager::addStaticBodyShape(int, int)+0x41f8> @ imm = #-0x2
  3650e8: ab0c         	add	r3, sp, #0x30
  3650ea: 4618         	mov	r0, r3
  3650ec: f025 f186    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42530c
  3650f0: f022 f7dc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422fb8
  3650f4: 4628         	mov	r0, r5
  3650f6: f022 f7d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422faa
  3650fa: f022 f7d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422fae
  3650fe: ab0d         	add	r3, sp, #0x34
  365100: 4618         	mov	r0, r3
  365102: f050 f407    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45080e
  365106: e7ff         	b	0x365108 <MapManager::addStaticBodyShape(int, int)+0x4218> @ imm = #-0x2
  365108: ab0c         	add	r3, sp, #0x30
  36510a: 4618         	mov	r0, r3
  36510c: f025 f176    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4252ec
  365110: f022 f7cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f98
  365114: 4628         	mov	r0, r5
  365116: f022 f7c5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422f8a
  36511a: f022 f7c7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f8e
  36511e: ab0d         	add	r3, sp, #0x34
  365120: 4618         	mov	r0, r3
  365122: f050 f3f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4507ee
  365126: e7ff         	b	0x365128 <MapManager::addStaticBodyShape(int, int)+0x4238> @ imm = #-0x2
  365128: ab0c         	add	r3, sp, #0x30
  36512a: 4618         	mov	r0, r3
  36512c: f025 f166    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4252cc
  365130: f022 f7bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f78
  365134: 4628         	mov	r0, r5
  365136: f022 f7b5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422f6a
  36513a: f022 f7b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f6e
  36513e: ab0d         	add	r3, sp, #0x34
  365140: 4618         	mov	r0, r3
  365142: f050 f3e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4507ce
  365146: e7ff         	b	0x365148 <MapManager::addStaticBodyShape(int, int)+0x4258> @ imm = #-0x2
  365148: ab0c         	add	r3, sp, #0x30
  36514a: 4618         	mov	r0, r3
  36514c: f025 f156    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4252ac
  365150: f022 f7ac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f58
  365154: 4628         	mov	r0, r5
  365156: f022 f7a5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422f4a
  36515a: f022 f7a7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f4e
  36515e: ab0d         	add	r3, sp, #0x34
  365160: 4618         	mov	r0, r3
  365162: f050 f3d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4507ae
  365166: e7ff         	b	0x365168 <MapManager::addStaticBodyShape(int, int)+0x4278> @ imm = #-0x2
  365168: ab0c         	add	r3, sp, #0x30
  36516a: 4618         	mov	r0, r3
  36516c: f025 f146    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42528c
  365170: f022 f79c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f38
  365174: 4628         	mov	r0, r5
  365176: f022 f795    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422f2a
  36517a: f022 f797    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f2e
  36517e: ab0d         	add	r3, sp, #0x34
  365180: 4618         	mov	r0, r3
  365182: f050 f3c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45078e
  365186: e7ff         	b	0x365188 <MapManager::addStaticBodyShape(int, int)+0x4298> @ imm = #-0x2
  365188: ab0c         	add	r3, sp, #0x30
  36518a: 4618         	mov	r0, r3
  36518c: f025 f136    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42526c
  365190: f022 f78c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f18
  365194: 4628         	mov	r0, r5
  365196: f022 f785    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422f0a
  36519a: f022 f787    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422f0e
  36519e: ab0d         	add	r3, sp, #0x34
  3651a0: 4618         	mov	r0, r3
  3651a2: f050 f3b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45076e
  3651a6: e7ff         	b	0x3651a8 <MapManager::addStaticBodyShape(int, int)+0x42b8> @ imm = #-0x2
  3651a8: ab0c         	add	r3, sp, #0x30
  3651aa: 4618         	mov	r0, r3
  3651ac: f025 f126    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42524c
  3651b0: f022 f77c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422ef8
  3651b4: 4628         	mov	r0, r5
  3651b6: f022 f775    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422eea
  3651ba: f022 f777    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422eee
  3651be: ab0d         	add	r3, sp, #0x34
  3651c0: 4618         	mov	r0, r3
  3651c2: f050 f3a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45074e
  3651c6: e7ff         	b	0x3651c8 <MapManager::addStaticBodyShape(int, int)+0x42d8> @ imm = #-0x2
  3651c8: ab0c         	add	r3, sp, #0x30
  3651ca: 4618         	mov	r0, r3
  3651cc: f025 f116    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42522c
  3651d0: f022 f76c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422ed8
  3651d4: 4628         	mov	r0, r5
  3651d6: f022 f765    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422eca
  3651da: f022 f767    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422ece
  3651de: ab0d         	add	r3, sp, #0x34
  3651e0: 4618         	mov	r0, r3
  3651e2: f050 f397    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45072e
  3651e6: e7ff         	b	0x3651e8 <MapManager::addStaticBodyShape(int, int)+0x42f8> @ imm = #-0x2
  3651e8: ab0c         	add	r3, sp, #0x30
  3651ea: 4618         	mov	r0, r3
  3651ec: f025 f106    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42520c
  3651f0: f022 f75c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422eb8
  3651f4: 4628         	mov	r0, r5
  3651f6: f022 f755    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422eaa
  3651fa: f022 f757    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422eae
  3651fe: ab0d         	add	r3, sp, #0x34
  365200: 4618         	mov	r0, r3
  365202: f050 f387    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45070e
  365206: e7ff         	b	0x365208 <MapManager::addStaticBodyShape(int, int)+0x4318> @ imm = #-0x2
  365208: ab0c         	add	r3, sp, #0x30
  36520a: 4618         	mov	r0, r3
  36520c: f025 f0f6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4251ec
  365210: f022 f74c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e98
  365214: 4628         	mov	r0, r5
  365216: f022 f745    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422e8a
  36521a: f022 f747    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e8e
  36521e: ab0d         	add	r3, sp, #0x34
  365220: 4618         	mov	r0, r3
  365222: f050 f377    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4506ee
  365226: e7ff         	b	0x365228 <MapManager::addStaticBodyShape(int, int)+0x4338> @ imm = #-0x2
  365228: ab0c         	add	r3, sp, #0x30
  36522a: 4618         	mov	r0, r3
  36522c: f025 f0e6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4251cc
  365230: f022 f73c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e78
  365234: 4628         	mov	r0, r5
  365236: f022 f735    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422e6a
  36523a: f022 f737    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e6e
  36523e: ab0d         	add	r3, sp, #0x34
  365240: 4618         	mov	r0, r3
  365242: f050 f367    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4506ce
  365246: e7ff         	b	0x365248 <MapManager::addStaticBodyShape(int, int)+0x4358> @ imm = #-0x2
  365248: ab0c         	add	r3, sp, #0x30
  36524a: 4618         	mov	r0, r3
  36524c: f025 f0d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4251ac
  365250: f022 f72c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e58
  365254: 4628         	mov	r0, r5
  365256: f022 f725    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422e4a
  36525a: f022 f727    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e4e
  36525e: ab0d         	add	r3, sp, #0x34
  365260: 4618         	mov	r0, r3
  365262: f050 f357    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4506ae
  365266: e7ff         	b	0x365268 <MapManager::addStaticBodyShape(int, int)+0x4378> @ imm = #-0x2
  365268: ab0c         	add	r3, sp, #0x30
  36526a: 4618         	mov	r0, r3
  36526c: f025 f0c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42518c
  365270: f022 f71c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e38
  365274: 4628         	mov	r0, r5
  365276: f022 f715    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422e2a
  36527a: f022 f717    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e2e
  36527e: ab0d         	add	r3, sp, #0x34
  365280: 4618         	mov	r0, r3
  365282: f050 f347    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45068e
  365286: e7ff         	b	0x365288 <MapManager::addStaticBodyShape(int, int)+0x4398> @ imm = #-0x2
  365288: ab0c         	add	r3, sp, #0x30
  36528a: 4618         	mov	r0, r3
  36528c: f025 f0b6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42516c
  365290: f022 f70c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e18
  365294: 4628         	mov	r0, r5
  365296: f022 f705    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422e0a
  36529a: f022 f707    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422e0e
  36529e: ab0d         	add	r3, sp, #0x34
  3652a0: 4618         	mov	r0, r3
  3652a2: f050 f337    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45066e
  3652a6: e7ff         	b	0x3652a8 <MapManager::addStaticBodyShape(int, int)+0x43b8> @ imm = #-0x2
  3652a8: ab0c         	add	r3, sp, #0x30
  3652aa: 4618         	mov	r0, r3
  3652ac: f025 f0a6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42514c
  3652b0: f022 f6fc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422df8
  3652b4: 4628         	mov	r0, r5
  3652b6: f022 f6f5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422dea
  3652ba: f022 f6f7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422dee
  3652be: ab0d         	add	r3, sp, #0x34
  3652c0: 4618         	mov	r0, r3
  3652c2: f050 f327    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45064e
  3652c6: e7ff         	b	0x3652c8 <MapManager::addStaticBodyShape(int, int)+0x43d8> @ imm = #-0x2
  3652c8: ab0c         	add	r3, sp, #0x30
  3652ca: 4618         	mov	r0, r3
  3652cc: f025 f096    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42512c
  3652d0: f022 f6ec    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422dd8
  3652d4: 4628         	mov	r0, r5
  3652d6: f022 f6e5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422dca
  3652da: f022 f6e7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422dce
  3652de: ab0d         	add	r3, sp, #0x34
  3652e0: 4618         	mov	r0, r3
  3652e2: f050 f317    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45062e
  3652e6: e7ff         	b	0x3652e8 <MapManager::addStaticBodyShape(int, int)+0x43f8> @ imm = #-0x2
  3652e8: ab0c         	add	r3, sp, #0x30
  3652ea: 4618         	mov	r0, r3
  3652ec: f025 f086    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42510c
  3652f0: f022 f6dc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422db8
  3652f4: 4628         	mov	r0, r5
  3652f6: f022 f6d5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422daa
  3652fa: f022 f6d7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422dae
  3652fe: ab0d         	add	r3, sp, #0x34
  365300: 4618         	mov	r0, r3
  365302: f050 f307    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45060e
  365306: e7ff         	b	0x365308 <MapManager::addStaticBodyShape(int, int)+0x4418> @ imm = #-0x2
  365308: ab0c         	add	r3, sp, #0x30
  36530a: 4618         	mov	r0, r3
  36530c: f025 f076    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4250ec
  365310: f022 f6cc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d98
  365314: 4628         	mov	r0, r5
  365316: f022 f6c5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422d8a
  36531a: f022 f6c7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d8e
  36531e: ab0d         	add	r3, sp, #0x34
  365320: 4618         	mov	r0, r3
  365322: f050 f2f7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4505ee
  365326: e7ff         	b	0x365328 <MapManager::addStaticBodyShape(int, int)+0x4438> @ imm = #-0x2
  365328: ab0c         	add	r3, sp, #0x30
  36532a: 4618         	mov	r0, r3
  36532c: f025 f066    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4250cc
  365330: f022 f6bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d78
  365334: 4628         	mov	r0, r5
  365336: f022 f6b5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422d6a
  36533a: f022 f6b7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d6e
  36533e: ab0d         	add	r3, sp, #0x34
  365340: 4618         	mov	r0, r3
  365342: f050 f2e7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4505ce
  365346: e7ff         	b	0x365348 <MapManager::addStaticBodyShape(int, int)+0x4458> @ imm = #-0x2
  365348: ab0c         	add	r3, sp, #0x30
  36534a: 4618         	mov	r0, r3
  36534c: f025 f056    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4250ac
  365350: f022 f6ac    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d58
  365354: 4628         	mov	r0, r5
  365356: f022 f6a5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422d4a
  36535a: f022 f6a7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d4e
  36535e: ab0d         	add	r3, sp, #0x34
  365360: 4618         	mov	r0, r3
  365362: f050 f2d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4505ae
  365366: e7ff         	b	0x365368 <MapManager::addStaticBodyShape(int, int)+0x4478> @ imm = #-0x2
  365368: ab0c         	add	r3, sp, #0x30
  36536a: 4618         	mov	r0, r3
  36536c: f025 f046    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42508c
  365370: f022 f69c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d38
  365374: 4628         	mov	r0, r5
  365376: f022 f695    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422d2a
  36537a: f022 f697    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d2e
  36537e: ab0d         	add	r3, sp, #0x34
  365380: 4618         	mov	r0, r3
  365382: f050 f2c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45058e
  365386: e7ff         	b	0x365388 <MapManager::addStaticBodyShape(int, int)+0x4498> @ imm = #-0x2
  365388: ab0c         	add	r3, sp, #0x30
  36538a: 4618         	mov	r0, r3
  36538c: f025 f036    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42506c
  365390: f022 f68c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d18
  365394: 4628         	mov	r0, r5
  365396: f022 f685    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422d0a
  36539a: f022 f687    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422d0e
  36539e: ab0d         	add	r3, sp, #0x34
  3653a0: 4618         	mov	r0, r3
  3653a2: f050 f2b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45056e
  3653a6: e7ff         	b	0x3653a8 <MapManager::addStaticBodyShape(int, int)+0x44b8> @ imm = #-0x2
  3653a8: ab0c         	add	r3, sp, #0x30
  3653aa: 4618         	mov	r0, r3
  3653ac: f025 f026    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42504c
  3653b0: f022 f67c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422cf8
  3653b4: 4628         	mov	r0, r5
  3653b6: f022 f675    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x422cea
  3653ba: f022 f677    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422cee
  3653be: ab0d         	add	r3, sp, #0x34
  3653c0: 4618         	mov	r0, r3
  3653c2: f050 f2a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45054e
  3653c6: e7ff         	b	0x3653c8 <MapManager::addStaticBodyShape(int, int)+0x44d8> @ imm = #-0x2
  3653c8: ab0c         	add	r3, sp, #0x30
  3653ca: 4618         	mov	r0, r3
  3653cc: f025 f016    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x42502c
  3653d0: f022 f66c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422cd8
  3653d4: bf00         	nop
  3653d6: b04f         	add	sp, #0x13c
  3653d8: ecbd 8b02    	vpop	{d8}
  3653dc: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3653dd); words below are literal-pool data ---
  3653de: bf00         	nop
  3653e0: 0000         	movs	r0, r0
  3653e2: a000         	adr	r0, #0 <MapManager::addStaticBodyShape(int, int)+0x44f6>
  3653e4: 9999         	ldr	r1, [sp, #0x264]
  3653e6: 3fe9         	subs	r7, #0xe9
  3653e8: db9c         	blt	0x365324 <MapManager::addStaticBodyShape(int, int)+0x4434> @ imm = #-0xc8
  3653ea: ffff 8292    	vrshr.u64	d24, d2, #0x1
  3653ee: 0046         	lsls	r6, r0, #0x1
  3653f0: 81ec         	strh	r4, [r5, #0xe]
  3653f2: 0046         	lsls	r6, r0, #0x1
  3653f4: 8104         	strh	r4, [r0, #0x8]
  3653f6: 0046         	lsls	r6, r0, #0x1
  3653f8: 805e         	strh	r6, [r3, #0x2]
  3653fa: 0046         	lsls	r6, r0, #0x1
  3653fc: 7f76         	ldrb	r6, [r6, #0x1d]
  3653fe: 0046         	lsls	r6, r0, #0x1
  365400: 7ed0         	ldrb	r0, [r2, #0x1b]
  365402: 0046         	lsls	r6, r0, #0x1
  365404: da00         	bge	0x365408 <MapManager::getPlayerSpawnPoints()> @ imm = #0x0
  365406: ffff b082    	<unknown>

// ==== MapManager::getPlayerSpawnPoints
//      file offset 0x365408 (= ELF address; Ghidra 0x375408), 14 bytes, Thumb-2
  365408: b082         	sub	sp, #0x8
  36540a: 9001         	str	r0, [sp, #0x4]
  36540c: 9b01         	ldr	r3, [sp, #0x4]
  36540e: 6b9b         	ldr	r3, [r3, #0x38]
  365410: 4618         	mov	r0, r3
  365412: b002         	add	sp, #0x8
  365414: 4770         	bx	lr

// ==== MapManager::objectNamed
//      file offset 0x365418 (= ELF address; Ghidra 0x375418), 48 bytes, Thumb-2
  365418: b510         	push	{r4, lr}
  36541a: b082         	sub	sp, #0x8
  36541c: 9001         	str	r0, [sp, #0x4]
  36541e: 9100         	str	r1, [sp]
  365420: 9b01         	ldr	r3, [sp, #0x4]
  365422: 6b5b         	ldr	r3, [r3, #0x34]
  365424: 2b00         	cmp	r3, #0x0
  365426: d00b         	beq	0x365440 <MapManager::objectNamed(std::string)+0x28> @ imm = #0x16
  365428: 9b01         	ldr	r3, [sp, #0x4]
  36542a: 6b5c         	ldr	r4, [r3, #0x34]
  36542c: 9800         	ldr	r0, [sp]
  36542e: f04f f767    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x44fece
  365432: 4603         	mov	r3, r0
  365434: 4620         	mov	r0, r4
  365436: 4619         	mov	r1, r3
  365438: f295 fc08    	bl	0x5fac4c <cocos2d::CCTMXObjectGroup::objectNamed(char const*)> @ imm = #0x295810
  36543c: 4603         	mov	r3, r0
  36543e: e000         	b	0x365442 <MapManager::objectNamed(std::string)+0x2a> @ imm = #0x0
  365440: 2300         	movs	r3, #0x0
  365442: 4618         	mov	r0, r3
  365444: b002         	add	sp, #0x8
  365446: bd10         	pop	{r4, pc}

// ==== MapManager::objectsNamed
//      file offset 0x365448 (= ELF address; Ghidra 0x375448), 320 bytes, Thumb-2
  365448: b510         	push	{r4, lr}
  36544a: b08a         	sub	sp, #0x28
  36544c: 9001         	str	r0, [sp, #0x4]
  36544e: 9100         	str	r1, [sp]
  365450: 9b01         	ldr	r3, [sp, #0x4]
  365452: 6b5b         	ldr	r3, [r3, #0x34]
  365454: 2b00         	cmp	r3, #0x0
  365456: d073         	beq	0x365540 <MapManager::objectsNamed(std::string)+0xf8> @ imm = #0xe6
  365458: f234 fc6c    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2348d8
  36545c: 4603         	mov	r3, r0
  36545e: 9306         	str	r3, [sp, #0x18]
  365460: 9b01         	ldr	r3, [sp, #0x4]
  365462: 6b5b         	ldr	r3, [r3, #0x34]
  365464: 681b         	ldr	r3, [r3]
  365466: 3328         	adds	r3, #0x28
  365468: 681b         	ldr	r3, [r3]
  36546a: 9a01         	ldr	r2, [sp, #0x4]
  36546c: 6b52         	ldr	r2, [r2, #0x34]
  36546e: 4610         	mov	r0, r2
  365470: 4798         	blx	r3
  365472: 4603         	mov	r3, r0
  365474: 9307         	str	r3, [sp, #0x1c]
  365476: 2300         	movs	r3, #0x0
  365478: 9305         	str	r3, [sp, #0x14]
  36547a: e053         	b	0x365524 <MapManager::objectsNamed(std::string)+0xdc> @ imm = #0xa6
  36547c: 9b05         	ldr	r3, [sp, #0x14]
  36547e: 9807         	ldr	r0, [sp, #0x1c]
  365480: 4619         	mov	r1, r3
  365482: f234 fe4d    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x234c9a
  365486: 4603         	mov	r3, r0
  365488: 9308         	str	r3, [sp, #0x20]
  36548a: ab03         	add	r3, sp, #0xc
  36548c: 4618         	mov	r0, r3
  36548e: f024 f7b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x424f62
  365492: aa04         	add	r2, sp, #0x10
  365494: ab03         	add	r3, sp, #0xc
  365496: 4610         	mov	r0, r2
  365498: 4a3a         	ldr	r2, [pc, #0xe8]         @ 0x365584 <MapManager::objectsNamed(std::string)+0x13c>
  36549a: 447a         	add	r2, pc
  36549c: 4611         	mov	r1, r2
  36549e: 461a         	mov	r2, r3
  3654a0: f051 f2de    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4515bc
  3654a4: ab04         	add	r3, sp, #0x10
  3654a6: 9808         	ldr	r0, [sp, #0x20]
  3654a8: 4619         	mov	r1, r3
  3654aa: f22f f9a1    	bl	0x5947f0 <cocos2d::CCDictionary::valueForKey(std::string const&)> @ imm = #0x22f342
  3654ae: 4603         	mov	r3, r0
  3654b0: 9309         	str	r3, [sp, #0x24]
  3654b2: ab04         	add	r3, sp, #0x10
  3654b4: 4618         	mov	r0, r3
  3654b6: f050 f22d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45045a
  3654ba: ab03         	add	r3, sp, #0xc
  3654bc: 4618         	mov	r0, r3
  3654be: f024 f79d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424f3a
  3654c2: 9809         	ldr	r0, [sp, #0x24]
  3654c4: f234 fa30    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x234460
  3654c8: 4604         	mov	r4, r0
  3654ca: ab02         	add	r3, sp, #0x8
  3654cc: 4618         	mov	r0, r3
  3654ce: f024 f791    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x424f22
  3654d2: aa03         	add	r2, sp, #0xc
  3654d4: ab02         	add	r3, sp, #0x8
  3654d6: 4610         	mov	r0, r2
  3654d8: 4621         	mov	r1, r4
  3654da: 461a         	mov	r2, r3
  3654dc: f051 f2c0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x451580
  3654e0: ab04         	add	r3, sp, #0x10
  3654e2: 4618         	mov	r0, r3
  3654e4: 9900         	ldr	r1, [sp]
  3654e6: f050 f7ff    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x450ffe
  3654ea: aa03         	add	r2, sp, #0xc
  3654ec: ab04         	add	r3, sp, #0x10
  3654ee: 4610         	mov	r0, r2
  3654f0: 4619         	mov	r1, r3
  3654f2: f000 f91d    	bl	0x365730 <MapManager::hasPrefix(std::string, std::string)> @ imm = #0x23a
  3654f6: 4603         	mov	r3, r0
  3654f8: 461c         	mov	r4, r3
  3654fa: ab04         	add	r3, sp, #0x10
  3654fc: 4618         	mov	r0, r3
  3654fe: f050 f209    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450412
  365502: ab03         	add	r3, sp, #0xc
  365504: 4618         	mov	r0, r3
  365506: f050 f205    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45040a
  36550a: ab02         	add	r3, sp, #0x8
  36550c: 4618         	mov	r0, r3
  36550e: f024 f775    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424eea
  365512: 2c00         	cmp	r4, #0x0
  365514: d003         	beq	0x36551e <MapManager::objectsNamed(std::string)+0xd6> @ imm = #0x6
  365516: 9806         	ldr	r0, [sp, #0x18]
  365518: 9908         	ldr	r1, [sp, #0x20]
  36551a: f234 fea7    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x234d4e
  36551e: 9b05         	ldr	r3, [sp, #0x14]
  365520: 3301         	adds	r3, #0x1
  365522: 9305         	str	r3, [sp, #0x14]
  365524: 9c05         	ldr	r4, [sp, #0x14]
  365526: 9807         	ldr	r0, [sp, #0x1c]
  365528: f234 fdda    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x234bb4
  36552c: 4603         	mov	r3, r0
  36552e: 429c         	cmp	r4, r3
  365530: bf2c         	ite	hs
  365532: 2300         	movhs	r3, #0x0
  365534: 2301         	movlo	r3, #0x1
  365536: b2db         	uxtb	r3, r3
  365538: 2b00         	cmp	r3, #0x0
  36553a: d19f         	bne	0x36547c <MapManager::objectsNamed(std::string)+0x34> @ imm = #-0xc2
  36553c: 9b06         	ldr	r3, [sp, #0x18]
  36553e: e01e         	b	0x36557e <MapManager::objectsNamed(std::string)+0x136> @ imm = #0x3c
  365540: f234 fbf8    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x2347f0
  365544: 4603         	mov	r3, r0
  365546: e01a         	b	0x36557e <MapManager::objectsNamed(std::string)+0x136> @ imm = #0x34
  365548: ab04         	add	r3, sp, #0x10
  36554a: 4618         	mov	r0, r3
  36554c: f050 f1e2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4503c4
  365550: e7ff         	b	0x365552 <MapManager::objectsNamed(std::string)+0x10a> @ imm = #-0x2
  365552: ab03         	add	r3, sp, #0xc
  365554: 4618         	mov	r0, r3
  365556: f024 f751    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424ea2
  36555a: f022 f5a7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422b4e
  36555e: ab04         	add	r3, sp, #0x10
  365560: 4618         	mov	r0, r3
  365562: f050 f1d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4503ae
  365566: e7ff         	b	0x365568 <MapManager::objectsNamed(std::string)+0x120> @ imm = #-0x2
  365568: ab03         	add	r3, sp, #0xc
  36556a: 4618         	mov	r0, r3
  36556c: f050 f1d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4503a4
  365570: e7ff         	b	0x365572 <MapManager::objectsNamed(std::string)+0x12a> @ imm = #-0x2
  365572: ab02         	add	r3, sp, #0x8
  365574: 4618         	mov	r0, r3
  365576: f024 f741    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424e82
  36557a: f022 f597    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422b2e
  36557e: 4618         	mov	r0, r3
  365580: b00a         	add	sp, #0x28
  365582: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x365583); words below are literal-pool data ---
  365584: 789e         	ldrb	r6, [r3, #0x2]
  365586: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::objectProperty
//      file offset 0x365588 (= ELF address; Ghidra 0x375588), 156 bytes, Thumb-2
  365588: b510         	push	{r4, lr}
  36558a: b086         	sub	sp, #0x18
  36558c: 9003         	str	r0, [sp, #0xc]
  36558e: 9102         	str	r1, [sp, #0x8]
  365590: 9201         	str	r2, [sp, #0x4]
  365592: 9300         	str	r3, [sp]
  365594: 9b01         	ldr	r3, [sp, #0x4]
  365596: 2b00         	cmp	r3, #0x0
  365598: d005         	beq	0x3655a6 <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x1e> @ imm = #0xa
  36559a: 9800         	ldr	r0, [sp]
  36559c: f04f f55e    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44fabc
  3655a0: 4603         	mov	r3, r0
  3655a2: 2b00         	cmp	r3, #0x0
  3655a4: d101         	bne	0x3655aa <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x22> @ imm = #0x2
  3655a6: 2301         	movs	r3, #0x1
  3655a8: e000         	b	0x3655ac <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x24> @ imm = #0x0
  3655aa: 2300         	movs	r3, #0x0
  3655ac: 2b00         	cmp	r3, #0x0
  3655ae: d010         	beq	0x3655d2 <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x4a> @ imm = #0x20
  3655b0: ab05         	add	r3, sp, #0x14
  3655b2: 4618         	mov	r0, r3
  3655b4: f024 f71e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x424e3c
  3655b8: ab05         	add	r3, sp, #0x14
  3655ba: 9803         	ldr	r0, [sp, #0xc]
  3655bc: 4a18         	ldr	r2, [pc, #0x60]         @ 0x365620 <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x98>
  3655be: 447a         	add	r2, pc
  3655c0: 4611         	mov	r1, r2
  3655c2: 461a         	mov	r2, r3
  3655c4: f051 f24c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x451498
  3655c8: ab05         	add	r3, sp, #0x14
  3655ca: 4618         	mov	r0, r3
  3655cc: f024 f716    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424e2c
  3655d0: e023         	b	0x36561a <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x92> @ imm = #0x46
  3655d2: 9801         	ldr	r0, [sp, #0x4]
  3655d4: 9900         	ldr	r1, [sp]
  3655d6: f22f f90b    	bl	0x5947f0 <cocos2d::CCDictionary::valueForKey(std::string const&)> @ imm = #0x22f216
  3655da: 4603         	mov	r3, r0
  3655dc: 4618         	mov	r0, r3
  3655de: f234 f9a3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x234346
  3655e2: 4604         	mov	r4, r0
  3655e4: ab05         	add	r3, sp, #0x14
  3655e6: 4618         	mov	r0, r3
  3655e8: f024 f704    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x424e08
  3655ec: ab05         	add	r3, sp, #0x14
  3655ee: 9803         	ldr	r0, [sp, #0xc]
  3655f0: 4621         	mov	r1, r4
  3655f2: 461a         	mov	r2, r3
  3655f4: f051 f234    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x451468
  3655f8: ab05         	add	r3, sp, #0x14
  3655fa: 4618         	mov	r0, r3
  3655fc: f024 f6fe    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424dfc
  365600: e00b         	b	0x36561a <MapManager::objectProperty(cocos2d::CCDictionary*, std::string)+0x92> @ imm = #0x16
  365602: ab05         	add	r3, sp, #0x14
  365604: 4618         	mov	r0, r3
  365606: f024 f6f9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424df2
  36560a: f022 f54f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422a9e
  36560e: ab05         	add	r3, sp, #0x14
  365610: 4618         	mov	r0, r3
  365612: f024 f6f3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424de6
  365616: f022 f549    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422a92
  36561a: 9803         	ldr	r0, [sp, #0xc]
  36561c: b006         	add	sp, #0x18
  36561e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x36561f); words below are literal-pool data ---
  365620: 7782         	strb	r2, [r0, #0x1e]
  365622: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::objectLocation
//      file offset 0x365628 (= ELF address; Ghidra 0x375628), 264 bytes, Thumb-2
  365628: b500         	push	{lr}
  36562a: b089         	sub	sp, #0x24
  36562c: 9003         	str	r0, [sp, #0xc]
  36562e: 9102         	str	r1, [sp, #0x8]
  365630: 9201         	str	r2, [sp, #0x4]
  365632: 9b01         	ldr	r3, [sp, #0x4]
  365634: 2b00         	cmp	r3, #0x0
  365636: d108         	bne	0x36564a <MapManager::objectLocation(cocos2d::CCDictionary*)+0x22> @ imm = #0x10
  365638: 9b03         	ldr	r3, [sp, #0xc]
  36563a: 4618         	mov	r0, r3
  36563c: ed9f 0b38    	vldr	d0, [pc, #224]          @ 0x365720 <MapManager::objectLocation(cocos2d::CCDictionary*)+0xf8>
  365640: ed9f 1b37    	vldr	d1, [pc, #220]          @ 0x365720 <MapManager::objectLocation(cocos2d::CCDictionary*)+0xf8>
  365644: f7f8 fa1c    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7bc8
  365648: e066         	b	0x365718 <MapManager::objectLocation(cocos2d::CCDictionary*)+0xf0> @ imm = #0xcc
  36564a: ab04         	add	r3, sp, #0x10
  36564c: 4618         	mov	r0, r3
  36564e: f024 f6d1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x424da2
  365652: aa05         	add	r2, sp, #0x14
  365654: ab04         	add	r3, sp, #0x10
  365656: 4610         	mov	r0, r2
  365658: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x365728 <MapManager::objectLocation(cocos2d::CCDictionary*)+0x100>
  36565a: 447a         	add	r2, pc
  36565c: 4611         	mov	r1, r2
  36565e: 461a         	mov	r2, r3
  365660: f051 f1fe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4513fc
  365664: ab05         	add	r3, sp, #0x14
  365666: 9801         	ldr	r0, [sp, #0x4]
  365668: 4619         	mov	r1, r3
  36566a: f22f f8c1    	bl	0x5947f0 <cocos2d::CCDictionary::valueForKey(std::string const&)> @ imm = #0x22f182
  36566e: 4603         	mov	r3, r0
  365670: 4618         	mov	r0, r3
  365672: f234 f8d1    	bl	0x599818 <cocos2d::CCString::floatValue() const> @ imm = #0x2341a2
  365676: 4603         	mov	r3, r0
  365678: 9306         	str	r3, [sp, #0x18]
  36567a: ab05         	add	r3, sp, #0x14
  36567c: 4618         	mov	r0, r3
  36567e: f050 f149    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450292
  365682: ab04         	add	r3, sp, #0x10
  365684: 4618         	mov	r0, r3
  365686: f024 f6b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424d72
  36568a: ab04         	add	r3, sp, #0x10
  36568c: 4618         	mov	r0, r3
  36568e: f024 f6b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x424d62
  365692: aa05         	add	r2, sp, #0x14
  365694: ab04         	add	r3, sp, #0x10
  365696: 4610         	mov	r0, r2
  365698: 4a24         	ldr	r2, [pc, #0x90]         @ 0x36572c <MapManager::objectLocation(cocos2d::CCDictionary*)+0x104>
  36569a: 447a         	add	r2, pc
  36569c: 4611         	mov	r1, r2
  36569e: 461a         	mov	r2, r3
  3656a0: f051 f1de    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4513bc
  3656a4: ab05         	add	r3, sp, #0x14
  3656a6: 9801         	ldr	r0, [sp, #0x4]
  3656a8: 4619         	mov	r1, r3
  3656aa: f22f f8a1    	bl	0x5947f0 <cocos2d::CCDictionary::valueForKey(std::string const&)> @ imm = #0x22f142
  3656ae: 4603         	mov	r3, r0
  3656b0: 4618         	mov	r0, r3
  3656b2: f234 f8b1    	bl	0x599818 <cocos2d::CCString::floatValue() const> @ imm = #0x234162
  3656b6: 4603         	mov	r3, r0
  3656b8: 9307         	str	r3, [sp, #0x1c]
  3656ba: ab05         	add	r3, sp, #0x14
  3656bc: 4618         	mov	r0, r3
  3656be: f050 f129    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450252
  3656c2: ab04         	add	r3, sp, #0x10
  3656c4: 4618         	mov	r0, r3
  3656c6: f024 f699    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424d32
  3656ca: eddd 7a06    	vldr	s15, [sp, #24]
  3656ce: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3656d2: eddd 7a07    	vldr	s15, [sp, #28]
  3656d6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3656da: 9b03         	ldr	r3, [sp, #0xc]
  3656dc: 4618         	mov	r0, r3
  3656de: eeb0 0b46    	vmov.f64	d0, d6
  3656e2: eeb0 1b47    	vmov.f64	d1, d7
  3656e6: f7f8 f9cb    	bl	0x35da80 <cocos2d::CCTMXLayer::setOwnTiles(bool)+0x18> @ imm = #-0x7c6a
  3656ea: e015         	b	0x365718 <MapManager::objectLocation(cocos2d::CCDictionary*)+0xf0> @ imm = #0x2a
  3656ec: ab05         	add	r3, sp, #0x14
  3656ee: 4618         	mov	r0, r3
  3656f0: f050 f110    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450220
  3656f4: e7ff         	b	0x3656f6 <MapManager::objectLocation(cocos2d::CCDictionary*)+0xce> @ imm = #-0x2
  3656f6: ab04         	add	r3, sp, #0x10
  3656f8: 4618         	mov	r0, r3
  3656fa: f024 f67f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424cfe
  3656fe: f022 f4d5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4229aa
  365702: ab05         	add	r3, sp, #0x14
  365704: 4618         	mov	r0, r3
  365706: f050 f105    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45020a
  36570a: e7ff         	b	0x36570c <MapManager::objectLocation(cocos2d::CCDictionary*)+0xe4> @ imm = #-0x2
  36570c: ab04         	add	r3, sp, #0x10
  36570e: 4618         	mov	r0, r3
  365710: f024 f674    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x424ce8
  365714: f022 f4ca    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422994
  365718: 9803         	ldr	r0, [sp, #0xc]
  36571a: b009         	add	sp, #0x24
  36571c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x36571f); words below are literal-pool data ---
  365728: 76ea         	strb	r2, [r5, #0x1b]
  36572a: 0046         	lsls	r6, r0, #0x1
  36572c: 76ae         	strb	r6, [r5, #0x1a]
  36572e: 0046         	lsls	r6, r0, #0x1

// ==== MapManager::hasPrefix
//      file offset 0x365730 (= ELF address; Ghidra 0x375730), 90 bytes, Thumb-2
  365730: b510         	push	{r4, lr}
  365732: b084         	sub	sp, #0x10
  365734: 9001         	str	r0, [sp, #0x4]
  365736: 9100         	str	r1, [sp]
  365738: 9800         	ldr	r0, [sp]
  36573a: f04f f48f    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x44f91e
  36573e: 4603         	mov	r3, r0
  365740: aa03         	add	r2, sp, #0xc
  365742: 4610         	mov	r0, r2
  365744: 9901         	ldr	r1, [sp, #0x4]
  365746: 2200         	movs	r2, #0x0
  365748: f050 f7ee    	bl	0x7b6728 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19c78> @ imm = #0x450fdc
  36574c: ab03         	add	r3, sp, #0xc
  36574e: 4618         	mov	r0, r3
  365750: 9900         	ldr	r1, [sp]
  365752: f04f f793    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x44ff26
  365756: 4603         	mov	r3, r0
  365758: 2b00         	cmp	r3, #0x0
  36575a: bf14         	ite	ne
  36575c: 2300         	movne	r3, #0x0
  36575e: 2301         	moveq	r3, #0x1
  365760: b2db         	uxtb	r3, r3
  365762: 2b00         	cmp	r3, #0x0
  365764: d001         	beq	0x36576a <MapManager::hasPrefix(std::string, std::string)+0x3a> @ imm = #0x2
  365766: 2401         	movs	r4, #0x1
  365768: e000         	b	0x36576c <MapManager::hasPrefix(std::string, std::string)+0x3c> @ imm = #0x0
  36576a: 2400         	movs	r4, #0x0
  36576c: ab03         	add	r3, sp, #0xc
  36576e: 4618         	mov	r0, r3
  365770: f050 f0d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4501a0
  365774: 4623         	mov	r3, r4
  365776: e005         	b	0x365784 <MapManager::hasPrefix(std::string, std::string)+0x54> @ imm = #0xa
  365778: ab03         	add	r3, sp, #0xc
  36577a: 4618         	mov	r0, r3
  36577c: f050 f0ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x450194
  365780: f022 f494    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x422928
  365784: 4618         	mov	r0, r3
  365786: b004         	add	sp, #0x10
  365788: bd10         	pop	{r4, pc}
