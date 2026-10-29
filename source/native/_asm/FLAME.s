// FLAME: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 8 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FLAME.cpp

// ==== FLAME::FLAME
//      file offset 0x31ea84 (= ELF address; Ghidra 0x32ea84), 340 bytes, Thumb-2
  31ea84: b510         	push	{r4, lr}
  31ea86: b082         	sub	sp, #0x8
  31ea88: 9001         	str	r0, [sp, #0x4]
  31ea8a: 4c4e         	ldr	r4, [pc, #0x138]        @ 0x31ebc4 <FLAME::FLAME()+0x140>
  31ea8c: 447c         	add	r4, pc
  31ea8e: 9b01         	ldr	r3, [sp, #0x4]
  31ea90: 4618         	mov	r0, r3
  31ea92: f270 fdd1    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x270ba2
  31ea96: 9b01         	ldr	r3, [sp, #0x4]
  31ea98: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x31ebc8 <FLAME::FLAME()+0x144>
  31ea9a: 58a2         	ldr	r2, [r4, r2]
  31ea9c: 3208         	adds	r2, #0x8
  31ea9e: 601a         	str	r2, [r3]
  31eaa0: 9b01         	ldr	r3, [sp, #0x4]
  31eaa2: f503 7380    	add.w	r3, r3, #0x100
  31eaa6: 4618         	mov	r0, r3
  31eaa8: f096 f382    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x496704
  31eaac: 9b01         	ldr	r3, [sp, #0x4]
  31eaae: f503 7382    	add.w	r3, r3, #0x104
  31eab2: 4618         	mov	r0, r3
  31eab4: f096 f37c    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x4966f8
  31eab8: 4b44         	ldr	r3, [pc, #0x110]        @ 0x31ebcc <FLAME::FLAME()+0x148>
  31eaba: 447b         	add	r3, pc
  31eabc: 4618         	mov	r0, r3
  31eabe: f2b9 fc21    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b9842
  31eac2: 4602         	mov	r2, r0
  31eac4: 9b01         	ldr	r3, [sp, #0x4]
  31eac6: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  31eaca: 9b01         	ldr	r3, [sp, #0x4]
  31eacc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ead0: 4618         	mov	r0, r3
  31ead2: f279 fa09    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x279412
  31ead6: 9a01         	ldr	r2, [sp, #0x4]
  31ead8: 9b01         	ldr	r3, [sp, #0x4]
  31eada: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31eade: 4610         	mov	r0, r2
  31eae0: 4619         	mov	r1, r3
  31eae2: 2200         	movs	r2, #0x0
  31eae4: f271 fcf0    	bl	0x5904c8 <cocos2d::CCNode::addChild(cocos2d::CCNode*, int)> @ imm = #0x2719e0
  31eae8: 9b01         	ldr	r3, [sp, #0x4]
  31eaea: f04f 0200    	mov.w	r2, #0x0
  31eaee: f8c3 2158    	str.w	r2, [r3, #0x158]
  31eaf2: 9901         	ldr	r1, [sp, #0x4]
  31eaf4: f04f 0200    	mov.w	r2, #0x0
  31eaf8: f04f 0300    	mov.w	r3, #0x0
  31eafc: e9c1 2348    	strd	r2, r3, [r1, #288]
  31eb00: 9901         	ldr	r1, [sp, #0x4]
  31eb02: f04f 0200    	mov.w	r2, #0x0
  31eb06: f04f 0300    	mov.w	r3, #0x0
  31eb0a: e9c1 234a    	strd	r2, r3, [r1, #296]
  31eb0e: 9901         	ldr	r1, [sp, #0x4]
  31eb10: f04f 0200    	mov.w	r2, #0x0
  31eb14: f04f 0300    	mov.w	r3, #0x0
  31eb18: e9c1 234c    	strd	r2, r3, [r1, #304]
  31eb1c: 9901         	ldr	r1, [sp, #0x4]
  31eb1e: f04f 0200    	mov.w	r2, #0x0
  31eb22: f04f 0300    	mov.w	r3, #0x0
  31eb26: e9c1 234e    	strd	r2, r3, [r1, #312]
  31eb2a: 9b01         	ldr	r3, [sp, #0x4]
  31eb2c: 2200         	movs	r2, #0x0
  31eb2e: f8c3 2140    	str.w	r2, [r3, #0x140]
  31eb32: 9b01         	ldr	r3, [sp, #0x4]
  31eb34: f04f 0200    	mov.w	r2, #0x0
  31eb38: f8c3 2180    	str.w	r2, [r3, #0x180]
  31eb3c: 9b01         	ldr	r3, [sp, #0x4]
  31eb3e: f503 7380    	add.w	r3, r3, #0x100
  31eb42: 4618         	mov	r0, r3
  31eb44: 4b22         	ldr	r3, [pc, #0x88]         @ 0x31ebd0 <FLAME::FLAME()+0x14c>
  31eb46: 447b         	add	r3, pc
  31eb48: 4619         	mov	r1, r3
  31eb4a: f097 f191    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x497322
  31eb4e: 9b01         	ldr	r3, [sp, #0x4]
  31eb50: f503 7382    	add.w	r3, r3, #0x104
  31eb54: 4618         	mov	r0, r3
  31eb56: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x31ebd4 <FLAME::FLAME()+0x150>
  31eb58: 447b         	add	r3, pc
  31eb5a: 4619         	mov	r1, r3
  31eb5c: f097 f188    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x497310
  31eb60: 9b01         	ldr	r3, [sp, #0x4]
  31eb62: 2201         	movs	r2, #0x1
  31eb64: f8c3 215c    	str.w	r2, [r3, #0x15c]
  31eb68: 9b01         	ldr	r3, [sp, #0x4]
  31eb6a: f649 129a    	movw	r2, #0x999a
  31eb6e: f6c3 6299    	movt	r2, #0x3e99
  31eb72: f8c3 2160    	str.w	r2, [r3, #0x160]
  31eb76: 9b01         	ldr	r3, [sp, #0x4]
  31eb78: f04f 0200    	mov.w	r2, #0x0
  31eb7c: f8c3 2164    	str.w	r2, [r3, #0x164]
  31eb80: 9b01         	ldr	r3, [sp, #0x4]
  31eb82: 2200         	movs	r2, #0x0
  31eb84: f883 2168    	strb.w	r2, [r3, #0x168]
  31eb88: 9b01         	ldr	r3, [sp, #0x4]
  31eb8a: 2200         	movs	r2, #0x0
  31eb8c: f8c3 216c    	str.w	r2, [r3, #0x16c]
  31eb90: 9b01         	ldr	r3, [sp, #0x4]
  31eb92: e013         	b	0x31ebbc <FLAME::FLAME()+0x138> @ imm = #0x26
  31eb94: 9b01         	ldr	r3, [sp, #0x4]
  31eb96: f503 7382    	add.w	r3, r3, #0x104
  31eb9a: 4618         	mov	r0, r3
  31eb9c: f096 f6ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496d74
  31eba0: e7ff         	b	0x31eba2 <FLAME::FLAME()+0x11e> @ imm = #-0x2
  31eba2: 9b01         	ldr	r3, [sp, #0x4]
  31eba4: f503 7380    	add.w	r3, r3, #0x100
  31eba8: 4618         	mov	r0, r3
  31ebaa: f096 f6b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496d66
  31ebae: e7ff         	b	0x31ebb0 <FLAME::FLAME()+0x12c> @ imm = #-0x2
  31ebb0: 9b01         	ldr	r3, [sp, #0x4]
  31ebb2: 4618         	mov	r0, r3
  31ebb4: f270 fe46    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x270c8c
  31ebb8: f069 f278    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4694f0
  31ebbc: 4618         	mov	r0, r3
  31ebbe: b002         	add	sp, #0x8
  31ebc0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x31ebc1); words below are literal-pool data ---
  31ebc2: bf00         	nop
  31ebc4: 3f7c         	subs	r7, #0x7c
  31ebc6: 0061         	lsls	r1, r4, #0x1
  31ebc8: da24         	bge	0x31ec14 <FLAME::~FLAME()+0x3c> @ imm = #0x48
  31ebca: ffff 8a52    	<unknown>
  31ebce: 004a         	lsls	r2, r1, #0x1
  31ebd0: 89d2         	ldrh	r2, [r2, #0xe]
  31ebd2: 004a         	lsls	r2, r1, #0x1
  31ebd4: 89c0         	ldrh	r0, [r0, #0xe]
  31ebd6: 004a         	lsls	r2, r1, #0x1

// ==== FLAME::~FLAME
//      file offset 0x31ebd8 (= ELF address; Ghidra 0x32ebd8), 104 bytes, Thumb-2
  31ebd8: b500         	push	{lr}
  31ebda: b083         	sub	sp, #0xc
  31ebdc: 9001         	str	r0, [sp, #0x4]
  31ebde: 4916         	ldr	r1, [pc, #0x58]         @ 0x31ec38 <FLAME::~FLAME()+0x60>
  31ebe0: 4479         	add	r1, pc
  31ebe2: 9b01         	ldr	r3, [sp, #0x4]
  31ebe4: 4a15         	ldr	r2, [pc, #0x54]         @ 0x31ec3c <FLAME::~FLAME()+0x64>
  31ebe6: 588a         	ldr	r2, [r1, r2]
  31ebe8: 3208         	adds	r2, #0x8
  31ebea: 601a         	str	r2, [r3]
  31ebec: 9b01         	ldr	r3, [sp, #0x4]
  31ebee: 4618         	mov	r0, r3
  31ebf0: f271 fd1c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x271a38
  31ebf4: 9b01         	ldr	r3, [sp, #0x4]
  31ebf6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ebfa: 4618         	mov	r0, r3
  31ebfc: f279 f95c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2792b8
  31ec00: 9b01         	ldr	r3, [sp, #0x4]
  31ec02: f503 7382    	add.w	r3, r3, #0x104
  31ec06: 4618         	mov	r0, r3
  31ec08: f096 f684    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496d08
  31ec0c: 9b01         	ldr	r3, [sp, #0x4]
  31ec0e: f503 7380    	add.w	r3, r3, #0x100
  31ec12: 4618         	mov	r0, r3
  31ec14: f096 f67e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496cfc
  31ec18: 9b01         	ldr	r3, [sp, #0x4]
  31ec1a: 4618         	mov	r0, r3
  31ec1c: f270 fe12    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x270c24
  31ec20: 2300         	movs	r3, #0x0
  31ec22: 2b00         	cmp	r3, #0x0
  31ec24: d002         	beq	0x31ec2c <FLAME::~FLAME()+0x54> @ imm = #0x4
  31ec26: 9801         	ldr	r0, [sp, #0x4]
  31ec28: f069 f23c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x469478
  31ec2c: 9b01         	ldr	r3, [sp, #0x4]
  31ec2e: 4618         	mov	r0, r3
  31ec30: b003         	add	sp, #0xc
  31ec32: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x31ec35); words below are literal-pool data ---
  31ec36: bf00         	nop
  31ec38: 3e28         	subs	r6, #0x28
  31ec3a: 0061         	lsls	r1, r4, #0x1
  31ec3c: da24         	bge	0x31ec88 <FLAME::setFrame(int)+0x2c> @ imm = #0x48
  31ec3e: ffff b500    	<unknown>

// ==== FLAME::~FLAME
//      file offset 0x31ec40 (= ELF address; Ghidra 0x32ec40), 28 bytes, Thumb-2
  31ec40: b500         	push	{lr}
  31ec42: b083         	sub	sp, #0xc
  31ec44: 9001         	str	r0, [sp, #0x4]
  31ec46: 9801         	ldr	r0, [sp, #0x4]
  31ec48: f7ff ffc6    	bl	0x31ebd8 <FLAME::~FLAME()> @ imm = #-0x74
  31ec4c: 9801         	ldr	r0, [sp, #0x4]
  31ec4e: f069 f229    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x469452
  31ec52: 9b01         	ldr	r3, [sp, #0x4]
  31ec54: 4618         	mov	r0, r3
  31ec56: b003         	add	sp, #0xc
  31ec58: f85d fb04    	ldr	pc, [sp], #4

// ==== FLAME::setFrame
//      file offset 0x31ec5c (= ELF address; Ghidra 0x32ec5c), 124 bytes, Thumb-2
  31ec5c: b530         	push	{r4, r5, lr}
  31ec5e: b083         	sub	sp, #0xc
  31ec60: 9001         	str	r0, [sp, #0x4]
  31ec62: 9100         	str	r1, [sp]
  31ec64: 9b00         	ldr	r3, [sp]
  31ec66: 2b01         	cmp	r3, #0x1
  31ec68: d117         	bne	0x31ec9a <FLAME::setFrame(int)+0x3e> @ imm = #0x2e
  31ec6a: 9b01         	ldr	r3, [sp, #0x4]
  31ec6c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ec70: 681b         	ldr	r3, [r3]
  31ec72: f503 7305    	add.w	r3, r3, #0x214
  31ec76: 681c         	ldr	r4, [r3]
  31ec78: 9b01         	ldr	r3, [sp, #0x4]
  31ec7a: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  31ec7e: f2bd fec3    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2bdd86
  31ec82: 4603         	mov	r3, r0
  31ec84: 4618         	mov	r0, r3
  31ec86: 4b12         	ldr	r3, [pc, #0x48]         @ 0x31ecd0 <FLAME::setFrame(int)+0x74>
  31ec88: 447b         	add	r3, pc
  31ec8a: 4619         	mov	r1, r3
  31ec8c: f2bf fa5c    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2bf4b8
  31ec90: 4603         	mov	r3, r0
  31ec92: 4628         	mov	r0, r5
  31ec94: 4619         	mov	r1, r3
  31ec96: 47a0         	blx	r4
  31ec98: e017         	b	0x31ecca <FLAME::setFrame(int)+0x6e> @ imm = #0x2e
  31ec9a: 9b01         	ldr	r3, [sp, #0x4]
  31ec9c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31eca0: 681b         	ldr	r3, [r3]
  31eca2: f503 7305    	add.w	r3, r3, #0x214
  31eca6: 681c         	ldr	r4, [r3]
  31eca8: 9b01         	ldr	r3, [sp, #0x4]
  31ecaa: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  31ecae: f2bd feab    	bl	0x5dca08 <cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()> @ imm = #0x2bdd56
  31ecb2: 4603         	mov	r3, r0
  31ecb4: 4618         	mov	r0, r3
  31ecb6: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x31ecd4 <FLAME::setFrame(int)+0x78>
  31ecb8: 447b         	add	r3, pc
  31ecba: 4619         	mov	r1, r3
  31ecbc: f2bf fa44    	bl	0x5de148 <cocos2d::CCSpriteFrameCache::spriteFrameByName(char const*)> @ imm = #0x2bf488
  31ecc0: 4603         	mov	r3, r0
  31ecc2: 4628         	mov	r0, r5
  31ecc4: 4619         	mov	r1, r3
  31ecc6: 47a0         	blx	r4
  31ecc8: bf00         	nop
  31ecca: b003         	add	sp, #0xc
  31eccc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31eccd); words below are literal-pool data ---
  31ecce: bf00         	nop
  31ecd0: 8894         	ldrh	r4, [r2, #0x4]
  31ecd2: 004a         	lsls	r2, r1, #0x1
  31ecd4: 8870         	ldrh	r0, [r6, #0x2]
  31ecd6: 004a         	lsls	r2, r1, #0x1

// ==== FLAME::checkCollision
//      file offset 0x31ecd8 (= ELF address; Ghidra 0x32ecd8), 1252 bytes, Thumb-2
  31ecd8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  31ecdc: ed2d 8b02    	vpush	{d8}
  31ece0: b0ad         	sub	sp, #0xb4
  31ece2: 900b         	str	r0, [sp, #0x2c]
  31ece4: 910a         	str	r1, [sp, #0x28]
  31ece6: 4ca0         	ldr	r4, [pc, #0x280]        @ 0x31ef68 <FLAME::checkCollision(float)+0x290>
  31ece8: 447c         	add	r4, pc
  31ecea: 9b0b         	ldr	r3, [sp, #0x2c]
  31ecec: f893 3170    	ldrb.w	r3, [r3, #0x170]
  31ecf0: 2b00         	cmp	r3, #0x0
  31ecf2: d000         	beq	0x31ecf6 <FLAME::checkCollision(float)+0x1e> @ imm = #0x0
  31ecf4: e259         	b	0x31f1aa <FLAME::checkCollision(float)+0x4d2> @ imm = #0x4b2
  31ecf6: 9b0b         	ldr	r3, [sp, #0x2c]
  31ecf8: f503 7582    	add.w	r5, r3, #0x104
  31ecfc: 4b9b         	ldr	r3, [pc, #0x26c]        @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31ecfe: 58e3         	ldr	r3, [r4, r3]
  31ed00: 681b         	ldr	r3, [r3]
  31ed02: 681b         	ldr	r3, [r3]
  31ed04: f503 73e0    	add.w	r3, r3, #0x1c0
  31ed08: 681b         	ldr	r3, [r3]
  31ed0a: 4a98         	ldr	r2, [pc, #0x260]        @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31ed0c: 58a2         	ldr	r2, [r4, r2]
  31ed0e: 6812         	ldr	r2, [r2]
  31ed10: a928         	add	r1, sp, #0xa0
  31ed12: 4608         	mov	r0, r1
  31ed14: 4611         	mov	r1, r2
  31ed16: 4798         	blx	r3
  31ed18: ab28         	add	r3, sp, #0xa0
  31ed1a: 4628         	mov	r0, r5
  31ed1c: 4619         	mov	r1, r3
  31ed1e: f096 f4ad    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x49695a
  31ed22: 4603         	mov	r3, r0
  31ed24: 2b00         	cmp	r3, #0x0
  31ed26: bf14         	ite	ne
  31ed28: 2300         	movne	r3, #0x0
  31ed2a: 2301         	moveq	r3, #0x1
  31ed2c: f88d 3037    	strb.w	r3, [sp, #0x37]
  31ed30: ab28         	add	r3, sp, #0xa0
  31ed32: 4618         	mov	r0, r3
  31ed34: f096 f5ee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496bdc
  31ed38: 9b0b         	ldr	r3, [sp, #0x2c]
  31ed3a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ed3e: 681b         	ldr	r3, [r3]
  31ed40: 3334         	adds	r3, #0x34
  31ed42: 681b         	ldr	r3, [r3]
  31ed44: 9a0b         	ldr	r2, [sp, #0x2c]
  31ed46: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31ed4a: 4610         	mov	r0, r2
  31ed4c: 4798         	blx	r3
  31ed4e: ee07 0a10    	vmov	s14, r0
  31ed52: eddf 7a84    	vldr	s15, [pc, #528]         @ 0x31ef64 <FLAME::checkCollision(float)+0x28c>
  31ed56: ee67 7a27    	vmul.f32	s15, s14, s15
  31ed5a: edcd 7a12    	vstr	s15, [sp, #72]
  31ed5e: 9b0b         	ldr	r3, [sp, #0x2c]
  31ed60: 681b         	ldr	r3, [r3]
  31ed62: 3350         	adds	r3, #0x50
  31ed64: 681b         	ldr	r3, [r3]
  31ed66: 9a0b         	ldr	r2, [sp, #0x2c]
  31ed68: 4610         	mov	r0, r2
  31ed6a: 4798         	blx	r3
  31ed6c: 4603         	mov	r3, r0
  31ed6e: edd3 7a00    	vldr	s15, [r3]
  31ed72: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31ed76: 9b0b         	ldr	r3, [sp, #0x2c]
  31ed78: 681b         	ldr	r3, [r3]
  31ed7a: 3350         	adds	r3, #0x50
  31ed7c: 681b         	ldr	r3, [r3]
  31ed7e: 9a0b         	ldr	r2, [sp, #0x2c]
  31ed80: 4610         	mov	r0, r2
  31ed82: 4798         	blx	r3
  31ed84: 4603         	mov	r3, r0
  31ed86: edd3 7a01    	vldr	s15, [r3, #4]
  31ed8a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31ed8e: ab18         	add	r3, sp, #0x60
  31ed90: 4618         	mov	r0, r3
  31ed92: eeb0 0b48    	vmov.f64	d0, d8
  31ed96: eeb0 1b47    	vmov.f64	d1, d7
  31ed9a: f7fe ff35    	bl	0x31dc08 <Explosion::updateStep(float)+0x410> @ imm = #-0x1196
  31ed9e: 9b0b         	ldr	r3, [sp, #0x2c]
  31eda0: f893 3168    	ldrb.w	r3, [r3, #0x168]
  31eda4: f083 0301    	eor	r3, r3, #0x1
  31eda8: b2db         	uxtb	r3, r3
  31edaa: 2b00         	cmp	r3, #0x0
  31edac: d02e         	beq	0x31ee0c <FLAME::checkCollision(float)+0x134> @ imm = #0x5c
  31edae: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x31ef70 <FLAME::checkCollision(float)+0x298>
  31edb0: 58e3         	ldr	r3, [r4, r3]
  31edb2: 681d         	ldr	r5, [r3]
  31edb4: f44f 7384    	mov.w	r3, #0x108
  31edb8: 9302         	str	r3, [sp, #0x8]
  31edba: 2300         	movs	r3, #0x0
  31edbc: 9303         	str	r3, [sp, #0xc]
  31edbe: 466b         	mov	r3, sp
  31edc0: aa1a         	add	r2, sp, #0x68
  31edc2: e892 0003    	ldm.w	r2, {r0, r1}
  31edc6: e883 0003    	stm.w	r3, {r0, r1}
  31edca: ab18         	add	r3, sp, #0x60
  31edcc: cb0c         	ldm	r3, {r2, r3}
  31edce: 4628         	mov	r0, r5
  31edd0: f3b7 f832    	bl	0x6d5e38 <cpSpacePointQueryFirst> @ imm = #0x3b7064
  31edd4: 4603         	mov	r3, r0
  31edd6: 9313         	str	r3, [sp, #0x4c]
  31edd8: 9b13         	ldr	r3, [sp, #0x4c]
  31edda: 2b00         	cmp	r3, #0x0
  31eddc: d015         	beq	0x31ee0a <FLAME::checkCollision(float)+0x132> @ imm = #0x2a
  31edde: 990b         	ldr	r1, [sp, #0x2c]
  31ede0: f04f 0200    	mov.w	r2, #0x0
  31ede4: f04f 0300    	mov.w	r3, #0x0
  31ede8: e9c1 2352    	strd	r2, r3, [r1, #328]
  31edec: 990b         	ldr	r1, [sp, #0x2c]
  31edee: f04f 0200    	mov.w	r2, #0x0
  31edf2: f04f 0300    	mov.w	r3, #0x0
  31edf6: e9c1 2354    	strd	r2, r3, [r1, #336]
  31edfa: 980b         	ldr	r0, [sp, #0x2c]
  31edfc: 2101         	movs	r1, #0x1
  31edfe: f7ff ff2d    	bl	0x31ec5c <FLAME::setFrame(int)> @ imm = #-0x1a6
  31ee02: 9b0b         	ldr	r3, [sp, #0x2c]
  31ee04: 2201         	movs	r2, #0x1
  31ee06: f883 2168    	strb.w	r2, [r3, #0x168]
  31ee0a: e079         	b	0x31ef00 <FLAME::checkCollision(float)+0x228> @ imm = #0xf2
  31ee0c: f89d 3037    	ldrb.w	r3, [sp, #0x37]
  31ee10: 2b00         	cmp	r3, #0x0
  31ee12: d075         	beq	0x31ef00 <FLAME::checkCollision(float)+0x228> @ imm = #0xea
  31ee14: 4b55         	ldr	r3, [pc, #0x154]        @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31ee16: 58e3         	ldr	r3, [r4, r3]
  31ee18: 681b         	ldr	r3, [r3]
  31ee1a: 681b         	ldr	r3, [r3]
  31ee1c: f503 73d6    	add.w	r3, r3, #0x1ac
  31ee20: 681b         	ldr	r3, [r3]
  31ee22: 4a52         	ldr	r2, [pc, #0x148]        @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31ee24: 58a2         	ldr	r2, [r4, r2]
  31ee26: 6812         	ldr	r2, [r2]
  31ee28: a924         	add	r1, sp, #0x90
  31ee2a: 4608         	mov	r0, r1
  31ee2c: 4611         	mov	r1, r2
  31ee2e: 4798         	blx	r3
  31ee30: ab28         	add	r3, sp, #0xa0
  31ee32: ed9d 4b18    	vldr	d4, [sp, #96]
  31ee36: ed9d 5b1a    	vldr	d5, [sp, #104]
  31ee3a: ed9d 6b24    	vldr	d6, [sp, #144]
  31ee3e: ed9d 7b26    	vldr	d7, [sp, #152]
  31ee42: 4618         	mov	r0, r3
  31ee44: eeb0 0b44    	vmov.f64	d0, d4
  31ee48: eeb0 1b45    	vmov.f64	d1, d5
  31ee4c: eeb0 2b46    	vmov.f64	d2, d6
  31ee50: eeb0 3b47    	vmov.f64	d3, d7
  31ee54: f7fe ff18    	bl	0x31dc88 <Explosion::updateStep(float)+0x490> @ imm = #-0x11d0
  31ee58: ab28         	add	r3, sp, #0xa0
  31ee5a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31ee5c: f3b8 f92c    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3b8258
  31ee60: ec41 0b17    	vmov	d7, r0, r1
  31ee64: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31ee68: edcd 7a14    	vstr	s15, [sp, #80]
  31ee6c: ed9d 7a14    	vldr	s14, [sp, #80]
  31ee70: eddd 7a12    	vldr	s15, [sp, #72]
  31ee74: eeb4 7ae7    	vcmpe.f32	s14, s15
  31ee78: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31ee7c: d400         	bmi	0x31ee80 <FLAME::checkCollision(float)+0x1a8> @ imm = #0x0
  31ee7e: e03f         	b	0x31ef00 <FLAME::checkCollision(float)+0x228> @ imm = #0x7e
  31ee80: 9b0b         	ldr	r3, [sp, #0x2c]
  31ee82: 2201         	movs	r2, #0x1
  31ee84: f883 2170    	strb.w	r2, [r3, #0x170]
  31ee88: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31ee8a: 58e3         	ldr	r3, [r4, r3]
  31ee8c: 681b         	ldr	r3, [r3]
  31ee8e: 681b         	ldr	r3, [r3]
  31ee90: f503 7316    	add.w	r3, r3, #0x258
  31ee94: 681d         	ldr	r5, [r3]
  31ee96: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31ee98: 58e3         	ldr	r3, [r4, r3]
  31ee9a: 681b         	ldr	r3, [r3]
  31ee9c: 461e         	mov	r6, r3
  31ee9e: ed9d 7a12    	vldr	s14, [sp, #72]
  31eea2: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  31eea6: ee77 7a27    	vadd.f32	s15, s14, s15
  31eeaa: ed9d 7a14    	vldr	s14, [sp, #80]
  31eeae: ee87 7a27    	vdiv.f32	s14, s14, s15
  31eeb2: eddf 7a31    	vldr	s15, [pc, #196]         @ 0x31ef78 <FLAME::checkCollision(float)+0x2a0>
  31eeb6: ee67 7a27    	vmul.f32	s15, s14, s15
  31eeba: ed9f 7a2f    	vldr	s14, [pc, #188]         @ 0x31ef78 <FLAME::checkCollision(float)+0x2a0>
  31eebe: ee37 7a67    	vsub.f32	s14, s14, s15
  31eec2: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  31eec6: ee37 8a27    	vadd.f32	s16, s14, s15
  31eeca: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31eecc: 58e3         	ldr	r3, [r4, r3]
  31eece: 681b         	ldr	r3, [r3]
  31eed0: 681b         	ldr	r3, [r3]
  31eed2: f503 73e0    	add.w	r3, r3, #0x1c0
  31eed6: 681b         	ldr	r3, [r3]
  31eed8: 4a24         	ldr	r2, [pc, #0x90]         @ 0x31ef6c <FLAME::checkCollision(float)+0x294>
  31eeda: 58a2         	ldr	r2, [r4, r2]
  31eedc: 6812         	ldr	r2, [r2]
  31eede: a920         	add	r1, sp, #0x80
  31eee0: 4608         	mov	r0, r1
  31eee2: 4611         	mov	r1, r2
  31eee4: 4798         	blx	r3
  31eee6: ab20         	add	r3, sp, #0x80
  31eee8: 2201         	movs	r2, #0x1
  31eeea: 9200         	str	r2, [sp]
  31eeec: 4630         	mov	r0, r6
  31eeee: ee18 1a10    	vmov	r1, s16
  31eef2: 461a         	mov	r2, r3
  31eef4: 2313         	movs	r3, #0x13
  31eef6: 47a8         	blx	r5
  31eef8: ab20         	add	r3, sp, #0x80
  31eefa: 4618         	mov	r0, r3
  31eefc: f096 f50a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496a14
  31ef00: f89d 3037    	ldrb.w	r3, [sp, #0x37]
  31ef04: 2b00         	cmp	r3, #0x0
  31ef06: f000 8138    	beq.w	0x31f17a <FLAME::checkCollision(float)+0x4a2> @ imm = #0x270
  31ef0a: 2300         	movs	r3, #0x0
  31ef0c: 9310         	str	r3, [sp, #0x40]
  31ef0e: 2300         	movs	r3, #0x0
  31ef10: 9311         	str	r3, [sp, #0x44]
  31ef12: 4b18         	ldr	r3, [pc, #0x60]         @ 0x31ef74 <FLAME::checkCollision(float)+0x29c>
  31ef14: 58e3         	ldr	r3, [r4, r3]
  31ef16: 681b         	ldr	r3, [r3]
  31ef18: 2b00         	cmp	r3, #0x0
  31ef1a: d00a         	beq	0x31ef32 <FLAME::checkCollision(float)+0x25a> @ imm = #0x14
  31ef1c: 4b15         	ldr	r3, [pc, #0x54]         @ 0x31ef74 <FLAME::checkCollision(float)+0x29c>
  31ef1e: 58e3         	ldr	r3, [r4, r3]
  31ef20: 681b         	ldr	r3, [r3]
  31ef22: 4618         	mov	r0, r3
  31ef24: f274 fea2    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x274d44
  31ef28: 4603         	mov	r3, r0
  31ef2a: 2b00         	cmp	r3, #0x0
  31ef2c: d001         	beq	0x31ef32 <FLAME::checkCollision(float)+0x25a> @ imm = #0x2
  31ef2e: 2301         	movs	r3, #0x1
  31ef30: e000         	b	0x31ef34 <FLAME::checkCollision(float)+0x25c> @ imm = #0x0
  31ef32: 2300         	movs	r3, #0x0
  31ef34: 2b00         	cmp	r3, #0x0
  31ef36: f000 8120    	beq.w	0x31f17a <FLAME::checkCollision(float)+0x4a2> @ imm = #0x240
  31ef3a: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x31ef74 <FLAME::checkCollision(float)+0x29c>
  31ef3c: 58e3         	ldr	r3, [r4, r3]
  31ef3e: 681b         	ldr	r3, [r3]
  31ef40: 695b         	ldr	r3, [r3, #0x14]
  31ef42: 9310         	str	r3, [sp, #0x40]
  31ef44: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x31ef74 <FLAME::checkCollision(float)+0x29c>
  31ef46: 58e3         	ldr	r3, [r4, r3]
  31ef48: 681b         	ldr	r3, [r3]
  31ef4a: 695b         	ldr	r3, [r3, #0x14]
  31ef4c: 2b00         	cmp	r3, #0x0
  31ef4e: d006         	beq	0x31ef5e <FLAME::checkCollision(float)+0x286> @ imm = #0xc
  31ef50: 4b08         	ldr	r3, [pc, #0x20]         @ 0x31ef74 <FLAME::checkCollision(float)+0x29c>
  31ef52: 58e3         	ldr	r3, [r4, r3]
  31ef54: 681b         	ldr	r3, [r3]
  31ef56: 695b         	ldr	r3, [r3, #0x14]
  31ef58: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31ef5c: e000         	b	0x31ef60 <FLAME::checkCollision(float)+0x288> @ imm = #0x0
  31ef5e: 2300         	movs	r3, #0x0
  31ef60: 9311         	str	r3, [sp, #0x44]
  31ef62: e106         	b	0x31f172 <FLAME::checkCollision(float)+0x49a> @ imm = #0x20c
  31ef64: 0000         	movs	r0, r0
  31ef66: 4248         	rsbs	r0, r1, #0
  31ef68: 3d20         	subs	r5, #0x20
  31ef6a: 0061         	lsls	r1, r4, #0x1
  31ef6c: d784         	bvc	0x31ee78 <FLAME::checkCollision(float)+0x1a0> @ imm = #-0xf8
  31ef6e: ffff da00    	vtbl.8	d29, {d15, d16, d17}, d0
  31ef72: ffff d920    	vtbl.8	d29, {d15, d16}, d16
  31ef76: ffff 0000    	<unknown>
  31ef7a: 4220         	tst	r0, r4
  31ef7c: 9810         	ldr	r0, [sp, #0x40]
  31ef7e: f7df fb59    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x2094e
  31ef82: 4603         	mov	r3, r0
  31ef84: 9315         	str	r3, [sp, #0x54]
  31ef86: 9b0b         	ldr	r3, [sp, #0x2c]
  31ef88: 681b         	ldr	r3, [r3]
  31ef8a: 3350         	adds	r3, #0x50
  31ef8c: 681b         	ldr	r3, [r3]
  31ef8e: 9a0b         	ldr	r2, [sp, #0x2c]
  31ef90: 4610         	mov	r0, r2
  31ef92: 4798         	blx	r3
  31ef94: 4603         	mov	r3, r0
  31ef96: edd3 7a00    	vldr	s15, [r3]
  31ef9a: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31ef9e: 9b0b         	ldr	r3, [sp, #0x2c]
  31efa0: 681b         	ldr	r3, [r3]
  31efa2: 3350         	adds	r3, #0x50
  31efa4: 681b         	ldr	r3, [r3]
  31efa6: 9a0b         	ldr	r2, [sp, #0x2c]
  31efa8: 4610         	mov	r0, r2
  31efaa: 4798         	blx	r3
  31efac: 4603         	mov	r3, r0
  31efae: edd3 7a01    	vldr	s15, [r3, #4]
  31efb2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31efb6: ab1c         	add	r3, sp, #0x70
  31efb8: 4618         	mov	r0, r3
  31efba: eeb0 0b48    	vmov.f64	d0, d8
  31efbe: eeb0 1b47    	vmov.f64	d1, d7
  31efc2: f7fe fe21    	bl	0x31dc08 <Explosion::updateStep(float)+0x410> @ imm = #-0x13be
  31efc6: 9b15         	ldr	r3, [sp, #0x54]
  31efc8: 681b         	ldr	r3, [r3]
  31efca: f503 73d6    	add.w	r3, r3, #0x1ac
  31efce: 681b         	ldr	r3, [r3]
  31efd0: aa28         	add	r2, sp, #0xa0
  31efd2: 4610         	mov	r0, r2
  31efd4: 9915         	ldr	r1, [sp, #0x54]
  31efd6: 4798         	blx	r3
  31efd8: ab20         	add	r3, sp, #0x80
  31efda: ed9d 4b1c    	vldr	d4, [sp, #112]
  31efde: ed9d 5b1e    	vldr	d5, [sp, #120]
  31efe2: ed9d 6b28    	vldr	d6, [sp, #160]
  31efe6: ed9d 7b2a    	vldr	d7, [sp, #168]
  31efea: 4618         	mov	r0, r3
  31efec: eeb0 0b44    	vmov.f64	d0, d4
  31eff0: eeb0 1b45    	vmov.f64	d1, d5
  31eff4: eeb0 2b46    	vmov.f64	d2, d6
  31eff8: eeb0 3b47    	vmov.f64	d3, d7
  31effc: f7fe fe44    	bl	0x31dc88 <Explosion::updateStep(float)+0x490> @ imm = #-0x1378
  31f000: ab20         	add	r3, sp, #0x80
  31f002: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f004: f3b8 f858    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3b80b0
  31f008: ec41 0b17    	vmov	d7, r0, r1
  31f00c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f010: edcd 7a16    	vstr	s15, [sp, #88]
  31f014: ed9d 7a16    	vldr	s14, [sp, #88]
  31f018: eddd 7a12    	vldr	s15, [sp, #72]
  31f01c: eeb4 7ae7    	vcmpe.f32	s14, s15
  31f020: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31f024: f140 809a    	bpl.w	0x31f15c <FLAME::checkCollision(float)+0x484> @ imm = #0x134
  31f028: 9b0b         	ldr	r3, [sp, #0x2c]
  31f02a: 2201         	movs	r2, #0x1
  31f02c: f883 2170    	strb.w	r2, [r3, #0x170]
  31f030: ed9d 7b20    	vldr	d7, [sp, #128]
  31f034: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f038: ee17 0a90    	vmov	r0, s15
  31f03c: f7bd fe22    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x423bc
  31f040: 4680         	mov	r8, r0
  31f042: ed9d 7b22    	vldr	d7, [sp, #136]
  31f046: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f04a: ee17 0a90    	vmov	r0, s15
  31f04e: f7bd fe19    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x423ce
  31f052: 4607         	mov	r7, r0
  31f054: ed9d 7b20    	vldr	d7, [sp, #128]
  31f058: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f05c: ee17 0a90    	vmov	r0, s15
  31f060: f7bd fe10    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x423e0
  31f064: 4606         	mov	r6, r0
  31f066: ed9d 7b22    	vldr	d7, [sp, #136]
  31f06a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f06e: ee17 0a90    	vmov	r0, s15
  31f072: f7bd fe07    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x423f2
  31f076: 4605         	mov	r5, r0
  31f078: 2013         	movs	r0, #0x13
  31f07a: f7c5 fe45    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3a376
  31f07e: 9009         	str	r0, [sp, #0x24]
  31f080: ed9d 7a12    	vldr	s14, [sp, #72]
  31f084: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  31f088: ee77 7a27    	vadd.f32	s15, s14, s15
  31f08c: ed9d 7a16    	vldr	s14, [sp, #88]
  31f090: ee87 7a27    	vdiv.f32	s14, s14, s15
  31f094: ed5f 7a48    	vldr	s15, [pc, #-288]        @ 0x31ef78 <FLAME::checkCollision(float)+0x2a0>
  31f098: ee67 7a27    	vmul.f32	s15, s14, s15
  31f09c: ed1f 7a4a    	vldr	s14, [pc, #-296]        @ 0x31ef78 <FLAME::checkCollision(float)+0x2a0>
  31f0a0: ee37 7a67    	vsub.f32	s14, s14, s15
  31f0a4: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  31f0a8: ee77 7a27    	vadd.f32	s15, s14, s15
  31f0ac: eefd 7ae7    	vcvt.s32.f32	s15, s15
  31f0b0: ee17 3a90    	vmov	r3, s15
  31f0b4: 4618         	mov	r0, r3
  31f0b6: f7c5 fe27    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3a3b2
  31f0ba: 9008         	str	r0, [sp, #0x20]
  31f0bc: 2000         	movs	r0, #0x0
  31f0be: f7c5 fe23    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3a3ba
  31f0c2: 4683         	mov	r11, r0
  31f0c4: 2000         	movs	r0, #0x0
  31f0c6: f7c5 fe1f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x3a3c2
  31f0ca: 4682         	mov	r10, r0
  31f0cc: 9b15         	ldr	r3, [sp, #0x54]
  31f0ce: 681b         	ldr	r3, [r3]
  31f0d0: f503 73e0    	add.w	r3, r3, #0x1c0
  31f0d4: 681b         	ldr	r3, [r3]
  31f0d6: aa0e         	add	r2, sp, #0x38
  31f0d8: 4610         	mov	r0, r2
  31f0da: 9915         	ldr	r1, [sp, #0x54]
  31f0dc: 4798         	blx	r3
  31f0de: ab0e         	add	r3, sp, #0x38
  31f0e0: 4618         	mov	r0, r3
  31f0e2: f27a fcab    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x27a956
  31f0e6: 4681         	mov	r9, r0
  31f0e8: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x31f1b4 <FLAME::checkCollision(float)+0x4dc>
  31f0ea: 58e3         	ldr	r3, [r4, r3]
  31f0ec: 681b         	ldr	r3, [r3]
  31f0ee: 681b         	ldr	r3, [r3]
  31f0f0: f503 73e0    	add.w	r3, r3, #0x1c0
  31f0f4: 681b         	ldr	r3, [r3]
  31f0f6: 4a2f         	ldr	r2, [pc, #0xbc]         @ 0x31f1b4 <FLAME::checkCollision(float)+0x4dc>
  31f0f8: 58a2         	ldr	r2, [r4, r2]
  31f0fa: 6812         	ldr	r2, [r2]
  31f0fc: a90f         	add	r1, sp, #0x3c
  31f0fe: 4608         	mov	r0, r1
  31f100: 4611         	mov	r1, r2
  31f102: 4798         	blx	r3
  31f104: ab0f         	add	r3, sp, #0x3c
  31f106: 4618         	mov	r0, r3
  31f108: f27a fc98    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x27a930
  31f10c: 4603         	mov	r3, r0
  31f10e: 9a09         	ldr	r2, [sp, #0x24]
  31f110: 9200         	str	r2, [sp]
  31f112: 9a08         	ldr	r2, [sp, #0x20]
  31f114: 9201         	str	r2, [sp, #0x4]
  31f116: f8cd b008    	str.w	r11, [sp, #0x8]
  31f11a: f8cd a00c    	str.w	r10, [sp, #0xc]
  31f11e: f8cd 9010    	str.w	r9, [sp, #0x10]
  31f122: 9305         	str	r3, [sp, #0x14]
  31f124: 2300         	movs	r3, #0x0
  31f126: 9306         	str	r3, [sp, #0x18]
  31f128: 4640         	mov	r0, r8
  31f12a: 4639         	mov	r1, r7
  31f12c: 4632         	mov	r2, r6
  31f12e: 462b         	mov	r3, r5
  31f130: f27a fe6e    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x27acdc
  31f134: 4603         	mov	r3, r0
  31f136: 9317         	str	r3, [sp, #0x5c]
  31f138: ab0f         	add	r3, sp, #0x3c
  31f13a: 4618         	mov	r0, r3
  31f13c: f096 f3ea    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4967d4
  31f140: ab0e         	add	r3, sp, #0x38
  31f142: 4618         	mov	r0, r3
  31f144: f096 f3e6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4967cc
  31f148: f2c1 fab2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c1564
  31f14c: 4603         	mov	r3, r0
  31f14e: 4618         	mov	r0, r3
  31f150: 4b19         	ldr	r3, [pc, #0x64]         @ 0x31f1b8 <FLAME::checkCollision(float)+0x4e0>
  31f152: 447b         	add	r3, pc
  31f154: 4619         	mov	r1, r3
  31f156: 9a17         	ldr	r2, [sp, #0x5c]
  31f158: f2c1 fce8    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c19d0
  31f15c: 9b11         	ldr	r3, [sp, #0x44]
  31f15e: 9310         	str	r3, [sp, #0x40]
  31f160: 9b11         	ldr	r3, [sp, #0x44]
  31f162: 2b00         	cmp	r3, #0x0
  31f164: d003         	beq	0x31f16e <FLAME::checkCollision(float)+0x496> @ imm = #0x6
  31f166: 9b11         	ldr	r3, [sp, #0x44]
  31f168: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  31f16c: e000         	b	0x31f170 <FLAME::checkCollision(float)+0x498> @ imm = #0x0
  31f16e: 2300         	movs	r3, #0x0
  31f170: 9311         	str	r3, [sp, #0x44]
  31f172: 9b10         	ldr	r3, [sp, #0x40]
  31f174: 2b00         	cmp	r3, #0x0
  31f176: f47f af01    	bne.w	0x31ef7c <FLAME::checkCollision(float)+0x2a4> @ imm = #-0x1fe
  31f17a: e016         	b	0x31f1aa <FLAME::checkCollision(float)+0x4d2> @ imm = #0x2c
  31f17c: ab28         	add	r3, sp, #0xa0
  31f17e: 4618         	mov	r0, r3
  31f180: f096 f3c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496790
  31f184: f068 f792    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x468f24
  31f188: ab20         	add	r3, sp, #0x80
  31f18a: 4618         	mov	r0, r3
  31f18c: f096 f3c2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496784
  31f190: f068 f78c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x468f18
  31f194: ab0f         	add	r3, sp, #0x3c
  31f196: 4618         	mov	r0, r3
  31f198: f096 f3bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x496778
  31f19c: e7ff         	b	0x31f19e <FLAME::checkCollision(float)+0x4c6> @ imm = #-0x2
  31f19e: ab0e         	add	r3, sp, #0x38
  31f1a0: 4618         	mov	r0, r3
  31f1a2: f096 f3b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49676e
  31f1a6: f068 f781    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x468f02
  31f1aa: b02d         	add	sp, #0xb4
  31f1ac: ecbd 8b02    	vpop	{d8}
  31f1b0: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x31f1b3); words below are literal-pool data ---
  31f1b4: d784         	bvc	0x31f0c0 <FLAME::checkCollision(float)+0x3e8> @ imm = #-0xf8
  31f1b6: ffff 83e2    	<unknown>
  31f1ba: 004a         	lsls	r2, r1, #0x1

// ==== FLAME::updateStep
//      file offset 0x31f1c0 (= ELF address; Ghidra 0x32f1c0), 688 bytes, Thumb-2
  31f1c0: b570         	push	{r4, r5, r6, lr}
  31f1c2: ed2d 8b02    	vpush	{d8}
  31f1c6: b096         	sub	sp, #0x58
  31f1c8: 9005         	str	r0, [sp, #0x14]
  31f1ca: 9104         	str	r1, [sp, #0x10]
  31f1cc: 9b05         	ldr	r3, [sp, #0x14]
  31f1ce: 681b         	ldr	r3, [r3]
  31f1d0: 3390         	adds	r3, #0x90
  31f1d2: 681b         	ldr	r3, [r3]
  31f1d4: 9905         	ldr	r1, [sp, #0x14]
  31f1d6: 9a05         	ldr	r2, [sp, #0x14]
  31f1d8: f892 20e8    	ldrb.w	r2, [r2, #0xe8]
  31f1dc: 4608         	mov	r0, r1
  31f1de: 4611         	mov	r1, r2
  31f1e0: 4798         	blx	r3
  31f1e2: 9b05         	ldr	r3, [sp, #0x14]
  31f1e4: f893 30e8    	ldrb.w	r3, [r3, #0xe8]
  31f1e8: 2b00         	cmp	r3, #0x0
  31f1ea: f000 8131    	beq.w	0x31f450 <FLAME::updateStep(float)+0x290> @ imm = #0x262
  31f1ee: 9b05         	ldr	r3, [sp, #0x14]
  31f1f0: 681b         	ldr	r3, [r3]
  31f1f2: 3350         	adds	r3, #0x50
  31f1f4: 681b         	ldr	r3, [r3]
  31f1f6: 9a05         	ldr	r2, [sp, #0x14]
  31f1f8: 4610         	mov	r0, r2
  31f1fa: 4798         	blx	r3
  31f1fc: 4603         	mov	r3, r0
  31f1fe: edd3 7a00    	vldr	s15, [r3]
  31f202: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31f206: 9b05         	ldr	r3, [sp, #0x14]
  31f208: 681b         	ldr	r3, [r3]
  31f20a: 3350         	adds	r3, #0x50
  31f20c: 681b         	ldr	r3, [r3]
  31f20e: 9a05         	ldr	r2, [sp, #0x14]
  31f210: 4610         	mov	r0, r2
  31f212: 4798         	blx	r3
  31f214: 4603         	mov	r3, r0
  31f216: edd3 7a01    	vldr	s15, [r3, #4]
  31f21a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31f21e: ab0e         	add	r3, sp, #0x38
  31f220: 4618         	mov	r0, r3
  31f222: eeb0 0b48    	vmov.f64	d0, d8
  31f226: eeb0 1b47    	vmov.f64	d1, d7
  31f22a: f7fe fced    	bl	0x31dc08 <Explosion::updateStep(float)+0x410> @ imm = #-0x1626
  31f22e: 9b05         	ldr	r3, [sp, #0x14]
  31f230: 681b         	ldr	r3, [r3]
  31f232: 3390         	adds	r3, #0x90
  31f234: 681d         	ldr	r5, [r3]
  31f236: 9e05         	ldr	r6, [sp, #0x14]
  31f238: ab12         	add	r3, sp, #0x48
  31f23a: 4618         	mov	r0, r3
  31f23c: ed9f 0b86    	vldr	d0, [pc, #536]          @ 0x31f458 <FLAME::updateStep(float)+0x298>
  31f240: ed9f 1b85    	vldr	d1, [pc, #532]          @ 0x31f458 <FLAME::updateStep(float)+0x298>
  31f244: f7fe fce0    	bl	0x31dc08 <Explosion::updateStep(float)+0x410> @ imm = #-0x1640
  31f248: 466c         	mov	r4, sp
  31f24a: ab12         	add	r3, sp, #0x48
  31f24c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f24e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31f252: ab0e         	add	r3, sp, #0x38
  31f254: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f256: f7fe fee3    	bl	0x31e020 <Explosion::updateStep(float)+0x828> @ imm = #-0x123a
  31f25a: 4603         	mov	r3, r0
  31f25c: 4630         	mov	r0, r6
  31f25e: 4619         	mov	r1, r3
  31f260: 47a8         	blx	r5
  31f262: 9b05         	ldr	r3, [sp, #0x14]
  31f264: ed93 7a56    	vldr	s14, [r3, #344]
  31f268: eddd 7a04    	vldr	s15, [sp, #16]
  31f26c: ee77 7a27    	vadd.f32	s15, s14, s15
  31f270: 9b05         	ldr	r3, [sp, #0x14]
  31f272: edc3 7a56    	vstr	s15, [r3, #344]
  31f276: 9b05         	ldr	r3, [sp, #0x14]
  31f278: ed93 7a59    	vldr	s14, [r3, #356]
  31f27c: eddd 7a04    	vldr	s15, [sp, #16]
  31f280: ee77 7a27    	vadd.f32	s15, s14, s15
  31f284: 9b05         	ldr	r3, [sp, #0x14]
  31f286: edc3 7a59    	vstr	s15, [r3, #356]
  31f28a: 9b05         	ldr	r3, [sp, #0x14]
  31f28c: f503 7490    	add.w	r4, r3, #0x120
  31f290: ab0e         	add	r3, sp, #0x38
  31f292: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f294: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31f298: 9b05         	ldr	r3, [sp, #0x14]
  31f29a: edd3 7a59    	vldr	s15, [r3, #356]
  31f29e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31f2a2: ed9f 7b6f    	vldr	d7, [pc, #444]          @ 0x31f460 <FLAME::updateStep(float)+0x2a0>
  31f2a6: eeb4 6bc7    	vcmpe.f64	d6, d7
  31f2aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31f2ae: dd0b         	ble	0x31f2c8 <FLAME::updateStep(float)+0x108> @ imm = #0x16
  31f2b0: 9b05         	ldr	r3, [sp, #0x14]
  31f2b2: f04f 0200    	mov.w	r2, #0x0
  31f2b6: f8c3 2164    	str.w	r2, [r3, #0x164]
  31f2ba: 9b05         	ldr	r3, [sp, #0x14]
  31f2bc: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  31f2c0: 425a         	rsbs	r2, r3, #0
  31f2c2: 9b05         	ldr	r3, [sp, #0x14]
  31f2c4: f8c3 215c    	str.w	r2, [r3, #0x15c]
  31f2c8: 9b05         	ldr	r3, [sp, #0x14]
  31f2ca: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f2ce: 681b         	ldr	r3, [r3]
  31f2d0: 3340         	adds	r3, #0x40
  31f2d2: 681b         	ldr	r3, [r3]
  31f2d4: 9a05         	ldr	r2, [sp, #0x14]
  31f2d6: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31f2da: 9905         	ldr	r1, [sp, #0x14]
  31f2dc: ed91 7a56    	vldr	s14, [r1, #344]
  31f2e0: 9905         	ldr	r1, [sp, #0x14]
  31f2e2: edd1 7a58    	vldr	s15, [r1, #352]
  31f2e6: eec7 7a27    	vdiv.f32	s15, s14, s15
  31f2ea: 4610         	mov	r0, r2
  31f2ec: ee17 1a90    	vmov	r1, s15
  31f2f0: 4798         	blx	r3
  31f2f2: 9b05         	ldr	r3, [sp, #0x14]
  31f2f4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f2f8: 681b         	ldr	r3, [r3]
  31f2fa: 3338         	adds	r3, #0x38
  31f2fc: 681c         	ldr	r4, [r3]
  31f2fe: 9b05         	ldr	r3, [sp, #0x14]
  31f300: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  31f304: 9b05         	ldr	r3, [sp, #0x14]
  31f306: f8d3 315c    	ldr.w	r3, [r3, #0x15c]
  31f30a: ee06 3a90    	vmov	s13, r3
  31f30e: eeb8 8ae6    	vcvt.f32.s32	s16, s13
  31f312: 9b05         	ldr	r3, [sp, #0x14]
  31f314: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f318: 681b         	ldr	r3, [r3]
  31f31a: 333c         	adds	r3, #0x3c
  31f31c: 681b         	ldr	r3, [r3]
  31f31e: 9a05         	ldr	r2, [sp, #0x14]
  31f320: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31f324: 4610         	mov	r0, r2
  31f326: 4798         	blx	r3
  31f328: ee07 0a90    	vmov	s15, r0
  31f32c: ee68 7a27    	vmul.f32	s15, s16, s15
  31f330: 4628         	mov	r0, r5
  31f332: ee17 1a90    	vmov	r1, s15
  31f336: 47a0         	blx	r4
  31f338: 9b05         	ldr	r3, [sp, #0x14]
  31f33a: ed93 7a58    	vldr	s14, [r3, #352]
  31f33e: 9b05         	ldr	r3, [sp, #0x14]
  31f340: edd3 7a56    	vldr	s15, [r3, #344]
  31f344: ee77 7a67    	vsub.f32	s15, s14, s15
  31f348: edcd 7a07    	vstr	s15, [sp, #28]
  31f34c: 9b05         	ldr	r3, [sp, #0x14]
  31f34e: ed93 7a56    	vldr	s14, [r3, #344]
  31f352: 9b05         	ldr	r3, [sp, #0x14]
  31f354: edd3 7a58    	vldr	s15, [r3, #352]
  31f358: eeb4 7ae7    	vcmpe.f32	s14, s15
  31f35c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31f360: dd04         	ble	0x31f36c <FLAME::updateStep(float)+0x1ac> @ imm = #0x8
  31f362: 9805         	ldr	r0, [sp, #0x14]
  31f364: 2100         	movs	r1, #0x0
  31f366: f000 f9b3    	bl	0x31f6d0 <FLAME::setActive(bool)> @ imm = #0x366
  31f36a: e03b         	b	0x31f3e4 <FLAME::updateStep(float)+0x224> @ imm = #0x76
  31f36c: eddd 7a07    	vldr	s15, [sp, #28]
  31f370: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31f374: ed9f 7b3a    	vldr	d7, [pc, #232]          @ 0x31f460 <FLAME::updateStep(float)+0x2a0>
  31f378: eeb4 6bc7    	vcmpe.f64	d6, d7
  31f37c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31f380: d530         	bpl	0x31f3e4 <FLAME::updateStep(float)+0x224> @ imm = #0x60
  31f382: 9b05         	ldr	r3, [sp, #0x14]
  31f384: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f388: 681b         	ldr	r3, [r3]
  31f38a: f503 73d2    	add.w	r3, r3, #0x1a4
  31f38e: 681a         	ldr	r2, [r3]
  31f390: 9b05         	ldr	r3, [sp, #0x14]
  31f392: f8d3 10e4    	ldr.w	r1, [r3, #0xe4]
  31f396: eddd 7a07    	vldr	s15, [sp, #28]
  31f39a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31f39e: ed9f 7b30    	vldr	d7, [pc, #192]          @ 0x31f460 <FLAME::updateStep(float)+0x2a0>
  31f3a2: ee86 6b07    	vdiv.f64	d6, d6, d7
  31f3a6: ed9f 7b30    	vldr	d7, [pc, #192]          @ 0x31f468 <FLAME::updateStep(float)+0x2a8>
  31f3aa: ee26 7b07    	vmul.f64	d7, d6, d7
  31f3ae: eeb5 7bc0    	vcmpe.f64	d7, #0
  31f3b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31f3b6: dd11         	ble	0x31f3dc <FLAME::updateStep(float)+0x21c> @ imm = #0x22
  31f3b8: eddd 7a07    	vldr	s15, [sp, #28]
  31f3bc: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31f3c0: ed9f 7b27    	vldr	d7, [pc, #156]          @ 0x31f460 <FLAME::updateStep(float)+0x2a0>
  31f3c4: ee86 6b07    	vdiv.f64	d6, d6, d7
  31f3c8: ed9f 7b27    	vldr	d7, [pc, #156]          @ 0x31f468 <FLAME::updateStep(float)+0x2a8>
  31f3cc: ee26 7b07    	vmul.f64	d7, d6, d7
  31f3d0: eefc 6bc7    	vcvt.u32.f64	s13, d7
  31f3d4: ee16 3a90    	vmov	r3, s13
  31f3d8: b2db         	uxtb	r3, r3
  31f3da: e000         	b	0x31f3de <FLAME::updateStep(float)+0x21e> @ imm = #0x0
  31f3dc: 2300         	movs	r3, #0x0
  31f3de: 4608         	mov	r0, r1
  31f3e0: 4619         	mov	r1, r3
  31f3e2: 4790         	blx	r2
  31f3e4: 9b05         	ldr	r3, [sp, #0x14]
  31f3e6: 681b         	ldr	r3, [r3]
  31f3e8: 334c         	adds	r3, #0x4c
  31f3ea: 681c         	ldr	r4, [r3]
  31f3ec: 9d05         	ldr	r5, [sp, #0x14]
  31f3ee: 9b05         	ldr	r3, [sp, #0x14]
  31f3f0: 681b         	ldr	r3, [r3]
  31f3f2: 3350         	adds	r3, #0x50
  31f3f4: 681b         	ldr	r3, [r3]
  31f3f6: 9a05         	ldr	r2, [sp, #0x14]
  31f3f8: 4610         	mov	r0, r2
  31f3fa: 4798         	blx	r3
  31f3fc: 4606         	mov	r6, r0
  31f3fe: 9b05         	ldr	r3, [sp, #0x14]
  31f400: ed93 7b52    	vldr	d7, [r3, #328]
  31f404: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31f408: 9b05         	ldr	r3, [sp, #0x14]
  31f40a: ed93 7b54    	vldr	d7, [r3, #336]
  31f40e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f412: ab08         	add	r3, sp, #0x20
  31f414: 4618         	mov	r0, r3
  31f416: ee16 1a90    	vmov	r1, s13
  31f41a: ee17 2a90    	vmov	r2, s15
  31f41e: f273 fc67    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2738ce
  31f422: aa0a         	add	r2, sp, #0x28
  31f424: ab08         	add	r3, sp, #0x20
  31f426: 4610         	mov	r0, r2
  31f428: 4619         	mov	r1, r3
  31f42a: ed9d 0a04    	vldr	s0, [sp, #16]
  31f42e: f7fe fbdb    	bl	0x31dbe8 <Explosion::updateStep(float)+0x3f0> @ imm = #-0x184a
  31f432: aa0c         	add	r2, sp, #0x30
  31f434: ab0a         	add	r3, sp, #0x28
  31f436: 4610         	mov	r0, r2
  31f438: 4631         	mov	r1, r6
  31f43a: 461a         	mov	r2, r3
  31f43c: f7fe fbc4    	bl	0x31dbc8 <Explosion::updateStep(float)+0x3d0> @ imm = #-0x1878
  31f440: ab0c         	add	r3, sp, #0x30
  31f442: 4628         	mov	r0, r5
  31f444: 4619         	mov	r1, r3
  31f446: 47a0         	blx	r4
  31f448: 9805         	ldr	r0, [sp, #0x14]
  31f44a: 9904         	ldr	r1, [sp, #0x10]
  31f44c: f7ff fc44    	bl	0x31ecd8 <FLAME::checkCollision(float)> @ imm = #-0x778
  31f450: b016         	add	sp, #0x58
  31f452: ecbd 8b02    	vpop	{d8}
  31f456: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x31f457); words below are literal-pool data ---
  31f458: 0000         	movs	r0, r0
  31f45a: 0000         	movs	r0, r0
  31f45c: c000         	<unknown>
  31f45e: 4062         	eors	r2, r4
  31f460: 999a         	ldr	r1, [sp, #0x268]
  31f462: 9999         	ldr	r1, [sp, #0x264]
  31f464: 9999         	ldr	r1, [sp, #0x264]
  31f466: 3fa9         	subs	r7, #0xa9
  31f468: 0000         	movs	r0, r0
  31f46a: 0000         	movs	r0, r0
  31f46c: e000         	b	0x31f470 <FLAME::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)> @ imm = #0x0
  31f46e: 406f         	eors	r7, r5

// ==== FLAME::reset
//      file offset 0x31f470 (= ELF address; Ghidra 0x32f470), 608 bytes, Thumb-2
  31f470: b530         	push	{r4, r5, lr}
  31f472: ed2d 8b02    	vpush	{d8}
  31f476: b097         	sub	sp, #0x5c
  31f478: 9007         	str	r0, [sp, #0x1c]
  31f47a: 9106         	str	r1, [sp, #0x18]
  31f47c: 9205         	str	r2, [sp, #0x14]
  31f47e: 9304         	str	r3, [sp, #0x10]
  31f480: 9b07         	ldr	r3, [sp, #0x1c]
  31f482: f04f 0200    	mov.w	r2, #0x0
  31f486: f8c3 2158    	str.w	r2, [r3, #0x158]
  31f48a: 9b07         	ldr	r3, [sp, #0x1c]
  31f48c: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f490: 681b         	ldr	r3, [r3]
  31f492: 3340         	adds	r3, #0x40
  31f494: 681b         	ldr	r3, [r3]
  31f496: 9a07         	ldr	r2, [sp, #0x1c]
  31f498: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31f49c: 4610         	mov	r0, r2
  31f49e: f04f 0100    	mov.w	r1, #0x0
  31f4a2: 4798         	blx	r3
  31f4a4: 9907         	ldr	r1, [sp, #0x1c]
  31f4a6: f04f 0200    	mov.w	r2, #0x0
  31f4aa: f04f 0300    	mov.w	r3, #0x0
  31f4ae: e9c1 2352    	strd	r2, r3, [r1, #328]
  31f4b2: 9907         	ldr	r1, [sp, #0x1c]
  31f4b4: f04f 0200    	mov.w	r2, #0x0
  31f4b8: f04f 0300    	mov.w	r3, #0x0
  31f4bc: e9c1 2354    	strd	r2, r3, [r1, #336]
  31f4c0: 9b07         	ldr	r3, [sp, #0x1c]
  31f4c2: 2200         	movs	r2, #0x0
  31f4c4: f883 2168    	strb.w	r2, [r3, #0x168]
  31f4c8: 9807         	ldr	r0, [sp, #0x1c]
  31f4ca: 2100         	movs	r1, #0x0
  31f4cc: f7ff fbc6    	bl	0x31ec5c <FLAME::setFrame(int)> @ imm = #-0x874
  31f4d0: 9b07         	ldr	r3, [sp, #0x1c]
  31f4d2: 2200         	movs	r2, #0x0
  31f4d4: f883 2170    	strb.w	r2, [r3, #0x170]
  31f4d8: 9b07         	ldr	r3, [sp, #0x1c]
  31f4da: f503 7490    	add.w	r4, r3, #0x120
  31f4de: ab26         	add	r3, sp, #0x98
  31f4e0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f4e2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31f4e6: 9b07         	ldr	r3, [sp, #0x1c]
  31f4e8: 681b         	ldr	r3, [r3]
  31f4ea: 334c         	adds	r3, #0x4c
  31f4ec: 681c         	ldr	r4, [r3]
  31f4ee: 9d07         	ldr	r5, [sp, #0x1c]
  31f4f0: ed9d 7b1c    	vldr	d7, [sp, #112]
  31f4f4: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31f4f8: ed9d 7b1e    	vldr	d7, [sp, #120]
  31f4fc: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31f500: ab12         	add	r3, sp, #0x48
  31f502: 4618         	mov	r0, r3
  31f504: ee16 1a90    	vmov	r1, s13
  31f508: ee17 2a90    	vmov	r2, s15
  31f50c: f273 fbf0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2737e0
  31f510: ab12         	add	r3, sp, #0x48
  31f512: 4628         	mov	r0, r5
  31f514: 4619         	mov	r1, r3
  31f516: 47a0         	blx	r4
  31f518: 9b07         	ldr	r3, [sp, #0x1c]
  31f51a: 681b         	ldr	r3, [r3]
  31f51c: 3350         	adds	r3, #0x50
  31f51e: 681b         	ldr	r3, [r3]
  31f520: 9a07         	ldr	r2, [sp, #0x1c]
  31f522: 4610         	mov	r0, r2
  31f524: 4798         	blx	r3
  31f526: 4603         	mov	r3, r0
  31f528: edd3 7a00    	vldr	s15, [r3]
  31f52c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31f530: 9b07         	ldr	r3, [sp, #0x1c]
  31f532: 681b         	ldr	r3, [r3]
  31f534: 3350         	adds	r3, #0x50
  31f536: 681b         	ldr	r3, [r3]
  31f538: 9a07         	ldr	r2, [sp, #0x1c]
  31f53a: 4610         	mov	r0, r2
  31f53c: 4798         	blx	r3
  31f53e: 4603         	mov	r3, r0
  31f540: edd3 7a01    	vldr	s15, [r3, #4]
  31f544: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31f548: 9c07         	ldr	r4, [sp, #0x1c]
  31f54a: 466b         	mov	r3, sp
  31f54c: 4618         	mov	r0, r3
  31f54e: eeb0 0b48    	vmov.f64	d0, d8
  31f552: eeb0 1b47    	vmov.f64	d1, d7
  31f556: f7fe fb57    	bl	0x31dc08 <Explosion::updateStep(float)+0x410> @ imm = #-0x1952
  31f55a: f504 7498    	add.w	r4, r4, #0x130
  31f55e: 466b         	mov	r3, sp
  31f560: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f562: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31f566: 9b07         	ldr	r3, [sp, #0x1c]
  31f568: f503 7380    	add.w	r3, r3, #0x100
  31f56c: 4618         	mov	r0, r3
  31f56e: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x31f6cc <FLAME::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x25c>
  31f570: 447b         	add	r3, pc
  31f572: 4619         	mov	r1, r3
  31f574: f096 f47c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4968f8
  31f578: 9b07         	ldr	r3, [sp, #0x1c]
  31f57a: f503 7382    	add.w	r3, r3, #0x104
  31f57e: 4618         	mov	r0, r3
  31f580: 992a         	ldr	r1, [sp, #0xa8]
  31f582: f097 f017    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x49702e
  31f586: 9b07         	ldr	r3, [sp, #0x1c]
  31f588: 9a06         	ldr	r2, [sp, #0x18]
  31f58a: f8c3 2178    	str.w	r2, [r3, #0x178]
  31f58e: 9b07         	ldr	r3, [sp, #0x1c]
  31f590: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f594: 681b         	ldr	r3, [r3]
  31f596: f503 73d2    	add.w	r3, r3, #0x1a4
  31f59a: 681b         	ldr	r3, [r3]
  31f59c: 9a07         	ldr	r2, [sp, #0x1c]
  31f59e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31f5a2: 4610         	mov	r0, r2
  31f5a4: 21ff         	movs	r1, #0xff
  31f5a6: 4798         	blx	r3
  31f5a8: 9b07         	ldr	r3, [sp, #0x1c]
  31f5aa: 2201         	movs	r2, #0x1
  31f5ac: f883 20e8    	strb.w	r2, [r3, #0xe8]
  31f5b0: 9b07         	ldr	r3, [sp, #0x1c]
  31f5b2: 681b         	ldr	r3, [r3]
  31f5b4: 3390         	adds	r3, #0x90
  31f5b6: 681b         	ldr	r3, [r3]
  31f5b8: 9a07         	ldr	r2, [sp, #0x1c]
  31f5ba: 4610         	mov	r0, r2
  31f5bc: 2101         	movs	r1, #0x1
  31f5be: 4798         	blx	r3
  31f5c0: 9b07         	ldr	r3, [sp, #0x1c]
  31f5c2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31f5c6: 681b         	ldr	r3, [r3]
  31f5c8: 3398         	adds	r3, #0x98
  31f5ca: 681b         	ldr	r3, [r3]
  31f5cc: 9a07         	ldr	r2, [sp, #0x1c]
  31f5ce: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31f5d2: 4610         	mov	r0, r2
  31f5d4: 9924         	ldr	r1, [sp, #0x90]
  31f5d6: 4798         	blx	r3
  31f5d8: 9b07         	ldr	r3, [sp, #0x1c]
  31f5da: 9a04         	ldr	r2, [sp, #0x10]
  31f5dc: f8c3 217c    	str.w	r2, [r3, #0x17c]
  31f5e0: 9b07         	ldr	r3, [sp, #0x1c]
  31f5e2: 9a05         	ldr	r2, [sp, #0x14]
  31f5e4: f8c3 2140    	str.w	r2, [r3, #0x140]
  31f5e8: 9b07         	ldr	r3, [sp, #0x1c]
  31f5ea: f04f 0200    	mov.w	r2, #0x0
  31f5ee: f8c3 2180    	str.w	r2, [r3, #0x180]
  31f5f2: eddd 7a24    	vldr	s15, [sp, #144]
  31f5f6: eeb1 7a67    	vneg.f32	s14, s15
  31f5fa: eddf 7a33    	vldr	s15, [pc, #204]         @ 0x31f6c8 <FLAME::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x258>
  31f5fe: ee67 7a27    	vmul.f32	s15, s14, s15
  31f602: edcd 7a09    	vstr	s15, [sp, #36]
  31f606: eddd 7a09    	vldr	s15, [sp, #36]
  31f60a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31f60e: ec51 0b17    	vmov	r0, r1, d7
  31f612: f7b6 ec7a    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x4970c
  31f616: 4604         	mov	r4, r0
  31f618: 460d         	mov	r5, r1
  31f61a: eddd 7a09    	vldr	s15, [sp, #36]
  31f61e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31f622: ec51 0b17    	vmov	r0, r1, d7
  31f626: f7b6 ec76    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x49714
  31f62a: 4602         	mov	r2, r0
  31f62c: 460b         	mov	r3, r1
  31f62e: a90a         	add	r1, sp, #0x28
  31f630: 4608         	mov	r0, r1
  31f632: ec45 4b10    	vmov	d0, r4, r5
  31f636: ec43 2b11    	vmov	d1, r2, r3
  31f63a: f7fe fae5    	bl	0x31dc08 <Explosion::updateStep(float)+0x410> @ imm = #-0x1a36
  31f63e: 9b25         	ldr	r3, [sp, #0x94]
  31f640: ee06 3a90    	vmov	s13, r3
  31f644: eeb8 7be6    	vcvt.f64.s32	d7, s13
  31f648: ab0e         	add	r3, sp, #0x38
  31f64a: ed9d 5b0a    	vldr	d5, [sp, #40]
  31f64e: ed9d 6b0c    	vldr	d6, [sp, #48]
  31f652: 4618         	mov	r0, r3
  31f654: eeb0 0b45    	vmov.f64	d0, d5
  31f658: eeb0 1b46    	vmov.f64	d1, d6
  31f65c: eeb0 2b47    	vmov.f64	d2, d7
  31f660: f7fe fb3e    	bl	0x31dce0 <Explosion::updateStep(float)+0x4e8> @ imm = #-0x1984
  31f664: ab12         	add	r3, sp, #0x48
  31f666: ed9d 6b20    	vldr	d6, [sp, #128]
  31f66a: ed9d 7b22    	vldr	d7, [sp, #136]
  31f66e: 4618         	mov	r0, r3
  31f670: eeb0 0b46    	vmov.f64	d0, d6
  31f674: eeb0 1b47    	vmov.f64	d1, d7
  31f678: ed9f 2b11    	vldr	d2, [pc, #68]           @ 0x31f6c0 <FLAME::reset(ItemType, int, int, cpVect, cpVect, float, int, cpVect, std::string)+0x250>
  31f67c: f7fe fb30    	bl	0x31dce0 <Explosion::updateStep(float)+0x4e8> @ imm = #-0x19a0
  31f680: 9c07         	ldr	r4, [sp, #0x1c]
  31f682: 466b         	mov	r3, sp
  31f684: ed9d 4b0e    	vldr	d4, [sp, #56]
  31f688: ed9d 5b10    	vldr	d5, [sp, #64]
  31f68c: ed9d 6b12    	vldr	d6, [sp, #72]
  31f690: ed9d 7b14    	vldr	d7, [sp, #80]
  31f694: 4618         	mov	r0, r3
  31f696: eeb0 0b44    	vmov.f64	d0, d4
  31f69a: eeb0 1b45    	vmov.f64	d1, d5
  31f69e: eeb0 2b46    	vmov.f64	d2, d6
  31f6a2: eeb0 3b47    	vmov.f64	d3, d7
  31f6a6: f7fe fac3    	bl	0x31dc30 <Explosion::updateStep(float)+0x438> @ imm = #-0x1a7a
  31f6aa: f504 74a4    	add.w	r4, r4, #0x148
  31f6ae: 466b         	mov	r3, sp
  31f6b0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31f6b2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  31f6b6: b017         	add	sp, #0x5c
  31f6b8: ecbd 8b02    	vpop	{d8}
  31f6bc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31f6bd); words below are literal-pool data ---
  31f6be: bf00         	nop
  31f6c0: 999a         	ldr	r1, [sp, #0x268]
  31f6c2: 9999         	ldr	r1, [sp, #0x264]
  31f6c4: 9999         	ldr	r1, [sp, #0x264]
  31f6c6: 3fe9         	subs	r7, #0xe9
  31f6c8: fa35 3c8e    	<unknown>
  31f6cc: 7fa8         	ldrb	r0, [r5, #0x1e]
  31f6ce: 004a         	lsls	r2, r1, #0x1

// ==== FLAME::setActive
//      file offset 0x31f6d0 (= ELF address; Ghidra 0x32f6d0), 24 bytes, Thumb-2
  31f6d0: b082         	sub	sp, #0x8
  31f6d2: 9001         	str	r0, [sp, #0x4]
  31f6d4: 460b         	mov	r3, r1
  31f6d6: f88d 3003    	strb.w	r3, [sp, #0x3]
  31f6da: 9b01         	ldr	r3, [sp, #0x4]
  31f6dc: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  31f6e0: f883 20e8    	strb.w	r2, [r3, #0xe8]
  31f6e4: b002         	add	sp, #0x8
  31f6e6: 4770         	bx	lr
