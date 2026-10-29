// Boostie: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Boostie.cpp

// ==== Boostie::Boostie
//      file offset 0x2fdc04 (= ELF address; Ghidra 0x30dc04), 44 bytes, Thumb-2
  2fdc04: b510         	push	{r4, lr}
  2fdc06: b082         	sub	sp, #0x8
  2fdc08: 9001         	str	r0, [sp, #0x4]
  2fdc0a: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x2fdc28 <Boostie::Boostie()+0x24>
  2fdc0c: 447c         	add	r4, pc
  2fdc0e: 9b01         	ldr	r3, [sp, #0x4]
  2fdc10: 4618         	mov	r0, r3
  2fdc12: f291 fd11    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x291a22
  2fdc16: 9b01         	ldr	r3, [sp, #0x4]
  2fdc18: 4a04         	ldr	r2, [pc, #0x10]         @ 0x2fdc2c <Boostie::Boostie()+0x28>
  2fdc1a: 58a2         	ldr	r2, [r4, r2]
  2fdc1c: 3208         	adds	r2, #0x8
  2fdc1e: 601a         	str	r2, [r3]
  2fdc20: 9b01         	ldr	r3, [sp, #0x4]
  2fdc22: 4618         	mov	r0, r3
  2fdc24: b002         	add	sp, #0x8
  2fdc26: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x2fdc27); words below are literal-pool data ---
  2fdc28: 4dfc         	ldr	r5, [pc, #0x3f0]        @ 0x2fe01c <Boostie::setStreakColor(cocos2d::_ccColor3B)+0x8>
  2fdc2a: 0063         	lsls	r3, r4, #0x1
  2fdc2c: d904         	bls	0x2fdc38 <Boostie::init()+0x8> @ imm = #0x8
  2fdc2e: ffff b570    	<unknown>

// ==== Boostie::init
//      file offset 0x2fdc30 (= ELF address; Ghidra 0x30dc30), 496 bytes, Thumb-2
  2fdc30: b570         	push	{r4, r5, r6, lr}
  2fdc32: b088         	sub	sp, #0x20
  2fdc34: 9001         	str	r0, [sp, #0x4]
  2fdc36: 4c74         	ldr	r4, [pc, #0x1d0]        @ 0x2fde08 <Boostie::init()+0x1d8>
  2fdc38: 447c         	add	r4, pc
  2fdc3a: 9b01         	ldr	r3, [sp, #0x4]
  2fdc3c: 4618         	mov	r0, r3
  2fdc3e: f291 ff05    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x291e0a
  2fdc42: 4603         	mov	r3, r0
  2fdc44: f88d 300f    	strb.w	r3, [sp, #0xf]
  2fdc48: f89d 300f    	ldrb.w	r3, [sp, #0xf]
  2fdc4c: f083 0301    	eor	r3, r3, #0x1
  2fdc50: b2db         	uxtb	r3, r3
  2fdc52: 2b00         	cmp	r3, #0x0
  2fdc54: d001         	beq	0x2fdc5a <Boostie::init()+0x2a> @ imm = #0x2
  2fdc56: 2300         	movs	r3, #0x0
  2fdc58: e0d2         	b	0x2fde00 <Boostie::init()+0x1d0> @ imm = #0x1a4
  2fdc5a: 9b01         	ldr	r3, [sp, #0x4]
  2fdc5c: f04f 0200    	mov.w	r2, #0x0
  2fdc60: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  2fdc64: 4b69         	ldr	r3, [pc, #0x1a4]        @ 0x2fde0c <Boostie::init()+0x1dc>
  2fdc66: 447b         	add	r3, pc
  2fdc68: 4618         	mov	r0, r3
  2fdc6a: f2da fb4b    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2da696
  2fdc6e: 4602         	mov	r2, r0
  2fdc70: 9b01         	ldr	r3, [sp, #0x4]
  2fdc72: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  2fdc76: 9b01         	ldr	r3, [sp, #0x4]
  2fdc78: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fdc7c: 4618         	mov	r0, r3
  2fdc7e: f29a f933    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x29a266
  2fdc82: 9b01         	ldr	r3, [sp, #0x4]
  2fdc84: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fdc88: 681b         	ldr	r3, [r3]
  2fdc8a: 337c         	adds	r3, #0x7c
  2fdc8c: 681d         	ldr	r5, [r3]
  2fdc8e: 9b01         	ldr	r3, [sp, #0x4]
  2fdc90: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  2fdc94: ab04         	add	r3, sp, #0x10
  2fdc96: 4618         	mov	r0, r3
  2fdc98: f04f 517c    	mov.w	r1, #0x3f000000
  2fdc9c: f04f 527e    	mov.w	r2, #0x3f800000
  2fdca0: f295 f826    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29504c
  2fdca4: ab04         	add	r3, sp, #0x10
  2fdca6: 4630         	mov	r0, r6
  2fdca8: 4619         	mov	r1, r3
  2fdcaa: 47a8         	blx	r5
  2fdcac: 9b01         	ldr	r3, [sp, #0x4]
  2fdcae: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fdcb2: 681b         	ldr	r3, [r3]
  2fdcb4: 334c         	adds	r3, #0x4c
  2fdcb6: 681d         	ldr	r5, [r3]
  2fdcb8: 9b01         	ldr	r3, [sp, #0x4]
  2fdcba: f8d3 60e4    	ldr.w	r6, [r3, #0xe4]
  2fdcbe: ab04         	add	r3, sp, #0x10
  2fdcc0: 4618         	mov	r0, r3
  2fdcc2: f04f 0100    	mov.w	r1, #0x0
  2fdcc6: f04f 0200    	mov.w	r2, #0x0
  2fdcca: f2cc 12c8    	movt	r2, #0xc1c8
  2fdcce: f295 f80f    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x29501e
  2fdcd2: ab04         	add	r3, sp, #0x10
  2fdcd4: 4630         	mov	r0, r6
  2fdcd6: 4619         	mov	r1, r3
  2fdcd8: 47a8         	blx	r5
  2fdcda: 9b01         	ldr	r3, [sp, #0x4]
  2fdcdc: 681b         	ldr	r3, [r3]
  2fdcde: 33cc         	adds	r3, #0xcc
  2fdce0: 681b         	ldr	r3, [r3]
  2fdce2: 9901         	ldr	r1, [sp, #0x4]
  2fdce4: 9a01         	ldr	r2, [sp, #0x4]
  2fdce6: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2fdcea: 4608         	mov	r0, r1
  2fdcec: 4611         	mov	r1, r2
  2fdcee: 2200         	movs	r2, #0x0
  2fdcf0: 4798         	blx	r3
  2fdcf2: 9b01         	ldr	r3, [sp, #0x4]
  2fdcf4: 2200         	movs	r2, #0x0
  2fdcf6: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2fdcfa: 9b01         	ldr	r3, [sp, #0x4]
  2fdcfc: 2200         	movs	r2, #0x0
  2fdcfe: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2fdd02: 4b43         	ldr	r3, [pc, #0x10c]        @ 0x2fde10 <Boostie::init()+0x1e0>
  2fdd04: 447b         	add	r3, pc
  2fdd06: 4618         	mov	r0, r3
  2fdd08: f2c7 f908    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x2c7210
  2fdd0c: 4602         	mov	r2, r0
  2fdd0e: 9b01         	ldr	r3, [sp, #0x4]
  2fdd10: f8c3 20f0    	str.w	r2, [r3, #0xf0]
  2fdd14: 9b01         	ldr	r3, [sp, #0x4]
  2fdd16: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fdd1a: 681b         	ldr	r3, [r3]
  2fdd1c: f503 733c    	add.w	r3, r3, #0x2f0
  2fdd20: 681b         	ldr	r3, [r3]
  2fdd22: 9a01         	ldr	r2, [sp, #0x4]
  2fdd24: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2fdd28: 4610         	mov	r0, r2
  2fdd2a: 2102         	movs	r1, #0x2
  2fdd2c: 4798         	blx	r3
  2fdd2e: 9b01         	ldr	r3, [sp, #0x4]
  2fdd30: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fdd34: 4618         	mov	r0, r3
  2fdd36: f29a f8d7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x29a1ae
  2fdd3a: 4b36         	ldr	r3, [pc, #0xd8]         @ 0x2fde14 <Boostie::init()+0x1e4>
  2fdd3c: 58e3         	ldr	r3, [r4, r3]
  2fdd3e: 681b         	ldr	r3, [r3]
  2fdd40: 681b         	ldr	r3, [r3]
  2fdd42: 33cc         	adds	r3, #0xcc
  2fdd44: 681b         	ldr	r3, [r3]
  2fdd46: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x2fde14 <Boostie::init()+0x1e4>
  2fdd48: 58a2         	ldr	r2, [r4, r2]
  2fdd4a: 6812         	ldr	r2, [r2]
  2fdd4c: 4611         	mov	r1, r2
  2fdd4e: 9a01         	ldr	r2, [sp, #0x4]
  2fdd50: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2fdd54: 4608         	mov	r0, r1
  2fdd56: 4611         	mov	r1, r2
  2fdd58: 2202         	movs	r2, #0x2
  2fdd5a: 4798         	blx	r3
  2fdd5c: 9b01         	ldr	r3, [sp, #0x4]
  2fdd5e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fdd62: 681b         	ldr	r3, [r3]
  2fdd64: f503 7322    	add.w	r3, r3, #0x288
  2fdd68: 681d         	ldr	r5, [r3]
  2fdd6a: 9b01         	ldr	r3, [sp, #0x4]
  2fdd6c: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
  2fdd70: 4b29         	ldr	r3, [pc, #0xa4]         @ 0x2fde18 <Boostie::init()+0x1e8>
  2fdd72: 447b         	add	r3, pc
  2fdd74: ac04         	add	r4, sp, #0x10
  2fdd76: cb0f         	ldm	r3, {r0, r1, r2, r3}
  2fdd78: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  2fdd7c: ab04         	add	r3, sp, #0x10
  2fdd7e: 4630         	mov	r0, r6
  2fdd80: 4619         	mov	r1, r3
  2fdd82: 47a8         	blx	r5
  2fdd84: 9b01         	ldr	r3, [sp, #0x4]
  2fdd86: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fdd8a: 681b         	ldr	r3, [r3]
  2fdd8c: f503 7326    	add.w	r3, r3, #0x298
  2fdd90: 681d         	ldr	r5, [r3]
  2fdd92: 9b01         	ldr	r3, [sp, #0x4]
  2fdd94: f8d3 60f0    	ldr.w	r6, [r3, #0xf0]
  2fdd98: 4b20         	ldr	r3, [pc, #0x80]         @ 0x2fde1c <Boostie::init()+0x1ec>
  2fdd9a: 447b         	add	r3, pc
  2fdd9c: ac04         	add	r4, sp, #0x10
  2fdd9e: cb0f         	ldm	r3, {r0, r1, r2, r3}
  2fdda0: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  2fdda4: ab04         	add	r3, sp, #0x10
  2fdda6: 4630         	mov	r0, r6
  2fdda8: 4619         	mov	r1, r3
  2fddaa: 47a8         	blx	r5
  2fddac: 9b01         	ldr	r3, [sp, #0x4]
  2fddae: 2200         	movs	r2, #0x0
  2fddb0: f883 20fc    	strb.w	r2, [r3, #0xfc]
  2fddb4: 9b01         	ldr	r3, [sp, #0x4]
  2fddb6: f04f 0200    	mov.w	r2, #0x0
  2fddba: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  2fddbe: 9b01         	ldr	r3, [sp, #0x4]
  2fddc0: f04f 0200    	mov.w	r2, #0x0
  2fddc4: f8c3 2100    	str.w	r2, [r3, #0x100]
  2fddc8: 9b01         	ldr	r3, [sp, #0x4]
  2fddca: f04f 0200    	mov.w	r2, #0x0
  2fddce: f8c3 2104    	str.w	r2, [r3, #0x104]
  2fddd2: 9b01         	ldr	r3, [sp, #0x4]
  2fddd4: 2200         	movs	r2, #0x0
  2fddd6: f883 2108    	strb.w	r2, [r3, #0x108]
  2fddda: 9c01         	ldr	r4, [sp, #0x4]
  2fdddc: 20ff         	movs	r0, #0xff
  2fddde: 21ff         	movs	r1, #0xff
  2fdde0: 22ff         	movs	r2, #0xff
  2fdde2: f7ff f813    	bl	0x2fce0c <non-virtual thunk to PartTableView::~PartTableView()+0x138> @ imm = #-0xfda
  2fdde6: 4603         	mov	r3, r0
  2fdde8: 461a         	mov	r2, r3
  2fddea: f884 2109    	strb.w	r2, [r4, #0x109]
  2fddee: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  2fddf2: f884 210a    	strb.w	r2, [r4, #0x10a]
  2fddf6: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  2fddfa: f884 310b    	strb.w	r3, [r4, #0x10b]
  2fddfe: 2301         	movs	r3, #0x1
  2fde00: 4618         	mov	r0, r3
  2fde02: b008         	add	sp, #0x20
  2fde04: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x2fde05); words below are literal-pool data ---
  2fde06: bf00         	nop
  2fde08: 4dd0         	ldr	r5, [pc, #0x340]        @ 0x2fe14c <Boostie::updateStep(float, float, cpVect)+0xec>
  2fde0a: 0063         	lsls	r3, r4, #0x1
  2fde0c: 6fa6         	ldr	r6, [r4, #0x78]
  2fde0e: 004c         	lsls	r4, r1, #0x1
  2fde10: 6f14         	ldr	r4, [r2, #0x70]
  2fde12: 004c         	lsls	r4, r1, #0x1
  2fde14: d744         	bvc	0x2fdea0 <Boostie::~Boostie()+0x80> @ imm = #0x88
  2fde16: ffff 6eb2    	<unknown>
  2fde1a: 004c         	lsls	r4, r1, #0x1
  2fde1c: 6e9a         	ldr	r2, [r3, #0x68]
  2fde1e: 004c         	lsls	r4, r1, #0x1

// ==== Boostie::~Boostie
//      file offset 0x2fde20 (= ELF address; Ghidra 0x30de20), 224 bytes, Thumb-2
  2fde20: b500         	push	{lr}
  2fde22: b083         	sub	sp, #0xc
  2fde24: 9001         	str	r0, [sp, #0x4]
  2fde26: 4934         	ldr	r1, [pc, #0xd0]         @ 0x2fdef8 <Boostie::~Boostie()+0xd8>
  2fde28: 4479         	add	r1, pc
  2fde2a: 9b01         	ldr	r3, [sp, #0x4]
  2fde2c: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x2fdefc <Boostie::~Boostie()+0xdc>
  2fde2e: 588a         	ldr	r2, [r1, r2]
  2fde30: 3208         	adds	r2, #0x8
  2fde32: 601a         	str	r2, [r3]
  2fde34: 9b01         	ldr	r3, [sp, #0x4]
  2fde36: 4618         	mov	r0, r3
  2fde38: f292 fbf8    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2927f0
  2fde3c: 9b01         	ldr	r3, [sp, #0x4]
  2fde3e: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fde42: 4618         	mov	r0, r3
  2fde44: f2c4 feba    	bl	0x5c2bbc <cocos2d::CCParticleSystem::stopSystem()> @ imm = #0x2c4d74
  2fde48: 9b01         	ldr	r3, [sp, #0x4]
  2fde4a: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fde4e: 4618         	mov	r0, r3
  2fde50: f2c4 fec8    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x2c4d90
  2fde54: 9b01         	ldr	r3, [sp, #0x4]
  2fde56: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fde5a: 681b         	ldr	r3, [r3]
  2fde5c: 33e8         	adds	r3, #0xe8
  2fde5e: 681b         	ldr	r3, [r3]
  2fde60: 9a01         	ldr	r2, [sp, #0x4]
  2fde62: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2fde66: 4610         	mov	r0, r2
  2fde68: 4798         	blx	r3
  2fde6a: 9b01         	ldr	r3, [sp, #0x4]
  2fde6c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fde70: 4618         	mov	r0, r3
  2fde72: f29a f821    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29a042
  2fde76: 9b01         	ldr	r3, [sp, #0x4]
  2fde78: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fde7c: 2b00         	cmp	r3, #0x0
  2fde7e: d010         	beq	0x2fdea2 <Boostie::~Boostie()+0x82> @ imm = #0x20
  2fde80: 9b01         	ldr	r3, [sp, #0x4]
  2fde82: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fde86: 681b         	ldr	r3, [r3]
  2fde88: 33e8         	adds	r3, #0xe8
  2fde8a: 681b         	ldr	r3, [r3]
  2fde8c: 9a01         	ldr	r2, [sp, #0x4]
  2fde8e: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2fde92: 4610         	mov	r0, r2
  2fde94: 4798         	blx	r3
  2fde96: 9b01         	ldr	r3, [sp, #0x4]
  2fde98: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fde9c: 4618         	mov	r0, r3
  2fde9e: f29a f80b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x29a016
  2fdea2: 9b01         	ldr	r3, [sp, #0x4]
  2fdea4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fdea8: 2b00         	cmp	r3, #0x0
  2fdeaa: d010         	beq	0x2fdece <Boostie::~Boostie()+0xae> @ imm = #0x20
  2fdeac: 9b01         	ldr	r3, [sp, #0x4]
  2fdeae: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fdeb2: 681b         	ldr	r3, [r3]
  2fdeb4: 33e8         	adds	r3, #0xe8
  2fdeb6: 681b         	ldr	r3, [r3]
  2fdeb8: 9a01         	ldr	r2, [sp, #0x4]
  2fdeba: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2fdebe: 4610         	mov	r0, r2
  2fdec0: 4798         	blx	r3
  2fdec2: 9b01         	ldr	r3, [sp, #0x4]
  2fdec4: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fdec8: 4618         	mov	r0, r3
  2fdeca: f299 fff5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x299fea
  2fdece: 9b01         	ldr	r3, [sp, #0x4]
  2fded0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fded4: 4618         	mov	r0, r3
  2fded6: f299 ffef    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x299fde
  2fdeda: 9b01         	ldr	r3, [sp, #0x4]
  2fdedc: 4618         	mov	r0, r3
  2fdede: f291 fcb1    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x291962
  2fdee2: 2300         	movs	r3, #0x0
  2fdee4: 2b00         	cmp	r3, #0x0
  2fdee6: d002         	beq	0x2fdeee <Boostie::~Boostie()+0xce> @ imm = #0x4
  2fdee8: 9801         	ldr	r0, [sp, #0x4]
  2fdeea: f08a f0db    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48a1b6
  2fdeee: 9b01         	ldr	r3, [sp, #0x4]
  2fdef0: 4618         	mov	r0, r3
  2fdef2: b003         	add	sp, #0xc
  2fdef4: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x2fdef7); words below are literal-pool data ---
  2fdef8: 4be0         	ldr	r3, [pc, #0x380]        @ 0x2fe27c <Boostie::updateStep(float, float, cpVect)+0x21c>
  2fdefa: 0063         	lsls	r3, r4, #0x1
  2fdefc: d904         	bls	0x2fdf08 <Boostie::~Boostie()+0x8> @ imm = #0x8
  2fdefe: ffff b500    	<unknown>

// ==== Boostie::~Boostie
//      file offset 0x2fdf00 (= ELF address; Ghidra 0x30df00), 28 bytes, Thumb-2
  2fdf00: b500         	push	{lr}
  2fdf02: b083         	sub	sp, #0xc
  2fdf04: 9001         	str	r0, [sp, #0x4]
  2fdf06: 9801         	ldr	r0, [sp, #0x4]
  2fdf08: f7ff ff8a    	bl	0x2fde20 <Boostie::~Boostie()> @ imm = #-0xec
  2fdf0c: 9801         	ldr	r0, [sp, #0x4]
  2fdf0e: f08a f0c9    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x48a192
  2fdf12: 9b01         	ldr	r3, [sp, #0x4]
  2fdf14: 4618         	mov	r0, r3
  2fdf16: b003         	add	sp, #0xc
  2fdf18: f85d fb04    	ldr	pc, [sp], #4

// ==== Boostie::reset
//      file offset 0x2fdf1c (= ELF address; Ghidra 0x30df1c), 52 bytes, Thumb-2
  2fdf1c: b500         	push	{lr}
  2fdf1e: b083         	sub	sp, #0xc
  2fdf20: 9001         	str	r0, [sp, #0x4]
  2fdf22: 9b01         	ldr	r3, [sp, #0x4]
  2fdf24: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fdf28: 2b00         	cmp	r3, #0x0
  2fdf2a: d00e         	beq	0x2fdf4a <Boostie::reset()+0x2e> @ imm = #0x1c
  2fdf2c: 9b01         	ldr	r3, [sp, #0x4]
  2fdf2e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fdf32: 681b         	ldr	r3, [r3]
  2fdf34: 3314         	adds	r3, #0x14
  2fdf36: 681b         	ldr	r3, [r3]
  2fdf38: 9a01         	ldr	r2, [sp, #0x4]
  2fdf3a: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2fdf3e: 4610         	mov	r0, r2
  2fdf40: f04f 0100    	mov.w	r1, #0x0
  2fdf44: f2c4 1120    	movt	r1, #0x4120
  2fdf48: 4798         	blx	r3
  2fdf4a: b003         	add	sp, #0xc
  2fdf4c: f85d fb04    	ldr	pc, [sp], #4

// ==== Boostie::setVisible
//      file offset 0x2fdf50 (= ELF address; Ghidra 0x30df50), 196 bytes, Thumb-2
  2fdf50: b500         	push	{lr}
  2fdf52: b083         	sub	sp, #0xc
  2fdf54: 9001         	str	r0, [sp, #0x4]
  2fdf56: 460b         	mov	r3, r1
  2fdf58: f88d 3003    	strb.w	r3, [sp, #0x3]
  2fdf5c: 9a01         	ldr	r2, [sp, #0x4]
  2fdf5e: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  2fdf62: 4610         	mov	r0, r2
  2fdf64: 4619         	mov	r1, r3
  2fdf66: f291 ff93    	bl	0x58fe90 <cocos2d::CCNode::setVisible(bool)> @ imm = #0x291f26
  2fdf6a: 9b01         	ldr	r3, [sp, #0x4]
  2fdf6c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fdf70: 2b00         	cmp	r3, #0x0
  2fdf72: d00e         	beq	0x2fdf92 <Boostie::setVisible(bool)+0x42> @ imm = #0x1c
  2fdf74: 9b01         	ldr	r3, [sp, #0x4]
  2fdf76: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fdf7a: 681b         	ldr	r3, [r3]
  2fdf7c: 3390         	adds	r3, #0x90
  2fdf7e: 681b         	ldr	r3, [r3]
  2fdf80: 9a01         	ldr	r2, [sp, #0x4]
  2fdf82: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2fdf86: 4611         	mov	r1, r2
  2fdf88: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  2fdf8c: 4608         	mov	r0, r1
  2fdf8e: 4611         	mov	r1, r2
  2fdf90: 4798         	blx	r3
  2fdf92: 9b01         	ldr	r3, [sp, #0x4]
  2fdf94: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fdf98: 2b00         	cmp	r3, #0x0
  2fdf9a: d00e         	beq	0x2fdfba <Boostie::setVisible(bool)+0x6a> @ imm = #0x1c
  2fdf9c: 9b01         	ldr	r3, [sp, #0x4]
  2fdf9e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fdfa2: 681b         	ldr	r3, [r3]
  2fdfa4: 3390         	adds	r3, #0x90
  2fdfa6: 681b         	ldr	r3, [r3]
  2fdfa8: 9a01         	ldr	r2, [sp, #0x4]
  2fdfaa: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2fdfae: 4611         	mov	r1, r2
  2fdfb0: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  2fdfb4: 4608         	mov	r0, r1
  2fdfb6: 4611         	mov	r1, r2
  2fdfb8: 4798         	blx	r3
  2fdfba: 9b01         	ldr	r3, [sp, #0x4]
  2fdfbc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fdfc0: 681b         	ldr	r3, [r3]
  2fdfc2: 3390         	adds	r3, #0x90
  2fdfc4: 681b         	ldr	r3, [r3]
  2fdfc6: 9a01         	ldr	r2, [sp, #0x4]
  2fdfc8: f8d2 10e4    	ldr.w	r1, [r2, #0xe4]
  2fdfcc: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  2fdfd0: 4608         	mov	r0, r1
  2fdfd2: 4611         	mov	r1, r2
  2fdfd4: 4798         	blx	r3
  2fdfd6: 9b01         	ldr	r3, [sp, #0x4]
  2fdfd8: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fdfdc: 681b         	ldr	r3, [r3]
  2fdfde: 3390         	adds	r3, #0x90
  2fdfe0: 681b         	ldr	r3, [r3]
  2fdfe2: 9a01         	ldr	r2, [sp, #0x4]
  2fdfe4: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2fdfe8: 4611         	mov	r1, r2
  2fdfea: f89d 2003    	ldrb.w	r2, [sp, #0x3]
  2fdfee: 4608         	mov	r0, r1
  2fdff0: 4611         	mov	r1, r2
  2fdff2: 4798         	blx	r3
  2fdff4: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  2fdff8: f083 0301    	eor	r3, r3, #0x1
  2fdffc: b2db         	uxtb	r3, r3
  2fdffe: 2b00         	cmp	r3, #0x0
  2fe000: d005         	beq	0x2fe00e <Boostie::setVisible(bool)+0xbe> @ imm = #0xa
  2fe002: 9b01         	ldr	r3, [sp, #0x4]
  2fe004: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fe008: 4618         	mov	r0, r3
  2fe00a: f2c4 fdeb    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x2c4bd6
  2fe00e: b003         	add	sp, #0xc
  2fe010: f85d fb04    	ldr	pc, [sp], #4

// ==== Boostie::setStreakColor
//      file offset 0x2fe014 (= ELF address; Ghidra 0x30e014), 74 bytes, Thumb-2
  2fe014: b500         	push	{lr}
  2fe016: b083         	sub	sp, #0xc
  2fe018: 9001         	str	r0, [sp, #0x4]
  2fe01a: 9100         	str	r1, [sp]
  2fe01c: 9b01         	ldr	r3, [sp, #0x4]
  2fe01e: f203 1309    	addw	r3, r3, #0x109
  2fe022: 466a         	mov	r2, sp
  2fe024: 8811         	ldrh	r1, [r2]
  2fe026: 7892         	ldrb	r2, [r2, #0x2]
  2fe028: 8019         	strh	r1, [r3]
  2fe02a: 709a         	strb	r2, [r3, #0x2]
  2fe02c: 9b01         	ldr	r3, [sp, #0x4]
  2fe02e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe032: 2b00         	cmp	r3, #0x0
  2fe034: d010         	beq	0x2fe058 <Boostie::setStreakColor(cocos2d::_ccColor3B)+0x44> @ imm = #0x20
  2fe036: 9b01         	ldr	r3, [sp, #0x4]
  2fe038: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe03c: 681b         	ldr	r3, [r3]
  2fe03e: f503 73de    	add.w	r3, r3, #0x1bc
  2fe042: 681b         	ldr	r3, [r3]
  2fe044: 9a01         	ldr	r2, [sp, #0x4]
  2fe046: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2fe04a: 4611         	mov	r1, r2
  2fe04c: 9a01         	ldr	r2, [sp, #0x4]
  2fe04e: f202 1209    	addw	r2, r2, #0x109
  2fe052: 4608         	mov	r0, r1
  2fe054: 4611         	mov	r1, r2
  2fe056: 4798         	blx	r3
  2fe058: b003         	add	sp, #0xc
  2fe05a: f85d fb04    	ldr	pc, [sp], #4

// ==== Boostie::updateStep
//      file offset 0x2fe060 (= ELF address; Ghidra 0x30e060), 1118 bytes, Thumb-2
  2fe060: b530         	push	{r4, r5, lr}
  2fe062: b093         	sub	sp, #0x4c
  2fe064: 9005         	str	r0, [sp, #0x14]
  2fe066: 9104         	str	r1, [sp, #0x10]
  2fe068: 9203         	str	r2, [sp, #0xc]
  2fe06a: 4cc4         	ldr	r4, [pc, #0x310]        @ 0x2fe37c <Boostie::updateStep(float, float, cpVect)+0x31c>
  2fe06c: 447c         	add	r4, pc
  2fe06e: 9b05         	ldr	r3, [sp, #0x14]
  2fe070: ed93 7a3e    	vldr	s14, [r3, #248]
  2fe074: eddd 7a04    	vldr	s15, [sp, #16]
  2fe078: ee77 7a27    	vadd.f32	s15, s14, s15
  2fe07c: 9b05         	ldr	r3, [sp, #0x14]
  2fe07e: edc3 7a3e    	vstr	s15, [r3, #248]
  2fe082: 9b05         	ldr	r3, [sp, #0x14]
  2fe084: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fe088: 681b         	ldr	r3, [r3]
  2fe08a: 3338         	adds	r3, #0x38
  2fe08c: 681b         	ldr	r3, [r3]
  2fe08e: 9a05         	ldr	r2, [sp, #0x14]
  2fe090: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2fe094: 9905         	ldr	r1, [sp, #0x14]
  2fe096: f891 10fc    	ldrb.w	r1, [r1, #0xfc]
  2fe09a: 2900         	cmp	r1, #0x0
  2fe09c: d002         	beq	0x2fe0a4 <Boostie::updateStep(float, float, cpVect)+0x44> @ imm = #0x4
  2fe09e: eddd 7a03    	vldr	s15, [sp, #12]
  2fe0a2: e009         	b	0x2fe0b8 <Boostie::updateStep(float, float, cpVect)+0x58> @ imm = #0x12
  2fe0a4: eddd 7a03    	vldr	s15, [sp, #12]
  2fe0a8: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  2fe0ac: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  2fe0b0: ee26 7b07    	vmul.f64	d7, d6, d7
  2fe0b4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2fe0b8: 4610         	mov	r0, r2
  2fe0ba: ee17 1a90    	vmov	r1, s15
  2fe0be: 4798         	blx	r3
  2fe0c0: 9b05         	ldr	r3, [sp, #0x14]
  2fe0c2: f893 30fc    	ldrb.w	r3, [r3, #0xfc]
  2fe0c6: f083 0301    	eor	r3, r3, #0x1
  2fe0ca: b2da         	uxtb	r2, r3
  2fe0cc: 9b05         	ldr	r3, [sp, #0x14]
  2fe0ce: f883 20fc    	strb.w	r2, [r3, #0xfc]
  2fe0d2: eddd 7a03    	vldr	s15, [sp, #12]
  2fe0d6: eef5 7ac0    	vcmpe.f32	s15, #0
  2fe0da: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2fe0de: d80f         	bhi	0x2fe100 <Boostie::updateStep(float, float, cpVect)+0xa0> @ imm = #0x1e
  2fe0e0: f04f 0300    	mov.w	r3, #0x0
  2fe0e4: 9303         	str	r3, [sp, #0xc]
  2fe0e6: 9b05         	ldr	r3, [sp, #0x14]
  2fe0e8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fe0ec: 681b         	ldr	r3, [r3]
  2fe0ee: 3390         	adds	r3, #0x90
  2fe0f0: 681b         	ldr	r3, [r3]
  2fe0f2: 9a05         	ldr	r2, [sp, #0x14]
  2fe0f4: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2fe0f8: 4610         	mov	r0, r2
  2fe0fa: 2100         	movs	r1, #0x0
  2fe0fc: 4798         	blx	r3
  2fe0fe: e00b         	b	0x2fe118 <Boostie::updateStep(float, float, cpVect)+0xb8> @ imm = #0x16
  2fe100: 9b05         	ldr	r3, [sp, #0x14]
  2fe102: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  2fe106: 681b         	ldr	r3, [r3]
  2fe108: 3390         	adds	r3, #0x90
  2fe10a: 681b         	ldr	r3, [r3]
  2fe10c: 9a05         	ldr	r2, [sp, #0x14]
  2fe10e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  2fe112: 4610         	mov	r0, r2
  2fe114: 2101         	movs	r1, #0x1
  2fe116: 4798         	blx	r3
  2fe118: 9b05         	ldr	r3, [sp, #0x14]
  2fe11a: ed93 7a40    	vldr	s14, [r3, #256]
  2fe11e: eddd 6a04    	vldr	s13, [sp, #16]
  2fe122: eddf 7a95    	vldr	s15, [pc, #596]         @ 0x2fe378 <Boostie::updateStep(float, float, cpVect)+0x318>
  2fe126: ee66 7aa7    	vmul.f32	s15, s13, s15
  2fe12a: ee37 7a67    	vsub.f32	s14, s14, s15
  2fe12e: eddd 7a03    	vldr	s15, [sp, #12]
  2fe132: eeb4 7ae7    	vcmpe.f32	s14, s15
  2fe136: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2fe13a: dd0b         	ble	0x2fe154 <Boostie::updateStep(float, float, cpVect)+0xf4> @ imm = #0x16
  2fe13c: 9b05         	ldr	r3, [sp, #0x14]
  2fe13e: ed93 7a40    	vldr	s14, [r3, #256]
  2fe142: eddd 6a04    	vldr	s13, [sp, #16]
  2fe146: eddf 7a8c    	vldr	s15, [pc, #560]         @ 0x2fe378 <Boostie::updateStep(float, float, cpVect)+0x318>
  2fe14a: ee66 7aa7    	vmul.f32	s15, s13, s15
  2fe14e: ee77 7a67    	vsub.f32	s15, s14, s15
  2fe152: e001         	b	0x2fe158 <Boostie::updateStep(float, float, cpVect)+0xf8> @ imm = #0x2
  2fe154: eddd 7a03    	vldr	s15, [sp, #12]
  2fe158: 9b05         	ldr	r3, [sp, #0x14]
  2fe15a: edc3 7a40    	vstr	s15, [r3, #256]
  2fe15e: 9b05         	ldr	r3, [sp, #0x14]
  2fe160: 681b         	ldr	r3, [r3]
  2fe162: 3350         	adds	r3, #0x50
  2fe164: 681b         	ldr	r3, [r3]
  2fe166: 9a05         	ldr	r2, [sp, #0x14]
  2fe168: 4610         	mov	r0, r2
  2fe16a: 4798         	blx	r3
  2fe16c: 4605         	mov	r5, r0
  2fe16e: ab08         	add	r3, sp, #0x20
  2fe170: 4618         	mov	r0, r3
  2fe172: f04f 0100    	mov.w	r1, #0x0
  2fe176: f04f 0200    	mov.w	r2, #0x0
  2fe17a: f2cc 2220    	movt	r2, #0xc220
  2fe17e: f294 fdb7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x294b6e
  2fe182: aa0a         	add	r2, sp, #0x28
  2fe184: ab08         	add	r3, sp, #0x20
  2fe186: 4610         	mov	r0, r2
  2fe188: 4629         	mov	r1, r5
  2fe18a: 461a         	mov	r2, r3
  2fe18c: f7fe fe6c    	bl	0x2fce68 <non-virtual thunk to PartTableView::~PartTableView()+0x194> @ imm = #-0x1328
  2fe190: 9b05         	ldr	r3, [sp, #0x14]
  2fe192: 681b         	ldr	r3, [r3]
  2fe194: f503 73c2    	add.w	r3, r3, #0x184
  2fe198: 681b         	ldr	r3, [r3]
  2fe19a: 9a05         	ldr	r2, [sp, #0x14]
  2fe19c: a90c         	add	r1, sp, #0x30
  2fe19e: 4608         	mov	r0, r1
  2fe1a0: 4611         	mov	r1, r2
  2fe1a2: 4798         	blx	r3
  2fe1a4: a906         	add	r1, sp, #0x18
  2fe1a6: aa0a         	add	r2, sp, #0x28
  2fe1a8: ab0c         	add	r3, sp, #0x30
  2fe1aa: 4608         	mov	r0, r1
  2fe1ac: 4611         	mov	r1, r2
  2fe1ae: 461a         	mov	r2, r3
  2fe1b0: f294 f8b8    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x294170
  2fe1b4: 4b72         	ldr	r3, [pc, #0x1c8]        @ 0x2fe380 <Boostie::updateStep(float, float, cpVect)+0x320>
  2fe1b6: 58e3         	ldr	r3, [r4, r3]
  2fe1b8: 681b         	ldr	r3, [r3]
  2fe1ba: 681b         	ldr	r3, [r3]
  2fe1bc: f503 73c4    	add.w	r3, r3, #0x188
  2fe1c0: 681b         	ldr	r3, [r3]
  2fe1c2: 4a6f         	ldr	r2, [pc, #0x1bc]        @ 0x2fe380 <Boostie::updateStep(float, float, cpVect)+0x320>
  2fe1c4: 58a2         	ldr	r2, [r4, r2]
  2fe1c6: 6812         	ldr	r2, [r2]
  2fe1c8: a90c         	add	r1, sp, #0x30
  2fe1ca: 4608         	mov	r0, r1
  2fe1cc: 4611         	mov	r1, r2
  2fe1ce: 4798         	blx	r3
  2fe1d0: a90a         	add	r1, sp, #0x28
  2fe1d2: aa06         	add	r2, sp, #0x18
  2fe1d4: ab0c         	add	r3, sp, #0x30
  2fe1d6: 4608         	mov	r0, r1
  2fe1d8: 4611         	mov	r1, r2
  2fe1da: 461a         	mov	r2, r3
  2fe1dc: f294 f8a2    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x294144
  2fe1e0: aa06         	add	r2, sp, #0x18
  2fe1e2: ab0a         	add	r3, sp, #0x28
  2fe1e4: 4610         	mov	r0, r2
  2fe1e6: 4619         	mov	r1, r3
  2fe1e8: f294 fdb0    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x294b60
  2fe1ec: 9b05         	ldr	r3, [sp, #0x14]
  2fe1ee: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe1f2: 2b00         	cmp	r3, #0x0
  2fe1f4: d00f         	beq	0x2fe216 <Boostie::updateStep(float, float, cpVect)+0x1b6> @ imm = #0x1e
  2fe1f6: 9b05         	ldr	r3, [sp, #0x14]
  2fe1f8: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe1fc: 681b         	ldr	r3, [r3]
  2fe1fe: f503 73f4    	add.w	r3, r3, #0x1e8
  2fe202: 681b         	ldr	r3, [r3]
  2fe204: 9a05         	ldr	r2, [sp, #0x14]
  2fe206: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  2fe20a: 9a05         	ldr	r2, [sp, #0x14]
  2fe20c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  2fe210: 4608         	mov	r0, r1
  2fe212: 4611         	mov	r1, r2
  2fe214: 4798         	blx	r3
  2fe216: 9b05         	ldr	r3, [sp, #0x14]
  2fe218: ed93 7a41    	vldr	s14, [r3, #260]
  2fe21c: eddd 7a04    	vldr	s15, [sp, #16]
  2fe220: ee77 7a67    	vsub.f32	s15, s14, s15
  2fe224: 9b05         	ldr	r3, [sp, #0x14]
  2fe226: edc3 7a41    	vstr	s15, [r3, #260]
  2fe22a: eddd 7a03    	vldr	s15, [sp, #12]
  2fe22e: eef5 7ac0    	vcmpe.f32	s15, #0
  2fe232: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2fe236: f340 80a7    	ble.w	0x2fe388 <Boostie::updateStep(float, float, cpVect)+0x328> @ imm = #0x14e
  2fe23a: 9b05         	ldr	r3, [sp, #0x14]
  2fe23c: edd3 7a41    	vldr	s15, [r3, #260]
  2fe240: eef5 7ac0    	vcmpe.f32	s15, #0
  2fe244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2fe248: f200 809e    	bhi.w	0x2fe388 <Boostie::updateStep(float, float, cpVect)+0x328> @ imm = #0x13c
  2fe24c: 9b05         	ldr	r3, [sp, #0x14]
  2fe24e: f893 3108    	ldrb.w	r3, [r3, #0x108]
  2fe252: 2b00         	cmp	r3, #0x0
  2fe254: d02c         	beq	0x2fe2b0 <Boostie::updateStep(float, float, cpVect)+0x250> @ imm = #0x58
  2fe256: 9b05         	ldr	r3, [sp, #0x14]
  2fe258: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe25c: 2b00         	cmp	r3, #0x0
  2fe25e: d027         	beq	0x2fe2b0 <Boostie::updateStep(float, float, cpVect)+0x250> @ imm = #0x4e
  2fe260: 9b05         	ldr	r3, [sp, #0x14]
  2fe262: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fe266: 2b00         	cmp	r3, #0x0
  2fe268: d014         	beq	0x2fe294 <Boostie::updateStep(float, float, cpVect)+0x234> @ imm = #0x28
  2fe26a: 9b05         	ldr	r3, [sp, #0x14]
  2fe26c: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fe270: 681b         	ldr	r3, [r3]
  2fe272: 33e8         	adds	r3, #0xe8
  2fe274: 681b         	ldr	r3, [r3]
  2fe276: 9a05         	ldr	r2, [sp, #0x14]
  2fe278: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2fe27c: 4610         	mov	r0, r2
  2fe27e: 4798         	blx	r3
  2fe280: 9b05         	ldr	r3, [sp, #0x14]
  2fe282: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fe286: 4618         	mov	r0, r3
  2fe288: f299 fe16    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x299c2c
  2fe28c: 9b05         	ldr	r3, [sp, #0x14]
  2fe28e: 2200         	movs	r2, #0x0
  2fe290: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2fe294: 9b05         	ldr	r3, [sp, #0x14]
  2fe296: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  2fe29a: 9b05         	ldr	r3, [sp, #0x14]
  2fe29c: f8c3 20ec    	str.w	r2, [r3, #0xec]
  2fe2a0: 9b05         	ldr	r3, [sp, #0x14]
  2fe2a2: 2200         	movs	r2, #0x0
  2fe2a4: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2fe2a8: 9b05         	ldr	r3, [sp, #0x14]
  2fe2aa: 2200         	movs	r2, #0x0
  2fe2ac: f883 2108    	strb.w	r2, [r3, #0x108]
  2fe2b0: 9b05         	ldr	r3, [sp, #0x14]
  2fe2b2: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe2b6: 2b00         	cmp	r3, #0x0
  2fe2b8: d12a         	bne	0x2fe310 <Boostie::updateStep(float, float, cpVect)+0x2b0> @ imm = #0x54
  2fe2ba: 9b05         	ldr	r3, [sp, #0x14]
  2fe2bc: f203 1309    	addw	r3, r3, #0x109
  2fe2c0: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x2fe384 <Boostie::updateStep(float, float, cpVect)+0x324>
  2fe2c2: 447a         	add	r2, pc
  2fe2c4: 9200         	str	r2, [sp]
  2fe2c6: f04f 507d    	mov.w	r0, #0x3f400000
  2fe2ca: f04f 517e    	mov.w	r1, #0x3f800000
  2fe2ce: f04f 0200    	mov.w	r2, #0x0
  2fe2d2: f2c4 0240    	movt	r2, #0x4040
  2fe2d6: f2bb fd2d    	bl	0x5b9d34 <cocos2d::CCMotionStreak::create(float, float, float, cocos2d::_ccColor3B const&, char const*)> @ imm = #0x2bba5a
  2fe2da: 4602         	mov	r2, r0
  2fe2dc: 9b05         	ldr	r3, [sp, #0x14]
  2fe2de: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  2fe2e2: 9b05         	ldr	r3, [sp, #0x14]
  2fe2e4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe2e8: 4618         	mov	r0, r3
  2fe2ea: f299 fdfd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x299bfa
  2fe2ee: 4b24         	ldr	r3, [pc, #0x90]         @ 0x2fe380 <Boostie::updateStep(float, float, cpVect)+0x320>
  2fe2f0: 58e3         	ldr	r3, [r4, r3]
  2fe2f2: 681b         	ldr	r3, [r3]
  2fe2f4: 681b         	ldr	r3, [r3]
  2fe2f6: 33cc         	adds	r3, #0xcc
  2fe2f8: 681b         	ldr	r3, [r3]
  2fe2fa: 4a21         	ldr	r2, [pc, #0x84]         @ 0x2fe380 <Boostie::updateStep(float, float, cpVect)+0x320>
  2fe2fc: 58a2         	ldr	r2, [r4, r2]
  2fe2fe: 6812         	ldr	r2, [r2]
  2fe300: 4611         	mov	r1, r2
  2fe302: 9a05         	ldr	r2, [sp, #0x14]
  2fe304: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2fe308: 4608         	mov	r0, r1
  2fe30a: 4611         	mov	r1, r2
  2fe30c: 2202         	movs	r2, #0x2
  2fe30e: 4798         	blx	r3
  2fe310: 9b05         	ldr	r3, [sp, #0x14]
  2fe312: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe316: 681b         	ldr	r3, [r3]
  2fe318: f503 73f2    	add.w	r3, r3, #0x1e4
  2fe31c: 681c         	ldr	r4, [r3]
  2fe31e: 9b05         	ldr	r3, [sp, #0x14]
  2fe320: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  2fe324: 9b05         	ldr	r3, [sp, #0x14]
  2fe326: edd3 7a3e    	vldr	s15, [r3, #248]
  2fe32a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2fe32e: ec51 0b17    	vmov	r0, r1, d7
  2fe332: f7d7 edea    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x2842c
  2fe336: ec41 0b16    	vmov	d6, r0, r1
  2fe33a: eeb1 7b00    	vmov.f64	d7, #4.000000e+00
  2fe33e: ee36 7b07    	vadd.f64	d7, d6, d7
  2fe342: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2fe346: 4628         	mov	r0, r5
  2fe348: ee17 1a90    	vmov	r1, s15
  2fe34c: 47a0         	blx	r4
  2fe34e: 9b05         	ldr	r3, [sp, #0x14]
  2fe350: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe354: 681b         	ldr	r3, [r3]
  2fe356: 334c         	adds	r3, #0x4c
  2fe358: 681b         	ldr	r3, [r3]
  2fe35a: 9a05         	ldr	r2, [sp, #0x14]
  2fe35c: f8d2 10e8    	ldr.w	r1, [r2, #0xe8]
  2fe360: aa06         	add	r2, sp, #0x18
  2fe362: 4608         	mov	r0, r1
  2fe364: 4611         	mov	r1, r2
  2fe366: 4798         	blx	r3
  2fe368: 9b05         	ldr	r3, [sp, #0x14]
  2fe36a: f649 129a    	movw	r2, #0x999a
  2fe36e: f6c3 5299    	movt	r2, #0x3d99
  2fe372: f8c3 2104    	str.w	r2, [r3, #0x104]
  2fe376: e017         	b	0x2fe3a8 <Boostie::updateStep(float, float, cpVect)+0x348> @ imm = #0x2e
  2fe378: 999a         	ldr	r1, [sp, #0x268]
  2fe37a: 3e19         	subs	r6, #0x19
  2fe37c: 499c         	ldr	r1, [pc, #0x270]        @ 0x2fe5f0 <Boostie::updateStep(float, float, cpVect)+0x590>
  2fe37e: 0063         	lsls	r3, r4, #0x1
  2fe380: d744         	bvc	0x2fe40c <Boostie::updateStep(float, float, cpVect)+0x3ac> @ imm = #0x88
  2fe382: ffff 6982    	<unknown>
  2fe386: 004c         	lsls	r4, r1, #0x1
  2fe388: eddd 7a03    	vldr	s15, [sp, #12]
  2fe38c: eef5 7ac0    	vcmpe.f32	s15, #0
  2fe390: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2fe394: d808         	bhi	0x2fe3a8 <Boostie::updateStep(float, float, cpVect)+0x348> @ imm = #0x10
  2fe396: 9b05         	ldr	r3, [sp, #0x14]
  2fe398: f04f 0200    	mov.w	r2, #0x0
  2fe39c: f8c3 2104    	str.w	r2, [r3, #0x104]
  2fe3a0: 9b05         	ldr	r3, [sp, #0x14]
  2fe3a2: 2201         	movs	r2, #0x1
  2fe3a4: f883 2108    	strb.w	r2, [r3, #0x108]
  2fe3a8: 9b05         	ldr	r3, [sp, #0x14]
  2fe3aa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe3ae: 2b00         	cmp	r3, #0x0
  2fe3b0: d00b         	beq	0x2fe3ca <Boostie::updateStep(float, float, cpVect)+0x36a> @ imm = #0x16
  2fe3b2: 9b05         	ldr	r3, [sp, #0x14]
  2fe3b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  2fe3b8: 681b         	ldr	r3, [r3]
  2fe3ba: 3314         	adds	r3, #0x14
  2fe3bc: 681b         	ldr	r3, [r3]
  2fe3be: 9a05         	ldr	r2, [sp, #0x14]
  2fe3c0: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  2fe3c4: 4610         	mov	r0, r2
  2fe3c6: 9904         	ldr	r1, [sp, #0x10]
  2fe3c8: 4798         	blx	r3
  2fe3ca: 9b05         	ldr	r3, [sp, #0x14]
  2fe3cc: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fe3d0: 2b00         	cmp	r3, #0x0
  2fe3d2: d00b         	beq	0x2fe3ec <Boostie::updateStep(float, float, cpVect)+0x38c> @ imm = #0x16
  2fe3d4: 9b05         	ldr	r3, [sp, #0x14]
  2fe3d6: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  2fe3da: 681b         	ldr	r3, [r3]
  2fe3dc: 3314         	adds	r3, #0x14
  2fe3de: 681b         	ldr	r3, [r3]
  2fe3e0: 9a05         	ldr	r2, [sp, #0x14]
  2fe3e2: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  2fe3e6: 4610         	mov	r0, r2
  2fe3e8: 9904         	ldr	r1, [sp, #0x10]
  2fe3ea: 4798         	blx	r3
  2fe3ec: 9b05         	ldr	r3, [sp, #0x14]
  2fe3ee: edd3 7a3d    	vldr	s15, [r3, #244]
  2fe3f2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  2fe3f6: eddd 7a04    	vldr	s15, [sp, #16]
  2fe3fa: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  2fe3fe: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  2fe402: ee25 7b07    	vmul.f64	d7, d5, d7
  2fe406: ee36 6b47    	vsub.f64	d6, d6, d7
  2fe40a: eddd 7a03    	vldr	s15, [sp, #12]
  2fe40e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  2fe412: eeb4 6bc7    	vcmpe.f64	d6, d7
  2fe416: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  2fe41a: d502         	bpl	0x2fe422 <Boostie::updateStep(float, float, cpVect)+0x3c2> @ imm = #0x4
  2fe41c: eddd 7a03    	vldr	s15, [sp, #12]
  2fe420: e010         	b	0x2fe444 <Boostie::updateStep(float, float, cpVect)+0x3e4> @ imm = #0x20
  2fe422: 9b05         	ldr	r3, [sp, #0x14]
  2fe424: edd3 7a3d    	vldr	s15, [r3, #244]
  2fe428: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  2fe42c: eddd 7a04    	vldr	s15, [sp, #16]
  2fe430: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  2fe434: eeb6 7b00    	vmov.f64	d7, #5.000000e-01
  2fe438: ee25 7b07    	vmul.f64	d7, d5, d7
  2fe43c: ee36 7b47    	vsub.f64	d7, d6, d7
  2fe440: eef7 7bc7    	vcvt.f32.f64	s15, d7
  2fe444: 9b05         	ldr	r3, [sp, #0x14]
  2fe446: edc3 7a3d    	vstr	s15, [r3, #244]
  2fe44a: 9b05         	ldr	r3, [sp, #0x14]
  2fe44c: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fe450: 681b         	ldr	r3, [r3]
  2fe452: f503 731a    	add.w	r3, r3, #0x268
  2fe456: 681b         	ldr	r3, [r3]
  2fe458: 9a05         	ldr	r2, [sp, #0x14]
  2fe45a: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2fe45e: 9905         	ldr	r1, [sp, #0x14]
  2fe460: ed91 7a3d    	vldr	s14, [r1, #244]
  2fe464: eef3 7a0b    	vmov.f32	s15, #2.700000e+01
  2fe468: ee67 7a27    	vmul.f32	s15, s14, s15
  2fe46c: 4610         	mov	r0, r2
  2fe46e: ee17 1a90    	vmov	r1, s15
  2fe472: 4798         	blx	r3
  2fe474: 9b05         	ldr	r3, [sp, #0x14]
  2fe476: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fe47a: 681b         	ldr	r3, [r3]
  2fe47c: f503 731e    	add.w	r3, r3, #0x278
  2fe480: 681b         	ldr	r3, [r3]
  2fe482: 9a05         	ldr	r2, [sp, #0x14]
  2fe484: f8d2 20f0    	ldr.w	r2, [r2, #0xf0]
  2fe488: 9905         	ldr	r1, [sp, #0x14]
  2fe48a: ed91 7a3d    	vldr	s14, [r1, #244]
  2fe48e: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  2fe492: ee67 7a27    	vmul.f32	s15, s14, s15
  2fe496: 4610         	mov	r0, r2
  2fe498: ee17 1a90    	vmov	r1, s15
  2fe49c: 4798         	blx	r3
  2fe49e: 9b05         	ldr	r3, [sp, #0x14]
  2fe4a0: f8d3 30f0    	ldr.w	r3, [r3, #0xf0]
  2fe4a4: 681b         	ldr	r3, [r3]
  2fe4a6: f503 73de    	add.w	r3, r3, #0x1bc
  2fe4aa: 681b         	ldr	r3, [r3]
  2fe4ac: 9a05         	ldr	r2, [sp, #0x14]
  2fe4ae: f8d2 10f0    	ldr.w	r1, [r2, #0xf0]
  2fe4b2: aa06         	add	r2, sp, #0x18
  2fe4b4: 4608         	mov	r0, r1
  2fe4b6: 4611         	mov	r1, r2
  2fe4b8: 4798         	blx	r3
  2fe4ba: b013         	add	sp, #0x4c
  2fe4bc: bd30         	pop	{r4, r5, pc}

// ==== Boostie::create
//      file offset 0x3f1a74 (= ELF address; Ghidra 0x401a74), 112 bytes, Thumb-2
  3f1a74: b510         	push	{r4, lr}
  3f1a76: b082         	sub	sp, #0x8
  3f1a78: f44f 7086    	mov.w	r0, #0x10c
  3f1a7c: f395 ff72    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x395ee4
  3f1a80: 4603         	mov	r3, r0
  3f1a82: 461c         	mov	r4, r3
  3f1a84: 4620         	mov	r0, r4
  3f1a86: f70c f8bd    	bl	0x2fdc04 <Boostie::Boostie()> @ imm = #-0xf3e86
  3f1a8a: 9401         	str	r4, [sp, #0x4]
  3f1a8c: 9b01         	ldr	r3, [sp, #0x4]
  3f1a8e: 2b00         	cmp	r3, #0x0
  3f1a90: d00a         	beq	0x3f1aa8 <Boostie::create()+0x34> @ imm = #0x14
  3f1a92: 9b01         	ldr	r3, [sp, #0x4]
  3f1a94: 681b         	ldr	r3, [r3]
  3f1a96: 3318         	adds	r3, #0x18
  3f1a98: 681b         	ldr	r3, [r3]
  3f1a9a: 9801         	ldr	r0, [sp, #0x4]
  3f1a9c: 4798         	blx	r3
  3f1a9e: 4603         	mov	r3, r0
  3f1aa0: 2b00         	cmp	r3, #0x0
  3f1aa2: d001         	beq	0x3f1aa8 <Boostie::create()+0x34> @ imm = #0x2
  3f1aa4: 2301         	movs	r3, #0x1
  3f1aa6: e000         	b	0x3f1aaa <Boostie::create()+0x36> @ imm = #0x0
  3f1aa8: 2300         	movs	r3, #0x0
  3f1aaa: 2b00         	cmp	r3, #0x0
  3f1aac: d005         	beq	0x3f1aba <Boostie::create()+0x46> @ imm = #0xa
  3f1aae: 9b01         	ldr	r3, [sp, #0x4]
  3f1ab0: 4618         	mov	r0, r3
  3f1ab2: f1a6 fa23    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1a6446
  3f1ab6: 9b01         	ldr	r3, [sp, #0x4]
  3f1ab8: e011         	b	0x3f1ade <Boostie::create()+0x6a> @ imm = #0x22
  3f1aba: 9b01         	ldr	r3, [sp, #0x4]
  3f1abc: 2b00         	cmp	r3, #0x0
  3f1abe: d005         	beq	0x3f1acc <Boostie::create()+0x58> @ imm = #0xa
  3f1ac0: 9b01         	ldr	r3, [sp, #0x4]
  3f1ac2: 681b         	ldr	r3, [r3]
  3f1ac4: 3308         	adds	r3, #0x8
  3f1ac6: 681b         	ldr	r3, [r3]
  3f1ac8: 9801         	ldr	r0, [sp, #0x4]
  3f1aca: 4798         	blx	r3
  3f1acc: 2300         	movs	r3, #0x0
  3f1ace: 9301         	str	r3, [sp, #0x4]
  3f1ad0: 2300         	movs	r3, #0x0
  3f1ad2: e004         	b	0x3f1ade <Boostie::create()+0x6a> @ imm = #0x8
  3f1ad4: 4620         	mov	r0, r4
  3f1ad6: f396 fae5    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3965ca
  3f1ada: f396 fae7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3965ce
  3f1ade: 4618         	mov	r0, r3
  3f1ae0: b002         	add	sp, #0x8
  3f1ae2: bd10         	pop	{r4, pc}
