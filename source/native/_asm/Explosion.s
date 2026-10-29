// Explosion: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 7 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Explosion.cpp

// ==== Explosion::Explosion
//      file offset 0x31cc14 (= ELF address; Ghidra 0x32cc14), 460 bytes, Thumb-2
  31cc14: b530         	push	{r4, r5, lr}
  31cc16: b085         	sub	sp, #0x14
  31cc18: 9001         	str	r0, [sp, #0x4]
  31cc1a: 4c6b         	ldr	r4, [pc, #0x1ac]        @ 0x31cdc8 <Explosion::Explosion()+0x1b4>
  31cc1c: 447c         	add	r4, pc
  31cc1e: 9b01         	ldr	r3, [sp, #0x4]
  31cc20: 4618         	mov	r0, r3
  31cc22: f272 fd09    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x272a12
  31cc26: 9b01         	ldr	r3, [sp, #0x4]
  31cc28: 4a68         	ldr	r2, [pc, #0x1a0]        @ 0x31cdcc <Explosion::Explosion()+0x1b8>
  31cc2a: 58a2         	ldr	r2, [r4, r2]
  31cc2c: 3208         	adds	r2, #0x8
  31cc2e: 601a         	str	r2, [r3]
  31cc30: 9b01         	ldr	r3, [sp, #0x4]
  31cc32: 33f0         	adds	r3, #0xf0
  31cc34: 4618         	mov	r0, r3
  31cc36: f098 f2bb    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x498576
  31cc3a: 4b65         	ldr	r3, [pc, #0x194]        @ 0x31cdd0 <Explosion::Explosion()+0x1bc>
  31cc3c: 447b         	add	r3, pc
  31cc3e: 4618         	mov	r0, r3
  31cc40: f2bb fb60    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2bb6c0
  31cc44: 4602         	mov	r2, r0
  31cc46: 9b01         	ldr	r3, [sp, #0x4]
  31cc48: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  31cc4c: 9b01         	ldr	r3, [sp, #0x4]
  31cc4e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31cc52: 4618         	mov	r0, r3
  31cc54: f27b f948    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27b290
  31cc58: 9a01         	ldr	r2, [sp, #0x4]
  31cc5a: 9b01         	ldr	r3, [sp, #0x4]
  31cc5c: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31cc60: 4610         	mov	r0, r2
  31cc62: 4619         	mov	r1, r3
  31cc64: f273 fc42    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x273884
  31cc68: 9b01         	ldr	r3, [sp, #0x4]
  31cc6a: 4618         	mov	r0, r3
  31cc6c: 2100         	movs	r1, #0x0
  31cc6e: f273 f90f    	bl	0x58fe90 <cocos2d::CCNode::setVisible(bool)> @ imm = #0x27321e
  31cc72: 9b01         	ldr	r3, [sp, #0x4]
  31cc74: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31cc78: 681b         	ldr	r3, [r3]
  31cc7a: f503 73de    	add.w	r3, r3, #0x1bc
  31cc7e: 681c         	ldr	r4, [r3]
  31cc80: 9b01         	ldr	r3, [sp, #0x4]
  31cc82: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  31cc86: 2050         	movs	r0, #0x50
  31cc88: 2150         	movs	r1, #0x50
  31cc8a: 2250         	movs	r2, #0x50
  31cc8c: f7fe ff2c    	bl	0x31bae8 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x380> @ imm = #-0x11a8
  31cc90: 4603         	mov	r3, r0
  31cc92: 461a         	mov	r2, r3
  31cc94: f88d 200c    	strb.w	r2, [sp, #0xc]
  31cc98: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  31cc9c: f88d 200d    	strb.w	r2, [sp, #0xd]
  31cca0: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  31cca4: f88d 300e    	strb.w	r3, [sp, #0xe]
  31cca8: ab03         	add	r3, sp, #0xc
  31ccaa: 4628         	mov	r0, r5
  31ccac: 4619         	mov	r1, r3
  31ccae: 47a0         	blx	r4
  31ccb0: 4b48         	ldr	r3, [pc, #0x120]        @ 0x31cdd4 <Explosion::Explosion()+0x1c0>
  31ccb2: 447b         	add	r3, pc
  31ccb4: 4618         	mov	r0, r3
  31ccb6: f2bb fb25    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2bb64a
  31ccba: 4602         	mov	r2, r0
  31ccbc: 9b01         	ldr	r3, [sp, #0x4]
  31ccbe: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  31ccc2: 9b01         	ldr	r3, [sp, #0x4]
  31ccc4: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ccc8: 4618         	mov	r0, r3
  31ccca: f27b f90d    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x27b21a
  31ccce: 9a01         	ldr	r2, [sp, #0x4]
  31ccd0: 9b01         	ldr	r3, [sp, #0x4]
  31ccd2: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ccd6: 4610         	mov	r0, r2
  31ccd8: 4619         	mov	r1, r3
  31ccda: f273 fc07    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x27380e
  31ccde: 9b01         	ldr	r3, [sp, #0x4]
  31cce0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31cce4: 681b         	ldr	r3, [r3]
  31cce6: 3390         	adds	r3, #0x90
  31cce8: 681b         	ldr	r3, [r3]
  31ccea: 9a01         	ldr	r2, [sp, #0x4]
  31ccec: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31ccf0: 4610         	mov	r0, r2
  31ccf2: 2100         	movs	r1, #0x0
  31ccf4: 4798         	blx	r3
  31ccf6: 4b38         	ldr	r3, [pc, #0xe0]         @ 0x31cdd8 <Explosion::Explosion()+0x1c4>
  31ccf8: 447b         	add	r3, pc
  31ccfa: 4618         	mov	r0, r3
  31ccfc: f2a8 f90e    	bl	0x5c4f1c <cocos2d::CCParticleSystemQuad::create(char const*)> @ imm = #0x2a821c
  31cd00: 4602         	mov	r2, r0
  31cd02: 9b01         	ldr	r3, [sp, #0x4]
  31cd04: f8c3 20ec    	str.w	r2, [r3, #0xec]
  31cd08: 9b01         	ldr	r3, [sp, #0x4]
  31cd0a: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31cd0e: 681b         	ldr	r3, [r3]
  31cd10: f503 733c    	add.w	r3, r3, #0x2f0
  31cd14: 681b         	ldr	r3, [r3]
  31cd16: 9a01         	ldr	r2, [sp, #0x4]
  31cd18: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  31cd1c: 4610         	mov	r0, r2
  31cd1e: 2102         	movs	r1, #0x2
  31cd20: 4798         	blx	r3
  31cd22: 9a01         	ldr	r2, [sp, #0x4]
  31cd24: 9b01         	ldr	r3, [sp, #0x4]
  31cd26: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31cd2a: 4610         	mov	r0, r2
  31cd2c: 4619         	mov	r1, r3
  31cd2e: f273 fbdd    	bl	0x5904ec <cocos2d::CCNode::addChild(cocos2d::CCNode*)> @ imm = #0x2737ba
  31cd32: 9b01         	ldr	r3, [sp, #0x4]
  31cd34: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31cd38: 681b         	ldr	r3, [r3]
  31cd3a: f503 732a    	add.w	r3, r3, #0x2a8
  31cd3e: 681b         	ldr	r3, [r3]
  31cd40: 9a01         	ldr	r2, [sp, #0x4]
  31cd42: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  31cd46: 4610         	mov	r0, r2
  31cd48: f04f 0100    	mov.w	r1, #0x0
  31cd4c: 4798         	blx	r3
  31cd4e: 9b01         	ldr	r3, [sp, #0x4]
  31cd50: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31cd54: 681b         	ldr	r3, [r3]
  31cd56: f503 732e    	add.w	r3, r3, #0x2b8
  31cd5a: 681b         	ldr	r3, [r3]
  31cd5c: 9a01         	ldr	r2, [sp, #0x4]
  31cd5e: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  31cd62: 4610         	mov	r0, r2
  31cd64: f04f 0100    	mov.w	r1, #0x0
  31cd68: f2c4 31b4    	movt	r1, #0x43b4
  31cd6c: 4798         	blx	r3
  31cd6e: 9b01         	ldr	r3, [sp, #0x4]
  31cd70: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31cd74: 681b         	ldr	r3, [r3]
  31cd76: f503 7332    	add.w	r3, r3, #0x2c8
  31cd7a: 681b         	ldr	r3, [r3]
  31cd7c: 9a01         	ldr	r2, [sp, #0x4]
  31cd7e: f8d2 20ec    	ldr.w	r2, [r2, #0xec]
  31cd82: 4610         	mov	r0, r2
  31cd84: f44f 4180    	mov.w	r1, #0x4000
  31cd88: f2c4 611c    	movt	r1, #0x461c
  31cd8c: 4798         	blx	r3
  31cd8e: 9b01         	ldr	r3, [sp, #0x4]
  31cd90: 33f0         	adds	r3, #0xf0
  31cd92: 4618         	mov	r0, r3
  31cd94: 4b11         	ldr	r3, [pc, #0x44]         @ 0x31cddc <Explosion::Explosion()+0x1c8>
  31cd96: 447b         	add	r3, pc
  31cd98: 4619         	mov	r1, r3
  31cd9a: f099 f069    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4990d2
  31cd9e: 9b01         	ldr	r3, [sp, #0x4]
  31cda0: 2200         	movs	r2, #0x0
  31cda2: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  31cda6: 9b01         	ldr	r3, [sp, #0x4]
  31cda8: e00b         	b	0x31cdc2 <Explosion::Explosion()+0x1ae> @ imm = #0x16
  31cdaa: 9b01         	ldr	r3, [sp, #0x4]
  31cdac: 33f0         	adds	r3, #0xf0
  31cdae: 4618         	mov	r0, r3
  31cdb0: f098 f5b0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x498b60
  31cdb4: e7ff         	b	0x31cdb6 <Explosion::Explosion()+0x1a2> @ imm = #-0x2
  31cdb6: 9b01         	ldr	r3, [sp, #0x4]
  31cdb8: 4618         	mov	r0, r3
  31cdba: f272 fd43    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x272a86
  31cdbe: f06b f175    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46b2ea
  31cdc2: 4618         	mov	r0, r3
  31cdc4: b005         	add	sp, #0x14
  31cdc6: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31cdc7); words below are literal-pool data ---
  31cdc8: 5dec         	ldrb	r4, [r5, r7]
  31cdca: 0061         	lsls	r1, r4, #0x1
  31cdcc: da20         	bge	0x31ce10 <Explosion::~Explosion()+0x30> @ imm = #0x40
  31cdce: ffff a668    	<unknown>
  31cdd2: 004a         	lsls	r2, r1, #0x1
  31cdd4: a5fe         	adr	r5, #1016 <Explosion::reset(cpVect, std::string, int)+0x7e>
  31cdd6: 004a         	lsls	r2, r1, #0x1
  31cdd8: a5c8         	adr	r5, #800 <Explosion::reset(cpVect, std::string, int)+0x4c>
  31cdda: 004a         	lsls	r2, r1, #0x1
  31cddc: a53a         	adr	r5, #232 <Explosion::~Explosion()+0x3a>
  31cdde: 004a         	lsls	r2, r1, #0x1

// ==== Explosion::~Explosion
//      file offset 0x31cde0 (= ELF address; Ghidra 0x32cde0), 92 bytes, Thumb-2
  31cde0: b500         	push	{lr}
  31cde2: b083         	sub	sp, #0xc
  31cde4: 9001         	str	r0, [sp, #0x4]
  31cde6: 4913         	ldr	r1, [pc, #0x4c]         @ 0x31ce34 <Explosion::~Explosion()+0x54>
  31cde8: 4479         	add	r1, pc
  31cdea: 9b01         	ldr	r3, [sp, #0x4]
  31cdec: 4a12         	ldr	r2, [pc, #0x48]         @ 0x31ce38 <Explosion::~Explosion()+0x58>
  31cdee: 588a         	ldr	r2, [r1, r2]
  31cdf0: 3208         	adds	r2, #0x8
  31cdf2: 601a         	str	r2, [r3]
  31cdf4: 9b01         	ldr	r3, [sp, #0x4]
  31cdf6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31cdfa: 4618         	mov	r0, r3
  31cdfc: f27b f85c    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27b0b8
  31ce00: 9b01         	ldr	r3, [sp, #0x4]
  31ce02: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31ce06: 4618         	mov	r0, r3
  31ce08: f27b f856    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x27b0ac
  31ce0c: 9b01         	ldr	r3, [sp, #0x4]
  31ce0e: 33f0         	adds	r3, #0xf0
  31ce10: 4618         	mov	r0, r3
  31ce12: f098 f57f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x498afe
  31ce16: 9b01         	ldr	r3, [sp, #0x4]
  31ce18: 4618         	mov	r0, r3
  31ce1a: f272 fd13    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x272a26
  31ce1e: 2300         	movs	r3, #0x0
  31ce20: 2b00         	cmp	r3, #0x0
  31ce22: d002         	beq	0x31ce2a <Explosion::~Explosion()+0x4a> @ imm = #0x4
  31ce24: 9801         	ldr	r0, [sp, #0x4]
  31ce26: f06b f13d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46b27a
  31ce2a: 9b01         	ldr	r3, [sp, #0x4]
  31ce2c: 4618         	mov	r0, r3
  31ce2e: b003         	add	sp, #0xc
  31ce30: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x31ce33); words below are literal-pool data ---
  31ce34: 5c20         	ldrb	r0, [r4, r0]
  31ce36: 0061         	lsls	r1, r4, #0x1
  31ce38: da20         	bge	0x31ce7c <Explosion::reset(cpVect, std::string, int)+0x24> @ imm = #0x40
  31ce3a: ffff b500    	<unknown>

// ==== Explosion::~Explosion
//      file offset 0x31ce3c (= ELF address; Ghidra 0x32ce3c), 28 bytes, Thumb-2
  31ce3c: b500         	push	{lr}
  31ce3e: b083         	sub	sp, #0xc
  31ce40: 9001         	str	r0, [sp, #0x4]
  31ce42: 9801         	ldr	r0, [sp, #0x4]
  31ce44: f7ff ffcc    	bl	0x31cde0 <Explosion::~Explosion()> @ imm = #-0x68
  31ce48: 9801         	ldr	r0, [sp, #0x4]
  31ce4a: f06b f12b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x46b256
  31ce4e: 9b01         	ldr	r3, [sp, #0x4]
  31ce50: 4618         	mov	r0, r3
  31ce52: b003         	add	sp, #0xc
  31ce54: f85d fb04    	ldr	pc, [sp], #4

// ==== Explosion::reset
//      file offset 0x31ce58 (= ELF address; Ghidra 0x32ce58), 312 bytes, Thumb-2
  31ce58: b082         	sub	sp, #0x8
  31ce5a: b530         	push	{r4, r5, lr}
  31ce5c: b085         	sub	sp, #0x14
  31ce5e: 9001         	str	r0, [sp, #0x4]
  31ce60: a908         	add	r1, sp, #0x20
  31ce62: e881 000c    	stm.w	r1, {r2, r3}
  31ce66: 9b01         	ldr	r3, [sp, #0x4]
  31ce68: f04f 0200    	mov.w	r2, #0x0
  31ce6c: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  31ce70: 9b01         	ldr	r3, [sp, #0x4]
  31ce72: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31ce76: 681b         	ldr	r3, [r3]
  31ce78: 3340         	adds	r3, #0x40
  31ce7a: 681b         	ldr	r3, [r3]
  31ce7c: 9a01         	ldr	r2, [sp, #0x4]
  31ce7e: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31ce82: 4610         	mov	r0, r2
  31ce84: f24d 710a    	movw	r1, #0xd70a
  31ce88: f6c3 4123    	movt	r1, #0x3c23
  31ce8c: 4798         	blx	r3
  31ce8e: 9b01         	ldr	r3, [sp, #0x4]
  31ce90: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31ce94: 681b         	ldr	r3, [r3]
  31ce96: 3340         	adds	r3, #0x40
  31ce98: 681b         	ldr	r3, [r3]
  31ce9a: 9a01         	ldr	r2, [sp, #0x4]
  31ce9c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31cea0: 4610         	mov	r0, r2
  31cea2: f04f 0100    	mov.w	r1, #0x0
  31cea6: 4798         	blx	r3
  31cea8: 9b01         	ldr	r3, [sp, #0x4]
  31ceaa: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31ceae: 681b         	ldr	r3, [r3]
  31ceb0: f503 73d2    	add.w	r3, r3, #0x1a4
  31ceb4: 681b         	ldr	r3, [r3]
  31ceb6: 9a01         	ldr	r2, [sp, #0x4]
  31ceb8: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31cebc: 4610         	mov	r0, r2
  31cebe: 21ff         	movs	r1, #0xff
  31cec0: 4798         	blx	r3
  31cec2: 9b01         	ldr	r3, [sp, #0x4]
  31cec4: 681b         	ldr	r3, [r3]
  31cec6: 334c         	adds	r3, #0x4c
  31cec8: 681c         	ldr	r4, [r3]
  31ceca: 9d01         	ldr	r5, [sp, #0x4]
  31cecc: ed9d 7b08    	vldr	d7, [sp, #32]
  31ced0: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31ced4: ed9d 7b0a    	vldr	d7, [sp, #40]
  31ced8: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31cedc: ab02         	add	r3, sp, #0x8
  31cede: 4618         	mov	r0, r3
  31cee0: ee16 1a90    	vmov	r1, s13
  31cee4: ee17 2a90    	vmov	r2, s15
  31cee8: f275 ff02    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x275e04
  31ceec: ab02         	add	r3, sp, #0x8
  31ceee: 4628         	mov	r0, r5
  31cef0: 4619         	mov	r1, r3
  31cef2: 47a0         	blx	r4
  31cef4: 9b01         	ldr	r3, [sp, #0x4]
  31cef6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31cefa: 681b         	ldr	r3, [r3]
  31cefc: 3390         	adds	r3, #0x90
  31cefe: 681b         	ldr	r3, [r3]
  31cf00: 9a01         	ldr	r2, [sp, #0x4]
  31cf02: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31cf06: 4610         	mov	r0, r2
  31cf08: 2101         	movs	r1, #0x1
  31cf0a: 4798         	blx	r3
  31cf0c: 9b01         	ldr	r3, [sp, #0x4]
  31cf0e: f8d3 30ec    	ldr.w	r3, [r3, #0xec]
  31cf12: 4618         	mov	r0, r3
  31cf14: f2a5 fe66    	bl	0x5c2be4 <cocos2d::CCParticleSystem::resetSystem()> @ imm = #0x2a5ccc
  31cf18: 9b01         	ldr	r3, [sp, #0x4]
  31cf1a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31cf1e: 681b         	ldr	r3, [r3]
  31cf20: 3398         	adds	r3, #0x98
  31cf22: 681c         	ldr	r4, [r3]
  31cf24: 9b01         	ldr	r3, [sp, #0x4]
  31cf26: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  31cf2a: f7fe fdd7    	bl	0x31badc <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x374> @ imm = #-0x1452
  31cf2e: 4603         	mov	r3, r0
  31cf30: ee07 3a90    	vmov	s15, r3
  31cf34: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  31cf38: eddf 7a13    	vldr	s15, [pc, #76]          @ 0x31cf88 <Explosion::reset(cpVect, std::string, int)+0x130>
  31cf3c: ee87 7a27    	vdiv.f32	s14, s14, s15
  31cf40: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  31cf44: ee37 7a67    	vsub.f32	s14, s14, s15
  31cf48: eddf 7a10    	vldr	s15, [pc, #64]          @ 0x31cf8c <Explosion::reset(cpVect, std::string, int)+0x134>
  31cf4c: ee67 7a27    	vmul.f32	s15, s14, s15
  31cf50: 4628         	mov	r0, r5
  31cf52: ee17 1a90    	vmov	r1, s15
  31cf56: 47a0         	blx	r4
  31cf58: 9b01         	ldr	r3, [sp, #0x4]
  31cf5a: 681b         	ldr	r3, [r3]
  31cf5c: 3390         	adds	r3, #0x90
  31cf5e: 681b         	ldr	r3, [r3]
  31cf60: 9a01         	ldr	r2, [sp, #0x4]
  31cf62: 4610         	mov	r0, r2
  31cf64: 2101         	movs	r1, #0x1
  31cf66: 4798         	blx	r3
  31cf68: 9b01         	ldr	r3, [sp, #0x4]
  31cf6a: 33f0         	adds	r3, #0xf0
  31cf6c: 4618         	mov	r0, r3
  31cf6e: 990c         	ldr	r1, [sp, #0x30]
  31cf70: f099 f320    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x499640
  31cf74: 9b01         	ldr	r3, [sp, #0x4]
  31cf76: 9a0d         	ldr	r2, [sp, #0x34]
  31cf78: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  31cf7c: b005         	add	sp, #0x14
  31cf7e: e8bd 4030    	pop.w	{r4, r5, lr}
  31cf82: b002         	add	sp, #0x8
  31cf84: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x31cf85); words below are literal-pool data ---
  31cf86: bf00         	nop
  31cf88: 0000         	movs	r0, r0
  31cf8a: 4e80         	ldr	r6, [pc, #0x200]        @ 0x31d18c <Explosion::applyDamage(float)+0x174>
  31cf8c: 0000         	movs	r0, r0
  31cf8e: 4334         	orrs	r4, r6

// ==== Explosion::checkCollision
//      file offset 0x31cf90 (= ELF address; Ghidra 0x32cf90), 136 bytes, Thumb-2
  31cf90: b082         	sub	sp, #0x8
  31cf92: b510         	push	{r4, lr}
  31cf94: b088         	sub	sp, #0x20
  31cf96: 9001         	str	r0, [sp, #0x4]
  31cf98: a90a         	add	r1, sp, #0x28
  31cf9a: e881 000c    	stm.w	r1, {r2, r3}
  31cf9e: 9b01         	ldr	r3, [sp, #0x4]
  31cfa0: 681b         	ldr	r3, [r3]
  31cfa2: 3350         	adds	r3, #0x50
  31cfa4: 681b         	ldr	r3, [r3]
  31cfa6: 9a01         	ldr	r2, [sp, #0x4]
  31cfa8: 4610         	mov	r0, r2
  31cfaa: 4798         	blx	r3
  31cfac: 4604         	mov	r4, r0
  31cfae: ed9d 7b0a    	vldr	d7, [sp, #40]
  31cfb2: eef7 6bc7    	vcvt.f32.f64	s13, d7
  31cfb6: ed9d 7b0c    	vldr	d7, [sp, #48]
  31cfba: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31cfbe: ab04         	add	r3, sp, #0x10
  31cfc0: 4618         	mov	r0, r3
  31cfc2: ee16 1a90    	vmov	r1, s13
  31cfc6: ee17 2a90    	vmov	r2, s15
  31cfca: f275 fe91    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x275d22
  31cfce: aa06         	add	r2, sp, #0x18
  31cfd0: ab04         	add	r3, sp, #0x10
  31cfd2: 4610         	mov	r0, r2
  31cfd4: 4621         	mov	r1, r4
  31cfd6: 461a         	mov	r2, r3
  31cfd8: f7fe fdb4    	bl	0x31bb44 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3dc> @ imm = #-0x1498
  31cfdc: ab06         	add	r3, sp, #0x18
  31cfde: 4618         	mov	r0, r3
  31cfe0: f2c4 fba6    	bl	0x5e1730 <cocos2d::ccpLength(cocos2d::CCPoint const&)> @ imm = #0x2c474c
  31cfe4: ee07 0a90    	vmov	s15, r0
  31cfe8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31cfec: ed8d 7b02    	vstr	d7, [sp, #8]
  31cff0: eddd 7a0e    	vldr	s15, [sp, #56]
  31cff4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31cff8: ed9d 7b02    	vldr	d7, [sp, #8]
  31cffc: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d000: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d004: dd01         	ble	0x31d00a <Explosion::checkCollision(cpVect, float)+0x7a> @ imm = #0x2
  31d006: 2301         	movs	r3, #0x1
  31d008: e000         	b	0x31d00c <Explosion::checkCollision(cpVect, float)+0x7c> @ imm = #0x0
  31d00a: 2300         	movs	r3, #0x0
  31d00c: 4618         	mov	r0, r3
  31d00e: b008         	add	sp, #0x20
  31d010: e8bd 4010    	pop.w	{r4, lr}
  31d014: b002         	add	sp, #0x8
  31d016: 4770         	bx	lr

// ==== Explosion::applyDamage
//      file offset 0x31d018 (= ELF address; Ghidra 0x32d018), 2016 bytes, Thumb-2
  31d018: b570         	push	{r4, r5, r6, lr}
  31d01a: ed2d 8b02    	vpush	{d8}
  31d01e: b0ce         	sub	sp, #0x138
  31d020: ab0b         	add	r3, sp, #0x2c
  31d022: 6018         	str	r0, [r3]
  31d024: ab0a         	add	r3, sp, #0x28
  31d026: 6019         	str	r1, [r3]
  31d028: 4ce3         	ldr	r4, [pc, #0x38c]        @ 0x31d3b8 <Explosion::applyDamage(float)+0x3a0>
  31d02a: 447c         	add	r4, pc
  31d02c: ab0b         	add	r3, sp, #0x2c
  31d02e: 681b         	ldr	r3, [r3]
  31d030: 681b         	ldr	r3, [r3]
  31d032: 3350         	adds	r3, #0x50
  31d034: 681b         	ldr	r3, [r3]
  31d036: aa0b         	add	r2, sp, #0x2c
  31d038: 6812         	ldr	r2, [r2]
  31d03a: 4610         	mov	r0, r2
  31d03c: 4798         	blx	r3
  31d03e: 4603         	mov	r3, r0
  31d040: edd3 7a00    	vldr	s15, [r3]
  31d044: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31d048: ab0b         	add	r3, sp, #0x2c
  31d04a: 681b         	ldr	r3, [r3]
  31d04c: 681b         	ldr	r3, [r3]
  31d04e: 3350         	adds	r3, #0x50
  31d050: 681b         	ldr	r3, [r3]
  31d052: aa0b         	add	r2, sp, #0x2c
  31d054: 6812         	ldr	r2, [r2]
  31d056: 4610         	mov	r0, r2
  31d058: 4798         	blx	r3
  31d05a: 4603         	mov	r3, r0
  31d05c: edd3 7a01    	vldr	s15, [r3, #4]
  31d060: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31d064: ab22         	add	r3, sp, #0x88
  31d066: 4618         	mov	r0, r3
  31d068: eeb0 0b48    	vmov.f64	d0, d8
  31d06c: eeb0 1b47    	vmov.f64	d1, d7
  31d070: f7fe fd78    	bl	0x31bb64 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3fc> @ imm = #-0x1510
  31d074: 4bd1         	ldr	r3, [pc, #0x344]        @ 0x31d3bc <Explosion::applyDamage(float)+0x3a4>
  31d076: 58e3         	ldr	r3, [r4, r3]
  31d078: 681b         	ldr	r3, [r3]
  31d07a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  31d07e: aa26         	add	r2, sp, #0x98
  31d080: ed9d 4b22    	vldr	d4, [sp, #136]
  31d084: ed9d 5b24    	vldr	d5, [sp, #144]
  31d088: ed93 6b0a    	vldr	d6, [r3, #40]
  31d08c: ed93 7b0c    	vldr	d7, [r3, #48]
  31d090: 4610         	mov	r0, r2
  31d092: eeb0 0b44    	vmov.f64	d0, d4
  31d096: eeb0 1b45    	vmov.f64	d1, d5
  31d09a: eeb0 2b46    	vmov.f64	d2, d6
  31d09e: eeb0 3b47    	vmov.f64	d3, d7
  31d0a2: f7fe fd9f    	bl	0x31bbe4 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x47c> @ imm = #-0x14c2
  31d0a6: ab26         	add	r3, sp, #0x98
  31d0a8: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31d0aa: f3ba f805    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3ba00a
  31d0ae: 4602         	mov	r2, r0
  31d0b0: 460b         	mov	r3, r1
  31d0b2: e9cd 2310    	strd	r2, r3, [sp, #64]
  31d0b6: ab0b         	add	r3, sp, #0x2c
  31d0b8: 681b         	ldr	r3, [r3]
  31d0ba: 681b         	ldr	r3, [r3]
  31d0bc: 3344         	adds	r3, #0x44
  31d0be: 681b         	ldr	r3, [r3]
  31d0c0: aa0b         	add	r2, sp, #0x2c
  31d0c2: 6812         	ldr	r2, [r2]
  31d0c4: 4610         	mov	r0, r2
  31d0c6: 4798         	blx	r3
  31d0c8: ee07 0a10    	vmov	s14, r0
  31d0cc: eddf 7ab8    	vldr	s15, [pc, #736]         @ 0x31d3b0 <Explosion::applyDamage(float)+0x398>
  31d0d0: ee67 7a27    	vmul.f32	s15, s14, s15
  31d0d4: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d0d8: ed9d 7b10    	vldr	d7, [sp, #64]
  31d0dc: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d0e0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d0e4: bfd4         	ite	le
  31d0e6: 2300         	movle	r3, #0x0
  31d0e8: 2301         	movgt	r3, #0x1
  31d0ea: b2db         	uxtb	r3, r3
  31d0ec: 2b00         	cmp	r3, #0x0
  31d0ee: d033         	beq	0x31d158 <Explosion::applyDamage(float)+0x140> @ imm = #0x66
  31d0f0: ed9f 6ba9    	vldr	d6, [pc, #676]          @ 0x31d398 <Explosion::applyDamage(float)+0x380>
  31d0f4: ed9d 7b10    	vldr	d7, [sp, #64]
  31d0f8: ee36 6b47    	vsub.f64	d6, d6, d7
  31d0fc: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  31d100: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d104: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d108: d501         	bpl	0x31d10e <Explosion::applyDamage(float)+0xf6> @ imm = #0x2
  31d10a: 2201         	movs	r2, #0x1
  31d10c: e00d         	b	0x31d12a <Explosion::applyDamage(float)+0x112> @ imm = #0x1a
  31d10e: ed9f 6ba2    	vldr	d6, [pc, #648]          @ 0x31d398 <Explosion::applyDamage(float)+0x380>
  31d112: ed9d 7b10    	vldr	d7, [sp, #64]
  31d116: ee36 6b47    	vsub.f64	d6, d6, d7
  31d11a: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  31d11e: ee86 7b07    	vdiv.f64	d7, d6, d7
  31d122: eefd 6bc7    	vcvt.s32.f64	s13, d7
  31d126: ee16 2a90    	vmov	r2, s13
  31d12a: ab0e         	add	r3, sp, #0x38
  31d12c: 601a         	str	r2, [r3]
  31d12e: f2c3 fabf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2c357e
  31d132: 4605         	mov	r5, r0
  31d134: ab0e         	add	r3, sp, #0x38
  31d136: 681b         	ldr	r3, [r3]
  31d138: ee07 3a10    	vmov	s14, r3
  31d13c: eef8 7ac7    	vcvt.f32.s32	s15, s14
  31d140: ee17 0a90    	vmov	r0, s15
  31d144: f7bf fd9e    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x404c4
  31d148: 4603         	mov	r3, r0
  31d14a: 4628         	mov	r0, r5
  31d14c: 4a9c         	ldr	r2, [pc, #0x270]        @ 0x31d3c0 <Explosion::applyDamage(float)+0x3a8>
  31d14e: 447a         	add	r2, pc
  31d150: 4611         	mov	r1, r2
  31d152: 461a         	mov	r2, r3
  31d154: f2c3 fcea    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2c39d4
  31d158: ab0b         	add	r3, sp, #0x2c
  31d15a: 681b         	ldr	r3, [r3]
  31d15c: 681b         	ldr	r3, [r3]
  31d15e: 3344         	adds	r3, #0x44
  31d160: 681b         	ldr	r3, [r3]
  31d162: aa0b         	add	r2, sp, #0x2c
  31d164: 6812         	ldr	r2, [r2]
  31d166: 4610         	mov	r0, r2
  31d168: 4798         	blx	r3
  31d16a: ee07 0a10    	vmov	s14, r0
  31d16e: eddf 7a91    	vldr	s15, [pc, #580]         @ 0x31d3b4 <Explosion::applyDamage(float)+0x39c>
  31d172: ee67 7a27    	vmul.f32	s15, s14, s15
  31d176: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d17a: ed9d 7b10    	vldr	d7, [sp, #64]
  31d17e: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d182: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d186: bfd4         	ite	le
  31d188: 2300         	movle	r3, #0x0
  31d18a: 2301         	movgt	r3, #0x1
  31d18c: b2db         	uxtb	r3, r3
  31d18e: 2b00         	cmp	r3, #0x0
  31d190: f000 831d    	beq.w	0x31d7ce <Explosion::applyDamage(float)+0x7b6> @ imm = #0x63a
  31d194: 4b89         	ldr	r3, [pc, #0x224]        @ 0x31d3bc <Explosion::applyDamage(float)+0x3a4>
  31d196: 58e3         	ldr	r3, [r4, r3]
  31d198: 681b         	ldr	r3, [r3]
  31d19a: 681b         	ldr	r3, [r3]
  31d19c: f503 7316    	add.w	r3, r3, #0x258
  31d1a0: 681d         	ldr	r5, [r3]
  31d1a2: 4b86         	ldr	r3, [pc, #0x218]        @ 0x31d3bc <Explosion::applyDamage(float)+0x3a4>
  31d1a4: 58e3         	ldr	r3, [r4, r3]
  31d1a6: 681b         	ldr	r3, [r3]
  31d1a8: 461e         	mov	r6, r3
  31d1aa: ed9d 6b10    	vldr	d6, [sp, #64]
  31d1ae: ed9f 7b7c    	vldr	d7, [pc, #496]          @ 0x31d3a0 <Explosion::applyDamage(float)+0x388>
  31d1b2: ee26 6b07    	vmul.f64	d6, d6, d7
  31d1b6: ed9f 7b7c    	vldr	d7, [pc, #496]          @ 0x31d3a8 <Explosion::applyDamage(float)+0x390>
  31d1ba: ee36 6b07    	vadd.f64	d6, d6, d7
  31d1be: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  31d1c2: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d1c6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d1ca: d502         	bpl	0x31d1d2 <Explosion::applyDamage(float)+0x1ba> @ imm = #0x4
  31d1cc: eeb2 8a04    	vmov.f32	s16, #1.000000e+01
  31d1d0: e00b         	b	0x31d1ea <Explosion::applyDamage(float)+0x1d2> @ imm = #0x16
  31d1d2: ed9d 6b10    	vldr	d6, [sp, #64]
  31d1d6: ed9f 7b72    	vldr	d7, [pc, #456]          @ 0x31d3a0 <Explosion::applyDamage(float)+0x388>
  31d1da: ee26 6b07    	vmul.f64	d6, d6, d7
  31d1de: ed9f 7b72    	vldr	d7, [pc, #456]          @ 0x31d3a8 <Explosion::applyDamage(float)+0x390>
  31d1e2: ee36 7b07    	vadd.f64	d7, d6, d7
  31d1e6: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  31d1ea: ab0b         	add	r3, sp, #0x2c
  31d1ec: 681b         	ldr	r3, [r3]
  31d1ee: 33f0         	adds	r3, #0xf0
  31d1f0: aa46         	add	r2, sp, #0x118
  31d1f2: 4610         	mov	r0, r2
  31d1f4: 4619         	mov	r1, r3
  31d1f6: f099 f177    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4992ee
  31d1fa: ab0b         	add	r3, sp, #0x2c
  31d1fc: 681b         	ldr	r3, [r3]
  31d1fe: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  31d202: aa46         	add	r2, sp, #0x118
  31d204: 2101         	movs	r1, #0x1
  31d206: 9100         	str	r1, [sp]
  31d208: 4630         	mov	r0, r6
  31d20a: ee18 1a10    	vmov	r1, s16
  31d20e: 47a8         	blx	r5
  31d210: ab46         	add	r3, sp, #0x118
  31d212: 4618         	mov	r0, r3
  31d214: f098 f37e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4986fc
  31d218: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x31d3bc <Explosion::applyDamage(float)+0x3a4>
  31d21a: 58e3         	ldr	r3, [r4, r3]
  31d21c: 681b         	ldr	r3, [r3]
  31d21e: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  31d222: ab0b         	add	r3, sp, #0x2c
  31d224: 681b         	ldr	r3, [r3]
  31d226: 681b         	ldr	r3, [r3]
  31d228: 3350         	adds	r3, #0x50
  31d22a: 681b         	ldr	r3, [r3]
  31d22c: aa0b         	add	r2, sp, #0x2c
  31d22e: 6812         	ldr	r2, [r2]
  31d230: 4610         	mov	r0, r2
  31d232: 4798         	blx	r3
  31d234: 4603         	mov	r3, r0
  31d236: edd3 7a00    	vldr	s15, [r3]
  31d23a: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31d23e: ab0b         	add	r3, sp, #0x2c
  31d240: 681b         	ldr	r3, [r3]
  31d242: 681b         	ldr	r3, [r3]
  31d244: 3350         	adds	r3, #0x50
  31d246: 681b         	ldr	r3, [r3]
  31d248: aa0b         	add	r2, sp, #0x2c
  31d24a: 6812         	ldr	r2, [r2]
  31d24c: 4610         	mov	r0, r2
  31d24e: 4798         	blx	r3
  31d250: 4603         	mov	r3, r0
  31d252: edd3 7a01    	vldr	s15, [r3, #4]
  31d256: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31d25a: ab2a         	add	r3, sp, #0xa8
  31d25c: 4618         	mov	r0, r3
  31d25e: eeb0 0b48    	vmov.f64	d0, d8
  31d262: eeb0 1b47    	vmov.f64	d1, d7
  31d266: f7fe fc7d    	bl	0x31bb64 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3fc> @ imm = #-0x1706
  31d26a: ab1a         	add	r3, sp, #0x68
  31d26c: ed95 4b0a    	vldr	d4, [r5, #40]
  31d270: ed95 5b0c    	vldr	d5, [r5, #48]
  31d274: ed9d 6b2a    	vldr	d6, [sp, #168]
  31d278: ed9d 7b2c    	vldr	d7, [sp, #176]
  31d27c: 4618         	mov	r0, r3
  31d27e: eeb0 0b44    	vmov.f64	d0, d4
  31d282: eeb0 1b45    	vmov.f64	d1, d5
  31d286: eeb0 2b46    	vmov.f64	d2, d6
  31d28a: eeb0 3b47    	vmov.f64	d3, d7
  31d28e: f7fe fca9    	bl	0x31bbe4 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x47c> @ imm = #-0x16ae
  31d292: ab1e         	add	r3, sp, #0x78
  31d294: ed9d 6b1a    	vldr	d6, [sp, #104]
  31d298: ed9d 7b1c    	vldr	d7, [sp, #112]
  31d29c: 4618         	mov	r0, r3
  31d29e: eeb0 0b46    	vmov.f64	d0, d6
  31d2a2: eeb0 1b47    	vmov.f64	d1, d7
  31d2a6: f7fe fd13    	bl	0x31bcd0 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x568> @ imm = #-0x15da
  31d2aa: f10d 0337    	add.w	r3, sp, #0x37
  31d2ae: 2200         	movs	r2, #0x0
  31d2b0: 701a         	strb	r2, [r3]
  31d2b2: 4b42         	ldr	r3, [pc, #0x108]        @ 0x31d3bc <Explosion::applyDamage(float)+0x3a4>
  31d2b4: 58e3         	ldr	r3, [r4, r3]
  31d2b6: 681b         	ldr	r3, [r3]
  31d2b8: f8d3 513c    	ldr.w	r5, [r3, #0x13c]
  31d2bc: ab0b         	add	r3, sp, #0x2c
  31d2be: 681b         	ldr	r3, [r3]
  31d2c0: 681b         	ldr	r3, [r3]
  31d2c2: 3350         	adds	r3, #0x50
  31d2c4: 681b         	ldr	r3, [r3]
  31d2c6: aa0b         	add	r2, sp, #0x2c
  31d2c8: 6812         	ldr	r2, [r2]
  31d2ca: 4610         	mov	r0, r2
  31d2cc: 4798         	blx	r3
  31d2ce: 4603         	mov	r3, r0
  31d2d0: edd3 7a00    	vldr	s15, [r3]
  31d2d4: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31d2d8: ab0b         	add	r3, sp, #0x2c
  31d2da: 681b         	ldr	r3, [r3]
  31d2dc: 681b         	ldr	r3, [r3]
  31d2de: 3350         	adds	r3, #0x50
  31d2e0: 681b         	ldr	r3, [r3]
  31d2e2: aa0b         	add	r2, sp, #0x2c
  31d2e4: 6812         	ldr	r2, [r2]
  31d2e6: 4610         	mov	r0, r2
  31d2e8: 4798         	blx	r3
  31d2ea: 4603         	mov	r3, r0
  31d2ec: edd3 7a01    	vldr	s15, [r3, #4]
  31d2f0: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31d2f4: ab2e         	add	r3, sp, #0xb8
  31d2f6: 4618         	mov	r0, r3
  31d2f8: eeb0 0b48    	vmov.f64	d0, d8
  31d2fc: eeb0 1b47    	vmov.f64	d1, d7
  31d300: f7fe fc30    	bl	0x31bb64 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3fc> @ imm = #-0x17a0
  31d304: 466b         	mov	r3, sp
  31d306: aa30         	add	r2, sp, #0xc0
  31d308: e892 0003    	ldm.w	r2, {r0, r1}
  31d30c: e883 0003    	stm.w	r3, {r0, r1}
  31d310: ab2e         	add	r3, sp, #0xb8
  31d312: cb0c         	ldm	r3, {r2, r3}
  31d314: 4628         	mov	r0, r5
  31d316: f3b7 fea2    	bl	0x6d505e <cpShapePointQuery> @ imm = #0x3b7d44
  31d31a: 4603         	mov	r3, r0
  31d31c: 2b00         	cmp	r3, #0x0
  31d31e: d136         	bne	0x31d38e <Explosion::applyDamage(float)+0x376> @ imm = #0x6c
  31d320: 4b26         	ldr	r3, [pc, #0x98]         @ 0x31d3bc <Explosion::applyDamage(float)+0x3a4>
  31d322: 58e3         	ldr	r3, [r4, r3]
  31d324: 681b         	ldr	r3, [r3]
  31d326: f8d3 5140    	ldr.w	r5, [r3, #0x140]
  31d32a: ab0b         	add	r3, sp, #0x2c
  31d32c: 681b         	ldr	r3, [r3]
  31d32e: 681b         	ldr	r3, [r3]
  31d330: 3350         	adds	r3, #0x50
  31d332: 681b         	ldr	r3, [r3]
  31d334: aa0b         	add	r2, sp, #0x2c
  31d336: 6812         	ldr	r2, [r2]
  31d338: 4610         	mov	r0, r2
  31d33a: 4798         	blx	r3
  31d33c: 4603         	mov	r3, r0
  31d33e: edd3 7a00    	vldr	s15, [r3]
  31d342: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31d346: ab0b         	add	r3, sp, #0x2c
  31d348: 681b         	ldr	r3, [r3]
  31d34a: 681b         	ldr	r3, [r3]
  31d34c: 3350         	adds	r3, #0x50
  31d34e: 681b         	ldr	r3, [r3]
  31d350: aa0b         	add	r2, sp, #0x2c
  31d352: 6812         	ldr	r2, [r2]
  31d354: 4610         	mov	r0, r2
  31d356: 4798         	blx	r3
  31d358: 4603         	mov	r3, r0
  31d35a: edd3 7a01    	vldr	s15, [r3, #4]
  31d35e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31d362: ab32         	add	r3, sp, #0xc8
  31d364: 4618         	mov	r0, r3
  31d366: eeb0 0b48    	vmov.f64	d0, d8
  31d36a: eeb0 1b47    	vmov.f64	d1, d7
  31d36e: f7fe fbf9    	bl	0x31bb64 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3fc> @ imm = #-0x180e
  31d372: 466b         	mov	r3, sp
  31d374: aa34         	add	r2, sp, #0xd0
  31d376: e892 0003    	ldm.w	r2, {r0, r1}
  31d37a: e883 0003    	stm.w	r3, {r0, r1}
  31d37e: ab32         	add	r3, sp, #0xc8
  31d380: cb0c         	ldm	r3, {r2, r3}
  31d382: 4628         	mov	r0, r5
  31d384: f3b7 fe6b    	bl	0x6d505e <cpShapePointQuery> @ imm = #0x3b7cd6
  31d388: 4603         	mov	r3, r0
  31d38a: 2b00         	cmp	r3, #0x0
  31d38c: d01a         	beq	0x31d3c4 <Explosion::applyDamage(float)+0x3ac> @ imm = #0x34
  31d38e: 2301         	movs	r3, #0x1
  31d390: e019         	b	0x31d3c6 <Explosion::applyDamage(float)+0x3ae> @ imm = #0x32
  31d392: bf00         	nop
  31d394: f3af 8000    	nop.w
  31d398: 0000         	movs	r0, r0
  31d39a: 0000         	movs	r0, r0
  31d39c: 6000         	str	r0, [r0]
  31d39e: 4063         	eors	r3, r4
  31d3a0: 999a         	ldr	r1, [sp, #0x268]
  31d3a2: 9999         	ldr	r1, [sp, #0x264]
  31d3a4: 9999         	ldr	r1, [sp, #0x264]
  31d3a6: bfe9         	itett	al                      @ unpredictable IT predicate sequence
  31d3a8: 0000         	movs	r0, r0
  31d3aa: 0000         	movs	r0, r0
  31d3ac: 0000         	movs	r0, r0
  31d3ae: 4059         	eor	r1, r3
  31d3b0: 0000         	movs	r0, r0
  31d3b2: 4316         	orrs	r6, r2
  31d3b4: 0000         	movs	r0, r0
  31d3b6: 42fa         	cmn	r2, r7
  31d3b8: 59de         	ldr	r6, [r3, r7]
  31d3ba: 0061         	lsls	r1, r4, #0x1
  31d3bc: d784         	bvc	0x31d2c8 <Explosion::applyDamage(float)+0x2b0> @ imm = #-0xf8
  31d3be: ffff a186    	<unknown>
  31d3c2: 004a         	lsls	r2, r1, #0x1
  31d3c4: 2300         	movs	r3, #0x0
  31d3c6: 2b00         	cmp	r3, #0x0
  31d3c8: f000 809e    	beq.w	0x31d508 <Explosion::applyDamage(float)+0x4f0> @ imm = #0x13c
  31d3cc: ab1a         	add	r3, sp, #0x68
  31d3ce: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31d3d0: f3b9 fe72    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3b9ce4
  31d3d4: 4602         	mov	r2, r0
  31d3d6: 460b         	mov	r3, r1
  31d3d8: e9cd 2312    	strd	r2, r3, [sp, #72]
  31d3dc: ed9d 6b12    	vldr	d6, [sp, #72]
  31d3e0: ed9f 7ba7    	vldr	d7, [pc, #668]          @ 0x31d680 <Explosion::applyDamage(float)+0x668>
  31d3e4: ee26 6b07    	vmul.f64	d6, d6, d7
  31d3e8: ed9f 7ba7    	vldr	d7, [pc, #668]          @ 0x31d688 <Explosion::applyDamage(float)+0x670>
  31d3ec: ee36 6b07    	vadd.f64	d6, d6, d7
  31d3f0: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  31d3f4: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d3f8: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d3fc: d502         	bpl	0x31d404 <Explosion::applyDamage(float)+0x3ec> @ imm = #0x4
  31d3fe: eeb2 7b04    	vmov.f64	d7, #1.000000e+01
  31d402: e009         	b	0x31d418 <Explosion::applyDamage(float)+0x400> @ imm = #0x12
  31d404: ed9d 6b12    	vldr	d6, [sp, #72]
  31d408: ed9f 7b9d    	vldr	d7, [pc, #628]          @ 0x31d680 <Explosion::applyDamage(float)+0x668>
  31d40c: ee26 6b07    	vmul.f64	d6, d6, d7
  31d410: ed9f 7b9d    	vldr	d7, [pc, #628]          @ 0x31d688 <Explosion::applyDamage(float)+0x670>
  31d414: ee36 7b07    	vadd.f64	d7, d6, d7
  31d418: ed8d 7b14    	vstr	d7, [sp, #80]
  31d41c: 4ba0         	ldr	r3, [pc, #0x280]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d41e: 58e3         	ldr	r3, [r4, r3]
  31d420: 681b         	ldr	r3, [r3]
  31d422: 681b         	ldr	r3, [r3]
  31d424: f503 7316    	add.w	r3, r3, #0x258
  31d428: 681d         	ldr	r5, [r3]
  31d42a: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d42c: 58e3         	ldr	r3, [r4, r3]
  31d42e: 681b         	ldr	r3, [r3]
  31d430: 461e         	mov	r6, r3
  31d432: ed9d 7b14    	vldr	d7, [sp, #80]
  31d436: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  31d43a: ab0b         	add	r3, sp, #0x2c
  31d43c: 681b         	ldr	r3, [r3]
  31d43e: 33f0         	adds	r3, #0xf0
  31d440: aa46         	add	r2, sp, #0x118
  31d442: 4610         	mov	r0, r2
  31d444: 4619         	mov	r1, r3
  31d446: f099 f04f    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x49909e
  31d44a: ab0b         	add	r3, sp, #0x2c
  31d44c: 681b         	ldr	r3, [r3]
  31d44e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  31d452: aa46         	add	r2, sp, #0x118
  31d454: 2101         	movs	r1, #0x1
  31d456: 9100         	str	r1, [sp]
  31d458: 4630         	mov	r0, r6
  31d45a: ee18 1a10    	vmov	r1, s16
  31d45e: 47a8         	blx	r5
  31d460: ab46         	add	r3, sp, #0x118
  31d462: 4618         	mov	r0, r3
  31d464: f098 f256    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4984ac
  31d468: 4b8d         	ldr	r3, [pc, #0x234]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d46a: 58e3         	ldr	r3, [r4, r3]
  31d46c: 681b         	ldr	r3, [r3]
  31d46e: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  31d472: 4b8b         	ldr	r3, [pc, #0x22c]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d474: 58e3         	ldr	r3, [r4, r3]
  31d476: 681b         	ldr	r3, [r3]
  31d478: 681b         	ldr	r3, [r3]
  31d47a: f503 7335    	add.w	r3, r3, #0x2d4
  31d47e: 681b         	ldr	r3, [r3]
  31d480: 4a87         	ldr	r2, [pc, #0x21c]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d482: 58a2         	ldr	r2, [r4, r2]
  31d484: 6812         	ldr	r2, [r2]
  31d486: 4610         	mov	r0, r2
  31d488: 4798         	blx	r3
  31d48a: ee07 0a10    	vmov	s14, r0
  31d48e: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  31d492: ee67 7a27    	vmul.f32	s15, s14, s15
  31d496: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d49a: ed9d 5b14    	vldr	d5, [sp, #80]
  31d49e: ed9f 7b7c    	vldr	d7, [pc, #496]          @ 0x31d690 <Explosion::applyDamage(float)+0x678>
  31d4a2: eeb4 5bc7    	vcmpe.f64	d5, d7
  31d4a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d4aa: d502         	bpl	0x31d4b2 <Explosion::applyDamage(float)+0x49a> @ imm = #0x4
  31d4ac: ed9d 7b14    	vldr	d7, [sp, #80]
  31d4b0: e001         	b	0x31d4b6 <Explosion::applyDamage(float)+0x49e> @ imm = #0x2
  31d4b2: ed9f 7b77    	vldr	d7, [pc, #476]          @ 0x31d690 <Explosion::applyDamage(float)+0x678>
  31d4b6: ee26 7b07    	vmul.f64	d7, d6, d7
  31d4ba: ab36         	add	r3, sp, #0xd8
  31d4bc: ed9d 5b1e    	vldr	d5, [sp, #120]
  31d4c0: ed9d 6b20    	vldr	d6, [sp, #128]
  31d4c4: 4618         	mov	r0, r3
  31d4c6: eeb0 0b45    	vmov.f64	d0, d5
  31d4ca: eeb0 1b46    	vmov.f64	d1, d6
  31d4ce: eeb0 2b47    	vmov.f64	d2, d7
  31d4d2: f7fe fbb3    	bl	0x31bc3c <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x4d4> @ imm = #-0x189a
  31d4d6: ed9d 4b36    	vldr	d4, [sp, #216]
  31d4da: ed9d 5b38    	vldr	d5, [sp, #224]
  31d4de: 4b71         	ldr	r3, [pc, #0x1c4]        @ 0x31d6a4 <Explosion::applyDamage(float)+0x68c>
  31d4e0: 447b         	add	r3, pc
  31d4e2: ed93 6b00    	vldr	d6, [r3]
  31d4e6: ed93 7b02    	vldr	d7, [r3, #8]
  31d4ea: 4628         	mov	r0, r5
  31d4ec: eeb0 0b44    	vmov.f64	d0, d4
  31d4f0: eeb0 1b45    	vmov.f64	d1, d5
  31d4f4: eeb0 2b46    	vmov.f64	d2, d6
  31d4f8: eeb0 3b47    	vmov.f64	d3, d7
  31d4fc: f7fe fc44    	bl	0x31bd88 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x620> @ imm = #-0x1778
  31d500: f10d 0337    	add.w	r3, sp, #0x37
  31d504: 2201         	movs	r2, #0x1
  31d506: 701a         	strb	r2, [r3]
  31d508: f10d 0337    	add.w	r3, sp, #0x37
  31d50c: 781b         	ldrb	r3, [r3]
  31d50e: f083 0301    	eor	r3, r3, #0x1
  31d512: b2db         	uxtb	r3, r3
  31d514: 2b00         	cmp	r3, #0x0
  31d516: f000 8147    	beq.w	0x31d7a8 <Explosion::applyDamage(float)+0x790> @ imm = #0x28e
  31d51a: 4b61         	ldr	r3, [pc, #0x184]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d51c: 58e3         	ldr	r3, [r4, r3]
  31d51e: 681b         	ldr	r3, [r3]
  31d520: f893 315a    	ldrb.w	r3, [r3, #0x15a]
  31d524: f083 0301    	eor	r3, r3, #0x1
  31d528: b2db         	uxtb	r3, r3
  31d52a: 2b00         	cmp	r3, #0x0
  31d52c: f000 813c    	beq.w	0x31d7a8 <Explosion::applyDamage(float)+0x790> @ imm = #0x278
  31d530: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x31d6a8 <Explosion::applyDamage(float)+0x690>
  31d532: 58e3         	ldr	r3, [r4, r3]
  31d534: 681e         	ldr	r6, [r3]
  31d536: ab0b         	add	r3, sp, #0x2c
  31d538: 681b         	ldr	r3, [r3]
  31d53a: 681b         	ldr	r3, [r3]
  31d53c: 3350         	adds	r3, #0x50
  31d53e: 681b         	ldr	r3, [r3]
  31d540: aa0b         	add	r2, sp, #0x2c
  31d542: 6812         	ldr	r2, [r2]
  31d544: 4610         	mov	r0, r2
  31d546: 4798         	blx	r3
  31d548: 4603         	mov	r3, r0
  31d54a: edd3 7a00    	vldr	s15, [r3]
  31d54e: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31d552: ab0b         	add	r3, sp, #0x2c
  31d554: 681b         	ldr	r3, [r3]
  31d556: 681b         	ldr	r3, [r3]
  31d558: 3350         	adds	r3, #0x50
  31d55a: 681b         	ldr	r3, [r3]
  31d55c: aa0b         	add	r2, sp, #0x2c
  31d55e: 6812         	ldr	r2, [r2]
  31d560: 4610         	mov	r0, r2
  31d562: 4798         	blx	r3
  31d564: 4603         	mov	r3, r0
  31d566: edd3 7a01    	vldr	s15, [r3, #4]
  31d56a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31d56e: ab3a         	add	r3, sp, #0xe8
  31d570: 4618         	mov	r0, r3
  31d572: eeb0 0b48    	vmov.f64	d0, d8
  31d576: eeb0 1b47    	vmov.f64	d1, d7
  31d57a: f7fe faf3    	bl	0x31bb64 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3fc> @ imm = #-0x1a1a
  31d57e: 4b48         	ldr	r3, [pc, #0x120]        @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d580: 58e3         	ldr	r3, [r4, r3]
  31d582: 681b         	ldr	r3, [r3]
  31d584: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  31d588: ad02         	add	r5, sp, #0x8
  31d58a: 3328         	adds	r3, #0x28
  31d58c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31d58e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  31d592: f44f 738c    	mov.w	r3, #0x118
  31d596: 9306         	str	r3, [sp, #0x18]
  31d598: 2300         	movs	r3, #0x0
  31d59a: 9307         	str	r3, [sp, #0x1c]
  31d59c: ab46         	add	r3, sp, #0x118
  31d59e: 9308         	str	r3, [sp, #0x20]
  31d5a0: 466b         	mov	r3, sp
  31d5a2: aa3c         	add	r2, sp, #0xf0
  31d5a4: e892 0003    	ldm.w	r2, {r0, r1}
  31d5a8: e883 0003    	stm.w	r3, {r0, r1}
  31d5ac: ab3a         	add	r3, sp, #0xe8
  31d5ae: cb0c         	ldm	r3, {r2, r3}
  31d5b0: 4630         	mov	r0, r6
  31d5b2: f3b8 fcd1    	bl	0x6d5f58 <cpSpaceSegmentQueryFirst> @ imm = #0x3b89a2
  31d5b6: 4603         	mov	r3, r0
  31d5b8: 930f         	str	r3, [sp, #0x3c]
  31d5ba: 9b0f         	ldr	r3, [sp, #0x3c]
  31d5bc: 2b00         	cmp	r3, #0x0
  31d5be: f000 80f3    	beq.w	0x31d7a8 <Explosion::applyDamage(float)+0x790> @ imm = #0x1e6
  31d5c2: 9b0f         	ldr	r3, [sp, #0x3c]
  31d5c4: 6ddb         	ldr	r3, [r3, #0x5c]
  31d5c6: 2b15         	cmp	r3, #0x15
  31d5c8: f040 80ee    	bne.w	0x31d7a8 <Explosion::applyDamage(float)+0x790> @ imm = #0x1dc
  31d5cc: ab0b         	add	r3, sp, #0x2c
  31d5ce: 681b         	ldr	r3, [r3]
  31d5d0: 681b         	ldr	r3, [r3]
  31d5d2: 3350         	adds	r3, #0x50
  31d5d4: 681b         	ldr	r3, [r3]
  31d5d6: aa0b         	add	r2, sp, #0x2c
  31d5d8: 6812         	ldr	r2, [r2]
  31d5da: 4610         	mov	r0, r2
  31d5dc: 4798         	blx	r3
  31d5de: 4603         	mov	r3, r0
  31d5e0: edd3 7a00    	vldr	s15, [r3]
  31d5e4: eeb7 8ae7    	vcvt.f64.f32	d8, s15
  31d5e8: ab0b         	add	r3, sp, #0x2c
  31d5ea: 681b         	ldr	r3, [r3]
  31d5ec: 681b         	ldr	r3, [r3]
  31d5ee: 3350         	adds	r3, #0x50
  31d5f0: 681b         	ldr	r3, [r3]
  31d5f2: aa0b         	add	r2, sp, #0x2c
  31d5f4: 6812         	ldr	r2, [r2]
  31d5f6: 4610         	mov	r0, r2
  31d5f8: 4798         	blx	r3
  31d5fa: 4603         	mov	r3, r0
  31d5fc: edd3 7a01    	vldr	s15, [r3, #4]
  31d600: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  31d604: ab3e         	add	r3, sp, #0xf8
  31d606: 4618         	mov	r0, r3
  31d608: eeb0 0b48    	vmov.f64	d0, d8
  31d60c: eeb0 1b47    	vmov.f64	d1, d7
  31d610: f7fe faa8    	bl	0x31bb64 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x3fc> @ imm = #-0x1ab0
  31d614: 4b22         	ldr	r3, [pc, #0x88]         @ 0x31d6a0 <Explosion::applyDamage(float)+0x688>
  31d616: 58e3         	ldr	r3, [r4, r3]
  31d618: 681b         	ldr	r3, [r3]
  31d61a: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  31d61e: ed9d 4b3e    	vldr	d4, [sp, #248]
  31d622: ed9d 5b40    	vldr	d5, [sp, #256]
  31d626: ed93 6b0a    	vldr	d6, [r3, #40]
  31d62a: ed93 7b0c    	vldr	d7, [r3, #48]
  31d62e: 466d         	mov	r5, sp
  31d630: ab4a         	add	r3, sp, #0x128
  31d632: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31d634: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  31d638: ab46         	add	r3, sp, #0x118
  31d63a: cb0f         	ldm	r3, {r0, r1, r2, r3}
  31d63c: eeb0 0b44    	vmov.f64	d0, d4
  31d640: eeb0 1b45    	vmov.f64	d1, d5
  31d644: eeb0 2b46    	vmov.f64	d2, d6
  31d648: eeb0 3b47    	vmov.f64	d3, d7
  31d64c: f7fe fc02    	bl	0x31be54 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x6ec> @ imm = #-0x17fc
  31d650: eeb0 7b40    	vmov.f64	d7, d0
  31d654: ed8d 7b16    	vstr	d7, [sp, #88]
  31d658: ed9d 6b16    	vldr	d6, [sp, #88]
  31d65c: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x31d680 <Explosion::applyDamage(float)+0x668>
  31d660: ee26 6b07    	vmul.f64	d6, d6, d7
  31d664: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x31d688 <Explosion::applyDamage(float)+0x670>
  31d668: ee36 7b07    	vadd.f64	d7, d6, d7
  31d66c: eeb5 7bc0    	vcmpe.f64	d7, #0
  31d670: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d674: d51a         	bpl	0x31d6ac <Explosion::applyDamage(float)+0x694> @ imm = #0x34
  31d676: ed9f 7b08    	vldr	d7, [pc, #32]           @ 0x31d698 <Explosion::applyDamage(float)+0x680>
  31d67a: e021         	b	0x31d6c0 <Explosion::applyDamage(float)+0x6a8> @ imm = #0x42
  31d67c: f3af 8000    	nop.w
  31d680: 999a         	ldr	r1, [sp, #0x268]
  31d682: 9999         	ldr	r1, [sp, #0x264]
  31d684: 9999         	ldr	r1, [sp, #0x264]
  31d686: bfe9         	itett	al                      @ unpredictable IT predicate sequence
  31d688: 0000         	movs	r0, r0
  31d68a: 0000         	movs	r0, r0
  31d68c: 0000         	movs	r0, r0
  31d68e: 4059         	eor	r1, r3
  31d690: 0000         	movs	r0, r0
  31d692: 0000         	movs	r0, r0
  31d694: 0000         	movs	r0, r0
  31d696: 4044         	eors	r4, r0
  31d6a0: d784         	bvc	0x31d5ac <Explosion::applyDamage(float)+0x594> @ imm = #-0xf8
  31d6a2: ffff 9e44    	<unknown>
  31d6a6: 004a         	lsls	r2, r1, #0x1
  31d6a8: da00         	bge	0x31d6ac <Explosion::applyDamage(float)+0x694> @ imm = #0x0
  31d6aa: ffff ed9d    	<unknown>
  31d6ae: 6b16         	ldr	r6, [r2, #0x30]
  31d6b0: ed9f 7b49    	vldr	d7, [pc, #292]          @ 0x31d7d8 <Explosion::applyDamage(float)+0x7c0>
  31d6b4: ee26 6b07    	vmul.f64	d6, d6, d7
  31d6b8: ed9f 7b49    	vldr	d7, [pc, #292]          @ 0x31d7e0 <Explosion::applyDamage(float)+0x7c8>
  31d6bc: ee36 7b07    	vadd.f64	d7, d6, d7
  31d6c0: ed8d 7b18    	vstr	d7, [sp, #96]
  31d6c4: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x31d7f0 <Explosion::applyDamage(float)+0x7d8>
  31d6c6: 58e3         	ldr	r3, [r4, r3]
  31d6c8: 681b         	ldr	r3, [r3]
  31d6ca: 681b         	ldr	r3, [r3]
  31d6cc: f503 7316    	add.w	r3, r3, #0x258
  31d6d0: 681d         	ldr	r5, [r3]
  31d6d2: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x31d7f0 <Explosion::applyDamage(float)+0x7d8>
  31d6d4: 58e3         	ldr	r3, [r4, r3]
  31d6d6: 681b         	ldr	r3, [r3]
  31d6d8: 461e         	mov	r6, r3
  31d6da: ed9d 7b18    	vldr	d7, [sp, #96]
  31d6de: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  31d6e2: ab0b         	add	r3, sp, #0x2c
  31d6e4: 681b         	ldr	r3, [r3]
  31d6e6: 33f0         	adds	r3, #0xf0
  31d6e8: aa42         	add	r2, sp, #0x108
  31d6ea: 4610         	mov	r0, r2
  31d6ec: 4619         	mov	r1, r3
  31d6ee: f098 f6fb    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x498df6
  31d6f2: ab0b         	add	r3, sp, #0x2c
  31d6f4: 681b         	ldr	r3, [r3]
  31d6f6: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  31d6fa: aa42         	add	r2, sp, #0x108
  31d6fc: 2101         	movs	r1, #0x1
  31d6fe: 9100         	str	r1, [sp]
  31d700: 4630         	mov	r0, r6
  31d702: ee18 1a10    	vmov	r1, s16
  31d706: 47a8         	blx	r5
  31d708: ab42         	add	r3, sp, #0x108
  31d70a: 4618         	mov	r0, r3
  31d70c: f098 f102    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x498204
  31d710: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x31d7f0 <Explosion::applyDamage(float)+0x7d8>
  31d712: 58e3         	ldr	r3, [r4, r3]
  31d714: 681b         	ldr	r3, [r3]
  31d716: f8d3 5138    	ldr.w	r5, [r3, #0x138]
  31d71a: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x31d7f0 <Explosion::applyDamage(float)+0x7d8>
  31d71c: 58e3         	ldr	r3, [r4, r3]
  31d71e: 681b         	ldr	r3, [r3]
  31d720: 681b         	ldr	r3, [r3]
  31d722: f503 7335    	add.w	r3, r3, #0x2d4
  31d726: 681b         	ldr	r3, [r3]
  31d728: 4a31         	ldr	r2, [pc, #0xc4]         @ 0x31d7f0 <Explosion::applyDamage(float)+0x7d8>
  31d72a: 58a2         	ldr	r2, [r4, r2]
  31d72c: 6812         	ldr	r2, [r2]
  31d72e: 4610         	mov	r0, r2
  31d730: 4798         	blx	r3
  31d732: ee07 0a10    	vmov	s14, r0
  31d736: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  31d73a: ee67 7a27    	vmul.f32	s15, s14, s15
  31d73e: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d742: ed9d 5b18    	vldr	d5, [sp, #96]
  31d746: ed9f 7b28    	vldr	d7, [pc, #160]          @ 0x31d7e8 <Explosion::applyDamage(float)+0x7d0>
  31d74a: eeb4 5bc7    	vcmpe.f64	d5, d7
  31d74e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d752: d502         	bpl	0x31d75a <Explosion::applyDamage(float)+0x742> @ imm = #0x4
  31d754: ed9d 7b18    	vldr	d7, [sp, #96]
  31d758: e001         	b	0x31d75e <Explosion::applyDamage(float)+0x746> @ imm = #0x2
  31d75a: ed9f 7b23    	vldr	d7, [pc, #140]          @ 0x31d7e8 <Explosion::applyDamage(float)+0x7d0>
  31d75e: ee26 7b07    	vmul.f64	d7, d6, d7
  31d762: ab42         	add	r3, sp, #0x108
  31d764: ed9d 5b1e    	vldr	d5, [sp, #120]
  31d768: ed9d 6b20    	vldr	d6, [sp, #128]
  31d76c: 4618         	mov	r0, r3
  31d76e: eeb0 0b45    	vmov.f64	d0, d5
  31d772: eeb0 1b46    	vmov.f64	d1, d6
  31d776: eeb0 2b47    	vmov.f64	d2, d7
  31d77a: f7fe fa5f    	bl	0x31bc3c <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x4d4> @ imm = #-0x1b42
  31d77e: ed9d 4b42    	vldr	d4, [sp, #264]
  31d782: ed9d 5b44    	vldr	d5, [sp, #272]
  31d786: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x31d7f4 <Explosion::applyDamage(float)+0x7dc>
  31d788: 447b         	add	r3, pc
  31d78a: ed93 6b00    	vldr	d6, [r3]
  31d78e: ed93 7b02    	vldr	d7, [r3, #8]
  31d792: 4628         	mov	r0, r5
  31d794: eeb0 0b44    	vmov.f64	d0, d4
  31d798: eeb0 1b45    	vmov.f64	d1, d5
  31d79c: eeb0 2b46    	vmov.f64	d2, d6
  31d7a0: eeb0 3b47    	vmov.f64	d3, d7
  31d7a4: f7fe faf0    	bl	0x31bd88 <EnemyManager::onEnemyPositionUpdate(cocos2d::CCObject*)+0x620> @ imm = #-0x1a20
  31d7a8: e011         	b	0x31d7ce <Explosion::applyDamage(float)+0x7b6> @ imm = #0x22
  31d7aa: ab46         	add	r3, sp, #0x118
  31d7ac: 4618         	mov	r0, r3
  31d7ae: f098 f0b1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x498162
  31d7b2: f06a f47b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46a8f6
  31d7b6: ab46         	add	r3, sp, #0x118
  31d7b8: 4618         	mov	r0, r3
  31d7ba: f098 f0ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x498156
  31d7be: f06a f475    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46a8ea
  31d7c2: ab42         	add	r3, sp, #0x108
  31d7c4: 4618         	mov	r0, r3
  31d7c6: f098 f0a5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x49814a
  31d7ca: f06a f46f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x46a8de
  31d7ce: b04e         	add	sp, #0x138
  31d7d0: ecbd 8b02    	vpop	{d8}
  31d7d4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x31d7d5); words below are literal-pool data ---
  31d7d6: bf00         	nop
  31d7d8: 999a         	ldr	r1, [sp, #0x268]
  31d7da: 9999         	ldr	r1, [sp, #0x264]
  31d7dc: 9999         	ldr	r1, [sp, #0x264]
  31d7de: bfe9         	itett	al                      @ unpredictable IT predicate sequence
  31d7e0: 0000         	movs	r0, r0
  31d7e2: 0000         	movs	r0, r0
  31d7e4: 0000         	movs	r0, r0
  31d7e6: 4059         	eor	r1, r3
  31d7e8: 0000         	movs	r0, r0
  31d7ea: 0000         	movs	r0, r0
  31d7ec: 0000         	movs	r0, r0
  31d7ee: 4044         	eors	r4, r0
  31d7f0: d784         	bvc	0x31d6fc <Explosion::applyDamage(float)+0x6e4> @ imm = #-0xf8
  31d7f2: ffff 9b9c    	<unknown>
  31d7f6: 004a         	lsls	r2, r1, #0x1

// ==== Explosion::updateStep
//      file offset 0x31d7f8 (= ELF address; Ghidra 0x32d7f8), 612 bytes, Thumb-2
  31d7f8: b530         	push	{r4, r5, lr}
  31d7fa: b083         	sub	sp, #0xc
  31d7fc: 9001         	str	r0, [sp, #0x4]
  31d7fe: 9100         	str	r1, [sp]
  31d800: 9b01         	ldr	r3, [sp, #0x4]
  31d802: ed93 7a3d    	vldr	s14, [r3, #244]
  31d806: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  31d80a: eeb4 7ae7    	vcmpe.f32	s14, s15
  31d80e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d812: dd08         	ble	0x31d826 <Explosion::updateStep(float)+0x2e> @ imm = #0x10
  31d814: 9b01         	ldr	r3, [sp, #0x4]
  31d816: 681b         	ldr	r3, [r3]
  31d818: 3390         	adds	r3, #0x90
  31d81a: 681b         	ldr	r3, [r3]
  31d81c: 9a01         	ldr	r2, [sp, #0x4]
  31d81e: 4610         	mov	r0, r2
  31d820: 2100         	movs	r1, #0x0
  31d822: 4798         	blx	r3
  31d824: e104         	b	0x31da30 <Explosion::updateStep(float)+0x238> @ imm = #0x208
  31d826: 9b01         	ldr	r3, [sp, #0x4]
  31d828: ed93 7a3d    	vldr	s14, [r3, #244]
  31d82c: eddd 7a00    	vldr	s15, [sp]
  31d830: ee77 7a27    	vadd.f32	s15, s14, s15
  31d834: 9b01         	ldr	r3, [sp, #0x4]
  31d836: edc3 7a3d    	vstr	s15, [r3, #244]
  31d83a: 9b01         	ldr	r3, [sp, #0x4]
  31d83c: edd3 7a3d    	vldr	s15, [r3, #244]
  31d840: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d844: ed9f 7b7c    	vldr	d7, [pc, #496]          @ 0x31da38 <Explosion::updateStep(float)+0x240>
  31d848: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d84c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d850: f340 8085    	ble.w	0x31d95e <Explosion::updateStep(float)+0x166> @ imm = #0x10a
  31d854: 9b01         	ldr	r3, [sp, #0x4]
  31d856: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31d85a: 681b         	ldr	r3, [r3]
  31d85c: 3390         	adds	r3, #0x90
  31d85e: 681b         	ldr	r3, [r3]
  31d860: 9a01         	ldr	r2, [sp, #0x4]
  31d862: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31d866: 4610         	mov	r0, r2
  31d868: 2100         	movs	r1, #0x0
  31d86a: 4798         	blx	r3
  31d86c: 9b01         	ldr	r3, [sp, #0x4]
  31d86e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d872: 681b         	ldr	r3, [r3]
  31d874: 3340         	adds	r3, #0x40
  31d876: 681c         	ldr	r4, [r3]
  31d878: 9b01         	ldr	r3, [sp, #0x4]
  31d87a: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  31d87e: 9b01         	ldr	r3, [sp, #0x4]
  31d880: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d884: 681b         	ldr	r3, [r3]
  31d886: 3344         	adds	r3, #0x44
  31d888: 681b         	ldr	r3, [r3]
  31d88a: 9a01         	ldr	r2, [sp, #0x4]
  31d88c: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31d890: 4610         	mov	r0, r2
  31d892: 4798         	blx	r3
  31d894: ee07 0a90    	vmov	s15, r0
  31d898: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d89c: eddd 7a00    	vldr	s15, [sp]
  31d8a0: eeb7 5ae7    	vcvt.f64.f32	d5, s15
  31d8a4: eeb5 7b00    	vmov.f64	d7, #2.500000e-01
  31d8a8: ee25 7b07    	vmul.f64	d7, d5, d7
  31d8ac: ee36 7b07    	vadd.f64	d7, d6, d7
  31d8b0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31d8b4: 4628         	mov	r0, r5
  31d8b6: ee17 1a90    	vmov	r1, s15
  31d8ba: 47a0         	blx	r4
  31d8bc: 9b01         	ldr	r3, [sp, #0x4]
  31d8be: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d8c2: 681b         	ldr	r3, [r3]
  31d8c4: 3398         	adds	r3, #0x98
  31d8c6: 681c         	ldr	r4, [r3]
  31d8c8: 9b01         	ldr	r3, [sp, #0x4]
  31d8ca: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  31d8ce: 9b01         	ldr	r3, [sp, #0x4]
  31d8d0: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d8d4: 681b         	ldr	r3, [r3]
  31d8d6: 339c         	adds	r3, #0x9c
  31d8d8: 681b         	ldr	r3, [r3]
  31d8da: 9a01         	ldr	r2, [sp, #0x4]
  31d8dc: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31d8e0: 4610         	mov	r0, r2
  31d8e2: 4798         	blx	r3
  31d8e4: ee06 0a90    	vmov	s13, r0
  31d8e8: ed9d 7a00    	vldr	s14, [sp]
  31d8ec: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  31d8f0: ee67 7a27    	vmul.f32	s15, s14, s15
  31d8f4: ee76 7aa7    	vadd.f32	s15, s13, s15
  31d8f8: 4628         	mov	r0, r5
  31d8fa: ee17 1a90    	vmov	r1, s15
  31d8fe: 47a0         	blx	r4
  31d900: 9b01         	ldr	r3, [sp, #0x4]
  31d902: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d906: 681b         	ldr	r3, [r3]
  31d908: f503 73d2    	add.w	r3, r3, #0x1a4
  31d90c: 681c         	ldr	r4, [r3]
  31d90e: 9b01         	ldr	r3, [sp, #0x4]
  31d910: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  31d914: 9b01         	ldr	r3, [sp, #0x4]
  31d916: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d91a: 681b         	ldr	r3, [r3]
  31d91c: f503 73ce    	add.w	r3, r3, #0x19c
  31d920: 681b         	ldr	r3, [r3]
  31d922: 9a01         	ldr	r2, [sp, #0x4]
  31d924: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31d928: 4610         	mov	r0, r2
  31d92a: 4798         	blx	r3
  31d92c: 4603         	mov	r3, r0
  31d92e: 3b01         	subs	r3, #0x1
  31d930: 2b00         	cmp	r3, #0x0
  31d932: dd0f         	ble	0x31d954 <Explosion::updateStep(float)+0x15c> @ imm = #0x1e
  31d934: 9b01         	ldr	r3, [sp, #0x4]
  31d936: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d93a: 681b         	ldr	r3, [r3]
  31d93c: f503 73ce    	add.w	r3, r3, #0x19c
  31d940: 681b         	ldr	r3, [r3]
  31d942: 9a01         	ldr	r2, [sp, #0x4]
  31d944: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31d948: 4610         	mov	r0, r2
  31d94a: 4798         	blx	r3
  31d94c: 4603         	mov	r3, r0
  31d94e: 3b01         	subs	r3, #0x1
  31d950: b2db         	uxtb	r3, r3
  31d952: e000         	b	0x31d956 <Explosion::updateStep(float)+0x15e> @ imm = #0x0
  31d954: 2300         	movs	r3, #0x0
  31d956: 4628         	mov	r0, r5
  31d958: 4619         	mov	r1, r3
  31d95a: 47a0         	blx	r4
  31d95c: e068         	b	0x31da30 <Explosion::updateStep(float)+0x238> @ imm = #0xd0
  31d95e: 9b01         	ldr	r3, [sp, #0x4]
  31d960: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d964: 681b         	ldr	r3, [r3]
  31d966: 3340         	adds	r3, #0x40
  31d968: 681c         	ldr	r4, [r3]
  31d96a: 9b01         	ldr	r3, [sp, #0x4]
  31d96c: f8d3 50e8    	ldr.w	r5, [r3, #0xe8]
  31d970: 9b01         	ldr	r3, [sp, #0x4]
  31d972: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d976: 681b         	ldr	r3, [r3]
  31d978: 3344         	adds	r3, #0x44
  31d97a: 681b         	ldr	r3, [r3]
  31d97c: 9a01         	ldr	r2, [sp, #0x4]
  31d97e: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31d982: 4610         	mov	r0, r2
  31d984: 4798         	blx	r3
  31d986: ee06 0a90    	vmov	s13, r0
  31d98a: ed9d 7a00    	vldr	s14, [sp]
  31d98e: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  31d992: ee67 7a27    	vmul.f32	s15, s14, s15
  31d996: ee76 7aa7    	vadd.f32	s15, s13, s15
  31d99a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31d99e: ed9f 7b28    	vldr	d7, [pc, #160]          @ 0x31da40 <Explosion::updateStep(float)+0x248>
  31d9a2: eeb4 6bc7    	vcmpe.f64	d6, d7
  31d9a6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  31d9aa: dd02         	ble	0x31d9b2 <Explosion::updateStep(float)+0x1ba> @ imm = #0x4
  31d9ac: eddf 7a2a    	vldr	s15, [pc, #168]         @ 0x31da58 <Explosion::updateStep(float)+0x260>
  31d9b0: e014         	b	0x31d9dc <Explosion::updateStep(float)+0x1e4> @ imm = #0x28
  31d9b2: 9b01         	ldr	r3, [sp, #0x4]
  31d9b4: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  31d9b8: 681b         	ldr	r3, [r3]
  31d9ba: 3344         	adds	r3, #0x44
  31d9bc: 681b         	ldr	r3, [r3]
  31d9be: 9a01         	ldr	r2, [sp, #0x4]
  31d9c0: f8d2 20e8    	ldr.w	r2, [r2, #0xe8]
  31d9c4: 4610         	mov	r0, r2
  31d9c6: 4798         	blx	r3
  31d9c8: ee06 0a90    	vmov	s13, r0
  31d9cc: ed9d 7a00    	vldr	s14, [sp]
  31d9d0: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  31d9d4: ee67 7a27    	vmul.f32	s15, s14, s15
  31d9d8: ee76 7aa7    	vadd.f32	s15, s13, s15
  31d9dc: 4628         	mov	r0, r5
  31d9de: ee17 1a90    	vmov	r1, s15
  31d9e2: 47a0         	blx	r4
  31d9e4: 9b01         	ldr	r3, [sp, #0x4]
  31d9e6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31d9ea: 681b         	ldr	r3, [r3]
  31d9ec: 3340         	adds	r3, #0x40
  31d9ee: 681c         	ldr	r4, [r3]
  31d9f0: 9b01         	ldr	r3, [sp, #0x4]
  31d9f2: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  31d9f6: 9b01         	ldr	r3, [sp, #0x4]
  31d9f8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  31d9fc: 681b         	ldr	r3, [r3]
  31d9fe: 3344         	adds	r3, #0x44
  31da00: 681b         	ldr	r3, [r3]
  31da02: 9a01         	ldr	r2, [sp, #0x4]
  31da04: f8d2 20e4    	ldr.w	r2, [r2, #0xe4]
  31da08: 4610         	mov	r0, r2
  31da0a: 4798         	blx	r3
  31da0c: ee07 0a90    	vmov	s15, r0
  31da10: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  31da14: ed9f 7b0c    	vldr	d7, [pc, #48]           @ 0x31da48 <Explosion::updateStep(float)+0x250>
  31da18: ee26 6b07    	vmul.f64	d6, d6, d7
  31da1c: ed9f 7b0c    	vldr	d7, [pc, #48]           @ 0x31da50 <Explosion::updateStep(float)+0x258>
  31da20: ee36 7b07    	vadd.f64	d7, d6, d7
  31da24: eef7 7bc7    	vcvt.f32.f64	s15, d7
  31da28: 4628         	mov	r0, r5
  31da2a: ee17 1a90    	vmov	r1, s15
  31da2e: 47a0         	blx	r4
  31da30: b003         	add	sp, #0xc
  31da32: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x31da33); words below are literal-pool data ---
  31da34: f3af 8000    	nop.w
  31da38: 3333         	adds	r3, #0x33
  31da3a: 3333         	adds	r3, #0x33
  31da3c: 3333         	adds	r3, #0x33
  31da3e: 3fc3         	subs	r7, #0xc3
  31da40: 3333         	adds	r3, #0x33
  31da42: 3333         	adds	r3, #0x33
  31da44: 3333         	adds	r3, #0x33
  31da46: 3ff3         	subs	r7, #0xf3
  31da48: 3333         	adds	r3, #0x33
  31da4a: 3333         	adds	r3, #0x33
  31da4c: 3333         	adds	r3, #0x33
  31da4e: 3fd3         	subs	r7, #0xd3
  31da50: 3333         	adds	r3, #0x33
  31da52: 3333         	adds	r3, #0x33
  31da54: 3333         	adds	r3, #0x33
  31da56: 3fe3         	subs	r7, #0xe3
  31da58: 999a         	ldr	r1, [sp, #0x268]
  31da5a: 3f99         	subs	r7, #0x99
