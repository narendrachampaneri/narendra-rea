// SoldierRemoteController: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 40 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../SoldierRemoteController.cpp

// ==== SoldierRemoteController::create
//      file offset 0x3eb854 (= ELF address; Ghidra 0x3fb854), 112 bytes, Thumb-2
  3eb854: b510         	push	{r4, lr}
  3eb856: b082         	sub	sp, #0x8
  3eb858: f44f 70e0    	mov.w	r0, #0x1c0
  3eb85c: f39c f882    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x39c104
  3eb860: 4603         	mov	r3, r0
  3eb862: 461c         	mov	r4, r3
  3eb864: 4620         	mov	r0, r4
  3eb866: f003 fc5b    	bl	0x3ef120 <SoldierRemoteController::SoldierRemoteController()> @ imm = #0x38b6
  3eb86a: 9401         	str	r4, [sp, #0x4]
  3eb86c: 9b01         	ldr	r3, [sp, #0x4]
  3eb86e: 2b00         	cmp	r3, #0x0
  3eb870: d00a         	beq	0x3eb888 <SoldierRemoteController::create()+0x34> @ imm = #0x14
  3eb872: 9b01         	ldr	r3, [sp, #0x4]
  3eb874: 681b         	ldr	r3, [r3]
  3eb876: 3318         	adds	r3, #0x18
  3eb878: 681b         	ldr	r3, [r3]
  3eb87a: 9801         	ldr	r0, [sp, #0x4]
  3eb87c: 4798         	blx	r3
  3eb87e: 4603         	mov	r3, r0
  3eb880: 2b00         	cmp	r3, #0x0
  3eb882: d001         	beq	0x3eb888 <SoldierRemoteController::create()+0x34> @ imm = #0x2
  3eb884: 2301         	movs	r3, #0x1
  3eb886: e000         	b	0x3eb88a <SoldierRemoteController::create()+0x36> @ imm = #0x0
  3eb888: 2300         	movs	r3, #0x0
  3eb88a: 2b00         	cmp	r3, #0x0
  3eb88c: d005         	beq	0x3eb89a <SoldierRemoteController::create()+0x46> @ imm = #0xa
  3eb88e: 9b01         	ldr	r3, [sp, #0x4]
  3eb890: 4618         	mov	r0, r3
  3eb892: f1ac fb33    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1ac666
  3eb896: 9b01         	ldr	r3, [sp, #0x4]
  3eb898: e011         	b	0x3eb8be <SoldierRemoteController::create()+0x6a> @ imm = #0x22
  3eb89a: 9b01         	ldr	r3, [sp, #0x4]
  3eb89c: 2b00         	cmp	r3, #0x0
  3eb89e: d005         	beq	0x3eb8ac <SoldierRemoteController::create()+0x58> @ imm = #0xa
  3eb8a0: 9b01         	ldr	r3, [sp, #0x4]
  3eb8a2: 681b         	ldr	r3, [r3]
  3eb8a4: 3308         	adds	r3, #0x8
  3eb8a6: 681b         	ldr	r3, [r3]
  3eb8a8: 9801         	ldr	r0, [sp, #0x4]
  3eb8aa: 4798         	blx	r3
  3eb8ac: 2300         	movs	r3, #0x0
  3eb8ae: 9301         	str	r3, [sp, #0x4]
  3eb8b0: 2300         	movs	r3, #0x0
  3eb8b2: e004         	b	0x3eb8be <SoldierRemoteController::create()+0x6a> @ imm = #0x8
  3eb8b4: 4620         	mov	r0, r4
  3eb8b6: f39c fbf5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39c7ea
  3eb8ba: f39c fbf7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39c7ee
  3eb8be: 4618         	mov	r0, r3
  3eb8c0: b002         	add	sp, #0x8
  3eb8c2: bd10         	pop	{r4, pc}

// ==== SoldierRemoteController::SoldierRemoteController
//      file offset 0x3ef120 (= ELF address; Ghidra 0x3ff120), 60 bytes, Thumb-2
  3ef120: b510         	push	{r4, lr}
  3ef122: b082         	sub	sp, #0x8
  3ef124: 9001         	str	r0, [sp, #0x4]
  3ef126: 4c0b         	ldr	r4, [pc, #0x2c]         @ 0x3ef154 <SoldierRemoteController::SoldierRemoteController()+0x34>
  3ef128: 447c         	add	r4, pc
  3ef12a: 9b01         	ldr	r3, [sp, #0x4]
  3ef12c: 4618         	mov	r0, r3
  3ef12e: f7f4 fe75    	bl	0x3e3e1c <SoldierController::SoldierController()> @ imm = #-0xb316
  3ef132: 9b01         	ldr	r3, [sp, #0x4]
  3ef134: 4a08         	ldr	r2, [pc, #0x20]         @ 0x3ef158 <SoldierRemoteController::SoldierRemoteController()+0x38>
  3ef136: 58a2         	ldr	r2, [r4, r2]
  3ef138: 3208         	adds	r2, #0x8
  3ef13a: 601a         	str	r2, [r3]
  3ef13c: 9b01         	ldr	r3, [sp, #0x4]
  3ef13e: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3ef158 <SoldierRemoteController::SoldierRemoteController()+0x38>
  3ef140: 58a2         	ldr	r2, [r4, r2]
  3ef142: f502 7234    	add.w	r2, r2, #0x2d0
  3ef146: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  3ef14a: 9b01         	ldr	r3, [sp, #0x4]
  3ef14c: 4618         	mov	r0, r3
  3ef14e: b002         	add	sp, #0x8
  3ef150: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3ef151); words below are literal-pool data ---
  3ef152: bf00         	nop
  3ef154: 38e0         	subs	r0, #0xe0
  3ef156: 0054         	lsls	r4, r2, #0x1
  3ef158: df24         	svc	#0x24
  3ef15a: ffff 0000    	<unknown>

// ==== SoldierRemoteController::init
//      file offset 0x3ef160 (= ELF address; Ghidra 0x3ff160), 304 bytes, Thumb-2
  3ef160: b510         	push	{r4, lr}
  3ef162: b08a         	sub	sp, #0x28
  3ef164: 9005         	str	r0, [sp, #0x14]
  3ef166: 9b05         	ldr	r3, [sp, #0x14]
  3ef168: 4618         	mov	r0, r3
  3ef16a: f7f4 fea3    	bl	0x3e3eb4 <SoldierController::init()> @ imm = #-0xb2ba
  3ef16e: 4603         	mov	r3, r0
  3ef170: f88d 301f    	strb.w	r3, [sp, #0x1f]
  3ef174: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  3ef178: f083 0301    	eor	r3, r3, #0x1
  3ef17c: b2db         	uxtb	r3, r3
  3ef17e: 2b00         	cmp	r3, #0x0
  3ef180: d001         	beq	0x3ef186 <SoldierRemoteController::init()+0x26> @ imm = #0x2
  3ef182: 2300         	movs	r3, #0x0
  3ef184: e07d         	b	0x3ef282 <SoldierRemoteController::init()+0x122> @ imm = #0xfa
  3ef186: 9b05         	ldr	r3, [sp, #0x14]
  3ef188: f04f 527c    	mov.w	r2, #0x3f000000
  3ef18c: f8c3 2120    	str.w	r2, [r3, #0x120]
  3ef190: 9c05         	ldr	r4, [sp, #0x14]
  3ef192: 466b         	mov	r3, sp
  3ef194: 4618         	mov	r0, r3
  3ef196: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x3ef288 <SoldierRemoteController::init()+0x128>
  3ef19a: ed9f 1b3b    	vldr	d1, [pc, #236]          @ 0x3ef288 <SoldierRemoteController::init()+0x128>
  3ef19e: f7ff f861    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0xf3e
  3ef1a2: f504 7494    	add.w	r4, r4, #0x128
  3ef1a6: 466b         	mov	r3, sp
  3ef1a8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ef1aa: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3ef1ae: 9b05         	ldr	r3, [sp, #0x14]
  3ef1b0: f04f 0200    	mov.w	r2, #0x0
  3ef1b4: f8c3 2110    	str.w	r2, [r3, #0x110]
  3ef1b8: 9b05         	ldr	r3, [sp, #0x14]
  3ef1ba: f04f 0200    	mov.w	r2, #0x0
  3ef1be: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  3ef1c2: 9b05         	ldr	r3, [sp, #0x14]
  3ef1c4: f503 748a    	add.w	r4, r3, #0x114
  3ef1c8: ab08         	add	r3, sp, #0x20
  3ef1ca: 4618         	mov	r0, r3
  3ef1cc: f04f 0100    	mov.w	r1, #0x0
  3ef1d0: f04f 0200    	mov.w	r2, #0x0
  3ef1d4: f1a3 fd8c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a3b18
  3ef1d8: ab08         	add	r3, sp, #0x20
  3ef1da: 4620         	mov	r0, r4
  3ef1dc: 4619         	mov	r1, r3
  3ef1de: f1a3 fdb5    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a3b6a
  3ef1e2: 9b05         	ldr	r3, [sp, #0x14]
  3ef1e4: f04f 0200    	mov.w	r2, #0x0
  3ef1e8: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3ef1ec: 9b05         	ldr	r3, [sp, #0x14]
  3ef1ee: f04f 0200    	mov.w	r2, #0x0
  3ef1f2: f8c3 2108    	str.w	r2, [r3, #0x108]
  3ef1f6: 9b05         	ldr	r3, [sp, #0x14]
  3ef1f8: 2200         	movs	r2, #0x0
  3ef1fa: f8c3 2148    	str.w	r2, [r3, #0x148]
  3ef1fe: 9b05         	ldr	r3, [sp, #0x14]
  3ef200: 2200         	movs	r2, #0x0
  3ef202: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3ef206: 9b05         	ldr	r3, [sp, #0x14]
  3ef208: 2200         	movs	r2, #0x0
  3ef20a: f8c3 2150    	str.w	r2, [r3, #0x150]
  3ef20e: 9b05         	ldr	r3, [sp, #0x14]
  3ef210: f04f 0200    	mov.w	r2, #0x0
  3ef214: f8c3 2184    	str.w	r2, [r3, #0x184]
  3ef218: 9905         	ldr	r1, [sp, #0x14]
  3ef21a: f04f 0200    	mov.w	r2, #0x0
  3ef21e: f04f 0300    	mov.w	r3, #0x0
  3ef222: e9c1 2362    	strd	r2, r3, [r1, #392]
  3ef226: 9905         	ldr	r1, [sp, #0x14]
  3ef228: f04f 0200    	mov.w	r2, #0x0
  3ef22c: f04f 0300    	mov.w	r3, #0x0
  3ef230: e9c1 2364    	strd	r2, r3, [r1, #400]
  3ef234: 9905         	ldr	r1, [sp, #0x14]
  3ef236: f04f 0200    	mov.w	r2, #0x0
  3ef23a: f04f 0300    	mov.w	r3, #0x0
  3ef23e: e9c1 2366    	strd	r2, r3, [r1, #408]
  3ef242: 9905         	ldr	r1, [sp, #0x14]
  3ef244: f04f 0200    	mov.w	r2, #0x0
  3ef248: f04f 0300    	mov.w	r3, #0x0
  3ef24c: e9c1 2368    	strd	r2, r3, [r1, #416]
  3ef250: 9b05         	ldr	r3, [sp, #0x14]
  3ef252: f04f 0200    	mov.w	r2, #0x0
  3ef256: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  3ef25a: 9b05         	ldr	r3, [sp, #0x14]
  3ef25c: 2201         	movs	r2, #0x1
  3ef25e: f883 21b4    	strb.w	r2, [r3, #0x1b4]
  3ef262: 9b05         	ldr	r3, [sp, #0x14]
  3ef264: f04f 0200    	mov.w	r2, #0x0
  3ef268: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  3ef26c: 9805         	ldr	r0, [sp, #0x14]
  3ef26e: f000 f843    	bl	0x3ef2f8 <SoldierRemoteController::initBody()> @ imm = #0x86
  3ef272: 9805         	ldr	r0, [sp, #0x14]
  3ef274: f000 f864    	bl	0x3ef340 <SoldierRemoteController::initShape()> @ imm = #0xc8
  3ef278: 9b05         	ldr	r3, [sp, #0x14]
  3ef27a: 4618         	mov	r0, r3
  3ef27c: f7f4 fef0    	bl	0x3e4060 <SoldierController::reset()> @ imm = #-0xb220
  3ef280: 2301         	movs	r3, #0x1
  3ef282: 4618         	mov	r0, r3
  3ef284: b00a         	add	sp, #0x28
  3ef286: bd10         	pop	{r4, pc}

// ==== SoldierRemoteController::~SoldierRemoteController
//      file offset 0x3ef290 (= ELF address; Ghidra 0x3ff290), 72 bytes, Thumb-2
  3ef290: b500         	push	{lr}
  3ef292: b083         	sub	sp, #0xc
  3ef294: 9001         	str	r0, [sp, #0x4]
  3ef296: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3ef2d0 <SoldierRemoteController::~SoldierRemoteController()+0x40>
  3ef298: 447b         	add	r3, pc
  3ef29a: 9a01         	ldr	r2, [sp, #0x4]
  3ef29c: 490d         	ldr	r1, [pc, #0x34]         @ 0x3ef2d4 <SoldierRemoteController::~SoldierRemoteController()+0x44>
  3ef29e: 5859         	ldr	r1, [r3, r1]
  3ef2a0: 3108         	adds	r1, #0x8
  3ef2a2: 6011         	str	r1, [r2]
  3ef2a4: 9a01         	ldr	r2, [sp, #0x4]
  3ef2a6: 490b         	ldr	r1, [pc, #0x2c]         @ 0x3ef2d4 <SoldierRemoteController::~SoldierRemoteController()+0x44>
  3ef2a8: 585b         	ldr	r3, [r3, r1]
  3ef2aa: f503 7334    	add.w	r3, r3, #0x2d0
  3ef2ae: f8c2 30f8    	str.w	r3, [r2, #0xf8]
  3ef2b2: 9b01         	ldr	r3, [sp, #0x4]
  3ef2b4: 4618         	mov	r0, r3
  3ef2b6: f7f4 fe63    	bl	0x3e3f80 <SoldierController::~SoldierController()> @ imm = #-0xb33a
  3ef2ba: 2300         	movs	r3, #0x0
  3ef2bc: 2b00         	cmp	r3, #0x0
  3ef2be: d002         	beq	0x3ef2c6 <SoldierRemoteController::~SoldierRemoteController()+0x36> @ imm = #0x4
  3ef2c0: 9801         	ldr	r0, [sp, #0x4]
  3ef2c2: f398 feef    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x398dde
  3ef2c6: 9b01         	ldr	r3, [sp, #0x4]
  3ef2c8: 4618         	mov	r0, r3
  3ef2ca: b003         	add	sp, #0xc
  3ef2cc: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3ef2cf); words below are literal-pool data ---
  3ef2d0: 3770         	adds	r7, #0x70
  3ef2d2: 0054         	lsls	r4, r2, #0x1
  3ef2d4: df24         	svc	#0x24
  3ef2d6: ffff b500    	<unknown>

// ==== SoldierRemoteController::~SoldierRemoteController
//      file offset 0x3ef2d8 (= ELF address; Ghidra 0x3ff2d8), 28 bytes, Thumb-2
  3ef2d8: b500         	push	{lr}
  3ef2da: b083         	sub	sp, #0xc
  3ef2dc: 9001         	str	r0, [sp, #0x4]
  3ef2de: 9801         	ldr	r0, [sp, #0x4]
  3ef2e0: f7ff ffd6    	bl	0x3ef290 <SoldierRemoteController::~SoldierRemoteController()> @ imm = #-0x54
  3ef2e4: 9801         	ldr	r0, [sp, #0x4]
  3ef2e6: f398 fedd    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x398dba
  3ef2ea: 9b01         	ldr	r3, [sp, #0x4]
  3ef2ec: 4618         	mov	r0, r3
  3ef2ee: b003         	add	sp, #0xc
  3ef2f0: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierRemoteController::initBody
//      file offset 0x3ef2f8 (= ELF address; Ghidra 0x3ff2f8), 68 bytes, Thumb-2
  3ef2f8: b500         	push	{lr}
  3ef2fa: b083         	sub	sp, #0xc
  3ef2fc: 9001         	str	r0, [sp, #0x4]
  3ef2fe: f04f 0000    	mov.w	r0, #0x0
  3ef302: f04f 0100    	mov.w	r1, #0x0
  3ef306: f6c3 71f0    	movt	r1, #0x3ff0
  3ef30a: a309         	adr	r3, #36 <SoldierRemoteController::initBody()+0x1f>
  3ef30c: e9d3 2300    	ldrd	r2, r3, [r3]
  3ef310: f2e3 ff9c    	bl	0x6d324c <cpBodyNew>    @ imm = #0x2e3f38
  3ef314: 4602         	mov	r2, r0
  3ef316: 9b01         	ldr	r3, [sp, #0x4]
  3ef318: f8c3 2138    	str.w	r2, [r3, #0x138]
  3ef31c: 9b01         	ldr	r3, [sp, #0x4]
  3ef31e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ef322: 4a05         	ldr	r2, [pc, #0x14]         @ 0x3ef338 <SoldierRemoteController::initBody()+0x40>
  3ef324: 447a         	add	r2, pc
  3ef326: 601a         	str	r2, [r3]
  3ef328: b003         	add	sp, #0xc
  3ef32a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3ef32d); words below are literal-pool data ---
  3ef32e: bf00         	nop
  3ef330: 0000         	movs	r0, r0
  3ef332: 0000         	movs	r0, r0
  3ef334: 6a00         	ldr	r0, [r0, #0x20]
  3ef336: 40f8         	lsrs	r0, r7
  3ef338: fde5 ffff    	stc2l	p15, c15, [r5, #1020]!

// ==== SoldierRemoteController::initShape
//      file offset 0x3ef340 (= ELF address; Ghidra 0x3ff340), 608 bytes, Thumb-2
  3ef340: b570         	push	{r4, r5, r6, lr}
  3ef342: ed2d 8b02    	vpush	{d8}
  3ef346: b0a2         	sub	sp, #0x88
  3ef348: 9005         	str	r0, [sp, #0x14]
  3ef34a: 4a92         	ldr	r2, [pc, #0x248]        @ 0x3ef594 <SoldierRemoteController::initShape()+0x254>
  3ef34c: 447a         	add	r2, pc
  3ef34e: 4b92         	ldr	r3, [pc, #0x248]        @ 0x3ef598 <SoldierRemoteController::initShape()+0x258>
  3ef350: 58d3         	ldr	r3, [r2, r3]
  3ef352: 681b         	ldr	r3, [r3]
  3ef354: 9306         	str	r3, [sp, #0x18]
  3ef356: ed9d 7a06    	vldr	s14, [sp, #24]
  3ef35a: eddf 7a8d    	vldr	s15, [pc, #564]         @ 0x3ef590 <SoldierRemoteController::initShape()+0x250>
  3ef35e: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef362: edcd 7a07    	vstr	s15, [sp, #28]
  3ef366: ed9d 7a06    	vldr	s14, [sp, #24]
  3ef36a: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  3ef36e: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef372: edcd 7a08    	vstr	s15, [sp, #32]
  3ef376: ed9d 7a06    	vldr	s14, [sp, #24]
  3ef37a: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  3ef37e: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef382: edcd 7a09    	vstr	s15, [sp, #36]
  3ef386: eddd 7a09    	vldr	s15, [sp, #36]
  3ef38a: eef1 7a67    	vneg.f32	s15, s15
  3ef38e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ef392: eddd 7a08    	vldr	s15, [sp, #32]
  3ef396: eeb1 7a67    	vneg.f32	s14, s15
  3ef39a: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3ef39e: ee77 7a67    	vsub.f32	s15, s14, s15
  3ef3a2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef3a6: ab0e         	add	r3, sp, #0x38
  3ef3a8: 4618         	mov	r0, r3
  3ef3aa: eeb0 0b46    	vmov.f64	d0, d6
  3ef3ae: eeb0 1b47    	vmov.f64	d1, d7
  3ef3b2: f7fe ff57    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x1152
  3ef3b6: eddd 7a09    	vldr	s15, [sp, #36]
  3ef3ba: eef1 7a67    	vneg.f32	s15, s15
  3ef3be: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ef3c2: ed9d 7a08    	vldr	s14, [sp, #32]
  3ef3c6: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3ef3ca: ee77 7a67    	vsub.f32	s15, s14, s15
  3ef3ce: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef3d2: ab12         	add	r3, sp, #0x48
  3ef3d4: 4618         	mov	r0, r3
  3ef3d6: eeb0 0b46    	vmov.f64	d0, d6
  3ef3da: eeb0 1b47    	vmov.f64	d1, d7
  3ef3de: f7fe ff41    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x117e
  3ef3e2: ed9d 7a06    	vldr	s14, [sp, #24]
  3ef3e6: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  3ef3ea: ee27 7a27    	vmul.f32	s14, s14, s15
  3ef3ee: eddd 7a08    	vldr	s15, [sp, #32]
  3ef3f2: ee77 7a27    	vadd.f32	s15, s14, s15
  3ef3f6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef3fa: ab16         	add	r3, sp, #0x58
  3ef3fc: 4618         	mov	r0, r3
  3ef3fe: ed9f 0b5e    	vldr	d0, [pc, #376]          @ 0x3ef578 <SoldierRemoteController::initShape()+0x238>
  3ef402: eeb0 1b47    	vmov.f64	d1, d7
  3ef406: f7fe ff2d    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x11a6
  3ef40a: eddd 7a09    	vldr	s15, [sp, #36]
  3ef40e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ef412: ed9d 7a08    	vldr	s14, [sp, #32]
  3ef416: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3ef41a: ee77 7a67    	vsub.f32	s15, s14, s15
  3ef41e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef422: ab1a         	add	r3, sp, #0x68
  3ef424: 4618         	mov	r0, r3
  3ef426: eeb0 0b46    	vmov.f64	d0, d6
  3ef42a: eeb0 1b47    	vmov.f64	d1, d7
  3ef42e: f7fe ff19    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x11ce
  3ef432: eddd 7a09    	vldr	s15, [sp, #36]
  3ef436: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ef43a: eddd 7a08    	vldr	s15, [sp, #32]
  3ef43e: eeb1 7a67    	vneg.f32	s14, s15
  3ef442: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3ef446: ee77 7a67    	vsub.f32	s15, s14, s15
  3ef44a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef44e: ab1e         	add	r3, sp, #0x78
  3ef450: 4618         	mov	r0, r3
  3ef452: eeb0 0b46    	vmov.f64	d0, d6
  3ef456: eeb0 1b47    	vmov.f64	d1, d7
  3ef45a: f7fe ff03    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x11fa
  3ef45e: 9b05         	ldr	r3, [sp, #0x14]
  3ef460: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  3ef464: ad0e         	add	r5, sp, #0x38
  3ef466: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x3ef59c <SoldierRemoteController::initShape()+0x25c>
  3ef468: 447b         	add	r3, pc
  3ef46a: 466c         	mov	r4, sp
  3ef46c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ef46e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3ef472: 4630         	mov	r0, r6
  3ef474: 2105         	movs	r1, #0x5
  3ef476: 462a         	mov	r2, r5
  3ef478: f2e5 fa68    	bl	0x6d494c <cpPolyShapeNew> @ imm = #0x2e54d0
  3ef47c: 4602         	mov	r2, r0
  3ef47e: 9b05         	ldr	r3, [sp, #0x14]
  3ef480: f8c3 213c    	str.w	r2, [r3, #0x13c]
  3ef484: 9b05         	ldr	r3, [sp, #0x14]
  3ef486: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ef48a: 2284         	movs	r2, #0x84
  3ef48c: 655a         	str	r2, [r3, #0x54]
  3ef48e: 9b05         	ldr	r3, [sp, #0x14]
  3ef490: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ef494: 2284         	movs	r2, #0x84
  3ef496: 65da         	str	r2, [r3, #0x5c]
  3ef498: 9b05         	ldr	r3, [sp, #0x14]
  3ef49a: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ef49e: 2284         	movs	r2, #0x84
  3ef4a0: 659a         	str	r2, [r3, #0x58]
  3ef4a2: 9b05         	ldr	r3, [sp, #0x14]
  3ef4a4: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3ef4a8: a335         	adr	r3, #212 <SoldierRemoteController::initShape()+0x1a1>
  3ef4aa: e9d3 2300    	ldrd	r2, r3, [r3]
  3ef4ae: e9c1 230c    	strd	r2, r3, [r1, #48]
  3ef4b2: 9b05         	ldr	r3, [sp, #0x14]
  3ef4b4: f8d3 113c    	ldr.w	r1, [r3, #0x13c]
  3ef4b8: a333         	adr	r3, #204 <SoldierRemoteController::initShape()+0x1af>
  3ef4ba: e9d3 2300    	ldrd	r2, r3, [r3]
  3ef4be: e9c1 230e    	strd	r2, r3, [r1, #56]
  3ef4c2: 9b05         	ldr	r3, [sp, #0x14]
  3ef4c4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  3ef4c8: 9a05         	ldr	r2, [sp, #0x14]
  3ef4ca: 651a         	str	r2, [r3, #0x50]
  3ef4cc: 9b05         	ldr	r3, [sp, #0x14]
  3ef4ce: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3ef4d2: eddd 7a07    	vldr	s15, [sp, #28]
  3ef4d6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ef4da: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3ef4de: ee26 8b07    	vmul.f64	d8, d6, d7
  3ef4e2: ed9d 7a06    	vldr	s14, [sp, #24]
  3ef4e6: eddf 7a2a    	vldr	s15, [pc, #168]         @ 0x3ef590 <SoldierRemoteController::initShape()+0x250>
  3ef4ea: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef4ee: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef4f2: ab0a         	add	r3, sp, #0x28
  3ef4f4: 4618         	mov	r0, r3
  3ef4f6: ed9f 0b20    	vldr	d0, [pc, #128]          @ 0x3ef578 <SoldierRemoteController::initShape()+0x238>
  3ef4fa: eeb0 1b47    	vmov.f64	d1, d7
  3ef4fe: f7fe feb1    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x129e
  3ef502: 466c         	mov	r4, sp
  3ef504: ab0a         	add	r3, sp, #0x28
  3ef506: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ef508: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3ef50c: 4628         	mov	r0, r5
  3ef50e: ec53 2b18    	vmov	r2, r3, d8
  3ef512: f2e5 fe25    	bl	0x6d5160 <cpCircleShapeNew> @ imm = #0x2e5c4a
  3ef516: 4602         	mov	r2, r0
  3ef518: 9b05         	ldr	r3, [sp, #0x14]
  3ef51a: f8c3 2140    	str.w	r2, [r3, #0x140]
  3ef51e: 9b05         	ldr	r3, [sp, #0x14]
  3ef520: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ef524: 2284         	movs	r2, #0x84
  3ef526: 655a         	str	r2, [r3, #0x54]
  3ef528: 9b05         	ldr	r3, [sp, #0x14]
  3ef52a: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ef52e: 2284         	movs	r2, #0x84
  3ef530: 65da         	str	r2, [r3, #0x5c]
  3ef532: 9b05         	ldr	r3, [sp, #0x14]
  3ef534: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ef538: 2284         	movs	r2, #0x84
  3ef53a: 659a         	str	r2, [r3, #0x58]
  3ef53c: 9b05         	ldr	r3, [sp, #0x14]
  3ef53e: f8d3 1140    	ldr.w	r1, [r3, #0x140]
  3ef542: f04f 0200    	mov.w	r2, #0x0
  3ef546: f04f 0300    	mov.w	r3, #0x0
  3ef54a: f6c3 73e0    	movt	r3, #0x3fe0
  3ef54e: e9c1 230c    	strd	r2, r3, [r1, #48]
  3ef552: 9b05         	ldr	r3, [sp, #0x14]
  3ef554: f8d3 1140    	ldr.w	r1, [r3, #0x140]
  3ef558: a30b         	adr	r3, #44 <SoldierRemoteController::initShape()+0x227>
  3ef55a: e9d3 2300    	ldrd	r2, r3, [r3]
  3ef55e: e9c1 230e    	strd	r2, r3, [r1, #56]
  3ef562: 9b05         	ldr	r3, [sp, #0x14]
  3ef564: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  3ef568: 9a05         	ldr	r2, [sp, #0x14]
  3ef56a: 651a         	str	r2, [r3, #0x50]
  3ef56c: b022         	add	sp, #0x88
  3ef56e: ecbd 8b02    	vpop	{d8}
  3ef572: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3ef573); words below are literal-pool data ---
  3ef574: f3af 8000    	nop.w
  3ef580: 0000         	movs	r0, r0
  3ef582: a000         	adr	r0, #0 <SoldierRemoteController::initShape()+0x246>
  3ef584: 9999         	ldr	r1, [sp, #0x264]
  3ef586: 3fe9         	subs	r7, #0xe9
  3ef588: 0000         	movs	r0, r0
  3ef58a: a000         	adr	r0, #0 <SoldierRemoteController::initShape()+0x24e>
  3ef58c: 9999         	ldr	r1, [sp, #0x264]
  3ef58e: 3fb9         	subs	r7, #0xb9
  3ef590: 0000         	movs	r0, r0
  3ef592: 420c         	tst	r4, r1
  3ef594: 36bc         	adds	r6, #0xbc
  3ef596: 0054         	lsls	r4, r2, #0x1
  3ef598: d748         	bvc	0x3ef62c <SoldierRemoteController::updateStep(float)+0x8c> @ imm = #0x90
  3ef59a: ffff 95dc    	<unknown>
  3ef59e: 003e         	movs	r6, r7

// ==== SoldierRemoteController::updateStep
//      file offset 0x3ef5a0 (= ELF address; Ghidra 0x3ff5a0), 1764 bytes, Thumb-2
  3ef5a0: b5f0         	push	{r4, r5, r6, r7, lr}
  3ef5a2: ed2d 8b02    	vpush	{d8}
  3ef5a6: b0bd         	sub	sp, #0xf4
  3ef5a8: 9005         	str	r0, [sp, #0x14]
  3ef5aa: 9104         	str	r1, [sp, #0x10]
  3ef5ac: 4ca3         	ldr	r4, [pc, #0x28c]        @ 0x3ef83c <SoldierRemoteController::updateStep(float)+0x29c>
  3ef5ae: 447c         	add	r4, pc
  3ef5b0: 9b05         	ldr	r3, [sp, #0x14]
  3ef5b2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef5b6: 681b         	ldr	r3, [r3]
  3ef5b8: 3350         	adds	r3, #0x50
  3ef5ba: 681b         	ldr	r3, [r3]
  3ef5bc: 9a05         	ldr	r2, [sp, #0x14]
  3ef5be: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3ef5c2: 4610         	mov	r0, r2
  3ef5c4: 4798         	blx	r3
  3ef5c6: 4603         	mov	r3, r0
  3ef5c8: edd3 7a00    	vldr	s15, [r3]
  3ef5cc: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  3ef5d0: 9b05         	ldr	r3, [sp, #0x14]
  3ef5d2: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef5d6: 681b         	ldr	r3, [r3]
  3ef5d8: 3350         	adds	r3, #0x50
  3ef5da: 681b         	ldr	r3, [r3]
  3ef5dc: 9a05         	ldr	r2, [sp, #0x14]
  3ef5de: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3ef5e2: 4610         	mov	r0, r2
  3ef5e4: 4798         	blx	r3
  3ef5e6: 4603         	mov	r3, r0
  3ef5e8: edd3 7a01    	vldr	s15, [r3, #4]
  3ef5ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef5f0: ab0c         	add	r3, sp, #0x30
  3ef5f2: 4618         	mov	r0, r3
  3ef5f4: eeb0 0b48    	vmov.f64	d0, d8
  3ef5f8: eeb0 1b47    	vmov.f64	d1, d7
  3ef5fc: f7fe fe32    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x139c
  3ef600: aa24         	add	r2, sp, #0x90
  3ef602: 9b05         	ldr	r3, [sp, #0x14]
  3ef604: ed93 4b66    	vldr	d4, [r3, #408]
  3ef608: ed93 5b68    	vldr	d5, [r3, #416]
  3ef60c: ed9d 6b0c    	vldr	d6, [sp, #48]
  3ef610: ed9d 7b0e    	vldr	d7, [sp, #56]
  3ef614: 4610         	mov	r0, r2
  3ef616: eeb0 0b44    	vmov.f64	d0, d4
  3ef61a: eeb0 1b45    	vmov.f64	d1, d5
  3ef61e: eeb0 2b46    	vmov.f64	d2, d6
  3ef622: eeb0 3b47    	vmov.f64	d3, d7
  3ef626: f7fe fe5d    	bl	0x3ee2e4 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x2a8> @ imm = #-0x1346
  3ef62a: ed9d 7a04    	vldr	s14, [sp, #16]
  3ef62e: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3ef632: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef636: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef63a: ed9f 6b73    	vldr	d6, [pc, #460]          @ 0x3ef808 <SoldierRemoteController::updateStep(float)+0x268>
  3ef63e: ee36 6b47    	vsub.f64	d6, d6, d7
  3ef642: ed9f 7b73    	vldr	d7, [pc, #460]          @ 0x3ef810 <SoldierRemoteController::updateStep(float)+0x270>
  3ef646: eeb4 6bc7    	vcmpe.f64	d6, d7
  3ef64a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ef64e: d502         	bpl	0x3ef656 <SoldierRemoteController::updateStep(float)+0xb6> @ imm = #0x4
  3ef650: ed9f 7b6f    	vldr	d7, [pc, #444]          @ 0x3ef810 <SoldierRemoteController::updateStep(float)+0x270>
  3ef654: e00b         	b	0x3ef66e <SoldierRemoteController::updateStep(float)+0xce> @ imm = #0x16
  3ef656: ed9d 7a04    	vldr	s14, [sp, #16]
  3ef65a: eef2 7a0e    	vmov.f32	s15, #1.500000e+01
  3ef65e: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef662: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef666: ed9f 6b68    	vldr	d6, [pc, #416]          @ 0x3ef808 <SoldierRemoteController::updateStep(float)+0x268>
  3ef66a: ee36 7b47    	vsub.f64	d7, d6, d7
  3ef66e: ab10         	add	r3, sp, #0x40
  3ef670: ed9d 5b24    	vldr	d5, [sp, #144]
  3ef674: ed9d 6b26    	vldr	d6, [sp, #152]
  3ef678: 4618         	mov	r0, r3
  3ef67a: eeb0 0b45    	vmov.f64	d0, d5
  3ef67e: eeb0 1b46    	vmov.f64	d1, d6
  3ef682: eeb0 2b47    	vmov.f64	d2, d7
  3ef686: f7fe fe59    	bl	0x3ee33c <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x300> @ imm = #-0x134e
  3ef68a: ab14         	add	r3, sp, #0x50
  3ef68c: ed9d 4b0c    	vldr	d4, [sp, #48]
  3ef690: ed9d 5b0e    	vldr	d5, [sp, #56]
  3ef694: ed9d 6b10    	vldr	d6, [sp, #64]
  3ef698: ed9d 7b12    	vldr	d7, [sp, #72]
  3ef69c: 4618         	mov	r0, r3
  3ef69e: eeb0 0b44    	vmov.f64	d0, d4
  3ef6a2: eeb0 1b45    	vmov.f64	d1, d5
  3ef6a6: eeb0 2b46    	vmov.f64	d2, d6
  3ef6aa: eeb0 3b47    	vmov.f64	d3, d7
  3ef6ae: f7fe fded    	bl	0x3ee28c <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x250> @ imm = #-0x1426
  3ef6b2: 9b05         	ldr	r3, [sp, #0x14]
  3ef6b4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef6b8: 4618         	mov	r0, r3
  3ef6ba: f004 fbaf    	bl	0x3f3e1c <SoldierView::getBodyRotation()> @ imm = #0x475e
  3ef6be: ee07 0a90    	vmov	s15, r0
  3ef6c2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef6c6: ec51 0b17    	vmov	r0, r1, d7
  3ef6ca: f6e6 ec1e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x1197c4
  3ef6ce: 4606         	mov	r6, r0
  3ef6d0: 460f         	mov	r7, r1
  3ef6d2: 9b05         	ldr	r3, [sp, #0x14]
  3ef6d4: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef6d8: 4618         	mov	r0, r3
  3ef6da: f004 fb9f    	bl	0x3f3e1c <SoldierView::getBodyRotation()> @ imm = #0x473e
  3ef6de: ee07 0a90    	vmov	s15, r0
  3ef6e2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef6e6: ec51 0b17    	vmov	r0, r1, d7
  3ef6ea: f6e6 ec14    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x1197d8
  3ef6ee: 4602         	mov	r2, r0
  3ef6f0: 460b         	mov	r3, r1
  3ef6f2: a918         	add	r1, sp, #0x60
  3ef6f4: 4608         	mov	r0, r1
  3ef6f6: ec47 6b10    	vmov	d0, r6, r7
  3ef6fa: ec43 2b11    	vmov	d1, r2, r3
  3ef6fe: f7fe fdb1    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x149e
  3ef702: 9b05         	ldr	r3, [sp, #0x14]
  3ef704: edd3 7a61    	vldr	s15, [r3, #388]
  3ef708: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef70c: ec51 0b17    	vmov	r0, r1, d7
  3ef710: f6e6 ebfa    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x11980c
  3ef714: 4606         	mov	r6, r0
  3ef716: 460f         	mov	r7, r1
  3ef718: 9b05         	ldr	r3, [sp, #0x14]
  3ef71a: edd3 7a61    	vldr	s15, [r3, #388]
  3ef71e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef722: ec51 0b17    	vmov	r0, r1, d7
  3ef726: f6e6 ebf6    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x119814
  3ef72a: 4602         	mov	r2, r0
  3ef72c: 460b         	mov	r3, r1
  3ef72e: a91c         	add	r1, sp, #0x70
  3ef730: 4608         	mov	r0, r1
  3ef732: ec47 6b10    	vmov	d0, r6, r7
  3ef736: ec43 2b11    	vmov	d1, r2, r3
  3ef73a: f7fe fd93    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x14da
  3ef73e: ab28         	add	r3, sp, #0xa0
  3ef740: ed9d 6b18    	vldr	d6, [sp, #96]
  3ef744: ed9d 7b1a    	vldr	d7, [sp, #104]
  3ef748: 4618         	mov	r0, r3
  3ef74a: eeb0 0b46    	vmov.f64	d0, d6
  3ef74e: eeb0 1b47    	vmov.f64	d1, d7
  3ef752: ed9f 2b31    	vldr	d2, [pc, #196]          @ 0x3ef818 <SoldierRemoteController::updateStep(float)+0x278>
  3ef756: f7fe fdf1    	bl	0x3ee33c <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x300> @ imm = #-0x141e
  3ef75a: ab2c         	add	r3, sp, #0xb0
  3ef75c: ed9d 6b1c    	vldr	d6, [sp, #112]
  3ef760: ed9d 7b1e    	vldr	d7, [sp, #120]
  3ef764: 4618         	mov	r0, r3
  3ef766: eeb0 0b46    	vmov.f64	d0, d6
  3ef76a: eeb0 1b47    	vmov.f64	d1, d7
  3ef76e: ed9f 2b2c    	vldr	d2, [pc, #176]          @ 0x3ef820 <SoldierRemoteController::updateStep(float)+0x280>
  3ef772: f7fe fde3    	bl	0x3ee33c <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x300> @ imm = #-0x143a
  3ef776: ab20         	add	r3, sp, #0x80
  3ef778: ed9d 4b28    	vldr	d4, [sp, #160]
  3ef77c: ed9d 5b2a    	vldr	d5, [sp, #168]
  3ef780: ed9d 6b2c    	vldr	d6, [sp, #176]
  3ef784: ed9d 7b2e    	vldr	d7, [sp, #184]
  3ef788: 4618         	mov	r0, r3
  3ef78a: eeb0 0b44    	vmov.f64	d0, d4
  3ef78e: eeb0 1b45    	vmov.f64	d1, d5
  3ef792: eeb0 2b46    	vmov.f64	d2, d6
  3ef796: eeb0 3b47    	vmov.f64	d3, d7
  3ef79a: f7fe fd77    	bl	0x3ee28c <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x250> @ imm = #-0x1512
  3ef79e: ab20         	add	r3, sp, #0x80
  3ef7a0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3ef7a2: f7fe fe39    	bl	0x3ee418 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x3dc> @ imm = #-0x138e
  3ef7a6: ee07 0a10    	vmov	s14, r0
  3ef7aa: eddf 7a23    	vldr	s15, [pc, #140]         @ 0x3ef838 <SoldierRemoteController::updateStep(float)+0x298>
  3ef7ae: ee67 7a27    	vmul.f32	s15, s14, s15
  3ef7b2: eef1 7a67    	vneg.f32	s15, s15
  3ef7b6: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3ef7ba: ed8d 7b08    	vstr	d7, [sp, #32]
  3ef7be: 9b05         	ldr	r3, [sp, #0x14]
  3ef7c0: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3ef7c4: 2b00         	cmp	r3, #0x0
  3ef7c6: d03b         	beq	0x3ef840 <SoldierRemoteController::updateStep(float)+0x2a0> @ imm = #0x76
  3ef7c8: 9b05         	ldr	r3, [sp, #0x14]
  3ef7ca: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  3ef7ce: ab30         	add	r3, sp, #0xc0
  3ef7d0: 4618         	mov	r0, r3
  3ef7d2: ed9f 0b15    	vldr	d0, [pc, #84]           @ 0x3ef828 <SoldierRemoteController::updateStep(float)+0x288>
  3ef7d6: ed9f 1b16    	vldr	d1, [pc, #88]           @ 0x3ef830 <SoldierRemoteController::updateStep(float)+0x290>
  3ef7da: f7fe fd43    	bl	0x3ee264 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x228> @ imm = #-0x157a
  3ef7de: ed9d 6b30    	vldr	d6, [sp, #192]
  3ef7e2: ed9d 7b32    	vldr	d7, [sp, #200]
  3ef7e6: 4628         	mov	r0, r5
  3ef7e8: eeb0 0b46    	vmov.f64	d0, d6
  3ef7ec: eeb0 1b47    	vmov.f64	d1, d7
  3ef7f0: f7fe fdca    	bl	0x3ee388 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x34c> @ imm = #-0x146c
  3ef7f4: 9b05         	ldr	r3, [sp, #0x14]
  3ef7f6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef7fa: 4618         	mov	r0, r3
  3ef7fc: 2100         	movs	r1, #0x0
  3ef7fe: f004 fc5f    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0x48be
  3ef802: e042         	b	0x3ef88a <SoldierRemoteController::updateStep(float)+0x2ea> @ imm = #0x84
  3ef804: f3af 8000    	nop.w
  3ef808: 872b         	strh	r3, [r5, #0x38]
  3ef80a: d916         	bls	0x3ef83a <SoldierRemoteController::updateStep(float)+0x29a> @ imm = #0x2c
  3ef80c: f7ce 3fd7    	ubfx	pc, lr, #0xf, #0x18
  3ef810: 999a         	ldr	r1, [sp, #0x268]
  3ef812: 9999         	ldr	r1, [sp, #0x264]
  3ef814: 9999         	ldr	r1, [sp, #0x264]
  3ef816: 3fa9         	subs	r7, #0xa9
  3ef818: 6666         	str	r6, [r4, #0x64]
  3ef81a: 6666         	str	r6, [r4, #0x64]
  3ef81c: 6666         	str	r6, [r4, #0x64]
  3ef81e: 3fe6         	subs	r7, #0xe6
  3ef820: 3333         	adds	r3, #0x33
  3ef822: 3333         	adds	r3, #0x33
  3ef824: 3333         	adds	r3, #0x33
  3ef826: 3fd3         	subs	r7, #0xd3
  3ef828: 0000         	movs	r0, r0
  3ef82a: 0000         	movs	r0, r0
  3ef82c: 8800         	ldrh	r0, [r0]
  3ef82e: 40c3         	lsrs	r3, r0
  3ef830: 0000         	movs	r0, r0
  3ef832: 0000         	movs	r0, r0
  3ef834: 8800         	ldrh	r0, [r0]
  3ef836: c0c3         	stm	r0!, {r0, r1, r6, r7}
  3ef838: fa35 3c8e    	<unknown>
  3ef83c: 345a         	adds	r4, #0x5a
  3ef83e: 0054         	lsls	r4, r2, #0x1
  3ef840: 9b05         	ldr	r3, [sp, #0x14]
  3ef842: f893 31b4    	ldrb.w	r3, [r3, #0x1b4]
  3ef846: f083 0301    	eor	r3, r3, #0x1
  3ef84a: b2db         	uxtb	r3, r3
  3ef84c: 2b00         	cmp	r3, #0x0
  3ef84e: d01c         	beq	0x3ef88a <SoldierRemoteController::updateStep(float)+0x2ea> @ imm = #0x38
  3ef850: 9b05         	ldr	r3, [sp, #0x14]
  3ef852: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ef856: ed9d 6b14    	vldr	d6, [sp, #80]
  3ef85a: ed9d 7b16    	vldr	d7, [sp, #88]
  3ef85e: 4618         	mov	r0, r3
  3ef860: eeb0 0b46    	vmov.f64	d0, d6
  3ef864: eeb0 1b47    	vmov.f64	d1, d7
  3ef868: f7fe fd8e    	bl	0x3ee388 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x34c> @ imm = #-0x14e4
  3ef86c: 9b05         	ldr	r3, [sp, #0x14]
  3ef86e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3ef872: 4618         	mov	r0, r3
  3ef874: e9dd 2308    	ldrd	r2, r3, [sp, #32]
  3ef878: f2e3 fc8b    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2e3916
  3ef87c: 9b05         	ldr	r3, [sp, #0x14]
  3ef87e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef882: 4618         	mov	r0, r3
  3ef884: 2101         	movs	r1, #0x1
  3ef886: f004 fc1b    	bl	0x3f40c0 <SoldierView::setIsVisible(bool)> @ imm = #0x4836
  3ef88a: 9b05         	ldr	r3, [sp, #0x14]
  3ef88c: f893 3166    	ldrb.w	r3, [r3, #0x166]
  3ef890: 2b00         	cmp	r3, #0x0
  3ef892: d015         	beq	0x3ef8c0 <SoldierRemoteController::updateStep(float)+0x320> @ imm = #0x2a
  3ef894: 9b05         	ldr	r3, [sp, #0x14]
  3ef896: ed93 7a5e    	vldr	s14, [r3, #376]
  3ef89a: eddd 7a04    	vldr	s15, [sp, #16]
  3ef89e: ee77 7a27    	vadd.f32	s15, s14, s15
  3ef8a2: 9b05         	ldr	r3, [sp, #0x14]
  3ef8a4: edc3 7a5e    	vstr	s15, [r3, #376]
  3ef8a8: 9b05         	ldr	r3, [sp, #0x14]
  3ef8aa: f8d3 21b0    	ldr.w	r2, [r3, #0x1b0]
  3ef8ae: 9b05         	ldr	r3, [sp, #0x14]
  3ef8b0: f8c3 2110    	str.w	r2, [r3, #0x110]
  3ef8b4: 9b05         	ldr	r3, [sp, #0x14]
  3ef8b6: f8d3 21b0    	ldr.w	r2, [r3, #0x1b0]
  3ef8ba: 9b05         	ldr	r3, [sp, #0x14]
  3ef8bc: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  3ef8c0: 9b05         	ldr	r3, [sp, #0x14]
  3ef8c2: edd3 7a5e    	vldr	s15, [r3, #376]
  3ef8c6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3ef8ca: ed9f 7b9d    	vldr	d7, [pc, #628]          @ 0x3efb40 <SoldierRemoteController::updateStep(float)+0x5a0>
  3ef8ce: eeb4 6bc7    	vcmpe.f64	d6, d7
  3ef8d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3ef8d6: dd1d         	ble	0x3ef914 <SoldierRemoteController::updateStep(float)+0x374> @ imm = #0x3a
  3ef8d8: 9b05         	ldr	r3, [sp, #0x14]
  3ef8da: 681b         	ldr	r3, [r3]
  3ef8dc: f503 732f    	add.w	r3, r3, #0x2bc
  3ef8e0: 681d         	ldr	r5, [r3]
  3ef8e2: ab34         	add	r3, sp, #0xd0
  3ef8e4: 4618         	mov	r0, r3
  3ef8e6: f39a fd85    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39ab0a
  3ef8ea: aa38         	add	r2, sp, #0xe0
  3ef8ec: ab34         	add	r3, sp, #0xd0
  3ef8ee: 4610         	mov	r0, r2
  3ef8f0: 4a95         	ldr	r2, [pc, #0x254]        @ 0x3efb48 <SoldierRemoteController::updateStep(float)+0x5a8>
  3ef8f2: 447a         	add	r2, pc
  3ef8f4: 4611         	mov	r1, r2
  3ef8f6: 461a         	mov	r2, r3
  3ef8f8: f3c7 f8b2    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c7164
  3ef8fc: ab38         	add	r3, sp, #0xe0
  3ef8fe: 9805         	ldr	r0, [sp, #0x14]
  3ef900: 4619         	mov	r1, r3
  3ef902: 47a8         	blx	r5
  3ef904: ab38         	add	r3, sp, #0xe0
  3ef906: 4618         	mov	r0, r3
  3ef908: f3c6 f804    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c6008
  3ef90c: ab34         	add	r3, sp, #0xd0
  3ef90e: 4618         	mov	r0, r3
  3ef910: f39a fd74    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39aae8
  3ef914: 9b05         	ldr	r3, [sp, #0x14]
  3ef916: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  3ef91a: 2b00         	cmp	r3, #0x0
  3ef91c: d00d         	beq	0x3ef93a <SoldierRemoteController::updateStep(float)+0x39a> @ imm = #0x1a
  3ef91e: 9b05         	ldr	r3, [sp, #0x14]
  3ef920: f8d3 20f4    	ldr.w	r2, [r3, #0xf4]
  3ef924: 4b89         	ldr	r3, [pc, #0x224]        @ 0x3efb4c <SoldierRemoteController::updateStep(float)+0x5ac>
  3ef926: 58e3         	ldr	r3, [r4, r3]
  3ef928: 681b         	ldr	r3, [r3]
  3ef92a: 429a         	cmp	r2, r3
  3ef92c: d105         	bne	0x3ef93a <SoldierRemoteController::updateStep(float)+0x39a> @ imm = #0xa
  3ef92e: 9b05         	ldr	r3, [sp, #0x14]
  3ef930: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef934: 4618         	mov	r0, r3
  3ef936: f004 fca9    	bl	0x3f428c <SoldierView::showLabel()> @ imm = #0x4952
  3ef93a: 9b05         	ldr	r3, [sp, #0x14]
  3ef93c: f8d3 50fc    	ldr.w	r5, [r3, #0xfc]
  3ef940: ed9d 7b14    	vldr	d7, [sp, #80]
  3ef944: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3ef948: ed9d 7b16    	vldr	d7, [sp, #88]
  3ef94c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ef950: ab0a         	add	r3, sp, #0x28
  3ef952: 4618         	mov	r0, r3
  3ef954: ee16 1a90    	vmov	r1, s13
  3ef958: ee17 2a90    	vmov	r2, s15
  3ef95c: f1a3 f9c8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a3390
  3ef960: 9b05         	ldr	r3, [sp, #0x14]
  3ef962: ed93 7b62    	vldr	d7, [r3, #392]
  3ef966: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3ef96a: 9b05         	ldr	r3, [sp, #0x14]
  3ef96c: ed93 7b64    	vldr	d7, [r3, #400]
  3ef970: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3ef974: ab34         	add	r3, sp, #0xd0
  3ef976: 4618         	mov	r0, r3
  3ef978: ee16 1a90    	vmov	r1, s13
  3ef97c: ee17 2a90    	vmov	r2, s15
  3ef980: f1a3 f9b6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a336c
  3ef984: ed9d 7b08    	vldr	d7, [sp, #32]
  3ef988: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3ef98c: 9b05         	ldr	r3, [sp, #0x14]
  3ef98e: f8d3 6110    	ldr.w	r6, [r3, #0x110]
  3ef992: 9b05         	ldr	r3, [sp, #0x14]
  3ef994: f503 738a    	add.w	r3, r3, #0x114
  3ef998: aa38         	add	r2, sp, #0xe0
  3ef99a: 4610         	mov	r0, r2
  3ef99c: 4619         	mov	r1, r3
  3ef99e: f1a3 f9b5    	bl	0x592d0c <cocos2d::CCPoint::CCPoint(cocos2d::CCPoint const&)> @ imm = #0x1a336a
  3ef9a2: 9b05         	ldr	r3, [sp, #0x14]
  3ef9a4: f8d3 010c    	ldr.w	r0, [r3, #0x10c]
  3ef9a8: 9b05         	ldr	r3, [sp, #0x14]
  3ef9aa: f893 115a    	ldrb.w	r1, [r3, #0x15a]
  3ef9ae: aa0a         	add	r2, sp, #0x28
  3ef9b0: ab34         	add	r3, sp, #0xd0
  3ef9b2: 9600         	str	r6, [sp]
  3ef9b4: ae38         	add	r6, sp, #0xe0
  3ef9b6: 9601         	str	r6, [sp, #0x4]
  3ef9b8: 9002         	str	r0, [sp, #0x8]
  3ef9ba: 9103         	str	r1, [sp, #0xc]
  3ef9bc: 4628         	mov	r0, r5
  3ef9be: 4611         	mov	r1, r2
  3ef9c0: 461a         	mov	r2, r3
  3ef9c2: ee18 3a10    	vmov	r3, s16
  3ef9c6: f002 ff9f    	bl	0x3f2908 <SoldierView::updateBody(cocos2d::CCPoint, cocos2d::CCPoint, float, float, cocos2d::CCPoint, float, bool)> @ imm = #0x2f3e
  3ef9ca: 9b05         	ldr	r3, [sp, #0x14]
  3ef9cc: f8d3 20fc    	ldr.w	r2, [r3, #0xfc]
  3ef9d0: 9b05         	ldr	r3, [sp, #0x14]
  3ef9d2: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3ef9d6: 2b00         	cmp	r3, #0x0
  3ef9d8: bf0c         	ite	eq
  3ef9da: 2300         	moveq	r3, #0x0
  3ef9dc: 2301         	movne	r3, #0x1
  3ef9de: b2db         	uxtb	r3, r3
  3ef9e0: 4610         	mov	r0, r2
  3ef9e2: 4619         	mov	r1, r3
  3ef9e4: f7ef f8ba    	bl	0x3deb5c <SoldierView::setHasWeapon(bool)> @ imm = #-0x10e8c
  3ef9e8: 9b05         	ldr	r3, [sp, #0x14]
  3ef9ea: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3ef9ee: 4618         	mov	r0, r3
  3ef9f0: 9904         	ldr	r1, [sp, #0x10]
  3ef9f2: f003 f8c5    	bl	0x3f2b80 <SoldierView::updateStep(float)> @ imm = #0x318a
  3ef9f6: 9b05         	ldr	r3, [sp, #0x14]
  3ef9f8: ed93 7a42    	vldr	s14, [r3, #264]
  3ef9fc: eddd 7a04    	vldr	s15, [sp, #16]
  3efa00: ee77 7a27    	vadd.f32	s15, s14, s15
  3efa04: 9b05         	ldr	r3, [sp, #0x14]
  3efa06: edc3 7a42    	vstr	s15, [r3, #264]
  3efa0a: 9b05         	ldr	r3, [sp, #0x14]
  3efa0c: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3efa10: f083 0301    	eor	r3, r3, #0x1
  3efa14: b2db         	uxtb	r3, r3
  3efa16: 2b00         	cmp	r3, #0x0
  3efa18: d05c         	beq	0x3efad4 <SoldierRemoteController::updateStep(float)+0x534> @ imm = #0xb8
  3efa1a: 9b05         	ldr	r3, [sp, #0x14]
  3efa1c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efa20: 2b00         	cmp	r3, #0x0
  3efa22: d021         	beq	0x3efa68 <SoldierRemoteController::updateStep(float)+0x4c8> @ imm = #0x42
  3efa24: 9b05         	ldr	r3, [sp, #0x14]
  3efa26: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efa2a: 681b         	ldr	r3, [r3]
  3efa2c: f503 7341    	add.w	r3, r3, #0x304
  3efa30: 681d         	ldr	r5, [r3]
  3efa32: 9b05         	ldr	r3, [sp, #0x14]
  3efa34: f8d3 6148    	ldr.w	r6, [r3, #0x148]
  3efa38: 9b05         	ldr	r3, [sp, #0x14]
  3efa3a: 681b         	ldr	r3, [r3]
  3efa3c: f503 730f    	add.w	r3, r3, #0x23c
  3efa40: 681b         	ldr	r3, [r3]
  3efa42: 9805         	ldr	r0, [sp, #0x14]
  3efa44: 4798         	blx	r3
  3efa46: 4603         	mov	r3, r0
  3efa48: 4630         	mov	r0, r6
  3efa4a: 4619         	mov	r1, r3
  3efa4c: 47a8         	blx	r5
  3efa4e: 9b05         	ldr	r3, [sp, #0x14]
  3efa50: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efa54: 681b         	ldr	r3, [r3]
  3efa56: f503 73d8    	add.w	r3, r3, #0x1b0
  3efa5a: 681b         	ldr	r3, [r3]
  3efa5c: 9a05         	ldr	r2, [sp, #0x14]
  3efa5e: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3efa62: 4610         	mov	r0, r2
  3efa64: 9904         	ldr	r1, [sp, #0x10]
  3efa66: 4798         	blx	r3
  3efa68: 9b05         	ldr	r3, [sp, #0x14]
  3efa6a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3efa6e: 2b00         	cmp	r3, #0x0
  3efa70: d029         	beq	0x3efac6 <SoldierRemoteController::updateStep(float)+0x526> @ imm = #0x52
  3efa72: 9b05         	ldr	r3, [sp, #0x14]
  3efa74: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3efa78: 681b         	ldr	r3, [r3]
  3efa7a: f503 7341    	add.w	r3, r3, #0x304
  3efa7e: 681d         	ldr	r5, [r3]
  3efa80: 9b05         	ldr	r3, [sp, #0x14]
  3efa82: f8d3 6150    	ldr.w	r6, [r3, #0x150]
  3efa86: 9b05         	ldr	r3, [sp, #0x14]
  3efa88: 681b         	ldr	r3, [r3]
  3efa8a: f503 7321    	add.w	r3, r3, #0x284
  3efa8e: 681b         	ldr	r3, [r3]
  3efa90: 9805         	ldr	r0, [sp, #0x14]
  3efa92: 4798         	blx	r3
  3efa94: 4603         	mov	r3, r0
  3efa96: 4630         	mov	r0, r6
  3efa98: 4619         	mov	r1, r3
  3efa9a: 47a8         	blx	r5
  3efa9c: 9b05         	ldr	r3, [sp, #0x14]
  3efa9e: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3efaa2: 681b         	ldr	r3, [r3]
  3efaa4: f503 73d8    	add.w	r3, r3, #0x1b0
  3efaa8: 681b         	ldr	r3, [r3]
  3efaaa: 9a05         	ldr	r2, [sp, #0x14]
  3efaac: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3efab0: 4610         	mov	r0, r2
  3efab2: 9904         	ldr	r1, [sp, #0x10]
  3efab4: 4798         	blx	r3
  3efab6: 9b05         	ldr	r3, [sp, #0x14]
  3efab8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efabc: 4618         	mov	r0, r3
  3efabe: 2101         	movs	r1, #0x1
  3efac0: f004 fbbe    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0x477c
  3efac4: e006         	b	0x3efad4 <SoldierRemoteController::updateStep(float)+0x534> @ imm = #0xc
  3efac6: 9b05         	ldr	r3, [sp, #0x14]
  3efac8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efacc: 4618         	mov	r0, r3
  3eface: 2100         	movs	r1, #0x0
  3efad0: f004 fbb6    	bl	0x3f4240 <SoldierView::setDualWieldConfiguration(bool)> @ imm = #0x476c
  3efad4: 9b05         	ldr	r3, [sp, #0x14]
  3efad6: edd3 7a43    	vldr	s15, [r3, #268]
  3efada: eef5 7ac0    	vcmpe.f32	s15, #0
  3efade: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3efae2: dd39         	ble	0x3efb58 <SoldierRemoteController::updateStep(float)+0x5b8> @ imm = #0x72
  3efae4: 9b05         	ldr	r3, [sp, #0x14]
  3efae6: ed93 7a42    	vldr	s14, [r3, #264]
  3efaea: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3efaee: eeb4 7ae7    	vcmpe.f32	s14, s15
  3efaf2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3efaf6: dd34         	ble	0x3efb62 <SoldierRemoteController::updateStep(float)+0x5c2> @ imm = #0x68
  3efaf8: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3efb50 <SoldierRemoteController::updateStep(float)+0x5b0>
  3efafa: 58e3         	ldr	r3, [r4, r3]
  3efafc: 681d         	ldr	r5, [r3]
  3efafe: 9b05         	ldr	r3, [sp, #0x14]
  3efb00: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3efb04: 9a05         	ldr	r2, [sp, #0x14]
  3efb06: ed92 7a43    	vldr	s14, [r2, #268]
  3efb0a: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  3efb0e: ee67 7a27    	vmul.f32	s15, s14, s15
  3efb12: edcd 7a02    	vstr	s15, [sp, #8]
  3efb16: f04f 527e    	mov.w	r2, #0x3f800000
  3efb1a: 9203         	str	r2, [sp, #0xc]
  3efb1c: 466a         	mov	r2, sp
  3efb1e: f103 0130    	add.w	r1, r3, #0x30
  3efb22: c903         	ldm	r1, {r0, r1}
  3efb24: e882 0003    	stm.w	r2, {r0, r1}
  3efb28: 3328         	adds	r3, #0x28
  3efb2a: cb0c         	ldm	r3, {r2, r3}
  3efb2c: 4628         	mov	r0, r5
  3efb2e: 2108         	movs	r1, #0x8
  3efb30: f008 fa88    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x8510
  3efb34: 9b05         	ldr	r3, [sp, #0x14]
  3efb36: f04f 0200    	mov.w	r2, #0x0
  3efb3a: f8c3 2108    	str.w	r2, [r3, #0x108]
  3efb3e: e010         	b	0x3efb62 <SoldierRemoteController::updateStep(float)+0x5c2> @ imm = #0x20
  3efb40: 6666         	str	r6, [r4, #0x64]
  3efb42: 6666         	str	r6, [r4, #0x64]
  3efb44: 6666         	str	r6, [r4, #0x64]
  3efb46: 3fd6         	subs	r7, #0xd6
  3efb48: 90da         	str	r0, [sp, #0x368]
  3efb4a: 003e         	movs	r6, r7
  3efb4c: d7d0         	bvc	0x3efaf0 <SoldierRemoteController::updateStep(float)+0x550> @ imm = #-0x60
  3efb4e: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3efb52: ffff 0000    	<unknown>
  3efb56: 4248         	rsbs	r0, r1, #0
  3efb58: 9b05         	ldr	r3, [sp, #0x14]
  3efb5a: f04f 527d    	mov.w	r2, #0x3f400000
  3efb5e: f8c3 2108    	str.w	r2, [r3, #0x108]
  3efb62: 9b05         	ldr	r3, [sp, #0x14]
  3efb64: ed93 7a6b    	vldr	s14, [r3, #428]
  3efb68: eddd 7a04    	vldr	s15, [sp, #16]
  3efb6c: ee77 7a27    	vadd.f32	s15, s14, s15
  3efb70: 9b05         	ldr	r3, [sp, #0x14]
  3efb72: edc3 7a6b    	vstr	s15, [r3, #428]
  3efb76: 9b05         	ldr	r3, [sp, #0x14]
  3efb78: 681b         	ldr	r3, [r3]
  3efb7a: f503 73d8    	add.w	r3, r3, #0x1b0
  3efb7e: 681b         	ldr	r3, [r3]
  3efb80: aa34         	add	r2, sp, #0xd0
  3efb82: 4610         	mov	r0, r2
  3efb84: 9905         	ldr	r1, [sp, #0x14]
  3efb86: 4798         	blx	r3
  3efb88: ab34         	add	r3, sp, #0xd0
  3efb8a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3efb8c: f2e7 fa94    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2e7528
  3efb90: ec41 0b17    	vmov	d7, r0, r1
  3efb94: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3efb98: edcd 7a07    	vstr	s15, [sp, #28]
  3efb9c: 9b05         	ldr	r3, [sp, #0x14]
  3efb9e: ed93 7a6b    	vldr	s14, [r3, #428]
  3efba2: ed5f 6a14    	vldr	s13, [pc, #-80]         @ 0x3efb54 <SoldierRemoteController::updateStep(float)+0x5b4>
  3efba6: eddd 7a07    	vldr	s15, [sp, #28]
  3efbaa: eec6 7aa7    	vdiv.f32	s15, s13, s15
  3efbae: eeb4 7ae7    	vcmpe.f32	s14, s15
  3efbb2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3efbb6: dc00         	bgt	0x3efbba <SoldierRemoteController::updateStep(float)+0x61a> @ imm = #0x0
  3efbb8: e05a         	b	0x3efc70 <SoldierRemoteController::updateStep(float)+0x6d0> @ imm = #0xb4
  3efbba: 9b05         	ldr	r3, [sp, #0x14]
  3efbbc: f893 30e6    	ldrb.w	r3, [r3, #0xe6]
  3efbc0: 2b00         	cmp	r3, #0x0
  3efbc2: d055         	beq	0x3efc70 <SoldierRemoteController::updateStep(float)+0x6d0> @ imm = #0xaa
  3efbc4: 9b05         	ldr	r3, [sp, #0x14]
  3efbc6: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  3efbca: f083 0301    	eor	r3, r3, #0x1
  3efbce: b2db         	uxtb	r3, r3
  3efbd0: 2b00         	cmp	r3, #0x0
  3efbd2: d04d         	beq	0x3efc70 <SoldierRemoteController::updateStep(float)+0x6d0> @ imm = #0x9a
  3efbd4: 9b05         	ldr	r3, [sp, #0x14]
  3efbd6: f04f 0200    	mov.w	r2, #0x0
  3efbda: f8c3 21ac    	str.w	r2, [r3, #0x1ac]
  3efbde: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x3efc80 <SoldierRemoteController::updateStep(float)+0x6e0>
  3efbe0: 58e3         	ldr	r3, [r4, r3]
  3efbe2: 681c         	ldr	r4, [r3]
  3efbe4: 9b05         	ldr	r3, [sp, #0x14]
  3efbe6: 681b         	ldr	r3, [r3]
  3efbe8: f503 73d6    	add.w	r3, r3, #0x1ac
  3efbec: 681b         	ldr	r3, [r3]
  3efbee: aa38         	add	r2, sp, #0xe0
  3efbf0: 4610         	mov	r0, r2
  3efbf2: 9905         	ldr	r1, [sp, #0x14]
  3efbf4: 4798         	blx	r3
  3efbf6: ed9d 7a07    	vldr	s14, [sp, #28]
  3efbfa: eddf 7a1f    	vldr	s15, [pc, #124]         @ 0x3efc78 <SoldierRemoteController::updateStep(float)+0x6d8>
  3efbfe: ee87 8a27    	vdiv.f32	s16, s14, s15
  3efc02: f7fe fafb    	bl	0x3ee1fc <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x1c0> @ imm = #-0x1a0a
  3efc06: 4603         	mov	r3, r0
  3efc08: ee07 3a90    	vmov	s15, r3
  3efc0c: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3efc10: eddf 7a1a    	vldr	s15, [pc, #104]         @ 0x3efc7c <SoldierRemoteController::updateStep(float)+0x6dc>
  3efc14: ee87 7a27    	vdiv.f32	s14, s14, s15
  3efc18: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3efc1c: ee77 7a67    	vsub.f32	s15, s14, s15
  3efc20: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3efc24: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  3efc28: ee26 6b07    	vmul.f64	d6, d6, d7
  3efc2c: eeb6 7b08    	vmov.f64	d7, #7.500000e-01
  3efc30: ee36 7b07    	vadd.f64	d7, d6, d7
  3efc34: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3efc38: ed8d 8a02    	vstr	s16, [sp, #8]
  3efc3c: edcd 7a03    	vstr	s15, [sp, #12]
  3efc40: 466b         	mov	r3, sp
  3efc42: aa3a         	add	r2, sp, #0xe8
  3efc44: e892 0003    	ldm.w	r2, {r0, r1}
  3efc48: e883 0003    	stm.w	r3, {r0, r1}
  3efc4c: ab38         	add	r3, sp, #0xe0
  3efc4e: cb0c         	ldm	r3, {r2, r3}
  3efc50: 4620         	mov	r0, r4
  3efc52: 210a         	movs	r1, #0xa
  3efc54: f008 f9f6    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x83ec
  3efc58: e00a         	b	0x3efc70 <SoldierRemoteController::updateStep(float)+0x6d0> @ imm = #0x14
  3efc5a: ab38         	add	r3, sp, #0xe0
  3efc5c: 4618         	mov	r0, r3
  3efc5e: f3c5 fe59    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5cb2
  3efc62: e7ff         	b	0x3efc64 <SoldierRemoteController::updateStep(float)+0x6c4> @ imm = #-0x2
  3efc64: ab34         	add	r3, sp, #0xd0
  3efc66: 4618         	mov	r0, r3
  3efc68: f39a fbc8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a790
  3efc6c: f398 fa1e    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39843c
  3efc70: b03d         	add	sp, #0xf4
  3efc72: ecbd 8b02    	vpop	{d8}
  3efc76: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3efc77); words below are literal-pool data ---
  3efc78: 0000         	movs	r0, r0
  3efc7a: 4348         	muls	r0, r1, r0
  3efc7c: 0000         	movs	r0, r0
  3efc7e: 4e80         	ldr	r6, [pc, #0x200]        @ 0x3efe80 <SoldierRemoteController::addPrimaryWeapon(Weapon*)+0x124>
  3efc80: d730         	bvc	0x3efce4 <SoldierRemoteController::setThrustFactor(double)+0x10> @ imm = #0x60
  3efc82: ffff f3af    	<unknown>

// ==== SoldierRemoteController::getDualFireAngle
//      file offset 0x3efc88 (= ELF address; Ghidra 0x3ffc88), 28 bytes, Thumb-2
  3efc88: b500         	push	{lr}
  3efc8a: b083         	sub	sp, #0xc
  3efc8c: 9001         	str	r0, [sp, #0x4]
  3efc8e: 9b01         	ldr	r3, [sp, #0x4]
  3efc90: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efc94: 4618         	mov	r0, r3
  3efc96: f004 f877    	bl	0x3f3d88 <SoldierView::getDualFiringAngle()> @ imm = #0x40ee
  3efc9a: 4603         	mov	r3, r0
  3efc9c: 4618         	mov	r0, r3
  3efc9e: b003         	add	sp, #0xc
  3efca0: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierRemoteController::getFireAngle
//      file offset 0x3efca4 (= ELF address; Ghidra 0x3ffca4), 28 bytes, Thumb-2
  3efca4: b500         	push	{lr}
  3efca6: b083         	sub	sp, #0xc
  3efca8: 9001         	str	r0, [sp, #0x4]
  3efcaa: 9b01         	ldr	r3, [sp, #0x4]
  3efcac: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efcb0: 4618         	mov	r0, r3
  3efcb2: f004 f889    	bl	0x3f3dc8 <SoldierView::getFiringAngle()> @ imm = #0x4112
  3efcb6: 4603         	mov	r3, r0
  3efcb8: 4618         	mov	r0, r3
  3efcba: b003         	add	sp, #0xc
  3efcbc: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierRemoteController::setFireAngle
//      file offset 0x3efcc0 (= ELF address; Ghidra 0x3ffcc0), 18 bytes, Thumb-2
  3efcc0: b082         	sub	sp, #0x8
  3efcc2: 9001         	str	r0, [sp, #0x4]
  3efcc4: 9100         	str	r1, [sp]
  3efcc6: 9b01         	ldr	r3, [sp, #0x4]
  3efcc8: 9a00         	ldr	r2, [sp]
  3efcca: f8c3 2110    	str.w	r2, [r3, #0x110]
  3efcce: b002         	add	sp, #0x8
  3efcd0: 4770         	bx	lr

// ==== SoldierRemoteController::setThrustFactor
//      file offset 0x3efcd4 (= ELF address; Ghidra 0x3ffcd4), 26 bytes, Thumb-2
  3efcd4: b084         	sub	sp, #0x10
  3efcd6: 9003         	str	r0, [sp, #0xc]
  3efcd8: e9cd 2300    	strd	r2, r3, [sp]
  3efcdc: ed9d 7b00    	vldr	d7, [sp]
  3efce0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3efce4: 9b03         	ldr	r3, [sp, #0xc]
  3efce6: edc3 7a43    	vstr	s15, [r3, #268]
  3efcea: b004         	add	sp, #0x10
  3efcec: 4770         	bx	lr

// ==== SoldierRemoteController::setSoldierView
//      file offset 0x3efcf0 (= ELF address; Ghidra 0x3ffcf0), 18 bytes, Thumb-2
  3efcf0: b082         	sub	sp, #0x8
  3efcf2: 9001         	str	r0, [sp, #0x4]
  3efcf4: 9100         	str	r1, [sp]
  3efcf6: 9b01         	ldr	r3, [sp, #0x4]
  3efcf8: 9a00         	ldr	r2, [sp]
  3efcfa: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  3efcfe: b002         	add	sp, #0x8
  3efd00: 4770         	bx	lr

// ==== SoldierRemoteController::getSoldierView
//      file offset 0x3efd04 (= ELF address; Ghidra 0x3ffd04), 16 bytes, Thumb-2
  3efd04: b082         	sub	sp, #0x8
  3efd06: 9001         	str	r0, [sp, #0x4]
  3efd08: 9b01         	ldr	r3, [sp, #0x4]
  3efd0a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efd0e: 4618         	mov	r0, r3
  3efd10: b002         	add	sp, #0x8
  3efd12: 4770         	bx	lr

// ==== SoldierRemoteController::setJoyOffset
//      file offset 0x3efd14 (= ELF address; Ghidra 0x3ffd14), 72 bytes, Thumb-2
  3efd14: b082         	sub	sp, #0x8
  3efd16: b510         	push	{r4, lr}
  3efd18: b084         	sub	sp, #0x10
  3efd1a: 9001         	str	r0, [sp, #0x4]
  3efd1c: a906         	add	r1, sp, #0x18
  3efd1e: e881 000c    	stm.w	r1, {r2, r3}
  3efd22: 9b01         	ldr	r3, [sp, #0x4]
  3efd24: f503 748a    	add.w	r4, r3, #0x114
  3efd28: ed9d 7b06    	vldr	d7, [sp, #24]
  3efd2c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3efd30: ed9d 7b08    	vldr	d7, [sp, #32]
  3efd34: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3efd38: ab02         	add	r3, sp, #0x8
  3efd3a: 4618         	mov	r0, r3
  3efd3c: ee16 1a90    	vmov	r1, s13
  3efd40: ee17 2a90    	vmov	r2, s15
  3efd44: f1a2 ffd4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a2fa8
  3efd48: ab02         	add	r3, sp, #0x8
  3efd4a: 4620         	mov	r0, r4
  3efd4c: 4619         	mov	r1, r3
  3efd4e: f1a2 fffd    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1a2ffa
  3efd52: b004         	add	sp, #0x10
  3efd54: e8bd 4010    	pop.w	{r4, lr}
  3efd58: b002         	add	sp, #0x8
  3efd5a: 4770         	bx	lr

// ==== SoldierRemoteController::addPrimaryWeapon
//      file offset 0x3efd5c (= ELF address; Ghidra 0x3ffd5c), 308 bytes, Thumb-2
  3efd5c: b570         	push	{r4, r5, r6, lr}
  3efd5e: b086         	sub	sp, #0x18
  3efd60: 9003         	str	r0, [sp, #0xc]
  3efd62: 9102         	str	r1, [sp, #0x8]
  3efd64: 4c48         	ldr	r4, [pc, #0x120]        @ 0x3efe88 <SoldierRemoteController::addPrimaryWeapon(Weapon*)+0x12c>
  3efd66: 447c         	add	r4, pc
  3efd68: 9b02         	ldr	r3, [sp, #0x8]
  3efd6a: 2b00         	cmp	r3, #0x0
  3efd6c: f000 808a    	beq.w	0x3efe84 <SoldierRemoteController::addPrimaryWeapon(Weapon*)+0x128> @ imm = #0x114
  3efd70: 9b03         	ldr	r3, [sp, #0xc]
  3efd72: 9a02         	ldr	r2, [sp, #0x8]
  3efd74: f8c3 2148    	str.w	r2, [r3, #0x148]
  3efd78: 9b03         	ldr	r3, [sp, #0xc]
  3efd7a: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efd7e: 4618         	mov	r0, r3
  3efd80: f1a8 f8b2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a8164
  3efd84: 9b03         	ldr	r3, [sp, #0xc]
  3efd86: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efd8a: 681b         	ldr	r3, [r3]
  3efd8c: f503 73f8    	add.w	r3, r3, #0x1f0
  3efd90: 681d         	ldr	r5, [r3]
  3efd92: 9b03         	ldr	r3, [sp, #0xc]
  3efd94: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efd98: 461e         	mov	r6, r3
  3efd9a: 9b03         	ldr	r3, [sp, #0xc]
  3efd9c: 681b         	ldr	r3, [r3]
  3efd9e: f503 73e0    	add.w	r3, r3, #0x1c0
  3efda2: 681b         	ldr	r3, [r3]
  3efda4: 9a03         	ldr	r2, [sp, #0xc]
  3efda6: a905         	add	r1, sp, #0x14
  3efda8: 4608         	mov	r0, r1
  3efdaa: 4611         	mov	r1, r2
  3efdac: 4798         	blx	r3
  3efdae: ab05         	add	r3, sp, #0x14
  3efdb0: 4630         	mov	r0, r6
  3efdb2: 4619         	mov	r1, r3
  3efdb4: 47a8         	blx	r5
  3efdb6: ab05         	add	r3, sp, #0x14
  3efdb8: 4618         	mov	r0, r3
  3efdba: f3c5 fdab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5b56
  3efdbe: 9b03         	ldr	r3, [sp, #0xc]
  3efdc0: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efdc4: 681b         	ldr	r3, [r3]
  3efdc6: f503 730f    	add.w	r3, r3, #0x23c
  3efdca: 681b         	ldr	r3, [r3]
  3efdcc: 9a03         	ldr	r2, [sp, #0xc]
  3efdce: f8d2 1148    	ldr.w	r1, [r2, #0x148]
  3efdd2: 9a03         	ldr	r2, [sp, #0xc]
  3efdd4: 32f8         	adds	r2, #0xf8
  3efdd6: 4608         	mov	r0, r1
  3efdd8: 4611         	mov	r1, r2
  3efdda: 4798         	blx	r3
  3efddc: 9b03         	ldr	r3, [sp, #0xc]
  3efdde: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3efde2: 681b         	ldr	r3, [r3]
  3efde4: f503 73ea    	add.w	r3, r3, #0x1d4
  3efde8: 681b         	ldr	r3, [r3]
  3efdea: 9a03         	ldr	r2, [sp, #0xc]
  3efdec: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3efdf0: 4610         	mov	r0, r2
  3efdf2: 4798         	blx	r3
  3efdf4: 9b03         	ldr	r3, [sp, #0xc]
  3efdf6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efdfa: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3efdfe: 681b         	ldr	r3, [r3]
  3efe00: 33cc         	adds	r3, #0xcc
  3efe02: 681b         	ldr	r3, [r3]
  3efe04: 9a03         	ldr	r2, [sp, #0xc]
  3efe06: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3efe0a: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3efe0e: 9a03         	ldr	r2, [sp, #0xc]
  3efe10: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3efe14: 4608         	mov	r0, r1
  3efe16: 4611         	mov	r1, r2
  3efe18: 2200         	movs	r2, #0x0
  3efe1a: 4798         	blx	r3
  3efe1c: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3efe8c <SoldierRemoteController::addPrimaryWeapon(Weapon*)+0x130>
  3efe1e: 58e3         	ldr	r3, [r4, r3]
  3efe20: 681c         	ldr	r4, [r3]
  3efe22: 9b03         	ldr	r3, [sp, #0xc]
  3efe24: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3efe28: 466a         	mov	r2, sp
  3efe2a: f103 0130    	add.w	r1, r3, #0x30
  3efe2e: c903         	ldm	r1, {r0, r1}
  3efe30: e882 0003    	stm.w	r2, {r0, r1}
  3efe34: 3328         	adds	r3, #0x28
  3efe36: cb0c         	ldm	r3, {r2, r3}
  3efe38: 4620         	mov	r0, r4
  3efe3a: 2104         	movs	r1, #0x4
  3efe3c: f008 f8dc    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x81b8
  3efe40: 9b03         	ldr	r3, [sp, #0xc]
  3efe42: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3efe46: 4618         	mov	r0, r3
  3efe48: f04f 0200    	mov.w	r2, #0x0
  3efe4c: f44f 4300    	mov.w	r3, #0x8000
  3efe50: f2c4 0356    	movt	r3, #0x4056
  3efe54: f003 ffea    	bl	0x3f3e2c <SoldierView::setPrimaryRecoilRotation(double)> @ imm = #0x3fd4
  3efe58: 9b03         	ldr	r3, [sp, #0xc]
  3efe5a: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3efe5e: 9b02         	ldr	r3, [sp, #0x8]
  3efe60: 681b         	ldr	r3, [r3]
  3efe62: f503 7339    	add.w	r3, r3, #0x2e4
  3efe66: 681b         	ldr	r3, [r3]
  3efe68: 9802         	ldr	r0, [sp, #0x8]
  3efe6a: 4798         	blx	r3
  3efe6c: 4603         	mov	r3, r0
  3efe6e: 4620         	mov	r0, r4
  3efe70: 4619         	mov	r1, r3
  3efe72: f003 ff4d    	bl	0x3f3d10 <SoldierView::setWeaponAngleOffset(float)> @ imm = #0x3e9a
  3efe76: e005         	b	0x3efe84 <SoldierRemoteController::addPrimaryWeapon(Weapon*)+0x128> @ imm = #0xa
  3efe78: ab05         	add	r3, sp, #0x14
  3efe7a: 4618         	mov	r0, r3
  3efe7c: f3c5 fd4a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5a94
  3efe80: f398 f914    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x398228
  3efe84: b006         	add	sp, #0x18
  3efe86: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3efe87); words below are literal-pool data ---
  3efe88: 2ca2         	cmp	r4, #0xa2
  3efe8a: 0054         	lsls	r4, r2, #0x1
  3efe8c: d730         	bvc	0x3efef0 <SoldierRemoteController::addSecondaryWeapon(Weapon*)+0x60> @ imm = #0x60
  3efe8e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== SoldierRemoteController::addSecondaryWeapon
//      file offset 0x3efe90 (= ELF address; Ghidra 0x3ffe90), 204 bytes, Thumb-2
  3efe90: b530         	push	{r4, r5, lr}
  3efe92: b085         	sub	sp, #0x14
  3efe94: 9001         	str	r0, [sp, #0x4]
  3efe96: 9100         	str	r1, [sp]
  3efe98: 9b00         	ldr	r3, [sp]
  3efe9a: 2b00         	cmp	r3, #0x0
  3efe9c: d05c         	beq	0x3eff58 <SoldierRemoteController::addSecondaryWeapon(Weapon*)+0xc8> @ imm = #0xb8
  3efe9e: 9b01         	ldr	r3, [sp, #0x4]
  3efea0: 9a00         	ldr	r2, [sp]
  3efea2: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3efea6: 9b01         	ldr	r3, [sp, #0x4]
  3efea8: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3efeac: 4618         	mov	r0, r3
  3efeae: f1a8 f81b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a8036
  3efeb2: 9b01         	ldr	r3, [sp, #0x4]
  3efeb4: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3efeb8: 681b         	ldr	r3, [r3]
  3efeba: f503 73f8    	add.w	r3, r3, #0x1f0
  3efebe: 681c         	ldr	r4, [r3]
  3efec0: 9b01         	ldr	r3, [sp, #0x4]
  3efec2: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3efec6: 461d         	mov	r5, r3
  3efec8: 9b01         	ldr	r3, [sp, #0x4]
  3efeca: 681b         	ldr	r3, [r3]
  3efecc: f503 73e0    	add.w	r3, r3, #0x1c0
  3efed0: 681b         	ldr	r3, [r3]
  3efed2: 9a01         	ldr	r2, [sp, #0x4]
  3efed4: a903         	add	r1, sp, #0xc
  3efed6: 4608         	mov	r0, r1
  3efed8: 4611         	mov	r1, r2
  3efeda: 4798         	blx	r3
  3efedc: ab03         	add	r3, sp, #0xc
  3efede: 4628         	mov	r0, r5
  3efee0: 4619         	mov	r1, r3
  3efee2: 47a0         	blx	r4
  3efee4: ab03         	add	r3, sp, #0xc
  3efee6: 4618         	mov	r0, r3
  3efee8: f3c5 fd14    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5a28
  3efeec: 9b01         	ldr	r3, [sp, #0x4]
  3efeee: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3efef2: 681b         	ldr	r3, [r3]
  3efef4: f503 730f    	add.w	r3, r3, #0x23c
  3efef8: 681b         	ldr	r3, [r3]
  3efefa: 9a01         	ldr	r2, [sp, #0x4]
  3efefc: f8d2 114c    	ldr.w	r1, [r2, #0x14c]
  3eff00: 9a01         	ldr	r2, [sp, #0x4]
  3eff02: 32f8         	adds	r2, #0xf8
  3eff04: 4608         	mov	r0, r1
  3eff06: 4611         	mov	r1, r2
  3eff08: 4798         	blx	r3
  3eff0a: 9b01         	ldr	r3, [sp, #0x4]
  3eff0c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3eff10: 681b         	ldr	r3, [r3]
  3eff12: f503 73ec    	add.w	r3, r3, #0x1d8
  3eff16: 681b         	ldr	r3, [r3]
  3eff18: 9a01         	ldr	r2, [sp, #0x4]
  3eff1a: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3eff1e: 4610         	mov	r0, r2
  3eff20: 4798         	blx	r3
  3eff22: 9b01         	ldr	r3, [sp, #0x4]
  3eff24: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3eff28: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3eff2c: 681b         	ldr	r3, [r3]
  3eff2e: 33cc         	adds	r3, #0xcc
  3eff30: 681b         	ldr	r3, [r3]
  3eff32: 9a01         	ldr	r2, [sp, #0x4]
  3eff34: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3eff38: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3eff3c: 9a01         	ldr	r2, [sp, #0x4]
  3eff3e: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3eff42: 4608         	mov	r0, r1
  3eff44: 4611         	mov	r1, r2
  3eff46: 2200         	movs	r2, #0x0
  3eff48: 4798         	blx	r3
  3eff4a: e005         	b	0x3eff58 <SoldierRemoteController::addSecondaryWeapon(Weapon*)+0xc8> @ imm = #0xa
  3eff4c: ab03         	add	r3, sp, #0xc
  3eff4e: 4618         	mov	r0, r3
  3eff50: f3c5 fce0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c59c0
  3eff54: f398 f8aa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x398154
  3eff58: b005         	add	sp, #0x14
  3eff5a: bd30         	pop	{r4, r5, pc}

// ==== SoldierRemoteController::addDualWeapon
//      file offset 0x3eff5c (= ELF address; Ghidra 0x3fff5c), 336 bytes, Thumb-2
  3eff5c: b570         	push	{r4, r5, r6, lr}
  3eff5e: b086         	sub	sp, #0x18
  3eff60: 9003         	str	r0, [sp, #0xc]
  3eff62: 9102         	str	r1, [sp, #0x8]
  3eff64: 4c4f         	ldr	r4, [pc, #0x13c]        @ 0x3f00a4 <SoldierRemoteController::addDualWeapon(Weapon*)+0x148>
  3eff66: 447c         	add	r4, pc
  3eff68: 9b02         	ldr	r3, [sp, #0x8]
  3eff6a: 2b00         	cmp	r3, #0x0
  3eff6c: f000 8097    	beq.w	0x3f009e <SoldierRemoteController::addDualWeapon(Weapon*)+0x142> @ imm = #0x12e
  3eff70: 9b03         	ldr	r3, [sp, #0xc]
  3eff72: 9a02         	ldr	r2, [sp, #0x8]
  3eff74: f8c3 2150    	str.w	r2, [r3, #0x150]
  3eff78: 9b03         	ldr	r3, [sp, #0xc]
  3eff7a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3eff7e: 4618         	mov	r0, r3
  3eff80: f1a7 ffb2    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a7f64
  3eff84: 9b03         	ldr	r3, [sp, #0xc]
  3eff86: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3eff8a: 681b         	ldr	r3, [r3]
  3eff8c: f503 73f8    	add.w	r3, r3, #0x1f0
  3eff90: 681d         	ldr	r5, [r3]
  3eff92: 9b03         	ldr	r3, [sp, #0xc]
  3eff94: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3eff98: 461e         	mov	r6, r3
  3eff9a: 9b03         	ldr	r3, [sp, #0xc]
  3eff9c: 681b         	ldr	r3, [r3]
  3eff9e: f503 73e0    	add.w	r3, r3, #0x1c0
  3effa2: 681b         	ldr	r3, [r3]
  3effa4: 9a03         	ldr	r2, [sp, #0xc]
  3effa6: a905         	add	r1, sp, #0x14
  3effa8: 4608         	mov	r0, r1
  3effaa: 4611         	mov	r1, r2
  3effac: 4798         	blx	r3
  3effae: ab05         	add	r3, sp, #0x14
  3effb0: 4630         	mov	r0, r6
  3effb2: 4619         	mov	r1, r3
  3effb4: 47a8         	blx	r5
  3effb6: ab05         	add	r3, sp, #0x14
  3effb8: 4618         	mov	r0, r3
  3effba: f3c5 fcab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5956
  3effbe: 9b03         	ldr	r3, [sp, #0xc]
  3effc0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3effc4: 681b         	ldr	r3, [r3]
  3effc6: f503 730f    	add.w	r3, r3, #0x23c
  3effca: 681b         	ldr	r3, [r3]
  3effcc: 9a03         	ldr	r2, [sp, #0xc]
  3effce: f8d2 1150    	ldr.w	r1, [r2, #0x150]
  3effd2: 9a03         	ldr	r2, [sp, #0xc]
  3effd4: 32f8         	adds	r2, #0xf8
  3effd6: 4608         	mov	r0, r1
  3effd8: 4611         	mov	r1, r2
  3effda: 4798         	blx	r3
  3effdc: 9b03         	ldr	r3, [sp, #0xc]
  3effde: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3effe2: 681b         	ldr	r3, [r3]
  3effe4: f503 73ee    	add.w	r3, r3, #0x1dc
  3effe8: 681b         	ldr	r3, [r3]
  3effea: 9a03         	ldr	r2, [sp, #0xc]
  3effec: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3efff0: 4610         	mov	r0, r2
  3efff2: 4798         	blx	r3
  3efff4: 9b03         	ldr	r3, [sp, #0xc]
  3efff6: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3efffa: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3efffe: 2b00         	cmp	r3, #0x0
  3f0000: d014         	beq	0x3f002c <SoldierRemoteController::addDualWeapon(Weapon*)+0xd0> @ imm = #0x28
  3f0002: 9b03         	ldr	r3, [sp, #0xc]
  3f0004: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0008: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f000c: 681b         	ldr	r3, [r3]
  3f000e: 33cc         	adds	r3, #0xcc
  3f0010: 681b         	ldr	r3, [r3]
  3f0012: 9a03         	ldr	r2, [sp, #0xc]
  3f0014: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f0018: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3f001c: 9a03         	ldr	r2, [sp, #0xc]
  3f001e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3f0022: 4608         	mov	r0, r1
  3f0024: 4611         	mov	r1, r2
  3f0026: 2201         	movs	r2, #0x1
  3f0028: 4798         	blx	r3
  3f002a: e013         	b	0x3f0054 <SoldierRemoteController::addDualWeapon(Weapon*)+0xf8> @ imm = #0x26
  3f002c: 9b03         	ldr	r3, [sp, #0xc]
  3f002e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0032: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f0036: 681b         	ldr	r3, [r3]
  3f0038: 33cc         	adds	r3, #0xcc
  3f003a: 681b         	ldr	r3, [r3]
  3f003c: 9a03         	ldr	r2, [sp, #0xc]
  3f003e: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f0042: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f0046: 9a03         	ldr	r2, [sp, #0xc]
  3f0048: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3f004c: 4608         	mov	r0, r1
  3f004e: 4611         	mov	r1, r2
  3f0050: 2201         	movs	r2, #0x1
  3f0052: 4798         	blx	r3
  3f0054: 4b14         	ldr	r3, [pc, #0x50]         @ 0x3f00a8 <SoldierRemoteController::addDualWeapon(Weapon*)+0x14c>
  3f0056: 58e3         	ldr	r3, [r4, r3]
  3f0058: 681c         	ldr	r4, [r3]
  3f005a: 9b03         	ldr	r3, [sp, #0xc]
  3f005c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3f0060: 466a         	mov	r2, sp
  3f0062: f103 0130    	add.w	r1, r3, #0x30
  3f0066: c903         	ldm	r1, {r0, r1}
  3f0068: e882 0003    	stm.w	r2, {r0, r1}
  3f006c: 3328         	adds	r3, #0x28
  3f006e: cb0c         	ldm	r3, {r2, r3}
  3f0070: 4620         	mov	r0, r4
  3f0072: 2104         	movs	r1, #0x4
  3f0074: f007 ffc0    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x7f80
  3f0078: 9b03         	ldr	r3, [sp, #0xc]
  3f007a: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f007e: 4618         	mov	r0, r3
  3f0080: f04f 0200    	mov.w	r2, #0x0
  3f0084: f44f 4300    	mov.w	r3, #0x8000
  3f0088: f2c4 0356    	movt	r3, #0x4056
  3f008c: f003 fedc    	bl	0x3f3e48 <SoldierView::setDualRecoilRotation(double)> @ imm = #0x3db8
  3f0090: e005         	b	0x3f009e <SoldierRemoteController::addDualWeapon(Weapon*)+0x142> @ imm = #0xa
  3f0092: ab05         	add	r3, sp, #0x14
  3f0094: 4618         	mov	r0, r3
  3f0096: f3c5 fc3d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c587a
  3f009a: f398 f807    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x39800e
  3f009e: b006         	add	sp, #0x18
  3f00a0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3f00a1); words below are literal-pool data ---
  3f00a2: bf00         	nop
  3f00a4: 2aa2         	cmp	r2, #0xa2
  3f00a6: 0054         	lsls	r4, r2, #0x1
  3f00a8: d730         	bvc	0x3f010c <SoldierRemoteController::addSideWeapon(Weapon*)+0x60> @ imm = #0x60
  3f00aa: ffff b500    	<unknown>

// ==== SoldierRemoteController::addSideWeapon
//      file offset 0x3f00ac (= ELF address; Ghidra 0x4000ac), 104 bytes, Thumb-2
  3f00ac: b500         	push	{lr}
  3f00ae: b083         	sub	sp, #0xc
  3f00b0: 9001         	str	r0, [sp, #0x4]
  3f00b2: 9100         	str	r1, [sp]
  3f00b4: 9b00         	ldr	r3, [sp]
  3f00b6: 2b00         	cmp	r3, #0x0
  3f00b8: d029         	beq	0x3f010e <SoldierRemoteController::addSideWeapon(Weapon*)+0x62> @ imm = #0x52
  3f00ba: 9b01         	ldr	r3, [sp, #0x4]
  3f00bc: 9a00         	ldr	r2, [sp]
  3f00be: f8c3 2154    	str.w	r2, [r3, #0x154]
  3f00c2: 9b01         	ldr	r3, [sp, #0x4]
  3f00c4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3f00c8: 4618         	mov	r0, r3
  3f00ca: f1a7 ff0d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a7e1a
  3f00ce: 9b01         	ldr	r3, [sp, #0x4]
  3f00d0: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3f00d4: 681b         	ldr	r3, [r3]
  3f00d6: f503 73ea    	add.w	r3, r3, #0x1d4
  3f00da: 681b         	ldr	r3, [r3]
  3f00dc: 9a01         	ldr	r2, [sp, #0x4]
  3f00de: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3f00e2: 4610         	mov	r0, r2
  3f00e4: 4798         	blx	r3
  3f00e6: 9b01         	ldr	r3, [sp, #0x4]
  3f00e8: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f00ec: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f00f0: 681b         	ldr	r3, [r3]
  3f00f2: 33cc         	adds	r3, #0xcc
  3f00f4: 681b         	ldr	r3, [r3]
  3f00f6: 9a01         	ldr	r2, [sp, #0x4]
  3f00f8: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f00fc: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f0100: 9a01         	ldr	r2, [sp, #0x4]
  3f0102: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3f0106: 4608         	mov	r0, r1
  3f0108: 4611         	mov	r1, r2
  3f010a: 2203         	movs	r2, #0x3
  3f010c: 4798         	blx	r3
  3f010e: b003         	add	sp, #0xc
  3f0110: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierRemoteController::removePrimaryWeapon
//      file offset 0x3f0114 (= ELF address; Ghidra 0x400114), 232 bytes, Thumb-2
  3f0114: b530         	push	{r4, r5, lr}
  3f0116: b085         	sub	sp, #0x14
  3f0118: 9001         	str	r0, [sp, #0x4]
  3f011a: 9b01         	ldr	r3, [sp, #0x4]
  3f011c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f0120: 2b00         	cmp	r3, #0x0
  3f0122: d066         	beq	0x3f01f2 <SoldierRemoteController::removePrimaryWeapon()+0xde> @ imm = #0xcc
  3f0124: 9b01         	ldr	r3, [sp, #0x4]
  3f0126: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f012a: 681b         	ldr	r3, [r3]
  3f012c: f503 7314    	add.w	r3, r3, #0x250
  3f0130: 681b         	ldr	r3, [r3]
  3f0132: 9a01         	ldr	r2, [sp, #0x4]
  3f0134: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3f0138: 4610         	mov	r0, r2
  3f013a: 4798         	blx	r3
  3f013c: 9b01         	ldr	r3, [sp, #0x4]
  3f013e: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f0142: 681b         	ldr	r3, [r3]
  3f0144: f503 73f8    	add.w	r3, r3, #0x1f0
  3f0148: 681c         	ldr	r4, [r3]
  3f014a: 9b01         	ldr	r3, [sp, #0x4]
  3f014c: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f0150: 461d         	mov	r5, r3
  3f0152: ab02         	add	r3, sp, #0x8
  3f0154: 4618         	mov	r0, r3
  3f0156: f39a f94d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39a29a
  3f015a: aa03         	add	r2, sp, #0xc
  3f015c: ab02         	add	r3, sp, #0x8
  3f015e: 4610         	mov	r0, r2
  3f0160: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3f01f8 <SoldierRemoteController::removePrimaryWeapon()+0xe4>
  3f0162: 447a         	add	r2, pc
  3f0164: 4611         	mov	r1, r2
  3f0166: 461a         	mov	r2, r3
  3f0168: f3c6 fc7a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c68f4
  3f016c: ab03         	add	r3, sp, #0xc
  3f016e: 4628         	mov	r0, r5
  3f0170: 4619         	mov	r1, r3
  3f0172: 47a0         	blx	r4
  3f0174: ab03         	add	r3, sp, #0xc
  3f0176: 4618         	mov	r0, r3
  3f0178: f3c5 fbcc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5798
  3f017c: ab02         	add	r3, sp, #0x8
  3f017e: 4618         	mov	r0, r3
  3f0180: f39a f93c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a278
  3f0184: 9b01         	ldr	r3, [sp, #0x4]
  3f0186: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f018a: 681b         	ldr	r3, [r3]
  3f018c: f503 730f    	add.w	r3, r3, #0x23c
  3f0190: 681b         	ldr	r3, [r3]
  3f0192: 9a01         	ldr	r2, [sp, #0x4]
  3f0194: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3f0198: 4610         	mov	r0, r2
  3f019a: 2100         	movs	r1, #0x0
  3f019c: 4798         	blx	r3
  3f019e: 9b01         	ldr	r3, [sp, #0x4]
  3f01a0: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f01a4: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3f01a8: 681b         	ldr	r3, [r3]
  3f01aa: 33f4         	adds	r3, #0xf4
  3f01ac: 681b         	ldr	r3, [r3]
  3f01ae: 9a01         	ldr	r2, [sp, #0x4]
  3f01b0: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f01b4: f8d2 1110    	ldr.w	r1, [r2, #0x110]
  3f01b8: 9a01         	ldr	r2, [sp, #0x4]
  3f01ba: f8d2 2148    	ldr.w	r2, [r2, #0x148]
  3f01be: 4608         	mov	r0, r1
  3f01c0: 4611         	mov	r1, r2
  3f01c2: 2200         	movs	r2, #0x0
  3f01c4: 4798         	blx	r3
  3f01c6: 9b01         	ldr	r3, [sp, #0x4]
  3f01c8: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f01cc: 4618         	mov	r0, r3
  3f01ce: f1a7 fe73    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a7ce6
  3f01d2: 9b01         	ldr	r3, [sp, #0x4]
  3f01d4: 2200         	movs	r2, #0x0
  3f01d6: f8c3 2148    	str.w	r2, [r3, #0x148]
  3f01da: e00a         	b	0x3f01f2 <SoldierRemoteController::removePrimaryWeapon()+0xde> @ imm = #0x14
  3f01dc: ab03         	add	r3, sp, #0xc
  3f01de: 4618         	mov	r0, r3
  3f01e0: f3c5 fb98    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5730
  3f01e4: e7ff         	b	0x3f01e6 <SoldierRemoteController::removePrimaryWeapon()+0xd2> @ imm = #-0x2
  3f01e6: ab02         	add	r3, sp, #0x8
  3f01e8: 4618         	mov	r0, r3
  3f01ea: f39a f907    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a20e
  3f01ee: f397 ff5d    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x397eba
  3f01f2: b005         	add	sp, #0x14
  3f01f4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f01f5); words below are literal-pool data ---
  3f01f6: bf00         	nop
  3f01f8: 886a         	ldrh	r2, [r5, #0x2]
  3f01fa: 003e         	movs	r6, r7

// ==== SoldierRemoteController::removeSecondaryWeapon
//      file offset 0x3f01fc (= ELF address; Ghidra 0x4001fc), 208 bytes, Thumb-2
  3f01fc: b530         	push	{r4, r5, lr}
  3f01fe: b085         	sub	sp, #0x14
  3f0200: 9001         	str	r0, [sp, #0x4]
  3f0202: 9b01         	ldr	r3, [sp, #0x4]
  3f0204: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3f0208: 2b00         	cmp	r3, #0x0
  3f020a: d05a         	beq	0x3f02c2 <SoldierRemoteController::removeSecondaryWeapon()+0xc6> @ imm = #0xb4
  3f020c: 9b01         	ldr	r3, [sp, #0x4]
  3f020e: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3f0212: 681b         	ldr	r3, [r3]
  3f0214: f503 73f8    	add.w	r3, r3, #0x1f0
  3f0218: 681c         	ldr	r4, [r3]
  3f021a: 9b01         	ldr	r3, [sp, #0x4]
  3f021c: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3f0220: 461d         	mov	r5, r3
  3f0222: ab02         	add	r3, sp, #0x8
  3f0224: 4618         	mov	r0, r3
  3f0226: f39a f8e5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39a1ca
  3f022a: aa03         	add	r2, sp, #0xc
  3f022c: ab02         	add	r3, sp, #0x8
  3f022e: 4610         	mov	r0, r2
  3f0230: 4a25         	ldr	r2, [pc, #0x94]         @ 0x3f02c8 <SoldierRemoteController::removeSecondaryWeapon()+0xcc>
  3f0232: 447a         	add	r2, pc
  3f0234: 4611         	mov	r1, r2
  3f0236: 461a         	mov	r2, r3
  3f0238: f3c6 fc12    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c6824
  3f023c: ab03         	add	r3, sp, #0xc
  3f023e: 4628         	mov	r0, r5
  3f0240: 4619         	mov	r1, r3
  3f0242: 47a0         	blx	r4
  3f0244: ab03         	add	r3, sp, #0xc
  3f0246: 4618         	mov	r0, r3
  3f0248: f3c5 fb64    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c56c8
  3f024c: ab02         	add	r3, sp, #0x8
  3f024e: 4618         	mov	r0, r3
  3f0250: f39a f8d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a1a8
  3f0254: 9b01         	ldr	r3, [sp, #0x4]
  3f0256: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3f025a: 681b         	ldr	r3, [r3]
  3f025c: f503 730f    	add.w	r3, r3, #0x23c
  3f0260: 681b         	ldr	r3, [r3]
  3f0262: 9a01         	ldr	r2, [sp, #0x4]
  3f0264: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3f0268: 4610         	mov	r0, r2
  3f026a: 2100         	movs	r1, #0x0
  3f026c: 4798         	blx	r3
  3f026e: 9b01         	ldr	r3, [sp, #0x4]
  3f0270: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0274: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f0278: 681b         	ldr	r3, [r3]
  3f027a: 33f4         	adds	r3, #0xf4
  3f027c: 681b         	ldr	r3, [r3]
  3f027e: 9a01         	ldr	r2, [sp, #0x4]
  3f0280: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f0284: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f0288: 9a01         	ldr	r2, [sp, #0x4]
  3f028a: f8d2 214c    	ldr.w	r2, [r2, #0x14c]
  3f028e: 4608         	mov	r0, r1
  3f0290: 4611         	mov	r1, r2
  3f0292: 2200         	movs	r2, #0x0
  3f0294: 4798         	blx	r3
  3f0296: 9b01         	ldr	r3, [sp, #0x4]
  3f0298: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3f029c: 4618         	mov	r0, r3
  3f029e: f1a7 fe0b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a7c16
  3f02a2: 9b01         	ldr	r3, [sp, #0x4]
  3f02a4: 2200         	movs	r2, #0x0
  3f02a6: f8c3 214c    	str.w	r2, [r3, #0x14c]
  3f02aa: e00a         	b	0x3f02c2 <SoldierRemoteController::removeSecondaryWeapon()+0xc6> @ imm = #0x14
  3f02ac: ab03         	add	r3, sp, #0xc
  3f02ae: 4618         	mov	r0, r3
  3f02b0: f3c5 fb30    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c5660
  3f02b4: e7ff         	b	0x3f02b6 <SoldierRemoteController::removeSecondaryWeapon()+0xba> @ imm = #-0x2
  3f02b6: ab02         	add	r3, sp, #0x8
  3f02b8: 4618         	mov	r0, r3
  3f02ba: f39a f89f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a13e
  3f02be: f397 fef5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x397dea
  3f02c2: b005         	add	sp, #0x14
  3f02c4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f02c5); words below are literal-pool data ---
  3f02c6: bf00         	nop
  3f02c8: 879a         	strh	r2, [r3, #0x3c]
  3f02ca: 003e         	movs	r6, r7

// ==== SoldierRemoteController::removeDualWeapon
//      file offset 0x3f02cc (= ELF address; Ghidra 0x4002cc), 288 bytes, Thumb-2
  3f02cc: b530         	push	{r4, r5, lr}
  3f02ce: b085         	sub	sp, #0x14
  3f02d0: 9001         	str	r0, [sp, #0x4]
  3f02d2: 9b01         	ldr	r3, [sp, #0x4]
  3f02d4: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f02d8: 2b00         	cmp	r3, #0x0
  3f02da: f000 8083    	beq.w	0x3f03e4 <SoldierRemoteController::removeDualWeapon()+0x118> @ imm = #0x106
  3f02de: 9b01         	ldr	r3, [sp, #0x4]
  3f02e0: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f02e4: 681b         	ldr	r3, [r3]
  3f02e6: f503 7314    	add.w	r3, r3, #0x250
  3f02ea: 681b         	ldr	r3, [r3]
  3f02ec: 9a01         	ldr	r2, [sp, #0x4]
  3f02ee: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3f02f2: 4610         	mov	r0, r2
  3f02f4: 4798         	blx	r3
  3f02f6: 9b01         	ldr	r3, [sp, #0x4]
  3f02f8: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f02fc: 681b         	ldr	r3, [r3]
  3f02fe: f503 73f8    	add.w	r3, r3, #0x1f0
  3f0302: 681c         	ldr	r4, [r3]
  3f0304: 9b01         	ldr	r3, [sp, #0x4]
  3f0306: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f030a: 461d         	mov	r5, r3
  3f030c: ab02         	add	r3, sp, #0x8
  3f030e: 4618         	mov	r0, r3
  3f0310: f39a f870    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39a0e0
  3f0314: aa03         	add	r2, sp, #0xc
  3f0316: ab02         	add	r3, sp, #0x8
  3f0318: 4610         	mov	r0, r2
  3f031a: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x3f03e8 <SoldierRemoteController::removeDualWeapon()+0x11c>
  3f031c: 447a         	add	r2, pc
  3f031e: 4611         	mov	r1, r2
  3f0320: 461a         	mov	r2, r3
  3f0322: f3c6 fb9d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c673a
  3f0326: ab03         	add	r3, sp, #0xc
  3f0328: 4628         	mov	r0, r5
  3f032a: 4619         	mov	r1, r3
  3f032c: 47a0         	blx	r4
  3f032e: ab03         	add	r3, sp, #0xc
  3f0330: 4618         	mov	r0, r3
  3f0332: f3c5 faef    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c55de
  3f0336: ab02         	add	r3, sp, #0x8
  3f0338: 4618         	mov	r0, r3
  3f033a: f39a f85f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a0be
  3f033e: 9b01         	ldr	r3, [sp, #0x4]
  3f0340: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f0344: 681b         	ldr	r3, [r3]
  3f0346: f503 730f    	add.w	r3, r3, #0x23c
  3f034a: 681b         	ldr	r3, [r3]
  3f034c: 9a01         	ldr	r2, [sp, #0x4]
  3f034e: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3f0352: 4610         	mov	r0, r2
  3f0354: 2100         	movs	r1, #0x0
  3f0356: 4798         	blx	r3
  3f0358: 9b01         	ldr	r3, [sp, #0x4]
  3f035a: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f035e: f893 3185    	ldrb.w	r3, [r3, #0x185]
  3f0362: 2b00         	cmp	r3, #0x0
  3f0364: d014         	beq	0x3f0390 <SoldierRemoteController::removeDualWeapon()+0xc4> @ imm = #0x28
  3f0366: 9b01         	ldr	r3, [sp, #0x4]
  3f0368: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f036c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  3f0370: 681b         	ldr	r3, [r3]
  3f0372: 33f4         	adds	r3, #0xf4
  3f0374: 681b         	ldr	r3, [r3]
  3f0376: 9a01         	ldr	r2, [sp, #0x4]
  3f0378: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f037c: f8d2 1118    	ldr.w	r1, [r2, #0x118]
  3f0380: 9a01         	ldr	r2, [sp, #0x4]
  3f0382: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3f0386: 4608         	mov	r0, r1
  3f0388: 4611         	mov	r1, r2
  3f038a: 2200         	movs	r2, #0x0
  3f038c: 4798         	blx	r3
  3f038e: e013         	b	0x3f03b8 <SoldierRemoteController::removeDualWeapon()+0xec> @ imm = #0x26
  3f0390: 9b01         	ldr	r3, [sp, #0x4]
  3f0392: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0396: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  3f039a: 681b         	ldr	r3, [r3]
  3f039c: 33f4         	adds	r3, #0xf4
  3f039e: 681b         	ldr	r3, [r3]
  3f03a0: 9a01         	ldr	r2, [sp, #0x4]
  3f03a2: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f03a6: f8d2 1114    	ldr.w	r1, [r2, #0x114]
  3f03aa: 9a01         	ldr	r2, [sp, #0x4]
  3f03ac: f8d2 2150    	ldr.w	r2, [r2, #0x150]
  3f03b0: 4608         	mov	r0, r1
  3f03b2: 4611         	mov	r1, r2
  3f03b4: 2200         	movs	r2, #0x0
  3f03b6: 4798         	blx	r3
  3f03b8: 9b01         	ldr	r3, [sp, #0x4]
  3f03ba: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f03be: 4618         	mov	r0, r3
  3f03c0: f1a7 fd7a    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a7af4
  3f03c4: 9b01         	ldr	r3, [sp, #0x4]
  3f03c6: 2200         	movs	r2, #0x0
  3f03c8: f8c3 2150    	str.w	r2, [r3, #0x150]
  3f03cc: e00a         	b	0x3f03e4 <SoldierRemoteController::removeDualWeapon()+0x118> @ imm = #0x14
  3f03ce: ab03         	add	r3, sp, #0xc
  3f03d0: 4618         	mov	r0, r3
  3f03d2: f3c5 fa9f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c553e
  3f03d6: e7ff         	b	0x3f03d8 <SoldierRemoteController::removeDualWeapon()+0x10c> @ imm = #-0x2
  3f03d8: ab02         	add	r3, sp, #0x8
  3f03da: 4618         	mov	r0, r3
  3f03dc: f39a f80e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39a01c
  3f03e0: f397 fe64    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x397cc8
  3f03e4: b005         	add	sp, #0x14
  3f03e6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f03e7); words below are literal-pool data ---
  3f03e8: 86b0         	strh	r0, [r6, #0x34]
  3f03ea: 003e         	movs	r6, r7

// ==== SoldierRemoteController::removeSideWeapon
//      file offset 0x3f03ec (= ELF address; Ghidra 0x4003ec), 180 bytes, Thumb-2
  3f03ec: b530         	push	{r4, r5, lr}
  3f03ee: b085         	sub	sp, #0x14
  3f03f0: 9001         	str	r0, [sp, #0x4]
  3f03f2: 9b01         	ldr	r3, [sp, #0x4]
  3f03f4: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3f03f8: 2b00         	cmp	r3, #0x0
  3f03fa: d04d         	beq	0x3f0498 <SoldierRemoteController::removeSideWeapon()+0xac> @ imm = #0x9a
  3f03fc: 9b01         	ldr	r3, [sp, #0x4]
  3f03fe: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3f0402: 681b         	ldr	r3, [r3]
  3f0404: f503 73f8    	add.w	r3, r3, #0x1f0
  3f0408: 681c         	ldr	r4, [r3]
  3f040a: 9b01         	ldr	r3, [sp, #0x4]
  3f040c: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3f0410: 461d         	mov	r5, r3
  3f0412: ab02         	add	r3, sp, #0x8
  3f0414: 4618         	mov	r0, r3
  3f0416: f399 ffed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x399fda
  3f041a: aa03         	add	r2, sp, #0xc
  3f041c: ab02         	add	r3, sp, #0x8
  3f041e: 4610         	mov	r0, r2
  3f0420: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x3f049c <SoldierRemoteController::removeSideWeapon()+0xb0>
  3f0422: 447a         	add	r2, pc
  3f0424: 4611         	mov	r1, r2
  3f0426: 461a         	mov	r2, r3
  3f0428: f3c6 fb1a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c6634
  3f042c: ab03         	add	r3, sp, #0xc
  3f042e: 4628         	mov	r0, r5
  3f0430: 4619         	mov	r1, r3
  3f0432: 47a0         	blx	r4
  3f0434: ab03         	add	r3, sp, #0xc
  3f0436: 4618         	mov	r0, r3
  3f0438: f3c5 fa6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c54d8
  3f043c: ab02         	add	r3, sp, #0x8
  3f043e: 4618         	mov	r0, r3
  3f0440: f399 ffdc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x399fb8
  3f0444: 9b01         	ldr	r3, [sp, #0x4]
  3f0446: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f044a: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  3f044e: 681b         	ldr	r3, [r3]
  3f0450: 33f4         	adds	r3, #0xf4
  3f0452: 681b         	ldr	r3, [r3]
  3f0454: 9a01         	ldr	r2, [sp, #0x4]
  3f0456: f8d2 20fc    	ldr.w	r2, [r2, #0xfc]
  3f045a: f8d2 111c    	ldr.w	r1, [r2, #0x11c]
  3f045e: 9a01         	ldr	r2, [sp, #0x4]
  3f0460: f8d2 2154    	ldr.w	r2, [r2, #0x154]
  3f0464: 4608         	mov	r0, r1
  3f0466: 4611         	mov	r1, r2
  3f0468: 2200         	movs	r2, #0x0
  3f046a: 4798         	blx	r3
  3f046c: 9b01         	ldr	r3, [sp, #0x4]
  3f046e: f8d3 3154    	ldr.w	r3, [r3, #0x154]
  3f0472: 4618         	mov	r0, r3
  3f0474: f1a7 fd20    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a7a40
  3f0478: 9b01         	ldr	r3, [sp, #0x4]
  3f047a: 2200         	movs	r2, #0x0
  3f047c: f8c3 2154    	str.w	r2, [r3, #0x154]
  3f0480: e00a         	b	0x3f0498 <SoldierRemoteController::removeSideWeapon()+0xac> @ imm = #0x14
  3f0482: ab03         	add	r3, sp, #0xc
  3f0484: 4618         	mov	r0, r3
  3f0486: f3c5 fa45    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c548a
  3f048a: e7ff         	b	0x3f048c <SoldierRemoteController::removeSideWeapon()+0xa0> @ imm = #-0x2
  3f048c: ab02         	add	r3, sp, #0x8
  3f048e: 4618         	mov	r0, r3
  3f0490: f399 ffb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x399f68
  3f0494: f397 fe0a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x397c14
  3f0498: b005         	add	sp, #0x14
  3f049a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f049b); words below are literal-pool data ---
  3f049c: 85aa         	strh	r2, [r5, #0x2c]
  3f049e: 003e         	movs	r6, r7

// ==== SoldierRemoteController::getPrimaryWeapon
//      file offset 0x3f04a0 (= ELF address; Ghidra 0x4004a0), 16 bytes, Thumb-2
  3f04a0: b082         	sub	sp, #0x8
  3f04a2: 9001         	str	r0, [sp, #0x4]
  3f04a4: 9b01         	ldr	r3, [sp, #0x4]
  3f04a6: f8d3 3148    	ldr.w	r3, [r3, #0x148]
  3f04aa: 4618         	mov	r0, r3
  3f04ac: b002         	add	sp, #0x8
  3f04ae: 4770         	bx	lr

// ==== SoldierRemoteController::getSecondaryWeapon
//      file offset 0x3f04b0 (= ELF address; Ghidra 0x4004b0), 16 bytes, Thumb-2
  3f04b0: b082         	sub	sp, #0x8
  3f04b2: 9001         	str	r0, [sp, #0x4]
  3f04b4: 9b01         	ldr	r3, [sp, #0x4]
  3f04b6: f8d3 314c    	ldr.w	r3, [r3, #0x14c]
  3f04ba: 4618         	mov	r0, r3
  3f04bc: b002         	add	sp, #0x8
  3f04be: 4770         	bx	lr

// ==== SoldierRemoteController::getDualWeapon
//      file offset 0x3f04c0 (= ELF address; Ghidra 0x4004c0), 16 bytes, Thumb-2
  3f04c0: b082         	sub	sp, #0x8
  3f04c2: 9001         	str	r0, [sp, #0x4]
  3f04c4: 9b01         	ldr	r3, [sp, #0x4]
  3f04c6: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  3f04ca: 4618         	mov	r0, r3
  3f04cc: b002         	add	sp, #0x8
  3f04ce: 4770         	bx	lr

// ==== SoldierRemoteController::setRemoteFiringAngle
//      file offset 0x3f04d0 (= ELF address; Ghidra 0x4004d0), 18 bytes, Thumb-2
  3f04d0: b082         	sub	sp, #0x8
  3f04d2: 9001         	str	r0, [sp, #0x4]
  3f04d4: 9100         	str	r1, [sp]
  3f04d6: 9b01         	ldr	r3, [sp, #0x4]
  3f04d8: 9a00         	ldr	r2, [sp]
  3f04da: f8c3 21a8    	str.w	r2, [r3, #0x1a8]
  3f04de: b002         	add	sp, #0x8
  3f04e0: 4770         	bx	lr

// ==== SoldierRemoteController::setRemoteRotation
//      file offset 0x3f04e4 (= ELF address; Ghidra 0x4004e4), 18 bytes, Thumb-2
  3f04e4: b082         	sub	sp, #0x8
  3f04e6: 9001         	str	r0, [sp, #0x4]
  3f04e8: 9100         	str	r1, [sp]
  3f04ea: 9b01         	ldr	r3, [sp, #0x4]
  3f04ec: 9a00         	ldr	r2, [sp]
  3f04ee: f8c3 2184    	str.w	r2, [r3, #0x184]
  3f04f2: b002         	add	sp, #0x8
  3f04f4: 4770         	bx	lr

// ==== SoldierRemoteController::setRemoteVelocity
//      file offset 0x3f04f8 (= ELF address; Ghidra 0x4004f8), 38 bytes, Thumb-2
  3f04f8: b082         	sub	sp, #0x8
  3f04fa: b410         	push	{r4}
  3f04fc: b083         	sub	sp, #0xc
  3f04fe: 9001         	str	r0, [sp, #0x4]
  3f0500: a904         	add	r1, sp, #0x10
  3f0502: e881 000c    	stm.w	r1, {r2, r3}
  3f0506: 9b01         	ldr	r3, [sp, #0x4]
  3f0508: f503 74c4    	add.w	r4, r3, #0x188
  3f050c: ab04         	add	r3, sp, #0x10
  3f050e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f0510: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f0514: b003         	add	sp, #0xc
  3f0516: f85d 4b04    	ldr	r4, [sp], #4
  3f051a: b002         	add	sp, #0x8
  3f051c: 4770         	bx	lr

// ==== SoldierRemoteController::setRemotePosition
//      file offset 0x3f0520 (= ELF address; Ghidra 0x400520), 160 bytes, Thumb-2
  3f0520: b082         	sub	sp, #0x8
  3f0522: b530         	push	{r4, r5, lr}
  3f0524: b085         	sub	sp, #0x14
  3f0526: 9001         	str	r0, [sp, #0x4]
  3f0528: a908         	add	r1, sp, #0x20
  3f052a: e881 000c    	stm.w	r1, {r2, r3}
  3f052e: 9b01         	ldr	r3, [sp, #0x4]
  3f0530: f04f 0200    	mov.w	r2, #0x0
  3f0534: f8c3 21b8    	str.w	r2, [r3, #0x1b8]
  3f0538: 9b01         	ldr	r3, [sp, #0x4]
  3f053a: f503 74cc    	add.w	r4, r3, #0x198
  3f053e: ab08         	add	r3, sp, #0x20
  3f0540: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f0542: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f0546: 9b01         	ldr	r3, [sp, #0x4]
  3f0548: f893 31b4    	ldrb.w	r3, [r3, #0x1b4]
  3f054c: 2b00         	cmp	r3, #0x0
  3f054e: d032         	beq	0x3f05b6 <SoldierRemoteController::setRemotePosition(cpVect)+0x96> @ imm = #0x64
  3f0550: 9b01         	ldr	r3, [sp, #0x4]
  3f0552: 2200         	movs	r2, #0x0
  3f0554: f883 21b4    	strb.w	r2, [r3, #0x1b4]
  3f0558: 9b01         	ldr	r3, [sp, #0x4]
  3f055a: f8d3 2138    	ldr.w	r2, [r3, #0x138]
  3f055e: 9b01         	ldr	r3, [sp, #0x4]
  3f0560: ed93 6b66    	vldr	d6, [r3, #408]
  3f0564: ed93 7b68    	vldr	d7, [r3, #416]
  3f0568: 4610         	mov	r0, r2
  3f056a: eeb0 0b46    	vmov.f64	d0, d6
  3f056e: eeb0 1b47    	vmov.f64	d1, d7
  3f0572: f7fd ff09    	bl	0x3ee388 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x34c> @ imm = #-0x21ee
  3f0576: 9b01         	ldr	r3, [sp, #0x4]
  3f0578: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f057c: 681b         	ldr	r3, [r3]
  3f057e: 334c         	adds	r3, #0x4c
  3f0580: 681c         	ldr	r4, [r3]
  3f0582: 9b01         	ldr	r3, [sp, #0x4]
  3f0584: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0588: 461d         	mov	r5, r3
  3f058a: 9b01         	ldr	r3, [sp, #0x4]
  3f058c: ed93 7b66    	vldr	d7, [r3, #408]
  3f0590: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3f0594: 9b01         	ldr	r3, [sp, #0x4]
  3f0596: ed93 7b68    	vldr	d7, [r3, #416]
  3f059a: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f059e: ab02         	add	r3, sp, #0x8
  3f05a0: 4618         	mov	r0, r3
  3f05a2: ee16 1a90    	vmov	r1, s13
  3f05a6: ee17 2a90    	vmov	r2, s15
  3f05aa: f1a2 fba1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1a2742
  3f05ae: ab02         	add	r3, sp, #0x8
  3f05b0: 4628         	mov	r0, r5
  3f05b2: 4619         	mov	r1, r3
  3f05b4: 47a0         	blx	r4
  3f05b6: b005         	add	sp, #0x14
  3f05b8: e8bd 4030    	pop.w	{r4, r5, lr}
  3f05bc: b002         	add	sp, #0x8
  3f05be: 4770         	bx	lr

// ==== SoldierRemoteController::getBodyVelocity
//      file offset 0x3f05c0 (= ELF address; Ghidra 0x4005c0), 34 bytes, Thumb-2
  3f05c0: b410         	push	{r4}
  3f05c2: b083         	sub	sp, #0xc
  3f05c4: 9001         	str	r0, [sp, #0x4]
  3f05c6: 9100         	str	r1, [sp]
  3f05c8: 9a01         	ldr	r2, [sp, #0x4]
  3f05ca: 9b00         	ldr	r3, [sp]
  3f05cc: 4614         	mov	r4, r2
  3f05ce: f503 73c4    	add.w	r3, r3, #0x188
  3f05d2: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f05d4: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f05d8: 9801         	ldr	r0, [sp, #0x4]
  3f05da: b003         	add	sp, #0xc
  3f05dc: f85d 4b04    	ldr	r4, [sp], #4
  3f05e0: 4770         	bx	lr

// ==== SoldierRemoteController::getBodyPosition
//      file offset 0x3f05e4 (= ELF address; Ghidra 0x4005e4), 36 bytes, Thumb-2
  3f05e4: b410         	push	{r4}
  3f05e6: b083         	sub	sp, #0xc
  3f05e8: 9001         	str	r0, [sp, #0x4]
  3f05ea: 9100         	str	r1, [sp]
  3f05ec: 9b00         	ldr	r3, [sp]
  3f05ee: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3f05f2: 9a01         	ldr	r2, [sp, #0x4]
  3f05f4: 4614         	mov	r4, r2
  3f05f6: 3328         	adds	r3, #0x28
  3f05f8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f05fa: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3f05fe: 9801         	ldr	r0, [sp, #0x4]
  3f0600: b003         	add	sp, #0xc
  3f0602: f85d 4b04    	ldr	r4, [sp], #4
  3f0606: 4770         	bx	lr

// ==== SoldierRemoteController::killPlayer
//      file offset 0x3f0608 (= ELF address; Ghidra 0x400608), 28 bytes, Thumb-2
  3f0608: b500         	push	{lr}
  3f060a: b083         	sub	sp, #0xc
  3f060c: 9001         	str	r0, [sp, #0x4]
  3f060e: 9b01         	ldr	r3, [sp, #0x4]
  3f0610: 681b         	ldr	r3, [r3]
  3f0612: f503 7324    	add.w	r3, r3, #0x290
  3f0616: 681b         	ldr	r3, [r3]
  3f0618: 9a01         	ldr	r2, [sp, #0x4]
  3f061a: 4610         	mov	r0, r2
  3f061c: 4798         	blx	r3
  3f061e: b003         	add	sp, #0xc
  3f0620: f85d fb04    	ldr	pc, [sp], #4

// ==== SoldierRemoteController::meleeAttack
//      file offset 0x3f0624 (= ELF address; Ghidra 0x400624), 124 bytes, Thumb-2
  3f0624: b510         	push	{r4, lr}
  3f0626: b084         	sub	sp, #0x10
  3f0628: 9003         	str	r0, [sp, #0xc]
  3f062a: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x3f0698 <SoldierRemoteController::meleeAttack()+0x74>
  3f062c: 447a         	add	r2, pc
  3f062e: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x3f069c <SoldierRemoteController::meleeAttack()+0x78>
  3f0630: 58d3         	ldr	r3, [r2, r3]
  3f0632: 681c         	ldr	r4, [r3]
  3f0634: 9b03         	ldr	r3, [sp, #0xc]
  3f0636: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3f063a: 466a         	mov	r2, sp
  3f063c: f103 0130    	add.w	r1, r3, #0x30
  3f0640: c903         	ldm	r1, {r0, r1}
  3f0642: e882 0003    	stm.w	r2, {r0, r1}
  3f0646: 3328         	adds	r3, #0x28
  3f0648: cb0c         	ldm	r3, {r2, r3}
  3f064a: 4620         	mov	r0, r4
  3f064c: 2102         	movs	r1, #0x2
  3f064e: f007 fcd3    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x79a6
  3f0652: 9b03         	ldr	r3, [sp, #0xc]
  3f0654: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0658: 4618         	mov	r0, r3
  3f065a: f04f 0200    	mov.w	r2, #0x0
  3f065e: f04f 0300    	mov.w	r3, #0x0
  3f0662: f2c4 0369    	movt	r3, #0x4069
  3f0666: f003 fbfd    	bl	0x3f3e64 <SoldierView::setPrimaryMoveRotation(double)> @ imm = #0x37fa
  3f066a: 9b03         	ldr	r3, [sp, #0xc]
  3f066c: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f0670: 4618         	mov	r0, r3
  3f0672: f04f 0100    	mov.w	r1, #0x0
  3f0676: f2cc 21b4    	movt	r1, #0xc2b4
  3f067a: f003 fb2b    	bl	0x3f3cd4 <SoldierView::setFiringAngleOffset(float)> @ imm = #0x3656
  3f067e: 9b03         	ldr	r3, [sp, #0xc]
  3f0680: 2201         	movs	r2, #0x1
  3f0682: f883 2166    	strb.w	r2, [r3, #0x166]
  3f0686: 9b03         	ldr	r3, [sp, #0xc]
  3f0688: f8d3 2110    	ldr.w	r2, [r3, #0x110]
  3f068c: 9b03         	ldr	r3, [sp, #0xc]
  3f068e: f8c3 21b0    	str.w	r2, [r3, #0x1b0]
  3f0692: b004         	add	sp, #0x10
  3f0694: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3f0695); words below are literal-pool data ---
  3f0696: bf00         	nop
  3f0698: 23dc         	movs	r3, #0xdc
  3f069a: 0054         	lsls	r4, r2, #0x1
  3f069c: d730         	bvc	0x3f0700 <SoldierRemoteController::throwDual()+0x44> @ imm = #0x60
  3f069e: ffff b082    	<unknown>

// ==== SoldierRemoteController::endMeleeAttack
//      file offset 0x3f06a0 (= ELF address; Ghidra 0x4006a0), 28 bytes, Thumb-2
  3f06a0: b082         	sub	sp, #0x8
  3f06a2: 9001         	str	r0, [sp, #0x4]
  3f06a4: 9100         	str	r1, [sp]
  3f06a6: 9b01         	ldr	r3, [sp, #0x4]
  3f06a8: f04f 0200    	mov.w	r2, #0x0
  3f06ac: f8c3 2178    	str.w	r2, [r3, #0x178]
  3f06b0: 9b01         	ldr	r3, [sp, #0x4]
  3f06b2: 2200         	movs	r2, #0x0
  3f06b4: f883 2166    	strb.w	r2, [r3, #0x166]
  3f06b8: b002         	add	sp, #0x8
  3f06ba: 4770         	bx	lr

// ==== SoldierRemoteController::throwDual
//      file offset 0x3f06bc (= ELF address; Ghidra 0x4006bc), 224 bytes, Thumb-2
  3f06bc: b570         	push	{r4, r5, r6, lr}
  3f06be: b088         	sub	sp, #0x20
  3f06c0: 9003         	str	r0, [sp, #0xc]
  3f06c2: 4c33         	ldr	r4, [pc, #0xcc]         @ 0x3f0790 <SoldierRemoteController::throwDual()+0xd4>
  3f06c4: 447c         	add	r4, pc
  3f06c6: f1ef fff3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1effe6
  3f06ca: 4605         	mov	r5, r0
  3f06cc: 9b03         	ldr	r3, [sp, #0xc]
  3f06ce: 681b         	ldr	r3, [r3]
  3f06d0: f503 73e0    	add.w	r3, r3, #0x1c0
  3f06d4: 681b         	ldr	r3, [r3]
  3f06d6: 9a03         	ldr	r2, [sp, #0xc]
  3f06d8: a906         	add	r1, sp, #0x18
  3f06da: 4608         	mov	r0, r1
  3f06dc: 4611         	mov	r1, r2
  3f06de: 4798         	blx	r3
  3f06e0: ab06         	add	r3, sp, #0x18
  3f06e2: 4618         	mov	r0, r3
  3f06e4: f3c4 fe0c    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3c4c18
  3f06e8: 4606         	mov	r6, r0
  3f06ea: ab05         	add	r3, sp, #0x14
  3f06ec: 4618         	mov	r0, r3
  3f06ee: f399 fe81    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x399d02
  3f06f2: aa07         	add	r2, sp, #0x1c
  3f06f4: ab05         	add	r3, sp, #0x14
  3f06f6: 4610         	mov	r0, r2
  3f06f8: 4631         	mov	r1, r6
  3f06fa: 461a         	mov	r2, r3
  3f06fc: f3c6 f9b0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c6360
  3f0700: ab07         	add	r3, sp, #0x1c
  3f0702: 4618         	mov	r0, r3
  3f0704: f1a9 f99a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1a9334
  3f0708: 4603         	mov	r3, r0
  3f070a: 4628         	mov	r0, r5
  3f070c: 4a21         	ldr	r2, [pc, #0x84]         @ 0x3f0794 <SoldierRemoteController::throwDual()+0xd8>
  3f070e: 447a         	add	r2, pc
  3f0710: 4611         	mov	r1, r2
  3f0712: 461a         	mov	r2, r3
  3f0714: f1f0 fa0a    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f0414
  3f0718: ab07         	add	r3, sp, #0x1c
  3f071a: 4618         	mov	r0, r3
  3f071c: f3c5 f8fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c51f4
  3f0720: ab05         	add	r3, sp, #0x14
  3f0722: 4618         	mov	r0, r3
  3f0724: f399 fe6a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x399cd4
  3f0728: ab06         	add	r3, sp, #0x18
  3f072a: 4618         	mov	r0, r3
  3f072c: f3c5 f8f2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c51e4
  3f0730: 4b19         	ldr	r3, [pc, #0x64]         @ 0x3f0798 <SoldierRemoteController::throwDual()+0xdc>
  3f0732: 58e3         	ldr	r3, [r4, r3]
  3f0734: 681c         	ldr	r4, [r3]
  3f0736: 9b03         	ldr	r3, [sp, #0xc]
  3f0738: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  3f073c: 466a         	mov	r2, sp
  3f073e: f103 0130    	add.w	r1, r3, #0x30
  3f0742: c903         	ldm	r1, {r0, r1}
  3f0744: e882 0003    	stm.w	r2, {r0, r1}
  3f0748: 3328         	adds	r3, #0x28
  3f074a: cb0c         	ldm	r3, {r2, r3}
  3f074c: 4620         	mov	r0, r4
  3f074e: 2103         	movs	r1, #0x3
  3f0750: f007 fc52    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x78a4
  3f0754: 9b03         	ldr	r3, [sp, #0xc]
  3f0756: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  3f075a: 4618         	mov	r0, r3
  3f075c: f04f 0200    	mov.w	r2, #0x0
  3f0760: f04f 0300    	mov.w	r3, #0x0
  3f0764: f2c4 0359    	movt	r3, #0x4059
  3f0768: f003 fb8a    	bl	0x3f3e80 <SoldierView::setDualMoveRotation(double)> @ imm = #0x3714
  3f076c: e00e         	b	0x3f078c <SoldierRemoteController::throwDual()+0xd0> @ imm = #0x1c
  3f076e: ab07         	add	r3, sp, #0x1c
  3f0770: 4618         	mov	r0, r3
  3f0772: f3c5 f8cf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c519e
  3f0776: e7ff         	b	0x3f0778 <SoldierRemoteController::throwDual()+0xbc> @ imm = #-0x2
  3f0778: ab05         	add	r3, sp, #0x14
  3f077a: 4618         	mov	r0, r3
  3f077c: f399 fe3e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x399c7c
  3f0780: ab06         	add	r3, sp, #0x18
  3f0782: 4618         	mov	r0, r3
  3f0784: f3c5 f8c6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c518c
  3f0788: f397 fc90    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x397920
  3f078c: b008         	add	sp, #0x20
  3f078e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3f078f); words below are literal-pool data ---
  3f0790: 2344         	movs	r3, #0x44
  3f0792: 0054         	lsls	r4, r2, #0x1
  3f0794: 82c2         	strh	r2, [r0, #0x16]
  3f0796: 003e         	movs	r6, r7
  3f0798: d730         	bvc	0x3f07fc <SoldierRemoteController::setIsDead(bool)+0x60> @ imm = #0x60
  3f079a: ffff b500    	<unknown>

// ==== SoldierRemoteController::setIsDead
//      file offset 0x3f079c (= ELF address; Ghidra 0x40079c), 128 bytes, Thumb-2
  3f079c: b500         	push	{lr}
  3f079e: b083         	sub	sp, #0xc
  3f07a0: 9001         	str	r0, [sp, #0x4]
  3f07a2: 460b         	mov	r3, r1
  3f07a4: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f07a8: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3f07ac: 2b00         	cmp	r3, #0x0
  3f07ae: d01a         	beq	0x3f07e6 <SoldierRemoteController::setIsDead(bool)+0x4a> @ imm = #0x34
  3f07b0: 9b01         	ldr	r3, [sp, #0x4]
  3f07b2: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3f07b6: f083 0301    	eor	r3, r3, #0x1
  3f07ba: b2db         	uxtb	r3, r3
  3f07bc: 2b00         	cmp	r3, #0x0
  3f07be: d012         	beq	0x3f07e6 <SoldierRemoteController::setIsDead(bool)+0x4a> @ imm = #0x24
  3f07c0: 9b01         	ldr	r3, [sp, #0x4]
  3f07c2: 681b         	ldr	r3, [r3]
  3f07c4: f503 732d    	add.w	r3, r3, #0x2b4
  3f07c8: 681b         	ldr	r3, [r3]
  3f07ca: 9801         	ldr	r0, [sp, #0x4]
  3f07cc: 4798         	blx	r3
  3f07ce: f1ef ff6f    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1efede
  3f07d2: 4602         	mov	r2, r0
  3f07d4: 9b01         	ldr	r3, [sp, #0x4]
  3f07d6: 4610         	mov	r0, r2
  3f07d8: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3f0818 <SoldierRemoteController::setIsDead(bool)+0x7c>
  3f07da: 447a         	add	r2, pc
  3f07dc: 4611         	mov	r1, r2
  3f07de: 461a         	mov	r2, r3
  3f07e0: f1f0 f9a4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f0348
  3f07e4: e00f         	b	0x3f0806 <SoldierRemoteController::setIsDead(bool)+0x6a> @ imm = #0x1e
  3f07e6: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3f07ea: f083 0301    	eor	r3, r3, #0x1
  3f07ee: b2db         	uxtb	r3, r3
  3f07f0: 2b00         	cmp	r3, #0x0
  3f07f2: d008         	beq	0x3f0806 <SoldierRemoteController::setIsDead(bool)+0x6a> @ imm = #0x10
  3f07f4: 9b01         	ldr	r3, [sp, #0x4]
  3f07f6: f893 3159    	ldrb.w	r3, [r3, #0x159]
  3f07fa: 2b00         	cmp	r3, #0x0
  3f07fc: d003         	beq	0x3f0806 <SoldierRemoteController::setIsDead(bool)+0x6a> @ imm = #0x6
  3f07fe: 9b01         	ldr	r3, [sp, #0x4]
  3f0800: 2201         	movs	r2, #0x1
  3f0802: f883 21b4    	strb.w	r2, [r3, #0x1b4]
  3f0806: 9b01         	ldr	r3, [sp, #0x4]
  3f0808: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  3f080c: f883 2159    	strb.w	r2, [r3, #0x159]
  3f0810: b003         	add	sp, #0xc
  3f0812: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f0815); words below are literal-pool data ---
  3f0816: bf00         	nop
  3f0818: 8202         	strh	r2, [r0, #0x10]
  3f081a: 003e         	movs	r6, r7

// ==== SoldierRemoteController::weaponDidFire
//      file offset 0x3f081c (= ELF address; Ghidra 0x40081c), 464 bytes, Thumb-2
  3f081c: b5f0         	push	{r4, r5, r6, r7, lr}
  3f081e: b091         	sub	sp, #0x44
  3f0820: 9009         	str	r0, [sp, #0x24]
  3f0822: 9108         	str	r1, [sp, #0x20]
  3f0824: 9b08         	ldr	r3, [sp, #0x20]
  3f0826: 2b00         	cmp	r3, #0x0
  3f0828: d100         	bne	0x3f082c <SoldierRemoteController::weaponDidFire(Item*)+0x10> @ imm = #0x0
  3f082a: e0db         	b	0x3f09e4 <SoldierRemoteController::weaponDidFire(Item*)+0x1c8> @ imm = #0x1b6
  3f082c: 9b08         	ldr	r3, [sp, #0x20]
  3f082e: 930f         	str	r3, [sp, #0x3c]
  3f0830: f04f 0300    	mov.w	r3, #0x0
  3f0834: 930e         	str	r3, [sp, #0x38]
  3f0836: 9b09         	ldr	r3, [sp, #0x24]
  3f0838: 681b         	ldr	r3, [r3]
  3f083a: f503 73fe    	add.w	r3, r3, #0x1fc
  3f083e: 681b         	ldr	r3, [r3]
  3f0840: 9809         	ldr	r0, [sp, #0x24]
  3f0842: 4798         	blx	r3
  3f0844: 4603         	mov	r3, r0
  3f0846: 2b00         	cmp	r3, #0x0
  3f0848: d00c         	beq	0x3f0864 <SoldierRemoteController::weaponDidFire(Item*)+0x48> @ imm = #0x18
  3f084a: 9b09         	ldr	r3, [sp, #0x24]
  3f084c: 681b         	ldr	r3, [r3]
  3f084e: f503 73fe    	add.w	r3, r3, #0x1fc
  3f0852: 681b         	ldr	r3, [r3]
  3f0854: 9809         	ldr	r0, [sp, #0x24]
  3f0856: 4798         	blx	r3
  3f0858: 4602         	mov	r2, r0
  3f085a: 9b0f         	ldr	r3, [sp, #0x3c]
  3f085c: 429a         	cmp	r2, r3
  3f085e: d101         	bne	0x3f0864 <SoldierRemoteController::weaponDidFire(Item*)+0x48> @ imm = #0x2
  3f0860: 2301         	movs	r3, #0x1
  3f0862: e000         	b	0x3f0866 <SoldierRemoteController::weaponDidFire(Item*)+0x4a> @ imm = #0x0
  3f0864: 2300         	movs	r3, #0x0
  3f0866: 2b00         	cmp	r3, #0x0
  3f0868: d01b         	beq	0x3f08a2 <SoldierRemoteController::weaponDidFire(Item*)+0x86> @ imm = #0x36
  3f086a: 9b09         	ldr	r3, [sp, #0x24]
  3f086c: 681b         	ldr	r3, [r3]
  3f086e: f503 73ec    	add.w	r3, r3, #0x1d8
  3f0872: 681b         	ldr	r3, [r3]
  3f0874: 9809         	ldr	r0, [sp, #0x24]
  3f0876: 4798         	blx	r3
  3f0878: 4603         	mov	r3, r0
  3f087a: 9a0f         	ldr	r2, [sp, #0x3c]
  3f087c: edd2 7a5b    	vldr	s15, [r2, #364]
  3f0880: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f0884: 4618         	mov	r0, r3
  3f0886: ec53 2b17    	vmov	r2, r3, d7
  3f088a: f003 fadd    	bl	0x3f3e48 <SoldierView::setDualRecoilRotation(double)> @ imm = #0x35ba
  3f088e: 9b09         	ldr	r3, [sp, #0x24]
  3f0890: 681b         	ldr	r3, [r3]
  3f0892: f503 7321    	add.w	r3, r3, #0x284
  3f0896: 681b         	ldr	r3, [r3]
  3f0898: 9809         	ldr	r0, [sp, #0x24]
  3f089a: 4798         	blx	r3
  3f089c: 4603         	mov	r3, r0
  3f089e: 930e         	str	r3, [sp, #0x38]
  3f08a0: e01a         	b	0x3f08d8 <SoldierRemoteController::weaponDidFire(Item*)+0xbc> @ imm = #0x34
  3f08a2: 9b09         	ldr	r3, [sp, #0x24]
  3f08a4: 681b         	ldr	r3, [r3]
  3f08a6: f503 73ec    	add.w	r3, r3, #0x1d8
  3f08aa: 681b         	ldr	r3, [r3]
  3f08ac: 9809         	ldr	r0, [sp, #0x24]
  3f08ae: 4798         	blx	r3
  3f08b0: 4603         	mov	r3, r0
  3f08b2: 9a0f         	ldr	r2, [sp, #0x3c]
  3f08b4: edd2 7a5b    	vldr	s15, [r2, #364]
  3f08b8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f08bc: 4618         	mov	r0, r3
  3f08be: ec53 2b17    	vmov	r2, r3, d7
  3f08c2: f003 fab3    	bl	0x3f3e2c <SoldierView::setPrimaryRecoilRotation(double)> @ imm = #0x3566
  3f08c6: 9b09         	ldr	r3, [sp, #0x24]
  3f08c8: 681b         	ldr	r3, [r3]
  3f08ca: f503 730f    	add.w	r3, r3, #0x23c
  3f08ce: 681b         	ldr	r3, [r3]
  3f08d0: 9809         	ldr	r0, [sp, #0x24]
  3f08d2: 4798         	blx	r3
  3f08d4: 4603         	mov	r3, r0
  3f08d6: 930e         	str	r3, [sp, #0x38]
  3f08d8: 9b0f         	ldr	r3, [sp, #0x3c]
  3f08da: 681b         	ldr	r3, [r3]
  3f08dc: f503 7345    	add.w	r3, r3, #0x314
  3f08e0: 681e         	ldr	r6, [r3]
  3f08e2: 9b09         	ldr	r3, [sp, #0x24]
  3f08e4: f8d3 4138    	ldr.w	r4, [r3, #0x138]
  3f08e8: 9b09         	ldr	r3, [sp, #0x24]
  3f08ea: f8d3 7138    	ldr.w	r7, [r3, #0x138]
  3f08ee: 9b09         	ldr	r3, [sp, #0x24]
  3f08f0: 681b         	ldr	r3, [r3]
  3f08f2: f503 73e0    	add.w	r3, r3, #0x1c0
  3f08f6: 681b         	ldr	r3, [r3]
  3f08f8: 9a09         	ldr	r2, [sp, #0x24]
  3f08fa: a90d         	add	r1, sp, #0x34
  3f08fc: 4608         	mov	r0, r1
  3f08fe: 4611         	mov	r1, r2
  3f0900: 4798         	blx	r3
  3f0902: ad02         	add	r5, sp, #0x8
  3f0904: f107 0338    	add.w	r3, r7, #0x38
  3f0908: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f090a: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3f090e: 2320         	movs	r3, #0x20
  3f0910: 9306         	str	r3, [sp, #0x18]
  3f0912: ab0d         	add	r3, sp, #0x34
  3f0914: 9307         	str	r3, [sp, #0x1c]
  3f0916: 466b         	mov	r3, sp
  3f0918: f104 0230    	add.w	r2, r4, #0x30
  3f091c: e892 0003    	ldm.w	r2, {r0, r1}
  3f0920: e883 0003    	stm.w	r3, {r0, r1}
  3f0924: f104 0328    	add.w	r3, r4, #0x28
  3f0928: cb0c         	ldm	r3, {r2, r3}
  3f092a: 980f         	ldr	r0, [sp, #0x3c]
  3f092c: 990e         	ldr	r1, [sp, #0x38]
  3f092e: 47b0         	blx	r6
  3f0930: ab0d         	add	r3, sp, #0x34
  3f0932: 4618         	mov	r0, r3
  3f0934: f3c4 ffee    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c4fdc
  3f0938: f1ef feba    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x1efd74
  3f093c: 4604         	mov	r4, r0
  3f093e: 9b09         	ldr	r3, [sp, #0x24]
  3f0940: 681b         	ldr	r3, [r3]
  3f0942: f503 73e0    	add.w	r3, r3, #0x1c0
  3f0946: 681b         	ldr	r3, [r3]
  3f0948: 9a09         	ldr	r2, [sp, #0x24]
  3f094a: a90c         	add	r1, sp, #0x30
  3f094c: 4608         	mov	r0, r1
  3f094e: 4611         	mov	r1, r2
  3f0950: 4798         	blx	r3
  3f0952: ab0c         	add	r3, sp, #0x30
  3f0954: 4618         	mov	r0, r3
  3f0956: f3c4 fcd3    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3c49a6
  3f095a: 4605         	mov	r5, r0
  3f095c: ab0b         	add	r3, sp, #0x2c
  3f095e: 4618         	mov	r0, r3
  3f0960: f399 fd48    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x399a90
  3f0964: aa0d         	add	r2, sp, #0x34
  3f0966: ab0b         	add	r3, sp, #0x2c
  3f0968: 4610         	mov	r0, r2
  3f096a: 4629         	mov	r1, r5
  3f096c: 461a         	mov	r2, r3
  3f096e: f3c6 f877    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c60ee
  3f0972: ab0d         	add	r3, sp, #0x34
  3f0974: 4618         	mov	r0, r3
  3f0976: f1a9 f861    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1a90c2
  3f097a: 4603         	mov	r3, r0
  3f097c: 4620         	mov	r0, r4
  3f097e: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x3f09e8 <SoldierRemoteController::weaponDidFire(Item*)+0x1cc>
  3f0980: 447a         	add	r2, pc
  3f0982: 4611         	mov	r1, r2
  3f0984: 461a         	mov	r2, r3
  3f0986: f1f0 f8d1    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x1f01a2
  3f098a: ab0d         	add	r3, sp, #0x34
  3f098c: 4618         	mov	r0, r3
  3f098e: f3c4 ffc1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c4f82
  3f0992: ab0b         	add	r3, sp, #0x2c
  3f0994: 4618         	mov	r0, r3
  3f0996: f399 fd31    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x399a62
  3f099a: ab0c         	add	r3, sp, #0x30
  3f099c: 4618         	mov	r0, r3
  3f099e: f3c4 ffb9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c4f72
  3f09a2: 9b09         	ldr	r3, [sp, #0x24]
  3f09a4: 681b         	ldr	r3, [r3]
  3f09a6: f503 73ec    	add.w	r3, r3, #0x1d8
  3f09aa: 681b         	ldr	r3, [r3]
  3f09ac: 9809         	ldr	r0, [sp, #0x24]
  3f09ae: 4798         	blx	r3
  3f09b0: 4603         	mov	r3, r0
  3f09b2: 4618         	mov	r0, r3
  3f09b4: f003 fc6a    	bl	0x3f428c <SoldierView::showLabel()> @ imm = #0x38d4
  3f09b8: e014         	b	0x3f09e4 <SoldierRemoteController::weaponDidFire(Item*)+0x1c8> @ imm = #0x28
  3f09ba: ab0d         	add	r3, sp, #0x34
  3f09bc: 4618         	mov	r0, r3
  3f09be: f3c4 ffa9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c4f52
  3f09c2: f397 fb73    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3976e6
  3f09c6: ab0d         	add	r3, sp, #0x34
  3f09c8: 4618         	mov	r0, r3
  3f09ca: f3c4 ffa3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c4f46
  3f09ce: e7ff         	b	0x3f09d0 <SoldierRemoteController::weaponDidFire(Item*)+0x1b4> @ imm = #-0x2
  3f09d0: ab0b         	add	r3, sp, #0x2c
  3f09d2: 4618         	mov	r0, r3
  3f09d4: f399 fd12    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x399a24
  3f09d8: ab0c         	add	r3, sp, #0x30
  3f09da: 4618         	mov	r0, r3
  3f09dc: f3c4 ff9a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c4f34
  3f09e0: f397 fb64    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3976c8
  3f09e4: b011         	add	sp, #0x44
  3f09e6: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x3f09e7); words below are literal-pool data ---
  3f09e8: 8050         	strh	r0, [r2, #0x2]
  3f09ea: 003e         	movs	r6, r7

// ==== SoldierRemoteController::weaponDidFire
//      file offset 0x3f09ec (= ELF address; Ghidra 0x4009ec), 8 bytes, Thumb-2
  3f09ec: f1a0 00f8    	sub.w	r0, r0, #0xf8
  3f09f0: f7ff bf14    	b.w	0x3f081c <SoldierRemoteController::weaponDidFire(Item*)> @ imm = #-0x1d8

// ==== SoldierRemoteController::setTeamId
//      file offset 0x3f09f4 (= ELF address; Ghidra 0x4009f4), 212 bytes, Thumb-2
  3f09f4: b510         	push	{r4, lr}
  3f09f6: b086         	sub	sp, #0x18
  3f09f8: 9001         	str	r0, [sp, #0x4]
  3f09fa: 9100         	str	r1, [sp]
  3f09fc: 4c30         	ldr	r4, [pc, #0xc0]         @ 0x3f0ac0 <SoldierRemoteController::setTeamId(int)+0xcc>
  3f09fe: 447c         	add	r4, pc
  3f0a00: 9b01         	ldr	r3, [sp, #0x4]
  3f0a02: 4618         	mov	r0, r3
  3f0a04: 9900         	ldr	r1, [sp]
  3f0a06: f710 fa0d    	bl	0x300e24 <CollisionObject::setTeamId(int)> @ imm = #-0xefbe6
  3f0a0a: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x3f0ac4 <SoldierRemoteController::setTeamId(int)+0xd0>
  3f0a0c: 58e3         	ldr	r3, [r4, r3]
  3f0a0e: 681b         	ldr	r3, [r3]
  3f0a10: 2b00         	cmp	r3, #0x0
  3f0a12: d11b         	bne	0x3f0a4c <SoldierRemoteController::setTeamId(int)+0x58> @ imm = #0x36
  3f0a14: 9b00         	ldr	r3, [sp]
  3f0a16: 2b00         	cmp	r3, #0x0
  3f0a18: d118         	bne	0x3f0a4c <SoldierRemoteController::setTeamId(int)+0x58> @ imm = #0x30
  3f0a1a: 9b01         	ldr	r3, [sp, #0x4]
  3f0a1c: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3f0a20: 20ff         	movs	r0, #0xff
  3f0a22: 21ff         	movs	r1, #0xff
  3f0a24: 22ff         	movs	r2, #0xff
  3f0a26: f7fd fbef    	bl	0x3ee208 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x1cc> @ imm = #-0x2822
  3f0a2a: 4603         	mov	r3, r0
  3f0a2c: 461a         	mov	r2, r3
  3f0a2e: f88d 200c    	strb.w	r2, [sp, #0xc]
  3f0a32: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3f0a36: f88d 200d    	strb.w	r2, [sp, #0xd]
  3f0a3a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3f0a3e: f88d 300e    	strb.w	r3, [sp, #0xe]
  3f0a42: 4620         	mov	r0, r4
  3f0a44: 9903         	ldr	r1, [sp, #0xc]
  3f0a46: f003 fa63    	bl	0x3f3f10 <SoldierView::setPlayerLabelColor(cocos2d::_ccColor3B)> @ imm = #0x34c6
  3f0a4a: e036         	b	0x3f0aba <SoldierRemoteController::setTeamId(int)+0xc6> @ imm = #0x6c
  3f0a4c: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x3f0ac4 <SoldierRemoteController::setTeamId(int)+0xd0>
  3f0a4e: 58e3         	ldr	r3, [r4, r3]
  3f0a50: 681a         	ldr	r2, [r3]
  3f0a52: 9b00         	ldr	r3, [sp]
  3f0a54: 429a         	cmp	r2, r3
  3f0a56: d118         	bne	0x3f0a8a <SoldierRemoteController::setTeamId(int)+0x96> @ imm = #0x30
  3f0a58: 9b01         	ldr	r3, [sp, #0x4]
  3f0a5a: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3f0a5e: 2000         	movs	r0, #0x0
  3f0a60: 21ff         	movs	r1, #0xff
  3f0a62: 2200         	movs	r2, #0x0
  3f0a64: f7fd fbd0    	bl	0x3ee208 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x1cc> @ imm = #-0x2860
  3f0a68: 4603         	mov	r3, r0
  3f0a6a: 461a         	mov	r2, r3
  3f0a6c: f88d 2010    	strb.w	r2, [sp, #0x10]
  3f0a70: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3f0a74: f88d 2011    	strb.w	r2, [sp, #0x11]
  3f0a78: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3f0a7c: f88d 3012    	strb.w	r3, [sp, #0x12]
  3f0a80: 4620         	mov	r0, r4
  3f0a82: 9904         	ldr	r1, [sp, #0x10]
  3f0a84: f003 fa44    	bl	0x3f3f10 <SoldierView::setPlayerLabelColor(cocos2d::_ccColor3B)> @ imm = #0x3488
  3f0a88: e017         	b	0x3f0aba <SoldierRemoteController::setTeamId(int)+0xc6> @ imm = #0x2e
  3f0a8a: 9b01         	ldr	r3, [sp, #0x4]
  3f0a8c: f8d3 40fc    	ldr.w	r4, [r3, #0xfc]
  3f0a90: 20ff         	movs	r0, #0xff
  3f0a92: 2100         	movs	r1, #0x0
  3f0a94: 2200         	movs	r2, #0x0
  3f0a96: f7fd fbb7    	bl	0x3ee208 <SpawnRow** std::__copy_move<true, true, std::random_access_iterator_tag>::__copy_m<SpawnRow*>(SpawnRow* const*, SpawnRow* const*, SpawnRow**)+0x1cc> @ imm = #-0x2892
  3f0a9a: 4603         	mov	r3, r0
  3f0a9c: 461a         	mov	r2, r3
  3f0a9e: f88d 2014    	strb.w	r2, [sp, #0x14]
  3f0aa2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3f0aa6: f88d 2015    	strb.w	r2, [sp, #0x15]
  3f0aaa: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3f0aae: f88d 3016    	strb.w	r3, [sp, #0x16]
  3f0ab2: 4620         	mov	r0, r4
  3f0ab4: 9905         	ldr	r1, [sp, #0x14]
  3f0ab6: f003 fa2b    	bl	0x3f3f10 <SoldierView::setPlayerLabelColor(cocos2d::_ccColor3B)> @ imm = #0x3456
  3f0aba: b006         	add	sp, #0x18
  3f0abc: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3f0abd); words below are literal-pool data ---
  3f0abe: bf00         	nop
  3f0ac0: 200a         	movs	r0, #0xa
  3f0ac2: 0054         	lsls	r4, r2, #0x1
  3f0ac4: d7d0         	bvc	0x3f0a68 <SoldierRemoteController::setTeamId(int)+0x74> @ imm = #-0x60
  3f0ac6: ffff b510    	vsli.32	d27, d0, #0x1f
