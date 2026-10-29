// Radar: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 10 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Radar.cpp

// ==== Radar::create
//      file offset 0x33a10c (= ELF address; Ghidra 0x34a10c), 110 bytes, Thumb-2
  33a10c: b510         	push	{r4, lr}
  33a10e: b082         	sub	sp, #0x8
  33a110: 20f0         	movs	r0, #0xf0
  33a112: f04d f427    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x44d84e
  33a116: 4603         	mov	r3, r0
  33a118: 461c         	mov	r4, r3
  33a11a: 4620         	mov	r0, r4
  33a11c: f083 fb86    	bl	0x3bd82c <Radar::Radar()> @ imm = #0x8370c
  33a120: 9401         	str	r4, [sp, #0x4]
  33a122: 9b01         	ldr	r3, [sp, #0x4]
  33a124: 2b00         	cmp	r3, #0x0
  33a126: d00a         	beq	0x33a13e <Radar::create()+0x32> @ imm = #0x14
  33a128: 9b01         	ldr	r3, [sp, #0x4]
  33a12a: 681b         	ldr	r3, [r3]
  33a12c: 3318         	adds	r3, #0x18
  33a12e: 681b         	ldr	r3, [r3]
  33a130: 9801         	ldr	r0, [sp, #0x4]
  33a132: 4798         	blx	r3
  33a134: 4603         	mov	r3, r0
  33a136: 2b00         	cmp	r3, #0x0
  33a138: d001         	beq	0x33a13e <Radar::create()+0x32> @ imm = #0x2
  33a13a: 2301         	movs	r3, #0x1
  33a13c: e000         	b	0x33a140 <Radar::create()+0x34> @ imm = #0x0
  33a13e: 2300         	movs	r3, #0x0
  33a140: 2b00         	cmp	r3, #0x0
  33a142: d005         	beq	0x33a150 <Radar::create()+0x44> @ imm = #0xa
  33a144: 9b01         	ldr	r3, [sp, #0x4]
  33a146: 4618         	mov	r0, r3
  33a148: f25d fed8    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x25ddb0
  33a14c: 9b01         	ldr	r3, [sp, #0x4]
  33a14e: e011         	b	0x33a174 <Radar::create()+0x68> @ imm = #0x22
  33a150: 9b01         	ldr	r3, [sp, #0x4]
  33a152: 2b00         	cmp	r3, #0x0
  33a154: d005         	beq	0x33a162 <Radar::create()+0x56> @ imm = #0xa
  33a156: 9b01         	ldr	r3, [sp, #0x4]
  33a158: 681b         	ldr	r3, [r3]
  33a15a: 3308         	adds	r3, #0x8
  33a15c: 681b         	ldr	r3, [r3]
  33a15e: 9801         	ldr	r0, [sp, #0x4]
  33a160: 4798         	blx	r3
  33a162: 2300         	movs	r3, #0x0
  33a164: 9301         	str	r3, [sp, #0x4]
  33a166: 2300         	movs	r3, #0x0
  33a168: e004         	b	0x33a174 <Radar::create()+0x68> @ imm = #0x8
  33a16a: 4620         	mov	r0, r4
  33a16c: f04d f79a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x44df34
  33a170: f04d f79c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x44df38
  33a174: 4618         	mov	r0, r3
  33a176: b002         	add	sp, #0x8
  33a178: bd10         	pop	{r4, pc}

// ==== Radar::Radar
//      file offset 0x3bd82c (= ELF address; Ghidra 0x3cd82c), 68 bytes, Thumb-2
  3bd82c: b510         	push	{r4, lr}
  3bd82e: b082         	sub	sp, #0x8
  3bd830: 9001         	str	r0, [sp, #0x4]
  3bd832: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x3bd868 <Radar::Radar()+0x3c>
  3bd834: 447c         	add	r4, pc
  3bd836: 9b01         	ldr	r3, [sp, #0x4]
  3bd838: 4618         	mov	r0, r3
  3bd83a: f1d1 fefd    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1d1dfa
  3bd83e: 9b01         	ldr	r3, [sp, #0x4]
  3bd840: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x3bd86c <Radar::Radar()+0x40>
  3bd842: 58a2         	ldr	r2, [r4, r2]
  3bd844: 3208         	adds	r2, #0x8
  3bd846: 601a         	str	r2, [r3]
  3bd848: 9b01         	ldr	r3, [sp, #0x4]
  3bd84a: 33e8         	adds	r3, #0xe8
  3bd84c: 4618         	mov	r0, r3
  3bd84e: f1d5 fa41    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1d5482
  3bd852: 9b01         	ldr	r3, [sp, #0x4]
  3bd854: e005         	b	0x3bd862 <Radar::Radar()+0x36> @ imm = #0xa
  3bd856: 9b01         	ldr	r3, [sp, #0x4]
  3bd858: 4618         	mov	r0, r3
  3bd85a: f1d1 fff3    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1d1fe6
  3bd85e: f3ca fc25    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ca84a
  3bd862: 4618         	mov	r0, r3
  3bd864: b002         	add	sp, #0x8
  3bd866: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bd867); words below are literal-pool data ---
  3bd868: 51d4         	str	r4, [r2, r7]
  3bd86a: 0057         	lsls	r7, r2, #0x1
  3bd86c: de34         	udf	#0x34
  3bd86e: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== Radar::init
//      file offset 0x3bd870 (= ELF address; Ghidra 0x3cd870), 196 bytes, Thumb-2
  3bd870: b530         	push	{r4, r5, lr}
  3bd872: b08b         	sub	sp, #0x2c
  3bd874: 9003         	str	r0, [sp, #0xc]
  3bd876: 4c2b         	ldr	r4, [pc, #0xac]         @ 0x3bd924 <Radar::init()+0xb4>
  3bd878: 447c         	add	r4, pc
  3bd87a: 9b03         	ldr	r3, [sp, #0xc]
  3bd87c: 4618         	mov	r0, r3
  3bd87e: f1d2 f8e5    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1d21ca
  3bd882: 4603         	mov	r3, r0
  3bd884: f88d 3017    	strb.w	r3, [sp, #0x17]
  3bd888: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  3bd88c: f083 0301    	eor	r3, r3, #0x1
  3bd890: b2db         	uxtb	r3, r3
  3bd892: 2b00         	cmp	r3, #0x0
  3bd894: d001         	beq	0x3bd89a <Radar::init()+0x2a> @ imm = #0x2
  3bd896: 2300         	movs	r3, #0x0
  3bd898: e040         	b	0x3bd91c <Radar::init()+0xac> @ imm = #0x80
  3bd89a: f1d9 fd89    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1d9b12
  3bd89e: 4602         	mov	r2, r0
  3bd8a0: 9b03         	ldr	r3, [sp, #0xc]
  3bd8a2: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  3bd8a6: 9b03         	ldr	r3, [sp, #0xc]
  3bd8a8: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bd8ac: 4618         	mov	r0, r3
  3bd8ae: f1da fb1b    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1da636
  3bd8b2: f222 fefd    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x222dfa
  3bd8b6: 4602         	mov	r2, r0
  3bd8b8: 9b03         	ldr	r3, [sp, #0xc]
  3bd8ba: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3bd928 <Radar::init()+0xb8>
  3bd8bc: 5861         	ldr	r1, [r4, r1]
  3bd8be: 9108         	str	r1, [sp, #0x20]
  3bd8c0: 2100         	movs	r1, #0x0
  3bd8c2: 9109         	str	r1, [sp, #0x24]
  3bd8c4: 4919         	ldr	r1, [pc, #0x64]         @ 0x3bd92c <Radar::init()+0xbc>
  3bd8c6: 4479         	add	r1, pc
  3bd8c8: 9100         	str	r1, [sp]
  3bd8ca: 2100         	movs	r1, #0x0
  3bd8cc: 9101         	str	r1, [sp, #0x4]
  3bd8ce: 4610         	mov	r0, r2
  3bd8d0: 4619         	mov	r1, r3
  3bd8d2: ab08         	add	r3, sp, #0x20
  3bd8d4: cb0c         	ldm	r3, {r2, r3}
  3bd8d6: f222 ff87    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x222f0e
  3bd8da: 9b03         	ldr	r3, [sp, #0xc]
  3bd8dc: f103 05e8    	add.w	r5, r3, #0xe8
  3bd8e0: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3bd930 <Radar::init()+0xc0>
  3bd8e2: 58e3         	ldr	r3, [r4, r3]
  3bd8e4: ed93 7a00    	vldr	s14, [r3]
  3bd8e8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3bd8ec: eec7 6a27    	vdiv.f32	s13, s14, s15
  3bd8f0: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3bd930 <Radar::init()+0xc0>
  3bd8f2: 58e3         	ldr	r3, [r4, r3]
  3bd8f4: ed93 7a01    	vldr	s14, [r3, #4]
  3bd8f8: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  3bd8fc: eec7 7a27    	vdiv.f32	s15, s14, s15
  3bd900: ab06         	add	r3, sp, #0x18
  3bd902: 4618         	mov	r0, r3
  3bd904: ee16 1a90    	vmov	r1, s13
  3bd908: ee17 2a90    	vmov	r2, s15
  3bd90c: f1d5 f9f0    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d53e0
  3bd910: ab06         	add	r3, sp, #0x18
  3bd912: 4628         	mov	r0, r5
  3bd914: 4619         	mov	r1, r3
  3bd916: f1d5 fa19    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1d5432
  3bd91a: 2301         	movs	r3, #0x1
  3bd91c: 4618         	mov	r0, r3
  3bd91e: b00b         	add	sp, #0x2c
  3bd920: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3bd921); words below are literal-pool data ---
  3bd922: bf00         	nop
  3bd924: 5190         	str	r0, [r2, r6]
  3bd926: 0057         	lsls	r7, r2, #0x1
  3bd928: de38         	udf	#0x38
  3bd92a: ffff 7446    	<unknown>
  3bd92e: 0041         	lsls	r1, r0, #0x1
  3bd930: d724         	bvc	0x3bd97c <Radar::~Radar()+0x48> @ imm = #0x48
  3bd932: ffff b500    	<unknown>

// ==== Radar::~Radar
//      file offset 0x3bd934 (= ELF address; Ghidra 0x3cd934), 96 bytes, Thumb-2
  3bd934: b500         	push	{lr}
  3bd936: b083         	sub	sp, #0xc
  3bd938: 9001         	str	r0, [sp, #0x4]
  3bd93a: 4914         	ldr	r1, [pc, #0x50]         @ 0x3bd98c <Radar::~Radar()+0x58>
  3bd93c: 4479         	add	r1, pc
  3bd93e: 9b01         	ldr	r3, [sp, #0x4]
  3bd940: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x3bd990 <Radar::~Radar()+0x5c>
  3bd942: 588a         	ldr	r2, [r1, r2]
  3bd944: 3208         	adds	r2, #0x8
  3bd946: 601a         	str	r2, [r3]
  3bd948: f222 feb2    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x222d64
  3bd94c: 4602         	mov	r2, r0
  3bd94e: 9b01         	ldr	r3, [sp, #0x4]
  3bd950: 4610         	mov	r0, r2
  3bd952: 4619         	mov	r1, r3
  3bd954: f222 ffe4    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x222fc8
  3bd958: 9b01         	ldr	r3, [sp, #0x4]
  3bd95a: 4618         	mov	r0, r3
  3bd95c: f1d2 fe66    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1d2ccc
  3bd960: 9b01         	ldr	r3, [sp, #0x4]
  3bd962: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bd966: 4618         	mov	r0, r3
  3bd968: f1da faa6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1da54c
  3bd96c: 9b01         	ldr	r3, [sp, #0x4]
  3bd96e: 4618         	mov	r0, r3
  3bd970: f1d1 ff68    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1d1ed0
  3bd974: 2300         	movs	r3, #0x0
  3bd976: 2b00         	cmp	r3, #0x0
  3bd978: d002         	beq	0x3bd980 <Radar::~Radar()+0x4c> @ imm = #0x4
  3bd97a: 9801         	ldr	r0, [sp, #0x4]
  3bd97c: f3ca fb92    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ca724
  3bd980: 9b01         	ldr	r3, [sp, #0x4]
  3bd982: 4618         	mov	r0, r3
  3bd984: b003         	add	sp, #0xc
  3bd986: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3bd989); words below are literal-pool data ---
  3bd98a: bf00         	nop
  3bd98c: 50cc         	str	r4, [r1, r3]
  3bd98e: 0057         	lsls	r7, r2, #0x1
  3bd990: de34         	udf	#0x34
  3bd992: ffff b500    	<unknown>

// ==== Radar::~Radar
//      file offset 0x3bd994 (= ELF address; Ghidra 0x3cd994), 28 bytes, Thumb-2
  3bd994: b500         	push	{lr}
  3bd996: b083         	sub	sp, #0xc
  3bd998: 9001         	str	r0, [sp, #0x4]
  3bd99a: 9801         	ldr	r0, [sp, #0x4]
  3bd99c: f7ff ffca    	bl	0x3bd934 <Radar::~Radar()> @ imm = #-0x6c
  3bd9a0: 9801         	ldr	r0, [sp, #0x4]
  3bd9a2: f3ca fb7f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ca6fe
  3bd9a6: 9b01         	ldr	r3, [sp, #0x4]
  3bd9a8: 4618         	mov	r0, r3
  3bd9aa: b003         	add	sp, #0xc
  3bd9ac: f85d fb04    	ldr	pc, [sp], #4

// ==== Radar::addAlert
//      file offset 0x3bd9b0 (= ELF address; Ghidra 0x3cd9b0), 144 bytes, Thumb-2
  3bd9b0: b530         	push	{r4, r5, lr}
  3bd9b2: b087         	sub	sp, #0x1c
  3bd9b4: 9001         	str	r0, [sp, #0x4]
  3bd9b6: 9100         	str	r1, [sp]
  3bd9b8: f7ff fe84    	bl	0x3bd6c4 <ArrowAlert::create()> @ imm = #-0x2f8
  3bd9bc: 4603         	mov	r3, r0
  3bd9be: 9303         	str	r3, [sp, #0xc]
  3bd9c0: 9b03         	ldr	r3, [sp, #0xc]
  3bd9c2: 681b         	ldr	r3, [r3]
  3bd9c4: 337c         	adds	r3, #0x7c
  3bd9c6: 681c         	ldr	r4, [r3]
  3bd9c8: 9d03         	ldr	r5, [sp, #0xc]
  3bd9ca: ab04         	add	r3, sp, #0x10
  3bd9cc: 4618         	mov	r0, r3
  3bd9ce: f04f 517c    	mov.w	r1, #0x3f000000
  3bd9d2: f04f 527c    	mov.w	r2, #0x3f000000
  3bd9d6: f1d5 f98b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d5316
  3bd9da: ab04         	add	r3, sp, #0x10
  3bd9dc: 4628         	mov	r0, r5
  3bd9de: 4619         	mov	r1, r3
  3bd9e0: 47a0         	blx	r4
  3bd9e2: 9b03         	ldr	r3, [sp, #0xc]
  3bd9e4: 681b         	ldr	r3, [r3]
  3bd9e6: 334c         	adds	r3, #0x4c
  3bd9e8: 681b         	ldr	r3, [r3]
  3bd9ea: 9903         	ldr	r1, [sp, #0xc]
  3bd9ec: 9a01         	ldr	r2, [sp, #0x4]
  3bd9ee: 32e8         	adds	r2, #0xe8
  3bd9f0: 4608         	mov	r0, r1
  3bd9f2: 4611         	mov	r1, r2
  3bd9f4: 4798         	blx	r3
  3bd9f6: 9b01         	ldr	r3, [sp, #0x4]
  3bd9f8: 681b         	ldr	r3, [r3]
  3bd9fa: 33c8         	adds	r3, #0xc8
  3bd9fc: 681b         	ldr	r3, [r3]
  3bd9fe: 9a01         	ldr	r2, [sp, #0x4]
  3bda00: 4610         	mov	r0, r2
  3bda02: 9903         	ldr	r1, [sp, #0xc]
  3bda04: 4798         	blx	r3
  3bda06: 9b01         	ldr	r3, [sp, #0x4]
  3bda08: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bda0c: 4618         	mov	r0, r3
  3bda0e: 9903         	ldr	r1, [sp, #0xc]
  3bda10: 9a00         	ldr	r2, [sp]
  3bda12: f1d6 ff91    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1d6f22
  3bda16: 9b03         	ldr	r3, [sp, #0xc]
  3bda18: 681b         	ldr	r3, [r3]
  3bda1a: 3390         	adds	r3, #0x90
  3bda1c: 681b         	ldr	r3, [r3]
  3bda1e: 9a03         	ldr	r2, [sp, #0xc]
  3bda20: 4610         	mov	r0, r2
  3bda22: 2100         	movs	r1, #0x0
  3bda24: 4798         	blx	r3
  3bda26: 9803         	ldr	r0, [sp, #0xc]
  3bda28: f7ff fef8    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x210
  3bda2c: 4603         	mov	r3, r0
  3bda2e: 681a         	ldr	r2, [r3]
  3bda30: f502 72d2    	add.w	r2, r2, #0x1a4
  3bda34: 6812         	ldr	r2, [r2]
  3bda36: 4618         	mov	r0, r3
  3bda38: 2100         	movs	r1, #0x0
  3bda3a: 4790         	blx	r2
  3bda3c: b007         	add	sp, #0x1c
  3bda3e: bd30         	pop	{r4, r5, pc}

// ==== Radar::removeAlert
//      file offset 0x3bda40 (= ELF address; Ghidra 0x3cda40), 64 bytes, Thumb-2
  3bda40: b500         	push	{lr}
  3bda42: b085         	sub	sp, #0x14
  3bda44: 9001         	str	r0, [sp, #0x4]
  3bda46: 9100         	str	r1, [sp]
  3bda48: 9b01         	ldr	r3, [sp, #0x4]
  3bda4a: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bda4e: 4618         	mov	r0, r3
  3bda50: 9900         	ldr	r1, [sp]
  3bda52: f1d6 fa4d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1d649a
  3bda56: 4603         	mov	r3, r0
  3bda58: 9303         	str	r3, [sp, #0xc]
  3bda5a: 9b01         	ldr	r3, [sp, #0x4]
  3bda5c: 681b         	ldr	r3, [r3]
  3bda5e: 33f4         	adds	r3, #0xf4
  3bda60: 681b         	ldr	r3, [r3]
  3bda62: 9a01         	ldr	r2, [sp, #0x4]
  3bda64: 4610         	mov	r0, r2
  3bda66: 9903         	ldr	r1, [sp, #0xc]
  3bda68: 2200         	movs	r2, #0x0
  3bda6a: 4798         	blx	r3
  3bda6c: 9b01         	ldr	r3, [sp, #0x4]
  3bda6e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bda72: 4618         	mov	r0, r3
  3bda74: 9900         	ldr	r1, [sp]
  3bda76: f1d7 fc1f    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x1d783e
  3bda7a: b005         	add	sp, #0x14
  3bda7c: f85d fb04    	ldr	pc, [sp], #4

// ==== Radar::findCollisionObjectById
//      file offset 0x3bda80 (= ELF address; Ghidra 0x3cda80), 88 bytes, Thumb-2
  3bda80: b510         	push	{r4, lr}
  3bda82: b084         	sub	sp, #0x10
  3bda84: 9001         	str	r0, [sp, #0x4]
  3bda86: 9100         	str	r1, [sp]
  3bda88: 4c10         	ldr	r4, [pc, #0x40]         @ 0x3bdacc <Radar::findCollisionObjectById(std::string)+0x4c>
  3bda8a: 447c         	add	r4, pc
  3bda8c: 2300         	movs	r3, #0x0
  3bda8e: 9303         	str	r3, [sp, #0xc]
  3bda90: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x3bdad0 <Radar::findCollisionObjectById(std::string)+0x50>
  3bda92: 58e3         	ldr	r3, [r4, r3]
  3bda94: 681b         	ldr	r3, [r3]
  3bda96: 4618         	mov	r0, r3
  3bda98: 9900         	ldr	r1, [sp]
  3bda9a: f1d6 fa29    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1d6452
  3bda9e: 4603         	mov	r3, r0
  3bdaa0: 9303         	str	r3, [sp, #0xc]
  3bdaa2: 9b03         	ldr	r3, [sp, #0xc]
  3bdaa4: 2b00         	cmp	r3, #0x0
  3bdaa6: d10d         	bne	0x3bdac4 <Radar::findCollisionObjectById(std::string)+0x44> @ imm = #0x1a
  3bdaa8: 4b0a         	ldr	r3, [pc, #0x28]         @ 0x3bdad4 <Radar::findCollisionObjectById(std::string)+0x54>
  3bdaaa: 58e3         	ldr	r3, [r4, r3]
  3bdaac: 681b         	ldr	r3, [r3]
  3bdaae: 2b00         	cmp	r3, #0x0
  3bdab0: d008         	beq	0x3bdac4 <Radar::findCollisionObjectById(std::string)+0x44> @ imm = #0x10
  3bdab2: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3bdad4 <Radar::findCollisionObjectById(std::string)+0x54>
  3bdab4: 58e3         	ldr	r3, [r4, r3]
  3bdab6: 681b         	ldr	r3, [r3]
  3bdab8: 4618         	mov	r0, r3
  3bdaba: 9900         	ldr	r1, [sp]
  3bdabc: f1d6 fa18    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1d6430
  3bdac0: 4603         	mov	r3, r0
  3bdac2: 9303         	str	r3, [sp, #0xc]
  3bdac4: 9b03         	ldr	r3, [sp, #0xc]
  3bdac6: 4618         	mov	r0, r3
  3bdac8: b004         	add	sp, #0x10
  3bdaca: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3bdacb); words below are literal-pool data ---
  3bdacc: 4f7e         	ldr	r7, [pc, #0x1f8]        @ 0x3bdcc8 <Radar::onRadarAlert(cocos2d::CCObject*)+0x1f0>
  3bdace: 0057         	lsls	r7, r2, #0x1
  3bdad0: d920         	bls	0x3bdb14 <Radar::onRadarAlert(cocos2d::CCObject*)+0x3c> @ imm = #0x40
  3bdad2: ffff d9f8    	<unknown>
  3bdad6: ffff b570    	<unknown>

// ==== Radar::onRadarAlert
//      file offset 0x3bdad8 (= ELF address; Ghidra 0x3cdad8), 660 bytes, Thumb-2
  3bdad8: b570         	push	{r4, r5, r6, lr}
  3bdada: b0a0         	sub	sp, #0x80
  3bdadc: 9005         	str	r0, [sp, #0x14]
  3bdade: 9104         	str	r1, [sp, #0x10]
  3bdae0: 4c9f         	ldr	r4, [pc, #0x27c]        @ 0x3bdd60 <Radar::onRadarAlert(cocos2d::CCObject*)+0x288>
  3bdae2: 447c         	add	r4, pc
  3bdae4: 9b04         	ldr	r3, [sp, #0x10]
  3bdae6: 9309         	str	r3, [sp, #0x24]
  3bdae8: 9809         	ldr	r0, [sp, #0x24]
  3bdaea: f1db ff1d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1dbe3a
  3bdaee: 4605         	mov	r5, r0
  3bdaf0: ab18         	add	r3, sp, #0x60
  3bdaf2: 4618         	mov	r0, r3
  3bdaf4: f3cc fc7e    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3cc8fc
  3bdaf8: aa1c         	add	r2, sp, #0x70
  3bdafa: ab18         	add	r3, sp, #0x60
  3bdafc: 4610         	mov	r0, r2
  3bdafe: 4629         	mov	r1, r5
  3bdb00: 461a         	mov	r2, r3
  3bdb02: f3f8 ffad    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f8f5a
  3bdb06: ab1c         	add	r3, sp, #0x70
  3bdb08: 9805         	ldr	r0, [sp, #0x14]
  3bdb0a: 4619         	mov	r1, r3
  3bdb0c: f7ff ffb8    	bl	0x3bda80 <Radar::findCollisionObjectById(std::string)> @ imm = #-0x90
  3bdb10: 4603         	mov	r3, r0
  3bdb12: 930a         	str	r3, [sp, #0x28]
  3bdb14: ab1c         	add	r3, sp, #0x70
  3bdb16: 4618         	mov	r0, r3
  3bdb18: f3f7 fefc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f7df8
  3bdb1c: ab18         	add	r3, sp, #0x60
  3bdb1e: 4618         	mov	r0, r3
  3bdb20: f3cc fc6c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3cc8d8
  3bdb24: 9b0a         	ldr	r3, [sp, #0x28]
  3bdb26: 2b00         	cmp	r3, #0x0
  3bdb28: d05f         	beq	0x3bdbea <Radar::onRadarAlert(cocos2d::CCObject*)+0x112> @ imm = #0xbe
  3bdb2a: 9b0a         	ldr	r3, [sp, #0x28]
  3bdb2c: 681b         	ldr	r3, [r3]
  3bdb2e: f503 73d6    	add.w	r3, r3, #0x1ac
  3bdb32: 681b         	ldr	r3, [r3]
  3bdb34: aa0c         	add	r2, sp, #0x30
  3bdb36: 4610         	mov	r0, r2
  3bdb38: 990a         	ldr	r1, [sp, #0x28]
  3bdb3a: 4798         	blx	r3
  3bdb3c: ab10         	add	r3, sp, #0x40
  3bdb3e: 4618         	mov	r0, r3
  3bdb40: ed9f 0b83    	vldr	d0, [pc, #524]          @ 0x3bdd50 <Radar::onRadarAlert(cocos2d::CCObject*)+0x278>
  3bdb44: ed9f 1b82    	vldr	d1, [pc, #520]          @ 0x3bdd50 <Radar::onRadarAlert(cocos2d::CCObject*)+0x278>
  3bdb48: f7fe fed2    	bl	0x3bc8f0 <ROCKET::detonate(cocos2d::CCObject*)+0x1e8> @ imm = #-0x125c
  3bdb4c: 466d         	mov	r5, sp
  3bdb4e: ab10         	add	r3, sp, #0x40
  3bdb50: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bdb52: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3bdb56: ab0c         	add	r3, sp, #0x30
  3bdb58: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bdb5a: f7ff f881    	bl	0x3bcc60 <ROCKET::detonate(cocos2d::CCObject*)+0x558> @ imm = #-0xefe
  3bdb5e: 4603         	mov	r3, r0
  3bdb60: f083 0301    	eor	r3, r3, #0x1
  3bdb64: b2db         	uxtb	r3, r3
  3bdb66: 2b00         	cmp	r3, #0x0
  3bdb68: d03f         	beq	0x3bdbea <Radar::onRadarAlert(cocos2d::CCObject*)+0x112> @ imm = #0x7e
  3bdb6a: 9b0a         	ldr	r3, [sp, #0x28]
  3bdb6c: 681b         	ldr	r3, [r3]
  3bdb6e: f503 73d6    	add.w	r3, r3, #0x1ac
  3bdb72: 681b         	ldr	r3, [r3]
  3bdb74: aa14         	add	r2, sp, #0x50
  3bdb76: 4610         	mov	r0, r2
  3bdb78: 990a         	ldr	r1, [sp, #0x28]
  3bdb7a: 4798         	blx	r3
  3bdb7c: 4b79         	ldr	r3, [pc, #0x1e4]        @ 0x3bdd64 <Radar::onRadarAlert(cocos2d::CCObject*)+0x28c>
  3bdb7e: 58e3         	ldr	r3, [r4, r3]
  3bdb80: edd3 7a00    	vldr	s15, [r3]
  3bdb84: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3bdb88: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x3bdd64 <Radar::onRadarAlert(cocos2d::CCObject*)+0x28c>
  3bdb8a: 58e3         	ldr	r3, [r4, r3]
  3bdb8c: edd3 7a01    	vldr	s15, [r3, #4]
  3bdb90: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bdb94: ab18         	add	r3, sp, #0x60
  3bdb96: 4618         	mov	r0, r3
  3bdb98: eeb0 0b46    	vmov.f64	d0, d6
  3bdb9c: eeb0 1b47    	vmov.f64	d1, d7
  3bdba0: f7fe fea6    	bl	0x3bc8f0 <ROCKET::detonate(cocos2d::CCObject*)+0x1e8> @ imm = #-0x12b4
  3bdba4: ab1c         	add	r3, sp, #0x70
  3bdba6: ed9d 4b14    	vldr	d4, [sp, #80]
  3bdbaa: ed9d 5b16    	vldr	d5, [sp, #88]
  3bdbae: ed9d 6b18    	vldr	d6, [sp, #96]
  3bdbb2: ed9d 7b1a    	vldr	d7, [sp, #104]
  3bdbb6: 4618         	mov	r0, r3
  3bdbb8: eeb0 0b44    	vmov.f64	d0, d4
  3bdbbc: eeb0 1b45    	vmov.f64	d1, d5
  3bdbc0: eeb0 2b46    	vmov.f64	d2, d6
  3bdbc4: eeb0 3b47    	vmov.f64	d3, d7
  3bdbc8: f7fe fea6    	bl	0x3bc918 <ROCKET::detonate(cocos2d::CCObject*)+0x210> @ imm = #-0x12b4
  3bdbcc: ab1c         	add	r3, sp, #0x70
  3bdbce: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3bdbd0: f319 fa72    	bl	0x6d70b8 <cpvlength>    @ imm = #0x3194e4
  3bdbd4: ec41 0b16    	vmov	d6, r0, r1
  3bdbd8: ed9f 7b5f    	vldr	d7, [pc, #380]          @ 0x3bdd58 <Radar::onRadarAlert(cocos2d::CCObject*)+0x280>
  3bdbdc: eeb4 6bc7    	vcmpe.f64	d6, d7
  3bdbe0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bdbe4: d501         	bpl	0x3bdbea <Radar::onRadarAlert(cocos2d::CCObject*)+0x112> @ imm = #0x2
  3bdbe6: 2301         	movs	r3, #0x1
  3bdbe8: e000         	b	0x3bdbec <Radar::onRadarAlert(cocos2d::CCObject*)+0x114> @ imm = #0x0
  3bdbea: 2300         	movs	r3, #0x0
  3bdbec: 2b00         	cmp	r3, #0x0
  3bdbee: f000 80ac    	beq.w	0x3bdd4a <Radar::onRadarAlert(cocos2d::CCObject*)+0x272> @ imm = #0x158
  3bdbf2: 9b05         	ldr	r3, [sp, #0x14]
  3bdbf4: f8d3 50e4    	ldr.w	r5, [r3, #0xe4]
  3bdbf8: 9809         	ldr	r0, [sp, #0x24]
  3bdbfa: f1db fe95    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1dbd2a
  3bdbfe: 4606         	mov	r6, r0
  3bdc00: ab07         	add	r3, sp, #0x1c
  3bdc02: 4618         	mov	r0, r3
  3bdc04: f3cc fbf6    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3cc7ec
  3bdc08: aa08         	add	r2, sp, #0x20
  3bdc0a: ab07         	add	r3, sp, #0x1c
  3bdc0c: 4610         	mov	r0, r2
  3bdc0e: 4631         	mov	r1, r6
  3bdc10: 461a         	mov	r2, r3
  3bdc12: f3f8 ff25    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f8e4a
  3bdc16: ab08         	add	r3, sp, #0x20
  3bdc18: 4628         	mov	r0, r5
  3bdc1a: 4619         	mov	r1, r3
  3bdc1c: f1d6 f968    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1d62d0
  3bdc20: 4603         	mov	r3, r0
  3bdc22: 930b         	str	r3, [sp, #0x2c]
  3bdc24: ab08         	add	r3, sp, #0x20
  3bdc26: 4618         	mov	r0, r3
  3bdc28: f3f7 fe74    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f7ce8
  3bdc2c: ab07         	add	r3, sp, #0x1c
  3bdc2e: 4618         	mov	r0, r3
  3bdc30: f3cc fbe4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3cc7c8
  3bdc34: 9b0b         	ldr	r3, [sp, #0x2c]
  3bdc36: 2b00         	cmp	r3, #0x0
  3bdc38: d070         	beq	0x3bdd1c <Radar::onRadarAlert(cocos2d::CCObject*)+0x244> @ imm = #0xe0
  3bdc3a: 9b0b         	ldr	r3, [sp, #0x2c]
  3bdc3c: 681b         	ldr	r3, [r3]
  3bdc3e: 3390         	adds	r3, #0x90
  3bdc40: 681b         	ldr	r3, [r3]
  3bdc42: 9a0b         	ldr	r2, [sp, #0x2c]
  3bdc44: 4610         	mov	r0, r2
  3bdc46: 2101         	movs	r1, #0x1
  3bdc48: 4798         	blx	r3
  3bdc4a: 980b         	ldr	r0, [sp, #0x2c]
  3bdc4c: f7ff fde6    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x434
  3bdc50: 4603         	mov	r3, r0
  3bdc52: 681a         	ldr	r2, [r3]
  3bdc54: f502 72d2    	add.w	r2, r2, #0x1a4
  3bdc58: 6812         	ldr	r2, [r2]
  3bdc5a: 4618         	mov	r0, r3
  3bdc5c: 21c8         	movs	r1, #0xc8
  3bdc5e: 4790         	blx	r2
  3bdc60: 4b41         	ldr	r3, [pc, #0x104]        @ 0x3bdd68 <Radar::onRadarAlert(cocos2d::CCObject*)+0x290>
  3bdc62: 58e3         	ldr	r3, [r4, r3]
  3bdc64: 681b         	ldr	r3, [r3]
  3bdc66: 681b         	ldr	r3, [r3]
  3bdc68: f503 7340    	add.w	r3, r3, #0x300
  3bdc6c: 681d         	ldr	r5, [r3]
  3bdc6e: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x3bdd68 <Radar::onRadarAlert(cocos2d::CCObject*)+0x290>
  3bdc70: 58e3         	ldr	r3, [r4, r3]
  3bdc72: 681c         	ldr	r4, [r3]
  3bdc74: 9b0a         	ldr	r3, [sp, #0x28]
  3bdc76: 681b         	ldr	r3, [r3]
  3bdc78: f503 73e2    	add.w	r3, r3, #0x1c4
  3bdc7c: 681b         	ldr	r3, [r3]
  3bdc7e: 980a         	ldr	r0, [sp, #0x28]
  3bdc80: 4798         	blx	r3
  3bdc82: 4603         	mov	r3, r0
  3bdc84: 4620         	mov	r0, r4
  3bdc86: 4619         	mov	r1, r3
  3bdc88: 47a8         	blx	r5
  3bdc8a: 4603         	mov	r3, r0
  3bdc8c: 2b00         	cmp	r3, #0x0
  3bdc8e: d022         	beq	0x3bdcd6 <Radar::onRadarAlert(cocos2d::CCObject*)+0x1fe> @ imm = #0x44
  3bdc90: 980b         	ldr	r0, [sp, #0x2c]
  3bdc92: f7ff fdc3    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x47a
  3bdc96: 4604         	mov	r4, r0
  3bdc98: 6823         	ldr	r3, [r4]
  3bdc9a: f503 73de    	add.w	r3, r3, #0x1bc
  3bdc9e: 681d         	ldr	r5, [r3]
  3bdca0: 2000         	movs	r0, #0x0
  3bdca2: 21ff         	movs	r1, #0xff
  3bdca4: 2200         	movs	r2, #0x0
  3bdca6: f7fe fdd5    	bl	0x3bc854 <ROCKET::detonate(cocos2d::CCObject*)+0x14c> @ imm = #-0x1456
  3bdcaa: 4603         	mov	r3, r0
  3bdcac: 461a         	mov	r2, r3
  3bdcae: f88d 2020    	strb.w	r2, [sp, #0x20]
  3bdcb2: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3bdcb6: f88d 2021    	strb.w	r2, [sp, #0x21]
  3bdcba: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3bdcbe: f88d 3022    	strb.w	r3, [sp, #0x22]
  3bdcc2: ab08         	add	r3, sp, #0x20
  3bdcc4: 4620         	mov	r0, r4
  3bdcc6: 4619         	mov	r1, r3
  3bdcc8: 47a8         	blx	r5
  3bdcca: 980b         	ldr	r0, [sp, #0x2c]
  3bdccc: f04f 517e    	mov.w	r1, #0x3f800000
  3bdcd0: f7ff fd92    	bl	0x3bd7f8 <ArrowAlert::setArrowScale(float)> @ imm = #-0x4dc
  3bdcd4: e022         	b	0x3bdd1c <Radar::onRadarAlert(cocos2d::CCObject*)+0x244> @ imm = #0x44
  3bdcd6: 980b         	ldr	r0, [sp, #0x2c]
  3bdcd8: f7ff fda0    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x4c0
  3bdcdc: 4604         	mov	r4, r0
  3bdcde: 6823         	ldr	r3, [r4]
  3bdce0: f503 73de    	add.w	r3, r3, #0x1bc
  3bdce4: 681d         	ldr	r5, [r3]
  3bdce6: 20ff         	movs	r0, #0xff
  3bdce8: 2100         	movs	r1, #0x0
  3bdcea: 2200         	movs	r2, #0x0
  3bdcec: f7fe fdb2    	bl	0x3bc854 <ROCKET::detonate(cocos2d::CCObject*)+0x14c> @ imm = #-0x149c
  3bdcf0: 4603         	mov	r3, r0
  3bdcf2: 461a         	mov	r2, r3
  3bdcf4: f88d 2020    	strb.w	r2, [sp, #0x20]
  3bdcf8: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3bdcfc: f88d 2021    	strb.w	r2, [sp, #0x21]
  3bdd00: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3bdd04: f88d 3022    	strb.w	r3, [sp, #0x22]
  3bdd08: ab08         	add	r3, sp, #0x20
  3bdd0a: 4620         	mov	r0, r4
  3bdd0c: 4619         	mov	r1, r3
  3bdd0e: 47a8         	blx	r5
  3bdd10: 980b         	ldr	r0, [sp, #0x2c]
  3bdd12: f04f 517e    	mov.w	r1, #0x3f800000
  3bdd16: f7ff fd6f    	bl	0x3bd7f8 <ArrowAlert::setArrowScale(float)> @ imm = #-0x522
  3bdd1a: e016         	b	0x3bdd4a <Radar::onRadarAlert(cocos2d::CCObject*)+0x272> @ imm = #0x2c
  3bdd1c: e015         	b	0x3bdd4a <Radar::onRadarAlert(cocos2d::CCObject*)+0x272> @ imm = #0x2a
  3bdd1e: ab1c         	add	r3, sp, #0x70
  3bdd20: 4618         	mov	r0, r3
  3bdd22: f3f7 fdf7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f7bee
  3bdd26: e7ff         	b	0x3bdd28 <Radar::onRadarAlert(cocos2d::CCObject*)+0x250> @ imm = #-0x2
  3bdd28: ab18         	add	r3, sp, #0x60
  3bdd2a: 4618         	mov	r0, r3
  3bdd2c: f3cc fb66    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3cc6cc
  3bdd30: f3ca f9bc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ca378
  3bdd34: ab08         	add	r3, sp, #0x20
  3bdd36: 4618         	mov	r0, r3
  3bdd38: f3f7 fdec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f7bd8
  3bdd3c: e7ff         	b	0x3bdd3e <Radar::onRadarAlert(cocos2d::CCObject*)+0x266> @ imm = #-0x2
  3bdd3e: ab07         	add	r3, sp, #0x1c
  3bdd40: 4618         	mov	r0, r3
  3bdd42: f3cc fb5b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3cc6b6
  3bdd46: f3ca f9b1    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ca362
  3bdd4a: b020         	add	sp, #0x80
  3bdd4c: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3bdd4d); words below are literal-pool data ---
  3bdd4e: bf00         	nop
  3bdd50: 0000         	movs	r0, r0
  3bdd52: 0000         	movs	r0, r0
  3bdd54: 0000         	movs	r0, r0
  3bdd56: 4059         	eors	r1, r3
  3bdd58: 0000         	movs	r0, r0
  3bdd5a: 0000         	movs	r0, r0
  3bdd5c: c000         	<unknown>
  3bdd5e: 4092         	lsls	r2, r2
  3bdd60: 4f26         	ldr	r7, [pc, #0x98]         @ 0x3bddfc <Radar::updateStep(float)+0x8c>
  3bdd62: 0057         	lsls	r7, r2, #0x1
  3bdd64: d728         	bvc	0x3bddb8 <Radar::updateStep(float)+0x48> @ imm = #0x50
  3bdd66: ffff d784    	<unknown>
  3bdd6a: ffff f3af    	<unknown>

// ==== Radar::updateStep
//      file offset 0x3bdd70 (= ELF address; Ghidra 0x3cdd70), 1360 bytes, Thumb-2
  3bdd70: b570         	push	{r4, r5, r6, lr}
  3bdd72: ed2d 8b02    	vpush	{d8}
  3bdd76: b0ac         	sub	sp, #0xb0
  3bdd78: 9005         	str	r0, [sp, #0x14]
  3bdd7a: 9104         	str	r1, [sp, #0x10]
  3bdd7c: 4c8f         	ldr	r4, [pc, #0x23c]        @ 0x3bdfbc <Radar::updateStep(float)+0x24c>
  3bdd7e: 447c         	add	r4, pc
  3bdd80: 2300         	movs	r3, #0x0
  3bdd82: 930b         	str	r3, [sp, #0x2c]
  3bdd84: 2300         	movs	r3, #0x0
  3bdd86: 9309         	str	r3, [sp, #0x24]
  3bdd88: 2300         	movs	r3, #0x0
  3bdd8a: 930a         	str	r3, [sp, #0x28]
  3bdd8c: 9b05         	ldr	r3, [sp, #0x14]
  3bdd8e: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bdd92: 2b00         	cmp	r3, #0x0
  3bdd94: d00a         	beq	0x3bddac <Radar::updateStep(float)+0x3c> @ imm = #0x14
  3bdd96: 9b05         	ldr	r3, [sp, #0x14]
  3bdd98: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bdd9c: 4618         	mov	r0, r3
  3bdd9e: f1d5 ff65    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1d5eca
  3bdda2: 4603         	mov	r3, r0
  3bdda4: 2b00         	cmp	r3, #0x0
  3bdda6: d001         	beq	0x3bddac <Radar::updateStep(float)+0x3c> @ imm = #0x2
  3bdda8: 2301         	movs	r3, #0x1
  3bddaa: e000         	b	0x3bddae <Radar::updateStep(float)+0x3e> @ imm = #0x0
  3bddac: 2300         	movs	r3, #0x0
  3bddae: 2b00         	cmp	r3, #0x0
  3bddb0: f000 8270    	beq.w	0x3be294 <Radar::updateStep(float)+0x524> @ imm = #0x4e0
  3bddb4: 9b05         	ldr	r3, [sp, #0x14]
  3bddb6: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bddba: 695b         	ldr	r3, [r3, #0x14]
  3bddbc: 9309         	str	r3, [sp, #0x24]
  3bddbe: 9b05         	ldr	r3, [sp, #0x14]
  3bddc0: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bddc4: 695b         	ldr	r3, [r3, #0x14]
  3bddc6: 2b00         	cmp	r3, #0x0
  3bddc8: d006         	beq	0x3bddd8 <Radar::updateStep(float)+0x68> @ imm = #0xc
  3bddca: 9b05         	ldr	r3, [sp, #0x14]
  3bddcc: f8d3 30e4    	ldr.w	r3, [r3, #0xe4]
  3bddd0: 695b         	ldr	r3, [r3, #0x14]
  3bddd2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3bddd6: e000         	b	0x3bddda <Radar::updateStep(float)+0x6a> @ imm = #0x0
  3bddd8: 2300         	movs	r3, #0x0
  3bddda: 930a         	str	r3, [sp, #0x28]
  3bdddc: e244         	b	0x3be268 <Radar::updateStep(float)+0x4f8> @ imm = #0x488
  3bddde: 9809         	ldr	r0, [sp, #0x24]
  3bdde0: f7b8 fb52    	bl	0x376488 <cocos2d::CCDictElement::getStrKey() const> @ imm = #-0x4795c
  3bdde4: 4605         	mov	r5, r0
  3bdde6: ab14         	add	r3, sp, #0x50
  3bdde8: 4618         	mov	r0, r3
  3bddea: f3cc fb03    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3cc606
  3bddee: aa08         	add	r2, sp, #0x20
  3bddf0: ab14         	add	r3, sp, #0x50
  3bddf2: 4610         	mov	r0, r2
  3bddf4: 4629         	mov	r1, r5
  3bddf6: 461a         	mov	r2, r3
  3bddf8: f3f8 fe32    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3f8c64
  3bddfc: ab14         	add	r3, sp, #0x50
  3bddfe: 4618         	mov	r0, r3
  3bde00: f3cc fafc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3cc5f8
  3bde04: 9809         	ldr	r0, [sp, #0x24]
  3bde06: f740 fc15    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0xbf7d6
  3bde0a: 4603         	mov	r3, r0
  3bde0c: 930b         	str	r3, [sp, #0x2c]
  3bde0e: aa14         	add	r2, sp, #0x50
  3bde10: ab08         	add	r3, sp, #0x20
  3bde12: 4610         	mov	r0, r2
  3bde14: 4619         	mov	r1, r3
  3bde16: f3f8 fb67    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x3f86ce
  3bde1a: ab14         	add	r3, sp, #0x50
  3bde1c: 9805         	ldr	r0, [sp, #0x14]
  3bde1e: 4619         	mov	r1, r3
  3bde20: f7ff fe2e    	bl	0x3bda80 <Radar::findCollisionObjectById(std::string)> @ imm = #-0x3a4
  3bde24: 4603         	mov	r3, r0
  3bde26: 930c         	str	r3, [sp, #0x30]
  3bde28: ab14         	add	r3, sp, #0x50
  3bde2a: 4618         	mov	r0, r3
  3bde2c: f3f7 fd72    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f7ae4
  3bde30: 9b0b         	ldr	r3, [sp, #0x2c]
  3bde32: 2b00         	cmp	r3, #0x0
  3bde34: f000 8209    	beq.w	0x3be24a <Radar::updateStep(float)+0x4da> @ imm = #0x412
  3bde38: 9b0b         	ldr	r3, [sp, #0x2c]
  3bde3a: 681b         	ldr	r3, [r3]
  3bde3c: 339c         	adds	r3, #0x9c
  3bde3e: 681b         	ldr	r3, [r3]
  3bde40: 9a0b         	ldr	r2, [sp, #0x2c]
  3bde42: 4610         	mov	r0, r2
  3bde44: 4798         	blx	r3
  3bde46: ee07 0a10    	vmov	s14, r0
  3bde4a: eddf 7a59    	vldr	s15, [pc, #356]         @ 0x3bdfb0 <Radar::updateStep(float)+0x240>
  3bde4e: ee67 7a27    	vmul.f32	s15, s14, s15
  3bde52: eef1 7a67    	vneg.f32	s15, s15
  3bde56: edcd 7a0d    	vstr	s15, [sp, #52]
  3bde5a: eddd 7a0d    	vldr	s15, [sp, #52]
  3bde5e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bde62: ec51 0b17    	vmov	r0, r1, d7
  3bde66: f718 e850    	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0xe7f60
  3bde6a: ec41 0b17    	vmov	d7, r0, r1
  3bde6e: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  3bde72: eddd 7a0d    	vldr	s15, [sp, #52]
  3bde76: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3bde7a: ec51 0b17    	vmov	r0, r1, d7
  3bde7e: f718 e84a    	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0xe7f6c
  3bde82: ec41 0b17    	vmov	d7, r0, r1
  3bde86: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3bde8a: ab14         	add	r3, sp, #0x50
  3bde8c: 4618         	mov	r0, r3
  3bde8e: ee18 1a10    	vmov	r1, s16
  3bde92: ee17 2a90    	vmov	r2, s15
  3bde96: f1d4 ff2b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1d4e56
  3bde9a: 4b49         	ldr	r3, [pc, #0x124]        @ 0x3bdfc0 <Radar::updateStep(float)+0x250>
  3bde9c: 58e3         	ldr	r3, [r4, r3]
  3bde9e: ed93 7a01    	vldr	s14, [r3, #4]
  3bdea2: eef0 7a08    	vmov.f32	s15, #3.000000e+00
  3bdea6: ee27 7a27    	vmul.f32	s14, s14, s15
  3bdeaa: eef2 7a00    	vmov.f32	s15, #8.000000e+00
  3bdeae: eec7 7a27    	vdiv.f32	s15, s14, s15
  3bdeb2: aa12         	add	r2, sp, #0x48
  3bdeb4: ab14         	add	r3, sp, #0x50
  3bdeb6: 4610         	mov	r0, r2
  3bdeb8: 4619         	mov	r1, r3
  3bdeba: eeb0 0a67    	vmov.f32	s0, s15
  3bdebe: f7fe fd07    	bl	0x3bc8d0 <ROCKET::detonate(cocos2d::CCObject*)+0x1c8> @ imm = #-0x15f2
  3bdec2: 9b0b         	ldr	r3, [sp, #0x2c]
  3bdec4: 681b         	ldr	r3, [r3]
  3bdec6: 334c         	adds	r3, #0x4c
  3bdec8: 681d         	ldr	r5, [r3]
  3bdeca: 9e0b         	ldr	r6, [sp, #0x2c]
  3bdecc: 9b05         	ldr	r3, [sp, #0x14]
  3bdece: f103 02e8    	add.w	r2, r3, #0xe8
  3bded2: a914         	add	r1, sp, #0x50
  3bded4: ab12         	add	r3, sp, #0x48
  3bded6: 4608         	mov	r0, r1
  3bded8: 4611         	mov	r1, r2
  3bdeda: 461a         	mov	r2, r3
  3bdedc: f7fe fce8    	bl	0x3bc8b0 <ROCKET::detonate(cocos2d::CCObject*)+0x1a8> @ imm = #-0x1630
  3bdee0: ab14         	add	r3, sp, #0x50
  3bdee2: 4630         	mov	r0, r6
  3bdee4: 4619         	mov	r1, r3
  3bdee6: 47a8         	blx	r5
  3bdee8: 9b0b         	ldr	r3, [sp, #0x2c]
  3bdeea: 681b         	ldr	r3, [r3]
  3bdeec: 3340         	adds	r3, #0x40
  3bdeee: 681d         	ldr	r5, [r3]
  3bdef0: 9e0b         	ldr	r6, [sp, #0x2c]
  3bdef2: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3bdfc4 <Radar::updateStep(float)+0x254>
  3bdef4: 58e3         	ldr	r3, [r4, r3]
  3bdef6: 681b         	ldr	r3, [r3]
  3bdef8: 681b         	ldr	r3, [r3]
  3bdefa: f503 7332    	add.w	r3, r3, #0x2c8
  3bdefe: 681b         	ldr	r3, [r3]
  3bdf00: 4a30         	ldr	r2, [pc, #0xc0]         @ 0x3bdfc4 <Radar::updateStep(float)+0x254>
  3bdf02: 58a2         	ldr	r2, [r4, r2]
  3bdf04: 6812         	ldr	r2, [r2]
  3bdf06: 4610         	mov	r0, r2
  3bdf08: 4798         	blx	r3
  3bdf0a: ee08 0a10    	vmov	s16, r0
  3bdf0e: 980b         	ldr	r0, [sp, #0x2c]
  3bdf10: f7ff fc7c    	bl	0x3bd80c <ArrowAlert::getArrowScale()> @ imm = #-0x708
  3bdf14: ee07 0a90    	vmov	s15, r0
  3bdf18: ee68 7a27    	vmul.f32	s15, s16, s15
  3bdf1c: 4630         	mov	r0, r6
  3bdf1e: ee17 1a90    	vmov	r1, s15
  3bdf22: 47a8         	blx	r5
  3bdf24: 980b         	ldr	r0, [sp, #0x2c]
  3bdf26: f7ff fc71    	bl	0x3bd80c <ArrowAlert::getArrowScale()> @ imm = #-0x71e
  3bdf2a: ee07 0a10    	vmov	s14, r0
  3bdf2e: eddf 7a21    	vldr	s15, [pc, #132]         @ 0x3bdfb4 <Radar::updateStep(float)+0x244>
  3bdf32: ee77 7a67    	vsub.f32	s15, s14, s15
  3bdf36: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3bdf3a: ed9f 7b1b    	vldr	d7, [pc, #108]          @ 0x3bdfa8 <Radar::updateStep(float)+0x238>
  3bdf3e: eeb4 6bc7    	vcmpe.f64	d6, d7
  3bdf42: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3bdf46: dd09         	ble	0x3bdf5c <Radar::updateStep(float)+0x1ec> @ imm = #0x12
  3bdf48: 980b         	ldr	r0, [sp, #0x2c]
  3bdf4a: f7ff fc5f    	bl	0x3bd80c <ArrowAlert::getArrowScale()> @ imm = #-0x742
  3bdf4e: ee07 0a10    	vmov	s14, r0
  3bdf52: eddf 7a18    	vldr	s15, [pc, #96]          @ 0x3bdfb4 <Radar::updateStep(float)+0x244>
  3bdf56: ee77 7a67    	vsub.f32	s15, s14, s15
  3bdf5a: e001         	b	0x3bdf60 <Radar::updateStep(float)+0x1f0> @ imm = #0x2
  3bdf5c: eddf 7a16    	vldr	s15, [pc, #88]          @ 0x3bdfb8 <Radar::updateStep(float)+0x248>
  3bdf60: edcd 7a0e    	vstr	s15, [sp, #56]
  3bdf64: 980b         	ldr	r0, [sp, #0x2c]
  3bdf66: 990e         	ldr	r1, [sp, #0x38]
  3bdf68: f7ff fc46    	bl	0x3bd7f8 <ArrowAlert::setArrowScale(float)> @ imm = #-0x774
  3bdf6c: 980b         	ldr	r0, [sp, #0x2c]
  3bdf6e: f7ff fc55    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x756
  3bdf72: 4603         	mov	r3, r0
  3bdf74: 681a         	ldr	r2, [r3]
  3bdf76: f502 72ce    	add.w	r2, r2, #0x19c
  3bdf7a: 6812         	ldr	r2, [r2]
  3bdf7c: 4618         	mov	r0, r3
  3bdf7e: 4790         	blx	r2
  3bdf80: 4603         	mov	r3, r0
  3bdf82: 3b05         	subs	r3, #0x5
  3bdf84: 2b00         	cmp	r3, #0x0
  3bdf86: dd1f         	ble	0x3bdfc8 <Radar::updateStep(float)+0x258> @ imm = #0x3e
  3bdf88: 980b         	ldr	r0, [sp, #0x2c]
  3bdf8a: f7ff fc47    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x772
  3bdf8e: 4603         	mov	r3, r0
  3bdf90: 681a         	ldr	r2, [r3]
  3bdf92: f502 72ce    	add.w	r2, r2, #0x19c
  3bdf96: 6812         	ldr	r2, [r2]
  3bdf98: 4618         	mov	r0, r3
  3bdf9a: 4790         	blx	r2
  3bdf9c: 4603         	mov	r3, r0
  3bdf9e: 3b05         	subs	r3, #0x5
  3bdfa0: e013         	b	0x3bdfca <Radar::updateStep(float)+0x25a> @ imm = #0x26
  3bdfa2: bf00         	nop
  3bdfa4: f3af 8000    	nop.w
  3bdfa8: 999a         	ldr	r1, [sp, #0x268]
  3bdfaa: 9999         	ldr	r1, [sp, #0x264]
  3bdfac: 9999         	ldr	r1, [sp, #0x264]
  3bdfae: 3fe9         	subs	r7, #0xe9
  3bdfb0: fa35 3c8e    	<unknown>
  3bdfb4: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  3bdfb6: 3d4c         	subs	r5, #0x4c
  3bdfb8: cccd         	ldm	r4!, {r0, r2, r3, r6, r7}
  3bdfba: 3f4c         	subs	r7, #0x4c
  3bdfbc: 4c8a         	ldr	r4, [pc, #0x228]        @ 0x3be1e8 <Radar::updateStep(float)+0x478>
  3bdfbe: 0057         	lsls	r7, r2, #0x1
  3bdfc0: d724         	bvc	0x3be00c <Radar::updateStep(float)+0x29c> @ imm = #0x48
  3bdfc2: ffff d784    	<unknown>
  3bdfc6: ffff 2300    	<unknown>
  3bdfca: 930f         	str	r3, [sp, #0x3c]
  3bdfcc: 980b         	ldr	r0, [sp, #0x2c]
  3bdfce: f7ff fc25    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x7b6
  3bdfd2: 4603         	mov	r3, r0
  3bdfd4: 681a         	ldr	r2, [r3]
  3bdfd6: f502 72d2    	add.w	r2, r2, #0x1a4
  3bdfda: 6812         	ldr	r2, [r2]
  3bdfdc: 990f         	ldr	r1, [sp, #0x3c]
  3bdfde: b2c9         	uxtb	r1, r1
  3bdfe0: 4618         	mov	r0, r3
  3bdfe2: 4790         	blx	r2
  3bdfe4: 980b         	ldr	r0, [sp, #0x2c]
  3bdfe6: f7ff fc19    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x7ce
  3bdfea: 4603         	mov	r3, r0
  3bdfec: 681a         	ldr	r2, [r3]
  3bdfee: f502 72ce    	add.w	r2, r2, #0x19c
  3bdff2: 6812         	ldr	r2, [r2]
  3bdff4: 4618         	mov	r0, r3
  3bdff6: 4790         	blx	r2
  3bdff8: 4603         	mov	r3, r0
  3bdffa: 2b00         	cmp	r3, #0x0
  3bdffc: bf14         	ite	ne
  3bdffe: 2300         	movne	r3, #0x0
  3be000: 2301         	moveq	r3, #0x1
  3be002: b2db         	uxtb	r3, r3
  3be004: 2b00         	cmp	r3, #0x0
  3be006: d007         	beq	0x3be018 <Radar::updateStep(float)+0x2a8> @ imm = #0xe
  3be008: 9b0b         	ldr	r3, [sp, #0x2c]
  3be00a: 681b         	ldr	r3, [r3]
  3be00c: 3390         	adds	r3, #0x90
  3be00e: 681b         	ldr	r3, [r3]
  3be010: 9a0b         	ldr	r2, [sp, #0x2c]
  3be012: 4610         	mov	r0, r2
  3be014: 2100         	movs	r1, #0x0
  3be016: 4798         	blx	r3
  3be018: 9b0c         	ldr	r3, [sp, #0x30]
  3be01a: 2b00         	cmp	r3, #0x0
  3be01c: f000 8115    	beq.w	0x3be24a <Radar::updateStep(float)+0x4da> @ imm = #0x22a
  3be020: 9b0c         	ldr	r3, [sp, #0x30]
  3be022: 681b         	ldr	r3, [r3]
  3be024: f503 73d6    	add.w	r3, r3, #0x1ac
  3be028: 681b         	ldr	r3, [r3]
  3be02a: aa18         	add	r2, sp, #0x60
  3be02c: 4610         	mov	r0, r2
  3be02e: 990c         	ldr	r1, [sp, #0x30]
  3be030: 4798         	blx	r3
  3be032: 4ba1         	ldr	r3, [pc, #0x284]        @ 0x3be2b8 <Radar::updateStep(float)+0x548>
  3be034: 58e3         	ldr	r3, [r4, r3]
  3be036: edd3 7a00    	vldr	s15, [r3]
  3be03a: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3be03e: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x3be2b8 <Radar::updateStep(float)+0x548>
  3be040: 58e3         	ldr	r3, [r4, r3]
  3be042: edd3 7a01    	vldr	s15, [r3, #4]
  3be046: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3be04a: ab1c         	add	r3, sp, #0x70
  3be04c: 4618         	mov	r0, r3
  3be04e: eeb0 0b46    	vmov.f64	d0, d6
  3be052: eeb0 1b47    	vmov.f64	d1, d7
  3be056: f7fe fc4b    	bl	0x3bc8f0 <ROCKET::detonate(cocos2d::CCObject*)+0x1e8> @ imm = #-0x176a
  3be05a: ab14         	add	r3, sp, #0x50
  3be05c: ed9d 4b18    	vldr	d4, [sp, #96]
  3be060: ed9d 5b1a    	vldr	d5, [sp, #104]
  3be064: ed9d 6b1c    	vldr	d6, [sp, #112]
  3be068: ed9d 7b1e    	vldr	d7, [sp, #120]
  3be06c: 4618         	mov	r0, r3
  3be06e: eeb0 0b44    	vmov.f64	d0, d4
  3be072: eeb0 1b45    	vmov.f64	d1, d5
  3be076: eeb0 2b46    	vmov.f64	d2, d6
  3be07a: eeb0 3b47    	vmov.f64	d3, d7
  3be07e: f7fe fc4b    	bl	0x3bc918 <ROCKET::detonate(cocos2d::CCObject*)+0x210> @ imm = #-0x176a
  3be082: ab14         	add	r3, sp, #0x50
  3be084: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3be086: f7fe fca3    	bl	0x3bc9d0 <ROCKET::detonate(cocos2d::CCObject*)+0x2c8> @ imm = #-0x16ba
  3be08a: ee07 0a90    	vmov	s15, r0
  3be08e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3be092: ed8d 7b10    	vstr	d7, [sp, #64]
  3be096: 9b0b         	ldr	r3, [sp, #0x2c]
  3be098: 681b         	ldr	r3, [r3]
  3be09a: 3398         	adds	r3, #0x98
  3be09c: 681b         	ldr	r3, [r3]
  3be09e: 9a0b         	ldr	r2, [sp, #0x2c]
  3be0a0: ed9d 7b10    	vldr	d7, [sp, #64]
  3be0a4: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3be0a8: 4610         	mov	r0, r2
  3be0aa: ee17 1a90    	vmov	r1, s15
  3be0ae: 4798         	blx	r3
  3be0b0: 9b0c         	ldr	r3, [sp, #0x30]
  3be0b2: 681b         	ldr	r3, [r3]
  3be0b4: f503 73d8    	add.w	r3, r3, #0x1b0
  3be0b8: 681b         	ldr	r3, [r3]
  3be0ba: aa20         	add	r2, sp, #0x80
  3be0bc: 4610         	mov	r0, r2
  3be0be: 990c         	ldr	r1, [sp, #0x30]
  3be0c0: 4798         	blx	r3
  3be0c2: ab20         	add	r3, sp, #0x80
  3be0c4: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3be0c6: f318 fff7    	bl	0x6d70b8 <cpvlength>    @ imm = #0x318fee
  3be0ca: ec41 0b16    	vmov	d6, r0, r1
  3be0ce: ed9f 7b74    	vldr	d7, [pc, #464]          @ 0x3be2a0 <Radar::updateStep(float)+0x530>
  3be0d2: eeb4 6bc7    	vcmpe.f64	d6, d7
  3be0d6: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3be0da: dd2e         	ble	0x3be13a <Radar::updateStep(float)+0x3ca> @ imm = #0x5c
  3be0dc: ab14         	add	r3, sp, #0x50
  3be0de: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3be0e0: f318 ffea    	bl	0x6d70b8 <cpvlength>    @ imm = #0x318fd4
  3be0e4: ec41 0b16    	vmov	d6, r0, r1
  3be0e8: ed9f 7b6f    	vldr	d7, [pc, #444]          @ 0x3be2a8 <Radar::updateStep(float)+0x538>
  3be0ec: eeb4 6bc7    	vcmpe.f64	d6, d7
  3be0f0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3be0f4: d521         	bpl	0x3be13a <Radar::updateStep(float)+0x3ca> @ imm = #0x42
  3be0f6: 9b0c         	ldr	r3, [sp, #0x30]
  3be0f8: 681b         	ldr	r3, [r3]
  3be0fa: f503 73d6    	add.w	r3, r3, #0x1ac
  3be0fe: 681b         	ldr	r3, [r3]
  3be100: aa24         	add	r2, sp, #0x90
  3be102: 4610         	mov	r0, r2
  3be104: 990c         	ldr	r1, [sp, #0x30]
  3be106: 4798         	blx	r3
  3be108: ab28         	add	r3, sp, #0xa0
  3be10a: 4618         	mov	r0, r3
  3be10c: ed9f 0b68    	vldr	d0, [pc, #416]          @ 0x3be2b0 <Radar::updateStep(float)+0x540>
  3be110: ed9f 1b67    	vldr	d1, [pc, #412]          @ 0x3be2b0 <Radar::updateStep(float)+0x540>
  3be114: f7fe fbec    	bl	0x3bc8f0 <ROCKET::detonate(cocos2d::CCObject*)+0x1e8> @ imm = #-0x1828
  3be118: 466d         	mov	r5, sp
  3be11a: ab28         	add	r3, sp, #0xa0
  3be11c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3be11e: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  3be122: ab24         	add	r3, sp, #0x90
  3be124: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3be126: f7fe fd9b    	bl	0x3bcc60 <ROCKET::detonate(cocos2d::CCObject*)+0x558> @ imm = #-0x14ca
  3be12a: 4603         	mov	r3, r0
  3be12c: f083 0301    	eor	r3, r3, #0x1
  3be130: b2db         	uxtb	r3, r3
  3be132: 2b00         	cmp	r3, #0x0
  3be134: d001         	beq	0x3be13a <Radar::updateStep(float)+0x3ca> @ imm = #0x2
  3be136: 2301         	movs	r3, #0x1
  3be138: e000         	b	0x3be13c <Radar::updateStep(float)+0x3cc> @ imm = #0x0
  3be13a: 2300         	movs	r3, #0x0
  3be13c: 2b00         	cmp	r3, #0x0
  3be13e: f000 8084    	beq.w	0x3be24a <Radar::updateStep(float)+0x4da> @ imm = #0x108
  3be142: 9b0b         	ldr	r3, [sp, #0x2c]
  3be144: 681b         	ldr	r3, [r3]
  3be146: 3390         	adds	r3, #0x90
  3be148: 681b         	ldr	r3, [r3]
  3be14a: 9a0b         	ldr	r2, [sp, #0x2c]
  3be14c: 4610         	mov	r0, r2
  3be14e: 2101         	movs	r1, #0x1
  3be150: 4798         	blx	r3
  3be152: 980b         	ldr	r0, [sp, #0x2c]
  3be154: f7ff fb62    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x93c
  3be158: 4605         	mov	r5, r0
  3be15a: 682b         	ldr	r3, [r5]
  3be15c: f503 73d2    	add.w	r3, r3, #0x1a4
  3be160: 681e         	ldr	r6, [r3]
  3be162: 980b         	ldr	r0, [sp, #0x2c]
  3be164: f7ff fb5a    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x94c
  3be168: 4603         	mov	r3, r0
  3be16a: 681a         	ldr	r2, [r3]
  3be16c: f502 72ce    	add.w	r2, r2, #0x19c
  3be170: 6812         	ldr	r2, [r2]
  3be172: 4618         	mov	r0, r3
  3be174: 4790         	blx	r2
  3be176: 4603         	mov	r3, r0
  3be178: 330a         	adds	r3, #0xa
  3be17a: 2bc7         	cmp	r3, #0xc7
  3be17c: dc0d         	bgt	0x3be19a <Radar::updateStep(float)+0x42a> @ imm = #0x1a
  3be17e: 980b         	ldr	r0, [sp, #0x2c]
  3be180: f7ff fb4c    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x968
  3be184: 4603         	mov	r3, r0
  3be186: 681a         	ldr	r2, [r3]
  3be188: f502 72ce    	add.w	r2, r2, #0x19c
  3be18c: 6812         	ldr	r2, [r2]
  3be18e: 4618         	mov	r0, r3
  3be190: 4790         	blx	r2
  3be192: 4603         	mov	r3, r0
  3be194: 330a         	adds	r3, #0xa
  3be196: b2db         	uxtb	r3, r3
  3be198: e000         	b	0x3be19c <Radar::updateStep(float)+0x42c> @ imm = #0x0
  3be19a: 23c8         	movs	r3, #0xc8
  3be19c: 4628         	mov	r0, r5
  3be19e: 4619         	mov	r1, r3
  3be1a0: 47b0         	blx	r6
  3be1a2: 4b46         	ldr	r3, [pc, #0x118]        @ 0x3be2bc <Radar::updateStep(float)+0x54c>
  3be1a4: 58e3         	ldr	r3, [r4, r3]
  3be1a6: 681b         	ldr	r3, [r3]
  3be1a8: 681b         	ldr	r3, [r3]
  3be1aa: f503 7340    	add.w	r3, r3, #0x300
  3be1ae: 681d         	ldr	r5, [r3]
  3be1b0: 4b42         	ldr	r3, [pc, #0x108]        @ 0x3be2bc <Radar::updateStep(float)+0x54c>
  3be1b2: 58e3         	ldr	r3, [r4, r3]
  3be1b4: 681e         	ldr	r6, [r3]
  3be1b6: 9b0c         	ldr	r3, [sp, #0x30]
  3be1b8: 681b         	ldr	r3, [r3]
  3be1ba: f503 73e2    	add.w	r3, r3, #0x1c4
  3be1be: 681b         	ldr	r3, [r3]
  3be1c0: 980c         	ldr	r0, [sp, #0x30]
  3be1c2: 4798         	blx	r3
  3be1c4: 4603         	mov	r3, r0
  3be1c6: 4630         	mov	r0, r6
  3be1c8: 4619         	mov	r1, r3
  3be1ca: 47a8         	blx	r5
  3be1cc: 4603         	mov	r3, r0
  3be1ce: 2b00         	cmp	r3, #0x0
  3be1d0: d01d         	beq	0x3be20e <Radar::updateStep(float)+0x49e> @ imm = #0x3a
  3be1d2: 980b         	ldr	r0, [sp, #0x2c]
  3be1d4: f7ff fb22    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x9bc
  3be1d8: 4605         	mov	r5, r0
  3be1da: 682b         	ldr	r3, [r5]
  3be1dc: f503 73de    	add.w	r3, r3, #0x1bc
  3be1e0: 681e         	ldr	r6, [r3]
  3be1e2: 2000         	movs	r0, #0x0
  3be1e4: 21ff         	movs	r1, #0xff
  3be1e6: 2200         	movs	r2, #0x0
  3be1e8: f7fe fb34    	bl	0x3bc854 <ROCKET::detonate(cocos2d::CCObject*)+0x14c> @ imm = #-0x1998
  3be1ec: 4603         	mov	r3, r0
  3be1ee: 461a         	mov	r2, r3
  3be1f0: f88d 201c    	strb.w	r2, [sp, #0x1c]
  3be1f4: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3be1f8: f88d 201d    	strb.w	r2, [sp, #0x1d]
  3be1fc: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3be200: f88d 301e    	strb.w	r3, [sp, #0x1e]
  3be204: ab07         	add	r3, sp, #0x1c
  3be206: 4628         	mov	r0, r5
  3be208: 4619         	mov	r1, r3
  3be20a: 47b0         	blx	r6
  3be20c: e01d         	b	0x3be24a <Radar::updateStep(float)+0x4da> @ imm = #0x3a
  3be20e: 980b         	ldr	r0, [sp, #0x2c]
  3be210: f7ff fb04    	bl	0x3bd81c <ArrowAlert::getSprite()> @ imm = #-0x9f8
  3be214: 4605         	mov	r5, r0
  3be216: 682b         	ldr	r3, [r5]
  3be218: f503 73de    	add.w	r3, r3, #0x1bc
  3be21c: 681e         	ldr	r6, [r3]
  3be21e: 20ff         	movs	r0, #0xff
  3be220: 2100         	movs	r1, #0x0
  3be222: 2200         	movs	r2, #0x0
  3be224: f7fe fb16    	bl	0x3bc854 <ROCKET::detonate(cocos2d::CCObject*)+0x14c> @ imm = #-0x19d4
  3be228: 4603         	mov	r3, r0
  3be22a: 461a         	mov	r2, r3
  3be22c: f88d 201c    	strb.w	r2, [sp, #0x1c]
  3be230: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  3be234: f88d 201d    	strb.w	r2, [sp, #0x1d]
  3be238: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  3be23c: f88d 301e    	strb.w	r3, [sp, #0x1e]
  3be240: ab07         	add	r3, sp, #0x1c
  3be242: 4628         	mov	r0, r5
  3be244: 4619         	mov	r1, r3
  3be246: 47b0         	blx	r6
  3be248: e7ff         	b	0x3be24a <Radar::updateStep(float)+0x4da> @ imm = #-0x2
  3be24a: ab08         	add	r3, sp, #0x20
  3be24c: 4618         	mov	r0, r3
  3be24e: f3f7 fb61    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f76c2
  3be252: 9b0a         	ldr	r3, [sp, #0x28]
  3be254: 9309         	str	r3, [sp, #0x24]
  3be256: 9b0a         	ldr	r3, [sp, #0x28]
  3be258: 2b00         	cmp	r3, #0x0
  3be25a: d003         	beq	0x3be264 <Radar::updateStep(float)+0x4f4> @ imm = #0x6
  3be25c: 9b0a         	ldr	r3, [sp, #0x28]
  3be25e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  3be262: e000         	b	0x3be266 <Radar::updateStep(float)+0x4f6> @ imm = #0x0
  3be264: 2300         	movs	r3, #0x0
  3be266: 930a         	str	r3, [sp, #0x28]
  3be268: 9b09         	ldr	r3, [sp, #0x24]
  3be26a: 2b00         	cmp	r3, #0x0
  3be26c: f47f adb7    	bne.w	0x3bddde <Radar::updateStep(float)+0x6e> @ imm = #-0x492
  3be270: e010         	b	0x3be294 <Radar::updateStep(float)+0x524> @ imm = #0x20
  3be272: ab14         	add	r3, sp, #0x50
  3be274: 4618         	mov	r0, r3
  3be276: f3cc f8c1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3cc182
  3be27a: f3c9 ff17    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c9e2e
  3be27e: ab14         	add	r3, sp, #0x50
  3be280: 4618         	mov	r0, r3
  3be282: f3f7 fb47    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f768e
  3be286: e7ff         	b	0x3be288 <Radar::updateStep(float)+0x518> @ imm = #-0x2
  3be288: ab08         	add	r3, sp, #0x20
  3be28a: 4618         	mov	r0, r3
  3be28c: f3f7 fb42    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3f7684
  3be290: f3c9 ff0c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3c9e18
  3be294: b02c         	add	sp, #0xb0
  3be296: ecbd 8b02    	vpop	{d8}
  3be29a: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x3be29b); words below are literal-pool data ---
  3be29c: f3af 8000    	nop.w
  3be2a0: 0000         	movs	r0, r0
  3be2a2: 0000         	movs	r0, r0
  3be2a4: 8000         	strh	r0, [r0]
  3be2a6: 4066         	eors	r6, r4
  3be2a8: 0000         	movs	r0, r0
  3be2aa: 0000         	movs	r0, r0
  3be2ac: 8800         	ldrh	r0, [r0]
  3be2ae: 4093         	lsls	r3, r2
  3be2b0: 0000         	movs	r0, r0
  3be2b2: 0000         	movs	r0, r0
  3be2b4: 0000         	movs	r0, r0
  3be2b6: 4049         	eors	r1, r1
  3be2b8: d728         	bvc	0x3be30c <Radar::updateStep(float)+0x59c> @ imm = #0x50
  3be2ba: ffff d784    	<unknown>
  3be2be: ffff b510    	vsli.32	d27, d0, #0x1f
