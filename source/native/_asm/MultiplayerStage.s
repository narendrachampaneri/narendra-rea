// MultiplayerStage: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 12 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../MultiplayerStage.cpp

// ==== MultiplayerStage::MultiplayerStage
//      file offset 0x375a1c (= ELF address; Ghidra 0x385a1c), 88 bytes, Thumb-2
  375a1c: b510         	push	{r4, lr}
  375a1e: b082         	sub	sp, #0x8
  375a20: 9001         	str	r0, [sp, #0x4]
  375a22: 4c12         	ldr	r4, [pc, #0x48]         @ 0x375a6c <MultiplayerStage::MultiplayerStage()+0x50>
  375a24: 447c         	add	r4, pc
  375a26: 9b01         	ldr	r3, [sp, #0x4]
  375a28: 4618         	mov	r0, r3
  375a2a: f085 fa4f    	bl	0x3faecc <Stage::Stage()> @ imm = #0x8549e
  375a2e: 9b01         	ldr	r3, [sp, #0x4]
  375a30: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x375a70 <MultiplayerStage::MultiplayerStage()+0x54>
  375a32: 58a2         	ldr	r2, [r4, r2]
  375a34: 3208         	adds	r2, #0x8
  375a36: 601a         	str	r2, [r3]
  375a38: 9b01         	ldr	r3, [sp, #0x4]
  375a3a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x375a70 <MultiplayerStage::MultiplayerStage()+0x54>
  375a3c: 58a2         	ldr	r2, [r4, r2]
  375a3e: f502 721b    	add.w	r2, r2, #0x26c
  375a42: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  375a46: 9b01         	ldr	r3, [sp, #0x4]
  375a48: 4a09         	ldr	r2, [pc, #0x24]         @ 0x375a70 <MultiplayerStage::MultiplayerStage()+0x54>
  375a4a: 58a2         	ldr	r2, [r4, r2]
  375a4c: f502 7227    	add.w	r2, r2, #0x29c
  375a50: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  375a54: 9b01         	ldr	r3, [sp, #0x4]
  375a56: 4a06         	ldr	r2, [pc, #0x18]         @ 0x375a70 <MultiplayerStage::MultiplayerStage()+0x54>
  375a58: 58a2         	ldr	r2, [r4, r2]
  375a5a: f502 722a    	add.w	r2, r2, #0x2a8
  375a5e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  375a62: 9b01         	ldr	r3, [sp, #0x4]
  375a64: 4618         	mov	r0, r3
  375a66: b002         	add	sp, #0x8
  375a68: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x375a69); words below are literal-pool data ---
  375a6a: bf00         	nop
  375a6c: cfe4         	ldm	r7, {r2, r5, r6, r7}
  375a6e: 005b         	lsls	r3, r3, #0x1
  375a70: dc3c         	bgt	0x375aec <MultiplayerStage::init()+0x78> @ imm = #0x78
  375a72: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MultiplayerStage::init
//      file offset 0x375a74 (= ELF address; Ghidra 0x385a74), 152 bytes, Thumb-2
  375a74: b510         	push	{r4, lr}
  375a76: b08a         	sub	sp, #0x28
  375a78: 9003         	str	r0, [sp, #0xc]
  375a7a: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x375af8 <MultiplayerStage::init()+0x84>
  375a7c: 447c         	add	r4, pc
  375a7e: 9b03         	ldr	r3, [sp, #0xc]
  375a80: 4618         	mov	r0, r3
  375a82: f085 fa6d    	bl	0x3faf60 <Stage::init()> @ imm = #0x854da
  375a86: 4603         	mov	r3, r0
  375a88: f88d 3017    	strb.w	r3, [sp, #0x17]
  375a8c: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  375a90: f083 0301    	eor	r3, r3, #0x1
  375a94: b2db         	uxtb	r3, r3
  375a96: 2b00         	cmp	r3, #0x0
  375a98: d001         	beq	0x375a9e <MultiplayerStage::init()+0x2a> @ imm = #0x2
  375a9a: 2300         	movs	r3, #0x0
  375a9c: e028         	b	0x375af0 <MultiplayerStage::init()+0x7c> @ imm = #0x50
  375a9e: f26a fe07    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26ac0e
  375aa2: 4602         	mov	r2, r0
  375aa4: 9b03         	ldr	r3, [sp, #0xc]
  375aa6: 4915         	ldr	r1, [pc, #0x54]         @ 0x375afc <MultiplayerStage::init()+0x88>
  375aa8: 5861         	ldr	r1, [r4, r1]
  375aaa: 9106         	str	r1, [sp, #0x18]
  375aac: 2100         	movs	r1, #0x0
  375aae: 9107         	str	r1, [sp, #0x1c]
  375ab0: 4913         	ldr	r1, [pc, #0x4c]         @ 0x375b00 <MultiplayerStage::init()+0x8c>
  375ab2: 4479         	add	r1, pc
  375ab4: 9100         	str	r1, [sp]
  375ab6: 2100         	movs	r1, #0x0
  375ab8: 9101         	str	r1, [sp, #0x4]
  375aba: 4610         	mov	r0, r2
  375abc: 4619         	mov	r1, r3
  375abe: ab06         	add	r3, sp, #0x18
  375ac0: cb0c         	ldm	r3, {r2, r3}
  375ac2: f26a fe91    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26ad22
  375ac6: f26a fdf3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x26abe6
  375aca: 4602         	mov	r2, r0
  375acc: 9b03         	ldr	r3, [sp, #0xc]
  375ace: 490d         	ldr	r1, [pc, #0x34]         @ 0x375b04 <MultiplayerStage::init()+0x90>
  375ad0: 5861         	ldr	r1, [r4, r1]
  375ad2: 9108         	str	r1, [sp, #0x20]
  375ad4: 2100         	movs	r1, #0x0
  375ad6: 9109         	str	r1, [sp, #0x24]
  375ad8: 490b         	ldr	r1, [pc, #0x2c]         @ 0x375b08 <MultiplayerStage::init()+0x94>
  375ada: 4479         	add	r1, pc
  375adc: 9100         	str	r1, [sp]
  375ade: 2100         	movs	r1, #0x0
  375ae0: 9101         	str	r1, [sp, #0x4]
  375ae2: 4610         	mov	r0, r2
  375ae4: 4619         	mov	r1, r3
  375ae6: ab08         	add	r3, sp, #0x20
  375ae8: cb0c         	ldm	r3, {r2, r3}
  375aea: f26a fe7d    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x26acfa
  375aee: 2301         	movs	r3, #0x1
  375af0: 4618         	mov	r0, r3
  375af2: b00a         	add	sp, #0x28
  375af4: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x375af5); words below are literal-pool data ---
  375af6: bf00         	nop
  375af8: cf8c         	ldm	r7, {r2, r3, r7}
  375afa: 005b         	lsls	r3, r3, #0x1
  375afc: dc40         	bgt	0x375b80 <MultiplayerStage::~MultiplayerStage()+0x8> @ imm = #0x80
  375afe: ffff 8952    	vqrshrn.u64	d24, q1, #0x1
  375b02: 0045         	lsls	r5, r0, #0x1
  375b04: dc44         	bgt	0x375b90 <MultiplayerStage::~MultiplayerStage()+0x18> @ imm = #0x88
  375b06: ffff 893a    	vqshrn.u64	d24, q13, #0x1
  375b0a: 0045         	lsls	r5, r0, #0x1

// ==== MultiplayerStage::~MultiplayerStage
//      file offset 0x375b0c (= ELF address; Ghidra 0x385b0c), 100 bytes, Thumb-2
  375b0c: b500         	push	{lr}
  375b0e: b083         	sub	sp, #0xc
  375b10: 9001         	str	r0, [sp, #0x4]
  375b12: 4b15         	ldr	r3, [pc, #0x54]         @ 0x375b68 <MultiplayerStage::~MultiplayerStage()+0x5c>
  375b14: 447b         	add	r3, pc
  375b16: 9a01         	ldr	r2, [sp, #0x4]
  375b18: 4914         	ldr	r1, [pc, #0x50]         @ 0x375b6c <MultiplayerStage::~MultiplayerStage()+0x60>
  375b1a: 5859         	ldr	r1, [r3, r1]
  375b1c: 3108         	adds	r1, #0x8
  375b1e: 6011         	str	r1, [r2]
  375b20: 9a01         	ldr	r2, [sp, #0x4]
  375b22: 4912         	ldr	r1, [pc, #0x48]         @ 0x375b6c <MultiplayerStage::~MultiplayerStage()+0x60>
  375b24: 5859         	ldr	r1, [r3, r1]
  375b26: f501 711b    	add.w	r1, r1, #0x26c
  375b2a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  375b2e: 9a01         	ldr	r2, [sp, #0x4]
  375b30: 490e         	ldr	r1, [pc, #0x38]         @ 0x375b6c <MultiplayerStage::~MultiplayerStage()+0x60>
  375b32: 5859         	ldr	r1, [r3, r1]
  375b34: f501 7127    	add.w	r1, r1, #0x29c
  375b38: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  375b3c: 9a01         	ldr	r2, [sp, #0x4]
  375b3e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x375b6c <MultiplayerStage::~MultiplayerStage()+0x60>
  375b40: 585b         	ldr	r3, [r3, r1]
  375b42: f503 732a    	add.w	r3, r3, #0x2a8
  375b46: f8c2 30ec    	str.w	r3, [r2, #0xec]
  375b4a: 9b01         	ldr	r3, [sp, #0x4]
  375b4c: 4618         	mov	r0, r3
  375b4e: f085 fb03    	bl	0x3fb158 <Stage::~Stage()> @ imm = #0x85606
  375b52: 2300         	movs	r3, #0x0
  375b54: 2b00         	cmp	r3, #0x0
  375b56: d002         	beq	0x375b5e <MultiplayerStage::~MultiplayerStage()+0x52> @ imm = #0x4
  375b58: 9801         	ldr	r0, [sp, #0x4]
  375b5a: f012 f2a3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x412546
  375b5e: 9b01         	ldr	r3, [sp, #0x4]
  375b60: 4618         	mov	r0, r3
  375b62: b003         	add	sp, #0xc
  375b64: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x375b67); words below are literal-pool data ---
  375b68: cef4         	ldm	r6, {r2, r4, r5, r6, r7}
  375b6a: 005b         	lsls	r3, r3, #0x1
  375b6c: dc3c         	bgt	0x375be8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x18> @ imm = #0x78
  375b6e: ffff f1a0    	<unknown>

// ==== MultiplayerStage::~MultiplayerStage
//      file offset 0x375b70 (= ELF address; Ghidra 0x385b70), 8 bytes, Thumb-2
  375b70: f1a0 00e4    	sub.w	r0, r0, #0xe4
  375b74: f7ff bfca    	b.w	0x375b0c <MultiplayerStage::~MultiplayerStage()> @ imm = #-0x6c

// ==== MultiplayerStage::~MultiplayerStage
//      file offset 0x375b78 (= ELF address; Ghidra 0x385b78), 28 bytes, Thumb-2
  375b78: b500         	push	{lr}
  375b7a: b083         	sub	sp, #0xc
  375b7c: 9001         	str	r0, [sp, #0x4]
  375b7e: 9801         	ldr	r0, [sp, #0x4]
  375b80: f7ff ffc4    	bl	0x375b0c <MultiplayerStage::~MultiplayerStage()> @ imm = #-0x78
  375b84: 9801         	ldr	r0, [sp, #0x4]
  375b86: f012 f28d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x41251a
  375b8a: 9b01         	ldr	r3, [sp, #0x4]
  375b8c: 4618         	mov	r0, r3
  375b8e: b003         	add	sp, #0xc
  375b90: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerStage::~MultiplayerStage
//      file offset 0x375b94 (= ELF address; Ghidra 0x385b94), 8 bytes, Thumb-2
  375b94: f1a0 00e4    	sub.w	r0, r0, #0xe4
  375b98: f7ff bfee    	b.w	0x375b78 <MultiplayerStage::~MultiplayerStage()> @ imm = #-0x24

// ==== MultiplayerStage::setupStage
//      file offset 0x375b9c (= ELF address; Ghidra 0x385b9c), 52 bytes, Thumb-2
  375b9c: b500         	push	{lr}
  375b9e: b083         	sub	sp, #0xc
  375ba0: 9001         	str	r0, [sp, #0x4]
  375ba2: 9b01         	ldr	r3, [sp, #0x4]
  375ba4: 4618         	mov	r0, r3
  375ba6: f085 fbab    	bl	0x3fb300 <Stage::setupStage()> @ imm = #0x85756
  375baa: 9b01         	ldr	r3, [sp, #0x4]
  375bac: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  375bb0: 2201         	movs	r2, #0x1
  375bb2: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  375bb6: 9b01         	ldr	r3, [sp, #0x4]
  375bb8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  375bbc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  375bc0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  375bc4: 4618         	mov	r0, r3
  375bc6: f05e ff7b    	bl	0x3d4ac0 <ScoreList::updateScores()> @ imm = #0x5eef6
  375bca: b003         	add	sp, #0xc
  375bcc: f85d fb04    	ldr	pc, [sp], #4

// ==== MultiplayerStage::playerScored
//      file offset 0x375bd0 (= ELF address; Ghidra 0x385bd0), 1344 bytes, Thumb-2
  375bd0: b530         	push	{r4, r5, lr}
  375bd2: b091         	sub	sp, #0x44
  375bd4: 9001         	str	r0, [sp, #0x4]
  375bd6: 9100         	str	r1, [sp]
  375bd8: f8df 4510    	ldr.w	r4, [pc, #0x510]        @ 0x3760ec <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x51c>
  375bdc: 447c         	add	r4, pc
  375bde: 9b00         	ldr	r3, [sp]
  375be0: 930e         	str	r3, [sp, #0x38]
  375be2: 980e         	ldr	r0, [sp, #0x38]
  375be4: 2100         	movs	r1, #0x0
  375be6: f224 fa9b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x224536
  375bea: 4603         	mov	r3, r0
  375bec: 4618         	mov	r0, r3
  375bee: f223 fe9b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x223d36
  375bf2: 4605         	mov	r5, r0
  375bf4: ab0b         	add	r3, sp, #0x2c
  375bf6: 4618         	mov	r0, r3
  375bf8: f014 f3fc    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4147f8
  375bfc: aa03         	add	r2, sp, #0xc
  375bfe: ab0b         	add	r3, sp, #0x2c
  375c00: 4610         	mov	r0, r2
  375c02: 4629         	mov	r1, r5
  375c04: 461a         	mov	r2, r3
  375c06: f040 f72b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440e56
  375c0a: ab0b         	add	r3, sp, #0x2c
  375c0c: 4618         	mov	r0, r3
  375c0e: f014 f3f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4147ea
  375c12: 980e         	ldr	r0, [sp, #0x38]
  375c14: 2101         	movs	r1, #0x1
  375c16: f224 fa83    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x224506
  375c1a: 4603         	mov	r3, r0
  375c1c: 4618         	mov	r0, r3
  375c1e: f223 fe83    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x223d06
  375c22: 4605         	mov	r5, r0
  375c24: ab0b         	add	r3, sp, #0x2c
  375c26: 4618         	mov	r0, r3
  375c28: f014 f3e4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4147c8
  375c2c: aa04         	add	r2, sp, #0x10
  375c2e: ab0b         	add	r3, sp, #0x2c
  375c30: 4610         	mov	r0, r2
  375c32: 4629         	mov	r1, r5
  375c34: 461a         	mov	r2, r3
  375c36: f040 f713    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440e26
  375c3a: ab0b         	add	r3, sp, #0x2c
  375c3c: 4618         	mov	r0, r3
  375c3e: f014 f3dd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4147ba
  375c42: ab0b         	add	r3, sp, #0x2c
  375c44: 4618         	mov	r0, r3
  375c46: f014 f3d5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4147aa
  375c4a: aa05         	add	r2, sp, #0x14
  375c4c: ab0b         	add	r3, sp, #0x2c
  375c4e: 4610         	mov	r0, r2
  375c50: f8df 249c    	ldr.w	r2, [pc, #0x49c]        @ 0x3760f0 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x520>
  375c54: 447a         	add	r2, pc
  375c56: 4611         	mov	r1, r2
  375c58: 461a         	mov	r2, r3
  375c5a: f040 f701    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440e02
  375c5e: ab0b         	add	r3, sp, #0x2c
  375c60: 4618         	mov	r0, r3
  375c62: f014 f3cb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414796
  375c66: ab0b         	add	r3, sp, #0x2c
  375c68: 4618         	mov	r0, r3
  375c6a: f014 f3c3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x414786
  375c6e: aa06         	add	r2, sp, #0x18
  375c70: ab0b         	add	r3, sp, #0x2c
  375c72: 4610         	mov	r0, r2
  375c74: f8df 247c    	ldr.w	r2, [pc, #0x47c]        @ 0x3760f4 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x524>
  375c78: 447a         	add	r2, pc
  375c7a: 4611         	mov	r1, r2
  375c7c: 461a         	mov	r2, r3
  375c7e: f040 f6ef    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440dde
  375c82: ab0b         	add	r3, sp, #0x2c
  375c84: 4618         	mov	r0, r3
  375c86: f014 f3b9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414772
  375c8a: 2300         	movs	r3, #0x0
  375c8c: 930c         	str	r3, [sp, #0x30]
  375c8e: 2300         	movs	r3, #0x0
  375c90: 930d         	str	r3, [sp, #0x34]
  375c92: 2300         	movs	r3, #0x0
  375c94: 930f         	str	r3, [sp, #0x3c]
  375c96: 20ff         	movs	r0, #0xff
  375c98: 2132         	movs	r1, #0x32
  375c9a: 2232         	movs	r2, #0x32
  375c9c: f7fe ffd2    	bl	0x374c44 <cocos2d::CCMenu** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<cocos2d::CCMenu*>(cocos2d::CCMenu* const*, cocos2d::CCMenu* const*, cocos2d::CCMenu**)+0x168> @ imm = #-0x105c
  375ca0: 4603         	mov	r3, r0
  375ca2: 461a         	mov	r2, r3
  375ca4: f88d 2008    	strb.w	r2, [sp, #0x8]
  375ca8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  375cac: f88d 2009    	strb.w	r2, [sp, #0x9]
  375cb0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  375cb4: f88d 300a    	strb.w	r3, [sp, #0xa]
  375cb8: f8df 343c    	ldr.w	r3, [pc, #0x43c]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375cbc: 58e3         	ldr	r3, [r4, r3]
  375cbe: 681b         	ldr	r3, [r3]
  375cc0: 681b         	ldr	r3, [r3]
  375cc2: f503 73e0    	add.w	r3, r3, #0x1c0
  375cc6: 681b         	ldr	r3, [r3]
  375cc8: f8df 242c    	ldr.w	r2, [pc, #0x42c]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375ccc: 58a2         	ldr	r2, [r4, r2]
  375cce: 6812         	ldr	r2, [r2]
  375cd0: a907         	add	r1, sp, #0x1c
  375cd2: 4608         	mov	r0, r1
  375cd4: 4611         	mov	r1, r2
  375cd6: 4798         	blx	r3
  375cd8: aa03         	add	r2, sp, #0xc
  375cda: ab07         	add	r3, sp, #0x1c
  375cdc: 4610         	mov	r0, r2
  375cde: 4619         	mov	r1, r3
  375ce0: f03f f4cc    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x43f998
  375ce4: 4603         	mov	r3, r0
  375ce6: 2b00         	cmp	r3, #0x0
  375ce8: bf14         	ite	ne
  375cea: 2300         	movne	r3, #0x0
  375cec: 2301         	moveq	r3, #0x1
  375cee: b2dd         	uxtb	r5, r3
  375cf0: ab07         	add	r3, sp, #0x1c
  375cf2: 4618         	mov	r0, r3
  375cf4: f03f f60e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43fc1c
  375cf8: 2d00         	cmp	r5, #0x0
  375cfa: d026         	beq	0x375d4a <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x17a> @ imm = #0x4c
  375cfc: ab05         	add	r3, sp, #0x14
  375cfe: 4618         	mov	r0, r3
  375d00: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x3760fc <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x52c>
  375d02: 447b         	add	r3, pc
  375d04: 4619         	mov	r1, r3
  375d06: f040 f0b3    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x440166
  375d0a: 2032         	movs	r0, #0x32
  375d0c: 21c8         	movs	r1, #0xc8
  375d0e: 2232         	movs	r2, #0x32
  375d10: f7fe ff98    	bl	0x374c44 <cocos2d::CCMenu** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<cocos2d::CCMenu*>(cocos2d::CCMenu* const*, cocos2d::CCMenu* const*, cocos2d::CCMenu**)+0x168> @ imm = #-0x10d0
  375d14: 4603         	mov	r3, r0
  375d16: 461a         	mov	r2, r3
  375d18: f88d 2008    	strb.w	r2, [sp, #0x8]
  375d1c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  375d20: f88d 2009    	strb.w	r2, [sp, #0x9]
  375d24: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  375d28: f88d 300a    	strb.w	r3, [sp, #0xa]
  375d2c: 4bf2         	ldr	r3, [pc, #0x3c8]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375d2e: 58e3         	ldr	r3, [r4, r3]
  375d30: 681b         	ldr	r3, [r3]
  375d32: 681b         	ldr	r3, [r3]
  375d34: f503 73e2    	add.w	r3, r3, #0x1c4
  375d38: 681b         	ldr	r3, [r3]
  375d3a: 4aef         	ldr	r2, [pc, #0x3bc]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375d3c: 58a2         	ldr	r2, [r4, r2]
  375d3e: 6812         	ldr	r2, [r2]
  375d40: 4610         	mov	r0, r2
  375d42: 4798         	blx	r3
  375d44: 4603         	mov	r3, r0
  375d46: 930c         	str	r3, [sp, #0x30]
  375d48: e02a         	b	0x375da0 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x1d0> @ imm = #0x54
  375d4a: f001 fef9    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x1df2
  375d4e: 4603         	mov	r3, r0
  375d50: 4618         	mov	r0, r3
  375d52: f002 fc91    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #0x2922
  375d56: 4602         	mov	r2, r0
  375d58: ab03         	add	r3, sp, #0xc
  375d5a: 4610         	mov	r0, r2
  375d5c: 4619         	mov	r1, r3
  375d5e: f21e f8c7    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x21e18e
  375d62: 4603         	mov	r3, r0
  375d64: 930f         	str	r3, [sp, #0x3c]
  375d66: 9b0f         	ldr	r3, [sp, #0x3c]
  375d68: 2b00         	cmp	r3, #0x0
  375d6a: d101         	bne	0x375d70 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x1a0> @ imm = #0x2
  375d6c: 2400         	movs	r4, #0x0
  375d6e: e145         	b	0x375ffc <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x42c> @ imm = #0x28a
  375d70: 980f         	ldr	r0, [sp, #0x3c]
  375d72: 2101         	movs	r1, #0x1
  375d74: f224 f9d4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2243a8
  375d78: 4603         	mov	r3, r0
  375d7a: 4618         	mov	r0, r3
  375d7c: f223 fdd4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x223ba8
  375d80: 4603         	mov	r3, r0
  375d82: aa05         	add	r2, sp, #0x14
  375d84: 4610         	mov	r0, r2
  375d86: 4619         	mov	r1, r3
  375d88: f040 f072    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4400e4
  375d8c: 980f         	ldr	r0, [sp, #0x3c]
  375d8e: 2104         	movs	r1, #0x4
  375d90: f224 f9c6    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x22438c
  375d94: 4603         	mov	r3, r0
  375d96: 4618         	mov	r0, r3
  375d98: f777 f85c    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x88f48
  375d9c: 4603         	mov	r3, r0
  375d9e: 930c         	str	r3, [sp, #0x30]
  375da0: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375da2: 58e3         	ldr	r3, [r4, r3]
  375da4: 681b         	ldr	r3, [r3]
  375da6: 681b         	ldr	r3, [r3]
  375da8: f503 73e0    	add.w	r3, r3, #0x1c0
  375dac: 681b         	ldr	r3, [r3]
  375dae: 4ad2         	ldr	r2, [pc, #0x348]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375db0: 58a2         	ldr	r2, [r4, r2]
  375db2: 6812         	ldr	r2, [r2]
  375db4: a908         	add	r1, sp, #0x20
  375db6: 4608         	mov	r0, r1
  375db8: 4611         	mov	r1, r2
  375dba: 4798         	blx	r3
  375dbc: aa04         	add	r2, sp, #0x10
  375dbe: ab08         	add	r3, sp, #0x20
  375dc0: 4610         	mov	r0, r2
  375dc2: 4619         	mov	r1, r3
  375dc4: f03f f45a    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x43f8b4
  375dc8: 4603         	mov	r3, r0
  375dca: 2b00         	cmp	r3, #0x0
  375dcc: bf14         	ite	ne
  375dce: 2300         	movne	r3, #0x0
  375dd0: 2301         	moveq	r3, #0x1
  375dd2: b2dd         	uxtb	r5, r3
  375dd4: ab08         	add	r3, sp, #0x20
  375dd6: 4618         	mov	r0, r3
  375dd8: f03f f59c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43fb38
  375ddc: 2d00         	cmp	r5, #0x0
  375dde: d026         	beq	0x375e2e <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x25e> @ imm = #0x4c
  375de0: ab06         	add	r3, sp, #0x18
  375de2: 4618         	mov	r0, r3
  375de4: 4bc6         	ldr	r3, [pc, #0x318]        @ 0x376100 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x530>
  375de6: 447b         	add	r3, pc
  375de8: 4619         	mov	r1, r3
  375dea: f040 f041    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x440082
  375dee: 20ff         	movs	r0, #0xff
  375df0: 2132         	movs	r1, #0x32
  375df2: 2232         	movs	r2, #0x32
  375df4: f7fe ff26    	bl	0x374c44 <cocos2d::CCMenu** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<cocos2d::CCMenu*>(cocos2d::CCMenu* const*, cocos2d::CCMenu* const*, cocos2d::CCMenu**)+0x168> @ imm = #-0x11b4
  375df8: 4603         	mov	r3, r0
  375dfa: 461a         	mov	r2, r3
  375dfc: f88d 2008    	strb.w	r2, [sp, #0x8]
  375e00: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  375e04: f88d 2009    	strb.w	r2, [sp, #0x9]
  375e08: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  375e0c: f88d 300a    	strb.w	r3, [sp, #0xa]
  375e10: 4bb9         	ldr	r3, [pc, #0x2e4]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375e12: 58e3         	ldr	r3, [r4, r3]
  375e14: 681b         	ldr	r3, [r3]
  375e16: 681b         	ldr	r3, [r3]
  375e18: f503 73e2    	add.w	r3, r3, #0x1c4
  375e1c: 681b         	ldr	r3, [r3]
  375e1e: 4ab6         	ldr	r2, [pc, #0x2d8]        @ 0x3760f8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x528>
  375e20: 58a2         	ldr	r2, [r4, r2]
  375e22: 6812         	ldr	r2, [r2]
  375e24: 4610         	mov	r0, r2
  375e26: 4798         	blx	r3
  375e28: 4603         	mov	r3, r0
  375e2a: 930d         	str	r3, [sp, #0x34]
  375e2c: e02a         	b	0x375e84 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x2b4> @ imm = #0x54
  375e2e: f001 fe87    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x1d0e
  375e32: 4603         	mov	r3, r0
  375e34: 4618         	mov	r0, r3
  375e36: f002 fc1f    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #0x283e
  375e3a: 4602         	mov	r2, r0
  375e3c: ab04         	add	r3, sp, #0x10
  375e3e: 4610         	mov	r0, r2
  375e40: 4619         	mov	r1, r3
  375e42: f21e f855    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x21e0aa
  375e46: 4603         	mov	r3, r0
  375e48: 930f         	str	r3, [sp, #0x3c]
  375e4a: 9b0f         	ldr	r3, [sp, #0x3c]
  375e4c: 2b00         	cmp	r3, #0x0
  375e4e: d101         	bne	0x375e54 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x284> @ imm = #0x2
  375e50: 2400         	movs	r4, #0x0
  375e52: e0d3         	b	0x375ffc <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x42c> @ imm = #0x1a6
  375e54: 980f         	ldr	r0, [sp, #0x3c]
  375e56: 2101         	movs	r1, #0x1
  375e58: f224 f962    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2242c4
  375e5c: 4603         	mov	r3, r0
  375e5e: 4618         	mov	r0, r3
  375e60: f223 fd62    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x223ac4
  375e64: 4603         	mov	r3, r0
  375e66: aa06         	add	r2, sp, #0x18
  375e68: 4610         	mov	r0, r2
  375e6a: 4619         	mov	r1, r3
  375e6c: f040 f000    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x440000
  375e70: 980f         	ldr	r0, [sp, #0x3c]
  375e72: 2104         	movs	r1, #0x4
  375e74: f224 f954    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x2242a8
  375e78: 4603         	mov	r3, r0
  375e7a: 4618         	mov	r0, r3
  375e7c: f776 ffea    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x8902c
  375e80: 4603         	mov	r3, r0
  375e82: 930d         	str	r3, [sp, #0x34]
  375e84: aa03         	add	r2, sp, #0xc
  375e86: ab04         	add	r3, sp, #0x10
  375e88: 4610         	mov	r0, r2
  375e8a: 4619         	mov	r1, r3
  375e8c: f03f f3f6    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x43f7ec
  375e90: 4603         	mov	r3, r0
  375e92: 2b00         	cmp	r3, #0x0
  375e94: bf14         	ite	ne
  375e96: 2300         	movne	r3, #0x0
  375e98: 2301         	moveq	r3, #0x1
  375e9a: b2db         	uxtb	r3, r3
  375e9c: 2b00         	cmp	r3, #0x0
  375e9e: d02d         	beq	0x375efc <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x32c> @ imm = #0x5a
  375ea0: 9b01         	ldr	r3, [sp, #0x4]
  375ea2: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  375ea6: ab05         	add	r3, sp, #0x14
  375ea8: 4618         	mov	r0, r3
  375eaa: f03f f229    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43f452
  375eae: 4603         	mov	r3, r0
  375eb0: 4a94         	ldr	r2, [pc, #0x250]        @ 0x376104 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x534>
  375eb2: 447a         	add	r2, pc
  375eb4: 4610         	mov	r0, r2
  375eb6: 4619         	mov	r1, r3
  375eb8: f223 fe2a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x223c54
  375ebc: 4603         	mov	r3, r0
  375ebe: 4618         	mov	r0, r3
  375ec0: f223 fd32    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x223a64
  375ec4: 4605         	mov	r5, r0
  375ec6: ab0b         	add	r3, sp, #0x2c
  375ec8: 4618         	mov	r0, r3
  375eca: f014 f293    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x414526
  375ece: aa09         	add	r2, sp, #0x24
  375ed0: ab0b         	add	r3, sp, #0x2c
  375ed2: 4610         	mov	r0, r2
  375ed4: 4629         	mov	r1, r5
  375ed6: 461a         	mov	r2, r3
  375ed8: f040 f5c2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440b84
  375edc: ab09         	add	r3, sp, #0x24
  375ede: 4620         	mov	r0, r4
  375ee0: 4619         	mov	r1, r3
  375ee2: 9a02         	ldr	r2, [sp, #0x8]
  375ee4: 2305         	movs	r3, #0x5
  375ee6: f7c7 f9eb    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0x38c2a
  375eea: ab09         	add	r3, sp, #0x24
  375eec: 4618         	mov	r0, r3
  375eee: f03f f511    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43fa22
  375ef2: ab0b         	add	r3, sp, #0x2c
  375ef4: 4618         	mov	r0, r3
  375ef6: f014 f281    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414502
  375efa: e07e         	b	0x375ffa <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x42a> @ imm = #0xfc
  375efc: 9b0c         	ldr	r3, [sp, #0x30]
  375efe: 2b00         	cmp	r3, #0x0
  375f00: d048         	beq	0x375f94 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x3c4> @ imm = #0x90
  375f02: 9a0c         	ldr	r2, [sp, #0x30]
  375f04: 9b0d         	ldr	r3, [sp, #0x34]
  375f06: 429a         	cmp	r2, r3
  375f08: d144         	bne	0x375f94 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x3c4> @ imm = #0x88
  375f0a: 20ff         	movs	r0, #0xff
  375f0c: 2132         	movs	r1, #0x32
  375f0e: 2232         	movs	r2, #0x32
  375f10: f7fe fe98    	bl	0x374c44 <cocos2d::CCMenu** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<cocos2d::CCMenu*>(cocos2d::CCMenu* const*, cocos2d::CCMenu* const*, cocos2d::CCMenu**)+0x168> @ imm = #-0x12d0
  375f14: 4603         	mov	r3, r0
  375f16: 461a         	mov	r2, r3
  375f18: f88d 2008    	strb.w	r2, [sp, #0x8]
  375f1c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  375f20: f88d 2009    	strb.w	r2, [sp, #0x9]
  375f24: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  375f28: f88d 300a    	strb.w	r3, [sp, #0xa]
  375f2c: 9b01         	ldr	r3, [sp, #0x4]
  375f2e: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  375f32: ab05         	add	r3, sp, #0x14
  375f34: 4618         	mov	r0, r3
  375f36: f03f f1e3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43f3c6
  375f3a: 4605         	mov	r5, r0
  375f3c: ab06         	add	r3, sp, #0x18
  375f3e: 4618         	mov	r0, r3
  375f40: f03f f1de    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43f3bc
  375f44: 4603         	mov	r3, r0
  375f46: 4a70         	ldr	r2, [pc, #0x1c0]        @ 0x376108 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x538>
  375f48: 447a         	add	r2, pc
  375f4a: 4610         	mov	r0, r2
  375f4c: 4629         	mov	r1, r5
  375f4e: 461a         	mov	r2, r3
  375f50: f223 fdde    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x223bbc
  375f54: 4603         	mov	r3, r0
  375f56: 4618         	mov	r0, r3
  375f58: f223 fce6    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x2239cc
  375f5c: 4605         	mov	r5, r0
  375f5e: ab0b         	add	r3, sp, #0x2c
  375f60: 4618         	mov	r0, r3
  375f62: f014 f247    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x41448e
  375f66: aa0a         	add	r2, sp, #0x28
  375f68: ab0b         	add	r3, sp, #0x2c
  375f6a: 4610         	mov	r0, r2
  375f6c: 4629         	mov	r1, r5
  375f6e: 461a         	mov	r2, r3
  375f70: f040 f576    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440aec
  375f74: ab0a         	add	r3, sp, #0x28
  375f76: 4620         	mov	r0, r4
  375f78: 4619         	mov	r1, r3
  375f7a: 9a02         	ldr	r2, [sp, #0x8]
  375f7c: 2305         	movs	r3, #0x5
  375f7e: f7c7 f99f    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0x38cc2
  375f82: ab0a         	add	r3, sp, #0x28
  375f84: 4618         	mov	r0, r3
  375f86: f03f f4c5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f98a
  375f8a: ab0b         	add	r3, sp, #0x2c
  375f8c: 4618         	mov	r0, r3
  375f8e: f014 f235    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41446a
  375f92: e032         	b	0x375ffa <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x42a> @ imm = #0x64
  375f94: 9b01         	ldr	r3, [sp, #0x4]
  375f96: f8d3 410c    	ldr.w	r4, [r3, #0x10c]
  375f9a: ab05         	add	r3, sp, #0x14
  375f9c: 4618         	mov	r0, r3
  375f9e: f03f f1af    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43f35e
  375fa2: 4605         	mov	r5, r0
  375fa4: ab06         	add	r3, sp, #0x18
  375fa6: 4618         	mov	r0, r3
  375fa8: f03f f1aa    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x43f354
  375fac: 4603         	mov	r3, r0
  375fae: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x37610c <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x53c>
  375fb0: 447a         	add	r2, pc
  375fb2: 4610         	mov	r0, r2
  375fb4: 4629         	mov	r1, r5
  375fb6: 461a         	mov	r2, r3
  375fb8: f223 fdaa    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x223b54
  375fbc: 4603         	mov	r3, r0
  375fbe: 4618         	mov	r0, r3
  375fc0: f223 fcb2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x223964
  375fc4: 4605         	mov	r5, r0
  375fc6: ab0a         	add	r3, sp, #0x28
  375fc8: 4618         	mov	r0, r3
  375fca: f014 f213    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x414426
  375fce: aa0b         	add	r2, sp, #0x2c
  375fd0: ab0a         	add	r3, sp, #0x28
  375fd2: 4610         	mov	r0, r2
  375fd4: 4629         	mov	r1, r5
  375fd6: 461a         	mov	r2, r3
  375fd8: f040 f542    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x440a84
  375fdc: ab0b         	add	r3, sp, #0x2c
  375fde: 4620         	mov	r0, r4
  375fe0: 4619         	mov	r1, r3
  375fe2: 9a02         	ldr	r2, [sp, #0x8]
  375fe4: 2305         	movs	r3, #0x5
  375fe6: f7c7 f96b    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0x38d2a
  375fea: ab0b         	add	r3, sp, #0x2c
  375fec: 4618         	mov	r0, r3
  375fee: f03f f491    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f922
  375ff2: ab0a         	add	r3, sp, #0x28
  375ff4: 4618         	mov	r0, r3
  375ff6: f014 f201    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414402
  375ffa: 2401         	movs	r4, #0x1
  375ffc: ab06         	add	r3, sp, #0x18
  375ffe: 4618         	mov	r0, r3
  376000: f03f f488    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f910
  376004: 2c01         	cmp	r4, #0x1
  376006: d001         	beq	0x37600c <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x43c> @ imm = #0x2
  376008: 2400         	movs	r4, #0x0
  37600a: e001         	b	0x376010 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x440> @ imm = #0x2
  37600c: bf00         	nop
  37600e: 2401         	movs	r4, #0x1
  376010: ab05         	add	r3, sp, #0x14
  376012: 4618         	mov	r0, r3
  376014: f03f f47e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f8fc
  376018: 2c01         	cmp	r4, #0x1
  37601a: d001         	beq	0x376020 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x450> @ imm = #0x2
  37601c: 2400         	movs	r4, #0x0
  37601e: e001         	b	0x376024 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x454> @ imm = #0x2
  376020: bf00         	nop
  376022: 2401         	movs	r4, #0x1
  376024: ab04         	add	r3, sp, #0x10
  376026: 4618         	mov	r0, r3
  376028: f03f f474    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f8e8
  37602c: 2c01         	cmp	r4, #0x1
  37602e: d001         	beq	0x376034 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x464> @ imm = #0x2
  376030: 2400         	movs	r4, #0x0
  376032: e001         	b	0x376038 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x468> @ imm = #0x2
  376034: bf00         	nop
  376036: 2401         	movs	r4, #0x1
  376038: ab03         	add	r3, sp, #0xc
  37603a: 4618         	mov	r0, r3
  37603c: f03f f46a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f8d4
  376040: 2c01         	cmp	r4, #0x1
  376042: d151         	bne	0x3760e8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x518> @ imm = #0xa2
  376044: bf00         	nop
  376046: e04f         	b	0x3760e8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x518> @ imm = #0x9e
  376048: ab0b         	add	r3, sp, #0x2c
  37604a: 4618         	mov	r0, r3
  37604c: f014 f1d6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4143ac
  376050: f012 f02c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x412058
  376054: ab0b         	add	r3, sp, #0x2c
  376056: 4618         	mov	r0, r3
  376058: f014 f1d0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4143a0
  37605c: e03e         	b	0x3760dc <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x50c> @ imm = #0x7c
  37605e: ab0b         	add	r3, sp, #0x2c
  376060: 4618         	mov	r0, r3
  376062: f014 f1cb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414396
  376066: e034         	b	0x3760d2 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x502> @ imm = #0x68
  376068: ab0b         	add	r3, sp, #0x2c
  37606a: 4618         	mov	r0, r3
  37606c: f014 f1c6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41438c
  376070: e02b         	b	0x3760ca <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4fa> @ imm = #0x56
  376072: ab07         	add	r3, sp, #0x1c
  376074: 4618         	mov	r0, r3
  376076: f03f f44d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f89a
  37607a: e022         	b	0x3760c2 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4f2> @ imm = #0x44
  37607c: ab08         	add	r3, sp, #0x20
  37607e: 4618         	mov	r0, r3
  376080: f03f f448    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f890
  376084: e01d         	b	0x3760c2 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4f2> @ imm = #0x3a
  376086: ab09         	add	r3, sp, #0x24
  376088: 4618         	mov	r0, r3
  37608a: f03f f443    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f886
  37608e: e7ff         	b	0x376090 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4c0> @ imm = #-0x2
  376090: ab0b         	add	r3, sp, #0x2c
  376092: 4618         	mov	r0, r3
  376094: f014 f1b2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414364
  376098: e013         	b	0x3760c2 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4f2> @ imm = #0x26
  37609a: ab0a         	add	r3, sp, #0x28
  37609c: 4618         	mov	r0, r3
  37609e: f03f f439    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f872
  3760a2: e7ff         	b	0x3760a4 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4d4> @ imm = #-0x2
  3760a4: ab0b         	add	r3, sp, #0x2c
  3760a6: 4618         	mov	r0, r3
  3760a8: f014 f1a8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x414350
  3760ac: e009         	b	0x3760c2 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4f2> @ imm = #0x12
  3760ae: ab0b         	add	r3, sp, #0x2c
  3760b0: 4618         	mov	r0, r3
  3760b2: f03f f42f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f85e
  3760b6: e7ff         	b	0x3760b8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4e8> @ imm = #-0x2
  3760b8: ab0a         	add	r3, sp, #0x28
  3760ba: 4618         	mov	r0, r3
  3760bc: f014 f19e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x41433c
  3760c0: e7ff         	b	0x3760c2 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4f2> @ imm = #-0x2
  3760c2: ab06         	add	r3, sp, #0x18
  3760c4: 4618         	mov	r0, r3
  3760c6: f03f f425    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f84a
  3760ca: ab05         	add	r3, sp, #0x14
  3760cc: 4618         	mov	r0, r3
  3760ce: f03f f421    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f842
  3760d2: ab04         	add	r3, sp, #0x10
  3760d4: 4618         	mov	r0, r3
  3760d6: f03f f41d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f83a
  3760da: e7ff         	b	0x3760dc <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x50c> @ imm = #-0x2
  3760dc: ab03         	add	r3, sp, #0xc
  3760de: 4618         	mov	r0, r3
  3760e0: f03f f418    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x43f830
  3760e4: f011 f7e2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x411fc4
  3760e8: b011         	add	sp, #0x44
  3760ea: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3760eb); words below are literal-pool data ---
  3760ec: ce2c         	ldm	r6!, {r2, r3, r5}
  3760ee: 005b         	lsls	r3, r3, #0x1
  3760f0: 87d8         	strh	r0, [r3, #0x3e]
  3760f2: 0045         	lsls	r5, r0, #0x1
  3760f4: 87b4         	strh	r4, [r6, #0x3c]
  3760f6: 0045         	lsls	r5, r0, #0x1
  3760f8: d784         	bvc	0x376004 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x434> @ imm = #-0xf8
  3760fa: ffff 872e    	<unknown>
  3760fe: 0045         	lsls	r5, r0, #0x1
  376100: 864a         	strh	r2, [r1, #0x32]
  376102: 0045         	lsls	r5, r0, #0x1
  376104: 8582         	strh	r2, [r0, #0x2c]
  376106: 0045         	lsls	r5, r0, #0x1
  376108: 8504         	strh	r4, [r0, #0x28]
  37610a: 0045         	lsls	r5, r0, #0x1
  37610c: 84ac         	strh	r4, [r5, #0x24]
  37610e: 0045         	lsls	r5, r0, #0x1

// ==== MultiplayerStage::updateStep
//      file offset 0x376110 (= ELF address; Ghidra 0x386110), 148 bytes, Thumb-2
  376110: b510         	push	{r4, lr}
  376112: b084         	sub	sp, #0x10
  376114: 9001         	str	r0, [sp, #0x4]
  376116: 9100         	str	r1, [sp]
  376118: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x376198 <MultiplayerStage::updateStep(float)+0x88>
  37611a: 447c         	add	r4, pc
  37611c: 9b01         	ldr	r3, [sp, #0x4]
  37611e: 4618         	mov	r0, r3
  376120: 9900         	ldr	r1, [sp]
  376122: f086 ff29    	bl	0x3fcf78 <Stage::updateStep(float)> @ imm = #0x86e52
  376126: 9b01         	ldr	r3, [sp, #0x4]
  376128: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37612c: f8d3 31c0    	ldr.w	r3, [r3, #0x1c0]
  376130: 2b00         	cmp	r3, #0x0
  376132: dc2f         	bgt	0x376194 <MultiplayerStage::updateStep(float)+0x84> @ imm = #0x5e
  376134: 9b01         	ldr	r3, [sp, #0x4]
  376136: f893 3150    	ldrb.w	r3, [r3, #0x150]
  37613a: f083 0301    	eor	r3, r3, #0x1
  37613e: b2db         	uxtb	r3, r3
  376140: 2b00         	cmp	r3, #0x0
  376142: d027         	beq	0x376194 <MultiplayerStage::updateStep(float)+0x84> @ imm = #0x4e
  376144: 9b01         	ldr	r3, [sp, #0x4]
  376146: 2201         	movs	r2, #0x1
  376148: f883 2150    	strb.w	r2, [r3, #0x150]
  37614c: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x37619c <MultiplayerStage::updateStep(float)+0x8c>
  37614e: 58e3         	ldr	r3, [r4, r3]
  376150: 681b         	ldr	r3, [r3]
  376152: 2201         	movs	r2, #0x1
  376154: f883 21f0    	strb.w	r2, [r3, #0x1f0]
  376158: 9b01         	ldr	r3, [sp, #0x4]
  37615a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37615e: 2201         	movs	r2, #0x1
  376160: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  376164: 9b01         	ldr	r3, [sp, #0x4]
  376166: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  37616a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  37616e: 4618         	mov	r0, r3
  376170: f060 ff84    	bl	0x3d707c <ScoreScreen::endGame()> @ imm = #0x60f08
  376174: 9b01         	ldr	r3, [sp, #0x4]
  376176: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3761a0 <MultiplayerStage::updateStep(float)+0x90>
  376178: 447a         	add	r2, pc
  37617a: 4611         	mov	r1, r2
  37617c: aa02         	add	r2, sp, #0x8
  37617e: c903         	ldm	r1, {r0, r1}
  376180: e882 0003    	stm.w	r2, {r0, r1}
  376184: 4618         	mov	r0, r3
  376186: ab02         	add	r3, sp, #0x8
  376188: e893 0006    	ldm.w	r3, {r1, r2}
  37618c: f04f 4382    	mov.w	r3, #0x41000000
  376190: f21b f880    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x21b100
  376194: b004         	add	sp, #0x10
  376196: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x376197); words below are literal-pool data ---
  376198: c8ee         	ldm	r0!, {r1, r2, r3, r5, r6, r7}
  37619a: 005b         	lsls	r3, r3, #0x1
  37619c: d784         	bvc	0x3760a8 <MultiplayerStage::playerScored(cocos2d::CCObject*)+0x4d8> @ imm = #-0xf8
  37619e: ffff 82f4    	vrshr.u64	q12, q10, #0x1
  3761a2: 0045         	lsls	r5, r0, #0x1

// ==== MultiplayerStage::opponentExists
//      file offset 0x3761a4 (= ELF address; Ghidra 0x3861a4), 208 bytes, Thumb-2
  3761a4: b510         	push	{r4, lr}
  3761a6: b088         	sub	sp, #0x20
  3761a8: 9001         	str	r0, [sp, #0x4]
  3761aa: 4c30         	ldr	r4, [pc, #0xc0]         @ 0x37626c <MultiplayerStage::opponentExists()+0xc8>
  3761ac: 447c         	add	r4, pc
  3761ae: f001 fcc7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x198e
  3761b2: 4603         	mov	r3, r0
  3761b4: 4618         	mov	r0, r3
  3761b6: f002 fa5f    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #0x24be
  3761ba: 4603         	mov	r3, r0
  3761bc: 9305         	str	r3, [sp, #0x14]
  3761be: 2300         	movs	r3, #0x0
  3761c0: 9303         	str	r3, [sp, #0xc]
  3761c2: 2300         	movs	r3, #0x0
  3761c4: 9304         	str	r3, [sp, #0x10]
  3761c6: 9b05         	ldr	r3, [sp, #0x14]
  3761c8: 2b00         	cmp	r3, #0x0
  3761ca: d007         	beq	0x3761dc <MultiplayerStage::opponentExists()+0x38> @ imm = #0xe
  3761cc: 9805         	ldr	r0, [sp, #0x14]
  3761ce: f21d fd4d    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x21da9a
  3761d2: 4603         	mov	r3, r0
  3761d4: 2b00         	cmp	r3, #0x0
  3761d6: d001         	beq	0x3761dc <MultiplayerStage::opponentExists()+0x38> @ imm = #0x2
  3761d8: 2301         	movs	r3, #0x1
  3761da: e000         	b	0x3761de <MultiplayerStage::opponentExists()+0x3a> @ imm = #0x0
  3761dc: 2300         	movs	r3, #0x0
  3761de: 2b00         	cmp	r3, #0x0
  3761e0: d040         	beq	0x376264 <MultiplayerStage::opponentExists()+0xc0> @ imm = #0x80
  3761e2: 9b05         	ldr	r3, [sp, #0x14]
  3761e4: 695b         	ldr	r3, [r3, #0x14]
  3761e6: 9303         	str	r3, [sp, #0xc]
  3761e8: 9b05         	ldr	r3, [sp, #0x14]
  3761ea: 695b         	ldr	r3, [r3, #0x14]
  3761ec: 2b00         	cmp	r3, #0x0
  3761ee: d004         	beq	0x3761fa <MultiplayerStage::opponentExists()+0x56> @ imm = #0x8
  3761f0: 9b05         	ldr	r3, [sp, #0x14]
  3761f2: 695b         	ldr	r3, [r3, #0x14]
  3761f4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3761f8: e000         	b	0x3761fc <MultiplayerStage::opponentExists()+0x58> @ imm = #0x0
  3761fa: 2300         	movs	r3, #0x0
  3761fc: 9304         	str	r3, [sp, #0x10]
  3761fe: e02e         	b	0x37625e <MultiplayerStage::opponentExists()+0xba> @ imm = #0x5c
  376200: 9803         	ldr	r0, [sp, #0xc]
  376202: f788 fa17    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x77bd2
  376206: 4603         	mov	r3, r0
  376208: 9306         	str	r3, [sp, #0x18]
  37620a: 9806         	ldr	r0, [sp, #0x18]
  37620c: 2104         	movs	r1, #0x4
  37620e: f223 ff87    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x223f0e
  376212: 4603         	mov	r3, r0
  376214: 4618         	mov	r0, r3
  376216: f776 fe1d    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x893c6
  37621a: 4603         	mov	r3, r0
  37621c: 9307         	str	r3, [sp, #0x1c]
  37621e: 4b14         	ldr	r3, [pc, #0x50]         @ 0x376270 <MultiplayerStage::opponentExists()+0xcc>
  376220: 58e3         	ldr	r3, [r4, r3]
  376222: 681b         	ldr	r3, [r3]
  376224: 681b         	ldr	r3, [r3]
  376226: f503 7340    	add.w	r3, r3, #0x300
  37622a: 681b         	ldr	r3, [r3]
  37622c: 4a10         	ldr	r2, [pc, #0x40]         @ 0x376270 <MultiplayerStage::opponentExists()+0xcc>
  37622e: 58a2         	ldr	r2, [r4, r2]
  376230: 6812         	ldr	r2, [r2]
  376232: 4610         	mov	r0, r2
  376234: 9907         	ldr	r1, [sp, #0x1c]
  376236: 4798         	blx	r3
  376238: 4603         	mov	r3, r0
  37623a: f083 0301    	eor	r3, r3, #0x1
  37623e: b2db         	uxtb	r3, r3
  376240: 2b00         	cmp	r3, #0x0
  376242: d001         	beq	0x376248 <MultiplayerStage::opponentExists()+0xa4> @ imm = #0x2
  376244: 2301         	movs	r3, #0x1
  376246: e00e         	b	0x376266 <MultiplayerStage::opponentExists()+0xc2> @ imm = #0x1c
  376248: 9b04         	ldr	r3, [sp, #0x10]
  37624a: 9303         	str	r3, [sp, #0xc]
  37624c: 9b04         	ldr	r3, [sp, #0x10]
  37624e: 2b00         	cmp	r3, #0x0
  376250: d003         	beq	0x37625a <MultiplayerStage::opponentExists()+0xb6> @ imm = #0x6
  376252: 9b04         	ldr	r3, [sp, #0x10]
  376254: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  376258: e000         	b	0x37625c <MultiplayerStage::opponentExists()+0xb8> @ imm = #0x0
  37625a: 2300         	movs	r3, #0x0
  37625c: 9304         	str	r3, [sp, #0x10]
  37625e: 9b03         	ldr	r3, [sp, #0xc]
  376260: 2b00         	cmp	r3, #0x0
  376262: d1cd         	bne	0x376200 <MultiplayerStage::opponentExists()+0x5c> @ imm = #-0x66
  376264: 2300         	movs	r3, #0x0
  376266: 4618         	mov	r0, r3
  376268: b008         	add	sp, #0x20
  37626a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x37626b); words below are literal-pool data ---
  37626c: c85c         	ldm	r0!, {r2, r3, r4, r6}
  37626e: 005b         	lsls	r3, r3, #0x1
  376270: d784         	bvc	0x37617c <MultiplayerStage::updateStep(float)+0x6c> @ imm = #-0xf8
  376272: ffff b500    	<unknown>

// ==== MultiplayerStage::onPlayerDisconnected
//      file offset 0x376274 (= ELF address; Ghidra 0x386274), 112 bytes, Thumb-2
  376274: b500         	push	{lr}
  376276: b083         	sub	sp, #0xc
  376278: 9001         	str	r0, [sp, #0x4]
  37627a: 9100         	str	r1, [sp]
  37627c: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3762dc <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x68>
  37627e: 447a         	add	r2, pc
  376280: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3762e0 <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x6c>
  376282: 58d3         	ldr	r3, [r2, r3]
  376284: 681b         	ldr	r3, [r3]
  376286: 2b04         	cmp	r3, #0x4
  376288: d124         	bne	0x3762d4 <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x60> @ imm = #0x48
  37628a: f001 fc59    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x18b2
  37628e: 4603         	mov	r3, r0
  376290: 4618         	mov	r0, r3
  376292: f002 f9f1    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #0x23e2
  376296: 4603         	mov	r3, r0
  376298: 4618         	mov	r0, r3
  37629a: f21d fce7    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x21d9ce
  37629e: 4603         	mov	r3, r0
  3762a0: 2b00         	cmp	r3, #0x0
  3762a2: d008         	beq	0x3762b6 <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x42> @ imm = #0x10
  3762a4: 9801         	ldr	r0, [sp, #0x4]
  3762a6: f7ff ff7d    	bl	0x3761a4 <MultiplayerStage::opponentExists()> @ imm = #-0x106
  3762aa: 4603         	mov	r3, r0
  3762ac: f083 0301    	eor	r3, r3, #0x1
  3762b0: b2db         	uxtb	r3, r3
  3762b2: 2b00         	cmp	r3, #0x0
  3762b4: d001         	beq	0x3762ba <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x46> @ imm = #0x2
  3762b6: 2301         	movs	r3, #0x1
  3762b8: e000         	b	0x3762bc <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x48> @ imm = #0x0
  3762ba: 2300         	movs	r3, #0x0
  3762bc: 2b00         	cmp	r3, #0x0
  3762be: d009         	beq	0x3762d4 <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0x60> @ imm = #0x12
  3762c0: 9b01         	ldr	r3, [sp, #0x4]
  3762c2: 2200         	movs	r2, #0x0
  3762c4: f883 2151    	strb.w	r2, [r3, #0x151]
  3762c8: 9b01         	ldr	r3, [sp, #0x4]
  3762ca: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3762ce: 4618         	mov	r0, r3
  3762d0: f7c6 ffee    	bl	0x33d2b0 <HUD::setGameClockToZero()> @ imm = #-0x39024
  3762d4: b003         	add	sp, #0xc
  3762d6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3762d9); words below are literal-pool data ---
  3762da: bf00         	nop
  3762dc: c78a         	stm	r7!, {r1, r3, r7}
  3762de: 005b         	lsls	r3, r3, #0x1
  3762e0: d838         	bhi	0x376354 <MultiplayerStage::onPlayerDisconnected(cocos2d::CCObject*)+0xe0> @ imm = #0x70
  3762e2: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== MultiplayerStage::create
//      file offset 0x3fe64c (= ELF address; Ghidra 0x40e64c), 112 bytes, Thumb-2
  3fe64c: b510         	push	{r4, lr}
  3fe64e: b082         	sub	sp, #0x8
  3fe650: f44f 70b6    	mov.w	r0, #0x16c
  3fe654: f389 f986    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38930c
  3fe658: 4603         	mov	r3, r0
  3fe65a: 461c         	mov	r4, r3
  3fe65c: 4620         	mov	r0, r4
  3fe65e: f777 f9dd    	bl	0x375a1c <MultiplayerStage::MultiplayerStage()> @ imm = #-0x88c46
  3fe662: 9401         	str	r4, [sp, #0x4]
  3fe664: 9b01         	ldr	r3, [sp, #0x4]
  3fe666: 2b00         	cmp	r3, #0x0
  3fe668: d00a         	beq	0x3fe680 <MultiplayerStage::create()+0x34> @ imm = #0x14
  3fe66a: 9b01         	ldr	r3, [sp, #0x4]
  3fe66c: 681b         	ldr	r3, [r3]
  3fe66e: 3318         	adds	r3, #0x18
  3fe670: 681b         	ldr	r3, [r3]
  3fe672: 9801         	ldr	r0, [sp, #0x4]
  3fe674: 4798         	blx	r3
  3fe676: 4603         	mov	r3, r0
  3fe678: 2b00         	cmp	r3, #0x0
  3fe67a: d001         	beq	0x3fe680 <MultiplayerStage::create()+0x34> @ imm = #0x2
  3fe67c: 2301         	movs	r3, #0x1
  3fe67e: e000         	b	0x3fe682 <MultiplayerStage::create()+0x36> @ imm = #0x0
  3fe680: 2300         	movs	r3, #0x0
  3fe682: 2b00         	cmp	r3, #0x0
  3fe684: d005         	beq	0x3fe692 <MultiplayerStage::create()+0x46> @ imm = #0xa
  3fe686: 9b01         	ldr	r3, [sp, #0x4]
  3fe688: 4618         	mov	r0, r3
  3fe68a: f199 fc37    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19986e
  3fe68e: 9b01         	ldr	r3, [sp, #0x4]
  3fe690: e011         	b	0x3fe6b6 <MultiplayerStage::create()+0x6a> @ imm = #0x22
  3fe692: 9b01         	ldr	r3, [sp, #0x4]
  3fe694: 2b00         	cmp	r3, #0x0
  3fe696: d005         	beq	0x3fe6a4 <MultiplayerStage::create()+0x58> @ imm = #0xa
  3fe698: 9b01         	ldr	r3, [sp, #0x4]
  3fe69a: 681b         	ldr	r3, [r3]
  3fe69c: 3308         	adds	r3, #0x8
  3fe69e: 681b         	ldr	r3, [r3]
  3fe6a0: 9801         	ldr	r0, [sp, #0x4]
  3fe6a2: 4798         	blx	r3
  3fe6a4: 2300         	movs	r3, #0x0
  3fe6a6: 9301         	str	r3, [sp, #0x4]
  3fe6a8: 2300         	movs	r3, #0x0
  3fe6aa: e004         	b	0x3fe6b6 <MultiplayerStage::create()+0x6a> @ imm = #0x8
  3fe6ac: 4620         	mov	r0, r4
  3fe6ae: f389 fcf9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3899f2
  3fe6b2: f389 fcfb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3899f6
  3fe6b6: 4618         	mov	r0, r3
  3fe6b8: b002         	add	sp, #0x8
  3fe6ba: bd10         	pop	{r4, pc}
