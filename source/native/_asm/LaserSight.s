// LaserSight: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LaserSight.cpp

// ==== LaserSight::LaserSight
//      file offset 0x34fa3c (= ELF address; Ghidra 0x35fa3c), 44 bytes, Thumb-2
  34fa3c: b510         	push	{r4, lr}
  34fa3e: b082         	sub	sp, #0x8
  34fa40: 9001         	str	r0, [sp, #0x4]
  34fa42: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x34fa60 <LaserSight::LaserSight()+0x24>
  34fa44: 447c         	add	r4, pc
  34fa46: 9b01         	ldr	r3, [sp, #0x4]
  34fa48: 4618         	mov	r0, r3
  34fa4a: f23f fdf5    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x23fbea
  34fa4e: 9b01         	ldr	r3, [sp, #0x4]
  34fa50: 4a04         	ldr	r2, [pc, #0x10]         @ 0x34fa64 <LaserSight::LaserSight()+0x28>
  34fa52: 58a2         	ldr	r2, [r4, r2]
  34fa54: 3208         	adds	r2, #0x8
  34fa56: 601a         	str	r2, [r3]
  34fa58: 9b01         	ldr	r3, [sp, #0x4]
  34fa5a: 4618         	mov	r0, r3
  34fa5c: b002         	add	sp, #0x8
  34fa5e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x34fa5f); words below are literal-pool data ---
  34fa60: 2fc4         	cmp	r7, #0xc4
  34fa62: 005e         	lsls	r6, r3, #0x1
  34fa64: db54         	blt	0x34fb10 <LaserSight::init()+0xa8> @ imm = #0xa8
  34fa66: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== LaserSight::init
//      file offset 0x34fa68 (= ELF address; Ghidra 0x35fa68), 296 bytes, Thumb-2
  34fa68: b530         	push	{r4, r5, lr}
  34fa6a: b087         	sub	sp, #0x1c
  34fa6c: 9001         	str	r0, [sp, #0x4]
  34fa6e: 9b01         	ldr	r3, [sp, #0x4]
  34fa70: 4618         	mov	r0, r3
  34fa72: f23f ffeb    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x23ffd6
  34fa76: 4603         	mov	r3, r0
  34fa78: f88d 300f    	strb.w	r3, [sp, #0xf]
  34fa7c: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  34fa80: f083 0301    	eor	r3, r3, #0x1
  34fa84: b2db         	uxtb	r3, r3
  34fa86: 2b00         	cmp	r3, #0x0
  34fa88: d001         	beq	0x34fa8e <LaserSight::init()+0x26> @ imm = #0x2
  34fa8a: 2300         	movs	r3, #0x0
  34fa8c: e07a         	b	0x34fb84 <LaserSight::init()+0x11c> @ imm = #0xf4
  34fa8e: 4b3f         	ldr	r3, [pc, #0xfc]         @ 0x34fb8c <LaserSight::init()+0x124>
  34fa90: 447b         	add	r3, pc
  34fa92: 4618         	mov	r0, r3
  34fa94: f288 fc36    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x28886c
  34fa98: 4602         	mov	r2, r0
  34fa9a: 9b01         	ldr	r3, [sp, #0x4]
  34fa9c: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  34faa0: 9b01         	ldr	r3, [sp, #0x4]
  34faa2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34faa6: 4618         	mov	r0, r3
  34faa8: f248 fa1e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24843c
  34faac: 9b01         	ldr	r3, [sp, #0x4]
  34faae: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34fab2: 681b         	ldr	r3, [r3]
  34fab4: 3338         	adds	r3, #0x38
  34fab6: 681b         	ldr	r3, [r3]
  34fab8: 9a01         	ldr	r2, [sp, #0x4]
  34faba: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34fabe: 4610         	mov	r0, r2
  34fac0: f64c 41cd    	movw	r1, #0xcccd
  34fac4: f6c3 61cc    	movt	r1, #0x3ecc
  34fac8: 4798         	blx	r3
  34faca: 9b01         	ldr	r3, [sp, #0x4]
  34facc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34fad0: 681b         	ldr	r3, [r3]
  34fad2: 337c         	adds	r3, #0x7c
  34fad4: 681c         	ldr	r4, [r3]
  34fad6: 9b01         	ldr	r3, [sp, #0x4]
  34fad8: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34fadc: ab04         	add	r3, sp, #0x10
  34fade: 4618         	mov	r0, r3
  34fae0: f04f 0100    	mov.w	r1, #0x0
  34fae4: f04f 527c    	mov.w	r2, #0x3f000000
  34fae8: f243 f902    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x243204
  34faec: ab04         	add	r3, sp, #0x10
  34faee: 4628         	mov	r0, r5
  34faf0: 4619         	mov	r1, r3
  34faf2: 47a0         	blx	r4
  34faf4: 9b01         	ldr	r3, [sp, #0x4]
  34faf6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34fafa: 681b         	ldr	r3, [r3]
  34fafc: f503 73de    	add.w	r3, r3, #0x1bc
  34fb00: 681c         	ldr	r4, [r3]
  34fb02: 9b01         	ldr	r3, [sp, #0x4]
  34fb04: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34fb08: 20ff         	movs	r0, #0xff
  34fb0a: 2100         	movs	r1, #0x0
  34fb0c: 2200         	movs	r2, #0x0
  34fb0e: f7fe ffa5    	bl	0x34ea5c <Joypad::updateSpecialInput(float)+0x118> @ imm = #-0x10b6
  34fb12: 4603         	mov	r3, r0
  34fb14: 461a         	mov	r2, r3
  34fb16: f88d 2010    	strb.w	r2, [sp, #0x10]
  34fb1a: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  34fb1e: f88d 2011    	strb.w	r2, [sp, #0x11]
  34fb22: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  34fb26: f88d 3012    	strb.w	r3, [sp, #0x12]
  34fb2a: ab04         	add	r3, sp, #0x10
  34fb2c: 4628         	mov	r0, r5
  34fb2e: 4619         	mov	r1, r3
  34fb30: 47a0         	blx	r4
  34fb32: 9b01         	ldr	r3, [sp, #0x4]
  34fb34: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34fb38: 681b         	ldr	r3, [r3]
  34fb3a: 334c         	adds	r3, #0x4c
  34fb3c: 681c         	ldr	r4, [r3]
  34fb3e: 9b01         	ldr	r3, [sp, #0x4]
  34fb40: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  34fb44: ab04         	add	r3, sp, #0x10
  34fb46: 4618         	mov	r0, r3
  34fb48: f04f 0100    	mov.w	r1, #0x0
  34fb4c: f2c4 1120    	movt	r1, #0x4120
  34fb50: f04f 0200    	mov.w	r2, #0x0
  34fb54: f243 f8cc    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x243198
  34fb58: ab04         	add	r3, sp, #0x10
  34fb5a: 4628         	mov	r0, r5
  34fb5c: 4619         	mov	r1, r3
  34fb5e: 47a0         	blx	r4
  34fb60: 9b01         	ldr	r3, [sp, #0x4]
  34fb62: 681b         	ldr	r3, [r3]
  34fb64: 33cc         	adds	r3, #0xcc
  34fb66: 681b         	ldr	r3, [r3]
  34fb68: 9901         	ldr	r1, [sp, #0x4]
  34fb6a: 9a01         	ldr	r2, [sp, #0x4]
  34fb6c: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34fb70: 4608         	mov	r0, r1
  34fb72: 4611         	mov	r1, r2
  34fb74: 2202         	movs	r2, #0x2
  34fb76: 4798         	blx	r3
  34fb78: 9b01         	ldr	r3, [sp, #0x4]
  34fb7a: f44f 72fa    	mov.w	r2, #0x1f4
  34fb7e: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  34fb82: 2301         	movs	r3, #0x1
  34fb84: 4618         	mov	r0, r3
  34fb86: b007         	add	sp, #0x1c
  34fb88: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x34fb89); words below are literal-pool data ---
  34fb8a: bf00         	nop
  34fb8c: bc3c         	pop	{r2, r3, r4, r5}
  34fb8e: 0047         	lsls	r7, r0, #0x1

// ==== LaserSight::~LaserSight
//      file offset 0x34fb90 (= ELF address; Ghidra 0x35fb90), 80 bytes, Thumb-2
  34fb90: b500         	push	{lr}
  34fb92: b083         	sub	sp, #0xc
  34fb94: 9001         	str	r0, [sp, #0x4]
  34fb96: 4910         	ldr	r1, [pc, #0x40]         @ 0x34fbd8 <LaserSight::~LaserSight()+0x48>
  34fb98: 4479         	add	r1, pc
  34fb9a: 9b01         	ldr	r3, [sp, #0x4]
  34fb9c: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x34fbdc <LaserSight::~LaserSight()+0x4c>
  34fb9e: 588a         	ldr	r2, [r1, r2]
  34fba0: 3208         	adds	r2, #0x8
  34fba2: 601a         	str	r2, [r3]
  34fba4: 9b01         	ldr	r3, [sp, #0x4]
  34fba6: 4618         	mov	r0, r3
  34fba8: f240 fd40    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x240a80
  34fbac: 9b01         	ldr	r3, [sp, #0x4]
  34fbae: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34fbb2: 4618         	mov	r0, r3
  34fbb4: f248 f980    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x248300
  34fbb8: 9b01         	ldr	r3, [sp, #0x4]
  34fbba: 4618         	mov	r0, r3
  34fbbc: f23f fe42    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x23fc84
  34fbc0: 2300         	movs	r3, #0x0
  34fbc2: 2b00         	cmp	r3, #0x0
  34fbc4: d002         	beq	0x34fbcc <LaserSight::~LaserSight()+0x3c> @ imm = #0x4
  34fbc6: 9801         	ldr	r0, [sp, #0x4]
  34fbc8: f038 f26c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4384d8
  34fbcc: 9b01         	ldr	r3, [sp, #0x4]
  34fbce: 4618         	mov	r0, r3
  34fbd0: b003         	add	sp, #0xc
  34fbd2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x34fbd5); words below are literal-pool data ---
  34fbd6: bf00         	nop
  34fbd8: 2e70         	cmp	r6, #0x70
  34fbda: 005e         	lsls	r6, r3, #0x1
  34fbdc: db54         	blt	0x34fc88 <LaserSight::updateStep(float, float)+0x8c> @ imm = #0xa8
  34fbde: ffff b500    	<unknown>

// ==== LaserSight::~LaserSight
//      file offset 0x34fbe0 (= ELF address; Ghidra 0x35fbe0), 28 bytes, Thumb-2
  34fbe0: b500         	push	{lr}
  34fbe2: b083         	sub	sp, #0xc
  34fbe4: 9001         	str	r0, [sp, #0x4]
  34fbe6: 9801         	ldr	r0, [sp, #0x4]
  34fbe8: f7ff ffd2    	bl	0x34fb90 <LaserSight::~LaserSight()> @ imm = #-0x5c
  34fbec: 9801         	ldr	r0, [sp, #0x4]
  34fbee: f038 f259    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x4384b2
  34fbf2: 9b01         	ldr	r3, [sp, #0x4]
  34fbf4: 4618         	mov	r0, r3
  34fbf6: b003         	add	sp, #0xc
  34fbf8: f85d fb04    	ldr	pc, [sp], #4

// ==== LaserSight::updateStep
//      file offset 0x34fbfc (= ELF address; Ghidra 0x35fbfc), 716 bytes, Thumb-2
  34fbfc: b5f0         	push	{r4, r5, r6, r7, lr}
  34fbfe: ed2d 8b02    	vpush	{d8}
  34fc02: b0b7         	sub	sp, #0xdc
  34fc04: 9011         	str	r0, [sp, #0x44]
  34fc06: 9110         	str	r1, [sp, #0x40]
  34fc08: 920f         	str	r2, [sp, #0x3c]
  34fc0a: 4cad         	ldr	r4, [pc, #0x2b4]        @ 0x34fec0 <LaserSight::updateStep(float, float)+0x2c4>
  34fc0c: 447c         	add	r4, pc
  34fc0e: f04f 0300    	mov.w	r3, #0x0
  34fc12: 9313         	str	r3, [sp, #0x4c]
  34fc14: f04f 0200    	mov.w	r2, #0x0
  34fc18: f04f 0300    	mov.w	r3, #0x0
  34fc1c: e9cd 2316    	strd	r2, r3, [sp, #88]
  34fc20: f04f 0200    	mov.w	r2, #0x0
  34fc24: f04f 0300    	mov.w	r3, #0x0
  34fc28: e9cd 2318    	strd	r2, r3, [sp, #96]
  34fc2c: f04f 0200    	mov.w	r2, #0x0
  34fc30: f04f 0300    	mov.w	r3, #0x0
  34fc34: e9cd 231a    	strd	r2, r3, [sp, #104]
  34fc38: f04f 0200    	mov.w	r2, #0x0
  34fc3c: f04f 0300    	mov.w	r3, #0x0
  34fc40: e9cd 231c    	strd	r2, r3, [sp, #112]
  34fc44: 9b11         	ldr	r3, [sp, #0x44]
  34fc46: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34fc4a: ee06 3a90    	vmov	s13, r3
  34fc4e: eef8 7ae6    	vcvt.f32.s32	s15, s13
  34fc52: edcd 7a13    	vstr	s15, [sp, #76]
  34fc56: eddd 7a0f    	vldr	s15, [sp, #60]
  34fc5a: eeb1 7a67    	vneg.f32	s14, s15
  34fc5e: eddf 7a97    	vldr	s15, [pc, #604]         @ 0x34febc <LaserSight::updateStep(float, float)+0x2c0>
  34fc62: ee67 7a27    	vmul.f32	s15, s14, s15
  34fc66: edcd 7a14    	vstr	s15, [sp, #80]
  34fc6a: eddd 7a14    	vldr	s15, [sp, #80]
  34fc6e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34fc72: ec51 0b17    	vmov	r0, r1, d7
  34fc76: f786 e948    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x79d70
  34fc7a: 4606         	mov	r6, r0
  34fc7c: 460f         	mov	r7, r1
  34fc7e: eddd 7a14    	vldr	s15, [sp, #80]
  34fc82: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34fc86: ec51 0b17    	vmov	r0, r1, d7
  34fc8a: f786 e944    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x79d78
  34fc8e: 4602         	mov	r2, r0
  34fc90: 460b         	mov	r3, r1
  34fc92: a926         	add	r1, sp, #0x98
  34fc94: 4608         	mov	r0, r1
  34fc96: ec47 6b10    	vmov	d0, r6, r7
  34fc9a: ec43 2b11    	vmov	d1, r2, r3
  34fc9e: f7fe ff0b    	bl	0x34eab8 <Joypad::updateSpecialInput(float)+0x174> @ imm = #-0x11ea
  34fca2: 9b11         	ldr	r3, [sp, #0x44]
  34fca4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  34fca8: ee06 3a90    	vmov	s13, r3
  34fcac: eeb8 7be6    	vcvt.f64.s32	d7, s13
  34fcb0: ab0a         	add	r3, sp, #0x28
  34fcb2: ed9d 5b26    	vldr	d5, [sp, #152]
  34fcb6: ed9d 6b28    	vldr	d6, [sp, #160]
  34fcba: 4618         	mov	r0, r3
  34fcbc: eeb0 0b45    	vmov.f64	d0, d5
  34fcc0: eeb0 1b46    	vmov.f64	d1, d6
  34fcc4: eeb0 2b47    	vmov.f64	d2, d7
  34fcc8: f7fe ff62    	bl	0x34eb90 <Joypad::updateSpecialInput(float)+0x24c> @ imm = #-0x113c
  34fccc: ad16         	add	r5, sp, #0x58
  34fcce: ab0a         	add	r3, sp, #0x28
  34fcd0: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34fcd2: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  34fcd6: 9b11         	ldr	r3, [sp, #0x44]
  34fcd8: 681b         	ldr	r3, [r3]
  34fcda: 3350         	adds	r3, #0x50
  34fcdc: 681b         	ldr	r3, [r3]
  34fcde: 9a11         	ldr	r2, [sp, #0x44]
  34fce0: 4610         	mov	r0, r2
  34fce2: 4798         	blx	r3
  34fce4: 4603         	mov	r3, r0
  34fce6: edd3 7a00    	vldr	s15, [r3]
  34fcea: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  34fcee: 9b11         	ldr	r3, [sp, #0x44]
  34fcf0: 681b         	ldr	r3, [r3]
  34fcf2: 3350         	adds	r3, #0x50
  34fcf4: 681b         	ldr	r3, [r3]
  34fcf6: 9a11         	ldr	r2, [sp, #0x44]
  34fcf8: 4610         	mov	r0, r2
  34fcfa: 4798         	blx	r3
  34fcfc: 4603         	mov	r3, r0
  34fcfe: edd3 7a01    	vldr	s15, [r3, #4]
  34fd02: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  34fd06: ab1e         	add	r3, sp, #0x78
  34fd08: 4618         	mov	r0, r3
  34fd0a: eeb0 0b48    	vmov.f64	d0, d8
  34fd0e: eeb0 1b47    	vmov.f64	d1, d7
  34fd12: f7fe fed1    	bl	0x34eab8 <Joypad::updateSpecialInput(float)+0x174> @ imm = #-0x125e
  34fd16: ab22         	add	r3, sp, #0x88
  34fd18: ed9d 4b1e    	vldr	d4, [sp, #120]
  34fd1c: ed9d 5b20    	vldr	d5, [sp, #128]
  34fd20: ed9d 6b16    	vldr	d6, [sp, #88]
  34fd24: ed9d 7b18    	vldr	d7, [sp, #96]
  34fd28: 4618         	mov	r0, r3
  34fd2a: eeb0 0b44    	vmov.f64	d0, d4
  34fd2e: eeb0 1b45    	vmov.f64	d1, d5
  34fd32: eeb0 2b46    	vmov.f64	d2, d6
  34fd36: eeb0 3b47    	vmov.f64	d3, d7
  34fd3a: f7fe fed1    	bl	0x34eae0 <Joypad::updateSpecialInput(float)+0x19c> @ imm = #-0x125e
  34fd3e: 9b11         	ldr	r3, [sp, #0x44]
  34fd40: 681b         	ldr	r3, [r3]
  34fd42: 334c         	adds	r3, #0x4c
  34fd44: 681d         	ldr	r5, [r3]
  34fd46: 9e11         	ldr	r6, [sp, #0x44]
  34fd48: ed9d 7b1e    	vldr	d7, [sp, #120]
  34fd4c: eef7 6bc7    	vcvt.f32.f64	s13, d7
  34fd50: ed9d 7b20    	vldr	d7, [sp, #128]
  34fd54: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34fd58: ab2e         	add	r3, sp, #0xb8
  34fd5a: 4618         	mov	r0, r3
  34fd5c: ee16 1a90    	vmov	r1, s13
  34fd60: ee17 2a90    	vmov	r2, s15
  34fd64: f242 ffc4    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x242f88
  34fd68: ab2e         	add	r3, sp, #0xb8
  34fd6a: 4630         	mov	r0, r6
  34fd6c: 4619         	mov	r1, r3
  34fd6e: 47a8         	blx	r5
  34fd70: 9b11         	ldr	r3, [sp, #0x44]
  34fd72: 681b         	ldr	r3, [r3]
  34fd74: 3398         	adds	r3, #0x98
  34fd76: 681b         	ldr	r3, [r3]
  34fd78: 9a11         	ldr	r2, [sp, #0x44]
  34fd7a: 4610         	mov	r0, r2
  34fd7c: 990f         	ldr	r1, [sp, #0x3c]
  34fd7e: 4798         	blx	r3
  34fd80: 4b50         	ldr	r3, [pc, #0x140]        @ 0x34fec4 <LaserSight::updateStep(float, float)+0x2c8>
  34fd82: 58e3         	ldr	r3, [r4, r3]
  34fd84: 681d         	ldr	r5, [r3]
  34fd86: f44f 7362    	mov.w	r3, #0x388
  34fd8a: 9302         	str	r3, [sp, #0x8]
  34fd8c: 2300         	movs	r3, #0x0
  34fd8e: 9303         	str	r3, [sp, #0xc]
  34fd90: 466b         	mov	r3, sp
  34fd92: aa20         	add	r2, sp, #0x80
  34fd94: e892 0003    	ldm.w	r2, {r0, r1}
  34fd98: e883 0003    	stm.w	r3, {r0, r1}
  34fd9c: ab1e         	add	r3, sp, #0x78
  34fd9e: cb0c         	ldm	r3, {r2, r3}
  34fda0: 4628         	mov	r0, r5
  34fda2: f386 f849    	bl	0x6d5e38 <cpSpacePointQueryFirst> @ imm = #0x386092
  34fda6: 4603         	mov	r3, r0
  34fda8: 2b00         	cmp	r3, #0x0
  34fdaa: bf0c         	ite	eq
  34fdac: 2300         	moveq	r3, #0x0
  34fdae: 2301         	movne	r3, #0x1
  34fdb0: b2db         	uxtb	r3, r3
  34fdb2: 2b00         	cmp	r3, #0x0
  34fdb4: d008         	beq	0x34fdc8 <LaserSight::updateStep(float, float)+0x1cc> @ imm = #0x10
  34fdb6: ac1a         	add	r4, sp, #0x68
  34fdb8: ab1e         	add	r3, sp, #0x78
  34fdba: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34fdbc: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34fdc0: f04f 0300    	mov.w	r3, #0x0
  34fdc4: 9313         	str	r3, [sp, #0x4c]
  34fdc6: e061         	b	0x34fe8c <LaserSight::updateStep(float, float)+0x290> @ imm = #0xc2
  34fdc8: 2300         	movs	r3, #0x0
  34fdca: 9315         	str	r3, [sp, #0x54]
  34fdcc: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x34fec4 <LaserSight::updateStep(float, float)+0x2c8>
  34fdce: 58e3         	ldr	r3, [r4, r3]
  34fdd0: 681d         	ldr	r5, [r3]
  34fdd2: ac02         	add	r4, sp, #0x8
  34fdd4: ab22         	add	r3, sp, #0x88
  34fdd6: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34fdd8: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34fddc: f44f 7362    	mov.w	r3, #0x388
  34fde0: 9306         	str	r3, [sp, #0x18]
  34fde2: 2300         	movs	r3, #0x0
  34fde4: 9307         	str	r3, [sp, #0x1c]
  34fde6: ab2e         	add	r3, sp, #0xb8
  34fde8: 9308         	str	r3, [sp, #0x20]
  34fdea: 466b         	mov	r3, sp
  34fdec: aa20         	add	r2, sp, #0x80
  34fdee: e892 0003    	ldm.w	r2, {r0, r1}
  34fdf2: e883 0003    	stm.w	r3, {r0, r1}
  34fdf6: ab1e         	add	r3, sp, #0x78
  34fdf8: cb0c         	ldm	r3, {r2, r3}
  34fdfa: 4628         	mov	r0, r5
  34fdfc: f386 f8ac    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x386158
  34fe00: 4603         	mov	r3, r0
  34fe02: 9315         	str	r3, [sp, #0x54]
  34fe04: 9b15         	ldr	r3, [sp, #0x54]
  34fe06: 2b00         	cmp	r3, #0x0
  34fe08: d040         	beq	0x34fe8c <LaserSight::updateStep(float, float)+0x290> @ imm = #0x80
  34fe0a: ae0a         	add	r6, sp, #0x28
  34fe0c: ed9d 4b1e    	vldr	d4, [sp, #120]
  34fe10: ed9d 5b20    	vldr	d5, [sp, #128]
  34fe14: ed9d 6b22    	vldr	d6, [sp, #136]
  34fe18: ed9d 7b24    	vldr	d7, [sp, #144]
  34fe1c: 466c         	mov	r4, sp
  34fe1e: ad30         	add	r5, sp, #0xc0
  34fe20: cd0f         	ldm	r5!, {r0, r1, r2, r3}
  34fe22: c40f         	stm	r4!, {r0, r1, r2, r3}
  34fe24: e895 0003    	ldm.w	r5, {r0, r1}
  34fe28: e884 0003    	stm.w	r4, {r0, r1}
  34fe2c: ab2e         	add	r3, sp, #0xb8
  34fe2e: cb0c         	ldm	r3, {r2, r3}
  34fe30: 4630         	mov	r0, r6
  34fe32: eeb0 0b44    	vmov.f64	d0, d4
  34fe36: eeb0 1b45    	vmov.f64	d1, d5
  34fe3a: eeb0 2b46    	vmov.f64	d2, d6
  34fe3e: eeb0 3b47    	vmov.f64	d3, d7
  34fe42: f7fe ff19    	bl	0x34ec78 <Joypad::updateSpecialInput(float)+0x334> @ imm = #-0x11ce
  34fe46: ac1a         	add	r4, sp, #0x68
  34fe48: ab0a         	add	r3, sp, #0x28
  34fe4a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34fe4c: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  34fe50: ab2a         	add	r3, sp, #0xa8
  34fe52: ed9d 4b1e    	vldr	d4, [sp, #120]
  34fe56: ed9d 5b20    	vldr	d5, [sp, #128]
  34fe5a: ed9d 6b1a    	vldr	d6, [sp, #104]
  34fe5e: ed9d 7b1c    	vldr	d7, [sp, #112]
  34fe62: 4618         	mov	r0, r3
  34fe64: eeb0 0b44    	vmov.f64	d0, d4
  34fe68: eeb0 1b45    	vmov.f64	d1, d5
  34fe6c: eeb0 2b46    	vmov.f64	d2, d6
  34fe70: eeb0 3b47    	vmov.f64	d3, d7
  34fe74: f7fe fe60    	bl	0x34eb38 <Joypad::updateSpecialInput(float)+0x1f4> @ imm = #-0x1340
  34fe78: ab2a         	add	r3, sp, #0xa8
  34fe7a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  34fe7c: f387 f91c    	bl	0x6d70b8 <cpvlength>    @ imm = #0x387238
  34fe80: ec41 0b17    	vmov	d7, r0, r1
  34fe84: eef7 7bc7    	vcvt.f32.f64	s15, d7
  34fe88: edcd 7a13    	vstr	s15, [sp, #76]
  34fe8c: 9b11         	ldr	r3, [sp, #0x44]
  34fe8e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  34fe92: 681b         	ldr	r3, [r3]
  34fe94: 3330         	adds	r3, #0x30
  34fe96: 681b         	ldr	r3, [r3]
  34fe98: 9a11         	ldr	r2, [sp, #0x44]
  34fe9a: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  34fe9e: ed9d 7a13    	vldr	s14, [sp, #76]
  34fea2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  34fea6: ee77 7a27    	vadd.f32	s15, s14, s15
  34feaa: 4610         	mov	r0, r2
  34feac: ee17 1a90    	vmov	r1, s15
  34feb0: 4798         	blx	r3
  34feb2: b037         	add	sp, #0xdc
  34feb4: ecbd 8b02    	vpop	{d8}
  34feb8: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x34feb9); words below are literal-pool data ---
  34feba: bf00         	nop
  34febc: fa35 3c8e    	<unknown>
  34fec0: 2dfc         	cmp	r5, #0xfc
  34fec2: 005e         	lsls	r6, r3, #0x1
  34fec4: da00         	bge	0x34fec8 <LaserSight::updateStep(float, float)+0x2cc> @ imm = #0x0
  34fec6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== LaserSight::create
//      file offset 0x3fae5c (= ELF address; Ghidra 0x40ae5c), 110 bytes, Thumb-2
  3fae5c: b510         	push	{r4, lr}
  3fae5e: b082         	sub	sp, #0x8
  3fae60: 20ec         	movs	r0, #0xec
  3fae62: f38c fd7f    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x38cafe
  3fae66: 4603         	mov	r3, r0
  3fae68: 461c         	mov	r4, r3
  3fae6a: 4620         	mov	r0, r4
  3fae6c: f754 fde6    	bl	0x34fa3c <LaserSight::LaserSight()> @ imm = #-0xab434
  3fae70: 9401         	str	r4, [sp, #0x4]
  3fae72: 9b01         	ldr	r3, [sp, #0x4]
  3fae74: 2b00         	cmp	r3, #0x0
  3fae76: d00a         	beq	0x3fae8e <LaserSight::create()+0x32> @ imm = #0x14
  3fae78: 9b01         	ldr	r3, [sp, #0x4]
  3fae7a: 681b         	ldr	r3, [r3]
  3fae7c: 3318         	adds	r3, #0x18
  3fae7e: 681b         	ldr	r3, [r3]
  3fae80: 9801         	ldr	r0, [sp, #0x4]
  3fae82: 4798         	blx	r3
  3fae84: 4603         	mov	r3, r0
  3fae86: 2b00         	cmp	r3, #0x0
  3fae88: d001         	beq	0x3fae8e <LaserSight::create()+0x32> @ imm = #0x2
  3fae8a: 2301         	movs	r3, #0x1
  3fae8c: e000         	b	0x3fae90 <LaserSight::create()+0x34> @ imm = #0x0
  3fae8e: 2300         	movs	r3, #0x0
  3fae90: 2b00         	cmp	r3, #0x0
  3fae92: d005         	beq	0x3faea0 <LaserSight::create()+0x44> @ imm = #0xa
  3fae94: 9b01         	ldr	r3, [sp, #0x4]
  3fae96: 4618         	mov	r0, r3
  3fae98: f19d f830    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x19d060
  3fae9c: 9b01         	ldr	r3, [sp, #0x4]
  3fae9e: e011         	b	0x3faec4 <LaserSight::create()+0x68> @ imm = #0x22
  3faea0: 9b01         	ldr	r3, [sp, #0x4]
  3faea2: 2b00         	cmp	r3, #0x0
  3faea4: d005         	beq	0x3faeb2 <LaserSight::create()+0x56> @ imm = #0xa
  3faea6: 9b01         	ldr	r3, [sp, #0x4]
  3faea8: 681b         	ldr	r3, [r3]
  3faeaa: 3308         	adds	r3, #0x8
  3faeac: 681b         	ldr	r3, [r3]
  3faeae: 9801         	ldr	r0, [sp, #0x4]
  3faeb0: 4798         	blx	r3
  3faeb2: 2300         	movs	r3, #0x0
  3faeb4: 9301         	str	r3, [sp, #0x4]
  3faeb6: 2300         	movs	r3, #0x0
  3faeb8: e004         	b	0x3faec4 <LaserSight::create()+0x68> @ imm = #0x8
  3faeba: 4620         	mov	r0, r4
  3faebc: f38d f8f2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x38d1e4
  3faec0: f38d f8f4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x38d1e8
  3faec4: 4618         	mov	r0, r3
  3faec6: b002         	add	sp, #0x8
  3faec8: bd10         	pop	{r4, pc}
