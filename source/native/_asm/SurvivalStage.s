// SurvivalStage: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SurvivalStage.cpp

// ==== SurvivalStage::create
//      file offset 0x3fe5dc (= ELF address; Ghidra 0x40e5dc), 112 bytes, Thumb-2
  3fe5dc: b510         	push	{r4, lr}
  3fe5de: b082         	sub	sp, #0x8
  3fe5e0: f44f 70ca    	mov.w	r0, #0x194
  3fe5e4: f389 f9be    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38937c
  3fe5e8: 4603         	mov	r3, r0
  3fe5ea: 461c         	mov	r4, r3
  3fe5ec: 4620         	mov	r0, r4
  3fe5ee: f004 fba5    	bl	0x402d3c <SurvivalStage::SurvivalStage()> @ imm = #0x474a
  3fe5f2: 9401         	str	r4, [sp, #0x4]
  3fe5f4: 9b01         	ldr	r3, [sp, #0x4]
  3fe5f6: 2b00         	cmp	r3, #0x0
  3fe5f8: d00a         	beq	0x3fe610 <SurvivalStage::create()+0x34> @ imm = #0x14
  3fe5fa: 9b01         	ldr	r3, [sp, #0x4]
  3fe5fc: 681b         	ldr	r3, [r3]
  3fe5fe: 3318         	adds	r3, #0x18
  3fe600: 681b         	ldr	r3, [r3]
  3fe602: 9801         	ldr	r0, [sp, #0x4]
  3fe604: 4798         	blx	r3
  3fe606: 4603         	mov	r3, r0
  3fe608: 2b00         	cmp	r3, #0x0
  3fe60a: d001         	beq	0x3fe610 <SurvivalStage::create()+0x34> @ imm = #0x2
  3fe60c: 2301         	movs	r3, #0x1
  3fe60e: e000         	b	0x3fe612 <SurvivalStage::create()+0x36> @ imm = #0x0
  3fe610: 2300         	movs	r3, #0x0
  3fe612: 2b00         	cmp	r3, #0x0
  3fe614: d005         	beq	0x3fe622 <SurvivalStage::create()+0x46> @ imm = #0xa
  3fe616: 9b01         	ldr	r3, [sp, #0x4]
  3fe618: 4618         	mov	r0, r3
  3fe61a: f199 fc6f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1998de
  3fe61e: 9b01         	ldr	r3, [sp, #0x4]
  3fe620: e011         	b	0x3fe646 <SurvivalStage::create()+0x6a> @ imm = #0x22
  3fe622: 9b01         	ldr	r3, [sp, #0x4]
  3fe624: 2b00         	cmp	r3, #0x0
  3fe626: d005         	beq	0x3fe634 <SurvivalStage::create()+0x58> @ imm = #0xa
  3fe628: 9b01         	ldr	r3, [sp, #0x4]
  3fe62a: 681b         	ldr	r3, [r3]
  3fe62c: 3308         	adds	r3, #0x8
  3fe62e: 681b         	ldr	r3, [r3]
  3fe630: 9801         	ldr	r0, [sp, #0x4]
  3fe632: 4798         	blx	r3
  3fe634: 2300         	movs	r3, #0x0
  3fe636: 9301         	str	r3, [sp, #0x4]
  3fe638: 2300         	movs	r3, #0x0
  3fe63a: e004         	b	0x3fe646 <SurvivalStage::create()+0x6a> @ imm = #0x8
  3fe63c: 4620         	mov	r0, r4
  3fe63e: f389 fd31    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x389a62
  3fe642: f389 fd33    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x389a66
  3fe646: 4618         	mov	r0, r3
  3fe648: b002         	add	sp, #0x8
  3fe64a: bd10         	pop	{r4, pc}

// ==== SurvivalStage::SurvivalStage
//      file offset 0x402d3c (= ELF address; Ghidra 0x412d3c), 88 bytes, Thumb-2
  402d3c: b510         	push	{r4, lr}
  402d3e: b082         	sub	sp, #0x8
  402d40: 9001         	str	r0, [sp, #0x4]
  402d42: 4c12         	ldr	r4, [pc, #0x48]         @ 0x402d8c <SurvivalStage::SurvivalStage()+0x50>
  402d44: 447c         	add	r4, pc
  402d46: 9b01         	ldr	r3, [sp, #0x4]
  402d48: 4618         	mov	r0, r3
  402d4a: f7f8 f8bf    	bl	0x3faecc <Stage::Stage()> @ imm = #-0x7e82
  402d4e: 9b01         	ldr	r3, [sp, #0x4]
  402d50: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x402d90 <SurvivalStage::SurvivalStage()+0x54>
  402d52: 58a2         	ldr	r2, [r4, r2]
  402d54: 3208         	adds	r2, #0x8
  402d56: 601a         	str	r2, [r3]
  402d58: 9b01         	ldr	r3, [sp, #0x4]
  402d5a: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x402d90 <SurvivalStage::SurvivalStage()+0x54>
  402d5c: 58a2         	ldr	r2, [r4, r2]
  402d5e: f502 721b    	add.w	r2, r2, #0x26c
  402d62: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  402d66: 9b01         	ldr	r3, [sp, #0x4]
  402d68: 4a09         	ldr	r2, [pc, #0x24]         @ 0x402d90 <SurvivalStage::SurvivalStage()+0x54>
  402d6a: 58a2         	ldr	r2, [r4, r2]
  402d6c: f502 7227    	add.w	r2, r2, #0x29c
  402d70: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  402d74: 9b01         	ldr	r3, [sp, #0x4]
  402d76: 4a06         	ldr	r2, [pc, #0x18]         @ 0x402d90 <SurvivalStage::SurvivalStage()+0x54>
  402d78: 58a2         	ldr	r2, [r4, r2]
  402d7a: f502 722a    	add.w	r2, r2, #0x2a8
  402d7e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  402d82: 9b01         	ldr	r3, [sp, #0x4]
  402d84: 4618         	mov	r0, r3
  402d86: b002         	add	sp, #0x8
  402d88: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x402d89); words below are literal-pool data ---
  402d8a: bf00         	nop
  402d8c: fcc4 0052    	stc2l	p0, c0, [r4], {82}
  402d90: df70         	svc	#0x70
  402d92: ffff b500    	<unknown>

// ==== SurvivalStage::init
//      file offset 0x402d94 (= ELF address; Ghidra 0x412d94), 48 bytes, Thumb-2
  402d94: b500         	push	{lr}
  402d96: b085         	sub	sp, #0x14
  402d98: 9001         	str	r0, [sp, #0x4]
  402d9a: 9b01         	ldr	r3, [sp, #0x4]
  402d9c: 4618         	mov	r0, r3
  402d9e: f7f8 f8df    	bl	0x3faf60 <Stage::init()> @ imm = #-0x7e42
  402da2: 4603         	mov	r3, r0
  402da4: f88d 300f    	strb.w	r3, [sp, #0xf]
  402da8: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  402dac: f083 0301    	eor	r3, r3, #0x1
  402db0: b2db         	uxtb	r3, r3
  402db2: 2b00         	cmp	r3, #0x0
  402db4: d001         	beq	0x402dba <SurvivalStage::init()+0x26> @ imm = #0x2
  402db6: 2300         	movs	r3, #0x0
  402db8: e000         	b	0x402dbc <SurvivalStage::init()+0x28> @ imm = #0x0
  402dba: 2301         	movs	r3, #0x1
  402dbc: 4618         	mov	r0, r3
  402dbe: b005         	add	sp, #0x14
  402dc0: f85d fb04    	ldr	pc, [sp], #4

// ==== SurvivalStage::~SurvivalStage
//      file offset 0x402dc4 (= ELF address; Ghidra 0x412dc4), 124 bytes, Thumb-2
  402dc4: b500         	push	{lr}
  402dc6: b083         	sub	sp, #0xc
  402dc8: 9001         	str	r0, [sp, #0x4]
  402dca: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x402e38 <SurvivalStage::~SurvivalStage()+0x74>
  402dcc: 447b         	add	r3, pc
  402dce: 9a01         	ldr	r2, [sp, #0x4]
  402dd0: 491a         	ldr	r1, [pc, #0x68]         @ 0x402e3c <SurvivalStage::~SurvivalStage()+0x78>
  402dd2: 5859         	ldr	r1, [r3, r1]
  402dd4: 3108         	adds	r1, #0x8
  402dd6: 6011         	str	r1, [r2]
  402dd8: 9a01         	ldr	r2, [sp, #0x4]
  402dda: 4918         	ldr	r1, [pc, #0x60]         @ 0x402e3c <SurvivalStage::~SurvivalStage()+0x78>
  402ddc: 5859         	ldr	r1, [r3, r1]
  402dde: f501 711b    	add.w	r1, r1, #0x26c
  402de2: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  402de6: 9a01         	ldr	r2, [sp, #0x4]
  402de8: 4914         	ldr	r1, [pc, #0x50]         @ 0x402e3c <SurvivalStage::~SurvivalStage()+0x78>
  402dea: 5859         	ldr	r1, [r3, r1]
  402dec: f501 7127    	add.w	r1, r1, #0x29c
  402df0: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  402df4: 9a01         	ldr	r2, [sp, #0x4]
  402df6: 4911         	ldr	r1, [pc, #0x44]         @ 0x402e3c <SurvivalStage::~SurvivalStage()+0x78>
  402df8: 585b         	ldr	r3, [r3, r1]
  402dfa: f503 732a    	add.w	r3, r3, #0x2a8
  402dfe: f8c2 30ec    	str.w	r3, [r2, #0xec]
  402e02: 9b01         	ldr	r3, [sp, #0x4]
  402e04: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  402e08: 4618         	mov	r0, r3
  402e0a: f195 f855    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1950aa
  402e0e: 9b01         	ldr	r3, [sp, #0x4]
  402e10: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402e14: 4618         	mov	r0, r3
  402e16: f195 f84f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x19509e
  402e1a: 9b01         	ldr	r3, [sp, #0x4]
  402e1c: 4618         	mov	r0, r3
  402e1e: f7f8 f99b    	bl	0x3fb158 <Stage::~Stage()> @ imm = #-0x7cca
  402e22: 2300         	movs	r3, #0x0
  402e24: 2b00         	cmp	r3, #0x0
  402e26: d002         	beq	0x402e2e <SurvivalStage::~SurvivalStage()+0x6a> @ imm = #0x4
  402e28: 9801         	ldr	r0, [sp, #0x4]
  402e2a: f385 f93b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x385276
  402e2e: 9b01         	ldr	r3, [sp, #0x4]
  402e30: 4618         	mov	r0, r3
  402e32: b003         	add	sp, #0xc
  402e34: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x402e37); words below are literal-pool data ---
  402e38: fc3c 0052    	ldc2	p0, c0, [r12], #-328
  402e3c: df70         	svc	#0x70
  402e3e: ffff f1a0    	<unknown>

// ==== SurvivalStage::~SurvivalStage
//      file offset 0x402e40 (= ELF address; Ghidra 0x412e40), 8 bytes, Thumb-2
  402e40: f1a0 00e4    	sub.w	r0, r0, #0xe4
  402e44: f7ff bfbe    	b.w	0x402dc4 <SurvivalStage::~SurvivalStage()> @ imm = #-0x84

// ==== SurvivalStage::~SurvivalStage
//      file offset 0x402e48 (= ELF address; Ghidra 0x412e48), 28 bytes, Thumb-2
  402e48: b500         	push	{lr}
  402e4a: b083         	sub	sp, #0xc
  402e4c: 9001         	str	r0, [sp, #0x4]
  402e4e: 9801         	ldr	r0, [sp, #0x4]
  402e50: f7ff ffb8    	bl	0x402dc4 <SurvivalStage::~SurvivalStage()> @ imm = #-0x90
  402e54: 9801         	ldr	r0, [sp, #0x4]
  402e56: f385 f925    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38524a
  402e5a: 9b01         	ldr	r3, [sp, #0x4]
  402e5c: 4618         	mov	r0, r3
  402e5e: b003         	add	sp, #0xc
  402e60: f85d fb04    	ldr	pc, [sp], #4

// ==== SurvivalStage::~SurvivalStage
//      file offset 0x402e64 (= ELF address; Ghidra 0x412e64), 8 bytes, Thumb-2
  402e64: f1a0 00e4    	sub.w	r0, r0, #0xe4
  402e68: f7ff bfee    	b.w	0x402e48 <SurvivalStage::~SurvivalStage()> @ imm = #-0x24

// ==== SurvivalStage::setupStage
//      file offset 0x402e70 (= ELF address; Ghidra 0x412e70), 1116 bytes, Thumb-2
  402e70: b570         	push	{r4, r5, r6, lr}
  402e72: b092         	sub	sp, #0x48
  402e74: 9007         	str	r0, [sp, #0x1c]
  402e76: f8df 4420    	ldr.w	r4, [pc, #0x420]        @ 0x403298 <SurvivalStage::setupStage()+0x428>
  402e7a: 447c         	add	r4, pc
  402e7c: 9b07         	ldr	r3, [sp, #0x1c]
  402e7e: 4618         	mov	r0, r3
  402e80: f7f8 fa3e    	bl	0x3fb300 <Stage::setupStage()> @ imm = #-0x7b84
  402e84: 9b07         	ldr	r3, [sp, #0x1c]
  402e86: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  402e8a: 2200         	movs	r2, #0x0
  402e8c: f883 2044    	strb.w	r2, [r3, #0x44]
  402e90: f8df 3408    	ldr.w	r3, [pc, #0x408]        @ 0x40329c <SurvivalStage::setupStage()+0x42c>
  402e94: 58e3         	ldr	r3, [r4, r3]
  402e96: 681b         	ldr	r3, [r3]
  402e98: 2200         	movs	r2, #0x0
  402e9a: f883 2035    	strb.w	r2, [r3, #0x35]
  402e9e: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x40329c <SurvivalStage::setupStage()+0x42c>
  402ea0: 58e3         	ldr	r3, [r4, r3]
  402ea2: 681b         	ldr	r3, [r3]
  402ea4: 2203         	movs	r2, #0x3
  402ea6: 625a         	str	r2, [r3, #0x24]
  402ea8: 9b07         	ldr	r3, [sp, #0x1c]
  402eaa: f8d3 210c    	ldr.w	r2, [r3, #0x10c]
  402eae: 4bfb         	ldr	r3, [pc, #0x3ec]        @ 0x40329c <SurvivalStage::setupStage()+0x42c>
  402eb0: 58e3         	ldr	r3, [r4, r3]
  402eb2: 681b         	ldr	r3, [r3]
  402eb4: 6a5b         	ldr	r3, [r3, #0x24]
  402eb6: 4610         	mov	r0, r2
  402eb8: 4619         	mov	r1, r3
  402eba: f739 faad    	bl	0x33c418 <HUD::updateLifeCount(int)> @ imm = #-0xc6aa6
  402ebe: 9b07         	ldr	r3, [sp, #0x1c]
  402ec0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  402ec4: 2200         	movs	r2, #0x0
  402ec6: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  402eca: 2050         	movs	r0, #0x50
  402ecc: f384 fd4a    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x384a94
  402ed0: 4605         	mov	r5, r0
  402ed2: 4628         	mov	r0, r5
  402ed4: f715 ff4a    	bl	0x318d6c <EnemyManager::EnemyManager()> @ imm = #-0xea16c
  402ed8: 9b07         	ldr	r3, [sp, #0x1c]
  402eda: f8c3 5170    	str.w	r5, [r3, #0x170]
  402ede: f742 fe2d    	bl	0x345b3c <SoldierAIController::create()> @ imm = #-0xbd3a6
  402ee2: 4602         	mov	r2, r0
  402ee4: 9b07         	ldr	r3, [sp, #0x1c]
  402ee6: f8c3 216c    	str.w	r2, [r3, #0x16c]
  402eea: 9b07         	ldr	r3, [sp, #0x1c]
  402eec: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402ef0: 4618         	mov	r0, r3
  402ef2: f194 fff9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x194ff2
  402ef6: 9b07         	ldr	r3, [sp, #0x1c]
  402ef8: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402efc: 681b         	ldr	r3, [r3]
  402efe: f503 73ea    	add.w	r3, r3, #0x1d4
  402f02: 681d         	ldr	r5, [r3]
  402f04: 9b07         	ldr	r3, [sp, #0x1c]
  402f06: f8d3 616c    	ldr.w	r6, [r3, #0x16c]
  402f0a: f6e7 f9d7    	bl	0x2ea2bc <SoldierView::create()> @ imm = #-0x118c52
  402f0e: 4603         	mov	r3, r0
  402f10: 4630         	mov	r0, r6
  402f12: 4619         	mov	r1, r3
  402f14: 47a8         	blx	r5
  402f16: 9b07         	ldr	r3, [sp, #0x1c]
  402f18: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f1c: 681b         	ldr	r3, [r3]
  402f1e: f503 730a    	add.w	r3, r3, #0x228
  402f22: 681b         	ldr	r3, [r3]
  402f24: 9a07         	ldr	r2, [sp, #0x1c]
  402f26: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  402f2a: 4610         	mov	r0, r2
  402f2c: 4798         	blx	r3
  402f2e: 9b07         	ldr	r3, [sp, #0x1c]
  402f30: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f34: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  402f38: 2215         	movs	r2, #0x15
  402f3a: 655a         	str	r2, [r3, #0x54]
  402f3c: 9b07         	ldr	r3, [sp, #0x1c]
  402f3e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f42: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  402f46: 2215         	movs	r2, #0x15
  402f48: 65da         	str	r2, [r3, #0x5c]
  402f4a: 9b07         	ldr	r3, [sp, #0x1c]
  402f4c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f50: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  402f54: 2215         	movs	r2, #0x15
  402f56: 659a         	str	r2, [r3, #0x58]
  402f58: 9b07         	ldr	r3, [sp, #0x1c]
  402f5a: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f5e: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  402f62: 2215         	movs	r2, #0x15
  402f64: 655a         	str	r2, [r3, #0x54]
  402f66: 9b07         	ldr	r3, [sp, #0x1c]
  402f68: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f6c: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  402f70: 2215         	movs	r2, #0x15
  402f72: 65da         	str	r2, [r3, #0x5c]
  402f74: 9b07         	ldr	r3, [sp, #0x1c]
  402f76: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f7a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  402f7e: 2215         	movs	r2, #0x15
  402f80: 659a         	str	r2, [r3, #0x58]
  402f82: 9b07         	ldr	r3, [sp, #0x1c]
  402f84: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402f88: 2201         	movs	r2, #0x1
  402f8a: f883 215b    	strb.w	r2, [r3, #0x15b]
  402f8e: f6f0 fd93    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x10f4da
  402f92: 4603         	mov	r3, r0
  402f94: 4618         	mov	r0, r3
  402f96: 2100         	movs	r1, #0x0
  402f98: 2207         	movs	r2, #0x7
  402f9a: f6f4 f869    	bl	0x2f7070 <AvatarRenderer::getHeadTexture(cocos2d::CCArray*, int)> @ imm = #-0x10bf2e
  402f9e: 4603         	mov	r3, r0
  402fa0: 9308         	str	r3, [sp, #0x20]
  402fa2: f6f0 fd89    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x10f4ee
  402fa6: 4603         	mov	r3, r0
  402fa8: 4618         	mov	r0, r3
  402faa: 2100         	movs	r1, #0x0
  402fac: 2207         	movs	r2, #0x7
  402fae: f6f4 ff69    	bl	0x2f7e84 <AvatarRenderer::getBodyTexture(cocos2d::CCArray*, int)> @ imm = #-0x10b12e
  402fb2: 4603         	mov	r3, r0
  402fb4: 9309         	str	r3, [sp, #0x24]
  402fb6: f6f0 fd7f    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x10f502
  402fba: 4603         	mov	r3, r0
  402fbc: 4618         	mov	r0, r3
  402fbe: 2100         	movs	r1, #0x0
  402fc0: 2207         	movs	r2, #0x7
  402fc2: f6f4 fffd    	bl	0x2f7fc0 <AvatarRenderer::getArmTexture(cocos2d::CCArray*, int)> @ imm = #-0x10b006
  402fc6: 4603         	mov	r3, r0
  402fc8: 930a         	str	r3, [sp, #0x28]
  402fca: f6f0 fd75    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0x10f516
  402fce: 4603         	mov	r3, r0
  402fd0: 4618         	mov	r0, r3
  402fd2: 2100         	movs	r1, #0x0
  402fd4: 2207         	movs	r2, #0x7
  402fd6: f6f5 f891    	bl	0x2f80fc <AvatarRenderer::getLegTexture(cocos2d::CCArray*, int)> @ imm = #-0x10aede
  402fda: 4603         	mov	r3, r0
  402fdc: 930b         	str	r3, [sp, #0x2c]
  402fde: 9b07         	ldr	r3, [sp, #0x1c]
  402fe0: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  402fe4: 681b         	ldr	r3, [r3]
  402fe6: f503 73ec    	add.w	r3, r3, #0x1d8
  402fea: 681b         	ldr	r3, [r3]
  402fec: 9a07         	ldr	r2, [sp, #0x1c]
  402fee: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  402ff2: 4610         	mov	r0, r2
  402ff4: 4798         	blx	r3
  402ff6: 4603         	mov	r3, r0
  402ff8: 9a0a         	ldr	r2, [sp, #0x28]
  402ffa: 9200         	str	r2, [sp]
  402ffc: 9a0b         	ldr	r2, [sp, #0x2c]
  402ffe: 9201         	str	r2, [sp, #0x4]
  403000: 4618         	mov	r0, r3
  403002: 2107         	movs	r1, #0x7
  403004: 9a08         	ldr	r2, [sp, #0x20]
  403006: 9b09         	ldr	r3, [sp, #0x24]
  403008: f7f1 f83c    	bl	0x3f4084 <SoldierView::setPlayerSkin(int, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*, cocos2d::CCTexture2D*)> @ imm = #-0xef88
  40300c: 9b07         	ldr	r3, [sp, #0x1c]
  40300e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403012: 681b         	ldr	r3, [r3]
  403014: f503 73ec    	add.w	r3, r3, #0x1d8
  403018: 681b         	ldr	r3, [r3]
  40301a: 9a07         	ldr	r2, [sp, #0x1c]
  40301c: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  403020: 4610         	mov	r0, r2
  403022: 4798         	blx	r3
  403024: 4605         	mov	r5, r0
  403026: ab0e         	add	r3, sp, #0x38
  403028: 4618         	mov	r0, r3
  40302a: f387 f9e3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3873c6
  40302e: aa10         	add	r2, sp, #0x40
  403030: ab0e         	add	r3, sp, #0x38
  403032: 4610         	mov	r0, r2
  403034: 4a9a         	ldr	r2, [pc, #0x268]        @ 0x4032a0 <SurvivalStage::setupStage()+0x430>
  403036: 447a         	add	r2, pc
  403038: 4611         	mov	r1, r2
  40303a: 461a         	mov	r2, r3
  40303c: f3b3 fd10    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b3a20
  403040: ab10         	add	r3, sp, #0x40
  403042: 4628         	mov	r0, r5
  403044: 4619         	mov	r1, r3
  403046: f7f0 ff8d    	bl	0x3f3f64 <SoldierView::setPlayerName(std::string)> @ imm = #-0xf0e6
  40304a: ab10         	add	r3, sp, #0x40
  40304c: 4618         	mov	r0, r3
  40304e: f3b2 fc61    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b28c2
  403052: ab0e         	add	r3, sp, #0x38
  403054: 4618         	mov	r0, r3
  403056: f387 f9d1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3873a2
  40305a: 4b92         	ldr	r3, [pc, #0x248]        @ 0x4032a4 <SurvivalStage::setupStage()+0x434>
  40305c: 58e3         	ldr	r3, [r4, r3]
  40305e: 681b         	ldr	r3, [r3]
  403060: 681b         	ldr	r3, [r3]
  403062: 33cc         	adds	r3, #0xcc
  403064: 681d         	ldr	r5, [r3]
  403066: 4b8f         	ldr	r3, [pc, #0x23c]        @ 0x4032a4 <SurvivalStage::setupStage()+0x434>
  403068: 58e3         	ldr	r3, [r4, r3]
  40306a: 681b         	ldr	r3, [r3]
  40306c: 461e         	mov	r6, r3
  40306e: 9b07         	ldr	r3, [sp, #0x1c]
  403070: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403074: 681b         	ldr	r3, [r3]
  403076: f503 73ec    	add.w	r3, r3, #0x1d8
  40307a: 681b         	ldr	r3, [r3]
  40307c: 9a07         	ldr	r2, [sp, #0x1c]
  40307e: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  403082: 4610         	mov	r0, r2
  403084: 4798         	blx	r3
  403086: 4603         	mov	r3, r0
  403088: 4630         	mov	r0, r6
  40308a: 4619         	mov	r1, r3
  40308c: 2203         	movs	r2, #0x3
  40308e: 47a8         	blx	r5
  403090: 9b07         	ldr	r3, [sp, #0x1c]
  403092: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403096: 681b         	ldr	r3, [r3]
  403098: f503 7305    	add.w	r3, r3, #0x214
  40309c: 681d         	ldr	r5, [r3]
  40309e: 9b07         	ldr	r3, [sp, #0x1c]
  4030a0: f8d3 616c    	ldr.w	r6, [r3, #0x16c]
  4030a4: f014 fc6e    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x148dc
  4030a8: 4603         	mov	r3, r0
  4030aa: 4618         	mov	r0, r3
  4030ac: 2105         	movs	r1, #0x5
  4030ae: f015 fb25    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x1564a
  4030b2: 4603         	mov	r3, r0
  4030b4: 4630         	mov	r0, r6
  4030b6: 4619         	mov	r1, r3
  4030b8: 47a8         	blx	r5
  4030ba: 9b07         	ldr	r3, [sp, #0x1c]
  4030bc: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4030c0: 681b         	ldr	r3, [r3]
  4030c2: f503 7307    	add.w	r3, r3, #0x21c
  4030c6: 681d         	ldr	r5, [r3]
  4030c8: 9b07         	ldr	r3, [sp, #0x1c]
  4030ca: f8d3 616c    	ldr.w	r6, [r3, #0x16c]
  4030ce: f014 fc59    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x148b2
  4030d2: 4603         	mov	r3, r0
  4030d4: 4618         	mov	r0, r3
  4030d6: 2105         	movs	r1, #0x5
  4030d8: f015 fb10    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x15620
  4030dc: 4603         	mov	r3, r0
  4030de: 4630         	mov	r0, r6
  4030e0: 4619         	mov	r1, r3
  4030e2: 47a8         	blx	r5
  4030e4: 9b07         	ldr	r3, [sp, #0x1c]
  4030e6: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4030ea: 681b         	ldr	r3, [r3]
  4030ec: f503 73fa    	add.w	r3, r3, #0x1f4
  4030f0: 681b         	ldr	r3, [r3]
  4030f2: 9a07         	ldr	r2, [sp, #0x1c]
  4030f4: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  4030f8: 4610         	mov	r0, r2
  4030fa: 4798         	blx	r3
  4030fc: 4603         	mov	r3, r0
  4030fe: f24c 228f    	movw	r2, #0xc28f
  403102: f6c3 6275    	movt	r2, #0x3e75
  403106: f8c3 215c    	str.w	r2, [r3, #0x15c]
  40310a: 9b07         	ldr	r3, [sp, #0x1c]
  40310c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403110: 681b         	ldr	r3, [r3]
  403112: f503 73fe    	add.w	r3, r3, #0x1fc
  403116: 681b         	ldr	r3, [r3]
  403118: 9a07         	ldr	r2, [sp, #0x1c]
  40311a: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  40311e: 4610         	mov	r0, r2
  403120: 4798         	blx	r3
  403122: 4603         	mov	r3, r0
  403124: f04f 527a    	mov.w	r2, #0x3e800000
  403128: f8c3 215c    	str.w	r2, [r3, #0x15c]
  40312c: 9b07         	ldr	r3, [sp, #0x1c]
  40312e: f04f 0200    	mov.w	r2, #0x0
  403132: f8c3 217c    	str.w	r2, [r3, #0x17c]
  403136: 9b07         	ldr	r3, [sp, #0x1c]
  403138: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40313c: 681b         	ldr	r3, [r3]
  40313e: f503 7313    	add.w	r3, r3, #0x24c
  403142: 681d         	ldr	r5, [r3]
  403144: 9b07         	ldr	r3, [sp, #0x1c]
  403146: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40314a: 461e         	mov	r6, r3
  40314c: ab10         	add	r3, sp, #0x40
  40314e: 4618         	mov	r0, r3
  403150: 4b55         	ldr	r3, [pc, #0x154]        @ 0x4032a8 <SurvivalStage::setupStage()+0x438>
  403152: 58e3         	ldr	r3, [r4, r3]
  403154: 4619         	mov	r1, r3
  403156: f3b3 f9c7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b338e
  40315a: ab10         	add	r3, sp, #0x40
  40315c: 4630         	mov	r0, r6
  40315e: 4619         	mov	r1, r3
  403160: 47a8         	blx	r5
  403162: ab10         	add	r3, sp, #0x40
  403164: 4618         	mov	r0, r3
  403166: f3b2 fbd5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b27aa
  40316a: 9b07         	ldr	r3, [sp, #0x1c]
  40316c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403170: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  403174: ab02         	add	r3, sp, #0x8
  403176: 4618         	mov	r0, r3
  403178: ed9f 0b43    	vldr	d0, [pc, #268]          @ 0x403288 <SurvivalStage::setupStage()+0x418>
  40317c: ed9f 1b44    	vldr	d1, [pc, #272]          @ 0x403290 <SurvivalStage::setupStage()+0x420>
  403180: f7fe fe54    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1358
  403184: 3528         	adds	r5, #0x28
  403186: ab02         	add	r3, sp, #0x8
  403188: cb0f         	ldm	r3, {r0, r1, r2, r3}
  40318a: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  40318e: 9807         	ldr	r0, [sp, #0x1c]
  403190: f000 f90c    	bl	0x4033ac <SurvivalStage::resetSpawnTime()> @ imm = #0x218
  403194: 9b07         	ldr	r3, [sp, #0x1c]
  403196: f04f 0200    	mov.w	r2, #0x0
  40319a: f8c3 2174    	str.w	r2, [r3, #0x174]
  40319e: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x4032ac <SurvivalStage::setupStage()+0x43c>
  4031a0: 58e3         	ldr	r3, [r4, r3]
  4031a2: 681a         	ldr	r2, [r3]
  4031a4: 9b07         	ldr	r3, [sp, #0x1c]
  4031a6: f8c3 2180    	str.w	r2, [r3, #0x180]
  4031aa: 9b07         	ldr	r3, [sp, #0x1c]
  4031ac: 2200         	movs	r2, #0x0
  4031ae: f8c3 2184    	str.w	r2, [r3, #0x184]
  4031b2: 9b07         	ldr	r3, [sp, #0x1c]
  4031b4: f04f 0200    	mov.w	r2, #0x0
  4031b8: f8c3 2188    	str.w	r2, [r3, #0x188]
  4031bc: 9b07         	ldr	r3, [sp, #0x1c]
  4031be: f04f 0200    	mov.w	r2, #0x0
  4031c2: f8c3 2190    	str.w	r2, [r3, #0x190]
  4031c6: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x4032b0 <SurvivalStage::setupStage()+0x440>
  4031c8: 58e3         	ldr	r3, [r4, r3]
  4031ca: 681b         	ldr	r3, [r3]
  4031cc: 4618         	mov	r0, r3
  4031ce: f7f4 fd9b    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #-0xb4ca
  4031d2: f1dd fa6d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1dd4da
  4031d6: 4602         	mov	r2, r0
  4031d8: 9b07         	ldr	r3, [sp, #0x1c]
  4031da: 4936         	ldr	r1, [pc, #0xd8]         @ 0x4032b4 <SurvivalStage::setupStage()+0x444>
  4031dc: 5861         	ldr	r1, [r4, r1]
  4031de: 910c         	str	r1, [sp, #0x30]
  4031e0: 2100         	movs	r1, #0x0
  4031e2: 910d         	str	r1, [sp, #0x34]
  4031e4: 4934         	ldr	r1, [pc, #0xd0]         @ 0x4032b8 <SurvivalStage::setupStage()+0x448>
  4031e6: 4479         	add	r1, pc
  4031e8: 9100         	str	r1, [sp]
  4031ea: 2100         	movs	r1, #0x0
  4031ec: 9101         	str	r1, [sp, #0x4]
  4031ee: 4610         	mov	r0, r2
  4031f0: 4619         	mov	r1, r3
  4031f2: ab0c         	add	r3, sp, #0x30
  4031f4: cb0c         	ldm	r3, {r2, r3}
  4031f6: f1dd faf7    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1dd5ee
  4031fa: f1dd fa59    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1dd4b2
  4031fe: 4602         	mov	r2, r0
  403200: 9b07         	ldr	r3, [sp, #0x1c]
  403202: 492e         	ldr	r1, [pc, #0xb8]         @ 0x4032bc <SurvivalStage::setupStage()+0x44c>
  403204: 5861         	ldr	r1, [r4, r1]
  403206: 910e         	str	r1, [sp, #0x38]
  403208: 2100         	movs	r1, #0x0
  40320a: 910f         	str	r1, [sp, #0x3c]
  40320c: 492c         	ldr	r1, [pc, #0xb0]         @ 0x4032c0 <SurvivalStage::setupStage()+0x450>
  40320e: 4479         	add	r1, pc
  403210: 9100         	str	r1, [sp]
  403212: 2100         	movs	r1, #0x0
  403214: 9101         	str	r1, [sp, #0x4]
  403216: 4610         	mov	r0, r2
  403218: 4619         	mov	r1, r3
  40321a: ab0e         	add	r3, sp, #0x38
  40321c: cb0c         	ldm	r3, {r2, r3}
  40321e: f1dd fae3    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1dd5c6
  403222: f1dd fa45    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1dd48a
  403226: 4602         	mov	r2, r0
  403228: 9b07         	ldr	r3, [sp, #0x1c]
  40322a: 4926         	ldr	r1, [pc, #0x98]         @ 0x4032c4 <SurvivalStage::setupStage()+0x454>
  40322c: 5861         	ldr	r1, [r4, r1]
  40322e: 9110         	str	r1, [sp, #0x40]
  403230: 2100         	movs	r1, #0x0
  403232: 9111         	str	r1, [sp, #0x44]
  403234: 4924         	ldr	r1, [pc, #0x90]         @ 0x4032c8 <SurvivalStage::setupStage()+0x458>
  403236: 4479         	add	r1, pc
  403238: 9100         	str	r1, [sp]
  40323a: 2100         	movs	r1, #0x0
  40323c: 9101         	str	r1, [sp, #0x4]
  40323e: 4610         	mov	r0, r2
  403240: 4619         	mov	r1, r3
  403242: ab10         	add	r3, sp, #0x40
  403244: cb0c         	ldm	r3, {r2, r3}
  403246: f1dd facf    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x1dd59e
  40324a: 9b07         	ldr	r3, [sp, #0x1c]
  40324c: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  403250: 4618         	mov	r0, r3
  403252: f715 ff21    	bl	0x319098 <EnemyManager::initEnemies()> @ imm = #-0xea1be
  403256: e015         	b	0x403284 <SurvivalStage::setupStage()+0x414> @ imm = #0x2a
  403258: 4628         	mov	r0, r5
  40325a: f384 ff23    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x384e46
  40325e: f384 ff25    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384e4a
  403262: ab10         	add	r3, sp, #0x40
  403264: 4618         	mov	r0, r3
  403266: f3b2 fb55    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b26aa
  40326a: e7ff         	b	0x40326c <SurvivalStage::setupStage()+0x3fc> @ imm = #-0x2
  40326c: ab0e         	add	r3, sp, #0x38
  40326e: 4618         	mov	r0, r3
  403270: f387 f8c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x387188
  403274: f384 ff1a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384e34
  403278: ab10         	add	r3, sp, #0x40
  40327a: 4618         	mov	r0, r3
  40327c: f3b2 fb4a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b2694
  403280: f384 ff14    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384e28
  403284: b012         	add	sp, #0x48
  403286: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x403287); words below are literal-pool data ---
  403288: 0000         	movs	r0, r0
  40328a: 0000         	movs	r0, r0
  40328c: 7000         	strb	r0, [r0]
  40328e: 4097         	lsls	r7, r2
  403290: 0000         	movs	r0, r0
  403292: 0000         	movs	r0, r0
  403294: c000         	<unknown>
  403296: 4092         	lsls	r2, r2
  403298: fb8e 0052    	<unknown>
  40329c: d910         	bls	0x4032c0 <SurvivalStage::setupStage()+0x450> @ imm = #0x20
  40329e: ffff 6f3e    	vcvt.u32.f32	d22, d30, #0x1
  4032a2: 003d         	movs	r5, r7
  4032a4: d744         	bvc	0x403330 <SurvivalStage::playerScored(cocos2d::CCObject*)+0x60> @ imm = #0x88
  4032a6: ffff dd10    	<unknown>
  4032aa: ffff d784    	<unknown>
  4032ae: ffff d730    	vqshl.u32	d29, d16, #0x1f
  4032b2: ffff df74    	<unknown>
  4032b6: ffff 6d96    	<unknown>
  4032ba: 003d         	movs	r5, r7
  4032bc: df78         	svc	#0x78
  4032be: ffff 6d7a    	<unknown>
  4032c2: 003d         	movs	r5, r7
  4032c4: df7c         	svc	#0x7c
  4032c6: ffff 6d5e    	<unknown>
  4032ca: 003d         	movs	r5, r7

// ==== SurvivalStage::playerScored
//      file offset 0x4032d0 (= ELF address; Ghidra 0x4132d0), 220 bytes, Thumb-2
  4032d0: b530         	push	{r4, r5, lr}
  4032d2: b087         	sub	sp, #0x1c
  4032d4: 9001         	str	r0, [sp, #0x4]
  4032d6: 9100         	str	r1, [sp]
  4032d8: 4c31         	ldr	r4, [pc, #0xc4]         @ 0x4033a0 <SurvivalStage::playerScored(cocos2d::CCObject*)+0xd0>
  4032da: 447c         	add	r4, pc
  4032dc: 9b00         	ldr	r3, [sp]
  4032de: 9305         	str	r3, [sp, #0x14]
  4032e0: 9805         	ldr	r0, [sp, #0x14]
  4032e2: 2100         	movs	r1, #0x0
  4032e4: f196 ff1c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x196e38
  4032e8: 4603         	mov	r3, r0
  4032ea: 4618         	mov	r0, r3
  4032ec: f196 fb1c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x196638
  4032f0: 4605         	mov	r5, r0
  4032f2: ab03         	add	r3, sp, #0xc
  4032f4: 4618         	mov	r0, r3
  4032f6: f387 f87d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3870fa
  4032fa: aa04         	add	r2, sp, #0x10
  4032fc: ab03         	add	r3, sp, #0xc
  4032fe: 4610         	mov	r0, r2
  403300: 4629         	mov	r1, r5
  403302: 461a         	mov	r2, r3
  403304: f3b3 fbac    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b3758
  403308: ab03         	add	r3, sp, #0xc
  40330a: 4618         	mov	r0, r3
  40330c: f387 f876    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3870ec
  403310: ab04         	add	r3, sp, #0x10
  403312: 4618         	mov	r0, r3
  403314: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x4033a4 <SurvivalStage::playerScored(cocos2d::CCObject*)+0xd4>
  403316: 58e3         	ldr	r3, [r4, r3]
  403318: 4619         	mov	r1, r3
  40331a: f3b2 f9af    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3b235e
  40331e: 4603         	mov	r3, r0
  403320: 2b00         	cmp	r3, #0x0
  403322: d115         	bne	0x403350 <SurvivalStage::playerScored(cocos2d::CCObject*)+0x80> @ imm = #0x2a
  403324: f7fe fd4e    	bl	0x401dc4 <StoreLayer::onPoints(cocos2d::CCObject*)+0x194> @ imm = #-0x1564
  403328: 4603         	mov	r3, r0
  40332a: ee07 3a90    	vmov	s15, r3
  40332e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  403332: eddf 7a1a    	vldr	s15, [pc, #104]         @ 0x40339c <SurvivalStage::playerScored(cocos2d::CCObject*)+0xcc>
  403336: ee87 7a27    	vdiv.f32	s14, s14, s15
  40333a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  40333e: ee77 7a67    	vsub.f32	s15, s14, s15
  403342: eef5 7ac0    	vcmpe.f32	s15, #0
  403346: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40334a: db01         	blt	0x403350 <SurvivalStage::playerScored(cocos2d::CCObject*)+0x80> @ imm = #0x2
  40334c: 2301         	movs	r3, #0x1
  40334e: e000         	b	0x403352 <SurvivalStage::playerScored(cocos2d::CCObject*)+0x82> @ imm = #0x0
  403350: 2300         	movs	r3, #0x0
  403352: 2b00         	cmp	r3, #0x0
  403354: d00e         	beq	0x403374 <SurvivalStage::playerScored(cocos2d::CCObject*)+0xa4> @ imm = #0x1c
  403356: 4b14         	ldr	r3, [pc, #0x50]         @ 0x4033a8 <SurvivalStage::playerScored(cocos2d::CCObject*)+0xd8>
  403358: 58e3         	ldr	r3, [r4, r3]
  40335a: 681d         	ldr	r5, [r3]
  40335c: 4b12         	ldr	r3, [pc, #0x48]         @ 0x4033a8 <SurvivalStage::playerScored(cocos2d::CCObject*)+0xd8>
  40335e: 58e3         	ldr	r3, [r4, r3]
  403360: 681b         	ldr	r3, [r3]
  403362: 4618         	mov	r0, r3
  403364: f7f4 fecc    	bl	0x3f8100 <Sound::getRandomTaunt()> @ imm = #-0xb268
  403368: 4603         	mov	r3, r0
  40336a: 4628         	mov	r0, r5
  40336c: 4619         	mov	r1, r3
  40336e: 2201         	movs	r2, #0x1
  403370: f7f4 fce6    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0xb634
  403374: ab04         	add	r3, sp, #0x10
  403376: 4618         	mov	r0, r3
  403378: f3b2 facc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b2598
  40337c: e00b         	b	0x403396 <SurvivalStage::playerScored(cocos2d::CCObject*)+0xc6> @ imm = #0x16
  40337e: ab03         	add	r3, sp, #0xc
  403380: 4618         	mov	r0, r3
  403382: f387 f83b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x387076
  403386: f384 fe91    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384d22
  40338a: ab04         	add	r3, sp, #0x10
  40338c: 4618         	mov	r0, r3
  40338e: f3b2 fac1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b2582
  403392: f384 fe8b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384d16
  403396: b007         	add	sp, #0x1c
  403398: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x403399); words below are literal-pool data ---
  40339a: bf00         	nop
  40339c: 0000         	movs	r0, r0
  40339e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x4035a0 <SurvivalStage::onEnemyAdded(cocos2d::CCObject*)+0x38>
  4033a0: f72e 0052    	<unknown>
  4033a4: dd10         	ble	0x4033c8 <SurvivalStage::spawnEnemy()+0x8> @ imm = #0x20
  4033a6: ffff d730    	vqshl.u32	d29, d16, #0x1f
  4033aa: ffff b082    	<unknown>

// ==== SurvivalStage::resetSpawnTime
//      file offset 0x4033ac (= ELF address; Ghidra 0x4133ac), 18 bytes, Thumb-2
  4033ac: b082         	sub	sp, #0x8
  4033ae: 9001         	str	r0, [sp, #0x4]
  4033b0: 9b01         	ldr	r3, [sp, #0x4]
  4033b2: f04f 4282    	mov.w	r2, #0x41000000
  4033b6: f8c3 2178    	str.w	r2, [r3, #0x178]
  4033ba: b002         	add	sp, #0x8
  4033bc: 4770         	bx	lr

// ==== SurvivalStage::spawnEnemy
//      file offset 0x4033c0 (= ELF address; Ghidra 0x4133c0), 424 bytes, Thumb-2
  4033c0: b510         	push	{r4, lr}
  4033c2: b08c         	sub	sp, #0x30
  4033c4: 9003         	str	r0, [sp, #0xc]
  4033c6: f7fe fcfd    	bl	0x401dc4 <StoreLayer::onPoints(cocos2d::CCObject*)+0x194> @ imm = #-0x1606
  4033ca: 4603         	mov	r3, r0
  4033cc: ee06 3a90    	vmov	s13, r3
  4033d0: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  4033d4: eddf 7a62    	vldr	s15, [pc, #392]         @ 0x403560 <SurvivalStage::spawnEnemy()+0x1a0>
  4033d8: ee87 7a27    	vdiv.f32	s14, s14, s15
  4033dc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  4033e0: ee77 7a67    	vsub.f32	s15, s14, s15
  4033e4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  4033e8: ed9f 7b57    	vldr	d7, [pc, #348]          @ 0x403548 <SurvivalStage::spawnEnemy()+0x188>
  4033ec: ee26 7b07    	vmul.f64	d7, d6, d7
  4033f0: eeb0 7bc7    	vabs.f64	d7, d7
  4033f4: eefd 6bc7    	vcvt.s32.f64	s13, d7
  4033f8: ee16 3a90    	vmov	r3, s13
  4033fc: 9304         	str	r3, [sp, #0x10]
  4033fe: f7fe fce1    	bl	0x401dc4 <StoreLayer::onPoints(cocos2d::CCObject*)+0x194> @ imm = #-0x163e
  403402: 4603         	mov	r3, r0
  403404: ee07 3a90    	vmov	s15, r3
  403408: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  40340c: eddf 7a54    	vldr	s15, [pc, #336]         @ 0x403560 <SurvivalStage::spawnEnemy()+0x1a0>
  403410: ee87 7a27    	vdiv.f32	s14, s14, s15
  403414: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  403418: ee37 7a67    	vsub.f32	s14, s14, s15
  40341c: eddf 7a51    	vldr	s15, [pc, #324]         @ 0x403564 <SurvivalStage::spawnEnemy()+0x1a4>
  403420: ee67 7a27    	vmul.f32	s15, s14, s15
  403424: eef0 7ae7    	vabs.f32	s15, s15
  403428: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  40342c: ed9f 7b48    	vldr	d7, [pc, #288]          @ 0x403550 <SurvivalStage::spawnEnemy()+0x190>
  403430: ee36 7b07    	vadd.f64	d7, d6, d7
  403434: ab08         	add	r3, sp, #0x20
  403436: 4618         	mov	r0, r3
  403438: eeb0 0b47    	vmov.f64	d0, d7
  40343c: ed9f 1b46    	vldr	d1, [pc, #280]          @ 0x403558 <SurvivalStage::spawnEnemy()+0x198>
  403440: f7fe fcf4    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1618
  403444: 9b04         	ldr	r3, [sp, #0x10]
  403446: 2b00         	cmp	r3, #0x0
  403448: d10b         	bne	0x403462 <SurvivalStage::spawnEnemy()+0xa2> @ imm = #0x16
  40344a: 9b03         	ldr	r3, [sp, #0xc]
  40344c: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  403450: 6a1b         	ldr	r3, [r3, #0x20]
  403452: 4618         	mov	r0, r3
  403454: f190 fc0a    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x190814
  403458: 4603         	mov	r3, r0
  40345a: 2b00         	cmp	r3, #0x0
  40345c: d001         	beq	0x403462 <SurvivalStage::spawnEnemy()+0xa2> @ imm = #0x2
  40345e: 2301         	movs	r3, #0x1
  403460: e000         	b	0x403464 <SurvivalStage::spawnEnemy()+0xa4> @ imm = #0x0
  403462: 2300         	movs	r3, #0x0
  403464: 2b00         	cmp	r3, #0x0
  403466: d017         	beq	0x403498 <SurvivalStage::spawnEnemy()+0xd8> @ imm = #0x2e
  403468: 9b03         	ldr	r3, [sp, #0xc]
  40346a: f8d3 4170    	ldr.w	r4, [r3, #0x170]
  40346e: 466b         	mov	r3, sp
  403470: aa0a         	add	r2, sp, #0x28
  403472: e892 0003    	ldm.w	r2, {r0, r1}
  403476: e883 0003    	stm.w	r3, {r0, r1}
  40347a: ab08         	add	r3, sp, #0x20
  40347c: cb0c         	ldm	r3, {r2, r3}
  40347e: 4620         	mov	r0, r4
  403480: f717 f962    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xe8d3c
  403484: 4603         	mov	r3, r0
  403486: 9305         	str	r3, [sp, #0x14]
  403488: 9b05         	ldr	r3, [sp, #0x14]
  40348a: 2b00         	cmp	r3, #0x0
  40348c: d003         	beq	0x403496 <SurvivalStage::spawnEnemy()+0xd6> @ imm = #0x6
  40348e: 9b05         	ldr	r3, [sp, #0x14]
  403490: 2202         	movs	r2, #0x2
  403492: f8c3 215c    	str.w	r2, [r3, #0x15c]
  403496: e053         	b	0x403540 <SurvivalStage::spawnEnemy()+0x180> @ imm = #0xa6
  403498: 9b04         	ldr	r3, [sp, #0x10]
  40349a: 2b01         	cmp	r3, #0x1
  40349c: d10b         	bne	0x4034b6 <SurvivalStage::spawnEnemy()+0xf6> @ imm = #0x16
  40349e: 9b03         	ldr	r3, [sp, #0xc]
  4034a0: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  4034a4: 6a5b         	ldr	r3, [r3, #0x24]
  4034a6: 4618         	mov	r0, r3
  4034a8: f190 fbe0    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1907c0
  4034ac: 4603         	mov	r3, r0
  4034ae: 2b00         	cmp	r3, #0x0
  4034b0: d001         	beq	0x4034b6 <SurvivalStage::spawnEnemy()+0xf6> @ imm = #0x2
  4034b2: 2301         	movs	r3, #0x1
  4034b4: e000         	b	0x4034b8 <SurvivalStage::spawnEnemy()+0xf8> @ imm = #0x0
  4034b6: 2300         	movs	r3, #0x0
  4034b8: 2b00         	cmp	r3, #0x0
  4034ba: d017         	beq	0x4034ec <SurvivalStage::spawnEnemy()+0x12c> @ imm = #0x2e
  4034bc: 9b03         	ldr	r3, [sp, #0xc]
  4034be: f8d3 4170    	ldr.w	r4, [r3, #0x170]
  4034c2: 466b         	mov	r3, sp
  4034c4: aa0a         	add	r2, sp, #0x28
  4034c6: e892 0003    	ldm.w	r2, {r0, r1}
  4034ca: e883 0003    	stm.w	r3, {r0, r1}
  4034ce: ab08         	add	r3, sp, #0x20
  4034d0: cb0c         	ldm	r3, {r2, r3}
  4034d2: 4620         	mov	r0, r4
  4034d4: f717 f9ca    	bl	0x31a86c <EnemyManager::addHumanoidDrone(cpVect)> @ imm = #-0xe8c6c
  4034d8: 4603         	mov	r3, r0
  4034da: 9306         	str	r3, [sp, #0x18]
  4034dc: 9b06         	ldr	r3, [sp, #0x18]
  4034de: 2b00         	cmp	r3, #0x0
  4034e0: d003         	beq	0x4034ea <SurvivalStage::spawnEnemy()+0x12a> @ imm = #0x6
  4034e2: 9b06         	ldr	r3, [sp, #0x18]
  4034e4: 2202         	movs	r2, #0x2
  4034e6: f8c3 215c    	str.w	r2, [r3, #0x15c]
  4034ea: e029         	b	0x403540 <SurvivalStage::spawnEnemy()+0x180> @ imm = #0x52
  4034ec: 9b04         	ldr	r3, [sp, #0x10]
  4034ee: 2b02         	cmp	r3, #0x2
  4034f0: d10b         	bne	0x40350a <SurvivalStage::spawnEnemy()+0x14a> @ imm = #0x16
  4034f2: 9b03         	ldr	r3, [sp, #0xc]
  4034f4: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  4034f8: 6a9b         	ldr	r3, [r3, #0x28]
  4034fa: 4618         	mov	r0, r3
  4034fc: f190 fbb6    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x19076c
  403500: 4603         	mov	r3, r0
  403502: 2b00         	cmp	r3, #0x0
  403504: d001         	beq	0x40350a <SurvivalStage::spawnEnemy()+0x14a> @ imm = #0x2
  403506: 2301         	movs	r3, #0x1
  403508: e000         	b	0x40350c <SurvivalStage::spawnEnemy()+0x14c> @ imm = #0x0
  40350a: 2300         	movs	r3, #0x0
  40350c: 2b00         	cmp	r3, #0x0
  40350e: d017         	beq	0x403540 <SurvivalStage::spawnEnemy()+0x180> @ imm = #0x2e
  403510: 9b03         	ldr	r3, [sp, #0xc]
  403512: f8d3 4170    	ldr.w	r4, [r3, #0x170]
  403516: 466b         	mov	r3, sp
  403518: aa0a         	add	r2, sp, #0x28
  40351a: e892 0003    	ldm.w	r2, {r0, r1}
  40351e: e883 0003    	stm.w	r3, {r0, r1}
  403522: ab08         	add	r3, sp, #0x20
  403524: cb0c         	ldm	r3, {r2, r3}
  403526: 4620         	mov	r0, r4
  403528: f717 f87c    	bl	0x31a624 <EnemyManager::addWormDrone(cpVect)> @ imm = #-0xe8f08
  40352c: 4603         	mov	r3, r0
  40352e: 9307         	str	r3, [sp, #0x1c]
  403530: 9b07         	ldr	r3, [sp, #0x1c]
  403532: 2b00         	cmp	r3, #0x0
  403534: d003         	beq	0x40353e <SurvivalStage::spawnEnemy()+0x17e> @ imm = #0x6
  403536: 9b07         	ldr	r3, [sp, #0x1c]
  403538: 2202         	movs	r2, #0x2
  40353a: f8c3 215c    	str.w	r2, [r3, #0x15c]
  40353e: e7ff         	b	0x403540 <SurvivalStage::spawnEnemy()+0x180> @ imm = #-0x2
  403540: b00c         	add	sp, #0x30
  403542: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x403543); words below are literal-pool data ---
  403544: f3af 8000    	nop.w
  403548: 51ec         	str	r4, [r5, r7]
  40354a: 1eb8         	subs	r0, r7, #0x2
  40354c: eb85 4007    	<unknown>
  403550: 0000         	movs	r0, r0
  403552: 0000         	movs	r0, r0
  403554: 4000         	ands	r0, r0
  403556: 406f         	eors	r7, r5
  403558: 0000         	movs	r0, r0
  40355a: 0000         	movs	r0, r0
  40355c: 2000         	movs	r0, #0x0
  40355e: 409c         	lsls	r4, r3
  403560: 0000         	movs	r0, r0
  403562: 4e80         	ldr	r6, [pc, #0x200]        @ 0x403764 <SurvivalStage::updateSarge(float)+0xcc>
  403564: 4000         	ands	r0, r0
  403566: 451c         	cmp	r4, r3

// ==== SurvivalStage::onEnemyAdded
//      file offset 0x403568 (= ELF address; Ghidra 0x413568), 134 bytes, Thumb-2
  403568: b510         	push	{r4, lr}
  40356a: b084         	sub	sp, #0x10
  40356c: 9001         	str	r0, [sp, #0x4]
  40356e: 9100         	str	r1, [sp]
  403570: 9800         	ldr	r0, [sp]
  403572: f196 f9d9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1963b2
  403576: 4604         	mov	r4, r0
  403578: ab03         	add	r3, sp, #0xc
  40357a: 4618         	mov	r0, r3
  40357c: f386 ff3a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x386e74
  403580: aa02         	add	r2, sp, #0x8
  403582: ab03         	add	r3, sp, #0xc
  403584: 4610         	mov	r0, r2
  403586: 4621         	mov	r1, r4
  403588: 461a         	mov	r2, r3
  40358a: f3b3 fa69    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b34d2
  40358e: ab03         	add	r3, sp, #0xc
  403590: 4618         	mov	r0, r3
  403592: f386 ff33    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x386e66
  403596: 9b01         	ldr	r3, [sp, #0x4]
  403598: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40359c: f8d3 4100    	ldr.w	r4, [r3, #0x100]
  4035a0: aa03         	add	r2, sp, #0xc
  4035a2: ab02         	add	r3, sp, #0x8
  4035a4: 4610         	mov	r0, r2
  4035a6: 4619         	mov	r1, r3
  4035a8: f3b2 ff9e    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3b2f3c
  4035ac: ab03         	add	r3, sp, #0xc
  4035ae: 4620         	mov	r0, r4
  4035b0: 4619         	mov	r1, r3
  4035b2: f7ba f9fd    	bl	0x3bd9b0 <Radar::addAlert(std::string)> @ imm = #-0x45c06
  4035b6: ab03         	add	r3, sp, #0xc
  4035b8: 4618         	mov	r0, r3
  4035ba: f3b2 f9ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b2356
  4035be: ab02         	add	r3, sp, #0x8
  4035c0: 4618         	mov	r0, r3
  4035c2: f3b2 f9a7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b234e
  4035c6: e010         	b	0x4035ea <SurvivalStage::onEnemyAdded(cocos2d::CCObject*)+0x82> @ imm = #0x20
  4035c8: ab03         	add	r3, sp, #0xc
  4035ca: 4618         	mov	r0, r3
  4035cc: f386 ff16    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x386e2c
  4035d0: f384 fd6c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384ad8
  4035d4: ab03         	add	r3, sp, #0xc
  4035d6: 4618         	mov	r0, r3
  4035d8: f3b2 f99c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b2338
  4035dc: e7ff         	b	0x4035de <SurvivalStage::onEnemyAdded(cocos2d::CCObject*)+0x76> @ imm = #-0x2
  4035de: ab02         	add	r3, sp, #0x8
  4035e0: 4618         	mov	r0, r3
  4035e2: f3b2 f997    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b232e
  4035e6: f384 fd61    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x384ac2
  4035ea: b004         	add	sp, #0x10
  4035ec: bd10         	pop	{r4, pc}

// ==== SurvivalStage::onRetryGame
//      file offset 0x4035f0 (= ELF address; Ghidra 0x4135f0), 128 bytes, Thumb-2
  4035f0: b510         	push	{r4, lr}
  4035f2: b082         	sub	sp, #0x8
  4035f4: 9001         	str	r0, [sp, #0x4]
  4035f6: 9100         	str	r1, [sp]
  4035f8: 4c1b         	ldr	r4, [pc, #0x6c]         @ 0x403668 <SurvivalStage::onRetryGame(cocos2d::CCObject*)+0x78>
  4035fa: 447c         	add	r4, pc
  4035fc: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x40366c <SurvivalStage::onRetryGame(cocos2d::CCObject*)+0x7c>
  4035fe: 58e3         	ldr	r3, [r4, r3]
  403600: 681b         	ldr	r3, [r3]
  403602: 2204         	movs	r2, #0x4
  403604: 625a         	str	r2, [r3, #0x24]
  403606: 9b01         	ldr	r3, [sp, #0x4]
  403608: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40360c: 4618         	mov	r0, r3
  40360e: f717 fd35    	bl	0x31b07c <EnemyManager::killAllEnemies()> @ imm = #-0xe8596
  403612: 4b16         	ldr	r3, [pc, #0x58]         @ 0x40366c <SurvivalStage::onRetryGame(cocos2d::CCObject*)+0x7c>
  403614: 58e3         	ldr	r3, [r4, r3]
  403616: 681b         	ldr	r3, [r3]
  403618: 4618         	mov	r0, r3
  40361a: 2100         	movs	r1, #0x0
  40361c: f7e8 ff2c    	bl	0x3ec478 <SoldierManager::respawnPlayer(cocos2d::CCObject*)> @ imm = #-0x171a8
  403620: f7ce fe52    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #-0x3135c
  403624: 4603         	mov	r3, r0
  403626: 4618         	mov	r0, r3
  403628: f7cf f8c0    	bl	0x3d27ac <ScoreKeeper::clearScores()> @ imm = #-0x30e80
  40362c: 9b01         	ldr	r3, [sp, #0x4]
  40362e: 2200         	movs	r2, #0x0
  403630: f883 2150    	strb.w	r2, [r3, #0x150]
  403634: 9b01         	ldr	r3, [sp, #0x4]
  403636: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  40363a: 4618         	mov	r0, r3
  40363c: f018 fb62    	bl	0x41bd04 <WeaponManager::removeAllWeapons()> @ imm = #0x186c4
  403640: 9801         	ldr	r0, [sp, #0x4]
  403642: f7ff feb3    	bl	0x4033ac <SurvivalStage::resetSpawnTime()> @ imm = #-0x29a
  403646: 9b01         	ldr	r3, [sp, #0x4]
  403648: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40364c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  403650: 4618         	mov	r0, r3
  403652: f76b fab7    	bl	0x36ebc4 <MenuScreen::endRound()> @ imm = #-0x94a92
  403656: 9b01         	ldr	r3, [sp, #0x4]
  403658: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  40365c: 2200         	movs	r2, #0x0
  40365e: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  403662: b002         	add	sp, #0x8
  403664: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x403665); words below are literal-pool data ---
  403666: bf00         	nop
  403668: f40e 0052    	and	r0, lr, #0xd20000
  40366c: d910         	bls	0x403690 <SurvivalStage::onPlayerDead(cocos2d::CCObject*)+0x20> @ imm = #0x20
  40366e: ffff b500    	<unknown>

// ==== SurvivalStage::onPlayerDead
//      file offset 0x403670 (= ELF address; Ghidra 0x413670), 40 bytes, Thumb-2
  403670: b500         	push	{lr}
  403672: b083         	sub	sp, #0xc
  403674: 9001         	str	r0, [sp, #0x4]
  403676: 9100         	str	r1, [sp]
  403678: 9b01         	ldr	r3, [sp, #0x4]
  40367a: 4618         	mov	r0, r3
  40367c: 9900         	ldr	r1, [sp]
  40367e: f7f8 f9bb    	bl	0x3fb9f8 <Stage::onPlayerDead(cocos2d::CCObject*)> @ imm = #-0x7c8a
  403682: 9b01         	ldr	r3, [sp, #0x4]
  403684: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  403688: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  40368c: 4618         	mov	r0, r3
  40368e: f76b fa99    	bl	0x36ebc4 <MenuScreen::endRound()> @ imm = #-0x94ace
  403692: b003         	add	sp, #0xc
  403694: f85d fb04    	ldr	pc, [sp], #4

// ==== SurvivalStage::updateSarge
//      file offset 0x403698 (= ELF address; Ghidra 0x413698), 1636 bytes, Thumb-2
  403698: b5f0         	push	{r4, r5, r6, r7, lr}
  40369a: b0cf         	sub	sp, #0x13c
  40369c: ab0b         	add	r3, sp, #0x2c
  40369e: 6018         	str	r0, [r3]
  4036a0: ab0a         	add	r3, sp, #0x28
  4036a2: 6019         	str	r1, [r3]
  4036a4: 4c90         	ldr	r4, [pc, #0x240]        @ 0x4038e8 <SurvivalStage::updateSarge(float)+0x250>
  4036a6: 447c         	add	r4, pc
  4036a8: ab0b         	add	r3, sp, #0x2c
  4036aa: 681b         	ldr	r3, [r3]
  4036ac: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4036b0: 681b         	ldr	r3, [r3]
  4036b2: f503 73fa    	add.w	r3, r3, #0x1f4
  4036b6: 681b         	ldr	r3, [r3]
  4036b8: aa0b         	add	r2, sp, #0x2c
  4036ba: 6812         	ldr	r2, [r2]
  4036bc: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  4036c0: 4610         	mov	r0, r2
  4036c2: 4798         	blx	r3
  4036c4: 4603         	mov	r3, r0
  4036c6: 681a         	ldr	r2, [r3]
  4036c8: f502 721e    	add.w	r2, r2, #0x278
  4036cc: 6812         	ldr	r2, [r2]
  4036ce: 4618         	mov	r0, r3
  4036d0: 21c8         	movs	r1, #0xc8
  4036d2: 4790         	blx	r2
  4036d4: ab0b         	add	r3, sp, #0x2c
  4036d6: 681b         	ldr	r3, [r3]
  4036d8: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4036dc: 681b         	ldr	r3, [r3]
  4036de: f503 73fe    	add.w	r3, r3, #0x1fc
  4036e2: 681b         	ldr	r3, [r3]
  4036e4: aa0b         	add	r2, sp, #0x2c
  4036e6: 6812         	ldr	r2, [r2]
  4036e8: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  4036ec: 4610         	mov	r0, r2
  4036ee: 4798         	blx	r3
  4036f0: 4603         	mov	r3, r0
  4036f2: 681a         	ldr	r2, [r3]
  4036f4: f502 721e    	add.w	r2, r2, #0x278
  4036f8: 6812         	ldr	r2, [r2]
  4036fa: 4618         	mov	r0, r3
  4036fc: 21c8         	movs	r1, #0xc8
  4036fe: 4790         	blx	r2
  403700: ab0b         	add	r3, sp, #0x2c
  403702: 681b         	ldr	r3, [r3]
  403704: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403708: 681b         	ldr	r3, [r3]
  40370a: f503 7329    	add.w	r3, r3, #0x2a4
  40370e: 681b         	ldr	r3, [r3]
  403710: aa0b         	add	r2, sp, #0x2c
  403712: 6812         	ldr	r2, [r2]
  403714: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  403718: 4610         	mov	r0, r2
  40371a: f04f 0100    	mov.w	r1, #0x0
  40371e: f2c4 21c8    	movt	r1, #0x42c8
  403722: 4798         	blx	r3
  403724: ab0b         	add	r3, sp, #0x2c
  403726: 681b         	ldr	r3, [r3]
  403728: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40372c: 681b         	ldr	r3, [r3]
  40372e: f503 730c    	add.w	r3, r3, #0x230
  403732: 681d         	ldr	r5, [r3]
  403734: ab0b         	add	r3, sp, #0x2c
  403736: 681b         	ldr	r3, [r3]
  403738: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40373c: 461e         	mov	r6, r3
  40373e: ab1e         	add	r3, sp, #0x78
  403740: 4618         	mov	r0, r3
  403742: ed9f 0b61    	vldr	d0, [pc, #388]          @ 0x4038c8 <SurvivalStage::updateSarge(float)+0x230>
  403746: ed9f 1b62    	vldr	d1, [pc, #392]          @ 0x4038d0 <SurvivalStage::updateSarge(float)+0x238>
  40374a: f7fe fb6f    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1922
  40374e: 466b         	mov	r3, sp
  403750: aa20         	add	r2, sp, #0x80
  403752: e892 0003    	ldm.w	r2, {r0, r1}
  403756: e883 0003    	stm.w	r3, {r0, r1}
  40375a: ab1e         	add	r3, sp, #0x78
  40375c: cb0c         	ldm	r3, {r2, r3}
  40375e: 4630         	mov	r0, r6
  403760: 47a8         	blx	r5
  403762: ab0b         	add	r3, sp, #0x2c
  403764: 681b         	ldr	r3, [r3]
  403766: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  40376a: 2201         	movs	r2, #0x1
  40376c: f883 211c    	strb.w	r2, [r3, #0x11c]
  403770: ab0b         	add	r3, sp, #0x2c
  403772: 681b         	ldr	r3, [r3]
  403774: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403778: 681b         	ldr	r3, [r3]
  40377a: f503 73d0    	add.w	r3, r3, #0x1a0
  40377e: 681b         	ldr	r3, [r3]
  403780: aa0b         	add	r2, sp, #0x2c
  403782: 6812         	ldr	r2, [r2]
  403784: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  403788: 4610         	mov	r0, r2
  40378a: 4798         	blx	r3
  40378c: 4603         	mov	r3, r0
  40378e: 2b00         	cmp	r3, #0x0
  403790: d019         	beq	0x4037c6 <SurvivalStage::updateSarge(float)+0x12e> @ imm = #0x32
  403792: 4b56         	ldr	r3, [pc, #0x158]        @ 0x4038ec <SurvivalStage::updateSarge(float)+0x254>
  403794: 58e3         	ldr	r3, [r4, r3]
  403796: 681b         	ldr	r3, [r3]
  403798: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40379c: ed93 6b0c    	vldr	d6, [r3, #48]
  4037a0: ab0b         	add	r3, sp, #0x2c
  4037a2: 681b         	ldr	r3, [r3]
  4037a4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4037a8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4037ac: ed93 5b0c    	vldr	d5, [r3, #48]
  4037b0: ed9f 7b49    	vldr	d7, [pc, #292]          @ 0x4038d8 <SurvivalStage::updateSarge(float)+0x240>
  4037b4: ee35 7b07    	vadd.f64	d7, d5, d7
  4037b8: eeb4 6bc7    	vcmpe.f64	d6, d7
  4037bc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4037c0: d501         	bpl	0x4037c6 <SurvivalStage::updateSarge(float)+0x12e> @ imm = #0x2
  4037c2: 2301         	movs	r3, #0x1
  4037c4: e000         	b	0x4037c8 <SurvivalStage::updateSarge(float)+0x130> @ imm = #0x0
  4037c6: 2300         	movs	r3, #0x0
  4037c8: 2b00         	cmp	r3, #0x0
  4037ca: d00f         	beq	0x4037ec <SurvivalStage::updateSarge(float)+0x154> @ imm = #0x1e
  4037cc: ab0b         	add	r3, sp, #0x2c
  4037ce: 681b         	ldr	r3, [r3]
  4037d0: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4037d4: 681b         	ldr	r3, [r3]
  4037d6: f503 73f0    	add.w	r3, r3, #0x1e0
  4037da: 681b         	ldr	r3, [r3]
  4037dc: aa0b         	add	r2, sp, #0x2c
  4037de: 6812         	ldr	r2, [r2]
  4037e0: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  4037e4: 4610         	mov	r0, r2
  4037e6: 2100         	movs	r1, #0x0
  4037e8: 4798         	blx	r3
  4037ea: e00e         	b	0x40380a <SurvivalStage::updateSarge(float)+0x172> @ imm = #0x1c
  4037ec: ab0b         	add	r3, sp, #0x2c
  4037ee: 681b         	ldr	r3, [r3]
  4037f0: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4037f4: 681b         	ldr	r3, [r3]
  4037f6: f503 73f0    	add.w	r3, r3, #0x1e0
  4037fa: 681b         	ldr	r3, [r3]
  4037fc: aa0b         	add	r2, sp, #0x2c
  4037fe: 6812         	ldr	r2, [r2]
  403800: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  403804: 4610         	mov	r0, r2
  403806: 2101         	movs	r1, #0x1
  403808: 4798         	blx	r3
  40380a: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x4038ec <SurvivalStage::updateSarge(float)+0x254>
  40380c: 58e3         	ldr	r3, [r4, r3]
  40380e: 681b         	ldr	r3, [r3]
  403810: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  403814: ab22         	add	r3, sp, #0x88
  403816: 4618         	mov	r0, r3
  403818: ed9f 0b2b    	vldr	d0, [pc, #172]          @ 0x4038c8 <SurvivalStage::updateSarge(float)+0x230>
  40381c: ed9f 1b30    	vldr	d1, [pc, #192]          @ 0x4038e0 <SurvivalStage::updateSarge(float)+0x248>
  403820: f7fe fb04    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x19f8
  403824: ab26         	add	r3, sp, #0x98
  403826: ed95 4b0a    	vldr	d4, [r5, #40]
  40382a: ed95 5b0c    	vldr	d5, [r5, #48]
  40382e: ed9d 6b22    	vldr	d6, [sp, #136]
  403832: ed9d 7b24    	vldr	d7, [sp, #144]
  403836: 4618         	mov	r0, r3
  403838: eeb0 0b44    	vmov.f64	d0, d4
  40383c: eeb0 1b45    	vmov.f64	d1, d5
  403840: eeb0 2b46    	vmov.f64	d2, d6
  403844: eeb0 3b47    	vmov.f64	d3, d7
  403848: f7fe fb04    	bl	0x401e54 <StoreLayer::onPoints(cocos2d::CCObject*)+0x224> @ imm = #-0x19f8
  40384c: ab0b         	add	r3, sp, #0x2c
  40384e: 681b         	ldr	r3, [r3]
  403850: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403854: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  403858: aa16         	add	r2, sp, #0x58
  40385a: ed9d 4b26    	vldr	d4, [sp, #152]
  40385e: ed9d 5b28    	vldr	d5, [sp, #160]
  403862: ed93 6b0a    	vldr	d6, [r3, #40]
  403866: ed93 7b0c    	vldr	d7, [r3, #48]
  40386a: 4610         	mov	r0, r2
  40386c: eeb0 0b44    	vmov.f64	d0, d4
  403870: eeb0 1b45    	vmov.f64	d1, d5
  403874: eeb0 2b46    	vmov.f64	d2, d6
  403878: eeb0 3b47    	vmov.f64	d3, d7
  40387c: f7fe fb16    	bl	0x401eac <StoreLayer::onPoints(cocos2d::CCObject*)+0x27c> @ imm = #-0x19d4
  403880: ab16         	add	r3, sp, #0x58
  403882: cb0f         	ldm	r3, {r0, r1, r2, r3}
  403884: f2d3 fc18    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d3830
  403888: ec41 0b16    	vmov	d6, r0, r1
  40388c: ed9f 7b12    	vldr	d7, [pc, #72]           @ 0x4038d8 <SurvivalStage::updateSarge(float)+0x240>
  403890: eeb4 6bc7    	vcmpe.f64	d6, d7
  403894: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403898: dd30         	ble	0x4038fc <SurvivalStage::updateSarge(float)+0x264> @ imm = #0x60
  40389a: 4b14         	ldr	r3, [pc, #0x50]         @ 0x4038ec <SurvivalStage::updateSarge(float)+0x254>
  40389c: 58e3         	ldr	r3, [r4, r3]
  40389e: 681b         	ldr	r3, [r3]
  4038a0: 681b         	ldr	r3, [r3]
  4038a2: f503 7319    	add.w	r3, r3, #0x264
  4038a6: 681b         	ldr	r3, [r3]
  4038a8: 4a10         	ldr	r2, [pc, #0x40]         @ 0x4038ec <SurvivalStage::updateSarge(float)+0x254>
  4038aa: 58a2         	ldr	r2, [r4, r2]
  4038ac: 6812         	ldr	r2, [r2]
  4038ae: 4610         	mov	r0, r2
  4038b0: 4798         	blx	r3
  4038b2: 4603         	mov	r3, r0
  4038b4: f083 0301    	eor	r3, r3, #0x1
  4038b8: b2db         	uxtb	r3, r3
  4038ba: 2b00         	cmp	r3, #0x0
  4038bc: d01e         	beq	0x4038fc <SurvivalStage::updateSarge(float)+0x264> @ imm = #0x3c
  4038be: 2301         	movs	r3, #0x1
  4038c0: e01d         	b	0x4038fe <SurvivalStage::updateSarge(float)+0x266> @ imm = #0x3a
  4038c2: bf00         	nop
  4038c4: f3af 8000    	nop.w
  4038d0: 3333         	adds	r3, #0x33
  4038d2: 3333         	adds	r3, #0x33
  4038d4: 3333         	adds	r3, #0x33
  4038d6: 3fb3         	subs	r7, #0xb3
  4038d8: 0000         	movs	r0, r0
  4038da: 0000         	movs	r0, r0
  4038dc: 0000         	movs	r0, r0
  4038de: 4059         	eors	r1, r3
  4038e0: 0000         	movs	r0, r0
  4038e2: 0000         	movs	r0, r0
  4038e4: 0000         	movs	r0, r0
  4038e6: 4049         	eors	r1, r1
  4038e8: f362 0052    	bfi	r0, r2, #1, #18
  4038ec: d784         	bvc	0x4037f8 <SurvivalStage::updateSarge(float)+0x160> @ imm = #-0xf8
  4038ee: ffff fa35    	<unknown>
  4038f2: 3c8e         	subs	r4, #0x8e
  4038f4: 0000         	movs	r0, r0
  4038f6: 4334         	orrs	r4, r6
  4038f8: 0000         	movs	r0, r0
  4038fa: 43b4         	bics	r4, r6
  4038fc: 2300         	movs	r3, #0x0
  4038fe: 2b00         	cmp	r3, #0x0
  403900: d026         	beq	0x403950 <SurvivalStage::updateSarge(float)+0x2b8> @ imm = #0x4c
  403902: ab16         	add	r3, sp, #0x58
  403904: cb0f         	ldm	r3, {r0, r1, r2, r3}
  403906: f7fe fb9f    	bl	0x402048 <StoreLayer::onPoints(cocos2d::CCObject*)+0x418> @ imm = #-0x18c2
  40390a: ab0b         	add	r3, sp, #0x2c
  40390c: 681b         	ldr	r3, [r3]
  40390e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403912: 681b         	ldr	r3, [r3]
  403914: f503 730c    	add.w	r3, r3, #0x230
  403918: 681d         	ldr	r5, [r3]
  40391a: ab0b         	add	r3, sp, #0x2c
  40391c: 681b         	ldr	r3, [r3]
  40391e: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403922: 461e         	mov	r6, r3
  403924: ab2a         	add	r3, sp, #0xa8
  403926: ed9d 6b16    	vldr	d6, [sp, #88]
  40392a: ed9d 7b18    	vldr	d7, [sp, #96]
  40392e: 4618         	mov	r0, r3
  403930: eeb0 0b46    	vmov.f64	d0, d6
  403934: eeb0 1b47    	vmov.f64	d1, d7
  403938: f7fe fb2e    	bl	0x401f98 <StoreLayer::onPoints(cocos2d::CCObject*)+0x368> @ imm = #-0x19a4
  40393c: 466b         	mov	r3, sp
  40393e: aa2c         	add	r2, sp, #0xb0
  403940: e892 0003    	ldm.w	r2, {r0, r1}
  403944: e883 0003    	stm.w	r3, {r0, r1}
  403948: ab2a         	add	r3, sp, #0xa8
  40394a: cb0c         	ldm	r3, {r2, r3}
  40394c: 4630         	mov	r0, r6
  40394e: 47a8         	blx	r5
  403950: ab0b         	add	r3, sp, #0x2c
  403952: 681b         	ldr	r3, [r3]
  403954: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  403958: 2b00         	cmp	r3, #0x0
  40395a: f000 81c8    	beq.w	0x403cee <SurvivalStage::updateSarge(float)+0x656> @ imm = #0x390
  40395e: ab0b         	add	r3, sp, #0x2c
  403960: 681b         	ldr	r3, [r3]
  403962: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  403966: 681b         	ldr	r3, [r3]
  403968: f503 73d6    	add.w	r3, r3, #0x1ac
  40396c: 681b         	ldr	r3, [r3]
  40396e: aa0b         	add	r2, sp, #0x2c
  403970: 6812         	ldr	r2, [r2]
  403972: f8d2 2180    	ldr.w	r2, [r2, #0x180]
  403976: a92e         	add	r1, sp, #0xb8
  403978: 4608         	mov	r0, r1
  40397a: 4611         	mov	r1, r2
  40397c: 4798         	blx	r3
  40397e: ab0b         	add	r3, sp, #0x2c
  403980: 681b         	ldr	r3, [r3]
  403982: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403986: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40398a: aa1a         	add	r2, sp, #0x68
  40398c: ed9d 4b2e    	vldr	d4, [sp, #184]
  403990: ed9d 5b30    	vldr	d5, [sp, #192]
  403994: ed93 6b0a    	vldr	d6, [r3, #40]
  403998: ed93 7b0c    	vldr	d7, [r3, #48]
  40399c: 4610         	mov	r0, r2
  40399e: eeb0 0b44    	vmov.f64	d0, d4
  4039a2: eeb0 1b45    	vmov.f64	d1, d5
  4039a6: eeb0 2b46    	vmov.f64	d2, d6
  4039aa: eeb0 3b47    	vmov.f64	d3, d7
  4039ae: f7fe fa7d    	bl	0x401eac <StoreLayer::onPoints(cocos2d::CCObject*)+0x27c> @ imm = #-0x1b06
  4039b2: ab1a         	add	r3, sp, #0x68
  4039b4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  4039b6: f2d3 fb7f    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d36fe
  4039ba: ec41 0b17    	vmov	d7, r0, r1
  4039be: ab0d         	add	r3, sp, #0x34
  4039c0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  4039c4: edc3 7a00    	vstr	s15, [r3]
  4039c8: ab0b         	add	r3, sp, #0x2c
  4039ca: 681b         	ldr	r3, [r3]
  4039cc: ed93 7a5f    	vldr	s14, [r3, #380]
  4039d0: ed5f 7a37    	vldr	s15, [pc, #-220]        @ 0x4038f8 <SurvivalStage::updateSarge(float)+0x260>
  4039d4: eeb4 7ae7    	vcmpe.f32	s14, s15
  4039d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4039dc: dd0b         	ble	0x4039f6 <SurvivalStage::updateSarge(float)+0x35e> @ imm = #0x16
  4039de: ab0b         	add	r3, sp, #0x2c
  4039e0: 681b         	ldr	r3, [r3]
  4039e2: ed93 7a5f    	vldr	s14, [r3, #380]
  4039e6: ed5f 7a3c    	vldr	s15, [pc, #-240]        @ 0x4038f8 <SurvivalStage::updateSarge(float)+0x260>
  4039ea: ee77 7a67    	vsub.f32	s15, s14, s15
  4039ee: ab0b         	add	r3, sp, #0x2c
  4039f0: 681b         	ldr	r3, [r3]
  4039f2: edc3 7a5f    	vstr	s15, [r3, #380]
  4039f6: ab0b         	add	r3, sp, #0x2c
  4039f8: 681b         	ldr	r3, [r3]
  4039fa: edd3 7a5f    	vldr	s15, [r3, #380]
  4039fe: eef5 7ac0    	vcmpe.f32	s15, #0
  403a02: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403a06: d50b         	bpl	0x403a20 <SurvivalStage::updateSarge(float)+0x388> @ imm = #0x16
  403a08: ab0b         	add	r3, sp, #0x2c
  403a0a: 681b         	ldr	r3, [r3]
  403a0c: ed93 7a5f    	vldr	s14, [r3, #380]
  403a10: ed5f 7a47    	vldr	s15, [pc, #-284]        @ 0x4038f8 <SurvivalStage::updateSarge(float)+0x260>
  403a14: ee77 7a27    	vadd.f32	s15, s14, s15
  403a18: ab0b         	add	r3, sp, #0x2c
  403a1a: 681b         	ldr	r3, [r3]
  403a1c: edc3 7a5f    	vstr	s15, [r3, #380]
  403a20: ab0e         	add	r3, sp, #0x38
  403a22: f04f 527e    	mov.w	r2, #0x3f800000
  403a26: 601a         	str	r2, [r3]
  403a28: ab0b         	add	r3, sp, #0x2c
  403a2a: 681b         	ldr	r3, [r3]
  403a2c: ed93 7a5f    	vldr	s14, [r3, #380]
  403a30: ed5f 7a51    	vldr	s15, [pc, #-324]        @ 0x4038f0 <SurvivalStage::updateSarge(float)+0x258>
  403a34: ee67 7a27    	vmul.f32	s15, s14, s15
  403a38: edcd 7a0f    	vstr	s15, [sp, #60]
  403a3c: ab0b         	add	r3, sp, #0x2c
  403a3e: 681b         	ldr	r3, [r3]
  403a40: ed93 7a5f    	vldr	s14, [r3, #380]
  403a44: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  403a48: ee37 7a27    	vadd.f32	s14, s14, s15
  403a4c: ed5f 7a58    	vldr	s15, [pc, #-352]        @ 0x4038f0 <SurvivalStage::updateSarge(float)+0x258>
  403a50: ee67 7a27    	vmul.f32	s15, s14, s15
  403a54: edcd 7a10    	vstr	s15, [sp, #64]
  403a58: eddd 7a0f    	vldr	s15, [sp, #60]
  403a5c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  403a60: ec51 0b17    	vmov	r0, r1, d7
  403a64: f6d2 ea50    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x12db60
  403a68: 4606         	mov	r6, r0
  403a6a: 460f         	mov	r7, r1
  403a6c: eddd 7a0f    	vldr	s15, [sp, #60]
  403a70: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  403a74: ec51 0b17    	vmov	r0, r1, d7
  403a78: f6d2 ea4c    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x12db68
  403a7c: 4602         	mov	r2, r0
  403a7e: 460b         	mov	r3, r1
  403a80: ec43 2b16    	vmov	d6, r2, r3
  403a84: eeb1 7b46    	vneg.f64	d7, d6
  403a88: ab32         	add	r3, sp, #0xc8
  403a8a: 4618         	mov	r0, r3
  403a8c: ec47 6b10    	vmov	d0, r6, r7
  403a90: eeb0 1b47    	vmov.f64	d1, d7
  403a94: f7fe f9ca    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1c6c
  403a98: ab36         	add	r3, sp, #0xd8
  403a9a: ed9d 6b1a    	vldr	d6, [sp, #104]
  403a9e: ed9d 7b1c    	vldr	d7, [sp, #112]
  403aa2: 4618         	mov	r0, r3
  403aa4: eeb0 0b46    	vmov.f64	d0, d6
  403aa8: eeb0 1b47    	vmov.f64	d1, d7
  403aac: f7fe fa74    	bl	0x401f98 <StoreLayer::onPoints(cocos2d::CCObject*)+0x368> @ imm = #-0x1b18
  403ab0: ed9d 4b32    	vldr	d4, [sp, #200]
  403ab4: ed9d 5b34    	vldr	d5, [sp, #208]
  403ab8: ed9d 6b36    	vldr	d6, [sp, #216]
  403abc: ed9d 7b38    	vldr	d7, [sp, #224]
  403ac0: eeb0 0b44    	vmov.f64	d0, d4
  403ac4: eeb0 1b45    	vmov.f64	d1, d5
  403ac8: eeb0 2b46    	vmov.f64	d2, d6
  403acc: eeb0 3b47    	vmov.f64	d3, d7
  403ad0: f7fe fa3e    	bl	0x401f50 <StoreLayer::onPoints(cocos2d::CCObject*)+0x320> @ imm = #-0x1b84
  403ad4: eeb0 7b40    	vmov.f64	d7, d0
  403ad8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  403adc: edcd 7a11    	vstr	s15, [sp, #68]
  403ae0: eddd 7a10    	vldr	s15, [sp, #64]
  403ae4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  403ae8: ec51 0b17    	vmov	r0, r1, d7
  403aec: f6d2 ea0c    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x12dbe8
  403af0: 4606         	mov	r6, r0
  403af2: 460f         	mov	r7, r1
  403af4: eddd 7a10    	vldr	s15, [sp, #64]
  403af8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  403afc: ec51 0b17    	vmov	r0, r1, d7
  403b00: f6d2 ea08    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x12dbf0
  403b04: 4602         	mov	r2, r0
  403b06: 460b         	mov	r3, r1
  403b08: ec43 2b16    	vmov	d6, r2, r3
  403b0c: eeb1 7b46    	vneg.f64	d7, d6
  403b10: ab3a         	add	r3, sp, #0xe8
  403b12: 4618         	mov	r0, r3
  403b14: ec47 6b10    	vmov	d0, r6, r7
  403b18: eeb0 1b47    	vmov.f64	d1, d7
  403b1c: f7fe f986    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1cf4
  403b20: ab3e         	add	r3, sp, #0xf8
  403b22: ed9d 6b1a    	vldr	d6, [sp, #104]
  403b26: ed9d 7b1c    	vldr	d7, [sp, #112]
  403b2a: 4618         	mov	r0, r3
  403b2c: eeb0 0b46    	vmov.f64	d0, d6
  403b30: eeb0 1b47    	vmov.f64	d1, d7
  403b34: f7fe fa30    	bl	0x401f98 <StoreLayer::onPoints(cocos2d::CCObject*)+0x368> @ imm = #-0x1ba0
  403b38: ed9d 4b3a    	vldr	d4, [sp, #232]
  403b3c: ed9d 5b3c    	vldr	d5, [sp, #240]
  403b40: ed9d 6b3e    	vldr	d6, [sp, #248]
  403b44: ed9d 7b40    	vldr	d7, [sp, #256]
  403b48: eeb0 0b44    	vmov.f64	d0, d4
  403b4c: eeb0 1b45    	vmov.f64	d1, d5
  403b50: eeb0 2b46    	vmov.f64	d2, d6
  403b54: eeb0 3b47    	vmov.f64	d3, d7
  403b58: f7fe f9fa    	bl	0x401f50 <StoreLayer::onPoints(cocos2d::CCObject*)+0x320> @ imm = #-0x1c0c
  403b5c: eeb0 7b40    	vmov.f64	d7, d0
  403b60: eef7 7bc7    	vcvt.f32.f64	s15, d7
  403b64: edcd 7a12    	vstr	s15, [sp, #72]
  403b68: ed9d 7a12    	vldr	s14, [sp, #72]
  403b6c: eddd 7a11    	vldr	s15, [sp, #68]
  403b70: eeb4 7ae7    	vcmpe.f32	s14, s15
  403b74: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403b78: dd02         	ble	0x403b80 <SurvivalStage::updateSarge(float)+0x4e8> @ imm = #0x4
  403b7a: f04f 537e    	mov.w	r3, #0x3f800000
  403b7e: e003         	b	0x403b88 <SurvivalStage::updateSarge(float)+0x4f0> @ imm = #0x6
  403b80: f04f 0300    	mov.w	r3, #0x0
  403b84: f6cb 7380    	movt	r3, #0xbf80
  403b88: 9313         	str	r3, [sp, #0x4c]
  403b8a: ed9d 7a11    	vldr	s14, [sp, #68]
  403b8e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  403b92: ee37 7a27    	vadd.f32	s14, s14, s15
  403b96: ed5f 7aa9    	vldr	s15, [pc, #-676]        @ 0x4038f4 <SurvivalStage::updateSarge(float)+0x25c>
  403b9a: ee67 7a27    	vmul.f32	s15, s14, s15
  403b9e: ed1f 7aaa    	vldr	s14, [pc, #-680]        @ 0x4038f8 <SurvivalStage::updateSarge(float)+0x260>
  403ba2: ee77 7a67    	vsub.f32	s15, s14, s15
  403ba6: eefd 7ae7    	vcvt.s32.f32	s15, s15
  403baa: ee17 3a90    	vmov	r3, s15
  403bae: 9314         	str	r3, [sp, #0x50]
  403bb0: 9a14         	ldr	r2, [sp, #0x50]
  403bb2: f246 6367    	movw	r3, #0x6667
  403bb6: f2c6 6366    	movt	r3, #0x6666
  403bba: fb83 1302    	smull	r1, r3, r3, r2
  403bbe: 10d9         	asrs	r1, r3, #0x3
  403bc0: 17d3         	asrs	r3, r2, #0x1f
  403bc2: 1acb         	subs	r3, r1, r3
  403bc4: 1c5a         	adds	r2, r3, #0x1
  403bc6: ab0c         	add	r3, sp, #0x30
  403bc8: ee06 2a10    	vmov	s12, r2
  403bcc: eef8 7ac6    	vcvt.f32.s32	s15, s12
  403bd0: edc3 7a00    	vstr	s15, [r3]
  403bd4: 9b14         	ldr	r3, [sp, #0x50]
  403bd6: ee06 3a90    	vmov	s13, r3
  403bda: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  403bde: ab0e         	add	r3, sp, #0x38
  403be0: edd3 7a00    	vldr	s15, [r3]
  403be4: eeb4 7ae7    	vcmpe.f32	s14, s15
  403be8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403bec: d503         	bpl	0x403bf6 <SurvivalStage::updateSarge(float)+0x55e> @ imm = #0x6
  403bee: ab0c         	add	r3, sp, #0x30
  403bf0: f04f 0200    	mov.w	r2, #0x0
  403bf4: 601a         	str	r2, [r3]
  403bf6: ab0b         	add	r3, sp, #0x2c
  403bf8: 681b         	ldr	r3, [r3]
  403bfa: ed93 7a5f    	vldr	s14, [r3, #380]
  403bfe: ab0c         	add	r3, sp, #0x30
  403c00: eddd 6a13    	vldr	s13, [sp, #76]
  403c04: edd3 7a00    	vldr	s15, [r3]
  403c08: ee66 7aa7    	vmul.f32	s15, s13, s15
  403c0c: ee77 7a27    	vadd.f32	s15, s14, s15
  403c10: ab0b         	add	r3, sp, #0x2c
  403c12: 681b         	ldr	r3, [r3]
  403c14: edc3 7a5f    	vstr	s15, [r3, #380]
  403c18: ab0b         	add	r3, sp, #0x2c
  403c1a: 681b         	ldr	r3, [r3]
  403c1c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403c20: 681b         	ldr	r3, [r3]
  403c22: f503 730e    	add.w	r3, r3, #0x238
  403c26: 681b         	ldr	r3, [r3]
  403c28: aa0b         	add	r2, sp, #0x2c
  403c2a: 6812         	ldr	r2, [r2]
  403c2c: f8d2 116c    	ldr.w	r1, [r2, #0x16c]
  403c30: aa0b         	add	r2, sp, #0x2c
  403c32: 6812         	ldr	r2, [r2]
  403c34: f8d2 217c    	ldr.w	r2, [r2, #0x17c]
  403c38: 4608         	mov	r0, r1
  403c3a: 4611         	mov	r1, r2
  403c3c: 4798         	blx	r3
  403c3e: ab0d         	add	r3, sp, #0x34
  403c40: ed93 7a00    	vldr	s14, [r3]
  403c44: eddf 7a2b    	vldr	s15, [pc, #172]         @ 0x403cf4 <SurvivalStage::updateSarge(float)+0x65c>
  403c48: eeb4 7ae7    	vcmpe.f32	s14, s15
  403c4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403c50: d400         	bmi	0x403c54 <SurvivalStage::updateSarge(float)+0x5bc> @ imm = #0x0
  403c52: e04c         	b	0x403cee <SurvivalStage::updateSarge(float)+0x656> @ imm = #0x98
  403c54: ab0b         	add	r3, sp, #0x2c
  403c56: 681b         	ldr	r3, [r3]
  403c58: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  403c5c: 2b03         	cmp	r3, #0x3
  403c5e: d146         	bne	0x403cee <SurvivalStage::updateSarge(float)+0x656> @ imm = #0x8c
  403c60: 4b25         	ldr	r3, [pc, #0x94]         @ 0x403cf8 <SurvivalStage::updateSarge(float)+0x660>
  403c62: 58e3         	ldr	r3, [r4, r3]
  403c64: 681e         	ldr	r6, [r3]
  403c66: ab0b         	add	r3, sp, #0x2c
  403c68: 681b         	ldr	r3, [r3]
  403c6a: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403c6e: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  403c72: ab0b         	add	r3, sp, #0x2c
  403c74: 681b         	ldr	r3, [r3]
  403c76: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  403c7a: 681b         	ldr	r3, [r3]
  403c7c: f503 73d6    	add.w	r3, r3, #0x1ac
  403c80: 681b         	ldr	r3, [r3]
  403c82: aa0b         	add	r2, sp, #0x2c
  403c84: 6812         	ldr	r2, [r2]
  403c86: f8d2 2180    	ldr.w	r2, [r2, #0x180]
  403c8a: a942         	add	r1, sp, #0x108
  403c8c: 4608         	mov	r0, r1
  403c8e: 4611         	mov	r1, r2
  403c90: 4798         	blx	r3
  403c92: ad02         	add	r5, sp, #0x8
  403c94: ab42         	add	r3, sp, #0x108
  403c96: cb0f         	ldm	r3, {r0, r1, r2, r3}
  403c98: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  403c9c: f44f 7380    	mov.w	r3, #0x100
  403ca0: 9306         	str	r3, [sp, #0x18]
  403ca2: 2300         	movs	r3, #0x0
  403ca4: 9307         	str	r3, [sp, #0x1c]
  403ca6: ab46         	add	r3, sp, #0x118
  403ca8: 9308         	str	r3, [sp, #0x20]
  403caa: 466b         	mov	r3, sp
  403cac: f104 0230    	add.w	r2, r4, #0x30
  403cb0: e892 0003    	ldm.w	r2, {r0, r1}
  403cb4: e883 0003    	stm.w	r3, {r0, r1}
  403cb8: f104 0328    	add.w	r3, r4, #0x28
  403cbc: cb0c         	ldm	r3, {r2, r3}
  403cbe: 4630         	mov	r0, r6
  403cc0: f2d2 f94a    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x2d2294
  403cc4: 4603         	mov	r3, r0
  403cc6: 9315         	str	r3, [sp, #0x54]
  403cc8: 9b15         	ldr	r3, [sp, #0x54]
  403cca: 2b00         	cmp	r3, #0x0
  403ccc: d10f         	bne	0x403cee <SurvivalStage::updateSarge(float)+0x656> @ imm = #0x1e
  403cce: ab0b         	add	r3, sp, #0x2c
  403cd0: 681b         	ldr	r3, [r3]
  403cd2: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403cd6: 681b         	ldr	r3, [r3]
  403cd8: f503 7310    	add.w	r3, r3, #0x240
  403cdc: 681b         	ldr	r3, [r3]
  403cde: aa0b         	add	r2, sp, #0x2c
  403ce0: 6812         	ldr	r2, [r2]
  403ce2: f8d2 116c    	ldr.w	r1, [r2, #0x16c]
  403ce6: aa0a         	add	r2, sp, #0x28
  403ce8: 4608         	mov	r0, r1
  403cea: 6811         	ldr	r1, [r2]
  403cec: 4798         	blx	r3
  403cee: b04f         	add	sp, #0x13c
  403cf0: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x403cf1); words below are literal-pool data ---
  403cf2: bf00         	nop
  403cf4: 0000         	movs	r0, r0
  403cf6: 43fa         	mvns	r2, r7
  403cf8: da00         	bge	0x403cfc <SurvivalStage::updateSarge(float)+0x664> @ imm = #0x0
  403cfa: ffff f3af    	<unknown>

// ==== SurvivalStage::updateStep
//      file offset 0x403d00 (= ELF address; Ghidra 0x413d00), 352 bytes, Thumb-2
  403d00: b530         	push	{r4, r5, lr}
  403d02: b087         	sub	sp, #0x1c
  403d04: 9005         	str	r0, [sp, #0x14]
  403d06: 9104         	str	r1, [sp, #0x10]
  403d08: 4c51         	ldr	r4, [pc, #0x144]        @ 0x403e50 <SurvivalStage::updateStep(float)+0x150>
  403d0a: 447c         	add	r4, pc
  403d0c: 9b05         	ldr	r3, [sp, #0x14]
  403d0e: 4618         	mov	r0, r3
  403d10: 9904         	ldr	r1, [sp, #0x10]
  403d12: f7f9 f931    	bl	0x3fcf78 <Stage::updateStep(float)> @ imm = #-0x6d9e
  403d16: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x403e54 <SurvivalStage::updateStep(float)+0x154>
  403d18: 58e3         	ldr	r3, [r4, r3]
  403d1a: 681b         	ldr	r3, [r3]
  403d1c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  403d20: ed93 6b0a    	vldr	d6, [r3, #40]
  403d24: ed9f 7b46    	vldr	d7, [pc, #280]          @ 0x403e40 <SurvivalStage::updateStep(float)+0x140>
  403d28: eeb4 6bc7    	vcmpe.f64	d6, d7
  403d2c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403d30: d518         	bpl	0x403d64 <SurvivalStage::updateStep(float)+0x64> @ imm = #0x30
  403d32: 4b48         	ldr	r3, [pc, #0x120]        @ 0x403e54 <SurvivalStage::updateStep(float)+0x154>
  403d34: 58e3         	ldr	r3, [r4, r3]
  403d36: 681b         	ldr	r3, [r3]
  403d38: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  403d3c: 4b45         	ldr	r3, [pc, #0x114]        @ 0x403e54 <SurvivalStage::updateStep(float)+0x154>
  403d3e: 58e3         	ldr	r3, [r4, r3]
  403d40: 681b         	ldr	r3, [r3]
  403d42: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  403d46: ed93 7b0c    	vldr	d7, [r3, #48]
  403d4a: 466b         	mov	r3, sp
  403d4c: 4618         	mov	r0, r3
  403d4e: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x403e40 <SurvivalStage::updateStep(float)+0x140>
  403d52: eeb0 1b47    	vmov.f64	d1, d7
  403d56: f7fe f869    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1f2e
  403d5a: 3528         	adds	r5, #0x28
  403d5c: 466b         	mov	r3, sp
  403d5e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  403d60: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  403d64: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x403e54 <SurvivalStage::updateStep(float)+0x154>
  403d66: 58e3         	ldr	r3, [r4, r3]
  403d68: 681b         	ldr	r3, [r3]
  403d6a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  403d6e: ed93 6b0a    	vldr	d6, [r3, #40]
  403d72: ed9f 7b35    	vldr	d7, [pc, #212]          @ 0x403e48 <SurvivalStage::updateStep(float)+0x148>
  403d76: eeb4 6bc7    	vcmpe.f64	d6, d7
  403d7a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403d7e: dd18         	ble	0x403db2 <SurvivalStage::updateStep(float)+0xb2> @ imm = #0x30
  403d80: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x403e54 <SurvivalStage::updateStep(float)+0x154>
  403d82: 58e3         	ldr	r3, [r4, r3]
  403d84: 681b         	ldr	r3, [r3]
  403d86: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  403d8a: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x403e54 <SurvivalStage::updateStep(float)+0x154>
  403d8c: 58e3         	ldr	r3, [r4, r3]
  403d8e: 681b         	ldr	r3, [r3]
  403d90: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  403d94: ed93 7b0c    	vldr	d7, [r3, #48]
  403d98: 466b         	mov	r3, sp
  403d9a: 4618         	mov	r0, r3
  403d9c: ed9f 0b2a    	vldr	d0, [pc, #168]          @ 0x403e48 <SurvivalStage::updateStep(float)+0x148>
  403da0: eeb0 1b47    	vmov.f64	d1, d7
  403da4: f7fe f842    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x1f7c
  403da8: 3528         	adds	r5, #0x28
  403daa: 466b         	mov	r3, sp
  403dac: cb0f         	ldm	r3, {r0, r1, r2, r3}
  403dae: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  403db2: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x403e58 <SurvivalStage::updateStep(float)+0x158>
  403db4: 58e3         	ldr	r3, [r4, r3]
  403db6: 681b         	ldr	r3, [r3]
  403db8: 6a5b         	ldr	r3, [r3, #0x24]
  403dba: 2b00         	cmp	r3, #0x0
  403dbc: dc19         	bgt	0x403df2 <SurvivalStage::updateStep(float)+0xf2> @ imm = #0x32
  403dbe: 9b05         	ldr	r3, [sp, #0x14]
  403dc0: f893 3150    	ldrb.w	r3, [r3, #0x150]
  403dc4: f083 0301    	eor	r3, r3, #0x1
  403dc8: b2db         	uxtb	r3, r3
  403dca: 2b00         	cmp	r3, #0x0
  403dcc: d011         	beq	0x403df2 <SurvivalStage::updateStep(float)+0xf2> @ imm = #0x22
  403dce: 9b05         	ldr	r3, [sp, #0x14]
  403dd0: 2201         	movs	r2, #0x1
  403dd2: f883 2150    	strb.w	r2, [r3, #0x150]
  403dd6: 9b05         	ldr	r3, [sp, #0x14]
  403dd8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  403ddc: 2201         	movs	r2, #0x1
  403dde: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  403de2: 9b05         	ldr	r3, [sp, #0x14]
  403de4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  403de8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  403dec: 4618         	mov	r0, r3
  403dee: f76b fc49    	bl	0x36f684 <MenuScreen::endSurvival()> @ imm = #-0x9476e
  403df2: 4b1a         	ldr	r3, [pc, #0x68]         @ 0x403e5c <SurvivalStage::updateStep(float)+0x15c>
  403df4: 58e3         	ldr	r3, [r4, r3]
  403df6: 781b         	ldrb	r3, [r3]
  403df8: f083 0301    	eor	r3, r3, #0x1
  403dfc: b2db         	uxtb	r3, r3
  403dfe: 2b00         	cmp	r3, #0x0
  403e00: d01b         	beq	0x403e3a <SurvivalStage::updateStep(float)+0x13a> @ imm = #0x36
  403e02: 9b05         	ldr	r3, [sp, #0x14]
  403e04: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  403e08: 681b         	ldr	r3, [r3]
  403e0a: f503 73ee    	add.w	r3, r3, #0x1dc
  403e0e: 681b         	ldr	r3, [r3]
  403e10: 9a05         	ldr	r2, [sp, #0x14]
  403e12: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  403e16: 4610         	mov	r0, r2
  403e18: 9904         	ldr	r1, [sp, #0x10]
  403e1a: 4798         	blx	r3
  403e1c: 9805         	ldr	r0, [sp, #0x14]
  403e1e: 9904         	ldr	r1, [sp, #0x10]
  403e20: f7ff fc3a    	bl	0x403698 <SurvivalStage::updateSarge(float)> @ imm = #-0x78c
  403e24: 9b05         	ldr	r3, [sp, #0x14]
  403e26: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  403e2a: 4618         	mov	r0, r3
  403e2c: 9904         	ldr	r1, [sp, #0x10]
  403e2e: f715 fc85    	bl	0x31973c <EnemyManager::updateStep(float)> @ imm = #-0xea6f6
  403e32: 9805         	ldr	r0, [sp, #0x14]
  403e34: 9904         	ldr	r1, [sp, #0x10]
  403e36: f000 f9c7    	bl	0x4041c8 <SurvivalStage::doLesson(float)> @ imm = #0x38e
  403e3a: b007         	add	sp, #0x1c
  403e3c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x403e3d); words below are literal-pool data ---
  403e3e: bf00         	nop
  403e40: 0000         	movs	r0, r0
  403e42: 0000         	movs	r0, r0
  403e44: 0000         	movs	r0, r0
  403e46: 4059         	eors	r1, r3
  403e48: 0000         	movs	r0, r0
  403e4a: 0000         	movs	r0, r0
  403e4c: 2400         	movs	r4, #0x0
  403e4e: 40a8         	lsls	r0, r5
  403e50: ecfe 0052    	ldcl	p0, c0, [lr], #328
  403e54: d784         	bvc	0x403d60 <SurvivalStage::updateStep(float)+0x60> @ imm = #-0xf8
  403e56: ffff d910    	vqshrn.u64	d29, q0, #0x1
  403e5a: ffff db18    	<unknown>
  403e5e: ffff b570    	<unknown>

// ==== SurvivalStage::playRound
//      file offset 0x403e60 (= ELF address; Ghidra 0x413e60), 868 bytes, Thumb-2
  403e60: b570         	push	{r4, r5, r6, lr}
  403e62: b09c         	sub	sp, #0x70
  403e64: 9003         	str	r0, [sp, #0xc]
  403e66: 9102         	str	r1, [sp, #0x8]
  403e68: 4c52         	ldr	r4, [pc, #0x148]        @ 0x403fb4 <SurvivalStage::playRound(float)+0x154>
  403e6a: 447c         	add	r4, pc
  403e6c: 9b03         	ldr	r3, [sp, #0xc]
  403e6e: ed93 7a63    	vldr	s14, [r3, #396]
  403e72: eddd 7a02    	vldr	s15, [sp, #8]
  403e76: ee77 7a27    	vadd.f32	s15, s14, s15
  403e7a: 9b03         	ldr	r3, [sp, #0xc]
  403e7c: edc3 7a63    	vstr	s15, [r3, #396]
  403e80: 9b03         	ldr	r3, [sp, #0xc]
  403e82: ed93 7a64    	vldr	s14, [r3, #400]
  403e86: eddd 7a02    	vldr	s15, [sp, #8]
  403e8a: ee77 7a27    	vadd.f32	s15, s14, s15
  403e8e: 9b03         	ldr	r3, [sp, #0xc]
  403e90: edc3 7a64    	vstr	s15, [r3, #400]
  403e94: 9b03         	ldr	r3, [sp, #0xc]
  403e96: ed93 7a64    	vldr	s14, [r3, #400]
  403e9a: eddf 7a45    	vldr	s15, [pc, #276]         @ 0x403fb0 <SurvivalStage::playRound(float)+0x150>
  403e9e: eeb4 7ae7    	vcmpe.f32	s14, s15
  403ea2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403ea6: dd4e         	ble	0x403f46 <SurvivalStage::playRound(float)+0xe6> @ imm = #0x9c
  403ea8: 9b03         	ldr	r3, [sp, #0xc]
  403eaa: f04f 0200    	mov.w	r2, #0x0
  403eae: f8c3 2190    	str.w	r2, [r3, #0x190]
  403eb2: f013 fd67    	bl	0x417984 <WeaponFactory::sharedWeaponFactory()> @ imm = #0x13ace
  403eb6: 4603         	mov	r3, r0
  403eb8: 4618         	mov	r0, r3
  403eba: 2102         	movs	r1, #0x2
  403ebc: f014 fc1e    	bl	0x4186fc <WeaponFactory::createWeaponFromAmmoType(ItemType)> @ imm = #0x1483c
  403ec0: 4603         	mov	r3, r0
  403ec2: 9306         	str	r3, [sp, #0x18]
  403ec4: 9b06         	ldr	r3, [sp, #0x18]
  403ec6: 681b         	ldr	r3, [r3]
  403ec8: f503 7300    	add.w	r3, r3, #0x200
  403ecc: 681d         	ldr	r5, [r3]
  403ece: 4b3a         	ldr	r3, [pc, #0xe8]         @ 0x403fb8 <SurvivalStage::playRound(float)+0x158>
  403ed0: 58e3         	ldr	r3, [r4, r3]
  403ed2: 681b         	ldr	r3, [r3]
  403ed4: 681b         	ldr	r3, [r3]
  403ed6: f503 73e0    	add.w	r3, r3, #0x1c0
  403eda: 681b         	ldr	r3, [r3]
  403edc: 4a36         	ldr	r2, [pc, #0xd8]         @ 0x403fb8 <SurvivalStage::playRound(float)+0x158>
  403ede: 58a2         	ldr	r2, [r4, r2]
  403ee0: 6812         	ldr	r2, [r2]
  403ee2: a918         	add	r1, sp, #0x60
  403ee4: 4608         	mov	r0, r1
  403ee6: 4611         	mov	r1, r2
  403ee8: 4798         	blx	r3
  403eea: ab18         	add	r3, sp, #0x60
  403eec: 9806         	ldr	r0, [sp, #0x18]
  403eee: 4619         	mov	r1, r3
  403ef0: 47a8         	blx	r5
  403ef2: ab18         	add	r3, sp, #0x60
  403ef4: 4618         	mov	r0, r3
  403ef6: f3b1 fd0d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b1a1a
  403efa: 9b06         	ldr	r3, [sp, #0x18]
  403efc: 681b         	ldr	r3, [r3]
  403efe: 334c         	adds	r3, #0x4c
  403f00: 681d         	ldr	r5, [r3]
  403f02: 9e06         	ldr	r6, [sp, #0x18]
  403f04: ab18         	add	r3, sp, #0x60
  403f06: 4618         	mov	r0, r3
  403f08: f44f 4100    	mov.w	r1, #0x8000
  403f0c: f2c4 41bb    	movt	r1, #0x44bb
  403f10: f44f 4200    	mov.w	r2, #0x8000
  403f14: f2c4 42a2    	movt	r2, #0x44a2
  403f18: f18e feea    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x18edd4
  403f1c: ab18         	add	r3, sp, #0x60
  403f1e: 4630         	mov	r0, r6
  403f20: 4619         	mov	r1, r3
  403f22: 47a8         	blx	r5
  403f24: 9b06         	ldr	r3, [sp, #0x18]
  403f26: 681b         	ldr	r3, [r3]
  403f28: f503 7322    	add.w	r3, r3, #0x288
  403f2c: 681b         	ldr	r3, [r3]
  403f2e: 9806         	ldr	r0, [sp, #0x18]
  403f30: 210a         	movs	r1, #0xa
  403f32: 4798         	blx	r3
  403f34: 9b03         	ldr	r3, [sp, #0xc]
  403f36: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  403f3a: 4618         	mov	r0, r3
  403f3c: 9906         	ldr	r1, [sp, #0x18]
  403f3e: f016 fd2b    	bl	0x41a998 <WeaponManager::addItem(Item*)> @ imm = #0x16a56
  403f42: 2300         	movs	r3, #0x0
  403f44: 9306         	str	r3, [sp, #0x18]
  403f46: 9b03         	ldr	r3, [sp, #0xc]
  403f48: ed93 7a63    	vldr	s14, [r3, #396]
  403f4c: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  403f50: eeb4 7ae7    	vcmpe.f32	s14, s15
  403f54: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403f58: dd0e         	ble	0x403f78 <SurvivalStage::playRound(float)+0x118> @ imm = #0x1c
  403f5a: 9b03         	ldr	r3, [sp, #0xc]
  403f5c: f04f 0200    	mov.w	r2, #0x0
  403f60: f8c3 218c    	str.w	r2, [r3, #0x18c]
  403f64: 9b03         	ldr	r3, [sp, #0xc]
  403f66: ed93 7a5e    	vldr	s14, [r3, #376]
  403f6a: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  403f6e: ee77 7a67    	vsub.f32	s15, s14, s15
  403f72: 9b03         	ldr	r3, [sp, #0xc]
  403f74: edc3 7a5e    	vstr	s15, [r3, #376]
  403f78: 9b03         	ldr	r3, [sp, #0xc]
  403f7a: ed93 7a5d    	vldr	s14, [r3, #372]
  403f7e: eddd 7a02    	vldr	s15, [sp, #8]
  403f82: ee77 7a27    	vadd.f32	s15, s14, s15
  403f86: 9b03         	ldr	r3, [sp, #0xc]
  403f88: edc3 7a5d    	vstr	s15, [r3, #372]
  403f8c: 9b03         	ldr	r3, [sp, #0xc]
  403f8e: ed93 7a5d    	vldr	s14, [r3, #372]
  403f92: 9b03         	ldr	r3, [sp, #0xc]
  403f94: edd3 6a5e    	vldr	s13, [r3, #376]
  403f98: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  403f9c: eef4 6ae7    	vcmpe.f32	s13, s15
  403fa0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403fa4: dd0a         	ble	0x403fbc <SurvivalStage::playRound(float)+0x15c> @ imm = #0x14
  403fa6: 9b03         	ldr	r3, [sp, #0xc]
  403fa8: edd3 7a5e    	vldr	s15, [r3, #376]
  403fac: e008         	b	0x403fc0 <SurvivalStage::playRound(float)+0x160> @ imm = #0x10
  403fae: bf00         	nop
  403fb0: 0000         	movs	r0, r0
  403fb2: 4270         	rsbs	r0, r6, #0
  403fb4: eb9e 0052    	<unknown>
  403fb8: d784         	bvc	0x403ec4 <SurvivalStage::playRound(float)+0x64> @ imm = #-0xf8
  403fba: ffff eef7    	<unknown>
  403fbe: 7a00         	ldrb	r0, [r0, #0x8]
  403fc0: eeb4 7ae7    	vcmpe.f32	s14, s15
  403fc4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  403fc8: dd07         	ble	0x403fda <SurvivalStage::playRound(float)+0x17a> @ imm = #0xe
  403fca: 9803         	ldr	r0, [sp, #0xc]
  403fcc: f7ff f9f8    	bl	0x4033c0 <SurvivalStage::spawnEnemy()> @ imm = #-0xc10
  403fd0: 9b03         	ldr	r3, [sp, #0xc]
  403fd2: f04f 0200    	mov.w	r2, #0x0
  403fd6: f8c3 2174    	str.w	r2, [r3, #0x174]
  403fda: 9b03         	ldr	r3, [sp, #0xc]
  403fdc: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  403fe0: 4618         	mov	r0, r3
  403fe2: f716 fea1    	bl	0x31ad28 <EnemyManager::getNextHawk()> @ imm = #-0xe92be
  403fe6: 4603         	mov	r3, r0
  403fe8: 9307         	str	r3, [sp, #0x1c]
  403fea: 9b07         	ldr	r3, [sp, #0x1c]
  403fec: 2b00         	cmp	r3, #0x0
  403fee: d017         	beq	0x404020 <SurvivalStage::playRound(float)+0x1c0> @ imm = #0x2e
  403ff0: 9b07         	ldr	r3, [sp, #0x1c]
  403ff2: 681b         	ldr	r3, [r3]
  403ff4: f503 73f6    	add.w	r3, r3, #0x1ec
  403ff8: 681d         	ldr	r5, [r3]
  403ffa: 9e07         	ldr	r6, [sp, #0x1c]
  403ffc: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x4041c0 <SurvivalStage::playRound(float)+0x360>
  403ffe: 58e3         	ldr	r3, [r4, r3]
  404000: 681b         	ldr	r3, [r3]
  404002: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  404006: 466a         	mov	r2, sp
  404008: f103 0130    	add.w	r1, r3, #0x30
  40400c: c903         	ldm	r1, {r0, r1}
  40400e: e882 0003    	stm.w	r2, {r0, r1}
  404012: 3328         	adds	r3, #0x28
  404014: cb0c         	ldm	r3, {r2, r3}
  404016: 4630         	mov	r0, r6
  404018: 47a8         	blx	r5
  40401a: 9807         	ldr	r0, [sp, #0x1c]
  40401c: f73d f824    	bl	0x341068 <HawkDrone::lookForTarget()> @ imm = #-0xc2fb8
  404020: 9b03         	ldr	r3, [sp, #0xc]
  404022: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  404026: 4618         	mov	r0, r3
  404028: f716 ff4e    	bl	0x31aec8 <EnemyManager::getNextWorm()> @ imm = #-0xe9164
  40402c: 4603         	mov	r3, r0
  40402e: 9308         	str	r3, [sp, #0x20]
  404030: 9b08         	ldr	r3, [sp, #0x20]
  404032: 2b00         	cmp	r3, #0x0
  404034: d017         	beq	0x404066 <SurvivalStage::playRound(float)+0x206> @ imm = #0x2e
  404036: 9b08         	ldr	r3, [sp, #0x20]
  404038: 681b         	ldr	r3, [r3]
  40403a: f503 73f6    	add.w	r3, r3, #0x1ec
  40403e: 681d         	ldr	r5, [r3]
  404040: 9e08         	ldr	r6, [sp, #0x20]
  404042: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x4041c0 <SurvivalStage::playRound(float)+0x360>
  404044: 58e3         	ldr	r3, [r4, r3]
  404046: 681b         	ldr	r3, [r3]
  404048: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  40404c: 466a         	mov	r2, sp
  40404e: f103 0130    	add.w	r1, r3, #0x30
  404052: c903         	ldm	r1, {r0, r1}
  404054: e882 0003    	stm.w	r2, {r0, r1}
  404058: 3328         	adds	r3, #0x28
  40405a: cb0c         	ldm	r3, {r2, r3}
  40405c: 4630         	mov	r0, r6
  40405e: 47a8         	blx	r5
  404060: 9808         	ldr	r0, [sp, #0x20]
  404062: f01b fa31    	bl	0x41f4c8 <WormDrone::lookForTarget()> @ imm = #0x1b462
  404066: 9b03         	ldr	r3, [sp, #0xc]
  404068: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  40406c: 4618         	mov	r0, r3
  40406e: f716 fec3    	bl	0x31adf8 <EnemyManager::getNextHumanoid()> @ imm = #-0xe927a
  404072: 4603         	mov	r3, r0
  404074: 9309         	str	r3, [sp, #0x24]
  404076: 9b09         	ldr	r3, [sp, #0x24]
  404078: 2b00         	cmp	r3, #0x0
  40407a: d017         	beq	0x4040ac <SurvivalStage::playRound(float)+0x24c> @ imm = #0x2e
  40407c: 9b09         	ldr	r3, [sp, #0x24]
  40407e: 681b         	ldr	r3, [r3]
  404080: f503 73f6    	add.w	r3, r3, #0x1ec
  404084: 681d         	ldr	r5, [r3]
  404086: 9e09         	ldr	r6, [sp, #0x24]
  404088: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x4041c0 <SurvivalStage::playRound(float)+0x360>
  40408a: 58e3         	ldr	r3, [r4, r3]
  40408c: 681b         	ldr	r3, [r3]
  40408e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  404092: 466a         	mov	r2, sp
  404094: f103 0130    	add.w	r1, r3, #0x30
  404098: c903         	ldm	r1, {r0, r1}
  40409a: e882 0003    	stm.w	r2, {r0, r1}
  40409e: 3328         	adds	r3, #0x28
  4040a0: cb0c         	ldm	r3, {r2, r3}
  4040a2: 4630         	mov	r0, r6
  4040a4: 47a8         	blx	r5
  4040a6: 9809         	ldr	r0, [sp, #0x24]
  4040a8: f742 fc56    	bl	0x346958 <HumanoidDrone::lookForTarget()> @ imm = #-0xbd754
  4040ac: 9b03         	ldr	r3, [sp, #0xc]
  4040ae: f8d3 3170    	ldr.w	r3, [r3, #0x170]
  4040b2: 4618         	mov	r0, r3
  4040b4: f716 ff70    	bl	0x31af98 <EnemyManager::getNextEnemy()> @ imm = #-0xe9120
  4040b8: 4603         	mov	r3, r0
  4040ba: 930a         	str	r3, [sp, #0x28]
  4040bc: 9b0a         	ldr	r3, [sp, #0x28]
  4040be: 2b00         	cmp	r3, #0x0
  4040c0: d07b         	beq	0x4041ba <SurvivalStage::playRound(float)+0x35a> @ imm = #0xf6
  4040c2: f04f 0300    	mov.w	r3, #0x0
  4040c6: f2c4 33fa    	movt	r3, #0x43fa
  4040ca: 9305         	str	r3, [sp, #0x14]
  4040cc: 9b0a         	ldr	r3, [sp, #0x28]
  4040ce: 681b         	ldr	r3, [r3]
  4040d0: f503 73d6    	add.w	r3, r3, #0x1ac
  4040d4: 681b         	ldr	r3, [r3]
  4040d6: aa0c         	add	r2, sp, #0x30
  4040d8: 4610         	mov	r0, r2
  4040da: 990a         	ldr	r1, [sp, #0x28]
  4040dc: 4798         	blx	r3
  4040de: 9b03         	ldr	r3, [sp, #0xc]
  4040e0: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  4040e4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4040e8: aa10         	add	r2, sp, #0x40
  4040ea: ed9d 4b0c    	vldr	d4, [sp, #48]
  4040ee: ed9d 5b0e    	vldr	d5, [sp, #56]
  4040f2: ed93 6b0a    	vldr	d6, [r3, #40]
  4040f6: ed93 7b0c    	vldr	d7, [r3, #48]
  4040fa: 4610         	mov	r0, r2
  4040fc: eeb0 0b44    	vmov.f64	d0, d4
  404100: eeb0 1b45    	vmov.f64	d1, d5
  404104: eeb0 2b46    	vmov.f64	d2, d6
  404108: eeb0 3b47    	vmov.f64	d3, d7
  40410c: f7fd fece    	bl	0x401eac <StoreLayer::onPoints(cocos2d::CCObject*)+0x27c> @ imm = #-0x2264
  404110: ab10         	add	r3, sp, #0x40
  404112: cb0f         	ldm	r3, {r0, r1, r2, r3}
  404114: f2d2 ffd0    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d2fa0
  404118: ec41 0b17    	vmov	d7, r0, r1
  40411c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  404120: edcd 7a0b    	vstr	s15, [sp, #44]
  404124: 9b03         	ldr	r3, [sp, #0xc]
  404126: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  40412a: 2b00         	cmp	r3, #0x0
  40412c: d030         	beq	0x404190 <SurvivalStage::playRound(float)+0x330> @ imm = #0x60
  40412e: 9b03         	ldr	r3, [sp, #0xc]
  404130: f8d3 3180    	ldr.w	r3, [r3, #0x180]
  404134: 681b         	ldr	r3, [r3]
  404136: f503 73d6    	add.w	r3, r3, #0x1ac
  40413a: 681b         	ldr	r3, [r3]
  40413c: 9a03         	ldr	r2, [sp, #0xc]
  40413e: f8d2 2180    	ldr.w	r2, [r2, #0x180]
  404142: a914         	add	r1, sp, #0x50
  404144: 4608         	mov	r0, r1
  404146: 4611         	mov	r1, r2
  404148: 4798         	blx	r3
  40414a: 9b03         	ldr	r3, [sp, #0xc]
  40414c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  404150: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  404154: aa18         	add	r2, sp, #0x60
  404156: ed9d 4b14    	vldr	d4, [sp, #80]
  40415a: ed9d 5b16    	vldr	d5, [sp, #88]
  40415e: ed93 6b0a    	vldr	d6, [r3, #40]
  404162: ed93 7b0c    	vldr	d7, [r3, #48]
  404166: 4610         	mov	r0, r2
  404168: eeb0 0b44    	vmov.f64	d0, d4
  40416c: eeb0 1b45    	vmov.f64	d1, d5
  404170: eeb0 2b46    	vmov.f64	d2, d6
  404174: eeb0 3b47    	vmov.f64	d3, d7
  404178: f7fd fe98    	bl	0x401eac <StoreLayer::onPoints(cocos2d::CCObject*)+0x27c> @ imm = #-0x22d0
  40417c: ab18         	add	r3, sp, #0x60
  40417e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  404180: f2d2 ff9a    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d2f34
  404184: ec41 0b17    	vmov	d7, r0, r1
  404188: eef7 7bc7    	vcvt.f32.f64	s15, d7
  40418c: edcd 7a05    	vstr	s15, [sp, #20]
  404190: ed9d 7a0b    	vldr	s14, [sp, #44]
  404194: eddd 7a05    	vldr	s15, [sp, #20]
  404198: eeb4 7ae7    	vcmpe.f32	s14, s15
  40419c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4041a0: d400         	bmi	0x4041a4 <SurvivalStage::playRound(float)+0x344> @ imm = #0x0
  4041a2: e00a         	b	0x4041ba <SurvivalStage::playRound(float)+0x35a> @ imm = #0x14
  4041a4: 9b03         	ldr	r3, [sp, #0xc]
  4041a6: 9a0a         	ldr	r2, [sp, #0x28]
  4041a8: f8c3 2180    	str.w	r2, [r3, #0x180]
  4041ac: e005         	b	0x4041ba <SurvivalStage::playRound(float)+0x35a> @ imm = #0xa
  4041ae: ab18         	add	r3, sp, #0x60
  4041b0: 4618         	mov	r0, r3
  4041b2: f3b1 fbaf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b175e
  4041b6: f383 ff79    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x383ef2
  4041ba: b01c         	add	sp, #0x70
  4041bc: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x4041bd); words below are literal-pool data ---
  4041be: bf00         	nop
  4041c0: d784         	bvc	0x4040cc <SurvivalStage::playRound(float)+0x26c> @ imm = #-0xf8
  4041c2: ffff 0000    	<unknown>

// ==== SurvivalStage::doLesson
//      file offset 0x4041c8 (= ELF address; Ghidra 0x4141c8), 1064 bytes, Thumb-2
  4041c8: b530         	push	{r4, r5, lr}
  4041ca: b099         	sub	sp, #0x64
  4041cc: 9003         	str	r0, [sp, #0xc]
  4041ce: 9102         	str	r1, [sp, #0x8]
  4041d0: 4c79         	ldr	r4, [pc, #0x1e4]        @ 0x4043b8 <SurvivalStage::doLesson(float)+0x1f0>
  4041d2: 447c         	add	r4, pc
  4041d4: 9b03         	ldr	r3, [sp, #0xc]
  4041d6: ed93 7a62    	vldr	s14, [r3, #392]
  4041da: eddd 7a02    	vldr	s15, [sp, #8]
  4041de: ee77 7a27    	vadd.f32	s15, s14, s15
  4041e2: 9b03         	ldr	r3, [sp, #0xc]
  4041e4: edc3 7a62    	vstr	s15, [r3, #392]
  4041e8: 9b03         	ldr	r3, [sp, #0xc]
  4041ea: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  4041ee: 2b03         	cmp	r3, #0x3
  4041f0: f200 81e8    	bhi.w	0x4045c4 <SurvivalStage::doLesson(float)+0x3fc> @ imm = #0x3d0
  4041f4: a102         	adr	r1, #8 <SurvivalStage::doLesson(float)+0x32>
  4041f6: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  4041fa: 4411         	add	r1, r2
  4041fc: 4708         	bx	r1
  4041fe: bf00         	nop
  404200: 0011         	movs	r1, r2
  404202: 0000         	movs	r0, r0
  404204: 00fb         	lsls	r3, r7, #0x3
  404206: 0000         	movs	r0, r0
  404208: 019b         	lsls	r3, r3, #0x6
  40420a: 0000         	movs	r0, r0
  40420c: 0361         	lsls	r1, r4, #0xd
  40420e: 0000         	movs	r0, r0
  404210: 9b03         	ldr	r3, [sp, #0xc]
  404212: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  404216: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  40421a: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x4043bc <SurvivalStage::doLesson(float)+0x1f4>
  40421c: 58e3         	ldr	r3, [r4, r3]
  40421e: 681b         	ldr	r3, [r3]
  404220: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  404224: a908         	add	r1, sp, #0x20
  404226: ed92 4b0a    	vldr	d4, [r2, #40]
  40422a: ed92 5b0c    	vldr	d5, [r2, #48]
  40422e: ed93 6b0a    	vldr	d6, [r3, #40]
  404232: ed93 7b0c    	vldr	d7, [r3, #48]
  404236: 4608         	mov	r0, r1
  404238: eeb0 0b44    	vmov.f64	d0, d4
  40423c: eeb0 1b45    	vmov.f64	d1, d5
  404240: eeb0 2b46    	vmov.f64	d2, d6
  404244: eeb0 3b47    	vmov.f64	d3, d7
  404248: f7fd fe30    	bl	0x401eac <StoreLayer::onPoints(cocos2d::CCObject*)+0x27c> @ imm = #-0x23a0
  40424c: ab08         	add	r3, sp, #0x20
  40424e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  404250: f2d2 ff32    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2d2e64
  404254: ec41 0b16    	vmov	d6, r0, r1
  404258: ed9f 7b55    	vldr	d7, [pc, #340]          @ 0x4043b0 <SurvivalStage::doLesson(float)+0x1e8>
  40425c: eeb4 6bc7    	vcmpe.f64	d6, d7
  404260: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  404264: bf54         	ite	pl
  404266: 2300         	movpl	r3, #0x0
  404268: 2301         	movmi	r3, #0x1
  40426a: b2db         	uxtb	r3, r3
  40426c: 2b00         	cmp	r3, #0x0
  40426e: d043         	beq	0x4042f8 <SurvivalStage::doLesson(float)+0x130> @ imm = #0x86
  404270: 9b03         	ldr	r3, [sp, #0xc]
  404272: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  404276: ab10         	add	r3, sp, #0x40
  404278: 4618         	mov	r0, r3
  40427a: f386 f8bb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x386176
  40427e: aa14         	add	r2, sp, #0x50
  404280: ab10         	add	r3, sp, #0x40
  404282: 4610         	mov	r0, r2
  404284: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x4043c0 <SurvivalStage::doLesson(float)+0x1f8>
  404286: 447a         	add	r2, pc
  404288: 4611         	mov	r1, r2
  40428a: 461a         	mov	r2, r3
  40428c: f3b2 fbe8    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b27d0
  404290: 2000         	movs	r0, #0x0
  404292: 2100         	movs	r1, #0x0
  404294: 22ff         	movs	r2, #0xff
  404296: f7fd fd9b    	bl	0x401dd0 <StoreLayer::onPoints(cocos2d::CCObject*)+0x1a0> @ imm = #-0x24ca
  40429a: 4603         	mov	r3, r0
  40429c: 461a         	mov	r2, r3
  40429e: f88d 2014    	strb.w	r2, [sp, #0x14]
  4042a2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  4042a6: f88d 2015    	strb.w	r2, [sp, #0x15]
  4042aa: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  4042ae: f88d 3016    	strb.w	r3, [sp, #0x16]
  4042b2: ab14         	add	r3, sp, #0x50
  4042b4: 4628         	mov	r0, r5
  4042b6: 4619         	mov	r1, r3
  4042b8: 9a05         	ldr	r2, [sp, #0x14]
  4042ba: 2303         	movs	r3, #0x3
  4042bc: f739 f800    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xc7000
  4042c0: ab14         	add	r3, sp, #0x50
  4042c2: 4618         	mov	r0, r3
  4042c4: f3b1 fb26    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b164c
  4042c8: ab10         	add	r3, sp, #0x40
  4042ca: 4618         	mov	r0, r3
  4042cc: f386 f896    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38612c
  4042d0: 9b03         	ldr	r3, [sp, #0xc]
  4042d2: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  4042d6: 1c5a         	adds	r2, r3, #0x1
  4042d8: 9b03         	ldr	r3, [sp, #0xc]
  4042da: f8c3 2184    	str.w	r2, [r3, #0x184]
  4042de: 9b03         	ldr	r3, [sp, #0xc]
  4042e0: f04f 0200    	mov.w	r2, #0x0
  4042e4: f8c3 2188    	str.w	r2, [r3, #0x188]
  4042e8: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x4043c4 <SurvivalStage::doLesson(float)+0x1fc>
  4042ea: 58e3         	ldr	r3, [r4, r3]
  4042ec: 681b         	ldr	r3, [r3]
  4042ee: 4618         	mov	r0, r3
  4042f0: 2125         	movs	r1, #0x25
  4042f2: 2201         	movs	r2, #0x1
  4042f4: f7f3 fd24    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0xc5b8
  4042f8: e165         	b	0x4045c6 <SurvivalStage::doLesson(float)+0x3fe> @ imm = #0x2ca
  4042fa: 9b03         	ldr	r3, [sp, #0xc]
  4042fc: ed93 7a62    	vldr	s14, [r3, #392]
  404300: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  404304: eeb4 7ae7    	vcmpe.f32	s14, s15
  404308: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  40430c: dc00         	bgt	0x404310 <SurvivalStage::doLesson(float)+0x148> @ imm = #0x0
  40430e: e15a         	b	0x4045c6 <SurvivalStage::doLesson(float)+0x3fe> @ imm = #0x2b4
  404310: 9b03         	ldr	r3, [sp, #0xc]
  404312: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  404316: 1c5a         	adds	r2, r3, #0x1
  404318: 9b03         	ldr	r3, [sp, #0xc]
  40431a: f8c3 2184    	str.w	r2, [r3, #0x184]
  40431e: 9b03         	ldr	r3, [sp, #0xc]
  404320: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  404324: ab10         	add	r3, sp, #0x40
  404326: 4618         	mov	r0, r3
  404328: f386 f864    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3860c8
  40432c: aa14         	add	r2, sp, #0x50
  40432e: ab10         	add	r3, sp, #0x40
  404330: 4610         	mov	r0, r2
  404332: 4a25         	ldr	r2, [pc, #0x94]         @ 0x4043c8 <SurvivalStage::doLesson(float)+0x200>
  404334: 447a         	add	r2, pc
  404336: 4611         	mov	r1, r2
  404338: 461a         	mov	r2, r3
  40433a: f3b2 fb91    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b2722
  40433e: 2000         	movs	r0, #0x0
  404340: 2100         	movs	r1, #0x0
  404342: 22ff         	movs	r2, #0xff
  404344: f7fd fd44    	bl	0x401dd0 <StoreLayer::onPoints(cocos2d::CCObject*)+0x1a0> @ imm = #-0x2578
  404348: 4603         	mov	r3, r0
  40434a: 461a         	mov	r2, r3
  40434c: f88d 2018    	strb.w	r2, [sp, #0x18]
  404350: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  404354: f88d 2019    	strb.w	r2, [sp, #0x19]
  404358: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  40435c: f88d 301a    	strb.w	r3, [sp, #0x1a]
  404360: ab14         	add	r3, sp, #0x50
  404362: 4628         	mov	r0, r5
  404364: 4619         	mov	r1, r3
  404366: 9a06         	ldr	r2, [sp, #0x18]
  404368: 2304         	movs	r3, #0x4
  40436a: f738 ffa9    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xc70ae
  40436e: ab14         	add	r3, sp, #0x50
  404370: 4618         	mov	r0, r3
  404372: f3b1 facf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b159e
  404376: ab10         	add	r3, sp, #0x40
  404378: 4618         	mov	r0, r3
  40437a: f386 f83f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x38607e
  40437e: 9b03         	ldr	r3, [sp, #0xc]
  404380: f04f 0200    	mov.w	r2, #0x0
  404384: f8c3 2188    	str.w	r2, [r3, #0x188]
  404388: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x4043c4 <SurvivalStage::doLesson(float)+0x1fc>
  40438a: 58e3         	ldr	r3, [r4, r3]
  40438c: 681b         	ldr	r3, [r3]
  40438e: 4618         	mov	r0, r3
  404390: 2126         	movs	r1, #0x26
  404392: 2201         	movs	r2, #0x1
  404394: f7f3 fcd4    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0xc658
  404398: e115         	b	0x4045c6 <SurvivalStage::doLesson(float)+0x3fe> @ imm = #0x22a
  40439a: 9b03         	ldr	r3, [sp, #0xc]
  40439c: ed93 7a62    	vldr	s14, [r3, #392]
  4043a0: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  4043a4: eeb4 7ae7    	vcmpe.f32	s14, s15
  4043a8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  4043ac: dc0e         	bgt	0x4043cc <SurvivalStage::doLesson(float)+0x204> @ imm = #0x1c
  4043ae: e10a         	b	0x4045c6 <SurvivalStage::doLesson(float)+0x3fe> @ imm = #0x214
  4043b0: 0000         	movs	r0, r0
  4043b2: 0000         	movs	r0, r0
  4043b4: c000         	<unknown>
  4043b6: 4062         	eors	r2, r4
  4043b8: e836 0052    	<unknown>
  4043bc: d784         	bvc	0x4042c8 <SurvivalStage::doLesson(float)+0x100> @ imm = #-0xf8
  4043be: ffff 5d1e    	<unknown>
  4043c2: 003d         	movs	r5, r7
  4043c4: d730         	bvc	0x404428 <SurvivalStage::doLesson(float)+0x260> @ imm = #0x60
  4043c6: ffff 5c8c    	<unknown>
  4043ca: 003d         	movs	r5, r7
  4043cc: 9b03         	ldr	r3, [sp, #0xc]
  4043ce: f8d3 3184    	ldr.w	r3, [r3, #0x184]
  4043d2: 1c5a         	adds	r2, r3, #0x1
  4043d4: 9b03         	ldr	r3, [sp, #0xc]
  4043d6: f8c3 2184    	str.w	r2, [r3, #0x184]
  4043da: 9b03         	ldr	r3, [sp, #0xc]
  4043dc: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  4043e0: ab10         	add	r3, sp, #0x40
  4043e2: 4618         	mov	r0, r3
  4043e4: f386 f806    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x38600c
  4043e8: aa14         	add	r2, sp, #0x50
  4043ea: ab10         	add	r3, sp, #0x40
  4043ec: 4610         	mov	r0, r2
  4043ee: 4a7c         	ldr	r2, [pc, #0x1f0]        @ 0x4045e0 <SurvivalStage::doLesson(float)+0x418>
  4043f0: 447a         	add	r2, pc
  4043f2: 4611         	mov	r1, r2
  4043f4: 461a         	mov	r2, r3
  4043f6: f3b2 fb33    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b2666
  4043fa: 2000         	movs	r0, #0x0
  4043fc: 2100         	movs	r1, #0x0
  4043fe: 22ff         	movs	r2, #0xff
  404400: f7fd fce6    	bl	0x401dd0 <StoreLayer::onPoints(cocos2d::CCObject*)+0x1a0> @ imm = #-0x2634
  404404: 4603         	mov	r3, r0
  404406: 461a         	mov	r2, r3
  404408: f88d 201c    	strb.w	r2, [sp, #0x1c]
  40440c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  404410: f88d 201d    	strb.w	r2, [sp, #0x1d]
  404414: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  404418: f88d 301e    	strb.w	r3, [sp, #0x1e]
  40441c: ab14         	add	r3, sp, #0x50
  40441e: 4628         	mov	r0, r5
  404420: 4619         	mov	r1, r3
  404422: 9a07         	ldr	r2, [sp, #0x1c]
  404424: 2302         	movs	r3, #0x2
  404426: f738 ff4b    	bl	0x33d2c0 <HUD::addMessage(std::string, cocos2d::_ccColor3B, short)> @ imm = #-0xc716a
  40442a: ab14         	add	r3, sp, #0x50
  40442c: 4618         	mov	r0, r3
  40442e: f3b1 fa71    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b14e2
  404432: ab10         	add	r3, sp, #0x40
  404434: 4618         	mov	r0, r3
  404436: f385 ffe1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x385fc2
  40443a: 9b03         	ldr	r3, [sp, #0xc]
  40443c: f04f 0200    	mov.w	r2, #0x0
  404440: f8c3 2188    	str.w	r2, [r3, #0x188]
  404444: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x4045e4 <SurvivalStage::doLesson(float)+0x41c>
  404446: 58e3         	ldr	r3, [r4, r3]
  404448: 681b         	ldr	r3, [r3]
  40444a: 4618         	mov	r0, r3
  40444c: 2127         	movs	r1, #0x27
  40444e: 2201         	movs	r2, #0x1
  404450: f7f3 fc76    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0xc714
  404454: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x4045e4 <SurvivalStage::doLesson(float)+0x41c>
  404456: 58e3         	ldr	r3, [r4, r3]
  404458: 681d         	ldr	r5, [r3]
  40445a: ab10         	add	r3, sp, #0x40
  40445c: 4618         	mov	r0, r3
  40445e: f385 ffc9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x385f92
  404462: aa14         	add	r2, sp, #0x50
  404464: ab10         	add	r3, sp, #0x40
  404466: 4610         	mov	r0, r2
  404468: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x4045e8 <SurvivalStage::doLesson(float)+0x420>
  40446a: 447a         	add	r2, pc
  40446c: 4611         	mov	r1, r2
  40446e: 461a         	mov	r2, r3
  404470: f3b2 faf6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3b25ec
  404474: ab14         	add	r3, sp, #0x50
  404476: 4628         	mov	r0, r5
  404478: 4619         	mov	r1, r3
  40447a: f64c 42cd    	movw	r2, #0xcccd
  40447e: f6c3 52cc    	movt	r2, #0x3dcc
  404482: 2301         	movs	r3, #0x1
  404484: f7f3 fc0e    	bl	0x3f7ca4 <Sound::playMusicFile(std::string, float, bool)> @ imm = #-0xc7e4
  404488: ab14         	add	r3, sp, #0x50
  40448a: 4618         	mov	r0, r3
  40448c: f3b1 fa42    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b1484
  404490: ab10         	add	r3, sp, #0x40
  404492: 4618         	mov	r0, r3
  404494: f385 ffb2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x385f64
  404498: 9b03         	ldr	r3, [sp, #0xc]
  40449a: f8d3 5170    	ldr.w	r5, [r3, #0x170]
  40449e: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x4045ec <SurvivalStage::doLesson(float)+0x424>
  4044a0: 58e3         	ldr	r3, [r4, r3]
  4044a2: 681b         	ldr	r3, [r3]
  4044a4: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4044a8: ed93 7b0a    	vldr	d7, [r3, #40]
  4044ac: ab0c         	add	r3, sp, #0x30
  4044ae: 4618         	mov	r0, r3
  4044b0: eeb0 0b47    	vmov.f64	d0, d7
  4044b4: ed9f 1b46    	vldr	d1, [pc, #280]          @ 0x4045d0 <SurvivalStage::doLesson(float)+0x408>
  4044b8: f7fd fcb8    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x2690
  4044bc: 466b         	mov	r3, sp
  4044be: aa0e         	add	r2, sp, #0x38
  4044c0: e892 0003    	ldm.w	r2, {r0, r1}
  4044c4: e883 0003    	stm.w	r3, {r0, r1}
  4044c8: ab0c         	add	r3, sp, #0x30
  4044ca: cb0c         	ldm	r3, {r2, r3}
  4044cc: 4628         	mov	r0, r5
  4044ce: f716 f93b    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xe9d8a
  4044d2: 9b03         	ldr	r3, [sp, #0xc]
  4044d4: f8d3 5170    	ldr.w	r5, [r3, #0x170]
  4044d8: 4b44         	ldr	r3, [pc, #0x110]        @ 0x4045ec <SurvivalStage::doLesson(float)+0x424>
  4044da: 58e3         	ldr	r3, [r4, r3]
  4044dc: 681b         	ldr	r3, [r3]
  4044de: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  4044e2: ed93 6b0a    	vldr	d6, [r3, #40]
  4044e6: ed9f 7b3c    	vldr	d7, [pc, #240]          @ 0x4045d8 <SurvivalStage::doLesson(float)+0x410>
  4044ea: ee36 7b07    	vadd.f64	d7, d6, d7
  4044ee: ab10         	add	r3, sp, #0x40
  4044f0: 4618         	mov	r0, r3
  4044f2: eeb0 0b47    	vmov.f64	d0, d7
  4044f6: ed9f 1b36    	vldr	d1, [pc, #216]          @ 0x4045d0 <SurvivalStage::doLesson(float)+0x408>
  4044fa: f7fd fc97    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x26d2
  4044fe: 466b         	mov	r3, sp
  404500: aa12         	add	r2, sp, #0x48
  404502: e892 0003    	ldm.w	r2, {r0, r1}
  404506: e883 0003    	stm.w	r3, {r0, r1}
  40450a: ab10         	add	r3, sp, #0x40
  40450c: cb0c         	ldm	r3, {r2, r3}
  40450e: 4628         	mov	r0, r5
  404510: f716 f91a    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xe9dcc
  404514: 9b03         	ldr	r3, [sp, #0xc]
  404516: f8d3 5170    	ldr.w	r5, [r3, #0x170]
  40451a: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x4045ec <SurvivalStage::doLesson(float)+0x424>
  40451c: 58e3         	ldr	r3, [r4, r3]
  40451e: 681b         	ldr	r3, [r3]
  404520: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  404524: ed93 6b0a    	vldr	d6, [r3, #40]
  404528: ed9f 7b2b    	vldr	d7, [pc, #172]          @ 0x4045d8 <SurvivalStage::doLesson(float)+0x410>
  40452c: ee36 7b47    	vsub.f64	d7, d6, d7
  404530: ab14         	add	r3, sp, #0x50
  404532: 4618         	mov	r0, r3
  404534: eeb0 0b47    	vmov.f64	d0, d7
  404538: ed9f 1b25    	vldr	d1, [pc, #148]          @ 0x4045d0 <SurvivalStage::doLesson(float)+0x408>
  40453c: f7fd fc76    	bl	0x401e2c <StoreLayer::onPoints(cocos2d::CCObject*)+0x1fc> @ imm = #-0x2714
  404540: 466b         	mov	r3, sp
  404542: aa16         	add	r2, sp, #0x58
  404544: e892 0003    	ldm.w	r2, {r0, r1}
  404548: e883 0003    	stm.w	r3, {r0, r1}
  40454c: ab14         	add	r3, sp, #0x50
  40454e: cb0c         	ldm	r3, {r2, r3}
  404550: 4628         	mov	r0, r5
  404552: f716 f8f9    	bl	0x31a748 <EnemyManager::addHawkDrone(cpVect)> @ imm = #-0xe9e0e
  404556: 9b03         	ldr	r3, [sp, #0xc]
  404558: 2200         	movs	r2, #0x0
  40455a: f8c3 2180    	str.w	r2, [r3, #0x180]
  40455e: e032         	b	0x4045c6 <SurvivalStage::doLesson(float)+0x3fe> @ imm = #0x64
  404560: 9803         	ldr	r0, [sp, #0xc]
  404562: 9902         	ldr	r1, [sp, #0x8]
  404564: f7ff fc7c    	bl	0x403e60 <SurvivalStage::playRound(float)> @ imm = #-0x708
  404568: bf00         	nop
  40456a: e02c         	b	0x4045c6 <SurvivalStage::doLesson(float)+0x3fe> @ imm = #0x58
  40456c: ab14         	add	r3, sp, #0x50
  40456e: 4618         	mov	r0, r3
  404570: f3b1 f9d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b13a0
  404574: e7ff         	b	0x404576 <SurvivalStage::doLesson(float)+0x3ae> @ imm = #-0x2
  404576: ab10         	add	r3, sp, #0x40
  404578: 4618         	mov	r0, r3
  40457a: f385 ff3f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x385e7e
  40457e: f383 fd95    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x383b2a
  404582: ab14         	add	r3, sp, #0x50
  404584: 4618         	mov	r0, r3
  404586: f3b1 f9c5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b138a
  40458a: e7ff         	b	0x40458c <SurvivalStage::doLesson(float)+0x3c4> @ imm = #-0x2
  40458c: ab10         	add	r3, sp, #0x40
  40458e: 4618         	mov	r0, r3
  404590: f385 ff34    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x385e68
  404594: f383 fd8a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x383b14
  404598: ab14         	add	r3, sp, #0x50
  40459a: 4618         	mov	r0, r3
  40459c: f3b1 f9ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b1374
  4045a0: e7ff         	b	0x4045a2 <SurvivalStage::doLesson(float)+0x3da> @ imm = #-0x2
  4045a2: ab10         	add	r3, sp, #0x40
  4045a4: 4618         	mov	r0, r3
  4045a6: f385 ff29    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x385e52
  4045aa: f383 fd7f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x383afe
  4045ae: ab14         	add	r3, sp, #0x50
  4045b0: 4618         	mov	r0, r3
  4045b2: f3b1 f9af    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3b135e
  4045b6: e7ff         	b	0x4045b8 <SurvivalStage::doLesson(float)+0x3f0> @ imm = #-0x2
  4045b8: ab10         	add	r3, sp, #0x40
  4045ba: 4618         	mov	r0, r3
  4045bc: f385 ff1e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x385e3c
  4045c0: f383 fd74    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x383ae8
  4045c4: bf00         	nop
  4045c6: b019         	add	sp, #0x64
  4045c8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4045c9); words below are literal-pool data ---
  4045ca: bf00         	nop
  4045cc: f3af 8000    	nop.w
  4045d0: 0000         	movs	r0, r0
  4045d2: 0000         	movs	r0, r0
  4045d4: 5000         	str	r0, [r0, r0]
  4045d6: 4094         	lsls	r4, r2
  4045d8: 0000         	movs	r0, r0
  4045da: 0000         	movs	r0, r0
  4045dc: 0000         	movs	r0, r0
  4045de: 4059         	eors	r1, r3
  4045e0: 5c04         	ldrb	r4, [r0, r0]
  4045e2: 003d         	movs	r5, r7
  4045e4: d730         	bvc	0x404648 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x58> @ imm = #0x60
  4045e6: ffff 5bb6    	<unknown>
  4045ea: 003d         	movs	r5, r7
  4045ec: d784         	bvc	0x4044f8 <SurvivalStage::doLesson(float)+0x330> @ imm = #-0xf8
  4045ee: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SurvivalStage::returnToLobby
//      file offset 0x4045f0 (= ELF address; Ghidra 0x4145f0), 116 bytes, Thumb-2
  4045f0: b510         	push	{r4, lr}
  4045f2: b082         	sub	sp, #0x8
  4045f4: 9001         	str	r0, [sp, #0x4]
  4045f6: 9100         	str	r1, [sp]
  4045f8: 4c15         	ldr	r4, [pc, #0x54]         @ 0x404650 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x60>
  4045fa: 447c         	add	r4, pc
  4045fc: 4b15         	ldr	r3, [pc, #0x54]         @ 0x404654 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x64>
  4045fe: 58e3         	ldr	r3, [r4, r3]
  404600: 681b         	ldr	r3, [r3]
  404602: 4618         	mov	r0, r3
  404604: f7e7 fbc6    	bl	0x3ebd94 <SoldierManager::removeRemotePlayers()> @ imm = #-0x18874
  404608: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x404658 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x68>
  40460a: 58e3         	ldr	r3, [r4, r3]
  40460c: 681b         	ldr	r3, [r3]
  40460e: 4618         	mov	r0, r3
  404610: 2103         	movs	r1, #0x3
  404612: f7f3 fad9    	bl	0x3f7bc8 <Sound::loadMapSounds(MapType)> @ imm = #-0xca4e
  404616: 9b01         	ldr	r3, [sp, #0x4]
  404618: f893 3151    	ldrb.w	r3, [r3, #0x151]
  40461c: 2b00         	cmp	r3, #0x0
  40461e: d00a         	beq	0x404636 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x46> @ imm = #0x14
  404620: f1dc f846    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1dc08c
  404624: 4603         	mov	r3, r0
  404626: 4618         	mov	r0, r3
  404628: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x40465c <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x6c>
  40462a: 447b         	add	r3, pc
  40462c: 4619         	mov	r1, r3
  40462e: 2200         	movs	r2, #0x0
  404630: f1dc fa7c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1dc4f8
  404634: e009         	b	0x40464a <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x5a> @ imm = #0x12
  404636: f1dc f83b    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1dc076
  40463a: 4603         	mov	r3, r0
  40463c: 4618         	mov	r0, r3
  40463e: 4b08         	ldr	r3, [pc, #0x20]         @ 0x404660 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x70>
  404640: 447b         	add	r3, pc
  404642: 4619         	mov	r1, r3
  404644: 2200         	movs	r2, #0x0
  404646: f1dc fa71    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1dc4e2
  40464a: b002         	add	sp, #0x8
  40464c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x40464d); words below are literal-pool data ---
  40464e: bf00         	nop
  404650: e40e         	b	0x403e70 <SurvivalStage::playRound(float)+0x10> @ imm = #-0x7e4
  404652: 0052         	lsls	r2, r2, #0x1
  404654: d910         	bls	0x404678 <SurvivalStage::returnToLobby(cocos2d::CCObject*)+0x88> @ imm = #0x20
  404656: ffff d730    	vqshl.u32	d29, d16, #0x1f
  40465a: ffff 5a02    	vtbl.8	d21, {d15, d16, d17}, d2
  40465e: 003d         	movs	r5, r7
  404660: 59fc         	ldr	r4, [r7, r7]
  404662: 003d         	movs	r5, r7
