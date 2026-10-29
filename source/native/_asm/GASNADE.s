// GASNADE: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../GASNADE.cpp

// ==== GASNADE::GASNADE
//      file offset 0x326c58 (= ELF address; Ghidra 0x336c58), 44 bytes, Thumb-2
  326c58: b510         	push	{r4, lr}
  326c5a: b082         	sub	sp, #0x8
  326c5c: 9001         	str	r0, [sp, #0x4]
  326c5e: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x326c7c <GASNADE::GASNADE()+0x24>
  326c60: 447c         	add	r4, pc
  326c62: 9b01         	ldr	r3, [sp, #0x4]
  326c64: 4618         	mov	r0, r3
  326c66: f0ee f99f    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xee33e
  326c6a: 9b01         	ldr	r3, [sp, #0x4]
  326c6c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x326c80 <GASNADE::GASNADE()+0x28>
  326c6e: 58a2         	ldr	r2, [r4, r2]
  326c70: 3208         	adds	r2, #0x8
  326c72: 601a         	str	r2, [r3]
  326c74: 9b01         	ldr	r3, [sp, #0x4]
  326c76: 4618         	mov	r0, r3
  326c78: b002         	add	sp, #0x8
  326c7a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x326c7b); words below are literal-pool data ---
  326c7c: bda8         	pop	{r3, r5, r7, pc}
  326c7e: 0060         	lsls	r0, r4, #0x1
  326c80: da5c         	bge	0x326d3c <GASNADE::~GASNADE()+0x14> @ imm = #0xb8
  326c82: ffff b500    	<unknown>

// ==== GASNADE::init
//      file offset 0x326c84 (= ELF address; Ghidra 0x336c84), 164 bytes, Thumb-2
  326c84: b500         	push	{lr}
  326c86: b085         	sub	sp, #0x14
  326c88: 9001         	str	r0, [sp, #0x4]
  326c8a: 9b01         	ldr	r3, [sp, #0x4]
  326c8c: 4618         	mov	r0, r3
  326c8e: f0ee f9af    	bl	0x414ff0 <Weapon::init()> @ imm = #0xee35e
  326c92: 4603         	mov	r3, r0
  326c94: f88d 300f    	strb.w	r3, [sp, #0xf]
  326c98: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  326c9c: f083 0301    	eor	r3, r3, #0x1
  326ca0: b2db         	uxtb	r3, r3
  326ca2: 2b00         	cmp	r3, #0x0
  326ca4: d001         	beq	0x326caa <GASNADE::init()+0x26> @ imm = #0x2
  326ca6: 2300         	movs	r3, #0x0
  326ca8: e037         	b	0x326d1a <GASNADE::init()+0x96> @ imm = #0x6e
  326caa: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x326d24 <GASNADE::init()+0xa0>
  326cac: 447b         	add	r3, pc
  326cae: 4618         	mov	r0, r3
  326cb0: f2b1 fb28    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b1650
  326cb4: 4602         	mov	r2, r0
  326cb6: 9b01         	ldr	r3, [sp, #0x4]
  326cb8: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  326cbc: 9b01         	ldr	r3, [sp, #0x4]
  326cbe: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  326cc2: 4618         	mov	r0, r3
  326cc4: f271 f910    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x271220
  326cc8: 9b01         	ldr	r3, [sp, #0x4]
  326cca: 681b         	ldr	r3, [r3]
  326ccc: f503 73f0    	add.w	r3, r3, #0x1e0
  326cd0: 681b         	ldr	r3, [r3]
  326cd2: 9801         	ldr	r0, [sp, #0x4]
  326cd4: 4798         	blx	r3
  326cd6: 9b01         	ldr	r3, [sp, #0x4]
  326cd8: 2200         	movs	r2, #0x0
  326cda: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  326cde: 9b01         	ldr	r3, [sp, #0x4]
  326ce0: 2202         	movs	r2, #0x2
  326ce2: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  326ce6: 9b01         	ldr	r3, [sp, #0x4]
  326ce8: 2205         	movs	r2, #0x5
  326cea: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  326cee: 9b01         	ldr	r3, [sp, #0x4]
  326cf0: 681b         	ldr	r3, [r3]
  326cf2: 33cc         	adds	r3, #0xcc
  326cf4: 681b         	ldr	r3, [r3]
  326cf6: 9901         	ldr	r1, [sp, #0x4]
  326cf8: 9a01         	ldr	r2, [sp, #0x4]
  326cfa: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  326cfe: 4608         	mov	r0, r1
  326d00: 4611         	mov	r1, r2
  326d02: 2200         	movs	r2, #0x0
  326d04: 4798         	blx	r3
  326d06: 9b01         	ldr	r3, [sp, #0x4]
  326d08: 2214         	movs	r2, #0x14
  326d0a: f8c3 2188    	str.w	r2, [r3, #0x188]
  326d0e: 9b01         	ldr	r3, [sp, #0x4]
  326d10: f04f 0200    	mov.w	r2, #0x0
  326d14: f8c3 2110    	str.w	r2, [r3, #0x110]
  326d18: 2301         	movs	r3, #0x1
  326d1a: 4618         	mov	r0, r3
  326d1c: b005         	add	sp, #0x14
  326d1e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x326d21); words below are literal-pool data ---
  326d22: bf00         	nop
  326d24: 1308         	asrs	r0, r1, #0xc
  326d26: 004a         	lsls	r2, r1, #0x1

// ==== GASNADE::~GASNADE
//      file offset 0x326d28 (= ELF address; Ghidra 0x336d28), 124 bytes, Thumb-2
  326d28: b500         	push	{lr}
  326d2a: b083         	sub	sp, #0xc
  326d2c: 9001         	str	r0, [sp, #0x4]
  326d2e: 491b         	ldr	r1, [pc, #0x6c]         @ 0x326d9c <GASNADE::~GASNADE()+0x74>
  326d30: 4479         	add	r1, pc
  326d32: 9b01         	ldr	r3, [sp, #0x4]
  326d34: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x326da0 <GASNADE::~GASNADE()+0x78>
  326d36: 588a         	ldr	r2, [r1, r2]
  326d38: 3208         	adds	r2, #0x8
  326d3a: 601a         	str	r2, [r3]
  326d3c: 9b01         	ldr	r3, [sp, #0x4]
  326d3e: 4618         	mov	r0, r3
  326d40: 2100         	movs	r1, #0x0
  326d42: f269 fc81    	bl	0x590648 <cocos2d::CCNode::removeAllChildrenWithCleanup(bool)> @ imm = #0x269902
  326d46: 9b01         	ldr	r3, [sp, #0x4]
  326d48: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  326d4c: 4618         	mov	r0, r3
  326d4e: f271 f8b3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x271166
  326d52: 9b01         	ldr	r3, [sp, #0x4]
  326d54: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  326d58: 2b00         	cmp	r3, #0x0
  326d5a: d010         	beq	0x326d7e <GASNADE::~GASNADE()+0x56> @ imm = #0x20
  326d5c: 9b01         	ldr	r3, [sp, #0x4]
  326d5e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  326d62: 681b         	ldr	r3, [r3]
  326d64: 33e8         	adds	r3, #0xe8
  326d66: 681b         	ldr	r3, [r3]
  326d68: 9a01         	ldr	r2, [sp, #0x4]
  326d6a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  326d6e: 4610         	mov	r0, r2
  326d70: 4798         	blx	r3
  326d72: 9b01         	ldr	r3, [sp, #0x4]
  326d74: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  326d78: 4618         	mov	r0, r3
  326d7a: f271 f89d    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27113a
  326d7e: 9b01         	ldr	r3, [sp, #0x4]
  326d80: 4618         	mov	r0, r3
  326d82: f0ee fa35    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xee46a
  326d86: 2300         	movs	r3, #0x0
  326d88: 2b00         	cmp	r3, #0x0
  326d8a: d002         	beq	0x326d92 <GASNADE::~GASNADE()+0x6a> @ imm = #0x4
  326d8c: 9801         	ldr	r0, [sp, #0x4]
  326d8e: f061 f189    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x461312
  326d92: 9b01         	ldr	r3, [sp, #0x4]
  326d94: 4618         	mov	r0, r3
  326d96: b003         	add	sp, #0xc
  326d98: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x326d9b); words below are literal-pool data ---
  326d9c: bcd8         	pop	{r3, r4, r6, r7}
  326d9e: 0060         	lsls	r0, r4, #0x1
  326da0: da5c         	bge	0x326e5c <GASNADE::initBody()+0x9c> @ imm = #0xb8
  326da2: ffff b500    	<unknown>

// ==== GASNADE::~GASNADE
//      file offset 0x326da4 (= ELF address; Ghidra 0x336da4), 28 bytes, Thumb-2
  326da4: b500         	push	{lr}
  326da6: b083         	sub	sp, #0xc
  326da8: 9001         	str	r0, [sp, #0x4]
  326daa: 9801         	ldr	r0, [sp, #0x4]
  326dac: f7ff ffbc    	bl	0x326d28 <GASNADE::~GASNADE()> @ imm = #-0x88
  326db0: 9801         	ldr	r0, [sp, #0x4]
  326db2: f061 f177    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4612ee
  326db6: 9b01         	ldr	r3, [sp, #0x4]
  326db8: 4618         	mov	r0, r3
  326dba: b003         	add	sp, #0xc
  326dbc: f85d fb04    	ldr	pc, [sp], #4

// ==== GASNADE::initBody
//      file offset 0x326dc0 (= ELF address; Ghidra 0x336dc0), 332 bytes, Thumb-2
  326dc0: b530         	push	{r4, r5, lr}
  326dc2: b099         	sub	sp, #0x64
  326dc4: 900d         	str	r0, [sp, #0x34]
  326dc6: f64c 43cd    	movw	r3, #0xcccd
  326dca: f6c3 53cc    	movt	r3, #0x3dcc
  326dce: 930f         	str	r3, [sp, #0x3c]
  326dd0: eddd 7a0f    	vldr	s15, [sp, #60]
  326dd4: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  326dd8: ec51 0b17    	vmov	r0, r1, d7
  326ddc: f04f 0200    	mov.w	r2, #0x0
  326de0: f04f 0300    	mov.w	r3, #0x0
  326de4: f2c4 0320    	movt	r3, #0x4020
  326de8: f3ac fa30    	bl	0x6d324c <cpBodyNew>    @ imm = #0x3ac460
  326dec: 4602         	mov	r2, r0
  326dee: 9b0d         	ldr	r3, [sp, #0x34]
  326df0: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  326df4: 9b0d         	ldr	r3, [sp, #0x34]
  326df6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  326dfa: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x326f08 <GASNADE::initBody()+0x148>
  326dfc: 447a         	add	r2, pc
  326dfe: 601a         	str	r2, [r3]
  326e00: 9b0d         	ldr	r3, [sp, #0x34]
  326e02: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  326e06: 9a0d         	ldr	r2, [sp, #0x34]
  326e08: f8c3 2090    	str.w	r2, [r3, #0x90]
  326e0c: 990d         	ldr	r1, [sp, #0x34]
  326e0e: a338         	adr	r3, #224 <GASNADE::initBody()+0x8a>
  326e10: e9d3 2300    	ldrd	r2, r3, [r3]
  326e14: e9c1 233c    	strd	r2, r3, [r1, #240]
  326e18: 9c0d         	ldr	r4, [sp, #0x34]
  326e1a: ab08         	add	r3, sp, #0x20
  326e1c: 4618         	mov	r0, r3
  326e1e: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x326ee0 <GASNADE::initBody()+0x120>
  326e22: ed9f 1b31    	vldr	d1, [pc, #196]          @ 0x326ee8 <GASNADE::initBody()+0x128>
  326e26: f7fe fe8d    	bl	0x325b44 <FindGameLayer::UpdateStatusLabel()+0x47c> @ imm = #-0x12e6
  326e2a: 34f8         	adds	r4, #0xf8
  326e2c: ab08         	add	r3, sp, #0x20
  326e2e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  326e30: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  326e34: 9b0d         	ldr	r3, [sp, #0x34]
  326e36: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  326e3a: ab10         	add	r3, sp, #0x40
  326e3c: 4618         	mov	r0, r3
  326e3e: ed9f 0b28    	vldr	d0, [pc, #160]          @ 0x326ee0 <GASNADE::initBody()+0x120>
  326e42: eeb8 1b08    	vmov.f64	d1, #-3.000000e+00
  326e46: f7fe fe7d    	bl	0x325b44 <FindGameLayer::UpdateStatusLabel()+0x47c> @ imm = #-0x1306
  326e4a: ab14         	add	r3, sp, #0x50
  326e4c: 4618         	mov	r0, r3
  326e4e: ed9f 0b24    	vldr	d0, [pc, #144]          @ 0x326ee0 <GASNADE::initBody()+0x120>
  326e52: eeb0 1b08    	vmov.f64	d1, #3.000000e+00
  326e56: f7fe fe75    	bl	0x325b44 <FindGameLayer::UpdateStatusLabel()+0x47c> @ imm = #-0x1316
  326e5a: ac02         	add	r4, sp, #0x8
  326e5c: ab14         	add	r3, sp, #0x50
  326e5e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  326e60: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  326e64: f04f 0200    	mov.w	r2, #0x0
  326e68: f04f 0300    	mov.w	r3, #0x0
  326e6c: f2c4 0308    	movt	r3, #0x4008
  326e70: e9cd 2306    	strd	r2, r3, [sp, #24]
  326e74: 466b         	mov	r3, sp
  326e76: aa12         	add	r2, sp, #0x48
  326e78: e892 0003    	ldm.w	r2, {r0, r1}
  326e7c: e883 0003    	stm.w	r3, {r0, r1}
  326e80: ab10         	add	r3, sp, #0x40
  326e82: cb0c         	ldm	r3, {r2, r3}
  326e84: 4628         	mov	r0, r5
  326e86: f3ae f9d9    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x3ae3b2
  326e8a: 4602         	mov	r2, r0
  326e8c: 9b0d         	ldr	r3, [sp, #0x34]
  326e8e: f8c3 20ec    	str.w	r2, [r3, #0xec]
  326e92: 9b0d         	ldr	r3, [sp, #0x34]
  326e94: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  326e98: 2202         	movs	r2, #0x2
  326e9a: 655a         	str	r2, [r3, #0x54]
  326e9c: 9b0d         	ldr	r3, [sp, #0x34]
  326e9e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  326ea2: 2202         	movs	r2, #0x2
  326ea4: 65da         	str	r2, [r3, #0x5c]
  326ea6: 9b0d         	ldr	r3, [sp, #0x34]
  326ea8: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  326eac: 2202         	movs	r2, #0x2
  326eae: 659a         	str	r2, [r3, #0x58]
  326eb0: 9b0d         	ldr	r3, [sp, #0x34]
  326eb2: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  326eb6: a310         	adr	r3, #64 <GASNADE::initBody()+0x10a>
  326eb8: e9d3 2300    	ldrd	r2, r3, [r3]
  326ebc: e9c1 230c    	strd	r2, r3, [r1, #48]
  326ec0: 9b0d         	ldr	r3, [sp, #0x34]
  326ec2: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  326ec6: a30e         	adr	r3, #56 <GASNADE::initBody()+0x118>
  326ec8: e9d3 2300    	ldrd	r2, r3, [r3]
  326ecc: e9c1 230e    	strd	r2, r3, [r1, #56]
  326ed0: 9b0d         	ldr	r3, [sp, #0x34]
  326ed2: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  326ed6: 9a0d         	ldr	r2, [sp, #0x34]
  326ed8: 651a         	str	r2, [r3, #0x50]
  326eda: b019         	add	sp, #0x64
  326edc: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x326edd); words below are literal-pool data ---
  326ede: bf00         	nop
  326eec: c000         	<unknown>
  326eee: c072         	stm	r0!, {r1, r4, r5, r6}
  326ef0: 3333         	adds	r3, #0x33
  326ef2: 3333         	adds	r3, #0x33
  326ef4: 3333         	adds	r3, #0x33
  326ef6: 3fe3         	subs	r7, #0xe3
  326ef8: 0000         	movs	r0, r0
  326efa: 4000         	ands	r0, r0
  326efc: 3333         	adds	r3, #0x33
  326efe: 3fe3         	subs	r7, #0xe3
  326f00: 0000         	movs	r0, r0
  326f02: a000         	adr	r0, #0 <GASNADE::initBody()+0x146>
  326f04: 9999         	ldr	r1, [sp, #0x264]
  326f06: 3fe9         	subs	r7, #0xe9
  326f08: fccd ffff    	stc2l	p15, c15, [sp], {255}

// ==== GASNADE::updateRemoteWeaponStep
//      file offset 0x326f10 (= ELF address; Ghidra 0x336f10), 40 bytes, Thumb-2
  326f10: b500         	push	{lr}
  326f12: b083         	sub	sp, #0xc
  326f14: 9001         	str	r0, [sp, #0x4]
  326f16: 9100         	str	r1, [sp]
  326f18: 9b01         	ldr	r3, [sp, #0x4]
  326f1a: 4618         	mov	r0, r3
  326f1c: 9900         	ldr	r1, [sp]
  326f1e: f0ee fa5f    	bl	0x4153e0 <Weapon::updateRemoteWeaponStep(float)> @ imm = #0xee4be
  326f22: 9b01         	ldr	r3, [sp, #0x4]
  326f24: 681b         	ldr	r3, [r3]
  326f26: f503 73da    	add.w	r3, r3, #0x1b4
  326f2a: 681b         	ldr	r3, [r3]
  326f2c: 9801         	ldr	r0, [sp, #0x4]
  326f2e: 9900         	ldr	r1, [sp]
  326f30: 4798         	blx	r3
  326f32: b003         	add	sp, #0xc
  326f34: f85d fb04    	ldr	pc, [sp], #4

// ==== GASNADE::updateItemStep
//      file offset 0x326f38 (= ELF address; Ghidra 0x336f38), 348 bytes, Thumb-2
  326f38: b530         	push	{r4, r5, lr}
  326f3a: b087         	sub	sp, #0x1c
  326f3c: 9003         	str	r0, [sp, #0xc]
  326f3e: 9102         	str	r1, [sp, #0x8]
  326f40: 4c51         	ldr	r4, [pc, #0x144]        @ 0x327088 <GASNADE::updateItemStep(float)+0x150>
  326f42: 447c         	add	r4, pc
  326f44: 9b03         	ldr	r3, [sp, #0xc]
  326f46: f04f 0200    	mov.w	r2, #0x0
  326f4a: f8c3 2118    	str.w	r2, [r3, #0x118]
  326f4e: 9b03         	ldr	r3, [sp, #0xc]
  326f50: f04f 0200    	mov.w	r2, #0x0
  326f54: f8c3 211c    	str.w	r2, [r3, #0x11c]
  326f58: 9b03         	ldr	r3, [sp, #0xc]
  326f5a: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  326f5e: 2b00         	cmp	r3, #0x0
  326f60: d000         	beq	0x326f64 <GASNADE::updateItemStep(float)+0x2c> @ imm = #0x0
  326f62: e08a         	b	0x32707a <GASNADE::updateItemStep(float)+0x142> @ imm = #0x114
  326f64: 9b03         	ldr	r3, [sp, #0xc]
  326f66: 681b         	ldr	r3, [r3]
  326f68: f503 73ce    	add.w	r3, r3, #0x19c
  326f6c: 681b         	ldr	r3, [r3]
  326f6e: 9a03         	ldr	r2, [sp, #0xc]
  326f70: 4610         	mov	r0, r2
  326f72: 4798         	blx	r3
  326f74: 4603         	mov	r3, r0
  326f76: f083 0301    	eor	r3, r3, #0x1
  326f7a: b2db         	uxtb	r3, r3
  326f7c: 2b00         	cmp	r3, #0x0
  326f7e: d06c         	beq	0x32705a <GASNADE::updateItemStep(float)+0x122> @ imm = #0xd8
  326f80: 9b03         	ldr	r3, [sp, #0xc]
  326f82: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  326f86: 2b00         	cmp	r3, #0x0
  326f88: d139         	bne	0x326ffe <GASNADE::updateItemStep(float)+0xc6> @ imm = #0x72
  326f8a: 20ff         	movs	r0, #0xff
  326f8c: 21ff         	movs	r1, #0xff
  326f8e: 22ff         	movs	r2, #0xff
  326f90: f7fe fd58    	bl	0x325a44 <FindGameLayer::UpdateStatusLabel()+0x37c> @ imm = #-0x1550
  326f94: 4603         	mov	r3, r0
  326f96: 461a         	mov	r2, r3
  326f98: f88d 2014    	strb.w	r2, [sp, #0x14]
  326f9c: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  326fa0: f88d 2015    	strb.w	r2, [sp, #0x15]
  326fa4: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  326fa8: f88d 3016    	strb.w	r3, [sp, #0x16]
  326fac: ab05         	add	r3, sp, #0x14
  326fae: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x32708c <GASNADE::updateItemStep(float)+0x154>
  326fb0: 447a         	add	r2, pc
  326fb2: 9200         	str	r2, [sp]
  326fb4: f04f 507c    	mov.w	r0, #0x3f000000
  326fb8: f04f 517e    	mov.w	r1, #0x3f800000
  326fbc: f04f 0200    	mov.w	r2, #0x0
  326fc0: f2c4 0240    	movt	r2, #0x4040
  326fc4: f292 feb6    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x292d6c
  326fc8: 4602         	mov	r2, r0
  326fca: 9b03         	ldr	r3, [sp, #0xc]
  326fcc: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  326fd0: 9b03         	ldr	r3, [sp, #0xc]
  326fd2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  326fd6: 4618         	mov	r0, r3
  326fd8: f270 ff86    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x270f0c
  326fdc: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x327090 <GASNADE::updateItemStep(float)+0x158>
  326fde: 58e3         	ldr	r3, [r4, r3]
  326fe0: 681b         	ldr	r3, [r3]
  326fe2: 681b         	ldr	r3, [r3]
  326fe4: 33cc         	adds	r3, #0xcc
  326fe6: 681b         	ldr	r3, [r3]
  326fe8: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x327090 <GASNADE::updateItemStep(float)+0x158>
  326fea: 58a2         	ldr	r2, [r4, r2]
  326fec: 6812         	ldr	r2, [r2]
  326fee: 4611         	mov	r1, r2
  326ff0: 9a03         	ldr	r2, [sp, #0xc]
  326ff2: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  326ff6: 4608         	mov	r0, r1
  326ff8: 4611         	mov	r1, r2
  326ffa: 2203         	movs	r2, #0x3
  326ffc: 4798         	blx	r3
  326ffe: 9b03         	ldr	r3, [sp, #0xc]
  327000: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  327004: 681b         	ldr	r3, [r3]
  327006: f503 73f2    	add.w	r3, r3, #0x1e4
  32700a: 681b         	ldr	r3, [r3]
  32700c: 9a03         	ldr	r2, [sp, #0xc]
  32700e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  327012: 4610         	mov	r0, r2
  327014: f04f 0100    	mov.w	r1, #0x0
  327018: f2c4 0140    	movt	r1, #0x4040
  32701c: 4798         	blx	r3
  32701e: 9b03         	ldr	r3, [sp, #0xc]
  327020: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  327024: 681b         	ldr	r3, [r3]
  327026: 334c         	adds	r3, #0x4c
  327028: 681c         	ldr	r4, [r3]
  32702a: 9b03         	ldr	r3, [sp, #0xc]
  32702c: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  327030: 9b03         	ldr	r3, [sp, #0xc]
  327032: 681b         	ldr	r3, [r3]
  327034: 3350         	adds	r3, #0x50
  327036: 681b         	ldr	r3, [r3]
  327038: 9a03         	ldr	r2, [sp, #0xc]
  32703a: 4610         	mov	r0, r2
  32703c: 4798         	blx	r3
  32703e: 4603         	mov	r3, r0
  327040: 4628         	mov	r0, r5
  327042: 4619         	mov	r1, r3
  327044: 47a0         	blx	r4
  327046: 9b03         	ldr	r3, [sp, #0xc]
  327048: ed93 7a44    	vldr	s14, [r3, #272]
  32704c: eddd 7a02    	vldr	s15, [sp, #8]
  327050: ee77 7a27    	vadd.f32	s15, s14, s15
  327054: 9b03         	ldr	r3, [sp, #0xc]
  327056: edc3 7a44    	vstr	s15, [r3, #272]
  32705a: 9b03         	ldr	r3, [sp, #0xc]
  32705c: edd3 7a44    	vldr	s15, [r3, #272]
  327060: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  327064: ed9f 7b06    	vldr	d7, [pc, #24]           @ 0x327080 <GASNADE::updateItemStep(float)+0x148>
  327068: eeb4 6bc7    	vcmpe.f64	d6, d7
  32706c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  327070: dd03         	ble	0x32707a <GASNADE::updateItemStep(float)+0x142> @ imm = #0x6
  327072: 9b03         	ldr	r3, [sp, #0xc]
  327074: 2201         	movs	r2, #0x1
  327076: f883 20e5    	strb.w	r2, [r3, #0xe5]
  32707a: b007         	add	sp, #0x1c
  32707c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32707d); words below are literal-pool data ---
  32707e: bf00         	nop
  327080: 3333         	adds	r3, #0x33
  327082: 3333         	adds	r3, #0x33
  327084: 3333         	adds	r3, #0x33
  327086: 3ff3         	subs	r7, #0xf3
  327088: bac6         	revsh	r6, r0
  32708a: 0060         	lsls	r0, r4, #0x1
  32708c: 1010         	asrs	r0, r2, #0x20
  32708e: 004a         	lsls	r2, r1, #0x1
  327090: d744         	bvc	0x32711c <GASNADE::setContact(bool, std::string, int)+0x84> @ imm = #0x88
  327092: ffff f3af    	<unknown>

// ==== GASNADE::setContact
//      file offset 0x327098 (= ELF address; Ghidra 0x337098), 204 bytes, Thumb-2
  327098: b530         	push	{r4, r5, lr}
  32709a: b087         	sub	sp, #0x1c
  32709c: 9005         	str	r0, [sp, #0x14]
  32709e: 9203         	str	r2, [sp, #0xc]
  3270a0: 9302         	str	r3, [sp, #0x8]
  3270a2: 460b         	mov	r3, r1
  3270a4: f88d 3013    	strb.w	r3, [sp, #0x13]
  3270a8: 4c2c         	ldr	r4, [pc, #0xb0]         @ 0x32715c <GASNADE::setContact(bool, std::string, int)+0xc4>
  3270aa: 447c         	add	r4, pc
  3270ac: 9b05         	ldr	r3, [sp, #0x14]
  3270ae: f503 73aa    	add.w	r3, r3, #0x154
  3270b2: 4618         	mov	r0, r3
  3270b4: 9903         	ldr	r1, [sp, #0xc]
  3270b6: f08e f2e1    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x48e5c2
  3270ba: 4603         	mov	r3, r0
  3270bc: 2b00         	cmp	r3, #0x0
  3270be: bf14         	ite	ne
  3270c0: 2300         	movne	r3, #0x0
  3270c2: 2301         	moveq	r3, #0x1
  3270c4: b2db         	uxtb	r3, r3
  3270c6: 2b00         	cmp	r3, #0x0
  3270c8: d005         	beq	0x3270d6 <GASNADE::setContact(bool, std::string, int)+0x3e> @ imm = #0xa
  3270ca: 9b05         	ldr	r3, [sp, #0x14]
  3270cc: 2200         	movs	r2, #0x0
  3270ce: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3270d2: 2300         	movs	r3, #0x0
  3270d4: e03c         	b	0x327150 <GASNADE::setContact(bool, std::string, int)+0xb8> @ imm = #0x78
  3270d6: 9b05         	ldr	r3, [sp, #0x14]
  3270d8: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3270dc: f083 0301    	eor	r3, r3, #0x1
  3270e0: b2db         	uxtb	r3, r3
  3270e2: 2b00         	cmp	r3, #0x0
  3270e4: d02c         	beq	0x327140 <GASNADE::setContact(bool, std::string, int)+0xa8> @ imm = #0x58
  3270e6: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  3270ea: 2b00         	cmp	r3, #0x0
  3270ec: d028         	beq	0x327140 <GASNADE::setContact(bool, std::string, int)+0xa8> @ imm = #0x50
  3270ee: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x327160 <GASNADE::setContact(bool, std::string, int)+0xc8>
  3270f0: 58e3         	ldr	r3, [r4, r3]
  3270f2: 681d         	ldr	r5, [r3]
  3270f4: f7fe fca0    	bl	0x325a38 <FindGameLayer::UpdateStatusLabel()+0x370> @ imm = #-0x16c0
  3270f8: 4603         	mov	r3, r0
  3270fa: ee07 3a90    	vmov	s15, r3
  3270fe: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  327102: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x327158 <GASNADE::setContact(bool, std::string, int)+0xc0>
  327106: ee87 7a27    	vdiv.f32	s14, s14, s15
  32710a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  32710e: ee77 7a67    	vsub.f32	s15, s14, s15
  327112: eef5 7ac0    	vcmpe.f32	s15, #0
  327116: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  32711a: dd01         	ble	0x327120 <GASNADE::setContact(bool, std::string, int)+0x88> @ imm = #0x2
  32711c: 240d         	movs	r4, #0xd
  32711e: e000         	b	0x327122 <GASNADE::setContact(bool, std::string, int)+0x8a> @ imm = #0x0
  327120: 240e         	movs	r4, #0xe
  327122: 9b05         	ldr	r3, [sp, #0x14]
  327124: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  327128: 466a         	mov	r2, sp
  32712a: f103 0130    	add.w	r1, r3, #0x30
  32712e: c903         	ldm	r1, {r0, r1}
  327130: e882 0003    	stm.w	r2, {r0, r1}
  327134: 3328         	adds	r3, #0x28
  327136: cb0c         	ldm	r3, {r2, r3}
  327138: 4628         	mov	r0, r5
  32713a: 4621         	mov	r1, r4
  32713c: f0d0 ff5c    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xd0eb8
  327140: 9b05         	ldr	r3, [sp, #0x14]
  327142: f89d 2013    	ldrb.w	r2, [sp, #0x13]
  327146: f883 20e4    	strb.w	r2, [r3, #0xe4]
  32714a: 9b05         	ldr	r3, [sp, #0x14]
  32714c: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  327150: 4618         	mov	r0, r3
  327152: b007         	add	sp, #0x1c
  327154: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x327155); words below are literal-pool data ---
  327156: bf00         	nop
  327158: 0000         	movs	r0, r0
  32715a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x32735c <GASNADE::setSecondaryConfiguration()+0xd4>
  32715c: b95e         	cbnz	r6, 0x327176 <GASNADE::setPrimaryConfiguration()+0x12> @ imm = #0x16
  32715e: 0060         	lsls	r0, r4, #0x1
  327160: d730         	bvc	0x3271c4 <GASNADE::setPrimaryConfiguration()+0x60> @ imm = #0x60
  327162: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== GASNADE::setPrimaryConfiguration
//      file offset 0x327164 (= ELF address; Ghidra 0x337164), 292 bytes, Thumb-2
  327164: b530         	push	{r4, r5, lr}
  327166: b085         	sub	sp, #0x14
  327168: 9001         	str	r0, [sp, #0x4]
  32716a: 9b01         	ldr	r3, [sp, #0x4]
  32716c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  327170: 2b00         	cmp	r3, #0x0
  327172: d019         	beq	0x3271a8 <GASNADE::setPrimaryConfiguration()+0x44> @ imm = #0x32
  327174: 9b01         	ldr	r3, [sp, #0x4]
  327176: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  32717a: 4b42         	ldr	r3, [pc, #0x108]        @ 0x327284 <GASNADE::setPrimaryConfiguration()+0x120>
  32717c: 447b         	add	r3, pc
  32717e: ed93 6b00    	vldr	d6, [r3]
  327182: ed93 7b02    	vldr	d7, [r3, #8]
  327186: 4610         	mov	r0, r2
  327188: eeb0 0b46    	vmov.f64	d0, d6
  32718c: eeb0 1b47    	vmov.f64	d1, d7
  327190: f7fe fddc    	bl	0x325d4c <FindGameLayer::UpdateStatusLabel()+0x684> @ imm = #-0x1448
  327194: 9b01         	ldr	r3, [sp, #0x4]
  327196: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  32719a: 4618         	mov	r0, r3
  32719c: f04f 0200    	mov.w	r2, #0x0
  3271a0: f04f 0300    	mov.w	r3, #0x0
  3271a4: f3ab fff5    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3abfea
  3271a8: 9b01         	ldr	r3, [sp, #0x4]
  3271aa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3271ae: 681b         	ldr	r3, [r3]
  3271b0: 334c         	adds	r3, #0x4c
  3271b2: 681c         	ldr	r4, [r3]
  3271b4: 9b01         	ldr	r3, [sp, #0x4]
  3271b6: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3271ba: ab02         	add	r3, sp, #0x8
  3271bc: 4618         	mov	r0, r3
  3271be: f04f 0100    	mov.w	r1, #0x0
  3271c2: f2cc 1190    	movt	r1, #0xc190
  3271c6: f04f 0200    	mov.w	r2, #0x0
  3271ca: f2cc 1220    	movt	r2, #0xc120
  3271ce: f26b fd8f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26bb1e
  3271d2: ab02         	add	r3, sp, #0x8
  3271d4: 4628         	mov	r0, r5
  3271d6: 4619         	mov	r1, r3
  3271d8: 47a0         	blx	r4
  3271da: 9b01         	ldr	r3, [sp, #0x4]
  3271dc: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3271e0: 681b         	ldr	r3, [r3]
  3271e2: 337c         	adds	r3, #0x7c
  3271e4: 681c         	ldr	r4, [r3]
  3271e6: 9b01         	ldr	r3, [sp, #0x4]
  3271e8: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3271ec: ab02         	add	r3, sp, #0x8
  3271ee: 4618         	mov	r0, r3
  3271f0: f04f 517c    	mov.w	r1, #0x3f000000
  3271f4: f04f 527c    	mov.w	r2, #0x3f000000
  3271f8: f26b fd7a    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26baf4
  3271fc: ab02         	add	r3, sp, #0x8
  3271fe: 4628         	mov	r0, r5
  327200: 4619         	mov	r1, r3
  327202: 47a0         	blx	r4
  327204: 9b01         	ldr	r3, [sp, #0x4]
  327206: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32720a: 681b         	ldr	r3, [r3]
  32720c: 3398         	adds	r3, #0x98
  32720e: 681b         	ldr	r3, [r3]
  327210: 9a01         	ldr	r2, [sp, #0x4]
  327212: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  327216: 4610         	mov	r0, r2
  327218: f04f 0100    	mov.w	r1, #0x0
  32721c: 4798         	blx	r3
  32721e: 9b01         	ldr	r3, [sp, #0x4]
  327220: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  327224: 681b         	ldr	r3, [r3]
  327226: 3340         	adds	r3, #0x40
  327228: 681b         	ldr	r3, [r3]
  32722a: 9a01         	ldr	r2, [sp, #0x4]
  32722c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  327230: 4610         	mov	r0, r2
  327232: f04f 517e    	mov.w	r1, #0x3f800000
  327236: 4798         	blx	r3
  327238: 9b01         	ldr	r3, [sp, #0x4]
  32723a: 681b         	ldr	r3, [r3]
  32723c: 334c         	adds	r3, #0x4c
  32723e: 681c         	ldr	r4, [r3]
  327240: 9d01         	ldr	r5, [sp, #0x4]
  327242: ab02         	add	r3, sp, #0x8
  327244: 4618         	mov	r0, r3
  327246: f04f 0100    	mov.w	r1, #0x0
  32724a: f04f 0200    	mov.w	r2, #0x0
  32724e: f26b fd4f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26ba9e
  327252: ab02         	add	r3, sp, #0x8
  327254: 4628         	mov	r0, r5
  327256: 4619         	mov	r1, r3
  327258: 47a0         	blx	r4
  32725a: 9b01         	ldr	r3, [sp, #0x4]
  32725c: 681b         	ldr	r3, [r3]
  32725e: 3340         	adds	r3, #0x40
  327260: 681b         	ldr	r3, [r3]
  327262: 9a01         	ldr	r2, [sp, #0x4]
  327264: 4610         	mov	r0, r2
  327266: f04f 517e    	mov.w	r1, #0x3f800000
  32726a: 4798         	blx	r3
  32726c: 9b01         	ldr	r3, [sp, #0x4]
  32726e: 681b         	ldr	r3, [r3]
  327270: 3398         	adds	r3, #0x98
  327272: 681b         	ldr	r3, [r3]
  327274: 9a01         	ldr	r2, [sp, #0x4]
  327276: 4610         	mov	r0, r2
  327278: f04f 0100    	mov.w	r1, #0x0
  32727c: 4798         	blx	r3
  32727e: b005         	add	sp, #0x14
  327280: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x327281); words below are literal-pool data ---
  327282: bf00         	nop
  327284: 0ed8         	lsrs	r0, r3, #0x1b
  327286: 004a         	lsls	r2, r1, #0x1

// ==== GASNADE::setSecondaryConfiguration
//      file offset 0x327288 (= ELF address; Ghidra 0x337288), 292 bytes, Thumb-2
  327288: b530         	push	{r4, r5, lr}
  32728a: b085         	sub	sp, #0x14
  32728c: 9001         	str	r0, [sp, #0x4]
  32728e: 9b01         	ldr	r3, [sp, #0x4]
  327290: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  327294: 2b00         	cmp	r3, #0x0
  327296: d019         	beq	0x3272cc <GASNADE::setSecondaryConfiguration()+0x44> @ imm = #0x32
  327298: 9b01         	ldr	r3, [sp, #0x4]
  32729a: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  32729e: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3273a8 <GASNADE::setSecondaryConfiguration()+0x120>
  3272a0: 447b         	add	r3, pc
  3272a2: ed93 6b00    	vldr	d6, [r3]
  3272a6: ed93 7b02    	vldr	d7, [r3, #8]
  3272aa: 4610         	mov	r0, r2
  3272ac: eeb0 0b46    	vmov.f64	d0, d6
  3272b0: eeb0 1b47    	vmov.f64	d1, d7
  3272b4: f7fe fd4a    	bl	0x325d4c <FindGameLayer::UpdateStatusLabel()+0x684> @ imm = #-0x156c
  3272b8: 9b01         	ldr	r3, [sp, #0x4]
  3272ba: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3272be: 4618         	mov	r0, r3
  3272c0: f04f 0200    	mov.w	r2, #0x0
  3272c4: f04f 0300    	mov.w	r3, #0x0
  3272c8: f3ab ff63    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3abec6
  3272cc: 9b01         	ldr	r3, [sp, #0x4]
  3272ce: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3272d2: 681b         	ldr	r3, [r3]
  3272d4: 334c         	adds	r3, #0x4c
  3272d6: 681c         	ldr	r4, [r3]
  3272d8: 9b01         	ldr	r3, [sp, #0x4]
  3272da: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3272de: ab02         	add	r3, sp, #0x8
  3272e0: 4618         	mov	r0, r3
  3272e2: f04f 0100    	mov.w	r1, #0x0
  3272e6: f2cc 01a0    	movt	r1, #0xc0a0
  3272ea: f04f 0200    	mov.w	r2, #0x0
  3272ee: f2cc 1220    	movt	r2, #0xc120
  3272f2: f26b fcfd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26b9fa
  3272f6: ab02         	add	r3, sp, #0x8
  3272f8: 4628         	mov	r0, r5
  3272fa: 4619         	mov	r1, r3
  3272fc: 47a0         	blx	r4
  3272fe: 9b01         	ldr	r3, [sp, #0x4]
  327300: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  327304: 681b         	ldr	r3, [r3]
  327306: 337c         	adds	r3, #0x7c
  327308: 681c         	ldr	r4, [r3]
  32730a: 9b01         	ldr	r3, [sp, #0x4]
  32730c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  327310: ab02         	add	r3, sp, #0x8
  327312: 4618         	mov	r0, r3
  327314: f04f 517c    	mov.w	r1, #0x3f000000
  327318: f04f 527c    	mov.w	r2, #0x3f000000
  32731c: f26b fce8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26b9d0
  327320: ab02         	add	r3, sp, #0x8
  327322: 4628         	mov	r0, r5
  327324: 4619         	mov	r1, r3
  327326: 47a0         	blx	r4
  327328: 9b01         	ldr	r3, [sp, #0x4]
  32732a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32732e: 681b         	ldr	r3, [r3]
  327330: 3398         	adds	r3, #0x98
  327332: 681b         	ldr	r3, [r3]
  327334: 9a01         	ldr	r2, [sp, #0x4]
  327336: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  32733a: 4610         	mov	r0, r2
  32733c: f04f 0100    	mov.w	r1, #0x0
  327340: 4798         	blx	r3
  327342: 9b01         	ldr	r3, [sp, #0x4]
  327344: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  327348: 681b         	ldr	r3, [r3]
  32734a: 3340         	adds	r3, #0x40
  32734c: 681b         	ldr	r3, [r3]
  32734e: 9a01         	ldr	r2, [sp, #0x4]
  327350: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  327354: 4610         	mov	r0, r2
  327356: f04f 517e    	mov.w	r1, #0x3f800000
  32735a: 4798         	blx	r3
  32735c: 9b01         	ldr	r3, [sp, #0x4]
  32735e: 681b         	ldr	r3, [r3]
  327360: 334c         	adds	r3, #0x4c
  327362: 681c         	ldr	r4, [r3]
  327364: 9d01         	ldr	r5, [sp, #0x4]
  327366: ab02         	add	r3, sp, #0x8
  327368: 4618         	mov	r0, r3
  32736a: f04f 0100    	mov.w	r1, #0x0
  32736e: f04f 0200    	mov.w	r2, #0x0
  327372: f26b fcbd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26b97a
  327376: ab02         	add	r3, sp, #0x8
  327378: 4628         	mov	r0, r5
  32737a: 4619         	mov	r1, r3
  32737c: 47a0         	blx	r4
  32737e: 9b01         	ldr	r3, [sp, #0x4]
  327380: 681b         	ldr	r3, [r3]
  327382: 3340         	adds	r3, #0x40
  327384: 681b         	ldr	r3, [r3]
  327386: 9a01         	ldr	r2, [sp, #0x4]
  327388: 4610         	mov	r0, r2
  32738a: f04f 517e    	mov.w	r1, #0x3f800000
  32738e: 4798         	blx	r3
  327390: 9b01         	ldr	r3, [sp, #0x4]
  327392: 681b         	ldr	r3, [r3]
  327394: 3398         	adds	r3, #0x98
  327396: 681b         	ldr	r3, [r3]
  327398: 9a01         	ldr	r2, [sp, #0x4]
  32739a: 4610         	mov	r0, r2
  32739c: f04f 0100    	mov.w	r1, #0x0
  3273a0: 4798         	blx	r3
  3273a2: b005         	add	sp, #0x14
  3273a4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3273a5); words below are literal-pool data ---
  3273a6: bf00         	nop
  3273a8: 0db4         	lsrs	r4, r6, #0x16
  3273aa: 004a         	lsls	r2, r1, #0x1

// ==== GASNADE::setMapConfiguration
//      file offset 0x3273b0 (= ELF address; Ghidra 0x3373b0), 256 bytes, Thumb-2
  3273b0: b570         	push	{r4, r5, r6, lr}
  3273b2: b088         	sub	sp, #0x20
  3273b4: 9005         	str	r0, [sp, #0x14]
  3273b6: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x3274a4 <GASNADE::setMapConfiguration()+0xf4>
  3273b8: 447c         	add	r4, pc
  3273ba: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x3274a8 <GASNADE::setMapConfiguration()+0xf8>
  3273bc: 58e3         	ldr	r3, [r4, r3]
  3273be: ed93 7a00    	vldr	s14, [r3]
  3273c2: eddf 7a37    	vldr	s15, [pc, #220]         @ 0x3274a0 <GASNADE::setMapConfiguration()+0xf0>
  3273c6: ee67 7a27    	vmul.f32	s15, s14, s15
  3273ca: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3273ce: 9d05         	ldr	r5, [sp, #0x14]
  3273d0: 466b         	mov	r3, sp
  3273d2: 4618         	mov	r0, r3
  3273d4: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x327498 <GASNADE::setMapConfiguration()+0xe8>
  3273d8: eeb0 1b47    	vmov.f64	d1, d7
  3273dc: f7fe fbb2    	bl	0x325b44 <FindGameLayer::UpdateStatusLabel()+0x47c> @ imm = #-0x189c
  3273e0: 35f8         	adds	r5, #0xf8
  3273e2: 466b         	mov	r3, sp
  3273e4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3273e6: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3273ea: 9b05         	ldr	r3, [sp, #0x14]
  3273ec: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3273f0: 681b         	ldr	r3, [r3]
  3273f2: 334c         	adds	r3, #0x4c
  3273f4: 681d         	ldr	r5, [r3]
  3273f6: 9b05         	ldr	r3, [sp, #0x14]
  3273f8: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3273fc: ab06         	add	r3, sp, #0x18
  3273fe: 4618         	mov	r0, r3
  327400: f04f 0100    	mov.w	r1, #0x0
  327404: f04f 0200    	mov.w	r2, #0x0
  327408: f26b fc72    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26b8e4
  32740c: ab06         	add	r3, sp, #0x18
  32740e: 4630         	mov	r0, r6
  327410: 4619         	mov	r1, r3
  327412: 47a8         	blx	r5
  327414: 9b05         	ldr	r3, [sp, #0x14]
  327416: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32741a: 681b         	ldr	r3, [r3]
  32741c: 337c         	adds	r3, #0x7c
  32741e: 681d         	ldr	r5, [r3]
  327420: 9b05         	ldr	r3, [sp, #0x14]
  327422: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  327426: ab06         	add	r3, sp, #0x18
  327428: 4618         	mov	r0, r3
  32742a: f04f 517c    	mov.w	r1, #0x3f000000
  32742e: f04f 527c    	mov.w	r2, #0x3f000000
  327432: f26b fc5d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26b8ba
  327436: ab06         	add	r3, sp, #0x18
  327438: 4630         	mov	r0, r6
  32743a: 4619         	mov	r1, r3
  32743c: 47a8         	blx	r5
  32743e: 9b05         	ldr	r3, [sp, #0x14]
  327440: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  327444: 681b         	ldr	r3, [r3]
  327446: 3398         	adds	r3, #0x98
  327448: 681b         	ldr	r3, [r3]
  32744a: 9a05         	ldr	r2, [sp, #0x14]
  32744c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  327450: 4610         	mov	r0, r2
  327452: f04f 0100    	mov.w	r1, #0x0
  327456: 4798         	blx	r3
  327458: 9b05         	ldr	r3, [sp, #0x14]
  32745a: 681b         	ldr	r3, [r3]
  32745c: 334c         	adds	r3, #0x4c
  32745e: 681d         	ldr	r5, [r3]
  327460: 9e05         	ldr	r6, [sp, #0x14]
  327462: ab06         	add	r3, sp, #0x18
  327464: 4618         	mov	r0, r3
  327466: f04f 0100    	mov.w	r1, #0x0
  32746a: f04f 0200    	mov.w	r2, #0x0
  32746e: f26b fc3f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26b87e
  327472: ab06         	add	r3, sp, #0x18
  327474: 4630         	mov	r0, r6
  327476: 4619         	mov	r1, r3
  327478: 47a8         	blx	r5
  32747a: 9b05         	ldr	r3, [sp, #0x14]
  32747c: 681b         	ldr	r3, [r3]
  32747e: 3340         	adds	r3, #0x40
  327480: 681b         	ldr	r3, [r3]
  327482: 9905         	ldr	r1, [sp, #0x14]
  327484: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3274ac <GASNADE::setMapConfiguration()+0xfc>
  327486: 58a2         	ldr	r2, [r4, r2]
  327488: 6812         	ldr	r2, [r2]
  32748a: 4608         	mov	r0, r1
  32748c: 4611         	mov	r1, r2
  32748e: 4798         	blx	r3
  327490: b008         	add	sp, #0x20
  327492: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x327493); words below are literal-pool data ---
  327494: f3af 8000    	nop.w
  3274a0: 0000         	movs	r0, r0
  3274a2: c396         	stm	r3!, {r1, r2, r4, r7}
  3274a4: b650         	setend	le
  3274a6: 0060         	lsls	r0, r4, #0x1
  3274a8: da30         	bge	0x32750c <GASNADE::setRight(bool)+0x20> @ imm = #0x60
  3274aa: ffff d748    	<unknown>
  3274ae: ffff b500    	<unknown>

// ==== GASNADE::isRight
//      file offset 0x3274b0 (= ELF address; Ghidra 0x3374b0), 60 bytes, Thumb-2
  3274b0: b500         	push	{lr}
  3274b2: b083         	sub	sp, #0xc
  3274b4: 9001         	str	r0, [sp, #0x4]
  3274b6: 9b01         	ldr	r3, [sp, #0x4]
  3274b8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3274bc: 681b         	ldr	r3, [r3]
  3274be: 3334         	adds	r3, #0x34
  3274c0: 681b         	ldr	r3, [r3]
  3274c2: 9a01         	ldr	r2, [sp, #0x4]
  3274c4: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3274c8: 4610         	mov	r0, r2
  3274ca: 4798         	blx	r3
  3274cc: ee07 0a10    	vmov	s14, r0
  3274d0: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3274d4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3274d8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3274dc: bfd4         	ite	le
  3274de: 2300         	movle	r3, #0x0
  3274e0: 2301         	movgt	r3, #0x1
  3274e2: b2db         	uxtb	r3, r3
  3274e4: 4618         	mov	r0, r3
  3274e6: b003         	add	sp, #0xc
  3274e8: f85d fb04    	ldr	pc, [sp], #4

// ==== GASNADE::setRight
//      file offset 0x3274ec (= ELF address; Ghidra 0x3374ec), 64 bytes, Thumb-2
  3274ec: b500         	push	{lr}
  3274ee: b083         	sub	sp, #0xc
  3274f0: 9001         	str	r0, [sp, #0x4]
  3274f2: 460b         	mov	r3, r1
  3274f4: f88d 3003    	strb.w	r3, [sp, #0x3]
  3274f8: 9b01         	ldr	r3, [sp, #0x4]
  3274fa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3274fe: 681b         	ldr	r3, [r3]
  327500: 3330         	adds	r3, #0x30
  327502: 681a         	ldr	r2, [r3]
  327504: 9b01         	ldr	r3, [sp, #0x4]
  327506: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  32750a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  32750e: 2b00         	cmp	r3, #0x0
  327510: d002         	beq	0x327518 <GASNADE::setRight(bool)+0x2c> @ imm = #0x4
  327512: f04f 537e    	mov.w	r3, #0x3f800000
  327516: e003         	b	0x327520 <GASNADE::setRight(bool)+0x34> @ imm = #0x6
  327518: f04f 0300    	mov.w	r3, #0x0
  32751c: f6cb 7380    	movt	r3, #0xbf80
  327520: 4608         	mov	r0, r1
  327522: 4619         	mov	r1, r3
  327524: 4790         	blx	r2
  327526: b003         	add	sp, #0xc
  327528: f85d fb04    	ldr	pc, [sp], #4

// ==== GASNADE::removeWeapon
//      file offset 0x32752c (= ELF address; Ghidra 0x33752c), 84 bytes, Thumb-2
  32752c: b500         	push	{lr}
  32752e: b085         	sub	sp, #0x14
  327530: 9001         	str	r0, [sp, #0x4]
  327532: 4910         	ldr	r1, [pc, #0x40]         @ 0x327574 <GASNADE::removeWeapon()+0x48>
  327534: 4479         	add	r1, pc
  327536: 9b01         	ldr	r3, [sp, #0x4]
  327538: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x327578 <GASNADE::removeWeapon()+0x4c>
  32753a: 588a         	ldr	r2, [r1, r2]
  32753c: 9202         	str	r2, [sp, #0x8]
  32753e: 2200         	movs	r2, #0x0
  327540: 9203         	str	r2, [sp, #0xc]
  327542: 4618         	mov	r0, r3
  327544: ab02         	add	r3, sp, #0x8
  327546: e893 0006    	ldm.w	r3, {r1, r2}
  32754a: f64c 43cd    	movw	r3, #0xcccd
  32754e: f6c3 53cc    	movt	r3, #0x3dcc
  327552: f269 fe67    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x269cce
  327556: f2b9 f8ab    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2b9156
  32755a: 4602         	mov	r2, r0
  32755c: 9b01         	ldr	r3, [sp, #0x4]
  32755e: 4610         	mov	r0, r2
  327560: 4a06         	ldr	r2, [pc, #0x18]         @ 0x32757c <GASNADE::removeWeapon()+0x50>
  327562: 447a         	add	r2, pc
  327564: 4611         	mov	r1, r2
  327566: 461a         	mov	r2, r3
  327568: f2b9 fae0    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2b95c0
  32756c: b005         	add	sp, #0x14
  32756e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x327571); words below are literal-pool data ---
  327572: bf00         	nop
  327574: b4d4         	push	{r2, r4, r6, r7}
  327576: 0060         	lsls	r0, r4, #0x1
  327578: da60         	bge	0x32763c <GASNADE::getWeaponRect()+0x2c> @ imm = #0xc0
  32757a: ffff 0a6e    	vtbx.8	d16, {d15, d16, d17}, d30
  32757e: 004a         	lsls	r2, r1, #0x1

// ==== GASNADE::delayedRemoveWeapon
//      file offset 0x327580 (= ELF address; Ghidra 0x337580), 40 bytes, Thumb-2
  327580: b500         	push	{lr}
  327582: b083         	sub	sp, #0xc
  327584: 9001         	str	r0, [sp, #0x4]
  327586: f2b9 f893    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2b9126
  32758a: 4602         	mov	r2, r0
  32758c: 9b01         	ldr	r3, [sp, #0x4]
  32758e: 4610         	mov	r0, r2
  327590: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3275a4 <GASNADE::delayedRemoveWeapon()+0x24>
  327592: 447a         	add	r2, pc
  327594: 4611         	mov	r1, r2
  327596: 461a         	mov	r2, r3
  327598: f2b9 fac8    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2b9590
  32759c: b003         	add	sp, #0xc
  32759e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3275a1); words below are literal-pool data ---
  3275a2: bf00         	nop
  3275a4: 0a4e         	lsrs	r6, r1, #0x9
  3275a6: 004a         	lsls	r2, r1, #0x1

// ==== GASNADE::detonate
//      file offset 0x3275a8 (= ELF address; Ghidra 0x3375a8), 64 bytes, Thumb-2
  3275a8: b500         	push	{lr}
  3275aa: b083         	sub	sp, #0xc
  3275ac: 9001         	str	r0, [sp, #0x4]
  3275ae: 9100         	str	r1, [sp]
  3275b0: f2b9 f87e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2b90fc
  3275b4: 4603         	mov	r3, r0
  3275b6: 4618         	mov	r0, r3
  3275b8: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3275e0 <GASNADE::detonate(cocos2d::CCObject*)+0x38>
  3275ba: 447b         	add	r3, pc
  3275bc: 4619         	mov	r1, r3
  3275be: 9a00         	ldr	r2, [sp]
  3275c0: f2b9 fab4    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2b9568
  3275c4: f2b9 f874    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2b90e8
  3275c8: 4603         	mov	r3, r0
  3275ca: 4618         	mov	r0, r3
  3275cc: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3275e4 <GASNADE::detonate(cocos2d::CCObject*)+0x3c>
  3275ce: 447b         	add	r3, pc
  3275d0: 4619         	mov	r1, r3
  3275d2: 9a00         	ldr	r2, [sp]
  3275d4: f2b9 faaa    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2b9554
  3275d8: b003         	add	sp, #0xc
  3275da: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3275dd); words below are literal-pool data ---
  3275de: bf00         	nop
  3275e0: 0a36         	lsrs	r6, r6, #0x8
  3275e2: 004a         	lsls	r2, r1, #0x1
  3275e4: 0a32         	lsrs	r2, r6, #0x8
  3275e6: 004a         	lsls	r2, r1, #0x1

// ==== GASNADE::getWeaponTexture
//      file offset 0x3275e8 (= ELF address; Ghidra 0x3375e8), 40 bytes, Thumb-2
  3275e8: b500         	push	{lr}
  3275ea: b083         	sub	sp, #0xc
  3275ec: 9001         	str	r0, [sp, #0x4]
  3275ee: 9b01         	ldr	r3, [sp, #0x4]
  3275f0: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3275f4: 681b         	ldr	r3, [r3]
  3275f6: f503 73fa    	add.w	r3, r3, #0x1f4
  3275fa: 681b         	ldr	r3, [r3]
  3275fc: 9a01         	ldr	r2, [sp, #0x4]
  3275fe: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  327602: 4610         	mov	r0, r2
  327604: 4798         	blx	r3
  327606: 4603         	mov	r3, r0
  327608: 4618         	mov	r0, r3
  32760a: b003         	add	sp, #0xc
  32760c: f85d fb04    	ldr	pc, [sp], #4

// ==== GASNADE::getWeaponRect
//      file offset 0x327610 (= ELF address; Ghidra 0x337610), 38 bytes, Thumb-2
  327610: b500         	push	{lr}
  327612: b083         	sub	sp, #0xc
  327614: 9001         	str	r0, [sp, #0x4]
  327616: 9100         	str	r1, [sp]
  327618: 9b00         	ldr	r3, [sp]
  32761a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32761e: 4618         	mov	r0, r3
  327620: f7b5 fb5c    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x4a948
  327624: 4603         	mov	r3, r0
  327626: 9801         	ldr	r0, [sp, #0x4]
  327628: 4619         	mov	r1, r3
  32762a: f26b fe75    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x26bcea
  32762e: 9801         	ldr	r0, [sp, #0x4]
  327630: b003         	add	sp, #0xc
  327632: f85d fb04    	ldr	pc, [sp], #4

// ==== GASNADE::create
//      file offset 0x41771c (= ELF address; Ghidra 0x42771c), 112 bytes, Thumb-2
  41771c: b510         	push	{r4, lr}
  41771e: b082         	sub	sp, #0x8
  417720: f44f 70fc    	mov.w	r0, #0x1f8
  417724: f370 f91e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37023c
  417728: 4603         	mov	r3, r0
  41772a: 461c         	mov	r4, r3
  41772c: 4620         	mov	r0, r4
  41772e: f70f fa93    	bl	0x326c58 <GASNADE::GASNADE()> @ imm = #-0xf0ada
  417732: 9401         	str	r4, [sp, #0x4]
  417734: 9b01         	ldr	r3, [sp, #0x4]
  417736: 2b00         	cmp	r3, #0x0
  417738: d00a         	beq	0x417750 <GASNADE::create()+0x34> @ imm = #0x14
  41773a: 9b01         	ldr	r3, [sp, #0x4]
  41773c: 681b         	ldr	r3, [r3]
  41773e: 3318         	adds	r3, #0x18
  417740: 681b         	ldr	r3, [r3]
  417742: 9801         	ldr	r0, [sp, #0x4]
  417744: 4798         	blx	r3
  417746: 4603         	mov	r3, r0
  417748: 2b00         	cmp	r3, #0x0
  41774a: d001         	beq	0x417750 <GASNADE::create()+0x34> @ imm = #0x2
  41774c: 2301         	movs	r3, #0x1
  41774e: e000         	b	0x417752 <GASNADE::create()+0x36> @ imm = #0x0
  417750: 2300         	movs	r3, #0x0
  417752: 2b00         	cmp	r3, #0x0
  417754: d005         	beq	0x417762 <GASNADE::create()+0x46> @ imm = #0xa
  417756: 9b01         	ldr	r3, [sp, #0x4]
  417758: 4618         	mov	r0, r3
  41775a: f180 fbcf    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x18079e
  41775e: 9b01         	ldr	r3, [sp, #0x4]
  417760: e011         	b	0x417786 <GASNADE::create()+0x6a> @ imm = #0x22
  417762: 9b01         	ldr	r3, [sp, #0x4]
  417764: 2b00         	cmp	r3, #0x0
  417766: d005         	beq	0x417774 <GASNADE::create()+0x58> @ imm = #0xa
  417768: 9b01         	ldr	r3, [sp, #0x4]
  41776a: 681b         	ldr	r3, [r3]
  41776c: 3308         	adds	r3, #0x8
  41776e: 681b         	ldr	r3, [r3]
  417770: 9801         	ldr	r0, [sp, #0x4]
  417772: 4798         	blx	r3
  417774: 2300         	movs	r3, #0x0
  417776: 9301         	str	r3, [sp, #0x4]
  417778: 2300         	movs	r3, #0x0
  41777a: e004         	b	0x417786 <GASNADE::create()+0x6a> @ imm = #0x8
  41777c: 4620         	mov	r0, r4
  41777e: f370 fc91    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370922
  417782: f370 fc93    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370926
  417786: 4618         	mov	r0, r3
  417788: b002         	add	sp, #0x8
  41778a: bd10         	pop	{r4, pc}
