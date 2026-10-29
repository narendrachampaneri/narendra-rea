// ROCKET: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 18 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ROCKET.cpp

// ==== ROCKET::ROCKET
//      file offset 0x3bb770 (= ELF address; Ghidra 0x3cb770), 44 bytes, Thumb-2
  3bb770: b510         	push	{r4, lr}
  3bb772: b082         	sub	sp, #0x8
  3bb774: 9001         	str	r0, [sp, #0x4]
  3bb776: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3bb794 <ROCKET::ROCKET()+0x24>
  3bb778: 447c         	add	r4, pc
  3bb77a: 9b01         	ldr	r3, [sp, #0x4]
  3bb77c: 4618         	mov	r0, r3
  3bb77e: f059 fc13    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x59826
  3bb782: 9b01         	ldr	r3, [sp, #0x4]
  3bb784: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3bb798 <ROCKET::ROCKET()+0x28>
  3bb786: 58a2         	ldr	r2, [r4, r2]
  3bb788: 3208         	adds	r2, #0x8
  3bb78a: 601a         	str	r2, [r3]
  3bb78c: 9b01         	ldr	r3, [sp, #0x4]
  3bb78e: 4618         	mov	r0, r3
  3bb790: b002         	add	sp, #0x8
  3bb792: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bb793); words below are literal-pool data ---
  3bb794: 7290         	strb	r0, [r2, #0xa]
  3bb796: 0057         	lsls	r7, r2, #0x1
  3bb798: de28         	udf	#0x28
  3bb79a: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== ROCKET::init
//      file offset 0x3bb79c (= ELF address; Ghidra 0x3cb79c), 312 bytes, Thumb-2
  3bb79c: b510         	push	{r4, lr}
  3bb79e: b084         	sub	sp, #0x10
  3bb7a0: 9001         	str	r0, [sp, #0x4]
  3bb7a2: 4c48         	ldr	r4, [pc, #0x120]        @ 0x3bb8c4 <ROCKET::init()+0x128>
  3bb7a4: 447c         	add	r4, pc
  3bb7a6: 9b01         	ldr	r3, [sp, #0x4]
  3bb7a8: 4618         	mov	r0, r3
  3bb7aa: f059 fc21    	bl	0x414ff0 <Weapon::init()> @ imm = #0x59842
  3bb7ae: 4603         	mov	r3, r0
  3bb7b0: f88d 300f    	strb.w	r3, [sp, #0xf]
  3bb7b4: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3bb7b8: f083 0301    	eor	r3, r3, #0x1
  3bb7bc: b2db         	uxtb	r3, r3
  3bb7be: 2b00         	cmp	r3, #0x0
  3bb7c0: d001         	beq	0x3bb7c6 <ROCKET::init()+0x2a> @ imm = #0x2
  3bb7c2: 2300         	movs	r3, #0x0
  3bb7c4: e07b         	b	0x3bb8be <ROCKET::init()+0x122> @ imm = #0xf6
  3bb7c6: 4b40         	ldr	r3, [pc, #0x100]        @ 0x3bb8c8 <ROCKET::init()+0x12c>
  3bb7c8: 447b         	add	r3, pc
  3bb7ca: 4618         	mov	r0, r3
  3bb7cc: f21c fd9a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x21cb34
  3bb7d0: 4602         	mov	r2, r0
  3bb7d2: 9b01         	ldr	r3, [sp, #0x4]
  3bb7d4: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  3bb7d8: 9b01         	ldr	r3, [sp, #0x4]
  3bb7da: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bb7de: 4618         	mov	r0, r3
  3bb7e0: f1dc fb82    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1dc704
  3bb7e4: 9b01         	ldr	r3, [sp, #0x4]
  3bb7e6: 681b         	ldr	r3, [r3]
  3bb7e8: f503 73f0    	add.w	r3, r3, #0x1e0
  3bb7ec: 681b         	ldr	r3, [r3]
  3bb7ee: 9801         	ldr	r0, [sp, #0x4]
  3bb7f0: 4798         	blx	r3
  3bb7f2: 9b01         	ldr	r3, [sp, #0x4]
  3bb7f4: 2200         	movs	r2, #0x0
  3bb7f6: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3bb7fa: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3bb8cc <ROCKET::init()+0x130>
  3bb7fc: 447b         	add	r3, pc
  3bb7fe: 4618         	mov	r0, r3
  3bb800: f209 fb8c    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x209718
  3bb804: 4602         	mov	r2, r0
  3bb806: 9b01         	ldr	r3, [sp, #0x4]
  3bb808: f8c3 2200    	str.w	r2, [r3, #0x200]
  3bb80c: 9b01         	ldr	r3, [sp, #0x4]
  3bb80e: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bb812: 681b         	ldr	r3, [r3]
  3bb814: f503 733c    	add.w	r3, r3, #0x2f0
  3bb818: 681b         	ldr	r3, [r3]
  3bb81a: 9a01         	ldr	r2, [sp, #0x4]
  3bb81c: f8d2 2200    	ldr.w	r2, [r2, #0x200]
  3bb820: 4610         	mov	r0, r2
  3bb822: 2102         	movs	r1, #0x2
  3bb824: 4798         	blx	r3
  3bb826: 9b01         	ldr	r3, [sp, #0x4]
  3bb828: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bb82c: 681b         	ldr	r3, [r3]
  3bb82e: f503 733e    	add.w	r3, r3, #0x2f8
  3bb832: 681b         	ldr	r3, [r3]
  3bb834: 9a01         	ldr	r2, [sp, #0x4]
  3bb836: f8d2 2200    	ldr.w	r2, [r2, #0x200]
  3bb83a: 4610         	mov	r0, r2
  3bb83c: 2101         	movs	r1, #0x1
  3bb83e: 4798         	blx	r3
  3bb840: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3bb8d0 <ROCKET::init()+0x134>
  3bb842: 58e3         	ldr	r3, [r4, r3]
  3bb844: 681b         	ldr	r3, [r3]
  3bb846: 681b         	ldr	r3, [r3]
  3bb848: 33cc         	adds	r3, #0xcc
  3bb84a: 681b         	ldr	r3, [r3]
  3bb84c: 4a20         	ldr	r2, [pc, #0x80]         @ 0x3bb8d0 <ROCKET::init()+0x134>
  3bb84e: 58a2         	ldr	r2, [r4, r2]
  3bb850: 6812         	ldr	r2, [r2]
  3bb852: 4611         	mov	r1, r2
  3bb854: 9a01         	ldr	r2, [sp, #0x4]
  3bb856: f8d2 2200    	ldr.w	r2, [r2, #0x200]
  3bb85a: 4608         	mov	r0, r1
  3bb85c: 4611         	mov	r1, r2
  3bb85e: 2202         	movs	r2, #0x2
  3bb860: 4798         	blx	r3
  3bb862: 9b01         	ldr	r3, [sp, #0x4]
  3bb864: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bb868: 4618         	mov	r0, r3
  3bb86a: f1dc fb3d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1dc67a
  3bb86e: 9b01         	ldr	r3, [sp, #0x4]
  3bb870: 681b         	ldr	r3, [r3]
  3bb872: 33cc         	adds	r3, #0xcc
  3bb874: 681b         	ldr	r3, [r3]
  3bb876: 9901         	ldr	r1, [sp, #0x4]
  3bb878: 9a01         	ldr	r2, [sp, #0x4]
  3bb87a: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bb87e: 4608         	mov	r0, r1
  3bb880: 4611         	mov	r1, r2
  3bb882: 2200         	movs	r2, #0x0
  3bb884: 4798         	blx	r3
  3bb886: 9b01         	ldr	r3, [sp, #0x4]
  3bb888: 220c         	movs	r2, #0xc
  3bb88a: f8c3 2188    	str.w	r2, [r3, #0x188]
  3bb88e: 9b01         	ldr	r3, [sp, #0x4]
  3bb890: f04f 0200    	mov.w	r2, #0x0
  3bb894: f8c3 2110    	str.w	r2, [r3, #0x110]
  3bb898: 9b01         	ldr	r3, [sp, #0x4]
  3bb89a: f04f 0200    	mov.w	r2, #0x0
  3bb89e: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3bb8a2: 9b01         	ldr	r3, [sp, #0x4]
  3bb8a4: f04f 0200    	mov.w	r2, #0x0
  3bb8a8: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  3bb8ac: 9b01         	ldr	r3, [sp, #0x4]
  3bb8ae: 2200         	movs	r2, #0x0
  3bb8b0: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3bb8b4: 9b01         	ldr	r3, [sp, #0x4]
  3bb8b6: 2200         	movs	r2, #0x0
  3bb8b8: f883 21f9    	strb.w	r2, [r3, #0x1f9]
  3bb8bc: 2301         	movs	r3, #0x1
  3bb8be: 4618         	mov	r0, r3
  3bb8c0: b004         	add	sp, #0x10
  3bb8c2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bb8c3); words below are literal-pool data ---
  3bb8c4: 7264         	strb	r4, [r4, #0x9]
  3bb8c6: 0057         	lsls	r7, r2, #0x1
  3bb8c8: 9294         	str	r2, [sp, #0x250]
  3bb8ca: 0041         	lsls	r1, r0, #0x1
  3bb8cc: 926c         	str	r2, [sp, #0x1b0]
  3bb8ce: 0041         	lsls	r1, r0, #0x1
  3bb8d0: d744         	bvc	0x3bb95c <ROCKET::~ROCKET()+0x88> @ imm = #0x88
  3bb8d2: ffff b500    	<unknown>

// ==== ROCKET::~ROCKET
//      file offset 0x3bb8d4 (= ELF address; Ghidra 0x3cb8d4), 148 bytes, Thumb-2
  3bb8d4: b500         	push	{lr}
  3bb8d6: b083         	sub	sp, #0xc
  3bb8d8: 9001         	str	r0, [sp, #0x4]
  3bb8da: 4921         	ldr	r1, [pc, #0x84]         @ 0x3bb960 <ROCKET::~ROCKET()+0x8c>
  3bb8dc: 4479         	add	r1, pc
  3bb8de: 9b01         	ldr	r3, [sp, #0x4]
  3bb8e0: 4a20         	ldr	r2, [pc, #0x80]         @ 0x3bb964 <ROCKET::~ROCKET()+0x90>
  3bb8e2: 588a         	ldr	r2, [r1, r2]
  3bb8e4: 3208         	adds	r2, #0x8
  3bb8e6: 601a         	str	r2, [r3]
  3bb8e8: 9b01         	ldr	r3, [sp, #0x4]
  3bb8ea: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bb8ee: 4618         	mov	r0, r3
  3bb8f0: f207 f964    	bl	0x5c2bbc <cocos2d::CCParticleSystem::stopSystem()> @ imm = #0x2072c8
  3bb8f4: 9b01         	ldr	r3, [sp, #0x4]
  3bb8f6: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bb8fa: 4618         	mov	r0, r3
  3bb8fc: f1dc fadc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dc5b8
  3bb900: 9b01         	ldr	r3, [sp, #0x4]
  3bb902: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bb906: 2b00         	cmp	r3, #0x0
  3bb908: d010         	beq	0x3bb92c <ROCKET::~ROCKET()+0x58> @ imm = #0x20
  3bb90a: 9b01         	ldr	r3, [sp, #0x4]
  3bb90c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bb910: 681b         	ldr	r3, [r3]
  3bb912: 33e8         	adds	r3, #0xe8
  3bb914: 681b         	ldr	r3, [r3]
  3bb916: 9a01         	ldr	r2, [sp, #0x4]
  3bb918: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3bb91c: 4610         	mov	r0, r2
  3bb91e: 4798         	blx	r3
  3bb920: 9b01         	ldr	r3, [sp, #0x4]
  3bb922: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bb926: 4618         	mov	r0, r3
  3bb928: f1dc fac6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dc58c
  3bb92c: 9b01         	ldr	r3, [sp, #0x4]
  3bb92e: 4618         	mov	r0, r3
  3bb930: f1d4 fe7c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1d4cf8
  3bb934: 9b01         	ldr	r3, [sp, #0x4]
  3bb936: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bb93a: 4618         	mov	r0, r3
  3bb93c: f1dc fabc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1dc578
  3bb940: 9b01         	ldr	r3, [sp, #0x4]
  3bb942: 4618         	mov	r0, r3
  3bb944: f059 fc54    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x598a8
  3bb948: 2300         	movs	r3, #0x0
  3bb94a: 2b00         	cmp	r3, #0x0
  3bb94c: d002         	beq	0x3bb954 <ROCKET::~ROCKET()+0x80> @ imm = #0x4
  3bb94e: 9801         	ldr	r0, [sp, #0x4]
  3bb950: f3cc fba8    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3cc750
  3bb954: 9b01         	ldr	r3, [sp, #0x4]
  3bb956: 4618         	mov	r0, r3
  3bb958: b003         	add	sp, #0xc
  3bb95a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bb95d); words below are literal-pool data ---
  3bb95e: bf00         	nop
  3bb960: 712c         	strb	r4, [r5, #0x4]
  3bb962: 0057         	lsls	r7, r2, #0x1
  3bb964: de28         	udf	#0x28
  3bb966: ffff b500    	<unknown>

// ==== ROCKET::~ROCKET
//      file offset 0x3bb968 (= ELF address; Ghidra 0x3cb968), 28 bytes, Thumb-2
  3bb968: b500         	push	{lr}
  3bb96a: b083         	sub	sp, #0xc
  3bb96c: 9001         	str	r0, [sp, #0x4]
  3bb96e: 9801         	ldr	r0, [sp, #0x4]
  3bb970: f7ff ffb0    	bl	0x3bb8d4 <ROCKET::~ROCKET()> @ imm = #-0xa0
  3bb974: 9801         	ldr	r0, [sp, #0x4]
  3bb976: f3cc fb95    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3cc72a
  3bb97a: 9b01         	ldr	r3, [sp, #0x4]
  3bb97c: 4618         	mov	r0, r3
  3bb97e: b003         	add	sp, #0xc
  3bb980: f85d fb04    	ldr	pc, [sp], #4

// ==== ROCKET::initBody
//      file offset 0x3bb988 (= ELF address; Ghidra 0x3cb988), 348 bytes, Thumb-2
  3bb988: b530         	push	{r4, r5, lr}
  3bb98a: b099         	sub	sp, #0x64
  3bb98c: 900d         	str	r0, [sp, #0x34]
  3bb98e: f64c 43cd    	movw	r3, #0xcccd
  3bb992: f6c3 53cc    	movt	r3, #0x3dcc
  3bb996: 930f         	str	r3, [sp, #0x3c]
  3bb998: eddd 7a0f    	vldr	s15, [sp, #60]
  3bb99c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bb9a0: ec51 0b17    	vmov	r0, r1, d7
  3bb9a4: f04f 0200    	mov.w	r2, #0x0
  3bb9a8: f04f 0300    	mov.w	r3, #0x0
  3bb9ac: f2c4 0334    	movt	r3, #0x4034
  3bb9b0: f317 fc4c    	bl	0x6d324c <cpBodyNew>    @ imm = #0x317898
  3bb9b4: 4602         	mov	r2, r0
  3bb9b6: 9b0d         	ldr	r3, [sp, #0x34]
  3bb9b8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  3bb9bc: 9b0d         	ldr	r3, [sp, #0x34]
  3bb9be: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bb9c2: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x3bbae0 <ROCKET::initBody()+0x158>
  3bb9c4: 447a         	add	r2, pc
  3bb9c6: 601a         	str	r2, [r3]
  3bb9c8: 9b0d         	ldr	r3, [sp, #0x34]
  3bb9ca: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bb9ce: 9a0d         	ldr	r2, [sp, #0x34]
  3bb9d0: f8c3 2090    	str.w	r2, [r3, #0x90]
  3bb9d4: 990d         	ldr	r1, [sp, #0x34]
  3bb9d6: f04f 0200    	mov.w	r2, #0x0
  3bb9da: f04f 0300    	mov.w	r3, #0x0
  3bb9de: f6c3 73f0    	movt	r3, #0x3ff0
  3bb9e2: e9c1 233c    	strd	r2, r3, [r1, #240]
  3bb9e6: 9c0d         	ldr	r4, [sp, #0x34]
  3bb9e8: ab08         	add	r3, sp, #0x20
  3bb9ea: 4618         	mov	r0, r3
  3bb9ec: ed9f 0b36    	vldr	d0, [pc, #216]          @ 0x3bbac8 <ROCKET::initBody()+0x140>
  3bb9f0: ed9f 1b35    	vldr	d1, [pc, #212]          @ 0x3bbac8 <ROCKET::initBody()+0x140>
  3bb9f4: f7fe fe06    	bl	0x3ba604 <RIOTSHIELD::setRight(bool)+0x2ac> @ imm = #-0x13f4
  3bb9f8: 34f8         	adds	r4, #0xf8
  3bb9fa: ab08         	add	r3, sp, #0x20
  3bb9fc: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bb9fe: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3bba02: 9b0d         	ldr	r3, [sp, #0x34]
  3bba04: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  3bba08: f04f 0200    	mov.w	r2, #0x0
  3bba0c: f44f 4380    	mov.w	r3, #0x4000
  3bba10: f2c4 037f    	movt	r3, #0x407f
  3bba14: e9c1 2320    	strd	r2, r3, [r1, #128]
  3bba18: 9b0d         	ldr	r3, [sp, #0x34]
  3bba1a: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  3bba1e: ab10         	add	r3, sp, #0x40
  3bba20: 4618         	mov	r0, r3
  3bba22: eeb9 0b00    	vmov.f64	d0, #-4.000000e+00
  3bba26: ed9f 1b28    	vldr	d1, [pc, #160]          @ 0x3bbac8 <ROCKET::initBody()+0x140>
  3bba2a: f7fe fdeb    	bl	0x3ba604 <RIOTSHIELD::setRight(bool)+0x2ac> @ imm = #-0x142a
  3bba2e: ab14         	add	r3, sp, #0x50
  3bba30: 4618         	mov	r0, r3
  3bba32: eeb0 0b00    	vmov.f64	d0, #2.000000e+00
  3bba36: ed9f 1b24    	vldr	d1, [pc, #144]          @ 0x3bbac8 <ROCKET::initBody()+0x140>
  3bba3a: f7fe fde3    	bl	0x3ba604 <RIOTSHIELD::setRight(bool)+0x2ac> @ imm = #-0x143a
  3bba3e: ac02         	add	r4, sp, #0x8
  3bba40: ab14         	add	r3, sp, #0x50
  3bba42: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bba44: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3bba48: f04f 0200    	mov.w	r2, #0x0
  3bba4c: f04f 0300    	mov.w	r3, #0x0
  3bba50: f2c4 0308    	movt	r3, #0x4008
  3bba54: e9cd 2306    	strd	r2, r3, [sp, #24]
  3bba58: 466b         	mov	r3, sp
  3bba5a: aa12         	add	r2, sp, #0x48
  3bba5c: e892 0003    	ldm.w	r2, {r0, r1}
  3bba60: e883 0003    	stm.w	r3, {r0, r1}
  3bba64: ab10         	add	r3, sp, #0x40
  3bba66: cb0c         	ldm	r3, {r2, r3}
  3bba68: 4628         	mov	r0, r5
  3bba6a: f319 fbe7    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x3197ce
  3bba6e: 4602         	mov	r2, r0
  3bba70: 9b0d         	ldr	r3, [sp, #0x34]
  3bba72: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3bba76: 9b0d         	ldr	r3, [sp, #0x34]
  3bba78: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3bba7c: 2202         	movs	r2, #0x2
  3bba7e: 655a         	str	r2, [r3, #0x54]
  3bba80: 9b0d         	ldr	r3, [sp, #0x34]
  3bba82: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3bba86: 2202         	movs	r2, #0x2
  3bba88: 65da         	str	r2, [r3, #0x5c]
  3bba8a: 9b0d         	ldr	r3, [sp, #0x34]
  3bba8c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3bba90: 2202         	movs	r2, #0x2
  3bba92: 659a         	str	r2, [r3, #0x58]
  3bba94: 9b0d         	ldr	r3, [sp, #0x34]
  3bba96: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  3bba9a: a30d         	adr	r3, #52 <ROCKET::initBody()+0x123>
  3bba9c: e9d3 2300    	ldrd	r2, r3, [r3]
  3bbaa0: e9c1 230c    	strd	r2, r3, [r1, #48]
  3bbaa4: 9b0d         	ldr	r3, [sp, #0x34]
  3bbaa6: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  3bbaaa: a30b         	adr	r3, #44 <ROCKET::initBody()+0x131>
  3bbaac: e9d3 2300    	ldrd	r2, r3, [r3]
  3bbab0: e9c1 230e    	strd	r2, r3, [r1, #56]
  3bbab4: 9b0d         	ldr	r3, [sp, #0x34]
  3bbab6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3bbaba: 9a0d         	ldr	r2, [sp, #0x34]
  3bbabc: 651a         	str	r2, [r3, #0x50]
  3bbabe: b019         	add	sp, #0x64
  3bbac0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3bbac1); words below are literal-pool data ---
  3bbac2: bf00         	nop
  3bbac4: f3af 8000    	nop.w
  3bbad0: 0000         	movs	r0, r0
  3bbad2: a000         	adr	r0, #0 <ROCKET::initBody()+0x14e>
  3bbad4: 9999         	ldr	r1, [sp, #0x264]
  3bbad6: 3fb9         	subs	r7, #0xb9
  3bbad8: 0000         	movs	r0, r0
  3bbada: 8000         	strh	r0, [r0]
  3bbadc: ae14         	add	r6, sp, #0x50
  3bbade: 3fef         	subs	r7, #0xef
  3bbae0: fc1d ffff    	<unknown>

// ==== ROCKET::updateEffects
//      file offset 0x3bbae8 (= ELF address; Ghidra 0x3cbae8), 448 bytes, Thumb-2
  3bbae8: b570         	push	{r4, r5, r6, lr}
  3bbaea: b088         	sub	sp, #0x20
  3bbaec: 9005         	str	r0, [sp, #0x14]
  3bbaee: 9104         	str	r1, [sp, #0x10]
  3bbaf0: 4c69         	ldr	r4, [pc, #0x1a4]        @ 0x3bbc98 <ROCKET::updateEffects(float)+0x1b0>
  3bbaf2: 447c         	add	r4, pc
  3bbaf4: 9b05         	ldr	r3, [sp, #0x14]
  3bbaf6: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bbafa: 2b00         	cmp	r3, #0x0
  3bbafc: d139         	bne	0x3bbb72 <ROCKET::updateEffects(float)+0x8a> @ imm = #0x72
  3bbafe: 20ff         	movs	r0, #0xff
  3bbb00: 21ff         	movs	r1, #0xff
  3bbb02: 22ff         	movs	r2, #0xff
  3bbb04: f7fe fcce    	bl	0x3ba4a4 <RIOTSHIELD::setRight(bool)+0x14c> @ imm = #-0x1664
  3bbb08: 4603         	mov	r3, r0
  3bbb0a: 461a         	mov	r2, r3
  3bbb0c: f88d 201c    	strb.w	r2, [sp, #0x1c]
  3bbb10: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3bbb14: f88d 201d    	strb.w	r2, [sp, #0x1d]
  3bbb18: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3bbb1c: f88d 301e    	strb.w	r3, [sp, #0x1e]
  3bbb20: ab07         	add	r3, sp, #0x1c
  3bbb22: 4a5e         	ldr	r2, [pc, #0x178]        @ 0x3bbc9c <ROCKET::updateEffects(float)+0x1b4>
  3bbb24: 447a         	add	r2, pc
  3bbb26: 9200         	str	r2, [sp]
  3bbb28: f04f 507c    	mov.w	r0, #0x3f000000
  3bbb2c: f04f 517e    	mov.w	r1, #0x3f800000
  3bbb30: f04f 0200    	mov.w	r2, #0x0
  3bbb34: f2c4 0240    	movt	r2, #0x4040
  3bbb38: f1fe f8fc    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x1fe1f8
  3bbb3c: 4602         	mov	r2, r0
  3bbb3e: 9b05         	ldr	r3, [sp, #0x14]
  3bbb40: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  3bbb44: 9b05         	ldr	r3, [sp, #0x14]
  3bbb46: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bbb4a: 4618         	mov	r0, r3
  3bbb4c: f1dc f9cc    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1dc398
  3bbb50: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x3bbca0 <ROCKET::updateEffects(float)+0x1b8>
  3bbb52: 58e3         	ldr	r3, [r4, r3]
  3bbb54: 681b         	ldr	r3, [r3]
  3bbb56: 681b         	ldr	r3, [r3]
  3bbb58: 33cc         	adds	r3, #0xcc
  3bbb5a: 681b         	ldr	r3, [r3]
  3bbb5c: 4a50         	ldr	r2, [pc, #0x140]        @ 0x3bbca0 <ROCKET::updateEffects(float)+0x1b8>
  3bbb5e: 58a2         	ldr	r2, [r4, r2]
  3bbb60: 6812         	ldr	r2, [r2]
  3bbb62: 4611         	mov	r1, r2
  3bbb64: 9a05         	ldr	r2, [sp, #0x14]
  3bbb66: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3bbb6a: 4608         	mov	r0, r1
  3bbb6c: 4611         	mov	r1, r2
  3bbb6e: 2203         	movs	r2, #0x3
  3bbb70: 4798         	blx	r3
  3bbb72: 9b05         	ldr	r3, [sp, #0x14]
  3bbb74: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bbb78: 681b         	ldr	r3, [r3]
  3bbb7a: f503 73f2    	add.w	r3, r3, #0x1e4
  3bbb7e: 681b         	ldr	r3, [r3]
  3bbb80: 9a05         	ldr	r2, [sp, #0x14]
  3bbb82: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3bbb86: 4610         	mov	r0, r2
  3bbb88: f04f 0100    	mov.w	r1, #0x0
  3bbb8c: f2c4 0140    	movt	r1, #0x4040
  3bbb90: 4798         	blx	r3
  3bbb92: 9b05         	ldr	r3, [sp, #0x14]
  3bbb94: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3bbb98: 681b         	ldr	r3, [r3]
  3bbb9a: 334c         	adds	r3, #0x4c
  3bbb9c: 681d         	ldr	r5, [r3]
  3bbb9e: 9b05         	ldr	r3, [sp, #0x14]
  3bbba0: f8d3 61f0    	ldr.w	r6, [r3, #0x1f0]
  3bbba4: 9b05         	ldr	r3, [sp, #0x14]
  3bbba6: 681b         	ldr	r3, [r3]
  3bbba8: 3350         	adds	r3, #0x50
  3bbbaa: 681b         	ldr	r3, [r3]
  3bbbac: 9a05         	ldr	r2, [sp, #0x14]
  3bbbae: 4610         	mov	r0, r2
  3bbbb0: 4798         	blx	r3
  3bbbb2: 4603         	mov	r3, r0
  3bbbb4: 4630         	mov	r0, r6
  3bbbb6: 4619         	mov	r1, r3
  3bbbb8: 47a8         	blx	r5
  3bbbba: 9b05         	ldr	r3, [sp, #0x14]
  3bbbbc: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bbbc0: 681b         	ldr	r3, [r3]
  3bbbc2: f503 731a    	add.w	r3, r3, #0x268
  3bbbc6: 681b         	ldr	r3, [r3]
  3bbbc8: 9a05         	ldr	r2, [sp, #0x14]
  3bbbca: f8d2 2200    	ldr.w	r2, [r2, #0x200]
  3bbbce: 4610         	mov	r0, r2
  3bbbd0: f04f 0100    	mov.w	r1, #0x0
  3bbbd4: f2c4 11d8    	movt	r1, #0x41d8
  3bbbd8: 4798         	blx	r3
  3bbbda: 9b05         	ldr	r3, [sp, #0x14]
  3bbbdc: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bbbe0: 681b         	ldr	r3, [r3]
  3bbbe2: f503 731e    	add.w	r3, r3, #0x278
  3bbbe6: 681b         	ldr	r3, [r3]
  3bbbe8: 9a05         	ldr	r2, [sp, #0x14]
  3bbbea: f8d2 2200    	ldr.w	r2, [r2, #0x200]
  3bbbee: 4610         	mov	r0, r2
  3bbbf0: f04f 0100    	mov.w	r1, #0x0
  3bbbf4: f2c4 01a0    	movt	r1, #0x40a0
  3bbbf8: 4798         	blx	r3
  3bbbfa: 9b05         	ldr	r3, [sp, #0x14]
  3bbbfc: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bbc00: 681b         	ldr	r3, [r3]
  3bbc02: f503 73de    	add.w	r3, r3, #0x1bc
  3bbc06: 681d         	ldr	r5, [r3]
  3bbc08: 9b05         	ldr	r3, [sp, #0x14]
  3bbc0a: f8d3 3200    	ldr.w	r3, [r3, #0x200]
  3bbc0e: 461e         	mov	r6, r3
  3bbc10: 9b05         	ldr	r3, [sp, #0x14]
  3bbc12: 681b         	ldr	r3, [r3]
  3bbc14: 3350         	adds	r3, #0x50
  3bbc16: 681b         	ldr	r3, [r3]
  3bbc18: 9a05         	ldr	r2, [sp, #0x14]
  3bbc1a: 4610         	mov	r0, r2
  3bbc1c: 4798         	blx	r3
  3bbc1e: 4603         	mov	r3, r0
  3bbc20: 4630         	mov	r0, r6
  3bbc22: 4619         	mov	r1, r3
  3bbc24: 47a8         	blx	r5
  3bbc26: 9b05         	ldr	r3, [sp, #0x14]
  3bbc28: ed93 7a7d    	vldr	s14, [r3, #500]
  3bbc2c: eddd 7a04    	vldr	s15, [sp, #16]
  3bbc30: ee77 7a27    	vadd.f32	s15, s14, s15
  3bbc34: 9b05         	ldr	r3, [sp, #0x14]
  3bbc36: edc3 7a7d    	vstr	s15, [r3, #500]
  3bbc3a: 9b05         	ldr	r3, [sp, #0x14]
  3bbc3c: edd3 7a7d    	vldr	s15, [r3, #500]
  3bbc40: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3bbc44: ed9f 7b12    	vldr	d7, [pc, #72]           @ 0x3bbc90 <ROCKET::updateEffects(float)+0x1a8>
  3bbc48: eeb4 6bc7    	vcmpe.f64	d6, d7
  3bbc4c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bbc50: dd1c         	ble	0x3bbc8c <ROCKET::updateEffects(float)+0x1a4> @ imm = #0x38
  3bbc52: 9b05         	ldr	r3, [sp, #0x14]
  3bbc54: f04f 0200    	mov.w	r2, #0x0
  3bbc58: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  3bbc5c: 4b11         	ldr	r3, [pc, #0x44]         @ 0x3bbca4 <ROCKET::updateEffects(float)+0x1bc>
  3bbc5e: 58e3         	ldr	r3, [r4, r3]
  3bbc60: 681c         	ldr	r4, [r3]
  3bbc62: 9b05         	ldr	r3, [sp, #0x14]
  3bbc64: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbc68: f04f 527c    	mov.w	r2, #0x3f000000
  3bbc6c: 9202         	str	r2, [sp, #0x8]
  3bbc6e: f04f 4280    	mov.w	r2, #0x40000000
  3bbc72: 9203         	str	r2, [sp, #0xc]
  3bbc74: 466a         	mov	r2, sp
  3bbc76: f103 0130    	add.w	r1, r3, #0x30
  3bbc7a: c903         	ldm	r1, {r0, r1}
  3bbc7c: e882 0003    	stm.w	r2, {r0, r1}
  3bbc80: 3328         	adds	r3, #0x28
  3bbc82: cb0c         	ldm	r3, {r2, r3}
  3bbc84: 4620         	mov	r0, r4
  3bbc86: 2108         	movs	r1, #0x8
  3bbc88: f03c f9dc    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x3c3b8
  3bbc8c: b008         	add	sp, #0x20
  3bbc8e: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3bbc8f); words below are literal-pool data ---
  3bbc90: 999a         	ldr	r1, [sp, #0x268]
  3bbc92: 9999         	ldr	r1, [sp, #0x264]
  3bbc94: 9999         	ldr	r1, [sp, #0x264]
  3bbc96: 3fc9         	subs	r7, #0xc9
  3bbc98: 6f16         	ldr	r6, [r2, #0x70]
  3bbc9a: 0057         	lsls	r7, r2, #0x1
  3bbc9c: 8f50         	ldrh	r0, [r2, #0x3a]
  3bbc9e: 0041         	lsls	r1, r0, #0x1
  3bbca0: d744         	bvc	0x3bbd2c <ROCKET::updateRemoteWeaponStep(float)+0x84> @ imm = #0x88
  3bbca2: ffff d730    	vqshl.u32	d29, d16, #0x1f
  3bbca6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== ROCKET::updateRemoteWeaponStep
//      file offset 0x3bbca8 (= ELF address; Ghidra 0x3cbca8), 492 bytes, Thumb-2
  3bbca8: b530         	push	{r4, r5, lr}
  3bbcaa: b09d         	sub	sp, #0x74
  3bbcac: 9001         	str	r0, [sp, #0x4]
  3bbcae: 9100         	str	r1, [sp]
  3bbcb0: 9b01         	ldr	r3, [sp, #0x4]
  3bbcb2: ed93 7a64    	vldr	s14, [r3, #400]
  3bbcb6: eddd 7a00    	vldr	s15, [sp]
  3bbcba: ee77 7a27    	vadd.f32	s15, s14, s15
  3bbcbe: 9b01         	ldr	r3, [sp, #0x4]
  3bbcc0: edc3 7a64    	vstr	s15, [r3, #400]
  3bbcc4: 9b01         	ldr	r3, [sp, #0x4]
  3bbcc6: ed93 7a45    	vldr	s14, [r3, #276]
  3bbcca: eddd 7a00    	vldr	s15, [sp]
  3bbcce: ee77 7a27    	vadd.f32	s15, s14, s15
  3bbcd2: 9b01         	ldr	r3, [sp, #0x4]
  3bbcd4: edc3 7a45    	vstr	s15, [r3, #276]
  3bbcd8: 9b01         	ldr	r3, [sp, #0x4]
  3bbcda: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbcde: ed93 7b0a    	vldr	d7, [r3, #40]
  3bbce2: eef7 6bc7    	vcvt.f32.f64	s13, d7
  3bbce6: 9b01         	ldr	r3, [sp, #0x4]
  3bbce8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbcec: ed93 7b0c    	vldr	d7, [r3, #48]
  3bbcf0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3bbcf4: ab14         	add	r3, sp, #0x50
  3bbcf6: 4618         	mov	r0, r3
  3bbcf8: ee16 1a90    	vmov	r1, s13
  3bbcfc: ee17 2a90    	vmov	r2, s15
  3bbd00: f1d6 fff6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d6fec
  3bbd04: 9b01         	ldr	r3, [sp, #0x4]
  3bbd06: 681b         	ldr	r3, [r3]
  3bbd08: 3350         	adds	r3, #0x50
  3bbd0a: 681b         	ldr	r3, [r3]
  3bbd0c: 9a01         	ldr	r2, [sp, #0x4]
  3bbd0e: 4610         	mov	r0, r2
  3bbd10: 4798         	blx	r3
  3bbd12: 4603         	mov	r3, r0
  3bbd14: a918         	add	r1, sp, #0x60
  3bbd16: aa14         	add	r2, sp, #0x50
  3bbd18: 4608         	mov	r0, r1
  3bbd1a: 4611         	mov	r1, r2
  3bbd1c: 461a         	mov	r2, r3
  3bbd1e: f7fe fbff    	bl	0x3ba520 <RIOTSHIELD::setRight(bool)+0x1c8> @ imm = #-0x1802
  3bbd22: aa04         	add	r2, sp, #0x10
  3bbd24: ab18         	add	r3, sp, #0x60
  3bbd26: 4610         	mov	r0, r2
  3bbd28: 4619         	mov	r1, r3
  3bbd2a: eeb4 0a00    	vmov.f32	s0, #1.250000e-01
  3bbd2e: f7fe fc07    	bl	0x3ba540 <RIOTSHIELD::setRight(bool)+0x1e8> @ imm = #-0x17f2
  3bbd32: 9b01         	ldr	r3, [sp, #0x4]
  3bbd34: 681b         	ldr	r3, [r3]
  3bbd36: 3350         	adds	r3, #0x50
  3bbd38: 681b         	ldr	r3, [r3]
  3bbd3a: 9a01         	ldr	r2, [sp, #0x4]
  3bbd3c: 4610         	mov	r0, r2
  3bbd3e: 4798         	blx	r3
  3bbd40: 4602         	mov	r2, r0
  3bbd42: a906         	add	r1, sp, #0x18
  3bbd44: ab04         	add	r3, sp, #0x10
  3bbd46: 4608         	mov	r0, r1
  3bbd48: 4611         	mov	r1, r2
  3bbd4a: 461a         	mov	r2, r3
  3bbd4c: f7fe fbd8    	bl	0x3ba500 <RIOTSHIELD::setRight(bool)+0x1a8> @ imm = #-0x1850
  3bbd50: 9b01         	ldr	r3, [sp, #0x4]
  3bbd52: 681b         	ldr	r3, [r3]
  3bbd54: 334c         	adds	r3, #0x4c
  3bbd56: 681b         	ldr	r3, [r3]
  3bbd58: 9901         	ldr	r1, [sp, #0x4]
  3bbd5a: aa06         	add	r2, sp, #0x18
  3bbd5c: 4608         	mov	r0, r1
  3bbd5e: 4611         	mov	r1, r2
  3bbd60: 4798         	blx	r3
  3bbd62: 9b01         	ldr	r3, [sp, #0x4]
  3bbd64: 681b         	ldr	r3, [r3]
  3bbd66: 339c         	adds	r3, #0x9c
  3bbd68: 681b         	ldr	r3, [r3]
  3bbd6a: 9a01         	ldr	r2, [sp, #0x4]
  3bbd6c: 4610         	mov	r0, r2
  3bbd6e: 4798         	blx	r3
  3bbd70: ee07 0a10    	vmov	s14, r0
  3bbd74: eddf 7a46    	vldr	s15, [pc, #280]         @ 0x3bbe90 <ROCKET::updateRemoteWeaponStep(float)+0x1e8>
  3bbd78: ee67 7a27    	vmul.f32	s15, s14, s15
  3bbd7c: eef1 7a67    	vneg.f32	s15, s15
  3bbd80: edcd 7a02    	vstr	s15, [sp, #8]
  3bbd84: eddd 7a02    	vldr	s15, [sp, #8]
  3bbd88: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bbd8c: ec51 0b17    	vmov	r0, r1, d7
  3bbd90: f71a e8ba    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe5e8c
  3bbd94: 4604         	mov	r4, r0
  3bbd96: 460d         	mov	r5, r1
  3bbd98: eddd 7a02    	vldr	s15, [sp, #8]
  3bbd9c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bbda0: ec51 0b17    	vmov	r0, r1, d7
  3bbda4: f71a e8b6    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe5e94
  3bbda8: 4602         	mov	r2, r0
  3bbdaa: 460b         	mov	r3, r1
  3bbdac: a908         	add	r1, sp, #0x20
  3bbdae: 4608         	mov	r0, r1
  3bbdb0: ec45 4b10    	vmov	d0, r4, r5
  3bbdb4: ec43 2b11    	vmov	d1, r2, r3
  3bbdb8: f7fe fc24    	bl	0x3ba604 <RIOTSHIELD::setRight(bool)+0x2ac> @ imm = #-0x17b8
  3bbdbc: 9b01         	ldr	r3, [sp, #0x4]
  3bbdbe: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbdc2: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3bbdc6: 4610         	mov	r0, r2
  3bbdc8: 4619         	mov	r1, r3
  3bbdca: f71a e89e    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe5ec4
  3bbdce: 4604         	mov	r4, r0
  3bbdd0: 460d         	mov	r5, r1
  3bbdd2: 9b01         	ldr	r3, [sp, #0x4]
  3bbdd4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbdd8: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3bbddc: 4610         	mov	r0, r2
  3bbdde: 4619         	mov	r1, r3
  3bbde0: f71a e898    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe5ed0
  3bbde4: 4602         	mov	r2, r0
  3bbde6: 460b         	mov	r3, r1
  3bbde8: a90c         	add	r1, sp, #0x30
  3bbdea: 4608         	mov	r0, r1
  3bbdec: ec45 4b10    	vmov	d0, r4, r5
  3bbdf0: ec43 2b11    	vmov	d1, r2, r3
  3bbdf4: f7fe fc06    	bl	0x3ba604 <RIOTSHIELD::setRight(bool)+0x2ac> @ imm = #-0x17f4
  3bbdf8: ab14         	add	r3, sp, #0x50
  3bbdfa: ed9d 6b08    	vldr	d6, [sp, #32]
  3bbdfe: ed9d 7b0a    	vldr	d7, [sp, #40]
  3bbe02: 4618         	mov	r0, r3
  3bbe04: eeb0 0b46    	vmov.f64	d0, d6
  3bbe08: eeb0 1b47    	vmov.f64	d1, d7
  3bbe0c: ed9f 2b1c    	vldr	d2, [pc, #112]          @ 0x3bbe80 <ROCKET::updateRemoteWeaponStep(float)+0x1d8>
  3bbe10: f7fe fc38    	bl	0x3ba684 <RIOTSHIELD::setRight(bool)+0x32c> @ imm = #-0x1790
  3bbe14: ab18         	add	r3, sp, #0x60
  3bbe16: ed9d 6b0c    	vldr	d6, [sp, #48]
  3bbe1a: ed9d 7b0e    	vldr	d7, [sp, #56]
  3bbe1e: 4618         	mov	r0, r3
  3bbe20: eeb0 0b46    	vmov.f64	d0, d6
  3bbe24: eeb0 1b47    	vmov.f64	d1, d7
  3bbe28: ed9f 2b17    	vldr	d2, [pc, #92]           @ 0x3bbe88 <ROCKET::updateRemoteWeaponStep(float)+0x1e0>
  3bbe2c: f7fe fc2a    	bl	0x3ba684 <RIOTSHIELD::setRight(bool)+0x32c> @ imm = #-0x17ac
  3bbe30: ab10         	add	r3, sp, #0x40
  3bbe32: ed9d 4b14    	vldr	d4, [sp, #80]
  3bbe36: ed9d 5b16    	vldr	d5, [sp, #88]
  3bbe3a: ed9d 6b18    	vldr	d6, [sp, #96]
  3bbe3e: ed9d 7b1a    	vldr	d7, [sp, #104]
  3bbe42: 4618         	mov	r0, r3
  3bbe44: eeb0 0b44    	vmov.f64	d0, d4
  3bbe48: eeb0 1b45    	vmov.f64	d1, d5
  3bbe4c: eeb0 2b46    	vmov.f64	d2, d6
  3bbe50: eeb0 3b47    	vmov.f64	d3, d7
  3bbe54: f7fe fbea    	bl	0x3ba62c <RIOTSHIELD::setRight(bool)+0x2d4> @ imm = #-0x182c
  3bbe58: ab10         	add	r3, sp, #0x40
  3bbe5a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bbe5c: f7fe fd48    	bl	0x3ba8f0 <RIOTSHIELD::setRight(bool)+0x598> @ imm = #-0x1570
  3bbe60: 9003         	str	r0, [sp, #0xc]
  3bbe62: 9b01         	ldr	r3, [sp, #0x4]
  3bbe64: 681b         	ldr	r3, [r3]
  3bbe66: 3398         	adds	r3, #0x98
  3bbe68: 681b         	ldr	r3, [r3]
  3bbe6a: 9a01         	ldr	r2, [sp, #0x4]
  3bbe6c: 4610         	mov	r0, r2
  3bbe6e: 9903         	ldr	r1, [sp, #0xc]
  3bbe70: 4798         	blx	r3
  3bbe72: 9801         	ldr	r0, [sp, #0x4]
  3bbe74: 9900         	ldr	r1, [sp]
  3bbe76: f7ff fe37    	bl	0x3bbae8 <ROCKET::updateEffects(float)> @ imm = #-0x392
  3bbe7a: b01d         	add	sp, #0x74
  3bbe7c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3bbe7d); words below are literal-pool data ---
  3bbe7e: bf00         	nop
  3bbe80: 6666         	str	r6, [r4, #0x64]
  3bbe82: 6666         	str	r6, [r4, #0x64]
  3bbe84: 6666         	str	r6, [r4, #0x64]
  3bbe86: 3fe6         	subs	r7, #0xe6
  3bbe88: 3333         	adds	r3, #0x33
  3bbe8a: 3333         	adds	r3, #0x33
  3bbe8c: 3333         	adds	r3, #0x33
  3bbe8e: 3fd3         	subs	r7, #0xd3
  3bbe90: fa35 3c8e    	<unknown>

// ==== ROCKET::updateItemStep
//      file offset 0x3bbe98 (= ELF address; Ghidra 0x3cbe98), 652 bytes, Thumb-2
  3bbe98: b570         	push	{r4, r5, r6, lr}
  3bbe9a: b092         	sub	sp, #0x48
  3bbe9c: 9007         	str	r0, [sp, #0x1c]
  3bbe9e: 9106         	str	r1, [sp, #0x18]
  3bbea0: 4a9b         	ldr	r2, [pc, #0x26c]        @ 0x3bc110 <ROCKET::updateItemStep(float)+0x278>
  3bbea2: 447a         	add	r2, pc
  3bbea4: 9b07         	ldr	r3, [sp, #0x1c]
  3bbea6: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  3bbeaa: 2b00         	cmp	r3, #0x0
  3bbeac: d000         	beq	0x3bbeb0 <ROCKET::updateItemStep(float)+0x18> @ imm = #0x0
  3bbeae: e11c         	b	0x3bc0ea <ROCKET::updateItemStep(float)+0x252> @ imm = #0x238
  3bbeb0: 9b07         	ldr	r3, [sp, #0x1c]
  3bbeb2: f893 31f8    	ldrb.w	r3, [r3, #0x1f8]
  3bbeb6: 2b00         	cmp	r3, #0x0
  3bbeb8: d046         	beq	0x3bbf48 <ROCKET::updateItemStep(float)+0xb0> @ imm = #0x8c
  3bbeba: 9b07         	ldr	r3, [sp, #0x1c]
  3bbebc: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3bbec0: 4b94         	ldr	r3, [pc, #0x250]        @ 0x3bc114 <ROCKET::updateItemStep(float)+0x27c>
  3bbec2: 447b         	add	r3, pc
  3bbec4: ed93 6b00    	vldr	d6, [r3]
  3bbec8: ed93 7b02    	vldr	d7, [r3, #8]
  3bbecc: 4610         	mov	r0, r2
  3bbece: eeb0 0b46    	vmov.f64	d0, d6
  3bbed2: eeb0 1b47    	vmov.f64	d1, d7
  3bbed6: f7fe fcc5    	bl	0x3ba864 <RIOTSHIELD::setRight(bool)+0x50c> @ imm = #-0x1676
  3bbeda: 9b07         	ldr	r3, [sp, #0x1c]
  3bbedc: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3bbee0: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x3bc118 <ROCKET::updateItemStep(float)+0x280>
  3bbee2: 447b         	add	r3, pc
  3bbee4: ed93 6b00    	vldr	d6, [r3]
  3bbee8: ed93 7b02    	vldr	d7, [r3, #8]
  3bbeec: 4610         	mov	r0, r2
  3bbeee: eeb0 0b46    	vmov.f64	d0, d6
  3bbef2: eeb0 1b47    	vmov.f64	d1, d7
  3bbef6: f7fe fc9f    	bl	0x3ba838 <RIOTSHIELD::setRight(bool)+0x4e0> @ imm = #-0x16c2
  3bbefa: 9b07         	ldr	r3, [sp, #0x1c]
  3bbefc: f8d3 10e8    	ldr.w	r1, [r3, #0xe8]
  3bbf00: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf02: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbf06: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3bbf0a: 4608         	mov	r0, r1
  3bbf0c: f317 f941    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x317282
  3bbf10: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf12: ed93 7a7f    	vldr	s14, [r3, #508]
  3bbf16: eddd 7a06    	vldr	s15, [sp, #24]
  3bbf1a: ee77 7a27    	vadd.f32	s15, s14, s15
  3bbf1e: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf20: edc3 7a7f    	vstr	s15, [r3, #508]
  3bbf24: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf26: edd3 7a7f    	vldr	s15, [r3, #508]
  3bbf2a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3bbf2e: ed9f 7b70    	vldr	d7, [pc, #448]          @ 0x3bc0f0 <ROCKET::updateItemStep(float)+0x258>
  3bbf32: eeb4 6bc7    	vcmpe.f64	d6, d7
  3bbf36: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bbf3a: dc00         	bgt	0x3bbf3e <ROCKET::updateItemStep(float)+0xa6> @ imm = #0x0
  3bbf3c: e0d5         	b	0x3bc0ea <ROCKET::updateItemStep(float)+0x252> @ imm = #0x1aa
  3bbf3e: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf40: 2201         	movs	r2, #0x1
  3bbf42: f883 20e5    	strb.w	r2, [r3, #0xe5]
  3bbf46: e0d0         	b	0x3bc0ea <ROCKET::updateItemStep(float)+0x252> @ imm = #0x1a0
  3bbf48: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf4a: f04f 0100    	mov.w	r1, #0x0
  3bbf4e: f8c3 1118    	str.w	r1, [r3, #0x118]
  3bbf52: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf54: f04f 0100    	mov.w	r1, #0x0
  3bbf58: f8c3 111c    	str.w	r1, [r3, #0x11c]
  3bbf5c: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf5e: ed93 7a44    	vldr	s14, [r3, #272]
  3bbf62: eddd 7a06    	vldr	s15, [sp, #24]
  3bbf66: ee77 7a27    	vadd.f32	s15, s14, s15
  3bbf6a: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf6c: edc3 7a44    	vstr	s15, [r3, #272]
  3bbf70: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3bc11c <ROCKET::updateItemStep(float)+0x284>
  3bbf72: 58d3         	ldr	r3, [r2, r3]
  3bbf74: 681c         	ldr	r4, [r3]
  3bbf76: 9b07         	ldr	r3, [sp, #0x1c]
  3bbf78: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbf7c: f44f 7284    	mov.w	r2, #0x108
  3bbf80: 9202         	str	r2, [sp, #0x8]
  3bbf82: 2200         	movs	r2, #0x0
  3bbf84: 9203         	str	r2, [sp, #0xc]
  3bbf86: 466a         	mov	r2, sp
  3bbf88: f103 0130    	add.w	r1, r3, #0x30
  3bbf8c: c903         	ldm	r1, {r0, r1}
  3bbf8e: e882 0003    	stm.w	r2, {r0, r1}
  3bbf92: 3328         	adds	r3, #0x28
  3bbf94: cb0c         	ldm	r3, {r2, r3}
  3bbf96: 4620         	mov	r0, r4
  3bbf98: f319 ff4e    	bl	0x6d5e38 <cpSpacePointQueryFirst> @ imm = #0x319e9c
  3bbf9c: 4603         	mov	r3, r0
  3bbf9e: 9308         	str	r3, [sp, #0x20]
  3bbfa0: 9b08         	ldr	r3, [sp, #0x20]
  3bbfa2: 2b00         	cmp	r3, #0x0
  3bbfa4: d003         	beq	0x3bbfae <ROCKET::updateItemStep(float)+0x116> @ imm = #0x6
  3bbfa6: 9b07         	ldr	r3, [sp, #0x1c]
  3bbfa8: 2201         	movs	r2, #0x1
  3bbfaa: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3bbfae: 9b07         	ldr	r3, [sp, #0x1c]
  3bbfb0: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3bbfb4: 2b00         	cmp	r3, #0x0
  3bbfb6: d009         	beq	0x3bbfcc <ROCKET::updateItemStep(float)+0x134> @ imm = #0x12
  3bbfb8: 9b07         	ldr	r3, [sp, #0x1c]
  3bbfba: ed93 7a44    	vldr	s14, [r3, #272]
  3bbfbe: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3bbfc2: eeb4 7ae7    	vcmpe.f32	s14, s15
  3bbfc6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bbfca: dc09         	bgt	0x3bbfe0 <ROCKET::updateItemStep(float)+0x148> @ imm = #0x12
  3bbfcc: 9b07         	ldr	r3, [sp, #0x1c]
  3bbfce: ed93 7a44    	vldr	s14, [r3, #272]
  3bbfd2: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  3bbfd6: eeb4 7ae7    	vcmpe.f32	s14, s15
  3bbfda: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bbfde: dd03         	ble	0x3bbfe8 <ROCKET::updateItemStep(float)+0x150> @ imm = #0x6
  3bbfe0: 9b07         	ldr	r3, [sp, #0x1c]
  3bbfe2: 2201         	movs	r2, #0x1
  3bbfe4: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3bbfe8: 9b07         	ldr	r3, [sp, #0x1c]
  3bbfea: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bbfee: 3338         	adds	r3, #0x38
  3bbff0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bbff2: f7fe fc7d    	bl	0x3ba8f0 <RIOTSHIELD::setRight(bool)+0x598> @ imm = #-0x1706
  3bbff6: 4603         	mov	r3, r0
  3bbff8: ee07 3a90    	vmov	s15, r3
  3bbffc: eeb1 7a67    	vneg.f32	s14, s15
  3bc000: eddf 7a41    	vldr	s15, [pc, #260]         @ 0x3bc108 <ROCKET::updateItemStep(float)+0x270>
  3bc004: ee67 7a27    	vmul.f32	s15, s14, s15
  3bc008: edcd 7a09    	vstr	s15, [sp, #36]
  3bc00c: 9b07         	ldr	r3, [sp, #0x1c]
  3bc00e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc012: 9a07         	ldr	r2, [sp, #0x1c]
  3bc014: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  3bc018: ed92 6b16    	vldr	d6, [r2, #88]
  3bc01c: ed9f 7b36    	vldr	d7, [pc, #216]          @ 0x3bc0f8 <ROCKET::updateItemStep(float)+0x260>
  3bc020: ee26 6b07    	vmul.f64	d6, d6, d7
  3bc024: eddd 7a09    	vldr	s15, [sp, #36]
  3bc028: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  3bc02c: ed9f 7b34    	vldr	d7, [pc, #208]          @ 0x3bc100 <ROCKET::updateItemStep(float)+0x268>
  3bc030: ee25 7b07    	vmul.f64	d7, d5, d7
  3bc034: ee36 7b07    	vadd.f64	d7, d6, d7
  3bc038: 4618         	mov	r0, r3
  3bc03a: ec53 2b17    	vmov	r2, r3, d7
  3bc03e: f317 f8a8    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x317150
  3bc042: 9b07         	ldr	r3, [sp, #0x1c]
  3bc044: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3bc048: f083 0301    	eor	r3, r3, #0x1
  3bc04c: b2db         	uxtb	r3, r3
  3bc04e: 2b00         	cmp	r3, #0x0
  3bc050: d047         	beq	0x3bc0e2 <ROCKET::updateItemStep(float)+0x24a> @ imm = #0x8e
  3bc052: 9b07         	ldr	r3, [sp, #0x1c]
  3bc054: f8d3 60e8    	ldr.w	r6, [r3, #0xe8]
  3bc058: 9b07         	ldr	r3, [sp, #0x1c]
  3bc05a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc05e: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3bc062: 4610         	mov	r0, r2
  3bc064: 4619         	mov	r1, r3
  3bc066: f719 ef50    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe6160
  3bc06a: 4604         	mov	r4, r0
  3bc06c: 460d         	mov	r5, r1
  3bc06e: 9b07         	ldr	r3, [sp, #0x1c]
  3bc070: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc074: e9d3 2316    	ldrd	r2, r3, [r3, #88]
  3bc078: 4610         	mov	r0, r2
  3bc07a: 4619         	mov	r1, r3
  3bc07c: f719 ef4a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe616c
  3bc080: 4602         	mov	r2, r0
  3bc082: 460b         	mov	r3, r1
  3bc084: a90a         	add	r1, sp, #0x28
  3bc086: 4608         	mov	r0, r1
  3bc088: ec45 4b10    	vmov	d0, r4, r5
  3bc08c: ec43 2b11    	vmov	d1, r2, r3
  3bc090: f7fe fab8    	bl	0x3ba604 <RIOTSHIELD::setRight(bool)+0x2ac> @ imm = #-0x1a90
  3bc094: ed9d 7a06    	vldr	s14, [sp, #24]
  3bc098: eddf 7a1c    	vldr	s15, [pc, #112]         @ 0x3bc10c <ROCKET::updateItemStep(float)+0x274>
  3bc09c: ee67 7a27    	vmul.f32	s15, s14, s15
  3bc0a0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bc0a4: ab0e         	add	r3, sp, #0x38
  3bc0a6: ed9d 5b0a    	vldr	d5, [sp, #40]
  3bc0aa: ed9d 6b0c    	vldr	d6, [sp, #48]
  3bc0ae: 4618         	mov	r0, r3
  3bc0b0: eeb0 0b45    	vmov.f64	d0, d5
  3bc0b4: eeb0 1b46    	vmov.f64	d1, d6
  3bc0b8: eeb0 2b47    	vmov.f64	d2, d7
  3bc0bc: f7fe fae2    	bl	0x3ba684 <RIOTSHIELD::setRight(bool)+0x32c> @ imm = #-0x1a3c
  3bc0c0: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3bc120 <ROCKET::updateItemStep(float)+0x288>
  3bc0c2: 447b         	add	r3, pc
  3bc0c4: ac02         	add	r4, sp, #0x8
  3bc0c6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bc0c8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3bc0cc: 466b         	mov	r3, sp
  3bc0ce: aa10         	add	r2, sp, #0x40
  3bc0d0: e892 0003    	ldm.w	r2, {r0, r1}
  3bc0d4: e883 0003    	stm.w	r3, {r0, r1}
  3bc0d8: ab0e         	add	r3, sp, #0x38
  3bc0da: cb0c         	ldm	r3, {r2, r3}
  3bc0dc: 4630         	mov	r0, r6
  3bc0de: f317 f921    	bl	0x6d3324 <cpBodyApplyForce> @ imm = #0x317242
  3bc0e2: 9807         	ldr	r0, [sp, #0x1c]
  3bc0e4: 9906         	ldr	r1, [sp, #0x18]
  3bc0e6: f7ff fcff    	bl	0x3bbae8 <ROCKET::updateEffects(float)> @ imm = #-0x602
  3bc0ea: b012         	add	sp, #0x48
  3bc0ec: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3bc0ed); words below are literal-pool data ---
  3bc0ee: bf00         	nop
  3bc0f0: 999a         	ldr	r1, [sp, #0x268]
  3bc0f2: 9999         	ldr	r1, [sp, #0x264]
  3bc0f4: 9999         	ldr	r1, [sp, #0x264]
  3bc0f6: 3fb9         	subs	r7, #0xb9
  3bc0f8: 999a         	ldr	r1, [sp, #0x268]
  3bc0fa: 9999         	ldr	r1, [sp, #0x264]
  3bc0fc: 9999         	ldr	r1, [sp, #0x264]
  3bc0fe: 3fe9         	subs	r7, #0xe9
  3bc100: 999a         	ldr	r1, [sp, #0x268]
  3bc102: 9999         	ldr	r1, [sp, #0x264]
  3bc104: 9999         	ldr	r1, [sp, #0x264]
  3bc106: 3fc9         	subs	r7, #0xc9
  3bc108: fa35 3c8e    	<unknown>
  3bc10c: 0000         	movs	r0, r0
  3bc10e: 4348         	muls	r0, r1, r0
  3bc110: 6b66         	ldr	r6, [r4, #0x34]
  3bc112: 0057         	lsls	r7, r2, #0x1
  3bc114: 8c52         	ldrh	r2, [r2, #0x22]
  3bc116: 0041         	lsls	r1, r0, #0x1
  3bc118: 8c32         	ldrh	r2, [r6, #0x20]
  3bc11a: 0041         	lsls	r1, r0, #0x1
  3bc11c: da00         	bge	0x3bc120 <ROCKET::updateItemStep(float)+0x288> @ imm = #0x0
  3bc11e: ffff 8a52    	<unknown>
  3bc122: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::setContact
//      file offset 0x3bc128 (= ELF address; Ghidra 0x3cc128), 532 bytes, Thumb-2
  3bc128: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  3bc12c: b091         	sub	sp, #0x44
  3bc12e: 900d         	str	r0, [sp, #0x34]
  3bc130: 920b         	str	r2, [sp, #0x2c]
  3bc132: 930a         	str	r3, [sp, #0x28]
  3bc134: 460b         	mov	r3, r1
  3bc136: f88d 3033    	strb.w	r3, [sp, #0x33]
  3bc13a: 4c7b         	ldr	r4, [pc, #0x1ec]        @ 0x3bc328 <ROCKET::setContact(bool, std::string, int)+0x200>
  3bc13c: 447c         	add	r4, pc
  3bc13e: 9b0d         	ldr	r3, [sp, #0x34]
  3bc140: f503 73aa    	add.w	r3, r3, #0x154
  3bc144: 4618         	mov	r0, r3
  3bc146: 990b         	ldr	r1, [sp, #0x2c]
  3bc148: f3f9 fa98    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x3f9530
  3bc14c: 4603         	mov	r3, r0
  3bc14e: 2b00         	cmp	r3, #0x0
  3bc150: bf14         	ite	ne
  3bc152: 2300         	movne	r3, #0x0
  3bc154: 2301         	moveq	r3, #0x1
  3bc156: b2db         	uxtb	r3, r3
  3bc158: 2b00         	cmp	r3, #0x0
  3bc15a: d005         	beq	0x3bc168 <ROCKET::setContact(bool, std::string, int)+0x40> @ imm = #0xa
  3bc15c: 9b0d         	ldr	r3, [sp, #0x34]
  3bc15e: 2200         	movs	r2, #0x0
  3bc160: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3bc164: 2300         	movs	r3, #0x0
  3bc166: e0da         	b	0x3bc31e <ROCKET::setContact(bool, std::string, int)+0x1f6> @ imm = #0x1b4
  3bc168: 9b0d         	ldr	r3, [sp, #0x34]
  3bc16a: ed93 7a44    	vldr	s14, [r3, #272]
  3bc16e: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  3bc172: eeb4 7ae7    	vcmpe.f32	s14, s15
  3bc176: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bc17a: d537         	bpl	0x3bc1ec <ROCKET::setContact(bool, std::string, int)+0xc4> @ imm = #0x6e
  3bc17c: 980b         	ldr	r0, [sp, #0x2c]
  3bc17e: 4b6b         	ldr	r3, [pc, #0x1ac]        @ 0x3bc32c <ROCKET::setContact(bool, std::string, int)+0x204>
  3bc180: 447b         	add	r3, pc
  3bc182: 4619         	mov	r1, r3
  3bc184: f3f9 face    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x3f959c
  3bc188: 4603         	mov	r3, r0
  3bc18a: 2b00         	cmp	r3, #0x0
  3bc18c: bf14         	ite	ne
  3bc18e: 2300         	movne	r3, #0x0
  3bc190: 2301         	moveq	r3, #0x1
  3bc192: b2db         	uxtb	r3, r3
  3bc194: 2b00         	cmp	r3, #0x0
  3bc196: d024         	beq	0x3bc1e2 <ROCKET::setContact(bool, std::string, int)+0xba> @ imm = #0x48
  3bc198: 9b0d         	ldr	r3, [sp, #0x34]
  3bc19a: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3bc19e: f083 0301    	eor	r3, r3, #0x1
  3bc1a2: b2db         	uxtb	r3, r3
  3bc1a4: 2b00         	cmp	r3, #0x0
  3bc1a6: d029         	beq	0x3bc1fc <ROCKET::setContact(bool, std::string, int)+0xd4> @ imm = #0x52
  3bc1a8: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  3bc1ac: 2b00         	cmp	r3, #0x0
  3bc1ae: d025         	beq	0x3bc1fc <ROCKET::setContact(bool, std::string, int)+0xd4> @ imm = #0x4a
  3bc1b0: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x3bc330 <ROCKET::setContact(bool, std::string, int)+0x208>
  3bc1b2: 58e3         	ldr	r3, [r4, r3]
  3bc1b4: 681c         	ldr	r4, [r3]
  3bc1b6: 9b0d         	ldr	r3, [sp, #0x34]
  3bc1b8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc1bc: f04f 527c    	mov.w	r2, #0x3f000000
  3bc1c0: 9202         	str	r2, [sp, #0x8]
  3bc1c2: f04f 527e    	mov.w	r2, #0x3f800000
  3bc1c6: 9203         	str	r2, [sp, #0xc]
  3bc1c8: 466a         	mov	r2, sp
  3bc1ca: f103 0130    	add.w	r1, r3, #0x30
  3bc1ce: c903         	ldm	r1, {r0, r1}
  3bc1d0: e882 0003    	stm.w	r2, {r0, r1}
  3bc1d4: 3328         	adds	r3, #0x28
  3bc1d6: cb0c         	ldm	r3, {r2, r3}
  3bc1d8: 4620         	mov	r0, r4
  3bc1da: 210f         	movs	r1, #0xf
  3bc1dc: f03b ff32    	bl	0x3f8044 <Sound::playSoundPositionVP(int, cpVect, float, float)> @ imm = #0x3be64
  3bc1e0: e00c         	b	0x3bc1fc <ROCKET::setContact(bool, std::string, int)+0xd4> @ imm = #0x18
  3bc1e2: 9b0d         	ldr	r3, [sp, #0x34]
  3bc1e4: 2201         	movs	r2, #0x1
  3bc1e6: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3bc1ea: e007         	b	0x3bc1fc <ROCKET::setContact(bool, std::string, int)+0xd4> @ imm = #0xe
  3bc1ec: f89d 3033    	ldrb.w	r3, [sp, #0x33]
  3bc1f0: 2b00         	cmp	r3, #0x0
  3bc1f2: d003         	beq	0x3bc1fc <ROCKET::setContact(bool, std::string, int)+0xd4> @ imm = #0x6
  3bc1f4: 9b0d         	ldr	r3, [sp, #0x34]
  3bc1f6: 2201         	movs	r2, #0x1
  3bc1f8: f883 21f8    	strb.w	r2, [r3, #0x1f8]
  3bc1fc: 9b0d         	ldr	r3, [sp, #0x34]
  3bc1fe: f893 31f8    	ldrb.w	r3, [r3, #0x1f8]
  3bc202: 2b00         	cmp	r3, #0x0
  3bc204: d012         	beq	0x3bc22c <ROCKET::setContact(bool, std::string, int)+0x104> @ imm = #0x24
  3bc206: 980b         	ldr	r0, [sp, #0x2c]
  3bc208: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x3bc334 <ROCKET::setContact(bool, std::string, int)+0x20c>
  3bc20a: 447b         	add	r3, pc
  3bc20c: 4619         	mov	r1, r3
  3bc20e: f3f9 fa89    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x3f9512
  3bc212: 4603         	mov	r3, r0
  3bc214: 2b00         	cmp	r3, #0x0
  3bc216: d009         	beq	0x3bc22c <ROCKET::setContact(bool, std::string, int)+0x104> @ imm = #0x12
  3bc218: 9b0d         	ldr	r3, [sp, #0x34]
  3bc21a: f893 31f9    	ldrb.w	r3, [r3, #0x1f9]
  3bc21e: f083 0301    	eor	r3, r3, #0x1
  3bc222: b2db         	uxtb	r3, r3
  3bc224: 2b00         	cmp	r3, #0x0
  3bc226: d001         	beq	0x3bc22c <ROCKET::setContact(bool, std::string, int)+0x104> @ imm = #0x2
  3bc228: 2301         	movs	r3, #0x1
  3bc22a: e000         	b	0x3bc22e <ROCKET::setContact(bool, std::string, int)+0x106> @ imm = #0x0
  3bc22c: 2300         	movs	r3, #0x0
  3bc22e: 2b00         	cmp	r3, #0x0
  3bc230: d06d         	beq	0x3bc30e <ROCKET::setContact(bool, std::string, int)+0x1e6> @ imm = #0xda
  3bc232: 9b0d         	ldr	r3, [sp, #0x34]
  3bc234: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc238: ed93 7b0a    	vldr	d7, [r3, #40]
  3bc23c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3bc240: ee17 0a90    	vmov	r0, s15
  3bc244: f720 fd1e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xdf5c4
  3bc248: 4607         	mov	r7, r0
  3bc24a: 9b0d         	ldr	r3, [sp, #0x34]
  3bc24c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc250: ed93 7b0c    	vldr	d7, [r3, #48]
  3bc254: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3bc258: ee17 0a90    	vmov	r0, s15
  3bc25c: f720 fd12    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xdf5dc
  3bc260: 4606         	mov	r6, r0
  3bc262: 9b0d         	ldr	r3, [sp, #0x34]
  3bc264: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc268: ed93 7b0e    	vldr	d7, [r3, #56]
  3bc26c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3bc270: ee17 0a90    	vmov	r0, s15
  3bc274: f720 fd06    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xdf5f4
  3bc278: 4605         	mov	r5, r0
  3bc27a: 9b0d         	ldr	r3, [sp, #0x34]
  3bc27c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc280: ed93 7b10    	vldr	d7, [r3, #64]
  3bc284: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3bc288: ee17 0a90    	vmov	r0, s15
  3bc28c: f720 fcfa    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xdf60c
  3bc290: 4604         	mov	r4, r0
  3bc292: 200c         	movs	r0, #0xc
  3bc294: f728 fd38    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd7590
  3bc298: 9009         	str	r0, [sp, #0x24]
  3bc29a: 2064         	movs	r0, #0x64
  3bc29c: f728 fd34    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd7598
  3bc2a0: 4683         	mov	r11, r0
  3bc2a2: 2000         	movs	r0, #0x0
  3bc2a4: f728 fd30    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd75a0
  3bc2a8: 4682         	mov	r10, r0
  3bc2aa: 2000         	movs	r0, #0x0
  3bc2ac: f728 fd2c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xd75a8
  3bc2b0: 4681         	mov	r9, r0
  3bc2b2: 980b         	ldr	r0, [sp, #0x2c]
  3bc2b4: f1dd fbc2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1dd784
  3bc2b8: 4680         	mov	r8, r0
  3bc2ba: 9b0d         	ldr	r3, [sp, #0x34]
  3bc2bc: f503 73aa    	add.w	r3, r3, #0x154
  3bc2c0: 4618         	mov	r0, r3
  3bc2c2: f1dd fbbb    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1dd776
  3bc2c6: 4603         	mov	r3, r0
  3bc2c8: 9a09         	ldr	r2, [sp, #0x24]
  3bc2ca: 9200         	str	r2, [sp]
  3bc2cc: f8cd b004    	str.w	r11, [sp, #0x4]
  3bc2d0: f8cd a008    	str.w	r10, [sp, #0x8]
  3bc2d4: f8cd 900c    	str.w	r9, [sp, #0xc]
  3bc2d8: f8cd 8010    	str.w	r8, [sp, #0x10]
  3bc2dc: 9305         	str	r3, [sp, #0x14]
  3bc2de: 2300         	movs	r3, #0x0
  3bc2e0: 9306         	str	r3, [sp, #0x18]
  3bc2e2: 4638         	mov	r0, r7
  3bc2e4: 4631         	mov	r1, r6
  3bc2e6: 462a         	mov	r2, r5
  3bc2e8: 4623         	mov	r3, r4
  3bc2ea: f1dd fd91    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1ddb22
  3bc2ee: 4603         	mov	r3, r0
  3bc2f0: 930f         	str	r3, [sp, #0x3c]
  3bc2f2: f224 f9dd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2243ba
  3bc2f6: 4603         	mov	r3, r0
  3bc2f8: 4618         	mov	r0, r3
  3bc2fa: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3bc338 <ROCKET::setContact(bool, std::string, int)+0x210>
  3bc2fc: 447b         	add	r3, pc
  3bc2fe: 4619         	mov	r1, r3
  3bc300: 9a0f         	ldr	r2, [sp, #0x3c]
  3bc302: f224 fc13    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x224826
  3bc306: 9b0d         	ldr	r3, [sp, #0x34]
  3bc308: 2201         	movs	r2, #0x1
  3bc30a: f883 21f9    	strb.w	r2, [r3, #0x1f9]
  3bc30e: 9b0d         	ldr	r3, [sp, #0x34]
  3bc310: f89d 2033    	ldrb.w	r2, [sp, #0x33]
  3bc314: f883 20e4    	strb.w	r2, [r3, #0xe4]
  3bc318: 9b0d         	ldr	r3, [sp, #0x34]
  3bc31a: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  3bc31e: 4618         	mov	r0, r3
  3bc320: b011         	add	sp, #0x44
  3bc322: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x3bc325); words below are literal-pool data ---
  3bc326: bf00         	nop
  3bc328: 68cc         	ldr	r4, [r1, #0xc]
  3bc32a: 0057         	lsls	r7, r2, #0x1
  3bc32c: 8904         	ldrh	r4, [r0, #0x8]
  3bc32e: 0041         	lsls	r1, r0, #0x1
  3bc330: d730         	bvc	0x3bc394 <ROCKET::setPrimaryConfiguration()+0x58> @ imm = #0x60
  3bc332: ffff 887a    	vqrshrun.s64	d24, q13, #0x1
  3bc336: 0041         	lsls	r1, r0, #0x1
  3bc338: 878c         	strh	r4, [r1, #0x3c]
  3bc33a: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::setPrimaryConfiguration
//      file offset 0x3bc33c (= ELF address; Ghidra 0x3cc33c), 292 bytes, Thumb-2
  3bc33c: b530         	push	{r4, r5, lr}
  3bc33e: b085         	sub	sp, #0x14
  3bc340: 9001         	str	r0, [sp, #0x4]
  3bc342: 9b01         	ldr	r3, [sp, #0x4]
  3bc344: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc348: 2b00         	cmp	r3, #0x0
  3bc34a: d019         	beq	0x3bc380 <ROCKET::setPrimaryConfiguration()+0x44> @ imm = #0x32
  3bc34c: 9b01         	ldr	r3, [sp, #0x4]
  3bc34e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3bc352: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3bc45c <ROCKET::setPrimaryConfiguration()+0x120>
  3bc354: 447b         	add	r3, pc
  3bc356: ed93 6b00    	vldr	d6, [r3]
  3bc35a: ed93 7b02    	vldr	d7, [r3, #8]
  3bc35e: 4610         	mov	r0, r2
  3bc360: eeb0 0b46    	vmov.f64	d0, d6
  3bc364: eeb0 1b47    	vmov.f64	d1, d7
  3bc368: f7fe fa50    	bl	0x3ba80c <RIOTSHIELD::setRight(bool)+0x4b4> @ imm = #-0x1b60
  3bc36c: 9b01         	ldr	r3, [sp, #0x4]
  3bc36e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc372: 4618         	mov	r0, r3
  3bc374: f04f 0200    	mov.w	r2, #0x0
  3bc378: f04f 0300    	mov.w	r3, #0x0
  3bc37c: f316 ff09    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x316e12
  3bc380: 9b01         	ldr	r3, [sp, #0x4]
  3bc382: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc386: 681b         	ldr	r3, [r3]
  3bc388: 334c         	adds	r3, #0x4c
  3bc38a: 681c         	ldr	r4, [r3]
  3bc38c: 9b01         	ldr	r3, [sp, #0x4]
  3bc38e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3bc392: ab02         	add	r3, sp, #0x8
  3bc394: 4618         	mov	r0, r3
  3bc396: f04f 0100    	mov.w	r1, #0x0
  3bc39a: f2cc 1190    	movt	r1, #0xc190
  3bc39e: f04f 0200    	mov.w	r2, #0x0
  3bc3a2: f2cc 1220    	movt	r2, #0xc120
  3bc3a6: f1d6 fca3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d6946
  3bc3aa: ab02         	add	r3, sp, #0x8
  3bc3ac: 4628         	mov	r0, r5
  3bc3ae: 4619         	mov	r1, r3
  3bc3b0: 47a0         	blx	r4
  3bc3b2: 9b01         	ldr	r3, [sp, #0x4]
  3bc3b4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc3b8: 681b         	ldr	r3, [r3]
  3bc3ba: 337c         	adds	r3, #0x7c
  3bc3bc: 681c         	ldr	r4, [r3]
  3bc3be: 9b01         	ldr	r3, [sp, #0x4]
  3bc3c0: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3bc3c4: ab02         	add	r3, sp, #0x8
  3bc3c6: 4618         	mov	r0, r3
  3bc3c8: f04f 517c    	mov.w	r1, #0x3f000000
  3bc3cc: f04f 527c    	mov.w	r2, #0x3f000000
  3bc3d0: f1d6 fc8e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d691c
  3bc3d4: ab02         	add	r3, sp, #0x8
  3bc3d6: 4628         	mov	r0, r5
  3bc3d8: 4619         	mov	r1, r3
  3bc3da: 47a0         	blx	r4
  3bc3dc: 9b01         	ldr	r3, [sp, #0x4]
  3bc3de: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc3e2: 681b         	ldr	r3, [r3]
  3bc3e4: 3398         	adds	r3, #0x98
  3bc3e6: 681b         	ldr	r3, [r3]
  3bc3e8: 9a01         	ldr	r2, [sp, #0x4]
  3bc3ea: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bc3ee: 4610         	mov	r0, r2
  3bc3f0: f04f 0100    	mov.w	r1, #0x0
  3bc3f4: 4798         	blx	r3
  3bc3f6: 9b01         	ldr	r3, [sp, #0x4]
  3bc3f8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc3fc: 681b         	ldr	r3, [r3]
  3bc3fe: 3340         	adds	r3, #0x40
  3bc400: 681b         	ldr	r3, [r3]
  3bc402: 9a01         	ldr	r2, [sp, #0x4]
  3bc404: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bc408: 4610         	mov	r0, r2
  3bc40a: f04f 517e    	mov.w	r1, #0x3f800000
  3bc40e: 4798         	blx	r3
  3bc410: 9b01         	ldr	r3, [sp, #0x4]
  3bc412: 681b         	ldr	r3, [r3]
  3bc414: 334c         	adds	r3, #0x4c
  3bc416: 681c         	ldr	r4, [r3]
  3bc418: 9d01         	ldr	r5, [sp, #0x4]
  3bc41a: ab02         	add	r3, sp, #0x8
  3bc41c: 4618         	mov	r0, r3
  3bc41e: f04f 0100    	mov.w	r1, #0x0
  3bc422: f04f 0200    	mov.w	r2, #0x0
  3bc426: f1d6 fc63    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d68c6
  3bc42a: ab02         	add	r3, sp, #0x8
  3bc42c: 4628         	mov	r0, r5
  3bc42e: 4619         	mov	r1, r3
  3bc430: 47a0         	blx	r4
  3bc432: 9b01         	ldr	r3, [sp, #0x4]
  3bc434: 681b         	ldr	r3, [r3]
  3bc436: 3340         	adds	r3, #0x40
  3bc438: 681b         	ldr	r3, [r3]
  3bc43a: 9a01         	ldr	r2, [sp, #0x4]
  3bc43c: 4610         	mov	r0, r2
  3bc43e: f04f 517e    	mov.w	r1, #0x3f800000
  3bc442: 4798         	blx	r3
  3bc444: 9b01         	ldr	r3, [sp, #0x4]
  3bc446: 681b         	ldr	r3, [r3]
  3bc448: 3398         	adds	r3, #0x98
  3bc44a: 681b         	ldr	r3, [r3]
  3bc44c: 9a01         	ldr	r2, [sp, #0x4]
  3bc44e: 4610         	mov	r0, r2
  3bc450: f04f 0100    	mov.w	r1, #0x0
  3bc454: 4798         	blx	r3
  3bc456: b005         	add	sp, #0x14
  3bc458: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3bc459); words below are literal-pool data ---
  3bc45a: bf00         	nop
  3bc45c: 87c0         	strh	r0, [r0, #0x3e]
  3bc45e: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::setSecondaryConfiguration
//      file offset 0x3bc460 (= ELF address; Ghidra 0x3cc460), 292 bytes, Thumb-2
  3bc460: b530         	push	{r4, r5, lr}
  3bc462: b085         	sub	sp, #0x14
  3bc464: 9001         	str	r0, [sp, #0x4]
  3bc466: 9b01         	ldr	r3, [sp, #0x4]
  3bc468: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc46c: 2b00         	cmp	r3, #0x0
  3bc46e: d019         	beq	0x3bc4a4 <ROCKET::setSecondaryConfiguration()+0x44> @ imm = #0x32
  3bc470: 9b01         	ldr	r3, [sp, #0x4]
  3bc472: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  3bc476: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3bc580 <ROCKET::setSecondaryConfiguration()+0x120>
  3bc478: 447b         	add	r3, pc
  3bc47a: ed93 6b00    	vldr	d6, [r3]
  3bc47e: ed93 7b02    	vldr	d7, [r3, #8]
  3bc482: 4610         	mov	r0, r2
  3bc484: eeb0 0b46    	vmov.f64	d0, d6
  3bc488: eeb0 1b47    	vmov.f64	d1, d7
  3bc48c: f7fe f9be    	bl	0x3ba80c <RIOTSHIELD::setRight(bool)+0x4b4> @ imm = #-0x1c84
  3bc490: 9b01         	ldr	r3, [sp, #0x4]
  3bc492: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  3bc496: 4618         	mov	r0, r3
  3bc498: f04f 0200    	mov.w	r2, #0x0
  3bc49c: f04f 0300    	mov.w	r3, #0x0
  3bc4a0: f316 fe77    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x316cee
  3bc4a4: 9b01         	ldr	r3, [sp, #0x4]
  3bc4a6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc4aa: 681b         	ldr	r3, [r3]
  3bc4ac: 334c         	adds	r3, #0x4c
  3bc4ae: 681c         	ldr	r4, [r3]
  3bc4b0: 9b01         	ldr	r3, [sp, #0x4]
  3bc4b2: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3bc4b6: ab02         	add	r3, sp, #0x8
  3bc4b8: 4618         	mov	r0, r3
  3bc4ba: f04f 0100    	mov.w	r1, #0x0
  3bc4be: f2cc 01a0    	movt	r1, #0xc0a0
  3bc4c2: f04f 0200    	mov.w	r2, #0x0
  3bc4c6: f2cc 1220    	movt	r2, #0xc120
  3bc4ca: f1d6 fc11    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d6822
  3bc4ce: ab02         	add	r3, sp, #0x8
  3bc4d0: 4628         	mov	r0, r5
  3bc4d2: 4619         	mov	r1, r3
  3bc4d4: 47a0         	blx	r4
  3bc4d6: 9b01         	ldr	r3, [sp, #0x4]
  3bc4d8: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc4dc: 681b         	ldr	r3, [r3]
  3bc4de: 337c         	adds	r3, #0x7c
  3bc4e0: 681c         	ldr	r4, [r3]
  3bc4e2: 9b01         	ldr	r3, [sp, #0x4]
  3bc4e4: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3bc4e8: ab02         	add	r3, sp, #0x8
  3bc4ea: 4618         	mov	r0, r3
  3bc4ec: f04f 517c    	mov.w	r1, #0x3f000000
  3bc4f0: f04f 527c    	mov.w	r2, #0x3f000000
  3bc4f4: f1d6 fbfc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d67f8
  3bc4f8: ab02         	add	r3, sp, #0x8
  3bc4fa: 4628         	mov	r0, r5
  3bc4fc: 4619         	mov	r1, r3
  3bc4fe: 47a0         	blx	r4
  3bc500: 9b01         	ldr	r3, [sp, #0x4]
  3bc502: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc506: 681b         	ldr	r3, [r3]
  3bc508: 3398         	adds	r3, #0x98
  3bc50a: 681b         	ldr	r3, [r3]
  3bc50c: 9a01         	ldr	r2, [sp, #0x4]
  3bc50e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bc512: 4610         	mov	r0, r2
  3bc514: f04f 0100    	mov.w	r1, #0x0
  3bc518: 4798         	blx	r3
  3bc51a: 9b01         	ldr	r3, [sp, #0x4]
  3bc51c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc520: 681b         	ldr	r3, [r3]
  3bc522: 3340         	adds	r3, #0x40
  3bc524: 681b         	ldr	r3, [r3]
  3bc526: 9a01         	ldr	r2, [sp, #0x4]
  3bc528: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bc52c: 4610         	mov	r0, r2
  3bc52e: f04f 517e    	mov.w	r1, #0x3f800000
  3bc532: 4798         	blx	r3
  3bc534: 9b01         	ldr	r3, [sp, #0x4]
  3bc536: 681b         	ldr	r3, [r3]
  3bc538: 334c         	adds	r3, #0x4c
  3bc53a: 681c         	ldr	r4, [r3]
  3bc53c: 9d01         	ldr	r5, [sp, #0x4]
  3bc53e: ab02         	add	r3, sp, #0x8
  3bc540: 4618         	mov	r0, r3
  3bc542: f04f 0100    	mov.w	r1, #0x0
  3bc546: f04f 0200    	mov.w	r2, #0x0
  3bc54a: f1d6 fbd1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d67a2
  3bc54e: ab02         	add	r3, sp, #0x8
  3bc550: 4628         	mov	r0, r5
  3bc552: 4619         	mov	r1, r3
  3bc554: 47a0         	blx	r4
  3bc556: 9b01         	ldr	r3, [sp, #0x4]
  3bc558: 681b         	ldr	r3, [r3]
  3bc55a: 3340         	adds	r3, #0x40
  3bc55c: 681b         	ldr	r3, [r3]
  3bc55e: 9a01         	ldr	r2, [sp, #0x4]
  3bc560: 4610         	mov	r0, r2
  3bc562: f04f 517e    	mov.w	r1, #0x3f800000
  3bc566: 4798         	blx	r3
  3bc568: 9b01         	ldr	r3, [sp, #0x4]
  3bc56a: 681b         	ldr	r3, [r3]
  3bc56c: 3398         	adds	r3, #0x98
  3bc56e: 681b         	ldr	r3, [r3]
  3bc570: 9a01         	ldr	r2, [sp, #0x4]
  3bc572: 4610         	mov	r0, r2
  3bc574: f04f 0100    	mov.w	r1, #0x0
  3bc578: 4798         	blx	r3
  3bc57a: b005         	add	sp, #0x14
  3bc57c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3bc57d); words below are literal-pool data ---
  3bc57e: bf00         	nop
  3bc580: 869c         	strh	r4, [r3, #0x34]
  3bc582: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::setMapConfiguration
//      file offset 0x3bc584 (= ELF address; Ghidra 0x3cc584), 188 bytes, Thumb-2
  3bc584: b570         	push	{r4, r5, r6, lr}
  3bc586: b084         	sub	sp, #0x10
  3bc588: 9001         	str	r0, [sp, #0x4]
  3bc58a: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x3bc638 <ROCKET::setMapConfiguration()+0xb4>
  3bc58c: 447c         	add	r4, pc
  3bc58e: 9b01         	ldr	r3, [sp, #0x4]
  3bc590: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc594: 681b         	ldr	r3, [r3]
  3bc596: 334c         	adds	r3, #0x4c
  3bc598: 681d         	ldr	r5, [r3]
  3bc59a: 9b01         	ldr	r3, [sp, #0x4]
  3bc59c: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3bc5a0: ab02         	add	r3, sp, #0x8
  3bc5a2: 4618         	mov	r0, r3
  3bc5a4: f04f 0100    	mov.w	r1, #0x0
  3bc5a8: f04f 0200    	mov.w	r2, #0x0
  3bc5ac: f1d6 fba0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d6740
  3bc5b0: ab02         	add	r3, sp, #0x8
  3bc5b2: 4630         	mov	r0, r6
  3bc5b4: 4619         	mov	r1, r3
  3bc5b6: 47a8         	blx	r5
  3bc5b8: 9b01         	ldr	r3, [sp, #0x4]
  3bc5ba: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc5be: 681b         	ldr	r3, [r3]
  3bc5c0: 337c         	adds	r3, #0x7c
  3bc5c2: 681d         	ldr	r5, [r3]
  3bc5c4: 9b01         	ldr	r3, [sp, #0x4]
  3bc5c6: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3bc5ca: ab02         	add	r3, sp, #0x8
  3bc5cc: 4618         	mov	r0, r3
  3bc5ce: f04f 517c    	mov.w	r1, #0x3f000000
  3bc5d2: f04f 527c    	mov.w	r2, #0x3f000000
  3bc5d6: f1d6 fb8b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d6716
  3bc5da: ab02         	add	r3, sp, #0x8
  3bc5dc: 4630         	mov	r0, r6
  3bc5de: 4619         	mov	r1, r3
  3bc5e0: 47a8         	blx	r5
  3bc5e2: 9b01         	ldr	r3, [sp, #0x4]
  3bc5e4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc5e8: 681b         	ldr	r3, [r3]
  3bc5ea: 3398         	adds	r3, #0x98
  3bc5ec: 681b         	ldr	r3, [r3]
  3bc5ee: 9a01         	ldr	r2, [sp, #0x4]
  3bc5f0: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bc5f4: 4610         	mov	r0, r2
  3bc5f6: f04f 0100    	mov.w	r1, #0x0
  3bc5fa: 4798         	blx	r3
  3bc5fc: 9b01         	ldr	r3, [sp, #0x4]
  3bc5fe: 681b         	ldr	r3, [r3]
  3bc600: 334c         	adds	r3, #0x4c
  3bc602: 681d         	ldr	r5, [r3]
  3bc604: 9e01         	ldr	r6, [sp, #0x4]
  3bc606: ab02         	add	r3, sp, #0x8
  3bc608: 4618         	mov	r0, r3
  3bc60a: f04f 0100    	mov.w	r1, #0x0
  3bc60e: f04f 0200    	mov.w	r2, #0x0
  3bc612: f1d6 fb6d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d66da
  3bc616: ab02         	add	r3, sp, #0x8
  3bc618: 4630         	mov	r0, r6
  3bc61a: 4619         	mov	r1, r3
  3bc61c: 47a8         	blx	r5
  3bc61e: 9b01         	ldr	r3, [sp, #0x4]
  3bc620: 681b         	ldr	r3, [r3]
  3bc622: 3340         	adds	r3, #0x40
  3bc624: 681b         	ldr	r3, [r3]
  3bc626: 9901         	ldr	r1, [sp, #0x4]
  3bc628: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3bc63c <ROCKET::setMapConfiguration()+0xb8>
  3bc62a: 58a2         	ldr	r2, [r4, r2]
  3bc62c: 6812         	ldr	r2, [r2]
  3bc62e: 4608         	mov	r0, r1
  3bc630: 4611         	mov	r1, r2
  3bc632: 4798         	blx	r3
  3bc634: b004         	add	sp, #0x10
  3bc636: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3bc637); words below are literal-pool data ---
  3bc638: 647c         	str	r4, [r7, #0x44]
  3bc63a: 0057         	lsls	r7, r2, #0x1
  3bc63c: d748         	bvc	0x3bc6d0 <ROCKET::removeWeapon()+0x44> @ imm = #0x90
  3bc63e: ffff b500    	<unknown>

// ==== ROCKET::isRight
//      file offset 0x3bc640 (= ELF address; Ghidra 0x3cc640), 60 bytes, Thumb-2
  3bc640: b500         	push	{lr}
  3bc642: b083         	sub	sp, #0xc
  3bc644: 9001         	str	r0, [sp, #0x4]
  3bc646: 9b01         	ldr	r3, [sp, #0x4]
  3bc648: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3bc64c: 681b         	ldr	r3, [r3]
  3bc64e: 3334         	adds	r3, #0x34
  3bc650: 681b         	ldr	r3, [r3]
  3bc652: 9a01         	ldr	r2, [sp, #0x4]
  3bc654: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3bc658: 4610         	mov	r0, r2
  3bc65a: 4798         	blx	r3
  3bc65c: ee07 0a10    	vmov	s14, r0
  3bc660: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3bc664: eeb4 7ae7    	vcmpe.f32	s14, s15
  3bc668: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bc66c: bfd4         	ite	le
  3bc66e: 2300         	movle	r3, #0x0
  3bc670: 2301         	movgt	r3, #0x1
  3bc672: b2db         	uxtb	r3, r3
  3bc674: 4618         	mov	r0, r3
  3bc676: b003         	add	sp, #0xc
  3bc678: f85d fb04    	ldr	pc, [sp], #4

// ==== ROCKET::setRight
//      file offset 0x3bc67c (= ELF address; Ghidra 0x3cc67c), 14 bytes, Thumb-2
  3bc67c: b082         	sub	sp, #0x8
  3bc67e: 9001         	str	r0, [sp, #0x4]
  3bc680: 460b         	mov	r3, r1
  3bc682: f88d 3003    	strb.w	r3, [sp, #0x3]
  3bc686: b002         	add	sp, #0x8
  3bc688: 4770         	bx	lr

// ==== ROCKET::removeWeapon
//      file offset 0x3bc68c (= ELF address; Ghidra 0x3cc68c), 84 bytes, Thumb-2
  3bc68c: b500         	push	{lr}
  3bc68e: b085         	sub	sp, #0x14
  3bc690: 9001         	str	r0, [sp, #0x4]
  3bc692: 4910         	ldr	r1, [pc, #0x40]         @ 0x3bc6d4 <ROCKET::removeWeapon()+0x48>
  3bc694: 4479         	add	r1, pc
  3bc696: 9b01         	ldr	r3, [sp, #0x4]
  3bc698: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x3bc6d8 <ROCKET::removeWeapon()+0x4c>
  3bc69a: 588a         	ldr	r2, [r1, r2]
  3bc69c: 9202         	str	r2, [sp, #0x8]
  3bc69e: 2200         	movs	r2, #0x0
  3bc6a0: 9203         	str	r2, [sp, #0xc]
  3bc6a2: 4618         	mov	r0, r3
  3bc6a4: ab02         	add	r3, sp, #0x8
  3bc6a6: e893 0006    	ldm.w	r3, {r1, r2}
  3bc6aa: f64c 43cd    	movw	r3, #0xcccd
  3bc6ae: f6c3 53cc    	movt	r3, #0x3dcc
  3bc6b2: f1d4 fdef    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1d4bde
  3bc6b6: f223 fffb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x223ff6
  3bc6ba: 4602         	mov	r2, r0
  3bc6bc: 9b01         	ldr	r3, [sp, #0x4]
  3bc6be: 4610         	mov	r0, r2
  3bc6c0: 4a06         	ldr	r2, [pc, #0x18]         @ 0x3bc6dc <ROCKET::removeWeapon()+0x50>
  3bc6c2: 447a         	add	r2, pc
  3bc6c4: 4611         	mov	r1, r2
  3bc6c6: 461a         	mov	r2, r3
  3bc6c8: f224 fa30    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x224460
  3bc6cc: b005         	add	sp, #0x14
  3bc6ce: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bc6d1); words below are literal-pool data ---
  3bc6d2: bf00         	nop
  3bc6d4: 6374         	str	r4, [r6, #0x34]
  3bc6d6: 0057         	lsls	r7, r2, #0x1
  3bc6d8: de2c         	udf	#0x2c
  3bc6da: ffff 83d6    	vrsra.u64	q12, q3, #0x1
  3bc6de: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::delayedRemoveWeapon
//      file offset 0x3bc6e0 (= ELF address; Ghidra 0x3cc6e0), 40 bytes, Thumb-2
  3bc6e0: b500         	push	{lr}
  3bc6e2: b083         	sub	sp, #0xc
  3bc6e4: 9001         	str	r0, [sp, #0x4]
  3bc6e6: f223 ffe3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x223fc6
  3bc6ea: 4602         	mov	r2, r0
  3bc6ec: 9b01         	ldr	r3, [sp, #0x4]
  3bc6ee: 4610         	mov	r0, r2
  3bc6f0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3bc704 <ROCKET::delayedRemoveWeapon()+0x24>
  3bc6f2: 447a         	add	r2, pc
  3bc6f4: 4611         	mov	r1, r2
  3bc6f6: 461a         	mov	r2, r3
  3bc6f8: f224 fa18    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x224430
  3bc6fc: b003         	add	sp, #0xc
  3bc6fe: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bc701); words below are literal-pool data ---
  3bc702: bf00         	nop
  3bc704: 83b6         	strh	r6, [r6, #0x1c]
  3bc706: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::detonate
//      file offset 0x3bc708 (= ELF address; Ghidra 0x3cc708), 64 bytes, Thumb-2
  3bc708: b500         	push	{lr}
  3bc70a: b083         	sub	sp, #0xc
  3bc70c: 9001         	str	r0, [sp, #0x4]
  3bc70e: 9100         	str	r1, [sp]
  3bc710: f223 ffce    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x223f9c
  3bc714: 4603         	mov	r3, r0
  3bc716: 4618         	mov	r0, r3
  3bc718: 4b09         	ldr	r3, [pc, #0x24]         @ 0x3bc740 <ROCKET::detonate(cocos2d::CCObject*)+0x38>
  3bc71a: 447b         	add	r3, pc
  3bc71c: 4619         	mov	r1, r3
  3bc71e: 9a00         	ldr	r2, [sp]
  3bc720: f224 fa04    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x224408
  3bc724: f223 ffc4    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x223f88
  3bc728: 4603         	mov	r3, r0
  3bc72a: 4618         	mov	r0, r3
  3bc72c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x3bc744 <ROCKET::detonate(cocos2d::CCObject*)+0x3c>
  3bc72e: 447b         	add	r3, pc
  3bc730: 4619         	mov	r1, r3
  3bc732: 9a00         	ldr	r2, [sp]
  3bc734: f224 f9fa    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2243f4
  3bc738: b003         	add	sp, #0xc
  3bc73a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bc73d); words below are literal-pool data ---
  3bc73e: bf00         	nop
  3bc740: 839e         	strh	r6, [r3, #0x1c]
  3bc742: 0041         	lsls	r1, r0, #0x1
  3bc744: 839a         	strh	r2, [r3, #0x1c]
  3bc746: 0041         	lsls	r1, r0, #0x1

// ==== ROCKET::create
//      file offset 0x41763c (= ELF address; Ghidra 0x42763c), 112 bytes, Thumb-2
  41763c: b510         	push	{r4, lr}
  41763e: b082         	sub	sp, #0x8
  417640: f44f 7002    	mov.w	r0, #0x208
  417644: f370 f98e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37031c
  417648: 4603         	mov	r3, r0
  41764a: 461c         	mov	r4, r3
  41764c: 4620         	mov	r0, r4
  41764e: f7a4 f88f    	bl	0x3bb770 <ROCKET::ROCKET()> @ imm = #-0x5bee2
  417652: 9401         	str	r4, [sp, #0x4]
  417654: 9b01         	ldr	r3, [sp, #0x4]
  417656: 2b00         	cmp	r3, #0x0
  417658: d00a         	beq	0x417670 <ROCKET::create()+0x34> @ imm = #0x14
  41765a: 9b01         	ldr	r3, [sp, #0x4]
  41765c: 681b         	ldr	r3, [r3]
  41765e: 3318         	adds	r3, #0x18
  417660: 681b         	ldr	r3, [r3]
  417662: 9801         	ldr	r0, [sp, #0x4]
  417664: 4798         	blx	r3
  417666: 4603         	mov	r3, r0
  417668: 2b00         	cmp	r3, #0x0
  41766a: d001         	beq	0x417670 <ROCKET::create()+0x34> @ imm = #0x2
  41766c: 2301         	movs	r3, #0x1
  41766e: e000         	b	0x417672 <ROCKET::create()+0x36> @ imm = #0x0
  417670: 2300         	movs	r3, #0x0
  417672: 2b00         	cmp	r3, #0x0
  417674: d005         	beq	0x417682 <ROCKET::create()+0x46> @ imm = #0xa
  417676: 9b01         	ldr	r3, [sp, #0x4]
  417678: 4618         	mov	r0, r3
  41767a: f180 fc3f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x18087e
  41767e: 9b01         	ldr	r3, [sp, #0x4]
  417680: e011         	b	0x4176a6 <ROCKET::create()+0x6a> @ imm = #0x22
  417682: 9b01         	ldr	r3, [sp, #0x4]
  417684: 2b00         	cmp	r3, #0x0
  417686: d005         	beq	0x417694 <ROCKET::create()+0x58> @ imm = #0xa
  417688: 9b01         	ldr	r3, [sp, #0x4]
  41768a: 681b         	ldr	r3, [r3]
  41768c: 3308         	adds	r3, #0x8
  41768e: 681b         	ldr	r3, [r3]
  417690: 9801         	ldr	r0, [sp, #0x4]
  417692: 4798         	blx	r3
  417694: 2300         	movs	r3, #0x0
  417696: 9301         	str	r3, [sp, #0x4]
  417698: 2300         	movs	r3, #0x0
  41769a: e004         	b	0x4176a6 <ROCKET::create()+0x6a> @ imm = #0x8
  41769c: 4620         	mov	r0, r4
  41769e: f370 fd01    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370a02
  4176a2: f370 fd03    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370a06
  4176a6: 4618         	mov	r0, r3
  4176a8: b002         	add	sp, #0x8
  4176aa: bd10         	pop	{r4, pc}
