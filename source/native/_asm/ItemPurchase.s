// ItemPurchase: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ItemPurchase.cpp

// ==== ItemPurchase::sharedItemPurchase
//      file offset 0x34c01c (= ELF address; Ghidra 0x35c01c), 68 bytes, Thumb-2
  34c01c: b538         	push	{r3, r4, r5, lr}
  34c01e: 4d0e         	ldr	r5, [pc, #0x38]         @ 0x34c058 <ItemPurchase::sharedItemPurchase()+0x3c>
  34c020: 447d         	add	r5, pc
  34c022: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x34c05c <ItemPurchase::sharedItemPurchase()+0x40>
  34c024: 58eb         	ldr	r3, [r5, r3]
  34c026: 681b         	ldr	r3, [r3]
  34c028: 2b00         	cmp	r3, #0x0
  34c02a: d10a         	bne	0x34c042 <ItemPurchase::sharedItemPurchase()+0x26> @ imm = #0x14
  34c02c: 2008         	movs	r0, #0x8
  34c02e: f03b f499    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x43b932
  34c032: 4603         	mov	r3, r0
  34c034: 461c         	mov	r4, r3
  34c036: 4620         	mov	r0, r4
  34c038: f000 f812    	bl	0x34c060 <ItemPurchase::ItemPurchase()> @ imm = #0x24
  34c03c: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x34c05c <ItemPurchase::sharedItemPurchase()+0x40>
  34c03e: 58eb         	ldr	r3, [r5, r3]
  34c040: 601c         	str	r4, [r3]
  34c042: 4b06         	ldr	r3, [pc, #0x18]         @ 0x34c05c <ItemPurchase::sharedItemPurchase()+0x40>
  34c044: 58eb         	ldr	r3, [r5, r3]
  34c046: 681b         	ldr	r3, [r3]
  34c048: e004         	b	0x34c054 <ItemPurchase::sharedItemPurchase()+0x38> @ imm = #0x8
  34c04a: 4620         	mov	r0, r4
  34c04c: f03c f02a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43c054
  34c050: f03c f02c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43c058
  34c054: 4618         	mov	r0, r3
  34c056: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x34c057); words below are literal-pool data ---
  34c058: 69e8         	ldr	r0, [r5, #0x1c]
  34c05a: 005e         	lsls	r6, r3, #0x1
  34c05c: db48         	blt	0x34c0f0 <ItemPurchase::~ItemPurchase()+0x14> @ imm = #0x90
  34c05e: ffff b500    	<unknown>

// ==== ItemPurchase::ItemPurchase
//      file offset 0x34c060 (= ELF address; Ghidra 0x35c060), 64 bytes, Thumb-2
  34c060: b500         	push	{lr}
  34c062: b083         	sub	sp, #0xc
  34c064: 9001         	str	r0, [sp, #0x4]
  34c066: 490c         	ldr	r1, [pc, #0x30]         @ 0x34c098 <ItemPurchase::ItemPurchase()+0x38>
  34c068: 4479         	add	r1, pc
  34c06a: 9b01         	ldr	r3, [sp, #0x4]
  34c06c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x34c09c <ItemPurchase::ItemPurchase()+0x3c>
  34c06e: 588a         	ldr	r2, [r1, r2]
  34c070: 3208         	adds	r2, #0x8
  34c072: 601a         	str	r2, [r3]
  34c074: f24d fe5e    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x24dcbc
  34c078: 4602         	mov	r2, r0
  34c07a: 9b01         	ldr	r3, [sp, #0x4]
  34c07c: 605a         	str	r2, [r3, #0x4]
  34c07e: 9b01         	ldr	r3, [sp, #0x4]
  34c080: 685b         	ldr	r3, [r3, #0x4]
  34c082: 4618         	mov	r0, r3
  34c084: f24b ff30    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24be60
  34c088: 9801         	ldr	r0, [sp, #0x4]
  34c08a: f000 f835    	bl	0x34c0f8 <ItemPurchase::loadPurchasesFromCache()> @ imm = #0x6a
  34c08e: 9b01         	ldr	r3, [sp, #0x4]
  34c090: 4618         	mov	r0, r3
  34c092: b003         	add	sp, #0xc
  34c094: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x34c097); words below are literal-pool data ---
  34c098: 69a0         	ldr	r0, [r4, #0x18]
  34c09a: 005e         	lsls	r6, r3, #0x1
  34c09c: db4c         	blt	0x34c138 <ItemPurchase::loadPurchasesFromCache()+0x40> @ imm = #0x98
  34c09e: ffff b500    	<unknown>

// ==== ItemPurchase::~ItemPurchase
//      file offset 0x34c0a0 (= ELF address; Ghidra 0x35c0a0), 60 bytes, Thumb-2
  34c0a0: b500         	push	{lr}
  34c0a2: b083         	sub	sp, #0xc
  34c0a4: 9001         	str	r0, [sp, #0x4]
  34c0a6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x34c0d4 <ItemPurchase::~ItemPurchase()+0x34>
  34c0a8: 4479         	add	r1, pc
  34c0aa: 9b01         	ldr	r3, [sp, #0x4]
  34c0ac: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x34c0d8 <ItemPurchase::~ItemPurchase()+0x38>
  34c0ae: 588a         	ldr	r2, [r1, r2]
  34c0b0: 3208         	adds	r2, #0x8
  34c0b2: 601a         	str	r2, [r3]
  34c0b4: 9b01         	ldr	r3, [sp, #0x4]
  34c0b6: 685b         	ldr	r3, [r3, #0x4]
  34c0b8: 4618         	mov	r0, r3
  34c0ba: f24b fefd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x24bdfa
  34c0be: 2300         	movs	r3, #0x0
  34c0c0: 2b00         	cmp	r3, #0x0
  34c0c2: d002         	beq	0x34c0ca <ItemPurchase::~ItemPurchase()+0x2a> @ imm = #0x4
  34c0c4: 9801         	ldr	r0, [sp, #0x4]
  34c0c6: f03b f7ed    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43bfda
  34c0ca: 9b01         	ldr	r3, [sp, #0x4]
  34c0cc: 4618         	mov	r0, r3
  34c0ce: b003         	add	sp, #0xc
  34c0d0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x34c0d3); words below are literal-pool data ---
  34c0d4: 6960         	ldr	r0, [r4, #0x14]
  34c0d6: 005e         	lsls	r6, r3, #0x1
  34c0d8: db4c         	blt	0x34c174 <ItemPurchase::loadPurchasesFromCache()+0x7c> @ imm = #0x98
  34c0da: ffff b500    	<unknown>

// ==== ItemPurchase::~ItemPurchase
//      file offset 0x34c0dc (= ELF address; Ghidra 0x35c0dc), 28 bytes, Thumb-2
  34c0dc: b500         	push	{lr}
  34c0de: b083         	sub	sp, #0xc
  34c0e0: 9001         	str	r0, [sp, #0x4]
  34c0e2: 9801         	ldr	r0, [sp, #0x4]
  34c0e4: f7ff ffdc    	bl	0x34c0a0 <ItemPurchase::~ItemPurchase()> @ imm = #-0x48
  34c0e8: 9801         	ldr	r0, [sp, #0x4]
  34c0ea: f03b f7db    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43bfb6
  34c0ee: 9b01         	ldr	r3, [sp, #0x4]
  34c0f0: 4618         	mov	r0, r3
  34c0f2: b003         	add	sp, #0xc
  34c0f4: f85d fb04    	ldr	pc, [sp], #4

// ==== ItemPurchase::loadPurchasesFromCache
//      file offset 0x34c0f8 (= ELF address; Ghidra 0x35c0f8), 412 bytes, Thumb-2
  34c0f8: b530         	push	{r4, r5, lr}
  34c0fa: b08b         	sub	sp, #0x2c
  34c0fc: 9001         	str	r0, [sp, #0x4]
  34c0fe: f296 fa95    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x29652a
  34c102: 4604         	mov	r4, r0
  34c104: ab05         	add	r3, sp, #0x14
  34c106: 4618         	mov	r0, r3
  34c108: f03e f174    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43e2e8
  34c10c: aa07         	add	r2, sp, #0x1c
  34c10e: ab05         	add	r3, sp, #0x14
  34c110: 4610         	mov	r0, r2
  34c112: 4a5d         	ldr	r2, [pc, #0x174]        @ 0x34c288 <ItemPurchase::loadPurchasesFromCache()+0x190>
  34c114: 447a         	add	r2, pc
  34c116: 4611         	mov	r1, r2
  34c118: 461a         	mov	r2, r3
  34c11a: f06a f4a1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x46a942
  34c11e: aa03         	add	r2, sp, #0xc
  34c120: ab07         	add	r3, sp, #0x1c
  34c122: 4610         	mov	r0, r2
  34c124: 4621         	mov	r1, r4
  34c126: 4a59         	ldr	r2, [pc, #0x164]        @ 0x34c28c <ItemPurchase::loadPurchasesFromCache()+0x194>
  34c128: 447a         	add	r2, pc
  34c12a: f296 f9b7    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x29636e
  34c12e: ab07         	add	r3, sp, #0x1c
  34c130: 4618         	mov	r0, r3
  34c132: f069 f3ef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4697de
  34c136: ab05         	add	r3, sp, #0x14
  34c138: 4618         	mov	r0, r3
  34c13a: f03e f15f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43e2be
  34c13e: ab03         	add	r3, sp, #0xc
  34c140: 4618         	mov	r0, r3
  34c142: f068 f78b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x468f16
  34c146: 4603         	mov	r3, r0
  34c148: 2b00         	cmp	r3, #0x0
  34c14a: bf0c         	ite	eq
  34c14c: 2300         	moveq	r3, #0x0
  34c14e: 2301         	movne	r3, #0x1
  34c150: b2db         	uxtb	r3, r3
  34c152: 2b00         	cmp	r3, #0x0
  34c154: d068         	beq	0x34c228 <ItemPurchase::loadPurchasesFromCache()+0x130> @ imm = #0xd0
  34c156: aa04         	add	r2, sp, #0x10
  34c158: ab03         	add	r3, sp, #0xc
  34c15a: 4610         	mov	r0, r2
  34c15c: 4619         	mov	r1, r3
  34c15e: f06a f1c3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46a386
  34c162: aa07         	add	r2, sp, #0x1c
  34c164: ab04         	add	r3, sp, #0x10
  34c166: 4610         	mov	r0, r2
  34c168: 4619         	mov	r1, r3
  34c16a: 4b49         	ldr	r3, [pc, #0x124]        @ 0x34c290 <ItemPurchase::loadPurchasesFromCache()+0x198>
  34c16c: 447b         	add	r3, pc
  34c16e: 461a         	mov	r2, r3
  34c170: f7ff fc00    	bl	0x34b974 <void std::_Construct<ItemInfo, ItemInfo&>(ItemInfo*, ItemInfo&)+0x89c> @ imm = #-0x800
  34c174: ab04         	add	r3, sp, #0x10
  34c176: 4618         	mov	r0, r3
  34c178: f069 f3cc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x469798
  34c17c: 2300         	movs	r3, #0x0
  34c17e: 9306         	str	r3, [sp, #0x18]
  34c180: e041         	b	0x34c206 <ItemPurchase::loadPurchasesFromCache()+0x10e> @ imm = #0x82
  34c182: 9b06         	ldr	r3, [sp, #0x18]
  34c184: aa07         	add	r2, sp, #0x1c
  34c186: 4610         	mov	r0, r2
  34c188: 4619         	mov	r1, r3
  34c18a: f000 f9af    	bl	0x34c4ec <std::vector<std::string, std::allocator<std::string>>::operator[](unsigned int)> @ imm = #0x35e
  34c18e: 4603         	mov	r3, r0
  34c190: aa04         	add	r2, sp, #0x10
  34c192: 4610         	mov	r0, r2
  34c194: 4619         	mov	r1, r3
  34c196: f06a f1a7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x46a34e
  34c19a: ab04         	add	r3, sp, #0x10
  34c19c: 4618         	mov	r0, r3
  34c19e: f068 f75d    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x468eba
  34c1a2: 4603         	mov	r3, r0
  34c1a4: 2b00         	cmp	r3, #0x0
  34c1a6: bf0c         	ite	eq
  34c1a8: 2300         	moveq	r3, #0x0
  34c1aa: 2301         	movne	r3, #0x1
  34c1ac: b2db         	uxtb	r3, r3
  34c1ae: 2b00         	cmp	r3, #0x0
  34c1b0: d022         	beq	0x34c1f8 <ItemPurchase::loadPurchasesFromCache()+0x100> @ imm = #0x44
  34c1b2: 9b01         	ldr	r3, [sp, #0x4]
  34c1b4: 685c         	ldr	r4, [r3, #0x4]
  34c1b6: ab04         	add	r3, sp, #0x10
  34c1b8: 4618         	mov	r0, r3
  34c1ba: f069 f0a1    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x469142
  34c1be: 4605         	mov	r5, r0
  34c1c0: ab02         	add	r3, sp, #0x8
  34c1c2: 4618         	mov	r0, r3
  34c1c4: f03e f116    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43e22c
  34c1c8: aa05         	add	r2, sp, #0x14
  34c1ca: ab02         	add	r3, sp, #0x8
  34c1cc: 4610         	mov	r0, r2
  34c1ce: 4629         	mov	r1, r5
  34c1d0: 461a         	mov	r2, r3
  34c1d2: f06a f445    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x46a88a
  34c1d6: ab05         	add	r3, sp, #0x14
  34c1d8: 4618         	mov	r0, r3
  34c1da: f24d fc2f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x24d85e
  34c1de: 4603         	mov	r3, r0
  34c1e0: 4620         	mov	r0, r4
  34c1e2: 4619         	mov	r1, r3
  34c1e4: f24e f842    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x24e084
  34c1e8: ab05         	add	r3, sp, #0x14
  34c1ea: 4618         	mov	r0, r3
  34c1ec: f069 f392    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x469724
  34c1f0: ab02         	add	r3, sp, #0x8
  34c1f2: 4618         	mov	r0, r3
  34c1f4: f03e f102    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43e204
  34c1f8: ab04         	add	r3, sp, #0x10
  34c1fa: 4618         	mov	r0, r3
  34c1fc: f069 f38a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x469714
  34c200: 9b06         	ldr	r3, [sp, #0x18]
  34c202: 3301         	adds	r3, #0x1
  34c204: 9306         	str	r3, [sp, #0x18]
  34c206: 9c06         	ldr	r4, [sp, #0x18]
  34c208: ab07         	add	r3, sp, #0x1c
  34c20a: 4618         	mov	r0, r3
  34c20c: f78f ff9a    	bl	0x2dc144 <std::vector<std::string, std::allocator<std::string>>::size() const> @ imm = #-0x700cc
  34c210: 4603         	mov	r3, r0
  34c212: 429c         	cmp	r4, r3
  34c214: bf2c         	ite	hs
  34c216: 2300         	movhs	r3, #0x0
  34c218: 2301         	movlo	r3, #0x1
  34c21a: b2db         	uxtb	r3, r3
  34c21c: 2b00         	cmp	r3, #0x0
  34c21e: d1b0         	bne	0x34c182 <ItemPurchase::loadPurchasesFromCache()+0x8a> @ imm = #-0xa0
  34c220: ab07         	add	r3, sp, #0x1c
  34c222: 4618         	mov	r0, r3
  34c224: f78f fe28    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x703b0
  34c228: ab03         	add	r3, sp, #0xc
  34c22a: 4618         	mov	r0, r3
  34c22c: f069 f372    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4696e4
  34c230: e028         	b	0x34c284 <ItemPurchase::loadPurchasesFromCache()+0x18c> @ imm = #0x50
  34c232: ab07         	add	r3, sp, #0x1c
  34c234: 4618         	mov	r0, r3
  34c236: f069 f36d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4696da
  34c23a: e7ff         	b	0x34c23c <ItemPurchase::loadPurchasesFromCache()+0x144> @ imm = #-0x2
  34c23c: ab05         	add	r3, sp, #0x14
  34c23e: 4618         	mov	r0, r3
  34c240: f03e f0dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43e1b8
  34c244: f03b f732    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43be64
  34c248: ab04         	add	r3, sp, #0x10
  34c24a: 4618         	mov	r0, r3
  34c24c: f069 f362    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4696c4
  34c250: e012         	b	0x34c278 <ItemPurchase::loadPurchasesFromCache()+0x180> @ imm = #0x24
  34c252: ab05         	add	r3, sp, #0x14
  34c254: 4618         	mov	r0, r3
  34c256: f069 f35d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4696ba
  34c25a: e7ff         	b	0x34c25c <ItemPurchase::loadPurchasesFromCache()+0x164> @ imm = #-0x2
  34c25c: ab02         	add	r3, sp, #0x8
  34c25e: 4618         	mov	r0, r3
  34c260: f03e f0cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43e198
  34c264: ab04         	add	r3, sp, #0x10
  34c266: 4618         	mov	r0, r3
  34c268: f069 f354    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4696a8
  34c26c: e7ff         	b	0x34c26e <ItemPurchase::loadPurchasesFromCache()+0x176> @ imm = #-0x2
  34c26e: ab07         	add	r3, sp, #0x1c
  34c270: 4618         	mov	r0, r3
  34c272: f78f fe01    	bl	0x2dbe78 <std::vector<std::string, std::allocator<std::string>>::~vector()> @ imm = #-0x703fe
  34c276: e7ff         	b	0x34c278 <ItemPurchase::loadPurchasesFromCache()+0x180> @ imm = #-0x2
  34c278: ab03         	add	r3, sp, #0xc
  34c27a: 4618         	mov	r0, r3
  34c27c: f069 f34a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x469694
  34c280: f03b f714    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43be28
  34c284: b00b         	add	sp, #0x2c
  34c286: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x34c287); words below are literal-pool data ---
  34c288: f088 0047    	eor	r0, r8, #0x47
  34c28c: f078 0047    	orns	r0, r8, #0x47
  34c290: f04c 0047    	orr	r0, r12, #0x47

// ==== ItemPurchase::isItemPurchased
//      file offset 0x34c294 (= ELF address; Ghidra 0x35c294), 110 bytes, Thumb-2
  34c294: b510         	push	{r4, lr}
  34c296: b086         	sub	sp, #0x18
  34c298: 9001         	str	r0, [sp, #0x4]
  34c29a: f7ff febf    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x282
  34c29e: 4603         	mov	r3, r0
  34c2a0: 685b         	ldr	r3, [r3, #0x4]
  34c2a2: 9304         	str	r3, [sp, #0x10]
  34c2a4: 2300         	movs	r3, #0x0
  34c2a6: 9303         	str	r3, [sp, #0xc]
  34c2a8: e01b         	b	0x34c2e2 <ItemPurchase::isItemPurchased(std::string)+0x4e> @ imm = #0x36
  34c2aa: 9b03         	ldr	r3, [sp, #0xc]
  34c2ac: 9804         	ldr	r0, [sp, #0x10]
  34c2ae: 4619         	mov	r1, r3
  34c2b0: f24d ff36    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x24de6c
  34c2b4: 4603         	mov	r3, r0
  34c2b6: 9305         	str	r3, [sp, #0x14]
  34c2b8: 9805         	ldr	r0, [sp, #0x14]
  34c2ba: f24d fb35    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x24d66a
  34c2be: 4603         	mov	r3, r0
  34c2c0: 9801         	ldr	r0, [sp, #0x4]
  34c2c2: 4619         	mov	r1, r3
  34c2c4: f069 f22e    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x46945c
  34c2c8: 4603         	mov	r3, r0
  34c2ca: 2b00         	cmp	r3, #0x0
  34c2cc: bf14         	ite	ne
  34c2ce: 2300         	movne	r3, #0x0
  34c2d0: 2301         	moveq	r3, #0x1
  34c2d2: b2db         	uxtb	r3, r3
  34c2d4: 2b00         	cmp	r3, #0x0
  34c2d6: d001         	beq	0x34c2dc <ItemPurchase::isItemPurchased(std::string)+0x48> @ imm = #0x2
  34c2d8: 2301         	movs	r3, #0x1
  34c2da: e00f         	b	0x34c2fc <ItemPurchase::isItemPurchased(std::string)+0x68> @ imm = #0x1e
  34c2dc: 9b03         	ldr	r3, [sp, #0xc]
  34c2de: 3301         	adds	r3, #0x1
  34c2e0: 9303         	str	r3, [sp, #0xc]
  34c2e2: 9c03         	ldr	r4, [sp, #0xc]
  34c2e4: 9804         	ldr	r0, [sp, #0x10]
  34c2e6: f24d fefb    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x24ddf6
  34c2ea: 4603         	mov	r3, r0
  34c2ec: 429c         	cmp	r4, r3
  34c2ee: bf2c         	ite	hs
  34c2f0: 2300         	movhs	r3, #0x0
  34c2f2: 2301         	movlo	r3, #0x1
  34c2f4: b2db         	uxtb	r3, r3
  34c2f6: 2b00         	cmp	r3, #0x0
  34c2f8: d1d7         	bne	0x34c2aa <ItemPurchase::isItemPurchased(std::string)+0x16> @ imm = #-0x52
  34c2fa: 2300         	movs	r3, #0x0
  34c2fc: 4618         	mov	r0, r3
  34c2fe: b006         	add	sp, #0x18
  34c300: bd10         	pop	{r4, pc}

// ==== ItemPurchase::purchaseItem
//      file offset 0x34c304 (= ELF address; Ghidra 0x35c304), 118 bytes, Thumb-2
  34c304: b530         	push	{r4, r5, lr}
  34c306: b085         	sub	sp, #0x14
  34c308: 9001         	str	r0, [sp, #0x4]
  34c30a: f7ff fe87    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x2f2
  34c30e: 4603         	mov	r3, r0
  34c310: 685c         	ldr	r4, [r3, #0x4]
  34c312: 9801         	ldr	r0, [sp, #0x4]
  34c314: f068 f7f4    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x468fe8
  34c318: 4605         	mov	r5, r0
  34c31a: ab02         	add	r3, sp, #0x8
  34c31c: 4618         	mov	r0, r3
  34c31e: f03e f069    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43e0d2
  34c322: aa03         	add	r2, sp, #0xc
  34c324: ab02         	add	r3, sp, #0x8
  34c326: 4610         	mov	r0, r2
  34c328: 4629         	mov	r1, r5
  34c32a: 461a         	mov	r2, r3
  34c32c: f06a f398    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x46a730
  34c330: ab03         	add	r3, sp, #0xc
  34c332: 4618         	mov	r0, r3
  34c334: f24d fb82    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x24d704
  34c338: 4603         	mov	r3, r0
  34c33a: 4620         	mov	r0, r4
  34c33c: 4619         	mov	r1, r3
  34c33e: f24d ff95    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x24df2a
  34c342: ab03         	add	r3, sp, #0xc
  34c344: 4618         	mov	r0, r3
  34c346: f069 f2e5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4695ca
  34c34a: ab02         	add	r3, sp, #0x8
  34c34c: 4618         	mov	r0, r3
  34c34e: f03e f055    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43e0aa
  34c352: f7ff fe63    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x33a
  34c356: 4603         	mov	r3, r0
  34c358: 4618         	mov	r0, r3
  34c35a: f000 f853    	bl	0x34c404 <ItemPurchase::rebuildAndCachePurchases()> @ imm = #0xa6
  34c35e: e00a         	b	0x34c376 <ItemPurchase::purchaseItem(std::string)+0x72> @ imm = #0x14
  34c360: ab03         	add	r3, sp, #0xc
  34c362: 4618         	mov	r0, r3
  34c364: f069 f2d6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4695ac
  34c368: e7ff         	b	0x34c36a <ItemPurchase::purchaseItem(std::string)+0x66> @ imm = #-0x2
  34c36a: ab02         	add	r3, sp, #0x8
  34c36c: 4618         	mov	r0, r3
  34c36e: f03e f045    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43e08a
  34c372: f03b f69b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43bd36
  34c376: b005         	add	sp, #0x14
  34c378: bd30         	pop	{r4, r5, pc}

// ==== ItemPurchase::sellItem
//      file offset 0x34c37c (= ELF address; Ghidra 0x35c37c), 134 bytes, Thumb-2
  34c37c: b510         	push	{r4, lr}
  34c37e: b086         	sub	sp, #0x18
  34c380: 9001         	str	r0, [sp, #0x4]
  34c382: f7ff fe4b    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x36a
  34c386: 4603         	mov	r3, r0
  34c388: 685b         	ldr	r3, [r3, #0x4]
  34c38a: 9304         	str	r3, [sp, #0x10]
  34c38c: 2300         	movs	r3, #0x0
  34c38e: 9303         	str	r3, [sp, #0xc]
  34c390: e023         	b	0x34c3da <ItemPurchase::sellItem(std::string)+0x5e> @ imm = #0x46
  34c392: 9b03         	ldr	r3, [sp, #0xc]
  34c394: 9804         	ldr	r0, [sp, #0x10]
  34c396: 4619         	mov	r1, r3
  34c398: f24d fec2    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x24dd84
  34c39c: 4603         	mov	r3, r0
  34c39e: 9305         	str	r3, [sp, #0x14]
  34c3a0: 9805         	ldr	r0, [sp, #0x14]
  34c3a2: f24d fac1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x24d582
  34c3a6: 4603         	mov	r3, r0
  34c3a8: 9801         	ldr	r0, [sp, #0x4]
  34c3aa: 4619         	mov	r1, r3
  34c3ac: f069 f1ba    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x469374
  34c3b0: 4603         	mov	r3, r0
  34c3b2: 2b00         	cmp	r3, #0x0
  34c3b4: bf14         	ite	ne
  34c3b6: 2300         	movne	r3, #0x0
  34c3b8: 2301         	moveq	r3, #0x1
  34c3ba: b2db         	uxtb	r3, r3
  34c3bc: 2b00         	cmp	r3, #0x0
  34c3be: d009         	beq	0x34c3d4 <ItemPurchase::sellItem(std::string)+0x58> @ imm = #0x12
  34c3c0: f7ff fe2c    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x3a8
  34c3c4: 4603         	mov	r3, r0
  34c3c6: 685b         	ldr	r3, [r3, #0x4]
  34c3c8: 4618         	mov	r0, r3
  34c3ca: 9905         	ldr	r1, [sp, #0x14]
  34c3cc: 2201         	movs	r2, #0x1
  34c3ce: f24d ff91    	bl	0x59a2f4 <cocos2d::CCArray::removeObject(cocos2d::CCObject*, bool)> @ imm = #0x24df22
  34c3d2: e00e         	b	0x34c3f2 <ItemPurchase::sellItem(std::string)+0x76> @ imm = #0x1c
  34c3d4: 9b03         	ldr	r3, [sp, #0xc]
  34c3d6: 3301         	adds	r3, #0x1
  34c3d8: 9303         	str	r3, [sp, #0xc]
  34c3da: 9c03         	ldr	r4, [sp, #0xc]
  34c3dc: 9804         	ldr	r0, [sp, #0x10]
  34c3de: f24d fe7f    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x24dcfe
  34c3e2: 4603         	mov	r3, r0
  34c3e4: 429c         	cmp	r4, r3
  34c3e6: bf2c         	ite	hs
  34c3e8: 2300         	movhs	r3, #0x0
  34c3ea: 2301         	movlo	r3, #0x1
  34c3ec: b2db         	uxtb	r3, r3
  34c3ee: 2b00         	cmp	r3, #0x0
  34c3f0: d1cf         	bne	0x34c392 <ItemPurchase::sellItem(std::string)+0x16> @ imm = #-0x62
  34c3f2: f7ff fe13    	bl	0x34c01c <ItemPurchase::sharedItemPurchase()> @ imm = #-0x3da
  34c3f6: 4603         	mov	r3, r0
  34c3f8: 4618         	mov	r0, r3
  34c3fa: f000 f803    	bl	0x34c404 <ItemPurchase::rebuildAndCachePurchases()> @ imm = #0x6
  34c3fe: b006         	add	sp, #0x18
  34c400: bd10         	pop	{r4, pc}

// ==== ItemPurchase::rebuildAndCachePurchases
//      file offset 0x34c404 (= ELF address; Ghidra 0x35c404), 232 bytes, Thumb-2
  34c404: b510         	push	{r4, lr}
  34c406: b086         	sub	sp, #0x18
  34c408: 9001         	str	r0, [sp, #0x4]
  34c40a: ab02         	add	r3, sp, #0x8
  34c40c: 4618         	mov	r0, r3
  34c40e: f03d f7f1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43dfe2
  34c412: aa03         	add	r2, sp, #0xc
  34c414: ab02         	add	r3, sp, #0x8
  34c416: 4610         	mov	r0, r2
  34c418: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x34c4e0 <ItemPurchase::rebuildAndCachePurchases()+0xdc>
  34c41a: 447a         	add	r2, pc
  34c41c: 4611         	mov	r1, r2
  34c41e: 461a         	mov	r2, r3
  34c420: f06a f31e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x46a63c
  34c424: ab02         	add	r3, sp, #0x8
  34c426: 4618         	mov	r0, r3
  34c428: f03d f7e8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43dfd0
  34c42c: 2300         	movs	r3, #0x0
  34c42e: 9304         	str	r3, [sp, #0x10]
  34c430: e029         	b	0x34c486 <ItemPurchase::rebuildAndCachePurchases()+0x82> @ imm = #0x52
  34c432: 9b01         	ldr	r3, [sp, #0x4]
  34c434: 685a         	ldr	r2, [r3, #0x4]
  34c436: 9b04         	ldr	r3, [sp, #0x10]
  34c438: 4610         	mov	r0, r2
  34c43a: 4619         	mov	r1, r3
  34c43c: f24d fe70    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x24dce0
  34c440: 4603         	mov	r3, r0
  34c442: 9305         	str	r3, [sp, #0x14]
  34c444: 9b05         	ldr	r3, [sp, #0x14]
  34c446: 2b00         	cmp	r3, #0x0
  34c448: d007         	beq	0x34c45a <ItemPurchase::rebuildAndCachePurchases()+0x56> @ imm = #0xe
  34c44a: 9805         	ldr	r0, [sp, #0x14]
  34c44c: f24d fa7a    	bl	0x599944 <cocos2d::CCString::length() const> @ imm = #0x24d4f4
  34c450: 4603         	mov	r3, r0
  34c452: 2b00         	cmp	r3, #0x0
  34c454: d001         	beq	0x34c45a <ItemPurchase::rebuildAndCachePurchases()+0x56> @ imm = #0x2
  34c456: 2301         	movs	r3, #0x1
  34c458: e000         	b	0x34c45c <ItemPurchase::rebuildAndCachePurchases()+0x58> @ imm = #0x0
  34c45a: 2300         	movs	r3, #0x0
  34c45c: 2b00         	cmp	r3, #0x0
  34c45e: d00f         	beq	0x34c480 <ItemPurchase::rebuildAndCachePurchases()+0x7c> @ imm = #0x1e
  34c460: 9805         	ldr	r0, [sp, #0x14]
  34c462: f24d fa61    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x24d4c2
  34c466: 4603         	mov	r3, r0
  34c468: aa03         	add	r2, sp, #0xc
  34c46a: 4610         	mov	r0, r2
  34c46c: 4619         	mov	r1, r3
  34c46e: f069 f73f    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x469e7e
  34c472: ab03         	add	r3, sp, #0xc
  34c474: 4618         	mov	r0, r3
  34c476: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x34c4e4 <ItemPurchase::rebuildAndCachePurchases()+0xe0>
  34c478: 447b         	add	r3, pc
  34c47a: 4619         	mov	r1, r3
  34c47c: f069 f738    	bl	0x7b62f0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19840> @ imm = #0x469e70
  34c480: 9b04         	ldr	r3, [sp, #0x10]
  34c482: 3301         	adds	r3, #0x1
  34c484: 9304         	str	r3, [sp, #0x10]
  34c486: 9c04         	ldr	r4, [sp, #0x10]
  34c488: 9b01         	ldr	r3, [sp, #0x4]
  34c48a: 685b         	ldr	r3, [r3, #0x4]
  34c48c: 4618         	mov	r0, r3
  34c48e: f24d fe27    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x24dc4e
  34c492: 4603         	mov	r3, r0
  34c494: 429c         	cmp	r4, r3
  34c496: bf2c         	ite	hs
  34c498: 2300         	movhs	r3, #0x0
  34c49a: 2301         	movlo	r3, #0x1
  34c49c: b2db         	uxtb	r3, r3
  34c49e: 2b00         	cmp	r3, #0x0
  34c4a0: d1c7         	bne	0x34c432 <ItemPurchase::rebuildAndCachePurchases()+0x2e> @ imm = #-0x72
  34c4a2: f296 f8c3    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x296186
  34c4a6: 4602         	mov	r2, r0
  34c4a8: ab03         	add	r3, sp, #0xc
  34c4aa: 4610         	mov	r0, r2
  34c4ac: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x34c4e8 <ItemPurchase::rebuildAndCachePurchases()+0xe4>
  34c4ae: 447a         	add	r2, pc
  34c4b0: 4611         	mov	r1, r2
  34c4b2: 461a         	mov	r2, r3
  34c4b4: f296 f8a6    	bl	0x5e2604 <cocos2d::CCUserDefault::setStringForKey(char const*, std::string const&)> @ imm = #0x29614c
  34c4b8: ab03         	add	r3, sp, #0xc
  34c4ba: 4618         	mov	r0, r3
  34c4bc: f069 f22a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x469454
  34c4c0: e00b         	b	0x34c4da <ItemPurchase::rebuildAndCachePurchases()+0xd6> @ imm = #0x16
  34c4c2: ab02         	add	r3, sp, #0x8
  34c4c4: 4618         	mov	r0, r3
  34c4c6: f03d f799    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43df32
  34c4ca: f03b f5ef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43bbde
  34c4ce: ab03         	add	r3, sp, #0xc
  34c4d0: 4618         	mov	r0, r3
  34c4d2: f069 f21f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46943e
  34c4d6: f03b f5e9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43bbd2
  34c4da: b006         	add	sp, #0x18
  34c4dc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34c4dd); words below are literal-pool data ---
  34c4de: bf00         	nop
  34c4e0: ed82 0047    	stc	p0, c0, [r2, #284]
  34c4e4: ed40 0047    	stcl	p0, c0, [r0, #-284]
  34c4e8: ecf2 0047    	ldcl	p0, c0, [r2], #284
