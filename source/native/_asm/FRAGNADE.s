// FRAGNADE: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 19 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../FRAGNADE.cpp

// ==== FRAGNADE::FRAGNADE
//      file offset 0x3225b0 (= ELF address; Ghidra 0x3325b0), 44 bytes, Thumb-2
  3225b0: b510         	push	{r4, lr}
  3225b2: b082         	sub	sp, #0x8
  3225b4: 9001         	str	r0, [sp, #0x4]
  3225b6: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x3225d4 <FRAGNADE::FRAGNADE()+0x24>
  3225b8: 447c         	add	r4, pc
  3225ba: 9b01         	ldr	r3, [sp, #0x4]
  3225bc: 4618         	mov	r0, r3
  3225be: f0f2 fcf3    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xf29e6
  3225c2: 9b01         	ldr	r3, [sp, #0x4]
  3225c4: 4a04         	ldr	r2, [pc, #0x10]         @ 0x3225d8 <FRAGNADE::FRAGNADE()+0x28>
  3225c6: 58a2         	ldr	r2, [r4, r2]
  3225c8: 3208         	adds	r2, #0x8
  3225ca: 601a         	str	r2, [r3]
  3225cc: 9b01         	ldr	r3, [sp, #0x4]
  3225ce: 4618         	mov	r0, r3
  3225d0: b002         	add	sp, #0x8
  3225d2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3225d3); words below are literal-pool data ---
  3225d4: 0450         	lsls	r0, r2, #0x11
  3225d6: 0061         	lsls	r1, r4, #0x1
  3225d8: da2c         	bge	0x322634 <FRAGNADE::init()+0x58> @ imm = #0x58
  3225da: ffff b500    	<unknown>

// ==== FRAGNADE::init
//      file offset 0x3225dc (= ELF address; Ghidra 0x3325dc), 164 bytes, Thumb-2
  3225dc: b500         	push	{lr}
  3225de: b085         	sub	sp, #0x14
  3225e0: 9001         	str	r0, [sp, #0x4]
  3225e2: 9b01         	ldr	r3, [sp, #0x4]
  3225e4: 4618         	mov	r0, r3
  3225e6: f0f2 fd03    	bl	0x414ff0 <Weapon::init()> @ imm = #0xf2a06
  3225ea: 4603         	mov	r3, r0
  3225ec: f88d 300f    	strb.w	r3, [sp, #0xf]
  3225f0: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  3225f4: f083 0301    	eor	r3, r3, #0x1
  3225f8: b2db         	uxtb	r3, r3
  3225fa: 2b00         	cmp	r3, #0x0
  3225fc: d001         	beq	0x322602 <FRAGNADE::init()+0x26> @ imm = #0x2
  3225fe: 2300         	movs	r3, #0x0
  322600: e037         	b	0x322672 <FRAGNADE::init()+0x96> @ imm = #0x6e
  322602: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x32267c <FRAGNADE::init()+0xa0>
  322604: 447b         	add	r3, pc
  322606: 4618         	mov	r0, r3
  322608: f2b5 fe7c    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2b5cf8
  32260c: 4602         	mov	r2, r0
  32260e: 9b01         	ldr	r3, [sp, #0x4]
  322610: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  322614: 9b01         	ldr	r3, [sp, #0x4]
  322616: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  32261a: 4618         	mov	r0, r3
  32261c: f275 fc64    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2758c8
  322620: 9b01         	ldr	r3, [sp, #0x4]
  322622: 681b         	ldr	r3, [r3]
  322624: f503 73f0    	add.w	r3, r3, #0x1e0
  322628: 681b         	ldr	r3, [r3]
  32262a: 9801         	ldr	r0, [sp, #0x4]
  32262c: 4798         	blx	r3
  32262e: 9b01         	ldr	r3, [sp, #0x4]
  322630: 2200         	movs	r2, #0x0
  322632: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  322636: 9b01         	ldr	r3, [sp, #0x4]
  322638: 2202         	movs	r2, #0x2
  32263a: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  32263e: 9b01         	ldr	r3, [sp, #0x4]
  322640: 2205         	movs	r2, #0x5
  322642: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  322646: 9b01         	ldr	r3, [sp, #0x4]
  322648: 681b         	ldr	r3, [r3]
  32264a: 33cc         	adds	r3, #0xcc
  32264c: 681b         	ldr	r3, [r3]
  32264e: 9901         	ldr	r1, [sp, #0x4]
  322650: 9a01         	ldr	r2, [sp, #0x4]
  322652: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322656: 4608         	mov	r0, r1
  322658: 4611         	mov	r1, r2
  32265a: 2200         	movs	r2, #0x0
  32265c: 4798         	blx	r3
  32265e: 9b01         	ldr	r3, [sp, #0x4]
  322660: 2202         	movs	r2, #0x2
  322662: f8c3 2188    	str.w	r2, [r3, #0x188]
  322666: 9b01         	ldr	r3, [sp, #0x4]
  322668: f04f 0200    	mov.w	r2, #0x0
  32266c: f8c3 2110    	str.w	r2, [r3, #0x110]
  322670: 2301         	movs	r3, #0x1
  322672: 4618         	mov	r0, r3
  322674: b005         	add	sp, #0x14
  322676: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x322679); words below are literal-pool data ---
  32267a: bf00         	nop
  32267c: 53c0         	strh	r0, [r0, r7]
  32267e: 004a         	lsls	r2, r1, #0x1

// ==== FRAGNADE::~FRAGNADE
//      file offset 0x322680 (= ELF address; Ghidra 0x332680), 132 bytes, Thumb-2
  322680: b500         	push	{lr}
  322682: b083         	sub	sp, #0xc
  322684: 9001         	str	r0, [sp, #0x4]
  322686: 491d         	ldr	r1, [pc, #0x74]         @ 0x3226fc <FRAGNADE::~FRAGNADE()+0x7c>
  322688: 4479         	add	r1, pc
  32268a: 9b01         	ldr	r3, [sp, #0x4]
  32268c: 4a1c         	ldr	r2, [pc, #0x70]         @ 0x322700 <FRAGNADE::~FRAGNADE()+0x80>
  32268e: 588a         	ldr	r2, [r1, r2]
  322690: 3208         	adds	r2, #0x8
  322692: 601a         	str	r2, [r3]
  322694: 9b01         	ldr	r3, [sp, #0x4]
  322696: 4618         	mov	r0, r3
  322698: f26e fe2e    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x26ec5c
  32269c: 9b01         	ldr	r3, [sp, #0x4]
  32269e: 4618         	mov	r0, r3
  3226a0: f26d ffc4    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x26df88
  3226a4: 9b01         	ldr	r3, [sp, #0x4]
  3226a6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3226aa: 4618         	mov	r0, r3
  3226ac: f275 fc04    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x275808
  3226b0: 9b01         	ldr	r3, [sp, #0x4]
  3226b2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3226b6: 2b00         	cmp	r3, #0x0
  3226b8: d010         	beq	0x3226dc <FRAGNADE::~FRAGNADE()+0x5c> @ imm = #0x20
  3226ba: 9b01         	ldr	r3, [sp, #0x4]
  3226bc: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3226c0: 681b         	ldr	r3, [r3]
  3226c2: 33e8         	adds	r3, #0xe8
  3226c4: 681b         	ldr	r3, [r3]
  3226c6: 9a01         	ldr	r2, [sp, #0x4]
  3226c8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  3226cc: 4610         	mov	r0, r2
  3226ce: 4798         	blx	r3
  3226d0: 9b01         	ldr	r3, [sp, #0x4]
  3226d2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3226d6: 4618         	mov	r0, r3
  3226d8: f275 fbee    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x2757dc
  3226dc: 9b01         	ldr	r3, [sp, #0x4]
  3226de: 4618         	mov	r0, r3
  3226e0: f0f2 fd86    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xf2b0c
  3226e4: 2300         	movs	r3, #0x0
  3226e6: 2b00         	cmp	r3, #0x0
  3226e8: d002         	beq	0x3226f0 <FRAGNADE::~FRAGNADE()+0x70> @ imm = #0x4
  3226ea: 9801         	ldr	r0, [sp, #0x4]
  3226ec: f065 f4da    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4659b4
  3226f0: 9b01         	ldr	r3, [sp, #0x4]
  3226f2: 4618         	mov	r0, r3
  3226f4: b003         	add	sp, #0xc
  3226f6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3226f9); words below are literal-pool data ---
  3226fa: bf00         	nop
  3226fc: 0380         	lsls	r0, r0, #0xe
  3226fe: 0061         	lsls	r1, r4, #0x1
  322700: da2c         	bge	0x32275c <FRAGNADE::initBody()+0x3c> @ imm = #0x58
  322702: ffff b500    	<unknown>

// ==== FRAGNADE::~FRAGNADE
//      file offset 0x322704 (= ELF address; Ghidra 0x332704), 28 bytes, Thumb-2
  322704: b500         	push	{lr}
  322706: b083         	sub	sp, #0xc
  322708: 9001         	str	r0, [sp, #0x4]
  32270a: 9801         	ldr	r0, [sp, #0x4]
  32270c: f7ff ffb8    	bl	0x322680 <FRAGNADE::~FRAGNADE()> @ imm = #-0x90
  322710: 9801         	ldr	r0, [sp, #0x4]
  322712: f065 f4c7    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46598e
  322716: 9b01         	ldr	r3, [sp, #0x4]
  322718: 4618         	mov	r0, r3
  32271a: b003         	add	sp, #0xc
  32271c: f85d fb04    	ldr	pc, [sp], #4

// ==== FRAGNADE::initBody
//      file offset 0x322720 (= ELF address; Ghidra 0x332720), 332 bytes, Thumb-2
  322720: b530         	push	{r4, r5, lr}
  322722: b099         	sub	sp, #0x64
  322724: 900d         	str	r0, [sp, #0x34]
  322726: f64c 43cd    	movw	r3, #0xcccd
  32272a: f6c3 53cc    	movt	r3, #0x3dcc
  32272e: 930f         	str	r3, [sp, #0x3c]
  322730: eddd 7a0f    	vldr	s15, [sp, #60]
  322734: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  322738: ec51 0b17    	vmov	r0, r1, d7
  32273c: f04f 0200    	mov.w	r2, #0x0
  322740: f04f 0300    	mov.w	r3, #0x0
  322744: f2c4 0320    	movt	r3, #0x4020
  322748: f3b0 fd80    	bl	0x6d324c <cpBodyNew>    @ imm = #0x3b0b00
  32274c: 4602         	mov	r2, r0
  32274e: 9b0d         	ldr	r3, [sp, #0x34]
  322750: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  322754: 9b0d         	ldr	r3, [sp, #0x34]
  322756: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  32275a: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x322868 <FRAGNADE::initBody()+0x148>
  32275c: 447a         	add	r2, pc
  32275e: 601a         	str	r2, [r3]
  322760: 9b0d         	ldr	r3, [sp, #0x34]
  322762: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  322766: 9a0d         	ldr	r2, [sp, #0x34]
  322768: f8c3 2090    	str.w	r2, [r3, #0x90]
  32276c: 990d         	ldr	r1, [sp, #0x34]
  32276e: a338         	adr	r3, #224 <FRAGNADE::initBody()+0x8a>
  322770: e9d3 2300    	ldrd	r2, r3, [r3]
  322774: e9c1 233c    	strd	r2, r3, [r1, #240]
  322778: 9c0d         	ldr	r4, [sp, #0x34]
  32277a: ab08         	add	r3, sp, #0x20
  32277c: 4618         	mov	r0, r3
  32277e: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x322840 <FRAGNADE::initBody()+0x120>
  322782: ed9f 1b31    	vldr	d1, [pc, #196]          @ 0x322848 <FRAGNADE::initBody()+0x128>
  322786: f7fe fe89    	bl	0x32149c <FLAMETHROWER::setRight(bool)+0x258> @ imm = #-0x12ee
  32278a: 34f8         	adds	r4, #0xf8
  32278c: ab08         	add	r3, sp, #0x20
  32278e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  322790: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  322794: 9b0d         	ldr	r3, [sp, #0x34]
  322796: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  32279a: ab10         	add	r3, sp, #0x40
  32279c: 4618         	mov	r0, r3
  32279e: ed9f 0b28    	vldr	d0, [pc, #160]          @ 0x322840 <FRAGNADE::initBody()+0x120>
  3227a2: eeb8 1b08    	vmov.f64	d1, #-3.000000e+00
  3227a6: f7fe fe79    	bl	0x32149c <FLAMETHROWER::setRight(bool)+0x258> @ imm = #-0x130e
  3227aa: ab14         	add	r3, sp, #0x50
  3227ac: 4618         	mov	r0, r3
  3227ae: ed9f 0b24    	vldr	d0, [pc, #144]          @ 0x322840 <FRAGNADE::initBody()+0x120>
  3227b2: eeb0 1b08    	vmov.f64	d1, #3.000000e+00
  3227b6: f7fe fe71    	bl	0x32149c <FLAMETHROWER::setRight(bool)+0x258> @ imm = #-0x131e
  3227ba: ac02         	add	r4, sp, #0x8
  3227bc: ab14         	add	r3, sp, #0x50
  3227be: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3227c0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  3227c4: f04f 0200    	mov.w	r2, #0x0
  3227c8: f04f 0300    	mov.w	r3, #0x0
  3227cc: f2c4 0308    	movt	r3, #0x4008
  3227d0: e9cd 2306    	strd	r2, r3, [sp, #24]
  3227d4: 466b         	mov	r3, sp
  3227d6: aa12         	add	r2, sp, #0x48
  3227d8: e892 0003    	ldm.w	r2, {r0, r1}
  3227dc: e883 0003    	stm.w	r3, {r0, r1}
  3227e0: ab10         	add	r3, sp, #0x40
  3227e2: cb0c         	ldm	r3, {r2, r3}
  3227e4: 4628         	mov	r0, r5
  3227e6: f3b2 fd29    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x3b2a52
  3227ea: 4602         	mov	r2, r0
  3227ec: 9b0d         	ldr	r3, [sp, #0x34]
  3227ee: f8c3 20ec    	str.w	r2, [r3, #0xec]
  3227f2: 9b0d         	ldr	r3, [sp, #0x34]
  3227f4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  3227f8: 2202         	movs	r2, #0x2
  3227fa: 655a         	str	r2, [r3, #0x54]
  3227fc: 9b0d         	ldr	r3, [sp, #0x34]
  3227fe: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  322802: 2202         	movs	r2, #0x2
  322804: 65da         	str	r2, [r3, #0x5c]
  322806: 9b0d         	ldr	r3, [sp, #0x34]
  322808: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  32280c: 2202         	movs	r2, #0x2
  32280e: 659a         	str	r2, [r3, #0x58]
  322810: 9b0d         	ldr	r3, [sp, #0x34]
  322812: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  322816: a310         	adr	r3, #64 <FRAGNADE::initBody()+0x10a>
  322818: e9d3 2300    	ldrd	r2, r3, [r3]
  32281c: e9c1 230c    	strd	r2, r3, [r1, #48]
  322820: 9b0d         	ldr	r3, [sp, #0x34]
  322822: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  322826: a30e         	adr	r3, #56 <FRAGNADE::initBody()+0x118>
  322828: e9d3 2300    	ldrd	r2, r3, [r3]
  32282c: e9c1 230e    	strd	r2, r3, [r1, #56]
  322830: 9b0d         	ldr	r3, [sp, #0x34]
  322832: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  322836: 9a0d         	ldr	r2, [sp, #0x34]
  322838: 651a         	str	r2, [r3, #0x50]
  32283a: b019         	add	sp, #0x64
  32283c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x32283d); words below are literal-pool data ---
  32283e: bf00         	nop
  32284c: 4000         	ands	r0, r0
  32284e: c06f         	stm	r0!, {r0, r1, r2, r3, r5, r6}
  322850: 47ae         	<unknown>
  322852: 7ae1         	ldrb	r1, [r4, #0xb]
  322854: ae14         	add	r6, sp, #0x50
  322856: 3fef         	subs	r7, #0xef
  322858: 0000         	movs	r0, r0
  32285a: a000         	adr	r0, #0 <FRAGNADE::initBody()+0x13e>
  32285c: 9999         	ldr	r1, [sp, #0x264]
  32285e: 3fb9         	subs	r7, #0xb9
  322860: 0000         	movs	r0, r0
  322862: 8000         	strh	r0, [r0]
  322864: ae14         	add	r6, sp, #0x50
  322866: 3fef         	subs	r7, #0xef
  322868: fcc5 ffff    	stc2l	p15, c15, [r5], {255}

// ==== FRAGNADE::updateRemoteWeaponStep
//      file offset 0x322870 (= ELF address; Ghidra 0x332870), 40 bytes, Thumb-2
  322870: b500         	push	{lr}
  322872: b083         	sub	sp, #0xc
  322874: 9001         	str	r0, [sp, #0x4]
  322876: 9100         	str	r1, [sp]
  322878: 9b01         	ldr	r3, [sp, #0x4]
  32287a: 4618         	mov	r0, r3
  32287c: 9900         	ldr	r1, [sp]
  32287e: f0f2 fdaf    	bl	0x4153e0 <Weapon::updateRemoteWeaponStep(float)> @ imm = #0xf2b5e
  322882: 9b01         	ldr	r3, [sp, #0x4]
  322884: 681b         	ldr	r3, [r3]
  322886: f503 73da    	add.w	r3, r3, #0x1b4
  32288a: 681b         	ldr	r3, [r3]
  32288c: 9801         	ldr	r0, [sp, #0x4]
  32288e: 9900         	ldr	r1, [sp]
  322890: 4798         	blx	r3
  322892: b003         	add	sp, #0xc
  322894: f85d fb04    	ldr	pc, [sp], #4

// ==== FRAGNADE::updateItemStep
//      file offset 0x322898 (= ELF address; Ghidra 0x332898), 336 bytes, Thumb-2
  322898: b530         	push	{r4, r5, lr}
  32289a: b087         	sub	sp, #0x1c
  32289c: 9003         	str	r0, [sp, #0xc]
  32289e: 9102         	str	r1, [sp, #0x8]
  3228a0: 4c4e         	ldr	r4, [pc, #0x138]        @ 0x3229dc <FRAGNADE::updateItemStep(float)+0x144>
  3228a2: 447c         	add	r4, pc
  3228a4: 9b03         	ldr	r3, [sp, #0xc]
  3228a6: f04f 0200    	mov.w	r2, #0x0
  3228aa: f8c3 2118    	str.w	r2, [r3, #0x118]
  3228ae: 9b03         	ldr	r3, [sp, #0xc]
  3228b0: f04f 0200    	mov.w	r2, #0x0
  3228b4: f8c3 211c    	str.w	r2, [r3, #0x11c]
  3228b8: 9b03         	ldr	r3, [sp, #0xc]
  3228ba: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  3228be: 2b00         	cmp	r3, #0x0
  3228c0: d000         	beq	0x3228c4 <FRAGNADE::updateItemStep(float)+0x2c> @ imm = #0x0
  3228c2: e088         	b	0x3229d6 <FRAGNADE::updateItemStep(float)+0x13e> @ imm = #0x110
  3228c4: 9b03         	ldr	r3, [sp, #0xc]
  3228c6: 681b         	ldr	r3, [r3]
  3228c8: f503 73ce    	add.w	r3, r3, #0x19c
  3228cc: 681b         	ldr	r3, [r3]
  3228ce: 9a03         	ldr	r2, [sp, #0xc]
  3228d0: 4610         	mov	r0, r2
  3228d2: 4798         	blx	r3
  3228d4: 4603         	mov	r3, r0
  3228d6: f083 0301    	eor	r3, r3, #0x1
  3228da: b2db         	uxtb	r3, r3
  3228dc: 2b00         	cmp	r3, #0x0
  3228de: d06c         	beq	0x3229ba <FRAGNADE::updateItemStep(float)+0x122> @ imm = #0xd8
  3228e0: 9b03         	ldr	r3, [sp, #0xc]
  3228e2: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  3228e6: 2b00         	cmp	r3, #0x0
  3228e8: d139         	bne	0x32295e <FRAGNADE::updateItemStep(float)+0xc6> @ imm = #0x72
  3228ea: 20ff         	movs	r0, #0xff
  3228ec: 21ff         	movs	r1, #0xff
  3228ee: 22ff         	movs	r2, #0xff
  3228f0: f7fe fd54    	bl	0x32139c <FLAMETHROWER::setRight(bool)+0x158> @ imm = #-0x1558
  3228f4: 4603         	mov	r3, r0
  3228f6: 461a         	mov	r2, r3
  3228f8: f88d 2014    	strb.w	r2, [sp, #0x14]
  3228fc: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  322900: f88d 2015    	strb.w	r2, [sp, #0x15]
  322904: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  322908: f88d 3016    	strb.w	r3, [sp, #0x16]
  32290c: ab05         	add	r3, sp, #0x14
  32290e: 4a34         	ldr	r2, [pc, #0xd0]         @ 0x3229e0 <FRAGNADE::updateItemStep(float)+0x148>
  322910: 447a         	add	r2, pc
  322912: 9200         	str	r2, [sp]
  322914: f04f 507c    	mov.w	r0, #0x3f000000
  322918: f04f 517e    	mov.w	r1, #0x3f800000
  32291c: f04f 0200    	mov.w	r2, #0x0
  322920: f2c4 0240    	movt	r2, #0x4040
  322924: f297 fa06    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x29740c
  322928: 4602         	mov	r2, r0
  32292a: 9b03         	ldr	r3, [sp, #0xc]
  32292c: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  322930: 9b03         	ldr	r3, [sp, #0xc]
  322932: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  322936: 4618         	mov	r0, r3
  322938: f275 fad6    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2755ac
  32293c: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x3229e4 <FRAGNADE::updateItemStep(float)+0x14c>
  32293e: 58e3         	ldr	r3, [r4, r3]
  322940: 681b         	ldr	r3, [r3]
  322942: 681b         	ldr	r3, [r3]
  322944: 33cc         	adds	r3, #0xcc
  322946: 681b         	ldr	r3, [r3]
  322948: 4a26         	ldr	r2, [pc, #0x98]         @ 0x3229e4 <FRAGNADE::updateItemStep(float)+0x14c>
  32294a: 58a2         	ldr	r2, [r4, r2]
  32294c: 6812         	ldr	r2, [r2]
  32294e: 4611         	mov	r1, r2
  322950: 9a03         	ldr	r2, [sp, #0xc]
  322952: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  322956: 4608         	mov	r0, r1
  322958: 4611         	mov	r1, r2
  32295a: 2203         	movs	r2, #0x3
  32295c: 4798         	blx	r3
  32295e: 9b03         	ldr	r3, [sp, #0xc]
  322960: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  322964: 681b         	ldr	r3, [r3]
  322966: f503 73f2    	add.w	r3, r3, #0x1e4
  32296a: 681b         	ldr	r3, [r3]
  32296c: 9a03         	ldr	r2, [sp, #0xc]
  32296e: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  322972: 4610         	mov	r0, r2
  322974: f04f 0100    	mov.w	r1, #0x0
  322978: f2c4 0140    	movt	r1, #0x4040
  32297c: 4798         	blx	r3
  32297e: 9b03         	ldr	r3, [sp, #0xc]
  322980: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  322984: 681b         	ldr	r3, [r3]
  322986: 334c         	adds	r3, #0x4c
  322988: 681c         	ldr	r4, [r3]
  32298a: 9b03         	ldr	r3, [sp, #0xc]
  32298c: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  322990: 9b03         	ldr	r3, [sp, #0xc]
  322992: 681b         	ldr	r3, [r3]
  322994: 3350         	adds	r3, #0x50
  322996: 681b         	ldr	r3, [r3]
  322998: 9a03         	ldr	r2, [sp, #0xc]
  32299a: 4610         	mov	r0, r2
  32299c: 4798         	blx	r3
  32299e: 4603         	mov	r3, r0
  3229a0: 4628         	mov	r0, r5
  3229a2: 4619         	mov	r1, r3
  3229a4: 47a0         	blx	r4
  3229a6: 9b03         	ldr	r3, [sp, #0xc]
  3229a8: ed93 7a44    	vldr	s14, [r3, #272]
  3229ac: eddd 7a02    	vldr	s15, [sp, #8]
  3229b0: ee77 7a27    	vadd.f32	s15, s14, s15
  3229b4: 9b03         	ldr	r3, [sp, #0xc]
  3229b6: edc3 7a44    	vstr	s15, [r3, #272]
  3229ba: 9b03         	ldr	r3, [sp, #0xc]
  3229bc: ed93 7a44    	vldr	s14, [r3, #272]
  3229c0: eef7 7a0c    	vmov.f32	s15, #1.750000e+00
  3229c4: eeb4 7ae7    	vcmpe.f32	s14, s15
  3229c8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3229cc: dd03         	ble	0x3229d6 <FRAGNADE::updateItemStep(float)+0x13e> @ imm = #0x6
  3229ce: 9b03         	ldr	r3, [sp, #0xc]
  3229d0: 2201         	movs	r2, #0x1
  3229d2: f883 20e5    	strb.w	r2, [r3, #0xe5]
  3229d6: b007         	add	sp, #0x1c
  3229d8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3229d9); words below are literal-pool data ---
  3229da: bf00         	nop
  3229dc: 0166         	lsls	r6, r4, #0x5
  3229de: 0061         	lsls	r1, r4, #0x1
  3229e0: 50c0         	str	r0, [r0, r3]
  3229e2: 004a         	lsls	r2, r1, #0x1
  3229e4: d744         	bvc	0x322a70 <FRAGNADE::setContact(bool, std::string, int)+0x88> @ imm = #0x88
  3229e6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== FRAGNADE::setContact
//      file offset 0x3229e8 (= ELF address; Ghidra 0x3329e8), 204 bytes, Thumb-2
  3229e8: b530         	push	{r4, r5, lr}
  3229ea: b087         	sub	sp, #0x1c
  3229ec: 9005         	str	r0, [sp, #0x14]
  3229ee: 9203         	str	r2, [sp, #0xc]
  3229f0: 9302         	str	r3, [sp, #0x8]
  3229f2: 460b         	mov	r3, r1
  3229f4: f88d 3013    	strb.w	r3, [sp, #0x13]
  3229f8: 4c2c         	ldr	r4, [pc, #0xb0]         @ 0x322aac <FRAGNADE::setContact(bool, std::string, int)+0xc4>
  3229fa: 447c         	add	r4, pc
  3229fc: 9b05         	ldr	r3, [sp, #0x14]
  3229fe: f503 73aa    	add.w	r3, r3, #0x154
  322a02: 4618         	mov	r0, r3
  322a04: 9903         	ldr	r1, [sp, #0xc]
  322a06: f092 f639    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x492c72
  322a0a: 4603         	mov	r3, r0
  322a0c: 2b00         	cmp	r3, #0x0
  322a0e: bf14         	ite	ne
  322a10: 2300         	movne	r3, #0x0
  322a12: 2301         	moveq	r3, #0x1
  322a14: b2db         	uxtb	r3, r3
  322a16: 2b00         	cmp	r3, #0x0
  322a18: d005         	beq	0x322a26 <FRAGNADE::setContact(bool, std::string, int)+0x3e> @ imm = #0xa
  322a1a: 9b05         	ldr	r3, [sp, #0x14]
  322a1c: 2200         	movs	r2, #0x0
  322a1e: f883 20e4    	strb.w	r2, [r3, #0xe4]
  322a22: 2300         	movs	r3, #0x0
  322a24: e03c         	b	0x322aa0 <FRAGNADE::setContact(bool, std::string, int)+0xb8> @ imm = #0x78
  322a26: 9b05         	ldr	r3, [sp, #0x14]
  322a28: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  322a2c: f083 0301    	eor	r3, r3, #0x1
  322a30: b2db         	uxtb	r3, r3
  322a32: 2b00         	cmp	r3, #0x0
  322a34: d02c         	beq	0x322a90 <FRAGNADE::setContact(bool, std::string, int)+0xa8> @ imm = #0x58
  322a36: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  322a3a: 2b00         	cmp	r3, #0x0
  322a3c: d028         	beq	0x322a90 <FRAGNADE::setContact(bool, std::string, int)+0xa8> @ imm = #0x50
  322a3e: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x322ab0 <FRAGNADE::setContact(bool, std::string, int)+0xc8>
  322a40: 58e3         	ldr	r3, [r4, r3]
  322a42: 681d         	ldr	r5, [r3]
  322a44: f7fe fca4    	bl	0x321390 <FLAMETHROWER::setRight(bool)+0x14c> @ imm = #-0x16b8
  322a48: 4603         	mov	r3, r0
  322a4a: ee07 3a90    	vmov	s15, r3
  322a4e: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  322a52: eddf 7a15    	vldr	s15, [pc, #84]          @ 0x322aa8 <FRAGNADE::setContact(bool, std::string, int)+0xc0>
  322a56: ee87 7a27    	vdiv.f32	s14, s14, s15
  322a5a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  322a5e: ee77 7a67    	vsub.f32	s15, s14, s15
  322a62: eef5 7ac0    	vcmpe.f32	s15, #0
  322a66: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  322a6a: dd01         	ble	0x322a70 <FRAGNADE::setContact(bool, std::string, int)+0x88> @ imm = #0x2
  322a6c: 240d         	movs	r4, #0xd
  322a6e: e000         	b	0x322a72 <FRAGNADE::setContact(bool, std::string, int)+0x8a> @ imm = #0x0
  322a70: 240e         	movs	r4, #0xe
  322a72: 9b05         	ldr	r3, [sp, #0x14]
  322a74: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  322a78: 466a         	mov	r2, sp
  322a7a: f103 0130    	add.w	r1, r3, #0x30
  322a7e: c903         	ldm	r1, {r0, r1}
  322a80: e882 0003    	stm.w	r2, {r0, r1}
  322a84: 3328         	adds	r3, #0x28
  322a86: cb0c         	ldm	r3, {r2, r3}
  322a88: 4628         	mov	r0, r5
  322a8a: 4621         	mov	r1, r4
  322a8c: f0d5 fab4    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0xd5568
  322a90: 9b05         	ldr	r3, [sp, #0x14]
  322a92: f89d 2013    	ldrb.w	r2, [sp, #0x13]
  322a96: f883 20e4    	strb.w	r2, [r3, #0xe4]
  322a9a: 9b05         	ldr	r3, [sp, #0x14]
  322a9c: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  322aa0: 4618         	mov	r0, r3
  322aa2: b007         	add	sp, #0x1c
  322aa4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x322aa5); words below are literal-pool data ---
  322aa6: bf00         	nop
  322aa8: 0000         	movs	r0, r0
  322aaa: 4e80         	ldr	r6, [pc, #0x200]        @ 0x322cac <FRAGNADE::setSecondaryConfiguration()+0xd4>
  322aac: 000e         	movs	r6, r1
  322aae: 0061         	lsls	r1, r4, #0x1
  322ab0: d730         	bvc	0x322b14 <FRAGNADE::setPrimaryConfiguration()+0x60> @ imm = #0x60
  322ab2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== FRAGNADE::setPrimaryConfiguration
//      file offset 0x322ab4 (= ELF address; Ghidra 0x332ab4), 292 bytes, Thumb-2
  322ab4: b530         	push	{r4, r5, lr}
  322ab6: b085         	sub	sp, #0x14
  322ab8: 9001         	str	r0, [sp, #0x4]
  322aba: 9b01         	ldr	r3, [sp, #0x4]
  322abc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  322ac0: 2b00         	cmp	r3, #0x0
  322ac2: d019         	beq	0x322af8 <FRAGNADE::setPrimaryConfiguration()+0x44> @ imm = #0x32
  322ac4: 9b01         	ldr	r3, [sp, #0x4]
  322ac6: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  322aca: 4b42         	ldr	r3, [pc, #0x108]        @ 0x322bd4 <FRAGNADE::setPrimaryConfiguration()+0x120>
  322acc: 447b         	add	r3, pc
  322ace: ed93 6b00    	vldr	d6, [r3]
  322ad2: ed93 7b02    	vldr	d7, [r3, #8]
  322ad6: 4610         	mov	r0, r2
  322ad8: eeb0 0b46    	vmov.f64	d0, d6
  322adc: eeb0 1b47    	vmov.f64	d1, d7
  322ae0: f7fe fde0    	bl	0x3216a4 <FLAMETHROWER::setRight(bool)+0x460> @ imm = #-0x1440
  322ae4: 9b01         	ldr	r3, [sp, #0x4]
  322ae6: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  322aea: 4618         	mov	r0, r3
  322aec: f04f 0200    	mov.w	r2, #0x0
  322af0: f04f 0300    	mov.w	r3, #0x0
  322af4: f3b0 fb4d    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3b069a
  322af8: 9b01         	ldr	r3, [sp, #0x4]
  322afa: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322afe: 681b         	ldr	r3, [r3]
  322b00: 334c         	adds	r3, #0x4c
  322b02: 681c         	ldr	r4, [r3]
  322b04: 9b01         	ldr	r3, [sp, #0x4]
  322b06: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  322b0a: ab02         	add	r3, sp, #0x8
  322b0c: 4618         	mov	r0, r3
  322b0e: f04f 0100    	mov.w	r1, #0x0
  322b12: f2cc 1190    	movt	r1, #0xc190
  322b16: f04f 0200    	mov.w	r2, #0x0
  322b1a: f2cc 1220    	movt	r2, #0xc120
  322b1e: f270 f8e7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2701ce
  322b22: ab02         	add	r3, sp, #0x8
  322b24: 4628         	mov	r0, r5
  322b26: 4619         	mov	r1, r3
  322b28: 47a0         	blx	r4
  322b2a: 9b01         	ldr	r3, [sp, #0x4]
  322b2c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322b30: 681b         	ldr	r3, [r3]
  322b32: 337c         	adds	r3, #0x7c
  322b34: 681c         	ldr	r4, [r3]
  322b36: 9b01         	ldr	r3, [sp, #0x4]
  322b38: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  322b3c: ab02         	add	r3, sp, #0x8
  322b3e: 4618         	mov	r0, r3
  322b40: f04f 517c    	mov.w	r1, #0x3f000000
  322b44: f04f 527c    	mov.w	r2, #0x3f000000
  322b48: f270 f8d2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2701a4
  322b4c: ab02         	add	r3, sp, #0x8
  322b4e: 4628         	mov	r0, r5
  322b50: 4619         	mov	r1, r3
  322b52: 47a0         	blx	r4
  322b54: 9b01         	ldr	r3, [sp, #0x4]
  322b56: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322b5a: 681b         	ldr	r3, [r3]
  322b5c: 3398         	adds	r3, #0x98
  322b5e: 681b         	ldr	r3, [r3]
  322b60: 9a01         	ldr	r2, [sp, #0x4]
  322b62: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322b66: 4610         	mov	r0, r2
  322b68: f04f 0100    	mov.w	r1, #0x0
  322b6c: 4798         	blx	r3
  322b6e: 9b01         	ldr	r3, [sp, #0x4]
  322b70: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322b74: 681b         	ldr	r3, [r3]
  322b76: 3340         	adds	r3, #0x40
  322b78: 681b         	ldr	r3, [r3]
  322b7a: 9a01         	ldr	r2, [sp, #0x4]
  322b7c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322b80: 4610         	mov	r0, r2
  322b82: f04f 517e    	mov.w	r1, #0x3f800000
  322b86: 4798         	blx	r3
  322b88: 9b01         	ldr	r3, [sp, #0x4]
  322b8a: 681b         	ldr	r3, [r3]
  322b8c: 334c         	adds	r3, #0x4c
  322b8e: 681c         	ldr	r4, [r3]
  322b90: 9d01         	ldr	r5, [sp, #0x4]
  322b92: ab02         	add	r3, sp, #0x8
  322b94: 4618         	mov	r0, r3
  322b96: f04f 0100    	mov.w	r1, #0x0
  322b9a: f04f 0200    	mov.w	r2, #0x0
  322b9e: f270 f8a7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27014e
  322ba2: ab02         	add	r3, sp, #0x8
  322ba4: 4628         	mov	r0, r5
  322ba6: 4619         	mov	r1, r3
  322ba8: 47a0         	blx	r4
  322baa: 9b01         	ldr	r3, [sp, #0x4]
  322bac: 681b         	ldr	r3, [r3]
  322bae: 3340         	adds	r3, #0x40
  322bb0: 681b         	ldr	r3, [r3]
  322bb2: 9a01         	ldr	r2, [sp, #0x4]
  322bb4: 4610         	mov	r0, r2
  322bb6: f04f 517e    	mov.w	r1, #0x3f800000
  322bba: 4798         	blx	r3
  322bbc: 9b01         	ldr	r3, [sp, #0x4]
  322bbe: 681b         	ldr	r3, [r3]
  322bc0: 3398         	adds	r3, #0x98
  322bc2: 681b         	ldr	r3, [r3]
  322bc4: 9a01         	ldr	r2, [sp, #0x4]
  322bc6: 4610         	mov	r0, r2
  322bc8: f04f 0100    	mov.w	r1, #0x0
  322bcc: 4798         	blx	r3
  322bce: b005         	add	sp, #0x14
  322bd0: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x322bd1); words below are literal-pool data ---
  322bd2: bf00         	nop
  322bd4: 4f98         	ldr	r7, [pc, #0x260]        @ 0x322e38 <FRAGNADE::isRight()+0x38>
  322bd6: 004a         	lsls	r2, r1, #0x1

// ==== FRAGNADE::setSecondaryConfiguration
//      file offset 0x322bd8 (= ELF address; Ghidra 0x332bd8), 292 bytes, Thumb-2
  322bd8: b530         	push	{r4, r5, lr}
  322bda: b085         	sub	sp, #0x14
  322bdc: 9001         	str	r0, [sp, #0x4]
  322bde: 9b01         	ldr	r3, [sp, #0x4]
  322be0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  322be4: 2b00         	cmp	r3, #0x0
  322be6: d019         	beq	0x322c1c <FRAGNADE::setSecondaryConfiguration()+0x44> @ imm = #0x32
  322be8: 9b01         	ldr	r3, [sp, #0x4]
  322bea: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  322bee: 4b42         	ldr	r3, [pc, #0x108]        @ 0x322cf8 <FRAGNADE::setSecondaryConfiguration()+0x120>
  322bf0: 447b         	add	r3, pc
  322bf2: ed93 6b00    	vldr	d6, [r3]
  322bf6: ed93 7b02    	vldr	d7, [r3, #8]
  322bfa: 4610         	mov	r0, r2
  322bfc: eeb0 0b46    	vmov.f64	d0, d6
  322c00: eeb0 1b47    	vmov.f64	d1, d7
  322c04: f7fe fd4e    	bl	0x3216a4 <FLAMETHROWER::setRight(bool)+0x460> @ imm = #-0x1564
  322c08: 9b01         	ldr	r3, [sp, #0x4]
  322c0a: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  322c0e: 4618         	mov	r0, r3
  322c10: f04f 0200    	mov.w	r2, #0x0
  322c14: f04f 0300    	mov.w	r3, #0x0
  322c18: f3b0 fabb    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x3b0576
  322c1c: 9b01         	ldr	r3, [sp, #0x4]
  322c1e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322c22: 681b         	ldr	r3, [r3]
  322c24: 334c         	adds	r3, #0x4c
  322c26: 681c         	ldr	r4, [r3]
  322c28: 9b01         	ldr	r3, [sp, #0x4]
  322c2a: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  322c2e: ab02         	add	r3, sp, #0x8
  322c30: 4618         	mov	r0, r3
  322c32: f04f 0100    	mov.w	r1, #0x0
  322c36: f2cc 01a0    	movt	r1, #0xc0a0
  322c3a: f04f 0200    	mov.w	r2, #0x0
  322c3e: f2cc 1220    	movt	r2, #0xc120
  322c42: f270 f855    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2700aa
  322c46: ab02         	add	r3, sp, #0x8
  322c48: 4628         	mov	r0, r5
  322c4a: 4619         	mov	r1, r3
  322c4c: 47a0         	blx	r4
  322c4e: 9b01         	ldr	r3, [sp, #0x4]
  322c50: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322c54: 681b         	ldr	r3, [r3]
  322c56: 337c         	adds	r3, #0x7c
  322c58: 681c         	ldr	r4, [r3]
  322c5a: 9b01         	ldr	r3, [sp, #0x4]
  322c5c: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  322c60: ab02         	add	r3, sp, #0x8
  322c62: 4618         	mov	r0, r3
  322c64: f04f 517c    	mov.w	r1, #0x3f000000
  322c68: f04f 527c    	mov.w	r2, #0x3f000000
  322c6c: f270 f840    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x270080
  322c70: ab02         	add	r3, sp, #0x8
  322c72: 4628         	mov	r0, r5
  322c74: 4619         	mov	r1, r3
  322c76: 47a0         	blx	r4
  322c78: 9b01         	ldr	r3, [sp, #0x4]
  322c7a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322c7e: 681b         	ldr	r3, [r3]
  322c80: 3398         	adds	r3, #0x98
  322c82: 681b         	ldr	r3, [r3]
  322c84: 9a01         	ldr	r2, [sp, #0x4]
  322c86: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322c8a: 4610         	mov	r0, r2
  322c8c: f04f 0100    	mov.w	r1, #0x0
  322c90: 4798         	blx	r3
  322c92: 9b01         	ldr	r3, [sp, #0x4]
  322c94: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322c98: 681b         	ldr	r3, [r3]
  322c9a: 3340         	adds	r3, #0x40
  322c9c: 681b         	ldr	r3, [r3]
  322c9e: 9a01         	ldr	r2, [sp, #0x4]
  322ca0: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322ca4: 4610         	mov	r0, r2
  322ca6: f04f 517e    	mov.w	r1, #0x3f800000
  322caa: 4798         	blx	r3
  322cac: 9b01         	ldr	r3, [sp, #0x4]
  322cae: 681b         	ldr	r3, [r3]
  322cb0: 334c         	adds	r3, #0x4c
  322cb2: 681c         	ldr	r4, [r3]
  322cb4: 9d01         	ldr	r5, [sp, #0x4]
  322cb6: ab02         	add	r3, sp, #0x8
  322cb8: 4618         	mov	r0, r3
  322cba: f04f 0100    	mov.w	r1, #0x0
  322cbe: f04f 0200    	mov.w	r2, #0x0
  322cc2: f270 f815    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x27002a
  322cc6: ab02         	add	r3, sp, #0x8
  322cc8: 4628         	mov	r0, r5
  322cca: 4619         	mov	r1, r3
  322ccc: 47a0         	blx	r4
  322cce: 9b01         	ldr	r3, [sp, #0x4]
  322cd0: 681b         	ldr	r3, [r3]
  322cd2: 3340         	adds	r3, #0x40
  322cd4: 681b         	ldr	r3, [r3]
  322cd6: 9a01         	ldr	r2, [sp, #0x4]
  322cd8: 4610         	mov	r0, r2
  322cda: f04f 517e    	mov.w	r1, #0x3f800000
  322cde: 4798         	blx	r3
  322ce0: 9b01         	ldr	r3, [sp, #0x4]
  322ce2: 681b         	ldr	r3, [r3]
  322ce4: 3398         	adds	r3, #0x98
  322ce6: 681b         	ldr	r3, [r3]
  322ce8: 9a01         	ldr	r2, [sp, #0x4]
  322cea: 4610         	mov	r0, r2
  322cec: f04f 0100    	mov.w	r1, #0x0
  322cf0: 4798         	blx	r3
  322cf2: b005         	add	sp, #0x14
  322cf4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x322cf5); words below are literal-pool data ---
  322cf6: bf00         	nop
  322cf8: 4e74         	ldr	r6, [pc, #0x1d0]        @ 0x322ecc <FRAGNADE::removeWeapon()+0x50>
  322cfa: 004a         	lsls	r2, r1, #0x1

// ==== FRAGNADE::setMapConfiguration
//      file offset 0x322d00 (= ELF address; Ghidra 0x332d00), 256 bytes, Thumb-2
  322d00: b570         	push	{r4, r5, r6, lr}
  322d02: b088         	sub	sp, #0x20
  322d04: 9005         	str	r0, [sp, #0x14]
  322d06: 4c3b         	ldr	r4, [pc, #0xec]         @ 0x322df4 <FRAGNADE::setMapConfiguration()+0xf4>
  322d08: 447c         	add	r4, pc
  322d0a: 4b3b         	ldr	r3, [pc, #0xec]         @ 0x322df8 <FRAGNADE::setMapConfiguration()+0xf8>
  322d0c: 58e3         	ldr	r3, [r4, r3]
  322d0e: ed93 7a00    	vldr	s14, [r3]
  322d12: eddf 7a37    	vldr	s15, [pc, #220]         @ 0x322df0 <FRAGNADE::setMapConfiguration()+0xf0>
  322d16: ee67 7a27    	vmul.f32	s15, s14, s15
  322d1a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  322d1e: 9d05         	ldr	r5, [sp, #0x14]
  322d20: 466b         	mov	r3, sp
  322d22: 4618         	mov	r0, r3
  322d24: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x322de8 <FRAGNADE::setMapConfiguration()+0xe8>
  322d28: eeb0 1b47    	vmov.f64	d1, d7
  322d2c: f7fe fbb6    	bl	0x32149c <FLAMETHROWER::setRight(bool)+0x258> @ imm = #-0x1894
  322d30: 35f8         	adds	r5, #0xf8
  322d32: 466b         	mov	r3, sp
  322d34: cb0f         	ldm	r3, {r0, r1, r2, r3}
  322d36: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  322d3a: 9b05         	ldr	r3, [sp, #0x14]
  322d3c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322d40: 681b         	ldr	r3, [r3]
  322d42: 334c         	adds	r3, #0x4c
  322d44: 681d         	ldr	r5, [r3]
  322d46: 9b05         	ldr	r3, [sp, #0x14]
  322d48: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  322d4c: ab06         	add	r3, sp, #0x18
  322d4e: 4618         	mov	r0, r3
  322d50: f04f 0100    	mov.w	r1, #0x0
  322d54: f04f 0200    	mov.w	r2, #0x0
  322d58: f26f ffca    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26ff94
  322d5c: ab06         	add	r3, sp, #0x18
  322d5e: 4630         	mov	r0, r6
  322d60: 4619         	mov	r1, r3
  322d62: 47a8         	blx	r5
  322d64: 9b05         	ldr	r3, [sp, #0x14]
  322d66: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322d6a: 681b         	ldr	r3, [r3]
  322d6c: 337c         	adds	r3, #0x7c
  322d6e: 681d         	ldr	r5, [r3]
  322d70: 9b05         	ldr	r3, [sp, #0x14]
  322d72: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  322d76: ab06         	add	r3, sp, #0x18
  322d78: 4618         	mov	r0, r3
  322d7a: f04f 517c    	mov.w	r1, #0x3f000000
  322d7e: f04f 527c    	mov.w	r2, #0x3f000000
  322d82: f26f ffb5    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26ff6a
  322d86: ab06         	add	r3, sp, #0x18
  322d88: 4630         	mov	r0, r6
  322d8a: 4619         	mov	r1, r3
  322d8c: 47a8         	blx	r5
  322d8e: 9b05         	ldr	r3, [sp, #0x14]
  322d90: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322d94: 681b         	ldr	r3, [r3]
  322d96: 3398         	adds	r3, #0x98
  322d98: 681b         	ldr	r3, [r3]
  322d9a: 9a05         	ldr	r2, [sp, #0x14]
  322d9c: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322da0: 4610         	mov	r0, r2
  322da2: f04f 0100    	mov.w	r1, #0x0
  322da6: 4798         	blx	r3
  322da8: 9b05         	ldr	r3, [sp, #0x14]
  322daa: 681b         	ldr	r3, [r3]
  322dac: 334c         	adds	r3, #0x4c
  322dae: 681d         	ldr	r5, [r3]
  322db0: 9e05         	ldr	r6, [sp, #0x14]
  322db2: ab06         	add	r3, sp, #0x18
  322db4: 4618         	mov	r0, r3
  322db6: f04f 0100    	mov.w	r1, #0x0
  322dba: f04f 0200    	mov.w	r2, #0x0
  322dbe: f26f ff97    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x26ff2e
  322dc2: ab06         	add	r3, sp, #0x18
  322dc4: 4630         	mov	r0, r6
  322dc6: 4619         	mov	r1, r3
  322dc8: 47a8         	blx	r5
  322dca: 9b05         	ldr	r3, [sp, #0x14]
  322dcc: 681b         	ldr	r3, [r3]
  322dce: 3340         	adds	r3, #0x40
  322dd0: 681b         	ldr	r3, [r3]
  322dd2: 9905         	ldr	r1, [sp, #0x14]
  322dd4: 4a09         	ldr	r2, [pc, #0x24]         @ 0x322dfc <FRAGNADE::setMapConfiguration()+0xfc>
  322dd6: 58a2         	ldr	r2, [r4, r2]
  322dd8: 6812         	ldr	r2, [r2]
  322dda: 4608         	mov	r0, r1
  322ddc: 4611         	mov	r1, r2
  322dde: 4798         	blx	r3
  322de0: b008         	add	sp, #0x20
  322de2: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x322de3); words below are literal-pool data ---
  322de4: f3af 8000    	nop.w
  322df0: 0000         	movs	r0, r0
  322df2: c37a         	stm	r3!, {r1, r3, r4, r5, r6}
  322df4: fd00 0060    	stc2	p0, c0, [r0, #-384]
  322df8: da30         	bge	0x322e5c <FRAGNADE::setRight(bool)+0x20> @ imm = #0x60
  322dfa: ffff d748    	<unknown>
  322dfe: ffff b500    	<unknown>

// ==== FRAGNADE::isRight
//      file offset 0x322e00 (= ELF address; Ghidra 0x332e00), 60 bytes, Thumb-2
  322e00: b500         	push	{lr}
  322e02: b083         	sub	sp, #0xc
  322e04: 9001         	str	r0, [sp, #0x4]
  322e06: 9b01         	ldr	r3, [sp, #0x4]
  322e08: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322e0c: 681b         	ldr	r3, [r3]
  322e0e: 3334         	adds	r3, #0x34
  322e10: 681b         	ldr	r3, [r3]
  322e12: 9a01         	ldr	r2, [sp, #0x4]
  322e14: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322e18: 4610         	mov	r0, r2
  322e1a: 4798         	blx	r3
  322e1c: ee07 0a10    	vmov	s14, r0
  322e20: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  322e24: eeb4 7ae7    	vcmpe.f32	s14, s15
  322e28: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  322e2c: bfd4         	ite	le
  322e2e: 2300         	movle	r3, #0x0
  322e30: 2301         	movgt	r3, #0x1
  322e32: b2db         	uxtb	r3, r3
  322e34: 4618         	mov	r0, r3
  322e36: b003         	add	sp, #0xc
  322e38: f85d fb04    	ldr	pc, [sp], #4

// ==== FRAGNADE::setRight
//      file offset 0x322e3c (= ELF address; Ghidra 0x332e3c), 64 bytes, Thumb-2
  322e3c: b500         	push	{lr}
  322e3e: b083         	sub	sp, #0xc
  322e40: 9001         	str	r0, [sp, #0x4]
  322e42: 460b         	mov	r3, r1
  322e44: f88d 3003    	strb.w	r3, [sp, #0x3]
  322e48: 9b01         	ldr	r3, [sp, #0x4]
  322e4a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322e4e: 681b         	ldr	r3, [r3]
  322e50: 3330         	adds	r3, #0x30
  322e52: 681a         	ldr	r2, [r3]
  322e54: 9b01         	ldr	r3, [sp, #0x4]
  322e56: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  322e5a: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  322e5e: 2b00         	cmp	r3, #0x0
  322e60: d002         	beq	0x322e68 <FRAGNADE::setRight(bool)+0x2c> @ imm = #0x4
  322e62: f04f 537e    	mov.w	r3, #0x3f800000
  322e66: e003         	b	0x322e70 <FRAGNADE::setRight(bool)+0x34> @ imm = #0x6
  322e68: f04f 0300    	mov.w	r3, #0x0
  322e6c: f6cb 7380    	movt	r3, #0xbf80
  322e70: 4608         	mov	r0, r1
  322e72: 4619         	mov	r1, r3
  322e74: 4790         	blx	r2
  322e76: b003         	add	sp, #0xc
  322e78: f85d fb04    	ldr	pc, [sp], #4

// ==== FRAGNADE::removeWeapon
//      file offset 0x322e7c (= ELF address; Ghidra 0x332e7c), 84 bytes, Thumb-2
  322e7c: b500         	push	{lr}
  322e7e: b085         	sub	sp, #0x14
  322e80: 9001         	str	r0, [sp, #0x4]
  322e82: 4910         	ldr	r1, [pc, #0x40]         @ 0x322ec4 <FRAGNADE::removeWeapon()+0x48>
  322e84: 4479         	add	r1, pc
  322e86: 9b01         	ldr	r3, [sp, #0x4]
  322e88: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x322ec8 <FRAGNADE::removeWeapon()+0x4c>
  322e8a: 588a         	ldr	r2, [r1, r2]
  322e8c: 9202         	str	r2, [sp, #0x8]
  322e8e: 2200         	movs	r2, #0x0
  322e90: 9203         	str	r2, [sp, #0xc]
  322e92: 4618         	mov	r0, r3
  322e94: ab02         	add	r3, sp, #0x8
  322e96: e893 0006    	ldm.w	r3, {r1, r2}
  322e9a: f64c 43cd    	movw	r3, #0xcccd
  322e9e: f6c3 53cc    	movt	r3, #0x3dcc
  322ea2: f26e f9f7    	bl	0x591294 <cocos2d::CCNode::scheduleOnce(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x26e3ee
  322ea6: f2bd fc03    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2bd806
  322eaa: 4602         	mov	r2, r0
  322eac: 9b01         	ldr	r3, [sp, #0x4]
  322eae: 4610         	mov	r0, r2
  322eb0: 4a06         	ldr	r2, [pc, #0x18]         @ 0x322ecc <FRAGNADE::removeWeapon()+0x50>
  322eb2: 447a         	add	r2, pc
  322eb4: 4611         	mov	r1, r2
  322eb6: 461a         	mov	r2, r3
  322eb8: f2bd fe38    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2bdc70
  322ebc: b005         	add	sp, #0x14
  322ebe: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x322ec1); words below are literal-pool data ---
  322ec2: bf00         	nop
  322ec4: fb84 0060    	<unknown>
  322ec8: da34         	bge	0x322f34 <FRAGNADE::detonate(cocos2d::CCObject*)+0x3c> @ imm = #0x68
  322eca: ffff 4b2e    	vtbl.8	d20, {d15, d16, d17, d18}, d30
  322ece: 004a         	lsls	r2, r1, #0x1

// ==== FRAGNADE::delayedRemoveWeapon
//      file offset 0x322ed0 (= ELF address; Ghidra 0x332ed0), 40 bytes, Thumb-2
  322ed0: b500         	push	{lr}
  322ed2: b083         	sub	sp, #0xc
  322ed4: 9001         	str	r0, [sp, #0x4]
  322ed6: f2bd fbeb    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2bd7d6
  322eda: 4602         	mov	r2, r0
  322edc: 9b01         	ldr	r3, [sp, #0x4]
  322ede: 4610         	mov	r0, r2
  322ee0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x322ef4 <FRAGNADE::delayedRemoveWeapon()+0x24>
  322ee2: 447a         	add	r2, pc
  322ee4: 4611         	mov	r1, r2
  322ee6: 461a         	mov	r2, r3
  322ee8: f2bd fe20    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2bdc40
  322eec: b003         	add	sp, #0xc
  322eee: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x322ef1); words below are literal-pool data ---
  322ef2: bf00         	nop
  322ef4: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x322f30 <FRAGNADE::detonate(cocos2d::CCObject*)+0x38>
  322ef6: 004a         	lsls	r2, r1, #0x1

// ==== FRAGNADE::detonate
//      file offset 0x322ef8 (= ELF address; Ghidra 0x332ef8), 64 bytes, Thumb-2
  322ef8: b500         	push	{lr}
  322efa: b083         	sub	sp, #0xc
  322efc: 9001         	str	r0, [sp, #0x4]
  322efe: 9100         	str	r1, [sp]
  322f00: f2bd fbd6    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2bd7ac
  322f04: 4603         	mov	r3, r0
  322f06: 4618         	mov	r0, r3
  322f08: 4b09         	ldr	r3, [pc, #0x24]         @ 0x322f30 <FRAGNADE::detonate(cocos2d::CCObject*)+0x38>
  322f0a: 447b         	add	r3, pc
  322f0c: 4619         	mov	r1, r3
  322f0e: 9a00         	ldr	r2, [sp]
  322f10: f2bd fe0c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2bdc18
  322f14: f2bd fbcc    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2bd798
  322f18: 4603         	mov	r3, r0
  322f1a: 4618         	mov	r0, r3
  322f1c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x322f34 <FRAGNADE::detonate(cocos2d::CCObject*)+0x3c>
  322f1e: 447b         	add	r3, pc
  322f20: 4619         	mov	r1, r3
  322f22: 9a00         	ldr	r2, [sp]
  322f24: f2bd fe02    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2bdc04
  322f28: b003         	add	sp, #0xc
  322f2a: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x322f2d); words below are literal-pool data ---
  322f2e: bf00         	nop
  322f30: 4af6         	ldr	r2, [pc, #0x3d8]        @ 0x32330c <FRAGNADE::getWeaponRect()+0x3ac>
  322f32: 004a         	lsls	r2, r1, #0x1
  322f34: 4af2         	ldr	r2, [pc, #0x3c8]        @ 0x323300 <FRAGNADE::getWeaponRect()+0x3a0>
  322f36: 004a         	lsls	r2, r1, #0x1

// ==== FRAGNADE::getWeaponTexture
//      file offset 0x322f38 (= ELF address; Ghidra 0x332f38), 40 bytes, Thumb-2
  322f38: b500         	push	{lr}
  322f3a: b083         	sub	sp, #0xc
  322f3c: 9001         	str	r0, [sp, #0x4]
  322f3e: 9b01         	ldr	r3, [sp, #0x4]
  322f40: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322f44: 681b         	ldr	r3, [r3]
  322f46: f503 73fa    	add.w	r3, r3, #0x1f4
  322f4a: 681b         	ldr	r3, [r3]
  322f4c: 9a01         	ldr	r2, [sp, #0x4]
  322f4e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  322f52: 4610         	mov	r0, r2
  322f54: 4798         	blx	r3
  322f56: 4603         	mov	r3, r0
  322f58: 4618         	mov	r0, r3
  322f5a: b003         	add	sp, #0xc
  322f5c: f85d fb04    	ldr	pc, [sp], #4

// ==== FRAGNADE::getWeaponRect
//      file offset 0x322f60 (= ELF address; Ghidra 0x332f60), 38 bytes, Thumb-2
  322f60: b500         	push	{lr}
  322f62: b083         	sub	sp, #0xc
  322f64: 9001         	str	r0, [sp, #0x4]
  322f66: 9100         	str	r1, [sp]
  322f68: 9b00         	ldr	r3, [sp]
  322f6a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  322f6e: 4618         	mov	r0, r3
  322f70: f7b9 feb4    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x46298
  322f74: 4603         	mov	r3, r0
  322f76: 9801         	ldr	r0, [sp, #0x4]
  322f78: 4619         	mov	r1, r3
  322f7a: f270 f9cd    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x27039a
  322f7e: 9801         	ldr	r0, [sp, #0x4]
  322f80: b003         	add	sp, #0xc
  322f82: f85d fb04    	ldr	pc, [sp], #4

// ==== FRAGNADE::create
//      file offset 0x4171dc (= ELF address; Ghidra 0x4271dc), 112 bytes, Thumb-2
  4171dc: b510         	push	{r4, lr}
  4171de: b082         	sub	sp, #0x8
  4171e0: f44f 70fc    	mov.w	r0, #0x1f8
  4171e4: f370 fbbe    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37077c
  4171e8: 4603         	mov	r3, r0
  4171ea: 461c         	mov	r4, r3
  4171ec: 4620         	mov	r0, r4
  4171ee: f70b f9df    	bl	0x3225b0 <FRAGNADE::FRAGNADE()> @ imm = #-0xf4c42
  4171f2: 9401         	str	r4, [sp, #0x4]
  4171f4: 9b01         	ldr	r3, [sp, #0x4]
  4171f6: 2b00         	cmp	r3, #0x0
  4171f8: d00a         	beq	0x417210 <FRAGNADE::create()+0x34> @ imm = #0x14
  4171fa: 9b01         	ldr	r3, [sp, #0x4]
  4171fc: 681b         	ldr	r3, [r3]
  4171fe: 3318         	adds	r3, #0x18
  417200: 681b         	ldr	r3, [r3]
  417202: 9801         	ldr	r0, [sp, #0x4]
  417204: 4798         	blx	r3
  417206: 4603         	mov	r3, r0
  417208: 2b00         	cmp	r3, #0x0
  41720a: d001         	beq	0x417210 <FRAGNADE::create()+0x34> @ imm = #0x2
  41720c: 2301         	movs	r3, #0x1
  41720e: e000         	b	0x417212 <FRAGNADE::create()+0x36> @ imm = #0x0
  417210: 2300         	movs	r3, #0x0
  417212: 2b00         	cmp	r3, #0x0
  417214: d005         	beq	0x417222 <FRAGNADE::create()+0x46> @ imm = #0xa
  417216: 9b01         	ldr	r3, [sp, #0x4]
  417218: 4618         	mov	r0, r3
  41721a: f180 fe6f    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180cde
  41721e: 9b01         	ldr	r3, [sp, #0x4]
  417220: e011         	b	0x417246 <FRAGNADE::create()+0x6a> @ imm = #0x22
  417222: 9b01         	ldr	r3, [sp, #0x4]
  417224: 2b00         	cmp	r3, #0x0
  417226: d005         	beq	0x417234 <FRAGNADE::create()+0x58> @ imm = #0xa
  417228: 9b01         	ldr	r3, [sp, #0x4]
  41722a: 681b         	ldr	r3, [r3]
  41722c: 3308         	adds	r3, #0x8
  41722e: 681b         	ldr	r3, [r3]
  417230: 9801         	ldr	r0, [sp, #0x4]
  417232: 4798         	blx	r3
  417234: 2300         	movs	r3, #0x0
  417236: 9301         	str	r3, [sp, #0x4]
  417238: 2300         	movs	r3, #0x0
  41723a: e004         	b	0x417246 <FRAGNADE::create()+0x6a> @ imm = #0x8
  41723c: 4620         	mov	r0, r4
  41723e: f370 ff31    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370e62
  417242: f370 ff33    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370e66
  417246: 4618         	mov	r0, r3
  417248: b002         	add	sp, #0x8
  41724a: bd10         	pop	{r4, pc}
