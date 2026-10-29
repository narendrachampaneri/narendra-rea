// POWERUP: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 18 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../POWERUP.cpp

// ==== POWERUP::POWERUP
//      file offset 0x38d3d0 (= ELF address; Ghidra 0x39d3d0), 88 bytes, Thumb-2
  38d3d0: b530         	push	{r4, r5, lr}
  38d3d2: b083         	sub	sp, #0xc
  38d3d4: 9001         	str	r0, [sp, #0x4]
  38d3d6: 4c12         	ldr	r4, [pc, #0x48]         @ 0x38d420 <POWERUP::POWERUP()+0x50>
  38d3d8: 447c         	add	r4, pc
  38d3da: 9b01         	ldr	r3, [sp, #0x4]
  38d3dc: 4618         	mov	r0, r3
  38d3de: f087 fde3    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0x87bc6
  38d3e2: 9b01         	ldr	r3, [sp, #0x4]
  38d3e4: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x38d424 <POWERUP::POWERUP()+0x54>
  38d3e6: 58a2         	ldr	r2, [r4, r2]
  38d3e8: 3208         	adds	r2, #0x8
  38d3ea: 601a         	str	r2, [r3]
  38d3ec: 9b01         	ldr	r3, [sp, #0x4]
  38d3ee: f503 7300    	add.w	r3, r3, #0x200
  38d3f2: 2401         	movs	r4, #0x1
  38d3f4: 461d         	mov	r5, r3
  38d3f6: e004         	b	0x38d402 <POWERUP::POWERUP()+0x32> @ imm = #0x8
  38d3f8: 4628         	mov	r0, r5
  38d3fa: f205 ff53    	bl	0x5932a4 <cocos2d::CCRect::CCRect()> @ imm = #0x205ea6
  38d3fe: 3510         	adds	r5, #0x10
  38d400: 3c01         	subs	r4, #0x1
  38d402: f1b4 3fff    	cmp.w	r4, #0xffffffff
  38d406: d1f7         	bne	0x38d3f8 <POWERUP::POWERUP()+0x28> @ imm = #-0x12
  38d408: 9b01         	ldr	r3, [sp, #0x4]
  38d40a: e005         	b	0x38d418 <POWERUP::POWERUP()+0x48> @ imm = #0xa
  38d40c: 9b01         	ldr	r3, [sp, #0x4]
  38d40e: 4618         	mov	r0, r3
  38d410: f087 feee    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x87ddc
  38d414: f3fa fe4a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fac94
  38d418: 4618         	mov	r0, r3
  38d41a: b003         	add	sp, #0xc
  38d41c: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38d41d); words below are literal-pool data ---
  38d41e: bf00         	nop
  38d420: 5630         	ldrsb	r0, [r6, r0]
  38d422: 005a         	lsls	r2, r3, #0x1
  38d424: dcfc         	bgt	0x38d420 <POWERUP::POWERUP()+0x50> @ imm = #-0x8
  38d426: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== POWERUP::init
//      file offset 0x38d428 (= ELF address; Ghidra 0x39d428), 260 bytes, Thumb-2
  38d428: b510         	push	{r4, lr}
  38d42a: b084         	sub	sp, #0x10
  38d42c: 9001         	str	r0, [sp, #0x4]
  38d42e: 9b01         	ldr	r3, [sp, #0x4]
  38d430: 4618         	mov	r0, r3
  38d432: f087 fddd    	bl	0x414ff0 <Weapon::init()> @ imm = #0x87bba
  38d436: 4603         	mov	r3, r0
  38d438: f88d 300f    	strb.w	r3, [sp, #0xf]
  38d43c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  38d440: f083 0301    	eor	r3, r3, #0x1
  38d444: b2db         	uxtb	r3, r3
  38d446: 2b00         	cmp	r3, #0x0
  38d448: d001         	beq	0x38d44e <POWERUP::init()+0x26> @ imm = #0x2
  38d44a: 2300         	movs	r3, #0x0
  38d44c: e065         	b	0x38d51a <POWERUP::init()+0xf2> @ imm = #0xca
  38d44e: 9b01         	ldr	r3, [sp, #0x4]
  38d450: f503 7400    	add.w	r4, r3, #0x200
  38d454: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x38d520 <POWERUP::init()+0xf8>
  38d456: 447b         	add	r3, pc
  38d458: 4618         	mov	r0, r3
  38d45a: f24a ff53    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24aea6
  38d45e: 4603         	mov	r3, r0
  38d460: 4618         	mov	r0, r3
  38d462: f74f fc3b    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb078a
  38d466: 4603         	mov	r3, r0
  38d468: 4620         	mov	r0, r4
  38d46a: 4619         	mov	r1, r3
  38d46c: f205 ff72    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x205ee4
  38d470: 9b01         	ldr	r3, [sp, #0x4]
  38d472: f503 7404    	add.w	r4, r3, #0x210
  38d476: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x38d524 <POWERUP::init()+0xfc>
  38d478: 447b         	add	r3, pc
  38d47a: 4618         	mov	r0, r3
  38d47c: f24a ff42    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24ae84
  38d480: 4603         	mov	r3, r0
  38d482: 4618         	mov	r0, r3
  38d484: f74f fc2a    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0xb07ac
  38d488: 4603         	mov	r3, r0
  38d48a: 4620         	mov	r0, r4
  38d48c: 4619         	mov	r1, r3
  38d48e: f205 ff61    	bl	0x593354 <cocos2d::CCRect::operator=(cocos2d::CCRect const&)> @ imm = #0x205ec2
  38d492: 4b25         	ldr	r3, [pc, #0x94]         @ 0x38d528 <POWERUP::init()+0x100>
  38d494: 447b         	add	r3, pc
  38d496: 4618         	mov	r0, r3
  38d498: f24a ff34    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x24ae68
  38d49c: 4602         	mov	r2, r0
  38d49e: 9b01         	ldr	r3, [sp, #0x4]
  38d4a0: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  38d4a4: 9b01         	ldr	r3, [sp, #0x4]
  38d4a6: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d4aa: 4618         	mov	r0, r3
  38d4ac: f20a fd1c    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x20aa38
  38d4b0: 9b01         	ldr	r3, [sp, #0x4]
  38d4b2: 681b         	ldr	r3, [r3]
  38d4b4: f503 73f0    	add.w	r3, r3, #0x1e0
  38d4b8: 681b         	ldr	r3, [r3]
  38d4ba: 9801         	ldr	r0, [sp, #0x4]
  38d4bc: 4798         	blx	r3
  38d4be: 9b01         	ldr	r3, [sp, #0x4]
  38d4c0: 681b         	ldr	r3, [r3]
  38d4c2: 33cc         	adds	r3, #0xcc
  38d4c4: 681b         	ldr	r3, [r3]
  38d4c6: 9901         	ldr	r1, [sp, #0x4]
  38d4c8: 9a01         	ldr	r2, [sp, #0x4]
  38d4ca: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38d4ce: 4608         	mov	r0, r1
  38d4d0: 4611         	mov	r1, r2
  38d4d2: 2200         	movs	r2, #0x0
  38d4d4: 4798         	blx	r3
  38d4d6: 9b01         	ldr	r3, [sp, #0x4]
  38d4d8: f04f 0200    	mov.w	r2, #0x0
  38d4dc: f8c3 2110    	str.w	r2, [r3, #0x110]
  38d4e0: 9b01         	ldr	r3, [sp, #0x4]
  38d4e2: 2201         	movs	r2, #0x1
  38d4e4: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  38d4e8: 9b01         	ldr	r3, [sp, #0x4]
  38d4ea: 2201         	movs	r2, #0x1
  38d4ec: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  38d4f0: 9b01         	ldr	r3, [sp, #0x4]
  38d4f2: f04f 0200    	mov.w	r2, #0x0
  38d4f6: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  38d4fa: 9b01         	ldr	r3, [sp, #0x4]
  38d4fc: f04f 0200    	mov.w	r2, #0x0
  38d500: f8c3 21f4    	str.w	r2, [r3, #0x1f4]
  38d504: 9b01         	ldr	r3, [sp, #0x4]
  38d506: f04f 0200    	mov.w	r2, #0x0
  38d50a: f8c3 21f8    	str.w	r2, [r3, #0x1f8]
  38d50e: 9b01         	ldr	r3, [sp, #0x4]
  38d510: f04f 0200    	mov.w	r2, #0x0
  38d514: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  38d518: 2301         	movs	r3, #0x1
  38d51a: 4618         	mov	r0, r3
  38d51c: b004         	add	sp, #0x10
  38d51e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38d51f); words below are literal-pool data ---
  38d520: 3b4e         	subs	r3, #0x4e
  38d522: 0044         	lsls	r4, r0, #0x1
  38d524: 3b38         	subs	r3, #0x38
  38d526: 0044         	lsls	r4, r0, #0x1
  38d528: 3b28         	subs	r3, #0x28
  38d52a: 0044         	lsls	r4, r0, #0x1

// ==== POWERUP::~POWERUP
//      file offset 0x38d52c (= ELF address; Ghidra 0x39d52c), 80 bytes, Thumb-2
  38d52c: b500         	push	{lr}
  38d52e: b083         	sub	sp, #0xc
  38d530: 9001         	str	r0, [sp, #0x4]
  38d532: 4910         	ldr	r1, [pc, #0x40]         @ 0x38d574 <POWERUP::~POWERUP()+0x48>
  38d534: 4479         	add	r1, pc
  38d536: 9b01         	ldr	r3, [sp, #0x4]
  38d538: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x38d578 <POWERUP::~POWERUP()+0x4c>
  38d53a: 588a         	ldr	r2, [r1, r2]
  38d53c: 3208         	adds	r2, #0x8
  38d53e: 601a         	str	r2, [r3]
  38d540: 9b01         	ldr	r3, [sp, #0x4]
  38d542: 4618         	mov	r0, r3
  38d544: f203 f872    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2030e4
  38d548: 9b01         	ldr	r3, [sp, #0x4]
  38d54a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d54e: 4618         	mov	r0, r3
  38d550: f20a fcb2    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x20a964
  38d554: 9b01         	ldr	r3, [sp, #0x4]
  38d556: 4618         	mov	r0, r3
  38d558: f087 fe4a    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0x87c94
  38d55c: 2300         	movs	r3, #0x0
  38d55e: 2b00         	cmp	r3, #0x0
  38d560: d002         	beq	0x38d568 <POWERUP::~POWERUP()+0x3c> @ imm = #0x4
  38d562: 9801         	ldr	r0, [sp, #0x4]
  38d564: f3fa fd9e    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3fab3c
  38d568: 9b01         	ldr	r3, [sp, #0x4]
  38d56a: 4618         	mov	r0, r3
  38d56c: b003         	add	sp, #0xc
  38d56e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x38d571); words below are literal-pool data ---
  38d572: bf00         	nop
  38d574: 54d4         	strb	r4, [r2, r3]
  38d576: 005a         	lsls	r2, r3, #0x1
  38d578: dcfc         	bgt	0x38d574 <POWERUP::~POWERUP()+0x48> @ imm = #-0x8
  38d57a: ffff b500    	<unknown>

// ==== POWERUP::~POWERUP
//      file offset 0x38d57c (= ELF address; Ghidra 0x39d57c), 28 bytes, Thumb-2
  38d57c: b500         	push	{lr}
  38d57e: b083         	sub	sp, #0xc
  38d580: 9001         	str	r0, [sp, #0x4]
  38d582: 9801         	ldr	r0, [sp, #0x4]
  38d584: f7ff ffd2    	bl	0x38d52c <POWERUP::~POWERUP()> @ imm = #-0x5c
  38d588: 9801         	ldr	r0, [sp, #0x4]
  38d58a: f3fa fd8b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3fab16
  38d58e: 9b01         	ldr	r3, [sp, #0x4]
  38d590: 4618         	mov	r0, r3
  38d592: b003         	add	sp, #0xc
  38d594: f85d fb04    	ldr	pc, [sp], #4

// ==== POWERUP::initBody
//      file offset 0x38d598 (= ELF address; Ghidra 0x39d598), 332 bytes, Thumb-2
  38d598: b530         	push	{r4, r5, lr}
  38d59a: b099         	sub	sp, #0x64
  38d59c: 900d         	str	r0, [sp, #0x34]
  38d59e: f64c 43cd    	movw	r3, #0xcccd
  38d5a2: f6c3 53cc    	movt	r3, #0x3dcc
  38d5a6: 930f         	str	r3, [sp, #0x3c]
  38d5a8: eddd 7a0f    	vldr	s15, [sp, #60]
  38d5ac: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  38d5b0: ec51 0b17    	vmov	r0, r1, d7
  38d5b4: f04f 0200    	mov.w	r2, #0x0
  38d5b8: f04f 0300    	mov.w	r3, #0x0
  38d5bc: f2c4 0320    	movt	r3, #0x4020
  38d5c0: f345 fe44    	bl	0x6d324c <cpBodyNew>    @ imm = #0x345c88
  38d5c4: 4602         	mov	r2, r0
  38d5c6: 9b0d         	ldr	r3, [sp, #0x34]
  38d5c8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  38d5cc: 9b0d         	ldr	r3, [sp, #0x34]
  38d5ce: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38d5d2: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x38d6e0 <POWERUP::initBody()+0x148>
  38d5d4: 447a         	add	r2, pc
  38d5d6: 601a         	str	r2, [r3]
  38d5d8: 9b0d         	ldr	r3, [sp, #0x34]
  38d5da: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  38d5de: 9a0d         	ldr	r2, [sp, #0x34]
  38d5e0: f8c3 2090    	str.w	r2, [r3, #0x90]
  38d5e4: 990d         	ldr	r1, [sp, #0x34]
  38d5e6: f04f 0200    	mov.w	r2, #0x0
  38d5ea: f04f 0300    	mov.w	r3, #0x0
  38d5ee: f6c3 73f0    	movt	r3, #0x3ff0
  38d5f2: e9c1 233c    	strd	r2, r3, [r1, #240]
  38d5f6: 9c0d         	ldr	r4, [sp, #0x34]
  38d5f8: ab08         	add	r3, sp, #0x20
  38d5fa: 4618         	mov	r0, r3
  38d5fc: ed9f 0b30    	vldr	d0, [pc, #192]          @ 0x38d6c0 <POWERUP::initBody()+0x128>
  38d600: ed9f 1b31    	vldr	d1, [pc, #196]          @ 0x38d6c8 <POWERUP::initBody()+0x130>
  38d604: f7fe fe6e    	bl	0x38c2e4 <PHASR::getDAMAGE()+0x27c> @ imm = #-0x1324
  38d608: 34f8         	adds	r4, #0xf8
  38d60a: ab08         	add	r3, sp, #0x20
  38d60c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38d60e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38d612: 9b0d         	ldr	r3, [sp, #0x34]
  38d614: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  38d618: ab10         	add	r3, sp, #0x40
  38d61a: 4618         	mov	r0, r3
  38d61c: ed9f 0b28    	vldr	d0, [pc, #160]          @ 0x38d6c0 <POWERUP::initBody()+0x128>
  38d620: eeb8 1b08    	vmov.f64	d1, #-3.000000e+00
  38d624: f7fe fe5e    	bl	0x38c2e4 <PHASR::getDAMAGE()+0x27c> @ imm = #-0x1344
  38d628: ab14         	add	r3, sp, #0x50
  38d62a: 4618         	mov	r0, r3
  38d62c: ed9f 0b24    	vldr	d0, [pc, #144]          @ 0x38d6c0 <POWERUP::initBody()+0x128>
  38d630: eeb0 1b08    	vmov.f64	d1, #3.000000e+00
  38d634: f7fe fe56    	bl	0x38c2e4 <PHASR::getDAMAGE()+0x27c> @ imm = #-0x1354
  38d638: ac02         	add	r4, sp, #0x8
  38d63a: ab14         	add	r3, sp, #0x50
  38d63c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  38d63e: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  38d642: f04f 0200    	mov.w	r2, #0x0
  38d646: f04f 0300    	mov.w	r3, #0x0
  38d64a: f2c4 0318    	movt	r3, #0x4018
  38d64e: e9cd 2306    	strd	r2, r3, [sp, #24]
  38d652: 466b         	mov	r3, sp
  38d654: aa12         	add	r2, sp, #0x48
  38d656: e892 0003    	ldm.w	r2, {r0, r1}
  38d65a: e883 0003    	stm.w	r3, {r0, r1}
  38d65e: ab10         	add	r3, sp, #0x40
  38d660: cb0c         	ldm	r3, {r2, r3}
  38d662: 4628         	mov	r0, r5
  38d664: f347 fdea    	bl	0x6d523c <cpSegmentShapeNew> @ imm = #0x347bd4
  38d668: 4602         	mov	r2, r0
  38d66a: 9b0d         	ldr	r3, [sp, #0x34]
  38d66c: f8c3 20ec    	str.w	r2, [r3, #0xec]
  38d670: 9b0d         	ldr	r3, [sp, #0x34]
  38d672: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38d676: 2202         	movs	r2, #0x2
  38d678: 655a         	str	r2, [r3, #0x54]
  38d67a: 9b0d         	ldr	r3, [sp, #0x34]
  38d67c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38d680: 2202         	movs	r2, #0x2
  38d682: 65da         	str	r2, [r3, #0x5c]
  38d684: 9b0d         	ldr	r3, [sp, #0x34]
  38d686: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38d68a: 2202         	movs	r2, #0x2
  38d68c: 659a         	str	r2, [r3, #0x58]
  38d68e: 9b0d         	ldr	r3, [sp, #0x34]
  38d690: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  38d694: a30e         	adr	r3, #56 <POWERUP::initBody()+0x10e>
  38d696: e9d3 2300    	ldrd	r2, r3, [r3]
  38d69a: e9c1 230c    	strd	r2, r3, [r1, #48]
  38d69e: 9b0d         	ldr	r3, [sp, #0x34]
  38d6a0: f8d3 10ec    	ldr.w	r1, [r3, #0xec]
  38d6a4: a30c         	adr	r3, #48 <POWERUP::initBody()+0x11c>
  38d6a6: e9d3 2300    	ldrd	r2, r3, [r3]
  38d6aa: e9c1 230e    	strd	r2, r3, [r1, #56]
  38d6ae: 9b0d         	ldr	r3, [sp, #0x34]
  38d6b0: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  38d6b4: 9a0d         	ldr	r2, [sp, #0x34]
  38d6b6: 651a         	str	r2, [r3, #0x50]
  38d6b8: b019         	add	sp, #0x64
  38d6ba: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38d6bb); words below are literal-pool data ---
  38d6bc: f3af 8000    	nop.w
  38d6cc: 4000         	ands	r0, r0
  38d6ce: c06f         	stm	r0!, {r0, r1, r2, r3, r5, r6}
  38d6d0: 0000         	movs	r0, r0
  38d6d2: a000         	adr	r0, #0 <POWERUP::initBody()+0x13e>
  38d6d4: 9999         	ldr	r1, [sp, #0x264]
  38d6d6: 3fb9         	subs	r7, #0xb9
  38d6d8: 0000         	movs	r0, r0
  38d6da: 8000         	strh	r0, [r0]
  38d6dc: ae14         	add	r6, sp, #0x50
  38d6de: 3fef         	subs	r7, #0xef
  38d6e0: fc6d ffff    	stc2l	p15, c15, [sp], #-1020

// ==== POWERUP::updateRemoteWeaponStep
//      file offset 0x38d6e8 (= ELF address; Ghidra 0x39d6e8), 40 bytes, Thumb-2
  38d6e8: b500         	push	{lr}
  38d6ea: b083         	sub	sp, #0xc
  38d6ec: 9001         	str	r0, [sp, #0x4]
  38d6ee: 9100         	str	r1, [sp]
  38d6f0: 9b01         	ldr	r3, [sp, #0x4]
  38d6f2: 4618         	mov	r0, r3
  38d6f4: 9900         	ldr	r1, [sp]
  38d6f6: f087 fe73    	bl	0x4153e0 <Weapon::updateRemoteWeaponStep(float)> @ imm = #0x87ce6
  38d6fa: 9b01         	ldr	r3, [sp, #0x4]
  38d6fc: 681b         	ldr	r3, [r3]
  38d6fe: f503 73da    	add.w	r3, r3, #0x1b4
  38d702: 681b         	ldr	r3, [r3]
  38d704: 9801         	ldr	r0, [sp, #0x4]
  38d706: 9900         	ldr	r1, [sp]
  38d708: 4798         	blx	r3
  38d70a: b003         	add	sp, #0xc
  38d70c: f85d fb04    	ldr	pc, [sp], #4

// ==== POWERUP::updateItemStep
//      file offset 0x38d710 (= ELF address; Ghidra 0x39d710), 10 bytes, Thumb-2
  38d710: b082         	sub	sp, #0x8
  38d712: 9001         	str	r0, [sp, #0x4]
  38d714: 9100         	str	r1, [sp]
  38d716: b002         	add	sp, #0x8
  38d718: 4770         	bx	lr

// ==== POWERUP::setAmmoType
//      file offset 0x38d71c (= ELF address; Ghidra 0x39d71c), 104 bytes, Thumb-2
  38d71c: b500         	push	{lr}
  38d71e: b083         	sub	sp, #0xc
  38d720: 9001         	str	r0, [sp, #0x4]
  38d722: 9100         	str	r1, [sp]
  38d724: 9b01         	ldr	r3, [sp, #0x4]
  38d726: 4618         	mov	r0, r3
  38d728: 9900         	ldr	r1, [sp]
  38d72a: f087 ffa9    	bl	0x415680 <Weapon::setAmmoType(ItemType)> @ imm = #0x87f52
  38d72e: 9b00         	ldr	r3, [sp]
  38d730: 2b0e         	cmp	r3, #0xe
  38d732: d002         	beq	0x38d73a <POWERUP::setAmmoType(ItemType)+0x1e> @ imm = #0x4
  38d734: 2b0f         	cmp	r3, #0xf
  38d736: d011         	beq	0x38d75c <POWERUP::setAmmoType(ItemType)+0x40> @ imm = #0x22
  38d738: e021         	b	0x38d77e <POWERUP::setAmmoType(ItemType)+0x62> @ imm = #0x42
  38d73a: 9b01         	ldr	r3, [sp, #0x4]
  38d73c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d740: 681b         	ldr	r3, [r3]
  38d742: f503 7302    	add.w	r3, r3, #0x208
  38d746: 681b         	ldr	r3, [r3]
  38d748: 9a01         	ldr	r2, [sp, #0x4]
  38d74a: f8d2 11ec    	ldr.w	r1, [r2, #0x1ec]
  38d74e: 9a01         	ldr	r2, [sp, #0x4]
  38d750: f502 7200    	add.w	r2, r2, #0x200
  38d754: 4608         	mov	r0, r1
  38d756: 4611         	mov	r1, r2
  38d758: 4798         	blx	r3
  38d75a: e010         	b	0x38d77e <POWERUP::setAmmoType(ItemType)+0x62> @ imm = #0x20
  38d75c: 9b01         	ldr	r3, [sp, #0x4]
  38d75e: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d762: 681b         	ldr	r3, [r3]
  38d764: f503 7302    	add.w	r3, r3, #0x208
  38d768: 681b         	ldr	r3, [r3]
  38d76a: 9a01         	ldr	r2, [sp, #0x4]
  38d76c: f8d2 11ec    	ldr.w	r1, [r2, #0x1ec]
  38d770: 9a01         	ldr	r2, [sp, #0x4]
  38d772: f502 7204    	add.w	r2, r2, #0x210
  38d776: 4608         	mov	r0, r1
  38d778: 4611         	mov	r1, r2
  38d77a: 4798         	blx	r3
  38d77c: bf00         	nop
  38d77e: b003         	add	sp, #0xc
  38d780: f85d fb04    	ldr	pc, [sp], #4

// ==== POWERUP::setContact
//      file offset 0x38d784 (= ELF address; Ghidra 0x39d784), 36 bytes, Thumb-2
  38d784: b084         	sub	sp, #0x10
  38d786: 9003         	str	r0, [sp, #0xc]
  38d788: 9201         	str	r2, [sp, #0x4]
  38d78a: 9300         	str	r3, [sp]
  38d78c: 460b         	mov	r3, r1
  38d78e: f88d 300b    	strb.w	r3, [sp, #0xb]
  38d792: 9b03         	ldr	r3, [sp, #0xc]
  38d794: f89d 200b    	ldrb.w	r2, [sp, #0xb]
  38d798: f883 20e4    	strb.w	r2, [r3, #0xe4]
  38d79c: 9b03         	ldr	r3, [sp, #0xc]
  38d79e: f893 30e4    	ldrb.w	r3, [r3, #0xe4]
  38d7a2: 4618         	mov	r0, r3
  38d7a4: b004         	add	sp, #0x10
  38d7a6: 4770         	bx	lr

// ==== POWERUP::setMapConfiguration
//      file offset 0x38d7a8 (= ELF address; Ghidra 0x39d7a8), 188 bytes, Thumb-2
  38d7a8: b570         	push	{r4, r5, r6, lr}
  38d7aa: b084         	sub	sp, #0x10
  38d7ac: 9001         	str	r0, [sp, #0x4]
  38d7ae: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x38d85c <POWERUP::setMapConfiguration()+0xb4>
  38d7b0: 447c         	add	r4, pc
  38d7b2: 9b01         	ldr	r3, [sp, #0x4]
  38d7b4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d7b8: 681b         	ldr	r3, [r3]
  38d7ba: 334c         	adds	r3, #0x4c
  38d7bc: 681d         	ldr	r5, [r3]
  38d7be: 9b01         	ldr	r3, [sp, #0x4]
  38d7c0: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38d7c4: ab02         	add	r3, sp, #0x8
  38d7c6: 4618         	mov	r0, r3
  38d7c8: f04f 0100    	mov.w	r1, #0x0
  38d7cc: f04f 0200    	mov.w	r2, #0x0
  38d7d0: f205 fa8e    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x20551c
  38d7d4: ab02         	add	r3, sp, #0x8
  38d7d6: 4630         	mov	r0, r6
  38d7d8: 4619         	mov	r1, r3
  38d7da: 47a8         	blx	r5
  38d7dc: 9b01         	ldr	r3, [sp, #0x4]
  38d7de: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d7e2: 681b         	ldr	r3, [r3]
  38d7e4: 337c         	adds	r3, #0x7c
  38d7e6: 681d         	ldr	r5, [r3]
  38d7e8: 9b01         	ldr	r3, [sp, #0x4]
  38d7ea: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  38d7ee: ab02         	add	r3, sp, #0x8
  38d7f0: 4618         	mov	r0, r3
  38d7f2: f04f 517c    	mov.w	r1, #0x3f000000
  38d7f6: f04f 527c    	mov.w	r2, #0x3f000000
  38d7fa: f205 fa79    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2054f2
  38d7fe: ab02         	add	r3, sp, #0x8
  38d800: 4630         	mov	r0, r6
  38d802: 4619         	mov	r1, r3
  38d804: 47a8         	blx	r5
  38d806: 9b01         	ldr	r3, [sp, #0x4]
  38d808: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d80c: 681b         	ldr	r3, [r3]
  38d80e: 3398         	adds	r3, #0x98
  38d810: 681b         	ldr	r3, [r3]
  38d812: 9a01         	ldr	r2, [sp, #0x4]
  38d814: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38d818: 4610         	mov	r0, r2
  38d81a: f04f 0100    	mov.w	r1, #0x0
  38d81e: 4798         	blx	r3
  38d820: 9b01         	ldr	r3, [sp, #0x4]
  38d822: 681b         	ldr	r3, [r3]
  38d824: 334c         	adds	r3, #0x4c
  38d826: 681d         	ldr	r5, [r3]
  38d828: 9e01         	ldr	r6, [sp, #0x4]
  38d82a: ab02         	add	r3, sp, #0x8
  38d82c: 4618         	mov	r0, r3
  38d82e: f04f 0100    	mov.w	r1, #0x0
  38d832: f04f 0200    	mov.w	r2, #0x0
  38d836: f205 fa5b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x2054b6
  38d83a: ab02         	add	r3, sp, #0x8
  38d83c: 4630         	mov	r0, r6
  38d83e: 4619         	mov	r1, r3
  38d840: 47a8         	blx	r5
  38d842: 9b01         	ldr	r3, [sp, #0x4]
  38d844: 681b         	ldr	r3, [r3]
  38d846: 3340         	adds	r3, #0x40
  38d848: 681b         	ldr	r3, [r3]
  38d84a: 9901         	ldr	r1, [sp, #0x4]
  38d84c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x38d860 <POWERUP::setMapConfiguration()+0xb8>
  38d84e: 58a2         	ldr	r2, [r4, r2]
  38d850: 6812         	ldr	r2, [r2]
  38d852: 4608         	mov	r0, r1
  38d854: 4611         	mov	r1, r2
  38d856: 4798         	blx	r3
  38d858: b004         	add	sp, #0x10
  38d85a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x38d85b); words below are literal-pool data ---
  38d85c: 5258         	strh	r0, [r3, r1]
  38d85e: 005a         	lsls	r2, r3, #0x1
  38d860: d748         	bvc	0x38d8f4 <POWERUP::canPlayerBeModed()+0x14> @ imm = #0x90
  38d862: ffff b500    	<unknown>

// ==== POWERUP::isRight
//      file offset 0x38d864 (= ELF address; Ghidra 0x39d864), 60 bytes, Thumb-2
  38d864: b500         	push	{lr}
  38d866: b083         	sub	sp, #0xc
  38d868: 9001         	str	r0, [sp, #0x4]
  38d86a: 9b01         	ldr	r3, [sp, #0x4]
  38d86c: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d870: 681b         	ldr	r3, [r3]
  38d872: 3334         	adds	r3, #0x34
  38d874: 681b         	ldr	r3, [r3]
  38d876: 9a01         	ldr	r2, [sp, #0x4]
  38d878: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  38d87c: 4610         	mov	r0, r2
  38d87e: 4798         	blx	r3
  38d880: ee07 0a10    	vmov	s14, r0
  38d884: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  38d888: eeb4 7ae7    	vcmpe.f32	s14, s15
  38d88c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38d890: bfd4         	ite	le
  38d892: 2300         	movle	r3, #0x0
  38d894: 2301         	movgt	r3, #0x1
  38d896: b2db         	uxtb	r3, r3
  38d898: 4618         	mov	r0, r3
  38d89a: b003         	add	sp, #0xc
  38d89c: f85d fb04    	ldr	pc, [sp], #4

// ==== POWERUP::setRight
//      file offset 0x38d8a0 (= ELF address; Ghidra 0x39d8a0), 64 bytes, Thumb-2
  38d8a0: b500         	push	{lr}
  38d8a2: b083         	sub	sp, #0xc
  38d8a4: 9001         	str	r0, [sp, #0x4]
  38d8a6: 460b         	mov	r3, r1
  38d8a8: f88d 3003    	strb.w	r3, [sp, #0x3]
  38d8ac: 9b01         	ldr	r3, [sp, #0x4]
  38d8ae: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  38d8b2: 681b         	ldr	r3, [r3]
  38d8b4: 3330         	adds	r3, #0x30
  38d8b6: 681a         	ldr	r2, [r3]
  38d8b8: 9b01         	ldr	r3, [sp, #0x4]
  38d8ba: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  38d8be: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  38d8c2: 2b00         	cmp	r3, #0x0
  38d8c4: d002         	beq	0x38d8cc <POWERUP::setRight(bool)+0x2c> @ imm = #0x4
  38d8c6: f04f 537e    	mov.w	r3, #0x3f800000
  38d8ca: e003         	b	0x38d8d4 <POWERUP::setRight(bool)+0x34> @ imm = #0x6
  38d8cc: f04f 0300    	mov.w	r3, #0x0
  38d8d0: f6cb 7380    	movt	r3, #0xbf80
  38d8d4: 4608         	mov	r0, r1
  38d8d6: 4619         	mov	r1, r3
  38d8d8: 4790         	blx	r2
  38d8da: b003         	add	sp, #0xc
  38d8dc: f85d fb04    	ldr	pc, [sp], #4

// ==== POWERUP::canPlayerBeModed
//      file offset 0x38d8e0 (= ELF address; Ghidra 0x39d8e0), 132 bytes, Thumb-2
  38d8e0: b510         	push	{r4, lr}
  38d8e2: b084         	sub	sp, #0x10
  38d8e4: 9001         	str	r0, [sp, #0x4]
  38d8e6: 4c1d         	ldr	r4, [pc, #0x74]         @ 0x38d95c <POWERUP::canPlayerBeModed()+0x7c>
  38d8e8: 447c         	add	r4, pc
  38d8ea: 2300         	movs	r3, #0x0
  38d8ec: f88d 300f    	strb.w	r3, [sp, #0xf]
  38d8f0: 9b01         	ldr	r3, [sp, #0x4]
  38d8f2: 681b         	ldr	r3, [r3]
  38d8f4: f503 731f    	add.w	r3, r3, #0x27c
  38d8f8: 681b         	ldr	r3, [r3]
  38d8fa: 9a01         	ldr	r2, [sp, #0x4]
  38d8fc: 4610         	mov	r0, r2
  38d8fe: 4798         	blx	r3
  38d900: 4603         	mov	r3, r0
  38d902: 2b0f         	cmp	r3, #0xf
  38d904: d01c         	beq	0x38d940 <POWERUP::canPlayerBeModed()+0x60> @ imm = #0x38
  38d906: 2b16         	cmp	r3, #0x16
  38d908: d01e         	beq	0x38d948 <POWERUP::canPlayerBeModed()+0x68> @ imm = #0x3c
  38d90a: 2b0e         	cmp	r3, #0xe
  38d90c: d000         	beq	0x38d910 <POWERUP::canPlayerBeModed()+0x30> @ imm = #0x0
  38d90e: e01f         	b	0x38d950 <POWERUP::canPlayerBeModed()+0x70> @ imm = #0x3e
  38d910: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x38d960 <POWERUP::canPlayerBeModed()+0x80>
  38d912: 58e3         	ldr	r3, [r4, r3]
  38d914: 681b         	ldr	r3, [r3]
  38d916: 681b         	ldr	r3, [r3]
  38d918: f503 7317    	add.w	r3, r3, #0x25c
  38d91c: 681b         	ldr	r3, [r3]
  38d91e: 4a10         	ldr	r2, [pc, #0x40]         @ 0x38d960 <POWERUP::canPlayerBeModed()+0x80>
  38d920: 58a2         	ldr	r2, [r4, r2]
  38d922: 6812         	ldr	r2, [r2]
  38d924: 4610         	mov	r0, r2
  38d926: 4798         	blx	r3
  38d928: 4603         	mov	r3, r0
  38d92a: 2b63         	cmp	r3, #0x63
  38d92c: bfcc         	ite	gt
  38d92e: 2300         	movgt	r3, #0x0
  38d930: 2301         	movle	r3, #0x1
  38d932: b2db         	uxtb	r3, r3
  38d934: 2b00         	cmp	r3, #0x0
  38d936: d002         	beq	0x38d93e <POWERUP::canPlayerBeModed()+0x5e> @ imm = #0x4
  38d938: 2301         	movs	r3, #0x1
  38d93a: f88d 300f    	strb.w	r3, [sp, #0xf]
  38d93e: e007         	b	0x38d950 <POWERUP::canPlayerBeModed()+0x70> @ imm = #0xe
  38d940: 2301         	movs	r3, #0x1
  38d942: f88d 300f    	strb.w	r3, [sp, #0xf]
  38d946: e003         	b	0x38d950 <POWERUP::canPlayerBeModed()+0x70> @ imm = #0x6
  38d948: 2301         	movs	r3, #0x1
  38d94a: f88d 300f    	strb.w	r3, [sp, #0xf]
  38d94e: bf00         	nop
  38d950: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  38d954: 4618         	mov	r0, r3
  38d956: b004         	add	sp, #0x10
  38d958: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38d959); words below are literal-pool data ---
  38d95a: bf00         	nop
  38d95c: 5120         	str	r0, [r4, r4]
  38d95e: 005a         	lsls	r2, r3, #0x1
  38d960: d784         	bvc	0x38d86c <POWERUP::isRight()+0x8> @ imm = #-0xf8
  38d962: ffff 0000    	<unknown>

// ==== POWERUP::doPlayerMod
//      file offset 0x38d968 (= ELF address; Ghidra 0x39d968), 880 bytes, Thumb-2
  38d968: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
  38d96c: b08d         	sub	sp, #0x34
  38d96e: 9007         	str	r0, [sp, #0x1c]
  38d970: 9106         	str	r1, [sp, #0x18]
  38d972: 4c83         	ldr	r4, [pc, #0x20c]        @ 0x38db80 <POWERUP::doPlayerMod(float)+0x218>
  38d974: 447c         	add	r4, pc
  38d976: 2300         	movs	r3, #0x0
  38d978: f88d 3027    	strb.w	r3, [sp, #0x27]
  38d97c: 9b07         	ldr	r3, [sp, #0x1c]
  38d97e: 681b         	ldr	r3, [r3]
  38d980: f503 731f    	add.w	r3, r3, #0x27c
  38d984: 681b         	ldr	r3, [r3]
  38d986: 9a07         	ldr	r2, [sp, #0x1c]
  38d988: 4610         	mov	r0, r2
  38d98a: 4798         	blx	r3
  38d98c: 4603         	mov	r3, r0
  38d98e: 2b0f         	cmp	r3, #0xf
  38d990: d04d         	beq	0x38da2e <POWERUP::doPlayerMod(float)+0xc6> @ imm = #0x9a
  38d992: 2b16         	cmp	r3, #0x16
  38d994: f000 80cb    	beq.w	0x38db2e <POWERUP::doPlayerMod(float)+0x1c6> @ imm = #0x196
  38d998: 2b0e         	cmp	r3, #0xe
  38d99a: d000         	beq	0x38d99e <POWERUP::doPlayerMod(float)+0x36> @ imm = #0x0
  38d99c: e186         	b	0x38dcac <POWERUP::doPlayerMod(float)+0x344> @ imm = #0x30c
  38d99e: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38d9a0: 58e3         	ldr	r3, [r4, r3]
  38d9a2: 681b         	ldr	r3, [r3]
  38d9a4: 681b         	ldr	r3, [r3]
  38d9a6: f503 7317    	add.w	r3, r3, #0x25c
  38d9aa: 681b         	ldr	r3, [r3]
  38d9ac: 4a75         	ldr	r2, [pc, #0x1d4]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38d9ae: 58a2         	ldr	r2, [r4, r2]
  38d9b0: 6812         	ldr	r2, [r2]
  38d9b2: 4610         	mov	r0, r2
  38d9b4: 4798         	blx	r3
  38d9b6: 4603         	mov	r3, r0
  38d9b8: 2b63         	cmp	r3, #0x63
  38d9ba: dc0b         	bgt	0x38d9d4 <POWERUP::doPlayerMod(float)+0x6c> @ imm = #0x16
  38d9bc: 9b07         	ldr	r3, [sp, #0x1c]
  38d9be: ed93 7a7c    	vldr	s14, [r3, #496]
  38d9c2: eddf 7a6d    	vldr	s15, [pc, #436]         @ 0x38db78 <POWERUP::doPlayerMod(float)+0x210>
  38d9c6: eeb4 7ae7    	vcmpe.f32	s14, s15
  38d9ca: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38d9ce: d501         	bpl	0x38d9d4 <POWERUP::doPlayerMod(float)+0x6c> @ imm = #0x2
  38d9d0: 2301         	movs	r3, #0x1
  38d9d2: e000         	b	0x38d9d6 <POWERUP::doPlayerMod(float)+0x6e> @ imm = #0x0
  38d9d4: 2300         	movs	r3, #0x0
  38d9d6: 2b00         	cmp	r3, #0x0
  38d9d8: d028         	beq	0x38da2c <POWERUP::doPlayerMod(float)+0xc4> @ imm = #0x50
  38d9da: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38d9dc: 58e3         	ldr	r3, [r4, r3]
  38d9de: 681b         	ldr	r3, [r3]
  38d9e0: 681b         	ldr	r3, [r3]
  38d9e2: f503 7318    	add.w	r3, r3, #0x260
  38d9e6: 681d         	ldr	r5, [r3]
  38d9e8: 4b66         	ldr	r3, [pc, #0x198]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38d9ea: 58e3         	ldr	r3, [r4, r3]
  38d9ec: 681b         	ldr	r3, [r3]
  38d9ee: 461e         	mov	r6, r3
  38d9f0: 4b64         	ldr	r3, [pc, #0x190]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38d9f2: 58e3         	ldr	r3, [r4, r3]
  38d9f4: 681b         	ldr	r3, [r3]
  38d9f6: 681b         	ldr	r3, [r3]
  38d9f8: f503 7317    	add.w	r3, r3, #0x25c
  38d9fc: 681b         	ldr	r3, [r3]
  38d9fe: 4a61         	ldr	r2, [pc, #0x184]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38da00: 58a2         	ldr	r2, [r4, r2]
  38da02: 6812         	ldr	r2, [r2]
  38da04: 4610         	mov	r0, r2
  38da06: 4798         	blx	r3
  38da08: 4603         	mov	r3, r0
  38da0a: 3301         	adds	r3, #0x1
  38da0c: 4630         	mov	r0, r6
  38da0e: 4619         	mov	r1, r3
  38da10: 47a8         	blx	r5
  38da12: 9b07         	ldr	r3, [sp, #0x1c]
  38da14: ed93 7a7c    	vldr	s14, [r3, #496]
  38da18: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  38da1c: ee77 7a27    	vadd.f32	s15, s14, s15
  38da20: 9b07         	ldr	r3, [sp, #0x1c]
  38da22: edc3 7a7c    	vstr	s15, [r3, #496]
  38da26: 2301         	movs	r3, #0x1
  38da28: f88d 3027    	strb.w	r3, [sp, #0x27]
  38da2c: e13e         	b	0x38dcac <POWERUP::doPlayerMod(float)+0x344> @ imm = #0x27c
  38da2e: 9b07         	ldr	r3, [sp, #0x1c]
  38da30: ed93 7a7d    	vldr	s14, [r3, #500]
  38da34: eddd 7a06    	vldr	s15, [sp, #24]
  38da38: ee77 7a27    	vadd.f32	s15, s14, s15
  38da3c: 9b07         	ldr	r3, [sp, #0x1c]
  38da3e: edc3 7a7d    	vstr	s15, [r3, #500]
  38da42: 9b07         	ldr	r3, [sp, #0x1c]
  38da44: ed93 7a7d    	vldr	s14, [r3, #500]
  38da48: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  38da4c: eeb4 7ae7    	vcmpe.f32	s14, s15
  38da50: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38da54: d400         	bmi	0x38da58 <POWERUP::doPlayerMod(float)+0xf0> @ imm = #0x0
  38da56: e129         	b	0x38dcac <POWERUP::doPlayerMod(float)+0x344> @ imm = #0x252
  38da58: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38da5a: 58e3         	ldr	r3, [r4, r3]
  38da5c: 681b         	ldr	r3, [r3]
  38da5e: 681b         	ldr	r3, [r3]
  38da60: f503 7329    	add.w	r3, r3, #0x2a4
  38da64: 681b         	ldr	r3, [r3]
  38da66: 4a47         	ldr	r2, [pc, #0x11c]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38da68: 58a2         	ldr	r2, [r4, r2]
  38da6a: 6812         	ldr	r2, [r2]
  38da6c: 4610         	mov	r0, r2
  38da6e: f04f 0100    	mov.w	r1, #0x0
  38da72: f2c4 21c8    	movt	r1, #0x42c8
  38da76: 4798         	blx	r3
  38da78: 4b42         	ldr	r3, [pc, #0x108]        @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38da7a: 58e3         	ldr	r3, [r4, r3]
  38da7c: 681b         	ldr	r3, [r3]
  38da7e: 681b         	ldr	r3, [r3]
  38da80: f503 73f0    	add.w	r3, r3, #0x1e0
  38da84: 681b         	ldr	r3, [r3]
  38da86: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38da88: 58a2         	ldr	r2, [r4, r2]
  38da8a: 6812         	ldr	r2, [r2]
  38da8c: 4610         	mov	r0, r2
  38da8e: 2101         	movs	r1, #0x1
  38da90: 4798         	blx	r3
  38da92: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38da94: 58e3         	ldr	r3, [r4, r3]
  38da96: 681b         	ldr	r3, [r3]
  38da98: 681b         	ldr	r3, [r3]
  38da9a: f503 73f2    	add.w	r3, r3, #0x1e4
  38da9e: 681d         	ldr	r5, [r3]
  38daa0: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38daa2: 58e3         	ldr	r3, [r4, r3]
  38daa4: 681b         	ldr	r3, [r3]
  38daa6: 461e         	mov	r6, r3
  38daa8: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38daaa: 58e3         	ldr	r3, [r4, r3]
  38daac: 681b         	ldr	r3, [r3]
  38daae: 681b         	ldr	r3, [r3]
  38dab0: f503 73f4    	add.w	r3, r3, #0x1e8
  38dab4: 681b         	ldr	r3, [r3]
  38dab6: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38dab8: 58a2         	ldr	r2, [r4, r2]
  38daba: 6812         	ldr	r2, [r2]
  38dabc: 4610         	mov	r0, r2
  38dabe: 4798         	blx	r3
  38dac0: ec41 0b16    	vmov	d6, r0, r1
  38dac4: ed9f 7b2a    	vldr	d7, [pc, #168]          @ 0x38db70 <POWERUP::doPlayerMod(float)+0x208>
  38dac8: eeb4 6bc7    	vcmpe.f64	d6, d7
  38dacc: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38dad0: d502         	bpl	0x38dad8 <POWERUP::doPlayerMod(float)+0x170> @ imm = #0x4
  38dad2: eddf 7a2a    	vldr	s15, [pc, #168]         @ 0x38db7c <POWERUP::doPlayerMod(float)+0x214>
  38dad6: e00f         	b	0x38daf8 <POWERUP::doPlayerMod(float)+0x190> @ imm = #0x1e
  38dad8: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38dada: 58e3         	ldr	r3, [r4, r3]
  38dadc: 681b         	ldr	r3, [r3]
  38dade: 681b         	ldr	r3, [r3]
  38dae0: f503 73f4    	add.w	r3, r3, #0x1e8
  38dae4: 681b         	ldr	r3, [r3]
  38dae6: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38dae8: 58a2         	ldr	r2, [r4, r2]
  38daea: 6812         	ldr	r2, [r2]
  38daec: 4610         	mov	r0, r2
  38daee: 4798         	blx	r3
  38daf0: ec41 0b17    	vmov	d7, r0, r1
  38daf4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  38daf8: 4630         	mov	r0, r6
  38dafa: ee17 1a90    	vmov	r1, s15
  38dafe: 47a8         	blx	r5
  38db00: 4b20         	ldr	r3, [pc, #0x80]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38db02: 58e3         	ldr	r3, [r4, r3]
  38db04: 681b         	ldr	r3, [r3]
  38db06: 2201         	movs	r2, #0x1
  38db08: f883 211c    	strb.w	r2, [r3, #0x11c]
  38db0c: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38db0e: 58e3         	ldr	r3, [r4, r3]
  38db10: 681b         	ldr	r3, [r3]
  38db12: 681b         	ldr	r3, [r3]
  38db14: f503 73ce    	add.w	r3, r3, #0x19c
  38db18: 681b         	ldr	r3, [r3]
  38db1a: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x38db84 <POWERUP::doPlayerMod(float)+0x21c>
  38db1c: 58a2         	ldr	r2, [r4, r2]
  38db1e: 6812         	ldr	r2, [r2]
  38db20: 4610         	mov	r0, r2
  38db22: 2100         	movs	r1, #0x0
  38db24: 4798         	blx	r3
  38db26: 2301         	movs	r3, #0x1
  38db28: f88d 3027    	strb.w	r3, [sp, #0x27]
  38db2c: e0be         	b	0x38dcac <POWERUP::doPlayerMod(float)+0x344> @ imm = #0x17c
  38db2e: 9b07         	ldr	r3, [sp, #0x1c]
  38db30: ed93 7a7e    	vldr	s14, [r3, #504]
  38db34: eddd 7a06    	vldr	s15, [sp, #24]
  38db38: ee77 7a27    	vadd.f32	s15, s14, s15
  38db3c: 9b07         	ldr	r3, [sp, #0x1c]
  38db3e: edc3 7a7e    	vstr	s15, [r3, #504]
  38db42: 9b07         	ldr	r3, [sp, #0x1c]
  38db44: ed93 7a7f    	vldr	s14, [r3, #508]
  38db48: eddd 7a06    	vldr	s15, [sp, #24]
  38db4c: ee77 7a67    	vsub.f32	s15, s14, s15
  38db50: 9b07         	ldr	r3, [sp, #0x1c]
  38db52: edc3 7a7f    	vstr	s15, [r3, #508]
  38db56: 9b07         	ldr	r3, [sp, #0x1c]
  38db58: ed93 7a7e    	vldr	s14, [r3, #504]
  38db5c: eef3 7a0e    	vmov.f32	s15, #3.000000e+01
  38db60: eeb4 7ae7    	vcmpe.f32	s14, s15
  38db64: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38db68: d40e         	bmi	0x38db88 <POWERUP::doPlayerMod(float)+0x220> @ imm = #0x1c
  38db6a: e09e         	b	0x38dcaa <POWERUP::doPlayerMod(float)+0x342> @ imm = #0x13c
  38db6c: f3af 8000    	nop.w
  38db70: 999a         	ldr	r1, [sp, #0x268]
  38db72: 9999         	ldr	r1, [sp, #0x264]
  38db74: 9999         	ldr	r1, [sp, #0x264]
  38db76: 3fc9         	subs	r7, #0xc9
  38db78: 0000         	movs	r0, r0
  38db7a: 42c8         	cmn	r0, r1
  38db7c: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  38db7e: 3e4c         	subs	r6, #0x4c
  38db80: 5094         	str	r4, [r2, r2]
  38db82: 005a         	lsls	r2, r3, #0x1
  38db84: d784         	bvc	0x38da90 <POWERUP::doPlayerMod(float)+0x128> @ imm = #-0xf8
  38db86: ffff 4b4f    	vtbx.8	d20, {d15, d16, d17, d18}, d15
  38db8a: 58e3         	ldr	r3, [r4, r3]
  38db8c: 681b         	ldr	r3, [r3]
  38db8e: 681b         	ldr	r3, [r3]
  38db90: f503 7329    	add.w	r3, r3, #0x2a4
  38db94: 681b         	ldr	r3, [r3]
  38db96: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x38dcc8 <POWERUP::doPlayerMod(float)+0x360>
  38db98: 58a2         	ldr	r2, [r4, r2]
  38db9a: 6812         	ldr	r2, [r2]
  38db9c: 4610         	mov	r0, r2
  38db9e: f04f 0100    	mov.w	r1, #0x0
  38dba2: 4798         	blx	r3
  38dba4: 4b48         	ldr	r3, [pc, #0x120]        @ 0x38dcc8 <POWERUP::doPlayerMod(float)+0x360>
  38dba6: 58e3         	ldr	r3, [r4, r3]
  38dba8: 681b         	ldr	r3, [r3]
  38dbaa: 681b         	ldr	r3, [r3]
  38dbac: f503 73f0    	add.w	r3, r3, #0x1e0
  38dbb0: 681b         	ldr	r3, [r3]
  38dbb2: 4a45         	ldr	r2, [pc, #0x114]        @ 0x38dcc8 <POWERUP::doPlayerMod(float)+0x360>
  38dbb4: 58a2         	ldr	r2, [r4, r2]
  38dbb6: 6812         	ldr	r2, [r2]
  38dbb8: 4610         	mov	r0, r2
  38dbba: 2100         	movs	r1, #0x0
  38dbbc: 4798         	blx	r3
  38dbbe: 9b07         	ldr	r3, [sp, #0x1c]
  38dbc0: edd3 7a7f    	vldr	s15, [r3, #508]
  38dbc4: eef5 7ac0    	vcmpe.f32	s15, #0
  38dbc8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  38dbcc: d86a         	bhi	0x38dca4 <POWERUP::doPlayerMod(float)+0x33c> @ imm = #0xd4
  38dbce: 9b07         	ldr	r3, [sp, #0x1c]
  38dbd0: f04f 0200    	mov.w	r2, #0x0
  38dbd4: f2c4 02e0    	movt	r2, #0x40e0
  38dbd8: f8c3 21fc    	str.w	r2, [r3, #0x1fc]
  38dbdc: f04f 0000    	mov.w	r0, #0x0
  38dbe0: f74f f850    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb0f60
  38dbe4: 4680         	mov	r8, r0
  38dbe6: f04f 0000    	mov.w	r0, #0x0
  38dbea: f74f f84b    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb0f6a
  38dbee: 4607         	mov	r7, r0
  38dbf0: f04f 0000    	mov.w	r0, #0x0
  38dbf4: f74f f846    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb0f74
  38dbf8: 4606         	mov	r6, r0
  38dbfa: f04f 0000    	mov.w	r0, #0x0
  38dbfe: f74f f841    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb0f7e
  38dc02: 4605         	mov	r5, r0
  38dc04: 2016         	movs	r0, #0x16
  38dc06: f757 f87f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa8f02
  38dc0a: 4683         	mov	r11, r0
  38dc0c: f04f 507e    	mov.w	r0, #0x3f800000
  38dc10: f74f f838    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0xb0f90
  38dc14: 4682         	mov	r10, r0
  38dc16: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x38dccc <POWERUP::doPlayerMod(float)+0x364>
  38dc18: 58e3         	ldr	r3, [r4, r3]
  38dc1a: 681b         	ldr	r3, [r3]
  38dc1c: 1c59         	adds	r1, r3, #0x1
  38dc1e: 4a2b         	ldr	r2, [pc, #0xac]         @ 0x38dccc <POWERUP::doPlayerMod(float)+0x364>
  38dc20: 58a2         	ldr	r2, [r4, r2]
  38dc22: 6011         	str	r1, [r2]
  38dc24: 4618         	mov	r0, r3
  38dc26: f757 f86f    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa8f22
  38dc2a: 4681         	mov	r9, r0
  38dc2c: 4b26         	ldr	r3, [pc, #0x98]         @ 0x38dcc8 <POWERUP::doPlayerMod(float)+0x360>
  38dc2e: 58e3         	ldr	r3, [r4, r3]
  38dc30: 681b         	ldr	r3, [r3]
  38dc32: 681b         	ldr	r3, [r3]
  38dc34: f503 73e0    	add.w	r3, r3, #0x1c0
  38dc38: 681b         	ldr	r3, [r3]
  38dc3a: 4a23         	ldr	r2, [pc, #0x8c]         @ 0x38dcc8 <POWERUP::doPlayerMod(float)+0x360>
  38dc3c: 58a2         	ldr	r2, [r4, r2]
  38dc3e: 6812         	ldr	r2, [r2]
  38dc40: a90a         	add	r1, sp, #0x28
  38dc42: 4608         	mov	r0, r1
  38dc44: 4611         	mov	r1, r2
  38dc46: 4798         	blx	r3
  38dc48: ab0a         	add	r3, sp, #0x28
  38dc4a: 4618         	mov	r0, r3
  38dc4c: f20b fef6    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x20bdec
  38dc50: 4603         	mov	r3, r0
  38dc52: f8cd b000    	str.w	r11, [sp]
  38dc56: f8cd a004    	str.w	r10, [sp, #0x4]
  38dc5a: f8cd 9008    	str.w	r9, [sp, #0x8]
  38dc5e: 9303         	str	r3, [sp, #0xc]
  38dc60: 2300         	movs	r3, #0x0
  38dc62: 9304         	str	r3, [sp, #0x10]
  38dc64: 4640         	mov	r0, r8
  38dc66: 4639         	mov	r1, r7
  38dc68: 4632         	mov	r2, r6
  38dc6a: 462b         	mov	r3, r5
  38dc6c: f20c f8d0    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x20c1a0
  38dc70: 4603         	mov	r3, r0
  38dc72: 930b         	str	r3, [sp, #0x2c]
  38dc74: ab0a         	add	r3, sp, #0x28
  38dc76: 4618         	mov	r0, r3
  38dc78: f027 f64c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x427c98
  38dc7c: f252 fd18    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x252a30
  38dc80: 4603         	mov	r3, r0
  38dc82: 4618         	mov	r0, r3
  38dc84: 4b12         	ldr	r3, [pc, #0x48]         @ 0x38dcd0 <POWERUP::doPlayerMod(float)+0x368>
  38dc86: 447b         	add	r3, pc
  38dc88: 4619         	mov	r1, r3
  38dc8a: 9a0b         	ldr	r2, [sp, #0x2c]
  38dc8c: f252 ff4e    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x252e9c
  38dc90: f252 fd0e    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x252a1c
  38dc94: 4603         	mov	r3, r0
  38dc96: 4618         	mov	r0, r3
  38dc98: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x38dcd4 <POWERUP::doPlayerMod(float)+0x36c>
  38dc9a: 447b         	add	r3, pc
  38dc9c: 4619         	mov	r1, r3
  38dc9e: 9a0b         	ldr	r2, [sp, #0x2c]
  38dca0: f252 ff44    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x252e88
  38dca4: 2301         	movs	r3, #0x1
  38dca6: f88d 3027    	strb.w	r3, [sp, #0x27]
  38dcaa: bf00         	nop
  38dcac: f89d 3027    	ldrb.w	r3, [sp, #0x27]
  38dcb0: e005         	b	0x38dcbe <POWERUP::doPlayerMod(float)+0x356> @ imm = #0xa
  38dcb2: ab0a         	add	r3, sp, #0x28
  38dcb4: 4618         	mov	r0, r3
  38dcb6: f027 f62d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x427c5a
  38dcba: f3fa f9f7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3fa3ee
  38dcbe: 4618         	mov	r0, r3
  38dcc0: b00d         	add	sp, #0x34
  38dcc2: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
  ; --- end of code (Ghidra body ends at 0x38dcc5); words below are literal-pool data ---
  38dcc6: bf00         	nop
  38dcc8: d784         	bvc	0x38dbd4 <POWERUP::doPlayerMod(float)+0x26c> @ imm = #-0xf8
  38dcca: ffff d9c4    	<unknown>
  38dcce: ffff 3342    	<unknown>
  38dcd2: 0044         	lsls	r4, r0, #0x1
  38dcd4: 333e         	adds	r3, #0x3e
  38dcd6: 0044         	lsls	r4, r0, #0x1

// ==== POWERUP::startPlayerMod
//      file offset 0x38dcd8 (= ELF address; Ghidra 0x39dcd8), 172 bytes, Thumb-2
  38dcd8: b510         	push	{r4, lr}
  38dcda: b084         	sub	sp, #0x10
  38dcdc: 9001         	str	r0, [sp, #0x4]
  38dcde: 4c25         	ldr	r4, [pc, #0x94]         @ 0x38dd74 <POWERUP::startPlayerMod()+0x9c>
  38dce0: 447c         	add	r4, pc
  38dce2: 9b01         	ldr	r3, [sp, #0x4]
  38dce4: 681b         	ldr	r3, [r3]
  38dce6: f503 731f    	add.w	r3, r3, #0x27c
  38dcea: 681b         	ldr	r3, [r3]
  38dcec: 9a01         	ldr	r2, [sp, #0x4]
  38dcee: 4610         	mov	r0, r2
  38dcf0: 4798         	blx	r3
  38dcf2: 4603         	mov	r3, r0
  38dcf4: 2b0f         	cmp	r3, #0xf
  38dcf6: d002         	beq	0x38dcfe <POWERUP::startPlayerMod()+0x26> @ imm = #0x4
  38dcf8: 2b16         	cmp	r3, #0x16
  38dcfa: d038         	beq	0x38dd6e <POWERUP::startPlayerMod()+0x96> @ imm = #0x70
  38dcfc: e02e         	b	0x38dd5c <POWERUP::startPlayerMod()+0x84> @ imm = #0x5c
  38dcfe: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x38dd78 <POWERUP::startPlayerMod()+0xa0>
  38dd00: 58e3         	ldr	r3, [r4, r3]
  38dd02: 681b         	ldr	r3, [r3]
  38dd04: 4618         	mov	r0, r3
  38dd06: 2111         	movs	r1, #0x11
  38dd08: f06a f85a    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x6a0b4
  38dd0c: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x38dd7c <POWERUP::startPlayerMod()+0xa4>
  38dd0e: 58e3         	ldr	r3, [r4, r3]
  38dd10: 681b         	ldr	r3, [r3]
  38dd12: 681b         	ldr	r3, [r3]
  38dd14: f503 73ec    	add.w	r3, r3, #0x1d8
  38dd18: 681b         	ldr	r3, [r3]
  38dd1a: 4a18         	ldr	r2, [pc, #0x60]         @ 0x38dd7c <POWERUP::startPlayerMod()+0xa4>
  38dd1c: 58a2         	ldr	r2, [r4, r2]
  38dd1e: 6812         	ldr	r2, [r2]
  38dd20: 4610         	mov	r0, r2
  38dd22: 4798         	blx	r3
  38dd24: 4604         	mov	r4, r0
  38dd26: 20ff         	movs	r0, #0xff
  38dd28: 2100         	movs	r1, #0x0
  38dd2a: 2200         	movs	r2, #0x0
  38dd2c: 23ff         	movs	r3, #0xff
  38dd2e: f7fe fa57    	bl	0x38c1e0 <PHASR::getDAMAGE()+0x178> @ imm = #-0x1b52
  38dd32: 4603         	mov	r3, r0
  38dd34: 9303         	str	r3, [sp, #0xc]
  38dd36: 4620         	mov	r0, r4
  38dd38: 9903         	ldr	r1, [sp, #0xc]
  38dd3a: f066 f9df    	bl	0x3f40fc <SoldierView::setBoostColor(cocos2d::_ccColor4B)> @ imm = #0x663be
  38dd3e: f252 fcb7    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x25296e
  38dd42: 4604         	mov	r4, r0
  38dd44: 200f         	movs	r0, #0xf
  38dd46: f756 ffdf    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa9042
  38dd4a: 4603         	mov	r3, r0
  38dd4c: 4620         	mov	r0, r4
  38dd4e: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x38dd80 <POWERUP::startPlayerMod()+0xa8>
  38dd50: 447a         	add	r2, pc
  38dd52: 4611         	mov	r1, r2
  38dd54: 461a         	mov	r2, r3
  38dd56: f252 fee9    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x252dd2
  38dd5a: e009         	b	0x38dd70 <POWERUP::startPlayerMod()+0x98> @ imm = #0x12
  38dd5c: 4b06         	ldr	r3, [pc, #0x18]         @ 0x38dd78 <POWERUP::startPlayerMod()+0xa0>
  38dd5e: 58e3         	ldr	r3, [r4, r3]
  38dd60: 681b         	ldr	r3, [r3]
  38dd62: 4618         	mov	r0, r3
  38dd64: 2111         	movs	r1, #0x11
  38dd66: f06a f82b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x6a056
  38dd6a: bf00         	nop
  38dd6c: e000         	b	0x38dd70 <POWERUP::startPlayerMod()+0x98> @ imm = #0x0
  38dd6e: bf00         	nop
  38dd70: b004         	add	sp, #0x10
  38dd72: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x38dd73); words below are literal-pool data ---
  38dd74: 4d28         	ldr	r5, [pc, #0xa0]         @ 0x38de18 <POWERUP::isModItem()+0x4>
  38dd76: 005a         	lsls	r2, r3, #0x1
  38dd78: d730         	bvc	0x38dddc <POWERUP::stopPlayerMod()+0x58> @ imm = #0x60
  38dd7a: ffff d784    	<unknown>
  38dd7e: ffff 3294    	vrshr.u64	d19, d4, #0x1
  38dd82: 0044         	lsls	r4, r0, #0x1

// ==== POWERUP::stopPlayerMod
//      file offset 0x38dd84 (= ELF address; Ghidra 0x39dd84), 144 bytes, Thumb-2
  38dd84: b530         	push	{r4, r5, lr}
  38dd86: b085         	sub	sp, #0x14
  38dd88: 9001         	str	r0, [sp, #0x4]
  38dd8a: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x38de08 <POWERUP::stopPlayerMod()+0x84>
  38dd8c: 447c         	add	r4, pc
  38dd8e: 9b01         	ldr	r3, [sp, #0x4]
  38dd90: 681b         	ldr	r3, [r3]
  38dd92: f503 731f    	add.w	r3, r3, #0x27c
  38dd96: 681b         	ldr	r3, [r3]
  38dd98: 9a01         	ldr	r2, [sp, #0x4]
  38dd9a: 4610         	mov	r0, r2
  38dd9c: 4798         	blx	r3
  38dd9e: 4603         	mov	r3, r0
  38dda0: 2b0f         	cmp	r3, #0xf
  38dda2: d000         	beq	0x38dda6 <POWERUP::stopPlayerMod()+0x22> @ imm = #0x0
  38dda4: e02d         	b	0x38de02 <POWERUP::stopPlayerMod()+0x7e> @ imm = #0x5a
  38dda6: 4b19         	ldr	r3, [pc, #0x64]         @ 0x38de0c <POWERUP::stopPlayerMod()+0x88>
  38dda8: 58e3         	ldr	r3, [r4, r3]
  38ddaa: 681b         	ldr	r3, [r3]
  38ddac: 681b         	ldr	r3, [r3]
  38ddae: f503 73ec    	add.w	r3, r3, #0x1d8
  38ddb2: 681b         	ldr	r3, [r3]
  38ddb4: 4a15         	ldr	r2, [pc, #0x54]         @ 0x38de0c <POWERUP::stopPlayerMod()+0x88>
  38ddb6: 58a2         	ldr	r2, [r4, r2]
  38ddb8: 6812         	ldr	r2, [r2]
  38ddba: 4610         	mov	r0, r2
  38ddbc: 4798         	blx	r3
  38ddbe: 4605         	mov	r5, r0
  38ddc0: 20ff         	movs	r0, #0xff
  38ddc2: 21ff         	movs	r1, #0xff
  38ddc4: 22ff         	movs	r2, #0xff
  38ddc6: 23ff         	movs	r3, #0xff
  38ddc8: f7fe fa0a    	bl	0x38c1e0 <PHASR::getDAMAGE()+0x178> @ imm = #-0x1bec
  38ddcc: 4603         	mov	r3, r0
  38ddce: 9303         	str	r3, [sp, #0xc]
  38ddd0: 4628         	mov	r0, r5
  38ddd2: 9903         	ldr	r1, [sp, #0xc]
  38ddd4: f066 f992    	bl	0x3f40fc <SoldierView::setBoostColor(cocos2d::_ccColor4B)> @ imm = #0x66324
  38ddd8: f252 fc6a    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2528d4
  38dddc: 4605         	mov	r5, r0
  38ddde: 200f         	movs	r0, #0xf
  38dde0: f756 ff92    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xa90dc
  38dde4: 4603         	mov	r3, r0
  38dde6: 4628         	mov	r0, r5
  38dde8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x38de10 <POWERUP::stopPlayerMod()+0x8c>
  38ddea: 447a         	add	r2, pc
  38ddec: 4611         	mov	r1, r2
  38ddee: 461a         	mov	r2, r3
  38ddf0: f252 fe9c    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x252d38
  38ddf4: 4b05         	ldr	r3, [pc, #0x14]         @ 0x38de0c <POWERUP::stopPlayerMod()+0x88>
  38ddf6: 58e3         	ldr	r3, [r4, r3]
  38ddf8: 681b         	ldr	r3, [r3]
  38ddfa: 2200         	movs	r2, #0x0
  38ddfc: f883 211d    	strb.w	r2, [r3, #0x11d]
  38de00: bf00         	nop
  38de02: b005         	add	sp, #0x14
  38de04: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x38de05); words below are literal-pool data ---
  38de06: bf00         	nop
  38de08: 4c7c         	ldr	r4, [pc, #0x1f0]        @ 0x38dffc <POWERUP::isModItem()+0x1e8>
  38de0a: 005a         	lsls	r2, r3, #0x1
  38de0c: d784         	bvc	0x38dd18 <POWERUP::startPlayerMod()+0x40> @ imm = #-0xf8
  38de0e: ffff 320a    	<unknown>
  38de12: 0044         	lsls	r4, r0, #0x1

// ==== POWERUP::isModItem
//      file offset 0x38de14 (= ELF address; Ghidra 0x39de14), 12 bytes, Thumb-2
  38de14: b082         	sub	sp, #0x8
  38de16: 9001         	str	r0, [sp, #0x4]
  38de18: 2301         	movs	r3, #0x1
  38de1a: 4618         	mov	r0, r3
  38de1c: b002         	add	sp, #0x8
  38de1e: 4770         	bx	lr

// ==== POWERUP::create
//      file offset 0x392b0c (= ELF address; Ghidra 0x3a2b0c), 112 bytes, Thumb-2
  392b0c: b510         	push	{r4, lr}
  392b0e: b082         	sub	sp, #0x8
  392b10: f44f 7008    	mov.w	r0, #0x220
  392b14: f3f4 ff26    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3f4e4c
  392b18: 4603         	mov	r3, r0
  392b1a: 461c         	mov	r4, r3
  392b1c: 4620         	mov	r0, r4
  392b1e: f7fa fc57    	bl	0x38d3d0 <POWERUP::POWERUP()> @ imm = #-0x5752
  392b22: 9401         	str	r4, [sp, #0x4]
  392b24: 9b01         	ldr	r3, [sp, #0x4]
  392b26: 2b00         	cmp	r3, #0x0
  392b28: d00a         	beq	0x392b40 <POWERUP::create()+0x34> @ imm = #0x14
  392b2a: 9b01         	ldr	r3, [sp, #0x4]
  392b2c: 681b         	ldr	r3, [r3]
  392b2e: 3318         	adds	r3, #0x18
  392b30: 681b         	ldr	r3, [r3]
  392b32: 9801         	ldr	r0, [sp, #0x4]
  392b34: 4798         	blx	r3
  392b36: 4603         	mov	r3, r0
  392b38: 2b00         	cmp	r3, #0x0
  392b3a: d001         	beq	0x392b40 <POWERUP::create()+0x34> @ imm = #0x2
  392b3c: 2301         	movs	r3, #0x1
  392b3e: e000         	b	0x392b42 <POWERUP::create()+0x36> @ imm = #0x0
  392b40: 2300         	movs	r3, #0x0
  392b42: 2b00         	cmp	r3, #0x0
  392b44: d005         	beq	0x392b52 <POWERUP::create()+0x46> @ imm = #0xa
  392b46: 9b01         	ldr	r3, [sp, #0x4]
  392b48: 4618         	mov	r0, r3
  392b4a: f205 f9d7    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2053ae
  392b4e: 9b01         	ldr	r3, [sp, #0x4]
  392b50: e011         	b	0x392b76 <POWERUP::create()+0x6a> @ imm = #0x22
  392b52: 9b01         	ldr	r3, [sp, #0x4]
  392b54: 2b00         	cmp	r3, #0x0
  392b56: d005         	beq	0x392b64 <POWERUP::create()+0x58> @ imm = #0xa
  392b58: 9b01         	ldr	r3, [sp, #0x4]
  392b5a: 681b         	ldr	r3, [r3]
  392b5c: 3308         	adds	r3, #0x8
  392b5e: 681b         	ldr	r3, [r3]
  392b60: 9801         	ldr	r0, [sp, #0x4]
  392b62: 4798         	blx	r3
  392b64: 2300         	movs	r3, #0x0
  392b66: 9301         	str	r3, [sp, #0x4]
  392b68: 2300         	movs	r3, #0x0
  392b6a: e004         	b	0x392b76 <POWERUP::create()+0x6a> @ imm = #0x8
  392b6c: 4620         	mov	r0, r4
  392b6e: f3f5 fa99    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f5532
  392b72: f3f5 fa9b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f5536
  392b76: 4618         	mov	r0, r3
  392b78: b002         	add	sp, #0x8
  392b7a: bd10         	pop	{r4, pc}
