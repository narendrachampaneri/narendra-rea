// PROXYNADE: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PROXYNADE.cpp

// ==== PROXYNADE::PROXYNADE
//      file offset 0x38f140 (= ELF address; Ghidra 0x39f140), 44 bytes, Thumb-2
  38f140: b510         	push	{r4, lr}
  38f142: b082         	sub	sp, #0x8
  38f144: 9001         	str	r0, [sp, #0x4]
  38f146: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x38f164 <PROXYNADE::PROXYNADE()+0x24>
  38f148: 447c         	add	r4, pc
  38f14a: 9b01         	ldr	r3, [sp, #0x4]
  38f14c: 4618         	mov	r0, r3
  38f14e: f085 ff2b    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x85e56
  38f152: 9b01         	ldr	r3, [sp, #0x4]
  38f154: 4a04         	ldr	r2, [pc, #0x10]         @ 0x38f168 <PROXYNADE::PROXYNADE()+0x28>
  38f156: 58a2         	ldr	r2, [r4, r2]
  38f158: 3208         	adds	r2, #0x8
  38f15a: 601a         	str	r2, [r3]
  38f15c: 9b01         	ldr	r3, [sp, #0x4]
  38f15e: 4618         	mov	r0, r3
  38f160: b002         	add	sp, #0x8
  38f162: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38f163); words below are literal-pool data ---
  38f164: 38c0         	subs	r0, #0xc0
  38f166: 005a         	lsls	r2, r3, #0x1
  38f168: dd00         	ble	0x38f16c <PROXYNADE::init()> @ imm = #0x0
  38f16a: ffff b500    	<unknown>

// ==== PROXYNADE::init
//      file offset 0x38f16c (= ELF address; Ghidra 0x39f16c), 172 bytes, Thumb-2
  38f16c: b500         	push	{lr}
  38f16e: b085         	sub	sp, #0x14
  38f170: 9001         	str	r0, [sp, #0x4]
  38f172: 9b01         	ldr	r3, [sp, #0x4]
  38f174: 4618         	mov	r0, r3
  38f176: f085 ff3b    	bl	0x414ff0 <Weapon::init()> @ imm = #0x85e76
  38f17a: 4603         	mov	r3, r0
  38f17c: f88d 300f    	strb.w	r3, [sp, #0xf]
  38f180: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  38f184: f083 0301    	eor	r3, r3, #0x1
  38f188: b2db         	uxtb	r3, r3
  38f18a: 2b00         	cmp	r3, #0x0
  38f18c: d001         	beq	0x38f192 <PROXYNADE::init()+0x26> @ imm = #0x2
  38f18e: 2300         	movs	r3, #0x0
  38f190: e03b         	b	0x38f20a <PROXYNADE::init()+0x9e> @ imm = #0x76
  38f192: 4b20         	ldr	r3, [pc, #0x80]         @ 0x38f214 <PROXYNADE::init()+0xa8>
  38f194: 447b         	add	r3, pc
  38f196: 4618         	mov	r0, r3
  38f198: f249 f8b4    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x249168
  38f19c: 4602         	mov	r2, r0
  38f19e: 9b01         	ldr	r3, [sp, #0x4]
  38f1a0: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  38f1a4: 9b01         	ldr	r3, [sp, #0x4]
  38f1a6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f1aa: 4618         	mov	r0, r3
  38f1ac: f208 fe9c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x208d38
  38f1b0: 9b01         	ldr	r3, [sp, #0x4]
  38f1b2: 681b         	ldr	r3, [r3]
  38f1b4: f503 73f0    	add.w	r3, r3, #0x1e0
  38f1b8: 681b         	ldr	r3, [r3]
  38f1ba: 9801         	ldr	r0, [sp, #0x4]
  38f1bc: 4798         	blx	r3
  38f1be: 9b01         	ldr	r3, [sp, #0x4]
  38f1c0: 2200         	movs	r2, #0x0
  38f1c2: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  38f1c6: 9b01         	ldr	r3, [sp, #0x4]
  38f1c8: 2202         	movs	r2, #0x2
  38f1ca: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  38f1ce: 9b01         	ldr	r3, [sp, #0x4]
  38f1d0: 2205         	movs	r2, #0x5
  38f1d2: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  38f1d6: 9b01         	ldr	r3, [sp, #0x4]
  38f1d8: 681b         	ldr	r3, [r3]
  38f1da: 33cc         	adds	r3, #0xcc
  38f1dc: 681b         	ldr	r3, [r3]
  38f1de: 9901         	ldr	r1, [sp, #0x4]
  38f1e0: 9a01         	ldr	r2, [sp, #0x4]
  38f1e2: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38f1e6: 4608         	mov	r0, r1
  38f1e8: 4611         	mov	r1, r2
  38f1ea: 2200         	movs	r2, #0x0
  38f1ec: 4798         	blx	r3
  38f1ee: 9b01         	ldr	r3, [sp, #0x4]
  38f1f0: 2217         	movs	r2, #0x17
  38f1f2: f8c3 2188    	str.w	r2, [r3, #0x188]
  38f1f6: 9b01         	ldr	r3, [sp, #0x4]
  38f1f8: f04f 0200    	mov.w	r2, #0x0
  38f1fc: f8c3 2110    	str.w	r2, [r3, #0x110]
  38f200: 9b01         	ldr	r3, [sp, #0x4]
  38f202: 2200         	movs	r2, #0x0
  38f204: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  38f208: 2301         	movs	r3, #0x1
  38f20a: 4618         	mov	r0, r3
  38f20c: b005         	add	sp, #0x14
  38f20e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38f211); words below are literal-pool data ---
  38f212: bf00         	nop
  38f214: 20a0         	movs	r0, #0xa0
  38f216: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::~PROXYNADE
//      file offset 0x38f218 (= ELF address; Ghidra 0x39f218), 124 bytes, Thumb-2
  38f218: b500         	push	{lr}
  38f21a: b083         	sub	sp, #0xc
  38f21c: 9001         	str	r0, [sp, #0x4]
  38f21e: 491b         	ldr	r1, [pc, #0x6c]         @ 0x38f28c <PROXYNADE::~PROXYNADE()+0x74>
  38f220: 4479         	add	r1, pc
  38f222: 9b01         	ldr	r3, [sp, #0x4]
  38f224: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x38f290 <PROXYNADE::~PROXYNADE()+0x78>
  38f226: 588a         	ldr	r2, [r1, r2]
  38f228: 3208         	adds	r2, #0x8
  38f22a: 601a         	str	r2, [r3]
  38f22c: 9b01         	ldr	r3, [sp, #0x4]
  38f22e: 4618         	mov	r0, r3
  38f230: f201 f9fc    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2013f8
  38f234: 9b01         	ldr	r3, [sp, #0x4]
  38f236: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f23a: 4618         	mov	r0, r3
  38f23c: f208 fe3c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x208c78
  38f240: 9b01         	ldr	r3, [sp, #0x4]
  38f242: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f246: 2b00         	cmp	r3, #0x0
  38f248: d010         	beq	0x38f26c <PROXYNADE::~PROXYNADE()+0x54> @ imm = #0x20
  38f24a: 9b01         	ldr	r3, [sp, #0x4]
  38f24c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f250: 681b         	ldr	r3, [r3]
  38f252: 33e8         	adds	r3, #0xe8
  38f254: 681b         	ldr	r3, [r3]
  38f256: 9a01         	ldr	r2, [sp, #0x4]
  38f258: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38f25c: 4610         	mov	r0, r2
  38f25e: 4798         	blx	r3
  38f260: 9b01         	ldr	r3, [sp, #0x4]
  38f262: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f266: 4618         	mov	r0, r3
  38f268: f208 fe26    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x208c4c
  38f26c: 9b01         	ldr	r3, [sp, #0x4]
  38f26e: 4618         	mov	r0, r3
  38f270: f085 ffbe    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x85f7c
  38f274: 2300         	movs	r3, #0x0
  38f276: 2b00         	cmp	r3, #0x0
  38f278: d002         	beq	0x38f280 <PROXYNADE::~PROXYNADE()+0x68> @ imm = #0x4
  38f27a: 9801         	ldr	r0, [sp, #0x4]
  38f27c: f3f8 ff12    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f8e24
  38f280: 9b01         	ldr	r3, [sp, #0x4]
  38f282: 4618         	mov	r0, r3
  38f284: b003         	add	sp, #0xc
  38f286: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38f289); words below are literal-pool data ---
  38f28a: bf00         	nop
  38f28c: 37e8         	adds	r7, #0xe8
  38f28e: 005a         	lsls	r2, r3, #0x1
  38f290: dd00         	ble	0x38f294 <PROXYNADE::~PROXYNADE()> @ imm = #0x0
  38f292: ffff b500    	<unknown>

// ==== PROXYNADE::~PROXYNADE
//      file offset 0x38f294 (= ELF address; Ghidra 0x39f294), 28 bytes, Thumb-2
  38f294: b500         	push	{lr}
  38f296: b083         	sub	sp, #0xc
  38f298: 9001         	str	r0, [sp, #0x4]
  38f29a: 9801         	ldr	r0, [sp, #0x4]
  38f29c: f7ff ffbc    	bl	0x38f218 <PROXYNADE::~PROXYNADE()> @ imm = #-0x88
  38f2a0: 9801         	ldr	r0, [sp, #0x4]
  38f2a2: f3f8 feff    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f8dfe
  38f2a6: 9b01         	ldr	r3, [sp, #0x4]
  38f2a8: 4618         	mov	r0, r3
  38f2aa: b003         	add	sp, #0xc
  38f2ac: f85d fb04    	ldr	pc, [sp], #4

// ==== PROXYNADE::initBody
//      file offset 0x38f2b0 (= ELF address; Ghidra 0x39f2b0), 332 bytes, Thumb-2
  38f2b0: b530         	push	{r4, r5, lr}
  38f2b2: b099         	sub	sp, #0x64
  38f2b4: 900d         	str	r0, [sp, #0x34]
  38f2b6: f64c 43cd    	movw	r3, #0xcccd
  38f2ba: f6c3 53cc    	movt	r3, #0x3dcc
  38f2be: 930f         	str	r3, [sp, #0x3c]
  38f2c0: eddd 7a0f    	vldr	s15, [sp, #60]
  38f2c4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38f2c8: ec51 0b17    	vmov	r0, r1, d7
  38f2cc: f04f 0200    	mov.w	r2, #0x0
  38f2d0: f04f 0300    	mov.w	r3, #0x0
  38f2d4: f2c4 0320    	movt	r3, #0x4020
  38f2d8: f343 ffb8    	bl	0x6d324c <cpBodyNew>    @ imm = #0x343f70
  38f2dc: 4602         	mov	r2, r0
  38f2de: 9b0d         	ldr	r3, [sp, #0x34]
  38f2e0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  38f2e4: 9b0d         	ldr	r3, [sp, #0x34]
  38f2e6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38f2ea: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x38f3f8 <PROXYNADE::initBody()+0x148>
  38f2ec: 447a         	add	r2, pc
  38f2ee: 601a         	str	r2, [r3]
  38f2f0: 9b0d         	ldr	r3, [sp, #0x34]
  38f2f2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38f2f6: 9a0d         	ldr	r2, [sp, #0x34]
  38f2f8: f8c3 2090    	str.w	r2, [r3, #0x90]
  38f2fc: 990d         	ldr	r1, [sp, #0x34]
  38f2fe: a338         	adr	r3, #224 <PROXYNADE::initBody()+0x8a>
  38f300: e9d3 2300    	ldrd	r2, r3, [r3]
  38f304: e9c1 233c    	strd	r2, r3, [r1, #240]
  38f308: 9c0d         	ldr	r4, [sp, #0x34]
  38f30a: ab08         	add	r3, sp, #0x20
  38f30c: 4618         	mov	r0, r3
  38f30e: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x38f3d0 <PROXYNADE::initBody()+0x120>
  38f312: ed9f 1b31    	vldr	d1, [pc, #196]          @ 0x38f3d8 <PROXYNADE::initBody()+0x128>
  38f316: f7fe fe89    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x12ee
  38f31a: 34f8         	adds	r4, #0xf8
  38f31c: ab08         	add	r3, sp, #0x20
  38f31e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38f320: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38f324: 9b0d         	ldr	r3, [sp, #0x34]
  38f326: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  38f32a: ab10         	add	r3, sp, #0x40
  38f32c: 4618         	mov	r0, r3
  38f32e: ed9f 0b28    	vldr	d0, [pc, #160]          @ 0x38f3d0 <PROXYNADE::initBody()+0x120>
  38f332: eeb8 1b08    	vmov.f64	d1, #-3.000000e+00
  38f336: f7fe fe79    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x130e
  38f33a: ab14         	add	r3, sp, #0x50
  38f33c: 4618         	mov	r0, r3
  38f33e: ed9f 0b24    	vldr	d0, [pc, #144]          @ 0x38f3d0 <PROXYNADE::initBody()+0x120>
  38f342: eeb0 1b08    	vmov.f64	d1, #3.000000e+00
  38f346: f7fe fe71    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x131e
  38f34a: ac02         	add	r4, sp, #0x8
  38f34c: ab14         	add	r3, sp, #0x50
  38f34e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38f350: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38f354: f04f 0200    	mov.w	r2, #0x0
  38f358: f04f 0300    	mov.w	r3, #0x0
  38f35c: f2c4 0308    	movt	r3, #0x4008
  38f360: e9cd 2306    	strd	r2, r3, [sp, #24]
  38f364: 466b         	mov	r3, sp
  38f366: aa12         	add	r2, sp, #0x48
  38f368: e892 0003    	ldm.w	r2, {r0, r1}
  38f36c: e883 0003    	stm.w	r3, {r0, r1}
  38f370: ab10         	add	r3, sp, #0x40
  38f372: cb0c         	ldm	r3, {r2, r3}
  38f374: 4628         	mov	r0, r5
  38f376: f345 ff61    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x345ec2
  38f37a: 4602         	mov	r2, r0
  38f37c: 9b0d         	ldr	r3, [sp, #0x34]
  38f37e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  38f382: 9b0d         	ldr	r3, [sp, #0x34]
  38f384: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38f388: 2202         	movs	r2, #0x2
  38f38a: 655a         	str	r2, [r3, #0x54]
  38f38c: 9b0d         	ldr	r3, [sp, #0x34]
  38f38e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38f392: 2202         	movs	r2, #0x2
  38f394: 65da         	str	r2, [r3, #0x5c]
  38f396: 9b0d         	ldr	r3, [sp, #0x34]
  38f398: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38f39c: 2202         	movs	r2, #0x2
  38f39e: 659a         	str	r2, [r3, #0x58]
  38f3a0: 9b0d         	ldr	r3, [sp, #0x34]
  38f3a2: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  38f3a6: a310         	adr	r3, #64 <PROXYNADE::initBody()+0x10a>
  38f3a8: e9d3 2300    	ldrd	r2, r3, [r3]
  38f3ac: e9c1 230c    	strd	r2, r3, [r1, #48]
  38f3b0: 9b0d         	ldr	r3, [sp, #0x34]
  38f3b2: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  38f3b6: a30e         	adr	r3, #56 <PROXYNADE::initBody()+0x118>
  38f3b8: e9d3 2300    	ldrd	r2, r3, [r3]
  38f3bc: e9c1 230e    	strd	r2, r3, [r1, #56]
  38f3c0: 9b0d         	ldr	r3, [sp, #0x34]
  38f3c2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38f3c6: 9a0d         	ldr	r2, [sp, #0x34]
  38f3c8: 651a         	str	r2, [r3, #0x50]
  38f3ca: b019         	add	sp, #0x64
  38f3cc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38f3cd); words below are literal-pool data ---
  38f3ce: bf00         	nop
  38f3dc: 4000         	ands	r0, r0
  38f3de: c06f         	stm	r0!, {r0, r1, r2, r3, r5, r6}
  38f3e0: 3333         	adds	r3, #0x33
  38f3e2: 3333         	adds	r3, #0x33
  38f3e4: 3333         	adds	r3, #0x33
  38f3e6: 3fe3         	subs	r7, #0xe3
  38f3e8: 0000         	movs	r0, r0
  38f3ea: a000         	adr	r0, #0 <PROXYNADE::initBody()+0x13e>
  38f3ec: 9999         	ldr	r1, [sp, #0x264]
  38f3ee: 3fb9         	subs	r7, #0xb9
  38f3f0: 0000         	movs	r0, r0
  38f3f2: 8000         	strh	r0, [r0]
  38f3f4: ae14         	add	r6, sp, #0x50
  38f3f6: 3fef         	subs	r7, #0xef
  38f3f8: fcc5 ffff    	stc2l	p15, c15, [r5], {255}

// ==== PROXYNADE::updateRemoteWeaponStep
//      file offset 0x38f400 (= ELF address; Ghidra 0x39f400), 40 bytes, Thumb-2
  38f400: b500         	push	{lr}
  38f402: b083         	sub	sp, #0xc
  38f404: 9001         	str	r0, [sp, #0x4]
  38f406: 9100         	str	r1, [sp]
  38f408: 9b01         	ldr	r3, [sp, #0x4]
  38f40a: 4618         	mov	r0, r3
  38f40c: 9900         	ldr	r1, [sp]
  38f40e: f085 ffe7    	bl	0x4153e0 <Weapon::updateRemoteWeaponStep(float)> @ imm = #0x85fce
  38f412: 9b01         	ldr	r3, [sp, #0x4]
  38f414: 681b         	ldr	r3, [r3]
  38f416: f503 73da    	add.w	r3, r3, #0x1b4
  38f41a: 681b         	ldr	r3, [r3]
  38f41c: 9801         	ldr	r0, [sp, #0x4]
  38f41e: 9900         	ldr	r1, [sp]
  38f420: 4798         	blx	r3
  38f422: b003         	add	sp, #0xc
  38f424: f85d fb04    	ldr	pc, [sp], #4

// ==== PROXYNADE::updateItemStep
//      file offset 0x38f428 (= ELF address; Ghidra 0x39f428), 872 bytes, Thumb-2
  38f428: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  38f42c: ed2d 8b02    	vpush	{d8}
  38f430: b097         	sub	sp, #0x5c
  38f432: 900d         	str	r0, [sp, #0x34]
  38f434: 910c         	str	r1, [sp, #0x30]
  38f436: 4cce         	ldr	r4, [pc, #0x338]        @ 0x38f770 <PROXYNADE::updateItemStep(float)+0x348>
  38f438: 447c         	add	r4, pc
  38f43a: 9b0d         	ldr	r3, [sp, #0x34]
  38f43c: f04f 0200    	mov.w	r2, #0x0
  38f440: f8c3 2118    	str.w	r2, [r3, #0x118]
  38f444: 9b0d         	ldr	r3, [sp, #0x34]
  38f446: f04f 0200    	mov.w	r2, #0x0
  38f44a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  38f44e: 9b0d         	ldr	r3, [sp, #0x34]
  38f450: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  38f454: 2b00         	cmp	r3, #0x0
  38f456: d000         	beq	0x38f45a <PROXYNADE::updateItemStep(float)+0x32> @ imm = #0x0
  38f458: e17a         	b	0x38f750 <PROXYNADE::updateItemStep(float)+0x328> @ imm = #0x2f4
  38f45a: 9b0d         	ldr	r3, [sp, #0x34]
  38f45c: 681b         	ldr	r3, [r3]
  38f45e: f503 73ce    	add.w	r3, r3, #0x19c
  38f462: 681b         	ldr	r3, [r3]
  38f464: 9a0d         	ldr	r2, [sp, #0x34]
  38f466: 4610         	mov	r0, r2
  38f468: 4798         	blx	r3
  38f46a: 4603         	mov	r3, r0
  38f46c: f083 0301    	eor	r3, r3, #0x1
  38f470: b2db         	uxtb	r3, r3
  38f472: 2b00         	cmp	r3, #0x0
  38f474: d07a         	beq	0x38f56c <PROXYNADE::updateItemStep(float)+0x144> @ imm = #0xf4
  38f476: 9b0d         	ldr	r3, [sp, #0x34]
  38f478: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f47c: 2b00         	cmp	r3, #0x0
  38f47e: d139         	bne	0x38f4f4 <PROXYNADE::updateItemStep(float)+0xcc> @ imm = #0x72
  38f480: 20ff         	movs	r0, #0xff
  38f482: 21ff         	movs	r1, #0xff
  38f484: 22ff         	movs	r2, #0xff
  38f486: f7fe fd51    	bl	0x38df2c <POWERUP::isModItem()+0x118> @ imm = #-0x155e
  38f48a: 4603         	mov	r3, r0
  38f48c: 461a         	mov	r2, r3
  38f48e: f88d 2048    	strb.w	r2, [sp, #0x48]
  38f492: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  38f496: f88d 2049    	strb.w	r2, [sp, #0x49]
  38f49a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  38f49e: f88d 304a    	strb.w	r3, [sp, #0x4a]
  38f4a2: ab12         	add	r3, sp, #0x48
  38f4a4: 4ab3         	ldr	r2, [pc, #0x2cc]        @ 0x38f774 <PROXYNADE::updateItemStep(float)+0x34c>
  38f4a6: 447a         	add	r2, pc
  38f4a8: 9200         	str	r2, [sp]
  38f4aa: f04f 507c    	mov.w	r0, #0x3f000000
  38f4ae: f04f 517e    	mov.w	r1, #0x3f800000
  38f4b2: f04f 0200    	mov.w	r2, #0x0
  38f4b6: f2c4 0240    	movt	r2, #0x4040
  38f4ba: f22a fc3b    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x22a876
  38f4be: 4602         	mov	r2, r0
  38f4c0: 9b0d         	ldr	r3, [sp, #0x34]
  38f4c2: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  38f4c6: 9b0d         	ldr	r3, [sp, #0x34]
  38f4c8: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f4cc: 4618         	mov	r0, r3
  38f4ce: f208 fd0b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x208a16
  38f4d2: 4ba9         	ldr	r3, [pc, #0x2a4]        @ 0x38f778 <PROXYNADE::updateItemStep(float)+0x350>
  38f4d4: 58e3         	ldr	r3, [r4, r3]
  38f4d6: 681b         	ldr	r3, [r3]
  38f4d8: 681b         	ldr	r3, [r3]
  38f4da: 33cc         	adds	r3, #0xcc
  38f4dc: 681b         	ldr	r3, [r3]
  38f4de: 4aa6         	ldr	r2, [pc, #0x298]        @ 0x38f778 <PROXYNADE::updateItemStep(float)+0x350>
  38f4e0: 58a2         	ldr	r2, [r4, r2]
  38f4e2: 6812         	ldr	r2, [r2]
  38f4e4: 4611         	mov	r1, r2
  38f4e6: 9a0d         	ldr	r2, [sp, #0x34]
  38f4e8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38f4ec: 4608         	mov	r0, r1
  38f4ee: 4611         	mov	r1, r2
  38f4f0: 2203         	movs	r2, #0x3
  38f4f2: 4798         	blx	r3
  38f4f4: 9b0d         	ldr	r3, [sp, #0x34]
  38f4f6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f4fa: 681b         	ldr	r3, [r3]
  38f4fc: f503 73f2    	add.w	r3, r3, #0x1e4
  38f500: 681b         	ldr	r3, [r3]
  38f502: 9a0d         	ldr	r2, [sp, #0x34]
  38f504: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  38f508: 4610         	mov	r0, r2
  38f50a: f04f 0100    	mov.w	r1, #0x0
  38f50e: f2c4 0140    	movt	r1, #0x4040
  38f512: 4798         	blx	r3
  38f514: 9b0d         	ldr	r3, [sp, #0x34]
  38f516: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  38f51a: 681b         	ldr	r3, [r3]
  38f51c: 334c         	adds	r3, #0x4c
  38f51e: 681d         	ldr	r5, [r3]
  38f520: 9b0d         	ldr	r3, [sp, #0x34]
  38f522: f8d3 61f0    	ldr.w	r6, [r3, #0x1f0]
  38f526: 9b0d         	ldr	r3, [sp, #0x34]
  38f528: 681b         	ldr	r3, [r3]
  38f52a: 3350         	adds	r3, #0x50
  38f52c: 681b         	ldr	r3, [r3]
  38f52e: 9a0d         	ldr	r2, [sp, #0x34]
  38f530: 4610         	mov	r0, r2
  38f532: 4798         	blx	r3
  38f534: 4603         	mov	r3, r0
  38f536: 4630         	mov	r0, r6
  38f538: 4619         	mov	r1, r3
  38f53a: 47a8         	blx	r5
  38f53c: 9b0d         	ldr	r3, [sp, #0x34]
  38f53e: ed93 7a44    	vldr	s14, [r3, #272]
  38f542: eddd 7a0c    	vldr	s15, [sp, #48]
  38f546: ee77 7a27    	vadd.f32	s15, s14, s15
  38f54a: 9b0d         	ldr	r3, [sp, #0x34]
  38f54c: edc3 7a44    	vstr	s15, [r3, #272]
  38f550: 9d0d         	ldr	r5, [sp, #0x34]
  38f552: ab08         	add	r3, sp, #0x20
  38f554: 4618         	mov	r0, r3
  38f556: ed9f 0b82    	vldr	d0, [pc, #520]          @ 0x38f760 <PROXYNADE::updateItemStep(float)+0x338>
  38f55a: ed9f 1b81    	vldr	d1, [pc, #516]          @ 0x38f760 <PROXYNADE::updateItemStep(float)+0x338>
  38f55e: f7fe fd65    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x1536
  38f562: 35f8         	adds	r5, #0xf8
  38f564: ab08         	add	r3, sp, #0x20
  38f566: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38f568: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  38f56c: 9b0d         	ldr	r3, [sp, #0x34]
  38f56e: edd3 7a44    	vldr	s15, [r3, #272]
  38f572: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38f576: ed9f 7b7c    	vldr	d7, [pc, #496]          @ 0x38f768 <PROXYNADE::updateItemStep(float)+0x340>
  38f57a: eeb4 6bc7    	vcmpe.f64	d6, d7
  38f57e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38f582: dd0c         	ble	0x38f59e <PROXYNADE::updateItemStep(float)+0x176> @ imm = #0x18
  38f584: 9b0d         	ldr	r3, [sp, #0x34]
  38f586: 681b         	ldr	r3, [r3]
  38f588: f503 7320    	add.w	r3, r3, #0x280
  38f58c: 681b         	ldr	r3, [r3]
  38f58e: 9a0d         	ldr	r2, [sp, #0x34]
  38f590: 4610         	mov	r0, r2
  38f592: 2102         	movs	r1, #0x2
  38f594: 4798         	blx	r3
  38f596: 9b0d         	ldr	r3, [sp, #0x34]
  38f598: 2201         	movs	r2, #0x1
  38f59a: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38f59e: 9b0d         	ldr	r3, [sp, #0x34]
  38f5a0: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  38f5a4: 2b00         	cmp	r3, #0x0
  38f5a6: f000 80d3    	beq.w	0x38f750 <PROXYNADE::updateItemStep(float)+0x328> @ imm = #0x1a6
  38f5aa: 9b0d         	ldr	r3, [sp, #0x34]
  38f5ac: 2201         	movs	r2, #0x1
  38f5ae: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38f5b2: 9b0d         	ldr	r3, [sp, #0x34]
  38f5b4: 2201         	movs	r2, #0x1
  38f5b6: f883 21f4    	strb.w	r2, [r3, #0x1f4]
  38f5ba: 9b0d         	ldr	r3, [sp, #0x34]
  38f5bc: 681b         	ldr	r3, [r3]
  38f5be: 3350         	adds	r3, #0x50
  38f5c0: 681b         	ldr	r3, [r3]
  38f5c2: 9a0d         	ldr	r2, [sp, #0x34]
  38f5c4: 4610         	mov	r0, r2
  38f5c6: 4798         	blx	r3
  38f5c8: 4603         	mov	r3, r0
  38f5ca: 681b         	ldr	r3, [r3]
  38f5cc: 4618         	mov	r0, r3
  38f5ce: f74d fb59    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb294e
  38f5d2: 4680         	mov	r8, r0
  38f5d4: 9b0d         	ldr	r3, [sp, #0x34]
  38f5d6: 681b         	ldr	r3, [r3]
  38f5d8: 3350         	adds	r3, #0x50
  38f5da: 681b         	ldr	r3, [r3]
  38f5dc: 9a0d         	ldr	r2, [sp, #0x34]
  38f5de: 4610         	mov	r0, r2
  38f5e0: 4798         	blx	r3
  38f5e2: 4603         	mov	r3, r0
  38f5e4: 685b         	ldr	r3, [r3, #0x4]
  38f5e6: 4618         	mov	r0, r3
  38f5e8: f74d fb4c    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb2968
  38f5ec: 4607         	mov	r7, r0
  38f5ee: f04f 0000    	mov.w	r0, #0x0
  38f5f2: f74d fb47    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb2972
  38f5f6: 4606         	mov	r6, r0
  38f5f8: f04f 0000    	mov.w	r0, #0x0
  38f5fc: f74d fb42    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb297c
  38f600: 4605         	mov	r5, r0
  38f602: 2017         	movs	r0, #0x17
  38f604: f755 fb80    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xaa900
  38f608: 4683         	mov	r11, r0
  38f60a: f04f 507e    	mov.w	r0, #0x3f800000
  38f60e: f74d fb39    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb298e
  38f612: 4682         	mov	r10, r0
  38f614: 4b59         	ldr	r3, [pc, #0x164]        @ 0x38f77c <PROXYNADE::updateItemStep(float)+0x354>
  38f616: 58e3         	ldr	r3, [r4, r3]
  38f618: 681b         	ldr	r3, [r3]
  38f61a: 1c59         	adds	r1, r3, #0x1
  38f61c: 4a57         	ldr	r2, [pc, #0x15c]        @ 0x38f77c <PROXYNADE::updateItemStep(float)+0x354>
  38f61e: 58a2         	ldr	r2, [r4, r2]
  38f620: 6011         	str	r1, [r2]
  38f622: 4618         	mov	r0, r3
  38f624: f755 fb70    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xaa920
  38f628: 4681         	mov	r9, r0
  38f62a: 4b55         	ldr	r3, [pc, #0x154]        @ 0x38f780 <PROXYNADE::updateItemStep(float)+0x358>
  38f62c: 58e3         	ldr	r3, [r4, r3]
  38f62e: 681b         	ldr	r3, [r3]
  38f630: 681b         	ldr	r3, [r3]
  38f632: f503 73e0    	add.w	r3, r3, #0x1c0
  38f636: 681b         	ldr	r3, [r3]
  38f638: 4a51         	ldr	r2, [pc, #0x144]        @ 0x38f780 <PROXYNADE::updateItemStep(float)+0x358>
  38f63a: 58a2         	ldr	r2, [r4, r2]
  38f63c: 6812         	ldr	r2, [r2]
  38f63e: a910         	add	r1, sp, #0x40
  38f640: 4608         	mov	r0, r1
  38f642: 4611         	mov	r1, r2
  38f644: 4798         	blx	r3
  38f646: ab10         	add	r3, sp, #0x40
  38f648: 4618         	mov	r0, r3
  38f64a: f025 f659    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x425cb2
  38f64e: 9007         	str	r0, [sp, #0x1c]
  38f650: ab0f         	add	r3, sp, #0x3c
  38f652: 4618         	mov	r0, r3
  38f654: f3fa fece    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3fad9c
  38f658: aa12         	add	r2, sp, #0x48
  38f65a: ab0f         	add	r3, sp, #0x3c
  38f65c: 4610         	mov	r0, r2
  38f65e: 9907         	ldr	r1, [sp, #0x1c]
  38f660: 461a         	mov	r2, r3
  38f662: f027 f1fd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4273fa
  38f666: ab12         	add	r3, sp, #0x48
  38f668: 4618         	mov	r0, r3
  38f66a: f20a f9e7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20a3ce
  38f66e: 4603         	mov	r3, r0
  38f670: f8cd b000    	str.w	r11, [sp]
  38f674: f8cd a004    	str.w	r10, [sp, #0x4]
  38f678: f8cd 9008    	str.w	r9, [sp, #0x8]
  38f67c: 9303         	str	r3, [sp, #0xc]
  38f67e: 2300         	movs	r3, #0x0
  38f680: 9304         	str	r3, [sp, #0x10]
  38f682: 4640         	mov	r0, r8
  38f684: 4639         	mov	r1, r7
  38f686: 4632         	mov	r2, r6
  38f688: 462b         	mov	r3, r5
  38f68a: f20a fbc1    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x20a782
  38f68e: 4603         	mov	r3, r0
  38f690: 9311         	str	r3, [sp, #0x44]
  38f692: ab12         	add	r3, sp, #0x48
  38f694: 4618         	mov	r0, r3
  38f696: f026 f13d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42627a
  38f69a: ab0f         	add	r3, sp, #0x3c
  38f69c: 4618         	mov	r0, r3
  38f69e: f3fa fead    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3fad5a
  38f6a2: ab10         	add	r3, sp, #0x40
  38f6a4: 4618         	mov	r0, r3
  38f6a6: f026 f135    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x42626a
  38f6aa: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x38f784 <PROXYNADE::updateItemStep(float)+0x35c>
  38f6ac: 58e3         	ldr	r3, [r4, r3]
  38f6ae: 681c         	ldr	r4, [r3]
  38f6b0: 9b0d         	ldr	r3, [sp, #0x34]
  38f6b2: 681b         	ldr	r3, [r3]
  38f6b4: 3350         	adds	r3, #0x50
  38f6b6: 681b         	ldr	r3, [r3]
  38f6b8: 9a0d         	ldr	r2, [sp, #0x34]
  38f6ba: 4610         	mov	r0, r2
  38f6bc: 4798         	blx	r3
  38f6be: 4603         	mov	r3, r0
  38f6c0: edd3 7a00    	vldr	s15, [r3]
  38f6c4: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  38f6c8: 9b0d         	ldr	r3, [sp, #0x34]
  38f6ca: 681b         	ldr	r3, [r3]
  38f6cc: 3350         	adds	r3, #0x50
  38f6ce: 681b         	ldr	r3, [r3]
  38f6d0: 9a0d         	ldr	r2, [sp, #0x34]
  38f6d2: 4610         	mov	r0, r2
  38f6d4: 4798         	blx	r3
  38f6d6: 4603         	mov	r3, r0
  38f6d8: edd3 7a01    	vldr	s15, [r3, #4]
  38f6dc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38f6e0: ab12         	add	r3, sp, #0x48
  38f6e2: 4618         	mov	r0, r3
  38f6e4: eeb0 0b48    	vmov.f64	d0, d8
  38f6e8: eeb0 1b47    	vmov.f64	d1, d7
  38f6ec: f7fe fc9e    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x16c4
  38f6f0: 466b         	mov	r3, sp
  38f6f2: aa14         	add	r2, sp, #0x50
  38f6f4: e892 0003    	ldm.w	r2, {r0, r1}
  38f6f8: e883 0003    	stm.w	r3, {r0, r1}
  38f6fc: ab12         	add	r3, sp, #0x48
  38f6fe: cb0c         	ldm	r3, {r2, r3}
  38f700: 4620         	mov	r0, r4
  38f702: 2131         	movs	r1, #0x31
  38f704: f068 fc78    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x688f0
  38f708: f250 ffd2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x250fa4
  38f70c: 4603         	mov	r3, r0
  38f70e: 4618         	mov	r0, r3
  38f710: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x38f788 <PROXYNADE::updateItemStep(float)+0x360>
  38f712: 447b         	add	r3, pc
  38f714: 4619         	mov	r1, r3
  38f716: 9a11         	ldr	r2, [sp, #0x44]
  38f718: f251 fa08    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x251410
  38f71c: f250 ffc8    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x250f90
  38f720: 4603         	mov	r3, r0
  38f722: 4618         	mov	r0, r3
  38f724: 4b19         	ldr	r3, [pc, #0x64]         @ 0x38f78c <PROXYNADE::updateItemStep(float)+0x364>
  38f726: 447b         	add	r3, pc
  38f728: 4619         	mov	r1, r3
  38f72a: 9a11         	ldr	r2, [sp, #0x44]
  38f72c: f251 f9fe    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2513fc
  38f730: e00f         	b	0x38f752 <PROXYNADE::updateItemStep(float)+0x32a> @ imm = #0x1e
  38f732: ab12         	add	r3, sp, #0x48
  38f734: 4618         	mov	r0, r3
  38f736: f026 f0ed    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4261da
  38f73a: e7ff         	b	0x38f73c <PROXYNADE::updateItemStep(float)+0x314> @ imm = #-0x2
  38f73c: ab0f         	add	r3, sp, #0x3c
  38f73e: 4618         	mov	r0, r3
  38f740: f3fa fe5c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3facb8
  38f744: ab10         	add	r3, sp, #0x40
  38f746: 4618         	mov	r0, r3
  38f748: f026 f0e4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4261c8
  38f74c: f3f8 fcae    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f895c
  38f750: bf00         	nop
  38f752: b017         	add	sp, #0x5c
  38f754: ecbd 8b02    	vpop	{d8}
  38f758: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x38f75b); words below are literal-pool data ---
  38f75c: f3af 8000    	nop.w
  38f768: 3333         	adds	r3, #0x33
  38f76a: 3333         	adds	r3, #0x33
  38f76c: 3333         	adds	r3, #0x33
  38f76e: 3ff3         	subs	r7, #0xf3
  38f770: 35d0         	adds	r5, #0xd0
  38f772: 005a         	lsls	r2, r3, #0x1
  38f774: 1d9a         	adds	r2, r3, #0x6
  38f776: 0044         	lsls	r4, r0, #0x1
  38f778: d744         	bvc	0x38f804 <PROXYNADE::setContact(bool, std::string, int)+0x74> @ imm = #0x88
  38f77a: ffff d9c4    	<unknown>
  38f77e: ffff d784    	<unknown>
  38f782: ffff d730    	vqshl.u32	d29, d16, #0x1f
  38f786: ffff 1b3e    	<unknown>
  38f78a: 0044         	lsls	r4, r0, #0x1
  38f78c: 1b3a         	subs	r2, r7, r4
  38f78e: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::setContact
//      file offset 0x38f790 (= ELF address; Ghidra 0x39f790), 196 bytes, Thumb-2
  38f790: b500         	push	{lr}
  38f792: b085         	sub	sp, #0x14
  38f794: 9003         	str	r0, [sp, #0xc]
  38f796: 9201         	str	r2, [sp, #0x4]
  38f798: 9300         	str	r3, [sp]
  38f79a: 460b         	mov	r3, r1
  38f79c: f88d 300b    	strb.w	r3, [sp, #0xb]
  38f7a0: 9b03         	ldr	r3, [sp, #0xc]
  38f7a2: f503 73aa    	add.w	r3, r3, #0x154
  38f7a6: 4618         	mov	r0, r3
  38f7a8: 9901         	ldr	r1, [sp, #0x4]
  38f7aa: f025 f767    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x425ece
  38f7ae: 4603         	mov	r3, r0
  38f7b0: 2b00         	cmp	r3, #0x0
  38f7b2: bf14         	ite	ne
  38f7b4: 2300         	movne	r3, #0x0
  38f7b6: 2301         	moveq	r3, #0x1
  38f7b8: b2db         	uxtb	r3, r3
  38f7ba: 2b00         	cmp	r3, #0x0
  38f7bc: d005         	beq	0x38f7ca <PROXYNADE::setContact(bool, std::string, int)+0x3a> @ imm = #0xa
  38f7be: 9b03         	ldr	r3, [sp, #0xc]
  38f7c0: 2200         	movs	r2, #0x0
  38f7c2: f883 20e4    	strb.w	r2, [r3, #0xe4]
  38f7c6: 2300         	movs	r3, #0x0
  38f7c8: e03d         	b	0x38f846 <PROXYNADE::setContact(bool, std::string, int)+0xb6> @ imm = #0x7a
  38f7ca: 9b00         	ldr	r3, [sp]
  38f7cc: 2b0d         	cmp	r3, #0xd
  38f7ce: d101         	bne	0x38f7d4 <PROXYNADE::setContact(bool, std::string, int)+0x44> @ imm = #0x2
  38f7d0: 2301         	movs	r3, #0x1
  38f7d2: e038         	b	0x38f846 <PROXYNADE::setContact(bool, std::string, int)+0xb6> @ imm = #0x70
  38f7d4: 9b03         	ldr	r3, [sp, #0xc]
  38f7d6: 681b         	ldr	r3, [r3]
  38f7d8: f503 73ce    	add.w	r3, r3, #0x19c
  38f7dc: 681b         	ldr	r3, [r3]
  38f7de: 9a03         	ldr	r2, [sp, #0xc]
  38f7e0: 4610         	mov	r0, r2
  38f7e2: 4798         	blx	r3
  38f7e4: 4603         	mov	r3, r0
  38f7e6: f083 0301    	eor	r3, r3, #0x1
  38f7ea: b2db         	uxtb	r3, r3
  38f7ec: 2b00         	cmp	r3, #0x0
  38f7ee: d00a         	beq	0x38f806 <PROXYNADE::setContact(bool, std::string, int)+0x76> @ imm = #0x14
  38f7f0: 9801         	ldr	r0, [sp, #0x4]
  38f7f2: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x38f850 <PROXYNADE::setContact(bool, std::string, int)+0xc0>
  38f7f4: 447b         	add	r3, pc
  38f7f6: 4619         	mov	r1, r3
  38f7f8: f7ec fb7c    	bl	0x37bef4 <bool std::operator!=<char, std::char_traits<char>, std::allocator<char>>(std::basic_string<char, std::char_traits<char>, std::allocator<char>> const&, char const*)> @ imm = #-0x13908
  38f7fc: 4603         	mov	r3, r0
  38f7fe: 2b00         	cmp	r3, #0x0
  38f800: d001         	beq	0x38f806 <PROXYNADE::setContact(bool, std::string, int)+0x76> @ imm = #0x2
  38f802: 2301         	movs	r3, #0x1
  38f804: e000         	b	0x38f808 <PROXYNADE::setContact(bool, std::string, int)+0x78> @ imm = #0x0
  38f806: 2300         	movs	r3, #0x0
  38f808: 2b00         	cmp	r3, #0x0
  38f80a: d00c         	beq	0x38f826 <PROXYNADE::setContact(bool, std::string, int)+0x96> @ imm = #0x18
  38f80c: 9b03         	ldr	r3, [sp, #0xc]
  38f80e: 681b         	ldr	r3, [r3]
  38f810: f503 7320    	add.w	r3, r3, #0x280
  38f814: 681b         	ldr	r3, [r3]
  38f816: 9a03         	ldr	r2, [sp, #0xc]
  38f818: 4610         	mov	r0, r2
  38f81a: 2102         	movs	r1, #0x2
  38f81c: 4798         	blx	r3
  38f81e: 9b03         	ldr	r3, [sp, #0xc]
  38f820: 2201         	movs	r2, #0x1
  38f822: f883 20e5    	strb.w	r2, [r3, #0xe5]
  38f826: 9b03         	ldr	r3, [sp, #0xc]
  38f828: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  38f82c: f083 0301    	eor	r3, r3, #0x1
  38f830: b2db         	uxtb	r3, r3
  38f832: 2b00         	cmp	r3, #0x0
  38f834: d004         	beq	0x38f840 <PROXYNADE::setContact(bool, std::string, int)+0xb0> @ imm = #0x8
  38f836: 9b03         	ldr	r3, [sp, #0xc]
  38f838: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  38f83c: f883 20e4    	strb.w	r2, [r3, #0xe4]
  38f840: 9b03         	ldr	r3, [sp, #0xc]
  38f842: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  38f846: 4618         	mov	r0, r3
  38f848: b005         	add	sp, #0x14
  38f84a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38f84d); words below are literal-pool data ---
  38f84e: bf00         	nop
  38f850: 1a78         	subs	r0, r7, r1
  38f852: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::setPrimaryConfiguration
//      file offset 0x38f854 (= ELF address; Ghidra 0x39f854), 296 bytes, Thumb-2
  38f854: b530         	push	{r4, r5, lr}
  38f856: b085         	sub	sp, #0x14
  38f858: 9001         	str	r0, [sp, #0x4]
  38f85a: 9b01         	ldr	r3, [sp, #0x4]
  38f85c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38f860: 2b00         	cmp	r3, #0x0
  38f862: d019         	beq	0x38f898 <PROXYNADE::setPrimaryConfiguration()+0x44> @ imm = #0x32
  38f864: 9b01         	ldr	r3, [sp, #0x4]
  38f866: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  38f86a: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x38f978 <PROXYNADE::setPrimaryConfiguration()+0x124>
  38f86c: 447b         	add	r3, pc
  38f86e: ed93 6b00    	vldr	d6, [r3]
  38f872: ed93 7b02    	vldr	d7, [r3, #8]
  38f876: 4610         	mov	r0, r2
  38f878: eeb0 0b46    	vmov.f64	d0, d6
  38f87c: eeb0 1b47    	vmov.f64	d1, d7
  38f880: f7fe fcd8    	bl	0x38e234 <POWERUP::isModItem()+0x420> @ imm = #-0x1650
  38f884: 9b01         	ldr	r3, [sp, #0x4]
  38f886: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38f88a: 4618         	mov	r0, r3
  38f88c: f04f 0200    	mov.w	r2, #0x0
  38f890: f04f 0300    	mov.w	r3, #0x0
  38f894: f343 fc7d    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3438fa
  38f898: 9b01         	ldr	r3, [sp, #0x4]
  38f89a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f89e: 681b         	ldr	r3, [r3]
  38f8a0: 334c         	adds	r3, #0x4c
  38f8a2: 681c         	ldr	r4, [r3]
  38f8a4: 9b01         	ldr	r3, [sp, #0x4]
  38f8a6: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  38f8aa: ab02         	add	r3, sp, #0x8
  38f8ac: 4618         	mov	r0, r3
  38f8ae: f04f 0100    	mov.w	r1, #0x0
  38f8b2: f2cc 1190    	movt	r1, #0xc190
  38f8b6: f04f 0200    	mov.w	r2, #0x0
  38f8ba: f2cc 1220    	movt	r2, #0xc120
  38f8be: f203 fa17    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x20342e
  38f8c2: ab02         	add	r3, sp, #0x8
  38f8c4: 4628         	mov	r0, r5
  38f8c6: 4619         	mov	r1, r3
  38f8c8: 47a0         	blx	r4
  38f8ca: 9b01         	ldr	r3, [sp, #0x4]
  38f8cc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f8d0: 681b         	ldr	r3, [r3]
  38f8d2: 337c         	adds	r3, #0x7c
  38f8d4: 681c         	ldr	r4, [r3]
  38f8d6: 9b01         	ldr	r3, [sp, #0x4]
  38f8d8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  38f8dc: ab02         	add	r3, sp, #0x8
  38f8de: 4618         	mov	r0, r3
  38f8e0: f04f 517c    	mov.w	r1, #0x3f000000
  38f8e4: f04f 527c    	mov.w	r2, #0x3f000000
  38f8e8: f203 fa02    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x203404
  38f8ec: ab02         	add	r3, sp, #0x8
  38f8ee: 4628         	mov	r0, r5
  38f8f0: 4619         	mov	r1, r3
  38f8f2: 47a0         	blx	r4
  38f8f4: 9b01         	ldr	r3, [sp, #0x4]
  38f8f6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f8fa: 681b         	ldr	r3, [r3]
  38f8fc: 3398         	adds	r3, #0x98
  38f8fe: 681b         	ldr	r3, [r3]
  38f900: 9a01         	ldr	r2, [sp, #0x4]
  38f902: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38f906: 4610         	mov	r0, r2
  38f908: f04f 0100    	mov.w	r1, #0x0
  38f90c: 4798         	blx	r3
  38f90e: 9b01         	ldr	r3, [sp, #0x4]
  38f910: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f914: 681b         	ldr	r3, [r3]
  38f916: 3340         	adds	r3, #0x40
  38f918: 681b         	ldr	r3, [r3]
  38f91a: 9a01         	ldr	r2, [sp, #0x4]
  38f91c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38f920: 4610         	mov	r0, r2
  38f922: f04f 517e    	mov.w	r1, #0x3f800000
  38f926: 4798         	blx	r3
  38f928: 9b01         	ldr	r3, [sp, #0x4]
  38f92a: 681b         	ldr	r3, [r3]
  38f92c: 334c         	adds	r3, #0x4c
  38f92e: 681c         	ldr	r4, [r3]
  38f930: 9d01         	ldr	r5, [sp, #0x4]
  38f932: ab02         	add	r3, sp, #0x8
  38f934: 4618         	mov	r0, r3
  38f936: f04f 0100    	mov.w	r1, #0x0
  38f93a: f04f 0200    	mov.w	r2, #0x0
  38f93e: f203 f9d7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2033ae
  38f942: ab02         	add	r3, sp, #0x8
  38f944: 4628         	mov	r0, r5
  38f946: 4619         	mov	r1, r3
  38f948: 47a0         	blx	r4
  38f94a: 9b01         	ldr	r3, [sp, #0x4]
  38f94c: 681b         	ldr	r3, [r3]
  38f94e: 3340         	adds	r3, #0x40
  38f950: 681b         	ldr	r3, [r3]
  38f952: 9a01         	ldr	r2, [sp, #0x4]
  38f954: 4610         	mov	r0, r2
  38f956: f649 119a    	movw	r1, #0x999a
  38f95a: f6c3 7199    	movt	r1, #0x3f99
  38f95e: 4798         	blx	r3
  38f960: 9b01         	ldr	r3, [sp, #0x4]
  38f962: 681b         	ldr	r3, [r3]
  38f964: 3398         	adds	r3, #0x98
  38f966: 681b         	ldr	r3, [r3]
  38f968: 9a01         	ldr	r2, [sp, #0x4]
  38f96a: 4610         	mov	r0, r2
  38f96c: f04f 0100    	mov.w	r1, #0x0
  38f970: 4798         	blx	r3
  38f972: b005         	add	sp, #0x14
  38f974: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38f975); words below are literal-pool data ---
  38f976: bf00         	nop
  38f978: 1a68         	subs	r0, r5, r1
  38f97a: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::setSecondaryConfiguration
//      file offset 0x38f97c (= ELF address; Ghidra 0x39f97c), 296 bytes, Thumb-2
  38f97c: b530         	push	{r4, r5, lr}
  38f97e: b085         	sub	sp, #0x14
  38f980: 9001         	str	r0, [sp, #0x4]
  38f982: 9b01         	ldr	r3, [sp, #0x4]
  38f984: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38f988: 2b00         	cmp	r3, #0x0
  38f98a: d019         	beq	0x38f9c0 <PROXYNADE::setSecondaryConfiguration()+0x44> @ imm = #0x32
  38f98c: 9b01         	ldr	r3, [sp, #0x4]
  38f98e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  38f992: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x38faa0 <PROXYNADE::setSecondaryConfiguration()+0x124>
  38f994: 447b         	add	r3, pc
  38f996: ed93 6b00    	vldr	d6, [r3]
  38f99a: ed93 7b02    	vldr	d7, [r3, #8]
  38f99e: 4610         	mov	r0, r2
  38f9a0: eeb0 0b46    	vmov.f64	d0, d6
  38f9a4: eeb0 1b47    	vmov.f64	d1, d7
  38f9a8: f7fe fc44    	bl	0x38e234 <POWERUP::isModItem()+0x420> @ imm = #-0x1778
  38f9ac: 9b01         	ldr	r3, [sp, #0x4]
  38f9ae: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38f9b2: 4618         	mov	r0, r3
  38f9b4: f04f 0200    	mov.w	r2, #0x0
  38f9b8: f04f 0300    	mov.w	r3, #0x0
  38f9bc: f343 fbe9    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3437d2
  38f9c0: 9b01         	ldr	r3, [sp, #0x4]
  38f9c2: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f9c6: 681b         	ldr	r3, [r3]
  38f9c8: 334c         	adds	r3, #0x4c
  38f9ca: 681c         	ldr	r4, [r3]
  38f9cc: 9b01         	ldr	r3, [sp, #0x4]
  38f9ce: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  38f9d2: ab02         	add	r3, sp, #0x8
  38f9d4: 4618         	mov	r0, r3
  38f9d6: f04f 0100    	mov.w	r1, #0x0
  38f9da: f2cc 01a0    	movt	r1, #0xc0a0
  38f9de: f04f 0200    	mov.w	r2, #0x0
  38f9e2: f2cc 1220    	movt	r2, #0xc120
  38f9e6: f203 f983    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x203306
  38f9ea: ab02         	add	r3, sp, #0x8
  38f9ec: 4628         	mov	r0, r5
  38f9ee: 4619         	mov	r1, r3
  38f9f0: 47a0         	blx	r4
  38f9f2: 9b01         	ldr	r3, [sp, #0x4]
  38f9f4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38f9f8: 681b         	ldr	r3, [r3]
  38f9fa: 337c         	adds	r3, #0x7c
  38f9fc: 681c         	ldr	r4, [r3]
  38f9fe: 9b01         	ldr	r3, [sp, #0x4]
  38fa00: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  38fa04: ab02         	add	r3, sp, #0x8
  38fa06: 4618         	mov	r0, r3
  38fa08: f04f 517c    	mov.w	r1, #0x3f000000
  38fa0c: f04f 527c    	mov.w	r2, #0x3f000000
  38fa10: f203 f96e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2032dc
  38fa14: ab02         	add	r3, sp, #0x8
  38fa16: 4628         	mov	r0, r5
  38fa18: 4619         	mov	r1, r3
  38fa1a: 47a0         	blx	r4
  38fa1c: 9b01         	ldr	r3, [sp, #0x4]
  38fa1e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fa22: 681b         	ldr	r3, [r3]
  38fa24: 3398         	adds	r3, #0x98
  38fa26: 681b         	ldr	r3, [r3]
  38fa28: 9a01         	ldr	r2, [sp, #0x4]
  38fa2a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38fa2e: 4610         	mov	r0, r2
  38fa30: f04f 0100    	mov.w	r1, #0x0
  38fa34: 4798         	blx	r3
  38fa36: 9b01         	ldr	r3, [sp, #0x4]
  38fa38: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fa3c: 681b         	ldr	r3, [r3]
  38fa3e: 3340         	adds	r3, #0x40
  38fa40: 681b         	ldr	r3, [r3]
  38fa42: 9a01         	ldr	r2, [sp, #0x4]
  38fa44: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38fa48: 4610         	mov	r0, r2
  38fa4a: f04f 517e    	mov.w	r1, #0x3f800000
  38fa4e: 4798         	blx	r3
  38fa50: 9b01         	ldr	r3, [sp, #0x4]
  38fa52: 681b         	ldr	r3, [r3]
  38fa54: 334c         	adds	r3, #0x4c
  38fa56: 681c         	ldr	r4, [r3]
  38fa58: 9d01         	ldr	r5, [sp, #0x4]
  38fa5a: ab02         	add	r3, sp, #0x8
  38fa5c: 4618         	mov	r0, r3
  38fa5e: f04f 0100    	mov.w	r1, #0x0
  38fa62: f04f 0200    	mov.w	r2, #0x0
  38fa66: f203 f943    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x203286
  38fa6a: ab02         	add	r3, sp, #0x8
  38fa6c: 4628         	mov	r0, r5
  38fa6e: 4619         	mov	r1, r3
  38fa70: 47a0         	blx	r4
  38fa72: 9b01         	ldr	r3, [sp, #0x4]
  38fa74: 681b         	ldr	r3, [r3]
  38fa76: 3340         	adds	r3, #0x40
  38fa78: 681b         	ldr	r3, [r3]
  38fa7a: 9a01         	ldr	r2, [sp, #0x4]
  38fa7c: 4610         	mov	r0, r2
  38fa7e: f649 119a    	movw	r1, #0x999a
  38fa82: f6c3 7199    	movt	r1, #0x3f99
  38fa86: 4798         	blx	r3
  38fa88: 9b01         	ldr	r3, [sp, #0x4]
  38fa8a: 681b         	ldr	r3, [r3]
  38fa8c: 3398         	adds	r3, #0x98
  38fa8e: 681b         	ldr	r3, [r3]
  38fa90: 9a01         	ldr	r2, [sp, #0x4]
  38fa92: 4610         	mov	r0, r2
  38fa94: f04f 0100    	mov.w	r1, #0x0
  38fa98: 4798         	blx	r3
  38fa9a: b005         	add	sp, #0x14
  38fa9c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38fa9d); words below are literal-pool data ---
  38fa9e: bf00         	nop
  38faa0: 1940         	adds	r0, r0, r5
  38faa2: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::setMapConfiguration
//      file offset 0x38faa8 (= ELF address; Ghidra 0x39faa8), 312 bytes, Thumb-2
  38faa8: b570         	push	{r4, r5, r6, lr}
  38faaa: b088         	sub	sp, #0x20
  38faac: 9005         	str	r0, [sp, #0x14]
  38faae: 4c49         	ldr	r4, [pc, #0x124]        @ 0x38fbd4 <PROXYNADE::setMapConfiguration()+0x12c>
  38fab0: 447c         	add	r4, pc
  38fab2: 4b49         	ldr	r3, [pc, #0x124]        @ 0x38fbd8 <PROXYNADE::setMapConfiguration()+0x130>
  38fab4: 58e3         	ldr	r3, [r4, r3]
  38fab6: ed93 7a00    	vldr	s14, [r3]
  38faba: eddf 7a45    	vldr	s15, [pc, #276]         @ 0x38fbd0 <PROXYNADE::setMapConfiguration()+0x128>
  38fabe: ee67 7a27    	vmul.f32	s15, s14, s15
  38fac2: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38fac6: 9d05         	ldr	r5, [sp, #0x14]
  38fac8: 466b         	mov	r3, sp
  38faca: 4618         	mov	r0, r3
  38facc: ed9f 0b3c    	vldr	d0, [pc, #240]          @ 0x38fbc0 <PROXYNADE::setMapConfiguration()+0x118>
  38fad0: eeb0 1b47    	vmov.f64	d1, d7
  38fad4: f7fe faaa    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x1aac
  38fad8: 35f8         	adds	r5, #0xf8
  38fada: 466b         	mov	r3, sp
  38fadc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38fade: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  38fae2: 9b05         	ldr	r3, [sp, #0x14]
  38fae4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fae8: 681b         	ldr	r3, [r3]
  38faea: 334c         	adds	r3, #0x4c
  38faec: 681d         	ldr	r5, [r3]
  38faee: 9b05         	ldr	r3, [sp, #0x14]
  38faf0: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38faf4: ab06         	add	r3, sp, #0x18
  38faf6: 4618         	mov	r0, r3
  38faf8: f04f 0100    	mov.w	r1, #0x0
  38fafc: f04f 0200    	mov.w	r2, #0x0
  38fb00: f203 f8f6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2031ec
  38fb04: ab06         	add	r3, sp, #0x18
  38fb06: 4630         	mov	r0, r6
  38fb08: 4619         	mov	r1, r3
  38fb0a: 47a8         	blx	r5
  38fb0c: 9b05         	ldr	r3, [sp, #0x14]
  38fb0e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fb12: 681b         	ldr	r3, [r3]
  38fb14: 337c         	adds	r3, #0x7c
  38fb16: 681d         	ldr	r5, [r3]
  38fb18: 9b05         	ldr	r3, [sp, #0x14]
  38fb1a: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38fb1e: ab06         	add	r3, sp, #0x18
  38fb20: 4618         	mov	r0, r3
  38fb22: f04f 517c    	mov.w	r1, #0x3f000000
  38fb26: f04f 527c    	mov.w	r2, #0x3f000000
  38fb2a: f203 f8e1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2031c2
  38fb2e: ab06         	add	r3, sp, #0x18
  38fb30: 4630         	mov	r0, r6
  38fb32: 4619         	mov	r1, r3
  38fb34: 47a8         	blx	r5
  38fb36: 9b05         	ldr	r3, [sp, #0x14]
  38fb38: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fb3c: 681b         	ldr	r3, [r3]
  38fb3e: 3398         	adds	r3, #0x98
  38fb40: 681b         	ldr	r3, [r3]
  38fb42: 9a05         	ldr	r2, [sp, #0x14]
  38fb44: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38fb48: 4610         	mov	r0, r2
  38fb4a: f04f 0100    	mov.w	r1, #0x0
  38fb4e: 4798         	blx	r3
  38fb50: 9b05         	ldr	r3, [sp, #0x14]
  38fb52: 681b         	ldr	r3, [r3]
  38fb54: 334c         	adds	r3, #0x4c
  38fb56: 681d         	ldr	r5, [r3]
  38fb58: 9e05         	ldr	r6, [sp, #0x14]
  38fb5a: ab06         	add	r3, sp, #0x18
  38fb5c: 4618         	mov	r0, r3
  38fb5e: f04f 0100    	mov.w	r1, #0x0
  38fb62: f04f 0200    	mov.w	r2, #0x0
  38fb66: f203 f8c3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x203186
  38fb6a: ab06         	add	r3, sp, #0x18
  38fb6c: 4630         	mov	r0, r6
  38fb6e: 4619         	mov	r1, r3
  38fb70: 47a8         	blx	r5
  38fb72: 9b05         	ldr	r3, [sp, #0x14]
  38fb74: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fb78: 681b         	ldr	r3, [r3]
  38fb7a: 3340         	adds	r3, #0x40
  38fb7c: 681b         	ldr	r3, [r3]
  38fb7e: 9a05         	ldr	r2, [sp, #0x14]
  38fb80: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38fb84: 4610         	mov	r0, r2
  38fb86: f04f 517e    	mov.w	r1, #0x3f800000
  38fb8a: 4798         	blx	r3
  38fb8c: 9b05         	ldr	r3, [sp, #0x14]
  38fb8e: 681b         	ldr	r3, [r3]
  38fb90: 3340         	adds	r3, #0x40
  38fb92: 681b         	ldr	r3, [r3]
  38fb94: 9a05         	ldr	r2, [sp, #0x14]
  38fb96: 4911         	ldr	r1, [pc, #0x44]         @ 0x38fbdc <PROXYNADE::setMapConfiguration()+0x134>
  38fb98: 5861         	ldr	r1, [r4, r1]
  38fb9a: edd1 7a00    	vldr	s15, [r1]
  38fb9e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  38fba2: ed9f 7b09    	vldr	d7, [pc, #36]           @ 0x38fbc8 <PROXYNADE::setMapConfiguration()+0x120>
  38fba6: ee36 7b07    	vadd.f64	d7, d6, d7
  38fbaa: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38fbae: 4610         	mov	r0, r2
  38fbb0: ee17 1a90    	vmov	r1, s15
  38fbb4: 4798         	blx	r3
  38fbb6: b008         	add	sp, #0x20
  38fbb8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x38fbb9); words below are literal-pool data ---
  38fbba: bf00         	nop
  38fbbc: f3af 8000    	nop.w
  38fbc8: 999a         	ldr	r1, [sp, #0x268]
  38fbca: 9999         	ldr	r1, [sp, #0x264]
  38fbcc: 9999         	ldr	r1, [sp, #0x264]
  38fbce: 3fc9         	subs	r7, #0xc9
  38fbd0: 0000         	movs	r0, r0
  38fbd2: c37a         	stm	r3!, {r1, r3, r4, r5, r6}
  38fbd4: 2f58         	cmp	r7, #0x58
  38fbd6: 005a         	lsls	r2, r3, #0x1
  38fbd8: da30         	bge	0x38fc3c <PROXYNADE::setRight(bool)+0x20> @ imm = #0x60
  38fbda: ffff d748    	<unknown>
  38fbde: ffff b500    	<unknown>

// ==== PROXYNADE::isRight
//      file offset 0x38fbe0 (= ELF address; Ghidra 0x39fbe0), 60 bytes, Thumb-2
  38fbe0: b500         	push	{lr}
  38fbe2: b083         	sub	sp, #0xc
  38fbe4: 9001         	str	r0, [sp, #0x4]
  38fbe6: 9b01         	ldr	r3, [sp, #0x4]
  38fbe8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fbec: 681b         	ldr	r3, [r3]
  38fbee: 3334         	adds	r3, #0x34
  38fbf0: 681b         	ldr	r3, [r3]
  38fbf2: 9a01         	ldr	r2, [sp, #0x4]
  38fbf4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38fbf8: 4610         	mov	r0, r2
  38fbfa: 4798         	blx	r3
  38fbfc: ee07 0a10    	vmov	s14, r0
  38fc00: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  38fc04: eeb4 7ae7    	vcmpe.f32	s14, s15
  38fc08: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38fc0c: bfd4         	ite	le
  38fc0e: 2300         	movle	r3, #0x0
  38fc10: 2301         	movgt	r3, #0x1
  38fc12: b2db         	uxtb	r3, r3
  38fc14: 4618         	mov	r0, r3
  38fc16: b003         	add	sp, #0xc
  38fc18: f85d fb04    	ldr	pc, [sp], #4

// ==== PROXYNADE::setRight
//      file offset 0x38fc1c (= ELF address; Ghidra 0x39fc1c), 64 bytes, Thumb-2
  38fc1c: b500         	push	{lr}
  38fc1e: b083         	sub	sp, #0xc
  38fc20: 9001         	str	r0, [sp, #0x4]
  38fc22: 460b         	mov	r3, r1
  38fc24: f88d 3003    	strb.w	r3, [sp, #0x3]
  38fc28: 9b01         	ldr	r3, [sp, #0x4]
  38fc2a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fc2e: 681b         	ldr	r3, [r3]
  38fc30: 3330         	adds	r3, #0x30
  38fc32: 681a         	ldr	r2, [r3]
  38fc34: 9b01         	ldr	r3, [sp, #0x4]
  38fc36: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  38fc3a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  38fc3e: 2b00         	cmp	r3, #0x0
  38fc40: d002         	beq	0x38fc48 <PROXYNADE::setRight(bool)+0x2c> @ imm = #0x4
  38fc42: f04f 537e    	mov.w	r3, #0x3f800000
  38fc46: e003         	b	0x38fc50 <PROXYNADE::setRight(bool)+0x34> @ imm = #0x6
  38fc48: f04f 0300    	mov.w	r3, #0x0
  38fc4c: f6cb 7380    	movt	r3, #0xbf80
  38fc50: 4608         	mov	r0, r1
  38fc52: 4619         	mov	r1, r3
  38fc54: 4790         	blx	r2
  38fc56: b003         	add	sp, #0xc
  38fc58: f85d fb04    	ldr	pc, [sp], #4

// ==== PROXYNADE::removeWeapon
//      file offset 0x38fc5c (= ELF address; Ghidra 0x39fc5c), 84 bytes, Thumb-2
  38fc5c: b500         	push	{lr}
  38fc5e: b085         	sub	sp, #0x14
  38fc60: 9001         	str	r0, [sp, #0x4]
  38fc62: 4910         	ldr	r1, [pc, #0x40]         @ 0x38fca4 <PROXYNADE::removeWeapon()+0x48>
  38fc64: 4479         	add	r1, pc
  38fc66: 9b01         	ldr	r3, [sp, #0x4]
  38fc68: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x38fca8 <PROXYNADE::removeWeapon()+0x4c>
  38fc6a: 588a         	ldr	r2, [r1, r2]
  38fc6c: 9202         	str	r2, [sp, #0x8]
  38fc6e: 2200         	movs	r2, #0x0
  38fc70: 9203         	str	r2, [sp, #0xc]
  38fc72: 4618         	mov	r0, r3
  38fc74: ab02         	add	r3, sp, #0x8
  38fc76: e893 0006    	ldm.w	r3, {r1, r2}
  38fc7a: f64c 43cd    	movw	r3, #0xcccd
  38fc7e: f6c3 53cc    	movt	r3, #0x3dcc
  38fc82: f201 fb07    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x20160e
  38fc86: f250 fd13    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x250a26
  38fc8a: 4602         	mov	r2, r0
  38fc8c: 9b01         	ldr	r3, [sp, #0x4]
  38fc8e: 4610         	mov	r0, r2
  38fc90: 4a06         	ldr	r2, [pc, #0x18]         @ 0x38fcac <PROXYNADE::removeWeapon()+0x50>
  38fc92: 447a         	add	r2, pc
  38fc94: 4611         	mov	r1, r2
  38fc96: 461a         	mov	r2, r3
  38fc98: f250 ff48    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x250e90
  38fc9c: b005         	add	sp, #0x14
  38fc9e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38fca1); words below are literal-pool data ---
  38fca2: bf00         	nop
  38fca4: 2da4         	cmp	r5, #0xa4
  38fca6: 005a         	lsls	r2, r3, #0x1
  38fca8: dd04         	ble	0x38fcb4 <PROXYNADE::delayedRemoveWeapon()+0x4> @ imm = #0x8
  38fcaa: ffff 15de    	<unknown>
  38fcae: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::delayedRemoveWeapon
//      file offset 0x38fcb0 (= ELF address; Ghidra 0x39fcb0), 40 bytes, Thumb-2
  38fcb0: b500         	push	{lr}
  38fcb2: b083         	sub	sp, #0xc
  38fcb4: 9001         	str	r0, [sp, #0x4]
  38fcb6: f250 fcfb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2509f6
  38fcba: 4602         	mov	r2, r0
  38fcbc: 9b01         	ldr	r3, [sp, #0x4]
  38fcbe: 4610         	mov	r0, r2
  38fcc0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x38fcd4 <PROXYNADE::delayedRemoveWeapon()+0x24>
  38fcc2: 447a         	add	r2, pc
  38fcc4: 4611         	mov	r1, r2
  38fcc6: 461a         	mov	r2, r3
  38fcc8: f250 ff30    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x250e60
  38fccc: b003         	add	sp, #0xc
  38fcce: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38fcd1); words below are literal-pool data ---
  38fcd2: bf00         	nop
  38fcd4: 15be         	asrs	r6, r7, #0x16
  38fcd6: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::detonate
//      file offset 0x38fcd8 (= ELF address; Ghidra 0x39fcd8), 192 bytes, Thumb-2
  38fcd8: b510         	push	{r4, lr}
  38fcda: ed2d 8b02    	vpush	{d8}
  38fcde: b088         	sub	sp, #0x20
  38fce0: 9003         	str	r0, [sp, #0xc]
  38fce2: 9102         	str	r1, [sp, #0x8]
  38fce4: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x38fd88 <PROXYNADE::detonate(cocos2d::CCObject*)+0xb0>
  38fce6: 447a         	add	r2, pc
  38fce8: 9b03         	ldr	r3, [sp, #0xc]
  38fcea: f893 31f4    	ldrb.w	r3, [r3, #0x1f4]
  38fcee: f083 0301    	eor	r3, r3, #0x1
  38fcf2: b2db         	uxtb	r3, r3
  38fcf4: 2b00         	cmp	r3, #0x0
  38fcf6: d042         	beq	0x38fd7e <PROXYNADE::detonate(cocos2d::CCObject*)+0xa6> @ imm = #0x84
  38fcf8: 4b24         	ldr	r3, [pc, #0x90]         @ 0x38fd8c <PROXYNADE::detonate(cocos2d::CCObject*)+0xb4>
  38fcfa: 58d3         	ldr	r3, [r2, r3]
  38fcfc: 681c         	ldr	r4, [r3]
  38fcfe: 9b03         	ldr	r3, [sp, #0xc]
  38fd00: 681b         	ldr	r3, [r3]
  38fd02: 3350         	adds	r3, #0x50
  38fd04: 681b         	ldr	r3, [r3]
  38fd06: 9a03         	ldr	r2, [sp, #0xc]
  38fd08: 4610         	mov	r0, r2
  38fd0a: 4798         	blx	r3
  38fd0c: 4603         	mov	r3, r0
  38fd0e: edd3 7a00    	vldr	s15, [r3]
  38fd12: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  38fd16: 9b03         	ldr	r3, [sp, #0xc]
  38fd18: 681b         	ldr	r3, [r3]
  38fd1a: 3350         	adds	r3, #0x50
  38fd1c: 681b         	ldr	r3, [r3]
  38fd1e: 9a03         	ldr	r2, [sp, #0xc]
  38fd20: 4610         	mov	r0, r2
  38fd22: 4798         	blx	r3
  38fd24: 4603         	mov	r3, r0
  38fd26: edd3 7a01    	vldr	s15, [r3, #4]
  38fd2a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38fd2e: ab04         	add	r3, sp, #0x10
  38fd30: 4618         	mov	r0, r3
  38fd32: eeb0 0b48    	vmov.f64	d0, d8
  38fd36: eeb0 1b47    	vmov.f64	d1, d7
  38fd3a: f7fe f977    	bl	0x38e02c <POWERUP::isModItem()+0x218> @ imm = #-0x1d12
  38fd3e: 466b         	mov	r3, sp
  38fd40: aa06         	add	r2, sp, #0x18
  38fd42: e892 0003    	ldm.w	r2, {r0, r1}
  38fd46: e883 0003    	stm.w	r3, {r0, r1}
  38fd4a: ab04         	add	r3, sp, #0x10
  38fd4c: cb0c         	ldm	r3, {r2, r3}
  38fd4e: 4620         	mov	r0, r4
  38fd50: 2131         	movs	r1, #0x31
  38fd52: f068 f951    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x682a2
  38fd56: f250 fcab    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x250956
  38fd5a: 4603         	mov	r3, r0
  38fd5c: 4618         	mov	r0, r3
  38fd5e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x38fd90 <PROXYNADE::detonate(cocos2d::CCObject*)+0xb8>
  38fd60: 447b         	add	r3, pc
  38fd62: 4619         	mov	r1, r3
  38fd64: 9a02         	ldr	r2, [sp, #0x8]
  38fd66: f250 fee1    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x250dc2
  38fd6a: f250 fca1    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x250942
  38fd6e: 4603         	mov	r3, r0
  38fd70: 4618         	mov	r0, r3
  38fd72: 4b08         	ldr	r3, [pc, #0x20]         @ 0x38fd94 <PROXYNADE::detonate(cocos2d::CCObject*)+0xbc>
  38fd74: 447b         	add	r3, pc
  38fd76: 4619         	mov	r1, r3
  38fd78: 9a02         	ldr	r2, [sp, #0x8]
  38fd7a: f250 fed7    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x250dae
  38fd7e: b008         	add	sp, #0x20
  38fd80: ecbd 8b02    	vpop	{d8}
  38fd84: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38fd85); words below are literal-pool data ---
  38fd86: bf00         	nop
  38fd88: 2d22         	cmp	r5, #0x22
  38fd8a: 005a         	lsls	r2, r3, #0x1
  38fd8c: d730         	bvc	0x38fdf0 <PROXYNADE::getWeaponRect()+0x30> @ imm = #0x60
  38fd8e: ffff 14f0    	<unknown>
  38fd92: 0044         	lsls	r4, r0, #0x1
  38fd94: 14ec         	asrs	r4, r5, #0x13
  38fd96: 0044         	lsls	r4, r0, #0x1

// ==== PROXYNADE::getWeaponTexture
//      file offset 0x38fd98 (= ELF address; Ghidra 0x39fd98), 40 bytes, Thumb-2
  38fd98: b500         	push	{lr}
  38fd9a: b083         	sub	sp, #0xc
  38fd9c: 9001         	str	r0, [sp, #0x4]
  38fd9e: 9b01         	ldr	r3, [sp, #0x4]
  38fda0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fda4: 681b         	ldr	r3, [r3]
  38fda6: f503 73fa    	add.w	r3, r3, #0x1f4
  38fdaa: 681b         	ldr	r3, [r3]
  38fdac: 9a01         	ldr	r2, [sp, #0x4]
  38fdae: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38fdb2: 4610         	mov	r0, r2
  38fdb4: 4798         	blx	r3
  38fdb6: 4603         	mov	r3, r0
  38fdb8: 4618         	mov	r0, r3
  38fdba: b003         	add	sp, #0xc
  38fdbc: f85d fb04    	ldr	pc, [sp], #4

// ==== PROXYNADE::getWeaponRect
//      file offset 0x38fdc0 (= ELF address; Ghidra 0x39fdc0), 38 bytes, Thumb-2
  38fdc0: b500         	push	{lr}
  38fdc2: b083         	sub	sp, #0xc
  38fdc4: 9001         	str	r0, [sp, #0x4]
  38fdc6: 9100         	str	r1, [sp]
  38fdc8: 9b00         	ldr	r3, [sp]
  38fdca: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38fdce: 4618         	mov	r0, r3
  38fdd0: f74c ff84    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb30f8
  38fdd4: 4603         	mov	r3, r0
  38fdd6: 9801         	ldr	r0, [sp, #0x4]
  38fdd8: 4619         	mov	r1, r3
  38fdda: f203 fa9d    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x20353a
  38fdde: 9801         	ldr	r0, [sp, #0x4]
  38fde0: b003         	add	sp, #0xc
  38fde2: f85d fb04    	ldr	pc, [sp], #4

// ==== PROXYNADE::create
//      file offset 0x4177fc (= ELF address; Ghidra 0x4277fc), 112 bytes, Thumb-2
  4177fc: b510         	push	{r4, lr}
  4177fe: b082         	sub	sp, #0x8
  417800: f44f 70fc    	mov.w	r0, #0x1f8
  417804: f370 f8ae    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37015c
  417808: 4603         	mov	r3, r0
  41780a: 461c         	mov	r4, r3
  41780c: 4620         	mov	r0, r4
  41780e: f777 fc97    	bl	0x38f140 <PROXYNADE::PROXYNADE()> @ imm = #-0x886d2
  417812: 9401         	str	r4, [sp, #0x4]
  417814: 9b01         	ldr	r3, [sp, #0x4]
  417816: 2b00         	cmp	r3, #0x0
  417818: d00a         	beq	0x417830 <PROXYNADE::create()+0x34> @ imm = #0x14
  41781a: 9b01         	ldr	r3, [sp, #0x4]
  41781c: 681b         	ldr	r3, [r3]
  41781e: 3318         	adds	r3, #0x18
  417820: 681b         	ldr	r3, [r3]
  417822: 9801         	ldr	r0, [sp, #0x4]
  417824: 4798         	blx	r3
  417826: 4603         	mov	r3, r0
  417828: 2b00         	cmp	r3, #0x0
  41782a: d001         	beq	0x417830 <PROXYNADE::create()+0x34> @ imm = #0x2
  41782c: 2301         	movs	r3, #0x1
  41782e: e000         	b	0x417832 <PROXYNADE::create()+0x36> @ imm = #0x0
  417830: 2300         	movs	r3, #0x0
  417832: 2b00         	cmp	r3, #0x0
  417834: d005         	beq	0x417842 <PROXYNADE::create()+0x46> @ imm = #0xa
  417836: 9b01         	ldr	r3, [sp, #0x4]
  417838: 4618         	mov	r0, r3
  41783a: f180 fb5f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1806be
  41783e: 9b01         	ldr	r3, [sp, #0x4]
  417840: e011         	b	0x417866 <PROXYNADE::create()+0x6a> @ imm = #0x22
  417842: 9b01         	ldr	r3, [sp, #0x4]
  417844: 2b00         	cmp	r3, #0x0
  417846: d005         	beq	0x417854 <PROXYNADE::create()+0x58> @ imm = #0xa
  417848: 9b01         	ldr	r3, [sp, #0x4]
  41784a: 681b         	ldr	r3, [r3]
  41784c: 3308         	adds	r3, #0x8
  41784e: 681b         	ldr	r3, [r3]
  417850: 9801         	ldr	r0, [sp, #0x4]
  417852: 4798         	blx	r3
  417854: 2300         	movs	r3, #0x0
  417856: 9301         	str	r3, [sp, #0x4]
  417858: 2300         	movs	r3, #0x0
  41785a: e004         	b	0x417866 <PROXYNADE::create()+0x6a> @ imm = #0x8
  41785c: 4620         	mov	r0, r4
  41785e: f370 fc21    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370842
  417862: f370 fc23    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370846
  417866: 4618         	mov	r0, r3
  417868: b002         	add	sp, #0x8
  41786a: bd10         	pop	{r4, pc}
