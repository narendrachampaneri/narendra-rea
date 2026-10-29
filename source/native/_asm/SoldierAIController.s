// SoldierAIController: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 44 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SoldierAIController.cpp

// ==== SoldierAIController::create
//      file offset 0x345b3c (= ELF address; Ghidra 0x355b3c), 112 bytes, Thumb-2
  345b3c: b510         	push	{r4, lr}
  345b3e: b082         	sub	sp, #0x8
  345b40: f44f 70e4    	mov.w	r0, #0x1c8
  345b44: f041 f70e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x441e1c
  345b48: 4603         	mov	r3, r0
  345b4a: 461c         	mov	r4, r3
  345b4c: 4620         	mov	r0, r4
  345b4e: f099 f8d9    	bl	0x3ded04 <SoldierAIController::SoldierAIController()> @ imm = #0x991b2
  345b52: 9401         	str	r4, [sp, #0x4]
  345b54: 9b01         	ldr	r3, [sp, #0x4]
  345b56: 2b00         	cmp	r3, #0x0
  345b58: d00a         	beq	0x345b70 <SoldierAIController::create()+0x34> @ imm = #0x14
  345b5a: 9b01         	ldr	r3, [sp, #0x4]
  345b5c: 681b         	ldr	r3, [r3]
  345b5e: 3318         	adds	r3, #0x18
  345b60: 681b         	ldr	r3, [r3]
  345b62: 9801         	ldr	r0, [sp, #0x4]
  345b64: 4798         	blx	r3
  345b66: 4603         	mov	r3, r0
  345b68: 2b00         	cmp	r3, #0x0
  345b6a: d001         	beq	0x345b70 <SoldierAIController::create()+0x34> @ imm = #0x2
  345b6c: 2301         	movs	r3, #0x1
  345b6e: e000         	b	0x345b72 <SoldierAIController::create()+0x36> @ imm = #0x0
  345b70: 2300         	movs	r3, #0x0
  345b72: 2b00         	cmp	r3, #0x0
  345b74: d005         	beq	0x345b82 <SoldierAIController::create()+0x46> @ imm = #0xa
  345b76: 9b01         	ldr	r3, [sp, #0x4]
  345b78: 4618         	mov	r0, r3
  345b7a: f252 f9bf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25237e
  345b7e: 9b01         	ldr	r3, [sp, #0x4]
  345b80: e011         	b	0x345ba6 <SoldierAIController::create()+0x6a> @ imm = #0x22
  345b82: 9b01         	ldr	r3, [sp, #0x4]
  345b84: 2b00         	cmp	r3, #0x0
  345b86: d005         	beq	0x345b94 <SoldierAIController::create()+0x58> @ imm = #0xa
  345b88: 9b01         	ldr	r3, [sp, #0x4]
  345b8a: 681b         	ldr	r3, [r3]
  345b8c: 3308         	adds	r3, #0x8
  345b8e: 681b         	ldr	r3, [r3]
  345b90: 9801         	ldr	r0, [sp, #0x4]
  345b92: 4798         	blx	r3
  345b94: 2300         	movs	r3, #0x0
  345b96: 9301         	str	r3, [sp, #0x4]
  345b98: 2300         	movs	r3, #0x0
  345b9a: e004         	b	0x345ba6 <SoldierAIController::create()+0x6a> @ imm = #0x8
  345b9c: 4620         	mov	r0, r4
  345b9e: f042 f281    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x442502
  345ba2: f042 f283    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x442506
  345ba6: 4618         	mov	r0, r3
  345ba8: b002         	add	sp, #0x8
  345baa: bd10         	pop	{r4, pc}

// ==== SoldierAIController::SoldierAIController
//      file offset 0x3ded04 (= ELF address; Ghidra 0x3eed04), 60 bytes, Thumb-2
  3ded04: b510         	push	{r4, lr}
  3ded06: b082         	sub	sp, #0x8
  3ded08: 9001         	str	r0, [sp, #0x4]
  3ded0a: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x3ded38 <SoldierAIController::SoldierAIController()+0x34>
  3ded0c: 447c         	add	r4, pc
  3ded0e: 9b01         	ldr	r3, [sp, #0x4]
  3ded10: 4618         	mov	r0, r3
  3ded12: f005 f883    	bl	0x3e3e1c <SoldierController::SoldierController()> @ imm = #0x5106
  3ded16: 9b01         	ldr	r3, [sp, #0x4]
  3ded18: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3ded3c <SoldierAIController::SoldierAIController()+0x38>
  3ded1a: 58a2         	ldr	r2, [r4, r2]
  3ded1c: 3208         	adds	r2, #0x8
  3ded1e: 601a         	str	r2, [r3]
  3ded20: 9b01         	ldr	r3, [sp, #0x4]
  3ded22: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3ded3c <SoldierAIController::SoldierAIController()+0x38>
  3ded24: 58a2         	ldr	r2, [r4, r2]
  3ded26: f502 723b    	add.w	r2, r2, #0x2ec
  3ded2a: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3ded2e: 9b01         	ldr	r3, [sp, #0x4]
  3ded30: 4618         	mov	r0, r3
  3ded32: b002         	add	sp, #0x8
  3ded34: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ded35); words below are literal-pool data ---
  3ded36: bf00         	nop
  3ded38: 3cfc         	subs	r4, #0xfc
  3ded3a: 0055         	lsls	r5, r2, #0x1
  3ded3c: df08         	svc	#0x8
  3ded3e: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== SoldierAIController::init
//      file offset 0x3ded40 (= ELF address; Ghidra 0x3eed40), 440 bytes, Thumb-2
  3ded40: b510         	push	{r4, lr}
  3ded42: b08a         	sub	sp, #0x28
  3ded44: 9005         	str	r0, [sp, #0x14]
  3ded46: 9b05         	ldr	r3, [sp, #0x14]
  3ded48: 4618         	mov	r0, r3
  3ded4a: f005 f8b3    	bl	0x3e3eb4 <SoldierController::init()> @ imm = #0x5166
  3ded4e: 4603         	mov	r3, r0
  3ded50: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3ded54: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3ded58: f083 0301    	eor	r3, r3, #0x1
  3ded5c: b2db         	uxtb	r3, r3
  3ded5e: 2b00         	cmp	r3, #0x0
  3ded60: d001         	beq	0x3ded66 <SoldierAIController::init()+0x26> @ imm = #0x2
  3ded62: 2300         	movs	r3, #0x0
  3ded64: e0bb         	b	0x3deede <SoldierAIController::init()+0x19e> @ imm = #0x176
  3ded66: 9b05         	ldr	r3, [sp, #0x14]
  3ded68: f04f 0200    	mov.w	r2, #0x0
  3ded6c: f8c3 2184    	str.w	r2, [r3, #0x184]
  3ded70: 9b05         	ldr	r3, [sp, #0x14]
  3ded72: f04f 0200    	mov.w	r2, #0x0
  3ded76: f8c3 218c    	str.w	r2, [r3, #0x18c]
  3ded7a: 9b05         	ldr	r3, [sp, #0x14]
  3ded7c: f04f 0200    	mov.w	r2, #0x0
  3ded80: f8c3 2190    	str.w	r2, [r3, #0x190]
  3ded84: 9b05         	ldr	r3, [sp, #0x14]
  3ded86: f04f 0200    	mov.w	r2, #0x0
  3ded8a: f8c3 2188    	str.w	r2, [r3, #0x188]
  3ded8e: 9b05         	ldr	r3, [sp, #0x14]
  3ded90: f04f 0200    	mov.w	r2, #0x0
  3ded94: f8c3 2194    	str.w	r2, [r3, #0x194]
  3ded98: 9b05         	ldr	r3, [sp, #0x14]
  3ded9a: f04f 0200    	mov.w	r2, #0x0
  3ded9e: f8c3 2108    	str.w	r2, [r3, #0x108]
  3deda2: 9b05         	ldr	r3, [sp, #0x14]
  3deda4: 2200         	movs	r2, #0x0
  3deda6: f883 2104    	strb.w	r2, [r3, #0x104]
  3dedaa: 9b05         	ldr	r3, [sp, #0x14]
  3dedac: 2200         	movs	r2, #0x0
  3dedae: f883 211c    	strb.w	r2, [r3, #0x11c]
  3dedb2: 9b05         	ldr	r3, [sp, #0x14]
  3dedb4: f04f 0200    	mov.w	r2, #0x0
  3dedb8: f2c4 22c8    	movt	r2, #0x42c8
  3dedbc: f8c3 2198    	str.w	r2, [r3, #0x198]
  3dedc0: 9b05         	ldr	r3, [sp, #0x14]
  3dedc2: 2200         	movs	r2, #0x0
  3dedc4: f883 20e6    	strb.w	r2, [r3, #0xe6]
  3dedc8: 9b05         	ldr	r3, [sp, #0x14]
  3dedca: 2200         	movs	r2, #0x0
  3dedcc: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  3dedd0: 9b05         	ldr	r3, [sp, #0x14]
  3dedd2: f04f 0200    	mov.w	r2, #0x0
  3dedd6: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  3dedda: 9b05         	ldr	r3, [sp, #0x14]
  3deddc: f44f 4200    	mov.w	r2, #0x8000
  3dede0: f2c4 32a2    	movt	r2, #0x43a2
  3dede4: f8c3 219c    	str.w	r2, [r3, #0x19c]
  3dede8: 9b05         	ldr	r3, [sp, #0x14]
  3dedea: f04f 0200    	mov.w	r2, #0x0
  3dedee: f2c4 323e    	movt	r2, #0x433e
  3dedf2: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  3dedf6: 9b05         	ldr	r3, [sp, #0x14]
  3dedf8: f04f 527c    	mov.w	r2, #0x3f000000
  3dedfc: f8c3 2120    	str.w	r2, [r3, #0x120]
  3dee00: 9c05         	ldr	r4, [sp, #0x14]
  3dee02: 466b         	mov	r3, sp
  3dee04: 4618         	mov	r0, r3
  3dee06: ed9f 0b38    	vldr	d0, [pc, #224]          @ 0x3deee8 <SoldierAIController::init()+0x1a8>
  3dee0a: ed9f 1b39    	vldr	d1, [pc, #228]          @ 0x3deef0 <SoldierAIController::init()+0x1b0>
  3dee0e: f7fe fe2b    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x13aa
  3dee12: f504 7494    	add.w	r4, r4, #0x128
  3dee16: 466b         	mov	r3, sp
  3dee18: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dee1a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3dee1e: 9b05         	ldr	r3, [sp, #0x14]
  3dee20: f04f 0200    	mov.w	r2, #0x0
  3dee24: f8c3 2110    	str.w	r2, [r3, #0x110]
  3dee28: 9b05         	ldr	r3, [sp, #0x14]
  3dee2a: f503 748a    	add.w	r4, r3, #0x114
  3dee2e: ab08         	add	r3, sp, #0x20
  3dee30: 4618         	mov	r0, r3
  3dee32: f04f 0100    	mov.w	r1, #0x0
  3dee36: f04f 0200    	mov.w	r2, #0x0
  3dee3a: f1b3 ff59    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b3eb2
  3dee3e: ab08         	add	r3, sp, #0x20
  3dee40: 4620         	mov	r0, r4
  3dee42: 4619         	mov	r1, r3
  3dee44: f1b3 ff82    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1b3f04
  3dee48: 9b05         	ldr	r3, [sp, #0x14]
  3dee4a: f04f 0200    	mov.w	r2, #0x0
  3dee4e: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3dee52: 9b05         	ldr	r3, [sp, #0x14]
  3dee54: f04f 0200    	mov.w	r2, #0x0
  3dee58: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  3dee5c: 9b05         	ldr	r3, [sp, #0x14]
  3dee5e: 2204         	movs	r2, #0x4
  3dee60: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  3dee64: 9b05         	ldr	r3, [sp, #0x14]
  3dee66: 2200         	movs	r2, #0x0
  3dee68: f8c3 2148    	str.w	r2, [r3, #0x148]
  3dee6c: 9b05         	ldr	r3, [sp, #0x14]
  3dee6e: 2200         	movs	r2, #0x0
  3dee70: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3dee74: 9b05         	ldr	r3, [sp, #0x14]
  3dee76: 2200         	movs	r2, #0x0
  3dee78: f8c3 2154    	str.w	r2, [r3, #0x154]
  3dee7c: 9b05         	ldr	r3, [sp, #0x14]
  3dee7e: 2200         	movs	r2, #0x0
  3dee80: f8c3 2150    	str.w	r2, [r3, #0x150]
  3dee84: 9b05         	ldr	r3, [sp, #0x14]
  3dee86: f04f 0200    	mov.w	r2, #0x0
  3dee8a: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3dee8e: 9b05         	ldr	r3, [sp, #0x14]
  3dee90: f64c 42cd    	movw	r2, #0xcccd
  3dee94: f6c3 52cc    	movt	r2, #0x3dcc
  3dee98: f8c3 21b4    	str.w	r2, [r3, #0x1b4]
  3dee9c: 9b05         	ldr	r3, [sp, #0x14]
  3dee9e: 2200         	movs	r2, #0x0
  3deea0: f883 2166    	strb.w	r2, [r3, #0x166]
  3deea4: 9b05         	ldr	r3, [sp, #0x14]
  3deea6: f04f 0200    	mov.w	r2, #0x0
  3deeaa: f8c3 2178    	str.w	r2, [r3, #0x178]
  3deeae: 9b05         	ldr	r3, [sp, #0x14]
  3deeb0: f04f 0200    	mov.w	r2, #0x0
  3deeb4: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3deeb8: 9b05         	ldr	r3, [sp, #0x14]
  3deeba: 2200         	movs	r2, #0x0
  3deebc: f883 21c4    	strb.w	r2, [r3, #0x1c4]
  3deec0: 9b05         	ldr	r3, [sp, #0x14]
  3deec2: 2200         	movs	r2, #0x0
  3deec4: f883 21c5    	strb.w	r2, [r3, #0x1c5]
  3deec8: 9805         	ldr	r0, [sp, #0x14]
  3deeca: f000 f847    	bl	0x3def5c <SoldierAIController::initBody()> @ imm = #0x8e
  3deece: 9805         	ldr	r0, [sp, #0x14]
  3deed0: f000 f87e    	bl	0x3defd0 <SoldierAIController::initShape()> @ imm = #0xfc
  3deed4: 9b05         	ldr	r3, [sp, #0x14]
  3deed6: 4618         	mov	r0, r3
  3deed8: f005 f8c2    	bl	0x3e4060 <SoldierController::reset()> @ imm = #0x5184
  3deedc: 2301         	movs	r3, #0x1
  3deede: 4618         	mov	r0, r3
  3deee0: b00a         	add	sp, #0x28
  3deee2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3deee3); words below are literal-pool data ---
  3deee4: f3af 8000    	nop.w
  3deef4: 0000         	movs	r0, r0
  3deef6: c049         	stm	r0!, {r0, r3, r6}

// ==== SoldierAIController::~SoldierAIController
//      file offset 0x3deef8 (= ELF address; Ghidra 0x3eeef8), 72 bytes, Thumb-2
  3deef8: b500         	push	{lr}
  3deefa: b083         	sub	sp, #0xc
  3deefc: 9001         	str	r0, [sp, #0x4]
  3deefe: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3def38 <SoldierAIController::~SoldierAIController()+0x40>
  3def00: 447b         	add	r3, pc
  3def02: 9a01         	ldr	r2, [sp, #0x4]
  3def04: 490d         	ldr	r1, [pc, #0x34]         @ 0x3def3c <SoldierAIController::~SoldierAIController()+0x44>
  3def06: 5859         	ldr	r1, [r3, r1]
  3def08: 3108         	adds	r1, #0x8
  3def0a: 6011         	str	r1, [r2]
  3def0c: 9a01         	ldr	r2, [sp, #0x4]
  3def0e: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3def3c <SoldierAIController::~SoldierAIController()+0x44>
  3def10: 585b         	ldr	r3, [r3, r1]
  3def12: f503 733b    	add.w	r3, r3, #0x2ec
  3def16: f8c2 30f8    	str.w	r3, [r2, #0xf8]
  3def1a: 9b01         	ldr	r3, [sp, #0x4]
  3def1c: 4618         	mov	r0, r3
  3def1e: f005 f82f    	bl	0x3e3f80 <SoldierController::~SoldierController()> @ imm = #0x505e
  3def22: 2300         	movs	r3, #0x0
  3def24: 2b00         	cmp	r3, #0x0
  3def26: d002         	beq	0x3def2e <SoldierAIController::~SoldierAIController()+0x36> @ imm = #0x4
  3def28: 9801         	ldr	r0, [sp, #0x4]
  3def2a: f3a9 f8bb    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3a9176
  3def2e: 9b01         	ldr	r3, [sp, #0x4]
  3def30: 4618         	mov	r0, r3
  3def32: b003         	add	sp, #0xc
  3def34: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3def37); words below are literal-pool data ---
  3def38: 3b08         	subs	r3, #0x8
  3def3a: 0055         	lsls	r5, r2, #0x1
  3def3c: df08         	svc	#0x8
  3def3e: ffff b500    	<unknown>

// ==== SoldierAIController::~SoldierAIController
//      file offset 0x3def40 (= ELF address; Ghidra 0x3eef40), 28 bytes, Thumb-2
  3def40: b500         	push	{lr}
  3def42: b083         	sub	sp, #0xc
  3def44: 9001         	str	r0, [sp, #0x4]
  3def46: 9801         	ldr	r0, [sp, #0x4]
  3def48: f7ff ffd6    	bl	0x3deef8 <SoldierAIController::~SoldierAIController()> @ imm = #-0x54
  3def4c: 9801         	ldr	r0, [sp, #0x4]
  3def4e: f3a9 f8a9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3a9152
  3def52: 9b01         	ldr	r3, [sp, #0x4]
  3def54: 4618         	mov	r0, r3
  3def56: b003         	add	sp, #0xc
  3def58: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierAIController::initBody
//      file offset 0x3def5c (= ELF address; Ghidra 0x3eef5c), 116 bytes, Thumb-2
  3def5c: b500         	push	{lr}
  3def5e: b083         	sub	sp, #0xc
  3def60: 9001         	str	r0, [sp, #0x4]
  3def62: 9b01         	ldr	r3, [sp, #0x4]
  3def64: edd3 7a6d    	vldr	s15, [r3, #436]
  3def68: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3def6c: 9b01         	ldr	r3, [sp, #0x4]
  3def6e: ed93 7a6d    	vldr	s14, [r3, #436]
  3def72: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x3defc8 <SoldierAIController::initBody()+0x6c>
  3def76: ee67 7a27    	vmul.f32	s15, s14, s15
  3def7a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3def7e: ec51 0b16    	vmov	r0, r1, d6
  3def82: ec53 2b17    	vmov	r2, r3, d7
  3def86: f2f4 f961    	bl	0x6d324c <cpBodyNew>    @ imm = #0x2f42c2
  3def8a: 4602         	mov	r2, r0
  3def8c: 9b01         	ldr	r3, [sp, #0x4]
  3def8e: f8c3 2138    	str.w	r2, [r3, #0x138]
  3def92: 9b01         	ldr	r3, [sp, #0x4]
  3def94: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3def98: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x3defcc <SoldierAIController::initBody()+0x70>
  3def9a: 447a         	add	r2, pc
  3def9c: 601a         	str	r2, [r3]
  3def9e: 9b01         	ldr	r3, [sp, #0x4]
  3defa0: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3defa4: f04f 0200    	mov.w	r2, #0x0
  3defa8: f04f 0300    	mov.w	r3, #0x0
  3defac: f2c4 032e    	movt	r3, #0x402e
  3defb0: e9c1 2322    	strd	r2, r3, [r1, #136]
  3defb4: 9b01         	ldr	r3, [sp, #0x4]
  3defb6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3defba: 9a01         	ldr	r2, [sp, #0x4]
  3defbc: f8c3 2090    	str.w	r2, [r3, #0x90]
  3defc0: b003         	add	sp, #0xc
  3defc2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3defc5); words below are literal-pool data ---
  3defc6: bf00         	nop
  3defc8: 0000         	movs	r0, r0
  3defca: 4348         	muls	r0, r1, r0
  3defcc: fbd7 ffff    	<unknown>

// ==== SoldierAIController::initShape
//      file offset 0x3defd0 (= ELF address; Ghidra 0x3eefd0), 608 bytes, Thumb-2
  3defd0: b570         	push	{r4, r5, r6, lr}
  3defd2: ed2d 8b02    	vpush	{d8}
  3defd6: b0a2         	sub	sp, #0x88
  3defd8: 9005         	str	r0, [sp, #0x14]
  3defda: 4a92         	ldr	r2, [pc, #0x248]        @ 0x3df224 <SoldierAIController::initShape()+0x254>
  3defdc: 447a         	add	r2, pc
  3defde: 4b92         	ldr	r3, [pc, #0x248]        @ 0x3df228 <SoldierAIController::initShape()+0x258>
  3defe0: 58d3         	ldr	r3, [r2, r3]
  3defe2: 681b         	ldr	r3, [r3]
  3defe4: 9306         	str	r3, [sp, #0x18]
  3defe6: ed9d 7a06    	vldr	s14, [sp, #24]
  3defea: eddf 7a8d    	vldr	s15, [pc, #564]         @ 0x3df220 <SoldierAIController::initShape()+0x250>
  3defee: ee67 7a27    	vmul.f32	s15, s14, s15
  3deff2: edcd 7a07    	vstr	s15, [sp, #28]
  3deff6: ed9d 7a06    	vldr	s14, [sp, #24]
  3deffa: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3deffe: ee67 7a27    	vmul.f32	s15, s14, s15
  3df002: edcd 7a08    	vstr	s15, [sp, #32]
  3df006: ed9d 7a06    	vldr	s14, [sp, #24]
  3df00a: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3df00e: ee67 7a27    	vmul.f32	s15, s14, s15
  3df012: edcd 7a09    	vstr	s15, [sp, #36]
  3df016: eddd 7a09    	vldr	s15, [sp, #36]
  3df01a: eef1 7a67    	vneg.f32	s15, s15
  3df01e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df022: eddd 7a08    	vldr	s15, [sp, #32]
  3df026: eeb1 7a67    	vneg.f32	s14, s15
  3df02a: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3df02e: ee77 7a67    	vsub.f32	s15, s14, s15
  3df032: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df036: ab0e         	add	r3, sp, #0x38
  3df038: 4618         	mov	r0, r3
  3df03a: eeb0 0b46    	vmov.f64	d0, d6
  3df03e: eeb0 1b47    	vmov.f64	d1, d7
  3df042: f7fe fd11    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x15de
  3df046: eddd 7a09    	vldr	s15, [sp, #36]
  3df04a: eef1 7a67    	vneg.f32	s15, s15
  3df04e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df052: ed9d 7a08    	vldr	s14, [sp, #32]
  3df056: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3df05a: ee77 7a67    	vsub.f32	s15, s14, s15
  3df05e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df062: ab12         	add	r3, sp, #0x48
  3df064: 4618         	mov	r0, r3
  3df066: eeb0 0b46    	vmov.f64	d0, d6
  3df06a: eeb0 1b47    	vmov.f64	d1, d7
  3df06e: f7fe fcfb    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x160a
  3df072: ed9d 7a06    	vldr	s14, [sp, #24]
  3df076: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3df07a: ee27 7a27    	vmul.f32	s14, s14, s15
  3df07e: eddd 7a08    	vldr	s15, [sp, #32]
  3df082: ee77 7a27    	vadd.f32	s15, s14, s15
  3df086: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df08a: ab16         	add	r3, sp, #0x58
  3df08c: 4618         	mov	r0, r3
  3df08e: ed9f 0b5e    	vldr	d0, [pc, #376]          @ 0x3df208 <SoldierAIController::initShape()+0x238>
  3df092: eeb0 1b47    	vmov.f64	d1, d7
  3df096: f7fe fce7    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1632
  3df09a: eddd 7a09    	vldr	s15, [sp, #36]
  3df09e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df0a2: ed9d 7a08    	vldr	s14, [sp, #32]
  3df0a6: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3df0aa: ee77 7a67    	vsub.f32	s15, s14, s15
  3df0ae: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df0b2: ab1a         	add	r3, sp, #0x68
  3df0b4: 4618         	mov	r0, r3
  3df0b6: eeb0 0b46    	vmov.f64	d0, d6
  3df0ba: eeb0 1b47    	vmov.f64	d1, d7
  3df0be: f7fe fcd3    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x165a
  3df0c2: eddd 7a09    	vldr	s15, [sp, #36]
  3df0c6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df0ca: eddd 7a08    	vldr	s15, [sp, #32]
  3df0ce: eeb1 7a67    	vneg.f32	s14, s15
  3df0d2: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3df0d6: ee77 7a67    	vsub.f32	s15, s14, s15
  3df0da: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df0de: ab1e         	add	r3, sp, #0x78
  3df0e0: 4618         	mov	r0, r3
  3df0e2: eeb0 0b46    	vmov.f64	d0, d6
  3df0e6: eeb0 1b47    	vmov.f64	d1, d7
  3df0ea: f7fe fcbd    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1686
  3df0ee: 9b05         	ldr	r3, [sp, #0x14]
  3df0f0: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  3df0f4: ad0e         	add	r5, sp, #0x38
  3df0f6: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x3df22c <SoldierAIController::initShape()+0x25c>
  3df0f8: 447b         	add	r3, pc
  3df0fa: 466c         	mov	r4, sp
  3df0fc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3df0fe: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3df102: 4630         	mov	r0, r6
  3df104: 2105         	movs	r1, #0x5
  3df106: 462a         	mov	r2, r5
  3df108: f2f5 fc20    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x2f5840
  3df10c: 4602         	mov	r2, r0
  3df10e: 9b05         	ldr	r3, [sp, #0x14]
  3df110: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3df114: 9b05         	ldr	r3, [sp, #0x14]
  3df116: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3df11a: 2215         	movs	r2, #0x15
  3df11c: 655a         	str	r2, [r3, #0x54]
  3df11e: 9b05         	ldr	r3, [sp, #0x14]
  3df120: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3df124: 2215         	movs	r2, #0x15
  3df126: 65da         	str	r2, [r3, #0x5c]
  3df128: 9b05         	ldr	r3, [sp, #0x14]
  3df12a: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3df12e: 2215         	movs	r2, #0x15
  3df130: 659a         	str	r2, [r3, #0x58]
  3df132: 9b05         	ldr	r3, [sp, #0x14]
  3df134: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3df138: a335         	adr	r3, #212 <SoldierAIController::initShape()+0x1a1>
  3df13a: e9d3 2300    	ldrd	r2, r3, [r3]
  3df13e: e9c1 230c    	strd	r2, r3, [r1, #48]
  3df142: 9b05         	ldr	r3, [sp, #0x14]
  3df144: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3df148: a333         	adr	r3, #204 <SoldierAIController::initShape()+0x1af>
  3df14a: e9d3 2300    	ldrd	r2, r3, [r3]
  3df14e: e9c1 230e    	strd	r2, r3, [r1, #56]
  3df152: 9b05         	ldr	r3, [sp, #0x14]
  3df154: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3df158: 9a05         	ldr	r2, [sp, #0x14]
  3df15a: 651a         	str	r2, [r3, #0x50]
  3df15c: 9b05         	ldr	r3, [sp, #0x14]
  3df15e: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3df162: eddd 7a07    	vldr	s15, [sp, #28]
  3df166: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df16a: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3df16e: ee26 8b07    	vmul.f64	d8, d6, d7
  3df172: ed9d 7a06    	vldr	s14, [sp, #24]
  3df176: eddf 7a2a    	vldr	s15, [pc, #168]         @ 0x3df220 <SoldierAIController::initShape()+0x250>
  3df17a: ee67 7a27    	vmul.f32	s15, s14, s15
  3df17e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df182: ab0a         	add	r3, sp, #0x28
  3df184: 4618         	mov	r0, r3
  3df186: ed9f 0b20    	vldr	d0, [pc, #128]          @ 0x3df208 <SoldierAIController::initShape()+0x238>
  3df18a: eeb0 1b47    	vmov.f64	d1, d7
  3df18e: f7fe fc6b    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x172a
  3df192: 466c         	mov	r4, sp
  3df194: ab0a         	add	r3, sp, #0x28
  3df196: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3df198: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3df19c: 4628         	mov	r0, r5
  3df19e: ec53 2b18    	vmov	r2, r3, d8
  3df1a2: f2f5 ffdd    	bl	0x6d5160 <cpCircleShapeNew> @ imm = #0x2f5fba
  3df1a6: 4602         	mov	r2, r0
  3df1a8: 9b05         	ldr	r3, [sp, #0x14]
  3df1aa: f8c3 2140    	str.w	r2, [r3, #0x140]
  3df1ae: 9b05         	ldr	r3, [sp, #0x14]
  3df1b0: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3df1b4: 2215         	movs	r2, #0x15
  3df1b6: 655a         	str	r2, [r3, #0x54]
  3df1b8: 9b05         	ldr	r3, [sp, #0x14]
  3df1ba: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3df1be: 2215         	movs	r2, #0x15
  3df1c0: 65da         	str	r2, [r3, #0x5c]
  3df1c2: 9b05         	ldr	r3, [sp, #0x14]
  3df1c4: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3df1c8: 2215         	movs	r2, #0x15
  3df1ca: 659a         	str	r2, [r3, #0x58]
  3df1cc: 9b05         	ldr	r3, [sp, #0x14]
  3df1ce: f8d3 1140    	ldr.w	r1, [r3, #0x140]
  3df1d2: f04f 0200    	mov.w	r2, #0x0
  3df1d6: f04f 0300    	mov.w	r3, #0x0
  3df1da: f6c3 73e0    	movt	r3, #0x3fe0
  3df1de: e9c1 230c    	strd	r2, r3, [r1, #48]
  3df1e2: 9b05         	ldr	r3, [sp, #0x14]
  3df1e4: f8d3 1140    	ldr.w	r1, [r3, #0x140]
  3df1e8: a30b         	adr	r3, #44 <SoldierAIController::initShape()+0x227>
  3df1ea: e9d3 2300    	ldrd	r2, r3, [r3]
  3df1ee: e9c1 230e    	strd	r2, r3, [r1, #56]
  3df1f2: 9b05         	ldr	r3, [sp, #0x14]
  3df1f4: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3df1f8: 9a05         	ldr	r2, [sp, #0x14]
  3df1fa: 651a         	str	r2, [r3, #0x50]
  3df1fc: b022         	add	sp, #0x88
  3df1fe: ecbd 8b02    	vpop	{d8}
  3df202: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3df203); words below are literal-pool data ---
  3df204: f3af 8000    	nop.w
  3df210: 0000         	movs	r0, r0
  3df212: a000         	adr	r0, #0 <SoldierAIController::initShape()+0x246>
  3df214: 9999         	ldr	r1, [sp, #0x264]
  3df216: 3fe9         	subs	r7, #0xe9
  3df218: 0000         	movs	r0, r0
  3df21a: a000         	adr	r0, #0 <SoldierAIController::initShape()+0x24e>
  3df21c: 9999         	ldr	r1, [sp, #0x264]
  3df21e: 3fb9         	subs	r7, #0xb9
  3df220: 0000         	movs	r0, r0
  3df222: 420c         	tst	r4, r1
  3df224: 3a2c         	subs	r2, #0x2c
  3df226: 0055         	lsls	r5, r2, #0x1
  3df228: d748         	bvc	0x3df2bc <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x8c> @ imm = #0x90
  3df22a: ffff 8eb4    	<unknown>
  3df22e: 003f         	movs	r7, r7

// ==== SoldierAIController::remoteUpdateStep
//      file offset 0x3df230 (= ELF address; Ghidra 0x3ef230), 1548 bytes, Thumb-2
  3df230: b082         	sub	sp, #0x8
  3df232: b5f0         	push	{r4, r5, r6, r7, lr}
  3df234: ed2d 8b02    	vpush	{d8}
  3df238: b0bd         	sub	sp, #0xf4
  3df23a: 9005         	str	r0, [sp, #0x14]
  3df23c: 9104         	str	r1, [sp, #0x10]
  3df23e: a944         	add	r1, sp, #0x110
  3df240: e881 000c    	stm.w	r1, {r2, r3}
  3df244: 4ca1         	ldr	r4, [pc, #0x284]        @ 0x3df4cc <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x29c>
  3df246: 447c         	add	r4, pc
  3df248: 9b05         	ldr	r3, [sp, #0x14]
  3df24a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df24e: 681b         	ldr	r3, [r3]
  3df250: 3350         	adds	r3, #0x50
  3df252: 681b         	ldr	r3, [r3]
  3df254: 9a05         	ldr	r2, [sp, #0x14]
  3df256: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3df25a: 4610         	mov	r0, r2
  3df25c: 4798         	blx	r3
  3df25e: 4603         	mov	r3, r0
  3df260: edd3 7a00    	vldr	s15, [r3]
  3df264: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3df268: 9b05         	ldr	r3, [sp, #0x14]
  3df26a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df26e: 681b         	ldr	r3, [r3]
  3df270: 3350         	adds	r3, #0x50
  3df272: 681b         	ldr	r3, [r3]
  3df274: 9a05         	ldr	r2, [sp, #0x14]
  3df276: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3df27a: 4610         	mov	r0, r2
  3df27c: 4798         	blx	r3
  3df27e: 4603         	mov	r3, r0
  3df280: edd3 7a01    	vldr	s15, [r3, #4]
  3df284: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df288: ab0c         	add	r3, sp, #0x30
  3df28a: 4618         	mov	r0, r3
  3df28c: eeb0 0b48    	vmov.f64	d0, d8
  3df290: eeb0 1b47    	vmov.f64	d1, d7
  3df294: f7fe fbe8    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1830
  3df298: ab24         	add	r3, sp, #0x90
  3df29a: ed9d 4b44    	vldr	d4, [sp, #272]
  3df29e: ed9d 5b46    	vldr	d5, [sp, #280]
  3df2a2: ed9d 6b0c    	vldr	d6, [sp, #48]
  3df2a6: ed9d 7b0e    	vldr	d7, [sp, #56]
  3df2aa: 4618         	mov	r0, r3
  3df2ac: eeb0 0b44    	vmov.f64	d0, d4
  3df2b0: eeb0 1b45    	vmov.f64	d1, d5
  3df2b4: eeb0 2b46    	vmov.f64	d2, d6
  3df2b8: eeb0 3b47    	vmov.f64	d3, d7
  3df2bc: f7fe fc14    	bl	0x3ddae8 <Slug::getVelocity()+0x2bc> @ imm = #-0x17d8
  3df2c0: ed9d 7a04    	vldr	s14, [sp, #16]
  3df2c4: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3df2c8: ee67 7a27    	vmul.f32	s15, s14, s15
  3df2cc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df2d0: ed9f 6b71    	vldr	d6, [pc, #452]          @ 0x3df498 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x268>
  3df2d4: ee36 6b47    	vsub.f64	d6, d6, d7
  3df2d8: ed9f 7b71    	vldr	d7, [pc, #452]          @ 0x3df4a0 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x270>
  3df2dc: eeb4 6bc7    	vcmpe.f64	d6, d7
  3df2e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3df2e4: d502         	bpl	0x3df2ec <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0xbc> @ imm = #0x4
  3df2e6: ed9f 7b6e    	vldr	d7, [pc, #440]          @ 0x3df4a0 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x270>
  3df2ea: e00b         	b	0x3df304 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0xd4> @ imm = #0x16
  3df2ec: ed9d 7a04    	vldr	s14, [sp, #16]
  3df2f0: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3df2f4: ee67 7a27    	vmul.f32	s15, s14, s15
  3df2f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df2fc: ed9f 6b66    	vldr	d6, [pc, #408]          @ 0x3df498 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x268>
  3df300: ee36 7b47    	vsub.f64	d7, d6, d7
  3df304: ab10         	add	r3, sp, #0x40
  3df306: ed9d 5b24    	vldr	d5, [sp, #144]
  3df30a: ed9d 6b26    	vldr	d6, [sp, #152]
  3df30e: 4618         	mov	r0, r3
  3df310: eeb0 0b45    	vmov.f64	d0, d5
  3df314: eeb0 1b46    	vmov.f64	d1, d6
  3df318: eeb0 2b47    	vmov.f64	d2, d7
  3df31c: f7fe fc10    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x17e0
  3df320: ab14         	add	r3, sp, #0x50
  3df322: ed9d 4b0c    	vldr	d4, [sp, #48]
  3df326: ed9d 5b0e    	vldr	d5, [sp, #56]
  3df32a: ed9d 6b10    	vldr	d6, [sp, #64]
  3df32e: ed9d 7b12    	vldr	d7, [sp, #72]
  3df332: 4618         	mov	r0, r3
  3df334: eeb0 0b44    	vmov.f64	d0, d4
  3df338: eeb0 1b45    	vmov.f64	d1, d5
  3df33c: eeb0 2b46    	vmov.f64	d2, d6
  3df340: eeb0 3b47    	vmov.f64	d3, d7
  3df344: f7fe fba4    	bl	0x3dda90 <Slug::getVelocity()+0x264> @ imm = #-0x18b8
  3df348: 9b05         	ldr	r3, [sp, #0x14]
  3df34a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df34e: 4618         	mov	r0, r3
  3df350: f014 fd64    	bl	0x3f3e1c <SoldierView::getBodyRotation()> @ imm = #0x14ac8
  3df354: ee07 0a90    	vmov	s15, r0
  3df358: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df35c: ec51 0b17    	vmov	r0, r1, d7
  3df360: f6f6 edd2    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x10945c
  3df364: 4606         	mov	r6, r0
  3df366: 460f         	mov	r7, r1
  3df368: 9b05         	ldr	r3, [sp, #0x14]
  3df36a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df36e: 4618         	mov	r0, r3
  3df370: f014 fd54    	bl	0x3f3e1c <SoldierView::getBodyRotation()> @ imm = #0x14aa8
  3df374: ee07 0a90    	vmov	s15, r0
  3df378: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df37c: ec51 0b17    	vmov	r0, r1, d7
  3df380: f6f6 edc8    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x109470
  3df384: 4602         	mov	r2, r0
  3df386: 460b         	mov	r3, r1
  3df388: a918         	add	r1, sp, #0x60
  3df38a: 4608         	mov	r0, r1
  3df38c: ec47 6b10    	vmov	d0, r6, r7
  3df390: ec43 2b11    	vmov	d1, r2, r3
  3df394: f7fe fb68    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1930
  3df398: eddd 7a4c    	vldr	s15, [sp, #304]
  3df39c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df3a0: ec51 0b17    	vmov	r0, r1, d7
  3df3a4: f6f6 edb0    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1094a0
  3df3a8: 4606         	mov	r6, r0
  3df3aa: 460f         	mov	r7, r1
  3df3ac: eddd 7a4c    	vldr	s15, [sp, #304]
  3df3b0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df3b4: ec51 0b17    	vmov	r0, r1, d7
  3df3b8: f6f6 edac    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1094a8
  3df3bc: 4602         	mov	r2, r0
  3df3be: 460b         	mov	r3, r1
  3df3c0: a91c         	add	r1, sp, #0x70
  3df3c2: 4608         	mov	r0, r1
  3df3c4: ec47 6b10    	vmov	d0, r6, r7
  3df3c8: ec43 2b11    	vmov	d1, r2, r3
  3df3cc: f7fe fb4c    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1968
  3df3d0: ab28         	add	r3, sp, #0xa0
  3df3d2: ed9d 6b18    	vldr	d6, [sp, #96]
  3df3d6: ed9d 7b1a    	vldr	d7, [sp, #104]
  3df3da: 4618         	mov	r0, r3
  3df3dc: eeb0 0b46    	vmov.f64	d0, d6
  3df3e0: eeb0 1b47    	vmov.f64	d1, d7
  3df3e4: ed9f 2b30    	vldr	d2, [pc, #192]          @ 0x3df4a8 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x278>
  3df3e8: f7fe fbaa    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x18ac
  3df3ec: ab2c         	add	r3, sp, #0xb0
  3df3ee: ed9d 6b1c    	vldr	d6, [sp, #112]
  3df3f2: ed9d 7b1e    	vldr	d7, [sp, #120]
  3df3f6: 4618         	mov	r0, r3
  3df3f8: eeb0 0b46    	vmov.f64	d0, d6
  3df3fc: eeb0 1b47    	vmov.f64	d1, d7
  3df400: ed9f 2b2b    	vldr	d2, [pc, #172]          @ 0x3df4b0 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x280>
  3df404: f7fe fb9c    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x18c8
  3df408: ab20         	add	r3, sp, #0x80
  3df40a: ed9d 4b28    	vldr	d4, [sp, #160]
  3df40e: ed9d 5b2a    	vldr	d5, [sp, #168]
  3df412: ed9d 6b2c    	vldr	d6, [sp, #176]
  3df416: ed9d 7b2e    	vldr	d7, [sp, #184]
  3df41a: 4618         	mov	r0, r3
  3df41c: eeb0 0b44    	vmov.f64	d0, d4
  3df420: eeb0 1b45    	vmov.f64	d1, d5
  3df424: eeb0 2b46    	vmov.f64	d2, d6
  3df428: eeb0 3b47    	vmov.f64	d3, d7
  3df42c: f7fe fb30    	bl	0x3dda90 <Slug::getVelocity()+0x264> @ imm = #-0x19a0
  3df430: ab20         	add	r3, sp, #0x80
  3df432: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3df434: f7fe fd18    	bl	0x3dde68 <Slug::getVelocity()+0x63c> @ imm = #-0x15d0
  3df438: ee07 0a10    	vmov	s14, r0
  3df43c: eddf 7a22    	vldr	s15, [pc, #136]         @ 0x3df4c8 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x298>
  3df440: ee67 7a27    	vmul.f32	s15, s14, s15
  3df444: eef1 7a67    	vneg.f32	s15, s15
  3df448: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3df44c: ed8d 7b08    	vstr	d7, [sp, #32]
  3df450: 9b05         	ldr	r3, [sp, #0x14]
  3df452: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3df456: 2b00         	cmp	r3, #0x0
  3df458: d03a         	beq	0x3df4d0 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x2a0> @ imm = #0x74
  3df45a: 9b05         	ldr	r3, [sp, #0x14]
  3df45c: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3df460: ab30         	add	r3, sp, #0xc0
  3df462: 4618         	mov	r0, r3
  3df464: ed9f 0b14    	vldr	d0, [pc, #80]           @ 0x3df4b8 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x288>
  3df468: ed9f 1b15    	vldr	d1, [pc, #84]           @ 0x3df4c0 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x290>
  3df46c: f7fe fafc    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1a08
  3df470: ed9d 6b30    	vldr	d6, [sp, #192]
  3df474: ed9d 7b32    	vldr	d7, [sp, #200]
  3df478: 4628         	mov	r0, r5
  3df47a: eeb0 0b46    	vmov.f64	d0, d6
  3df47e: eeb0 1b47    	vmov.f64	d1, d7
  3df482: f7fe fc45    	bl	0x3ddd10 <Slug::getVelocity()+0x4e4> @ imm = #-0x1776
  3df486: 9b05         	ldr	r3, [sp, #0x14]
  3df488: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df48c: 4618         	mov	r0, r3
  3df48e: 2100         	movs	r1, #0x0
  3df490: f014 fe16    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0x14c2c
  3df494: e041         	b	0x3df51a <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x2ea> @ imm = #0x82
  3df496: bf00         	nop
  3df498: 872b         	strh	r3, [r5, #0x38]
  3df49a: d916         	bls	0x3df4ca <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x29a> @ imm = #0x2c
  3df49c: f7ce 3fd7    	ubfx	pc, lr, #0xf, #0x18
  3df4a0: 999a         	ldr	r1, [sp, #0x268]
  3df4a2: 9999         	ldr	r1, [sp, #0x264]
  3df4a4: 9999         	ldr	r1, [sp, #0x264]
  3df4a6: 3fa9         	subs	r7, #0xa9
  3df4a8: 6666         	str	r6, [r4, #0x64]
  3df4aa: 6666         	str	r6, [r4, #0x64]
  3df4ac: 6666         	str	r6, [r4, #0x64]
  3df4ae: 3fe6         	subs	r7, #0xe6
  3df4b0: 3333         	adds	r3, #0x33
  3df4b2: 3333         	adds	r3, #0x33
  3df4b4: 3333         	adds	r3, #0x33
  3df4b6: 3fd3         	subs	r7, #0xd3
  3df4b8: 0000         	movs	r0, r0
  3df4ba: 0000         	movs	r0, r0
  3df4bc: 8800         	ldrh	r0, [r0]
  3df4be: 40c3         	lsrs	r3, r0
  3df4c0: 0000         	movs	r0, r0
  3df4c2: 0000         	movs	r0, r0
  3df4c4: 8800         	ldrh	r0, [r0]
  3df4c6: c0c3         	stm	r0!, {r0, r1, r6, r7}
  3df4c8: fa35 3c8e    	<unknown>
  3df4cc: 37c2         	adds	r7, #0xc2
  3df4ce: 0055         	lsls	r5, r2, #0x1
  3df4d0: 9b05         	ldr	r3, [sp, #0x14]
  3df4d2: f893 31c4    	ldrb.w	r3, [r3, #0x1c4]
  3df4d6: f083 0301    	eor	r3, r3, #0x1
  3df4da: b2db         	uxtb	r3, r3
  3df4dc: 2b00         	cmp	r3, #0x0
  3df4de: d01c         	beq	0x3df51a <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x2ea> @ imm = #0x38
  3df4e0: 9b05         	ldr	r3, [sp, #0x14]
  3df4e2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3df4e6: ed9d 6b14    	vldr	d6, [sp, #80]
  3df4ea: ed9d 7b16    	vldr	d7, [sp, #88]
  3df4ee: 4618         	mov	r0, r3
  3df4f0: eeb0 0b46    	vmov.f64	d0, d6
  3df4f4: eeb0 1b47    	vmov.f64	d1, d7
  3df4f8: f7fe fc0a    	bl	0x3ddd10 <Slug::getVelocity()+0x4e4> @ imm = #-0x17ec
  3df4fc: 9b05         	ldr	r3, [sp, #0x14]
  3df4fe: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3df502: 4618         	mov	r0, r3
  3df504: e9dd 2308    	ldrd	r2, r3, [sp, #32]
  3df508: f2f3 fe43    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2f3c86
  3df50c: 9b05         	ldr	r3, [sp, #0x14]
  3df50e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df512: 4618         	mov	r0, r3
  3df514: 2101         	movs	r1, #0x1
  3df516: f014 fdd3    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0x14ba6
  3df51a: 9b05         	ldr	r3, [sp, #0x14]
  3df51c: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3df520: ed9d 7b14    	vldr	d7, [sp, #80]
  3df524: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3df528: ed9d 7b16    	vldr	d7, [sp, #88]
  3df52c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3df530: ab0a         	add	r3, sp, #0x28
  3df532: 4618         	mov	r0, r3
  3df534: ee16 1a90    	vmov	r1, s13
  3df538: ee17 2a90    	vmov	r2, s15
  3df53c: f1b3 fbd8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b37b0
  3df540: ed9d 7b48    	vldr	d7, [sp, #288]
  3df544: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3df548: ed9d 7b4a    	vldr	d7, [sp, #296]
  3df54c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3df550: ab34         	add	r3, sp, #0xd0
  3df552: 4618         	mov	r0, r3
  3df554: ee16 1a90    	vmov	r1, s13
  3df558: ee17 2a90    	vmov	r2, s15
  3df55c: f1b3 fbc8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b3790
  3df560: ed9d 7b08    	vldr	d7, [sp, #32]
  3df564: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3df568: 9b05         	ldr	r3, [sp, #0x14]
  3df56a: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  3df56e: 9b05         	ldr	r3, [sp, #0x14]
  3df570: f503 738a    	add.w	r3, r3, #0x114
  3df574: aa38         	add	r2, sp, #0xe0
  3df576: 4610         	mov	r0, r2
  3df578: 4619         	mov	r1, r3
  3df57a: f1b3 fbc7    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x1b378e
  3df57e: 9b05         	ldr	r3, [sp, #0x14]
  3df580: f8d3 010c    	ldr.w	r0, [r3, #0x10c]
  3df584: 9b05         	ldr	r3, [sp, #0x14]
  3df586: f893 115a    	ldrb.w	r1, [r3, #0x15a]
  3df58a: aa0a         	add	r2, sp, #0x28
  3df58c: ab34         	add	r3, sp, #0xd0
  3df58e: 9600         	str	r6, [sp]
  3df590: ae38         	add	r6, sp, #0xe0
  3df592: 9601         	str	r6, [sp, #0x4]
  3df594: 9002         	str	r0, [sp, #0x8]
  3df596: 9103         	str	r1, [sp, #0xc]
  3df598: 4628         	mov	r0, r5
  3df59a: 4611         	mov	r1, r2
  3df59c: 461a         	mov	r2, r3
  3df59e: ee18 3a10    	vmov	r3, s16
  3df5a2: f013 f9b1    	bl	0x3f2908 <SoldierView::updateBody(cocos2d::CCPoint, cocos2d::CCPoint, float, float, cocos2d::CCPoint, float, bool)> @ imm = #0x13362
  3df5a6: 9b05         	ldr	r3, [sp, #0x14]
  3df5a8: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  3df5ac: 9b05         	ldr	r3, [sp, #0x14]
  3df5ae: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3df5b2: 2b00         	cmp	r3, #0x0
  3df5b4: bf0c         	ite	eq
  3df5b6: 2300         	moveq	r3, #0x0
  3df5b8: 2301         	movne	r3, #0x1
  3df5ba: b2db         	uxtb	r3, r3
  3df5bc: 4610         	mov	r0, r2
  3df5be: 4619         	mov	r1, r3
  3df5c0: f7ff facc    	bl	0x3deb5c <SoldierView::setHasWeapon(bool)> @ imm = #-0xa68
  3df5c4: 9b05         	ldr	r3, [sp, #0x14]
  3df5c6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df5ca: 4618         	mov	r0, r3
  3df5cc: 9904         	ldr	r1, [sp, #0x10]
  3df5ce: f013 fad7    	bl	0x3f2b80 <SoldierView::updateStep(float)> @ imm = #0x135ae
  3df5d2: 9b05         	ldr	r3, [sp, #0x14]
  3df5d4: ed93 7a42    	vldr	s14, [r3, #264]
  3df5d8: eddd 7a04    	vldr	s15, [sp, #16]
  3df5dc: ee77 7a27    	vadd.f32	s15, s14, s15
  3df5e0: 9b05         	ldr	r3, [sp, #0x14]
  3df5e2: edc3 7a42    	vstr	s15, [r3, #264]
  3df5e6: 9b05         	ldr	r3, [sp, #0x14]
  3df5e8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3df5ec: 2b00         	cmp	r3, #0x0
  3df5ee: d021         	beq	0x3df634 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x404> @ imm = #0x42
  3df5f0: 9b05         	ldr	r3, [sp, #0x14]
  3df5f2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3df5f6: 681b         	ldr	r3, [r3]
  3df5f8: f503 7341    	add.w	r3, r3, #0x304
  3df5fc: 681d         	ldr	r5, [r3]
  3df5fe: 9b05         	ldr	r3, [sp, #0x14]
  3df600: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3df604: 9b05         	ldr	r3, [sp, #0x14]
  3df606: 681b         	ldr	r3, [r3]
  3df608: f503 730f    	add.w	r3, r3, #0x23c
  3df60c: 681b         	ldr	r3, [r3]
  3df60e: 9805         	ldr	r0, [sp, #0x14]
  3df610: 4798         	blx	r3
  3df612: 4603         	mov	r3, r0
  3df614: 4630         	mov	r0, r6
  3df616: 4619         	mov	r1, r3
  3df618: 47a8         	blx	r5
  3df61a: 9b05         	ldr	r3, [sp, #0x14]
  3df61c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3df620: 681b         	ldr	r3, [r3]
  3df622: f503 73d8    	add.w	r3, r3, #0x1b0
  3df626: 681b         	ldr	r3, [r3]
  3df628: 9a05         	ldr	r2, [sp, #0x14]
  3df62a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3df62e: 4610         	mov	r0, r2
  3df630: 9904         	ldr	r1, [sp, #0x10]
  3df632: 4798         	blx	r3
  3df634: 9b05         	ldr	r3, [sp, #0x14]
  3df636: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3df63a: 2b00         	cmp	r3, #0x0
  3df63c: d029         	beq	0x3df692 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x462> @ imm = #0x52
  3df63e: 9b05         	ldr	r3, [sp, #0x14]
  3df640: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3df644: 681b         	ldr	r3, [r3]
  3df646: f503 7341    	add.w	r3, r3, #0x304
  3df64a: 681d         	ldr	r5, [r3]
  3df64c: 9b05         	ldr	r3, [sp, #0x14]
  3df64e: f8d3 6150    	ldr.w	r6, [r3, #0x150]
  3df652: 9b05         	ldr	r3, [sp, #0x14]
  3df654: 681b         	ldr	r3, [r3]
  3df656: f503 7321    	add.w	r3, r3, #0x284
  3df65a: 681b         	ldr	r3, [r3]
  3df65c: 9805         	ldr	r0, [sp, #0x14]
  3df65e: 4798         	blx	r3
  3df660: 4603         	mov	r3, r0
  3df662: 4630         	mov	r0, r6
  3df664: 4619         	mov	r1, r3
  3df666: 47a8         	blx	r5
  3df668: 9b05         	ldr	r3, [sp, #0x14]
  3df66a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3df66e: 681b         	ldr	r3, [r3]
  3df670: f503 73d8    	add.w	r3, r3, #0x1b0
  3df674: 681b         	ldr	r3, [r3]
  3df676: 9a05         	ldr	r2, [sp, #0x14]
  3df678: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3df67c: 4610         	mov	r0, r2
  3df67e: 9904         	ldr	r1, [sp, #0x10]
  3df680: 4798         	blx	r3
  3df682: 9b05         	ldr	r3, [sp, #0x14]
  3df684: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df688: 4618         	mov	r0, r3
  3df68a: 2101         	movs	r1, #0x1
  3df68c: f014 fdd8    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0x14bb0
  3df690: e006         	b	0x3df6a0 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x470> @ imm = #0xc
  3df692: 9b05         	ldr	r3, [sp, #0x14]
  3df694: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3df698: 4618         	mov	r0, r3
  3df69a: 2100         	movs	r1, #0x0
  3df69c: f014 fdd0    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0x14ba0
  3df6a0: 9b05         	ldr	r3, [sp, #0x14]
  3df6a2: edd3 7a43    	vldr	s15, [r3, #268]
  3df6a6: eef5 7ac0    	vcmpe.f32	s15, #0
  3df6aa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3df6ae: dd2d         	ble	0x3df70c <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x4dc> @ imm = #0x5a
  3df6b0: 9b05         	ldr	r3, [sp, #0x14]
  3df6b2: ed93 7a42    	vldr	s14, [r3, #264]
  3df6b6: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3df6ba: eeb4 7ae7    	vcmpe.f32	s14, s15
  3df6be: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3df6c2: dd28         	ble	0x3df716 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x4e6> @ imm = #0x50
  3df6c4: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3df838 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x608>
  3df6c6: 58e3         	ldr	r3, [r4, r3]
  3df6c8: 681d         	ldr	r5, [r3]
  3df6ca: 9b05         	ldr	r3, [sp, #0x14]
  3df6cc: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3df6d0: 9a05         	ldr	r2, [sp, #0x14]
  3df6d2: ed92 7a43    	vldr	s14, [r2, #268]
  3df6d6: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3df6da: ee67 7a27    	vmul.f32	s15, s14, s15
  3df6de: edcd 7a02    	vstr	s15, [sp, #8]
  3df6e2: f04f 527e    	mov.w	r2, #0x3f800000
  3df6e6: 9203         	str	r2, [sp, #0xc]
  3df6e8: 466a         	mov	r2, sp
  3df6ea: f103 0130    	add.w	r1, r3, #0x30
  3df6ee: c903         	ldm	r1, {r0, r1}
  3df6f0: e882 0003    	stm.w	r2, {r0, r1}
  3df6f4: 3328         	adds	r3, #0x28
  3df6f6: cb0c         	ldm	r3, {r2, r3}
  3df6f8: 4628         	mov	r0, r5
  3df6fa: 2108         	movs	r1, #0x8
  3df6fc: f018 fca2    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x18944
  3df700: 9b05         	ldr	r3, [sp, #0x14]
  3df702: f04f 0200    	mov.w	r2, #0x0
  3df706: f8c3 2108    	str.w	r2, [r3, #0x108]
  3df70a: e004         	b	0x3df716 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x4e6> @ imm = #0x8
  3df70c: 9b05         	ldr	r3, [sp, #0x14]
  3df70e: f04f 527d    	mov.w	r2, #0x3f400000
  3df712: f8c3 2108    	str.w	r2, [r3, #0x108]
  3df716: 9b05         	ldr	r3, [sp, #0x14]
  3df718: ed93 7a70    	vldr	s14, [r3, #448]
  3df71c: eddd 7a04    	vldr	s15, [sp, #16]
  3df720: ee77 7a27    	vadd.f32	s15, s14, s15
  3df724: 9b05         	ldr	r3, [sp, #0x14]
  3df726: edc3 7a70    	vstr	s15, [r3, #448]
  3df72a: 9b05         	ldr	r3, [sp, #0x14]
  3df72c: 681b         	ldr	r3, [r3]
  3df72e: f503 73d8    	add.w	r3, r3, #0x1b0
  3df732: 681b         	ldr	r3, [r3]
  3df734: aa34         	add	r2, sp, #0xd0
  3df736: 4610         	mov	r0, r2
  3df738: 9905         	ldr	r1, [sp, #0x14]
  3df73a: 4798         	blx	r3
  3df73c: ab34         	add	r3, sp, #0xd0
  3df73e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3df740: f2f7 fcba    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f7974
  3df744: ec41 0b17    	vmov	d7, r0, r1
  3df748: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3df74c: edcd 7a07    	vstr	s15, [sp, #28]
  3df750: 9b05         	ldr	r3, [sp, #0x14]
  3df752: ed93 7a70    	vldr	s14, [r3, #448]
  3df756: eddf 6a35    	vldr	s13, [pc, #212]         @ 0x3df82c <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x5fc>
  3df75a: eddd 7a07    	vldr	s15, [sp, #28]
  3df75e: eec6 7aa7    	vdiv.f32	s15, s13, s15
  3df762: eeb4 7ae7    	vcmpe.f32	s14, s15
  3df766: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3df76a: dd4e         	ble	0x3df80a <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x5da> @ imm = #0x9c
  3df76c: 9b05         	ldr	r3, [sp, #0x14]
  3df76e: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3df772: 2b00         	cmp	r3, #0x0
  3df774: d049         	beq	0x3df80a <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x5da> @ imm = #0x92
  3df776: 9b05         	ldr	r3, [sp, #0x14]
  3df778: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3df77c: f083 0301    	eor	r3, r3, #0x1
  3df780: b2db         	uxtb	r3, r3
  3df782: 2b00         	cmp	r3, #0x0
  3df784: d041         	beq	0x3df80a <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x5da> @ imm = #0x82
  3df786: 9b05         	ldr	r3, [sp, #0x14]
  3df788: f04f 0200    	mov.w	r2, #0x0
  3df78c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3df790: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3df838 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x608>
  3df792: 58e3         	ldr	r3, [r4, r3]
  3df794: 681c         	ldr	r4, [r3]
  3df796: 9b05         	ldr	r3, [sp, #0x14]
  3df798: 681b         	ldr	r3, [r3]
  3df79a: f503 73d6    	add.w	r3, r3, #0x1ac
  3df79e: 681b         	ldr	r3, [r3]
  3df7a0: aa38         	add	r2, sp, #0xe0
  3df7a2: 4610         	mov	r0, r2
  3df7a4: 9905         	ldr	r1, [sp, #0x14]
  3df7a6: 4798         	blx	r3
  3df7a8: ed9d 7a07    	vldr	s14, [sp, #28]
  3df7ac: eddf 7a20    	vldr	s15, [pc, #128]         @ 0x3df830 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x600>
  3df7b0: ee87 8a27    	vdiv.f32	s16, s14, s15
  3df7b4: f7fe f8d2    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x1e5c
  3df7b8: 4603         	mov	r3, r0
  3df7ba: ee07 3a90    	vmov	s15, r3
  3df7be: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3df7c2: eddf 7a1c    	vldr	s15, [pc, #112]         @ 0x3df834 <SoldierAIController::remoteUpdateStep(float, cpVect, cpVect, float)+0x604>
  3df7c6: ee87 7a27    	vdiv.f32	s14, s14, s15
  3df7ca: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3df7ce: ee77 7a67    	vsub.f32	s15, s14, s15
  3df7d2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df7d6: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3df7da: ee26 6b07    	vmul.f64	d6, d6, d7
  3df7de: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3df7e2: ee36 7b07    	vadd.f64	d7, d6, d7
  3df7e6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3df7ea: ed8d 8a02    	vstr	s16, [sp, #8]
  3df7ee: edcd 7a03    	vstr	s15, [sp, #12]
  3df7f2: 466b         	mov	r3, sp
  3df7f4: aa3a         	add	r2, sp, #0xe8
  3df7f6: e892 0003    	ldm.w	r2, {r0, r1}
  3df7fa: e883 0003    	stm.w	r3, {r0, r1}
  3df7fe: ab38         	add	r3, sp, #0xe0
  3df800: cb0c         	ldm	r3, {r2, r3}
  3df802: 4620         	mov	r0, r4
  3df804: 210a         	movs	r1, #0xa
  3df806: f018 fc1d    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x1883a
  3df80a: 9b05         	ldr	r3, [sp, #0x14]
  3df80c: f893 20e6    	ldrb.w	r2, [r3, #0xe6]
  3df810: 9b05         	ldr	r3, [sp, #0x14]
  3df812: f883 20e8    	strb.w	r2, [r3, #0xe8]
  3df816: 9b05         	ldr	r3, [sp, #0x14]
  3df818: 2200         	movs	r2, #0x0
  3df81a: f883 20e6    	strb.w	r2, [r3, #0xe6]
  3df81e: b03d         	add	sp, #0xf4
  3df820: ecbd 8b02    	vpop	{d8}
  3df824: e8bd 40f0    	pop.w	{r4, r5, r6, r7, lr}
  3df828: b002         	add	sp, #0x8
  3df82a: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3df82b); words below are literal-pool data ---
  3df82c: 0000         	movs	r0, r0
  3df82e: 4248         	rsbs	r0, r1, #0
  3df830: 0000         	movs	r0, r0
  3df832: 4348         	muls	r0, r1, r0
  3df834: 0000         	movs	r0, r0
  3df836: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3dfa38 <SoldierAIController::updateStep(float)+0x1f8>
  3df838: d730         	bvc	0x3df89c <SoldierAIController::updateStep(float)+0x5c> @ imm = #0x60
  3df83a: ffff f3af    	<unknown>

// ==== SoldierAIController::updateStep
//      file offset 0x3df840 (= ELF address; Ghidra 0x3ef840), 4320 bytes, Thumb-2
  3df840: b5f0         	push	{r4, r5, r6, r7, lr}
  3df842: ed2d 8b02    	vpush	{d8}
  3df846: b0dd         	sub	sp, #0x174
  3df848: ab09         	add	r3, sp, #0x24
  3df84a: 6018         	str	r0, [r3]
  3df84c: ab08         	add	r3, sp, #0x20
  3df84e: 6019         	str	r1, [r3]
  3df850: 4ce9         	ldr	r4, [pc, #0x3a4]        @ 0x3dfbf8 <SoldierAIController::updateStep(float)+0x3b8>
  3df852: 447c         	add	r4, pc
  3df854: ab09         	add	r3, sp, #0x24
  3df856: 681b         	ldr	r3, [r3]
  3df858: ed93 7a61    	vldr	s14, [r3, #388]
  3df85c: ab08         	add	r3, sp, #0x20
  3df85e: edd3 7a00    	vldr	s15, [r3]
  3df862: ee77 7a27    	vadd.f32	s15, s14, s15
  3df866: ab09         	add	r3, sp, #0x24
  3df868: 681b         	ldr	r3, [r3]
  3df86a: edc3 7a61    	vstr	s15, [r3, #388]
  3df86e: ab09         	add	r3, sp, #0x24
  3df870: 681b         	ldr	r3, [r3]
  3df872: ed93 7a42    	vldr	s14, [r3, #264]
  3df876: ab08         	add	r3, sp, #0x20
  3df878: edd3 7a00    	vldr	s15, [r3]
  3df87c: ee77 7a27    	vadd.f32	s15, s14, s15
  3df880: ab09         	add	r3, sp, #0x24
  3df882: 681b         	ldr	r3, [r3]
  3df884: edc3 7a42    	vstr	s15, [r3, #264]
  3df888: ab09         	add	r3, sp, #0x24
  3df88a: 681b         	ldr	r3, [r3]
  3df88c: ed93 7a6c    	vldr	s14, [r3, #432]
  3df890: ab08         	add	r3, sp, #0x20
  3df892: edd3 7a00    	vldr	s15, [r3]
  3df896: ee77 7a27    	vadd.f32	s15, s14, s15
  3df89a: ab09         	add	r3, sp, #0x24
  3df89c: 681b         	ldr	r3, [r3]
  3df89e: edc3 7a6c    	vstr	s15, [r3, #432]
  3df8a2: ab09         	add	r3, sp, #0x24
  3df8a4: 681b         	ldr	r3, [r3]
  3df8a6: ed93 7a65    	vldr	s14, [r3, #404]
  3df8aa: ab08         	add	r3, sp, #0x20
  3df8ac: edd3 7a00    	vldr	s15, [r3]
  3df8b0: ee77 7a27    	vadd.f32	s15, s14, s15
  3df8b4: ab09         	add	r3, sp, #0x24
  3df8b6: 681b         	ldr	r3, [r3]
  3df8b8: edc3 7a65    	vstr	s15, [r3, #404]
  3df8bc: ab09         	add	r3, sp, #0x24
  3df8be: 681b         	ldr	r3, [r3]
  3df8c0: ed93 7a62    	vldr	s14, [r3, #392]
  3df8c4: ab08         	add	r3, sp, #0x20
  3df8c6: edd3 7a00    	vldr	s15, [r3]
  3df8ca: ee77 7a27    	vadd.f32	s15, s14, s15
  3df8ce: ab09         	add	r3, sp, #0x24
  3df8d0: 681b         	ldr	r3, [r3]
  3df8d2: edc3 7a62    	vstr	s15, [r3, #392]
  3df8d6: ab09         	add	r3, sp, #0x24
  3df8d8: 681b         	ldr	r3, [r3]
  3df8da: ed93 7a70    	vldr	s14, [r3, #448]
  3df8de: ab08         	add	r3, sp, #0x20
  3df8e0: edd3 7a00    	vldr	s15, [r3]
  3df8e4: ee77 7a27    	vadd.f32	s15, s14, s15
  3df8e8: ab09         	add	r3, sp, #0x24
  3df8ea: 681b         	ldr	r3, [r3]
  3df8ec: edc3 7a70    	vstr	s15, [r3, #448]
  3df8f0: ab09         	add	r3, sp, #0x24
  3df8f2: 681b         	ldr	r3, [r3]
  3df8f4: f893 3166    	ldrb.w	r3, [r3, #0x166]
  3df8f8: 2b00         	cmp	r3, #0x0
  3df8fa: d015         	beq	0x3df928 <SoldierAIController::updateStep(float)+0xe8> @ imm = #0x2a
  3df8fc: ab09         	add	r3, sp, #0x24
  3df8fe: 681b         	ldr	r3, [r3]
  3df900: ed93 7a5e    	vldr	s14, [r3, #376]
  3df904: ab08         	add	r3, sp, #0x20
  3df906: edd3 7a00    	vldr	s15, [r3]
  3df90a: ee77 7a27    	vadd.f32	s15, s14, s15
  3df90e: ab09         	add	r3, sp, #0x24
  3df910: 681b         	ldr	r3, [r3]
  3df912: edc3 7a5e    	vstr	s15, [r3, #376]
  3df916: ab09         	add	r3, sp, #0x24
  3df918: 681b         	ldr	r3, [r3]
  3df91a: 681b         	ldr	r3, [r3]
  3df91c: f503 7334    	add.w	r3, r3, #0x2d0
  3df920: 681b         	ldr	r3, [r3]
  3df922: aa09         	add	r2, sp, #0x24
  3df924: 6810         	ldr	r0, [r2]
  3df926: 4798         	blx	r3
  3df928: ab09         	add	r3, sp, #0x24
  3df92a: 681b         	ldr	r3, [r3]
  3df92c: edd3 7a5e    	vldr	s15, [r3, #376]
  3df930: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df934: ed9f 7ba6    	vldr	d7, [pc, #664]          @ 0x3dfbd0 <SoldierAIController::updateStep(float)+0x390>
  3df938: eeb4 6bc7    	vcmpe.f64	d6, d7
  3df93c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3df940: dd1f         	ble	0x3df982 <SoldierAIController::updateStep(float)+0x142> @ imm = #0x3e
  3df942: ab09         	add	r3, sp, #0x24
  3df944: 681b         	ldr	r3, [r3]
  3df946: 681b         	ldr	r3, [r3]
  3df948: f503 7332    	add.w	r3, r3, #0x2c8
  3df94c: 681d         	ldr	r5, [r3]
  3df94e: ab54         	add	r3, sp, #0x150
  3df950: 4618         	mov	r0, r3
  3df952: f3aa fd4f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3aaa9e
  3df956: aa58         	add	r2, sp, #0x160
  3df958: ab54         	add	r3, sp, #0x150
  3df95a: 4610         	mov	r0, r2
  3df95c: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x3dfbfc <SoldierAIController::updateStep(float)+0x3bc>
  3df95e: 447a         	add	r2, pc
  3df960: 4611         	mov	r1, r2
  3df962: 461a         	mov	r2, r3
  3df964: f3d7 f87c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d70f8
  3df968: aa09         	add	r2, sp, #0x24
  3df96a: ab58         	add	r3, sp, #0x160
  3df96c: 6810         	ldr	r0, [r2]
  3df96e: 4619         	mov	r1, r3
  3df970: 47a8         	blx	r5
  3df972: ab58         	add	r3, sp, #0x160
  3df974: 4618         	mov	r0, r3
  3df976: f3d5 ffcd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d5f9a
  3df97a: ab54         	add	r3, sp, #0x150
  3df97c: 4618         	mov	r0, r3
  3df97e: f3aa fd3d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3aaa7a
  3df982: ab09         	add	r3, sp, #0x24
  3df984: 681b         	ldr	r3, [r3]
  3df986: 681b         	ldr	r3, [r3]
  3df988: f503 732d    	add.w	r3, r3, #0x2b4
  3df98c: 681b         	ldr	r3, [r3]
  3df98e: aa09         	add	r2, sp, #0x24
  3df990: 6810         	ldr	r0, [r2]
  3df992: 4798         	blx	r3
  3df994: 4603         	mov	r3, r0
  3df996: 2b00         	cmp	r3, #0x0
  3df998: d034         	beq	0x3dfa04 <SoldierAIController::updateStep(float)+0x1c4> @ imm = #0x68
  3df99a: ab09         	add	r3, sp, #0x24
  3df99c: 681b         	ldr	r3, [r3]
  3df99e: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3df9a2: 2b00         	cmp	r3, #0x0
  3df9a4: d02e         	beq	0x3dfa04 <SoldierAIController::updateStep(float)+0x1c4> @ imm = #0x5c
  3df9a6: ab09         	add	r3, sp, #0x24
  3df9a8: 681b         	ldr	r3, [r3]
  3df9aa: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3df9ae: 2b00         	cmp	r3, #0x0
  3df9b0: d028         	beq	0x3dfa04 <SoldierAIController::updateStep(float)+0x1c4> @ imm = #0x50
  3df9b2: ab09         	add	r3, sp, #0x24
  3df9b4: 681b         	ldr	r3, [r3]
  3df9b6: edd3 7a46    	vldr	s15, [r3, #280]
  3df9ba: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df9be: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3df9c2: ee26 6b07    	vmul.f64	d6, d6, d7
  3df9c6: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3df9ca: ee36 7b07    	vadd.f64	d7, d6, d7
  3df9ce: eeb5 7bc0    	vcmpe.f64	d7, #0
  3df9d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3df9d6: dd10         	ble	0x3df9fa <SoldierAIController::updateStep(float)+0x1ba> @ imm = #0x20
  3df9d8: ab09         	add	r3, sp, #0x24
  3df9da: 681b         	ldr	r3, [r3]
  3df9dc: edd3 7a46    	vldr	s15, [r3, #280]
  3df9e0: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3df9e4: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3df9e8: ee26 6b07    	vmul.f64	d6, d6, d7
  3df9ec: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  3df9f0: ee36 7b07    	vadd.f64	d7, d6, d7
  3df9f4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3df9f8: e001         	b	0x3df9fe <SoldierAIController::updateStep(float)+0x1be> @ imm = #0x2
  3df9fa: eddf 7a7d    	vldr	s15, [pc, #500]         @ 0x3dfbf0 <SoldierAIController::updateStep(float)+0x3b0>
  3df9fe: ee17 3a90    	vmov	r3, s15
  3dfa02: e001         	b	0x3dfa08 <SoldierAIController::updateStep(float)+0x1c8> @ imm = #0x2
  3dfa04: f04f 0300    	mov.w	r3, #0x0
  3dfa08: aa09         	add	r2, sp, #0x24
  3dfa0a: 6812         	ldr	r2, [r2]
  3dfa0c: f8c2 310c    	str.w	r3, [r2, #0x10c]
  3dfa10: ab09         	add	r3, sp, #0x24
  3dfa12: 681b         	ldr	r3, [r3]
  3dfa14: 681b         	ldr	r3, [r3]
  3dfa16: 339c         	adds	r3, #0x9c
  3dfa18: 681b         	ldr	r3, [r3]
  3dfa1a: aa09         	add	r2, sp, #0x24
  3dfa1c: 6812         	ldr	r2, [r2]
  3dfa1e: 4610         	mov	r0, r2
  3dfa20: 4798         	blx	r3
  3dfa22: ee07 0a10    	vmov	s14, r0
  3dfa26: eddf 7a73    	vldr	s15, [pc, #460]         @ 0x3dfbf4 <SoldierAIController::updateStep(float)+0x3b4>
  3dfa2a: ee67 7a27    	vmul.f32	s15, s14, s15
  3dfa2e: ab0e         	add	r3, sp, #0x38
  3dfa30: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dfa34: ed83 7b00    	vstr	d7, [r3]
  3dfa38: ab0e         	add	r3, sp, #0x38
  3dfa3a: e9d3 0100    	ldrd	r0, r1, [r3]
  3dfa3e: f6f6 ea64    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x109b38
  3dfa42: 4606         	mov	r6, r0
  3dfa44: 460f         	mov	r7, r1
  3dfa46: ab0e         	add	r3, sp, #0x38
  3dfa48: e9d3 0100    	ldrd	r0, r1, [r3]
  3dfa4c: f6f6 ea62    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x109b3c
  3dfa50: 4602         	mov	r2, r0
  3dfa52: 460b         	mov	r3, r1
  3dfa54: a91c         	add	r1, sp, #0x70
  3dfa56: 4608         	mov	r0, r1
  3dfa58: ec47 6b10    	vmov	d0, r6, r7
  3dfa5c: ec43 2b11    	vmov	d1, r2, r3
  3dfa60: f7fe f802    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x1ffc
  3dfa64: f04f 0200    	mov.w	r2, #0x0
  3dfa68: f04f 0300    	mov.w	r3, #0x0
  3dfa6c: e9cd 2320    	strd	r2, r3, [sp, #128]
  3dfa70: f04f 0200    	mov.w	r2, #0x0
  3dfa74: f04f 0300    	mov.w	r3, #0x0
  3dfa78: e9cd 2322    	strd	r2, r3, [sp, #136]
  3dfa7c: ab09         	add	r3, sp, #0x24
  3dfa7e: 681b         	ldr	r3, [r3]
  3dfa80: edd3 7a45    	vldr	s15, [r3, #276]
  3dfa84: eef1 7a67    	vneg.f32	s15, s15
  3dfa88: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3dfa8c: ab09         	add	r3, sp, #0x24
  3dfa8e: 681b         	ldr	r3, [r3]
  3dfa90: edd3 7a46    	vldr	s15, [r3, #280]
  3dfa94: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dfa98: ab30         	add	r3, sp, #0xc0
  3dfa9a: 4618         	mov	r0, r3
  3dfa9c: eeb0 0b46    	vmov.f64	d0, d6
  3dfaa0: eeb0 1b47    	vmov.f64	d1, d7
  3dfaa4: f7fd ffe0    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x2040
  3dfaa8: ab09         	add	r3, sp, #0x24
  3dfaaa: 681b         	ldr	r3, [r3]
  3dfaac: edd3 7a43    	vldr	s15, [r3, #268]
  3dfab0: ee77 7aa7    	vadd.f32	s15, s15, s15
  3dfab4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dfab8: ab34         	add	r3, sp, #0xd0
  3dfaba: ed9d 5b30    	vldr	d5, [sp, #192]
  3dfabe: ed9d 6b32    	vldr	d6, [sp, #200]
  3dfac2: 4618         	mov	r0, r3
  3dfac4: eeb0 0b45    	vmov.f64	d0, d5
  3dfac8: eeb0 1b46    	vmov.f64	d1, d6
  3dfacc: eeb0 2b47    	vmov.f64	d2, d7
  3dfad0: f7fe f836    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x1f94
  3dfad4: ad24         	add	r5, sp, #0x90
  3dfad6: f640 73db    	movw	r3, #0xfdb
  3dfada: f6cb 73c9    	movt	r3, #0xbfc9
  3dfade: 9302         	str	r3, [sp, #0x8]
  3dfae0: 466b         	mov	r3, sp
  3dfae2: aa36         	add	r2, sp, #0xd8
  3dfae4: e892 0003    	ldm.w	r2, {r0, r1}
  3dfae8: e883 0003    	stm.w	r3, {r0, r1}
  3dfaec: ab34         	add	r3, sp, #0xd0
  3dfaee: cb0c         	ldm	r3, {r2, r3}
  3dfaf0: 4628         	mov	r0, r5
  3dfaf2: f7fe fa79    	bl	0x3ddfe8 <Slug::getVelocity()+0x7bc> @ imm = #-0x1b0e
  3dfaf6: ab09         	add	r3, sp, #0x24
  3dfaf8: 681b         	ldr	r3, [r3]
  3dfafa: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3dfafe: 2b00         	cmp	r3, #0x0
  3dfb00: d07e         	beq	0x3dfc00 <SoldierAIController::updateStep(float)+0x3c0> @ imm = #0xfc
  3dfb02: ab38         	add	r3, sp, #0xe0
  3dfb04: 4618         	mov	r0, r3
  3dfb06: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
  3dfb0a: ed9f 1b33    	vldr	d1, [pc, #204]          @ 0x3dfbd8 <SoldierAIController::updateStep(float)+0x398>
  3dfb0e: f7fd ffab    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x20aa
  3dfb12: ab3c         	add	r3, sp, #0xf0
  3dfb14: ed9d 4b24    	vldr	d4, [sp, #144]
  3dfb18: ed9d 5b26    	vldr	d5, [sp, #152]
  3dfb1c: ed9d 6b38    	vldr	d6, [sp, #224]
  3dfb20: ed9d 7b3a    	vldr	d7, [sp, #232]
  3dfb24: 4618         	mov	r0, r3
  3dfb26: eeb0 0b44    	vmov.f64	d0, d4
  3dfb2a: eeb0 1b45    	vmov.f64	d1, d5
  3dfb2e: eeb0 2b46    	vmov.f64	d2, d6
  3dfb32: eeb0 3b47    	vmov.f64	d3, d7
  3dfb36: f7fd ffab    	bl	0x3dda90 <Slug::getVelocity()+0x264> @ imm = #-0x20aa
  3dfb3a: ab04         	add	r3, sp, #0x10
  3dfb3c: ed9d 6b3c    	vldr	d6, [sp, #240]
  3dfb40: ed9d 7b3e    	vldr	d7, [sp, #248]
  3dfb44: 4618         	mov	r0, r3
  3dfb46: eeb0 0b46    	vmov.f64	d0, d6
  3dfb4a: eeb0 1b47    	vmov.f64	d1, d7
  3dfb4e: f7fe f865    	bl	0x3ddc1c <Slug::getVelocity()+0x3f0> @ imm = #-0x1f36
  3dfb52: ab04         	add	r3, sp, #0x10
  3dfb54: ad24         	add	r5, sp, #0x90
  3dfb56: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dfb58: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3dfb5c: aa40         	add	r2, sp, #0x100
  3dfb5e: ab1c         	add	r3, sp, #0x70
  3dfb60: ed93 6b00    	vldr	d6, [r3]
  3dfb64: ed93 7b02    	vldr	d7, [r3, #8]
  3dfb68: 4610         	mov	r0, r2
  3dfb6a: eeb0 0b46    	vmov.f64	d0, d6
  3dfb6e: eeb0 1b47    	vmov.f64	d1, d7
  3dfb72: ed9f 2b1b    	vldr	d2, [pc, #108]          @ 0x3dfbe0 <SoldierAIController::updateStep(float)+0x3a0>
  3dfb76: f7fd ffe3    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x203a
  3dfb7a: ab44         	add	r3, sp, #0x110
  3dfb7c: ed9d 6b24    	vldr	d6, [sp, #144]
  3dfb80: ed9d 7b26    	vldr	d7, [sp, #152]
  3dfb84: 4618         	mov	r0, r3
  3dfb86: eeb0 0b46    	vmov.f64	d0, d6
  3dfb8a: eeb0 1b47    	vmov.f64	d1, d7
  3dfb8e: ed9f 2b16    	vldr	d2, [pc, #88]           @ 0x3dfbe8 <SoldierAIController::updateStep(float)+0x3a8>
  3dfb92: f7fd ffd5    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x2056
  3dfb96: ab04         	add	r3, sp, #0x10
  3dfb98: ed9d 4b40    	vldr	d4, [sp, #256]
  3dfb9c: ed9d 5b42    	vldr	d5, [sp, #264]
  3dfba0: ed9d 6b44    	vldr	d6, [sp, #272]
  3dfba4: ed9d 7b46    	vldr	d7, [sp, #280]
  3dfba8: 4618         	mov	r0, r3
  3dfbaa: eeb0 0b44    	vmov.f64	d0, d4
  3dfbae: eeb0 1b45    	vmov.f64	d1, d5
  3dfbb2: eeb0 2b46    	vmov.f64	d2, d6
  3dfbb6: eeb0 3b47    	vmov.f64	d3, d7
  3dfbba: f7fd ff69    	bl	0x3dda90 <Slug::getVelocity()+0x264> @ imm = #-0x212e
  3dfbbe: ab04         	add	r3, sp, #0x10
  3dfbc0: ad20         	add	r5, sp, #0x80
  3dfbc2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dfbc4: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3dfbc8: e05d         	b	0x3dfc86 <SoldierAIController::updateStep(float)+0x446> @ imm = #0xba
  3dfbca: bf00         	nop
  3dfbcc: f3af 8000    	nop.w
  3dfbd0: 6666         	str	r6, [r4, #0x64]
  3dfbd2: 6666         	str	r6, [r4, #0x64]
  3dfbd4: 6666         	str	r6, [r4, #0x64]
  3dfbd6: 3fd6         	subs	r7, #0xd6
  3dfbe0: f5c3 5c28    	rsb.w	r12, r3, #0x2a00
  3dfbe4: c28f         	stm	r2!, {r0, r1, r2, r3, r7}
  3dfbe6: 3fed         	subs	r7, #0xed
  3dfbe8: 51ec         	str	r4, [r5, r7]
  3dfbea: 1eb8         	subs	r0, r7, #0x2
  3dfbec: eb85 3fb1    	<unknown>
  3dfbf0: 0000         	movs	r0, r0
  3dfbf2: 0000         	movs	r0, r0
  3dfbf4: fa35 3c8e    	<unknown>
  3dfbf8: 31b6         	adds	r1, #0xb6
  3dfbfa: 0055         	lsls	r5, r2, #0x1
  3dfbfc: 8576         	strh	r6, [r6, #0x2a]
  3dfbfe: 003f         	movs	r7, r7
  3dfc00: ab04         	add	r3, sp, #0x10
  3dfc02: 4618         	mov	r0, r3
  3dfc04: eeb7 0b00    	vmov.f64	d0, #1.000000e+00
  3dfc08: ed9f 1bb5    	vldr	d1, [pc, #724]          @ 0x3dfee0 <SoldierAIController::updateStep(float)+0x6a0>
  3dfc0c: f7fd ff2c    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x21a8
  3dfc10: ab04         	add	r3, sp, #0x10
  3dfc12: ad24         	add	r5, sp, #0x90
  3dfc14: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dfc16: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3dfc1a: aa48         	add	r2, sp, #0x120
  3dfc1c: ab1c         	add	r3, sp, #0x70
  3dfc1e: ed93 6b00    	vldr	d6, [r3]
  3dfc22: ed93 7b02    	vldr	d7, [r3, #8]
  3dfc26: 4610         	mov	r0, r2
  3dfc28: eeb0 0b46    	vmov.f64	d0, d6
  3dfc2c: eeb0 1b47    	vmov.f64	d1, d7
  3dfc30: ed9f 2bad    	vldr	d2, [pc, #692]          @ 0x3dfee8 <SoldierAIController::updateStep(float)+0x6a8>
  3dfc34: f7fd ff84    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x20f8
  3dfc38: ab4c         	add	r3, sp, #0x130
  3dfc3a: ed9d 6b24    	vldr	d6, [sp, #144]
  3dfc3e: ed9d 7b26    	vldr	d7, [sp, #152]
  3dfc42: 4618         	mov	r0, r3
  3dfc44: eeb0 0b46    	vmov.f64	d0, d6
  3dfc48: eeb0 1b47    	vmov.f64	d1, d7
  3dfc4c: ed9f 2ba8    	vldr	d2, [pc, #672]          @ 0x3dfef0 <SoldierAIController::updateStep(float)+0x6b0>
  3dfc50: f7fd ff76    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x2114
  3dfc54: ab04         	add	r3, sp, #0x10
  3dfc56: ed9d 4b48    	vldr	d4, [sp, #288]
  3dfc5a: ed9d 5b4a    	vldr	d5, [sp, #296]
  3dfc5e: ed9d 6b4c    	vldr	d6, [sp, #304]
  3dfc62: ed9d 7b4e    	vldr	d7, [sp, #312]
  3dfc66: 4618         	mov	r0, r3
  3dfc68: eeb0 0b44    	vmov.f64	d0, d4
  3dfc6c: eeb0 1b45    	vmov.f64	d1, d5
  3dfc70: eeb0 2b46    	vmov.f64	d2, d6
  3dfc74: eeb0 3b47    	vmov.f64	d3, d7
  3dfc78: f7fd ff0a    	bl	0x3dda90 <Slug::getVelocity()+0x264> @ imm = #-0x21ec
  3dfc7c: ab04         	add	r3, sp, #0x10
  3dfc7e: ad20         	add	r5, sp, #0x80
  3dfc80: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dfc82: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3dfc86: ab20         	add	r3, sp, #0x80
  3dfc88: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dfc8a: f7fe f8ed    	bl	0x3dde68 <Slug::getVelocity()+0x63c> @ imm = #-0x1e26
  3dfc8e: ee07 0a10    	vmov	s14, r0
  3dfc92: eddf 7a9f    	vldr	s15, [pc, #636]         @ 0x3dff10 <SoldierAIController::updateStep(float)+0x6d0>
  3dfc96: ee67 7a27    	vmul.f32	s15, s14, s15
  3dfc9a: ab10         	add	r3, sp, #0x40
  3dfc9c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3dfca0: ed83 7b00    	vstr	d7, [r3]
  3dfca4: ab09         	add	r3, sp, #0x24
  3dfca6: 681b         	ldr	r3, [r3]
  3dfca8: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  3dfcac: ab10         	add	r3, sp, #0x40
  3dfcae: 4610         	mov	r0, r2
  3dfcb0: e9d3 2300    	ldrd	r2, r3, [r3]
  3dfcb4: f2f3 fa6d    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2f34da
  3dfcb8: ab09         	add	r3, sp, #0x24
  3dfcba: 681b         	ldr	r3, [r3]
  3dfcbc: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3dfcc0: 2b00         	cmp	r3, #0x0
  3dfcc2: d024         	beq	0x3dfd0e <SoldierAIController::updateStep(float)+0x4ce> @ imm = #0x48
  3dfcc4: ab09         	add	r3, sp, #0x24
  3dfcc6: 681b         	ldr	r3, [r3]
  3dfcc8: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3dfccc: f083 0301    	eor	r3, r3, #0x1
  3dfcd0: b2db         	uxtb	r3, r3
  3dfcd2: 2b00         	cmp	r3, #0x0
  3dfcd4: d119         	bne	0x3dfd0a <SoldierAIController::updateStep(float)+0x4ca> @ imm = #0x32
  3dfcd6: ab09         	add	r3, sp, #0x24
  3dfcd8: 681b         	ldr	r3, [r3]
  3dfcda: edd3 7a46    	vldr	s15, [r3, #280]
  3dfcde: eef5 7ac0    	vcmpe.f32	s15, #0
  3dfce2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfce6: d512         	bpl	0x3dfd0e <SoldierAIController::updateStep(float)+0x4ce> @ imm = #0x24
  3dfce8: ab09         	add	r3, sp, #0x24
  3dfcea: 681b         	ldr	r3, [r3]
  3dfcec: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dfcf0: 3338         	adds	r3, #0x38
  3dfcf2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3dfcf4: f2f7 f9e0    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f73c0
  3dfcf8: ec41 0b16    	vmov	d6, r0, r1
  3dfcfc: ed9f 7b7e    	vldr	d7, [pc, #504]          @ 0x3dfef8 <SoldierAIController::updateStep(float)+0x6b8>
  3dfd00: eeb4 6bc7    	vcmpe.f64	d6, d7
  3dfd04: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfd08: d501         	bpl	0x3dfd0e <SoldierAIController::updateStep(float)+0x4ce> @ imm = #0x2
  3dfd0a: 2301         	movs	r3, #0x1
  3dfd0c: e000         	b	0x3dfd10 <SoldierAIController::updateStep(float)+0x4d0> @ imm = #0x0
  3dfd0e: 2300         	movs	r3, #0x0
  3dfd10: 2b00         	cmp	r3, #0x0
  3dfd12: d004         	beq	0x3dfd1e <SoldierAIController::updateStep(float)+0x4de> @ imm = #0x8
  3dfd14: ab09         	add	r3, sp, #0x24
  3dfd16: 681b         	ldr	r3, [r3]
  3dfd18: 2200         	movs	r2, #0x0
  3dfd1a: f883 2104    	strb.w	r2, [r3, #0x104]
  3dfd1e: ab09         	add	r3, sp, #0x24
  3dfd20: 681b         	ldr	r3, [r3]
  3dfd22: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dfd26: ed93 6b0c    	vldr	d6, [r3, #48]
  3dfd2a: ed9f 7b75    	vldr	d7, [pc, #468]          @ 0x3dff00 <SoldierAIController::updateStep(float)+0x6c0>
  3dfd2e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3dfd32: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfd36: d50b         	bpl	0x3dfd50 <SoldierAIController::updateStep(float)+0x510> @ imm = #0x16
  3dfd38: ab09         	add	r3, sp, #0x24
  3dfd3a: 681b         	ldr	r3, [r3]
  3dfd3c: ed93 7a51    	vldr	s14, [r3, #324]
  3dfd40: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3dfd44: ee77 7a67    	vsub.f32	s15, s14, s15
  3dfd48: ab09         	add	r3, sp, #0x24
  3dfd4a: 681b         	ldr	r3, [r3]
  3dfd4c: edc3 7a51    	vstr	s15, [r3, #324]
  3dfd50: ab09         	add	r3, sp, #0x24
  3dfd52: 681b         	ldr	r3, [r3]
  3dfd54: edd3 7a51    	vldr	s15, [r3, #324]
  3dfd58: eef5 7ac0    	vcmpe.f32	s15, #0
  3dfd5c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfd60: d842         	bhi	0x3dfde8 <SoldierAIController::updateStep(float)+0x5a8> @ imm = #0x84
  3dfd62: ab09         	add	r3, sp, #0x24
  3dfd64: 681b         	ldr	r3, [r3]
  3dfd66: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3dfd6a: f083 0301    	eor	r3, r3, #0x1
  3dfd6e: b2db         	uxtb	r3, r3
  3dfd70: 2b00         	cmp	r3, #0x0
  3dfd72: d022         	beq	0x3dfdba <SoldierAIController::updateStep(float)+0x57a> @ imm = #0x44
  3dfd74: ab09         	add	r3, sp, #0x24
  3dfd76: 681b         	ldr	r3, [r3]
  3dfd78: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3dfd7c: 2b00         	cmp	r3, #0x0
  3dfd7e: d008         	beq	0x3dfd92 <SoldierAIController::updateStep(float)+0x552> @ imm = #0x10
  3dfd80: ab09         	add	r3, sp, #0x24
  3dfd82: 681b         	ldr	r3, [r3]
  3dfd84: 681b         	ldr	r3, [r3]
  3dfd86: f503 7302    	add.w	r3, r3, #0x208
  3dfd8a: 681b         	ldr	r3, [r3]
  3dfd8c: aa09         	add	r2, sp, #0x24
  3dfd8e: 6810         	ldr	r0, [r2]
  3dfd90: 4798         	blx	r3
  3dfd92: ab09         	add	r3, sp, #0x24
  3dfd94: 681b         	ldr	r3, [r3]
  3dfd96: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3dfd9a: 2b00         	cmp	r3, #0x0
  3dfd9c: d008         	beq	0x3dfdb0 <SoldierAIController::updateStep(float)+0x570> @ imm = #0x10
  3dfd9e: ab09         	add	r3, sp, #0x24
  3dfda0: 681b         	ldr	r3, [r3]
  3dfda2: 681b         	ldr	r3, [r3]
  3dfda4: f503 7303    	add.w	r3, r3, #0x20c
  3dfda8: 681b         	ldr	r3, [r3]
  3dfdaa: aa09         	add	r2, sp, #0x24
  3dfdac: 6810         	ldr	r0, [r2]
  3dfdae: 4798         	blx	r3
  3dfdb0: ab09         	add	r3, sp, #0x24
  3dfdb2: 681b         	ldr	r3, [r3]
  3dfdb4: 2201         	movs	r2, #0x1
  3dfdb6: f883 2159    	strb.w	r2, [r3, #0x159]
  3dfdba: ab09         	add	r3, sp, #0x24
  3dfdbc: 681b         	ldr	r3, [r3]
  3dfdbe: 2200         	movs	r2, #0x0
  3dfdc0: f883 211c    	strb.w	r2, [r3, #0x11c]
  3dfdc4: ab09         	add	r3, sp, #0x24
  3dfdc6: 681b         	ldr	r3, [r3]
  3dfdc8: 2200         	movs	r2, #0x0
  3dfdca: f883 2104    	strb.w	r2, [r3, #0x104]
  3dfdce: ab09         	add	r3, sp, #0x24
  3dfdd0: 681b         	ldr	r3, [r3]
  3dfdd2: f04f 0200    	mov.w	r2, #0x0
  3dfdd6: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3dfdda: ab09         	add	r3, sp, #0x24
  3dfddc: 681b         	ldr	r3, [r3]
  3dfdde: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dfde2: 4618         	mov	r0, r3
  3dfde4: f2f3 fa95    	bl	0x6d3312 <cpBodyResetForces> @ imm = #0x2f352a
  3dfde8: ab09         	add	r3, sp, #0x24
  3dfdea: 681b         	ldr	r3, [r3]
  3dfdec: ed93 7a62    	vldr	s14, [r3, #392]
  3dfdf0: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3dfdf4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3dfdf8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfdfc: dd2c         	ble	0x3dfe58 <SoldierAIController::updateStep(float)+0x618> @ imm = #0x58
  3dfdfe: ab09         	add	r3, sp, #0x24
  3dfe00: 681b         	ldr	r3, [r3]
  3dfe02: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3dfe06: f083 0301    	eor	r3, r3, #0x1
  3dfe0a: b2db         	uxtb	r3, r3
  3dfe0c: 2b00         	cmp	r3, #0x0
  3dfe0e: d023         	beq	0x3dfe58 <SoldierAIController::updateStep(float)+0x618> @ imm = #0x46
  3dfe10: ab09         	add	r3, sp, #0x24
  3dfe12: 681b         	ldr	r3, [r3]
  3dfe14: f04f 0200    	mov.w	r2, #0x0
  3dfe18: f8c3 2188    	str.w	r2, [r3, #0x188]
  3dfe1c: ab09         	add	r3, sp, #0x24
  3dfe1e: 681b         	ldr	r3, [r3]
  3dfe20: ed93 7a51    	vldr	s14, [r3, #324]
  3dfe24: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3dfe28: ee37 7a27    	vadd.f32	s14, s14, s15
  3dfe2c: eddf 7a39    	vldr	s15, [pc, #228]         @ 0x3dff14 <SoldierAIController::updateStep(float)+0x6d4>
  3dfe30: eeb4 7ae7    	vcmpe.f32	s14, s15
  3dfe34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfe38: d508         	bpl	0x3dfe4c <SoldierAIController::updateStep(float)+0x60c> @ imm = #0x10
  3dfe3a: ab09         	add	r3, sp, #0x24
  3dfe3c: 681b         	ldr	r3, [r3]
  3dfe3e: ed93 7a51    	vldr	s14, [r3, #324]
  3dfe42: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3dfe46: ee77 7a27    	vadd.f32	s15, s14, s15
  3dfe4a: e001         	b	0x3dfe50 <SoldierAIController::updateStep(float)+0x610> @ imm = #0x2
  3dfe4c: eddf 7a31    	vldr	s15, [pc, #196]         @ 0x3dff14 <SoldierAIController::updateStep(float)+0x6d4>
  3dfe50: ab09         	add	r3, sp, #0x24
  3dfe52: 681b         	ldr	r3, [r3]
  3dfe54: edc3 7a51    	vstr	s15, [r3, #324]
  3dfe58: ab09         	add	r3, sp, #0x24
  3dfe5a: 681b         	ldr	r3, [r3]
  3dfe5c: 2200         	movs	r2, #0x0
  3dfe5e: f883 21ac    	strb.w	r2, [r3, #0x1ac]
  3dfe62: ab09         	add	r3, sp, #0x24
  3dfe64: 681b         	ldr	r3, [r3]
  3dfe66: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3dfe6a: f083 0301    	eor	r3, r3, #0x1
  3dfe6e: b2db         	uxtb	r3, r3
  3dfe70: 2b00         	cmp	r3, #0x0
  3dfe72: d10e         	bne	0x3dfe92 <SoldierAIController::updateStep(float)+0x652> @ imm = #0x1c
  3dfe74: ab09         	add	r3, sp, #0x24
  3dfe76: 681b         	ldr	r3, [r3]
  3dfe78: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3dfe7c: 2b00         	cmp	r3, #0x0
  3dfe7e: d063         	beq	0x3dff48 <SoldierAIController::updateStep(float)+0x708> @ imm = #0xc6
  3dfe80: ab09         	add	r3, sp, #0x24
  3dfe82: 681b         	ldr	r3, [r3]
  3dfe84: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3dfe88: f083 0301    	eor	r3, r3, #0x1
  3dfe8c: b2db         	uxtb	r3, r3
  3dfe8e: 2b00         	cmp	r3, #0x0
  3dfe90: d05a         	beq	0x3dff48 <SoldierAIController::updateStep(float)+0x708> @ imm = #0xb4
  3dfe92: ab09         	add	r3, sp, #0x24
  3dfe94: 681b         	ldr	r3, [r3]
  3dfe96: edd3 7a61    	vldr	s15, [r3, #388]
  3dfe9a: eef5 7ac0    	vcmpe.f32	s15, #0
  3dfe9e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfea2: dd51         	ble	0x3dff48 <SoldierAIController::updateStep(float)+0x708> @ imm = #0xa2
  3dfea4: ab09         	add	r3, sp, #0x24
  3dfea6: 681b         	ldr	r3, [r3]
  3dfea8: edd3 7a66    	vldr	s15, [r3, #408]
  3dfeac: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3dfeb0: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3dfeb4: ee36 6b07    	vadd.f64	d6, d6, d7
  3dfeb8: ed9f 7b13    	vldr	d7, [pc, #76]           @ 0x3dff08 <SoldierAIController::updateStep(float)+0x6c8>
  3dfebc: eeb4 6bc7    	vcmpe.f64	d6, d7
  3dfec0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dfec4: d528         	bpl	0x3dff18 <SoldierAIController::updateStep(float)+0x6d8> @ imm = #0x50
  3dfec6: ab09         	add	r3, sp, #0x24
  3dfec8: 681b         	ldr	r3, [r3]
  3dfeca: edd3 7a66    	vldr	s15, [r3, #408]
  3dfece: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3dfed2: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3dfed6: ee36 7b07    	vadd.f64	d7, d6, d7
  3dfeda: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3dfede: e01d         	b	0x3dff1c <SoldierAIController::updateStep(float)+0x6dc> @ imm = #0x3a
  3dfee8: 3333         	adds	r3, #0x33
  3dfeea: 3333         	adds	r3, #0x33
  3dfeec: 3333         	adds	r3, #0x33
  3dfeee: 3fe3         	subs	r7, #0xe3
  3dfef0: 999a         	ldr	r1, [sp, #0x268]
  3dfef2: 9999         	ldr	r1, [sp, #0x264]
  3dfef4: 9999         	ldr	r1, [sp, #0x264]
  3dfef6: 3fd9         	subs	r7, #0xd9
  3dfef8: 0000         	movs	r0, r0
  3dfefa: 0000         	movs	r0, r0
  3dfefc: c000         	<unknown>
  3dfefe: 4052         	eors	r2, r2
  3dff00: 0000         	movs	r0, r0
  3dff02: 0000         	movs	r0, r0
  3dff04: 4000         	ands	r0, r0
  3dff06: c08f         	stm	r0!, {r0, r1, r2, r3, r7}
  3dff08: 0000         	movs	r0, r0
  3dff0a: 0000         	movs	r0, r0
  3dff0c: 0000         	movs	r0, r0
  3dff0e: 4059         	eors	r1, r3
  3dff10: fa35 3c8e    	<unknown>
  3dff14: 0000         	movs	r0, r0
  3dff16: 42c8         	cmn	r0, r1
  3dff18: ed5f 7a02    	vldr	s15, [pc, #-8]          @ 0x3dff14 <SoldierAIController::updateStep(float)+0x6d4>
  3dff1c: ab09         	add	r3, sp, #0x24
  3dff1e: 681b         	ldr	r3, [r3]
  3dff20: edc3 7a66    	vstr	s15, [r3, #408]
  3dff24: ab09         	add	r3, sp, #0x24
  3dff26: 681b         	ldr	r3, [r3]
  3dff28: ed93 7a66    	vldr	s14, [r3, #408]
  3dff2c: ed5f 7a07    	vldr	s15, [pc, #-28]         @ 0x3dff14 <SoldierAIController::updateStep(float)+0x6d4>
  3dff30: eeb4 7ae7    	vcmpe.f32	s14, s15
  3dff34: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dff38: bf54         	ite	pl
  3dff3a: 2300         	movpl	r3, #0x0
  3dff3c: 2301         	movmi	r3, #0x1
  3dff3e: b2da         	uxtb	r2, r3
  3dff40: ab09         	add	r3, sp, #0x24
  3dff42: 681b         	ldr	r3, [r3]
  3dff44: f883 21ac    	strb.w	r2, [r3, #0x1ac]
  3dff48: ab09         	add	r3, sp, #0x24
  3dff4a: 681b         	ldr	r3, [r3]
  3dff4c: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3dff50: 2b00         	cmp	r3, #0x0
  3dff52: d00d         	beq	0x3dff70 <SoldierAIController::updateStep(float)+0x730> @ imm = #0x1a
  3dff54: ab09         	add	r3, sp, #0x24
  3dff56: 681b         	ldr	r3, [r3]
  3dff58: 681b         	ldr	r3, [r3]
  3dff5a: f503 732d    	add.w	r3, r3, #0x2b4
  3dff5e: 681b         	ldr	r3, [r3]
  3dff60: aa09         	add	r2, sp, #0x24
  3dff62: 6810         	ldr	r0, [r2]
  3dff64: 4798         	blx	r3
  3dff66: 4603         	mov	r3, r0
  3dff68: 2b00         	cmp	r3, #0x0
  3dff6a: d001         	beq	0x3dff70 <SoldierAIController::updateStep(float)+0x730> @ imm = #0x2
  3dff6c: 2301         	movs	r3, #0x1
  3dff6e: e000         	b	0x3dff72 <SoldierAIController::updateStep(float)+0x732> @ imm = #0x0
  3dff70: 2300         	movs	r3, #0x0
  3dff72: 2b00         	cmp	r3, #0x0
  3dff74: d03f         	beq	0x3dfff6 <SoldierAIController::updateStep(float)+0x7b6> @ imm = #0x7e
  3dff76: ab09         	add	r3, sp, #0x24
  3dff78: 681b         	ldr	r3, [r3]
  3dff7a: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3dff7e: 2b00         	cmp	r3, #0x0
  3dff80: d044         	beq	0x3e000c <SoldierAIController::updateStep(float)+0x7cc> @ imm = #0x88
  3dff82: ab09         	add	r3, sp, #0x24
  3dff84: 681b         	ldr	r3, [r3]
  3dff86: f04f 0200    	mov.w	r2, #0x0
  3dff8a: f2cc 02a0    	movt	r2, #0xc0a0
  3dff8e: f8c3 2184    	str.w	r2, [r3, #0x184]
  3dff92: ab09         	add	r3, sp, #0x24
  3dff94: 681b         	ldr	r3, [r3]
  3dff96: ed93 7a42    	vldr	s14, [r3, #264]
  3dff9a: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3dff9e: eeb4 7ae7    	vcmpe.f32	s14, s15
  3dffa2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3dffa6: dd31         	ble	0x3e000c <SoldierAIController::updateStep(float)+0x7cc> @ imm = #0x62
  3dffa8: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x3e0350 <SoldierAIController::updateStep(float)+0xb10>
  3dffaa: 58e3         	ldr	r3, [r4, r3]
  3dffac: 681d         	ldr	r5, [r3]
  3dffae: ab09         	add	r3, sp, #0x24
  3dffb0: 681b         	ldr	r3, [r3]
  3dffb2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3dffb6: aa09         	add	r2, sp, #0x24
  3dffb8: 6812         	ldr	r2, [r2]
  3dffba: ed92 7a43    	vldr	s14, [r2, #268]
  3dffbe: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3dffc2: ee67 7a27    	vmul.f32	s15, s14, s15
  3dffc6: edcd 7a02    	vstr	s15, [sp, #8]
  3dffca: f04f 527e    	mov.w	r2, #0x3f800000
  3dffce: 9203         	str	r2, [sp, #0xc]
  3dffd0: 466a         	mov	r2, sp
  3dffd2: f103 0130    	add.w	r1, r3, #0x30
  3dffd6: c903         	ldm	r1, {r0, r1}
  3dffd8: e882 0003    	stm.w	r2, {r0, r1}
  3dffdc: 3328         	adds	r3, #0x28
  3dffde: cb0c         	ldm	r3, {r2, r3}
  3dffe0: 4628         	mov	r0, r5
  3dffe2: 2108         	movs	r1, #0x8
  3dffe4: f018 f82e    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x1805c
  3dffe8: ab09         	add	r3, sp, #0x24
  3dffea: 681b         	ldr	r3, [r3]
  3dffec: f04f 0200    	mov.w	r2, #0x0
  3dfff0: f8c3 2108    	str.w	r2, [r3, #0x108]
  3dfff4: e00a         	b	0x3e000c <SoldierAIController::updateStep(float)+0x7cc> @ imm = #0x14
  3dfff6: ab09         	add	r3, sp, #0x24
  3dfff8: 681b         	ldr	r3, [r3]
  3dfffa: 2200         	movs	r2, #0x0
  3dfffc: f883 2104    	strb.w	r2, [r3, #0x104]
  3e0000: ab09         	add	r3, sp, #0x24
  3e0002: 681b         	ldr	r3, [r3]
  3e0004: f04f 527d    	mov.w	r2, #0x3f400000
  3e0008: f8c3 2108    	str.w	r2, [r3, #0x108]
  3e000c: ab09         	add	r3, sp, #0x24
  3e000e: 681b         	ldr	r3, [r3]
  3e0010: f893 311c    	ldrb.w	r3, [r3, #0x11c]
  3e0014: 2b00         	cmp	r3, #0x0
  3e0016: f000 833b    	beq.w	0x3e0690 <SoldierAIController::updateStep(float)+0xe50> @ imm = #0x676
  3e001a: f04f 0200    	mov.w	r2, #0x0
  3e001e: f04f 0300    	mov.w	r3, #0x0
  3e0022: e9cd 2328    	strd	r2, r3, [sp, #160]
  3e0026: f04f 0200    	mov.w	r2, #0x0
  3e002a: f04f 0300    	mov.w	r3, #0x0
  3e002e: e9cd 232a    	strd	r2, r3, [sp, #168]
  3e0032: a912         	add	r1, sp, #0x48
  3e0034: f04f 0200    	mov.w	r2, #0x0
  3e0038: f04f 0300    	mov.w	r3, #0x0
  3e003c: e9c1 2300    	strd	r2, r3, [r1]
  3e0040: f04f 0200    	mov.w	r2, #0x0
  3e0044: f04f 0300    	mov.w	r3, #0x0
  3e0048: e9cd 232c    	strd	r2, r3, [sp, #176]
  3e004c: f04f 0200    	mov.w	r2, #0x0
  3e0050: f04f 0300    	mov.w	r3, #0x0
  3e0054: e9cd 232e    	strd	r2, r3, [sp, #184]
  3e0058: ab09         	add	r3, sp, #0x24
  3e005a: 681b         	ldr	r3, [r3]
  3e005c: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e0060: 2b00         	cmp	r3, #0x0
  3e0062: d00d         	beq	0x3e0080 <SoldierAIController::updateStep(float)+0x840> @ imm = #0x1a
  3e0064: ab09         	add	r3, sp, #0x24
  3e0066: 681b         	ldr	r3, [r3]
  3e0068: 681b         	ldr	r3, [r3]
  3e006a: f503 732d    	add.w	r3, r3, #0x2b4
  3e006e: 681b         	ldr	r3, [r3]
  3e0070: aa09         	add	r2, sp, #0x24
  3e0072: 6810         	ldr	r0, [r2]
  3e0074: 4798         	blx	r3
  3e0076: 4603         	mov	r3, r0
  3e0078: 2b00         	cmp	r3, #0x0
  3e007a: d001         	beq	0x3e0080 <SoldierAIController::updateStep(float)+0x840> @ imm = #0x2
  3e007c: 2301         	movs	r3, #0x1
  3e007e: e000         	b	0x3e0082 <SoldierAIController::updateStep(float)+0x842> @ imm = #0x0
  3e0080: 2300         	movs	r3, #0x0
  3e0082: 2b00         	cmp	r3, #0x0
  3e0084: f000 8168    	beq.w	0x3e0358 <SoldierAIController::updateStep(float)+0xb18> @ imm = #0x2d0
  3e0088: ab09         	add	r3, sp, #0x24
  3e008a: 681c         	ldr	r4, [r3]
  3e008c: ab04         	add	r3, sp, #0x10
  3e008e: 4618         	mov	r0, r3
  3e0090: ed9f 0ba3    	vldr	d0, [pc, #652]          @ 0x3e0320 <SoldierAIController::updateStep(float)+0xae0>
  3e0094: ed9f 1ba4    	vldr	d1, [pc, #656]          @ 0x3e0328 <SoldierAIController::updateStep(float)+0xae8>
  3e0098: f7fd fce6    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x2634
  3e009c: ab04         	add	r3, sp, #0x10
  3e009e: f504 7494    	add.w	r4, r4, #0x128
  3e00a2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e00a4: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e00a8: ab09         	add	r3, sp, #0x24
  3e00aa: 681b         	ldr	r3, [r3]
  3e00ac: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e00b0: f04f 0200    	mov.w	r2, #0x0
  3e00b4: f04f 0300    	mov.w	r3, #0x0
  3e00b8: f6c3 73e0    	movt	r3, #0x3fe0
  3e00bc: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e00c0: ab09         	add	r3, sp, #0x24
  3e00c2: 681b         	ldr	r3, [r3]
  3e00c4: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e00c8: a39f         	adr	r3, #636 <SoldierAIController::updateStep(float)+0x92b>
  3e00ca: e9d3 2300    	ldrd	r2, r3, [r3]
  3e00ce: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e00d2: ab09         	add	r3, sp, #0x24
  3e00d4: 681b         	ldr	r3, [r3]
  3e00d6: edd3 7a45    	vldr	s15, [r3, #276]
  3e00da: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e00de: ab09         	add	r3, sp, #0x24
  3e00e0: 681b         	ldr	r3, [r3]
  3e00e2: edd3 7a46    	vldr	s15, [r3, #280]
  3e00e6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e00ea: ab54         	add	r3, sp, #0x150
  3e00ec: 4618         	mov	r0, r3
  3e00ee: eeb0 0b46    	vmov.f64	d0, d6
  3e00f2: eeb0 1b47    	vmov.f64	d1, d7
  3e00f6: f7fd fcb7    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x2692
  3e00fa: ab54         	add	r3, sp, #0x150
  3e00fc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e00fe: f2f6 ffdb    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f6fb6
  3e0102: ec41 0b17    	vmov	d7, r0, r1
  3e0106: eeb5 7b40    	vcmp.f64	d7, #0
  3e010a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e010e: bf0c         	ite	eq
  3e0110: 2300         	moveq	r3, #0x0
  3e0112: 2301         	movne	r3, #0x1
  3e0114: b2db         	uxtb	r3, r3
  3e0116: 2b00         	cmp	r3, #0x0
  3e0118: d010         	beq	0x3e013c <SoldierAIController::updateStep(float)+0x8fc> @ imm = #0x20
  3e011a: ab04         	add	r3, sp, #0x10
  3e011c: ed9d 6b54    	vldr	d6, [sp, #336]
  3e0120: ed9d 7b56    	vldr	d7, [sp, #344]
  3e0124: 4618         	mov	r0, r3
  3e0126: eeb0 0b46    	vmov.f64	d0, d6
  3e012a: eeb0 1b47    	vmov.f64	d1, d7
  3e012e: f7fd fd75    	bl	0x3ddc1c <Slug::getVelocity()+0x3f0> @ imm = #-0x2516
  3e0132: ab04         	add	r3, sp, #0x10
  3e0134: ac2c         	add	r4, sp, #0xb0
  3e0136: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e0138: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e013c: ab09         	add	r3, sp, #0x24
  3e013e: 681b         	ldr	r3, [r3]
  3e0140: edd3 7a67    	vldr	s15, [r3, #412]
  3e0144: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e0148: ab04         	add	r3, sp, #0x10
  3e014a: ed9d 5b2c    	vldr	d5, [sp, #176]
  3e014e: ed9d 6b2e    	vldr	d6, [sp, #184]
  3e0152: 4618         	mov	r0, r3
  3e0154: eeb0 0b45    	vmov.f64	d0, d5
  3e0158: eeb0 1b46    	vmov.f64	d1, d6
  3e015c: eeb0 2b47    	vmov.f64	d2, d7
  3e0160: f7fd fcee    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x2624
  3e0164: ab04         	add	r3, sp, #0x10
  3e0166: ac28         	add	r4, sp, #0xa0
  3e0168: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e016a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e016e: ab09         	add	r3, sp, #0x24
  3e0170: 681b         	ldr	r3, [r3]
  3e0172: edd3 7a66    	vldr	s15, [r3, #408]
  3e0176: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e017a: ab09         	add	r3, sp, #0x24
  3e017c: 681b         	ldr	r3, [r3]
  3e017e: edd3 7a43    	vldr	s15, [r3, #268]
  3e0182: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3e0186: ed9f 7b6a    	vldr	d7, [pc, #424]          @ 0x3e0330 <SoldierAIController::updateStep(float)+0xaf0>
  3e018a: ee25 7b07    	vmul.f64	d7, d5, d7
  3e018e: ee36 7b47    	vsub.f64	d7, d6, d7
  3e0192: eeb5 7bc0    	vcmpe.f64	d7, #0
  3e0196: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e019a: dd14         	ble	0x3e01c6 <SoldierAIController::updateStep(float)+0x986> @ imm = #0x28
  3e019c: ab09         	add	r3, sp, #0x24
  3e019e: 681b         	ldr	r3, [r3]
  3e01a0: edd3 7a66    	vldr	s15, [r3, #408]
  3e01a4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e01a8: ab09         	add	r3, sp, #0x24
  3e01aa: 681b         	ldr	r3, [r3]
  3e01ac: edd3 7a43    	vldr	s15, [r3, #268]
  3e01b0: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3e01b4: ed9f 7b5e    	vldr	d7, [pc, #376]          @ 0x3e0330 <SoldierAIController::updateStep(float)+0xaf0>
  3e01b8: ee25 7b07    	vmul.f64	d7, d5, d7
  3e01bc: ee36 7b47    	vsub.f64	d7, d6, d7
  3e01c0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e01c4: e001         	b	0x3e01ca <SoldierAIController::updateStep(float)+0x98a> @ imm = #0x2
  3e01c6: eddf 7a5e    	vldr	s15, [pc, #376]         @ 0x3e0340 <SoldierAIController::updateStep(float)+0xb00>
  3e01ca: ab09         	add	r3, sp, #0x24
  3e01cc: 681b         	ldr	r3, [r3]
  3e01ce: edc3 7a66    	vstr	s15, [r3, #408]
  3e01d2: ab09         	add	r3, sp, #0x24
  3e01d4: 681b         	ldr	r3, [r3]
  3e01d6: 2201         	movs	r2, #0x1
  3e01d8: f883 211d    	strb.w	r2, [r3, #0x11d]
  3e01dc: ab28         	add	r3, sp, #0xa0
  3e01de: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e01e0: f2f6 ff6a    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f6ed4
  3e01e4: 4602         	mov	r2, r0
  3e01e6: 460b         	mov	r3, r1
  3e01e8: a912         	add	r1, sp, #0x48
  3e01ea: e9c1 2300    	strd	r2, r3, [r1]
  3e01ee: ab12         	add	r3, sp, #0x48
  3e01f0: ed93 7b00    	vldr	d7, [r3]
  3e01f4: eeb5 7b40    	vcmp.f64	d7, #0
  3e01f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e01fc: f000 808e    	beq.w	0x3e031c <SoldierAIController::updateStep(float)+0xadc> @ imm = #0x11c
  3e0200: ab09         	add	r3, sp, #0x24
  3e0202: 681b         	ldr	r3, [r3]
  3e0204: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e0208: ac58         	add	r4, sp, #0x160
  3e020a: 3338         	adds	r3, #0x38
  3e020c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e020e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e0212: ac14         	add	r4, sp, #0x50
  3e0214: ed9d 4b58    	vldr	d4, [sp, #352]
  3e0218: ed9d 5b5a    	vldr	d5, [sp, #360]
  3e021c: ed9d 6b2c    	vldr	d6, [sp, #176]
  3e0220: ed9d 7b2e    	vldr	d7, [sp, #184]
  3e0224: eeb0 0b44    	vmov.f64	d0, d4
  3e0228: eeb0 1b45    	vmov.f64	d1, d5
  3e022c: eeb0 2b46    	vmov.f64	d2, d6
  3e0230: eeb0 3b47    	vmov.f64	d3, d7
  3e0234: f7fd fcaa    	bl	0x3ddb8c <Slug::getVelocity()+0x360> @ imm = #-0x26ac
  3e0238: ed84 0b00    	vstr	d0, [r4]
  3e023c: ab0a         	add	r3, sp, #0x28
  3e023e: f04f 527e    	mov.w	r2, #0x3f800000
  3e0242: 601a         	str	r2, [r3]
  3e0244: ab09         	add	r3, sp, #0x24
  3e0246: 681b         	ldr	r3, [r3]
  3e0248: f503 738a    	add.w	r3, r3, #0x114
  3e024c: 4618         	mov	r0, r3
  3e024e: f201 fa6f    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x2014de
  3e0252: ee07 0a10    	vmov	s14, r0
  3e0256: ab0a         	add	r3, sp, #0x28
  3e0258: aa0a         	add	r2, sp, #0x28
  3e025a: edd2 7a00    	vldr	s15, [r2]
  3e025e: ee67 7a87    	vmul.f32	s15, s15, s14
  3e0262: edc3 7a00    	vstr	s15, [r3]
  3e0266: aa12         	add	r2, sp, #0x48
  3e0268: ab14         	add	r3, sp, #0x50
  3e026a: ed92 6b00    	vldr	d6, [r2]
  3e026e: ed93 7b00    	vldr	d7, [r3]
  3e0272: ee36 6b47    	vsub.f64	d6, d6, d7
  3e0276: ed9f 7b30    	vldr	d7, [pc, #192]          @ 0x3e0338 <SoldierAIController::updateStep(float)+0xaf8>
  3e027a: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e027e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e0282: d502         	bpl	0x3e028a <SoldierAIController::updateStep(float)+0xa4a> @ imm = #0x4
  3e0284: eddf 7a2f    	vldr	s15, [pc, #188]         @ 0x3e0344 <SoldierAIController::updateStep(float)+0xb04>
  3e0288: e009         	b	0x3e029e <SoldierAIController::updateStep(float)+0xa5e> @ imm = #0x12
  3e028a: aa12         	add	r2, sp, #0x48
  3e028c: ab14         	add	r3, sp, #0x50
  3e028e: ed92 6b00    	vldr	d6, [r2]
  3e0292: ed93 7b00    	vldr	d7, [r3]
  3e0296: ee36 7b47    	vsub.f64	d7, d6, d7
  3e029a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e029e: ab0b         	add	r3, sp, #0x2c
  3e02a0: edc3 7a00    	vstr	s15, [r3]
  3e02a4: ab09         	add	r3, sp, #0x24
  3e02a6: 681b         	ldr	r3, [r3]
  3e02a8: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e02ac: aa0a         	add	r2, sp, #0x28
  3e02ae: ab08         	add	r3, sp, #0x20
  3e02b0: ed92 7a00    	vldr	s14, [r2]
  3e02b4: edd3 7a00    	vldr	s15, [r3]
  3e02b8: ee27 7a27    	vmul.f32	s14, s14, s15
  3e02bc: ab0b         	add	r3, sp, #0x2c
  3e02be: edd3 7a00    	vldr	s15, [r3]
  3e02c2: ee27 7a27    	vmul.f32	s14, s14, s15
  3e02c6: ab09         	add	r3, sp, #0x24
  3e02c8: 681b         	ldr	r3, [r3]
  3e02ca: edd3 7a6d    	vldr	s15, [r3, #436]
  3e02ce: ee67 7a27    	vmul.f32	s15, s14, s15
  3e02d2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e02d6: ab50         	add	r3, sp, #0x140
  3e02d8: ed9d 5b2c    	vldr	d5, [sp, #176]
  3e02dc: ed9d 6b2e    	vldr	d6, [sp, #184]
  3e02e0: 4618         	mov	r0, r3
  3e02e2: eeb0 0b45    	vmov.f64	d0, d5
  3e02e6: eeb0 1b46    	vmov.f64	d1, d6
  3e02ea: eeb0 2b47    	vmov.f64	d2, d7
  3e02ee: f7fd fc27    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x27b2
  3e02f2: ed9d 4b50    	vldr	d4, [sp, #320]
  3e02f6: ed9d 5b52    	vldr	d5, [sp, #328]
  3e02fa: 4b16         	ldr	r3, [pc, #0x58]         @ 0x3e0354 <SoldierAIController::updateStep(float)+0xb14>
  3e02fc: 447b         	add	r3, pc
  3e02fe: ed93 6b00    	vldr	d6, [r3]
  3e0302: ed93 7b02    	vldr	d7, [r3, #8]
  3e0306: 4620         	mov	r0, r4
  3e0308: eeb0 0b44    	vmov.f64	d0, d4
  3e030c: eeb0 1b45    	vmov.f64	d1, d5
  3e0310: eeb0 2b46    	vmov.f64	d2, d6
  3e0314: eeb0 3b47    	vmov.f64	d3, d7
  3e0318: f7fd fd10    	bl	0x3ddd3c <Slug::getVelocity()+0x510> @ imm = #-0x25e0
  3e031c: e192         	b	0x3e0644 <SoldierAIController::updateStep(float)+0xe04> @ imm = #0x324
  3e031e: bf00         	nop
  3e032c: 0000         	movs	r0, r0
  3e032e: c049         	stm	r0!, {r0, r3, r6}
  3e0330: 999a         	ldr	r1, [sp, #0x268]
  3e0332: 9999         	ldr	r1, [sp, #0x264]
  3e0334: 9999         	ldr	r1, [sp, #0x264]
  3e0336: 3fc9         	subs	r7, #0xc9
  3e0338: 432d         	orrs	r5, r5
  3e033a: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
  3e033e: 3f1a         	subs	r7, #0x1a
  3e0340: 0000         	movs	r0, r0
  3e0342: 0000         	movs	r0, r0
  3e0344: b717         	<unknown>
  3e0346: 38d1         	subs	r0, #0xd1
  3e0348: 0000         	movs	r0, r0
  3e034a: a000         	adr	r0, #0 <SoldierAIController::updateStep(float)+0xb0e>
  3e034c: 9999         	ldr	r1, [sp, #0x264]
  3e034e: 3fb9         	subs	r7, #0xb9
  3e0350: d730         	bvc	0x3e03b4 <SoldierAIController::updateStep(float)+0xb74> @ imm = #0x60
  3e0352: ffff 7cb0    	<unknown>
  3e0356: 003f         	movs	r7, r7
  3e0358: ab09         	add	r3, sp, #0x24
  3e035a: 681d         	ldr	r5, [r3]
  3e035c: ab04         	add	r3, sp, #0x10
  3e035e: 4618         	mov	r0, r3
  3e0360: ed9f 0bb9    	vldr	d0, [pc, #740]          @ 0x3e0648 <SoldierAIController::updateStep(float)+0xe08>
  3e0364: ed9f 1bba    	vldr	d1, [pc, #744]          @ 0x3e0650 <SoldierAIController::updateStep(float)+0xe10>
  3e0368: f7fd fb7e    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x2904
  3e036c: ab04         	add	r3, sp, #0x10
  3e036e: f505 7594    	add.w	r5, r5, #0x128
  3e0372: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e0374: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e0378: ab09         	add	r3, sp, #0x24
  3e037a: 681b         	ldr	r3, [r3]
  3e037c: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e0380: a3bd         	adr	r3, #756 <SoldierAIController::updateStep(float)+0xc01>
  3e0382: e9d3 2300    	ldrd	r2, r3, [r3]
  3e0386: e9c1 230c    	strd	r2, r3, [r1, #48]
  3e038a: ab09         	add	r3, sp, #0x24
  3e038c: 681b         	ldr	r3, [r3]
  3e038e: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3e0392: a3bb         	adr	r3, #748 <SoldierAIController::updateStep(float)+0xc11>
  3e0394: e9d3 2300    	ldrd	r2, r3, [r3]
  3e0398: e9c1 230e    	strd	r2, r3, [r1, #56]
  3e039c: ab09         	add	r3, sp, #0x24
  3e039e: 681b         	ldr	r3, [r3]
  3e03a0: edd3 7a45    	vldr	s15, [r3, #276]
  3e03a4: ab16         	add	r3, sp, #0x58
  3e03a6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e03aa: ed83 7b00    	vstr	d7, [r3]
  3e03ae: ab16         	add	r3, sp, #0x58
  3e03b0: ed93 7b00    	vldr	d7, [r3]
  3e03b4: eeb5 7b40    	vcmp.f64	d7, #0
  3e03b8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e03bc: d019         	beq	0x3e03f2 <SoldierAIController::updateStep(float)+0xbb2> @ imm = #0x32
  3e03be: aa54         	add	r2, sp, #0x150
  3e03c0: ab16         	add	r3, sp, #0x58
  3e03c2: 4610         	mov	r0, r2
  3e03c4: ed93 0b00    	vldr	d0, [r3]
  3e03c8: ed9f 1b9f    	vldr	d1, [pc, #636]          @ 0x3e0648 <SoldierAIController::updateStep(float)+0xe08>
  3e03cc: f7fd fb4c    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x2968
  3e03d0: ab04         	add	r3, sp, #0x10
  3e03d2: ed9d 6b54    	vldr	d6, [sp, #336]
  3e03d6: ed9d 7b56    	vldr	d7, [sp, #344]
  3e03da: 4618         	mov	r0, r3
  3e03dc: eeb0 0b46    	vmov.f64	d0, d6
  3e03e0: eeb0 1b47    	vmov.f64	d1, d7
  3e03e4: f7fd fc1a    	bl	0x3ddc1c <Slug::getVelocity()+0x3f0> @ imm = #-0x27cc
  3e03e8: ab04         	add	r3, sp, #0x10
  3e03ea: ad2c         	add	r5, sp, #0xb0
  3e03ec: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e03ee: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e03f2: ab09         	add	r3, sp, #0x24
  3e03f4: 681b         	ldr	r3, [r3]
  3e03f6: edd3 7a68    	vldr	s15, [r3, #416]
  3e03fa: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e03fe: ab16         	add	r3, sp, #0x58
  3e0400: ed93 7b00    	vldr	d7, [r3]
  3e0404: ee26 7b07    	vmul.f64	d7, d6, d7
  3e0408: ab04         	add	r3, sp, #0x10
  3e040a: 4618         	mov	r0, r3
  3e040c: eeb0 0b47    	vmov.f64	d0, d7
  3e0410: ed9f 1b8d    	vldr	d1, [pc, #564]          @ 0x3e0648 <SoldierAIController::updateStep(float)+0xe08>
  3e0414: f7fd fb28    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x29b0
  3e0418: ab04         	add	r3, sp, #0x10
  3e041a: ad28         	add	r5, sp, #0xa0
  3e041c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e041e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e0422: ab28         	add	r3, sp, #0xa0
  3e0424: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e0426: f2f6 fe47    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f6c8e
  3e042a: 4602         	mov	r2, r0
  3e042c: 460b         	mov	r3, r1
  3e042e: a912         	add	r1, sp, #0x48
  3e0430: e9c1 2300    	strd	r2, r3, [r1]
  3e0434: ab12         	add	r3, sp, #0x48
  3e0436: ed93 7b00    	vldr	d7, [r3]
  3e043a: eeb5 7b40    	vcmp.f64	d7, #0
  3e043e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e0442: f000 80e2    	beq.w	0x3e060a <SoldierAIController::updateStep(float)+0xdca> @ imm = #0x1c4
  3e0446: ab09         	add	r3, sp, #0x24
  3e0448: 681b         	ldr	r3, [r3]
  3e044a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e044e: ad50         	add	r5, sp, #0x140
  3e0450: 3338         	adds	r3, #0x38
  3e0452: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e0454: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e0458: ad18         	add	r5, sp, #0x60
  3e045a: ed9d 4b50    	vldr	d4, [sp, #320]
  3e045e: ed9d 5b52    	vldr	d5, [sp, #328]
  3e0462: ed9d 6b2c    	vldr	d6, [sp, #176]
  3e0466: ed9d 7b2e    	vldr	d7, [sp, #184]
  3e046a: eeb0 0b44    	vmov.f64	d0, d4
  3e046e: eeb0 1b45    	vmov.f64	d1, d5
  3e0472: eeb0 2b46    	vmov.f64	d2, d6
  3e0476: eeb0 3b47    	vmov.f64	d3, d7
  3e047a: f7fd fb87    	bl	0x3ddb8c <Slug::getVelocity()+0x360> @ imm = #-0x28f2
  3e047e: ed85 0b00    	vstr	d0, [r5]
  3e0482: ab0c         	add	r3, sp, #0x30
  3e0484: f04f 4280    	mov.w	r2, #0x40000000
  3e0488: 601a         	str	r2, [r3]
  3e048a: aa12         	add	r2, sp, #0x48
  3e048c: ab18         	add	r3, sp, #0x60
  3e048e: ed92 6b00    	vldr	d6, [r2]
  3e0492: ed93 7b00    	vldr	d7, [r3]
  3e0496: ee36 6b47    	vsub.f64	d6, d6, d7
  3e049a: ed9f 7b6f    	vldr	d7, [pc, #444]          @ 0x3e0658 <SoldierAIController::updateStep(float)+0xe18>
  3e049e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e04a2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e04a6: d502         	bpl	0x3e04ae <SoldierAIController::updateStep(float)+0xc6e> @ imm = #0x4
  3e04a8: eddf 7a71    	vldr	s15, [pc, #452]         @ 0x3e0670 <SoldierAIController::updateStep(float)+0xe30>
  3e04ac: e009         	b	0x3e04c2 <SoldierAIController::updateStep(float)+0xc82> @ imm = #0x12
  3e04ae: aa12         	add	r2, sp, #0x48
  3e04b0: ab18         	add	r3, sp, #0x60
  3e04b2: ed92 6b00    	vldr	d6, [r2]
  3e04b6: ed93 7b00    	vldr	d7, [r3]
  3e04ba: ee36 7b47    	vsub.f64	d7, d6, d7
  3e04be: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e04c2: ab0d         	add	r3, sp, #0x34
  3e04c4: edc3 7a00    	vstr	s15, [r3]
  3e04c8: ab09         	add	r3, sp, #0x24
  3e04ca: 681b         	ldr	r3, [r3]
  3e04cc: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3e04d0: aa0c         	add	r2, sp, #0x30
  3e04d2: ab08         	add	r3, sp, #0x20
  3e04d4: ed92 7a00    	vldr	s14, [r2]
  3e04d8: edd3 7a00    	vldr	s15, [r3]
  3e04dc: ee27 7a27    	vmul.f32	s14, s14, s15
  3e04e0: ab0d         	add	r3, sp, #0x34
  3e04e2: edd3 7a00    	vldr	s15, [r3]
  3e04e6: ee27 7a27    	vmul.f32	s14, s14, s15
  3e04ea: ab09         	add	r3, sp, #0x24
  3e04ec: 681b         	ldr	r3, [r3]
  3e04ee: edd3 7a6d    	vldr	s15, [r3, #436]
  3e04f2: ee67 7a27    	vmul.f32	s15, s14, s15
  3e04f6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e04fa: ab58         	add	r3, sp, #0x160
  3e04fc: ed9d 5b2c    	vldr	d5, [sp, #176]
  3e0500: ed9d 6b2e    	vldr	d6, [sp, #184]
  3e0504: 4618         	mov	r0, r3
  3e0506: eeb0 0b45    	vmov.f64	d0, d5
  3e050a: eeb0 1b46    	vmov.f64	d1, d6
  3e050e: eeb0 2b47    	vmov.f64	d2, d7
  3e0512: f7fd fb15    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x29d6
  3e0516: ed9d 4b58    	vldr	d4, [sp, #352]
  3e051a: ed9d 5b5a    	vldr	d5, [sp, #360]
  3e051e: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3e0688 <SoldierAIController::updateStep(float)+0xe48>
  3e0520: 447b         	add	r3, pc
  3e0522: ed93 6b00    	vldr	d6, [r3]
  3e0526: ed93 7b02    	vldr	d7, [r3, #8]
  3e052a: 4628         	mov	r0, r5
  3e052c: eeb0 0b44    	vmov.f64	d0, d4
  3e0530: eeb0 1b45    	vmov.f64	d1, d5
  3e0534: eeb0 2b46    	vmov.f64	d2, d6
  3e0538: eeb0 3b47    	vmov.f64	d3, d7
  3e053c: f7fd fbfe    	bl	0x3ddd3c <Slug::getVelocity()+0x510> @ imm = #-0x2804
  3e0540: ab09         	add	r3, sp, #0x24
  3e0542: 681b         	ldr	r3, [r3]
  3e0544: edd3 7a70    	vldr	s15, [r3, #448]
  3e0548: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e054c: ab12         	add	r3, sp, #0x48
  3e054e: ed9f 5b44    	vldr	d5, [pc, #272]          @ 0x3e0660 <SoldierAIController::updateStep(float)+0xe20>
  3e0552: ed93 7b00    	vldr	d7, [r3]
  3e0556: ee85 7b07    	vdiv.f64	d7, d5, d7
  3e055a: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e055e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e0562: dc00         	bgt	0x3e0566 <SoldierAIController::updateStep(float)+0xd26> @ imm = #0x0
  3e0564: e051         	b	0x3e060a <SoldierAIController::updateStep(float)+0xdca> @ imm = #0xa2
  3e0566: ab09         	add	r3, sp, #0x24
  3e0568: 681b         	ldr	r3, [r3]
  3e056a: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e056e: 2b00         	cmp	r3, #0x0
  3e0570: d04b         	beq	0x3e060a <SoldierAIController::updateStep(float)+0xdca> @ imm = #0x96
  3e0572: ab09         	add	r3, sp, #0x24
  3e0574: 681b         	ldr	r3, [r3]
  3e0576: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3e057a: f083 0301    	eor	r3, r3, #0x1
  3e057e: b2db         	uxtb	r3, r3
  3e0580: 2b00         	cmp	r3, #0x0
  3e0582: d042         	beq	0x3e060a <SoldierAIController::updateStep(float)+0xdca> @ imm = #0x84
  3e0584: ab09         	add	r3, sp, #0x24
  3e0586: 681b         	ldr	r3, [r3]
  3e0588: f04f 0200    	mov.w	r2, #0x0
  3e058c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  3e0590: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3e068c <SoldierAIController::updateStep(float)+0xe4c>
  3e0592: 58e3         	ldr	r3, [r4, r3]
  3e0594: 681d         	ldr	r5, [r3]
  3e0596: ab09         	add	r3, sp, #0x24
  3e0598: 681b         	ldr	r3, [r3]
  3e059a: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e059e: ab12         	add	r3, sp, #0x48
  3e05a0: ed93 6b00    	vldr	d6, [r3]
  3e05a4: ed9f 7b30    	vldr	d7, [pc, #192]          @ 0x3e0668 <SoldierAIController::updateStep(float)+0xe28>
  3e05a8: ee86 7b07    	vdiv.f64	d7, d6, d7
  3e05ac: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3e05b0: f7fd f9d4    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x2c58
  3e05b4: 4603         	mov	r3, r0
  3e05b6: ee07 3a90    	vmov	s15, r3
  3e05ba: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e05be: eddf 7a2d    	vldr	s15, [pc, #180]         @ 0x3e0674 <SoldierAIController::updateStep(float)+0xe34>
  3e05c2: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e05c6: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e05ca: ee77 7a67    	vsub.f32	s15, s14, s15
  3e05ce: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e05d2: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3e05d6: ee26 6b07    	vmul.f64	d6, d6, d7
  3e05da: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3e05de: ee36 7b07    	vadd.f64	d7, d6, d7
  3e05e2: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e05e6: ed8d 8a02    	vstr	s16, [sp, #8]
  3e05ea: edcd 7a03    	vstr	s15, [sp, #12]
  3e05ee: 466b         	mov	r3, sp
  3e05f0: f104 0230    	add.w	r2, r4, #0x30
  3e05f4: e892 0003    	ldm.w	r2, {r0, r1}
  3e05f8: e883 0003    	stm.w	r3, {r0, r1}
  3e05fc: f104 0328    	add.w	r3, r4, #0x28
  3e0600: cb0c         	ldm	r3, {r2, r3}
  3e0602: 4628         	mov	r0, r5
  3e0604: 210a         	movs	r1, #0xa
  3e0606: f017 fd1d    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x17a3a
  3e060a: ab09         	add	r3, sp, #0x24
  3e060c: 681b         	ldr	r3, [r3]
  3e060e: ed93 7a46    	vldr	s14, [r3, #280]
  3e0612: eefe 7a08    	vmov.f32	s15, #-7.500000e-01
  3e0616: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e061a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e061e: d400         	bmi	0x3e0622 <SoldierAIController::updateStep(float)+0xde2> @ imm = #0x0
  3e0620: e046         	b	0x3e06b0 <SoldierAIController::updateStep(float)+0xe70> @ imm = #0x8c
  3e0622: ab09         	add	r3, sp, #0x24
  3e0624: 681b         	ldr	r3, [r3]
  3e0626: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3e062a: 2b00         	cmp	r3, #0x0
  3e062c: d00a         	beq	0x3e0644 <SoldierAIController::updateStep(float)+0xe04> @ imm = #0x14
  3e062e: ab09         	add	r3, sp, #0x24
  3e0630: 681b         	ldr	r3, [r3]
  3e0632: 2201         	movs	r2, #0x1
  3e0634: f883 215a    	strb.w	r2, [r3, #0x15a]
  3e0638: ab09         	add	r3, sp, #0x24
  3e063a: 681b         	ldr	r3, [r3]
  3e063c: f04f 0200    	mov.w	r2, #0x0
  3e0640: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3e0644: e034         	b	0x3e06b0 <SoldierAIController::updateStep(float)+0xe70> @ imm = #0x68
  3e0646: bf00         	nop
  3e0654: c000         	<unknown>
  3e0656: c072         	stm	r0!, {r1, r4, r5, r6}
  3e0658: 432d         	orrs	r5, r5
  3e065a: eb1c 36e2    	adds.w	r6, r12, r2, asr #15
  3e065e: 3f1a         	subs	r7, #0x1a
  3e0660: 0000         	movs	r0, r0
  3e0662: 0000         	movs	r0, r0
  3e0664: 0000         	movs	r0, r0
  3e0666: 4049         	eors	r1, r1
  3e0668: 0000         	movs	r0, r0
  3e066a: 0000         	movs	r0, r0
  3e066c: 0000         	movs	r0, r0
  3e066e: 4069         	eors	r1, r5
  3e0670: b717         	<unknown>
  3e0672: 38d1         	subs	r0, #0xd1
  3e0674: 0000         	movs	r0, r0
  3e0676: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e0878 <SoldierAIController::updateStep(float)+0x1038>
  3e0678: 0000         	movs	r0, r0
  3e067a: a000         	adr	r0, #0 <SoldierAIController::updateStep(float)+0xe3e>
  3e067c: 9999         	ldr	r1, [sp, #0x264]
  3e067e: 3fc9         	subs	r7, #0xc9
  3e0680: 0000         	movs	r0, r0
  3e0682: 8000         	strh	r0, [r0]
  3e0684: ae14         	add	r6, sp, #0x50
  3e0686: 3fef         	subs	r7, #0xef
  3e0688: 7a8c         	ldrb	r4, [r1, #0xa]
  3e068a: 003f         	movs	r7, r7
  3e068c: d730         	bvc	0x3e06f0 <SoldierAIController::updateStep(float)+0xeb0> @ imm = #0x60
  3e068e: ffff ab09    	vtbl.8	d26, {d15, d16, d17, d18}, d9
  3e0692: 681c         	ldr	r4, [r3]
  3e0694: ab04         	add	r3, sp, #0x10
  3e0696: 4618         	mov	r0, r3
  3e0698: ed9f 0b9b    	vldr	d0, [pc, #620]          @ 0x3e0908 <SoldierAIController::updateStep(float)+0x10c8>
  3e069c: ed9f 1b9c    	vldr	d1, [pc, #624]          @ 0x3e0910 <SoldierAIController::updateStep(float)+0x10d0>
  3e06a0: f7fd f9e2    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x2c3c
  3e06a4: ab04         	add	r3, sp, #0x10
  3e06a6: f504 7494    	add.w	r4, r4, #0x128
  3e06aa: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e06ac: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e06b0: ab09         	add	r3, sp, #0x24
  3e06b2: 681b         	ldr	r3, [r3]
  3e06b4: ed93 7a57    	vldr	s14, [r3, #348]
  3e06b8: ab08         	add	r3, sp, #0x20
  3e06ba: edd3 7a00    	vldr	s15, [r3]
  3e06be: ee77 7a27    	vadd.f32	s15, s14, s15
  3e06c2: ab09         	add	r3, sp, #0x24
  3e06c4: 681b         	ldr	r3, [r3]
  3e06c6: edc3 7a57    	vstr	s15, [r3, #348]
  3e06ca: ab09         	add	r3, sp, #0x24
  3e06cc: 681b         	ldr	r3, [r3]
  3e06ce: edd3 7a57    	vldr	s15, [r3, #348]
  3e06d2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3e06d6: ed9f 7b90    	vldr	d7, [pc, #576]          @ 0x3e0918 <SoldierAIController::updateStep(float)+0x10d8>
  3e06da: eeb4 6bc7    	vcmpe.f64	d6, d7
  3e06de: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e06e2: dd0a         	ble	0x3e06fa <SoldierAIController::updateStep(float)+0xeba> @ imm = #0x14
  3e06e4: ab09         	add	r3, sp, #0x24
  3e06e6: 681b         	ldr	r3, [r3]
  3e06e8: 2200         	movs	r2, #0x0
  3e06ea: f883 215a    	strb.w	r2, [r3, #0x15a]
  3e06ee: ab09         	add	r3, sp, #0x24
  3e06f0: 681b         	ldr	r3, [r3]
  3e06f2: f04f 0200    	mov.w	r2, #0x0
  3e06f6: f8c3 215c    	str.w	r2, [r3, #0x15c]
  3e06fa: ab09         	add	r3, sp, #0x24
  3e06fc: 681b         	ldr	r3, [r3]
  3e06fe: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  3e0702: ab09         	add	r3, sp, #0x24
  3e0704: 681b         	ldr	r3, [r3]
  3e0706: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e070a: 2b00         	cmp	r3, #0x0
  3e070c: bf0c         	ite	eq
  3e070e: 2300         	moveq	r3, #0x0
  3e0710: 2301         	movne	r3, #0x1
  3e0712: b2db         	uxtb	r3, r3
  3e0714: 4610         	mov	r0, r2
  3e0716: 4619         	mov	r1, r3
  3e0718: f7fe fa20    	bl	0x3deb5c <SoldierView::setHasWeapon(bool)> @ imm = #-0x1bc0
  3e071c: ab09         	add	r3, sp, #0x24
  3e071e: 681b         	ldr	r3, [r3]
  3e0720: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e0724: ab09         	add	r3, sp, #0x24
  3e0726: 681b         	ldr	r3, [r3]
  3e0728: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e072c: ed93 7b0a    	vldr	d7, [r3, #40]
  3e0730: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3e0734: ab09         	add	r3, sp, #0x24
  3e0736: 681b         	ldr	r3, [r3]
  3e0738: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e073c: ed93 7b0c    	vldr	d7, [r3, #48]
  3e0740: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e0744: ab1a         	add	r3, sp, #0x68
  3e0746: 4618         	mov	r0, r3
  3e0748: ee16 1a90    	vmov	r1, s13
  3e074c: ee17 2a90    	vmov	r2, s15
  3e0750: f1b2 face    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b259c
  3e0754: ab09         	add	r3, sp, #0x24
  3e0756: 681b         	ldr	r3, [r3]
  3e0758: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e075c: ed93 7b0e    	vldr	d7, [r3, #56]
  3e0760: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3e0764: ab09         	add	r3, sp, #0x24
  3e0766: 681b         	ldr	r3, [r3]
  3e0768: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e076c: ed93 7b10    	vldr	d7, [r3, #64]
  3e0770: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e0774: ab28         	add	r3, sp, #0xa0
  3e0776: 4618         	mov	r0, r3
  3e0778: ee16 1a90    	vmov	r1, s13
  3e077c: ee17 2a90    	vmov	r2, s15
  3e0780: f1b2 fab6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1b256c
  3e0784: ab09         	add	r3, sp, #0x24
  3e0786: 681b         	ldr	r3, [r3]
  3e0788: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e078c: ed93 7b16    	vldr	d7, [r3, #88]
  3e0790: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3e0794: ab09         	add	r3, sp, #0x24
  3e0796: 681b         	ldr	r3, [r3]
  3e0798: f8d3 5110    	ldr.w	r5, [r3, #0x110]
  3e079c: ab09         	add	r3, sp, #0x24
  3e079e: 681b         	ldr	r3, [r3]
  3e07a0: f503 738a    	add.w	r3, r3, #0x114
  3e07a4: aa2c         	add	r2, sp, #0xb0
  3e07a6: 4610         	mov	r0, r2
  3e07a8: 4619         	mov	r1, r3
  3e07aa: f1b2 faaf    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x1b255e
  3e07ae: ab09         	add	r3, sp, #0x24
  3e07b0: 681b         	ldr	r3, [r3]
  3e07b2: f8d3 010c    	ldr.w	r0, [r3, #0x10c]
  3e07b6: ab09         	add	r3, sp, #0x24
  3e07b8: 681b         	ldr	r3, [r3]
  3e07ba: f893 115a    	ldrb.w	r1, [r3, #0x15a]
  3e07be: aa1a         	add	r2, sp, #0x68
  3e07c0: ab28         	add	r3, sp, #0xa0
  3e07c2: 9500         	str	r5, [sp]
  3e07c4: ad2c         	add	r5, sp, #0xb0
  3e07c6: 9501         	str	r5, [sp, #0x4]
  3e07c8: 9002         	str	r0, [sp, #0x8]
  3e07ca: 9103         	str	r1, [sp, #0xc]
  3e07cc: 4620         	mov	r0, r4
  3e07ce: 4611         	mov	r1, r2
  3e07d0: 461a         	mov	r2, r3
  3e07d2: ee18 3a10    	vmov	r3, s16
  3e07d6: f012 f897    	bl	0x3f2908 <SoldierView::updateBody(cocos2d::CCPoint, cocos2d::CCPoint, float, float, cocos2d::CCPoint, float, bool)> @ imm = #0x1212e
  3e07da: ab09         	add	r3, sp, #0x24
  3e07dc: 681b         	ldr	r3, [r3]
  3e07de: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  3e07e2: ab08         	add	r3, sp, #0x20
  3e07e4: 4610         	mov	r0, r2
  3e07e6: 6819         	ldr	r1, [r3]
  3e07e8: f012 f9ca    	bl	0x3f2b80 <SoldierView::updateStep(float)> @ imm = #0x12394
  3e07ec: ab09         	add	r3, sp, #0x24
  3e07ee: 681b         	ldr	r3, [r3]
  3e07f0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e07f4: 2b00         	cmp	r3, #0x0
  3e07f6: d029         	beq	0x3e084c <SoldierAIController::updateStep(float)+0x100c> @ imm = #0x52
  3e07f8: ab09         	add	r3, sp, #0x24
  3e07fa: 681b         	ldr	r3, [r3]
  3e07fc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0800: 681b         	ldr	r3, [r3]
  3e0802: f503 7341    	add.w	r3, r3, #0x304
  3e0806: 681c         	ldr	r4, [r3]
  3e0808: ab09         	add	r3, sp, #0x24
  3e080a: 681b         	ldr	r3, [r3]
  3e080c: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  3e0810: ab09         	add	r3, sp, #0x24
  3e0812: 681b         	ldr	r3, [r3]
  3e0814: 681b         	ldr	r3, [r3]
  3e0816: f503 730f    	add.w	r3, r3, #0x23c
  3e081a: 681b         	ldr	r3, [r3]
  3e081c: aa09         	add	r2, sp, #0x24
  3e081e: 6810         	ldr	r0, [r2]
  3e0820: 4798         	blx	r3
  3e0822: 4603         	mov	r3, r0
  3e0824: 4628         	mov	r0, r5
  3e0826: 4619         	mov	r1, r3
  3e0828: 47a0         	blx	r4
  3e082a: ab09         	add	r3, sp, #0x24
  3e082c: 681b         	ldr	r3, [r3]
  3e082e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0832: 681b         	ldr	r3, [r3]
  3e0834: f503 73da    	add.w	r3, r3, #0x1b4
  3e0838: 681b         	ldr	r3, [r3]
  3e083a: aa09         	add	r2, sp, #0x24
  3e083c: 6812         	ldr	r2, [r2]
  3e083e: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e0842: 4611         	mov	r1, r2
  3e0844: aa08         	add	r2, sp, #0x20
  3e0846: 4608         	mov	r0, r1
  3e0848: 6811         	ldr	r1, [r2]
  3e084a: 4798         	blx	r3
  3e084c: ab09         	add	r3, sp, #0x24
  3e084e: 681b         	ldr	r3, [r3]
  3e0850: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0854: 2b00         	cmp	r3, #0x0
  3e0856: d032         	beq	0x3e08be <SoldierAIController::updateStep(float)+0x107e> @ imm = #0x64
  3e0858: ab09         	add	r3, sp, #0x24
  3e085a: 681b         	ldr	r3, [r3]
  3e085c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0860: 681b         	ldr	r3, [r3]
  3e0862: f503 7341    	add.w	r3, r3, #0x304
  3e0866: 681c         	ldr	r4, [r3]
  3e0868: ab09         	add	r3, sp, #0x24
  3e086a: 681b         	ldr	r3, [r3]
  3e086c: f8d3 5150    	ldr.w	r5, [r3, #0x150]
  3e0870: ab09         	add	r3, sp, #0x24
  3e0872: 681b         	ldr	r3, [r3]
  3e0874: 681b         	ldr	r3, [r3]
  3e0876: f503 7321    	add.w	r3, r3, #0x284
  3e087a: 681b         	ldr	r3, [r3]
  3e087c: aa09         	add	r2, sp, #0x24
  3e087e: 6810         	ldr	r0, [r2]
  3e0880: 4798         	blx	r3
  3e0882: 4603         	mov	r3, r0
  3e0884: 4628         	mov	r0, r5
  3e0886: 4619         	mov	r1, r3
  3e0888: 47a0         	blx	r4
  3e088a: ab09         	add	r3, sp, #0x24
  3e088c: 681b         	ldr	r3, [r3]
  3e088e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0892: 681b         	ldr	r3, [r3]
  3e0894: f503 73da    	add.w	r3, r3, #0x1b4
  3e0898: 681b         	ldr	r3, [r3]
  3e089a: aa09         	add	r2, sp, #0x24
  3e089c: 6812         	ldr	r2, [r2]
  3e089e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e08a2: 4611         	mov	r1, r2
  3e08a4: aa08         	add	r2, sp, #0x20
  3e08a6: 4608         	mov	r0, r1
  3e08a8: 6811         	ldr	r1, [r2]
  3e08aa: 4798         	blx	r3
  3e08ac: ab09         	add	r3, sp, #0x24
  3e08ae: 681b         	ldr	r3, [r3]
  3e08b0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e08b4: 4618         	mov	r0, r3
  3e08b6: 2101         	movs	r1, #0x1
  3e08b8: f013 fcc2    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0x13984
  3e08bc: e007         	b	0x3e08ce <SoldierAIController::updateStep(float)+0x108e> @ imm = #0xe
  3e08be: ab09         	add	r3, sp, #0x24
  3e08c0: 681b         	ldr	r3, [r3]
  3e08c2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e08c6: 4618         	mov	r0, r3
  3e08c8: 2100         	movs	r1, #0x0
  3e08ca: f013 fcb9    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0x13972
  3e08ce: ab09         	add	r3, sp, #0x24
  3e08d0: 681b         	ldr	r3, [r3]
  3e08d2: f893 20e6    	ldrb.w	r2, [r3, #0xe6]
  3e08d6: ab09         	add	r3, sp, #0x24
  3e08d8: 681b         	ldr	r3, [r3]
  3e08da: f883 20e8    	strb.w	r2, [r3, #0xe8]
  3e08de: ab09         	add	r3, sp, #0x24
  3e08e0: 681b         	ldr	r3, [r3]
  3e08e2: 2200         	movs	r2, #0x0
  3e08e4: f883 20e6    	strb.w	r2, [r3, #0xe6]
  3e08e8: e00a         	b	0x3e0900 <SoldierAIController::updateStep(float)+0x10c0> @ imm = #0x14
  3e08ea: ab58         	add	r3, sp, #0x160
  3e08ec: 4618         	mov	r0, r3
  3e08ee: f3d5 f811    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d5022
  3e08f2: e7ff         	b	0x3e08f4 <SoldierAIController::updateStep(float)+0x10b4> @ imm = #-0x2
  3e08f4: ab54         	add	r3, sp, #0x150
  3e08f6: 4618         	mov	r0, r3
  3e08f8: f3a9 fd80    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a9b00
  3e08fc: f3a7 fbd6    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a77ac
  3e0900: b05d         	add	sp, #0x174
  3e0902: ecbd 8b02    	vpop	{d8}
  3e0906: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3e0907); words below are literal-pool data ---
  3e0914: c000         	<unknown>
  3e0916: c072         	stm	r0!, {r1, r4, r5, r6}
  3e0918: 999a         	ldr	r1, [sp, #0x268]
  3e091a: 9999         	ldr	r1, [sp, #0x264]
  3e091c: 9999         	ldr	r1, [sp, #0x264]
  3e091e: 3fc9         	subs	r7, #0xc9

// ==== SoldierAIController::setFireAngle
//      file offset 0x3e0920 (= ELF address; Ghidra 0x3f0920), 18 bytes, Thumb-2
  3e0920: b082         	sub	sp, #0x8
  3e0922: 9001         	str	r0, [sp, #0x4]
  3e0924: 9100         	str	r1, [sp]
  3e0926: 9b01         	ldr	r3, [sp, #0x4]
  3e0928: 9a00         	ldr	r2, [sp]
  3e092a: f8c3 2110    	str.w	r2, [r3, #0x110]
  3e092e: b002         	add	sp, #0x8
  3e0930: 4770         	bx	lr

// ==== SoldierAIController::getDualFireAngle
//      file offset 0x3e0934 (= ELF address; Ghidra 0x3f0934), 28 bytes, Thumb-2
  3e0934: b500         	push	{lr}
  3e0936: b083         	sub	sp, #0xc
  3e0938: 9001         	str	r0, [sp, #0x4]
  3e093a: 9b01         	ldr	r3, [sp, #0x4]
  3e093c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0940: 4618         	mov	r0, r3
  3e0942: f013 fa21    	bl	0x3f3d88 <SoldierView::getDualFiringAngle()> @ imm = #0x13442
  3e0946: 4603         	mov	r3, r0
  3e0948: 4618         	mov	r0, r3
  3e094a: b003         	add	sp, #0xc
  3e094c: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierAIController::getFireAngle
//      file offset 0x3e0950 (= ELF address; Ghidra 0x3f0950), 28 bytes, Thumb-2
  3e0950: b500         	push	{lr}
  3e0952: b083         	sub	sp, #0xc
  3e0954: 9001         	str	r0, [sp, #0x4]
  3e0956: 9b01         	ldr	r3, [sp, #0x4]
  3e0958: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e095c: 4618         	mov	r0, r3
  3e095e: f013 fa33    	bl	0x3f3dc8 <SoldierView::getFiringAngle()> @ imm = #0x13466
  3e0962: 4603         	mov	r3, r0
  3e0964: 4618         	mov	r0, r3
  3e0966: b003         	add	sp, #0xc
  3e0968: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierAIController::setThrust
//      file offset 0x3e096c (= ELF address; Ghidra 0x3f096c), 24 bytes, Thumb-2
  3e096c: b082         	sub	sp, #0x8
  3e096e: 9001         	str	r0, [sp, #0x4]
  3e0970: 460b         	mov	r3, r1
  3e0972: f88d 3003    	strb.w	r3, [sp, #0x3]
  3e0976: 9b01         	ldr	r3, [sp, #0x4]
  3e0978: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3e097c: f883 2104    	strb.w	r2, [r3, #0x104]
  3e0980: b002         	add	sp, #0x8
  3e0982: 4770         	bx	lr

// ==== SoldierAIController::getThrustFactor
//      file offset 0x3e0984 (= ELF address; Ghidra 0x3f0984), 26 bytes, Thumb-2
  3e0984: b082         	sub	sp, #0x8
  3e0986: 9001         	str	r0, [sp, #0x4]
  3e0988: 9b01         	ldr	r3, [sp, #0x4]
  3e098a: edd3 7a43    	vldr	s15, [r3, #268]
  3e098e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e0992: ec53 2b17    	vmov	r2, r3, d7
  3e0996: 4610         	mov	r0, r2
  3e0998: 4619         	mov	r1, r3
  3e099a: b002         	add	sp, #0x8
  3e099c: 4770         	bx	lr

// ==== SoldierAIController::setPower
//      file offset 0x3e09a0 (= ELF address; Ghidra 0x3f09a0), 18 bytes, Thumb-2
  3e09a0: b082         	sub	sp, #0x8
  3e09a2: 9001         	str	r0, [sp, #0x4]
  3e09a4: 9100         	str	r1, [sp]
  3e09a6: 9b01         	ldr	r3, [sp, #0x4]
  3e09a8: 9a00         	ldr	r2, [sp]
  3e09aa: f8c3 2198    	str.w	r2, [r3, #0x198]
  3e09ae: b002         	add	sp, #0x8
  3e09b0: 4770         	bx	lr

// ==== SoldierAIController::getPower
//      file offset 0x3e09b4 (= ELF address; Ghidra 0x3f09b4), 16 bytes, Thumb-2
  3e09b4: b082         	sub	sp, #0x8
  3e09b6: 9001         	str	r0, [sp, #0x4]
  3e09b8: 9b01         	ldr	r3, [sp, #0x4]
  3e09ba: f8d3 3198    	ldr.w	r3, [r3, #0x198]
  3e09be: 4618         	mov	r0, r3
  3e09c0: b002         	add	sp, #0x8
  3e09c2: 4770         	bx	lr

// ==== SoldierAIController::setSoldierView
//      file offset 0x3e09c4 (= ELF address; Ghidra 0x3f09c4), 18 bytes, Thumb-2
  3e09c4: b082         	sub	sp, #0x8
  3e09c6: 9001         	str	r0, [sp, #0x4]
  3e09c8: 9100         	str	r1, [sp]
  3e09ca: 9b01         	ldr	r3, [sp, #0x4]
  3e09cc: 9a00         	ldr	r2, [sp]
  3e09ce: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3e09d2: b002         	add	sp, #0x8
  3e09d4: 4770         	bx	lr

// ==== SoldierAIController::getSoldierView
//      file offset 0x3e09d8 (= ELF address; Ghidra 0x3f09d8), 16 bytes, Thumb-2
  3e09d8: b082         	sub	sp, #0x8
  3e09da: 9001         	str	r0, [sp, #0x4]
  3e09dc: 9b01         	ldr	r3, [sp, #0x4]
  3e09de: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e09e2: 4618         	mov	r0, r3
  3e09e4: b002         	add	sp, #0x8
  3e09e6: 4770         	bx	lr

// ==== SoldierAIController::addWeapon
//      file offset 0x3e09e8 (= ELF address; Ghidra 0x3f09e8), 424 bytes, Thumb-2
  3e09e8: b510         	push	{r4, lr}
  3e09ea: b082         	sub	sp, #0x8
  3e09ec: 9001         	str	r0, [sp, #0x4]
  3e09ee: 9100         	str	r1, [sp]
  3e09f0: 9b00         	ldr	r3, [sp]
  3e09f2: 2b00         	cmp	r3, #0x0
  3e09f4: d100         	bne	0x3e09f8 <SoldierAIController::addWeapon(Weapon*)+0x10> @ imm = #0x0
  3e09f6: e0c9         	b	0x3e0b8c <SoldierAIController::addWeapon(Weapon*)+0x1a4> @ imm = #0x192
  3e09f8: 9b00         	ldr	r3, [sp]
  3e09fa: 681b         	ldr	r3, [r3]
  3e09fc: 33e4         	adds	r3, #0xe4
  3e09fe: 681b         	ldr	r3, [r3]
  3e0a00: 9a00         	ldr	r2, [sp]
  3e0a02: 4610         	mov	r0, r2
  3e0a04: 4798         	blx	r3
  3e0a06: 4603         	mov	r3, r0
  3e0a08: 2b00         	cmp	r3, #0x0
  3e0a0a: bf0c         	ite	eq
  3e0a0c: 2300         	moveq	r3, #0x0
  3e0a0e: 2301         	movne	r3, #0x1
  3e0a10: b2db         	uxtb	r3, r3
  3e0a12: 2b00         	cmp	r3, #0x0
  3e0a14: d00e         	beq	0x3e0a34 <SoldierAIController::addWeapon(Weapon*)+0x4c> @ imm = #0x1c
  3e0a16: 9b00         	ldr	r3, [sp]
  3e0a18: 681b         	ldr	r3, [r3]
  3e0a1a: 33e4         	adds	r3, #0xe4
  3e0a1c: 681b         	ldr	r3, [r3]
  3e0a1e: 9a00         	ldr	r2, [sp]
  3e0a20: 4610         	mov	r0, r2
  3e0a22: 4798         	blx	r3
  3e0a24: 4603         	mov	r3, r0
  3e0a26: 681a         	ldr	r2, [r3]
  3e0a28: 32f4         	adds	r2, #0xf4
  3e0a2a: 6814         	ldr	r4, [r2]
  3e0a2c: 4618         	mov	r0, r3
  3e0a2e: 9900         	ldr	r1, [sp]
  3e0a30: 2200         	movs	r2, #0x0
  3e0a32: 47a0         	blx	r4
  3e0a34: 9b00         	ldr	r3, [sp]
  3e0a36: 681b         	ldr	r3, [r3]
  3e0a38: f503 733f    	add.w	r3, r3, #0x2fc
  3e0a3c: 681b         	ldr	r3, [r3]
  3e0a3e: 9800         	ldr	r0, [sp]
  3e0a40: 4798         	blx	r3
  3e0a42: 4603         	mov	r3, r0
  3e0a44: 2b00         	cmp	r3, #0x0
  3e0a46: d00b         	beq	0x3e0a60 <SoldierAIController::addWeapon(Weapon*)+0x78> @ imm = #0x16
  3e0a48: 9b00         	ldr	r3, [sp]
  3e0a4a: 681b         	ldr	r3, [r3]
  3e0a4c: f503 733b    	add.w	r3, r3, #0x2ec
  3e0a50: 681b         	ldr	r3, [r3]
  3e0a52: 9800         	ldr	r0, [sp]
  3e0a54: 4798         	blx	r3
  3e0a56: 4603         	mov	r3, r0
  3e0a58: 2b00         	cmp	r3, #0x0
  3e0a5a: d001         	beq	0x3e0a60 <SoldierAIController::addWeapon(Weapon*)+0x78> @ imm = #0x2
  3e0a5c: 2301         	movs	r3, #0x1
  3e0a5e: e000         	b	0x3e0a62 <SoldierAIController::addWeapon(Weapon*)+0x7a> @ imm = #0x0
  3e0a60: 2300         	movs	r3, #0x0
  3e0a62: 2b00         	cmp	r3, #0x0
  3e0a64: d056         	beq	0x3e0b14 <SoldierAIController::addWeapon(Weapon*)+0x12c> @ imm = #0xac
  3e0a66: 9b01         	ldr	r3, [sp, #0x4]
  3e0a68: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0a6c: 2b00         	cmp	r3, #0x0
  3e0a6e: d010         	beq	0x3e0a92 <SoldierAIController::addWeapon(Weapon*)+0xaa> @ imm = #0x20
  3e0a70: 9b01         	ldr	r3, [sp, #0x4]
  3e0a72: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0a76: 681b         	ldr	r3, [r3]
  3e0a78: f503 733b    	add.w	r3, r3, #0x2ec
  3e0a7c: 681b         	ldr	r3, [r3]
  3e0a7e: 9a01         	ldr	r2, [sp, #0x4]
  3e0a80: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e0a84: 4610         	mov	r0, r2
  3e0a86: 4798         	blx	r3
  3e0a88: 4603         	mov	r3, r0
  3e0a8a: 2b00         	cmp	r3, #0x0
  3e0a8c: d001         	beq	0x3e0a92 <SoldierAIController::addWeapon(Weapon*)+0xaa> @ imm = #0x2
  3e0a8e: 2301         	movs	r3, #0x1
  3e0a90: e000         	b	0x3e0a94 <SoldierAIController::addWeapon(Weapon*)+0xac> @ imm = #0x0
  3e0a92: 2300         	movs	r3, #0x0
  3e0a94: 2b00         	cmp	r3, #0x0
  3e0a96: d014         	beq	0x3e0ac2 <SoldierAIController::addWeapon(Weapon*)+0xda> @ imm = #0x28
  3e0a98: 9b01         	ldr	r3, [sp, #0x4]
  3e0a9a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0a9e: 2b00         	cmp	r3, #0x0
  3e0aa0: d006         	beq	0x3e0ab0 <SoldierAIController::addWeapon(Weapon*)+0xc8> @ imm = #0xc
  3e0aa2: 9b01         	ldr	r3, [sp, #0x4]
  3e0aa4: 681b         	ldr	r3, [r3]
  3e0aa6: f503 7303    	add.w	r3, r3, #0x20c
  3e0aaa: 681b         	ldr	r3, [r3]
  3e0aac: 9801         	ldr	r0, [sp, #0x4]
  3e0aae: 4798         	blx	r3
  3e0ab0: 9b01         	ldr	r3, [sp, #0x4]
  3e0ab2: 681b         	ldr	r3, [r3]
  3e0ab4: f503 7307    	add.w	r3, r3, #0x21c
  3e0ab8: 681b         	ldr	r3, [r3]
  3e0aba: 9801         	ldr	r0, [sp, #0x4]
  3e0abc: 9900         	ldr	r1, [sp]
  3e0abe: 4798         	blx	r3
  3e0ac0: e064         	b	0x3e0b8c <SoldierAIController::addWeapon(Weapon*)+0x1a4> @ imm = #0xc8
  3e0ac2: 9b01         	ldr	r3, [sp, #0x4]
  3e0ac4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0ac8: 2b00         	cmp	r3, #0x0
  3e0aca: d010         	beq	0x3e0aee <SoldierAIController::addWeapon(Weapon*)+0x106> @ imm = #0x20
  3e0acc: 9b01         	ldr	r3, [sp, #0x4]
  3e0ace: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0ad2: 681b         	ldr	r3, [r3]
  3e0ad4: f503 733b    	add.w	r3, r3, #0x2ec
  3e0ad8: 681b         	ldr	r3, [r3]
  3e0ada: 9a01         	ldr	r2, [sp, #0x4]
  3e0adc: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e0ae0: 4610         	mov	r0, r2
  3e0ae2: 4798         	blx	r3
  3e0ae4: 4603         	mov	r3, r0
  3e0ae6: 2b00         	cmp	r3, #0x0
  3e0ae8: d001         	beq	0x3e0aee <SoldierAIController::addWeapon(Weapon*)+0x106> @ imm = #0x2
  3e0aea: 2301         	movs	r3, #0x1
  3e0aec: e000         	b	0x3e0af0 <SoldierAIController::addWeapon(Weapon*)+0x108> @ imm = #0x0
  3e0aee: 2300         	movs	r3, #0x0
  3e0af0: 2b00         	cmp	r3, #0x0
  3e0af2: d00f         	beq	0x3e0b14 <SoldierAIController::addWeapon(Weapon*)+0x12c> @ imm = #0x1e
  3e0af4: 9b01         	ldr	r3, [sp, #0x4]
  3e0af6: 681b         	ldr	r3, [r3]
  3e0af8: f503 732b    	add.w	r3, r3, #0x2ac
  3e0afc: 681b         	ldr	r3, [r3]
  3e0afe: 9801         	ldr	r0, [sp, #0x4]
  3e0b00: 4798         	blx	r3
  3e0b02: 9b01         	ldr	r3, [sp, #0x4]
  3e0b04: 681b         	ldr	r3, [r3]
  3e0b06: f503 7307    	add.w	r3, r3, #0x21c
  3e0b0a: 681b         	ldr	r3, [r3]
  3e0b0c: 9801         	ldr	r0, [sp, #0x4]
  3e0b0e: 9900         	ldr	r1, [sp]
  3e0b10: 4798         	blx	r3
  3e0b12: e03b         	b	0x3e0b8c <SoldierAIController::addWeapon(Weapon*)+0x1a4> @ imm = #0x76
  3e0b14: 9b01         	ldr	r3, [sp, #0x4]
  3e0b16: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0b1a: 2b00         	cmp	r3, #0x0
  3e0b1c: d108         	bne	0x3e0b30 <SoldierAIController::addWeapon(Weapon*)+0x148> @ imm = #0x10
  3e0b1e: 9b01         	ldr	r3, [sp, #0x4]
  3e0b20: 681b         	ldr	r3, [r3]
  3e0b22: f503 7305    	add.w	r3, r3, #0x214
  3e0b26: 681b         	ldr	r3, [r3]
  3e0b28: 9801         	ldr	r0, [sp, #0x4]
  3e0b2a: 9900         	ldr	r1, [sp]
  3e0b2c: 4798         	blx	r3
  3e0b2e: e02d         	b	0x3e0b8c <SoldierAIController::addWeapon(Weapon*)+0x1a4> @ imm = #0x5a
  3e0b30: 9b01         	ldr	r3, [sp, #0x4]
  3e0b32: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0b36: 2b00         	cmp	r3, #0x0
  3e0b38: d014         	beq	0x3e0b64 <SoldierAIController::addWeapon(Weapon*)+0x17c> @ imm = #0x28
  3e0b3a: 9b01         	ldr	r3, [sp, #0x4]
  3e0b3c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0b40: 2b00         	cmp	r3, #0x0
  3e0b42: d10f         	bne	0x3e0b64 <SoldierAIController::addWeapon(Weapon*)+0x17c> @ imm = #0x1e
  3e0b44: 9b01         	ldr	r3, [sp, #0x4]
  3e0b46: 681b         	ldr	r3, [r3]
  3e0b48: f503 7306    	add.w	r3, r3, #0x218
  3e0b4c: 681b         	ldr	r3, [r3]
  3e0b4e: 9801         	ldr	r0, [sp, #0x4]
  3e0b50: 9900         	ldr	r1, [sp]
  3e0b52: 4798         	blx	r3
  3e0b54: 9b01         	ldr	r3, [sp, #0x4]
  3e0b56: 681b         	ldr	r3, [r3]
  3e0b58: f503 732b    	add.w	r3, r3, #0x2ac
  3e0b5c: 681b         	ldr	r3, [r3]
  3e0b5e: 9801         	ldr	r0, [sp, #0x4]
  3e0b60: 4798         	blx	r3
  3e0b62: e013         	b	0x3e0b8c <SoldierAIController::addWeapon(Weapon*)+0x1a4> @ imm = #0x26
  3e0b64: 9b01         	ldr	r3, [sp, #0x4]
  3e0b66: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0b6a: 2b00         	cmp	r3, #0x0
  3e0b6c: d00e         	beq	0x3e0b8c <SoldierAIController::addWeapon(Weapon*)+0x1a4> @ imm = #0x1c
  3e0b6e: 9b01         	ldr	r3, [sp, #0x4]
  3e0b70: 681b         	ldr	r3, [r3]
  3e0b72: f503 7302    	add.w	r3, r3, #0x208
  3e0b76: 681b         	ldr	r3, [r3]
  3e0b78: 9801         	ldr	r0, [sp, #0x4]
  3e0b7a: 4798         	blx	r3
  3e0b7c: 9b01         	ldr	r3, [sp, #0x4]
  3e0b7e: 681b         	ldr	r3, [r3]
  3e0b80: f503 7305    	add.w	r3, r3, #0x214
  3e0b84: 681b         	ldr	r3, [r3]
  3e0b86: 9801         	ldr	r0, [sp, #0x4]
  3e0b88: 9900         	ldr	r1, [sp]
  3e0b8a: 4798         	blx	r3
  3e0b8c: b002         	add	sp, #0x8
  3e0b8e: bd10         	pop	{r4, pc}

// ==== SoldierAIController::addPrimaryWeapon
//      file offset 0x3e0b90 (= ELF address; Ghidra 0x3f0b90), 384 bytes, Thumb-2
  3e0b90: b570         	push	{r4, r5, r6, lr}
  3e0b92: b086         	sub	sp, #0x18
  3e0b94: 9003         	str	r0, [sp, #0xc]
  3e0b96: 9102         	str	r1, [sp, #0x8]
  3e0b98: 4c59         	ldr	r4, [pc, #0x164]        @ 0x3e0d00 <SoldierAIController::addPrimaryWeapon(Weapon*)+0x170>
  3e0b9a: 447c         	add	r4, pc
  3e0b9c: 9b02         	ldr	r3, [sp, #0x8]
  3e0b9e: 2b00         	cmp	r3, #0x0
  3e0ba0: f000 80ab    	beq.w	0x3e0cfa <SoldierAIController::addPrimaryWeapon(Weapon*)+0x16a> @ imm = #0x156
  3e0ba4: 9b03         	ldr	r3, [sp, #0xc]
  3e0ba6: 9a02         	ldr	r2, [sp, #0x8]
  3e0ba8: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e0bac: 9b03         	ldr	r3, [sp, #0xc]
  3e0bae: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0bb2: 4618         	mov	r0, r3
  3e0bb4: f1b7 f998    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1b7330
  3e0bb8: 9b03         	ldr	r3, [sp, #0xc]
  3e0bba: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0bbe: 681b         	ldr	r3, [r3]
  3e0bc0: f503 73f8    	add.w	r3, r3, #0x1f0
  3e0bc4: 681d         	ldr	r5, [r3]
  3e0bc6: 9b03         	ldr	r3, [sp, #0xc]
  3e0bc8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0bcc: 461e         	mov	r6, r3
  3e0bce: 9b03         	ldr	r3, [sp, #0xc]
  3e0bd0: 681b         	ldr	r3, [r3]
  3e0bd2: f503 73e0    	add.w	r3, r3, #0x1c0
  3e0bd6: 681b         	ldr	r3, [r3]
  3e0bd8: 9a03         	ldr	r2, [sp, #0xc]
  3e0bda: a905         	add	r1, sp, #0x14
  3e0bdc: 4608         	mov	r0, r1
  3e0bde: 4611         	mov	r1, r2
  3e0be0: 4798         	blx	r3
  3e0be2: ab05         	add	r3, sp, #0x14
  3e0be4: 4630         	mov	r0, r6
  3e0be6: 4619         	mov	r1, r3
  3e0be8: 47a8         	blx	r5
  3e0bea: ab05         	add	r3, sp, #0x14
  3e0bec: 4618         	mov	r0, r3
  3e0bee: f3d4 fe91    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4d22
  3e0bf2: 9b03         	ldr	r3, [sp, #0xc]
  3e0bf4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0bf8: 681b         	ldr	r3, [r3]
  3e0bfa: f503 730f    	add.w	r3, r3, #0x23c
  3e0bfe: 681b         	ldr	r3, [r3]
  3e0c00: 9a03         	ldr	r2, [sp, #0xc]
  3e0c02: f8d2 1148    	ldr.w	r1, [r2, #0x148]
  3e0c06: 9a03         	ldr	r2, [sp, #0xc]
  3e0c08: 32f8         	adds	r2, #0xf8
  3e0c0a: 4608         	mov	r0, r1
  3e0c0c: 4611         	mov	r1, r2
  3e0c0e: 4798         	blx	r3
  3e0c10: f1ff fd4e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ffa9c
  3e0c14: 4602         	mov	r2, r0
  3e0c16: 9b03         	ldr	r3, [sp, #0xc]
  3e0c18: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0c1c: 4610         	mov	r0, r2
  3e0c1e: 4a39         	ldr	r2, [pc, #0xe4]         @ 0x3e0d04 <SoldierAIController::addPrimaryWeapon(Weapon*)+0x174>
  3e0c20: 447a         	add	r2, pc
  3e0c22: 4611         	mov	r1, r2
  3e0c24: 461a         	mov	r2, r3
  3e0c26: f1ff ff81    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fff02
  3e0c2a: 9b03         	ldr	r3, [sp, #0xc]
  3e0c2c: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3e0c30: 9b02         	ldr	r3, [sp, #0x8]
  3e0c32: 681b         	ldr	r3, [r3]
  3e0c34: f503 7339    	add.w	r3, r3, #0x2e4
  3e0c38: 681b         	ldr	r3, [r3]
  3e0c3a: 9802         	ldr	r0, [sp, #0x8]
  3e0c3c: 4798         	blx	r3
  3e0c3e: 4603         	mov	r3, r0
  3e0c40: 4628         	mov	r0, r5
  3e0c42: 4619         	mov	r1, r3
  3e0c44: f013 f864    	bl	0x3f3d10 <SoldierView::setWeaponAngleOffset(float)> @ imm = #0x130c8
  3e0c48: 9b03         	ldr	r3, [sp, #0xc]
  3e0c4a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0c4e: 681b         	ldr	r3, [r3]
  3e0c50: f503 73ea    	add.w	r3, r3, #0x1d4
  3e0c54: 681b         	ldr	r3, [r3]
  3e0c56: 9a03         	ldr	r2, [sp, #0xc]
  3e0c58: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e0c5c: 4610         	mov	r0, r2
  3e0c5e: 4798         	blx	r3
  3e0c60: 9b03         	ldr	r3, [sp, #0xc]
  3e0c62: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0c66: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e0c6a: 681b         	ldr	r3, [r3]
  3e0c6c: 33cc         	adds	r3, #0xcc
  3e0c6e: 681b         	ldr	r3, [r3]
  3e0c70: 9a03         	ldr	r2, [sp, #0xc]
  3e0c72: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e0c76: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e0c7a: 9a03         	ldr	r2, [sp, #0xc]
  3e0c7c: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e0c80: 4608         	mov	r0, r1
  3e0c82: 4611         	mov	r1, r2
  3e0c84: 2200         	movs	r2, #0x0
  3e0c86: 4798         	blx	r3
  3e0c88: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x3e0d08 <SoldierAIController::addPrimaryWeapon(Weapon*)+0x178>
  3e0c8a: 58e3         	ldr	r3, [r4, r3]
  3e0c8c: 681c         	ldr	r4, [r3]
  3e0c8e: 9b03         	ldr	r3, [sp, #0xc]
  3e0c90: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e0c94: 466a         	mov	r2, sp
  3e0c96: f103 0130    	add.w	r1, r3, #0x30
  3e0c9a: c903         	ldm	r1, {r0, r1}
  3e0c9c: e882 0003    	stm.w	r2, {r0, r1}
  3e0ca0: 3328         	adds	r3, #0x28
  3e0ca2: cb0c         	ldm	r3, {r2, r3}
  3e0ca4: 4620         	mov	r0, r4
  3e0ca6: 2104         	movs	r1, #0x4
  3e0ca8: f017 f9a6    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x1734c
  3e0cac: 9b03         	ldr	r3, [sp, #0xc]
  3e0cae: 681b         	ldr	r3, [r3]
  3e0cb0: f503 7303    	add.w	r3, r3, #0x20c
  3e0cb4: 681b         	ldr	r3, [r3]
  3e0cb6: 9803         	ldr	r0, [sp, #0xc]
  3e0cb8: 4798         	blx	r3
  3e0cba: f1ff fcf9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff9f2
  3e0cbe: 4602         	mov	r2, r0
  3e0cc0: 9b03         	ldr	r3, [sp, #0xc]
  3e0cc2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0cc6: 4610         	mov	r0, r2
  3e0cc8: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3e0d0c <SoldierAIController::addPrimaryWeapon(Weapon*)+0x17c>
  3e0cca: 447a         	add	r2, pc
  3e0ccc: 4611         	mov	r1, r2
  3e0cce: 461a         	mov	r2, r3
  3e0cd0: f1ff ff2c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ffe58
  3e0cd4: 9b03         	ldr	r3, [sp, #0xc]
  3e0cd6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0cda: 4618         	mov	r0, r3
  3e0cdc: f04f 0200    	mov.w	r2, #0x0
  3e0ce0: f44f 4300    	mov.w	r3, #0x8000
  3e0ce4: f2c4 0356    	movt	r3, #0x4056
  3e0ce8: f013 f8bc    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0x13178
  3e0cec: e005         	b	0x3e0cfa <SoldierAIController::addPrimaryWeapon(Weapon*)+0x16a> @ imm = #0xa
  3e0cee: ab05         	add	r3, sp, #0x14
  3e0cf0: 4618         	mov	r0, r3
  3e0cf2: f3d4 fe0f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4c1e
  3e0cf6: f3a7 f9d9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a73b2
  3e0cfa: b006         	add	sp, #0x18
  3e0cfc: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e0cfd); words below are literal-pool data ---
  3e0cfe: bf00         	nop
  3e0d00: 1e6e         	subs	r6, r5, #0x1
  3e0d02: 0055         	lsls	r5, r2, #0x1
  3e0d04: 72b8         	strb	r0, [r7, #0xa]
  3e0d06: 003f         	movs	r7, r7
  3e0d08: d730         	bvc	0x3e0d6c <SoldierAIController::addSecondaryWeapon(Weapon*)+0x5c> @ imm = #0x60
  3e0d0a: ffff 7222    	<unknown>
  3e0d0e: 003f         	movs	r7, r7

// ==== SoldierAIController::addSecondaryWeapon
//      file offset 0x3e0d10 (= ELF address; Ghidra 0x3f0d10), 236 bytes, Thumb-2
  3e0d10: b530         	push	{r4, r5, lr}
  3e0d12: b085         	sub	sp, #0x14
  3e0d14: 9001         	str	r0, [sp, #0x4]
  3e0d16: 9100         	str	r1, [sp]
  3e0d18: 9b00         	ldr	r3, [sp]
  3e0d1a: 2b00         	cmp	r3, #0x0
  3e0d1c: d069         	beq	0x3e0df2 <SoldierAIController::addSecondaryWeapon(Weapon*)+0xe2> @ imm = #0xd2
  3e0d1e: 9b01         	ldr	r3, [sp, #0x4]
  3e0d20: 9a00         	ldr	r2, [sp]
  3e0d22: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e0d26: 9b01         	ldr	r3, [sp, #0x4]
  3e0d28: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0d2c: 4618         	mov	r0, r3
  3e0d2e: f1b7 f8db    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1b71b6
  3e0d32: 9b01         	ldr	r3, [sp, #0x4]
  3e0d34: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0d38: 681b         	ldr	r3, [r3]
  3e0d3a: f503 73f8    	add.w	r3, r3, #0x1f0
  3e0d3e: 681c         	ldr	r4, [r3]
  3e0d40: 9b01         	ldr	r3, [sp, #0x4]
  3e0d42: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0d46: 461d         	mov	r5, r3
  3e0d48: 9b01         	ldr	r3, [sp, #0x4]
  3e0d4a: 681b         	ldr	r3, [r3]
  3e0d4c: f503 73e0    	add.w	r3, r3, #0x1c0
  3e0d50: 681b         	ldr	r3, [r3]
  3e0d52: 9a01         	ldr	r2, [sp, #0x4]
  3e0d54: a903         	add	r1, sp, #0xc
  3e0d56: 4608         	mov	r0, r1
  3e0d58: 4611         	mov	r1, r2
  3e0d5a: 4798         	blx	r3
  3e0d5c: ab03         	add	r3, sp, #0xc
  3e0d5e: 4628         	mov	r0, r5
  3e0d60: 4619         	mov	r1, r3
  3e0d62: 47a0         	blx	r4
  3e0d64: ab03         	add	r3, sp, #0xc
  3e0d66: 4618         	mov	r0, r3
  3e0d68: f3d4 fdd4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4ba8
  3e0d6c: 9b01         	ldr	r3, [sp, #0x4]
  3e0d6e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0d72: 681b         	ldr	r3, [r3]
  3e0d74: f503 730f    	add.w	r3, r3, #0x23c
  3e0d78: 681b         	ldr	r3, [r3]
  3e0d7a: 9a01         	ldr	r2, [sp, #0x4]
  3e0d7c: f8d2 114c    	ldr.w	r1, [r2, #0x14c]
  3e0d80: 9a01         	ldr	r2, [sp, #0x4]
  3e0d82: 32f8         	adds	r2, #0xf8
  3e0d84: 4608         	mov	r0, r1
  3e0d86: 4611         	mov	r1, r2
  3e0d88: 4798         	blx	r3
  3e0d8a: f1ff fc91    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff922
  3e0d8e: 4602         	mov	r2, r0
  3e0d90: 9b01         	ldr	r3, [sp, #0x4]
  3e0d92: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0d96: 4610         	mov	r0, r2
  3e0d98: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x3e0df8 <SoldierAIController::addSecondaryWeapon(Weapon*)+0xe8>
  3e0d9a: 447a         	add	r2, pc
  3e0d9c: 4611         	mov	r1, r2
  3e0d9e: 461a         	mov	r2, r3
  3e0da0: f1ff fec4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ffd88
  3e0da4: 9b01         	ldr	r3, [sp, #0x4]
  3e0da6: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e0daa: 681b         	ldr	r3, [r3]
  3e0dac: f503 73ec    	add.w	r3, r3, #0x1d8
  3e0db0: 681b         	ldr	r3, [r3]
  3e0db2: 9a01         	ldr	r2, [sp, #0x4]
  3e0db4: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e0db8: 4610         	mov	r0, r2
  3e0dba: 4798         	blx	r3
  3e0dbc: 9b01         	ldr	r3, [sp, #0x4]
  3e0dbe: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0dc2: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e0dc6: 681b         	ldr	r3, [r3]
  3e0dc8: 33cc         	adds	r3, #0xcc
  3e0dca: 681b         	ldr	r3, [r3]
  3e0dcc: 9a01         	ldr	r2, [sp, #0x4]
  3e0dce: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e0dd2: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e0dd6: 9a01         	ldr	r2, [sp, #0x4]
  3e0dd8: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e0ddc: 4608         	mov	r0, r1
  3e0dde: 4611         	mov	r1, r2
  3e0de0: 2200         	movs	r2, #0x0
  3e0de2: 4798         	blx	r3
  3e0de4: e005         	b	0x3e0df2 <SoldierAIController::addSecondaryWeapon(Weapon*)+0xe2> @ imm = #0xa
  3e0de6: ab03         	add	r3, sp, #0xc
  3e0de8: 4618         	mov	r0, r3
  3e0dea: f3d4 fd93    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4b26
  3e0dee: f3a7 f95d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a72ba
  3e0df2: b005         	add	sp, #0x14
  3e0df4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e0df5); words below are literal-pool data ---
  3e0df6: bf00         	nop
  3e0df8: 713e         	strb	r6, [r7, #0x4]
  3e0dfa: 003f         	movs	r7, r7

// ==== SoldierAIController::addDualWeapon
//      file offset 0x3e0dfc (= ELF address; Ghidra 0x3f0dfc), 396 bytes, Thumb-2
  3e0dfc: b570         	push	{r4, r5, r6, lr}
  3e0dfe: b086         	sub	sp, #0x18
  3e0e00: 9003         	str	r0, [sp, #0xc]
  3e0e02: 9102         	str	r1, [sp, #0x8]
  3e0e04: 4c5c         	ldr	r4, [pc, #0x170]        @ 0x3e0f78 <SoldierAIController::addDualWeapon(Weapon*)+0x17c>
  3e0e06: 447c         	add	r4, pc
  3e0e08: 9b02         	ldr	r3, [sp, #0x8]
  3e0e0a: 2b00         	cmp	r3, #0x0
  3e0e0c: f000 80b1    	beq.w	0x3e0f72 <SoldierAIController::addDualWeapon(Weapon*)+0x176> @ imm = #0x162
  3e0e10: 9b03         	ldr	r3, [sp, #0xc]
  3e0e12: 9a02         	ldr	r2, [sp, #0x8]
  3e0e14: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e0e18: 9b03         	ldr	r3, [sp, #0xc]
  3e0e1a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0e1e: 4618         	mov	r0, r3
  3e0e20: f1b7 f862    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1b70c4
  3e0e24: 9b03         	ldr	r3, [sp, #0xc]
  3e0e26: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0e2a: 681b         	ldr	r3, [r3]
  3e0e2c: f503 73f8    	add.w	r3, r3, #0x1f0
  3e0e30: 681d         	ldr	r5, [r3]
  3e0e32: 9b03         	ldr	r3, [sp, #0xc]
  3e0e34: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0e38: 461e         	mov	r6, r3
  3e0e3a: 9b03         	ldr	r3, [sp, #0xc]
  3e0e3c: 681b         	ldr	r3, [r3]
  3e0e3e: f503 73e0    	add.w	r3, r3, #0x1c0
  3e0e42: 681b         	ldr	r3, [r3]
  3e0e44: 9a03         	ldr	r2, [sp, #0xc]
  3e0e46: a905         	add	r1, sp, #0x14
  3e0e48: 4608         	mov	r0, r1
  3e0e4a: 4611         	mov	r1, r2
  3e0e4c: 4798         	blx	r3
  3e0e4e: ab05         	add	r3, sp, #0x14
  3e0e50: 4630         	mov	r0, r6
  3e0e52: 4619         	mov	r1, r3
  3e0e54: 47a8         	blx	r5
  3e0e56: ab05         	add	r3, sp, #0x14
  3e0e58: 4618         	mov	r0, r3
  3e0e5a: f3d4 fd5b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4ab6
  3e0e5e: 9b03         	ldr	r3, [sp, #0xc]
  3e0e60: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0e64: 681b         	ldr	r3, [r3]
  3e0e66: f503 730f    	add.w	r3, r3, #0x23c
  3e0e6a: 681b         	ldr	r3, [r3]
  3e0e6c: 9a03         	ldr	r2, [sp, #0xc]
  3e0e6e: f8d2 1150    	ldr.w	r1, [r2, #0x150]
  3e0e72: 9a03         	ldr	r2, [sp, #0xc]
  3e0e74: 32f8         	adds	r2, #0xf8
  3e0e76: 4608         	mov	r0, r1
  3e0e78: 4611         	mov	r1, r2
  3e0e7a: 4798         	blx	r3
  3e0e7c: f1ff fc18    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff830
  3e0e80: 4602         	mov	r2, r0
  3e0e82: 9b03         	ldr	r3, [sp, #0xc]
  3e0e84: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0e88: 4610         	mov	r0, r2
  3e0e8a: 4a3c         	ldr	r2, [pc, #0xf0]         @ 0x3e0f7c <SoldierAIController::addDualWeapon(Weapon*)+0x180>
  3e0e8c: 447a         	add	r2, pc
  3e0e8e: 4611         	mov	r1, r2
  3e0e90: 461a         	mov	r2, r3
  3e0e92: f1ff fe4b    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ffc96
  3e0e96: 9b03         	ldr	r3, [sp, #0xc]
  3e0e98: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0e9c: 681b         	ldr	r3, [r3]
  3e0e9e: f503 73ee    	add.w	r3, r3, #0x1dc
  3e0ea2: 681b         	ldr	r3, [r3]
  3e0ea4: 9a03         	ldr	r2, [sp, #0xc]
  3e0ea6: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e0eaa: 4610         	mov	r0, r2
  3e0eac: 4798         	blx	r3
  3e0eae: 9b03         	ldr	r3, [sp, #0xc]
  3e0eb0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e0eb4: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3e0eb8: 2b00         	cmp	r3, #0x0
  3e0eba: d014         	beq	0x3e0ee6 <SoldierAIController::addDualWeapon(Weapon*)+0xea> @ imm = #0x28
  3e0ebc: 9b03         	ldr	r3, [sp, #0xc]
  3e0ebe: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0ec2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3e0ec6: 681b         	ldr	r3, [r3]
  3e0ec8: 33cc         	adds	r3, #0xcc
  3e0eca: 681b         	ldr	r3, [r3]
  3e0ecc: 9a03         	ldr	r2, [sp, #0xc]
  3e0ece: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e0ed2: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3e0ed6: 9a03         	ldr	r2, [sp, #0xc]
  3e0ed8: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e0edc: 4608         	mov	r0, r1
  3e0ede: 4611         	mov	r1, r2
  3e0ee0: 2201         	movs	r2, #0x1
  3e0ee2: 4798         	blx	r3
  3e0ee4: e013         	b	0x3e0f0e <SoldierAIController::addDualWeapon(Weapon*)+0x112> @ imm = #0x26
  3e0ee6: 9b03         	ldr	r3, [sp, #0xc]
  3e0ee8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0eec: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3e0ef0: 681b         	ldr	r3, [r3]
  3e0ef2: 33cc         	adds	r3, #0xcc
  3e0ef4: 681b         	ldr	r3, [r3]
  3e0ef6: 9a03         	ldr	r2, [sp, #0xc]
  3e0ef8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e0efc: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3e0f00: 9a03         	ldr	r2, [sp, #0xc]
  3e0f02: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e0f06: 4608         	mov	r0, r1
  3e0f08: 4611         	mov	r1, r2
  3e0f0a: 2201         	movs	r2, #0x1
  3e0f0c: 4798         	blx	r3
  3e0f0e: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3e0f80 <SoldierAIController::addDualWeapon(Weapon*)+0x184>
  3e0f10: 58e3         	ldr	r3, [r4, r3]
  3e0f12: 681c         	ldr	r4, [r3]
  3e0f14: 9b03         	ldr	r3, [sp, #0xc]
  3e0f16: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e0f1a: 466a         	mov	r2, sp
  3e0f1c: f103 0130    	add.w	r1, r3, #0x30
  3e0f20: c903         	ldm	r1, {r0, r1}
  3e0f22: e882 0003    	stm.w	r2, {r0, r1}
  3e0f26: 3328         	adds	r3, #0x28
  3e0f28: cb0c         	ldm	r3, {r2, r3}
  3e0f2a: 4620         	mov	r0, r4
  3e0f2c: 2104         	movs	r1, #0x4
  3e0f2e: f017 f863    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x170c6
  3e0f32: f1ff fbbd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff77a
  3e0f36: 4602         	mov	r2, r0
  3e0f38: 9b03         	ldr	r3, [sp, #0xc]
  3e0f3a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e0f3e: 4610         	mov	r0, r2
  3e0f40: 4a10         	ldr	r2, [pc, #0x40]         @ 0x3e0f84 <SoldierAIController::addDualWeapon(Weapon*)+0x188>
  3e0f42: 447a         	add	r2, pc
  3e0f44: 4611         	mov	r1, r2
  3e0f46: 461a         	mov	r2, r3
  3e0f48: f1ff fdf0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ffbe0
  3e0f4c: 9b03         	ldr	r3, [sp, #0xc]
  3e0f4e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e0f52: 4618         	mov	r0, r3
  3e0f54: f04f 0200    	mov.w	r2, #0x0
  3e0f58: f44f 4300    	mov.w	r3, #0x8000
  3e0f5c: f2c4 0356    	movt	r3, #0x4056
  3e0f60: f012 ff8e    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0x12f1c
  3e0f64: e005         	b	0x3e0f72 <SoldierAIController::addDualWeapon(Weapon*)+0x176> @ imm = #0xa
  3e0f66: ab05         	add	r3, sp, #0x14
  3e0f68: 4618         	mov	r0, r3
  3e0f6a: f3d4 fcd3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d49a6
  3e0f6e: f3a7 f89d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a713a
  3e0f72: b006         	add	sp, #0x18
  3e0f74: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e0f75); words below are literal-pool data ---
  3e0f76: bf00         	nop
  3e0f78: 1c02         	adds	r2, r0, #0x0
  3e0f7a: 0055         	lsls	r5, r2, #0x1
  3e0f7c: 704c         	strb	r4, [r1, #0x1]
  3e0f7e: 003f         	movs	r7, r7
  3e0f80: d730         	bvc	0x3e0fe4 <SoldierAIController::addSideWeapon(Weapon*)+0x5c> @ imm = #0x60
  3e0f82: ffff 6faa    	<unknown>
  3e0f86: 003f         	movs	r7, r7

// ==== SoldierAIController::addSideWeapon
//      file offset 0x3e0f88 (= ELF address; Ghidra 0x3f0f88), 308 bytes, Thumb-2
  3e0f88: b530         	push	{r4, r5, lr}
  3e0f8a: b087         	sub	sp, #0x1c
  3e0f8c: 9003         	str	r0, [sp, #0xc]
  3e0f8e: 9102         	str	r1, [sp, #0x8]
  3e0f90: 4a46         	ldr	r2, [pc, #0x118]        @ 0x3e10ac <SoldierAIController::addSideWeapon(Weapon*)+0x124>
  3e0f92: 447a         	add	r2, pc
  3e0f94: 9b02         	ldr	r3, [sp, #0x8]
  3e0f96: 2b00         	cmp	r3, #0x0
  3e0f98: f000 8086    	beq.w	0x3e10a8 <SoldierAIController::addSideWeapon(Weapon*)+0x120> @ imm = #0x10c
  3e0f9c: 9b03         	ldr	r3, [sp, #0xc]
  3e0f9e: f8d3 1160    	ldr.w	r1, [r3, #0x160]
  3e0fa2: 9b03         	ldr	r3, [sp, #0xc]
  3e0fa4: f8d3 31bc    	ldr.w	r3, [r3, #0x1bc]
  3e0fa8: 4299         	cmp	r1, r3
  3e0faa: da7d         	bge	0x3e10a8 <SoldierAIController::addSideWeapon(Weapon*)+0x120> @ imm = #0xfa
  3e0fac: 9b03         	ldr	r3, [sp, #0xc]
  3e0fae: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e0fb2: 1c59         	adds	r1, r3, #0x1
  3e0fb4: 9b03         	ldr	r3, [sp, #0xc]
  3e0fb6: f8c3 1160    	str.w	r1, [r3, #0x160]
  3e0fba: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3e10b0 <SoldierAIController::addSideWeapon(Weapon*)+0x128>
  3e0fbc: 58d3         	ldr	r3, [r2, r3]
  3e0fbe: 681c         	ldr	r4, [r3]
  3e0fc0: 9b03         	ldr	r3, [sp, #0xc]
  3e0fc2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e0fc6: 466a         	mov	r2, sp
  3e0fc8: f103 0130    	add.w	r1, r3, #0x30
  3e0fcc: c903         	ldm	r1, {r0, r1}
  3e0fce: e882 0003    	stm.w	r2, {r0, r1}
  3e0fd2: 3328         	adds	r3, #0x28
  3e0fd4: cb0c         	ldm	r3, {r2, r3}
  3e0fd6: 4620         	mov	r0, r4
  3e0fd8: 2111         	movs	r1, #0x11
  3e0fda: f017 f80d    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x1701a
  3e0fde: 9b02         	ldr	r3, [sp, #0x8]
  3e0fe0: 681b         	ldr	r3, [r3]
  3e0fe2: f503 73f8    	add.w	r3, r3, #0x1f0
  3e0fe6: 681c         	ldr	r4, [r3]
  3e0fe8: 9d02         	ldr	r5, [sp, #0x8]
  3e0fea: 9b03         	ldr	r3, [sp, #0xc]
  3e0fec: 681b         	ldr	r3, [r3]
  3e0fee: f503 73e0    	add.w	r3, r3, #0x1c0
  3e0ff2: 681b         	ldr	r3, [r3]
  3e0ff4: 9a03         	ldr	r2, [sp, #0xc]
  3e0ff6: a905         	add	r1, sp, #0x14
  3e0ff8: 4608         	mov	r0, r1
  3e0ffa: 4611         	mov	r1, r2
  3e0ffc: 4798         	blx	r3
  3e0ffe: ab05         	add	r3, sp, #0x14
  3e1000: 4628         	mov	r0, r5
  3e1002: 4619         	mov	r1, r3
  3e1004: 47a0         	blx	r4
  3e1006: ab05         	add	r3, sp, #0x14
  3e1008: 4618         	mov	r0, r3
  3e100a: f3d4 fc83    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4906
  3e100e: f1ff fb4f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff69e
  3e1012: 4603         	mov	r3, r0
  3e1014: 4618         	mov	r0, r3
  3e1016: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x3e10b4 <SoldierAIController::addSideWeapon(Weapon*)+0x12c>
  3e1018: 447b         	add	r3, pc
  3e101a: 4619         	mov	r1, r3
  3e101c: 9a02         	ldr	r2, [sp, #0x8]
  3e101e: f1ff fd85    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ffb0a
  3e1022: 9b03         	ldr	r3, [sp, #0xc]
  3e1024: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1028: 2b00         	cmp	r3, #0x0
  3e102a: d13d         	bne	0x3e10a8 <SoldierAIController::addSideWeapon(Weapon*)+0x120> @ imm = #0x7a
  3e102c: 9b03         	ldr	r3, [sp, #0xc]
  3e102e: 9a02         	ldr	r2, [sp, #0x8]
  3e1030: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e1034: 9b03         	ldr	r3, [sp, #0xc]
  3e1036: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e103a: 4618         	mov	r0, r3
  3e103c: f1b6 ff54    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1b6ea8
  3e1040: 9b03         	ldr	r3, [sp, #0xc]
  3e1042: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1046: 681b         	ldr	r3, [r3]
  3e1048: f503 73ea    	add.w	r3, r3, #0x1d4
  3e104c: 681b         	ldr	r3, [r3]
  3e104e: 9a03         	ldr	r2, [sp, #0xc]
  3e1050: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e1054: 4610         	mov	r0, r2
  3e1056: 4798         	blx	r3
  3e1058: 9b03         	ldr	r3, [sp, #0xc]
  3e105a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e105e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e1062: 681b         	ldr	r3, [r3]
  3e1064: 33cc         	adds	r3, #0xcc
  3e1066: 681b         	ldr	r3, [r3]
  3e1068: 9a03         	ldr	r2, [sp, #0xc]
  3e106a: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e106e: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e1072: 9a03         	ldr	r2, [sp, #0xc]
  3e1074: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e1078: 4608         	mov	r0, r1
  3e107a: 4611         	mov	r1, r2
  3e107c: 2203         	movs	r2, #0x3
  3e107e: 4798         	blx	r3
  3e1080: f1ff fb16    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff62c
  3e1084: 4602         	mov	r2, r0
  3e1086: 9b03         	ldr	r3, [sp, #0xc]
  3e1088: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e108c: 4610         	mov	r0, r2
  3e108e: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3e10b8 <SoldierAIController::addSideWeapon(Weapon*)+0x130>
  3e1090: 447a         	add	r2, pc
  3e1092: 4611         	mov	r1, r2
  3e1094: 461a         	mov	r2, r3
  3e1096: f1ff fd49    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ffa92
  3e109a: e005         	b	0x3e10a8 <SoldierAIController::addSideWeapon(Weapon*)+0x120> @ imm = #0xa
  3e109c: ab05         	add	r3, sp, #0x14
  3e109e: 4618         	mov	r0, r3
  3e10a0: f3d4 fc38    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4870
  3e10a4: f3a7 f802    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a7004
  3e10a8: b007         	add	sp, #0x1c
  3e10aa: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e10ab); words below are literal-pool data ---
  3e10ac: 1a76         	subs	r6, r6, r1
  3e10ae: 0055         	lsls	r5, r2, #0x1
  3e10b0: d730         	bvc	0x3e1114 <SoldierAIController::removePrimaryWeapon()+0x58> @ imm = #0x60
  3e10b2: ffff 6ec0    	<unknown>
  3e10b6: 003f         	movs	r7, r7
  3e10b8: 6e5c         	ldr	r4, [r3, #0x64]
  3e10ba: 003f         	movs	r7, r7

// ==== SoldierAIController::removePrimaryWeapon
//      file offset 0x3e10bc (= ELF address; Ghidra 0x3f10bc), 688 bytes, Thumb-2
  3e10bc: b570         	push	{r4, r5, r6, lr}
  3e10be: ed2d 8b04    	vpush	{d8, d9}
  3e10c2: b088         	sub	sp, #0x20
  3e10c4: 9005         	str	r0, [sp, #0x14]
  3e10c6: 4ca5         	ldr	r4, [pc, #0x294]        @ 0x3e135c <SoldierAIController::removePrimaryWeapon()+0x2a0>
  3e10c8: 447c         	add	r4, pc
  3e10ca: 9b05         	ldr	r3, [sp, #0x14]
  3e10cc: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e10d0: 2b00         	cmp	r3, #0x0
  3e10d2: f000 813a    	beq.w	0x3e134a <SoldierAIController::removePrimaryWeapon()+0x28e> @ imm = #0x274
  3e10d6: 9b05         	ldr	r3, [sp, #0x14]
  3e10d8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e10dc: 681b         	ldr	r3, [r3]
  3e10de: f503 73f8    	add.w	r3, r3, #0x1f0
  3e10e2: 681d         	ldr	r5, [r3]
  3e10e4: 9b05         	ldr	r3, [sp, #0x14]
  3e10e6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e10ea: 461e         	mov	r6, r3
  3e10ec: ab06         	add	r3, sp, #0x18
  3e10ee: 4618         	mov	r0, r3
  3e10f0: f3a9 f980    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a9300
  3e10f4: aa07         	add	r2, sp, #0x1c
  3e10f6: ab06         	add	r3, sp, #0x18
  3e10f8: 4610         	mov	r0, r2
  3e10fa: 4a99         	ldr	r2, [pc, #0x264]        @ 0x3e1360 <SoldierAIController::removePrimaryWeapon()+0x2a4>
  3e10fc: 447a         	add	r2, pc
  3e10fe: 4611         	mov	r1, r2
  3e1100: 461a         	mov	r2, r3
  3e1102: f3d5 fcad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d595a
  3e1106: ab07         	add	r3, sp, #0x1c
  3e1108: 4630         	mov	r0, r6
  3e110a: 4619         	mov	r1, r3
  3e110c: 47a8         	blx	r5
  3e110e: ab07         	add	r3, sp, #0x1c
  3e1110: 4618         	mov	r0, r3
  3e1112: f3d4 fbff    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d47fe
  3e1116: ab06         	add	r3, sp, #0x18
  3e1118: 4618         	mov	r0, r3
  3e111a: f3a9 f96f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a92de
  3e111e: 9b05         	ldr	r3, [sp, #0x14]
  3e1120: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1124: 681b         	ldr	r3, [r3]
  3e1126: f503 730f    	add.w	r3, r3, #0x23c
  3e112a: 681b         	ldr	r3, [r3]
  3e112c: 9a05         	ldr	r2, [sp, #0x14]
  3e112e: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1132: 4610         	mov	r0, r2
  3e1134: 2100         	movs	r1, #0x0
  3e1136: 4798         	blx	r3
  3e1138: 9b05         	ldr	r3, [sp, #0x14]
  3e113a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e113e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e1142: 681b         	ldr	r3, [r3]
  3e1144: 33f4         	adds	r3, #0xf4
  3e1146: 681b         	ldr	r3, [r3]
  3e1148: 9a05         	ldr	r2, [sp, #0x14]
  3e114a: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e114e: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e1152: 9a05         	ldr	r2, [sp, #0x14]
  3e1154: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1158: 4608         	mov	r0, r1
  3e115a: 4611         	mov	r1, r2
  3e115c: 2200         	movs	r2, #0x0
  3e115e: 4798         	blx	r3
  3e1160: 9b05         	ldr	r3, [sp, #0x14]
  3e1162: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1166: 681b         	ldr	r3, [r3]
  3e1168: f503 7300    	add.w	r3, r3, #0x200
  3e116c: 681d         	ldr	r5, [r3]
  3e116e: 9b05         	ldr	r3, [sp, #0x14]
  3e1170: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3e1174: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3e1364 <SoldierAIController::removePrimaryWeapon()+0x2a8>
  3e1176: 58e3         	ldr	r3, [r4, r3]
  3e1178: 681b         	ldr	r3, [r3]
  3e117a: 681b         	ldr	r3, [r3]
  3e117c: f503 73e0    	add.w	r3, r3, #0x1c0
  3e1180: 681b         	ldr	r3, [r3]
  3e1182: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x3e1364 <SoldierAIController::removePrimaryWeapon()+0x2a8>
  3e1184: 58a2         	ldr	r2, [r4, r2]
  3e1186: 6812         	ldr	r2, [r2]
  3e1188: a907         	add	r1, sp, #0x1c
  3e118a: 4608         	mov	r0, r1
  3e118c: 4611         	mov	r1, r2
  3e118e: 4798         	blx	r3
  3e1190: ab07         	add	r3, sp, #0x1c
  3e1192: 4630         	mov	r0, r6
  3e1194: 4619         	mov	r1, r3
  3e1196: 47a8         	blx	r5
  3e1198: ab07         	add	r3, sp, #0x1c
  3e119a: 4618         	mov	r0, r3
  3e119c: f3d4 fbba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4774
  3e11a0: 9b05         	ldr	r3, [sp, #0x14]
  3e11a2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e11a6: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e11aa: 9b05         	ldr	r3, [sp, #0x14]
  3e11ac: 681b         	ldr	r3, [r3]
  3e11ae: 3350         	adds	r3, #0x50
  3e11b0: 681b         	ldr	r3, [r3]
  3e11b2: 9a05         	ldr	r2, [sp, #0x14]
  3e11b4: 4610         	mov	r0, r2
  3e11b6: 4798         	blx	r3
  3e11b8: 4603         	mov	r3, r0
  3e11ba: edd3 7a00    	vldr	s15, [r3]
  3e11be: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e11c2: 9b05         	ldr	r3, [sp, #0x14]
  3e11c4: 681b         	ldr	r3, [r3]
  3e11c6: 3350         	adds	r3, #0x50
  3e11c8: 681b         	ldr	r3, [r3]
  3e11ca: 9a05         	ldr	r2, [sp, #0x14]
  3e11cc: 4610         	mov	r0, r2
  3e11ce: 4798         	blx	r3
  3e11d0: 4603         	mov	r3, r0
  3e11d2: edd3 7a01    	vldr	s15, [r3, #4]
  3e11d6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e11da: 466b         	mov	r3, sp
  3e11dc: 4618         	mov	r0, r3
  3e11de: eeb0 0b48    	vmov.f64	d0, d8
  3e11e2: eeb0 1b47    	vmov.f64	d1, d7
  3e11e6: f7fc fc3f    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x3782
  3e11ea: 3428         	adds	r4, #0x28
  3e11ec: 466b         	mov	r3, sp
  3e11ee: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e11f0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e11f4: 9b05         	ldr	r3, [sp, #0x14]
  3e11f6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e11fa: 681b         	ldr	r3, [r3]
  3e11fc: 334c         	adds	r3, #0x4c
  3e11fe: 681c         	ldr	r4, [r3]
  3e1200: 9b05         	ldr	r3, [sp, #0x14]
  3e1202: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1206: 461d         	mov	r5, r3
  3e1208: 9b05         	ldr	r3, [sp, #0x14]
  3e120a: 681b         	ldr	r3, [r3]
  3e120c: 3350         	adds	r3, #0x50
  3e120e: 681b         	ldr	r3, [r3]
  3e1210: 9a05         	ldr	r2, [sp, #0x14]
  3e1212: 4610         	mov	r0, r2
  3e1214: 4798         	blx	r3
  3e1216: 4603         	mov	r3, r0
  3e1218: 4628         	mov	r0, r5
  3e121a: 4619         	mov	r1, r3
  3e121c: 47a0         	blx	r4
  3e121e: 9b05         	ldr	r3, [sp, #0x14]
  3e1220: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1224: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1228: 9b05         	ldr	r3, [sp, #0x14]
  3e122a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e122e: ed93 8b0e    	vldr	d8, [r3, #56]
  3e1232: f7fc fb93    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x38da
  3e1236: 4603         	mov	r3, r0
  3e1238: ee07 3a90    	vmov	s15, r3
  3e123c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1240: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3e1354 <SoldierAIController::removePrimaryWeapon()+0x298>
  3e1244: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1248: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e124c: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1250: eddf 7a41    	vldr	s15, [pc, #260]         @ 0x3e1358 <SoldierAIController::removePrimaryWeapon()+0x29c>
  3e1254: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1258: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e125c: ee38 8b07    	vadd.f64	d8, d8, d7
  3e1260: 9b05         	ldr	r3, [sp, #0x14]
  3e1262: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1266: ed93 9b10    	vldr	d9, [r3, #64]
  3e126a: f7fc fb77    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3912
  3e126e: 4603         	mov	r3, r0
  3e1270: ee07 3a90    	vmov	s15, r3
  3e1274: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1278: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e1354 <SoldierAIController::removePrimaryWeapon()+0x298>
  3e127c: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1280: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1284: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1288: eddf 7a33    	vldr	s15, [pc, #204]         @ 0x3e1358 <SoldierAIController::removePrimaryWeapon()+0x29c>
  3e128c: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1290: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1294: ee39 7b07    	vadd.f64	d7, d9, d7
  3e1298: 466b         	mov	r3, sp
  3e129a: 4618         	mov	r0, r3
  3e129c: eeb0 0b48    	vmov.f64	d0, d8
  3e12a0: eeb0 1b47    	vmov.f64	d1, d7
  3e12a4: f7fc fbe0    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x3840
  3e12a8: 3438         	adds	r4, #0x38
  3e12aa: 466b         	mov	r3, sp
  3e12ac: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e12ae: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e12b2: 9b05         	ldr	r3, [sp, #0x14]
  3e12b4: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e12b8: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e12bc: 9b05         	ldr	r3, [sp, #0x14]
  3e12be: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e12c2: ed93 8b18    	vldr	d8, [r3, #96]
  3e12c6: f7fc fb49    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x396e
  3e12ca: 4603         	mov	r3, r0
  3e12cc: ee07 3a90    	vmov	s15, r3
  3e12d0: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e12d4: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3e1354 <SoldierAIController::removePrimaryWeapon()+0x298>
  3e12d8: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e12dc: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e12e0: ee37 7a67    	vsub.f32	s14, s14, s15
  3e12e4: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3e12e8: ee67 7a27    	vmul.f32	s15, s14, s15
  3e12ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e12f0: ee38 7b07    	vadd.f64	d7, d8, d7
  3e12f4: ed84 7b18    	vstr	d7, [r4, #96]
  3e12f8: f1ff f9da    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff3b4
  3e12fc: 4602         	mov	r2, r0
  3e12fe: 9b05         	ldr	r3, [sp, #0x14]
  3e1300: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1304: 4610         	mov	r0, r2
  3e1306: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3e1368 <SoldierAIController::removePrimaryWeapon()+0x2ac>
  3e1308: 447a         	add	r2, pc
  3e130a: 4611         	mov	r1, r2
  3e130c: 461a         	mov	r2, r3
  3e130e: f1ff fc0d    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ff81a
  3e1312: 9b05         	ldr	r3, [sp, #0x14]
  3e1314: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1318: 4618         	mov	r0, r3
  3e131a: f1b6 fdcd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1b6b9a
  3e131e: 9b05         	ldr	r3, [sp, #0x14]
  3e1320: 2200         	movs	r2, #0x0
  3e1322: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e1326: e010         	b	0x3e134a <SoldierAIController::removePrimaryWeapon()+0x28e> @ imm = #0x20
  3e1328: ab07         	add	r3, sp, #0x1c
  3e132a: 4618         	mov	r0, r3
  3e132c: f3d4 faf2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d45e4
  3e1330: e7ff         	b	0x3e1332 <SoldierAIController::removePrimaryWeapon()+0x276> @ imm = #-0x2
  3e1332: ab06         	add	r3, sp, #0x18
  3e1334: 4618         	mov	r0, r3
  3e1336: f3a9 f861    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a90c2
  3e133a: f3a6 feb7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a6d6e
  3e133e: ab07         	add	r3, sp, #0x1c
  3e1340: 4618         	mov	r0, r3
  3e1342: f3d4 fae7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d45ce
  3e1346: f3a6 feb1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a6d62
  3e134a: b008         	add	sp, #0x20
  3e134c: ecbd 8b04    	vpop	{d8, d9}
  3e1350: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e1351); words below are literal-pool data ---
  3e1352: bf00         	nop
  3e1354: 0000         	movs	r0, r0
  3e1356: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e1558 <SoldierAIController::removeSecondaryWeapon()+0x128>
  3e1358: 0000         	movs	r0, r0
  3e135a: 4248         	rsbs	r0, r1, #0
  3e135c: 1940         	adds	r0, r0, r5
  3e135e: 0055         	lsls	r5, r2, #0x1
  3e1360: 6dd8         	ldr	r0, [r3, #0x5c]
  3e1362: 003f         	movs	r7, r7
  3e1364: d784         	bvc	0x3e1270 <SoldierAIController::removePrimaryWeapon()+0x1b4> @ imm = #-0xf8
  3e1366: ffff 6bf8    	<unknown>
  3e136a: 003f         	movs	r7, r7

// ==== SoldierAIController::removeRemotePrimaryWeapon
//      file offset 0x3e136c (= ELF address; Ghidra 0x3f136c), 196 bytes, Thumb-2
  3e136c: b530         	push	{r4, r5, lr}
  3e136e: b085         	sub	sp, #0x14
  3e1370: 9001         	str	r0, [sp, #0x4]
  3e1372: 9b01         	ldr	r3, [sp, #0x4]
  3e1374: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1378: 2b00         	cmp	r3, #0x0
  3e137a: d054         	beq	0x3e1426 <SoldierAIController::removeRemotePrimaryWeapon()+0xba> @ imm = #0xa8
  3e137c: 9b01         	ldr	r3, [sp, #0x4]
  3e137e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1382: 681b         	ldr	r3, [r3]
  3e1384: f503 73f8    	add.w	r3, r3, #0x1f0
  3e1388: 681c         	ldr	r4, [r3]
  3e138a: 9b01         	ldr	r3, [sp, #0x4]
  3e138c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1390: 461d         	mov	r5, r3
  3e1392: ab02         	add	r3, sp, #0x8
  3e1394: 4618         	mov	r0, r3
  3e1396: f3a9 f82d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a905a
  3e139a: aa03         	add	r2, sp, #0xc
  3e139c: ab02         	add	r3, sp, #0x8
  3e139e: 4610         	mov	r0, r2
  3e13a0: 4a22         	ldr	r2, [pc, #0x88]         @ 0x3e142c <SoldierAIController::removeRemotePrimaryWeapon()+0xc0>
  3e13a2: 447a         	add	r2, pc
  3e13a4: 4611         	mov	r1, r2
  3e13a6: 461a         	mov	r2, r3
  3e13a8: f3d5 fb5a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d56b4
  3e13ac: ab03         	add	r3, sp, #0xc
  3e13ae: 4628         	mov	r0, r5
  3e13b0: 4619         	mov	r1, r3
  3e13b2: 47a0         	blx	r4
  3e13b4: ab03         	add	r3, sp, #0xc
  3e13b6: 4618         	mov	r0, r3
  3e13b8: f3d4 faac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4558
  3e13bc: ab02         	add	r3, sp, #0x8
  3e13be: 4618         	mov	r0, r3
  3e13c0: f3a9 f81c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a9038
  3e13c4: 9b01         	ldr	r3, [sp, #0x4]
  3e13c6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e13ca: 681b         	ldr	r3, [r3]
  3e13cc: f503 730f    	add.w	r3, r3, #0x23c
  3e13d0: 681b         	ldr	r3, [r3]
  3e13d2: 9a01         	ldr	r2, [sp, #0x4]
  3e13d4: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e13d8: 4610         	mov	r0, r2
  3e13da: 2100         	movs	r1, #0x0
  3e13dc: 4798         	blx	r3
  3e13de: 9b01         	ldr	r3, [sp, #0x4]
  3e13e0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e13e4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e13e8: 681b         	ldr	r3, [r3]
  3e13ea: 33f4         	adds	r3, #0xf4
  3e13ec: 681b         	ldr	r3, [r3]
  3e13ee: 9a01         	ldr	r2, [sp, #0x4]
  3e13f0: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e13f4: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e13f8: 9a01         	ldr	r2, [sp, #0x4]
  3e13fa: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e13fe: 4608         	mov	r0, r1
  3e1400: 4611         	mov	r1, r2
  3e1402: 2200         	movs	r2, #0x0
  3e1404: 4798         	blx	r3
  3e1406: 9b01         	ldr	r3, [sp, #0x4]
  3e1408: 2200         	movs	r2, #0x0
  3e140a: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e140e: e00a         	b	0x3e1426 <SoldierAIController::removeRemotePrimaryWeapon()+0xba> @ imm = #0x14
  3e1410: ab03         	add	r3, sp, #0xc
  3e1412: 4618         	mov	r0, r3
  3e1414: f3d4 fa7e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d44fc
  3e1418: e7ff         	b	0x3e141a <SoldierAIController::removeRemotePrimaryWeapon()+0xae> @ imm = #-0x2
  3e141a: ab02         	add	r3, sp, #0x8
  3e141c: 4618         	mov	r0, r3
  3e141e: f3a8 ffed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a8fda
  3e1422: f3a6 fe43    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a6c86
  3e1426: b005         	add	sp, #0x14
  3e1428: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e1429); words below are literal-pool data ---
  3e142a: bf00         	nop
  3e142c: 6b32         	ldr	r2, [r6, #0x30]
  3e142e: 003f         	movs	r7, r7

// ==== SoldierAIController::removeSecondaryWeapon
//      file offset 0x3e1430 (= ELF address; Ghidra 0x3f1430), 664 bytes, Thumb-2
  3e1430: b530         	push	{r4, r5, lr}
  3e1432: ed2d 8b04    	vpush	{d8, d9}
  3e1436: b089         	sub	sp, #0x24
  3e1438: 9005         	str	r0, [sp, #0x14]
  3e143a: 9b05         	ldr	r3, [sp, #0x14]
  3e143c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1440: 2b00         	cmp	r3, #0x0
  3e1442: f000 8136    	beq.w	0x3e16b2 <SoldierAIController::removeSecondaryWeapon()+0x282> @ imm = #0x26c
  3e1446: 9b05         	ldr	r3, [sp, #0x14]
  3e1448: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e144c: 681b         	ldr	r3, [r3]
  3e144e: f503 73f8    	add.w	r3, r3, #0x1f0
  3e1452: 681c         	ldr	r4, [r3]
  3e1454: 9b05         	ldr	r3, [sp, #0x14]
  3e1456: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e145a: 461d         	mov	r5, r3
  3e145c: ab06         	add	r3, sp, #0x18
  3e145e: 4618         	mov	r0, r3
  3e1460: f3a8 ffc8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a8f90
  3e1464: aa07         	add	r2, sp, #0x1c
  3e1466: ab06         	add	r3, sp, #0x18
  3e1468: 4610         	mov	r0, r2
  3e146a: 4a95         	ldr	r2, [pc, #0x254]        @ 0x3e16c0 <SoldierAIController::removeSecondaryWeapon()+0x290>
  3e146c: 447a         	add	r2, pc
  3e146e: 4611         	mov	r1, r2
  3e1470: 461a         	mov	r2, r3
  3e1472: f3d5 faf5    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d55ea
  3e1476: ab07         	add	r3, sp, #0x1c
  3e1478: 4628         	mov	r0, r5
  3e147a: 4619         	mov	r1, r3
  3e147c: 47a0         	blx	r4
  3e147e: ab07         	add	r3, sp, #0x1c
  3e1480: 4618         	mov	r0, r3
  3e1482: f3d4 fa47    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d448e
  3e1486: ab06         	add	r3, sp, #0x18
  3e1488: 4618         	mov	r0, r3
  3e148a: f3a8 ffb7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a8f6e
  3e148e: 9b05         	ldr	r3, [sp, #0x14]
  3e1490: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1494: 681b         	ldr	r3, [r3]
  3e1496: f503 730f    	add.w	r3, r3, #0x23c
  3e149a: 681b         	ldr	r3, [r3]
  3e149c: 9a05         	ldr	r2, [sp, #0x14]
  3e149e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e14a2: 4610         	mov	r0, r2
  3e14a4: 2100         	movs	r1, #0x0
  3e14a6: 4798         	blx	r3
  3e14a8: 9b05         	ldr	r3, [sp, #0x14]
  3e14aa: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e14ae: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e14b2: 681b         	ldr	r3, [r3]
  3e14b4: 33f4         	adds	r3, #0xf4
  3e14b6: 681b         	ldr	r3, [r3]
  3e14b8: 9a05         	ldr	r2, [sp, #0x14]
  3e14ba: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e14be: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e14c2: 9a05         	ldr	r2, [sp, #0x14]
  3e14c4: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e14c8: 4608         	mov	r0, r1
  3e14ca: 4611         	mov	r1, r2
  3e14cc: 2200         	movs	r2, #0x0
  3e14ce: 4798         	blx	r3
  3e14d0: 9b05         	ldr	r3, [sp, #0x14]
  3e14d2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e14d6: 681b         	ldr	r3, [r3]
  3e14d8: f503 7300    	add.w	r3, r3, #0x200
  3e14dc: 681c         	ldr	r4, [r3]
  3e14de: 9b05         	ldr	r3, [sp, #0x14]
  3e14e0: f8d3 514c    	ldr.w	r5, [r3, #0x14c]
  3e14e4: 9b05         	ldr	r3, [sp, #0x14]
  3e14e6: 681b         	ldr	r3, [r3]
  3e14e8: f503 73e0    	add.w	r3, r3, #0x1c0
  3e14ec: 681b         	ldr	r3, [r3]
  3e14ee: 9a05         	ldr	r2, [sp, #0x14]
  3e14f0: a907         	add	r1, sp, #0x1c
  3e14f2: 4608         	mov	r0, r1
  3e14f4: 4611         	mov	r1, r2
  3e14f6: 4798         	blx	r3
  3e14f8: ab07         	add	r3, sp, #0x1c
  3e14fa: 4628         	mov	r0, r5
  3e14fc: 4619         	mov	r1, r3
  3e14fe: 47a0         	blx	r4
  3e1500: ab07         	add	r3, sp, #0x1c
  3e1502: 4618         	mov	r0, r3
  3e1504: f3d4 fa06    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d440c
  3e1508: 9b05         	ldr	r3, [sp, #0x14]
  3e150a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e150e: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1512: 9b05         	ldr	r3, [sp, #0x14]
  3e1514: 681b         	ldr	r3, [r3]
  3e1516: 3350         	adds	r3, #0x50
  3e1518: 681b         	ldr	r3, [r3]
  3e151a: 9a05         	ldr	r2, [sp, #0x14]
  3e151c: 4610         	mov	r0, r2
  3e151e: 4798         	blx	r3
  3e1520: 4603         	mov	r3, r0
  3e1522: edd3 7a00    	vldr	s15, [r3]
  3e1526: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e152a: 9b05         	ldr	r3, [sp, #0x14]
  3e152c: 681b         	ldr	r3, [r3]
  3e152e: 3350         	adds	r3, #0x50
  3e1530: 681b         	ldr	r3, [r3]
  3e1532: 9a05         	ldr	r2, [sp, #0x14]
  3e1534: 4610         	mov	r0, r2
  3e1536: 4798         	blx	r3
  3e1538: 4603         	mov	r3, r0
  3e153a: edd3 7a01    	vldr	s15, [r3, #4]
  3e153e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1542: 466b         	mov	r3, sp
  3e1544: 4618         	mov	r0, r3
  3e1546: eeb0 0b48    	vmov.f64	d0, d8
  3e154a: eeb0 1b47    	vmov.f64	d1, d7
  3e154e: f7fc fa8b    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x3aea
  3e1552: 3428         	adds	r4, #0x28
  3e1554: 466b         	mov	r3, sp
  3e1556: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e1558: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e155c: 9b05         	ldr	r3, [sp, #0x14]
  3e155e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1562: 681b         	ldr	r3, [r3]
  3e1564: 334c         	adds	r3, #0x4c
  3e1566: 681c         	ldr	r4, [r3]
  3e1568: 9b05         	ldr	r3, [sp, #0x14]
  3e156a: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e156e: 461d         	mov	r5, r3
  3e1570: 9b05         	ldr	r3, [sp, #0x14]
  3e1572: 681b         	ldr	r3, [r3]
  3e1574: 3350         	adds	r3, #0x50
  3e1576: 681b         	ldr	r3, [r3]
  3e1578: 9a05         	ldr	r2, [sp, #0x14]
  3e157a: 4610         	mov	r0, r2
  3e157c: 4798         	blx	r3
  3e157e: 4603         	mov	r3, r0
  3e1580: 4628         	mov	r0, r5
  3e1582: 4619         	mov	r1, r3
  3e1584: 47a0         	blx	r4
  3e1586: 9b05         	ldr	r3, [sp, #0x14]
  3e1588: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e158c: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1590: 9b05         	ldr	r3, [sp, #0x14]
  3e1592: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1596: ed93 8b0e    	vldr	d8, [r3, #56]
  3e159a: f7fc f9df    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3c42
  3e159e: 4603         	mov	r3, r0
  3e15a0: ee07 3a90    	vmov	s15, r3
  3e15a4: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e15a8: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3e16bc <SoldierAIController::removeSecondaryWeapon()+0x28c>
  3e15ac: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e15b0: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e15b4: ee37 7a67    	vsub.f32	s14, s14, s15
  3e15b8: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e15bc: ee67 7a27    	vmul.f32	s15, s14, s15
  3e15c0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e15c4: ee38 8b07    	vadd.f64	d8, d8, d7
  3e15c8: 9b05         	ldr	r3, [sp, #0x14]
  3e15ca: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e15ce: ed93 9b10    	vldr	d9, [r3, #64]
  3e15d2: f7fc f9c3    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3c7a
  3e15d6: 4603         	mov	r3, r0
  3e15d8: ee07 3a90    	vmov	s15, r3
  3e15dc: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e15e0: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e16bc <SoldierAIController::removeSecondaryWeapon()+0x28c>
  3e15e4: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e15e8: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e15ec: ee37 7a67    	vsub.f32	s14, s14, s15
  3e15f0: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e15f4: ee67 7a27    	vmul.f32	s15, s14, s15
  3e15f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e15fc: ee39 7b07    	vadd.f64	d7, d9, d7
  3e1600: 466b         	mov	r3, sp
  3e1602: 4618         	mov	r0, r3
  3e1604: eeb0 0b48    	vmov.f64	d0, d8
  3e1608: eeb0 1b47    	vmov.f64	d1, d7
  3e160c: f7fc fa2c    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x3ba8
  3e1610: 3438         	adds	r4, #0x38
  3e1612: 466b         	mov	r3, sp
  3e1614: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e1616: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e161a: 9b05         	ldr	r3, [sp, #0x14]
  3e161c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1620: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1624: 9b05         	ldr	r3, [sp, #0x14]
  3e1626: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e162a: ed93 8b18    	vldr	d8, [r3, #96]
  3e162e: f7fc f995    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3cd6
  3e1632: 4603         	mov	r3, r0
  3e1634: ee07 3a90    	vmov	s15, r3
  3e1638: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e163c: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3e16bc <SoldierAIController::removeSecondaryWeapon()+0x28c>
  3e1640: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1644: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1648: ee37 7a67    	vsub.f32	s14, s14, s15
  3e164c: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e1650: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1654: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1658: ee38 7b07    	vadd.f64	d7, d8, d7
  3e165c: ed84 7b18    	vstr	d7, [r4, #96]
  3e1660: f1ff f826    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1ff04c
  3e1664: 4602         	mov	r2, r0
  3e1666: 9b05         	ldr	r3, [sp, #0x14]
  3e1668: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e166c: 4610         	mov	r0, r2
  3e166e: 4a15         	ldr	r2, [pc, #0x54]         @ 0x3e16c4 <SoldierAIController::removeSecondaryWeapon()+0x294>
  3e1670: 447a         	add	r2, pc
  3e1672: 4611         	mov	r1, r2
  3e1674: 461a         	mov	r2, r3
  3e1676: f1ff fa59    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ff4b2
  3e167a: 9b05         	ldr	r3, [sp, #0x14]
  3e167c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1680: 4618         	mov	r0, r3
  3e1682: f1b6 fc19    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1b6832
  3e1686: 9b05         	ldr	r3, [sp, #0x14]
  3e1688: 2200         	movs	r2, #0x0
  3e168a: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e168e: e010         	b	0x3e16b2 <SoldierAIController::removeSecondaryWeapon()+0x282> @ imm = #0x20
  3e1690: ab07         	add	r3, sp, #0x1c
  3e1692: 4618         	mov	r0, r3
  3e1694: f3d4 f93e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d427c
  3e1698: e7ff         	b	0x3e169a <SoldierAIController::removeSecondaryWeapon()+0x26a> @ imm = #-0x2
  3e169a: ab06         	add	r3, sp, #0x18
  3e169c: 4618         	mov	r0, r3
  3e169e: f3a8 fead    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a8d5a
  3e16a2: f3a6 fd03    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a6a06
  3e16a6: ab07         	add	r3, sp, #0x1c
  3e16a8: 4618         	mov	r0, r3
  3e16aa: f3d4 f933    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4266
  3e16ae: f3a6 fcfd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a69fa
  3e16b2: b009         	add	sp, #0x24
  3e16b4: ecbd 8b04    	vpop	{d8, d9}
  3e16b8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e16b9); words below are literal-pool data ---
  3e16ba: bf00         	nop
  3e16bc: 0000         	movs	r0, r0
  3e16be: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e18c0 <SoldierAIController::removeDualWeapon()+0x1f8>
  3e16c0: 6a68         	ldr	r0, [r5, #0x24]
  3e16c2: 003f         	movs	r7, r7
  3e16c4: 68a0         	ldr	r0, [r4, #0x8]
  3e16c6: 003f         	movs	r7, r7

// ==== SoldierAIController::removeDualWeapon
//      file offset 0x3e16c8 (= ELF address; Ghidra 0x3f16c8), 744 bytes, Thumb-2
  3e16c8: b570         	push	{r4, r5, r6, lr}
  3e16ca: ed2d 8b04    	vpush	{d8, d9}
  3e16ce: b088         	sub	sp, #0x20
  3e16d0: 9005         	str	r0, [sp, #0x14]
  3e16d2: 4cb3         	ldr	r4, [pc, #0x2cc]        @ 0x3e19a0 <SoldierAIController::removeDualWeapon()+0x2d8>
  3e16d4: 447c         	add	r4, pc
  3e16d6: 9b05         	ldr	r3, [sp, #0x14]
  3e16d8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e16dc: 2b00         	cmp	r3, #0x0
  3e16de: f000 8156    	beq.w	0x3e198e <SoldierAIController::removeDualWeapon()+0x2c6> @ imm = #0x2ac
  3e16e2: 9b05         	ldr	r3, [sp, #0x14]
  3e16e4: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e16e8: 681b         	ldr	r3, [r3]
  3e16ea: f503 73f8    	add.w	r3, r3, #0x1f0
  3e16ee: 681d         	ldr	r5, [r3]
  3e16f0: 9b05         	ldr	r3, [sp, #0x14]
  3e16f2: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e16f6: 461e         	mov	r6, r3
  3e16f8: ab06         	add	r3, sp, #0x18
  3e16fa: 4618         	mov	r0, r3
  3e16fc: f3a8 fe7a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a8cf4
  3e1700: aa07         	add	r2, sp, #0x1c
  3e1702: ab06         	add	r3, sp, #0x18
  3e1704: 4610         	mov	r0, r2
  3e1706: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x3e19a4 <SoldierAIController::removeDualWeapon()+0x2dc>
  3e1708: 447a         	add	r2, pc
  3e170a: 4611         	mov	r1, r2
  3e170c: 461a         	mov	r2, r3
  3e170e: f3d5 f9a7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d534e
  3e1712: ab07         	add	r3, sp, #0x1c
  3e1714: 4630         	mov	r0, r6
  3e1716: 4619         	mov	r1, r3
  3e1718: 47a8         	blx	r5
  3e171a: ab07         	add	r3, sp, #0x1c
  3e171c: 4618         	mov	r0, r3
  3e171e: f3d4 f8f9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d41f2
  3e1722: ab06         	add	r3, sp, #0x18
  3e1724: 4618         	mov	r0, r3
  3e1726: f3a8 fe69    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a8cd2
  3e172a: 9b05         	ldr	r3, [sp, #0x14]
  3e172c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1730: 681b         	ldr	r3, [r3]
  3e1732: f503 730f    	add.w	r3, r3, #0x23c
  3e1736: 681b         	ldr	r3, [r3]
  3e1738: 9a05         	ldr	r2, [sp, #0x14]
  3e173a: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e173e: 4610         	mov	r0, r2
  3e1740: 2100         	movs	r1, #0x0
  3e1742: 4798         	blx	r3
  3e1744: 9b05         	ldr	r3, [sp, #0x14]
  3e1746: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e174a: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3e174e: 2b00         	cmp	r3, #0x0
  3e1750: d014         	beq	0x3e177c <SoldierAIController::removeDualWeapon()+0xb4> @ imm = #0x28
  3e1752: 9b05         	ldr	r3, [sp, #0x14]
  3e1754: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1758: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3e175c: 681b         	ldr	r3, [r3]
  3e175e: 33f4         	adds	r3, #0xf4
  3e1760: 681b         	ldr	r3, [r3]
  3e1762: 9a05         	ldr	r2, [sp, #0x14]
  3e1764: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1768: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3e176c: 9a05         	ldr	r2, [sp, #0x14]
  3e176e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1772: 4608         	mov	r0, r1
  3e1774: 4611         	mov	r1, r2
  3e1776: 2200         	movs	r2, #0x0
  3e1778: 4798         	blx	r3
  3e177a: e013         	b	0x3e17a4 <SoldierAIController::removeDualWeapon()+0xdc> @ imm = #0x26
  3e177c: 9b05         	ldr	r3, [sp, #0x14]
  3e177e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1782: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3e1786: 681b         	ldr	r3, [r3]
  3e1788: 33f4         	adds	r3, #0xf4
  3e178a: 681b         	ldr	r3, [r3]
  3e178c: 9a05         	ldr	r2, [sp, #0x14]
  3e178e: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1792: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3e1796: 9a05         	ldr	r2, [sp, #0x14]
  3e1798: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e179c: 4608         	mov	r0, r1
  3e179e: 4611         	mov	r1, r2
  3e17a0: 2200         	movs	r2, #0x0
  3e17a2: 4798         	blx	r3
  3e17a4: 9b05         	ldr	r3, [sp, #0x14]
  3e17a6: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e17aa: 681b         	ldr	r3, [r3]
  3e17ac: f503 7300    	add.w	r3, r3, #0x200
  3e17b0: 681d         	ldr	r5, [r3]
  3e17b2: 9b05         	ldr	r3, [sp, #0x14]
  3e17b4: f8d3 6150    	ldr.w	r6, [r3, #0x150]
  3e17b8: 4b7b         	ldr	r3, [pc, #0x1ec]        @ 0x3e19a8 <SoldierAIController::removeDualWeapon()+0x2e0>
  3e17ba: 58e3         	ldr	r3, [r4, r3]
  3e17bc: 681b         	ldr	r3, [r3]
  3e17be: 681b         	ldr	r3, [r3]
  3e17c0: f503 73e0    	add.w	r3, r3, #0x1c0
  3e17c4: 681b         	ldr	r3, [r3]
  3e17c6: 4a78         	ldr	r2, [pc, #0x1e0]        @ 0x3e19a8 <SoldierAIController::removeDualWeapon()+0x2e0>
  3e17c8: 58a2         	ldr	r2, [r4, r2]
  3e17ca: 6812         	ldr	r2, [r2]
  3e17cc: a907         	add	r1, sp, #0x1c
  3e17ce: 4608         	mov	r0, r1
  3e17d0: 4611         	mov	r1, r2
  3e17d2: 4798         	blx	r3
  3e17d4: ab07         	add	r3, sp, #0x1c
  3e17d6: 4630         	mov	r0, r6
  3e17d8: 4619         	mov	r1, r3
  3e17da: 47a8         	blx	r5
  3e17dc: ab07         	add	r3, sp, #0x1c
  3e17de: 4618         	mov	r0, r3
  3e17e0: f3d4 f898    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d4130
  3e17e4: 9b05         	ldr	r3, [sp, #0x14]
  3e17e6: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e17ea: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e17ee: 9b05         	ldr	r3, [sp, #0x14]
  3e17f0: 681b         	ldr	r3, [r3]
  3e17f2: 3350         	adds	r3, #0x50
  3e17f4: 681b         	ldr	r3, [r3]
  3e17f6: 9a05         	ldr	r2, [sp, #0x14]
  3e17f8: 4610         	mov	r0, r2
  3e17fa: 4798         	blx	r3
  3e17fc: 4603         	mov	r3, r0
  3e17fe: edd3 7a00    	vldr	s15, [r3]
  3e1802: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e1806: 9b05         	ldr	r3, [sp, #0x14]
  3e1808: 681b         	ldr	r3, [r3]
  3e180a: 3350         	adds	r3, #0x50
  3e180c: 681b         	ldr	r3, [r3]
  3e180e: 9a05         	ldr	r2, [sp, #0x14]
  3e1810: 4610         	mov	r0, r2
  3e1812: 4798         	blx	r3
  3e1814: 4603         	mov	r3, r0
  3e1816: edd3 7a01    	vldr	s15, [r3, #4]
  3e181a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e181e: 466b         	mov	r3, sp
  3e1820: 4618         	mov	r0, r3
  3e1822: eeb0 0b48    	vmov.f64	d0, d8
  3e1826: eeb0 1b47    	vmov.f64	d1, d7
  3e182a: f7fc f91d    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x3dc6
  3e182e: 3428         	adds	r4, #0x28
  3e1830: 466b         	mov	r3, sp
  3e1832: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e1834: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e1838: 9b05         	ldr	r3, [sp, #0x14]
  3e183a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e183e: 681b         	ldr	r3, [r3]
  3e1840: 334c         	adds	r3, #0x4c
  3e1842: 681c         	ldr	r4, [r3]
  3e1844: 9b05         	ldr	r3, [sp, #0x14]
  3e1846: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e184a: 461d         	mov	r5, r3
  3e184c: 9b05         	ldr	r3, [sp, #0x14]
  3e184e: 681b         	ldr	r3, [r3]
  3e1850: 3350         	adds	r3, #0x50
  3e1852: 681b         	ldr	r3, [r3]
  3e1854: 9a05         	ldr	r2, [sp, #0x14]
  3e1856: 4610         	mov	r0, r2
  3e1858: 4798         	blx	r3
  3e185a: 4603         	mov	r3, r0
  3e185c: 4628         	mov	r0, r5
  3e185e: 4619         	mov	r1, r3
  3e1860: 47a0         	blx	r4
  3e1862: 9b05         	ldr	r3, [sp, #0x14]
  3e1864: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1868: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e186c: 9b05         	ldr	r3, [sp, #0x14]
  3e186e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1872: ed93 8b0e    	vldr	d8, [r3, #56]
  3e1876: f7fc f871    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3f1e
  3e187a: 4603         	mov	r3, r0
  3e187c: ee07 3a90    	vmov	s15, r3
  3e1880: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1884: eddf 7a44    	vldr	s15, [pc, #272]         @ 0x3e1998 <SoldierAIController::removeDualWeapon()+0x2d0>
  3e1888: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e188c: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1890: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1894: eddf 7a41    	vldr	s15, [pc, #260]         @ 0x3e199c <SoldierAIController::removeDualWeapon()+0x2d4>
  3e1898: ee67 7a27    	vmul.f32	s15, s14, s15
  3e189c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e18a0: ee38 8b07    	vadd.f64	d8, d8, d7
  3e18a4: 9b05         	ldr	r3, [sp, #0x14]
  3e18a6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e18aa: ed93 9b10    	vldr	d9, [r3, #64]
  3e18ae: f7fc f855    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3f56
  3e18b2: 4603         	mov	r3, r0
  3e18b4: ee07 3a90    	vmov	s15, r3
  3e18b8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e18bc: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e1998 <SoldierAIController::removeDualWeapon()+0x2d0>
  3e18c0: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e18c4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e18c8: ee37 7a67    	vsub.f32	s14, s14, s15
  3e18cc: eddf 7a33    	vldr	s15, [pc, #204]         @ 0x3e199c <SoldierAIController::removeDualWeapon()+0x2d4>
  3e18d0: ee67 7a27    	vmul.f32	s15, s14, s15
  3e18d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e18d8: ee39 7b07    	vadd.f64	d7, d9, d7
  3e18dc: 466b         	mov	r3, sp
  3e18de: 4618         	mov	r0, r3
  3e18e0: eeb0 0b48    	vmov.f64	d0, d8
  3e18e4: eeb0 1b47    	vmov.f64	d1, d7
  3e18e8: f7fc f8be    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x3e84
  3e18ec: 3438         	adds	r4, #0x38
  3e18ee: 466b         	mov	r3, sp
  3e18f0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e18f2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e18f6: 9b05         	ldr	r3, [sp, #0x14]
  3e18f8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e18fc: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1900: 9b05         	ldr	r3, [sp, #0x14]
  3e1902: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1906: ed93 8b18    	vldr	d8, [r3, #96]
  3e190a: f7fc f827    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x3fb2
  3e190e: 4603         	mov	r3, r0
  3e1910: ee07 3a90    	vmov	s15, r3
  3e1914: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1918: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3e1998 <SoldierAIController::removeDualWeapon()+0x2d0>
  3e191c: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1920: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1924: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1928: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  3e192c: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1930: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1934: ee38 7b07    	vadd.f64	d7, d8, d7
  3e1938: ed84 7b18    	vstr	d7, [r4, #96]
  3e193c: f1fe feb8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fed70
  3e1940: 4602         	mov	r2, r0
  3e1942: 9b05         	ldr	r3, [sp, #0x14]
  3e1944: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1948: 4610         	mov	r0, r2
  3e194a: 4a18         	ldr	r2, [pc, #0x60]         @ 0x3e19ac <SoldierAIController::removeDualWeapon()+0x2e4>
  3e194c: 447a         	add	r2, pc
  3e194e: 4611         	mov	r1, r2
  3e1950: 461a         	mov	r2, r3
  3e1952: f1ff f8eb    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1ff1d6
  3e1956: 9b05         	ldr	r3, [sp, #0x14]
  3e1958: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e195c: 4618         	mov	r0, r3
  3e195e: f1b6 faab    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1b6556
  3e1962: 9b05         	ldr	r3, [sp, #0x14]
  3e1964: 2200         	movs	r2, #0x0
  3e1966: f8c3 2150    	str.w	r2, [r3, #0x150]
  3e196a: e010         	b	0x3e198e <SoldierAIController::removeDualWeapon()+0x2c6> @ imm = #0x20
  3e196c: ab07         	add	r3, sp, #0x1c
  3e196e: 4618         	mov	r0, r3
  3e1970: f3d3 ffd0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3fa0
  3e1974: e7ff         	b	0x3e1976 <SoldierAIController::removeDualWeapon()+0x2ae> @ imm = #-0x2
  3e1976: ab06         	add	r3, sp, #0x18
  3e1978: 4618         	mov	r0, r3
  3e197a: f3a8 fd3f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a8a7e
  3e197e: f3a6 fb95    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a672a
  3e1982: ab07         	add	r3, sp, #0x1c
  3e1984: 4618         	mov	r0, r3
  3e1986: f3d3 ffc5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3f8a
  3e198a: f3a6 fb8f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a671e
  3e198e: b008         	add	sp, #0x20
  3e1990: ecbd 8b04    	vpop	{d8, d9}
  3e1994: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e1995); words below are literal-pool data ---
  3e1996: bf00         	nop
  3e1998: 0000         	movs	r0, r0
  3e199a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e1b9c <SoldierAIController::removeSideWeapon()+0x1ec>
  3e199c: 0000         	movs	r0, r0
  3e199e: 4248         	rsbs	r0, r1, #0
  3e19a0: 1334         	asrs	r4, r6, #0xc
  3e19a2: 0055         	lsls	r5, r2, #0x1
  3e19a4: 67cc         	str	r4, [r1, #0x7c]
  3e19a6: 003f         	movs	r7, r7
  3e19a8: d784         	bvc	0x3e18b4 <SoldierAIController::removeDualWeapon()+0x1ec> @ imm = #-0xf8
  3e19aa: ffff 65b4    	vsli.64	d22, d20, #0x3f
  3e19ae: 003f         	movs	r7, r7

// ==== SoldierAIController::removeSideWeapon
//      file offset 0x3e19b0 (= ELF address; Ghidra 0x3f19b0), 644 bytes, Thumb-2
  3e19b0: b530         	push	{r4, r5, lr}
  3e19b2: ed2d 8b04    	vpush	{d8, d9}
  3e19b6: b089         	sub	sp, #0x24
  3e19b8: 9005         	str	r0, [sp, #0x14]
  3e19ba: 9b05         	ldr	r3, [sp, #0x14]
  3e19bc: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e19c0: 2b00         	cmp	r3, #0x0
  3e19c2: f000 812d    	beq.w	0x3e1c20 <SoldierAIController::removeSideWeapon()+0x270> @ imm = #0x25a
  3e19c6: 9b05         	ldr	r3, [sp, #0x14]
  3e19c8: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e19cc: 681b         	ldr	r3, [r3]
  3e19ce: f503 73f8    	add.w	r3, r3, #0x1f0
  3e19d2: 681c         	ldr	r4, [r3]
  3e19d4: 9b05         	ldr	r3, [sp, #0x14]
  3e19d6: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e19da: 461d         	mov	r5, r3
  3e19dc: ab06         	add	r3, sp, #0x18
  3e19de: 4618         	mov	r0, r3
  3e19e0: f3a8 fd08    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a8a10
  3e19e4: aa07         	add	r2, sp, #0x1c
  3e19e6: ab06         	add	r3, sp, #0x18
  3e19e8: 4610         	mov	r0, r2
  3e19ea: 4a90         	ldr	r2, [pc, #0x240]        @ 0x3e1c2c <SoldierAIController::removeSideWeapon()+0x27c>
  3e19ec: 447a         	add	r2, pc
  3e19ee: 4611         	mov	r1, r2
  3e19f0: 461a         	mov	r2, r3
  3e19f2: f3d5 f835    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d506a
  3e19f6: ab07         	add	r3, sp, #0x1c
  3e19f8: 4628         	mov	r0, r5
  3e19fa: 4619         	mov	r1, r3
  3e19fc: 47a0         	blx	r4
  3e19fe: ab07         	add	r3, sp, #0x1c
  3e1a00: 4618         	mov	r0, r3
  3e1a02: f3d3 ff87    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3f0e
  3e1a06: ab06         	add	r3, sp, #0x18
  3e1a08: 4618         	mov	r0, r3
  3e1a0a: f3a8 fcf7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a89ee
  3e1a0e: 9b05         	ldr	r3, [sp, #0x14]
  3e1a10: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1a14: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e1a18: 681b         	ldr	r3, [r3]
  3e1a1a: 33f4         	adds	r3, #0xf4
  3e1a1c: 681b         	ldr	r3, [r3]
  3e1a1e: 9a05         	ldr	r2, [sp, #0x14]
  3e1a20: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1a24: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e1a28: 9a05         	ldr	r2, [sp, #0x14]
  3e1a2a: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e1a2e: 4608         	mov	r0, r1
  3e1a30: 4611         	mov	r1, r2
  3e1a32: 2200         	movs	r2, #0x0
  3e1a34: 4798         	blx	r3
  3e1a36: 9b05         	ldr	r3, [sp, #0x14]
  3e1a38: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1a3c: 681b         	ldr	r3, [r3]
  3e1a3e: f503 7300    	add.w	r3, r3, #0x200
  3e1a42: 681c         	ldr	r4, [r3]
  3e1a44: 9b05         	ldr	r3, [sp, #0x14]
  3e1a46: f8d3 5154    	ldr.w	r5, [r3, #0x154]
  3e1a4a: 9b05         	ldr	r3, [sp, #0x14]
  3e1a4c: 681b         	ldr	r3, [r3]
  3e1a4e: f503 73e0    	add.w	r3, r3, #0x1c0
  3e1a52: 681b         	ldr	r3, [r3]
  3e1a54: 9a05         	ldr	r2, [sp, #0x14]
  3e1a56: a907         	add	r1, sp, #0x1c
  3e1a58: 4608         	mov	r0, r1
  3e1a5a: 4611         	mov	r1, r2
  3e1a5c: 4798         	blx	r3
  3e1a5e: ab07         	add	r3, sp, #0x1c
  3e1a60: 4628         	mov	r0, r5
  3e1a62: 4619         	mov	r1, r3
  3e1a64: 47a0         	blx	r4
  3e1a66: ab07         	add	r3, sp, #0x1c
  3e1a68: 4618         	mov	r0, r3
  3e1a6a: f3d3 ff53    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3ea6
  3e1a6e: 9b05         	ldr	r3, [sp, #0x14]
  3e1a70: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1a74: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1a78: 9b05         	ldr	r3, [sp, #0x14]
  3e1a7a: 681b         	ldr	r3, [r3]
  3e1a7c: 3350         	adds	r3, #0x50
  3e1a7e: 681b         	ldr	r3, [r3]
  3e1a80: 9a05         	ldr	r2, [sp, #0x14]
  3e1a82: 4610         	mov	r0, r2
  3e1a84: 4798         	blx	r3
  3e1a86: 4603         	mov	r3, r0
  3e1a88: edd3 7a00    	vldr	s15, [r3]
  3e1a8c: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3e1a90: 9b05         	ldr	r3, [sp, #0x14]
  3e1a92: 681b         	ldr	r3, [r3]
  3e1a94: 3350         	adds	r3, #0x50
  3e1a96: 681b         	ldr	r3, [r3]
  3e1a98: 9a05         	ldr	r2, [sp, #0x14]
  3e1a9a: 4610         	mov	r0, r2
  3e1a9c: 4798         	blx	r3
  3e1a9e: 4603         	mov	r3, r0
  3e1aa0: edd3 7a01    	vldr	s15, [r3, #4]
  3e1aa4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1aa8: 466b         	mov	r3, sp
  3e1aaa: 4618         	mov	r0, r3
  3e1aac: eeb0 0b48    	vmov.f64	d0, d8
  3e1ab0: eeb0 1b47    	vmov.f64	d1, d7
  3e1ab4: f7fb ffd8    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x4050
  3e1ab8: 3428         	adds	r4, #0x28
  3e1aba: 466b         	mov	r3, sp
  3e1abc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e1abe: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e1ac2: 9b05         	ldr	r3, [sp, #0x14]
  3e1ac4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1ac8: 681b         	ldr	r3, [r3]
  3e1aca: 334c         	adds	r3, #0x4c
  3e1acc: 681c         	ldr	r4, [r3]
  3e1ace: 9b05         	ldr	r3, [sp, #0x14]
  3e1ad0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1ad4: 461d         	mov	r5, r3
  3e1ad6: 9b05         	ldr	r3, [sp, #0x14]
  3e1ad8: 681b         	ldr	r3, [r3]
  3e1ada: 3350         	adds	r3, #0x50
  3e1adc: 681b         	ldr	r3, [r3]
  3e1ade: 9a05         	ldr	r2, [sp, #0x14]
  3e1ae0: 4610         	mov	r0, r2
  3e1ae2: 4798         	blx	r3
  3e1ae4: 4603         	mov	r3, r0
  3e1ae6: 4628         	mov	r0, r5
  3e1ae8: 4619         	mov	r1, r3
  3e1aea: 47a0         	blx	r4
  3e1aec: 9b05         	ldr	r3, [sp, #0x14]
  3e1aee: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1af2: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1af6: 9b05         	ldr	r3, [sp, #0x14]
  3e1af8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1afc: ed93 8b0e    	vldr	d8, [r3, #56]
  3e1b00: f7fb ff2c    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x41a8
  3e1b04: 4603         	mov	r3, r0
  3e1b06: ee07 3a90    	vmov	s15, r3
  3e1b0a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1b0e: eddf 7a46    	vldr	s15, [pc, #280]         @ 0x3e1c28 <SoldierAIController::removeSideWeapon()+0x278>
  3e1b12: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1b16: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1b1a: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1b1e: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e1b22: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1b26: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1b2a: ee38 8b07    	vadd.f64	d8, d8, d7
  3e1b2e: 9b05         	ldr	r3, [sp, #0x14]
  3e1b30: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1b34: ed93 9b10    	vldr	d9, [r3, #64]
  3e1b38: f7fb ff10    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x41e0
  3e1b3c: 4603         	mov	r3, r0
  3e1b3e: ee07 3a90    	vmov	s15, r3
  3e1b42: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1b46: eddf 7a38    	vldr	s15, [pc, #224]         @ 0x3e1c28 <SoldierAIController::removeSideWeapon()+0x278>
  3e1b4a: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1b4e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1b52: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1b56: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e1b5a: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1b5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1b62: ee39 7b07    	vadd.f64	d7, d9, d7
  3e1b66: 466b         	mov	r3, sp
  3e1b68: 4618         	mov	r0, r3
  3e1b6a: eeb0 0b48    	vmov.f64	d0, d8
  3e1b6e: eeb0 1b47    	vmov.f64	d1, d7
  3e1b72: f7fb ff79    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x410e
  3e1b76: 3438         	adds	r4, #0x38
  3e1b78: 466b         	mov	r3, sp
  3e1b7a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e1b7c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e1b80: 9b05         	ldr	r3, [sp, #0x14]
  3e1b82: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1b86: f8d3 40e8    	ldr.w	r4, [r3, #0xe8]
  3e1b8a: 9b05         	ldr	r3, [sp, #0x14]
  3e1b8c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e1b90: ed93 8b18    	vldr	d8, [r3, #96]
  3e1b94: f7fb fee2    	bl	0x3dd95c <Slug::getVelocity()+0x130> @ imm = #-0x423c
  3e1b98: 4603         	mov	r3, r0
  3e1b9a: ee07 3a90    	vmov	s15, r3
  3e1b9e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e1ba2: eddf 7a21    	vldr	s15, [pc, #132]         @ 0x3e1c28 <SoldierAIController::removeSideWeapon()+0x278>
  3e1ba6: ee87 7a27    	vdiv.f32	s14, s14, s15
  3e1baa: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3e1bae: ee37 7a67    	vsub.f32	s14, s14, s15
  3e1bb2: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3e1bb6: ee67 7a27    	vmul.f32	s15, s14, s15
  3e1bba: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e1bbe: ee38 7b07    	vadd.f64	d7, d8, d7
  3e1bc2: ed84 7b18    	vstr	d7, [r4, #96]
  3e1bc6: f1fe fd73    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1feae6
  3e1bca: 4602         	mov	r2, r0
  3e1bcc: 9b05         	ldr	r3, [sp, #0x14]
  3e1bce: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1bd2: 4610         	mov	r0, r2
  3e1bd4: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3e1c30 <SoldierAIController::removeSideWeapon()+0x280>
  3e1bd6: 447a         	add	r2, pc
  3e1bd8: 4611         	mov	r1, r2
  3e1bda: 461a         	mov	r2, r3
  3e1bdc: f1fe ffa6    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fef4c
  3e1be0: 9b05         	ldr	r3, [sp, #0x14]
  3e1be2: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e1be6: 4618         	mov	r0, r3
  3e1be8: f1b6 f966    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1b62cc
  3e1bec: 9b05         	ldr	r3, [sp, #0x14]
  3e1bee: 2200         	movs	r2, #0x0
  3e1bf0: f8c3 2160    	str.w	r2, [r3, #0x160]
  3e1bf4: 9b05         	ldr	r3, [sp, #0x14]
  3e1bf6: 2200         	movs	r2, #0x0
  3e1bf8: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e1bfc: e010         	b	0x3e1c20 <SoldierAIController::removeSideWeapon()+0x270> @ imm = #0x20
  3e1bfe: ab07         	add	r3, sp, #0x1c
  3e1c00: 4618         	mov	r0, r3
  3e1c02: f3d3 fe87    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3d0e
  3e1c06: e7ff         	b	0x3e1c08 <SoldierAIController::removeSideWeapon()+0x258> @ imm = #-0x2
  3e1c08: ab06         	add	r3, sp, #0x18
  3e1c0a: 4618         	mov	r0, r3
  3e1c0c: f3a8 fbf6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a87ec
  3e1c10: f3a6 fa4c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a6498
  3e1c14: ab07         	add	r3, sp, #0x1c
  3e1c16: 4618         	mov	r0, r3
  3e1c18: f3d3 fe7c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3cf8
  3e1c1c: f3a6 fa46    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a648c
  3e1c20: b009         	add	sp, #0x24
  3e1c22: ecbd 8b04    	vpop	{d8, d9}
  3e1c26: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3e1c27); words below are literal-pool data ---
  3e1c28: 0000         	movs	r0, r0
  3e1c2a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3e1e2c <SoldierAIController::fire(float)+0x78>
  3e1c2c: 64e8         	str	r0, [r5, #0x4c]
  3e1c2e: 003f         	movs	r7, r7
  3e1c30: 633a         	str	r2, [r7, #0x30]
  3e1c32: 003f         	movs	r7, r7

// ==== SoldierAIController::switchWeapons
//      file offset 0x3e1c34 (= ELF address; Ghidra 0x3f1c34), 384 bytes, Thumb-2
  3e1c34: b510         	push	{r4, lr}
  3e1c36: b084         	sub	sp, #0x10
  3e1c38: 9001         	str	r0, [sp, #0x4]
  3e1c3a: 2300         	movs	r3, #0x0
  3e1c3c: 9303         	str	r3, [sp, #0xc]
  3e1c3e: 9b01         	ldr	r3, [sp, #0x4]
  3e1c40: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1c44: 2b00         	cmp	r3, #0x0
  3e1c46: f000 80b0    	beq.w	0x3e1daa <SoldierAIController::switchWeapons()+0x176> @ imm = #0x160
  3e1c4a: 9b01         	ldr	r3, [sp, #0x4]
  3e1c4c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1c50: 2b00         	cmp	r3, #0x0
  3e1c52: f000 80aa    	beq.w	0x3e1daa <SoldierAIController::switchWeapons()+0x176> @ imm = #0x154
  3e1c56: 9b01         	ldr	r3, [sp, #0x4]
  3e1c58: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1c5c: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e1c60: 681b         	ldr	r3, [r3]
  3e1c62: 33f4         	adds	r3, #0xf4
  3e1c64: 681b         	ldr	r3, [r3]
  3e1c66: 9a01         	ldr	r2, [sp, #0x4]
  3e1c68: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1c6c: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e1c70: 9a01         	ldr	r2, [sp, #0x4]
  3e1c72: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1c76: 4608         	mov	r0, r1
  3e1c78: 4611         	mov	r1, r2
  3e1c7a: 2200         	movs	r2, #0x0
  3e1c7c: 4798         	blx	r3
  3e1c7e: 9b01         	ldr	r3, [sp, #0x4]
  3e1c80: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1c84: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e1c88: 681b         	ldr	r3, [r3]
  3e1c8a: 33f4         	adds	r3, #0xf4
  3e1c8c: 681b         	ldr	r3, [r3]
  3e1c8e: 9a01         	ldr	r2, [sp, #0x4]
  3e1c90: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1c94: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e1c98: 9a01         	ldr	r2, [sp, #0x4]
  3e1c9a: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e1c9e: 4608         	mov	r0, r1
  3e1ca0: 4611         	mov	r1, r2
  3e1ca2: 2200         	movs	r2, #0x0
  3e1ca4: 4798         	blx	r3
  3e1ca6: 9b01         	ldr	r3, [sp, #0x4]
  3e1ca8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1cac: 9303         	str	r3, [sp, #0xc]
  3e1cae: 9b01         	ldr	r3, [sp, #0x4]
  3e1cb0: f8d3 214c    	ldr.w	r2, [r3, #0x14c]
  3e1cb4: 9b01         	ldr	r3, [sp, #0x4]
  3e1cb6: f8c3 2148    	str.w	r2, [r3, #0x148]
  3e1cba: 9b01         	ldr	r3, [sp, #0x4]
  3e1cbc: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3e1cc0: 9b01         	ldr	r3, [sp, #0x4]
  3e1cc2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1cc6: 681b         	ldr	r3, [r3]
  3e1cc8: f503 7339    	add.w	r3, r3, #0x2e4
  3e1ccc: 681b         	ldr	r3, [r3]
  3e1cce: 9a01         	ldr	r2, [sp, #0x4]
  3e1cd0: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1cd4: 4610         	mov	r0, r2
  3e1cd6: 4798         	blx	r3
  3e1cd8: 4603         	mov	r3, r0
  3e1cda: 4620         	mov	r0, r4
  3e1cdc: 4619         	mov	r1, r3
  3e1cde: f012 f817    	bl	0x3f3d10 <SoldierView::setWeaponAngleOffset(float)> @ imm = #0x1202e
  3e1ce2: 9b01         	ldr	r3, [sp, #0x4]
  3e1ce4: 9a03         	ldr	r2, [sp, #0xc]
  3e1ce6: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3e1cea: 9b01         	ldr	r3, [sp, #0x4]
  3e1cec: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1cf0: 681b         	ldr	r3, [r3]
  3e1cf2: f503 73ea    	add.w	r3, r3, #0x1d4
  3e1cf6: 681b         	ldr	r3, [r3]
  3e1cf8: 9a01         	ldr	r2, [sp, #0x4]
  3e1cfa: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1cfe: 4610         	mov	r0, r2
  3e1d00: 4798         	blx	r3
  3e1d02: 9b01         	ldr	r3, [sp, #0x4]
  3e1d04: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3e1d08: 681b         	ldr	r3, [r3]
  3e1d0a: f503 73ec    	add.w	r3, r3, #0x1d8
  3e1d0e: 681b         	ldr	r3, [r3]
  3e1d10: 9a01         	ldr	r2, [sp, #0x4]
  3e1d12: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e1d16: 4610         	mov	r0, r2
  3e1d18: 4798         	blx	r3
  3e1d1a: 9b01         	ldr	r3, [sp, #0x4]
  3e1d1c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1d20: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3e1d24: 681b         	ldr	r3, [r3]
  3e1d26: 33cc         	adds	r3, #0xcc
  3e1d28: 681b         	ldr	r3, [r3]
  3e1d2a: 9a01         	ldr	r2, [sp, #0x4]
  3e1d2c: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1d30: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3e1d34: 9a01         	ldr	r2, [sp, #0x4]
  3e1d36: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1d3a: 4608         	mov	r0, r1
  3e1d3c: 4611         	mov	r1, r2
  3e1d3e: 2200         	movs	r2, #0x0
  3e1d40: 4798         	blx	r3
  3e1d42: 9b01         	ldr	r3, [sp, #0x4]
  3e1d44: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1d48: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e1d4c: 681b         	ldr	r3, [r3]
  3e1d4e: 33cc         	adds	r3, #0xcc
  3e1d50: 681b         	ldr	r3, [r3]
  3e1d52: 9a01         	ldr	r2, [sp, #0x4]
  3e1d54: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e1d58: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e1d5c: 9a01         	ldr	r2, [sp, #0x4]
  3e1d5e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3e1d62: 4608         	mov	r0, r1
  3e1d64: 4611         	mov	r1, r2
  3e1d66: 2200         	movs	r2, #0x0
  3e1d68: 4798         	blx	r3
  3e1d6a: 9b01         	ldr	r3, [sp, #0x4]
  3e1d6c: 681b         	ldr	r3, [r3]
  3e1d6e: f503 7303    	add.w	r3, r3, #0x20c
  3e1d72: 681b         	ldr	r3, [r3]
  3e1d74: 9801         	ldr	r0, [sp, #0x4]
  3e1d76: 4798         	blx	r3
  3e1d78: f1fe fc9a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fe934
  3e1d7c: 4602         	mov	r2, r0
  3e1d7e: 9b01         	ldr	r3, [sp, #0x4]
  3e1d80: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1d84: 4610         	mov	r0, r2
  3e1d86: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3e1db0 <SoldierAIController::switchWeapons()+0x17c>
  3e1d88: 447a         	add	r2, pc
  3e1d8a: 4611         	mov	r1, r2
  3e1d8c: 461a         	mov	r2, r3
  3e1d8e: f1fe fecd    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fed9a
  3e1d92: 9b01         	ldr	r3, [sp, #0x4]
  3e1d94: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1d98: 4618         	mov	r0, r3
  3e1d9a: f04f 0200    	mov.w	r2, #0x0
  3e1d9e: f44f 4300    	mov.w	r3, #0x8000
  3e1da2: f2c4 0356    	movt	r3, #0x4056
  3e1da6: f012 f85d    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0x120ba
  3e1daa: b004         	add	sp, #0x10
  3e1dac: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3e1dad); words below are literal-pool data ---
  3e1dae: bf00         	nop
  3e1db0: 6164         	str	r4, [r4, #0x14]
  3e1db2: 003f         	movs	r7, r7

// ==== SoldierAIController::fire
//      file offset 0x3e1db4 (= ELF address; Ghidra 0x3f1db4), 524 bytes, Thumb-2
  3e1db4: b570         	push	{r4, r5, r6, lr}
  3e1db6: b082         	sub	sp, #0x8
  3e1db8: 9001         	str	r0, [sp, #0x4]
  3e1dba: 9100         	str	r1, [sp]
  3e1dbc: 9b01         	ldr	r3, [sp, #0x4]
  3e1dbe: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1dc2: 2b00         	cmp	r3, #0x0
  3e1dc4: d028         	beq	0x3e1e18 <SoldierAIController::fire(float)+0x64> @ imm = #0x50
  3e1dc6: 9b01         	ldr	r3, [sp, #0x4]
  3e1dc8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1dcc: 681b         	ldr	r3, [r3]
  3e1dce: f503 7317    	add.w	r3, r3, #0x25c
  3e1dd2: 681b         	ldr	r3, [r3]
  3e1dd4: 9a01         	ldr	r2, [sp, #0x4]
  3e1dd6: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1dda: 4610         	mov	r0, r2
  3e1ddc: 9900         	ldr	r1, [sp]
  3e1dde: 4798         	blx	r3
  3e1de0: 9b01         	ldr	r3, [sp, #0x4]
  3e1de2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1de6: 681b         	ldr	r3, [r3]
  3e1de8: f503 7321    	add.w	r3, r3, #0x284
  3e1dec: 681b         	ldr	r3, [r3]
  3e1dee: 9a01         	ldr	r2, [sp, #0x4]
  3e1df0: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1df4: 4610         	mov	r0, r2
  3e1df6: 4798         	blx	r3
  3e1df8: 4603         	mov	r3, r0
  3e1dfa: b29b         	uxth	r3, r3
  3e1dfc: b21b         	sxth	r3, r3
  3e1dfe: 2b00         	cmp	r3, #0x0
  3e1e00: bfd4         	ite	le
  3e1e02: 2300         	movle	r3, #0x0
  3e1e04: 2301         	movgt	r3, #0x1
  3e1e06: b2db         	uxtb	r3, r3
  3e1e08: 2b00         	cmp	r3, #0x0
  3e1e0a: d005         	beq	0x3e1e18 <SoldierAIController::fire(float)+0x64> @ imm = #0xa
  3e1e0c: 9b01         	ldr	r3, [sp, #0x4]
  3e1e0e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1e12: 4618         	mov	r0, r3
  3e1e14: f012 fa24    	bl	0x3f4260 <SoldierView::hideSight()> @ imm = #0x12448
  3e1e18: 9b01         	ldr	r3, [sp, #0x4]
  3e1e1a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1e1e: 2b00         	cmp	r3, #0x0
  3e1e20: f000 80cc    	beq.w	0x3e1fbc <SoldierAIController::fire(float)+0x208> @ imm = #0x198
  3e1e24: 9b01         	ldr	r3, [sp, #0x4]
  3e1e26: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1e2a: 681b         	ldr	r3, [r3]
  3e1e2c: f503 731d    	add.w	r3, r3, #0x274
  3e1e30: 681b         	ldr	r3, [r3]
  3e1e32: 9a01         	ldr	r2, [sp, #0x4]
  3e1e34: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1e38: 4610         	mov	r0, r2
  3e1e3a: 4798         	blx	r3
  3e1e3c: 4603         	mov	r3, r0
  3e1e3e: b29b         	uxth	r3, r3
  3e1e40: 2b00         	cmp	r3, #0x0
  3e1e42: d14b         	bne	0x3e1edc <SoldierAIController::fire(float)+0x128> @ imm = #0x96
  3e1e44: 9b01         	ldr	r3, [sp, #0x4]
  3e1e46: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1e4a: 681b         	ldr	r3, [r3]
  3e1e4c: f503 7321    	add.w	r3, r3, #0x284
  3e1e50: 681b         	ldr	r3, [r3]
  3e1e52: 9a01         	ldr	r2, [sp, #0x4]
  3e1e54: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1e58: 4610         	mov	r0, r2
  3e1e5a: 4798         	blx	r3
  3e1e5c: 4603         	mov	r3, r0
  3e1e5e: b29b         	uxth	r3, r3
  3e1e60: 2b00         	cmp	r3, #0x0
  3e1e62: d13b         	bne	0x3e1edc <SoldierAIController::fire(float)+0x128> @ imm = #0x76
  3e1e64: 9b01         	ldr	r3, [sp, #0x4]
  3e1e66: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1e6a: 681b         	ldr	r3, [r3]
  3e1e6c: f503 731a    	add.w	r3, r3, #0x268
  3e1e70: 681b         	ldr	r3, [r3]
  3e1e72: 9a01         	ldr	r2, [sp, #0x4]
  3e1e74: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1e78: 4610         	mov	r0, r2
  3e1e7a: 4798         	blx	r3
  3e1e7c: 4604         	mov	r4, r0
  3e1e7e: 9b01         	ldr	r3, [sp, #0x4]
  3e1e80: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1e84: 681b         	ldr	r3, [r3]
  3e1e86: f503 731a    	add.w	r3, r3, #0x268
  3e1e8a: 681b         	ldr	r3, [r3]
  3e1e8c: 9a01         	ldr	r2, [sp, #0x4]
  3e1e8e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1e92: 4610         	mov	r0, r2
  3e1e94: 4798         	blx	r3
  3e1e96: 4603         	mov	r3, r0
  3e1e98: 429c         	cmp	r4, r3
  3e1e9a: d11f         	bne	0x3e1edc <SoldierAIController::fire(float)+0x128> @ imm = #0x3e
  3e1e9c: 9b01         	ldr	r3, [sp, #0x4]
  3e1e9e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1ea2: 681b         	ldr	r3, [r3]
  3e1ea4: f503 731d    	add.w	r3, r3, #0x274
  3e1ea8: 681b         	ldr	r3, [r3]
  3e1eaa: 9a01         	ldr	r2, [sp, #0x4]
  3e1eac: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1eb0: 4610         	mov	r0, r2
  3e1eb2: 4798         	blx	r3
  3e1eb4: 4603         	mov	r3, r0
  3e1eb6: b29b         	uxth	r3, r3
  3e1eb8: b21c         	sxth	r4, r3
  3e1eba: 9b01         	ldr	r3, [sp, #0x4]
  3e1ebc: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1ec0: 681b         	ldr	r3, [r3]
  3e1ec2: f503 732d    	add.w	r3, r3, #0x2b4
  3e1ec6: 681b         	ldr	r3, [r3]
  3e1ec8: 9a01         	ldr	r2, [sp, #0x4]
  3e1eca: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1ece: 4610         	mov	r0, r2
  3e1ed0: 4798         	blx	r3
  3e1ed2: 4603         	mov	r3, r0
  3e1ed4: 429c         	cmp	r4, r3
  3e1ed6: dd01         	ble	0x3e1edc <SoldierAIController::fire(float)+0x128> @ imm = #0x2
  3e1ed8: 2301         	movs	r3, #0x1
  3e1eda: e000         	b	0x3e1ede <SoldierAIController::fire(float)+0x12a> @ imm = #0x0
  3e1edc: 2300         	movs	r3, #0x0
  3e1ede: 2b00         	cmp	r3, #0x0
  3e1ee0: d043         	beq	0x3e1f6a <SoldierAIController::fire(float)+0x1b6> @ imm = #0x86
  3e1ee2: 9b01         	ldr	r3, [sp, #0x4]
  3e1ee4: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1ee8: 681b         	ldr	r3, [r3]
  3e1eea: f503 731e    	add.w	r3, r3, #0x278
  3e1eee: 681c         	ldr	r4, [r3]
  3e1ef0: 9b01         	ldr	r3, [sp, #0x4]
  3e1ef2: f8d3 5150    	ldr.w	r5, [r3, #0x150]
  3e1ef6: 9b01         	ldr	r3, [sp, #0x4]
  3e1ef8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1efc: 681b         	ldr	r3, [r3]
  3e1efe: f503 732d    	add.w	r3, r3, #0x2b4
  3e1f02: 681b         	ldr	r3, [r3]
  3e1f04: 9a01         	ldr	r2, [sp, #0x4]
  3e1f06: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1f0a: 4610         	mov	r0, r2
  3e1f0c: 4798         	blx	r3
  3e1f0e: 4603         	mov	r3, r0
  3e1f10: 4628         	mov	r0, r5
  3e1f12: 4619         	mov	r1, r3
  3e1f14: 47a0         	blx	r4
  3e1f16: 9b01         	ldr	r3, [sp, #0x4]
  3e1f18: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1f1c: 681b         	ldr	r3, [r3]
  3e1f1e: f503 731e    	add.w	r3, r3, #0x278
  3e1f22: 681c         	ldr	r4, [r3]
  3e1f24: 9b01         	ldr	r3, [sp, #0x4]
  3e1f26: f8d3 5148    	ldr.w	r5, [r3, #0x148]
  3e1f2a: 9b01         	ldr	r3, [sp, #0x4]
  3e1f2c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1f30: 681b         	ldr	r3, [r3]
  3e1f32: f503 731d    	add.w	r3, r3, #0x274
  3e1f36: 681b         	ldr	r3, [r3]
  3e1f38: 9a01         	ldr	r2, [sp, #0x4]
  3e1f3a: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1f3e: 4610         	mov	r0, r2
  3e1f40: 4798         	blx	r3
  3e1f42: 4603         	mov	r3, r0
  3e1f44: b29b         	uxth	r3, r3
  3e1f46: b21e         	sxth	r6, r3
  3e1f48: 9b01         	ldr	r3, [sp, #0x4]
  3e1f4a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e1f4e: 681b         	ldr	r3, [r3]
  3e1f50: f503 732d    	add.w	r3, r3, #0x2b4
  3e1f54: 681b         	ldr	r3, [r3]
  3e1f56: 9a01         	ldr	r2, [sp, #0x4]
  3e1f58: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e1f5c: 4610         	mov	r0, r2
  3e1f5e: 4798         	blx	r3
  3e1f60: 4603         	mov	r3, r0
  3e1f62: 1af3         	subs	r3, r6, r3
  3e1f64: 4628         	mov	r0, r5
  3e1f66: 4619         	mov	r1, r3
  3e1f68: 47a0         	blx	r4
  3e1f6a: 9b01         	ldr	r3, [sp, #0x4]
  3e1f6c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1f70: 681b         	ldr	r3, [r3]
  3e1f72: f503 7317    	add.w	r3, r3, #0x25c
  3e1f76: 681b         	ldr	r3, [r3]
  3e1f78: 9a01         	ldr	r2, [sp, #0x4]
  3e1f7a: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1f7e: 4610         	mov	r0, r2
  3e1f80: 9900         	ldr	r1, [sp]
  3e1f82: 4798         	blx	r3
  3e1f84: 9b01         	ldr	r3, [sp, #0x4]
  3e1f86: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e1f8a: 681b         	ldr	r3, [r3]
  3e1f8c: f503 7321    	add.w	r3, r3, #0x284
  3e1f90: 681b         	ldr	r3, [r3]
  3e1f92: 9a01         	ldr	r2, [sp, #0x4]
  3e1f94: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3e1f98: 4610         	mov	r0, r2
  3e1f9a: 4798         	blx	r3
  3e1f9c: 4603         	mov	r3, r0
  3e1f9e: b29b         	uxth	r3, r3
  3e1fa0: b21b         	sxth	r3, r3
  3e1fa2: 2b00         	cmp	r3, #0x0
  3e1fa4: bfd4         	ite	le
  3e1fa6: 2300         	movle	r3, #0x0
  3e1fa8: 2301         	movgt	r3, #0x1
  3e1faa: b2db         	uxtb	r3, r3
  3e1fac: 2b00         	cmp	r3, #0x0
  3e1fae: d005         	beq	0x3e1fbc <SoldierAIController::fire(float)+0x208> @ imm = #0xa
  3e1fb0: 9b01         	ldr	r3, [sp, #0x4]
  3e1fb2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1fb6: 4618         	mov	r0, r3
  3e1fb8: f012 f952    	bl	0x3f4260 <SoldierView::hideSight()> @ imm = #0x122a4
  3e1fbc: b002         	add	sp, #0x8
  3e1fbe: bd70         	pop	{r4, r5, r6, pc}

// ==== SoldierAIController::hasPower
//      file offset 0x3e1fc0 (= ELF address; Ghidra 0x3f1fc0), 32 bytes, Thumb-2
  3e1fc0: b082         	sub	sp, #0x8
  3e1fc2: 9001         	str	r0, [sp, #0x4]
  3e1fc4: 9b01         	ldr	r3, [sp, #0x4]
  3e1fc6: edd3 7a66    	vldr	s15, [r3, #408]
  3e1fca: eef5 7ac0    	vcmpe.f32	s15, #0
  3e1fce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e1fd2: bfd4         	ite	le
  3e1fd4: 2300         	movle	r3, #0x0
  3e1fd6: 2301         	movgt	r3, #0x1
  3e1fd8: b2db         	uxtb	r3, r3
  3e1fda: 4618         	mov	r0, r3
  3e1fdc: b002         	add	sp, #0x8
  3e1fde: 4770         	bx	lr

// ==== SoldierAIController::activatePlayer
//      file offset 0x3e1fe0 (= ELF address; Ghidra 0x3f1fe0), 48 bytes, Thumb-2
  3e1fe0: b500         	push	{lr}
  3e1fe2: b083         	sub	sp, #0xc
  3e1fe4: 9001         	str	r0, [sp, #0x4]
  3e1fe6: 9b01         	ldr	r3, [sp, #0x4]
  3e1fe8: f04f 0200    	mov.w	r2, #0x0
  3e1fec: f2c4 22c8    	movt	r2, #0x42c8
  3e1ff0: f8c3 2144    	str.w	r2, [r3, #0x144]
  3e1ff4: 9b01         	ldr	r3, [sp, #0x4]
  3e1ff6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e1ffa: 4618         	mov	r0, r3
  3e1ffc: 2101         	movs	r1, #0x1
  3e1ffe: f012 f85f    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0x120be
  3e2002: 9b01         	ldr	r3, [sp, #0x4]
  3e2004: 2200         	movs	r2, #0x0
  3e2006: f883 2159    	strb.w	r2, [r3, #0x159]
  3e200a: b003         	add	sp, #0xc
  3e200c: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierAIController::setAccelerometerY
//      file offset 0x3e2010 (= ELF address; Ghidra 0x3f2010), 142 bytes, Thumb-2
  3e2010: b082         	sub	sp, #0x8
  3e2012: 9001         	str	r0, [sp, #0x4]
  3e2014: 9100         	str	r1, [sp]
  3e2016: 9b01         	ldr	r3, [sp, #0x4]
  3e2018: f893 3104    	ldrb.w	r3, [r3, #0x104]
  3e201c: 2b00         	cmp	r3, #0x0
  3e201e: d03c         	beq	0x3e209a <SoldierAIController::setAccelerometerY(float)+0x8a> @ imm = #0x78
  3e2020: 9b01         	ldr	r3, [sp, #0x4]
  3e2022: ed93 7a65    	vldr	s14, [r3, #404]
  3e2026: eef1 7a00    	vmov.f32	s15, #4.000000e+00
  3e202a: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e202e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e2032: dd32         	ble	0x3e209a <SoldierAIController::setAccelerometerY(float)+0x8a> @ imm = #0x64
  3e2034: ed9d 7a00    	vldr	s14, [sp]
  3e2038: eefe 7a00    	vmov.f32	s15, #-5.000000e-01
  3e203c: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e2040: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e2044: d510         	bpl	0x3e2068 <SoldierAIController::setAccelerometerY(float)+0x58> @ imm = #0x20
  3e2046: 9b01         	ldr	r3, [sp, #0x4]
  3e2048: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e204c: f04f 0200    	mov.w	r2, #0x0
  3e2050: f04f 0300    	mov.w	r3, #0x0
  3e2054: f2c4 032e    	movt	r3, #0x402e
  3e2058: e9c1 2318    	strd	r2, r3, [r1, #96]
  3e205c: 9b01         	ldr	r3, [sp, #0x4]
  3e205e: f04f 0200    	mov.w	r2, #0x0
  3e2062: f8c3 2194    	str.w	r2, [r3, #0x194]
  3e2066: e018         	b	0x3e209a <SoldierAIController::setAccelerometerY(float)+0x8a> @ imm = #0x30
  3e2068: ed9d 7a00    	vldr	s14, [sp]
  3e206c: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3e2070: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e2074: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e2078: dd0f         	ble	0x3e209a <SoldierAIController::setAccelerometerY(float)+0x8a> @ imm = #0x1e
  3e207a: 9b01         	ldr	r3, [sp, #0x4]
  3e207c: f8d3 1138    	ldr.w	r1, [r3, #0x138]
  3e2080: f04f 0200    	mov.w	r2, #0x0
  3e2084: f04f 0300    	mov.w	r3, #0x0
  3e2088: f2cc 032e    	movt	r3, #0xc02e
  3e208c: e9c1 2318    	strd	r2, r3, [r1, #96]
  3e2090: 9b01         	ldr	r3, [sp, #0x4]
  3e2092: f04f 0200    	mov.w	r2, #0x0
  3e2096: f8c3 2194    	str.w	r2, [r3, #0x194]
  3e209a: b002         	add	sp, #0x8
  3e209c: 4770         	bx	lr

// ==== SoldierAIController::checkMeleeCollision
//      file offset 0x3e20a0 (= ELF address; Ghidra 0x3f20a0), 688 bytes, Thumb-2
  3e20a0: b5f0         	push	{r4, r5, r6, r7, lr}
  3e20a2: b0b1         	sub	sp, #0xc4
  3e20a4: 900f         	str	r0, [sp, #0x3c]
  3e20a6: 4da7         	ldr	r5, [pc, #0x29c]        @ 0x3e2344 <SoldierAIController::checkMeleeCollision()+0x2a4>
  3e20a8: 447d         	add	r5, pc
  3e20aa: f44f 7320    	mov.w	r3, #0x280
  3e20ae: 9314         	str	r3, [sp, #0x50]
  3e20b0: 9b0f         	ldr	r3, [sp, #0x3c]
  3e20b2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e20b6: 681b         	ldr	r3, [r3]
  3e20b8: f503 7348    	add.w	r3, r3, #0x320
  3e20bc: 681b         	ldr	r3, [r3]
  3e20be: 9a0f         	ldr	r2, [sp, #0x3c]
  3e20c0: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e20c4: a91c         	add	r1, sp, #0x70
  3e20c6: 4608         	mov	r0, r1
  3e20c8: 4611         	mov	r1, r2
  3e20ca: 4798         	blx	r3
  3e20cc: 9b0f         	ldr	r3, [sp, #0x3c]
  3e20ce: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e20d2: aa18         	add	r2, sp, #0x60
  3e20d4: ed9d 4b1c    	vldr	d4, [sp, #112]
  3e20d8: ed9d 5b1e    	vldr	d5, [sp, #120]
  3e20dc: ed93 6b0a    	vldr	d6, [r3, #40]
  3e20e0: ed93 7b0c    	vldr	d7, [r3, #48]
  3e20e4: 4610         	mov	r0, r2
  3e20e6: eeb0 0b44    	vmov.f64	d0, d4
  3e20ea: eeb0 1b45    	vmov.f64	d1, d5
  3e20ee: eeb0 2b46    	vmov.f64	d2, d6
  3e20f2: eeb0 3b47    	vmov.f64	d3, d7
  3e20f6: f7fb fcf7    	bl	0x3ddae8 <Slug::getVelocity()+0x2bc> @ imm = #-0x4612
  3e20fa: 9b0f         	ldr	r3, [sp, #0x3c]
  3e20fc: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e2100: ab20         	add	r3, sp, #0x80
  3e2102: ed9d 6b18    	vldr	d6, [sp, #96]
  3e2106: ed9d 7b1a    	vldr	d7, [sp, #104]
  3e210a: 4618         	mov	r0, r3
  3e210c: eeb0 0b46    	vmov.f64	d0, d6
  3e2110: eeb0 1b47    	vmov.f64	d1, d7
  3e2114: f7fb fd82    	bl	0x3ddc1c <Slug::getVelocity()+0x3f0> @ imm = #-0x44fc
  3e2118: 9b0f         	ldr	r3, [sp, #0x3c]
  3e211a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e211e: 681b         	ldr	r3, [r3]
  3e2120: f503 7328    	add.w	r3, r3, #0x2a0
  3e2124: 681b         	ldr	r3, [r3]
  3e2126: 9a0f         	ldr	r2, [sp, #0x3c]
  3e2128: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e212c: 4610         	mov	r0, r2
  3e212e: 4798         	blx	r3
  3e2130: 4603         	mov	r3, r0
  3e2132: ee07 3a90    	vmov	s15, r3
  3e2136: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3e213a: 9b0f         	ldr	r3, [sp, #0x3c]
  3e213c: edd3 6a5e    	vldr	s13, [r3, #376]
  3e2140: eddf 7a7f    	vldr	s15, [pc, #508]         @ 0x3e2340 <SoldierAIController::checkMeleeCollision()+0x2a0>
  3e2144: ee66 6aa7    	vmul.f32	s13, s13, s15
  3e2148: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e214c: ee76 7aa7    	vadd.f32	s15, s13, s15
  3e2150: eeb4 7ae7    	vcmpe.f32	s14, s15
  3e2154: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3e2158: dd0b         	ble	0x3e2172 <SoldierAIController::checkMeleeCollision()+0xd2> @ imm = #0x16
  3e215a: 9b0f         	ldr	r3, [sp, #0x3c]
  3e215c: ed93 7a5e    	vldr	s14, [r3, #376]
  3e2160: eddf 7a77    	vldr	s15, [pc, #476]         @ 0x3e2340 <SoldierAIController::checkMeleeCollision()+0x2a0>
  3e2164: ee27 7a27    	vmul.f32	s14, s14, s15
  3e2168: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3e216c: ee77 7a27    	vadd.f32	s15, s14, s15
  3e2170: e010         	b	0x3e2194 <SoldierAIController::checkMeleeCollision()+0xf4> @ imm = #0x20
  3e2172: 9b0f         	ldr	r3, [sp, #0x3c]
  3e2174: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e2178: 681b         	ldr	r3, [r3]
  3e217a: f503 7328    	add.w	r3, r3, #0x2a0
  3e217e: 681b         	ldr	r3, [r3]
  3e2180: 9a0f         	ldr	r2, [sp, #0x3c]
  3e2182: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e2186: 4610         	mov	r0, r2
  3e2188: 4798         	blx	r3
  3e218a: 4603         	mov	r3, r0
  3e218c: ee07 3a10    	vmov	s14, r3
  3e2190: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e2194: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e2198: ab24         	add	r3, sp, #0x90
  3e219a: ed9d 5b20    	vldr	d5, [sp, #128]
  3e219e: ed9d 6b22    	vldr	d6, [sp, #136]
  3e21a2: 4618         	mov	r0, r3
  3e21a4: eeb0 0b45    	vmov.f64	d0, d5
  3e21a8: eeb0 1b46    	vmov.f64	d1, d6
  3e21ac: eeb0 2b47    	vmov.f64	d2, d7
  3e21b0: f7fb fcc6    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x4674
  3e21b4: 9e0f         	ldr	r6, [sp, #0x3c]
  3e21b6: ab0a         	add	r3, sp, #0x28
  3e21b8: ed94 4b0a    	vldr	d4, [r4, #40]
  3e21bc: ed94 5b0c    	vldr	d5, [r4, #48]
  3e21c0: ed9d 6b24    	vldr	d6, [sp, #144]
  3e21c4: ed9d 7b26    	vldr	d7, [sp, #152]
  3e21c8: 4618         	mov	r0, r3
  3e21ca: eeb0 0b44    	vmov.f64	d0, d4
  3e21ce: eeb0 1b45    	vmov.f64	d1, d5
  3e21d2: eeb0 2b46    	vmov.f64	d2, d6
  3e21d6: eeb0 3b47    	vmov.f64	d3, d7
  3e21da: f7fb fc59    	bl	0x3dda90 <Slug::getVelocity()+0x264> @ imm = #-0x474e
  3e21de: f506 74b4    	add.w	r4, r6, #0x168
  3e21e2: ab0a         	add	r3, sp, #0x28
  3e21e4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e21e6: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e21ea: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3e2348 <SoldierAIController::checkMeleeCollision()+0x2a8>
  3e21ec: 58eb         	ldr	r3, [r5, r3]
  3e21ee: 681e         	ldr	r6, [r3]
  3e21f0: 9b0f         	ldr	r3, [sp, #0x3c]
  3e21f2: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e21f6: 9f14         	ldr	r7, [sp, #0x50]
  3e21f8: 9b0f         	ldr	r3, [sp, #0x3c]
  3e21fa: ad02         	add	r5, sp, #0x8
  3e21fc: f503 73b4    	add.w	r3, r3, #0x168
  3e2200: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e2202: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e2206: 9706         	str	r7, [sp, #0x18]
  3e2208: 2300         	movs	r3, #0x0
  3e220a: 9307         	str	r3, [sp, #0x1c]
  3e220c: ab28         	add	r3, sp, #0xa0
  3e220e: 9308         	str	r3, [sp, #0x20]
  3e2210: 466b         	mov	r3, sp
  3e2212: f104 0230    	add.w	r2, r4, #0x30
  3e2216: e892 0003    	ldm.w	r2, {r0, r1}
  3e221a: e883 0003    	stm.w	r3, {r0, r1}
  3e221e: f104 0328    	add.w	r3, r4, #0x28
  3e2222: cb0c         	ldm	r3, {r2, r3}
  3e2224: 4630         	mov	r0, r6
  3e2226: f2f3 fe97    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x2f3d2e
  3e222a: 4603         	mov	r3, r0
  3e222c: 9315         	str	r3, [sp, #0x54]
  3e222e: 2300         	movs	r3, #0x0
  3e2230: 9316         	str	r3, [sp, #0x58]
  3e2232: 2300         	movs	r3, #0x0
  3e2234: 9317         	str	r3, [sp, #0x5c]
  3e2236: ab13         	add	r3, sp, #0x4c
  3e2238: 4618         	mov	r0, r3
  3e223a: f3a8 f8db    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3a81b6
  3e223e: aa10         	add	r2, sp, #0x40
  3e2240: ab13         	add	r3, sp, #0x4c
  3e2242: 4610         	mov	r0, r2
  3e2244: 4a41         	ldr	r2, [pc, #0x104]        @ 0x3e234c <SoldierAIController::checkMeleeCollision()+0x2ac>
  3e2246: 447a         	add	r2, pc
  3e2248: 4611         	mov	r1, r2
  3e224a: 461a         	mov	r2, r3
  3e224c: f3d4 fc08    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3d4810
  3e2250: ab13         	add	r3, sp, #0x4c
  3e2252: 4618         	mov	r0, r3
  3e2254: f3a8 f8d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a81a4
  3e2258: 9b15         	ldr	r3, [sp, #0x54]
  3e225a: 2b00         	cmp	r3, #0x0
  3e225c: d04e         	beq	0x3e22fc <SoldierAIController::checkMeleeCollision()+0x25c> @ imm = #0x9c
  3e225e: 9b15         	ldr	r3, [sp, #0x54]
  3e2260: 6ddb         	ldr	r3, [r3, #0x5c]
  3e2262: 2b84         	cmp	r3, #0x84
  3e2264: d02f         	beq	0x3e22c6 <SoldierAIController::checkMeleeCollision()+0x226> @ imm = #0x5e
  3e2266: f240 2241    	movw	r2, #0x241
  3e226a: 4293         	cmp	r3, r2
  3e226c: d000         	beq	0x3e2270 <SoldierAIController::checkMeleeCollision()+0x1d0> @ imm = #0x0
  3e226e: e045         	b	0x3e22fc <SoldierAIController::checkMeleeCollision()+0x25c> @ imm = #0x8a
  3e2270: 9b15         	ldr	r3, [sp, #0x54]
  3e2272: 6d1b         	ldr	r3, [r3, #0x50]
  3e2274: 9316         	str	r3, [sp, #0x58]
  3e2276: 9b16         	ldr	r3, [sp, #0x58]
  3e2278: 681b         	ldr	r3, [r3]
  3e227a: f503 73e0    	add.w	r3, r3, #0x1c0
  3e227e: 681b         	ldr	r3, [r3]
  3e2280: 9a16         	ldr	r2, [sp, #0x58]
  3e2282: a911         	add	r1, sp, #0x44
  3e2284: 4608         	mov	r0, r1
  3e2286: 4611         	mov	r1, r2
  3e2288: 4798         	blx	r3
  3e228a: aa10         	add	r2, sp, #0x40
  3e228c: ab11         	add	r3, sp, #0x44
  3e228e: 4610         	mov	r0, r2
  3e2290: 4619         	mov	r1, r3
  3e2292: f3d3 f829    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x3d3052
  3e2296: ab11         	add	r3, sp, #0x44
  3e2298: 4618         	mov	r0, r3
  3e229a: f3d3 fb3b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3676
  3e229e: 9b0f         	ldr	r3, [sp, #0x3c]
  3e22a0: 681b         	ldr	r3, [r3]
  3e22a2: f503 7332    	add.w	r3, r3, #0x2c8
  3e22a6: 681c         	ldr	r4, [r3]
  3e22a8: aa12         	add	r2, sp, #0x48
  3e22aa: ab10         	add	r3, sp, #0x40
  3e22ac: 4610         	mov	r0, r2
  3e22ae: 4619         	mov	r1, r3
  3e22b0: f3d4 f91a    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3d4234
  3e22b4: ab12         	add	r3, sp, #0x48
  3e22b6: 980f         	ldr	r0, [sp, #0x3c]
  3e22b8: 4619         	mov	r1, r3
  3e22ba: 47a0         	blx	r4
  3e22bc: ab12         	add	r3, sp, #0x48
  3e22be: 4618         	mov	r0, r3
  3e22c0: f3d3 fb28    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3650
  3e22c4: e01a         	b	0x3e22fc <SoldierAIController::checkMeleeCollision()+0x25c> @ imm = #0x34
  3e22c6: 9b15         	ldr	r3, [sp, #0x54]
  3e22c8: 6d1b         	ldr	r3, [r3, #0x50]
  3e22ca: 9317         	str	r3, [sp, #0x5c]
  3e22cc: 9b0f         	ldr	r3, [sp, #0x3c]
  3e22ce: 681b         	ldr	r3, [r3]
  3e22d0: f503 7332    	add.w	r3, r3, #0x2c8
  3e22d4: 681c         	ldr	r4, [r3]
  3e22d6: 9b0f         	ldr	r3, [sp, #0x3c]
  3e22d8: 681b         	ldr	r3, [r3]
  3e22da: f503 73e0    	add.w	r3, r3, #0x1c0
  3e22de: 681b         	ldr	r3, [r3]
  3e22e0: 9a0f         	ldr	r2, [sp, #0x3c]
  3e22e2: a913         	add	r1, sp, #0x4c
  3e22e4: 4608         	mov	r0, r1
  3e22e6: 4611         	mov	r1, r2
  3e22e8: 4798         	blx	r3
  3e22ea: ab13         	add	r3, sp, #0x4c
  3e22ec: 980f         	ldr	r0, [sp, #0x3c]
  3e22ee: 4619         	mov	r1, r3
  3e22f0: 47a0         	blx	r4
  3e22f2: ab13         	add	r3, sp, #0x4c
  3e22f4: 4618         	mov	r0, r3
  3e22f6: f3d3 fb0d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d361a
  3e22fa: bf00         	nop
  3e22fc: ab10         	add	r3, sp, #0x40
  3e22fe: 4618         	mov	r0, r3
  3e2300: f3d3 fb08    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d3610
  3e2304: e01a         	b	0x3e233c <SoldierAIController::checkMeleeCollision()+0x29c> @ imm = #0x34
  3e2306: ab13         	add	r3, sp, #0x4c
  3e2308: 4618         	mov	r0, r3
  3e230a: f3a8 f877    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3a80ee
  3e230e: f3a5 fecd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a5d9a
  3e2312: ab11         	add	r3, sp, #0x44
  3e2314: 4618         	mov	r0, r3
  3e2316: f3d3 fafd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d35fa
  3e231a: e009         	b	0x3e2330 <SoldierAIController::checkMeleeCollision()+0x290> @ imm = #0x12
  3e231c: ab12         	add	r3, sp, #0x48
  3e231e: 4618         	mov	r0, r3
  3e2320: f3d3 faf8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d35f0
  3e2324: e004         	b	0x3e2330 <SoldierAIController::checkMeleeCollision()+0x290> @ imm = #0x8
  3e2326: ab13         	add	r3, sp, #0x4c
  3e2328: 4618         	mov	r0, r3
  3e232a: f3d3 faf3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d35e6
  3e232e: e7ff         	b	0x3e2330 <SoldierAIController::checkMeleeCollision()+0x290> @ imm = #-0x2
  3e2330: ab10         	add	r3, sp, #0x40
  3e2332: 4618         	mov	r0, r3
  3e2334: f3d3 faee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d35dc
  3e2338: f3a5 feb8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a5d70
  3e233c: b031         	add	sp, #0xc4
  3e233e: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3e233f); words below are literal-pool data ---
  3e2340: 0000         	movs	r0, r0
  3e2342: 4296         	cmp	r6, r2
  3e2344: 0960         	lsrs	r0, r4, #0x5
  3e2346: 0055         	lsls	r5, r2, #0x1
  3e2348: da00         	bge	0x3e234c <SoldierAIController::checkMeleeCollision()+0x2ac> @ imm = #0x0
  3e234a: ffff 5c8e    	<unknown>
  3e234e: 003f         	movs	r7, r7

// ==== SoldierAIController::meleeAttack
//      file offset 0x3e2350 (= ELF address; Ghidra 0x3f2350), 364 bytes, Thumb-2
  3e2350: b570         	push	{r4, r5, r6, lr}
  3e2352: b092         	sub	sp, #0x48
  3e2354: 9003         	str	r0, [sp, #0xc]
  3e2356: 4e55         	ldr	r6, [pc, #0x154]        @ 0x3e24ac <SoldierAIController::meleeAttack()+0x15c>
  3e2358: 447e         	add	r6, pc
  3e235a: 9b03         	ldr	r3, [sp, #0xc]
  3e235c: ed93 7a44    	vldr	s14, [r3, #272]
  3e2360: eddf 7a50    	vldr	s15, [pc, #320]         @ 0x3e24a4 <SoldierAIController::meleeAttack()+0x154>
  3e2364: ee67 7a27    	vmul.f32	s15, s14, s15
  3e2368: eef1 7a67    	vneg.f32	s15, s15
  3e236c: edcd 7a05    	vstr	s15, [sp, #20]
  3e2370: eddd 7a05    	vldr	s15, [sp, #20]
  3e2374: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e2378: ec51 0b17    	vmov	r0, r1, d7
  3e237c: f6f3 edc4    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x10c478
  3e2380: 4604         	mov	r4, r0
  3e2382: 460d         	mov	r5, r1
  3e2384: eddd 7a05    	vldr	s15, [sp, #20]
  3e2388: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e238c: ec51 0b17    	vmov	r0, r1, d7
  3e2390: f6f3 edc0    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x10c480
  3e2394: 4602         	mov	r2, r0
  3e2396: 460b         	mov	r3, r1
  3e2398: a90a         	add	r1, sp, #0x28
  3e239a: 4608         	mov	r0, r1
  3e239c: ec45 4b10    	vmov	d0, r4, r5
  3e23a0: ec43 2b11    	vmov	d1, r2, r3
  3e23a4: f7fb fb60    	bl	0x3dda68 <Slug::getVelocity()+0x23c> @ imm = #-0x4940
  3e23a8: ab06         	add	r3, sp, #0x18
  3e23aa: ed9d 6b0a    	vldr	d6, [sp, #40]
  3e23ae: ed9d 7b0c    	vldr	d7, [sp, #48]
  3e23b2: 4618         	mov	r0, r3
  3e23b4: eeb0 0b46    	vmov.f64	d0, d6
  3e23b8: eeb0 1b47    	vmov.f64	d1, d7
  3e23bc: f7fb fc2e    	bl	0x3ddc1c <Slug::getVelocity()+0x3f0> @ imm = #-0x47a4
  3e23c0: 9b03         	ldr	r3, [sp, #0xc]
  3e23c2: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e23c6: 9b03         	ldr	r3, [sp, #0xc]
  3e23c8: ed93 7a6d    	vldr	s14, [r3, #436]
  3e23cc: eddf 7a36    	vldr	s15, [pc, #216]         @ 0x3e24a8 <SoldierAIController::meleeAttack()+0x158>
  3e23d0: ee67 7a27    	vmul.f32	s15, s14, s15
  3e23d4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e23d8: ab0e         	add	r3, sp, #0x38
  3e23da: ed9d 5b06    	vldr	d5, [sp, #24]
  3e23de: ed9d 6b08    	vldr	d6, [sp, #32]
  3e23e2: 4618         	mov	r0, r3
  3e23e4: eeb0 0b45    	vmov.f64	d0, d5
  3e23e8: eeb0 1b46    	vmov.f64	d1, d6
  3e23ec: eeb0 2b47    	vmov.f64	d2, d7
  3e23f0: f7fb fba6    	bl	0x3ddb40 <Slug::getVelocity()+0x314> @ imm = #-0x48b4
  3e23f4: ed9d 4b0e    	vldr	d4, [sp, #56]
  3e23f8: ed9d 5b10    	vldr	d5, [sp, #64]
  3e23fc: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x3e24b0 <SoldierAIController::meleeAttack()+0x160>
  3e23fe: 447b         	add	r3, pc
  3e2400: ed93 6b00    	vldr	d6, [r3]
  3e2404: ed93 7b02    	vldr	d7, [r3, #8]
  3e2408: 4620         	mov	r0, r4
  3e240a: eeb0 0b44    	vmov.f64	d0, d4
  3e240e: eeb0 1b45    	vmov.f64	d1, d5
  3e2412: eeb0 2b46    	vmov.f64	d2, d6
  3e2416: eeb0 3b47    	vmov.f64	d3, d7
  3e241a: f7fb fc8f    	bl	0x3ddd3c <Slug::getVelocity()+0x510> @ imm = #-0x46e2
  3e241e: 4b25         	ldr	r3, [pc, #0x94]         @ 0x3e24b4 <SoldierAIController::meleeAttack()+0x164>
  3e2420: 58f3         	ldr	r3, [r6, r3]
  3e2422: 681c         	ldr	r4, [r3]
  3e2424: 9b03         	ldr	r3, [sp, #0xc]
  3e2426: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e242a: 466a         	mov	r2, sp
  3e242c: f103 0130    	add.w	r1, r3, #0x30
  3e2430: c903         	ldm	r1, {r0, r1}
  3e2432: e882 0003    	stm.w	r2, {r0, r1}
  3e2436: 3328         	adds	r3, #0x28
  3e2438: cb0c         	ldm	r3, {r2, r3}
  3e243a: 4620         	mov	r0, r4
  3e243c: 2102         	movs	r1, #0x2
  3e243e: f015 fddb    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x15bb6
  3e2442: 9b03         	ldr	r3, [sp, #0xc]
  3e2444: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e2448: 4618         	mov	r0, r3
  3e244a: f04f 0200    	mov.w	r2, #0x0
  3e244e: f04f 0300    	mov.w	r3, #0x0
  3e2452: f2c4 0369    	movt	r3, #0x4069
  3e2456: f011 fd05    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0x11a0a
  3e245a: 9b03         	ldr	r3, [sp, #0xc]
  3e245c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e2460: 4618         	mov	r0, r3
  3e2462: f04f 0100    	mov.w	r1, #0x0
  3e2466: f2cc 21b4    	movt	r1, #0xc2b4
  3e246a: f011 fc33    	bl	0x3f3cd4 <SoldierView::setFiringAngleOffset(float)> @ imm = #0x11866
  3e246e: 9b03         	ldr	r3, [sp, #0xc]
  3e2470: 2201         	movs	r2, #0x1
  3e2472: f883 2166    	strb.w	r2, [r3, #0x166]
  3e2476: 9b03         	ldr	r3, [sp, #0xc]
  3e2478: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e247c: 9a03         	ldr	r2, [sp, #0xc]
  3e247e: f502 74b4    	add.w	r4, r2, #0x168
  3e2482: 3328         	adds	r3, #0x28
  3e2484: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e2486: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e248a: f1fe f911    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fe222
  3e248e: 4603         	mov	r3, r0
  3e2490: 4618         	mov	r0, r3
  3e2492: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3e24b8 <SoldierAIController::meleeAttack()+0x168>
  3e2494: 447b         	add	r3, pc
  3e2496: 4619         	mov	r1, r3
  3e2498: 2200         	movs	r2, #0x0
  3e249a: f1fe fb47    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fe68e
  3e249e: b012         	add	sp, #0x48
  3e24a0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3e24a1); words below are literal-pool data ---
  3e24a2: bf00         	nop
  3e24a4: fa35 3c8e    	<unknown>
  3e24a8: 0000         	movs	r0, r0
  3e24aa: 4348         	muls	r0, r1, r0
  3e24ac: 06b0         	lsls	r0, r6, #0x1a
  3e24ae: 0055         	lsls	r5, r2, #0x1
  3e24b0: 5bae         	ldrh	r6, [r5, r6]
  3e24b2: 003f         	movs	r7, r7
  3e24b4: d730         	bvc	0x3e2518 <SoldierAIController::endMeleeAttack(std::string)+0x5c> @ imm = #0x60
  3e24b6: ffff 5a90    	<unknown>
  3e24ba: 003f         	movs	r7, r7

// ==== SoldierAIController::endMeleeAttack
//      file offset 0x3e24bc (= ELF address; Ghidra 0x3f24bc), 424 bytes, Thumb-2
  3e24bc: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  3e24c0: b095         	sub	sp, #0x54
  3e24c2: 900b         	str	r0, [sp, #0x2c]
  3e24c4: 910a         	str	r1, [sp, #0x28]
  3e24c6: 9b0b         	ldr	r3, [sp, #0x2c]
  3e24c8: f04f 0200    	mov.w	r2, #0x0
  3e24cc: f8c3 2178    	str.w	r2, [r3, #0x178]
  3e24d0: 9b0b         	ldr	r3, [sp, #0x2c]
  3e24d2: 2200         	movs	r2, #0x0
  3e24d4: f883 2166    	strb.w	r2, [r3, #0x166]
  3e24d8: 980a         	ldr	r0, [sp, #0x28]
  3e24da: f3d2 fdbf    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x3d2b7e
  3e24de: 4603         	mov	r3, r0
  3e24e0: 2b00         	cmp	r3, #0x0
  3e24e2: bf0c         	ite	eq
  3e24e4: 2300         	moveq	r3, #0x0
  3e24e6: 2301         	movne	r3, #0x1
  3e24e8: b2db         	uxtb	r3, r3
  3e24ea: 2b00         	cmp	r3, #0x0
  3e24ec: f000 80b2    	beq.w	0x3e2654 <SoldierAIController::endMeleeAttack(std::string)+0x198> @ imm = #0x164
  3e24f0: 9b0b         	ldr	r3, [sp, #0x2c]
  3e24f2: ac10         	add	r4, sp, #0x40
  3e24f4: f503 73b4    	add.w	r3, r3, #0x168
  3e24f8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e24fa: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e24fe: 9b0b         	ldr	r3, [sp, #0x2c]
  3e2500: 681b         	ldr	r3, [r3]
  3e2502: f503 730f    	add.w	r3, r3, #0x23c
  3e2506: 681b         	ldr	r3, [r3]
  3e2508: 980b         	ldr	r0, [sp, #0x2c]
  3e250a: 4798         	blx	r3
  3e250c: ee07 0a10    	vmov	s14, r0
  3e2510: eddf 7a52    	vldr	s15, [pc, #328]         @ 0x3e265c <SoldierAIController::endMeleeAttack(std::string)+0x1a0>
  3e2514: ee67 7a27    	vmul.f32	s15, s14, s15
  3e2518: eef1 7a67    	vneg.f32	s15, s15
  3e251c: edcd 7a0d    	vstr	s15, [sp, #52]
  3e2520: 9b0b         	ldr	r3, [sp, #0x2c]
  3e2522: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e2526: 681b         	ldr	r3, [r3]
  3e2528: f503 7327    	add.w	r3, r3, #0x29c
  3e252c: 681b         	ldr	r3, [r3]
  3e252e: 9a0b         	ldr	r2, [sp, #0x2c]
  3e2530: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e2534: 4610         	mov	r0, r2
  3e2536: 4798         	blx	r3
  3e2538: 4603         	mov	r3, r0
  3e253a: ee07 3a10    	vmov	s14, r3
  3e253e: eef8 7ac7    	vcvt.f32.s32	s15, s14
  3e2542: edcd 7a0e    	vstr	s15, [sp, #56]
  3e2546: ed9d 7b10    	vldr	d7, [sp, #64]
  3e254a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e254e: ee17 0a90    	vmov	r0, s15
  3e2552: f6fa fb97    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1058d2
  3e2556: 4607         	mov	r7, r0
  3e2558: ed9d 7b12    	vldr	d7, [sp, #72]
  3e255c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e2560: ee17 0a90    	vmov	r0, s15
  3e2564: f6fa fb8e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x1058e4
  3e2568: 4606         	mov	r6, r0
  3e256a: eddd 7a0d    	vldr	s15, [sp, #52]
  3e256e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e2572: ec51 0b17    	vmov	r0, r1, d7
  3e2576: f6f3 ecc8    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x10c670
  3e257a: ec41 0b17    	vmov	d7, r0, r1
  3e257e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e2582: ee17 0a90    	vmov	r0, s15
  3e2586: f6fa fb7d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105906
  3e258a: 4605         	mov	r5, r0
  3e258c: eddd 7a0d    	vldr	s15, [sp, #52]
  3e2590: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e2594: ec51 0b17    	vmov	r0, r1, d7
  3e2598: f6f3 ecbc    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x10c688
  3e259c: ec41 0b17    	vmov	d7, r0, r1
  3e25a0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e25a4: ee17 0a90    	vmov	r0, s15
  3e25a8: f6fa fb6c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105928
  3e25ac: 4604         	mov	r4, r0
  3e25ae: 2000         	movs	r0, #0x0
  3e25b0: f702 fbaa    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xfd8ac
  3e25b4: 9009         	str	r0, [sp, #0x24]
  3e25b6: eddd 7a0e    	vldr	s15, [sp, #56]
  3e25ba: eefd 7ae7    	vcvt.s32.f32	s15, s15
  3e25be: ee17 3a90    	vmov	r3, s15
  3e25c2: 4618         	mov	r0, r3
  3e25c4: f702 fba0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xfd8c0
  3e25c8: 4683         	mov	r11, r0
  3e25ca: 2000         	movs	r0, #0x0
  3e25cc: f702 fb9c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xfd8c8
  3e25d0: 4682         	mov	r10, r0
  3e25d2: 2000         	movs	r0, #0x0
  3e25d4: f702 fb98    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xfd8d0
  3e25d8: 4681         	mov	r9, r0
  3e25da: 980a         	ldr	r0, [sp, #0x28]
  3e25dc: f1b7 fa2e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1b745c
  3e25e0: 4680         	mov	r8, r0
  3e25e2: 9b0b         	ldr	r3, [sp, #0x2c]
  3e25e4: 681b         	ldr	r3, [r3]
  3e25e6: f503 73e0    	add.w	r3, r3, #0x1c0
  3e25ea: 681b         	ldr	r3, [r3]
  3e25ec: 9a0b         	ldr	r2, [sp, #0x2c]
  3e25ee: a90c         	add	r1, sp, #0x30
  3e25f0: 4608         	mov	r0, r1
  3e25f2: 4611         	mov	r1, r2
  3e25f4: 4798         	blx	r3
  3e25f6: ab0c         	add	r3, sp, #0x30
  3e25f8: 4618         	mov	r0, r3
  3e25fa: f1b7 fa1f    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1b743e
  3e25fe: 4603         	mov	r3, r0
  3e2600: 9a09         	ldr	r2, [sp, #0x24]
  3e2602: 9200         	str	r2, [sp]
  3e2604: f8cd b004    	str.w	r11, [sp, #0x4]
  3e2608: f8cd a008    	str.w	r10, [sp, #0x8]
  3e260c: f8cd 900c    	str.w	r9, [sp, #0xc]
  3e2610: f8cd 8010    	str.w	r8, [sp, #0x10]
  3e2614: 9305         	str	r3, [sp, #0x14]
  3e2616: 2300         	movs	r3, #0x0
  3e2618: 9306         	str	r3, [sp, #0x18]
  3e261a: 4638         	mov	r0, r7
  3e261c: 4631         	mov	r1, r6
  3e261e: 462a         	mov	r2, r5
  3e2620: 4623         	mov	r3, r4
  3e2622: f1b7 fbf5    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1b77ea
  3e2626: 4603         	mov	r3, r0
  3e2628: 930f         	str	r3, [sp, #0x3c]
  3e262a: ab0c         	add	r3, sp, #0x30
  3e262c: 4618         	mov	r0, r3
  3e262e: f3d3 f971    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d32e2
  3e2632: f1fe f83d    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fe07a
  3e2636: 4603         	mov	r3, r0
  3e2638: 4618         	mov	r0, r3
  3e263a: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3e2660 <SoldierAIController::endMeleeAttack(std::string)+0x1a4>
  3e263c: 447b         	add	r3, pc
  3e263e: 4619         	mov	r1, r3
  3e2640: 9a0f         	ldr	r2, [sp, #0x3c]
  3e2642: f1fe fa73    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fe4e6
  3e2646: e005         	b	0x3e2654 <SoldierAIController::endMeleeAttack(std::string)+0x198> @ imm = #0xa
  3e2648: ab0c         	add	r3, sp, #0x30
  3e264a: 4618         	mov	r0, r3
  3e264c: f3d3 f962    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d32c4
  3e2650: f3a5 fd2c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a5a58
  3e2654: b015         	add	sp, #0x54
  3e2656: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x3e2659); words below are literal-pool data ---
  3e265a: bf00         	nop
  3e265c: fa35 3c8e    	<unknown>
  3e2660: 58f4         	ldr	r4, [r6, r3]
  3e2662: 003f         	movs	r7, r7

// ==== SoldierAIController::getMassFactor
//      file offset 0x3e2664 (= ELF address; Ghidra 0x3f2664), 16 bytes, Thumb-2
  3e2664: b082         	sub	sp, #0x8
  3e2666: 9001         	str	r0, [sp, #0x4]
  3e2668: 9b01         	ldr	r3, [sp, #0x4]
  3e266a: f8d3 31b4    	ldr.w	r3, [r3, #0x1b4]
  3e266e: 4618         	mov	r0, r3
  3e2670: b002         	add	sp, #0x8
  3e2672: 4770         	bx	lr

// ==== SoldierAIController::throwDual
//      file offset 0x3e2674 (= ELF address; Ghidra 0x3f2674), 500 bytes, Thumb-2
  3e2674: e92d 43f0    	push.w	{r4, r5, r6, r7, r8, r9, lr}
  3e2678: b08d         	sub	sp, #0x34
  3e267a: 9005         	str	r0, [sp, #0x14]
  3e267c: 4a76         	ldr	r2, [pc, #0x1d8]        @ 0x3e2858 <SoldierAIController::throwDual()+0x1e4>
  3e267e: 447a         	add	r2, pc
  3e2680: 9b05         	ldr	r3, [sp, #0x14]
  3e2682: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e2686: 2b00         	cmp	r3, #0x0
  3e2688: f340 80e2    	ble.w	0x3e2850 <SoldierAIController::throwDual()+0x1dc> @ imm = #0x1c4
  3e268c: 9b05         	ldr	r3, [sp, #0x14]
  3e268e: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e2692: 1e59         	subs	r1, r3, #0x1
  3e2694: 9b05         	ldr	r3, [sp, #0x14]
  3e2696: f8c3 1160    	str.w	r1, [r3, #0x160]
  3e269a: 4b70         	ldr	r3, [pc, #0x1c0]        @ 0x3e285c <SoldierAIController::throwDual()+0x1e8>
  3e269c: 58d3         	ldr	r3, [r2, r3]
  3e269e: 681c         	ldr	r4, [r3]
  3e26a0: 9b05         	ldr	r3, [sp, #0x14]
  3e26a2: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e26a6: 466a         	mov	r2, sp
  3e26a8: f103 0130    	add.w	r1, r3, #0x30
  3e26ac: c903         	ldm	r1, {r0, r1}
  3e26ae: e882 0003    	stm.w	r2, {r0, r1}
  3e26b2: 3328         	adds	r3, #0x28
  3e26b4: cb0c         	ldm	r3, {r2, r3}
  3e26b6: 4620         	mov	r0, r4
  3e26b8: 2103         	movs	r1, #0x3
  3e26ba: f015 fc9d    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x1593a
  3e26be: 9b05         	ldr	r3, [sp, #0x14]
  3e26c0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e26c4: 4618         	mov	r0, r3
  3e26c6: f04f 0200    	mov.w	r2, #0x0
  3e26ca: f04f 0300    	mov.w	r3, #0x0
  3e26ce: f2c4 0359    	movt	r3, #0x4059
  3e26d2: f011 fbd5    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0x117aa
  3e26d6: 9b05         	ldr	r3, [sp, #0x14]
  3e26d8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3e26dc: 2b00         	cmp	r3, #0x0
  3e26de: d013         	beq	0x3e2708 <SoldierAIController::throwDual()+0x94> @ imm = #0x26
  3e26e0: 9b05         	ldr	r3, [sp, #0x14]
  3e26e2: 681b         	ldr	r3, [r3]
  3e26e4: f503 7303    	add.w	r3, r3, #0x20c
  3e26e8: 681b         	ldr	r3, [r3]
  3e26ea: 9805         	ldr	r0, [sp, #0x14]
  3e26ec: 4798         	blx	r3
  3e26ee: f1fd ffdf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fdfbe
  3e26f2: 4602         	mov	r2, r0
  3e26f4: 9b05         	ldr	r3, [sp, #0x14]
  3e26f6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e26fa: 4610         	mov	r0, r2
  3e26fc: 4a58         	ldr	r2, [pc, #0x160]        @ 0x3e2860 <SoldierAIController::throwDual()+0x1ec>
  3e26fe: 447a         	add	r2, pc
  3e2700: 4611         	mov	r1, r2
  3e2702: 461a         	mov	r2, r3
  3e2704: f1fe fa12    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fe424
  3e2708: 9b05         	ldr	r3, [sp, #0x14]
  3e270a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e270e: aa08         	add	r2, sp, #0x20
  3e2710: 4610         	mov	r0, r2
  3e2712: 4619         	mov	r1, r3
  3e2714: f011 fc5c    	bl	0x3f3fd0 <SoldierView::getDualArmPoint()> @ imm = #0x118b8
  3e2718: ed9d 7b08    	vldr	d7, [sp, #32]
  3e271c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e2720: ee17 0a90    	vmov	r0, s15
  3e2724: f6fa faae    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105aa4
  3e2728: 4607         	mov	r7, r0
  3e272a: ed9d 7b0a    	vldr	d7, [sp, #40]
  3e272e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e2732: ee17 0a90    	vmov	r0, s15
  3e2736: f6fa faa5    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105ab6
  3e273a: 4606         	mov	r6, r0
  3e273c: 9b05         	ldr	r3, [sp, #0x14]
  3e273e: 681b         	ldr	r3, [r3]
  3e2740: f503 730f    	add.w	r3, r3, #0x23c
  3e2744: 681b         	ldr	r3, [r3]
  3e2746: 9805         	ldr	r0, [sp, #0x14]
  3e2748: 4798         	blx	r3
  3e274a: 4603         	mov	r3, r0
  3e274c: 4618         	mov	r0, r3
  3e274e: f6fa fa99    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105ace
  3e2752: 4605         	mov	r5, r0
  3e2754: 9b05         	ldr	r3, [sp, #0x14]
  3e2756: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e275a: ed93 7b0e    	vldr	d7, [r3, #56]
  3e275e: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e2762: ee17 0a90    	vmov	r0, s15
  3e2766: f6fa fa8d    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105ae6
  3e276a: 4604         	mov	r4, r0
  3e276c: 9b05         	ldr	r3, [sp, #0x14]
  3e276e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e2772: ed93 7b10    	vldr	d7, [r3, #64]
  3e2776: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3e277a: ee17 0a90    	vmov	r0, s15
  3e277e: f6fa fa81    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x105afe
  3e2782: 4681         	mov	r9, r0
  3e2784: 9b05         	ldr	r3, [sp, #0x14]
  3e2786: 681b         	ldr	r3, [r3]
  3e2788: f503 73e0    	add.w	r3, r3, #0x1c0
  3e278c: 681b         	ldr	r3, [r3]
  3e278e: 9a05         	ldr	r2, [sp, #0x14]
  3e2790: a906         	add	r1, sp, #0x18
  3e2792: 4608         	mov	r0, r1
  3e2794: 4611         	mov	r1, r2
  3e2796: 4798         	blx	r3
  3e2798: ab06         	add	r3, sp, #0x18
  3e279a: 4618         	mov	r0, r3
  3e279c: f1b7 f94e    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1b729c
  3e27a0: 4680         	mov	r8, r0
  3e27a2: 9b05         	ldr	r3, [sp, #0x14]
  3e27a4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e27a8: 681b         	ldr	r3, [r3]
  3e27aa: f503 731f    	add.w	r3, r3, #0x27c
  3e27ae: 681b         	ldr	r3, [r3]
  3e27b0: 9a05         	ldr	r2, [sp, #0x14]
  3e27b2: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e27b6: 4610         	mov	r0, r2
  3e27b8: 4798         	blx	r3
  3e27ba: 4603         	mov	r3, r0
  3e27bc: 4618         	mov	r0, r3
  3e27be: f702 faa3    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xfdaba
  3e27c2: 4603         	mov	r3, r0
  3e27c4: f8cd 9000    	str.w	r9, [sp]
  3e27c8: f8cd 8004    	str.w	r8, [sp, #0x4]
  3e27cc: 9302         	str	r3, [sp, #0x8]
  3e27ce: 2300         	movs	r3, #0x0
  3e27d0: 9303         	str	r3, [sp, #0xc]
  3e27d2: 4638         	mov	r0, r7
  3e27d4: 4631         	mov	r1, r6
  3e27d6: 462a         	mov	r2, r5
  3e27d8: 4623         	mov	r3, r4
  3e27da: f1b7 fb19    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1b7632
  3e27de: 4603         	mov	r3, r0
  3e27e0: 9307         	str	r3, [sp, #0x1c]
  3e27e2: ab06         	add	r3, sp, #0x18
  3e27e4: 4618         	mov	r0, r3
  3e27e6: f3d3 f895    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d312a
  3e27ea: f1fd ff61    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fdec2
  3e27ee: 4603         	mov	r3, r0
  3e27f0: 4618         	mov	r0, r3
  3e27f2: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x3e2864 <SoldierAIController::throwDual()+0x1f0>
  3e27f4: 447b         	add	r3, pc
  3e27f6: 4619         	mov	r1, r3
  3e27f8: 9a07         	ldr	r2, [sp, #0x1c]
  3e27fa: f1fe f997    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fe32e
  3e27fe: 9b05         	ldr	r3, [sp, #0x14]
  3e2800: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e2804: 2b00         	cmp	r3, #0x0
  3e2806: d11c         	bne	0x3e2842 <SoldierAIController::throwDual()+0x1ce> @ imm = #0x38
  3e2808: 9b05         	ldr	r3, [sp, #0x14]
  3e280a: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3e280e: 2b00         	cmp	r3, #0x0
  3e2810: d017         	beq	0x3e2842 <SoldierAIController::throwDual()+0x1ce> @ imm = #0x2e
  3e2812: 9b05         	ldr	r3, [sp, #0x14]
  3e2814: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3e2818: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3e281c: 681b         	ldr	r3, [r3]
  3e281e: 33f4         	adds	r3, #0xf4
  3e2820: 681b         	ldr	r3, [r3]
  3e2822: 9a05         	ldr	r2, [sp, #0x14]
  3e2824: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3e2828: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3e282c: 9a05         	ldr	r2, [sp, #0x14]
  3e282e: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3e2832: 4608         	mov	r0, r1
  3e2834: 4611         	mov	r1, r2
  3e2836: 2200         	movs	r2, #0x0
  3e2838: 4798         	blx	r3
  3e283a: 9b05         	ldr	r3, [sp, #0x14]
  3e283c: 2200         	movs	r2, #0x0
  3e283e: f8c3 2154    	str.w	r2, [r3, #0x154]
  3e2842: e005         	b	0x3e2850 <SoldierAIController::throwDual()+0x1dc> @ imm = #0xa
  3e2844: ab06         	add	r3, sp, #0x18
  3e2846: 4618         	mov	r0, r3
  3e2848: f3d3 f864    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d30c8
  3e284c: f3a5 fc2e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a585c
  3e2850: b00d         	add	sp, #0x34
  3e2852: e8bd 83f0    	pop.w	{r4, r5, r6, r7, r8, r9, pc}
  ; --- end of code (Ghidra body ends at 0x3e2855); words below are literal-pool data ---
  3e2856: bf00         	nop
  3e2858: 038a         	lsls	r2, r1, #0xe
  3e285a: 0055         	lsls	r5, r2, #0x1
  3e285c: d730         	bvc	0x3e28c0 <SoldierAIController::isCharging()> @ imm = #0x60
  3e285e: ffff 57ee    	<unknown>
  3e2862: 003f         	movs	r7, r7
  3e2864: 574c         	ldrsb	r4, [r1, r5]
  3e2866: 003f         	movs	r7, r7

// ==== SoldierAIController::getGrenadeCount
//      file offset 0x3e2868 (= ELF address; Ghidra 0x3f2868), 16 bytes, Thumb-2
  3e2868: b082         	sub	sp, #0x8
  3e286a: 9001         	str	r0, [sp, #0x4]
  3e286c: 9b01         	ldr	r3, [sp, #0x4]
  3e286e: f8d3 3160    	ldr.w	r3, [r3, #0x160]
  3e2872: 4618         	mov	r0, r3
  3e2874: b002         	add	sp, #0x8
  3e2876: 4770         	bx	lr

// ==== SoldierAIController::getBodyVelocity
//      file offset 0x3e2878 (= ELF address; Ghidra 0x3f2878), 36 bytes, Thumb-2
  3e2878: b410         	push	{r4}
  3e287a: b083         	sub	sp, #0xc
  3e287c: 9001         	str	r0, [sp, #0x4]
  3e287e: 9100         	str	r1, [sp]
  3e2880: 9b00         	ldr	r3, [sp]
  3e2882: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e2886: 9a01         	ldr	r2, [sp, #0x4]
  3e2888: 4614         	mov	r4, r2
  3e288a: 3338         	adds	r3, #0x38
  3e288c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e288e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e2892: 9801         	ldr	r0, [sp, #0x4]
  3e2894: b003         	add	sp, #0xc
  3e2896: f85d 4b04    	ldr	r4, [sp], #4
  3e289a: 4770         	bx	lr

// ==== SoldierAIController::getBodyPosition
//      file offset 0x3e289c (= ELF address; Ghidra 0x3f289c), 36 bytes, Thumb-2
  3e289c: b410         	push	{r4}
  3e289e: b083         	sub	sp, #0xc
  3e28a0: 9001         	str	r0, [sp, #0x4]
  3e28a2: 9100         	str	r1, [sp]
  3e28a4: 9b00         	ldr	r3, [sp]
  3e28a6: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3e28aa: 9a01         	ldr	r2, [sp, #0x4]
  3e28ac: 4614         	mov	r4, r2
  3e28ae: 3328         	adds	r3, #0x28
  3e28b0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e28b2: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3e28b6: 9801         	ldr	r0, [sp, #0x4]
  3e28b8: b003         	add	sp, #0xc
  3e28ba: f85d 4b04    	ldr	r4, [sp], #4
  3e28be: 4770         	bx	lr

// ==== SoldierAIController::isCharging
//      file offset 0x3e28c0 (= ELF address; Ghidra 0x3f28c0), 16 bytes, Thumb-2
  3e28c0: b082         	sub	sp, #0x8
  3e28c2: 9001         	str	r0, [sp, #0x4]
  3e28c4: 9b01         	ldr	r3, [sp, #0x4]
  3e28c6: f893 31ac    	ldrb.w	r3, [r3, #0x1ac]
  3e28ca: 4618         	mov	r0, r3
  3e28cc: b002         	add	sp, #0x8
  3e28ce: 4770         	bx	lr

// ==== SoldierAIController::weaponDidFire
//      file offset 0x3e28d0 (= ELF address; Ghidra 0x3f28d0), 572 bytes, Thumb-2
  3e28d0: b5f0         	push	{r4, r5, r6, r7, lr}
  3e28d2: b08f         	sub	sp, #0x3c
  3e28d4: 9009         	str	r0, [sp, #0x24]
  3e28d6: 9108         	str	r1, [sp, #0x20]
  3e28d8: 9b08         	ldr	r3, [sp, #0x20]
  3e28da: 2b00         	cmp	r3, #0x0
  3e28dc: d100         	bne	0x3e28e0 <SoldierAIController::weaponDidFire(Item*)+0x10> @ imm = #0x0
  3e28de: e110         	b	0x3e2b02 <SoldierAIController::weaponDidFire(Item*)+0x232> @ imm = #0x220
  3e28e0: 9b08         	ldr	r3, [sp, #0x20]
  3e28e2: 930d         	str	r3, [sp, #0x34]
  3e28e4: f04f 0300    	mov.w	r3, #0x0
  3e28e8: 930c         	str	r3, [sp, #0x30]
  3e28ea: 9b09         	ldr	r3, [sp, #0x24]
  3e28ec: 681b         	ldr	r3, [r3]
  3e28ee: f503 73fe    	add.w	r3, r3, #0x1fc
  3e28f2: 681b         	ldr	r3, [r3]
  3e28f4: 9a09         	ldr	r2, [sp, #0x24]
  3e28f6: 4610         	mov	r0, r2
  3e28f8: 4798         	blx	r3
  3e28fa: 4603         	mov	r3, r0
  3e28fc: 2b00         	cmp	r3, #0x0
  3e28fe: d00d         	beq	0x3e291c <SoldierAIController::weaponDidFire(Item*)+0x4c> @ imm = #0x1a
  3e2900: 9b09         	ldr	r3, [sp, #0x24]
  3e2902: 681b         	ldr	r3, [r3]
  3e2904: f503 73fe    	add.w	r3, r3, #0x1fc
  3e2908: 681b         	ldr	r3, [r3]
  3e290a: 9a09         	ldr	r2, [sp, #0x24]
  3e290c: 4610         	mov	r0, r2
  3e290e: 4798         	blx	r3
  3e2910: 4602         	mov	r2, r0
  3e2912: 9b0d         	ldr	r3, [sp, #0x34]
  3e2914: 429a         	cmp	r2, r3
  3e2916: d101         	bne	0x3e291c <SoldierAIController::weaponDidFire(Item*)+0x4c> @ imm = #0x2
  3e2918: 2301         	movs	r3, #0x1
  3e291a: e000         	b	0x3e291e <SoldierAIController::weaponDidFire(Item*)+0x4e> @ imm = #0x0
  3e291c: 2300         	movs	r3, #0x0
  3e291e: 2b00         	cmp	r3, #0x0
  3e2920: d01b         	beq	0x3e295a <SoldierAIController::weaponDidFire(Item*)+0x8a> @ imm = #0x36
  3e2922: 9b09         	ldr	r3, [sp, #0x24]
  3e2924: 681b         	ldr	r3, [r3]
  3e2926: f503 73ec    	add.w	r3, r3, #0x1d8
  3e292a: 681b         	ldr	r3, [r3]
  3e292c: 9809         	ldr	r0, [sp, #0x24]
  3e292e: 4798         	blx	r3
  3e2930: 4603         	mov	r3, r0
  3e2932: 9a0d         	ldr	r2, [sp, #0x34]
  3e2934: edd2 7a5b    	vldr	s15, [r2, #364]
  3e2938: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e293c: 4618         	mov	r0, r3
  3e293e: ec53 2b17    	vmov	r2, r3, d7
  3e2942: f011 fa81    	bl	0x3f3e48 <SoldierView::setDualRecoilRotation(double)> @ imm = #0x11502
  3e2946: 9b09         	ldr	r3, [sp, #0x24]
  3e2948: 681b         	ldr	r3, [r3]
  3e294a: f503 7321    	add.w	r3, r3, #0x284
  3e294e: 681b         	ldr	r3, [r3]
  3e2950: 9809         	ldr	r0, [sp, #0x24]
  3e2952: 4798         	blx	r3
  3e2954: 4603         	mov	r3, r0
  3e2956: 930c         	str	r3, [sp, #0x30]
  3e2958: e01a         	b	0x3e2990 <SoldierAIController::weaponDidFire(Item*)+0xc0> @ imm = #0x34
  3e295a: 9b09         	ldr	r3, [sp, #0x24]
  3e295c: 681b         	ldr	r3, [r3]
  3e295e: f503 73ec    	add.w	r3, r3, #0x1d8
  3e2962: 681b         	ldr	r3, [r3]
  3e2964: 9809         	ldr	r0, [sp, #0x24]
  3e2966: 4798         	blx	r3
  3e2968: 4603         	mov	r3, r0
  3e296a: 9a0d         	ldr	r2, [sp, #0x34]
  3e296c: edd2 7a5b    	vldr	s15, [r2, #364]
  3e2970: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3e2974: 4618         	mov	r0, r3
  3e2976: ec53 2b17    	vmov	r2, r3, d7
  3e297a: f011 fa57    	bl	0x3f3e2c <SoldierView::setPrimaryRecoilRotation(double)> @ imm = #0x114ae
  3e297e: 9b09         	ldr	r3, [sp, #0x24]
  3e2980: 681b         	ldr	r3, [r3]
  3e2982: f503 730f    	add.w	r3, r3, #0x23c
  3e2986: 681b         	ldr	r3, [r3]
  3e2988: 9809         	ldr	r0, [sp, #0x24]
  3e298a: 4798         	blx	r3
  3e298c: 4603         	mov	r3, r0
  3e298e: 930c         	str	r3, [sp, #0x30]
  3e2990: 9b09         	ldr	r3, [sp, #0x24]
  3e2992: f893 31c5    	ldrb.w	r3, [r3, #0x1c5]
  3e2996: 2b00         	cmp	r3, #0x0
  3e2998: d010         	beq	0x3e29bc <SoldierAIController::weaponDidFire(Item*)+0xec> @ imm = #0x20
  3e299a: 9b09         	ldr	r3, [sp, #0x24]
  3e299c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3e29a0: 681b         	ldr	r3, [r3]
  3e29a2: f503 731f    	add.w	r3, r3, #0x27c
  3e29a6: 681b         	ldr	r3, [r3]
  3e29a8: 9a09         	ldr	r2, [sp, #0x24]
  3e29aa: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3e29ae: 4610         	mov	r0, r2
  3e29b0: 4798         	blx	r3
  3e29b2: 4603         	mov	r3, r0
  3e29b4: 2b0b         	cmp	r3, #0xb
  3e29b6: d101         	bne	0x3e29bc <SoldierAIController::weaponDidFire(Item*)+0xec> @ imm = #0x2
  3e29b8: 2301         	movs	r3, #0x1
  3e29ba: e000         	b	0x3e29be <SoldierAIController::weaponDidFire(Item*)+0xee> @ imm = #0x0
  3e29bc: 2300         	movs	r3, #0x0
  3e29be: 2b00         	cmp	r3, #0x0
  3e29c0: d000         	beq	0x3e29c4 <SoldierAIController::weaponDidFire(Item*)+0xf4> @ imm = #0x0
  3e29c2: e09e         	b	0x3e2b02 <SoldierAIController::weaponDidFire(Item*)+0x232> @ imm = #0x13c
  3e29c4: 9b09         	ldr	r3, [sp, #0x24]
  3e29c6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3e29ca: 6d5b         	ldr	r3, [r3, #0x54]
  3e29cc: 2b15         	cmp	r3, #0x15
  3e29ce: d036         	beq	0x3e2a3e <SoldierAIController::weaponDidFire(Item*)+0x16e> @ imm = #0x6c
  3e29d0: f240 2241    	movw	r2, #0x241
  3e29d4: 4293         	cmp	r3, r2
  3e29d6: d000         	beq	0x3e29da <SoldierAIController::weaponDidFire(Item*)+0x10a> @ imm = #0x0
  3e29d8: e063         	b	0x3e2aa2 <SoldierAIController::weaponDidFire(Item*)+0x1d2> @ imm = #0xc6
  3e29da: 9b0d         	ldr	r3, [sp, #0x34]
  3e29dc: 681b         	ldr	r3, [r3]
  3e29de: f503 7344    	add.w	r3, r3, #0x310
  3e29e2: 681e         	ldr	r6, [r3]
  3e29e4: 9b09         	ldr	r3, [sp, #0x24]
  3e29e6: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e29ea: 9b09         	ldr	r3, [sp, #0x24]
  3e29ec: f8d3 7138    	ldr.w	r7, [r3, #0x138]
  3e29f0: 9b09         	ldr	r3, [sp, #0x24]
  3e29f2: 681b         	ldr	r3, [r3]
  3e29f4: f503 73e0    	add.w	r3, r3, #0x1c0
  3e29f8: 681b         	ldr	r3, [r3]
  3e29fa: 9a09         	ldr	r2, [sp, #0x24]
  3e29fc: a90b         	add	r1, sp, #0x2c
  3e29fe: 4608         	mov	r0, r1
  3e2a00: 4611         	mov	r1, r2
  3e2a02: 4798         	blx	r3
  3e2a04: ad02         	add	r5, sp, #0x8
  3e2a06: f107 0338    	add.w	r3, r7, #0x38
  3e2a0a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e2a0c: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e2a10: f44f 7382    	mov.w	r3, #0x104
  3e2a14: 9306         	str	r3, [sp, #0x18]
  3e2a16: ab0b         	add	r3, sp, #0x2c
  3e2a18: 9307         	str	r3, [sp, #0x1c]
  3e2a1a: 466b         	mov	r3, sp
  3e2a1c: f104 0230    	add.w	r2, r4, #0x30
  3e2a20: e892 0003    	ldm.w	r2, {r0, r1}
  3e2a24: e883 0003    	stm.w	r3, {r0, r1}
  3e2a28: f104 0328    	add.w	r3, r4, #0x28
  3e2a2c: cb0c         	ldm	r3, {r2, r3}
  3e2a2e: 980d         	ldr	r0, [sp, #0x34]
  3e2a30: 990c         	ldr	r1, [sp, #0x30]
  3e2a32: 47b0         	blx	r6
  3e2a34: ab0b         	add	r3, sp, #0x2c
  3e2a36: 4618         	mov	r0, r3
  3e2a38: f3d2 ff6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d2ed8
  3e2a3c: e031         	b	0x3e2aa2 <SoldierAIController::weaponDidFire(Item*)+0x1d2> @ imm = #0x62
  3e2a3e: 9b0d         	ldr	r3, [sp, #0x34]
  3e2a40: 681b         	ldr	r3, [r3]
  3e2a42: f503 7344    	add.w	r3, r3, #0x310
  3e2a46: 681e         	ldr	r6, [r3]
  3e2a48: 9b09         	ldr	r3, [sp, #0x24]
  3e2a4a: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3e2a4e: 9b09         	ldr	r3, [sp, #0x24]
  3e2a50: f8d3 7138    	ldr.w	r7, [r3, #0x138]
  3e2a54: 9b09         	ldr	r3, [sp, #0x24]
  3e2a56: 681b         	ldr	r3, [r3]
  3e2a58: f503 73e0    	add.w	r3, r3, #0x1c0
  3e2a5c: 681b         	ldr	r3, [r3]
  3e2a5e: 9a09         	ldr	r2, [sp, #0x24]
  3e2a60: a90b         	add	r1, sp, #0x2c
  3e2a62: 4608         	mov	r0, r1
  3e2a64: 4611         	mov	r1, r2
  3e2a66: 4798         	blx	r3
  3e2a68: ad02         	add	r5, sp, #0x8
  3e2a6a: f107 0338    	add.w	r3, r7, #0x38
  3e2a6e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3e2a70: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3e2a74: f44f 6380    	mov.w	r3, #0x400
  3e2a78: 9306         	str	r3, [sp, #0x18]
  3e2a7a: ab0b         	add	r3, sp, #0x2c
  3e2a7c: 9307         	str	r3, [sp, #0x1c]
  3e2a7e: 466b         	mov	r3, sp
  3e2a80: f104 0230    	add.w	r2, r4, #0x30
  3e2a84: e892 0003    	ldm.w	r2, {r0, r1}
  3e2a88: e883 0003    	stm.w	r3, {r0, r1}
  3e2a8c: f104 0328    	add.w	r3, r4, #0x28
  3e2a90: cb0c         	ldm	r3, {r2, r3}
  3e2a92: 980d         	ldr	r0, [sp, #0x34]
  3e2a94: 990c         	ldr	r1, [sp, #0x30]
  3e2a96: 47b0         	blx	r6
  3e2a98: ab0b         	add	r3, sp, #0x2c
  3e2a9a: 4618         	mov	r0, r3
  3e2a9c: f3d2 ff3a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d2e74
  3e2aa0: bf00         	nop
  3e2aa2: f1fd fe05    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1fdc0a
  3e2aa6: 4604         	mov	r4, r0
  3e2aa8: 9b09         	ldr	r3, [sp, #0x24]
  3e2aaa: 681b         	ldr	r3, [r3]
  3e2aac: f503 73e0    	add.w	r3, r3, #0x1c0
  3e2ab0: 681b         	ldr	r3, [r3]
  3e2ab2: 9a09         	ldr	r2, [sp, #0x24]
  3e2ab4: a90b         	add	r1, sp, #0x2c
  3e2ab6: 4608         	mov	r0, r1
  3e2ab8: 4611         	mov	r1, r2
  3e2aba: 4798         	blx	r3
  3e2abc: ab0b         	add	r3, sp, #0x2c
  3e2abe: 4618         	mov	r0, r3
  3e2ac0: f1b6 ffbc    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1b6f78
  3e2ac4: 4603         	mov	r3, r0
  3e2ac6: 4620         	mov	r0, r4
  3e2ac8: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3e2b08 <SoldierAIController::weaponDidFire(Item*)+0x238>
  3e2aca: 447a         	add	r2, pc
  3e2acc: 4611         	mov	r1, r2
  3e2ace: 461a         	mov	r2, r3
  3e2ad0: f1fe f82c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1fe058
  3e2ad4: ab0b         	add	r3, sp, #0x2c
  3e2ad6: 4618         	mov	r0, r3
  3e2ad8: f3d2 ff1c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d2e38
  3e2adc: e011         	b	0x3e2b02 <SoldierAIController::weaponDidFire(Item*)+0x232> @ imm = #0x22
  3e2ade: ab0b         	add	r3, sp, #0x2c
  3e2ae0: 4618         	mov	r0, r3
  3e2ae2: f3d2 ff17    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d2e2e
  3e2ae6: f3a5 fae1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a55c2
  3e2aea: ab0b         	add	r3, sp, #0x2c
  3e2aec: 4618         	mov	r0, r3
  3e2aee: f3d2 ff11    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d2e22
  3e2af2: f3a5 fadb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a55b6
  3e2af6: ab0b         	add	r3, sp, #0x2c
  3e2af8: 4618         	mov	r0, r3
  3e2afa: f3d2 ff0b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3d2e16
  3e2afe: f3a5 fad5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3a55aa
  3e2b02: b00f         	add	sp, #0x3c
  3e2b04: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3e2b05); words below are literal-pool data ---
  3e2b06: bf00         	nop
  3e2b08: 5486         	strb	r6, [r0, r2]
  3e2b0a: 003f         	movs	r7, r7

// ==== SoldierAIController::weaponDidFire
//      file offset 0x3e2b0c (= ELF address; Ghidra 0x3f2b0c), 8 bytes, Thumb-2
  3e2b0c: f1a0 00f8    	sub.w	r0, r0, #0xf8
  3e2b10: f7ff bede    	b.w	0x3e28d0 <SoldierAIController::weaponDidFire(Item*)> @ imm = #-0x244
